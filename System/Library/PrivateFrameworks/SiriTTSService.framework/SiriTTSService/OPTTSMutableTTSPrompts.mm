@interface OPTTSMutableTTSPrompts
- (OPTTSMutableTTSPrompts)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)prompts_v2:(id)prompts_v2;
- (void)setPrompts:(id)prompts;
- (void)setPrompts_v2:(id)prompts_v2;
@end

@implementation OPTTSMutableTTSPrompts

- (void)prompts_v2:(id)prompts_v2
{
  prompts_v2Copy = prompts_v2;
  prompts_v2 = [(OPTTSMutableTTSPrompts *)self prompts_v2];
  bytes = [prompts_v2 bytes];
  prompts_v22 = [(OPTTSMutableTTSPrompts *)self prompts_v2];
  prompts_v2Copy[2](prompts_v2Copy, bytes, [prompts_v22 length]);
}

- (void)setPrompts_v2:(id)prompts_v2
{
  v4 = [prompts_v2 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPrompts:(id)prompts
{
  v4 = [prompts copy];
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

- (OPTTSMutableTTSPrompts)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTTSPrompts;
  v2 = [(OPTTSMutableTTSPrompts *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end