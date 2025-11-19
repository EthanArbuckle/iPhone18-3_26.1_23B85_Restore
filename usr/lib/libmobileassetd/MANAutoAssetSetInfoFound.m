@interface MANAutoAssetSetInfoFound
- (MANAutoAssetSetInfoFound)initWithCoder:(id)a3;
- (id)description;
- (id)initForAssetSetIdentifier:(id)a3 reportingStatus:(id)a4;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetInfoFound

- (id)initForAssetSetIdentifier:(id)a3 reportingStatus:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MANAutoAssetSetInfoFound;
  v9 = [(MANAutoAssetSetInfoFound *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetIdentifier, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (MANAutoAssetSetInfoFound)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetInfoFound;
  v5 = [(MANAutoAssetSetInfoFound *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetInfoFound *)self assetSetIdentifier];
  [v4 encodeObject:v5 forKey:@"assetSetIdentifier"];

  v6 = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  [v4 encodeObject:v6 forKey:@"currentSetStatus"];
}

- (id)description
{
  v3 = [(MANAutoAssetSetInfoFound *)self summary];
  v4 = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"%@\n%@", v3, v5];

  return v6;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetInfoFound *)self assetSetIdentifier];
  v4 = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  v5 = [v4 summary];
  v6 = [NSString stringWithFormat:@"assetSetIdentifier:%@|currentSetStatus:%@", v3, v5];

  return v6;
}

@end