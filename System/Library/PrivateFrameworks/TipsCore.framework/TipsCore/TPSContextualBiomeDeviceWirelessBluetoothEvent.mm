@interface TPSContextualBiomeDeviceWirelessBluetoothEvent
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)time;
@end

@implementation TPSContextualBiomeDeviceWirelessBluetoothEvent

- (id)publisherFromStartTime:(double)time
{
  v4 = BiomeLibrary();
  device = [v4 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v9 = objc_alloc(MEMORY[0x1E698F2D0]);
  date = [MEMORY[0x1E695DF00] date];
  v11 = [v9 initWithStartDate:v8 endDate:date maxEvents:0 lastN:0 reversed:0];

  v12 = [bluetooth publisherWithUseCase:@"FeatureDiscoverability" options:v11];

  return v12;
}

- (id)filterHandler
{
  _filteringPredicate = [(TPSContextualBiomeDeviceWirelessBluetoothEvent *)self _filteringPredicate];
  v3 = _filteringPredicate;
  if (_filteringPredicate)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__TPSContextualBiomeDeviceWirelessBluetoothEvent_filterHandler__block_invoke;
    aBlock[3] = &unk_1E8101708;
    v7 = _filteringPredicate;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __63__TPSContextualBiomeDeviceWirelessBluetoothEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) evaluateWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filterParametersForBiomeQuery
{
  filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];

  if (filterInfo)
  {
    v30.receiver = self;
    v30.super_class = TPSContextualBiomeDeviceWirelessBluetoothEvent;
    filterParametersForBiomeQuery = [(TPSContextualBiomeEvent *)&v30 filterParametersForBiomeQuery];
    v5 = [filterParametersForBiomeQuery mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v9 = v7;

    filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [filterInfo2 TPSSafeObjectForKey:@"appleAudioDevice"];

    if (v11)
    {
      v12 = MEMORY[0x1E696AD98];
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v14 = [v12 numberWithBool:{objc_msgSend(filterInfo3, "TPSSafeBoolForKey:", @"appleAudioDevice"}];
      [v9 setObject:v14 forKeyedSubscript:@"appleAudioDevice"];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v16 = [filterInfo4 TPSSafeObjectForKey:@"deviceType"];

    if (v16)
    {
      v17 = MEMORY[0x1E696AD98];
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v19 = [v17 numberWithInt:{objc_msgSend(filterInfo5, "TPSSafeIntForKey:", @"deviceType"}];
      [v9 setObject:v19 forKeyedSubscript:@"deviceType"];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v21 = [filterInfo6 TPSSafeObjectForKey:@"productIDs"];

    if (v21)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v23 = [filterInfo7 TPSSafeArrayForKey:@"productIDs"];
      [v9 setObject:v23 forKeyedSubscript:@"productID"];
    }

    filterInfo8 = [(TPSContextualBiomeEvent *)self filterInfo];
    v25 = [filterInfo8 TPSSafeObjectForKey:@"userWearing"];

    if (v25)
    {
      v26 = MEMORY[0x1E696AD98];
      filterInfo9 = [(TPSContextualBiomeEvent *)self filterInfo];
      v28 = [v26 numberWithBool:{objc_msgSend(filterInfo9, "TPSSafeBoolForKey:", @"userWearing"}];
      [v9 setObject:v28 forKeyedSubscript:@"userWearing"];
    }

    v8 = [v9 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_filteringPredicate
{
  filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];

  if (filterInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
    v6 = [filterInfo2 TPSSafeObjectForKey:@"appleAudioDevice"];

    if (v6)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [filterInfo3 TPSSafeBoolForKey:@"appleAudioDevice"];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __69__TPSContextualBiomeDeviceWirelessBluetoothEvent__filteringPredicate__block_invoke;
      v34[3] = &__block_descriptor_33_e44_B24__0__BMDeviceBluetooth_8__NSDictionary_16l;
      v35 = v8;
      v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v34];
      [v4 addObject:v9];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [filterInfo4 TPSSafeObjectForKey:@"deviceType"];

    if (v11)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [filterInfo5 TPSSafeIntForKey:@"deviceType"];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__TPSContextualBiomeDeviceWirelessBluetoothEvent__filteringPredicate__block_invoke_2;
      v33[3] = &__block_descriptor_40_e44_B24__0__BMDeviceBluetooth_8__NSDictionary_16l;
      v33[4] = v13;
      v14 = [MEMORY[0x1E696AE18] predicateWithBlock:v33];
      [v4 addObject:v14];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v16 = [filterInfo6 TPSSafeObjectForKey:@"productIDs"];

    if (v16)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v18 = [filterInfo7 TPSSafeArrayForKey:@"productIDs"];

      v19 = MEMORY[0x1E696AE18];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__TPSContextualBiomeDeviceWirelessBluetoothEvent__filteringPredicate__block_invoke_3;
      v31[3] = &unk_1E8101770;
      v32 = v18;
      v20 = v18;
      v21 = [v19 predicateWithBlock:v31];
      [v4 addObject:v21];
    }

    filterInfo8 = [(TPSContextualBiomeEvent *)self filterInfo];
    v23 = [filterInfo8 TPSSafeObjectForKey:@"userWearing"];

    if (v23)
    {
      filterInfo9 = [(TPSContextualBiomeEvent *)self filterInfo];
      v25 = [filterInfo9 TPSSafeBoolForKey:@"userWearing"];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__TPSContextualBiomeDeviceWirelessBluetoothEvent__filteringPredicate__block_invoke_4;
      v29[3] = &__block_descriptor_33_e44_B24__0__BMDeviceBluetooth_8__NSDictionary_16l;
      v30 = v25;
      v26 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
      [v4 addObject:v26];
    }

    if ([v4 count])
    {
      v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t __69__TPSContextualBiomeDeviceWirelessBluetoothEvent__filteringPredicate__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "productID")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end