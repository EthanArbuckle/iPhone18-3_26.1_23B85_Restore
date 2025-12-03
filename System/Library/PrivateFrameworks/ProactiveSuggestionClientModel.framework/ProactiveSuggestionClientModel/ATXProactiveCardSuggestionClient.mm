@interface ATXProactiveCardSuggestionClient
- (ATXProactiveCardSuggestionClient)initWithSourceId:(id)id;
- (id)createSuggestionWithAppBundleIdentifier:(id)identifier widgetBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind criterion:(id)criterion applicableLayouts:(unint64_t)layouts suggestionIdentifier:(id)suggestionIdentifier startDate:(id)date endDate:(id)self0 intent:(id)self1 metadata:(id)self2;
@end

@implementation ATXProactiveCardSuggestionClient

- (ATXProactiveCardSuggestionClient)initWithSourceId:(id)id
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = ATXProactiveCardSuggestionClient;
  v5 = [(ATXProactiveCardSuggestionClient *)&v11 init];
  if (v5)
  {
    v6 = [[ATXProactiveSuggestionClientModel alloc] initWithClientModelId:idCopy requestDelegate:0];
    clientModel = v5->_clientModel;
    v5->_clientModel = v6;

    v8 = [idCopy copy];
    sourceId = v5->_sourceId;
    v5->_sourceId = v8;
  }

  return v5;
}

- (id)createSuggestionWithAppBundleIdentifier:(id)identifier widgetBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind criterion:(id)criterion applicableLayouts:(unint64_t)layouts suggestionIdentifier:(id)suggestionIdentifier startDate:(id)date endDate:(id)self0 intent:(id)self1 metadata:(id)self2
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  criterionCopy = criterion;
  suggestionIdentifierCopy = suggestionIdentifier;
  dateCopy = date;
  endDateCopy = endDate;
  intentCopy = intent;
  metadataCopy = metadata;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dateCopy = [MEMORY[0x1E695DF00] now];
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  endDateCopy = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
LABEL_3:
  INIntentWithTypedIntent();
  v24 = v34 = intentCopy;
  v32 = metadataCopy;
  v25 = identifierCopy;
  v33 = metadataCopy;
  v26 = bundleIdentifierCopy;
  v27 = [[ATXInfoSuggestion alloc] initWithAppBundleIdentifier:identifierCopy widgetBundleIdentifier:bundleIdentifierCopy widgetKind:kindCopy criterion:criterionCopy applicableLayouts:layouts suggestionIdentifier:suggestionIdentifierCopy startDate:dateCopy endDate:endDateCopy intent:v24 metadata:v32 relevanceScore:0];
  [(ATXInfoSuggestion *)v27 setSourceIdentifier:self->_sourceId];
  v36 = kindCopy;
  if (!suggestionIdentifierCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(ATXInfoSuggestion *)v27 setSuggestionIdentifier:uUIDString];

    v25 = identifierCopy;
  }

  v30 = [ATXInfoSuggestion proactiveSuggestionForInfoSuggestion:v27 withClientModelId:self->_sourceId clientModelVersion:@"0.1.0" rawScore:0 confidenceCategory:0.0];

  return v30;
}

@end