@interface PLThumbnailResourceDataStoreKey
+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4;
+ (unsigned)recipeIDForTableType:(unsigned int)a3 inStore:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PLThumbnailResourceDataStoreKey)initWithKeyStruct:(const void *)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
- (void)tableType:(unsigned int *)a3 index:(int *)a4;
@end

@implementation PLThumbnailResourceDataStoreKey

- (id)descriptionForAssetID:(id)a3
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

  v11 = [v6 stringWithFormat:@"<%@> type: %@, %@, index: %ld", v8, v5, v10, ((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = (((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) ^ [(PLThumbnailResourceDataStoreKey *)v4 keyStruct]) & 0x1FFFFFFDFLL) == 0;
    }

    else
    {
      v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLThumbnailResourceDataStoreKey *)self isEqualToKey:v4];
    }
  }

  return v5;
}

- (void)tableType:(unsigned int *)a3 index:(int *)a4
{
  if (a3)
  {
    *a3 = (*&self->_keyStruct >> 2) & 7;
  }

  if (a4)
  {
    *a4 = ((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF;
  }
}

- (PLThumbnailResourceDataStoreKey)initWithKeyStruct:(const void *)a3
{
  v6.receiver = self;
  v6.super_class = PLThumbnailResourceDataStoreKey;
  result = [(PLThumbnailResourceDataStoreKey *)&v6 init];
  if (result)
  {
    v5 = *a3;
    *(&result->_keyStruct + 4) = *(a3 + 4);
    *&result->_keyStruct = v5;
  }

  return result;
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*&self->_keyStruct & 0x10) != 0)
  {
    v9 = [PLResourceModelValidationError malformedTableThumbnailKeyErrorForKey:self assetID:v6];
    v8 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v9];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v10 = [v6 libraryID];
  v11 = PLDataStoreForClassIDAndLibraryID(1, v10);

  v12 = [v11 newTableThumbImageForKey:self];
  if (v12)
  {
    if ([v11 thumbnailForKey:self matchesAssetID:v6])
    {
      goto LABEL_9;
    }

    v13 = [PLResourceModelValidationError tableThumbUUIDMistmatchErrorForKey:self indexFromKey:((*&self->_keyStruct | (*(&self->_keyStruct + 4) << 32)) >> 6) & 0x7FFFFFF assetID:v6];
  }

  else
  {
    v13 = [PLResourceModelValidationError unreachableTableThumbnailErrorForKey:self assetID:v6];
  }

  v14 = v13;
  v15 = [v8 arrayByAddingObject:v13];

  v8 = v15;
LABEL_9:
  CGImageRelease(v12);

  return v8;
}

+ (unsigned)recipeIDForTableType:(unsigned int)a3 inStore:(id)a4
{
  v4 = *&a3;
  v5 = [a4 thumbnailFormatsByTableType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

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

+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"PLThumbnailResourceDataStoreKey.m" lineNumber:45 description:@"This store does not support returning resource URLs."];

  return 0;
}

@end