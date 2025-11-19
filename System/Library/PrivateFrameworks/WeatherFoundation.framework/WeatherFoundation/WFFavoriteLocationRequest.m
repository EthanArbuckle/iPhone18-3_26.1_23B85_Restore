@interface WFFavoriteLocationRequest
- (WFFavoriteLocationRequest)initWithResultHandler:(id)a3;
- (void)handleCancellation;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFFavoriteLocationRequest

- (WFFavoriteLocationRequest)initWithResultHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFFavoriteLocationRequest;
  v5 = [(WFTask *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    resultHandler = v5->_resultHandler;
    v5->_resultHandler = v6;

    v8 = v5;
  }

  return v5;
}

- (void)startWithService:(id)a3
{
  v4 = [(WFFavoriteLocationRequest *)self resultHandler];

  if (v4)
  {
    v6 = [(WFFavoriteLocationRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:15];
    v6[2](v6, 0, v5);
  }
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WFFavoriteLocationRequest *)self resultHandler];

  if (v5)
  {
    v6 = [(WFFavoriteLocationRequest *)self resultHandler];
    v7 = [v4 favoriteLocations];
    v8 = [v4 error];
    (v6)[2](v6, v7, v8);
  }

  v9.receiver = self;
  v9.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v9 handleResponse:v4];
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFFavoriteLocationRequest *)self resultHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)handleCancellation
{
  v3 = [(WFFavoriteLocationRequest *)self resultHandler];

  if (v3)
  {
    v4 = [(WFFavoriteLocationRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (v4)[2](v4, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v6 handleCancellation];
}

@end