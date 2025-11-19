@interface SUMDMScanOptions
- (SUMDMScanOptions)init;
- (SUMDMScanOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUMDMScanOptions

- (SUMDMScanOptions)init
{
  v7.receiver = self;
  v7.super_class = SUMDMScanOptions;
  v2 = [(SUOptionsBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    requestedProductMarketingVersion = v2->_requestedProductMarketingVersion;
    v2->_requestedProductMarketingVersion = 0;

    requestedBuildVersion = v3->_requestedBuildVersion;
    v3->_requestedBuildVersion = 0;

    v3->_useDelayPeriod = 2;
    v3->_delayPeriodSeconds = 0;
    v3->_MDMSoftwareUpdatePath = 3;
    v3->_allowSplat = 2;
  }

  return v3;
}

- (SUMDMScanOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUMDMScanOptions;
  v5 = [(SUOptionsBase *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestedProductMarketingVersion"];
    [(SUMDMScanOptions *)v5 setRequestedProductMarketingVersion:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestedBuildVersion"];
    [(SUMDMScanOptions *)v5 setRequestedBuildVersion:v7];

    -[SUMDMScanOptions setUseDelayPeriod:](v5, "setUseDelayPeriod:", [v4 decodeInt64ForKey:@"UseDelayPeriod"]);
    -[SUMDMScanOptions setDelayPeriodSeconds:](v5, "setDelayPeriodSeconds:", [v4 decodeInt64ForKey:@"DelayPeriodSeconds"]);
    -[SUMDMScanOptions setMDMSoftwareUpdatePath:](v5, "setMDMSoftwareUpdatePath:", [v4 decodeInt64ForKey:@"MDMSoftwareUpdatePath"]);
    -[SUMDMScanOptions setAllowSplat:](v5, "setAllowSplat:", [v4 decodeInt64ForKey:@"AllowSplat"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestedProductMarketingVersion = self->_requestedProductMarketingVersion;
  v5 = a3;
  [v5 encodeObject:requestedProductMarketingVersion forKey:@"RequestedProductMarketingVersion"];
  [v5 encodeObject:self->_requestedBuildVersion forKey:@"RequestedBuildVersion"];
  [v5 encodeInt64:self->_useDelayPeriod forKey:@"UseDelayPeriod"];
  [v5 encodeInt64:self->_delayPeriodSeconds forKey:@"DelayPeriodSeconds"];
  [v5 encodeInt64:self->_MDMSoftwareUpdatePath forKey:@"MDMSoftwareUpdatePath"];
  [v5 encodeInt64:self->_allowSplat forKey:@"AllowSplat"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRequestedProductMarketingVersion:self->_requestedProductMarketingVersion];
  [v4 setRequestedBuildVersion:self->_requestedBuildVersion];
  [v4 setUseDelayPeriod:self->_useDelayPeriod];
  [v4 setDelayPeriodSeconds:self->_delayPeriodSeconds];
  [v4 setMDMSoftwareUpdatePath:self->_MDMSoftwareUpdatePath];
  [v4 setAllowSplat:self->_allowSplat];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUMDMScanOptions *)self requestedProductMarketingVersion];
  v5 = [(SUMDMScanOptions *)self requestedBuildVersion];
  v6 = [MEMORY[0x277D64400] stringFromTriState:{-[SUMDMScanOptions useDelayPeriod](self, "useDelayPeriod")}];
  v7 = [(SUMDMScanOptions *)self delayPeriodSeconds];
  v8 = SUStringFromMDMSUPath([(SUMDMScanOptions *)self MDMSoftwareUpdatePath]);
  v9 = [MEMORY[0x277D64400] stringFromTriState:{-[SUMDMScanOptions allowSplat](self, "allowSplat")}];
  v10 = [v3 stringWithFormat:@"\n            RequestedProductMarketingVersion: %@\n            RequestedBuildVersion: %@\n            UseDelayPeriod: %@\n            DelayPeriodSeconds: %lu\n            MDMSoftwareUpdatePath: %@\n            AllowSplat: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end