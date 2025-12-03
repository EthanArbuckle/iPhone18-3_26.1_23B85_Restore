@interface SMLikelyReceiverOptions
+ (id)defaultOptions;
- (BOOL)hasNoFilters;
- (BOOL)isEqual:(id)equal;
- (SMLikelyReceiverOptions)initWithCoder:(id)coder;
- (SMLikelyReceiverOptions)initWithRequireEligibility:(BOOL)eligibility requireContact:(BOOL)contact requireNonBlockedContact:(BOOL)blockedContact requireOnlyFavoritedHandles:(BOOL)handles requireOnlyPastSessionRecipients:(BOOL)recipients firstResultOnly:(BOOL)only;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMLikelyReceiverOptions

- (SMLikelyReceiverOptions)initWithRequireEligibility:(BOOL)eligibility requireContact:(BOOL)contact requireNonBlockedContact:(BOOL)blockedContact requireOnlyFavoritedHandles:(BOOL)handles requireOnlyPastSessionRecipients:(BOOL)recipients firstResultOnly:(BOOL)only
{
  v15.receiver = self;
  v15.super_class = SMLikelyReceiverOptions;
  result = [(SMLikelyReceiverOptions *)&v15 init];
  if (result)
  {
    result->_requireEligibility = eligibility;
    result->_requireContact = contact;
    result->_requireNonBlockedContact = blockedContact;
    result->_requireOnlyFavoritedHandles = handles;
    result->_requireOnlyPastSessionRecipients = recipients;
    result->_firstResultOnly = only;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requireEligibility = [(SMLikelyReceiverOptions *)self requireEligibility];
      v7 = requireEligibility ^ [(SMLikelyReceiverOptions *)v5 requireEligibility];
      requireContact = [(SMLikelyReceiverOptions *)self requireContact];
      v9 = v7 | requireContact ^ [(SMLikelyReceiverOptions *)v5 requireContact];
      requireNonBlockedContact = [(SMLikelyReceiverOptions *)self requireNonBlockedContact];
      v11 = requireNonBlockedContact ^ [(SMLikelyReceiverOptions *)v5 requireNonBlockedContact];
      requireOnlyFavoritedHandles = [(SMLikelyReceiverOptions *)self requireOnlyFavoritedHandles];
      v13 = v9 | v11 | requireOnlyFavoritedHandles ^ [(SMLikelyReceiverOptions *)v5 requireOnlyFavoritedHandles];
      requireOnlyPastSessionRecipients = [(SMLikelyReceiverOptions *)self requireOnlyPastSessionRecipients];
      v15 = requireOnlyPastSessionRecipients ^ [(SMLikelyReceiverOptions *)v5 requireOnlyPastSessionRecipients];
      firstResultOnly = [(SMLikelyReceiverOptions *)self firstResultOnly];
      LOBYTE(requireOnlyPastSessionRecipients) = [(SMLikelyReceiverOptions *)v5 firstResultOnly];

      v17 = (v13 | v15 | firstResultOnly ^ requireOnlyPastSessionRecipients) ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

- (SMLikelyReceiverOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"requireEligibility"];
  v6 = [coderCopy decodeBoolForKey:@"requireContact"];
  v7 = [coderCopy decodeBoolForKey:@"requireNonBlockedContact"];
  v8 = [coderCopy decodeBoolForKey:@"requireOnlyFavoritedHandles"];
  v9 = [coderCopy decodeBoolForKey:@"requireOnlyPastSessionRecipients"];
  v10 = [coderCopy decodeBoolForKey:@"firstResultOnly"];

  return [(SMLikelyReceiverOptions *)self initWithRequireEligibility:v5 requireContact:v6 requireNonBlockedContact:v7 requireOnlyFavoritedHandles:v8 requireOnlyPastSessionRecipients:v9 firstResultOnly:v10];
}

- (void)encodeWithCoder:(id)coder
{
  requireEligibility = self->_requireEligibility;
  coderCopy = coder;
  [coderCopy encodeBool:requireEligibility forKey:@"requireEligibility"];
  [coderCopy encodeBool:self->_requireContact forKey:@"requireContact"];
  [coderCopy encodeBool:self->_requireNonBlockedContact forKey:@"requireNonBlockedContact"];
  [coderCopy encodeBool:self->_requireOnlyFavoritedHandles forKey:@"requireOnlyFavoritedHandles"];
  [coderCopy encodeBool:self->_requireOnlyPastSessionRecipients forKey:@"requireOnlyPastSessionRecipients"];
  [coderCopy encodeBool:self->_firstResultOnly forKey:@"firstResultOnly"];
}

- (BOOL)hasNoFilters
{
  if ([(SMLikelyReceiverOptions *)self requireEligibility]|| [(SMLikelyReceiverOptions *)self requireContact]|| [(SMLikelyReceiverOptions *)self requireNonBlockedContact]|| [(SMLikelyReceiverOptions *)self requireOnlyFavoritedHandles])
  {
    return 0;
  }

  else
  {
    return ![(SMLikelyReceiverOptions *)self requireOnlyPastSessionRecipients];
  }
}

+ (id)defaultOptions
{
  v2 = [[SMLikelyReceiverOptions alloc] initWithRequireEligibility:0 requireContact:0 requireNonBlockedContact:0 requireOnlyFavoritedHandles:0 requireOnlyPastSessionRecipients:0 firstResultOnly:0];

  return v2;
}

@end