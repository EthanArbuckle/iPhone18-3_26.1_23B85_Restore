@interface QSSMutableRecognitionResult
- (QSSMutableRecognitionResult)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setChoice_alignments:(id)choice_alignments;
- (void)setPost_itn:(id)post_itn;
- (void)setPost_itn_nbest_choices:(id)post_itn_nbest_choices;
- (void)setPre_itn:(id)pre_itn;
- (void)setPre_itn_nbest_choices:(id)pre_itn_nbest_choices;
- (void)setPre_itn_token_to_post_itn_char_alignment:(id)pre_itn_token_to_post_itn_char_alignment;
@end

@implementation QSSMutableRecognitionResult

- (void)setChoice_alignments:(id)choice_alignments
{
  v4 = [choice_alignments copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn_token_to_post_itn_char_alignment:(id)pre_itn_token_to_post_itn_char_alignment
{
  v4 = [pre_itn_token_to_post_itn_char_alignment copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_nbest_choices:(id)post_itn_nbest_choices
{
  v4 = [post_itn_nbest_choices copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn_nbest_choices:(id)pre_itn_nbest_choices
{
  v4 = [pre_itn_nbest_choices copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn:(id)post_itn
{
  v4 = [post_itn copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn:(id)pre_itn
{
  v4 = [pre_itn copy];
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

- (QSSMutableRecognitionResult)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRecognitionResult;
  v2 = [(QSSMutableRecognitionResult *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end