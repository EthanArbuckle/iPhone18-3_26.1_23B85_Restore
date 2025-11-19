@interface RMStatusSubscription
- (id)reportDetails;
@end

@implementation RMStatusSubscription

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMStatusSubscription *)self sourceIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"sourceIdentifier"];

  v5 = [(RMStatusSubscription *)self sourceType];
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1000D2AD8 + v5);
  }

  [v3 setObject:v6 forKeyedSubscript:@"sourceType"];
  v7 = [(RMStatusSubscription *)self items];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(RMStatusSubscription *)self items];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) reportDetails];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"items"];

  return v3;
}

@end