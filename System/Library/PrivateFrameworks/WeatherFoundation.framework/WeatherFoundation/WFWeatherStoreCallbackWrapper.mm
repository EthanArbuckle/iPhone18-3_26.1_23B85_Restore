@interface WFWeatherStoreCallbackWrapper
- (WFWeatherStoreCallbackWrapper)initWithAQIScaleRetrievalBlock:(id)block;
- (WFWeatherStoreCallbackWrapper)initWithForecastRetrievalBlock:(id)block;
- (void)executeCallbackwithResponse:(id)response error:(id)error;
@end

@implementation WFWeatherStoreCallbackWrapper

- (WFWeatherStoreCallbackWrapper)initWithForecastRetrievalBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = WFWeatherStoreCallbackWrapper;
  v5 = [(WFWeatherStoreCallbackWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_requestType = 0;
    v7 = MEMORY[0x2743D5580](blockCopy);
    forecastRetrievalCompletionBlock = v6->_forecastRetrievalCompletionBlock;
    v6->_forecastRetrievalCompletionBlock = v7;

    v6->_executedCompletionBlock = 0;
  }

  return v6;
}

- (WFWeatherStoreCallbackWrapper)initWithAQIScaleRetrievalBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = WFWeatherStoreCallbackWrapper;
  v5 = [(WFWeatherStoreCallbackWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_requestType = 1;
    v7 = MEMORY[0x2743D5580](blockCopy);
    aqiScaleRetrievalCompletionBlock = v6->_aqiScaleRetrievalCompletionBlock;
    v6->_aqiScaleRetrievalCompletionBlock = v7;

    v6->_executedCompletionBlock = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)executeCallbackwithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
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
  requestType = [(WFWeatherStoreCallbackWrapper *)self requestType];
  if (requestType == 1)
  {
    if (responseCopy)
    {
      requestType2 = [responseCopy requestType];
      if (requestType2 == [(WFWeatherStoreCallbackWrapper *)self requestType])
      {
        aqiScale = [responseCopy aqiScale];
        aqiScaleRetrievalCompletionBlock = [(WFWeatherStoreCallbackWrapper *)self aqiScaleRetrievalCompletionBlock];
        goto LABEL_12;
      }
    }

    aqiScaleRetrievalCompletionBlock2 = [(WFWeatherStoreCallbackWrapper *)self aqiScaleRetrievalCompletionBlock];
LABEL_15:
    v8 = aqiScaleRetrievalCompletionBlock2;
    (*(aqiScaleRetrievalCompletionBlock2 + 16))(aqiScaleRetrievalCompletionBlock2, 0, 0);
LABEL_16:

    goto LABEL_17;
  }

  if (!requestType)
  {
    if (responseCopy)
    {
      requestType3 = [responseCopy requestType];
      if (requestType3 == [(WFWeatherStoreCallbackWrapper *)self requestType])
      {
        aqiScale = [responseCopy forecastData];
        aqiScaleRetrievalCompletionBlock = [(WFWeatherStoreCallbackWrapper *)self forecastRetrievalCompletionBlock];
LABEL_12:
        v14 = aqiScaleRetrievalCompletionBlock;
        (*(aqiScaleRetrievalCompletionBlock + 16))(aqiScaleRetrievalCompletionBlock, aqiScale, errorCopy);

        goto LABEL_17;
      }
    }

    aqiScaleRetrievalCompletionBlock2 = [(WFWeatherStoreCallbackWrapper *)self forecastRetrievalCompletionBlock];
    goto LABEL_15;
  }

LABEL_17:
}

@end