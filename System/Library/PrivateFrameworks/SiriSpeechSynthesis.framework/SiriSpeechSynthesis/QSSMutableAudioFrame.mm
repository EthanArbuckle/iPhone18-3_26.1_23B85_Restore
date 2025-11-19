@interface QSSMutableAudioFrame
- (QSSMutableAudioFrame)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)audio_bytes:(id)a3;
- (void)setAudio_bytes:(id)a3;
@end

@implementation QSSMutableAudioFrame

- (void)audio_bytes:(id)a3
{
  v7 = a3;
  v4 = [(QSSMutableAudioFrame *)self audio_bytes];
  v5 = [v4 bytes];
  v6 = [(QSSMutableAudioFrame *)self audio_bytes];
  v7[2](v7, v5, [v6 length]);
}

- (void)setAudio_bytes:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end