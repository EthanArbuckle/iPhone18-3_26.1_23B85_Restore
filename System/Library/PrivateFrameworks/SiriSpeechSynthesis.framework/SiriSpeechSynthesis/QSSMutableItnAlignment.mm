@interface QSSMutableItnAlignment
- (QSSMutableItnAlignment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)first_post_itn_char_pos;
- (int)first_pre_itn_token_index;
- (int)last_post_itn_char_pos;
- (int)last_pre_itn_token_index;
@end

@implementation QSSMutableItnAlignment

- (int)last_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_post_itn_char_pos"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)first_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_post_itn_char_pos"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)last_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_pre_itn_token_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)first_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_pre_itn_token_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableItnAlignment)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableItnAlignment;
  v2 = [(QSSMutableItnAlignment *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end