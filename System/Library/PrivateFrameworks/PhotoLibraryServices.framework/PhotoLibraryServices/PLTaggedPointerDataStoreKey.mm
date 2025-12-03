@interface PLTaggedPointerDataStoreKey
+ (id)keyWithKeyStruct:(const void *)struct keyLength:(unint64_t)length forStoreClassID:(unsigned __int16)d inLibraryWithID:(id)iD;
- (BOOL)isDerivative;
- (BOOL)isEqual:(id)equal;
- (BOOL)representsSquareResource;
- (PLTaggedPointerDataStoreKey)initWithKeyStruct:(const void *)struct;
- (id)_heapAllocatedRepresentationInLibraryWithID:(id)d;
- (id)descriptionForAssetID:(id)d;
- (id)fileURLForAssetID:(id)d;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
- (unsigned)recipeIDForAssetID:(id)d;
- (unsigned)resourceType;
- (unsigned)resourceVersion;
- (void)tableType:(unsigned int *)type index:(int *)index;
@end

@implementation PLTaggedPointerDataStoreKey

- (unsigned)resourceType
{
  v4 = [(PLTaggedPointer *)self payload]>> 50;
  payload = [(PLTaggedPointer *)self payload];
  if (v4 == 1)
  {
    return 0;
  }

  if (!v4)
  {
    return (payload >> 12) & 0x1F;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:227 description:{@"Unsupported store type: %ld", v4}];

  return 31;
}

- (unsigned)resourceVersion
{
  v4 = [(PLTaggedPointer *)self payload]>> 50;
  if (v4 != 1)
  {
    if (!v4)
    {
      return ([(PLTaggedPointer *)self payload]>> 10) & 3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:244 description:{@"Unsupported store type: %ld", v4}];
  }

  return 3;
}

- (BOOL)representsSquareResource
{
  v2 = [(PLTaggedPointer *)self payload]& 0x3FFFFFFFFFFFFLL;

  return [PLThumbnailResourceDataStoreKey representsSquareResourceForPayloadKeyData:v2];
}

- (BOOL)isDerivative
{
  v4 = [(PLTaggedPointer *)self payload]>> 50;
  if (v4 == 1)
  {
    LOBYTE(v5) = 1;
  }

  else if (v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:261 description:{@"Unsupported store type: %ld", v4}];

    LOBYTE(v5) = 0;
  }

  else
  {
    return ([(PLTaggedPointer *)self payload]>> 36) & 1;
  }

  return v5;
}

- (id)descriptionForAssetID:(id)d
{
  dCopy = d;
  libraryID = [dCopy libraryID];
  v6 = [(PLTaggedPointerDataStoreKey *)self _heapAllocatedRepresentationInLibraryWithID:libraryID];

  v7 = [(PLTaggedPointer *)self payload]>> 50;
  v8 = [(PLTaggedPointer *)self payload]& 0x3FFFFFFFFFFFFLL;
  v9 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = PLTaggedPointerDataStoreKey;
  v10 = [(PLTaggedPointerDataStoreKey *)&v14 description];
  v11 = [v6 descriptionForAssetID:dCopy];

  v12 = [v9 stringWithFormat:@"<%@>, storeID: %d, keyPayload: %llu, interpreted: %@", v10, v7, v8, v11];

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(PLTaggedPointerDataStoreKey *)self isEqualToKey:equalCopy];
  }

  return v5;
}

- (unsigned)recipeIDForAssetID:(id)d
{
  dCopy = d;
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  payload = [(PLTaggedPointer *)self payload];
  v7 = payload;
  if (v5 == 1)
  {
    libraryID = [dCopy libraryID];

    if (libraryID)
    {
      libraryID2 = [dCopy libraryID];
      v10 = PLDataStoreForClassIDAndLibraryID(1, libraryID2);

      v11 = [PLThumbnailResourceDataStoreKey recipeIDForTableType:(v7 >> 2) & 7 inStore:v10];
      goto LABEL_12;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    if (BYTE2(payload) > 9u)
    {
      v11 = 65741;
    }

    else
    {
      v11 = dword_19C60B898[BYTE2(payload)];
    }
  }

  else if (payload == 3)
  {
    v11 = (payload >> 1) & 0xF0000 | (payload >> 20) & 0xFFFE | (payload >> 36) & 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (void)tableType:(unsigned int *)type index:(int *)index
{
  payload = [(PLTaggedPointer *)self payload];
  if (type)
  {
    *type = (payload >> 2) & 7;
  }

  if (index)
  {
    *index = (payload >> 6) & 0x7FFFFFF;
  }
}

- (id)uniformTypeIdentifier
{
  payload = [(PLTaggedPointer *)self payload];
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  if (v5)
  {
    if (v5 == 1)
    {
      identifier = [*MEMORY[0x1E6982E30] identifier];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:122 description:{@"Unsupported store type: %ld", v5}];

      identifier = 0;
    }
  }

  else
  {
    v7 = PLUTTypeFromUniformFileType((payload >> 39));
    identifier = [v7 identifier];
  }

  return identifier;
}

- (id)keyData
{
  payload = [(PLTaggedPointer *)self payload];
  v4 = payload;
  v8 = payload & 0x3FFFFFFFFFFFFLL;
  v5 = PLDataStoreClassForID([(PLTaggedPointer *)self payload]>> 50);
  if (v5)
  {
    v6 = [v5 keyLengthWithDataPreview:v4];
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:v6];
  }

  return v5;
}

- (PLTaggedPointerDataStoreKey)initWithKeyStruct:(const void *)struct
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:70 description:@"initing a tagged pointer key class directly is not supported."];

  return 0;
}

- (id)fileURLForAssetID:(id)d
{
  dCopy = d;
  payload = [(PLTaggedPointer *)self payload];
  if ([(PLTaggedPointer *)self payload]>> 50)
  {
    v7 = 0;
  }

  else
  {
    v6 = payload;
    if ((payload & 0xF0) != 0)
    {
      v6 = 16;
    }

    if (v6 == 3 || v6 == 4 || v6 == 16)
    {
      v8 = objc_opt_class();
    }

    else
    {
      v8 = 0;
    }

    v7 = [v8 fileURLForPayloadKeyData:payload & 0x3FFFFFFFFFFFFLL assetID:dCopy];
  }

  return v7;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  identityCopy = identity;
  dCopy = d;
  libraryID = [dCopy libraryID];
  v9 = [(PLTaggedPointerDataStoreKey *)self _heapAllocatedRepresentationInLibraryWithID:libraryID];

  v10 = [v9 validateForAssetID:dCopy resourceIdentity:identityCopy];

  return v10;
}

- (id)_heapAllocatedRepresentationInLibraryWithID:(id)d
{
  dCopy = d;
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  keyData = [(PLTaggedPointerDataStoreKey *)self keyData];
  v7 = PLDataStoreForClassIDAndLibraryID(v5, dCopy);

  v8 = [v7 keyFromKeyStruct:{objc_msgSend(keyData, "bytes")}];

  return v8;
}

+ (id)keyWithKeyStruct:(const void *)struct keyLength:(unint64_t)length forStoreClassID:(unsigned __int16)d inLibraryWithID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12 = iDCopy;
  if (!struct)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"keyStruct"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];

    goto LABEL_3;
  }

  if (!iDCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (length > 6 || (__memcpy_chk(), (v13 = [self newInstanceWithPayload:dCopy << 50]) == 0))
  {
    v14 = PLDataStoreForClassIDAndLibraryID(dCopy, v12);
    v13 = [v14 keyFromKeyStruct:struct];
  }

  return v13;
}

@end