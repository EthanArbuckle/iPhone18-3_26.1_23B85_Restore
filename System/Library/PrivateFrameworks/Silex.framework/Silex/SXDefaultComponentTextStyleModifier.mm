@interface SXDefaultComponentTextStyleModifier
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXDefaultComponentTextStyleModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (!self->_shouldReturnUnmodifiedDOM)
  {
    v7 = [v19 componentTextStyles];
    v8 = [v7 objectForKey:@"default"];

    if (v8 && [v8 fontSize] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v8, "textColor"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      self->_shouldReturnUnmodifiedDOM = 1;
    }

    else
    {
      v10 = [v8 JSONRepresentation];
      v11 = v10;
      if (!v10)
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      v12 = [v10 mutableCopy];

      if ([v8 fontSize] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 setObject:&unk_1F538A400 forKey:@"fontSize"];
      }

      v13 = [v8 textColor];

      if (!v13)
      {
        [v12 setObject:@"#000" forKey:@"textColor"];
      }

      v14 = [v8 identifier];

      if (!v14)
      {
        [v12 setObject:@"default" forKey:@"identifier"];
      }

      v15 = [SXComponentTextStyle alloc];
      v16 = [v6 specVersion];
      v17 = [(SXJSONObject *)v15 initWithJSONObject:v12 andVersion:v16];

      v18 = [v19 componentTextStyles];
      [v18 setObject:v17 forKey:@"default"];

      v8 = v17;
    }
  }
}

@end