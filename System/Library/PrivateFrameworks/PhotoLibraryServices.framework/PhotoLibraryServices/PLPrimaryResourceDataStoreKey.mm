@interface PLPrimaryResourceDataStoreKey
+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)preview;
+ (unsigned)strategyFromExternalResource:(id)resource asset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (PLPrimaryResourceDataStoreKey)initWithKeyStruct:(const void *)struct;
- (id)_init;
- (id)_initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset;
- (id)_initWithKeyStruct:(const void *)struct;
- (id)descriptionForAssetID:(id)d;
- (id)fileURLForAssetID:(id)d;
- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset;
- (id)keyData;
- (id)uniformTypeIdentifier;
@end

@implementation PLPrimaryResourceDataStoreKey

- (id)descriptionForAssetID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(PLPrimaryResourceDataStoreKey *)self fileURLForAssetID:dCopy];

  v9 = [v4 stringWithFormat:@"<%@>, fileURL: %@", v7, v8];

  return v9;
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
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLPrimaryResourceDataStoreKey *)self isEqualToKey:equalCopy];
  }

  return v5;
}

- (id)initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  assetCopy = asset;
  v8 = [objc_opt_class() strategyFromExternalResource:resourceCopy asset:assetCopy];
  if (v8 == 3 || v8 == 4 || v8 == 16)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  v10 = [[v9 alloc] initFromExistingLocationOfExternalResource:resourceCopy asset:assetCopy];

  return v10;
}

- (id)_initFromExistingLocationOfExternalResource:(id)resource asset:(id)asset
{
  v11.receiver = self;
  v11.super_class = PLPrimaryResourceDataStoreKey;
  v7 = [(PLPrimaryResourceDataStoreKey *)&v11 init];
  if (v7)
  {
    if (asset)
    {
      if (resource)
      {
        return v7;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

      if (resource)
      {
        return v7;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  return v7;
}

- (id)_initWithKeyStruct:(const void *)struct
{
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreKey;
  v5 = [(PLPrimaryResourceDataStoreKey *)&v9 init];
  v6 = v5;
  if (!struct && v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v6 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"keyStruct"}];
  }

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PLPrimaryResourceDataStoreKey;
  return [(PLPrimaryResourceDataStoreKey *)&v3 init];
}

- (id)uniformTypeIdentifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (id)fileURLForAssetID:(id)d
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

- (id)keyData
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (PLPrimaryResourceDataStoreKey)initWithKeyStruct:(const void *)struct
{
  v5 = *struct;
  if (v5 >= 0x10)
  {
    v5 = 16;
  }

  if (v5 == 3 || v5 == 4 || v5 == 16)
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  v7 = [[v6 alloc] initWithKeyStruct:struct];

  return v7;
}

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)preview
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

+ (unsigned)strategyFromExternalResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  assetCopy = asset;
  v9 = assetCopy;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_3;
  }

  if (!assetCopy)
  {
    goto LABEL_5;
  }

LABEL_3:

  return 3;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)data assetID:(id)d
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

@end