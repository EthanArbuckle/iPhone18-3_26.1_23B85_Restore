@interface PLTaggedPointerDataStoreKey
+ (id)keyWithKeyStruct:(const void *)a3 keyLength:(unint64_t)a4 forStoreClassID:(unsigned __int16)a5 inLibraryWithID:(id)a6;
- (BOOL)isDerivative;
- (BOOL)isEqual:(id)a3;
- (BOOL)representsSquareResource;
- (PLTaggedPointerDataStoreKey)initWithKeyStruct:(const void *)a3;
- (id)_heapAllocatedRepresentationInLibraryWithID:(id)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)fileURLForAssetID:(id)a3;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
- (unsigned)recipeIDForAssetID:(id)a3;
- (unsigned)resourceType;
- (unsigned)resourceVersion;
- (void)tableType:(unsigned int *)a3 index:(int *)a4;
@end

@implementation PLTaggedPointerDataStoreKey

- (unsigned)resourceType
{
  v4 = [(PLTaggedPointer *)self payload]>> 50;
  v5 = [(PLTaggedPointer *)self payload];
  if (v4 == 1)
  {
    return 0;
  }

  if (!v4)
  {
    return (v5 >> 12) & 0x1F;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:227 description:{@"Unsupported store type: %ld", v4}];

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

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:244 description:{@"Unsupported store type: %ld", v4}];
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:261 description:{@"Unsupported store type: %ld", v4}];

    LOBYTE(v5) = 0;
  }

  else
  {
    return ([(PLTaggedPointer *)self payload]>> 36) & 1;
  }

  return v5;
}

- (id)descriptionForAssetID:(id)a3
{
  v4 = a3;
  v5 = [v4 libraryID];
  v6 = [(PLTaggedPointerDataStoreKey *)self _heapAllocatedRepresentationInLibraryWithID:v5];

  v7 = [(PLTaggedPointer *)self payload]>> 50;
  v8 = [(PLTaggedPointer *)self payload]& 0x3FFFFFFFFFFFFLL;
  v9 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = PLTaggedPointerDataStoreKey;
  v10 = [(PLTaggedPointerDataStoreKey *)&v14 description];
  v11 = [v6 descriptionForAssetID:v4];

  v12 = [v9 stringWithFormat:@"<%@>, storeID: %d, keyPayload: %llu, interpreted: %@", v10, v7, v8, v11];

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(PLTaggedPointerDataStoreKey *)self isEqualToKey:v4];
  }

  return v5;
}

- (unsigned)recipeIDForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  v6 = [(PLTaggedPointer *)self payload];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v4 libraryID];

    if (v8)
    {
      v9 = [v4 libraryID];
      v10 = PLDataStoreForClassIDAndLibraryID(1, v9);

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

    if (BYTE2(v6) > 9u)
    {
      v11 = 65741;
    }

    else
    {
      v11 = dword_19C60B898[BYTE2(v6)];
    }
  }

  else if (v6 == 3)
  {
    v11 = (v6 >> 1) & 0xF0000 | (v6 >> 20) & 0xFFFE | (v6 >> 36) & 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (void)tableType:(unsigned int *)a3 index:(int *)a4
{
  v6 = [(PLTaggedPointer *)self payload];
  if (a3)
  {
    *a3 = (v6 >> 2) & 7;
  }

  if (a4)
  {
    *a4 = (v6 >> 6) & 0x7FFFFFF;
  }
}

- (id)uniformTypeIdentifier
{
  v4 = [(PLTaggedPointer *)self payload];
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [*MEMORY[0x1E6982E30] identifier];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:122 description:{@"Unsupported store type: %ld", v5}];

      v6 = 0;
    }
  }

  else
  {
    v7 = PLUTTypeFromUniformFileType((v4 >> 39));
    v6 = [v7 identifier];
  }

  return v6;
}

- (id)keyData
{
  v3 = [(PLTaggedPointer *)self payload];
  v4 = v3;
  v8 = v3 & 0x3FFFFFFFFFFFFLL;
  v5 = PLDataStoreClassForID([(PLTaggedPointer *)self payload]>> 50);
  if (v5)
  {
    v6 = [v5 keyLengthWithDataPreview:v4];
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:v6];
  }

  return v5;
}

- (PLTaggedPointerDataStoreKey)initWithKeyStruct:(const void *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PLTaggedPointerDataStoreKey.m" lineNumber:70 description:@"initing a tagged pointer key class directly is not supported."];

  return 0;
}

- (id)fileURLForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(PLTaggedPointer *)self payload];
  if ([(PLTaggedPointer *)self payload]>> 50)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    if ((v5 & 0xF0) != 0)
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

    v7 = [v8 fileURLForPayloadKeyData:v5 & 0x3FFFFFFFFFFFFLL assetID:v4];
  }

  return v7;
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 libraryID];
  v9 = [(PLTaggedPointerDataStoreKey *)self _heapAllocatedRepresentationInLibraryWithID:v8];

  v10 = [v9 validateForAssetID:v7 resourceIdentity:v6];

  return v10;
}

- (id)_heapAllocatedRepresentationInLibraryWithID:(id)a3
{
  v4 = a3;
  v5 = [(PLTaggedPointer *)self payload]>> 50;
  v6 = [(PLTaggedPointerDataStoreKey *)self keyData];
  v7 = PLDataStoreForClassIDAndLibraryID(v5, v4);

  v8 = [v7 keyFromKeyStruct:{objc_msgSend(v6, "bytes")}];

  return v8;
}

+ (id)keyWithKeyStruct:(const void *)a3 keyLength:(unint64_t)a4 forStoreClassID:(unsigned __int16)a5 inLibraryWithID:(id)a6
{
  v6 = a5;
  v11 = a6;
  v12 = v11;
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLTaggedPointerDataStoreKey.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"keyStruct"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLTaggedPointerDataStoreKey.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];

    goto LABEL_3;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a4 > 6 || (__memcpy_chk(), (v13 = [a1 newInstanceWithPayload:v6 << 50]) == 0))
  {
    v14 = PLDataStoreForClassIDAndLibraryID(v6, v12);
    v13 = [v14 keyFromKeyStruct:a3];
  }

  return v13;
}

@end