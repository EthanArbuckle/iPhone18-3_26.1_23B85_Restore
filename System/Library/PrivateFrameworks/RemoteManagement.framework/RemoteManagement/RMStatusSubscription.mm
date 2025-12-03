@interface RMStatusSubscription
- (id)reportDetails;
@end

@implementation RMStatusSubscription

- (id)reportDetails
{
  v3 = objc_opt_new();
  sourceIdentifier = [(RMStatusSubscription *)self sourceIdentifier];
  [v3 setObject:sourceIdentifier forKeyedSubscript:@"sourceIdentifier"];

  sourceType = [(RMStatusSubscription *)self sourceType];
  if (sourceType > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = *(&off_1000D2AD8 + sourceType);
  }

  [v3 setObject:v6 forKeyedSubscript:@"sourceType"];
  items = [(RMStatusSubscription *)self items];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  items2 = [(RMStatusSubscription *)self items];
  v10 = [items2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(items2);
        }

        reportDetails = [*(*(&v16 + 1) + 8 * i) reportDetails];
        [v8 addObject:reportDetails];
      }

      v11 = [items2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"items"];

  return v3;
}

@end