@interface SFUserActivityData
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUserActivityData)initWithCoder:(id)a3;
- (SFUserActivityData)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUserActivityData

- (SFUserActivityData)initWithProtobuf:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SFUserActivityData;
  v5 = [(SFUserActivityData *)&v23 init];
  if (v5)
  {
    v6 = [v4 activityType];

    if (v6)
    {
      v7 = [v4 activityType];
      [(SFUserActivityData *)v5 setActivityType:v7];
    }

    v8 = [v4 userInfos];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4 userInfos];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[SFUserActivityInfo alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(SFUserActivityData *)v5 setUserInfo:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFUserActivityData *)self activityType];
  v4 = [v3 hash];
  v5 = [(SFUserActivityData *)self userInfo];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFUserActivityData *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFUserActivityData *)self activityType];
      v8 = [(SFUserActivityData *)v6 activityType];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFUserActivityData *)self activityType];
      if (v9)
      {
        v3 = [(SFUserActivityData *)self activityType];
        v10 = [(SFUserActivityData *)v6 activityType];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFUserActivityData *)self userInfo];
      v13 = [(SFUserActivityData *)v6 userInfo];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFUserActivityData *)self userInfo];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFUserActivityData *)self userInfo];
          [(SFUserActivityData *)v6 userInfo];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFUserActivityData *)self activityType];
  v6 = [v5 copy];
  [v4 setActivityType:v6];

  v7 = [(SFUserActivityData *)self userInfo];
  v8 = [v7 copy];
  [v4 setUserInfo:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  v3 = [(_SFPBUserActivityData *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  v3 = [(_SFPBUserActivityData *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBUserActivityData alloc] initWithFacade:self];
  v5 = [(_SFPBUserActivityData *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFUserActivityData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBUserActivityData alloc] initWithData:v5];
  v7 = [(SFUserActivityData *)self initWithProtobuf:v6];

  return v7;
}

@end