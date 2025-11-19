@interface WFSmartPromptIntentHandler
- (void)handleSmartPrompt:(id)a3 completion:(id)a4;
- (void)provideSelectedButtonOptionsCollectionForSmartPrompt:(id)a3 withCompletion:(id)a4;
- (void)resolveSelectedButtonForSmartPrompt:(id)a3 withCompletion:(id)a4;
@end

@implementation WFSmartPromptIntentHandler

- (void)resolveSelectedButtonForSmartPrompt:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 selectedButton];

  if (v7)
  {
    v9 = [v6 selectedButton];

    [WFSmartPromptButtonResolutionResult successWithResolvedSmartPromptButton:v9];
  }

  else
  {
    v9 = [v6 buttons];

    [WFSmartPromptButtonResolutionResult disambiguationWithSmartPromptButtonsToDisambiguate:v9];
  }
  v8 = ;
  v5[2](v5, v8);
}

- (void)provideSelectedButtonOptionsCollectionForSmartPrompt:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [INObjectCollection alloc];
  v8 = [v6 buttons];

  v9 = [v7 initWithItems:v8];
  v5[2](v5, v9, 0);
}

- (void)handleSmartPrompt:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = [[WFSmartPromptIntentResponse alloc] initWithCode:4 userActivity:0];
  v7 = [v6 selectedButton];

  v8 = [v7 identifier];

  if ([v8 isEqualToString:WFSmartPromptButtonIdentifierHandoff])
  {
    v9 = 3;
  }

  else if ([v8 isEqualToString:WFSmartPromptButtonIdentifierAllowOnce])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:WFSmartPromptButtonIdentifierAllowAlways])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:WFSmartPromptButtonIdentifierDontDelete])
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  [(WFSmartPromptIntentResponse *)v11 setAuthorizationResult:v10];

  v5[2](v5, v11);
}

@end