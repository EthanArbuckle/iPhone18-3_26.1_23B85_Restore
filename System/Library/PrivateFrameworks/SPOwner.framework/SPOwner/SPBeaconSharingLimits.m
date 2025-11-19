@interface SPBeaconSharingLimits
- (SPBeaconSharingLimits)initWithCoder:(id)a3;
- (SPBeaconSharingLimits)initWithMaxCircleMembers:(int64_t)a3 maxDelegatedShares:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconSharingLimits

- (SPBeaconSharingLimits)initWithMaxCircleMembers:(int64_t)a3 maxDelegatedShares:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SPBeaconSharingLimits;
  result = [(SPBeaconSharingLimits *)&v7 init];
  if (result)
  {
    result->_maxCircleMembers = a3;
    result->_maxDelegatedShares = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconSharingLimits alloc];
  v5 = [(SPBeaconSharingLimits *)self maxCircleMembers];
  v6 = [(SPBeaconSharingLimits *)self maxDelegatedShares];

  return [(SPBeaconSharingLimits *)v4 initWithMaxCircleMembers:v5 maxDelegatedShares:v6];
}

- (void)encodeWithCoder:(id)a3
{
  maxCircleMembers = self->_maxCircleMembers;
  v5 = a3;
  [v5 encodeInteger:maxCircleMembers forKey:@"maxCircleMembers"];
  [v5 encodeInteger:self->_maxDelegatedShares forKey:@"maxDelegatedShares"];
}

- (SPBeaconSharingLimits)initWithCoder:(id)a3
{
  v4 = a3;
  self->_maxCircleMembers = [v4 decodeIntegerForKey:@"maxCircleMembers"];
  v5 = [v4 decodeIntegerForKey:@"maxDelegatedShares"];

  self->_maxDelegatedShares = v5;
  return self;
}

@end