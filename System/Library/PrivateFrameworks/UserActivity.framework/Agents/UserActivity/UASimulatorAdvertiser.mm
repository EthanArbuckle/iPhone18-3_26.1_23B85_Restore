@interface UASimulatorAdvertiser
- (BOOL)active;
- (BOOL)advertising;
- (BOOL)updateItem:(id)item;
- (UASimulatorAdvertiser)initWithSimulator:(id)simulator;
- (id)advertisableItems;
- (id)pairedDevices;
- (id)statusString;
- (void)setAdvertisableItems:(id)items;
@end

@implementation UASimulatorAdvertiser

- (UASimulatorAdvertiser)initWithSimulator:(id)simulator
{
  simulatorCopy = simulator;
  controller = [simulatorCopy controller];
  manager = [controller manager];
  v12.receiver = self;
  v12.super_class = UASimulatorAdvertiser;
  v8 = [(UAAdvertiser *)&v12 initWithManager:manager name:@"SimAdvertiser"];

  if (v8)
  {
    objc_storeStrong((v8 + 57), simulator);
    v9 = +[NSMutableArray array];
    v10 = *(v8 + 49);
    *(v8 + 49) = v9;
  }

  return v8;
}

- (id)advertisableItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [*(&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1) copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAdvertisableItems:(id)items
{
  itemsCopy = items;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [itemsCopy description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting advertisable items to %{private}@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [*(&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1) removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 eligibleForHandoff])
        {
          v14 = [UASimulatorSuggestedItem alloc];
          simulator = [(UASimulatorAdvertiser *)selfCopy simulator];
          peeredDevice = [simulator peeredDevice];
          simulator2 = [(UASimulatorAdvertiser *)selfCopy simulator];
          v18 = [(UASimulatorSuggestedItem *)v14 initWithUserActivityInfo:v13 peerDevice:peeredDevice simulator:simulator2];

          [(UASimulatorSuggestedItem *)v18 setActive:1];
          [*(&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1) addObject:v18];

          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  advertisableItems = [(UASimulatorAdvertiser *)selfCopy advertisableItems];
  firstObject = [advertisableItems firstObject];
  [(UASimulatorAdvertiser *)selfCopy updateItem:firstObject];

  objc_sync_exit(selfCopy);
}

- (BOOL)active
{
  v3.receiver = self;
  v3.super_class = UASimulatorAdvertiser;
  return [(UACornerActionManagerHandler *)&v3 active];
}

- (BOOL)advertising
{
  advertisableItems = [(UASimulatorAdvertiser *)self advertisableItems];
  firstObject = [advertisableItems firstObject];
  v4 = firstObject != 0;

  return v4;
}

- (BOOL)updateItem:(id)item
{
  itemCopy = item;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [itemCopy uuid];
    uUIDString = [uuid UUIDString];
    v10 = 138543619;
    v11 = uUIDString;
    v12 = 2113;
    v13 = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SIMULATOR: Telling paired client that the advertised item %{public}@/%{private}@ changed.", &v10, 0x16u);
  }

  simulator = [(UASimulatorAdvertiser *)self simulator];
  sub_10007ABEC([simulator pairedClientPort]);

  return 1;
}

- (id)pairedDevices
{
  simulator = [(UASimulatorAdvertiser *)self simulator];
  peeredDevice = [simulator peeredDevice];
  if (peeredDevice)
  {
    simulator2 = [(UASimulatorAdvertiser *)self simulator];
    peeredDevice2 = [simulator2 peeredDevice];
    v7 = [NSSet setWithObject:peeredDevice2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)statusString
{
  advertisableItems = [(UASimulatorAdvertiser *)self advertisableItems];
  v4 = [advertisableItems count];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = +[NSMutableString string];
  [v5 appendFormat:@"### UASimulatorAdvertiser:"];
  advertisableItems2 = [(UASimulatorAdvertiser *)self advertisableItems];
  firstObject = [advertisableItems2 firstObject];
  [v5 appendFormat:@"%@", firstObject];

  [v5 appendString:@"\n"];
  if (v5)
  {
    v8 = [v5 copy];
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  return v8;
}

@end