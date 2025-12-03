@interface WFLocationQueryGeocode
+ (id)queryWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler;
+ (id)queryWithDictionaryRepresentation:(id)representation resultHandler:(id)handler;
+ (id)queryWithSearchCompletion:(id)completion resultHandler:(id)handler;
+ (id)queryWithSearchString:(id)string resultHandler:(id)handler;
- (BOOL)isLocationValid:(id)valid;
- (CLLocationCoordinate2D)searchCoordinate;
- (CLLocationCoordinate2D)unshiftedCoordinate;
- (WFLocationQueryGeocode)initWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler;
- (WFLocationQueryGeocode)initWithSearchCompletion:(id)completion resultHandler:(id)handler;
- (WFLocationQueryGeocode)initWithSearchString:(id)string resultHandler:(id)handler;
- (id)_mkLocalSearchRequest;
- (id)_reverseGeocoderLocation;
- (void)_handleErrorResponse:(id)response;
- (void)_startCLGeocoderReverseGeo;
- (void)_startMKLocalSearch;
- (void)cancel;
- (void)handleSearchResponseWithLocation:(id)location;
- (void)start;
@end

@implementation WFLocationQueryGeocode

+ (id)queryWithDictionaryRepresentation:(id)representation resultHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  handlerCopy = handler;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = @"Longitude";
  v33[0] = @"Latitude";
  v33[1] = @"Longitude";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v27 = @"Longitude";
    selfCopy = self;
    while (2)
    {
      v13 = handlerCopy;
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [representationCopy objectForKeyedSubscript:{v15, v27, selfCopy}];

        if (v16)
        {
          v17 = [representationCopy objectForKeyedSubscript:v15];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            continue;
          }
        }

        v25 = 0;
        handlerCopy = v13;
        goto LABEL_12;
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      handlerCopy = v13;
      v8 = v27;
      self = selfCopy;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = [representationCopy objectForKeyedSubscript:@"Latitude"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [representationCopy objectForKeyedSubscript:v8];
  [v22 doubleValue];
  v24 = v23;

  v25 = [self queryWithCoordinate:handlerCopy resultHandler:{v21, v24}];
LABEL_12:

  return v25;
}

+ (id)queryWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  v7 = [objc_alloc(objc_opt_class()) initWithCoordinate:handlerCopy resultHandler:{latitude, longitude}];

  [v7 setUnshiftedCoordinate:{latitude, longitude}];

  return v7;
}

+ (id)queryWithSearchCompletion:(id)completion resultHandler:(id)handler
{
  handlerCopy = handler;
  completionCopy = completion;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchCompletion:completionCopy resultHandler:handlerCopy];

  return v7;
}

- (WFLocationQueryGeocode)initWithSearchCompletion:(id)completion resultHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = WFLocationQueryGeocode;
  v9 = [(WFLocationQueryGeocode *)&v16 init];
  if (v9)
  {
    v10 = [handlerCopy copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v10;

    objc_storeStrong(&v9->_searchCompletion, completion);
    v12 = *MEMORY[0x277CE4278];
    v13 = *(MEMORY[0x277CE4278] + 8);
    [(WFLocationQueryGeocode *)v9 setSearchCoordinate:*MEMORY[0x277CE4278], v13];
    [(WFLocationQueryGeocode *)v9 setUnshiftedCoordinate:v12, v13];
    v14 = v9;
  }

  return v9;
}

+ (id)queryWithSearchString:(id)string resultHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchString:stringCopy resultHandler:handlerCopy];

  return v7;
}

- (WFLocationQueryGeocode)initWithSearchString:(id)string resultHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = WFLocationQueryGeocode;
  v9 = [(WFLocationQueryGeocode *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchString, string);
    v11 = [handlerCopy copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;

    v13 = *MEMORY[0x277CE4278];
    v14 = *(MEMORY[0x277CE4278] + 8);
    [(WFLocationQueryGeocode *)v10 setUnshiftedCoordinate:*MEMORY[0x277CE4278], v14];
    [(WFLocationQueryGeocode *)v10 setSearchCoordinate:v13, v14];
    v15 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [WFLocationQueryGeocode initWithSearchString:resultHandler:];
    }

    v16 = v10;
  }

  return v10;
}

