@interface TTSFirstPartyAudioUnit
- (TTSAUMessagingAU)channel;
@end

@implementation TTSFirstPartyAudioUnit

- (TTSAUMessagingAU)channel
{
  channel = self->_channel;
  if (!channel)
  {
    v4 = objc_alloc_init(TTSAUMessagingAU);
    v5 = self->_channel;
    self->_channel = v4;

    objc_msgSend_setOwningAudioUnit_(self->_channel, v6, self, v7, v8);
    channel = self->_channel;
  }

  return channel;
}

@end