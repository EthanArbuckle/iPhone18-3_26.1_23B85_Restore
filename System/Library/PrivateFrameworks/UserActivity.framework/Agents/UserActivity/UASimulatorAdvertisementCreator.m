@interface UASimulatorAdvertisementCreator
- (BOOL)active;
- (UASimulatorAdvertisementCreator)initWithManager:(id)a3 simulator:(id)a4;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (int64_t)priority;
@end

@implementation UASimulatorAdvertisementCreator

- (UASimulatorAdvertisementCreator)initWithManager:(id)a3 simulator:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UASimulatorAdvertisementCreator;
  v8 = [(UAClientController *)&v11 initWithManager:a3 name:@"SimCreator"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_simulator, a4);
  }

  return v9;
}

- (id)items
{
  v3 = [(UASimulatorAdvertisementCreator *)self simulator];
  if ([v3 activitiesShouldCrossover])
  {
    v4 = [(UASimulatorAdvertisementCreator *)self simulator];
    v5 = [v4 receiver];
    v6 = [v5 receivedItems];
    if (v6)
    {
      v7 = [(UASimulatorAdvertisementCreator *)self simulator];
      v8 = [v7 receiver];
      v9 = [v8 receivedItems];
      v10 = [NSSet setWithArray:v9];
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
  v3 = [(UASimulatorAdvertisementCreator *)self simulator];
  v4 = [v3 activitiesShouldCrossover];

  if (v4)
  {
    v5 = [(UASimulatorAdvertisementCreator *)self simulator];
    v6 = [v5 receiver];
    v7 = [v6 receivedItems];

    v8 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
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
          v15 = [(UASimulatorAdvertisementCreator *)self simulator];
          v16 = [v15 peeredDevice];
          v17 = [(UASimulatorAdvertisementCreator *)self simulator];
          v18 = [(UASimulatorSuggestedItem *)v14 initWithUserActivityInfo:v13 peerDevice:v16 simulator:v17];

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
  v3 = [(UACornerActionManagerHandler *)&v7 priority];
  v4 = [(UASimulatorAdvertisementCreator *)self simulator];
  if ([v4 activitiesShouldCrossover])
  {
    v5 = 100;
  }

  else
  {
    v5 = 0;
  }

  return v3 + v5;
}

- (BOOL)active
{
  v2 = [(UASimulatorAdvertisementCreator *)self simulator];
  v3 = [v2 activitiesShouldCrossover];

  return v3;
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

  v4 = [(UASimulatorAdvertisementCreator *)self simulator];
  v5 = [v4 peeredDevice];
  v6 = [v5 name];
  v7 = [(UASimulatorAdvertisementCreator *)self simulator];
  v8 = [v7 receiver];
  v9 = [v8 receivedItems];
  v10 = [v9 firstObject];
  if (v10)
  {
    v22 = [(UASimulatorAdvertisementCreator *)self simulator];
    [v22 receiver];
    v23 = v9;
    v12 = v11 = v3;
    [v12 receivedItems];
    v13 = v25 = v4;
    [v13 firstObject];
    v24 = v7;
    v15 = v14 = v5;
    [v15 statusString];
    v16 = v8;
    v18 = v17 = v6;
    v21 = v11;
    v9 = v23;
    v19 = [NSString stringWithFormat:@"(sim-rebroadcasted-item):%@ %@ %@", v21, v17, v18];

    v6 = v17;
    v8 = v16;

    v5 = v14;
    v7 = v24;

    v4 = v25;
  }

  else
  {
    v19 = [NSString stringWithFormat:@"(sim-rebroadcasted-item):%@ %@ %@", v3, v6, @"-"];
  }

  return v19;
}

@end