@interface SiriReaderUtilities
+ (id)readerStartingToneAudioAssetURL;
@end

@implementation SiriReaderUtilities

+ (id)readerStartingToneAudioAssetURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v4 = [v3 pathForResource:@"ReadThisSound" ofType:@"wav"];
  v5 = [v2 fileURLWithPath:v4];

  return v5;
}

@end