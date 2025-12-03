@interface AVAudioFile(RCAdditions)
- (double)rc_durationInSeconds;
- (double)rc_sampleRate;
- (uint64_t)rc_audioFormat;
@end

@implementation AVAudioFile(RCAdditions)

- (double)rc_sampleRate
{
  processingFormat = [self processingFormat];
  [processingFormat sampleRate];
  v3 = v2;

  return v3;
}

- (double)rc_durationInSeconds
{
  v2 = [self length];
  processingFormat = [self processingFormat];
  [processingFormat sampleRate];
  v5 = v2 / v4;

  return v5;
}

- (uint64_t)rc_audioFormat
{
  fileFormat = [self fileFormat];
  settings = [fileFormat settings];
  v3 = [settings objectForKeyedSubscript:*MEMORY[0x277CB8280]];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

@end