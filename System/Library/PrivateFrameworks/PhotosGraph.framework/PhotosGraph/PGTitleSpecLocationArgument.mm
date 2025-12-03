@interface PGTitleSpecLocationArgument
+ (id)argumentWithLocationTypeLocationForLocationName:(id)name;
- (PGTitleSpecLocationArgument)initWithLocationType:(unint64_t)type filterLocations:(BOOL)locations;
- (id)_generateBusinessItemTitleWithMomentNodes:(id)nodes locationHelper:(id)helper serviceManager:(id)manager;
- (id)_generateLocationTitleWithOptions:(id)options locationHelper:(id)helper serviceManager:(id)manager;
- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context;
- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context;
@end

@implementation PGTitleSpecLocationArgument

- (id)_generateLocationTitleWithOptions:(id)options locationHelper:(id)helper serviceManager:(id)manager
{
  optionsCopy = options;
  helperCopy = helper;
  managerCopy = manager;
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
  [PGLocationTitleUtility generateLocationTitleWithOptions:optionsCopy locationHelper:helperCopy serviceManager:managerCopy result:v13];
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

- (id)_generateBusinessItemTitleWithMomentNodes:(id)nodes locationHelper:(id)helper serviceManager:(id)manager
{
  managerCopy = manager;
  helperCopy = helper;
  nodesCopy = nodes;
  v11 = objc_alloc_init(PGLocationTitleOptions);
  [(PGLocationTitleOptions *)v11 setUseBusinessItems:1];
  [(PGLocationTitleOptions *)v11 setAoiDisplayType:0];
  [(PGLocationTitleOptions *)v11 setUseCities:0];
  [(PGLocationTitleOptions *)v11 setPeopleDisplayType:0];
  [(PGLocationTitleOptions *)v11 setLineBreakBehavior:self->_lineBreakBehavior];
  [(PGLocationTitleOptions *)v11 setMomentNodes:nodesCopy];

  v12 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v11 locationHelper:helperCopy serviceManager:managerCopy];

  return v12;
}

- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featuresCopy = features;
  v37 = nodesCopy;
  contextCopy = context;
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

  selfCopy = self;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__7572;
  v50 = __Block_byref_object_dispose__7573;
  v51 = 0;
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];

  locationHelper = [contextCopy locationHelper];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = featuresCopy;
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
      type = [v17 type];
      if ((type & 2) != 0 && type == 17)
      {
        serviceManager = [contextCopy serviceManager];
        v20 = [(PGTitleSpecLocationArgument *)selfCopy _generateBusinessItemTitleWithMomentNodes:v37 locationHelper:locationHelper serviceManager:serviceManager];
        v21 = v47[5];
        v47[5] = v20;

        goto LABEL_38;
      }

      if ((type & 4) != 0 && type == 8)
      {
        serviceManager = [v17 nodeInGraph:graph];
        v22 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:serviceManager locationHelper:locationHelper];
        v23 = v47[5];
        v47[5] = v22;

        goto LABEL_38;
      }

      if (type)
      {
        if (type == 8 || type == 4)
        {
          serviceManager = [v17 nodeInGraph:graph];
          v25 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:serviceManager locationHelper:locationHelper];
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

          serviceManager = +[PGLocationTitleOptions onlyPeopleLocationTitleOptions];
          [serviceManager setLineBreakBehavior:selfCopy->_lineBreakBehavior];
          [serviceManager setMomentNodes:v37];
          if ((type & 0x30) != 0)
          {
            if ((type & 0x20) != 0)
            {
              [serviceManager setAllowFamilyHome:0];
            }

            serviceManager2 = [contextCopy serviceManager];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke;
            v41[3] = &unk_27887FB60;
            v41[4] = &v46;
            [PGLocationTitleUtility generateLocationTitleWithOptions:serviceManager locationHelper:locationHelper serviceManager:serviceManager2 result:v41];
          }

          if (!v47[5] && (type & 1) != 0)
          {
            [serviceManager setPeopleDisplayType:0];
            [serviceManager setUseCities:1];
            [serviceManager setAoiDisplayType:(type & 4) >> 2];
            serviceManager3 = [contextCopy serviceManager];
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v40[0] = __97__PGTitleSpecLocationArgument__resolvedStringWithMomentNodes_features_argumentEvaluationContext___block_invoke_2;
            v40[1] = &unk_27887FB60;
            v40[2] = &v46;
            [PGLocationTitleUtility generateLocationTitleWithOptions:serviceManager locationHelper:locationHelper serviceManager:serviceManager3 result:v39];
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

- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
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
    locationHelper = [contextCopy locationHelper];
    if ((type & 0x30) == 0)
    {
      goto LABEL_14;
    }

    v10 = +[PGLocationTitleOptions onlyPeopleLocationTitleOptions];
    [(PGLocationTitleOptions *)v10 setLineBreakBehavior:self->_lineBreakBehavior];
    [(PGLocationTitleOptions *)v10 setMomentNodes:nodesCopy];
    [(PGLocationTitleOptions *)v10 setFilterSignificantLocationsType:1];
    if ((type & 0x20) != 0)
    {
      [(PGLocationTitleOptions *)v10 setAllowFamilyHome:0];
    }

    serviceManager = [contextCopy serviceManager];
    v14 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v10 locationHelper:locationHelper serviceManager:serviceManager];

    if (!v14)
    {
LABEL_14:
      v24 = locationHelper;
      v15 = v10;
      v10 = objc_alloc_init(PGLocationTitleOptions);

      [(PGLocationTitleOptions *)v10 setUseBusinessItems:(type >> 1) & 1];
      [(PGLocationTitleOptions *)v10 setMomentNodes:nodesCopy];
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

      locationHelper = v24;
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
      serviceManager2 = [contextCopy serviceManager];
      v14 = [(PGTitleSpecLocationArgument *)self _generateLocationTitleWithOptions:v10 locationHelper:v24 serviceManager:serviceManager2];
    }

    loggingConnection = v14;

    v9 = loggingConnection;
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot allow business item and people home at the same time.", buf, 2u);
    }

    v9 = 0;
  }

LABEL_28:

  return v9;
}

- (PGTitleSpecLocationArgument)initWithLocationType:(unint64_t)type filterLocations:(BOOL)locations
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecLocationArgument;
  result = [(PGTitleSpecLocationArgument *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_filterLocations = locations;
  }

  return result;
}

+ (id)argumentWithLocationTypeLocationForLocationName:(id)name
{
  nameCopy = name;
  v4 = [[PGTitleSpecLocationArgument alloc] initWithLocationType:512 filterLocations:0];
  [(PGTitleSpecLocationArgument *)v4 setLocationName:nameCopy];

  return v4;
}

@end