- (WFLocationQueryGeocode)initWithCoordinate:(CLLocationCoordinate2D)coordinate resultHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = WFLocationQueryGeocode;
  v8 = [(WFLocationQueryGeocode *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_searchCoordinate.latitude = latitude;
    v8->_searchCoordinate.longitude = longitude;
    v10 = [handlerCopy copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v10;

    [(WFLocationQueryGeocode *)v9 setUnshiftedCoordinate:*MEMORY[0x277CE4278], *(MEMORY[0x277CE4278] + 8)];
    v12 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(WFLocationQueryGeocode *)v12 initWithCoordinate:longitude resultHandler:?];
    }

    v13 = v9;
  }

  return v9;
}

- (void)start
{
  _reverseGeocoderLocation = [(WFLocationQueryGeocode *)self _reverseGeocoderLocation];

  if (_reverseGeocoderLocation)
  {

    [(WFLocationQueryGeocode *)self _startCLGeocoderReverseGeo];
  }

  else
  {
    _mkLocalSearchRequest = [(WFLocationQueryGeocode *)self _mkLocalSearchRequest];

    if (_mkLocalSearchRequest)
    {

      [(WFLocationQueryGeocode *)self _startMKLocalSearch];
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
      [(WFLocationQueryGeocode *)self _handleErrorResponse:v5];
    }
  }
}

- (void)cancel
{
  reverseGeocoder = [(WFLocationQueryGeocode *)self reverseGeocoder];
  [reverseGeocoder cancelGeocode];

  search = [(WFLocationQueryGeocode *)self search];
  [search cancel];
}

- (void)_startMKLocalSearch
{
  v22 = *MEMORY[0x277D85DE8];
  _mkLocalSearchRequest = [(WFLocationQueryGeocode *)self _mkLocalSearchRequest];
  v4 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:_mkLocalSearchRequest];
  [(WFLocationQueryGeocode *)self setSearch:v4];

  v5 = +[WFLocationQueryGeocodeCacheManager sharedManager];
  naturalLanguageQuery = [_mkLocalSearchRequest naturalLanguageQuery];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [naturalLanguageQuery stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v9 = [v8 stringByAppendingString:@"-MKLocalSearch"];

  v10 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    searchString = [(WFLocationQueryGeocode *)self searchString];
    *buf = 138412290;
    v21 = searchString;
    _os_log_impl(&dword_272B94000, v10, OS_LOG_TYPE_DEFAULT, "Executing WFLocationQueryGeocode for search string %@", buf, 0xCu);
  }

  v12 = [v5 cachedLocationForKey:v9];
  if (v12)
  {
    v13 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      searchString2 = [(WFLocationQueryGeocode *)self searchString];
      *buf = 138412290;
      v21 = searchString2;
      _os_log_impl(&dword_272B94000, v13, OS_LOG_TYPE_DEFAULT, "WFLocationQueryGeocode retrieved from cache for search string %@", buf, 0xCu);
    }

    [(WFLocationQueryGeocode *)self handleSearchResponseWithLocation:v12];
  }

  else
  {
    search = [(WFLocationQueryGeocode *)self search];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__WFLocationQueryGeocode__startMKLocalSearch__block_invoke;
    v16[3] = &unk_279E6DC50;
    v16[4] = self;
    v17 = _mkLocalSearchRequest;
    v18 = v9;
    v19 = v5;
    [search startWithCompletionHandler:v16];
  }
}

