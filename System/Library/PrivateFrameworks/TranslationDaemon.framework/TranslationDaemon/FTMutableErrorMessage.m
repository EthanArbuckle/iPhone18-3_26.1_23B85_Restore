@interface FTMutableErrorMessage
- (FTMutableErrorMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)error_code;
- (void)setError_code:(unsigned int)a3;
- (void)setReason:(id)a3;
@end

@implementation FTMutableErrorMessage

- (FTMutableErrorMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableErrorMessage;
  v2 = [(FTMutableErrorMessage *)&v6 init];
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

- (unsigned)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setError_code:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReason:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end