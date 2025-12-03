@interface WFSmartPromptIntentHandler
- (void)handleSmartPrompt:(id)prompt completion:(id)completion;
- (void)provideSelectedButtonOptionsCollectionForSmartPrompt:(id)prompt withCompletion:(id)completion;
- (void)resolveSelectedButtonForSmartPrompt:(id)prompt withCompletion:(id)completion;
@end

@implementation WFSmartPromptIntentHandler

- (void)resolveSelectedButtonForSmartPrompt:(id)prompt withCompletion:(id)completion
{
  completionCopy = completion;
  promptCopy = prompt;
  selectedButton = [promptCopy selectedButton];

  if (selectedButton)
  {
    selectedButton2 = [promptCopy selectedButton];

    [WFSmartPromptButtonResolutionResult successWithResolvedSmartPromptButton:selectedButton2];
  }

  else
  {
    selectedButton2 = [promptCopy buttons];

    [WFSmartPromptButtonResolutionResult disambiguationWithSmartPromptButtonsToDisambiguate:selectedButton2];
  }
  v8 = ;
  completionCopy[2](completionCopy, v8);
}

- (void)provideSelectedButtonOptionsCollectionForSmartPrompt:(id)prompt withCompletion:(id)completion
{
  completionCopy = completion;
  promptCopy = prompt;
  v7 = [INObjectCollection alloc];
  buttons = [promptCopy buttons];

  v9 = [v7 initWithItems:buttons];
  completionCopy[2](completionCopy, v9, 0);
}

- (void)handleSmartPrompt:(id)prompt completion:(id)completion
{
  completionCopy = completion;
  promptCopy = prompt;
  v11 = [[WFSmartPromptIntentResponse alloc] initWithCode:4 userActivity:0];
  selectedButton = [promptCopy selectedButton];

  identifier = [selectedButton identifier];

  if ([identifier isEqualToString:WFSmartPromptButtonIdentifierHandoff])
  {
    v9 = 3;
  }

  else if ([identifier isEqualToString:WFSmartPromptButtonIdentifierAllowOnce])
  {
    v9 = 2;
  }

  else if ([identifier isEqualToString:WFSmartPromptButtonIdentifierAllowAlways])
  {
    v9 = 1;
  }

  else if ([identifier isEqualToString:WFSmartPromptButtonIdentifierDontDelete])
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  [(WFSmartPromptIntentResponse *)v11 setAuthorizationResult:v10];

  completionCopy[2](completionCopy, v11);
}

@end