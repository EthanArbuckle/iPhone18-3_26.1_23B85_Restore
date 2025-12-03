@interface SAUIAssistantUtteranceView(SiriVOX)
- (id)svx_parseableExpression;
- (void)svx_applyParsedExpression:()SiriVOX;
@end

@implementation SAUIAssistantUtteranceView(SiriVOX)

- (void)svx_applyParsedExpression:()SiriVOX
{
  v9 = a3;
  parseableExpression = [v9 parseableExpression];
  expressionString = [parseableExpression expressionString];
  text = [self text];
  v7 = [expressionString isEqualToString:text];

  if (v7)
  {
    parsedOutput = [v9 parsedOutput];
    [self setSpeakableText:parsedOutput];
  }
}

- (id)svx_parseableExpression
{
  v19 = *MEMORY[0x277D85DE8];
  context = [self context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context2 = [self context];
    svx_isDeferredExpressionContextObject = [context2 svx_isDeferredExpressionContextObject];

    if (svx_isDeferredExpressionContextObject)
    {
      v5 = objc_alloc_init(MEMORY[0x277D47AA0]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v5 setAceId:uUIDString];

      context3 = [self context];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setContext:context3];
      }

      speakableText = [self speakableText];
      [v5 setExpressionString:speakableText];

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
    context4 = [self context];
    v15 = 136315394;
    v16 = "[SAUIAssistantUtteranceView(SiriVOX) svx_parseableExpression]";
    v17 = 2112;
    v18 = context4;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Don't know how to generate a parseable expression for context object: %@", &v15, 0x16u);
  }

  v5 = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end