@interface SKGDataDetector
+ (id)sharedDetector;
- (BOOL)enumerateAirportCodesInStringUsingGeoScanner:(id)scanner entityBlock:(id)block;
- (BOOL)enumerateDetectedDataInString:(id)string locale:(id)locale referenceDate:(id)date referenceTimezone:(id)timezone entityCategories:(id)categories entityBlock:(id)block rangeBlock:(id)rangeBlock;
- (BOOL)enumerateLocationStrings:(id)strings locale:(id)locale entityBlock:(id)block;
- (BOOL)enumerateLocationsInString:(id)string locale:(id)locale latitude:(double)latitude longitude:(double)longitude entityBlock:(id)block;
- (BOOL)loadDetector;
- (SKGDataDetector)init;
- (id)_addressFromResult:(id)result;
- (id)_callPIRWithQuery:(id)query hitError:(BOOL *)error;
- (id)_currencyFromResult:(id)result;
- (id)_dateFromResult:(id)result referenceDate:(id)date referenceTimezone:(id)timezone;
- (id)_emailAddressFromResult:(id)result;
- (id)_flightFromResult:(id)result;
- (id)_linkFromResult:(id)result;
- (id)_lookupCitiesFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries parents:(id)parents;
- (id)_lookupCountriesFromLocalCacheWithString:(id)string locale:(id)locale;
- (id)_lookupParentsFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries;
- (id)_phoneNumberDigitsFromResult:(id)result;
- (id)_retrieveLocationFromLocalCache:(id)cache locale:(id)locale;
- (id)_retrieveLocationFromPIR:(id)r locale:(id)locale;
- (id)_trackingNumberFromResult:(id)result;
- (id)locationFromAddress:(id)address locale:(id)locale;
- (void)_lookupExpansionsFromLocalCacheWithLocation:(id)location locale:(id)locale;
- (void)dealloc;
@end

@implementation SKGDataDetector

+ (id)sharedDetector
{
  if (sharedDetector_onceToken != -1)
  {
    +[SKGDataDetector sharedDetector];
  }

  v3 = sharedDetector_gDetector;

  return v3;
}

void __33__SKGDataDetector_sharedDetector__block_invoke()
{
  v0 = objc_alloc_init(SKGDataDetector);
  v1 = sharedDetector_gDetector;
  sharedDetector_gDetector = v0;
}

- (SKGDataDetector)init
{
  v8.receiver = self;
  v8.super_class = SKGDataDetector;
  v2 = [(SKGDataDetector *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
    config = v2->_config;
    v2->_config = v3;

    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-()[]"];
    punctuation = v2->_punctuation;
    v2->_punctuation = v5;
  }

  return v2;
}

- (BOOL)loadDetector
{
  mEMORY[0x277CC3410] = [MEMORY[0x277CC3410] sharedInstance];
  isSemanticSearchAvailable = [mEMORY[0x277CC3410] isSemanticSearchAvailable];

  if (isSemanticSearchAvailable && _os_feature_enabled_impl() && !self->_pirClient)
  {
    v12 = [objc_alloc(MEMORY[0x277CFA598]) initWithUseCase:@"encryptedPQAGeo"];
    v13 = [objc_alloc(MEMORY[0x277CFA5B0]) initWithClientConfig:v12];
    pirClient = self->_pirClient;
    self->_pirClient = v13;

    v5 = self->_pirClient != 0;
  }

  else
  {
    v5 = 0;
  }

  if (!self->_geoIndex)
  {
    mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
    geoIndexResourcesURL = [mEMORY[0x277D657A8] geoIndexResourcesURL];

    if (geoIndexResourcesURL)
    {
      self->_geoIndex = SIGeoIndexCreateWithOptions();
    }
  }

  if (!self->_geoScanner)
  {
    mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
    geoPatternsResourcesURL = [mEMORY[0x277D657A8]2 geoPatternsResourcesURL];

    if (geoPatternsResourcesURL)
    {
      v10 = DDScannerCreateWithCacheFile();
      self->_geoScanner = v10;
      if (!v10)
      {
        self->_geoScanner = 0;
      }
    }
  }

  return (self->_geoIndex != 0 || v5) && self->_geoScanner != 0;
}

- (id)_addressFromResult:(id)result
{
  resultCopy = result;
  v4 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
  value = [resultCopy value];
  [(SKGAddress *)v4 setAddress:value];

  lookupAddressScore(resultCopy, v4);
  [(SKGEntity *)v4 score];
  if (v6 <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)locationFromAddress:(id)address locale:(id)locale
{
  addressCopy = address;
  localeCopy = locale;
  v8 = [(SKGDataDetector *)self _retrieveLocationFromLocalCache:addressCopy locale:localeCopy];
  if (!v8)
  {
    v8 = [(SKGDataDetector *)self _retrieveLocationFromPIR:addressCopy locale:localeCopy];
  }

  return v8;
}

- (id)_lookupCountriesFromLocalCacheWithString:(id)string locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v8 = localeCopy;
  v9 = 0;
  if (stringCopy && localeCopy)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__15;
    v18[4] = __Block_byref_object_dispose__15;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__15;
    v16 = __Block_byref_object_dispose__15;
    v17 = 0;
    geoIndex = self->_geoIndex;
    SIGeoIndexEnumerateGeoEntriesForString();
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v18, 8);
  }

  return v9;
}

uint64_t __67__SKGDataDetector__lookupCountriesFromLocalCacheWithString_locale___block_invoke(uint64_t result, double *a2, double a3)
{
  if (!*(a2 + 1) && !*(a2 + 2))
  {
    v4 = result;
    v5 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(v4 + 32) + 8) + 40) setGeoID:0];
    [*(*(*(v4 + 32) + 8) + 40) setParentID:0];
    [*(*(*(v4 + 32) + 8) + 40) setCountryID:*a2];
    [*(*(*(v4 + 32) + 8) + 40) setLat:a2[2]];
    [*(*(*(v4 + 32) + 8) + 40) setLng:a2[5]];
    [*(*(*(v4 + 32) + 8) + 40) setMinLat:a2[3]];
    [*(*(*(v4 + 32) + 8) + 40) setMaxLat:a2[4]];
    [*(*(*(v4 + 32) + 8) + 40) setMinLng:a2[6]];
    [*(*(*(v4 + 32) + 8) + 40) setMaxLng:a2[7]];
    v8 = *(*(*(v4 + 40) + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = *(*(v4 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(v4 + 40) + 8) + 40);
    }

    v12 = *(*(*(v4 + 32) + 8) + 40);

    return [v8 addObject:v12];
  }

  return result;
}

