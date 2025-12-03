@interface WFParameterPrompt
- (WFParameterPrompt)initWithPrompt:(id)prompt linkDialog:(id)dialog;
@end

@implementation WFParameterPrompt

- (WFParameterPrompt)initWithPrompt:(id)prompt linkDialog:(id)dialog
{
  promptCopy = prompt;
  dialogCopy = dialog;
  v13.receiver = self;
  v13.super_class = WFParameterPrompt;
  v9 = [(WFParameterPrompt *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prompt, prompt);
    objc_storeStrong(&v10->_linkDialog, dialog);
    v11 = v10;
  }

  return v10;
}

@end