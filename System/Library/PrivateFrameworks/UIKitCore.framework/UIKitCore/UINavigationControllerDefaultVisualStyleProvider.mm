@interface UINavigationControllerDefaultVisualStyleProvider
@end

@implementation UINavigationControllerDefaultVisualStyleProvider

void __79___UINavigationControllerDefaultVisualStyleProvider_idiomToVisualStyleClassMap__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1EFE2F3C8;
  v4[0] = objc_opt_class();
  v3[1] = &unk_1EFE2F3E0;
  v4[1] = objc_opt_class();
  v3[2] = &unk_1EFE2F3F8;
  v4[2] = objc_opt_class();
  v3[3] = &unk_1EFE2F410;
  v4[3] = objc_opt_class();
  v3[4] = &unk_1EFE2F428;
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = [v0 mutableCopy];
  v2 = qword_1ED49C748;
  qword_1ED49C748 = v1;
}

@end