- (id)_lookupParentsFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries
{
  stringCopy = string;
  localeCopy = locale;
  countriesCopy = countries;
  v11 = countriesCopy;
  v12 = 0;
  if (stringCopy && localeCopy)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__15;
    v22[4] = __Block_byref_object_dispose__15;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__15;
    v20 = __Block_byref_object_dispose__15;
    v21 = 0;
    geoIndex = self->_geoIndex;
    v15 = countriesCopy;
    SIGeoIndexEnumerateGeoEntriesForString();
    v12 = v17[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(v22, 8);
  }

  return v12;
}

void __75__SKGDataDetector__lookupParentsFromLocalCacheWithString_locale_countries___block_invoke(uint64_t a1, double *a2, double a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a2 + 1) || !*(a2 + 2))
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:0];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:*a2];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:*(a2 + 2)];
    [*(*(*(a1 + 48) + 8) + 40) setLat:a2[2]];
    [*(*(*(a1 + 48) + 8) + 40) setLng:a2[5]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLat:a2[3]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLat:a2[4]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLng:a2[6]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLng:a2[7]];
    if ([*(a1 + 32) count])
    {
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v11 = *(a1 + 32);
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v28 + 1) + 8 * i) countryID];
            if (v16 == [*(*(*(a1 + 48) + 8) + 40) countryID])
            {
              v17 = *(*(*(a1 + 56) + 8) + 40);
              if (!v17)
              {
                v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v19 = *(*(a1 + 56) + 8);
                v20 = *(v19 + 40);
                *(v19 + 40) = v18;

                v17 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v17 addObject:*(*(*(a1 + 48) + 8) + 40)];
              goto LABEL_19;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    else
    {
      v21 = *(*(a1 + 40) + 24);
      [*(*(*(a1 + 48) + 8) + 40) countryID];
      if (SIGeoIndexLookupEntry())
      {
        v22 = [(SKGEntity *)[SKGLocation alloc] initWithScore:1.0];
        [(SKGLocation *)v22 setGeoID:0];
        [(SKGLocation *)v22 setParentID:0];
        [(SKGLocation *)v22 setCountryID:0];
        [(SKGLocation *)v22 setLat:0.0];
        [(SKGLocation *)v22 setLng:0.0];
        [(SKGLocation *)v22 setMinLat:0.0];
        [(SKGLocation *)v22 setMaxLat:0.0];
        [(SKGLocation *)v22 setMinLng:0.0];
        [(SKGLocation *)v22 setMaxLng:0.0];
        [*(a1 + 32) addObject:v22];
      }

      v23 = *(*(*(a1 + 56) + 8) + 40);
      if (!v23)
      {
        v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v25 = *(*(a1 + 56) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        v23 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v23 addObject:*(*(*(a1 + 48) + 8) + 40)];
    }

    v27 = *MEMORY[0x277D85DE8];
  }
}

