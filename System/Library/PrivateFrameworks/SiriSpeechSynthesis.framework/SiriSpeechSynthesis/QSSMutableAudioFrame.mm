@interface QSSMutableAudioFrame
- (QSSMutableAudioFrame)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)audio_bytes:(id)audio_bytes;
- (void)setAudio_bytes:(id)audio_bytes;
@end

@implementation QSSMutableAudioFrame

- (void)audio_bytes:(id)audio_bytes
{
  audio_bytesCopy = audio_bytes;
  audio_bytes = [(QSSMutableAudioFrame *)self audio_bytes];
  bytes = [audio_bytes bytes];
  audio_bytes2 = [(QSSMutableAudioFrame *)self audio_bytes];
  audio_bytesCopy[2](audio_bytesCopy, bytes, [audio_bytes2 length]);
}

- (void)setAudio_bytes:(id)audio_bytes
{
  v4 = [audio_bytes copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableAudioFrame)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableAudioFrame;
  v2 = [(QSSMutableAudioFrame *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end