@interface PPLocationStore
+ (id)_mergedThoroughfareForThorughfare:(id)thorughfare subThoroughfare:(id)thoroughfare subPremises:(id)premises;
+ (id)defaultStore;
+ (id)describeLocationConsumer:(unint64_t)consumer;
+ (id)placemarkWithLatitudeDegrees:(id)degrees longitudeDegrees:(id)longitudeDegrees name:(id)name thoroughfare:(id)thoroughfare subthoroughFare:(id)fare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)self0 subAdministrativeArea:(id)self1 postalCode:(id)self2 countryCode:(id)self3 country:(id)self4 inlandWater:(id)self5 ocean:(id)self6 areasOfInterest:(id)self7;
+ (id)placemarkWithLocation:(id)location name:(id)name thoroughfare:(id)thoroughfare subthoroughFare:(id)fare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)self0 postalCode:(id)self1 countryCode:(id)self2 country:(id)self3 inlandWater:(id)self4 ocean:(id)self5 areasOfInterest:(id)self6;
+ (id)placemarkWithName:(id)name clLocation:(id)location;
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterRankedLocationsWithQuery:(id)query error:(id *)error block:(id)block;
- (PPLocationStore)init;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)locationRecordsWithQuery:(id)query error:(id *)error;
- (id)rankedLocationsWithQuery:(id)query error:(id *)error;
- (void)registerFeedback:(id)feedback clientIdentifier:(id)identifier completion:(id)completion;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPLocationStore

- (PPLocationStore)init
{
  v6.receiver = self;
  v6.super_class = PPLocationStore;
  v2 = [(PPLocationStore *)&v6 init];
  if (v2)
  {
    v3 = [[PPClientFeedbackHelper alloc] initWithParentObject:v2];
    clientFeedbackHelper = v2->_clientFeedbackHelper;
    v2->_clientFeedbackHelper = v3;
  }

  return v2;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  clientFeedbackHelper = self->_clientFeedbackHelper;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_clientFeedbackHelper;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)locationRecordsWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:485 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v8 = objc_opt_new();
  v9 = pp_locations_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_locations_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPLocationStore.locationRecordsWithQuery", "", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__PPLocationStore_locationRecordsWithQuery_error___block_invoke;
  v21[3] = &unk_1E77F6260;
  v22 = v8;
  v13 = v8;
  v14 = [(PPLocationStore *)self iterLocationRecordsWithQuery:queryCopy error:error block:v21];
  v15 = pp_locations_signpost_handle();
  v16 = v15;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v16, OS_SIGNPOST_INTERVAL_END, v10, "PPLocationStore.locationRecordsWithQuery", "", buf, 2u);
  }

  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v11 = blockCopy;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v12 = pp_locations_signpost_handle();
  v13 = os_signpost_id_generate(v12);

  v14 = pp_locations_signpost_handle();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PPLocationStore.iterLocationRecordsWithQuery", "", buf, 2u);
  }

  v16 = +[PPLocationReadOnlyClient sharedInstance];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__PPLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke;
  v24[3] = &unk_1E77F6210;
  v26 = v28;
  v17 = v11;
  v25 = v17;
  v18 = [v16 locationRecordsWithQuery:queryCopy error:error handleBatch:v24];

  v19 = pp_locations_signpost_handle();
  v20 = v19;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v20, OS_SIGNPOST_INTERVAL_END, v13, "PPLocationStore.iterLocationRecordsWithQuery", "", buf, 2u);
  }

  _Block_object_dispose(v28, 8);
  return v18;
}

void __60__PPLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = *(*(a1 + 40) + 8);
          (*(*(a1 + 32) + 16))(*(a1 + 32));
          if (*(*(*(a1 + 40) + 8) + 24) == 1)
          {
            *a3 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)rankedLocationsWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v8 = objc_opt_new();
  v9 = pp_locations_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_locations_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PPLocationStore.rankedLocationsWithQuery", "", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__PPLocationStore_rankedLocationsWithQuery_error___block_invoke;
  v21[3] = &unk_1E77F6238;
  v22 = v8;
  v13 = v8;
  v14 = [(PPLocationStore *)self iterRankedLocationsWithQuery:queryCopy error:error block:v21];
  v15 = pp_locations_signpost_handle();
  v16 = v15;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v16, OS_SIGNPOST_INTERVAL_END, v10, "PPLocationStore.rankedLocationsWithQuery", "", buf, 2u);
  }

  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (BOOL)iterRankedLocationsWithQuery:(id)query error:(id *)error block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v11 = blockCopy;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v12 = pp_locations_signpost_handle();
  v13 = os_signpost_id_generate(v12);

  v14 = pp_locations_signpost_handle();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PPLocationStore.iterRankedLocationsWithQuery", "", buf, 2u);
  }

  v16 = +[PPLocationReadOnlyClient sharedInstance];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__PPLocationStore_iterRankedLocationsWithQuery_error_block___block_invoke;
  v24[3] = &unk_1E77F6210;
  v26 = v28;
  v17 = v11;
  v25 = v17;
  v18 = [v16 rankedLocationsWithQuery:queryCopy error:error handleBatch:v24];

  v19 = pp_locations_signpost_handle();
  v20 = v19;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v20, OS_SIGNPOST_INTERVAL_END, v13, "PPLocationStore.iterRankedLocationsWithQuery", "", buf, 2u);
  }

  _Block_object_dispose(v28, 8);
  return v18;
}