- (id)_lookupCitiesFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries parents:(id)parents
{
  stringCopy = string;
  localeCopy = locale;
  countriesCopy = countries;
  parentsCopy = parents;
  v14 = 0;
  if (stringCopy && localeCopy)
  {
    if ([countriesCopy count] || objc_msgSend(parentsCopy, "count"))
    {
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = __Block_byref_object_copy__15;
      v25[4] = __Block_byref_object_dispose__15;
      v26 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__15;
      v23 = __Block_byref_object_dispose__15;
      v24 = 0;
      geoIndex = self->_geoIndex;
      v17 = parentsCopy;
      v18 = countriesCopy;
      SIGeoIndexEnumerateGeoEntriesForString();
      v14 = v20[5];

      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(v25, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

void __82__SKGDataDetector__lookupCitiesFromLocalCacheWithString_locale_countries_parents___block_invoke(uint64_t a1, double *a2, double a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*a2 && *(a2 + 1) && *(a2 + 2))
  {
    v5 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:*a2];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:*(a2 + 1)];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:*(a2 + 2)];
    [*(*(*(a1 + 48) + 8) + 40) setLat:a2[2]];
    [*(*(*(a1 + 48) + 8) + 40) setLng:a2[5]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLat:a2[3]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLat:a2[4]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLng:a2[6]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLng:a2[7]];
    if ([*(a1 + 32) count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            v14 = [v13 countryID];
            if (v14 == [*(*(*(a1 + 48) + 8) + 40) countryID] && objc_msgSend(v13, "isParent:", *(*(*(a1 + 48) + 8) + 40)))
            {
              v27 = *(*(*(a1 + 56) + 8) + 40);
              if (!v27)
              {
                v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v29 = *(*(a1 + 56) + 8);
                v30 = *(v29 + 40);
                *(v29 + 40) = v28;

                v27 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v27 addObject:*(*(*(a1 + 48) + 8) + 40)];
              goto LABEL_34;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (![*(a1 + 40) count])
      {
LABEL_35:
        v31 = *MEMORY[0x277D85DE8];
        return;
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = *(a1 + 40);
      v18 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v8);
            }

            v22 = [*(*(&v32 + 1) + 8 * j) countryID];
            if (v22 == [*(*(*(a1 + 48) + 8) + 40) countryID])
            {
              v23 = *(*(*(a1 + 56) + 8) + 40);
              if (!v23)
              {
                v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v25 = *(*(a1 + 56) + 8);
                v26 = *(v25 + 40);
                *(v25 + 40) = v24;

                v23 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v23 addObject:*(*(*(a1 + 48) + 8) + 40)];
            }
          }

          v19 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v19);
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_lookupExpansionsFromLocalCacheWithLocation:(id)location locale:(id)locale
{
  locationCopy = location;
  localeCopy = locale;
  if ([locationCopy geoID])
  {
    geoIndex = self->_geoIndex;
    [locationCopy geoID];
    v13 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }

  if ([locationCopy parentID])
  {
    v9 = self->_geoIndex;
    [locationCopy parentID];
    v12 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }

  if ([locationCopy countryID])
  {
    v10 = self->_geoIndex;
    [locationCopy countryID];
    v11 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }
}

- (id)_retrieveLocationFromLocalCache:(id)cache locale:(id)locale
{
  cacheCopy = cache;
  localeCopy = locale;
  if ((_os_feature_enabled_impl() & 1) == 0 && ![(SKGDataDetector *)self forceDataDetection]|| !self->_geoIndex)
  {
    v13 = 0;
    goto LABEL_37;
  }

  country = [cacheCopy country];

  if (country)
  {
    country2 = [cacheCopy country];
    v10 = normalizedLocationString(localeCopy, country2);

    v11 = [(SKGDataDetector *)self _lookupCountriesFromLocalCacheWithString:v10 locale:localeCopy];
    if (!v11)
    {
      if ([v10 length] < 5)
      {
        v11 = 0;
      }

      else
      {
        uppercaseString = [v10 uppercaseString];
        v11 = [(SKGDataDetector *)self _lookupCountriesFromLocalCacheWithString:uppercaseString locale:localeCopy];
      }
    }

    if (![v11 count])
    {

      v25 = 0;
      v14 = 0;
      goto LABEL_22;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allObjects = [v11 allObjects];
    [v14 addObjectsFromArray:allObjects];
  }

  else
  {
    v14 = 0;
  }

  area = [cacheCopy area];

  if (area)
  {
    v17 = objc_autoreleasePoolPush();
    area2 = [cacheCopy area];
    v19 = normalizedLocationString(localeCopy, area2);

    v41 = v14;
    v20 = [(SKGDataDetector *)self _lookupParentsFromLocalCacheWithString:v19 locale:localeCopy countries:v14];
    if (!v20)
    {

      objc_autoreleasePoolPop(v17);
      v25 = 0;
      v32 = 0;
      v13 = 0;
      goto LABEL_36;
    }

    v21 = v20;
    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v21 allObjects];
    v40 = localeCopy;
    v24 = v23 = v17;
    v25 = v22;
    [v22 addObjectsFromArray:v24];

    v26 = v23;
    localeCopy = v40;
    objc_autoreleasePoolPop(v26);
    v14 = v41;
  }

  else
  {
    v25 = 0;
  }

  city = [cacheCopy city];
  v28 = (country | area) != 0;
  if (!city)
  {
    v32 = 0;
    if (!v28)
    {
      v13 = 0;
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if (country | area)
  {
    v29 = objc_autoreleasePoolPush();
    city2 = [cacheCopy city];
    v31 = normalizedLocationString(localeCopy, city2);

    v32 = [(SKGDataDetector *)self _lookupCitiesFromLocalCacheWithString:v31 locale:localeCopy countries:v14 parents:v25];
    v33 = [v32 count];

    objc_autoreleasePoolPop(v29);
    if (!v33)
    {
      goto LABEL_23;
    }

LABEL_25:
    allObjects2 = [v32 allObjects];
    v35 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_83];

    if (!v35)
    {
      allObjects3 = [v25 allObjects];
      v35 = [allObjects3 sortedArrayUsingComparator:&__block_literal_global_85];

      if (!v35)
      {
        allObjects4 = [v14 allObjects];
        v35 = [allObjects4 sortedArrayUsingComparator:&__block_literal_global_87];
      }
    }

    if ([v35 count])
    {
      firstObject = [v35 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    if ([firstObject geoID])
    {
      [(SKGDataDetector *)self _lookupExpansionsFromLocalCacheWithLocation:firstObject locale:localeCopy];
      [firstObject setAddress:cacheCopy];
    }

    v13 = firstObject;

    goto LABEL_36;
  }

LABEL_22:
  v32 = 0;
LABEL_23:
  v13 = 0;
LABEL_36:

LABEL_37:

  return v13;
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_callPIRWithQuery:(id)query hitError:(BOOL *)error
{
  queryCopy = query;
  geoList = 0;
  if (queryCopy && self->_pirClient)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = dispatch_time(0, 10000000000);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__15;
    v33 = __Block_byref_object_dispose__15;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15;
    v27 = __Block_byref_object_dispose__15;
    v28 = 0;
    pirClient = self->_pirClient;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__SKGDataDetector__callPIRWithQuery_hitError___block_invoke;
    v19[3] = &unk_27893E7F0;
    v21 = &v23;
    v22 = &v29;
    v11 = v8;
    v20 = v11;
    [(CMLKeywordPIRClient *)pirClient requestDataByStringKeyword:queryCopy completionHandler:v19];
    if (dispatch_semaphore_wait(v11, v9))
    {
      NSLog(&cfstr_TimedOutWaitin.isa);
    }

    else
    {
      if (!v30[5])
      {
        v13 = objc_alloc(MEMORY[0x277D37B28]);
        v14 = [v13 initWithData:v24[5]];
        if ([v14 hasGeoList])
        {
          geoList = [v14 geoList];
        }

        else if ([v14 hasCompressedGeoList])
        {
          compressedGeoList = [v14 compressedGeoList];
          v18 = 0;
          v16 = [compressedGeoList decompressedDataUsingAlgorithm:3 error:&v18];
          v17 = v18;

          if (v17)
          {
            NSLog(&cfstr_FailedToDecomp.isa, v17);
            geoList = 0;
            *error = 1;
          }

          else
          {
            geoList = [objc_alloc(MEMORY[0x277D37B30]) initWithData:v16];
          }
        }

        else
        {
          geoList = 0;
        }

        goto LABEL_8;
      }

      NSLog(&cfstr_FailedToQueryP.isa, v30[5]);
    }

    geoList = 0;
    *error = 1;
LABEL_8:

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  return geoList;
}

void __46__SKGDataDetector__callPIRWithQuery_hitError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_retrieveLocationFromPIR:(id)r locale:(id)locale
{
  v169 = *MEMORY[0x277D85DE8];
  rCopy = r;
  localeCopy = locale;
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedClientListener];
  parsecIsEnabled = [mEMORY[0x277D657A8] parsecIsEnabled];

  v111 = rCopy;
  firstObject2 = 0;
  if (!parsecIsEnabled)
  {
    goto LABEL_133;
  }

  if (!rCopy)
  {
    v10 = 0;
    goto LABEL_134;
  }

  v10 = 0;
  if (!self->_pirClient)
  {
    goto LABEL_134;
  }

  v109 = objc_autoreleasePoolPush();
  v159 = 0;
  country = [rCopy country];

  if (country)
  {
    country2 = [rCopy country];
    v13 = normalizedLocationString(localeCopy, country2);

    v14 = [(SKGDataDetector *)self _callPIRWithQuery:v13 hitError:&v159];
    v15 = convertGeoListToLocations(v14, @"Country");
    v16 = [v15 count];

    if (!v16)
    {
      v17 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v111;
  area = [v111 area];

  v120 = v15;
  selfCopy = self;
  if (area)
  {
    v20 = objc_autoreleasePoolPush();
    area2 = [v111 area];
    v22 = normalizedLocationString(localeCopy, area2);

    v23 = [(SKGDataDetector *)self _callPIRWithQuery:v22 hitError:&v159];
    v24 = convertGeoListToLocations(v23, @"State");
    v105 = v22;
    context = v20;
    v102 = [v24 count];
    v103 = v23;
    v101 = v24;
    if (v102)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      obj = v24;
      v118 = [obj countByEnumeratingWithState:&v155 objects:v168 count:{16, v24}];
      v17 = 0;
      if (v118)
      {
        v116 = *v156;
        do
        {
          for (i = 0; i != v118; ++i)
          {
            if (*v156 != v116)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v155 + 1) + 8 * i);
            v151 = 0u;
            v152 = 0u;
            v153 = 0u;
            v154 = 0u;
            v125 = v15;
            v27 = [v125 countByEnumeratingWithState:&v151 objects:v167 count:16];
            if (v27)
            {
              v28 = v27;
              v121 = i;
              v123 = v17;
              v29 = *v152;
              while (2)
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v152 != v29)
                  {
                    objc_enumerationMutation(v125);
                  }

                  v31 = *(*(&v151 + 1) + 8 * j);
                  address = [v26 address];
                  countryCode = [address countryCode];
                  v34 = countryCode;
                  if (countryCode)
                  {
                    country3 = countryCode;
                  }

                  else
                  {
                    address2 = [v26 address];
                    country3 = [address2 country];
                  }

                  address3 = [v31 address];
                  countryCode2 = [address3 countryCode];
                  v39 = countryCode2;
                  if (countryCode2)
                  {
                    country4 = countryCode2;
                  }

                  else
                  {
                    address4 = [v31 address];
                    country4 = [address4 country];
                  }

                  if (country3 && country4 && [country3 isEqualToString:country4])
                  {
                    v149 = 0u;
                    v150 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    expansions = [v31 expansions];
                    v43 = [expansions countByEnumeratingWithState:&v147 objects:v166 count:16];
                    v17 = v123;
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v148;
                      do
                      {
                        for (k = 0; k != v44; ++k)
                        {
                          if (*v148 != v45)
                          {
                            objc_enumerationMutation(expansions);
                          }

                          [v26 addExpansion:*(*(&v147 + 1) + 8 * k)];
                        }

                        v44 = [expansions countByEnumeratingWithState:&v147 objects:v166 count:16];
                      }

                      while (v44);
                    }

                    if (!v123)
                    {
                      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    }

                    [v17 addObject:v26];

                    v15 = v120;
                    goto LABEL_43;
                  }
                }

                v28 = [v125 countByEnumeratingWithState:&v151 objects:v167 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }

              v15 = v120;
              v17 = v123;
LABEL_43:
              i = v121;
            }
          }

          v118 = [obj countByEnumeratingWithState:&v155 objects:v168 count:16];
        }

        while (v118);
      }
    }

    else
    {
      v17 = 0;
    }

    objc_autoreleasePoolPop(context);
    if (!v102)
    {
LABEL_54:
      v50 = 0;
      v51 = 0;
      firstObject2 = 0;
      goto LABEL_131;
    }

    v18 = v111;
  }

  else
  {
    v17 = 0;
  }

  city = [v18 city];
  if (!city)
  {
    goto LABEL_124;
  }

  v48 = city;
  area3 = [v18 area];
  if (area3)
  {
  }

  else
  {
    country5 = [v18 country];

    if (!country5)
    {
      v50 = 0;
      goto LABEL_125;
    }
  }

  contexta = objc_autoreleasePoolPush();
  city2 = [v111 city];
  v54 = normalizedLocationString(localeCopy, city2);

  v106 = v54;
  v104 = [(SKGDataDetector *)selfCopy _callPIRWithQuery:v54 hitError:&v159];
  convertGeoListToLocations(v104, @"City");
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v113 = v146 = 0u;
  v119 = [v113 countByEnumeratingWithState:&v143 objects:v165 count:16];
  if (!v119)
  {
    v117 = 0;
    goto LABEL_121;
  }

  obja = *v144;
  v117 = 0;
  v124 = v17;
  do
  {
    for (m = 0; m != v119; ++m)
    {
      if (*v144 != obja)
      {
        objc_enumerationMutation(v113);
      }

      v56 = *(*(&v143 + 1) + 8 * m);
      if ([v17 count])
      {
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v126 = v17;
        v57 = [v126 countByEnumeratingWithState:&v139 objects:v164 count:16];
        if (v57)
        {
          v58 = v57;
          v122 = m;
          v59 = *v140;
          while (2)
          {
            for (n = 0; n != v58; ++n)
            {
              if (*v140 != v59)
              {
                objc_enumerationMutation(v126);
              }

              v61 = *(*(&v139 + 1) + 8 * n);
              address5 = [v56 address];
              areaCode = [address5 areaCode];
              v64 = areaCode;
              if (areaCode)
              {
                area4 = areaCode;
              }

              else
              {
                address6 = [v56 address];
                area4 = [address6 area];
              }

              address7 = [v61 address];
              areaCode2 = [address7 areaCode];
              v69 = areaCode2;
              if (areaCode2)
              {
                area5 = areaCode2;
              }

              else
              {
                address8 = [v61 address];
                area5 = [address8 area];
              }

              if (area4 && area5 && [area4 isEqualToString:area5])
              {
                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
                expansions2 = [v61 expansions];
                v86 = [expansions2 countByEnumeratingWithState:&v135 objects:v163 count:16];
                v17 = v124;
                if (v86)
                {
                  v87 = v86;
                  v88 = *v136;
                  do
                  {
                    for (ii = 0; ii != v87; ++ii)
                    {
                      if (*v136 != v88)
                      {
                        objc_enumerationMutation(expansions2);
                      }

                      [v56 addExpansion:*(*(&v135 + 1) + 8 * ii)];
                    }

                    v87 = [expansions2 countByEnumeratingWithState:&v135 objects:v163 count:16];
                  }

                  while (v87);
                }

                goto LABEL_112;
              }
            }

            v58 = [v126 countByEnumeratingWithState:&v139 objects:v164 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }

LABEL_96:
          v15 = v120;
          v17 = v124;
LABEL_115:
          m = v122;
        }
      }

      else
      {
        if (![v15 count])
        {
          continue;
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v126 = v15;
        v72 = [v126 countByEnumeratingWithState:&v131 objects:v162 count:16];
        if (v72)
        {
          v73 = v72;
          v122 = m;
          v74 = *v132;
          while (2)
          {
            for (jj = 0; jj != v73; ++jj)
            {
              if (*v132 != v74)
              {
                objc_enumerationMutation(v126);
              }

              v76 = *(*(&v131 + 1) + 8 * jj);
              address9 = [v56 address];
              countryCode3 = [address9 countryCode];
              v79 = countryCode3;
              if (countryCode3)
              {
                area4 = countryCode3;
              }

              else
              {
                address10 = [v56 address];
                area4 = [address10 country];
              }

              address11 = [v76 address];
              countryCode4 = [address11 countryCode];
              v83 = countryCode4;
              if (countryCode4)
              {
                area5 = countryCode4;
              }

              else
              {
                address12 = [v76 address];
                area5 = [address12 country];
              }

              if (area4 && area5 && [area4 isEqualToString:area5])
              {
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                expansions2 = [v76 expansions];
                v90 = [expansions2 countByEnumeratingWithState:&v127 objects:v161 count:16];
                v17 = v124;
                if (v90)
                {
                  v91 = v90;
                  v92 = *v128;
                  do
                  {
                    for (kk = 0; kk != v91; ++kk)
                    {
                      if (*v128 != v92)
                      {
                        objc_enumerationMutation(expansions2);
                      }

                      [v56 addExpansion:*(*(&v127 + 1) + 8 * kk)];
                    }

                    v91 = [expansions2 countByEnumeratingWithState:&v127 objects:v161 count:16];
                  }

                  while (v91);
                }

LABEL_112:

                v94 = v117;
                if (!v117)
                {
                  v94 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                v117 = v94;
                [v94 addObject:v56];

                v15 = v120;
                goto LABEL_115;
              }
            }

            v73 = [v126 countByEnumeratingWithState:&v131 objects:v162 count:16];
            if (v73)
            {
              continue;
            }

            goto LABEL_96;
          }
        }
      }
    }

    v119 = [v113 countByEnumeratingWithState:&v143 objects:v165 count:16];
  }

  while (v119);
LABEL_121:

  objc_autoreleasePoolPop(contexta);
  if (v117)
  {
    allObjects = [v117 allObjects];
    country5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_110];

    v50 = v117;
    if (country5)
    {
      goto LABEL_127;
    }

    goto LABEL_125;
  }

LABEL_124:
  v50 = 0;
  country5 = 0;
LABEL_125:
  if (v17)
  {
    allObjects2 = [v17 allObjects];
    country5 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_112];
  }

LABEL_127:
  if (!country5 && v15)
  {
    v97 = [v15 sortedArrayUsingComparator:&__block_literal_global_114];
    firstObject = [v97 firstObject];
    v160 = firstObject;
    country5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
  }

  firstObject2 = [country5 firstObject];
  [firstObject2 setHitPIRError:v159];

  v51 = 1;
LABEL_131:

  objc_autoreleasePoolPop(v109);
  if (v51)
  {
    [firstObject2 setAddress:v111];
    firstObject2 = firstObject2;
    v10 = firstObject2;
    goto LABEL_134;
  }

LABEL_133:
  v10 = 0;
LABEL_134:

  v99 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_dateFromResult:(id)result referenceDate:(id)date referenceTimezone:(id)timezone
{
  resultCopy = result;
  dateCopy = date;
  timezoneCopy = timezone;
  v18 = 1.0;
  v17 = 0;
  type = [resultCopy type];
  v11 = [type hasPrefix:@"Date"];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [resultCopy dateFromReferenceDate:dateCopy referenceTimezone:timezoneCopy timezoneRef:0 allDayRef:&v17];
  v13 = v12;
  if (v17 == 1)
  {
    v18 = 2.0;
  }

  if (v12)
  {
    lookupDateScore(resultCopy, &v18);
    v14 = [SKGDate alloc];
    v15 = [(SKGEntity *)v14 initWithScore:v18];
    [(SKGDate *)v15 setDate:v13];
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15;
}

- (id)_emailAddressFromResult:(id)result
{
  v11 = 0;
  v12 = 0;
  v3 = [result getMailValue:&v12 label:&v11];
  v4 = v12;
  v5 = v11;
  v6 = 0;
  if (v3)
  {
    v6 = [(SKGEntity *)[SKGEmailAddress alloc] initWithScore:1.0];
    lowercaseString = [v4 lowercaseString];
    [(SKGEmailAddress *)v6 setEmail:lowercaseString];

    email = [(SKGEmailAddress *)v6 email];
    v9 = [email componentsSeparatedByString:@"@"];
    [(SKGEmailAddress *)v6 setComponents:v9];
  }

  return v6;
}

- (id)_phoneNumberDigitsFromResult:(id)result
{
  v27[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v4 = [result getPhoneValue:&v26 label:&v25];
  v5 = v26;
  v6 = v25;
  v7 = 0;
  if (v4)
  {
    v8 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
    if (v8)
    {
      if (v6)
      {
        if ([v6 isEqualToString:@"Other"])
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 2.0;
        }
      }

      else
      {
        v9 = 1.0;
      }

      countryCode = [v8 countryCode];
      if (countryCode)
      {
        v11 = MEMORY[0x277CBDB70];
        countryCode2 = [v8 countryCode];
        v13 = [v11 dialingCodeForISOCountryCode:countryCode2];
      }

      else
      {
        v13 = 0;
      }

      unformattedInternationalStringValue = [v8 unformattedInternationalStringValue];
      v15 = [unformattedInternationalStringValue stringByRemovingCharactersFromSet:self->_punctuation];

      stringByRemovingWhitespace = [v15 stringByRemovingWhitespace];

      v17 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      if (v13 && stringByRemovingWhitespace)
      {
        v18 = [stringByRemovingWhitespace rangeOfString:v13];
      }

      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = stringByRemovingWhitespace;
      }

      else
      {
        v19 = [stringByRemovingWhitespace stringByReplacingOccurrencesOfString:v13 withString:&stru_2846CE8D8 options:8 range:{v18, v17}];
      }

      v20 = v19;
      v7 = [(SKGEntity *)[SKGPhoneNumber alloc] initWithScore:v9];
      v21 = [v13 stringByReplacingOccurrencesOfString:@"+" withString:&stru_2846CE8D8];
      -[SKGPhoneNumber setCountryCodeValue:](v7, "setCountryCodeValue:", [v21 integerValue]);

      [(SKGPhoneNumber *)v7 setPhoneNumberValue:stringByRemovingWhitespace];
      if (v20)
      {
        v27[0] = v20;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        [(SKGPhoneNumber *)v7 setSynonyms:v22];
      }

      else
      {
        [(SKGPhoneNumber *)v7 setSynonyms:0];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_flightFromResult:(id)result
{
  resultCopy = result;
  v11 = 0;
  v12 = 0;
  v4 = [resultCopy getFlightNumber:&v12 airline:&v11];
  v5 = v12;
  v6 = v11;
  v7 = 0;
  if (v4)
  {
    v7 = [(SKGEntity *)[SKGFlight alloc] initWithScore:1.0];
    value = [resultCopy value];
    [(SKGFlight *)v7 setFlight:value];

    if (v5)
    {
      if (v6)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v5];
        [(SKGFlight *)v7 addComponent:v9];
      }
    }
  }

  return v7;
}

- (id)_linkFromResult:(id)result
{
  resultCopy = result;
  type = [resultCopy type];
  v5 = [&unk_2846E81A8 containsObject:type];

  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    value = [resultCopy value];
    v8 = [v6 URLWithString:value];

    host = [v8 host];

    if (host)
    {
      type2 = [resultCopy type];
      if ([type2 isEqualToString:@"HttpURL"])
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 1.0;
      }

      v12 = [SKGLink alloc];
      value2 = [resultCopy value];
      host = -[SKGEntity initWithScore:](v12, "initWithScore:", v11 + [value2 length]);

      value3 = [resultCopy value];
      lowercaseString = [value3 lowercaseString];
      [(SKGLink *)host setLink:lowercaseString];

      host2 = [v8 host];
      lowercaseString2 = [host2 lowercaseString];
      [(SKGLink *)host setDomain:lowercaseString2];
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

- (id)_trackingNumberFromResult:(id)result
{
  v10 = 0;
  v11 = 0;
  v3 = [result getTrackingNumber:&v11 carrier:&v10];
  v4 = v11;
  v5 = v10;
  v6 = v5;
  if (!v3 || (v4 ? (v7 = v5 == 0) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(SKGEntity *)[SKGTrackingNumber alloc] initWithScore:1.0];
    [(SKGTrackingNumber *)v8 setTrackingNumber:v4];
    [(SKGTrackingNumber *)v8 setCarrier:v6];
  }

  return v8;
}

- (id)_currencyFromResult:(id)result
{
  resultCopy = result;
  v12 = 0;
  v13 = 0.0;
  v4 = [resultCopy getMoneyAmount:&v13 currency:&v12];
  v5 = v12;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    CurrencyCode = SICurrenciesGetCurrencyCode();
    if (CurrencyCode)
    {
      v9 = CurrencyCode;
      v7 = [(SKGEntity *)[SKGCurrency alloc] initWithScore:1.0];
      value = [resultCopy value];
      [(SKGCurrency *)v7 setAmount:value];

      [(SKGCurrency *)v7 setValue:v13];
      [(SKGCurrency *)v7 setCode:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)enumerateDetectedDataInString:(id)string locale:(id)locale referenceDate:(id)date referenceTimezone:(id)timezone entityCategories:(id)categories entityBlock:(id)block rangeBlock:(id)rangeBlock
{
  v67 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  localeCopy = locale;
  dateCopy = date;
  timezoneCopy = timezone;
  categoriesCopy = categories;
  blockCopy = block;
  rangeBlockCopy = rangeBlock;
  if (!stringCopy || ![stringCopy length])
  {
    v47 = 1;
    goto LABEL_55;
  }

  v56 = timezoneCopy;
  v57 = dateCopy;
  v55 = localeCopy;
  [(SKGDataDetector *)self loadDetector];
  v65 = 0;
  context = objc_autoreleasePoolPush();
  v54 = stringCopy;
  [MEMORY[0x277D04220] scanString:stringCopy range:0 configuration:{objc_msgSend(stringCopy, "length"), self->_config}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v20 = v64 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (!v21)
  {
    goto LABEL_53;
  }

  v22 = v21;
  v23 = *v62;
  v24 = *MEMORY[0x277D040D8];
  v51 = *MEMORY[0x277D040D8];
  v52 = *MEMORY[0x277D040D0];
  v58 = v20;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v62 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v61 + 1) + 8 * i);
      if ([v26 category] == 4)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BA8])
        {
          v27 = objc_autoreleasePoolPush();
          v28 = [(SKGDataDetector *)self _dateFromResult:v26 referenceDate:v57 referenceTimezone:v56];
          goto LABEL_12;
        }
      }

      else if ([v26 category] == 1)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B60])
        {
          v27 = objc_autoreleasePoolPush();
          type = [v26 type];
          v31 = [type containsString:@"Email"];

          if (v31)
          {
            [(SKGDataDetector *)self _emailAddressFromResult:v26];
          }

          else
          {
            [(SKGDataDetector *)self _linkFromResult:v26];
          }
          v28 = ;
LABEL_12:
          v29 = v28;
          if (v28)
          {
            blockCopy[2](blockCopy, v28, &v65);
          }

          objc_autoreleasePoolPop(v27);
          v20 = v58;
        }
      }

      else if ([v26 category] == 2)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B78])
        {
          v27 = objc_autoreleasePoolPush();
          v28 = [(SKGDataDetector *)self _phoneNumberDigitsFromResult:v26];
          goto LABEL_12;
        }
      }

      else
      {
        if ([v26 category] == 3)
        {
          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B90])
          {
            v32 = objc_autoreleasePoolPush();
            v33 = [(SKGDataDetector *)self _addressFromResult:v26];
            if (v33)
            {
              v34 = v32;
              if (v55 && ([(SKGDataDetector *)self locationFromAddress:v33 locale:?], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v36 = v35;
                blockCopy[2](blockCopy, v35, &v65);
              }

              else
              {
                blockCopy[2](blockCopy, v33, &v65);
              }

              v32 = v34;
            }

            v42 = v65;

            objc_autoreleasePoolPop(v32);
            v20 = v58;
            if (v42)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_49;
        }

        if ([v26 category] == 6)
        {
          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BD8])
          {
            v27 = objc_autoreleasePoolPush();
            v28 = [(SKGDataDetector *)self _currencyFromResult:v26];
            goto LABEL_12;
          }
        }

        else
        {
          if ([v26 category] != 5)
          {
            goto LABEL_50;
          }

          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BC0])
          {
            v27 = objc_autoreleasePoolPush();
            [v26 coreResult];
            if ((DDResultHasType() & 1) != 0 || ([v26 coreResult], DDResultHasType()))
            {
              v37 = objc_autoreleasePoolPush();
              v38 = [(SKGDataDetector *)self _flightFromResult:v26];
              if (v38)
              {
                blockCopy[2](blockCopy, v38, &v65);
              }

              objc_autoreleasePoolPop(v37);
              range = [v26 range];
              v40 = v39;
              type2 = [v26 type];
              rangeBlockCopy[2](rangeBlockCopy, range, v40, type2, &v65);
            }

            v28 = [(SKGDataDetector *)self _trackingNumberFromResult:v26];
            goto LABEL_12;
          }
        }
      }

