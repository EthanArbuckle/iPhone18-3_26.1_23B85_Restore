@interface WFLocationQueryGeocode
+ (id)queryWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4;
+ (id)queryWithDictionaryRepresentation:(id)a3 resultHandler:(id)a4;
+ (id)queryWithSearchCompletion:(id)a3 resultHandler:(id)a4;
+ (id)queryWithSearchString:(id)a3 resultHandler:(id)a4;
- (BOOL)isLocationValid:(id)a3;
- (CLLocationCoordinate2D)searchCoordinate;
- (CLLocationCoordinate2D)unshiftedCoordinate;
- (WFLocationQueryGeocode)initWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4;
- (WFLocationQueryGeocode)initWithSearchCompletion:(id)a3 resultHandler:(id)a4;
- (WFLocationQueryGeocode)initWithSearchString:(id)a3 resultHandler:(id)a4;
- (id)_mkLocalSearchRequest;
- (id)_reverseGeocoderLocation;
- (void)_handleErrorResponse:(id)a3;
- (void)_startCLGeocoderReverseGeo;
- (void)_startMKLocalSearch;
- (void)cancel;
- (void)handleSearchResponseWithLocation:(id)a3;
- (void)start;
@end

@implementation WFLocationQueryGeocode

+ (id)queryWithDictionaryRepresentation:(id)a3 resultHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v28 = a1;
    while (2)
    {
      v13 = v7;
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:{v15, v27, v28}];

        if (v16)
        {
          v17 = [v6 objectForKeyedSubscript:v15];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            continue;
          }
        }

        v25 = 0;
        v7 = v13;
        goto LABEL_12;
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v7 = v13;
      v8 = v27;
      a1 = v28;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v6 objectForKeyedSubscript:@"Latitude"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v6 objectForKeyedSubscript:v8];
  [v22 doubleValue];
  v24 = v23;

  v25 = [a1 queryWithCoordinate:v7 resultHandler:{v21, v24}];
LABEL_12:

  return v25;
}

+ (id)queryWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithCoordinate:v6 resultHandler:{latitude, longitude}];

  [v7 setUnshiftedCoordinate:{latitude, longitude}];

  return v7;
}

+ (id)queryWithSearchCompletion:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchCompletion:v6 resultHandler:v5];

  return v7;
}

- (WFLocationQueryGeocode)initWithSearchCompletion:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WFLocationQueryGeocode;
  v9 = [(WFLocationQueryGeocode *)&v16 init];
  if (v9)
  {
    v10 = [v8 copy];
    resultHandler = v9->_resultHandler;
    v9->_resultHandler = v10;

    objc_storeStrong(&v9->_searchCompletion, a3);
    v12 = *MEMORY[0x277CE4278];
    v13 = *(MEMORY[0x277CE4278] + 8);
    [(WFLocationQueryGeocode *)v9 setSearchCoordinate:*MEMORY[0x277CE4278], v13];
    [(WFLocationQueryGeocode *)v9 setUnshiftedCoordinate:v12, v13];
    v14 = v9;
  }

  return v9;
}

+ (id)queryWithSearchString:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSearchString:v6 resultHandler:v5];

  return v7;
}

