@interface FTMutableRecognitionChoice
- (FTMutableRecognitionChoice)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)confidence;
- (void)setAlternative_index:(id)alternative_index;
@end

@implementation FTMutableRecognitionChoice

- (FTMutableRecognitionChoice)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionChoice;
  v2 = [(FTMutableRecognitionChoice *)&v6 init];
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

- (void)setAlternative_index:(id)alternative_index
{
  v4 = [alternative_index copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  intValue = [v2 intValue];

  return intValue;
}

@end