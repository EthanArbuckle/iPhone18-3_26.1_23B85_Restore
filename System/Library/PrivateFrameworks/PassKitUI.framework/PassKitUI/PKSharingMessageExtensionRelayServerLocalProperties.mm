@interface PKSharingMessageExtensionRelayServerLocalProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharingMessageExtensionRelayServerLocalProperties:(id)properties;
- (PKSharingMessageExtensionRelayServerLocalProperties)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingMessageExtensionRelayServerLocalProperties

- (PKSharingMessageExtensionRelayServerLocalProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKSharingMessageExtensionRelayServerLocalProperties;
  v5 = [(PKSharingMessageExtensionRelayServerLocalProperties *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partialInvite"];
    partialInvite = v5->_partialInvite;
    v5->_partialInvite = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSessionToken"];
    analyticsSessionToken = v5->_analyticsSessionToken;
    v5->_analyticsSessionToken = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  partialInvite = self->_partialInvite;
  coderCopy = coder;
  [coderCopy encodeObject:partialInvite forKey:@"partialInvite"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_analyticsSessionToken forKey:@"analyticsSessionToken"];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_partialInvite];
  [array safelyAddObject:self->_analyticsSessionToken];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharingMessageExtensionRelayServerLocalProperties *)self isEqualToSharingMessageExtensionRelayServerLocalProperties:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharingMessageExtensionRelayServerLocalProperties:(id)properties
{
  propertiesCopy = properties;
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