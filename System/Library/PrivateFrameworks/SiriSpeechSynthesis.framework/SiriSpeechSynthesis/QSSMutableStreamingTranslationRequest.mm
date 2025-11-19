@interface QSSMutableStreamingTranslationRequest
- (BOOL)disable_log;
- (BOOL)final_message;
- (QSSMutableStreamingTranslationRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)opt_in_status;
- (void)setApp_id:(id)a3;
- (void)setOpt_in_status:(int64_t)a3;
- (void)setRequest_id:(id)a3;
- (void)setSequence_id:(id)a3;
- (void)setSource_language:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setTarget_language:(id)a3;
- (void)setTask:(id)a3;
- (void)setTranslation_text:(id)a3;
@end

@implementation QSSMutableStreamingTranslationRequest

- (BOOL)final_message
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"final_message"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setApp_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOpt_in_status:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)opt_in_status
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"opt_in_status"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)disable_log
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_log"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSequence_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_text:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_language:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_language:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
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

- (QSSMutableStreamingTranslationRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStreamingTranslationRequest;
  v2 = [(QSSMutableStreamingTranslationRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end