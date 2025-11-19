@interface SMLikelyReceiverOptions
+ (id)defaultOptions;
- (BOOL)hasNoFilters;
- (BOOL)isEqual:(id)a3;
- (SMLikelyReceiverOptions)initWithCoder:(id)a3;
- (SMLikelyReceiverOptions)initWithRequireEligibility:(BOOL)a3 requireContact:(BOOL)a4 requireNonBlockedContact:(BOOL)a5 requireOnlyFavoritedHandles:(BOOL)a6 requireOnlyPastSessionRecipients:(BOOL)a7 firstResultOnly:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMLikelyReceiverOptions

- (SMLikelyReceiverOptions)initWithRequireEligibility:(BOOL)a3 requireContact:(BOOL)a4 requireNonBlockedContact:(BOOL)a5 requireOnlyFavoritedHandles:(BOOL)a6 requireOnlyPastSessionRecipients:(BOOL)a7 firstResultOnly:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = SMLikelyReceiverOptions;
  result = [(SMLikelyReceiverOptions *)&v15 init];
  if (result)
  {
    result->_requireEligibility = a3;
    result->_requireContact = a4;
    result->_requireNonBlockedContact = a5;
    result->_requireOnlyFavoritedHandles = a6;
    result->_requireOnlyPastSessionRecipients = a7;
    result->_firstResultOnly = a8;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMLikelyReceiverOptions *)self requireEligibility];
      v7 = v6 ^ [(SMLikelyReceiverOptions *)v5 requireEligibility];
      v8 = [(SMLikelyReceiverOptions *)self requireContact];
      v9 = v7 | v8 ^ [(SMLikelyReceiverOptions *)v5 requireContact];
      v10 = [(SMLikelyReceiverOptions *)self requireNonBlockedContact];
      v11 = v10 ^ [(SMLikelyReceiverOptions *)v5 requireNonBlockedContact];
      v12 = [(SMLikelyReceiverOptions *)self requireOnlyFavoritedHandles];
      v13 = v9 | v11 | v12 ^ [(SMLikelyReceiverOptions *)v5 requireOnlyFavoritedHandles];
      v14 = [(SMLikelyReceiverOptions *)self requireOnlyPastSessionRecipients];
      v15 = v14 ^ [(SMLikelyReceiverOptions *)v5 requireOnlyPastSessionRecipients];
      v16 = [(SMLikelyReceiverOptions *)self firstResultOnly];
      LOBYTE(v14) = [(SMLikelyReceiverOptions *)v5 firstResultOnly];

      v17 = (v13 | v15 | v16 ^ v14) ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

- (SMLikelyReceiverOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"requireEligibility"];
  v6 = [v4 decodeBoolForKey:@"requireContact"];
  v7 = [v4 decodeBoolForKey:@"requireNonBlockedContact"];
  v8 = [v4 decodeBoolForKey:@"requireOnlyFavoritedHandles"];
  v9 = [v4 decodeBoolForKey:@"requireOnlyPastSessionRecipients"];
  v10 = [v4 decodeBoolForKey:@"firstResultOnly"];

  return [(SMLikelyReceiverOptions *)self initWithRequireEligibility:v5 requireContact:v6 requireNonBlockedContact:v7 requireOnlyFavoritedHandles:v8 requireOnlyPastSessionRecipients:v9 firstResultOnly:v10];
}

- (void)encodeWithCoder:(id)a3
{
  requireEligibility = self->_requireEligibility;
  v5 = a3;
  [v5 encodeBool:requireEligibility forKey:@"requireEligibility"];
  [v5 encodeBool:self->_requireContact forKey:@"requireContact"];
  [v5 encodeBool:self->_requireNonBlockedContact forKey:@"requireNonBlockedContact"];
  [v5 encodeBool:self->_requireOnlyFavoritedHandles forKey:@"requireOnlyFavoritedHandles"];
  [v5 encodeBool:self->_requireOnlyPastSessionRecipients forKey:@"requireOnlyPastSessionRecipients"];
  [v5 encodeBool:self->_firstResultOnly forKey:@"firstResultOnly"];
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