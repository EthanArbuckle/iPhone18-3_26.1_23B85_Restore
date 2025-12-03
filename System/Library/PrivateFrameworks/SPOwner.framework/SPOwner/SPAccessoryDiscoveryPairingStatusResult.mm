@interface SPAccessoryDiscoveryPairingStatusResult
- (SPAccessoryDiscoveryPairingStatusResult)initWithCoder:(id)coder;
- (SPAccessoryDiscoveryPairingStatusResult)initWithPairingStatus:(int64_t)status lostModeInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAccessoryDiscoveryPairingStatusResult

- (SPAccessoryDiscoveryPairingStatusResult)initWithPairingStatus:(int64_t)status lostModeInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = SPAccessoryDiscoveryPairingStatusResult;
  v8 = [(SPAccessoryDiscoveryPairingStatusResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pairingStatus = status;
    objc_storeStrong(&v8->_lostModeInfo, info);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAccessoryDiscoveryPairingStatusResult alloc];
  pairingStatus = [(SPAccessoryDiscoveryPairingStatusResult *)self pairingStatus];
  lostModeInfo = [(SPAccessoryDiscoveryPairingStatusResult *)self lostModeInfo];
  v7 = [(SPAccessoryDiscoveryPairingStatusResult *)v4 initWithPairingStatus:pairingStatus lostModeInfo:lostModeInfo];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  pairingStatus = self->_pairingStatus;
  coderCopy = coder;
  [coderCopy encodeInt64:pairingStatus forKey:@"pairingStatus"];
  [coderCopy encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
}

- (SPAccessoryDiscoveryPairingStatusResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_pairingStatus = [coderCopy decodeInt64ForKey:@"pairingStatus"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];

  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v5;

  return self;
}

@end