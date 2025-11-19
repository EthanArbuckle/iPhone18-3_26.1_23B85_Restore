@interface WFForecastRequest
+ (id)forecastRequestForLocation:(id)a3 completionHandler:(id)a4;
+ (id)forecastRequestForLocation:(id)a3 date:(id)a4 completionHandler:(id)a5;
+ (id)forecastRequestForLocation:(id)a3 onDate:(id)a4 completionHandler:(id)a5;
- (WFForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4;
- (WFForecastRequest)initWithLocation:(id)a3 date:(id)a4 completionHandler:(id)a5;
- (WFForecastRequest)initWithLocation:(id)a3 onDate:(id)a4 completionHandler:(id)a5;
- (id)description;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFForecastRequest

+ (id)forecastRequestForLocation:(id)a3 onDate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithLocation:v10 onDate:v9 completionHandler:v8];

  return v11;
}

+ (id)forecastRequestForLocation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLocation:v7 completionHandler:v6];

  return v8;
}

- (WFForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [(WFForecastRequest *)self initWithLocation:v8 onDate:v9 completionHandler:v7];

  return v10;
}

- (WFForecastRequest)initWithLocation:(id)a3 onDate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 4;
LABEL_9:
    v21 = [v19 wf_errorWithCode:v20];
    v10[2](v10, 0, v21);

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (!v9)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 2;
    goto LABEL_9;
  }

  v23.receiver = self;
  v23.super_class = WFForecastRequest;
  v11 = [(WFTask *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    location = v11->_location;
    v11->_location = v12;

    objc_storeStrong(&v11->_onDate, a4);
    v14 = MEMORY[0x2743D5580](v10);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;

    v16 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v11->_locale;
    v11->_locale = v16;
  }

  self = v11;
  v18 = self;
LABEL_11:

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyy-MM-dd'T'hh:mm:ss"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(WFForecastRequest *)self onDate];
  v7 = [v3 stringFromDate:v6];
  v8 = [(WFForecastRequest *)self location];
  v9 = [v4 stringWithFormat:@"<%@: %p, date = %@, location = %@>", v5, self, v7, v8];

  return v9;
}

- (void)startWithService:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFForecastRequest *)self location];
  v6 = [(WFForecastRequest *)self locale];
  v7 = [(WFForecastRequest *)self onDate];
  v11 = @"WFForecastRequestAttachRawAPIOptionsKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFForecastRequest attachRawAPIData](self, "attachRawAPIData")}];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [(WFTask *)self identifier];
  [v4 forecastForLocation:v5 locale:v6 onDate:v7 options:v9 taskIdentifier:v10];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WFForecastRequest *)self completionHandler];

  if (v5)
  {
    v6 = [v4 rawAPIData];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 forecast];

      if (v8)
      {
        v9 = [v4 rawAPIData];
        [(WFForecastRequest *)self setRawAPIData:v9];
      }
    }

    v10 = [v4 forecast];
    v11 = [v10 copy];

    v12 = [(WFForecastRequest *)self locale];

    if (!v12)
    {
      v13 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [(WFForecastRequest *)self setLocale:v13];
    }

    v14 = [(WFForecastRequest *)self trackingParameter];

    if (!v14)
    {
      [(WFForecastRequest *)self setTrackingParameter:@"apple_TWC"];
    }

    v15 = [(WFForecastRequest *)self locale];
    v16 = [(WFForecastRequest *)self trackingParameter];
    [v11 editLinksWithLocale:v15 trackingParameter:v16];

    v17 = [(WFForecastRequest *)self completionHandler];
    v18 = [v4 error];
    (v17)[2](v17, v11, v18);
  }

  v19.receiver = self;
  v19.super_class = WFForecastRequest;
  [(WFTask *)&v19 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFForecastRequest *)self completionHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFForecastRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)handleCancellation
{
  v3 = [(WFForecastRequest *)self completionHandler];

  if (v3)
  {
    v4 = [(WFForecastRequest *)self completionHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (v4)[2](v4, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFForecastRequest;
  [(WFTask *)&v6 handleCancellation];
}

- (void)cleanup
{
  [(WFForecastRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFForecastRequest;
  [(WFTask *)&v3 cleanup];
}

+ (id)forecastRequestForLocation:(id)a3 date:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithLocation:v10 date:v9 completionHandler:v8];

  return v11;
}

- (WFForecastRequest)initWithLocation:(id)a3 date:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 date];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v14 dateFromComponents:v8];
  }

  v15 = [(WFForecastRequest *)self initWithLocation:v10 onDate:v13 completionHandler:v9];
  [(WFForecastRequest *)v15 setDate:v8];

  return v15;
}

@end