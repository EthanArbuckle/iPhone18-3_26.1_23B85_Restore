@interface PALApplicationMetadataResolver
- (PALApplicationMetadataResolver)initWithSettings:(id)settings;
- (id)bundleRecordForApplication:(id)application;
- (id)resolveApplicationMetadataForAccess:(id)access;
- (void)setProcessStateMonitor:(id)monitor;
@end

@implementation PALApplicationMetadataResolver

- (PALApplicationMetadataResolver)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = PALApplicationMetadataResolver;
  v6 = [(PALApplicationMetadataResolver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v8 = PADefaultBundleRecordRetriever();
    bundleRecordRetriever = v7->_bundleRecordRetriever;
    v7->_bundleRecordRetriever = v8;

    v10 = PASharedProcessStateMonitor();
    [(PALApplicationMetadataResolver *)v7 setProcessStateMonitor:v10];
  }

  return v7;
}

- (id)resolveApplicationMetadataForAccess:(id)access
{
  accessCopy = access;
  accessor = [accessCopy accessor];
  v6 = [(PALApplicationMetadataResolver *)self bundleRecordForApplication:accessor];

  if (-[PALSettings accessFilteringPolicy](self->_settings, "accessFilteringPolicy") == 1 && [v6 developerType] != 3)
  {
    accessor2 = sub_1000030DC();
    if (os_log_type_enabled(accessor2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000032EC();
    }

    goto LABEL_14;
  }

  accessor2 = [accessCopy accessor];
  if ([accessor2 identifierType]== 2)
  {
    bundleIdentifier = [v6 bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [v6 bundleIdentifier];
      v10 = [PAApplication applicationWithBundleID:bundleIdentifier2];

      accessor2 = v10;
      goto LABEL_6;
    }

    v13 = sub_1000030DC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100003414();
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_6:
  v11 = sub_1000030DC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100003364(accessCopy, accessor2, v11);
  }

  v12 = [accessCopy copyWithNewAccessor:accessor2];
LABEL_15:

  return v12;
}

- (id)bundleRecordForApplication:(id)application
{
  applicationCopy = application;
  bundleRecordRetriever = [(PALApplicationMetadataResolver *)self bundleRecordRetriever];
  v6 = (bundleRecordRetriever)[2](bundleRecordRetriever, applicationCopy);

  return v6;
}

- (void)setProcessStateMonitor:(id)monitor
{
  objc_storeStrong(&self->_processStateMonitor, monitor);
  monitorCopy = monitor;
  v5 = [PAAggregateVisibilityStateMonitor alloc];
  v6 = [v5 initWithRawMonitor:self->_processStateMonitor startupInterval:PADefaultAggregateStateMonitoringStartupInterval];
  aggregateVisibilityStateMonitor = self->_aggregateVisibilityStateMonitor;
  self->_aggregateVisibilityStateMonitor = v6;
}

@end