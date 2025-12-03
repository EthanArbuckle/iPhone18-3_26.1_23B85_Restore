@interface TPSAnalyticsDataProvider
- (TPSAnalyticsDataProvider)initWithDataSource:(id)source;
- (TPSAnalyticsDataProviderDataSource)dataSource;
- (id)contextForIdentifier:(id)identifier;
- (id)correlationIDForIdentifier:(id)identifier;
- (id)deliveryInfoVersion;
- (id)displayTypeForIdentifier:(id)identifier;
- (id)experimentCampID;
- (id)experimentID;
- (unint64_t)hintDisplayedCountForIdentifier:(id)identifier;
@end

@implementation TPSAnalyticsDataProvider

- (TPSAnalyticsDataProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = TPSAnalyticsDataProvider;
  v5 = [(TPSAnalyticsDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (id)displayTypeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained displayTypeForIdentifier:identifierCopy];

  return v6;
}

- (id)experimentCampID
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  experimentCampID = [WeakRetained experimentCampID];

  return experimentCampID;
}

- (id)experimentID
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  experimentID = [WeakRetained experimentID];

  return experimentID;
}

- (id)deliveryInfoVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  deliveryInfoVersion = [WeakRetained deliveryInfoVersion];

  return deliveryInfoVersion;
}

- (id)correlationIDForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained correlationIDForIdentifier:identifierCopy];

  return v6;
}

- (id)contextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained contextForIdentifier:identifierCopy];

  return v6;
}

- (unint64_t)hintDisplayedCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained hintDisplayedCountForIdentifier:identifierCopy];

  return v6;
}

- (TPSAnalyticsDataProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end