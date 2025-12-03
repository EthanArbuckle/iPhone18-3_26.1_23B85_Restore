@interface WFGeocodeRequest
- (CLLocationCoordinate2D)coordinate;
- (WFGeocodeRequest)initWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler;
- (WFGeocodeRequest)initWithSearchCompletion:(id)completion resultHandler:(id)handler;
- (WFGeocodeRequest)initWithSearchString:(id)string resultHandler:(id)handler;
- (id)description;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFGeocodeRequest

- (WFGeocodeRequest)initWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = WFGeocodeRequest;
  v8 = [(WFTask *)&v14 initWithResponseRequired:1];
  v9 = v8;
  if (v8)
  {
    v8->_coordinate.latitude = latitude;
    v8->_coordinate.longitude = longitude;
    v10 = [handlerCopy copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v10;

    v12 = v9;
  }

  return v9;
}

- (WFGeocodeRequest)initWithSearchString:(id)string resultHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = WFGeocodeRequest;
  v8 = [(WFTask *)&v15 initWithResponseRequired:1];
  if (v8)
  {
    v9 = [stringCopy copy];
    searchString = v8->_searchString;
    v8->_searchString = v9;

    v11 = [handlerCopy copy];
    resultHandler = v8->_resultHandler;
    v8->_resultHandler = v11;

    v13 = v8;
  }

  return v8;
}

- (WFGeocodeRequest)initWithSearchCompletion:(id)completion resultHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = WFGeocodeRequest;
  v9 = [(WFTask *)&v15 initWithResponseRequired:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_autocompleteSearchResult, completion);
    v11 = [handlerCopy copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;

    v13 = v10;
  }

  return v10;
}

- (id)description
{
  autocompleteSearchResult = [(WFGeocodeRequest *)self autocompleteSearchResult];

  if (autocompleteSearchResult)
  {
    autocompleteSearchResult2 = [(WFGeocodeRequest *)self autocompleteSearchResult];
    calloutTitle = [autocompleteSearchResult2 calloutTitle];

    goto LABEL_8;
  }

  searchString = [(WFGeocodeRequest *)self searchString];

  if (searchString)
  {
    searchString2 = [(WFGeocodeRequest *)self searchString];
LABEL_7:
    calloutTitle = searchString2;
    goto LABEL_8;
  }

  [(WFGeocodeRequest *)self coordinate];
  if (CLLocationCoordinate2DIsValid(v16))
  {
    [(WFGeocodeRequest *)self coordinate];
    searchString2 = NSStringFromCLLocationCoordinate2D(v8, v9);
    goto LABEL_7;
  }

  calloutTitle = @"<none>";
LABEL_8:
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  identifier = [(WFTask *)self identifier];
  v13 = [v10 stringWithFormat:@"<%@: %p, input = %@, identifier = %@>", v11, self, calloutTitle, identifier];

  return v13;
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  autocompleteSearchResult = [(WFGeocodeRequest *)self autocompleteSearchResult];

  if (autocompleteSearchResult)
  {
    autocompleteSearchResult2 = [(WFGeocodeRequest *)self autocompleteSearchResult];
    identifier = [(WFTask *)self identifier];
    [serviceCopy locationForSearchCompletion:autocompleteSearchResult2 taskIdentifier:identifier];
LABEL_5:

    goto LABEL_6;
  }

  searchString = [(WFGeocodeRequest *)self searchString];

  if (searchString)
  {
    autocompleteSearchResult2 = [(WFGeocodeRequest *)self searchString];
    identifier = [(WFTask *)self identifier];
    [serviceCopy locationForString:autocompleteSearchResult2 taskIdentifier:identifier];
    goto LABEL_5;
  }

  [(WFGeocodeRequest *)self coordinate];
  if (CLLocationCoordinate2DIsValid(v18))
  {
    [(WFGeocodeRequest *)self coordinate];
    v9 = v8;
    v11 = v10;
    autocompleteSearchResult2 = [(WFTask *)self identifier];
    [serviceCopy locationForCoordinate:autocompleteSearchResult2 taskIdentifier:{v9, v11}];
  }

  else
  {
    v12 = [WFGeocodeResponse alloc];
    identifier2 = [(WFTask *)self identifier];
    uUID = [identifier2 UUID];
    autocompleteSearchResult2 = [(WFResponse *)v12 initWithIdentifier:uUID];

    v15 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
    [(WFResponse *)autocompleteSearchResult2 setError:v15];

    [(WFGeocodeRequest *)self handleResponse:autocompleteSearchResult2];
  }

LABEL_6:
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
    location = [v5 location];
    [(WFGeocodeRequest *)self setGeocodedResult:location];

    resultHandler = [(WFGeocodeRequest *)self resultHandler];

    if (resultHandler)
    {
      resultHandler2 = [(WFGeocodeRequest *)self resultHandler];
      geocodedResult = [(WFGeocodeRequest *)self geocodedResult];
      error = [v5 error];
      (resultHandler2)[2](resultHandler2, geocodedResult, error);
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

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  resultHandler = [(WFGeocodeRequest *)self resultHandler];
  (resultHandler)[2](resultHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFGeocodeRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)handleCancellation
{
  resultHandler = [(WFGeocodeRequest *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFGeocodeRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (resultHandler2)[2](resultHandler2, 0, v5);
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