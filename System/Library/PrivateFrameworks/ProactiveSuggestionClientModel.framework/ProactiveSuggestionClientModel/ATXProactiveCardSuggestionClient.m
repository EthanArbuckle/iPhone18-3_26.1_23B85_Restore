@interface ATXProactiveCardSuggestionClient
- (ATXProactiveCardSuggestionClient)initWithSourceId:(id)a3;
- (id)createSuggestionWithAppBundleIdentifier:(id)a3 widgetBundleIdentifier:(id)a4 widgetKind:(id)a5 criterion:(id)a6 applicableLayouts:(unint64_t)a7 suggestionIdentifier:(id)a8 startDate:(id)a9 endDate:(id)a10 intent:(id)a11 metadata:(id)a12;
@end

@implementation ATXProactiveCardSuggestionClient

- (ATXProactiveCardSuggestionClient)initWithSourceId:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXProactiveCardSuggestionClient;
  v5 = [(ATXProactiveCardSuggestionClient *)&v11 init];
  if (v5)
  {
    v6 = [[ATXProactiveSuggestionClientModel alloc] initWithClientModelId:v4 requestDelegate:0];
    clientModel = v5->_clientModel;
    v5->_clientModel = v6;

    v8 = [v4 copy];
    sourceId = v5->_sourceId;
    v5->_sourceId = v8;
  }

  return v5;
}

- (id)createSuggestionWithAppBundleIdentifier:(id)a3 widgetBundleIdentifier:(id)a4 widgetKind:(id)a5 criterion:(id)a6 applicableLayouts:(unint64_t)a7 suggestionIdentifier:(id)a8 startDate:(id)a9 endDate:(id)a10 intent:(id)a11 metadata:(id)a12
{
  v38 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  if (v20)
  {
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E695DF00] now];
    if (v21)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
LABEL_3:
  INIntentWithTypedIntent();
  v24 = v34 = v22;
  v32 = v23;
  v25 = v38;
  v33 = v23;
  v26 = v16;
  v27 = [[ATXInfoSuggestion alloc] initWithAppBundleIdentifier:v38 widgetBundleIdentifier:v16 widgetKind:v17 criterion:v18 applicableLayouts:a7 suggestionIdentifier:v19 startDate:v20 endDate:v21 intent:v24 metadata:v32 relevanceScore:0];
  [(ATXInfoSuggestion *)v27 setSourceIdentifier:self->_sourceId];
  v36 = v17;
  if (!v19)
  {
    v28 = [MEMORY[0x1E696AFB0] UUID];
    v29 = [v28 UUIDString];
    [(ATXInfoSuggestion *)v27 setSuggestionIdentifier:v29];

    v25 = v38;
  }

  v30 = [ATXInfoSuggestion proactiveSuggestionForInfoSuggestion:v27 withClientModelId:self->_sourceId clientModelVersion:@"0.1.0" rawScore:0 confidenceCategory:0.0];

  return v30;
}

@end