- (WFLocationQueryGeocode)initWithSearchString:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = WFLocationQueryGeocode;
  v9 = [(WFLocationQueryGeocode *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchString, a3);
    v11 = [v8 copy];
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

- (WFLocationQueryGeocode)initWithCoordinate:(CLLocationCoordinate2D)a3 resultHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFLocationQueryGeocode;
  v8 = [(WFLocationQueryGeocode *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_searchCoordinate.latitude = latitude;
    v8->_searchCoordinate.longitude = longitude;
    v10 = [v7 copy];
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
  v3 = [(WFLocationQueryGeocode *)self _reverseGeocoderLocation];

  if (v3)
  {

    [(WFLocationQueryGeocode *)self _startCLGeocoderReverseGeo];
  }

  else
  {
    v4 = [(WFLocationQueryGeocode *)self _mkLocalSearchRequest];

    if (v4)
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
  v3 = [(WFLocationQueryGeocode *)self reverseGeocoder];
  [v3 cancelGeocode];

  v4 = [(WFLocationQueryGeocode *)self search];
  [v4 cancel];
}

- (void)_startMKLocalSearch
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(WFLocationQueryGeocode *)self _mkLocalSearchRequest];
  v4 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v3];
  [(WFLocationQueryGeocode *)self setSearch:v4];

  v5 = +[WFLocationQueryGeocodeCacheManager sharedManager];
  v6 = [v3 naturalLanguageQuery];
  v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  v9 = [v8 stringByAppendingString:@"-MKLocalSearch"];

  v10 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(WFLocationQueryGeocode *)self searchString];
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_272B94000, v10, OS_LOG_TYPE_DEFAULT, "Executing WFLocationQueryGeocode for search string %@", buf, 0xCu);
  }

  v12 = [v5 cachedLocationForKey:v9];
  if (v12)
  {
    v13 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(WFLocationQueryGeocode *)self searchString];
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_272B94000, v13, OS_LOG_TYPE_DEFAULT, "WFLocationQueryGeocode retrieved from cache for search string %@", buf, 0xCu);
    }

    [(WFLocationQueryGeocode *)self handleSearchResponseWithLocation:v12];
  }

  else
  {
    v15 = [(WFLocationQueryGeocode *)self search];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__WFLocationQueryGeocode__startMKLocalSearch__block_invoke;
    v16[3] = &unk_279E6DC50;
    v16[4] = self;
    v17 = v3;
    v18 = v9;
    v19 = v5;
    [v15 startWithCompletionHandler:v16];
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

- (BOOL)isLocationValid:(id)a3
{
  v3 = a3;
  v4 = [v3 countryAbbreviation];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 geoLocation];
    [v6 coordinate];
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
      v24 = [v3 geoLocation];
      [v24 coordinate];
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
  v3 = [(WFLocationQueryGeocode *)self searchCompletion];

  if (v3)
  {
    v4 = MEMORY[0x277CD4E38];
    v5 = [(WFLocationQueryGeocode *)self searchCompletion];
    v6 = [v4 searchRequestWithCompletion:v5];
  }

  else
  {
    v6 = [(WFLocationQueryGeocode *)self searchString];

    if (!v6)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(MEMORY[0x277CD4E38]);
    v5 = [(WFLocationQueryGeocode *)self searchString];
    [v6 setNaturalLanguageQuery:v5];
  }

LABEL_6:

  return v6;
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

- (void)handleSearchResponseWithLocation:(id)a3
{
  v4 = a3;
  [(WFLocationQueryGeocode *)self unshiftedCoordinate];
  latitude = v15.latitude;
  longitude = v15.longitude;
  if (CLLocationCoordinate2DIsValid(v15))
  {
    v7 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [v4 setGeoLocation:v7];
  }

  v8 = [WFGeocodeResponse alloc];
  v9 = [(WFLocationQueryGeocode *)self identifier];
  v10 = [v9 UUID];
  v11 = [(WFGeocodeResponse *)v8 initWithIdentifier:v10 location:v4];

  objc_storeStrong(&self->_response, v11);
  v12 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(WFLocationQueryGeocode *)self handleSearchResponseWithLocation:v12];
  }

  v13 = [(WFLocationQueryGeocode *)self resultHandler];

  if (v13)
  {
    v14 = [(WFLocationQueryGeocode *)self resultHandler];
    (v14)[2](v14, v11);
  }
}

- (void)_handleErrorResponse:(id)a3
{
  v4 = a3;
  v5 = [WFGeocodeResponse alloc];
  v6 = [(WFLocationQueryGeocode *)self identifier];
  v7 = [v6 UUID];
  v8 = [(WFGeocodeResponse *)v5 initWithIdentifier:v7 location:0];

  v9 = [v4 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CBFCF0]])
  {
    v10 = [v4 code];

    if (v10 != 10)
    {
      goto LABEL_5;
    }

    [MEMORY[0x277CCA9B8] wf_errorWithCode:13 encapsulatedError:v4 userInfo:0];
    v4 = v9 = v4;
  }

LABEL_5:
  [(WFResponse *)v8 setError:v4];
  objc_storeStrong(&self->_response, v8);
  v11 = WFLogForCategory(3uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(WFLocationQueryGeocode *)self _handleErrorResponse:v4, v11];
  }

  v12 = [(WFLocationQueryGeocode *)self resultHandler];

  if (v12)
  {
    v13 = [(WFLocationQueryGeocode *)self resultHandler];
    (v13)[2](v13, v8);
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