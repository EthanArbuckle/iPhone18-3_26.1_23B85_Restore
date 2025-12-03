@interface PLPowerNode
- (PLPowerNode)initWithName:(id)name withFGEnergy:(double)energy withBGEnergy:(double)gEnergy withFGTime:(double)time withBGTime:(double)gTime withBGAudioTime:(double)audioTime withBGLocationTime:(double)locationTime withRootNodeEnergyRows:(id)self0;
- (id)energy;
- (id)serialize;
- (id)time;
@end

@implementation PLPowerNode

- (PLPowerNode)initWithName:(id)name withFGEnergy:(double)energy withBGEnergy:(double)gEnergy withFGTime:(double)time withBGTime:(double)gTime withBGAudioTime:(double)audioTime withBGLocationTime:(double)locationTime withRootNodeEnergyRows:(id)self0
{
  nameCopy = name;
  rowsCopy = rows;
  if (nameCopy)
  {
    v23.receiver = self;
    v23.super_class = PLPowerNode;
    v21 = [(PLPowerNode *)&v23 init];
    self = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_name, name);
      self->_fgEnergy = energy;
      self->_bgEnergy = gEnergy;
      self->_fgTime = time;
      self->_bgTime = gTime;
      self->_bgAudioTime = audioTime;
      self->_bgLocationTime = locationTime;
      objc_storeStrong(&self->_rootNodeEnergyRows, rows);
    }
  }

  return self;
}

- (id)energy
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(PLPowerNode *)self rootNodeEnergyRows];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"RootNodeID"];
        intValue = [v10 intValue];

        if (intValue)
        {
          v12 = [&unk_1F540B7B8 objectAtIndexedSubscript:intValue];
          v13 = [v9 objectForKeyedSubscript:@"FGEnergy"];
          [v13 doubleValue];
          v15 = v14;

          v16 = [v9 objectForKeyedSubscript:@"BGEnergy"];
          [v16 doubleValue];
          v18 = v17;

          [(PLPowerNode *)self fgTime];
          if (v19 <= 60.0 || (v19 = v15 / 1000.0, v15 / 1000.0 <= 0.0))
          {
            [dictionary setObject:&unk_1F5405CE8 forKeyedSubscript:{v12, v19}];
          }

          else
          {
            v20 = [MEMORY[0x1E696AD98] numberWithLong:llround(v19)];
            [dictionary setObject:v20 forKeyedSubscript:v12];
          }

          [(PLPowerNode *)self bgTime];
          if (v21 <= 60.0 || (v21 = v18 / 1000.0, v18 / 1000.0 <= 0.0))
          {
            [dictionary2 setObject:&unk_1F5405CE8 forKeyedSubscript:{v12, v21}];
          }

          else
          {
            v22 = [MEMORY[0x1E696AD98] numberWithLong:llround(v21)];
            [dictionary2 setObject:v22 forKeyedSubscript:v12];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v31[0] = @"fg";
  v31[1] = @"bg";
  v32[0] = dictionary;
  v32[1] = dictionary2;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)time
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"fg";
  v3 = MEMORY[0x1E696AD98];
  [(PLPowerNode *)self fgTime];
  v5 = [v3 numberWithLong:llround(v4)];
  v21[1] = @"bg";
  v22[0] = v5;
  v19[0] = @"total";
  v6 = MEMORY[0x1E696AD98];
  [(PLPowerNode *)self bgTime];
  v8 = [v6 numberWithLong:llround(v7)];
  v20[0] = v8;
  v19[1] = @"audio";
  v9 = MEMORY[0x1E696AD98];
  [(PLPowerNode *)self bgAudioTime];
  v11 = [v9 numberWithLong:llround(v10)];
  v20[1] = v11;
  v19[2] = @"location";
  v12 = MEMORY[0x1E696AD98];
  [(PLPowerNode *)self bgLocationTime];
  v14 = [v12 numberWithLong:llround(v13)];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)serialize
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = [PLValueComparison alloc];
  name = [(PLPowerNode *)self name];
  v5 = [(PLValueComparison *)v3 initWithKey:@"AppBundleId" withValue:name withComparisonOperation:0];

  v6 = +[PowerlogCore sharedCore];
  storage = [v6 storage];
  v50[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v9 = [storage lastEntryForKey:@"PLApplicationAgent_EventNone_AllApps" withComparisons:v8 isSingleton:1];

  if (v9 && ([v9 objectForKeyedSubscript:@"AppIs3rdParty"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v11))
  {
    v48[0] = @"app_bundleid";
    name2 = [(PLPowerNode *)self name];
    v49[0] = name2;
    v48[1] = @"app_build_version";
    v12 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
    if (v12)
    {
      v13 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
    }

    else
    {
      v13 = &stru_1F539D228;
    }

    v40 = v13;
    v49[1] = v13;
    v48[2] = @"app_version";
    v15 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
    if (v15)
    {
      v16 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
    }

    else
    {
      v16 = &stru_1F539D228;
    }

    v39 = v16;
    v49[2] = v16;
    v48[3] = @"app_sessionreporter_key";
    v17 = [v9 objectForKeyedSubscript:@"AppVendorID"];
    if (v17)
    {
      v18 = [v9 objectForKeyedSubscript:@"AppVendorID"];
    }

    else
    {
      v18 = &stru_1F539D228;
    }

    v38 = v18;
    v49[3] = v18;
    v48[4] = @"app_adamid";
    v19 = [v9 objectForKeyedSubscript:@"AppItemID"];
    if (v19)
    {
      v20 = [v9 objectForKeyedSubscript:@"AppItemID"];
    }

    else
    {
      v20 = &stru_1F539D228;
    }

    v37 = v20;
    v49[4] = v20;
    v48[5] = @"app_cohort";
    v42 = [v9 objectForKeyedSubscript:@"AppCohort"];
    v46 = v12;
    if (v42)
    {
      v21 = [v9 objectForKeyedSubscript:@"AppCohort"];
    }

    else
    {
      v21 = &stru_1F539D228;
    }

    v36 = v21;
    v49[5] = v21;
    v48[6] = @"app_storefront";
    v22 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
    if (v22)
    {
      v23 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
    }

    else
    {
      v23 = &stru_1F539D228;
    }

    v49[6] = v23;
    v48[7] = @"app_is_beta";
    v41 = [v9 objectForKeyedSubscript:{@"AppIsBeta", v23}];
    bOOLValue = [v41 BOOLValue];
    v25 = @"false";
    if (bOOLValue)
    {
      v25 = @"true";
    }

    v49[7] = v25;
    v48[8] = @"app_arch";
    v26 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
    v44 = v17;
    if (v26)
    {
      v27 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
    }

    else
    {
      v27 = &stru_1F539D228;
    }

    v43 = v19;
    v45 = v15;
    v49[8] = v27;
    v48[9] = @"slice_uuid";
    v28 = [v9 objectForKeyedSubscript:@"AppUUID"];
    v29 = v5;
    if (v28)
    {
      v30 = [v9 objectForKeyedSubscript:@"AppUUID"];
    }

    else
    {
      v30 = &stru_1F539D228;
    }

    v49[9] = v30;
    v48[10] = @"app_energy";
    energy = [(PLPowerNode *)self energy];
    v49[10] = energy;
    v48[11] = @"app_time";
    time = [(PLPowerNode *)self time];
    v49[11] = time;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:12];

    if (v28)
    {
    }

    v5 = v29;
    if (v26)
    {
    }

    if (v22)
    {
    }

    if (v42)
    {
    }

    if (v43)
    {
    }

    if (v44)
    {
    }

    if (v45)
    {
    }

    if (v46)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v14;
}

@end