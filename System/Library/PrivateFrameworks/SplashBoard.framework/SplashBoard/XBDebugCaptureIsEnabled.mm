@interface XBDebugCaptureIsEnabled
@end

@implementation XBDebugCaptureIsEnabled

void ___XBDebugCaptureIsEnabled_block_invoke()
{
  CFPreferencesSynchronize(@"com.apple.splashboard", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v1 = CFPreferencesCopyAppValue(@"_XBEncodeGeneratedInterfaces", @"com.apple.splashboard");
  if (objc_opt_respondsToSelector())
  {
    v0 = [v1 BOOLValue];
  }

  else
  {
    v0 = 0;
  }

  _XBDebugCaptureIsEnabled_sEncodingEnabled = v0;
}

@end