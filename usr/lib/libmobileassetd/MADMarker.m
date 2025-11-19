@interface MADMarker
- (BOOL)isEqual:(id)a3;
- (MADMarker)initWithCoder:(id)a3;
- (id)description;
- (id)initForAssetType:(id)a3 forClientDomainName:(id)a4 forAssetSetIdentifier:(id)a5 forAssetSelector:(id)a6 forSetJob:(BOOL)a7 withSetPolicy:(id)a8 withPushedPolicy:(id)a9;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMarker

- (id)initForAssetType:(id)a3 forClientDomainName:(id)a4 forAssetSetIdentifier:(id)a5 forAssetSelector:(id)a6 forSetJob:(BOOL)a7 withSetPolicy:(id)a8 withPushedPolicy:(id)a9
{
  v10 = a7;
  v26 = a3;
  v25 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = MADMarker;
  v20 = [(MADMarker *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_assetType, a3);
    if (v10)
    {
      v21->_isSetJob = 1;
      objc_storeStrong(&v21->_clientDomainName, a4);
      objc_storeStrong(&v21->_assetSetIdentifier, a5);
      objc_storeStrong(&v21->_setPolicy, a8);
      v22 = 48;
      v23 = v19;
    }

    else
    {
      v21->_isSetJob = 0;
      v22 = 56;
      v23 = v17;
    }

    objc_storeStrong((&v21->super.isa + v22), v23);
  }

  return v21;
}

- (MADMarker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADMarker;
  v5 = [(MADMarker *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v12;

    v5->_isSetJob = [v4 decodeBoolForKey:@"isSetJob"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MADMarker *)self assetType];
  [v8 encodeObject:v4 forKey:@"assetType"];

  v5 = [(MADMarker *)self clientDomainName];
  [v8 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MADMarker *)self assetSetIdentifier];
  [v8 encodeObject:v6 forKey:@"assetSetIdentifier"];

  v7 = [(MADMarker *)self assetSelector];
  [v8 encodeObject:v7 forKey:@"assetSelector"];

  [v8 encodeBool:-[MADMarker isSetJob](self forKey:{"isSetJob"), @"isSetJob"}];
}

- (id)description
{
  v3 = [(MADMarker *)self assetType];
  v4 = [NSString stringWithFormat:@"assetType: %@\n", v3];

  if ([(MADMarker *)self isSetJob])
  {
    v5 = [(MADMarker *)self clientDomainName];
    v6 = [(MADMarker *)self assetSetIdentifier];
    v7 = [(MADMarker *)self setPolicy];
    v8 = [v7 description];
    v9 = [NSString stringWithFormat:@"%@clientDomainName: %@\nassetSetIdentifier: %@\nsetPolicy: %@", v4, v5, v6, v8];

    v4 = v7;
  }

  else
  {
    v5 = [(MADMarker *)self assetSelector];
    v6 = [v5 description];
    v9 = [NSString stringWithFormat:@"%@assetSelector: %@", v4, v6];
  }

  return v9;
}

- (id)summary
{
  v3 = [(MADMarker *)self assetType];
  v4 = [NSString stringWithFormat:@"assetType:%@", v3];

  if ([(MADMarker *)self isSetJob])
  {
    v5 = [(MADMarker *)self clientDomainName];
    v6 = [(MADMarker *)self assetSetIdentifier];
    [NSString stringWithFormat:@"%@|domainName:%@|setIdentifier:%@", v4, v5, v6];
  }

  else
  {
    v5 = [(MADMarker *)self assetSelector];
    v6 = [v5 summary];
    [NSString stringWithFormat:@"%@|selector:%@", v4, v6, v9];
  }
  v7 = ;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(MADMarker *)self isSetJob], v5 == [(MADMarker *)v4 isSetJob]))
    {
      if ([(MADMarker *)self isSetJob])
      {
        v7 = [(MADMarker *)self clientDomainName];
        v8 = [(MADMarker *)v4 clientDomainName];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(MADMarker *)self assetSetIdentifier];
          v10 = [(MADMarker *)v4 assetSetIdentifier];
          v6 = [v9 isEqualToString:v10];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v7 = [(MADMarker *)self assetSelector];
        v8 = [(MADMarker *)v4 assetSelector];
        v6 = [v7 isEqual:v8];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end