LABEL_49:
      range2 = [v26 range];
      v45 = v44;
      type3 = [v26 type];
      rangeBlockCopy[2](rangeBlockCopy, range2, v45, type3, &v65);

LABEL_50:
      if (v65)
      {
        goto LABEL_53;
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v61 objects:v66 count:16];
  }

  while (v22);
LABEL_53:

  objc_autoreleasePoolPop(context);
  v47 = v65 ^ 1;
  stringCopy = v54;
  localeCopy = v55;
  timezoneCopy = v56;
  dateCopy = v57;
LABEL_55:

  v48 = *MEMORY[0x277D85DE8];
  return v47 & 1;
}

- (BOOL)enumerateAirportCodesInStringUsingGeoScanner:(id)scanner entityBlock:(id)block
{
  v76 = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  blockCopy = block;
  v74 = 0;
  v8 = 1;
  v67 = blockCopy;
  if (blockCopy)
  {
    if (self->_geoScanner)
    {
      if (DDScannerScanString())
      {
        geoScanner = self->_geoScanner;
        v10 = DDScannerCopyResultsWithOptions();
        if (v10)
        {
          v11 = v10;
          selfCopy = self;
          v63 = scannerCopy;
          v61 = objc_autoreleasePoolPush();
          Count = CFArrayGetCount(v11);
          v60[1] = v60;
          MEMORY[0x28223BE20]();
          v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v14, v13);
          v62 = v11;
          v77.location = 0;
          v77.length = Count;
          v68 = v14;
          CFArrayGetValues(v11, v77, v14);
          v65 = Count;
          if (Count < 1)
          {
            array = 0;
          }

          else
          {
            array = 0;
            v16 = 0;
            do
            {
              v17 = v68[v16];
              Type = DDResultGetType();
              if (CFStringHasSuffix(Type, @"AirportCode"))
              {
                v19 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:1.0];
                v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", DDResultGetMatchedString()];
                uppercaseString = [v20 uppercaseString];
                [(SKGNamedLocation *)v19 setLocation:uppercaseString];

                (*(v67 + 2))(v67, v19, &v74);
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                }

                location = [(SKGNamedLocation *)v19 location];
                [array addObject:location];

                v23 = v74;
                if (v23)
                {
                  break;
                }
              }

              SubResults = DDResultGetSubResults();
              if (SubResults)
              {
                v25 = SubResults;
                v26 = CFArrayGetCount(SubResults);
                if (v26)
                {
                  v27 = v26;
                  v28 = array;
                  v64 = v60;
                  MEMORY[0x28223BE20]();
                  v30 = (v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
                  bzero(v30, v29);
                  v78.location = 0;
                  v78.length = v27;
                  CFArrayGetValues(v25, v78, v30);
                  if (v27 >= 1)
                  {
                    do
                    {
                      v31 = *v30;
                      v32 = DDResultGetType();
                      if (CFStringHasSuffix(v32, @"AirportCode"))
                      {
                        v33 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:2.0];
                        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", DDResultGetMatchedString()];
                        uppercaseString2 = [v34 uppercaseString];
                        [(SKGNamedLocation *)v33 setLocation:uppercaseString2];

                        (*(v67 + 2))(v67, v33, &v74);
                        array2 = v28;
                        if (!v28)
                        {
                          array2 = [MEMORY[0x277CBEB18] array];
                        }

                        location2 = [(SKGNamedLocation *)v33 location];
                        v28 = array2;
                        [array2 addObject:location2];

                        v38 = v74;
                        if (v38)
                        {
                          break;
                        }
                      }

                      ++v30;
                      --v27;
                    }

                    while (v27);
                  }

                  array = v28;
                }
              }

              if (v74)
              {
                break;
              }

              ++v16;
            }

            while (v16 != v65);
          }

          objc_autoreleasePoolPop(v61);
          CFRelease(v62);
          if (array)
          {
            v73 = 0;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v64 = array;
            v68 = array;
            v39 = [v68 countByEnumeratingWithState:&v69 objects:v75 count:16];
            v40 = selfCopy;
            if (v39)
            {
              v41 = v39;
              v42 = *v70;
              v65 = v67 + 16;
              v43 = 1;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v70 != v42)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v45 = *(*(&v69 + 1) + 8 * i);
                  lowercaseString = [v45 lowercaseString];
                  v47 = [(SKGDataDetector *)v40 _callPIRWithQuery:lowercaseString hitError:&v73];

                  if (v47)
                  {
                    v48 = convertGeoListToLocations(v47, @"transportation.airport");
                    if ([v48 count])
                    {
                      firstObject = [v48 firstObject];
                      [firstObject setHitPIRError:v73];
                      v50 = [(SKGEntity *)[SKGAirportLocation alloc] initWithScore:2.0];
                      [(SKGAirportLocation *)v50 setAirportCode:v45];
                      address = [firstObject address];
                      area = [address area];
                      [(SKGAirportLocation *)v50 setAirportRegion:area];

                      address2 = [firstObject address];
                      city = [address2 city];
                      [(SKGAirportLocation *)v50 setAirportLocality:city];

                      address3 = [firstObject address];
                      country = [address3 country];
                      [(SKGAirportLocation *)v50 setAirportCountry:country];

                      [(SKGAirportLocation *)v50 setIsDepartureAirport:v43 & 1];
                      v57 = v67;
                      (*(v67 + 2))(v67, v50, &v74);
                      (*(v57 + 2))(v57, firstObject, &v74);

                      v40 = selfCopy;
                      v43 = 0;
                    }
                  }
                }

                v41 = [v68 countByEnumeratingWithState:&v69 objects:v75 count:16];
              }

              while (v41);
            }

            array = v64;
          }

          v8 = v74 ^ 1;
          scannerCopy = v63;
        }
      }
    }
  }

  v58 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)enumerateLocationsInString:(id)string locale:(id)locale latitude:(double)latitude longitude:(double)longitude entityBlock:(id)block
{
  stringCopy = string;
  localeCopy = locale;
  blockCopy = block;
  if (stringCopy && [stringCopy length])
  {
    v15 = [stringCopy length];
    v16 = 1;
    if (blockCopy)
    {
      if (v15 <= 0x64)
      {
        v30 = 0;
        [(SKGDataDetector *)self loadDetector];
        if (self->_geoIndex)
        {
          v17 = normalizedLocationString(localeCopy, stringCopy);
          if (v17)
          {
            v18 = v17;
            v24 = 0;
            v25 = &v24;
            v26 = 0x3032000000;
            v27 = __Block_byref_object_copy__15;
            v28 = __Block_byref_object_dispose__15;
            v29 = 0;
            geoIndex = self->_geoIndex;
            v22 = MEMORY[0x277D85DD0];
            v23 = stringCopy;
            SIGeoIndexEnumerateGeoIDForString();
            v20 = v25[5];
            if (v20)
            {
              [(SKGDataDetector *)self _lookupExpansionsFromLocalCacheWithLocation:v20 locale:localeCopy, v22, 3221225472, __84__SKGDataDetector_enumerateLocationsInString_locale_latitude_longitude_entityBlock___block_invoke, &unk_27893E818, self, v23, &v24, *&latitude, *&longitude];
              blockCopy[2](blockCopy, v25[5], &v30);
            }

            _Block_object_dispose(&v24, 8);
            v16 = v30 ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void __84__SKGDataDetector_enumerateLocationsInString_locale_latitude_longitude_entityBlock___block_invoke(uint64_t a1, double a2)
{
  v17 = 0;
  v4 = *(*(a1 + 32) + 24);
  if (SIGeoIndexLookupEntry())
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = *(a1 + 56);
      if (round(0.0) == round(v6) && round(0.0) == round(*(a1 + 64)))
      {
        goto LABEL_9;
      }
    }

    v7 = 0.0 - v6;
    [v5 lat];
    if (v7 >= 0.0 - v8)
    {
      return;
    }

    v9 = 0.0 - *(a1 + 64);
    [*(*(*(a1 + 48) + 8) + 40) lng];
    if (v9 >= 0.0 - v10)
    {
      return;
    }

LABEL_9:
    v11 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a2];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:v17];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:HIDWORD(v17)];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:0];
    [*(*(*(a1 + 48) + 8) + 40) setLat:0.0];
    [*(*(*(a1 + 48) + 8) + 40) setLng:0.0];
    v14 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
    [*(*(*(a1 + 48) + 8) + 40) setAddress:v14];

    v15 = *(a1 + 40);
    v16 = [*(*(*(a1 + 48) + 8) + 40) address];
    [v16 setAddress:v15];
  }
}

