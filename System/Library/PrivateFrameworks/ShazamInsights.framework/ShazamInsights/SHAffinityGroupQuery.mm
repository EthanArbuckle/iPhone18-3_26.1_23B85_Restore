@interface SHAffinityGroupQuery
+ (void)affinityGroupsForLocation:(id)location atDate:(id)date completionHandler:(id)handler;
+ (void)affinityGroupsForLocation:(id)location atDate:(id)date configuration:(id)configuration completionHandler:(id)handler;
@end

@implementation SHAffinityGroupQuery

+ (void)affinityGroupsForLocation:(id)location atDate:(id)date completionHandler:(id)handler
{
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_completionHandler___block_invoke;
  v14[3] = &unk_279BBEE98;
  v15 = locationCopy;
  v16 = dateCopy;
  v17 = handlerCopy;
  selfCopy = self;
  v11 = handlerCopy;
  v12 = dateCopy;
  v13 = locationCopy;
  [SHInsightsConfiguration fetchSharedInstanceWithCompletion:v14];
}

+ (void)affinityGroupsForLocation:(id)location atDate:(id)date configuration:(id)configuration completionHandler:(id)handler
{
  locationCopy = location;
  dateCopy = date;
  configurationCopy = configuration;
  handlerCopy = handler;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke;
  v17[3] = &unk_279BBEF10;
  v18 = configurationCopy;
  v19 = dateCopy;
  v20 = locationCopy;
  v21 = handlerCopy;
  v13 = locationCopy;
  v14 = dateCopy;
  v15 = configurationCopy;
  v16 = handlerCopy;
  [v15 geoHashLengthsWithCompletionHandler:v17];
}

void __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a1[7];
    v6 = *(a1[7] + 2);

    v6();
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [a1[6] sh_geohashOfLength:a2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke_2;
    v15[3] = &unk_279BBEEE8;
    v10 = a1[7];
    v11 = a1[6];
    v12 = a1[5];
    *&v13 = a1[4];
    *(&v13 + 1) = v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v16 = v14;
    v17 = v13;
    [v7 geoChartsEndpointForDate:v8 geoHash:v9 completionHandler:v15];
  }
}

void __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [SHDataFetcherFileInfo dataFetcherForSourceURL:v3];
    v5 = a1[4];
    v6 = a1[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke_3;
    v12[3] = &unk_279BBEEC0;
    v7 = a1[7];
    v8 = a1[4];
    v9 = a1[5];
    *&v10 = a1[6];
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v13 = v11;
    v14 = v10;
    [v4 clusterDataAtURL:v3 forLocation:v5 date:v6 completionHandler:v12];
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void __89__SHAffinityGroupQuery_affinityGroupsForLocation_atDate_configuration_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = objc_alloc_init(SHTimeAndPlaceController);
    v4 = [v5 data];
    [(SHTimeAndPlaceController *)v3 affinityGroupsFromData:v4 atLocation:a1[4] onDate:a1[5] configuration:a1[6] completionHandler:a1[7]];
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

@end