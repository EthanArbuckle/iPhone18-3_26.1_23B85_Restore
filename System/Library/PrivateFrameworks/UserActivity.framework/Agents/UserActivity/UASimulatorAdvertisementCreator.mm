@interface UASimulatorAdvertisementCreator
- (BOOL)active;
- (UASimulatorAdvertisementCreator)initWithManager:(id)manager simulator:(id)simulator;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (int64_t)priority;
@end

@implementation UASimulatorAdvertisementCreator

- (UASimulatorAdvertisementCreator)initWithManager:(id)manager simulator:(id)simulator
{
  simulatorCopy = simulator;
  v11.receiver = self;
  v11.super_class = UASimulatorAdvertisementCreator;
  v8 = [(UAClientController *)&v11 initWithManager:manager name:@"SimCreator"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_simulator, simulator);
  }

  return v9;
}

- (id)items
{
  simulator = [(UASimulatorAdvertisementCreator *)self simulator];
  if ([simulator activitiesShouldCrossover])
  {
    simulator2 = [(UASimulatorAdvertisementCreator *)self simulator];
    receiver = [simulator2 receiver];
    receivedItems = [receiver receivedItems];
    if (receivedItems)
    {
      simulator3 = [(UASimulatorAdvertisementCreator *)self simulator];
      receiver2 = [simulator3 receiver];
      receivedItems2 = [receiver2 receivedItems];
      v10 = [NSSet setWithArray:receivedItems2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  simulator = [(UASimulatorAdvertisementCreator *)self simulator];
  activitiesShouldCrossover = [simulator activitiesShouldCrossover];

  if (activitiesShouldCrossover)
  {
    simulator2 = [(UASimulatorAdvertisementCreator *)self simulator];
    receiver = [simulator2 receiver];
    receivedItems = [receiver receivedItems];

    v8 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = receivedItems;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [UASimulatorSuggestedItem alloc];
          simulator3 = [(UASimulatorAdvertisementCreator *)self simulator];
          peeredDevice = [simulator3 peeredDevice];
          simulator4 = [(UASimulatorAdvertisementCreator *)self simulator];
          v18 = [(UASimulatorSuggestedItem *)v14 initWithUserActivityInfo:v13 peerDevice:peeredDevice simulator:simulator4];

          [(UASimulatorSuggestedItem *)v18 setActive:1];
          [v8 addObject:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    v19 = [v8 copy];
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v19 description];
      v22 = sub_100009684(v21);
      *buf = 138477827;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "SIMULATOR: Returning received activities %{private}@ as eligibleItems", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (int64_t)priority
{
  v7.receiver = self;
  v7.super_class = UASimulatorAdvertisementCreator;
  priority = [(UACornerActionManagerHandler *)&v7 priority];
  simulator = [(UASimulatorAdvertisementCreator *)self simulator];
  if ([simulator activitiesShouldCrossover])
  {
    v5 = 100;
  }

  else
  {
    v5 = 0;
  }

  return priority + v5;
}

- (BOOL)active
{
  simulator = [(UASimulatorAdvertisementCreator *)self simulator];
  activitiesShouldCrossover = [simulator activitiesShouldCrossover];

  return activitiesShouldCrossover;
}

- (id)statusString
{
  if ([(UASimulatorAdvertisementCreator *)self active])
  {
    v3 = &stru_1000C67D0;
  }

  else
  {
    v3 = @"(inactive) ";
  }

  simulator = [(UASimulatorAdvertisementCreator *)self simulator];
  peeredDevice = [simulator peeredDevice];
  name = [peeredDevice name];
  simulator2 = [(UASimulatorAdvertisementCreator *)self simulator];
  receiver = [simulator2 receiver];
  receivedItems = [receiver receivedItems];
  firstObject = [receivedItems firstObject];
  if (firstObject)
  {
    simulator3 = [(UASimulatorAdvertisementCreator *)self simulator];
    [simulator3 receiver];
    v23 = receivedItems;
    v12 = v11 = v3;
    [v12 receivedItems];
    v13 = v25 = simulator;
    [v13 firstObject];
    v24 = simulator2;
    v15 = v14 = peeredDevice;
    [v15 statusString];
    v16 = receiver;
    v18 = v17 = name;
    v21 = v11;
    receivedItems = v23;
    v19 = [NSString stringWithFormat:@"(sim-rebroadcasted-item):%@ %@ %@", v21, v17, v18];

    name = v17;
    receiver = v16;

    peeredDevice = v14;
    simulator2 = v24;

    simulator = v25;
  }

  else
  {
    v19 = [NSString stringWithFormat:@"(sim-rebroadcasted-item):%@ %@ %@", v3, name, @"-"];
  }

  return v19;
}

@end