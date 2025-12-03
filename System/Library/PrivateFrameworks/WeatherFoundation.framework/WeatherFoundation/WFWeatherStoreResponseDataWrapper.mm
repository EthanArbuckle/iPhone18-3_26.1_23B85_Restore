@interface WFWeatherStoreResponseDataWrapper
- (WFWeatherStoreResponseDataWrapper)initWithAQIScale:(id)scale;
- (WFWeatherStoreResponseDataWrapper)initWithForecastData:(id)data;
@end

@implementation WFWeatherStoreResponseDataWrapper

- (WFWeatherStoreResponseDataWrapper)initWithForecastData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = WFWeatherStoreResponseDataWrapper;
  v5 = [(WFWeatherStoreResponseDataWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFWeatherStoreResponseDataWrapper *)v5 setRequestType:0];
    [(WFWeatherStoreResponseDataWrapper *)v6 setForecastData:dataCopy];
  }

  return v6;
}

- (WFWeatherStoreResponseDataWrapper)initWithAQIScale:(id)scale
{
  scaleCopy = scale;
  v8.receiver = self;
  v8.super_class = WFWeatherStoreResponseDataWrapper;
  v5 = [(WFWeatherStoreResponseDataWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFWeatherStoreResponseDataWrapper *)v5 setRequestType:1];
    [(WFWeatherStoreResponseDataWrapper *)v6 setAqiScale:scaleCopy];
  }

  return v6;
}

@end