@interface STStatusRequest_MessagesItemStatesItemReasonItem
+ (NSSet)allowedKeys;
+ (id)buildRequiredOnlyWithCode:(id)a3;
+ (id)buildWithCode:(id)a3;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayload;
@end

@implementation STStatusRequest_MessagesItemStatesItemReasonItem

+ (NSSet)allowedKeys
{
  v5 = @"Code";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)buildWithCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCode:v3];

  return v4;
}

+ (id)buildRequiredOnlyWithCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCode:v3];

  return v4;
}

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v30 = 0;
  v7 = [(STStatusRequest_MessagesItemStatesItemReasonItem *)self loadStringFromDictionary:v6 withKey:@"Code" isRequired:1 defaultValue:0 error:&v30];
  v8 = v30;
  code = self->_code;
  self->_code = v7;

  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v8;
    }
  }

  else
  {
    v11 = [v6 allKeys];
    v12 = [NSMutableSet setWithArray:v11];

    v13 = +[STStatusRequest_MessagesItemStatesItemReasonItem allowedKeys];
    [v12 minusSet:v13];

    v14 = +[NSMutableDictionary dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v6;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ([v12 containsObject:v20])
          {
            v21 = [v15 objectForKeyedSubscript:v20];
            [v14 setObject:v21 forKeyedSubscript:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v22 = [v14 copy];
      ANY = self->_ANY;
      self->_ANY = v22;
    }

    v6 = v25;
  }

  return v8 == 0;
}

- (id)serializePayload
{
  v3 = +[NSMutableDictionary dictionary];
  [(STStatusRequest_MessagesItemStatesItemReasonItem *)self serializeStringIntoDictionary:v3 withKey:@"Code" withValue:self->_code isRequired:1 defaultValue:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_ANY;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_ANY objectForKeyedSubscript:v9, v13];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = STStatusRequest_MessagesItemStatesItemReasonItem;
  v4 = [(STStatusRequest_MessagesItemStatesItemReasonItem *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_code copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSDictionary *)self->_ANY copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end