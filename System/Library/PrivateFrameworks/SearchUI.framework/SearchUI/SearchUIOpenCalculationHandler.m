@interface SearchUIOpenCalculationHandler
- (id)itemProvider;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIOpenCalculationHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v15 = a3;
  if ([v15 shouldOpenCurrencyConversionProvider])
  {
    [_TtC8SearchUI28SearchUICalculateUIUtilities currencyConversionProviderURLWithCompletionHandler:&__block_literal_global_22];
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setScheme:@"calc"];
    v6 = [v15 input];
    v7 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];
    [v5 setHost:v8];

    v9 = objc_opt_new();
    v10 = [v5 URL];
    if (v10)
    {
      [v9 addObject:v10];
    }

    v11 = [v15 input];
    v12 = [SearchUISearchWebHandler webSearchURLForQueryString:v11];

    if (v12)
    {
      [v9 addObject:v12];
    }

    v13 = objc_opt_new();
    v14 = [v9 copy];
    [v13 setUrls:v14];

    [SearchUIUtilities openPunchout:v13];
  }
}

void __74__SearchUIOpenCalculationHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x1E69CA320] punchoutWithURL:a2];
    [SearchUIUtilities openPunchout:v2];
  }
}

- (id)itemProvider
{
  v3 = objc_alloc(MEMORY[0x1E696ACA0]);
  v4 = [(SearchUICommandHandler *)self command];
  v5 = [v4 output];
  v6 = [v3 initWithObject:v5];

  return v6;
}

@end