@interface SpatialAudioProfileDataFuzzer
+ (id)sharedInstance;
- (SpatialAudioProfileDataFuzzer)init;
- (id)createNoiseSoundProfileFromData:(id)a3;
@end

@implementation SpatialAudioProfileDataFuzzer

+ (id)sharedInstance
{
  if (qword_100008998 != -1)
  {
    sub_100001DA0();
  }

  v3 = qword_100008990;

  return v3;
}

- (SpatialAudioProfileDataFuzzer)init
{
  v6.receiver = self;
  v6.super_class = SpatialAudioProfileDataFuzzer;
  v2 = [(SpatialAudioProfileDataFuzzer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)createNoiseSoundProfileFromData:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (!self->_dataFuzzerStructRef)
    {
      operator new();
    }

    NoisySoundProfilePack = IR::IRData::createNoisySoundProfilePack(v5, v4);
    if (self->_dataFuzzerStructRef)
    {
      operator delete();
    }

    self->_dataFuzzerStructRef = 0;
  }

  else
  {
    NoisySoundProfilePack = 0;
  }

  return NoisySoundProfilePack;
}

@end