@interface PPLocationStore
+ (id)_mergedThoroughfareForThorughfare:(id)a3 subThoroughfare:(id)a4 subPremises:(id)a5;
+ (id)defaultStore;
+ (id)describeLocationConsumer:(unint64_t)a3;
+ (id)placemarkWithLatitudeDegrees:(id)a3 longitudeDegrees:(id)a4 name:(id)a5 thoroughfare:(id)a6 subthoroughFare:(id)a7 locality:(id)a8 subLocality:(id)a9 administrativeArea:(id)a10 subAdministrativeArea:(id)a11 postalCode:(id)a12 countryCode:(id)a13 country:(id)a14 inlandWater:(id)a15 ocean:(id)a16 areasOfInterest:(id)a17;
+ (id)placemarkWithLocation:(id)a3 name:(id)a4 thoroughfare:(id)a5 subthoroughFare:(id)a6 locality:(id)a7 subLocality:(id)a8 administrativeArea:(id)a9 subAdministrativeArea:(id)a10 postalCode:(id)a11 countryCode:(id)a12 country:(id)a13 inlandWater:(id)a14 ocean:(id)a15 areasOfInterest:(id)a16;
+ (id)placemarkWithName:(id)a3 clLocation:(id)a4;
- (BOOL)clearWithError:(id *)a3 deletedCount:(unint64_t *)a4;
- (BOOL)cloudSyncWithError:(id *)a3;
- (BOOL)iterLocationRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)iterRankedLocationsWithQuery:(id)a3 error:(id *)a4 block:(id)a5;
- (PPLocationStore)init;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)locationRecordsWithQuery:(id)a3 error:(id *)a4;
- (id)rankedLocationsWithQuery:(id)a3 error:(id *)a4;
- (void)registerFeedback:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
- (void)registerFeedback:(id)a3 completion:(id)a4;
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

- (id)forwardingTargetForSelector:(SEL)a3
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

- (id)locationRecordsWithQuery:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:485 description:{@"Invalid parameter not satisfying: %@", @"query"}];
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
  v14 = [(PPLocationStore *)self iterLocationRecordsWithQuery:v7 error:a4 block:v21];
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

- (BOOL)iterLocationRecordsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v10)
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
  v18 = [v16 locationRecordsWithQuery:v9 error:a4 handleBatch:v24];

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

- (id)rankedLocationsWithQuery:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"query"}];
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
  v14 = [(PPLocationStore *)self iterRankedLocationsWithQuery:v7 error:a4 block:v21];
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

- (BOOL)iterRankedLocationsWithQuery:(id)a3 error:(id *)a4 block:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v10)
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
  v18 = [v16 rankedLocationsWithQuery:v9 error:a4 handleBatch:v24];

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

- (BOOL)clearWithError:(id *)a3 deletedCount:(unint64_t *)a4
{
  v6 = +[PPLocationReadWriteClient sharedInstance];
  LOBYTE(a4) = [v6 clearWithError:a3 deletedCount:a4];

  return a4;
}

- (BOOL)cloudSyncWithError:(id *)a3
{
  v4 = +[PPLocationReadWriteClient sharedInstance];
  LOBYTE(a3) = [v4 cloudSyncWithError:a3];

  return a3;
}

- (void)registerFeedback:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:365 description:@"clientIdentifier must not be nil or zero length"];
  }

  if ([v10 length] >= 0xB)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:366 description:{@"clientIdentifier was longer than %d characters.  Please choose a shorter identifer", 10}];
  }

  if ([v9 isMapped])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:368 description:@"You cannot send mapped feedback on locations. Please use PPFeedback to create the feedback for locations."];
  }

  [v9 setClientIdentifier:v10];
  v12 = +[PPLocationReadOnlyClient sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PPLocationStore_registerFeedback_clientIdentifier_completion___block_invoke;
  v17[3] = &unk_1E77F7D98;
  v17[4] = self;
  v18 = v11;
  v13 = v11;
  [v12 registerFeedback:v9 completion:v17];
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

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(PPLocationStore *)self clientIdentifier];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PPLocationStore.m" lineNumber:352 description:{@"The clientIdentifier property must be set on the %@ in order to send feedback.", v13}];
  }

  v14 = [(PPLocationStore *)self clientIdentifier];
  [(PPLocationStore *)self registerFeedback:v8 clientIdentifier:v14 completion:v7];
}

+ (id)describeLocationConsumer:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77F6280[a3 - 1];
  }
}

