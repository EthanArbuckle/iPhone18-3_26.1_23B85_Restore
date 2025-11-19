@interface PKCardNumbersAuthentication
+ (id)genericDisplayableVirtualCardError;
+ (id)rateLimitDisplayableVirtualCardError;
+ (void)_reportAnalyticsAuthEnded:(id)a3 result:(id)a4 featureIdentifier:(unint64_t)a5;
+ (void)_reportAnalyticsAuthStartedForFeatureIdentifier:(unint64_t)a3;
+ (void)authenticationContextLocationBased:(BOOL)a3 featureIdentifier:(unint64_t)a4 completion:(id)a5;
@end

@implementation PKCardNumbersAuthentication

+ (void)authenticationContextLocationBased:(BOOL)a3 featureIdentifier:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v22[0] = &unk_1F3CC6D58;
    v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_1.isa);
    v23[0] = v10;
    v22[1] = &unk_1F3CC6D70;
    v11 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_2.isa);
    v23[1] = v11;
    v22[2] = &unk_1F3CC6D88;
    v12 = PKDeviceName();
    v13 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_3.isa, &stru_1F3BD5BF0.isa, v12);
    v23[2] = v13;
    v22[3] = &unk_1F3CC6DA0;
    v23[3] = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

    if (v6)
    {
      v15 = 1025;
    }

    else
    {
      v15 = 2;
    }

    [a1 _reportAnalyticsAuthStartedForFeatureIdentifier:a4];
    objc_initWeak(&location, a1);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__PKCardNumbersAuthentication_authenticationContextLocationBased_featureIdentifier_completion___block_invoke;
    v17[3] = &unk_1E8010E48;
    objc_copyWeak(v20, &location);
    v20[1] = a4;
    v19 = v8;
    v16 = v9;
    v18 = v16;
    [v16 evaluatePolicy:v15 options:v14 reply:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __95__PKCardNumbersAuthentication_authenticationContextLocationBased_featureIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reportAnalyticsAuthEnded:v5 result:v10 featureIdentifier:*(a1 + 56)];
  }

  v8 = *(a1 + 40);
  if (!v10 || v5)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = *(v8 + 16);
  }

  v9();
}

+ (id)genericDisplayableVirtualCardError
{
  v2 = PKLocalizedCardNumbersString(&cfstr_CardNumbersErr.isa);
  v3 = PKLocalizedCardNumbersString(&cfstr_CardNumbersErr_0.isa);
  v4 = PKDisplayableErrorCustom();

  return v4;
}

+ (id)rateLimitDisplayableVirtualCardError
{
  v2 = PKLocalizedCardNumbersString(&cfstr_CardNumbersErr_1.isa);
  v3 = PKDisplayableErrorCustom();

  return v3;
}

+ (void)_reportAnalyticsAuthStartedForFeatureIdentifier:(unint64_t)a3
{
  if (a3 == 1)
  {
    [MEMORY[0x1E69B8540] reportDTOAuthEvent:*MEMORY[0x1E69BA760] forSubject:*MEMORY[0x1E69BB6A8]];
  }
}

+ (void)_reportAnalyticsAuthEnded:(id)a3 result:(id)a4 featureIdentifier:(unint64_t)a5
{
  if (a5 == 1)
  {
    [MEMORY[0x1E69B8540] reportDTOAuthEndedWithResult:a4 error:a3 forSubject:*MEMORY[0x1E69BB6A8]];
  }
}

@end