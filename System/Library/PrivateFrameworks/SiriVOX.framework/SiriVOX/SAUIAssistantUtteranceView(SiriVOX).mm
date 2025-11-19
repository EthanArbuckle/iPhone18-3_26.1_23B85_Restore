@interface SAUIAssistantUtteranceView(SiriVOX)
- (id)svx_parseableExpression;
- (void)svx_applyParsedExpression:()SiriVOX;
@end

@implementation SAUIAssistantUtteranceView(SiriVOX)

- (void)svx_applyParsedExpression:()SiriVOX
{
  v9 = a3;
  v4 = [v9 parseableExpression];
  v5 = [v4 expressionString];
  v6 = [a1 text];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v9 parsedOutput];
    [a1 setSpeakableText:v8];
  }
}

- (id)svx_parseableExpression
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a1 context];
    v4 = [v3 svx_isDeferredExpressionContextObject];

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D47AA0]);
      v6 = [MEMORY[0x277CCAD78] UUID];
      v7 = [v6 UUIDString];
      [v5 setAceId:v7];

      v8 = [a1 context];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setContext:v8];
      }

      v9 = [a1 speakableText];
      [v5 setExpressionString:v9];

      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [a1 context];
    v15 = 136315394;
    v16 = "[SAUIAssistantUtteranceView(SiriVOX) svx_parseableExpression]";
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Don't know how to generate a parseable expression for context object: %@", &v15, 0x16u);
  }

  v5 = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end