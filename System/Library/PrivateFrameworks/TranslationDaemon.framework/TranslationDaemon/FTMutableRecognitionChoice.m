@interface FTMutableRecognitionChoice
- (FTMutableRecognitionChoice)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)confidence;
- (void)setAlternative_index:(id)a3;
@end

@implementation FTMutableRecognitionChoice

- (FTMutableRecognitionChoice)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionChoice;
  v2 = [(FTMutableRecognitionChoice *)&v6 init];
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

- (void)setAlternative_index:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  v3 = [v2 intValue];

  return v3;
}

@end