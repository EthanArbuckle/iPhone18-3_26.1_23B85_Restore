@interface OPTTSMutableTextToSpeechRequestContext
- (OPTTSMutableTextToSpeechRequestContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContext_info:(id)context_info;
- (void)setDialog_identifier:(id)dialog_identifier;
@end

@implementation OPTTSMutableTextToSpeechRequestContext

- (void)setDialog_identifier:(id)dialog_identifier
{
  v4 = [dialog_identifier copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContext_info:(id)context_info
{
  v4 = [context_info copy];
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

- (OPTTSMutableTextToSpeechRequestContext)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestContext;
  v2 = [(OPTTSMutableTextToSpeechRequestContext *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end