void __45__WFLocationQueryGeocode__startMKLocalSearch__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 _handleErrorResponse:?];
  }

  else
  {
    v5 = [a2 mapItems];
    v6 = [v5 firstObject];

    v7 = [[WFLocation alloc] initWithMapItem:v6];
    v8 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) naturalLanguageQuery];
      v10 = *(a1 + 48);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_272B94000, v8, OS_LOG_TYPE_DEFAULT, "Caching location for search string '%@' within cacheKey '%@'", &v11, 0x16u);
    }

    [*(a1 + 56) updateCacheForKey:*(a1 + 48) withLocation:v7];
    [*(a1 + 32) handleSearchResponseWithLocation:v7];
  }
}

- (void)_startCLGeocoderReverseGeo
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_272B94000, v0, v1, "No location found for cacheKey '%@', reverse geocoding commencing...", v2);
}

void __52__WFLocationQueryGeocode__startCLGeocoderReverseGeo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_272B94000, v7, OS_LOG_TYPE_DEFAULT, "Reverse Geocoder failed to obtain a location with error: %@", &v19, 0xCu);
    }

    [*(a1 + 32) _handleErrorResponse:v6];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CD4E80]);
    v9 = objc_alloc(MEMORY[0x277CD4F00]);
    v10 = [v5 firstObject];
    v11 = [v9 initWithPlacemark:v10];
    v12 = [v8 initWithPlacemark:v11];

    v13 = [[WFLocation alloc] initWithMapItem:v12];
    if (v13 && [*(a1 + 32) isLocationValid:v13])
    {
      v14 = WFLogForCategory(3uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v19 = 138412547;
        v20 = v15;
        v21 = 2113;
        v22 = v13;
        _os_log_impl(&dword_272B94000, v14, OS_LOG_TYPE_DEFAULT, "Caching location with cacheKey '%@'. location=%{private}@", &v19, 0x16u);
      }

      [*(a1 + 48) updateCacheForKey:*(a1 + 40) withLocation:v13];
      [*(a1 + 32) handleSearchResponseWithLocation:v13];
    }

    else
    {
      v16 = WFLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v12;
        _os_log_impl(&dword_272B94000, v16, OS_LOG_TYPE_DEFAULT, "Failed to initialize location with mapItem: %@", &v19, 0xCu);
      }

      v17 = *(a1 + 32);
      v18 = [MEMORY[0x277CCA9B8] wf_errorWithCode:16];
      [v17 _handleErrorResponse:v18];
    }
  }
}

- (BOOL)isLocationValid:(id)valid
{
  validCopy = valid;
  countryAbbreviation = [validCopy countryAbbreviation];
  v5 = [countryAbbreviation length];

  if (v5)
  {
    geoLocation = [validCopy geoLocation];
    [geoLocation coordinate];
    v8 = v7;

    if (v8 == 0.0)
    {
      v9 = WFLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WFLocationQueryGeocode *)v9 isLocationValid:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    else
    {
      geoLocation2 = [validCopy geoLocation];
      [geoLocation2 coordinate];
      v26 = v25;

      if (v26 != 0.0)
      {
        v34 = 1;
        goto LABEL_11;
      }

      v9 = WFLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WFLocationQueryGeocode *)v9 isLocationValid:v27, v28, v29, v30, v31, v32, v33];
      }
    }
  }

  else
  {
    v9 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WFLocationQueryGeocode *)v9 isLocationValid:v17, v18, v19, v20, v21, v22, v23];
    }
  }

  v34 = 0;
LABEL_11:

  return v34;
}

- (id)_mkLocalSearchRequest
{
  searchCompletion = [(WFLocationQueryGeocode *)self searchCompletion];

  if (searchCompletion)
  {
    v4 = MEMORY[0x277CD4E38];
    searchCompletion2 = [(WFLocationQueryGeocode *)self searchCompletion];
    searchString = [v4 searchRequestWithCompletion:searchCompletion2];
  }

  else
  {
    searchString = [(WFLocationQueryGeocode *)self searchString];

    if (!searchString)
    {
      goto LABEL_6;
    }

    searchString = objc_alloc_init(MEMORY[0x277CD4E38]);
    searchCompletion2 = [(WFLocationQueryGeocode *)self searchString];
    [searchString setNaturalLanguageQuery:searchCompletion2];
  }

LABEL_6:

  return searchString;
}

