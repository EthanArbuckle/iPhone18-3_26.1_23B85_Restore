@interface RMStatusSubscriptionQueryResult
- (RMStatusSubscriptionQueryResult)init;
- (RMStatusSubscriptionQueryResult)initWithQueryResult:(id)result lastReceivedDateByKeyPath:(id)path;
- (RMStatusSubscriptionQueryResult)initWithStatusKeyPaths:(id)paths lastReceivedDateByKeyPath:(id)path statusByKeyPath:(id)keyPath errorByKeyPath:(id)byKeyPath;
@end

@implementation RMStatusSubscriptionQueryResult

- (RMStatusSubscriptionQueryResult)init
{
  v3 = objc_opt_new();
  v4 = [(RMStatusSubscriptionQueryResult *)self initWithStatusKeyPaths:v3 lastReceivedDateByKeyPath:&__NSDictionary0__struct statusByKeyPath:&__NSDictionary0__struct errorByKeyPath:&__NSDictionary0__struct];

  return v4;
}

- (RMStatusSubscriptionQueryResult)initWithStatusKeyPaths:(id)paths lastReceivedDateByKeyPath:(id)path statusByKeyPath:(id)keyPath errorByKeyPath:(id)byKeyPath
{
  pathsCopy = paths;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = RMStatusSubscriptionQueryResult;
  v12 = [(RMStatusQueryResult *)&v28 initWithStatusKeyPaths:pathsCopy statusByKeyPath:keyPath errorByKeyPath:byKeyPath];
  if (v12)
  {
    v13 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = pathsCopy;
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
          v20 = [pathCopy objectForKeyedSubscript:{v19, v24}];
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

- (RMStatusSubscriptionQueryResult)initWithQueryResult:(id)result lastReceivedDateByKeyPath:(id)path
{
  pathCopy = path;
  resultCopy = result;
  statusKeyPaths = [resultCopy statusKeyPaths];
  statusByKeyPath = [resultCopy statusByKeyPath];
  errorByKeyPath = [resultCopy errorByKeyPath];

  v11 = [(RMStatusSubscriptionQueryResult *)self initWithStatusKeyPaths:statusKeyPaths lastReceivedDateByKeyPath:pathCopy statusByKeyPath:statusByKeyPath errorByKeyPath:errorByKeyPath];
  return v11;
}

@end