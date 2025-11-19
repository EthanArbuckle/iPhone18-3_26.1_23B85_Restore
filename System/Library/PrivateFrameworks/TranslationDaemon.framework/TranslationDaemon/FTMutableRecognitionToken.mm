@interface FTMutableRecognitionToken
- (BOOL)add_space_after;
- (FTMutableRecognitionToken)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)confidence;
- (int)end_milli_seconds;
- (int)silence_start_milli_seconds;
- (int)start_milli_seconds;
- (void)setIpa_phone_seq:(id)a3;
- (void)setPhone_seq:(id)a3;
- (void)setToken_text:(id)a3;
@end

@implementation FTMutableRecognitionToken

- (FTMutableRecognitionToken)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionToken;
  v2 = [(FTMutableRecognitionToken *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setToken_text:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_milli_seconds"];
  v3 = [v2 intValue];

  return v3;
}

- (int)end_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_milli_seconds"];
  v3 = [v2 intValue];

  return v3;
}

- (int)silence_start_milli_seconds
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"silence_start_milli_seconds"];
  v3 = [v2 intValue];

  return v3;
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)add_space_after
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"add_space_after"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPhone_seq:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setIpa_phone_seq:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end