- (id)_reverseGeocoderLocation
{
  [(WFLocationQueryGeocode *)self searchCoordinate];
  if (CLLocationCoordinate2DIsValid(v9))
  {
    v3 = objc_alloc(MEMORY[0x277CE41F8]);
    [(WFLocationQueryGeocode *)self searchCoordinate];
    v5 = v4;
    [(WFLocationQueryGeocode *)self searchCoordinate];
    v6 = [v3 initWithLatitude:v5 longitude:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleSearchResponseWithLocation:(id)location
{
  locationCopy = location;
  [(WFLocationQueryGeocode *)self unshiftedCoordinate];
  latitude = v15.latitude;
  longitude = v15.longitude;
  if (CLLocationCoordinate2DIsValid(v15))
  {
    v7 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [locationCopy setGeoLocation:v7];
  }

  v8 = [WFGeocodeResponse alloc];
  identifier = [(WFLocationQueryGeocode *)self identifier];
  uUID = [identifier UUID];
  v11 = [(WFGeocodeResponse *)v8 initWithIdentifier:uUID location:locationCopy];

  objc_storeStrong(&self->_response, v11);
  v12 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(WFLocationQueryGeocode *)self handleSearchResponseWithLocation:v12];
  }

  resultHandler = [(WFLocationQueryGeocode *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFLocationQueryGeocode *)self resultHandler];
    (resultHandler2)[2](resultHandler2, v11);
  }
}

- (void)_handleErrorResponse:(id)response
{
  responseCopy = response;
  v5 = [WFGeocodeResponse alloc];
  identifier = [(WFLocationQueryGeocode *)self identifier];
  uUID = [identifier UUID];
  v8 = [(WFGeocodeResponse *)v5 initWithIdentifier:uUID location:0];

  domain = [responseCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CBFCF0]])
  {
    code = [responseCopy code];

    if (code != 10)
    {
      goto LABEL_5;
    }

    [MEMORY[0x277CCA9B8] wf_errorWithCode:13 encapsulatedError:responseCopy userInfo:0];
    responseCopy = domain = responseCopy;
  }

LABEL_5:
  [(WFResponse *)v8 setError:responseCopy];
  objc_storeStrong(&self->_response, v8);
  v11 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(WFLocationQueryGeocode *)self _handleErrorResponse:responseCopy, v11];
  }

  resultHandler = [(WFLocationQueryGeocode *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFLocationQueryGeocode *)self resultHandler];
    (resultHandler2)[2](resultHandler2, v8);
  }
}

- (CLLocationCoordinate2D)searchCoordinate
{
  latitude = self->_searchCoordinate.latitude;
  longitude = self->_searchCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)unshiftedCoordinate
{
  latitude = self->_unshiftedCoordinate.latitude;
  longitude = self->_unshiftedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)initWithSearchString:resultHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_272B94000, v0, v1, "Building WFLocationQueryGeocode for search string %@", v2);
}

- (void)initWithCoordinate:(double)a3 resultHandler:.cold.1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromCLLocationCoordinate2D(a2, a3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_272B94000, a1, v5, "Building WFLocationQueryGeocode for coordinate %@", v6);
}

- (void)handleSearchResponseWithLocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 _reverseGeocoderLocation];
  v6 = v5;
  if (!v5)
  {
    v6 = [a1 _mkLocalSearchRequest];
  }

  v7 = 138412290;
  v8 = v6;
  OUTLINED_FUNCTION_2_0(&dword_272B94000, a2, v4, "WFLocationQueryGeocode w/ search '%@' succeeded.", &v7);
  if (!v5)
  {
  }
}

- (void)_handleErrorResponse:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 searchString];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_272B94000, a3, OS_LOG_TYPE_ERROR, "WFLocationQueryGeocode w/ search string '%@' failed with error  Error: %@", v6, 0x16u);
}

@end