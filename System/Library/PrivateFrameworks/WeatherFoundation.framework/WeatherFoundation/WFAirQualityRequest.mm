@interface WFAirQualityRequest
+ (id)airQualityRequestForLocation:(id)a3 locale:(id)a4 completionHandler:(id)a5;
- (WFAirQualityRequest)initWithLocation:(id)a3 locale:(id)a4 completionHandler:(id)a5;
- (id)options;
- (void)cleanup;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFAirQualityRequest

+ (id)airQualityRequestForLocation:(id)a3 locale:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithLocation:v9 locale:v8 completionHandler:v7];

  return v10;
}

- (WFAirQualityRequest)initWithLocation:(id)a3 locale:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFAirQualityRequest;
  v11 = [(WFTask *)&v15 initWithResponseRequired:1];
  v12 = v11;
  if (v11)
  {
    if (v9)
    {
      [(WFAirQualityRequest *)v11 setLocale:v9];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      [(WFAirQualityRequest *)v12 setLocale:v13];
    }

    [(WFAirQualityRequest *)v12 setLocation:v8];
    [(WFAirQualityRequest *)v12 setCompletionHandler:v10];
  }

  return v12;
}

- (id)options
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(WFAirQualityRequest *)self attachRawAPIData])
  {
    v4 = @"WFAirQualityRequestAttachRawAPIOptionsKey";
    v5[0] = MEMORY[0x277CBEC38];
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

- (void)startWithService:(id)a3
{
  v4 = a3;
  v8 = [(WFAirQualityRequest *)self location];
  v5 = [(WFAirQualityRequest *)self locale];
  v6 = [(WFAirQualityRequest *)self options];
  v7 = [(WFTask *)self identifier];
  [v4 airQualityForLocation:v8 locale:v5 options:v6 taskIdentifier:v7];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WFAirQualityRequest *)self completionHandler];

  if (v5)
  {
    v6 = [(WFAirQualityRequest *)self completionHandler];
    v7 = [v4 airQualityConditions];
    v8 = [v4 error];
    (v6)[2](v6, v7, v8);
  }

  v9.receiver = self;
  v9.super_class = WFAirQualityRequest;
  [(WFTask *)&v9 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFAirQualityRequest *)self completionHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFAirQualityRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)cleanup
{
  [(WFAirQualityRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFAirQualityRequest;
  [(WFTask *)&v3 cleanup];
}

@end