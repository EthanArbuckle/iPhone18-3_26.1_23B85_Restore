@interface OKProducerSettings
- (NSArray)audioURLs;
- (void)dealloc;
- (void)setAudioURLs:(id)ls;
@end

@implementation OKProducerSettings

- (void)setAudioURLs:(id)ls
{
  audioURLs = self->_audioURLs;
  if (audioURLs)
  {

    self->_audioURLs = 0;
  }

  self->_audioURLs = ls;
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