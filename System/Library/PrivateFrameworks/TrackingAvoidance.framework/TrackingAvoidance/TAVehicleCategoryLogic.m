@interface TAVehicleCategoryLogic
+ (id)accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:(id)a3 since:(id)a4 to:(id)a5;
+ (id)accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:(id)a3 since:(id)a4 to:(id)a5;
+ (id)extractPrivateVehicleHintsFromTAStore:(id)a3 since:(id)a4 to:(id)a5;
@end

@implementation TAVehicleCategoryLogic

+ (id)accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:(id)a3 since:(id)a4 to:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9 && ([v8 earlierDate:v9], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, (v12 & 1) != 0))
  {
    v41 = v10;
    v13 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:v8 endDate:v10];
    v14 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v13 startDate];
      v17 = [v13 endDate];
      *buf = 138478083;
      v51 = v16;
      v52 = 2113;
      v53 = v17;
      _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, "#TAVehicleCategoryLogic Time Duration of Interest: Start Date - %{private}@ End Date - %{private}@", buf, 0x16u);
    }

    v42 = v8;
    v43 = v7;
    v18 = [v7 eventBuffer];
    v19 = [v18 getAllTAEventsOf:objc_opt_class()];

    v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [TAVehicleCategory alloc];
    v21 = [v13 startDate];
    v22 = [(TAVehicleCategory *)v20 initWithVehicleCategoryType:0 andDate:v21];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v45 + 1) + 8 * i);
          v29 = [v28 getDate];
          v30 = [v13 startDate];
          v31 = [v29 compare:v30];

          if (v31 == -1)
          {
            v36 = [TAVehicleCategory alloc];
            v37 = [TAVehicleCategory speculateTAVehicleCategoryTypeFromVehicleStateNotification:v28];
            v35 = [v13 startDate];
            v38 = [(TAVehicleCategory *)v36 initWithVehicleCategoryType:v37 andDate:v35];

            v22 = v38;
          }

          else
          {
            v32 = [v28 getDate];
            v33 = [v13 endDate];
            v34 = [v32 compare:v33];

            if (v34 == 1)
            {
              continue;
            }

            v35 = [[TAVehicleCategory alloc] initWithTAVehicularStateNotification:v28];
            [v44 addObject:v35];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v25);
    }

    [v44 insertObject:v22 atIndex:0];
    v8 = v42;
    v7 = v43;
    v10 = v41;
  }

  else
  {
    v44 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (id)accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:(id)a3 since:(id)a4 to:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 earlierDate:v9];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    v40 = v9;
    v12 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:v8 endDate:v9];
    v13 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v12 startDate];
      v16 = [v12 endDate];
      *buf = 138478083;
      v50 = v15;
      v51 = 2113;
      v52 = v16;
      _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEFAULT, "#TAVehicleCategoryLogic Time Duration of Interest: Start Date - %{private}@ End Date - %{private}@", buf, 0x16u);
    }

    v41 = v8;
    v42 = v7;
    v17 = [v7 eventBuffer];
    v18 = [v17 getAllTAEventsOf:objc_opt_class()];

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = [TAVehicleCategory alloc];
    v20 = [v12 startDate];
    v21 = [(TAVehicleCategory *)v19 initWithVehicleCategoryType:0 andDate:v20];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v18;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v45;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v44 + 1) + 8 * i);
          v28 = [v27 getDate];
          v29 = [v12 startDate];
          v30 = [v28 compare:v29];

          if (v30 == -1)
          {
            v35 = [TAVehicleCategory alloc];
            v36 = [TAVehicleCategory speculateTAVehicleCategoryTypeFromGeoNavigationNotification:v27];
            v34 = [v12 startDate];
            v37 = [(TAVehicleCategory *)v35 initWithVehicleCategoryType:v36 andDate:v34];

            v21 = v37;
          }

          else
          {
            v31 = [v27 getDate];
            v32 = [v12 endDate];
            v33 = [v31 compare:v32];

            if (v33 == 1)
            {
              continue;
            }

            v34 = [[TAVehicleCategory alloc] initWithTAGeoNavigationNotification:v27];
            [v43 addObject:v34];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v24);
    }

    [v43 insertObject:v21 atIndex:0];
    v8 = v41;
    v7 = v42;
    v9 = v40;
  }

  else
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v43;
}

+ (id)extractPrivateVehicleHintsFromTAStore:(id)a3 since:(id)a4 to:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [TAVehicleCategoryLogic accumulatedTAVehicleCategoryHistoryFromVehicleStateNotificationInTAStore:v7 since:v8 to:v9];
  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v13 = [v11 filteredArrayUsingPredicate:v12];
  if ([v13 count])
  {
    v14 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:2];
    [v10 addObject:v14];
  }

  v15 = [TAVehicleCategoryLogic accumulatedTAVehicleCategoryHistoryFromGeoNavigationNotificationInTAStore:v7 since:v8 to:v9];

  v16 = [v15 filteredArrayUsingPredicate:v12];

  if ([v16 count])
  {
    v17 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:1];
    [v10 addObject:v17];
  }

  return v10;
}

@end