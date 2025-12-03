@interface LNDeferredLocalizedString(Workflow)
- (void)wf_getLocalizedStringWithCompletionHandler:()Workflow;
@end

@implementation LNDeferredLocalizedString(Workflow)

- (void)wf_getLocalizedStringWithCompletionHandler:()Workflow
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69AC718]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v8 = [v5 initWithPrintedString:self spokenString:0 localeIdentifier:localeIdentifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__LNDeferredLocalizedString_Workflow__wf_getLocalizedStringWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E837AAF0;
  v11 = v4;
  v9 = v4;
  [v8 getResultWithCompletionHandler:v10];
}

@end