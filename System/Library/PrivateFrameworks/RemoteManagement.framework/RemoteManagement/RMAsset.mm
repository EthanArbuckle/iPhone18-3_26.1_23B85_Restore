@interface RMAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAsset:(id)a3;
- (RMAsset)initWithCoder:(id)a3;
- (RMAsset)initWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 content:(id)a6 channel:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMAsset

- (RMAsset)initWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 content:(id)a6 channel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = RMAsset;
  v17 = [(RMAsset *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    type = v17->_type;
    v17->_type = v18;

    v20 = [v13 copy];
    identifier = v17->_identifier;
    v17->_identifier = v20;

    v22 = [v14 copy];
    serverToken = v17->_serverToken;
    v17->_serverToken = v22;

    v24 = [v15 copy];
    content = v17->_content;
    v17->_content = v24;

    objc_storeStrong(&v17->_channel, a7);
  }

  return v17;
}

- (RMAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channel"];

  v10 = [(RMAsset *)self initWithType:v5 identifier:v6 serverToken:v7 content:v8 channel:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMAsset *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(RMAsset *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(RMAsset *)self serverToken];
  [v4 encodeObject:v7 forKey:@"serverToken"];

  v8 = [(RMAsset *)self content];
  [v4 encodeObject:v8 forKey:@"content"];

  v9 = [(RMAsset *)self channel];
  [v4 encodeObject:v9 forKey:@"channel"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMAsset *)self isEqualToAsset:v4];
  }

  return v5;
}

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v5 = [(RMAsset *)self hash];
  if (v5 == [v4 hash])
  {
    v6 = [(RMAsset *)self identifier];
    v7 = [v4 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RMAsset *)self serverToken];
      v9 = [v4 serverToken];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RMAsset *)self type];
        v11 = [v4 type];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(RMAsset *)self channel];
          v13 = [v4 channel];
          if ([v12 isEqualToChannel:v13])
          {
            v17 = [(RMAsset *)self content];
            [v4 content];
            v14 = v18 = v12;
            v15 = [v17 isEqualToData:v14];

            v12 = v18;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(RMAsset *)self identifier];
  v4 = [v3 hash];
  v5 = [(RMAsset *)self serverToken];
  v6 = [v5 hash] ^ v4;
  v7 = [(RMAsset *)self content];
  v8 = [v7 hash];
  v9 = [(RMAsset *)self channel];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RMAsset *)self type];
  v12 = [v11 hash];

  return v10 ^ v12;
}

@end