@interface SXVideoComponentAnalyticsReporting
- (SXAnalyticsReporting)analyticsReporting;
- (SXVideoComponentAnalyticsReporting)initWithComponent:(id)component analyticsProviding:(id)providing;
- (void)reportEvent:(id)event;
@end

@implementation SXVideoComponentAnalyticsReporting

- (SXVideoComponentAnalyticsReporting)initWithComponent:(id)component analyticsProviding:(id)providing
{
  componentCopy = component;
  providingCopy = providing;
  v12.receiver = self;
  v12.super_class = SXVideoComponentAnalyticsReporting;
  v9 = [(SXVideoComponentAnalyticsReporting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, component);
    objc_storeWeak(&v10->_analyticsReporting, providingCopy);
  }

  return v10;
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    component = [(SXVideoComponentAnalyticsReporting *)self component];
    analytics = [component analytics];
    jsonDictionary = [analytics jsonDictionary];
    [v4 setMetaData:jsonDictionary];

    component2 = [(SXVideoComponentAnalyticsReporting *)self component];
    identifier = [component2 identifier];
    [v4 setComponentIdentifier:identifier];

    component3 = [(SXVideoComponentAnalyticsReporting *)self component];
    type = [component3 type];
    [v4 setComponentType:type];

    component4 = [(SXVideoComponentAnalyticsReporting *)self component];
    classification = [component4 classification];
    roleString = [objc_opt_class() roleString];
    [v4 setComponentRole:roleString];
  }

  analyticsReporting = [(SXVideoComponentAnalyticsReporting *)self analyticsReporting];
  [analyticsReporting reportEvent:eventCopy];
}

- (SXAnalyticsReporting)analyticsReporting
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsReporting);

  return WeakRetained;
}

@end