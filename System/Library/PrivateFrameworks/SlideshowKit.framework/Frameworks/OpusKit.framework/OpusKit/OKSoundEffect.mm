@interface OKSoundEffect
+ (id)soundEffectAtURL:(id)a3;
+ (void)playSoundEffectAtURL:(id)a3;
- (OKSoundEffect)initWithSoundURL:(id)a3;
- (void)dealloc;
@end

@implementation OKSoundEffect

+ (id)soundEffectAtURL:(id)a3
{
  v3 = [[OKSoundEffect alloc] initWithSoundURL:a3];

  return v3;
}

+ (void)playSoundEffectAtURL:(id)a3
{
  v4 = [[OKSoundEffect alloc] initWithSoundURL:a3];
  AudioServicesAddSystemSoundCompletion(v4->_soundID, 0, 0, _oneShotCompletionCallback, a1);

  [(OKSoundEffect *)v4 play];
}

- (OKSoundEffect)initWithSoundURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKSoundEffect;
  v4 = [(OKSoundEffect *)&v7 init];
  v5 = v4;
  if (v4)
  {
    AudioServicesCreateSystemSoundID(a3, &v4->_soundID);
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