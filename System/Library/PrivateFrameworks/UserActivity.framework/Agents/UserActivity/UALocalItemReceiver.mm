@interface UALocalItemReceiver
- (BOOL)receiving;
- (UALocalItemReceiver)initWithManager:(id)manager controller:(id)controller;
- (id)receivedItems;
- (id)statusString;
@end

@implementation UALocalItemReceiver

- (id)receivedItems
{
  v3 = +[NSMutableArray array];
  v4 = +[UAUserActivityDefaults sharedDefaults];
  debugCrossoverAllActivities = [v4 debugCrossoverAllActivities];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  controller = [(UALocalItemReceiver *)self controller];
  items = [controller items];

  v8 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        eligibleForHandoff = [v12 eligibleForHandoff];
        if (v12)
        {
          v14 = eligibleForHandoff == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          if (debugCrossoverAllActivities && (-[UALocalItemReceiver controller](selfCopy, "controller"), v15 = objc_claimAutoreleasedReturnValue(), [v12 client], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "clientIsActive:", v16), v16, v15, (v17 & 1) != 0) || !sub_1000023A0(objc_msgSend(v12, "type")))
          {
            [v3 addObject:v12];
          }
        }
      }

      v9 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = [v3 copy];

  return v18;
}

- (UALocalItemReceiver)initWithManager:(id)manager controller:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = UALocalItemReceiver;
  v8 = [(UAReceiver *)&v11 initWithManager:manager name:@"LocalReceiver"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, controller);
  }

  return v9;
}

- (BOOL)receiving
{
  receivedItems = [(UALocalItemReceiver *)self receivedItems];
  v3 = [receivedItems count] != 0;

  return v3;
}

- (id)statusString
{
  if ([(UALocalItemReceiver *)self receiving])
  {
    receivedItems = [(UALocalItemReceiver *)self receivedItems];
    firstObject = [receivedItems firstObject];
    logString = [firstObject logString];
    v6 = [NSString stringWithFormat:@"LocalItems:%@", logString];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"LocalItems:%@", @"-"];
  }

  return v6;
}

@end