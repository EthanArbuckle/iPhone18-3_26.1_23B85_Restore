@interface QSSMutableTTSPrompts
- (QSSMutableTTSPrompts)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)prompts_v2:(id)a3;
- (void)setPrompts:(id)a3;
- (void)setPrompts_v2:(id)a3;
@end

@implementation QSSMutableTTSPrompts

- (void)prompts_v2:(id)a3
{
  v7 = a3;
  v4 = [(QSSMutableTTSPrompts *)self prompts_v2];
  v5 = [v4 bytes];
  v6 = [(QSSMutableTTSPrompts *)self prompts_v2];
  v7[2](v7, v5, [v6 length]);
}

- (void)setPrompts_v2:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPrompts:(id)a3
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

- (QSSMutableTTSPrompts)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTTSPrompts;
  v2 = [(QSSMutableTTSPrompts *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end