- (BOOL)enumerateLocationStrings:(id)strings locale:(id)locale entityBlock:(id)block
{
  stringsCopy = strings;
  localeCopy = locale;
  blockCopy = block;
  if (stringsCopy)
  {
    v11 = [stringsCopy length];
    v12 = 1;
    if (blockCopy)
    {
      if (v11)
      {
        v18 = 0;
        [(SKGDataDetector *)self loadDetector];
        if (self->_geoIndex)
        {
          v13 = normalizedLocationString(localeCopy, stringsCopy);
          if (v13)
          {
            geoIndex = self->_geoIndex;
            if (SIGeoIndexContainsStringKeyForLocale())
            {
              v15 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:1.0];
              localizedLowercaseString = [stringsCopy localizedLowercaseString];
              [(SKGNamedLocation *)v15 setLocation:localizedLowercaseString];

              blockCopy[2](blockCopy, v15, &v18);
            }
          }

          v12 = v18 ^ 1;
        }
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)dealloc
{
  if (self->_geoIndex)
  {
    SIGeoIndexRelease();
  }

  geoScanner = self->_geoScanner;
  if (geoScanner)
  {
    CFRelease(geoScanner);
  }

  v4.receiver = self;
  v4.super_class = SKGDataDetector;
  [(SKGDataDetector *)&v4 dealloc];
}

@end