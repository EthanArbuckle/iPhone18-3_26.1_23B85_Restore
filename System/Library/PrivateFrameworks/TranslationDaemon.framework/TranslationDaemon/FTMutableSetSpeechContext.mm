@interface FTMutableSetSpeechContext
- (FTMutableSetSpeechContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContext_with_pron_hints:(id)context_with_pron_hints;
- (void)setContextual_text:(id)contextual_text;
- (void)setLeft_context:(id)left_context;
- (void)setRight_context:(id)right_context;
@end

@implementation FTMutableSetSpeechContext

- (FTMutableSetSpeechContext)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSetSpeechContext;
  v2 = [(FTMutableSetSpeechContext *)&v6 init];
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

- (void)setContextual_text:(id)contextual_text
{
  v4 = [contextual_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLeft_context:(id)left_context
{
  v4 = [left_context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRight_context:(id)right_context
{
  v4 = [right_context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContext_with_pron_hints:(id)context_with_pron_hints
{
  v4 = [context_with_pron_hints copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end