@interface WFVariableString(AttributedString)
+ (id)attributedStringWithVariable:()AttributedString;
- (id)attributedString;
- (id)attributedStringByAddingTypingAttributes:()AttributedString;
- (id)stringByReplacingCharactersInRange:()AttributedString withVariable:;
- (id)stringByReplacingCharactersInRange:()AttributedString withVariableString:;
- (id)substringWithRange:()AttributedString;
- (void)initWithAttributedString:()AttributedString;
@end

@implementation WFVariableString(AttributedString)

- (id)attributedStringByAddingTypingAttributes:()AttributedString
{
  v4 = a3;
  v5 = [a1 attributedString];
  v6 = [v5 mutableCopy];

  [v6 addAttributes:v4 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

- (id)substringWithRange:()AttributedString
{
  v6 = [a1 attributedString];
  v7 = [v6 attributedSubstringFromRange:{a3, a4}];

  v8 = [objc_alloc(objc_opt_class()) initWithAttributedString:v7];

  return v8;
}

- (id)stringByReplacingCharactersInRange:()AttributedString withVariableString:
{
  v8 = a5;
  v9 = [a1 attributedString];
  v10 = [v9 mutableCopy];

  v11 = [v8 attributedString];

  [v10 replaceCharactersInRange:a3 withAttributedString:{a4, v11}];
  v12 = [objc_alloc(objc_opt_class()) initWithAttributedString:v10];

  return v12;
}

- (id)stringByReplacingCharactersInRange:()AttributedString withVariable:
{
  v8 = a5;
  v9 = [a1 attributedString];
  v10 = [v9 mutableCopy];

  v11 = [MEMORY[0x277D7CA28] attributedStringWithVariable:v8];

  [v10 replaceCharactersInRange:a3 withAttributedString:{a4, v11}];
  v12 = [objc_alloc(objc_opt_class()) initWithAttributedString:v10];

  return v12;
}

- (id)attributedString
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_attributedString);
  if (!v2)
  {
    v13 = sel_attributedString;
    v3 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = a1;
    v4 = [a1 stringsAndVariables];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v5;
    v7 = *v16;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v10 = [MEMORY[0x277D7CA28] attributedStringWithVariable:{v9, v13}];
        }

        v11 = v10;
        [v3 appendAttributedString:{v10, v13}];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v6)
      {
LABEL_14:

        v2 = [v3 copy];
        objc_setAssociatedObject(v14, v13, v2, 1);

        break;
      }
    }
  }

  return v2;
}

- (void)initWithAttributedString:()AttributedString
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFVariableString+AttributedString.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"[attributedString isKindOfClass:[NSAttributedString class]]"}];
  }

  v6 = [v5 string];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WFVariableString_AttributedString__initWithAttributedString___block_invoke;
  v12[3] = &unk_279EDB7C0;
  v7 = v5;
  v13 = v7;
  v8 = [a1 initWithAttachmentCharacterString:v6 variableGetter:v12];

  if (v8)
  {
    objc_setAssociatedObject(v8, sel_attributedString, v7, 3);
    v9 = v8;
  }

  return v8;
}

+ (id)attributedStringWithVariable:()AttributedString
{
  v3 = MEMORY[0x277D7D7C8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [[WFSlotTemplateVariableToken alloc] initWithVariable:v4];

  v7 = [v5 initWithSlotTemplateToken:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];

  return v8;
}

@end