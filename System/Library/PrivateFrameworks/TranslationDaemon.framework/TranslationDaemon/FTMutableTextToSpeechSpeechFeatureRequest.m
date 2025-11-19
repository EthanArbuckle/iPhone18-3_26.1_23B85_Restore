@interface FTMutableTextToSpeechSpeechFeatureRequest
- (BOOL)support_homograph;
- (FTMutableTextToSpeechSpeechFeatureRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLexicon:(id)a3;
- (void)setModel_id:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setText:(id)a3;
- (void)setWave_data:(id)a3;
@end

@implementation FTMutableTextToSpeechSpeechFeatureRequest

- (FTMutableTextToSpeechSpeechFeatureRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechSpeechFeatureRequest;
  v2 = [(FTMutableTextToSpeechSpeechFeatureRequest *)&v6 init];
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

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setModel_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWave_data:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLexicon:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)support_homograph
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"support_homograph"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end