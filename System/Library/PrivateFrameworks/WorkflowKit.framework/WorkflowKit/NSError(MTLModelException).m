@interface NSError(MTLModelException)
+ (id)mtl_modelErrorWithException:()MTLModelException;
@end

@implementation NSError(MTLModelException)

+ (id)mtl_modelErrorWithException:()MTLModelException
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NSError+MTLModelException.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"exception != nil"}];
  }

  v13[0] = *MEMORY[0x1E696A578];
  v6 = [v5 description];
  v14[0] = v6;
  v13[1] = *MEMORY[0x1E696A588];
  v7 = [v5 reason];
  v13[2] = @"MTLModelThrownException";
  v14[1] = v7;
  v14[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MTLModelErrorDomain" code:1 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end