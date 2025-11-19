@interface SVXSAUILParseableExpressionProvider
- (id)createWithAceId:(id)a3 context:(id)a4 expressionString:(id)a5;
@end

@implementation SVXSAUILParseableExpressionProvider

- (id)createWithAceId:(id)a3 context:(id)a4 expressionString:(id)a5
{
  v7 = MEMORY[0x277D47AA0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 setAceId:v10];

  [v11 setContext:v9];
  [v11 setExpressionString:v8];

  return v11;
}

@end