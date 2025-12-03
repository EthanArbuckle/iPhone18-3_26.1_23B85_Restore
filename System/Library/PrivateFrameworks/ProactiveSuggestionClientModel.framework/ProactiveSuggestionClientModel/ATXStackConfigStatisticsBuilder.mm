@interface ATXStackConfigStatisticsBuilder
- (ATXStackConfigStatisticsBuilder)initWithWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family;
- (id)build;
@end

@implementation ATXStackConfigStatisticsBuilder

- (ATXStackConfigStatisticsBuilder)initWithWidgetBundleId:(id)id widgetKind:(id)kind containerBundleIdentifier:(id)identifier widgetFamily:(int64_t)family
{
  idCopy = id;
  kindCopy = kind;
  identifierCopy = identifier;
  if (self)
  {
    objc_storeStrong(&self->_widgetBundleId, id);
    objc_storeStrong(&self->_widgetKind, kind);
    objc_storeStrong(&self->_containerBundleIdentifier, identifier);
    self->_widgetFamily = family;
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