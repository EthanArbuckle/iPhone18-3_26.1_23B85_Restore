@interface VGHRTFSessionConfig
- (void)overwriteWithDefaults;
@end

@implementation VGHRTFSessionConfig

- (void)overwriteWithDefaults
{
  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.visage"];
  v3 = [v7 objectForKey:@"writeDebugDataHRTF"];

  if (v3)
  {
    self->_writeDebugData = [v7 BOOLForKey:@"writeDebugDataHRTF"];
  }

  v4 = [v7 objectForKey:@"debugDataRootPathHRTF"];

  if (v4)
  {
    v5 = [v7 stringForKey:@"debugDataRootPathHRTF"];
    debugDataRootPath = self->_debugDataRootPath;
    self->_debugDataRootPath = v5;
  }
}

@end