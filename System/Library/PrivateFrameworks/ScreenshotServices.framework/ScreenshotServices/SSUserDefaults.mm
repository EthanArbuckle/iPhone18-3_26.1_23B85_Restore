@interface SSUserDefaults
@end

@implementation SSUserDefaults

uint64_t ___SSUserDefaults_block_invoke()
{
  _SSUserDefaults_result = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ScreenshotServices"];

  return MEMORY[0x1EEE66BB8]();
}

@end