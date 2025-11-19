@interface WFWeatherStoreCallbackWrapper
- (WFWeatherStoreCallbackWrapper)initWithAQIScaleRetrievalBlock:(id)a3;
- (WFWeatherStoreCallbackWrapper)initWithForecastRetrievalBlock:(id)a3;
- (void)executeCallbackwithResponse:(id)a3 error:(id)a4;
@end

@implementation WFWeatherStoreCallbackWrapper

- (WFWeatherStoreCallbackWrapper)initWithForecastRetrievalBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFWeatherStoreCallbackWrapper;
  v5 = [(WFWeatherStoreCallbackWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_requestType = 0;
    v7 = MEMORY[0x2743D5580](v4);
    forecastRetrievalCompletionBlock = v6->_forecastRetrievalCompletionBlock;
    v6->_forecastRetrievalCompletionBlock = v7;

    v6->_executedCompletionBlock = 0;
  }

  return v6;
}

- (WFWeatherStoreCallbackWrapper)initWithAQIScaleRetrievalBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFWeatherStoreCallbackWrapper;
  v5 = [(WFWeatherStoreCallbackWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_requestType = 1;
    v7 = MEMORY[0x2743D5580](v4);
    aqiScaleRetrievalCompletionBlock = v6->_aqiScaleRetrievalCompletionBlock;
    v6->_aqiScaleRetrievalCompletionBlock = v7;

    v6->_executedCompletionBlock = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)executeCallbackwithResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_executedCompletionBlock)
  {
    v8 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_272B94000, v8, OS_LOG_TYPE_DEFAULT, "Duplicate execution of a forecast request completion block", v16, 2u);
    }

    goto LABEL_16;
  }

  self->_executedCompletionBlock = 1;
  v9 = [(WFWeatherStoreCallbackWrapper *)self requestType];
  if (v9 == 1)
  {
    if (v6)
    {
      v13 = [v6 requestType];
      if (v13 == [(WFWeatherStoreCallbackWrapper *)self requestType])
      {
        v11 = [v6 aqiScale];
        v12 = [(WFWeatherStoreCallbackWrapper *)self aqiScaleRetrievalCompletionBlock];
        goto LABEL_12;
      }
    }

    v15 = [(WFWeatherStoreCallbackWrapper *)self aqiScaleRetrievalCompletionBlock];
LABEL_15:
    v8 = v15;
    (*(v15 + 16))(v15, 0, 0);
LABEL_16:

    goto LABEL_17;
  }

  if (!v9)
  {
    if (v6)
    {
      v10 = [v6 requestType];
      if (v10 == [(WFWeatherStoreCallbackWrapper *)self requestType])
      {
        v11 = [v6 forecastData];
        v12 = [(WFWeatherStoreCallbackWrapper *)self forecastRetrievalCompletionBlock];
LABEL_12:
        v14 = v12;
        (*(v12 + 16))(v12, v11, v7);

        goto LABEL_17;
      }
    }

    v15 = [(WFWeatherStoreCallbackWrapper *)self forecastRetrievalCompletionBlock];
    goto LABEL_15;
  }

LABEL_17:
}

@end