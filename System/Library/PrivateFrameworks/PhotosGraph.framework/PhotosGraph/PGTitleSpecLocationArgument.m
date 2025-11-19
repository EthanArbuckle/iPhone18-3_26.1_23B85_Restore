@interface PGTitleSpecLocationArgument
+ (id)argumentWithLocationTypeLocationForLocationName:(id)a3;
- (PGTitleSpecLocationArgument)initWithLocationType:(unint64_t)a3 filterLocations:(BOOL)a4;
- (id)_generateBusinessItemTitleWithMomentNodes:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5;
- (id)_generateLocationTitleWithOptions:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5;
- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4;
- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5;
@end

@implementation PGTitleSpecLocationArgument

- (id)_generateLocationTitleWithOptions:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7572;
  v18 = __Block_byref_object_dispose__7573;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__PGTitleSpecLocationArgument__generateLocationTitleWithOptions_locationHelper_serviceManager___block_invoke;
  v13[3] = &unk_278888460;
  v13[4] = self;
  v13[5] = &v14;
  [PGLocationTitleUtility generateLocationTitleWithOptions:v8 locationHelper:v9 serviceManager:v10 result:v13];
  if ([v15[5] length])
  {
    v11 = v15[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

void __95__PGTitleSpecLocationArgument__generateLocationTitleWithOptions_locationHelper_serviceManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) setUsedLocationNodes:v7];
}

- (id)_generateBusinessItemTitleWithMomentNodes:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PGLocationTitleOptions);
  [(PGLocationTitleOptions *)v11 setUseBusinessItems:1];
  [(PGLocationTitleOptions *)v11 setAoiDisplayType:0];
  [(PGLocationTitleOptions *)v11 setUseCities:0];
  [(PGLocationTitleOptions *)v11 setPeopleDisplayType:0];
  [(PGLocationTitleOptions *)v11 setLineBreakBehavior:self->_lineBreakBehavior];
  [(PGLocationTitleOptions *)v11 setMomentNodes:v10];

  v12 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v11 locationHelper:v9 serviceManager:v8];

  return v12;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v37 = v8;
  v38 = a5;
  type = self->_type;
  if (type == 512)
  {
    if ([(NSString *)self->_locationName length])
    {
      v10 = self->_locationName;
      goto LABEL_43;
    }

    type = self->_type;
  }

  v35 = self;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__7572;
  v50 = __Block_byref_object_dispose__7573;
  v51 = 0;
  v11 = [v8 anyObject];
  v34 = [v11 graph];

  v12 = [v38 locationHelper];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v33;
  v13 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v13)
  {
    goto LABEL_42;
  }

  v14 = *v43;
  v32 = v40;
  v15 = 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v42 + 1) + 8 * i);
      v18 = [v17 type];
      if ((type & 2) != 0 && v18 == 17)
      {
        v19 = [v38 serviceManager];
        v20 = [(PGTitleSpecLocationArgument *)v35 _generateBusinessItemTitleWithMomentNodes:v37 locationHelper:v12 serviceManager:v19];
        v21 = v47[5];
        v47[5] = v20;

        goto LABEL_38;
      }

      if ((type & 4) != 0 && v18 == 8)
      {
        v19 = [v17 nodeInGraph:v34];
        v22 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v19 locationHelper:v12];
        v23 = v47[5];
        v47[5] = v22;

        goto LABEL_38;
      }

      if (type)
      {
        if (v18 == 8 || v18 == 4)
        {
          v19 = [v17 nodeInGraph:v34];
          v25 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v19 locationHelper:v12];
          v26 = v47[5];
          v47[5] = v25;

          if ([v47[5] length])
          {
            v27 = (type & 4) == 0;
          }

          else
          {
            v27 = 1;
          }

          v15 = v27;
        }

        else
        {
LABEL_30:
          if ([v17 type] != 7)
          {
            goto LABEL_39;
          }

          v19 = +[PGLocationTitleOptions onlyPeopleLocationTitleOptions];
          [v19 setLineBreakBehavior:v35->_lineBreakBehavior];
          [v19 setMomentNodes:v37];
          if ((type & 0x30) != 0)
          {
            if ((type & 0x20) != 0)
            {
              [v19 setAllowFamilyHome:0];
            }

            v28 = [v38 serviceManager];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke;
            v41[3] = &unk_27887FB60;
            v41[4] = &v46;
            [PGLocationTitleUtility generateLocationTitleWithOptions:v19 locationHelper:v12 serviceManager:v28 result:v41];
          }

          if (!v47[5] && (type & 1) != 0)
          {
            [v19 setPeopleDisplayType:0];
            [v19 setUseCities:1];
            [v19 setAoiDisplayType:(type & 4) >> 2];
            v29 = [v38 serviceManager];
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v40[0] = __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke_2;
            v40[1] = &unk_27887FB60;
            v40[2] = &v46;
            [PGLocationTitleUtility generateLocationTitleWithOptions:v19 locationHelper:v12 serviceManager:v29 result:v39];
          }
        }