+ (id)placemarkWithName:(id)a3 clLocation:(id)a4
{
  if (a3 | a4)
  {
    v5 = [a1 placemarkWithLocation:a4 name:a3 thoroughfare:0 subthoroughFare:0 locality:0 subLocality:0 administrativeArea:0 subAdministrativeArea:0 postalCode:0 countryCode:0 country:0 inlandWater:0 ocean:0 areasOfInterest:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)placemarkWithLatitudeDegrees:(id)a3 longitudeDegrees:(id)a4 name:(id)a5 thoroughfare:(id)a6 subthoroughFare:(id)a7 locality:(id)a8 subLocality:(id)a9 administrativeArea:(id)a10 subAdministrativeArea:(id)a11 postalCode:(id)a12 countryCode:(id)a13 country:(id)a14 inlandWater:(id)a15 ocean:(id)a16 areasOfInterest:(id)a17
{
  v49 = a5;
  v47 = a6;
  v46 = a7;
  v45 = a8;
  v44 = a9;
  v21 = a3;
  v48 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v29 = 0;
  if (a3 && a4)
  {
    v30 = MEMORY[0x1E6985C40];
    v31 = v28;
    v32 = a4;
    v33 = v21;
    v34 = [v30 alloc];
    [v33 doubleValue];
    v36 = v35;

    [v32 doubleValue];
    v38 = v37;

    v29 = [v34 initWithLatitude:v36 longitude:v38];
    v28 = v31;
  }

  v39 = v28;
  v43 = [a1 placemarkWithLocation:v29 name:v49 thoroughfare:v47 subthoroughFare:v46 locality:v45 subLocality:v44 administrativeArea:v48 subAdministrativeArea:v22 postalCode:v23 countryCode:v24 country:v25 inlandWater:v26 ocean:v27 areasOfInterest:v28];

  return v43;
}

+ (id)placemarkWithLocation:(id)a3 name:(id)a4 thoroughfare:(id)a5 subthoroughFare:(id)a6 locality:(id)a7 subLocality:(id)a8 administrativeArea:(id)a9 subAdministrativeArea:(id)a10 postalCode:(id)a11 countryCode:(id)a12 country:(id)a13 inlandWater:(id)a14 ocean:(id)a15 areasOfInterest:(id)a16
{
  v40 = a16;
  v38 = a15;
  v37 = a14;
  v36 = a13;
  v35 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = objc_opt_new();
  [v28 setObject:v26 forKeyedSubscript:@"Name"];

  [v28 setObject:v25 forKeyedSubscript:@"Thoroughfare"];
  [v28 setObject:v24 forKeyedSubscript:@"SubThoroughfare"];
  [v28 setObject:v23 forKeyedSubscript:@"City"];

  [v28 setObject:v22 forKeyedSubscript:@"SubLocality"];
  [v28 setObject:v21 forKeyedSubscript:@"State"];

  [v28 setObject:v20 forKeyedSubscript:@"SubAdministrativeArea"];
  [v28 setObject:v19 forKeyedSubscript:@"ZIP"];

  [v28 setObject:v35 forKeyedSubscript:@"CountryCode"];
  [v28 setObject:v36 forKeyedSubscript:@"Country"];

  [v28 setObject:v37 forKeyedSubscript:@"InlandWater"];
  [v28 setObject:v38 forKeyedSubscript:@"Ocean"];

  v29 = [a1 _mergedThoroughfareForThorughfare:v25 subThoroughfare:v24 subPremises:MEMORY[0x1E695E0F0]];

  [v28 setObject:v29 forKeyedSubscript:@"Street"];
  v30 = [objc_alloc(MEMORY[0x1E695FC20]) initWithLocation:v27 addressDictionary:v28 region:0 areasOfInterest:v40];

  return v30;
}

+ (id)_mergedThoroughfareForThorughfare:(id)a3 subThoroughfare:(id)a4 subPremises:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  if (v7 && v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v8, v7];
  }

  else
  {
    v12 = 0;
    if (!v7 || v8)
    {
      goto LABEL_11;
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v7, v17];
  }

  v12 = v11;
  if (v11)
  {
    if ([v9 count])
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [v9 _pas_componentsJoinedByString:@" "];
      v15 = [v13 initWithFormat:@"%@ %@", v12, v14];

      goto LABEL_12;
    }

    [v9 count];
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
  block[4] = a1;
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