@interface TUIKitUserDefaults
@end

@implementation TUIKitUserDefaults

uint64_t ___TUIKitUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.TextInputUI"];
  v1 = _TUIKitUserDefaults_result;
  _TUIKitUserDefaults_result = v0;

  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    v3 = _TUIKitUserDefaults_result;
    v4 = *MEMORY[0x1E696A230];

    return [v3 addSuiteNamed:v4];
  }

  return result;
}

@end