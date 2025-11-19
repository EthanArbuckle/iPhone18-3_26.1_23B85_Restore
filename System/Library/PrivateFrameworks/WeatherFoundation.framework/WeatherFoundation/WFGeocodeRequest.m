@interface WFGeocodeRequest
- (CLLocationCoordinate2D)coordinate;
- (WFGeocodeRequest)initWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4;
- (WFGeocodeRequest)initWithSearchCompletion:(id)a3 resultHandler:(id)a4;
- (WFGeocodeRequest)initWithSearchString:(id)a3 resultHandler:(id)a4;
- (id)description;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)a3 forResponseIdentifier:(id)a4;
- (void)handleResponse:(id)a3;
- (void)startWithService:(id)a3;
@end

@implementation WFGeocodeRequest

- (WFGeocodeRequest)initWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFGeocodeRequest;
  v8 = [(WFTask *)&v14 initWithResponseRequired:1];
  v9 = v8;
  if (v8)
  {
    v8->_coordinate.latitude = latitude;
    v8->_coordinate.longitude = longitude;
    v10 = [v7 copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v10;

    v12 = v9;
  }

  return v9;
}

- (WFGeocodeRequest)initWithSearchString:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFGeocodeRequest;
  v8 = [(WFTask *)&v15 initWithResponseRequired:1];
  if (v8)
  {
    v9 = [v6 copy];
    searchString = v8->_searchString;
    v8->_searchString = v9;

    v11 = [v7 copy];
    resultHandler = v8->_resultHandler;
    v8->_resultHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (WFGeocodeRequest)initWithSearchCompletion:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFGeocodeRequest;
  v9 = [(WFTask *)&v15 initWithResponseRequired:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_autocompleteSearchResult, a3);
    v11 = [v8 copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;

    v13 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [(WFGeocodeRequest *)self autocompleteSearchResult];

  if (v3)
  {
    v4 = [(WFGeocodeRequest *)self autocompleteSearchResult];
    v5 = [v4 calloutTitle];

    goto LABEL_8;
  }

  v6 = [(WFGeocodeRequest *)self searchString];

  if (v6)
  {
    v7 = [(WFGeocodeRequest *)self searchString];
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  [(WFGeocodeRequest *)self coordinate];
  if (CLLocationCoordinate2DIsValid(v16))
  {
    [(WFGeocodeRequest *)self coordinate];
    v7 = NSStringFromCLLocationCoordinate2D(v8, v9);
    goto LABEL_7;
  }

  v5 = @"<none>";
LABEL_8:
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = [(WFTask *)self identifier];
  v13 = [v10 stringWithFormat:@"<%@: %p, input = %@, identifier = %@>", v11, self, v5, v12];

  return v13;
}

- (void)startWithService:(id)a3
{
  v16 = a3;
  v4 = [(WFGeocodeRequest *)self autocompleteSearchResult];

  if (v4)
  {
    v5 = [(WFGeocodeRequest *)self autocompleteSearchResult];
    v6 = [(WFTask *)self identifier];
    [v16 locationForSearchCompletion:v5 taskIdentifier:v6];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(WFGeocodeRequest *)self searchString];

  if (v7)
  {
    v5 = [(WFGeocodeRequest *)self searchString];
    v6 = [(WFTask *)self identifier];
    [v16 locationForString:v5 taskIdentifier:v6];
    goto LABEL_5;
  }

  [(WFGeocodeRequest *)self coordinate];
  if (CLLocationCoordinate2DIsValid(v18))
  {
    [(WFGeocodeRequest *)self coordinate];
    v9 = v8;
    v11 = v10;
    v5 = [(WFTask *)self identifier];
    [v16 locationForCoordinate:v5 taskIdentifier:{v9, v11}];
  }

  else
  {
    v12 = [WFGeocodeResponse alloc];
    v13 = [(WFTask *)self identifier];
    v14 = [v13 UUID];
    v5 = [(WFResponse *)v12 initWithIdentifier:v14];

    v15 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
    [(WFResponse *)v5 setError:v15];

    [(WFGeocodeRequest *)self handleResponse:v5];
  }

LABEL_6:
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 location];
    [(WFGeocodeRequest *)self setGeocodedResult:v6];

    v7 = [(WFGeocodeRequest *)self resultHandler];

    if (v7)
    {
      v8 = [(WFGeocodeRequest *)self resultHandler];
      v9 = [(WFGeocodeRequest *)self geocodedResult];
      v10 = [v5 error];
      (v8)[2](v8, v9, v10);
    }

    v11.receiver = self;
    v11.super_class = WFGeocodeRequest;
    [(WFTask *)&v11 handleResponse:v5];
  }

  else
  {
    [(WFGeocodeRequest *)self handleCancellation];
  }
}

- (void)handleError:(id)a3 forResponseIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFGeocodeRequest *)self resultHandler];
  (v8)[2](v8, 0, v7);

  v9.receiver = self;
  v9.super_class = WFGeocodeRequest;
  [(WFTask *)&v9 handleError:v7 forResponseIdentifier:v6];
}

- (void)handleCancellation
{
  v3 = [(WFGeocodeRequest *)self resultHandler];

  if (v3)
  {
    v4 = [(WFGeocodeRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (v4)[2](v4, 0, v5);
  }

  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;

  v7.receiver = self;
  v7.super_class = WFGeocodeRequest;
  [(WFTask *)&v7 handleCancellation];
}

- (void)cleanup
{
  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;

  v4.receiver = self;
  v4.super_class = WFGeocodeRequest;
  [(WFTask *)&v4 cleanup];
}

- (CLLocationCoordinate2D)coordinate
{
  objc_copyStruct(v4, &self->_coordinate, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end