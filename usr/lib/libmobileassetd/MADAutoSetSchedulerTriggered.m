@interface MADAutoSetSchedulerTriggered
- (MADAutoSetSchedulerTriggered)initWithCoder:(id)a3;
- (id)copy;
- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withSchedulerPolicy:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetSchedulerTriggered

- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withSchedulerPolicy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADAutoSetSchedulerTriggered;
  v12 = [(MADAutoSetSchedulerTriggered *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_clientDomainName, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (MADAutoSetSchedulerTriggered)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADAutoSetSchedulerTriggered;
  v5 = [(MADAutoSetSchedulerTriggered *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  [v4 encodeObject:v6 forKey:@"asetSetIdentifier"];

  v7 = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  [v4 encodeObject:v7 forKey:@"schedulerPolicy"];
}

- (id)copy
{
  v3 = [MADAutoSetSchedulerTriggered alloc];
  v4 = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  v5 = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  v6 = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  v7 = [v6 copy];
  v8 = [(MADAutoSetSchedulerTriggered *)v3 initForClientDomainName:v4 forAssetSetIdentifier:v5 withSchedulerPolicy:v7];

  return v8;
}

- (id)summary
{
  v3 = [(MADAutoSetSchedulerTriggered *)self clientDomainName];
  v4 = [(MADAutoSetSchedulerTriggered *)self assetSetIdentifier];
  v5 = [(MADAutoSetSchedulerTriggered *)self schedulerPolicy];
  v6 = @"Y";
  if (!v5)
  {
    v6 = @"N";
  }

  v7 = [NSString stringWithFormat:@"[clientDomain:%@|setIdentifier:%@|schedulerPolicy:%@", v3, v4, v6];

  return v7;
}

@end