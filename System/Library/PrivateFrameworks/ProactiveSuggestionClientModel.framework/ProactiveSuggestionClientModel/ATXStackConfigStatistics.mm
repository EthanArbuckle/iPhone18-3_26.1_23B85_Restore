@interface ATXStackConfigStatistics
+ (id)stackConfigStatisticsWithWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family withBlock:(id)block;
- (ATXStackConfigStatistics)initWithBuilder:(id)builder;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ATXStackConfigStatistics

- (ATXStackConfigStatistics)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v22.receiver = self;
  v22.super_class = ATXStackConfigStatistics;
  v5 = [(ATXStackConfigStatistics *)&v22 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  widgetBundleId = [builderCopy widgetBundleId];
  if (widgetBundleId)
  {
    v7 = widgetBundleId;
    widgetKind = [builderCopy widgetKind];
    if (widgetKind)
    {
      v9 = widgetKind;
      widgetFamily = [builderCopy widgetFamily];

      if (widgetFamily)
      {
        widgetBundleId2 = [builderCopy widgetBundleId];
        widgetBundleId = v5->_widgetBundleId;
        v5->_widgetBundleId = widgetBundleId2;

        widgetKind2 = [builderCopy widgetKind];
        widgetKind = v5->_widgetKind;
        v5->_widgetKind = widgetKind2;

        containerBundleIdentifier = [builderCopy containerBundleIdentifier];
        containerBundleIdentifier = v5->_containerBundleIdentifier;
        v5->_containerBundleIdentifier = containerBundleIdentifier;

        v5->_widgetFamily = [builderCopy widgetFamily];
        timestamp = [builderCopy timestamp];
        timestamp = v5->_timestamp;
        v5->_timestamp = timestamp;

        v5->_countOfSmartStacksWithWidget = [builderCopy countOfSmartStacksWithWidget];
        v5->_countOfNonSmartStacksWithWidget = [builderCopy countOfNonSmartStacksWithWidget];
        v5->_countOfStandaloneWidgets = [builderCopy countOfStandaloneWidgets];
        v5->_countOfWidgetsWithUnknownStackKind = [builderCopy countOfWidgetsWithUnknownStackKind];
LABEL_6:
        v19 = v5;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v20 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(ATXStackConfigStatistics *)builderCopy initWithBuilder:v20];
  }

  v19 = 0;
LABEL_11:

  return v19;
}

+ (id)stackConfigStatisticsWithWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family withBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  kindCopy = kind;
  idCopy = id;
  v15 = [[ATXStackConfigStatisticsBuilder alloc] initWithWidgetBundleId:idCopy widgetKind:kindCopy containerBundleIdentifier:identifierCopy widgetFamily:family];

  blockCopy[2](blockCopy, v15);
  build = [(ATXStackConfigStatisticsBuilder *)v15 build];

  return build;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_widgetBundleId forKeyedSubscript:@"WidgetBundleId"];
  [v3 setObject:self->_widgetKind forKeyedSubscript:@"WidgetKind"];
  [v3 setObject:self->_containerBundleIdentifier forKeyedSubscript:@"WidgetContainerBundleIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_widgetFamily];
  [v3 setObject:v4 forKeyedSubscript:@"WidgetFamily"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_countOfSmartStacksWithWidget];
  [v3 setObject:v5 forKeyedSubscript:@"countOfSmartStacksWithWidget"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_countOfNonSmartStacksWithWidget];
  [v3 setObject:v6 forKeyedSubscript:@"countOfNonSmartStacksWithWidget"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_countOfStandaloneWidgets];
  [v3 setObject:v7 forKeyedSubscript:@"countOfStandaloneWidgets"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_countOfWidgetsWithUnknownStackKind];
  [v3 setObject:v8 forKeyedSubscript:@"countOfWidgetsWithUnknownStackKind"];

  [v3 setObject:self->_timestamp forKeyedSubscript:@"timestamp"];

  return v3;
}

- (id)description
{
  dictionaryRepresentation = [(ATXStackConfigStatistics *)self dictionaryRepresentation];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [dictionaryRepresentation descriptionWithLocale:currentLocale];

  return v4;
}

- (void)initWithBuilder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 widgetBundleId];
  v5 = [a1 widgetKind];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2048;
  v12 = [a1 widgetFamily];
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Error initializing ATXStackConfigStatistics; %@, %@ and %ld must be non-null", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end