void __60__PPLocationStore_iterRankedLocationsWithQuery_error_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = *(*(a1 + 40) + 8);
          (*(*(a1 + 32) + 16))(*(a1 + 32));
          if (*(*(*(a1 + 40) + 8) + 24) == 1)
          {
            *a3 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v6 = +[PPLocationReadWriteClient sharedInstance];
  LOBYTE(count) = [v6 clearWithError:error deletedCount:count];

  return count;
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v4 = +[PPLocationReadWriteClient sharedInstance];
  LOBYTE(error) = [v4 cloudSyncWithError:error];

  return error;
}

- (void)registerFeedback:(id)feedback clientIdentifier:(id)identifier completion:(id)completion
{
  feedbackCopy = feedback;
  identifierCopy = identifier;
  completionCopy = completion;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:365 description:@"clientIdentifier must not be nil or zero length"];
  }

  if ([identifierCopy length] >= 0xB)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:366 description:{@"clientIdentifier was longer than %d characters.  Please choose a shorter identifer", 10}];
  }

  if ([feedbackCopy isMapped])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:368 description:@"You cannot send mapped feedback on locations. Please use PPFeedback to create the feedback for locations."];
  }

  [feedbackCopy setClientIdentifier:identifierCopy];
  v12 = +[PPLocationReadOnlyClient sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PPLocationStore_registerFeedback_clientIdentifier_completion___block_invoke;
  v17[3] = &unk_1E77F7D98;
  v17[4] = self;
  v18 = completionCopy;
  v13 = completionCopy;
  [v12 registerFeedback:feedbackCopy completion:v17];
}

uint64_t __64__PPLocationStore_registerFeedback_clientIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, a3);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  clientIdentifier = [(PPLocationStore *)self clientIdentifier];
  v10 = [clientIdentifier length];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:352 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v13}];
  }

  clientIdentifier2 = [(PPLocationStore *)self clientIdentifier];
  [(PPLocationStore *)self registerFeedback:feedbackCopy clientIdentifier:clientIdentifier2 completion:completionCopy];
}

+ (id)describeLocationConsumer:(unint64_t)consumer
{
  if (consumer - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77F6280[consumer - 1];
  }
}

