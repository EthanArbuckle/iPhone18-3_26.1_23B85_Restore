@interface UALocalItemReceiver
- (BOOL)receiving;
- (UALocalItemReceiver)initWithManager:(id)a3 controller:(id)a4;
- (id)receivedItems;
- (id)statusString;
@end

@implementation UALocalItemReceiver

- (id)receivedItems
{
  v3 = +[NSMutableArray array];
  v4 = +[UAUserActivityDefaults sharedDefaults];
  v5 = [v4 debugCrossoverAllActivities];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = self;
  v6 = [(UALocalItemReceiver *)self controller];
  v7 = [v6 items];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 eligibleForHandoff];
        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          if (v5 && (-[UALocalItemReceiver controller](v20, "controller"), v15 = objc_claimAutoreleasedReturnValue(), [v12 client], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "clientIsActive:", v16), v16, v15, (v17 & 1) != 0) || !sub_1000023A0(objc_msgSend(v12, "type")))
          {
            [v3 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = [v3 copy];

  return v18;
}

- (UALocalItemReceiver)initWithManager:(id)a3 controller:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UALocalItemReceiver;
  v8 = [(UAReceiver *)&v11 initWithManager:a3 name:@"LocalReceiver"];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, a4);
  }

  return v9;
}

- (BOOL)receiving
{
  v2 = [(UALocalItemReceiver *)self receivedItems];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)statusString
{
  if ([(UALocalItemReceiver *)self receiving])
  {
    v3 = [(UALocalItemReceiver *)self receivedItems];
    v4 = [v3 firstObject];
    v5 = [v4 logString];
    v6 = [NSString stringWithFormat:@"LocalItems:%@", v5];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"LocalItems:%@", @"-"];
  }

  return v6;
}

@end