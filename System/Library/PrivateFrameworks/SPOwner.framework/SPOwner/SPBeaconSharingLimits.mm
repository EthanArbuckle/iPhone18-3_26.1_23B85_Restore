@interface SPBeaconSharingLimits
- (SPBeaconSharingLimits)initWithCoder:(id)coder;
- (SPBeaconSharingLimits)initWithMaxCircleMembers:(int64_t)members maxDelegatedShares:(int64_t)shares;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconSharingLimits

- (SPBeaconSharingLimits)initWithMaxCircleMembers:(int64_t)members maxDelegatedShares:(int64_t)shares
{
  v7.receiver = self;
  v7.super_class = SPBeaconSharingLimits;
  result = [(SPBeaconSharingLimits *)&v7 init];
  if (result)
  {
    result->_maxCircleMembers = members;
    result->_maxDelegatedShares = shares;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconSharingLimits alloc];
  maxCircleMembers = [(SPBeaconSharingLimits *)self maxCircleMembers];
  maxDelegatedShares = [(SPBeaconSharingLimits *)self maxDelegatedShares];

  return [(SPBeaconSharingLimits *)v4 initWithMaxCircleMembers:maxCircleMembers maxDelegatedShares:maxDelegatedShares];
}

- (void)encodeWithCoder:(id)coder
{
  maxCircleMembers = self->_maxCircleMembers;
  coderCopy = coder;
  [coderCopy encodeInteger:maxCircleMembers forKey:@"maxCircleMembers"];
  [coderCopy encodeInteger:self->_maxDelegatedShares forKey:@"maxDelegatedShares"];
}

- (SPBeaconSharingLimits)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_maxCircleMembers = [coderCopy decodeIntegerForKey:@"maxCircleMembers"];
  v5 = [coderCopy decodeIntegerForKey:@"maxDelegatedShares"];

  self->_maxDelegatedShares = v5;
  return self;
}

@end