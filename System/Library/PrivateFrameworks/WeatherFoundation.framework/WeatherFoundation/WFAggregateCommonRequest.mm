@interface WFAggregateCommonRequest
- (WFAggregateCommonRequest)initWithLocation:(id)location types:(unint64_t)types units:(int)units requestOptions:(id)options trackingParameter:(id)parameter completionHandler:(id)handler;
- (id)description;
- (unint64_t)_supportedForecastTypes:(unint64_t)types;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFAggregateCommonRequest

- (WFAggregateCommonRequest)initWithLocation:(id)location types:(unint64_t)types units:(int)units requestOptions:(id)options trackingParameter:(id)parameter completionHandler:(id)handler
{
  locationCopy = location;
  optionsCopy = options;
  parameterCopy = parameter;
  handlerCopy = handler;
  v18 = [(WFAggregateCommonRequest *)self _supportedForecastTypes:types];
  v29.receiver = self;
  v29.super_class = WFAggregateCommonRequest;
  v19 = [(WFTask *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_location, location);
    v20->_types = v18;
    objc_storeStrong(&v20->_trackingParameter, parameter);
    v20->_units = units;
    objc_storeStrong(&v20->_requestOptions, options);
    v21 = MEMORY[0x2743D5580](handlerCopy);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v21;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v20->_locale;
    v20->_locale = autoupdatingCurrentLocale;

    trackingParameter = [(WFAggregateCommonRequest *)v20 trackingParameter];

    if (!trackingParameter)
    {
      trackingParameter = v20->_trackingParameter;
      v20->_trackingParameter = @"apple_TWC";
    }
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  location = [(WFAggregateCommonRequest *)self location];
  v6 = [v3 stringWithFormat:@"<%@: %p, location = %@, types = %lu>", v4, self, location, -[WFAggregateCommonRequest types](self, "types")];

  return v6;
}

- (unint64_t)_supportedForecastTypes:(unint64_t)types
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2020000000;
  v10[2] = types;
  v3 = WFAggregateCommonRequestSupportedForecastTypes();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__WFAggregateCommonRequest__supportedForecastTypes___block_invoke;
  v8[3] = &unk_279E6F910;
  v8[4] = &v9;
  v8[5] = &v11;
  [v3 enumerateIndexesUsingBlock:v8];

  if (*(v10[0] + 24))
  {
    v4 = WFLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      [(WFAggregateCommonRequest *)v5 _supportedForecastTypes:v10, v15, v4];
    }
  }

  v6 = v12[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __52__WFAggregateCommonRequest__supportedForecastTypes___block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 & ~*(*(*(result + 32) + 8) + 24)) == 0)
  {
    *(*(*(result + 40) + 8) + 24) |= a2;
    *(*(*(result + 32) + 8) + 24) &= ~a2;
  }

  return result;
}

- (void)cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v4.receiver = self;
  v4.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v4 cleanup];
}

- (void)handleCancellation
{
  completionHandler = [(WFAggregateCommonRequest *)self completionHandler];
  v4 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
  (completionHandler)[2](completionHandler, 0, 0, v4);

  v5.receiver = self;
  v5.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v5 handleCancellation];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  v5 = objc_opt_new();
  airQualityObservations = [responseCopy airQualityObservations];
  [v5 setAirQualityObservations:airQualityObservations];

  currentObservations = [responseCopy currentObservations];
  [v5 setCurrentObservations:currentObservations];

  lastTwentyFourHoursOfObservations = [responseCopy lastTwentyFourHoursOfObservations];
  [v5 setLastTwentyFourHoursOfObservations:lastTwentyFourHoursOfObservations];

  hourlyForecastedConditions = [responseCopy hourlyForecastedConditions];
  [v5 setHourlyForecastedConditions:hourlyForecastedConditions];

  dailyForecastedConditions = [responseCopy dailyForecastedConditions];
  [v5 setDailyForecastedConditions:dailyForecastedConditions];

  dailyPollenForecastedConditions = [responseCopy dailyPollenForecastedConditions];
  [v5 setDailyPollenForecastedConditions:dailyPollenForecastedConditions];

  severeWeatherEvents = [responseCopy severeWeatherEvents];
  [v5 setSevereWeatherEvents:severeWeatherEvents];

  changeForecasts = [responseCopy changeForecasts];
  [v5 setChangeForecasts:changeForecasts];

  nextHourPrecipitation = [responseCopy nextHourPrecipitation];
  [v5 setNextHourPrecipitation:nextHourPrecipitation];

  currentObservations2 = [v5 currentObservations];
  locale = [(WFAggregateCommonRequest *)self locale];
  trackingParameter = [(WFAggregateCommonRequest *)self trackingParameter];
  [currentObservations2 editLinksWithLocale:locale trackingParameter:trackingParameter];

  completionHandler = [(WFAggregateCommonRequest *)self completionHandler];
  rawAPIData = [responseCopy rawAPIData];
  (completionHandler)[2](completionHandler, v5, rawAPIData, 0);

  v20.receiver = self;
  v20.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v20 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFAggregateCommonRequest *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  types = [(WFAggregateCommonRequest *)self types];
  location = [(WFAggregateCommonRequest *)self location];
  units = [(WFAggregateCommonRequest *)self units];
  locale = [(WFAggregateCommonRequest *)self locale];
  identifier = [(WFTask *)self identifier];
  requestOptions = [(WFAggregateCommonRequest *)self requestOptions];
  [serviceCopy forecast:types forLocation:location withUnits:units locale:locale taskIdentifier:identifier requestOptions:requestOptions];
}

- (void)_supportedForecastTypes:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = *(*a2 + 24);
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v6;
  v7 = a1;
  _os_log_error_impl(&dword_272B94000, a4, OS_LOG_TYPE_ERROR, "Unhandled %{public}@ request types: %lu", a3, 0x16u);
}

@end