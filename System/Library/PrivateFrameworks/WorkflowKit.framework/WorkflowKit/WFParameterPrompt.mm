@interface WFParameterPrompt
- (WFParameterPrompt)initWithPrompt:(id)a3 linkDialog:(id)a4;
@end

@implementation WFParameterPrompt

- (WFParameterPrompt)initWithPrompt:(id)a3 linkDialog:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFParameterPrompt;
  v9 = [(WFParameterPrompt *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prompt, a3);
    objc_storeStrong(&v10->_linkDialog, a4);
    v11 = v10;
  }

  return v10;
}

@end