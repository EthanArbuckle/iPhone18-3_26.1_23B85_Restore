@interface SVXSAUILParseableExpressionProvider
- (id)createWithAceId:(id)id context:(id)context expressionString:(id)string;
@end

@implementation SVXSAUILParseableExpressionProvider

- (id)createWithAceId:(id)id context:(id)context expressionString:(id)string
{
  v7 = MEMORY[0x277D47AA0];
  stringCopy = string;
  contextCopy = context;
  idCopy = id;
  v11 = objc_alloc_init(v7);
  [v11 setAceId:idCopy];

  [v11 setContext:contextCopy];
  [v11 setExpressionString:stringCopy];

  return v11;
}

@end