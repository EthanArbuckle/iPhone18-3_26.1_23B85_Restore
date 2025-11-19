@interface NSException(NSErrorConverting)
- (id)error;
@end

@implementation NSException(NSErrorConverting)

- (id)error
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [a1 name];
  v4 = *MEMORY[0x1E696AA08];
  v17[0] = a1;
  v5 = *MEMORY[0x1E696A278];
  v16[0] = v4;
  v16[1] = v5;
  v6 = [a1 userInfo];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v17[1] = v8;
  v16[2] = *MEMORY[0x1E696A580];
  v9 = [a1 reason];
  v10 = v9;
  v11 = &stru_1F548B930;
  if (v9)
  {
    v11 = v9;
  }

  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [v2 initWithDomain:v3 code:0 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end