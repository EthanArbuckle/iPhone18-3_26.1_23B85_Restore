@interface SVXActivationUtils
- (id)createActivationContextWithRequestInfo:(id)a3 context:(id)a4;
- (id)createDeactivationContextWithReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5;
@end

@implementation SVXActivationUtils

- (id)createDeactivationContextWithReason:(int64_t)a3 options:(unint64_t)a4 context:(id)a5
{
  v6 = a5;
  v7 = [v6 timestamp];
  if (!v7)
  {
    v7 = mach_absolute_time();
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SVXActivationUtils_createDeactivationContextWithReason_options_context___block_invoke;
  v11[3] = &unk_279C67960;
  v13 = a3;
  v14 = v7;
  v12 = v6;
  v8 = v6;
  v9 = [SVXDeactivationContext newWithBuilder:v11];

  return v9;
}

void __74__SVXActivationUtils_createDeactivationContextWithReason_options_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = v4;
  if (v3 == 3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  [v4 setSource:v6];
  [v5 setTimestamp:*(a1 + 48)];
  v7 = [*(a1 + 32) userInfo];
  [v5 setUserInfo:v7];
}

- (id)createActivationContextWithRequestInfo:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 speechRequestOptions];
  v8 = [v7 activationEventMachAbsoluteTime];
  if (!v8)
  {
    v8 = [v5 timestamp];
    if (!v8)
    {
      v8 = [v6 timestamp];
      if (!v8)
      {
        v8 = mach_absolute_time();
      }
    }
  }

  v9 = v8;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SVXActivationUtils_createActivationContextWithRequestInfo_context___block_invoke;
  v14[3] = &unk_279C67938;
  v15 = v5;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  v12 = [SVXActivationContext newWithBuilder:v14];

  return v12;
}

void __69__SVXActivationUtils_createActivationContextWithRequestInfo_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  if (v3 && ![v3 isSpeechRequest])
  {
    v5 = 7;
    goto LABEL_14;
  }

  v4 = [*(a1 + 40) event];
  if (v4 <= 7)
  {
    if ((v4 - 2) < 3)
    {
      v5 = 6;
      goto LABEL_14;
    }

LABEL_12:
    v5 = 2;
    goto LABEL_14;
  }

  if (v4 == 17)
  {
    v5 = 8;
    goto LABEL_14;
  }

  if (v4 != 9)
  {
    if (v4 == 8)
    {
      v5 = 1;
      v6 = [[SVXButtonEvent alloc] initWithType:1 timestamp:*(a1 + 48)];
      [v8 setButtonEvent:v6];

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v7 = [[SVXButtonEvent alloc] initWithType:2 timestamp:*(a1 + 48)];
  [v8 setButtonEvent:v7];

  v5 = 1;
LABEL_14:
  [v8 setSource:v5];
  [v8 setTimestamp:*(a1 + 48)];
  [v8 setRequestInfo:*(a1 + 32)];
}

@end