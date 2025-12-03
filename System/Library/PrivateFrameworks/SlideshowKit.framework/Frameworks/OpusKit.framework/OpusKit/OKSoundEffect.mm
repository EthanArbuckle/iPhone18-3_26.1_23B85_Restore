@interface OKSoundEffect
+ (id)soundEffectAtURL:(id)l;
+ (void)playSoundEffectAtURL:(id)l;
- (OKSoundEffect)initWithSoundURL:(id)l;
- (void)dealloc;
@end

@implementation OKSoundEffect

+ (id)soundEffectAtURL:(id)l
{
  v3 = [[OKSoundEffect alloc] initWithSoundURL:l];

  return v3;
}

+ (void)playSoundEffectAtURL:(id)l
{
  v4 = [[OKSoundEffect alloc] initWithSoundURL:l];
  AudioServicesAddSystemSoundCompletion(v4->_soundID, 0, 0, _oneShotCompletionCallback, self);

  [(OKSoundEffect *)v4 play];
}

- (OKSoundEffect)initWithSoundURL:(id)l
{
  v7.receiver = self;
  v7.super_class = OKSoundEffect;
  v4 = [(OKSoundEffect *)&v7 init];
  v5 = v4;
  if (v4)
  {
    AudioServicesCreateSystemSoundID(l, &v4->_soundID);
  }

  return v5;
}

- (void)dealloc
{
  AudioServicesDisposeSystemSoundID(self->_soundID);
  v3.receiver = self;
  v3.super_class = OKSoundEffect;
  [(OKSoundEffect *)&v3 dealloc];
}

@end