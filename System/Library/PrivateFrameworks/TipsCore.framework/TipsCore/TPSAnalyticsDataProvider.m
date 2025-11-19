@interface TPSAnalyticsDataProvider
- (TPSAnalyticsDataProvider)initWithDataSource:(id)a3;
- (TPSAnalyticsDataProviderDataSource)dataSource;
- (id)contextForIdentifier:(id)a3;
- (id)correlationIDForIdentifier:(id)a3;
- (id)deliveryInfoVersion;
- (id)displayTypeForIdentifier:(id)a3;
- (id)experimentCampID;
- (id)experimentID;
- (unint64_t)hintDisplayedCountForIdentifier:(id)a3;
@end

@implementation TPSAnalyticsDataProvider

- (TPSAnalyticsDataProvider)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSAnalyticsDataProvider;
  v5 = [(TPSAnalyticsDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (id)displayTypeForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained displayTypeForIdentifier:v4];

  return v6;
}

- (id)experimentCampID
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained experimentCampID];

  return v3;
}

- (id)experimentID
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained experimentID];

  return v3;
}

- (id)deliveryInfoVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained deliveryInfoVersion];

  return v3;
}

- (id)correlationIDForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained correlationIDForIdentifier:v4];

  return v6;
}

- (id)contextForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained contextForIdentifier:v4];

  return v6;
}

- (unint64_t)hintDisplayedCountForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained hintDisplayedCountForIdentifier:v4];

  return v6;
}

- (TPSAnalyticsDataProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end