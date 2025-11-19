@interface WFAggregateForecastRequest
- (WFAggregateForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
@end

@implementation WFAggregateForecastRequest

- (WFAggregateForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v13.receiver = self;
    v13.super_class = WFAggregateForecastRequest;
    v10 = [(WFTask *)&v13 init];
    v11 = v10;
    if (v10)
    {
      [(WFAggregateForecastRequest *)v10 setLocation:v6];
      [(WFAggregateForecastRequest *)v11 setCompletionHandler:v8];
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WFAggregateForecastRequest *)self completionHandler];

  if (v5)
  {
    v6 = [(WFAggregateForecastRequest *)self completionHandler];
    v7 = [v4 forecasts];
    v8 = [v4 error];
    (v6)[2](v6, v7, v8);
  }

  v9.receiver = self;
  v9.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v9 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFAggregateForecastRequest *)self completionHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)handleCancellation
{
  v3 = [(WFAggregateForecastRequest *)self completionHandler];

  if (v3)
  {
    v4 = [(WFAggregateForecastRequest *)self completionHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (v4)[2](v4, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v6 handleCancellation];
}

- (void)cleanup
{
  [(WFAggregateForecastRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v3 cleanup];
}

@end