@interface NSError(PXError)
+ (id)_px_errorWithDomain:()PXError code:underlyingError:userInfo:localizedDescription:debugDescription:;
+ (id)px_errorWithDomain:()PXError code:debugDescription:;
+ (id)px_errorWithDomain:()PXError code:underlyingError:debugDescription:;
+ (id)px_errorWithDomain:()PXError code:underlyingError:localizedDescription:;
+ (id)px_errorWithDomain:()PXError code:underlyingError:userInfo:debugDescription:;
+ (id)px_genericErrorWithDebugDescription:()PXError;
+ (id)px_genericErrorWithUnderlyingError:()PXError debugDescription:;
- (BOOL)px_isDomain:()PXError code:;
@end

@implementation NSError(PXError)

- (BOOL)px_isDomain:()PXError code:
{
  v6 = a3;
  v7 = [a1 domain];
  v8 = (v7 == v6 || [v6 isEqualToString:v7]) && objc_msgSend(a1, "code") == a4;

  return v8;
}

+ (id)px_genericErrorWithUnderlyingError:()PXError debugDescription:
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a4;
  v13 = a3;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = [a1 _px_errorWithDomain:@"PXErrorDomain" code:-1 underlyingError:v13 userInfo:0 localizedDescription:0 debugDescription:v14];

  return v15;
}

+ (id)px_genericErrorWithDebugDescription:()PXError
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a3;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = [a1 _px_errorWithDomain:@"PXErrorDomain" code:-1 underlyingError:0 userInfo:0 localizedDescription:0 debugDescription:v12];

  return v13;
}

+ (id)px_errorWithDomain:()PXError code:debugDescription:
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a5;
  v14 = a3;
  v15 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v16 = [a1 _px_errorWithDomain:v14 code:a4 underlyingError:0 userInfo:0 localizedDescription:0 debugDescription:v15];

  return v16;
}

+ (id)px_errorWithDomain:()PXError code:underlyingError:debugDescription:
{
  v13 = MEMORY[0x1E696AEC0];
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [[v13 alloc] initWithFormat:v14 arguments:&a9];

  v18 = [a1 _px_errorWithDomain:v16 code:a4 underlyingError:v15 userInfo:0 localizedDescription:0 debugDescription:v17];

  return v18;
}

+ (id)px_errorWithDomain:()PXError code:underlyingError:userInfo:debugDescription:
{
  v14 = MEMORY[0x1E696AEC0];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v20 = [a1 _px_errorWithDomain:v18 code:a4 underlyingError:v17 userInfo:v16 localizedDescription:0 debugDescription:v19];

  return v20;
}

+ (id)px_errorWithDomain:()PXError code:underlyingError:localizedDescription:
{
  v13 = MEMORY[0x1E696AEC0];
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [[v13 alloc] initWithFormat:v14 arguments:&a9];

  v18 = [a1 _px_errorWithDomain:v16 code:a4 underlyingError:v15 userInfo:0 localizedDescription:v17 debugDescription:0];

  return v18;
}

+ (id)_px_errorWithDomain:()PXError code:underlyingError:userInfo:localizedDescription:debugDescription:
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = v19;
  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if (v16)
  {
    [v20 setValuesForKeysWithDictionary:v16];
  }

  if (v18)
  {
    v21 = [v18 copy];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v17)
  {
    v22 = [v17 copy];
    [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v23 = [a1 errorWithDomain:v14 code:a4 userInfo:v20];

  return v23;
}

@end