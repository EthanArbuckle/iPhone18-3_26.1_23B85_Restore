@interface PLPrimaryResourceDataStoreKey
+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3;
+ (unsigned)strategyFromExternalResource:(id)a3 asset:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PLPrimaryResourceDataStoreKey)initWithKeyStruct:(const void *)a3;
- (id)_init;
- (id)_initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4;
- (id)_initWithKeyStruct:(const void *)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)fileURLForAssetID:(id)a3;
- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4;
- (id)keyData;
- (id)uniformTypeIdentifier;
@end

@implementation PLPrimaryResourceDataStoreKey

- (id)descriptionForAssetID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(PLPrimaryResourceDataStoreKey *)self fileURLForAssetID:v5];

  v9 = [v4 stringWithFormat:@"<%@>, fileURL: %@", v7, v8];

  return v9;
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
    v5 = (objc_opt_respondsToSelector() & 1) != 0 && [(PLPrimaryResourceDataStoreKey *)self isEqualToKey:v4];
  }

  return v5;
}

- (id)initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() strategyFromExternalResource:v6 asset:v7];
  if (v8 == 3 || v8 == 4 || v8 == 16)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  v10 = [[v9 alloc] initFromExistingLocationOfExternalResource:v6 asset:v7];

  return v10;
}

- (id)_initFromExistingLocationOfExternalResource:(id)a3 asset:(id)a4
{
  v11.receiver = self;
  v11.super_class = PLPrimaryResourceDataStoreKey;
  v7 = [(PLPrimaryResourceDataStoreKey *)&v11 init];
  if (v7)
  {
    if (a4)
    {
      if (a3)
      {
        return v7;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

      if (a3)
      {
        return v7;
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:v7 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  return v7;
}

- (id)_initWithKeyStruct:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreKey;
  v5 = [(PLPrimaryResourceDataStoreKey *)&v9 init];
  v6 = v5;
  if (!a3 && v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:v6 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"keyStruct"}];
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

- (id)fileURLForAssetID:(id)a3
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

- (PLPrimaryResourceDataStoreKey)initWithKeyStruct:(const void *)a3
{
  v5 = *a3;
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

  v7 = [[v6 alloc] initWithKeyStruct:a3];

  return v7;
}

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

+ (unsigned)strategyFromExternalResource:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLPrimaryResourceDataStoreKey.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:

  return 3;
}

+ (id)fileURLForPayloadKeyData:(unint64_t)a3 assetID:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

@end