@interface PKSharingMessageExtensionRelayServerLocalProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharingMessageExtensionRelayServerLocalProperties:(id)a3;
- (PKSharingMessageExtensionRelayServerLocalProperties)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingMessageExtensionRelayServerLocalProperties

- (PKSharingMessageExtensionRelayServerLocalProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSharingMessageExtensionRelayServerLocalProperties;
  v5 = [(PKSharingMessageExtensionRelayServerLocalProperties *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partialInvite"];
    partialInvite = v5->_partialInvite;
    v5->_partialInvite = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSessionToken"];
    analyticsSessionToken = v5->_analyticsSessionToken;
    v5->_analyticsSessionToken = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  partialInvite = self->_partialInvite;
  v5 = a3;
  [v5 encodeObject:partialInvite forKey:@"partialInvite"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_analyticsSessionToken forKey:@"analyticsSessionToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"partialInvite: '%@'; ", self->_partialInvite];
  if (self->_analyticsSessionToken)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v6 appendFormat:@"hasAnalyticsSessionToken: '%@'; ", v7];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_partialInvite];
  [v3 safelyAddObject:self->_analyticsSessionToken];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharingMessageExtensionRelayServerLocalProperties *)self isEqualToSharingMessageExtensionRelayServerLocalProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharingMessageExtensionRelayServerLocalProperties:(id)a3
{
  v3 = a3;
  if (PKEqualObjects())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end