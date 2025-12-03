@interface FTMutableErrorMessage
- (FTMutableErrorMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)error_code;
- (void)setError_code:(unsigned int)error_code;
- (void)setReason:(id)reason;
@end

@implementation FTMutableErrorMessage

- (FTMutableErrorMessage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableErrorMessage;
  v2 = [(FTMutableErrorMessage *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (unsigned)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setError_code:(unsigned int)error_code
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:error_code];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReason:(id)reason
{
  v4 = [reason copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end