+ (id)placemarkWithName:(id)name clLocation:(id)location
{
  if (name | location)
  {
    v5 = [self placemarkWithLocation:location name:name thoroughfare:0 subthoroughFare:0 locality:0 subLocality:0 administrativeArea:0 subAdministrativeArea:0 postalCode:0 countryCode:0 country:0 inlandWater:0 ocean:0 areasOfInterest:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)placemarkWithLatitudeDegrees:(id)degrees longitudeDegrees:(id)longitudeDegrees name:(id)name thoroughfare:(id)thoroughfare subthoroughFare:(id)fare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)self0 subAdministrativeArea:(id)self1 postalCode:(id)self2 countryCode:(id)self3 country:(id)self4 inlandWater:(id)self5 ocean:(id)self6 areasOfInterest:(id)self7
{
  nameCopy = name;
  thoroughfareCopy = thoroughfare;
  fareCopy = fare;
  localityCopy = locality;
  subLocalityCopy = subLocality;
  degreesCopy = degrees;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  codeCopy = code;
  countryCodeCopy = countryCode;
  countryCopy = country;
  waterCopy = water;
  oceanCopy = ocean;
  interestCopy = interest;
  v29 = 0;
  if (degrees && longitudeDegrees)
  {
    v30 = MEMORY[0x1E6985C40];
    v31 = interestCopy;
    longitudeDegreesCopy = longitudeDegrees;
    v33 = degreesCopy;
    v34 = [v30 alloc];
    [v33 doubleValue];
    v36 = v35;

    [longitudeDegreesCopy doubleValue];
    v38 = v37;

    v29 = [v34 initWithLatitude:v36 longitude:v38];
    interestCopy = v31;
  }

  v39 = interestCopy;
  v43 = [self placemarkWithLocation:v29 name:nameCopy thoroughfare:thoroughfareCopy subthoroughFare:fareCopy locality:localityCopy subLocality:subLocalityCopy administrativeArea:areaCopy subAdministrativeArea:administrativeAreaCopy postalCode:codeCopy countryCode:countryCodeCopy country:countryCopy inlandWater:waterCopy ocean:oceanCopy areasOfInterest:interestCopy];

  return v43;
}

+ (id)placemarkWithLocation:(id)location name:(id)name thoroughfare:(id)thoroughfare subthoroughFare:(id)fare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)self0 postalCode:(id)self1 countryCode:(id)self2 country:(id)self3 inlandWater:(id)self4 ocean:(id)self5 areasOfInterest:(id)self6
{
  interestCopy = interest;
  oceanCopy = ocean;
  waterCopy = water;
  countryCopy = country;
  countryCodeCopy = countryCode;
  codeCopy = code;
  administrativeAreaCopy = administrativeArea;
  areaCopy = area;
  subLocalityCopy = subLocality;
  localityCopy = locality;
  fareCopy = fare;
  thoroughfareCopy = thoroughfare;
  nameCopy = name;
  locationCopy = location;
  v28 = objc_opt_new();
  [v28 setObject:nameCopy forKeyedSubscript:@"Name"];

  [v28 setObject:thoroughfareCopy forKeyedSubscript:@"Thoroughfare"];
  [v28 setObject:fareCopy forKeyedSubscript:@"SubThoroughfare"];
  [v28 setObject:localityCopy forKeyedSubscript:@"City"];

  [v28 setObject:subLocalityCopy forKeyedSubscript:@"SubLocality"];
  [v28 setObject:areaCopy forKeyedSubscript:@"State"];

  [v28 setObject:administrativeAreaCopy forKeyedSubscript:@"SubAdministrativeArea"];
  [v28 setObject:codeCopy forKeyedSubscript:@"ZIP"];

  [v28 setObject:countryCodeCopy forKeyedSubscript:@"CountryCode"];
  [v28 setObject:countryCopy forKeyedSubscript:@"Country"];

  [v28 setObject:waterCopy forKeyedSubscript:@"InlandWater"];
  [v28 setObject:oceanCopy forKeyedSubscript:@"Ocean"];

  v29 = [self _mergedThoroughfareForThorughfare:thoroughfareCopy subThoroughfare:fareCopy subPremises:MEMORY[0x1E695E0F0]];

  [v28 setObject:v29 forKeyedSubscript:@"Street"];
  v30 = [objc_alloc(MEMORY[0x1E695FC20]) initWithLocation:locationCopy addressDictionary:v28 region:0 areasOfInterest:interestCopy];

  return v30;
}

+ (id)_mergedThoroughfareForThorughfare:(id)thorughfare subThoroughfare:(id)thoroughfare subPremises:(id)premises
{
  thorughfareCopy = thorughfare;
  thoroughfareCopy = thoroughfare;
  premisesCopy = premises;
  v10 = objc_autoreleasePoolPush();
  if (thorughfareCopy && thoroughfareCopy)
  {
    thorughfareCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", thoroughfareCopy, thorughfareCopy];
  }

  else
  {
    v12 = 0;
    if (!thorughfareCopy || thoroughfareCopy)
    {
      goto LABEL_11;
    }

    thorughfareCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", thorughfareCopy, v17];
  }

  v12 = thorughfareCopy;
  if (thorughfareCopy)
  {
    if ([premisesCopy count])
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [premisesCopy _pas_componentsJoinedByString:@" "];
      v15 = [v13 initWithFormat:@"%@ %@", v12, v14];

      goto LABEL_12;
    }

    [premisesCopy count];
  }

LABEL_11:
  v12 = v12;
  v15 = v12;
LABEL_12:

  objc_autoreleasePoolPop(v10);

  return v15;
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PPLocationStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore__pasOnceToken14 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken14, block);
  }

  v2 = defaultStore__pasExprOnceResult;

  return v2;
}

void __31__PPLocationStore_defaultStore__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = defaultStore__pasExprOnceResult;
  defaultStore__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

@end