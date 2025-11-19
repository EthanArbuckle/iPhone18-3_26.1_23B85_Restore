@interface RMStatusSubscriptionQueryResult
- (RMStatusSubscriptionQueryResult)init;
- (RMStatusSubscriptionQueryResult)initWithQueryResult:(id)a3 lastReceivedDateByKeyPath:(id)a4;
- (RMStatusSubscriptionQueryResult)initWithStatusKeyPaths:(id)a3 lastReceivedDateByKeyPath:(id)a4 statusByKeyPath:(id)a5 errorByKeyPath:(id)a6;
@end

@implementation RMStatusSubscriptionQueryResult

- (RMStatusSubscriptionQueryResult)init
{
  v3 = objc_opt_new();
  v4 = [(RMStatusSubscriptionQueryResult *)self initWithStatusKeyPaths:v3 lastReceivedDateByKeyPath:&__NSDictionary0__struct statusByKeyPath:&__NSDictionary0__struct errorByKeyPath:&__NSDictionary0__struct];

  return v4;
}

- (RMStatusSubscriptionQueryResult)initWithStatusKeyPaths:(id)a3 lastReceivedDateByKeyPath:(id)a4 statusByKeyPath:(id)a5 errorByKeyPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v28.receiver = self;
  v28.super_class = RMStatusSubscriptionQueryResult;
  v12 = [(RMStatusQueryResult *)&v28 initWithStatusKeyPaths:v10 statusByKeyPath:a5 errorByKeyPath:a6];
  if (v12)
  {
    v13 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [v11 objectForKeyedSubscript:{v19, v24}];
          if (v20)
          {
            [v13 setObject:v20 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    v21 = [v13 copy];
    lastReceivedDateByKeyPath = v12->_lastReceivedDateByKeyPath;
    v12->_lastReceivedDateByKeyPath = v21;
  }

  return v12;
}

- (RMStatusSubscriptionQueryResult)initWithQueryResult:(id)a3 lastReceivedDateByKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 statusKeyPaths];
  v9 = [v7 statusByKeyPath];
  v10 = [v7 errorByKeyPath];

  v11 = [(RMStatusSubscriptionQueryResult *)self initWithStatusKeyPaths:v8 lastReceivedDateByKeyPath:v6 statusByKeyPath:v9 errorByKeyPath:v10];
  return v11;
}

@end