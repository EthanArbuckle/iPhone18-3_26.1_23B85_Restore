@interface SHTimeAndPlaceController
- (void)affinityGroupsFromData:(id)a3 atLocation:(id)a4 onDate:(id)a5 configuration:(id)a6 completionHandler:(id)a7;
@end

@implementation SHTimeAndPlaceController

- (void)affinityGroupsFromData:(id)a3 atLocation:(id)a4 onDate:(id)a5 configuration:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v22 = 0;
  v13 = [SHTimeAndPlaceServerResponseParser regionAffinityGroupsFromServerData:a3 error:&v22];
  v14 = v22;
  if (v13)
  {
    v15 = [MEMORY[0x277CBEB18] array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__SHTimeAndPlaceController_affinityGroupsFromData_atLocation_onDate_configuration_completionHandler___block_invoke;
    v17[3] = &unk_279BBEF10;
    v21 = v12;
    v18 = v10;
    v19 = v13;
    v20 = v15;
    v16 = v15;
    [v11 geoHashLengthsWithCompletionHandler:v17];
  }

  else
  {
    (*(v12 + 2))(v12, 0, v14);
  }
}

void __101__SHTimeAndPlaceController_affinityGroupsFromData_atLocation_onDate_configuration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);
    v7 = *MEMORY[0x277D85DE8];

    v6();
  }

  else
  {
    v8 = [*(a1 + 32) sh_geohashOfLength:?];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 regionsForGeohash:{v8, v22}];
          v16 = [v15 count];

          if (v16)
          {
            v17 = *(a1 + 48);
            v18 = [v14 affinityGroup];
            [v17 addObject:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v19 = *(a1 + 56);
    v20 = [*(a1 + 48) copy];
    (*(v19 + 16))(v19, v20, 0);

    v21 = *MEMORY[0x277D85DE8];
  }
}

@end