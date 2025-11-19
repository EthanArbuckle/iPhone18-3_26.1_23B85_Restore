@interface ATXStackConfigStatisticsBuilder
- (ATXStackConfigStatisticsBuilder)initWithWidgetBundleId:(id)a3 widgetKind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6;
- (id)build;
@end

@implementation ATXStackConfigStatisticsBuilder

- (ATXStackConfigStatisticsBuilder)initWithWidgetBundleId:(id)a3 widgetKind:(id)a4 containerBundleIdentifier:(id)a5 widgetFamily:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (self)
  {
    objc_storeStrong(&self->_widgetBundleId, a3);
    objc_storeStrong(&self->_widgetKind, a4);
    objc_storeStrong(&self->_containerBundleIdentifier, a5);
    self->_widgetFamily = a6;
    v14 = [MEMORY[0x1E695DF00] now];
    timestamp = self->_timestamp;
    self->_timestamp = v14;

    *&self->_countOfSmartStacksWithWidget = 0u;
    *&self->_countOfStandaloneWidgets = 0u;
  }

  return self;
}

- (id)build
{
  v2 = [[ATXStackConfigStatistics alloc] initWithBuilder:self];

  return v2;
}

@end