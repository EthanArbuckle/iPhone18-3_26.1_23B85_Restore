@interface SFRemoteAutoFillScanAction
+ (void)actionForURL:(id)l completion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation SFRemoteAutoFillScanAction

+ (void)actionForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SFRemoteAutoFillScanAction_actionForURL_completion___block_invoke;
  v9[3] = &unk_1E788B210;
  v10 = lCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = lCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __54__SFRemoteAutoFillScanAction_actionForURL_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) absoluteString];
  v4 = [v3 hasPrefix:@"https://autofill.apple.com/"];

  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillScanAction <= 50 && (gLogCategory_SFRemoteAutoFillScanAction != -1 || _LogCategory_Initialize()))
    {
      __54__SFRemoteAutoFillScanAction_actionForURL_completion___block_invoke_cold_1(v2);
    }

    v9 = objc_alloc_init(SFRemoteAutoFillScanAction);
    v5 = SFLocalizedStringForKey(@"PROX_AUTOFILL_QR_MESSAGE");
    [(SFRemoteAutoFillScanAction *)v9 setMessage:v5];

    v6 = SFLocalizedStringForKey(@"PROX_AUTOFILL_QR_TITLE");
    [(SFRemoteAutoFillScanAction *)v9 setTitle:v6];

    [(SFRemoteAutoFillScanAction *)v9 setUrl:*v2];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v10 = v7;
    (*(v8 + 16))();
    v7 = v10;
  }
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_SFRemoteAutoFillScanAction <= 50 && (gLogCategory_SFRemoteAutoFillScanAction != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillScanAction performWithCompletion:?];
  }

  v5 = objc_alloc_init(SFClient);
  url = self->_url;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SFRemoteAutoFillScanAction_performWithCompletion___block_invoke;
  v9[3] = &unk_1E788CB38;
  v10 = v5;
  v11 = completionCopy;
  v7 = v5;
  v8 = completionCopy;
  [(SFClient *)v7 triggerProximityAutoFillDetectedWithURL:url completion:v9];
}

void __52__SFRemoteAutoFillScanAction_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillScanAction <= 60 && (gLogCategory_SFRemoteAutoFillScanAction != -1 || _LogCategory_Initialize()))
    {
      __52__SFRemoteAutoFillScanAction_performWithCompletion___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_SFRemoteAutoFillScanAction <= 50 && (gLogCategory_SFRemoteAutoFillScanAction != -1 || _LogCategory_Initialize()))
  {
    __52__SFRemoteAutoFillScanAction_performWithCompletion___block_invoke_cold_2();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }

  [*(a1 + 32) invalidate];
}

@end