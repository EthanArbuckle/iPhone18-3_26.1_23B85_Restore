@interface QSSMutableTextToSpeechStreamingStreamingResponse
- (QSSBeginTextToSpeechStreamingResponse)contentAsQSSBeginTextToSpeechStreamingResponse;
- (QSSFinalTextToSpeechStreamingResponse)contentAsQSSFinalTextToSpeechStreamingResponse;
- (QSSMutableTextToSpeechStreamingStreamingResponse)init;
- (QSSPartialTextToSpeechStreamingResponse)contentAsQSSPartialTextToSpeechStreamingResponse;
- (QSSQssAckResponse)contentAsQSSQssAckResponse;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)content_type;
- (void)setContentAsQSSBeginTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsQSSFinalTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsQSSPartialTextToSpeechStreamingResponse:(id)response;
- (void)setContentAsQSSQssAckResponse:(id)response;
- (void)setContent_type:(int64_t)content_type;
@end

@implementation QSSMutableTextToSpeechStreamingStreamingResponse

- (void)setContentAsQSSFinalTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:4];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSFinalTextToSpeechStreamingResponse)contentAsQSSFinalTextToSpeechStreamingResponse
{
  if ([(QSSMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 4)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSPartialTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:3];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSPartialTextToSpeechStreamingResponse)contentAsQSSPartialTextToSpeechStreamingResponse
{
  if ([(QSSMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 3)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSBeginTextToSpeechStreamingResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:2];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSBeginTextToSpeechStreamingResponse)contentAsQSSBeginTextToSpeechStreamingResponse
{
  if ([(QSSMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContentAsQSSQssAckResponse:(id)response
{
  responseCopy = response;
  [(QSSMutableTextToSpeechStreamingStreamingResponse *)self setContent_type:1];
  v4 = [responseCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"content"];
}

- (QSSQssAckResponse)contentAsQSSQssAckResponse
{
  if ([(QSSMutableTextToSpeechStreamingStreamingResponse *)self content_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent_type:(int64_t)content_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:content_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)content_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"content_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTextToSpeechStreamingStreamingResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechStreamingStreamingResponse;
  v2 = [(QSSMutableTextToSpeechStreamingStreamingResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end