@interface SXDefaultComponentTextStyleModifier
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXDefaultComponentTextStyleModifier

- (void)modifyDOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  if (!self->_shouldReturnUnmodifiedDOM)
  {
    componentTextStyles = [mCopy componentTextStyles];
    v8 = [componentTextStyles objectForKey:@"default"];

    if (v8 && [v8 fontSize] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v8, "textColor"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      self->_shouldReturnUnmodifiedDOM = 1;
    }

    else
    {
      jSONRepresentation = [v8 JSONRepresentation];
      v11 = jSONRepresentation;
      if (!jSONRepresentation)
      {
        jSONRepresentation = MEMORY[0x1E695E0F8];
      }

      v12 = [jSONRepresentation mutableCopy];

      if ([v8 fontSize] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 setObject:&unk_1F538A400 forKey:@"fontSize"];
      }

      textColor = [v8 textColor];

      if (!textColor)
      {
        [v12 setObject:@"#000" forKey:@"textColor"];
      }

      identifier = [v8 identifier];

      if (!identifier)
      {
        [v12 setObject:@"default" forKey:@"identifier"];
      }

      v15 = [SXComponentTextStyle alloc];
      specVersion = [contextCopy specVersion];
      v17 = [(SXJSONObject *)v15 initWithJSONObject:v12 andVersion:specVersion];

      componentTextStyles2 = [mCopy componentTextStyles];
      [componentTextStyles2 setObject:v17 forKey:@"default"];

      v8 = v17;
    }
  }
}

@end