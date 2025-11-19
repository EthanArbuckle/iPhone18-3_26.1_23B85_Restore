@interface RMConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (RMConfiguration)initWithCoder:(id)a3;
- (RMConfiguration)initWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 content:(id)a6 channel:(id)a7 assetByIdentifier:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMConfiguration

- (RMConfiguration)initWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 content:(id)a6 channel:(id)a7 assetByIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = RMConfiguration;
  v20 = [(RMConfiguration *)&v32 init];
  if (v20)
  {
    v21 = [v14 copy];
    type = v20->_type;
    v20->_type = v21;

    v23 = [v15 copy];
    identifier = v20->_identifier;
    v20->_identifier = v23;

    v25 = [v16 copy];
    serverToken = v20->_serverToken;
    v20->_serverToken = v25;

    v27 = [v17 copy];
    content = v20->_content;
    v20->_content = v27;

    objc_storeStrong(&v20->_channel, a7);
    v29 = [v19 copy];
    assetByIdentifier = v20->_assetByIdentifier;
    v20->_assetByIdentifier = v29;
  }

  return v20;
}

- (RMConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channel"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"assetByIdentifier"];

  v15 = [(RMConfiguration *)self initWithType:v5 identifier:v6 serverToken:v7 content:v8 channel:v9 assetByIdentifier:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMConfiguration *)self type];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(RMConfiguration *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(RMConfiguration *)self serverToken];
  [v4 encodeObject:v7 forKey:@"serverToken"];

  v8 = [(RMConfiguration *)self content];
  [v4 encodeObject:v8 forKey:@"content"];

  v9 = [(RMConfiguration *)self channel];
  [v4 encodeObject:v9 forKey:@"channel"];

  v10 = [(RMConfiguration *)self assetByIdentifier];
  [v4 encodeObject:v10 forKey:@"assetByIdentifier"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMConfiguration *)self isEqualToConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(RMConfiguration *)self hash];
  if (v5 == [v4 hash])
  {
    v6 = [(RMConfiguration *)self identifier];
    v7 = [v4 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RMConfiguration *)self serverToken];
      v9 = [v4 serverToken];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RMConfiguration *)self type];
        v11 = [v4 type];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(RMConfiguration *)self channel];
          v13 = [v4 channel];
          if ([v12 isEqualToChannel:v13])
          {
            v29 = v12;
            v14 = [(RMConfiguration *)self content];
            [v4 content];
            v28 = v30 = v14;
            if ([v14 isEqualToData:?])
            {
              v15 = [(RMConfiguration *)self assetByIdentifier];
              v25 = [v4 assetByIdentifier];
              v16 = v15;
              v17 = v25;
              v18 = v17;
              v19 = v16;
              v20 = v16 == v17;
              v12 = v29;
              v27 = v19;
              if (v20)
              {
                v21 = 1;
              }

              else
              {
                v21 = 0;
                if (v19 && v17)
                {
                  v22 = v17;
                  v23 = [v19 isEqual:v17];
                  v18 = v22;
                  v21 = v23;
                }
              }

              v26 = v18;
            }

            else
            {
              v21 = 0;
              v12 = v29;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(RMConfiguration *)self identifier];
  v4 = [v3 hash];
  v5 = [(RMConfiguration *)self serverToken];
  v6 = [v5 hash] ^ v4;
  v7 = [(RMConfiguration *)self content];
  v8 = [v7 hash];
  v9 = [(RMConfiguration *)self channel];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RMConfiguration *)self type];
  v12 = [v11 hash];
  v13 = [(RMConfiguration *)self assetByIdentifier];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

@end