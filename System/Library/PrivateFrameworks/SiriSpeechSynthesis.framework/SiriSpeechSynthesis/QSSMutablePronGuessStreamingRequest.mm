@interface QSSMutablePronGuessStreamingRequest
- (QSSAudioPacket)contentAsQSSAudioPacket;
- (QSSCancelRequest)contentAsQSSCancelRequest;
- (QSSFinishAudio)contentAsQSSFinishAudio;
- (QSSMutablePronGuessStreamingRequest)init;
- (QSSStartPronGuessRequest)contentAsQSSStartPronGuessRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)content_type;
- (void)setContentAsQSSAudioPacket:(id)a3;
- (void)setContentAsQSSCancelRequest:(id)a3;
- (void)setContentAsQSSFinishAudio:(id)a3;
- (void)setContentAsQSSStartPronGuessRequest:(id)a3;
- (void)setContent_type:(int64_t)a3;
@end

@implementation QSSMutablePronGuessStreamingRequest

- (void)setContentAsQSSCancelRequest:(id)a3
{
  v5 = a3;
  [(QSSMutablePronGuessStreamingRequest *)self setContent_type:4];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSCancelRequest)contentAsQSSCancelRequest
{
  if ([(QSSMutablePronGuessStreamingRequest *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSFinishAudio:(id)a3
{
  v5 = a3;
  [(QSSMutablePronGuessStreamingRequest *)self setContent_type:3];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinishAudio)contentAsQSSFinishAudio
{
  if ([(QSSMutablePronGuessStreamingRequest *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSAudioPacket:(id)a3
{
  v5 = a3;
  [(QSSMutablePronGuessStreamingRequest *)self setContent_type:2];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSAudioPacket)contentAsQSSAudioPacket
{
  if ([(QSSMutablePronGuessStreamingRequest *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSStartPronGuessRequest:(id)a3
{
  v5 = a3;
  [(QSSMutablePronGuessStreamingRequest *)self setContent_type:1];
  v4 = [v5 copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSStartPronGuessRequest)contentAsQSSStartPronGuessRequest
{
  if ([(QSSMutablePronGuessStreamingRequest *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutablePronGuessStreamingRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutablePronGuessStreamingRequest;
  v2 = [(QSSMutablePronGuessStreamingRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end