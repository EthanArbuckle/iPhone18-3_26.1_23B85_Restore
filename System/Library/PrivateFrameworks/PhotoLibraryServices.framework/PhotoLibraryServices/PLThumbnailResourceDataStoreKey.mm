@interface PLThumbnailResourceDataStoreKey
+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d;
+ (unsigned)recipeIDForTableType:(unsigned int)type inStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (PLThumbnailResourceDataStoreKey)initWithKeyStruct:(const void *)struct;
- (id)descriptionForAssetID:(id)d;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
- (void)tableType:(unsigned int *)type index:(int *)index;
@end

@implementation PLThumbnailResourceDataStoreKey

- (id)descriptionForAssetID:(id)d
{
  v4 = (*&self->_keyStruct >> 2) & 7;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E75783E0[v4];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v8;
  v10 = @"v1";
  if ((*&self->_keyStruct & 3) != 0)
  {
    v10 = 0;
  }

  0x7FFFFFF = [v6 stringWithFormat:@"<%@> type: %@, %@, index: %ld", v8, v5, v10, ((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF];

  return 0x7FFFFFF;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = (((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) ^ [(PLThumbnailResourceDataStoreKey *)equalCopy keyStruct]) & 0x1FFFFFFDFLL) == 0;
    }

    else
    {
      v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLThumbnailResourceDataStoreKey *)self isEqualToKey:equalCopy];
    }
  }

  return v5;
}

- (void)tableType:(unsigned int *)type index:(int *)index
{
  if (type)
  {
    *type = (*&self->_keyStruct >> 2) & 7;
  }

  if (index)
  {
    *index = ((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF;
  }
}

- (PLThumbnailResourceDataStoreKey)initWithKeyStruct:(const void *)struct
{
  v6.receiver = self;
  v6.super_class = PLThumbnailResourceDataStoreKey;
  result = [(PLThumbnailResourceDataStoreKey *)&v6 init];
  if (result)
  {
    v5 = *struct;
    *(&result->_keyStruct + 4) = *(struct + 4);
    *&result->_keyStruct = v5;
  }

  return result;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  dCopy = d;
  identityCopy = identity;
  if ((*&self->_keyStruct & 0x10) != 0)
  {
    v9 = [PLResourceModelValidationError malformedTableThumbnailKeyErrorForKey:self assetID:dCopy];
    v8 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v9];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  libraryID = [dCopy libraryID];
  v11 = PLDataStoreForClassIDAndLibraryID(1, libraryID);

  v12 = [v11 newTableThumbImageForKey:self];
  if (v12)
  {
    if ([v11 thumbnailForKey:self matchesAssetID:dCopy])
    {
      goto LABEL_9;
    }

    v13 = [PLResourceModelValidationError tableThumbUUIDMistmatchErrorForKey:self indexFromKey:((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF assetID:dCopy];
  }

  else
  {
    v13 = [PLResourceModelValidationError unreachableTableThumbnailErrorForKey:self assetID:dCopy];
  }

  v14 = v13;
  v15 = [v8 arrayByAddingObject:v13];

  v8 = v15;
LABEL_9:
  CGImageRelease(v12);

  return v8;
}

+ (unsigned)recipeIDForTableType:(unsigned int)type inStore:(id)store
{
  v4 = *&type;
  thumbnailFormatsByTableType = [store thumbnailFormatsByTableType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [thumbnailFormatsByTableType objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = (2 * [v7 formatID]) | 0x30001;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbnailResourceDataStoreKey.m" lineNumber:45 description:@"This store does not support returning resource URLs."];

  return 0;
}

@end