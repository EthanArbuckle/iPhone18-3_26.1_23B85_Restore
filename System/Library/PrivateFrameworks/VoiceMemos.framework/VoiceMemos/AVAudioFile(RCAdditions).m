@interface AVAudioFile(RCAdditions)
- (double)rc_durationInSeconds;
- (double)rc_sampleRate;
- (uint64_t)rc_audioFormat;
@end

@implementation AVAudioFile(RCAdditions)

- (double)rc_sampleRate
{
  v1 = [a1 processingFormat];
  [v1 sampleRate];
  v3 = v2;

  return v3;
}

- (double)rc_durationInSeconds
{
  v2 = [a1 length];
  v3 = [a1 processingFormat];
  [v3 sampleRate];
  v5 = v2 / v4;

  return v5;
}

- (uint64_t)rc_audioFormat
{
  v1 = [a1 fileFormat];
  v2 = [v1 settings];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CB8280]];
  v4 = [v3 unsignedIntValue];

  return v4;
}

@end