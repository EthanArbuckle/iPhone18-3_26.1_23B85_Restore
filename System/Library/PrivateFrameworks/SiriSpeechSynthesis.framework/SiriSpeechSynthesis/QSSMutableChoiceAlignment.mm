@interface QSSMutableChoiceAlignment
- (QSSMutableChoiceAlignment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPost_itn_choice_indices:(id)post_itn_choice_indices;
- (void)setPre_itn_token_to_post_itn_char_alignments:(id)pre_itn_token_to_post_itn_char_alignments;
@end

@implementation QSSMutableChoiceAlignment

- (void)setPre_itn_token_to_post_itn_char_alignments:(id)pre_itn_token_to_post_itn_char_alignments
{
  v4 = [pre_itn_token_to_post_itn_char_alignments copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_choice_indices:(id)post_itn_choice_indices
{
  v4 = [post_itn_choice_indices copy];
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

- (QSSMutableChoiceAlignment)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableChoiceAlignment;
  v2 = [(QSSMutableChoiceAlignment *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end