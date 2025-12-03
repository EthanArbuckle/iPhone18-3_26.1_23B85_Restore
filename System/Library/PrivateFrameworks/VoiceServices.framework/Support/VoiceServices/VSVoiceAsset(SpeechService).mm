@interface VSVoiceAsset(SpeechService)
- (uint64_t)gainDecibelWithVolume:()SpeechService;
@end

@implementation VSVoiceAsset(SpeechService)

- (uint64_t)gainDecibelWithVolume:()SpeechService
{
  result = [self footprint];
  LODWORD(v5) = 2.5;
  if (result != 1)
  {
    result = [self type];
    if (result != 2)
    {
      result = [self type];
      if (a2 < 1.0 || result != 3)
      {
        return [self type];
      }
    }
  }

  return result;
}

@end