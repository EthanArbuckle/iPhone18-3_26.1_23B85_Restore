@interface QSSMutableItnAlignment
- (QSSMutableItnAlignment)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)first_post_itn_char_pos;
- (int)first_pre_itn_token_index;
- (int)last_post_itn_char_pos;
- (int)last_pre_itn_token_index;
@end

@implementation QSSMutableItnAlignment

- (int)last_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_post_itn_char_pos"];
  v3 = [v2 intValue];

  return v3;
}

- (int)first_post_itn_char_pos
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_post_itn_char_pos"];
  v3 = [v2 intValue];

  return v3;
}

- (int)last_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"last_pre_itn_token_index"];
  v3 = [v2 intValue];

  return v3;
}

- (int)first_pre_itn_token_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"first_pre_itn_token_index"];
  v3 = [v2 intValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end