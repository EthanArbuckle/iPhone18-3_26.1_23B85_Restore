@interface ATXStackConfigStatistics
+ (id)stackConfigStatisticsWithWidgetBundleId:(id)a3 widgetKind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 withBlock:(id)a7;
- (ATXStackConfigStatistics)initWithBuilder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation ATXStackConfigStatistics

- (ATXStackConfigStatistics)initWithBuilder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ATXStackConfigStatistics;
  v5 = [(ATXStackConfigStatistics *)&v22 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 widgetBundleId];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 widgetKind];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 widgetFamily];

      if (v10)
      {
        v11 = [v4 widgetBundleId];
        widgetBundleId = v5->_widgetBundleId;
        v5->_widgetBundleId = v11;

        v13 = [v4 widgetKind];
        widgetKind = v5->_widgetKind;
        v5->_widgetKind = v13;

        v15 = [v4 containerBundleIdentifier];
        containerBundleIdentifier = v5->_containerBundleIdentifier;
        v5->_containerBundleIdentifier = v15;

        v5->_widgetFamily = [v4 widgetFamily];
        v17 = [v4 timestamp];
        timestamp = v5->_timestamp;
        v5->_timestamp = v17;

        v5->_countOfSmartStacksWithWidget = [v4 countOfSmartStacksWithWidget];
        v5->_countOfNonSmartStacksWithWidget = [v4 countOfNonSmartStacksWithWidget];
        v5->_countOfStandaloneWidgets = [v4 countOfStandaloneWidgets];
        v5->_countOfWidgetsWithUnknownStackKind = [v4 countOfWidgetsWithUnknownStackKind];
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
    [(ATXStackConfigStatistics *)v4 initWithBuilder:v20];
  }

  v19 = 0;
LABEL_11:

  return v19;
}

+ (id)stackConfigStatisticsWithWidgetBundleId:(id)a3 widgetKind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6 withBlock:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[ATXStackConfigStatisticsBuilder alloc] initWithWidgetBundleId:v14 widgetKind:v13 containerBundleIdentifier:v12 widgetFamily:a6];

  v11[2](v11, v15);
  v16 = [(ATXStackConfigStatisticsBuilder *)v15 build];

  return v16;
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
  v2 = [(ATXStackConfigStatistics *)self dictionaryRepresentation];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 descriptionWithLocale:v3];

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