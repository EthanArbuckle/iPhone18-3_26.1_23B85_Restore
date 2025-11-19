@interface PALApplicationMetadataResolver
- (PALApplicationMetadataResolver)initWithSettings:(id)a3;
- (id)bundleRecordForApplication:(id)a3;
- (id)resolveApplicationMetadataForAccess:(id)a3;
- (void)setProcessStateMonitor:(id)a3;
@end

@implementation PALApplicationMetadataResolver

- (PALApplicationMetadataResolver)initWithSettings:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PALApplicationMetadataResolver;
  v6 = [(PALApplicationMetadataResolver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = PADefaultBundleRecordRetriever();
    bundleRecordRetriever = v7->_bundleRecordRetriever;
    v7->_bundleRecordRetriever = v8;

    v10 = PASharedProcessStateMonitor();
    [(PALApplicationMetadataResolver *)v7 setProcessStateMonitor:v10];
  }

  return v7;
}

- (id)resolveApplicationMetadataForAccess:(id)a3
{
  v4 = a3;
  v5 = [v4 accessor];
  v6 = [(PALApplicationMetadataResolver *)self bundleRecordForApplication:v5];

  if (-[PALSettings accessFilteringPolicy](self->_settings, "accessFilteringPolicy") == 1 && [v6 developerType] != 3)
  {
    v7 = sub_1000030DC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000032EC();
    }

    goto LABEL_14;
  }

  v7 = [v4 accessor];
  if ([v7 identifierType]== 2)
  {
    v8 = [v6 bundleIdentifier];

    if (v8)
    {
      v9 = [v6 bundleIdentifier];
      v10 = [PAApplication applicationWithBundleID:v9];

      v7 = v10;
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
    sub_100003364(v4, v7, v11);
  }

  v12 = [v4 copyWithNewAccessor:v7];
LABEL_15:

  return v12;
}

- (id)bundleRecordForApplication:(id)a3
{
  v4 = a3;
  v5 = [(PALApplicationMetadataResolver *)self bundleRecordRetriever];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (void)setProcessStateMonitor:(id)a3
{
  objc_storeStrong(&self->_processStateMonitor, a3);
  v8 = a3;
  v5 = [PAAggregateVisibilityStateMonitor alloc];
  v6 = [v5 initWithRawMonitor:self->_processStateMonitor startupInterval:PADefaultAggregateStateMonitoringStartupInterval];
  aggregateVisibilityStateMonitor = self->_aggregateVisibilityStateMonitor;
  self->_aggregateVisibilityStateMonitor = v6;
}

@end