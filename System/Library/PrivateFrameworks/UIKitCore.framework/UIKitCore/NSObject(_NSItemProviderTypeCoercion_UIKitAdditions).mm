@interface NSObject(_NSItemProviderTypeCoercion_UIKitAdditions)
- (void)_NSItemProviderTypeCoercion_coercedUIImageValueFromNSURLValue:()_NSItemProviderTypeCoercion_UIKitAdditions error:;
@end

@implementation NSObject(_NSItemProviderTypeCoercion_UIKitAdditions)

- (void)_NSItemProviderTypeCoercion_coercedUIImageValueFromNSURLValue:()_NSItemProviderTypeCoercion_UIKitAdditions error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 isFileURL])
  {
    path = [v5 path];
    a4 = [UIImage imageWithContentsOfFile:path];
  }

  else if (a4)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A4D0];
    v11 = *MEMORY[0x1E695E650];
    v12[0] = @"Unknown error.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a4 = [v7 errorWithDomain:v8 code:-1 userInfo:v9];

    a4 = 0;
  }

  return a4;
}

@end