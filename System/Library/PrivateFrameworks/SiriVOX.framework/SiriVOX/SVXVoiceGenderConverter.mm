@interface SVXVoiceGenderConverter
- (int64_t)getAFVoiceGenderFromTTSAssetVoiceGender:(int64_t)gender;
- (int64_t)getSpeechGenderFromGender:(int64_t)gender;
- (int64_t)getSpeechGenderFromVoiceInfo:(id)info;
@end

@implementation SVXVoiceGenderConverter

- (int64_t)getAFVoiceGenderFromTTSAssetVoiceGender:(int64_t)gender
{
  if ((gender - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return gender;
  }
}

- (int64_t)getSpeechGenderFromVoiceInfo:(id)info
{
  result = [info gender];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (int64_t)getSpeechGenderFromGender:(int64_t)gender
{
  if ((gender - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return gender;
  }
}

@end