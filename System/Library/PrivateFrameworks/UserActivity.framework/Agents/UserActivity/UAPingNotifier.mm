@interface UAPingNotifier
- (UAPingNotifier)initWithManager:(id)manager;
- (id)statusString;
- (void)setItems:(id)items;
@end

@implementation UAPingNotifier

- (UAPingNotifier)initWithManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = UAPingNotifier;
  v3 = [(UAActivityNotifier *)&v7 initWithManager:manager name:@"PingNotifier"];
  if (v3)
  {
    v4 = +[NSMutableSet set];
    pongItems = v3->_pongItems;
    v3->_pongItems = v4;
  }

  return v3;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = +[UAUserActivityDefaults sharedDefaults];
  debugEnablePinging = [v5 debugEnablePinging];

  if (debugEnablePinging)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          activityType = [v12 activityType];
          v14 = [activityType isEqual:@"com.apple.ping"];

          if (v14)
          {
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_10000AAF0;
            v15[3] = &unk_1000C4C98;
            v15[4] = v12;
            v15[5] = self;
            [v12 requestPayloadWithCompletionHandler:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (id)statusString
{
  pongItems = [(UAPingNotifier *)self pongItems];
  v4 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"PingNotifier: %ld outstanding PONG responses %ld total pongs sent.", [pongItems count], -[UAPingNotifier pongCount](self, "pongCount"));;

  v5 = [v4 copy];

  return v5;
}

@end