@interface VUIDownloadConfig
- (VUIDownloadConfig)init;
@end

@implementation VUIDownloadConfig

- (VUIDownloadConfig)init
{
  v8.receiver = self;
  v8.super_class = VUIDownloadConfig;
  v2 = [(VUIDownloadConfig *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowEnhancedDownloads = 0;
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"allowEnhancedDownloads"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
      v3->_allowEnhancedDownloads = [v6 BOOLForKey:@"allowEnhancedDownloads"];
    }

    v3->_updateCoverArtForExistingDownloads = 1;
  }

  return v3;
}

@end