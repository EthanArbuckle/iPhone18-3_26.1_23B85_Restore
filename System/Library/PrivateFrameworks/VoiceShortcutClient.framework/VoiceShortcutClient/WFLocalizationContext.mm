@interface WFLocalizationContext
+ (WFLocalizationContext)defaultContext;
- (WFLocalizationContext)initWithLocale:(id)locale stringLocalizer:(id)localizer localizationUsage:(id)usage;
- (id)localize:(id)localize;
- (id)localize:(id)localize pluralizationNumber:(id)number;
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

- (id)localize:(id)localize pluralizationNumber:(id)number
{
  v6 = MEMORY[0x1E696B108];
  numberCopy = number;
  localizeCopy = localize;
  v9 = objc_alloc_init(v6);
  [v9 setPluralizationNumber:numberCopy];

  locale = [(WFLocalizationContext *)self locale];
  [localizeCopy setLocale:locale];

  v11 = [localizeCopy localizeWithOptions:v9];

  return v11;
}

- (id)localize:(id)localize
{
  localizeCopy = localize;
  locale = [(WFLocalizationContext *)self locale];
  [localizeCopy setLocale:locale];

  localize = [localizeCopy localize];

  return localize;
}

- (WFLocalizationContext)initWithLocale:(id)locale stringLocalizer:(id)localizer localizationUsage:(id)usage
{
  localeCopy = locale;
  localizerCopy = localizer;
  usageCopy = usage;
  if (localeCopy)
  {
    if (localizerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"stringLocalizer"}];

    if (usageCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

  if (!localizerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (usageCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFLocalizationContext.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"localizationUsage"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = WFLocalizationContext;
  v13 = [(WFLocalizationContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_locale, locale);
    objc_storeStrong(&v14->_stringLocalizer, localizer);
    objc_storeStrong(&v14->_localizationUsage, usage);
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