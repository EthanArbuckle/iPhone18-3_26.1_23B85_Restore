@interface SXVideoComponentAnalyticsReporting
- (SXAnalyticsReporting)analyticsReporting;
- (SXVideoComponentAnalyticsReporting)initWithComponent:(id)a3 analyticsProviding:(id)a4;
- (void)reportEvent:(id)a3;
@end

@implementation SXVideoComponentAnalyticsReporting

- (SXVideoComponentAnalyticsReporting)initWithComponent:(id)a3 analyticsProviding:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXVideoComponentAnalyticsReporting;
  v9 = [(SXVideoComponentAnalyticsReporting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, a3);
    objc_storeWeak(&v10->_analyticsReporting, v8);
  }

  return v10;
}

- (void)reportEvent:(id)a3
{
  v16 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v16;
    v5 = [(SXVideoComponentAnalyticsReporting *)self component];
    v6 = [v5 analytics];
    v7 = [v6 jsonDictionary];
    [v4 setMetaData:v7];

    v8 = [(SXVideoComponentAnalyticsReporting *)self component];
    v9 = [v8 identifier];
    [v4 setComponentIdentifier:v9];

    v10 = [(SXVideoComponentAnalyticsReporting *)self component];
    v11 = [v10 type];
    [v4 setComponentType:v11];

    v12 = [(SXVideoComponentAnalyticsReporting *)self component];
    v13 = [v12 classification];
    v14 = [objc_opt_class() roleString];
    [v4 setComponentRole:v14];
  }

  v15 = [(SXVideoComponentAnalyticsReporting *)self analyticsReporting];
  [v15 reportEvent:v16];
}

- (SXAnalyticsReporting)analyticsReporting
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsReporting);

  return WeakRetained;
}

@end