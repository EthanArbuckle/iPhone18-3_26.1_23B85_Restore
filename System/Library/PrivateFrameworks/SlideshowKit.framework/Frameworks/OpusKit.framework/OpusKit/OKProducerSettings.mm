@interface OKProducerSettings
- (NSArray)audioURLs;
- (void)dealloc;
- (void)setAudioURLs:(id)a3;
@end

@implementation OKProducerSettings

- (void)setAudioURLs:(id)a3
{
  audioURLs = self->_audioURLs;
  if (audioURLs)
  {

    self->_audioURLs = 0;
  }

  self->_audioURLs = a3;
}

- (NSArray)audioURLs
{
  if (self->_audioURLs)
  {
    return self->_audioURLs;
  }

  else
  {
    return [(OKProducerPreset *)self->_preset audioURLs];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OKProducerSettings;
  [(OKProducerSettings *)&v3 dealloc];
}

@end