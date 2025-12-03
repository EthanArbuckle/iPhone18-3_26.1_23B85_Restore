@interface SoundClassificationListener
+ (id)sharedInstance;
- (SoundClassificationListener)init;
- (void)dealloc;
- (void)startListen;
@end

@implementation SoundClassificationListener

- (void)startListen
{
  if (!self->isListenerON)
  {
    self->isListenerON = 1;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SoundClassificationListener;
  [(SoundClassificationListener *)&v2 dealloc];
}

- (SoundClassificationListener)init
{
  v3.receiver = self;
  v3.super_class = SoundClassificationListener;
  result = [(SoundClassificationListener *)&v3 init];
  if (result)
  {
    *&result->isFalsePositiveState = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__SoundClassificationListener_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[SoundClassificationListener sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SoundClassificationListener sharedInstance]::onceToken, block);
  }

  v2 = +[SoundClassificationListener sharedInstance]::sharedSoundClassificationListener;

  return v2;
}

uint64_t __45__SoundClassificationListener_sharedInstance__block_invoke(uint64_t a1)
{
  +[SoundClassificationListener sharedInstance]::sharedSoundClassificationListener = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

@end