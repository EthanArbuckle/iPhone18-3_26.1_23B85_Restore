@interface SSVGratisRequestBody
- (NSData)JSONBodyData;
- (NSData)propertyListBodyData;
- (NSMutableDictionary)bodyDictionary;
- (SSVGratisRequestBody)initWithRequestStyle:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setValue:(id)a3 forBodyParameter:(id)a4;
@end

@implementation SSVGratisRequestBody

- (SSVGratisRequestBody)initWithRequestStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SSVGratisRequestBody;
  result = [(SSVGratisRequestBody *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (NSMutableDictionary)bodyDictionary
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_additionalParameters)
  {
    [v3 addEntriesFromDictionary:?];
  }

  if (self->_backgroundRequest)
  {
    [v4 setObject:@"1" forKey:@"is-background"];
  }

  v5 = self->_bundleIdentifiers;
  v6 = self->_itemIdentifiers;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_applications count])
  {
    v35 = v6;
    v36 = v5;
    v37 = v4;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = self;
    v9 = self->_applications;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v14 bundleIdentifier];
          if (v15)
          {
            [v8 addObject:v15];
          }

          v16 = [v14 itemIdentifier];
          if (v16)
          {
            v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{strtoll(objc_msgSend(v16, "UTF8String"), 0, 10)}];
            [v38 addObject:v17];
          }

          v18 = [v14 dictionaryRepresentation];
          [v7 addObject:v18];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v5 = v8;
    }

    else
    {
      v5 = v36;
    }

    self = v34;
    v6 = v35;
    if ([v38 count])
    {
      v19 = v38;

      v6 = v19;
    }

    v4 = v37;
  }

  style = self->_style;
  if (!style)
  {
    accountID = self->_accountID;
    if (accountID)
    {
      v24 = [(NSNumber *)accountID stringValue];
      [v4 setObject:v24 forKey:@"ds-id"];
    }

    if (v5)
    {
      [v4 setObject:v5 forKey:@"bundle-ids"];
    }

    if (v6)
    {
      [v4 setObject:v6 forKey:@"item-ids"];
    }

    v25 = @"application/json";
    v26 = @"response-content-type";
    v27 = v4;
    goto LABEL_46;
  }

  if (style != 2)
  {
    if (style != 1)
    {
      goto LABEL_47;
    }

    if ([v7 count])
    {
      [v4 setObject:v7 forKey:@"apps"];
    }

    if ([(NSArray *)v5 count]== 1)
    {
      v21 = [(NSArray *)v5 objectAtIndex:0];
      [v4 setObject:v21 forKey:@"bid"];
    }

    else if (v5)
    {
      [v4 setObject:v5 forKey:@"bundle-ids"];
    }

    if (!v6)
    {
      goto LABEL_47;
    }

    [v4 setObject:v6 forKey:@"claim-item-ids"];
    v26 = @"download-item-ids";
    v27 = v4;
    v25 = v6;
LABEL_46:
    [v27 setObject:v25 forKey:v26];
LABEL_47:
    v22 = 2;
    goto LABEL_48;
  }

  if ([v7 count])
  {
    [v4 setObject:v7 forKey:@"apps"];
  }

  if (v5)
  {
    [v4 setObject:v5 forKey:@"bundle-ids"];
  }

  v22 = 4;
LABEL_48:
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
  [v4 setObject:v28 forKey:@"claim-type"];

  v29 = MGCopyAnswer();
  if (v29)
  {
    [v4 setObject:v29 forKey:@"serial-no"];
  }

  v30 = MGCopyAnswer();
  if (v30)
  {
    [v4 setObject:v30 forKey:@"guid"];
    [v4 setObject:v30 forKey:@"udid"];
  }

  v31 = MGCopyAnswer();
  if (v31)
  {
    [v4 setObject:v31 forKey:@"imei"];
  }

  v32 = MGCopyAnswer();
  if (v32)
  {
    [v4 setObject:v32 forKey:@"meid"];
  }

  return v4;
}

- (NSData)JSONBodyData
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(SSVGratisRequestBody *)self bodyDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  return v4;
}

- (NSData)propertyListBodyData
{
  v2 = MEMORY[0x1E696AE40];
  v3 = [(SSVGratisRequestBody *)self bodyDictionary];
  v4 = [v2 dataWithPropertyList:v3 format:100 options:0 error:0];

  return v4;
}

- (void)setValue:(id)a3 forBodyParameter:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_additionalParameters)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    additionalParameters = self->_additionalParameters;
    self->_additionalParameters = v7;
  }

  v9 = self->_additionalParameters;
  if (v10)
  {
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithRequestStyle:", self->_style}];
  v6 = [(NSNumber *)self->_accountID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSMutableDictionary *)self->_additionalParameters mutableCopyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSArray *)self->_applications copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_backgroundRequest;
  v12 = [(NSArray *)self->_bundleIdentifiers copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSArray *)self->_itemIdentifiers copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SSVGratisRequestBody;
  v4 = [(SSVGratisRequestBody *)&v9 description];
  v5 = v4;
  itemIdentifiers = self->_itemIdentifiers;
  if (!itemIdentifiers)
  {
    itemIdentifiers = self->_bundleIdentifiers;
  }

  v7 = [v3 stringWithFormat:@"%@: [IDs: %@]", v4, itemIdentifiers];

  return v7;
}

@end