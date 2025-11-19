@interface WFLocalizationContext
+ (WFLocalizationContext)defaultContext;
- (WFLocalizationContext)initWithLocale:(id)a3 stringLocalizer:(id)a4 localizationUsage:(id)a5;
- (id)localize:(id)a3;
- (id)localize:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFLocalizationContext

+ (WFLocalizationContext)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    dispatch_once(&defaultContext_onceToken, &__block_literal_global_13434);
  }

  v3 = defaultContext_context;

  return v3;
}

- (id)localize:(id)a3 pluralizationNumber:(id)a4
{
  v6 = MEMORY[0x1E696B108];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setPluralizationNumber:v7];

  v10 = [(WFLocalizationContext *)self locale];
  [v8 setLocale:v10];

  v11 = [v8 localizeWithOptions:v9];

  return v11;
}

- (id)localize:(id)a3
{
  v4 = a3;
  v5 = [(WFLocalizationContext *)self locale];
  [v4 setLocale:v5];

  v6 = [v4 localize];

  return v6;
}

- (WFLocalizationContext)initWithLocale:(id)a3 stringLocalizer:(id)a4 localizationUsage:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"stringLocalizer"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"localizationUsage"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = WFLocalizationContext;
  v13 = [(WFLocalizationContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_locale, a3);
    objc_storeStrong(&v14->_stringLocalizer, a4);
    objc_storeStrong(&v14->_localizationUsage, a5);
    v15 = v14;
  }

  return v14;
}

void __39__WFLocalizationContext_defaultContext__block_invoke()
{
  v0 = [WFLocalizationContext alloc];
  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v1 = [objc_alloc(MEMORY[0x1E696EA80]) initWithLanguageCode:0];
  v2 = [(WFLocalizationContext *)v0 initWithLocale:v4 stringLocalizer:v1 localizationUsage:@"display"];
  v3 = defaultContext_context;
  defaultContext_context = v2;
}

@end