LABEL_38:

        goto LABEL_39;
      }

      if ((type & 0x30) != 0)
      {
        goto LABEL_30;
      }

LABEL_39:
      if ((([v47[5] length] != 0) & v15) != 0)
      {
        goto LABEL_42;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  }

  while (v13);
LABEL_42:

  v10 = v47[5];
  _Block_object_dispose(&v46, 8);

LABEL_43:
  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

void __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  type = self->_type;
  if (type == 512)
  {
    if ([(NSString *)self->_locationName length])
    {
      v9 = self->_locationName;
      goto LABEL_28;
    }

    type = self->_type;
  }

  v10 = (type & 0x30);
  if ((type & 0x30) == 0 || (type & 2) == 0)
  {
    v12 = [v7 locationHelper];
    if ((type & 0x30) == 0)
    {
      goto LABEL_14;
    }

    v10 = +[PGLocationTitleOptions onlyPeopleLocationTitleOptions];
    [(PGLocationTitleOptions *)v10 setLineBreakBehavior:self->_lineBreakBehavior];
    [(PGLocationTitleOptions *)v10 setMomentNodes:v6];
    [(PGLocationTitleOptions *)v10 setFilterSignificantLocationsType:1];
    if ((type & 0x20) != 0)
    {
      [(PGLocationTitleOptions *)v10 setAllowFamilyHome:0];
    }

    v13 = [v7 serviceManager];
    v14 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v10 locationHelper:v12 serviceManager:v13];

    if (!v14)
    {
LABEL_14:
      v24 = v12;
      v15 = v10;
      v10 = objc_alloc_init(PGLocationTitleOptions);

      [(PGLocationTitleOptions *)v10 setUseBusinessItems:(type >> 1) & 1];
      [(PGLocationTitleOptions *)v10 setMomentNodes:v6];
      [(PGLocationTitleOptions *)v10 setUseCities:type & 1];
      [(PGLocationTitleOptions *)v10 setShowAllCities:(type >> 7) & 1];
      [(PGLocationTitleOptions *)v10 setUseDistrict:(type >> 6) & 1];
      if ((type & 8) != 0)
      {
        v17 = 4;
      }

      else
      {
        v16 = (self->_type >> 8) & 1;
        if ((type & 0xC) != 0)
        {
          v17 = 3;
        }

        else
        {
          v17 = (self->_type >> 8) & 1;
        }
      }

      v12 = v24;
      [(PGLocationTitleOptions *)v10 setAoiDisplayType:v17];
      [(PGLocationTitleOptions *)v10 setPeopleDisplayType:0];
      [(PGLocationTitleOptions *)v10 setLineBreakBehavior:self->_lineBreakBehavior];
      if (self->_filterLocations)
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      [(PGLocationTitleOptions *)v10 setFilterSignificantLocationsType:v21];
      v22 = [v7 serviceManager];
      v14 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v10 locationHelper:v24 serviceManager:v22];
    }

    v19 = v14;

    v9 = v19;
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Cannot allow business item and people home at the same time.", buf, 2u);
    }

    v9 = 0;
  }

LABEL_28:

  return v9;
}

- (PGTitleSpecLocationArgument)initWithLocationType:(unint64_t)a3 filterLocations:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecLocationArgument;
  result = [(PGTitleSpecLocationArgument *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_filterLocations = a4;
  }

  return result;
}

+ (id)argumentWithLocationTypeLocationForLocationName:(id)a3
{
  v3 = a3;
  v4 = [[PGTitleSpecLocationArgument alloc] initWithLocationType:512 filterLocations:0];
  [(PGTitleSpecLocationArgument *)v4 setLocationName:v3];

  return v4;
}

@end