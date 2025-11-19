@interface UIKitUserDefaults
@end

@implementation UIKitUserDefaults

uint64_t ___UIKitUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
  v1 = _MergedGlobals_1352;
  _MergedGlobals_1352 = v0;

  result = allowInternalPreferences();
  if (result)
  {
    v3 = _MergedGlobals_1352;
    v4 = *MEMORY[0x1E696A230];

    return [v3 addSuiteNamed:v4];
  }

  return result;
}

@end