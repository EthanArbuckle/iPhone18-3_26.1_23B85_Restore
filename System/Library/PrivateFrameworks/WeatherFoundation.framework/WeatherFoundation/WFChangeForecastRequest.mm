@interface WFChangeForecastRequest
- (WFChangeForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFChangeForecastRequest

- (WFChangeForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFChangeForecastRequest;
  v8 = [(WFTask *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    location = v8->_location;
    v8->_location = v9;

    v11 = MEMORY[0x2743D5580](v7);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v11;
  }

  return v8;
}

- (void)startWithService:(id)a3
{
  v4 = a3;
  v7 = [(WFChangeForecastRequest *)self location];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [(WFTask *)self identifier];
  [v4 forecast:512 forLocation:v7 locale:v5 taskIdentifier:v6];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WFChangeForecastRequest *)self completionHandler];

  if (v5)
  {
    v6 = [(WFChangeForecastRequest *)self completionHandler];
    v7 = [v4 changeForecasts];
    v8 = [v4 error];
    (v6)[2](v6, v7, v8);
  }

  v9.receiver = self;
  v9.super_class = WFChangeForecastRequest;
  [(WFTask *)&v9 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFChangeForecastRequest *)self completionHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFChangeForecastRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

@end