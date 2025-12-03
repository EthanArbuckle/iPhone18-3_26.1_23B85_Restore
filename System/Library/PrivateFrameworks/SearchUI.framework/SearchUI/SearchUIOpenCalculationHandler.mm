@interface SearchUIOpenCalculationHandler
- (id)itemProvider;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIOpenCalculationHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  if ([commandCopy shouldOpenCurrencyConversionProvider])
  {
    [_TtC8SearchUI28SearchUICalculateUIUtilities currencyConversionProviderURLWithCompletionHandler:&__block_literal_global_22];
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setScheme:@"calc"];
    input = [commandCopy input];
    uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v8 = [input stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    [v5 setHost:v8];

    v9 = objc_opt_new();
    v10 = [v5 URL];
    if (v10)
    {
      [v9 addObject:v10];
    }

    input2 = [commandCopy input];
    v12 = [SearchUISearchWebHandler webSearchURLForQueryString:input2];

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
  command = [(SearchUICommandHandler *)self command];
  output = [command output];
  v6 = [v3 initWithObject:output];

  return v6;
}

@end