@interface WFAggregateCommonRequest
- (WFAggregateCommonRequest)initWithLocation:(id)a3 types:(unint64_t)a4 units:(int)a5 requestOptions:(id)a6 trackingParameter:(id)a7 completionHandler:(id)a8;
- (id)description;
- (unint64_t)_supportedForecastTypes:(unint64_t)a3;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFAggregateCommonRequest

- (WFAggregateCommonRequest)initWithLocation:(id)a3 types:(unint64_t)a4 units:(int)a5 requestOptions:(id)a6 trackingParameter:(id)a7 completionHandler:(id)a8
{
  v28 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(WFAggregateCommonRequest *)self _supportedForecastTypes:a4];
  v29.receiver = self;
  v29.super_class = WFAggregateCommonRequest;
  v19 = [(WFTask *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_location, a3);
    v20->_types = v18;
    objc_storeStrong(&v20->_trackingParameter, a7);
    v20->_units = a5;
    objc_storeStrong(&v20->_requestOptions, a6);
    v21 = MEMORY[0x2743D5580](v17);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v21;

    v23 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v20->_locale;
    v20->_locale = v23;

    v25 = [(WFAggregateCommonRequest *)v20 trackingParameter];

    if (!v25)
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
  v5 = [(WFAggregateCommonRequest *)self location];
  v6 = [v3 stringWithFormat:@"<%@: %p, location = %@, types = %lu>", v4, self, v5, -[WFAggregateCommonRequest types](self, "types")];

  return v6;
}

- (unint64_t)_supportedForecastTypes:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2020000000;
  v10[2] = a3;
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
  v3 = [(WFAggregateCommonRequest *)self completionHandler];
  v4 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
  (v3)[2](v3, 0, 0, v4);

  v5.receiver = self;
  v5.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v5 handleCancellation];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 airQualityObservations];
  [v5 setAirQualityObservations:v6];

  v7 = [v4 currentObservations];
  [v5 setCurrentObservations:v7];

  v8 = [v4 lastTwentyFourHoursOfObservations];
  [v5 setLastTwentyFourHoursOfObservations:v8];

  v9 = [v4 hourlyForecastedConditions];
  [v5 setHourlyForecastedConditions:v9];

  v10 = [v4 dailyForecastedConditions];
  [v5 setDailyForecastedConditions:v10];

  v11 = [v4 dailyPollenForecastedConditions];
  [v5 setDailyPollenForecastedConditions:v11];

  v12 = [v4 severeWeatherEvents];
  [v5 setSevereWeatherEvents:v12];

  v13 = [v4 changeForecasts];
  [v5 setChangeForecasts:v13];

  v14 = [v4 nextHourPrecipitation];
  [v5 setNextHourPrecipitation:v14];

  v15 = [v5 currentObservations];
  v16 = [(WFAggregateCommonRequest *)self locale];
  v17 = [(WFAggregateCommonRequest *)self trackingParameter];
  [v15 editLinksWithLocale:v16 trackingParameter:v17];

  v18 = [(WFAggregateCommonRequest *)self completionHandler];
  v19 = [v4 rawAPIData];
  (v18)[2](v18, v5, v19, 0);

  v20.receiver = self;
  v20.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v20 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFAggregateCommonRequest *)self completionHandler];
  (v8)[2](v8, 0, 0, v7);

  v9.receiver = self;
  v9.super_class = WFAggregateCommonRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)startWithService:(id)a3
{
  v4 = a3;
  v5 = [(WFAggregateCommonRequest *)self types];
  v10 = [(WFAggregateCommonRequest *)self location];
  v6 = [(WFAggregateCommonRequest *)self units];
  v7 = [(WFAggregateCommonRequest *)self locale];
  v8 = [(WFTask *)self identifier];
  v9 = [(WFAggregateCommonRequest *)self requestOptions];
  [v4 forecast:v5 forLocation:v10 withUnits:v6 locale:v7 taskIdentifier:v8 requestOptions:v9];
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