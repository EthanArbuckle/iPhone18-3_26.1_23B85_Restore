@interface WFWeatherStoreResponseDataWrapper
- (WFWeatherStoreResponseDataWrapper)initWithAQIScale:(id)a3;
- (WFWeatherStoreResponseDataWrapper)initWithForecastData:(id)a3;
@end

@implementation WFWeatherStoreResponseDataWrapper

- (WFWeatherStoreResponseDataWrapper)initWithForecastData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFWeatherStoreResponseDataWrapper;
  v5 = [(WFWeatherStoreResponseDataWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFWeatherStoreResponseDataWrapper *)v5 setRequestType:0];
    [(WFWeatherStoreResponseDataWrapper *)v6 setForecastData:v4];
  }

  return v6;
}

- (WFWeatherStoreResponseDataWrapper)initWithAQIScale:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFWeatherStoreResponseDataWrapper;
  v5 = [(WFWeatherStoreResponseDataWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFWeatherStoreResponseDataWrapper *)v5 setRequestType:1];
    [(WFWeatherStoreResponseDataWrapper *)v6 setAqiScale:v4];
  }

  return v6;
}

@end