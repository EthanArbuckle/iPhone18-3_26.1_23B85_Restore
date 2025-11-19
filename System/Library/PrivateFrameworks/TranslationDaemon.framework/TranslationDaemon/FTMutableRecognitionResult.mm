@interface FTMutableRecognitionResult
- (FTMutableRecognitionResult)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setChoice_alignments:(id)a3;
- (void)setPost_itn:(id)a3;
- (void)setPost_itn_nbest_choices:(id)a3;
- (void)setPre_itn:(id)a3;
- (void)setPre_itn_nbest_choices:(id)a3;
- (void)setPre_itn_token_to_post_itn_char_alignment:(id)a3;
@end

@implementation FTMutableRecognitionResult

- (FTMutableRecognitionResult)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionResult;
  v2 = [(FTMutableRecognitionResult *)&v6 init];
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

- (void)setPre_itn:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn_nbest_choices:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_nbest_choices:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn_token_to_post_itn_char_alignment:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setChoice_alignments:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end