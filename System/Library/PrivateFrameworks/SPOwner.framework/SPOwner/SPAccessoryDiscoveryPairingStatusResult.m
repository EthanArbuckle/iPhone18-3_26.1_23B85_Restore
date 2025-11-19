@interface SPAccessoryDiscoveryPairingStatusResult
- (SPAccessoryDiscoveryPairingStatusResult)initWithCoder:(id)a3;
- (SPAccessoryDiscoveryPairingStatusResult)initWithPairingStatus:(int64_t)a3 lostModeInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAccessoryDiscoveryPairingStatusResult

- (SPAccessoryDiscoveryPairingStatusResult)initWithPairingStatus:(int64_t)a3 lostModeInfo:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SPAccessoryDiscoveryPairingStatusResult;
  v8 = [(SPAccessoryDiscoveryPairingStatusResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pairingStatus = a3;
    objc_storeStrong(&v8->_lostModeInfo, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPAccessoryDiscoveryPairingStatusResult alloc];
  v5 = [(SPAccessoryDiscoveryPairingStatusResult *)self pairingStatus];
  v6 = [(SPAccessoryDiscoveryPairingStatusResult *)self lostModeInfo];
  v7 = [(SPAccessoryDiscoveryPairingStatusResult *)v4 initWithPairingStatus:v5 lostModeInfo:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  pairingStatus = self->_pairingStatus;
  v5 = a3;
  [v5 encodeInt64:pairingStatus forKey:@"pairingStatus"];
  [v5 encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
}

- (SPAccessoryDiscoveryPairingStatusResult)initWithCoder:(id)a3
{
  v4 = a3;
  self->_pairingStatus = [v4 decodeInt64ForKey:@"pairingStatus"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];

  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v5;

  return self;
}

@end