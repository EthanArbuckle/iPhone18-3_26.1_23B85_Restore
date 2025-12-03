@interface QSSMutableBatchRecoverFinalResponse
- (QSSMutableBatchRecoverFinalResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (int)num_of_processed;
- (int)num_of_requested;
- (int)num_of_succeeded;
- (void)setError_str:(id)error_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableBatchRecoverFinalResponse

- (int)num_of_succeeded
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"num_of_succeeded"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)num_of_processed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"num_of_processed"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)num_of_requested
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"num_of_requested"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setError_str:(id)error_str
{
  v4 = [error_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
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

- (QSSMutableBatchRecoverFinalResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchRecoverFinalResponse;
  v2 = [(QSSMutableBatchRecoverFinalResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end