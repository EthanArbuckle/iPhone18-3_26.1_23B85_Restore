@interface FTMutableErrorBlamerResponse
- (FTMutableErrorBlamerResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setBlamer_report:(id)blamer_report;
- (void)setReturn_str:(id)return_str;
@end

@implementation FTMutableErrorBlamerResponse

- (FTMutableErrorBlamerResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableErrorBlamerResponse;
  v2 = [(FTMutableErrorBlamerResponse *)&v6 init];
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

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setBlamer_report:(id)blamer_report
{
  v4 = [blamer_report copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end