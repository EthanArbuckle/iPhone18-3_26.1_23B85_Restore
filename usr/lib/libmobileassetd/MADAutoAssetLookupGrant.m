@interface MADAutoAssetLookupGrant
- (MADAutoAssetLookupGrant)initWithCoder:(id)a3;
- (id)description;
- (id)initForAssetType:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetLookupGrant

- (id)initForAssetType:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MADAutoAssetLookupGrant;
  v6 = [(MADAutoAssetLookupGrant *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetType, a3);
    holderJobUUID = v7->_holderJobUUID;
    v7->_holderJobUUID = 0;

    v9 = objc_alloc_init(NSMutableArray);
    awaitingExclusiveGrant = v7->_awaitingExclusiveGrant;
    v7->_awaitingExclusiveGrant = v9;
  }

  return v7;
}

- (MADAutoAssetLookupGrant)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADAutoAssetLookupGrant;
  v5 = [(MADAutoAssetLookupGrant *)&v15 init];
  if (v5)
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v16 count:2];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"holderJobUUID"];
    holderJobUUID = v5->_holderJobUUID;
    v5->_holderJobUUID = v10;

    v12 = [v4 decodeObjectOfClasses:v7 forKey:@"awaitingExclusiveGrant"];
    awaitingExclusiveGrant = v5->_awaitingExclusiveGrant;
    v5->_awaitingExclusiveGrant = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetLookupGrant *)self assetType];
  [v4 encodeObject:v5 forKey:@"assetType"];

  v6 = [(MADAutoAssetLookupGrant *)self holderJobUUID];
  [v4 encodeObject:v6 forKey:@"holderJobUUID"];

  v7 = [(MADAutoAssetLookupGrant *)self awaitingExclusiveGrant];
  [v4 encodeObject:v7 forKey:@"awaitingExclusiveGrant"];
}

- (id)description
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(MADAutoAssetLookupGrant *)self awaitingExclusiveGrant];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = &stru_4BD3F0;
    v6 = *v16;
    v7 = &stru_4BD3F0;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[NSString alloc] initWithFormat:@"%@%@%@", v9, v5, *(*(&v15 + 1) + 8 * v8)];

        v8 = v8 + 1;
        v5 = @"|";
        v9 = v7;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = @"|";
      v10 = v7;
    }

    while (v4);
  }

  else
  {
    v10 = &stru_4BD3F0;
    v7 = @"NONE";
  }

  v11 = [(MADAutoAssetLookupGrant *)self summary];
  v12 = [NSString stringWithFormat:@"%@|awaiting:[%@]", v11, v7];

  return v12;
}

- (id)summary
{
  v3 = [(MADAutoAssetLookupGrant *)self assetType];
  v4 = [(MADAutoAssetLookupGrant *)self holderJobUUID];
  if (v4)
  {
    v5 = [(MADAutoAssetLookupGrant *)self holderJobUUID];
  }

  else
  {
    v5 = @"N";
  }

  v6 = [(MADAutoAssetLookupGrant *)self awaitingExclusiveGrant];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[assetType:%@|holderJobUUID:%@|awaitingGrant:%ld]", v3, v5, [v6 count]);

  if (v4)
  {
  }

  return v7;
}

@end