@interface SSVPlayActivityEventItemIDs
- (SSVPlayActivityEventItemIDs)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVPlayActivityEventItemIDs

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  if (self->_cloudID)
  {
    [v6 appendFormat:@" cloudID: %llu", self->_cloudID];
  }

  if ([(NSString *)self->_lyricsID length])
  {
    [v6 appendFormat:@" lyricsID: %@", self->_lyricsID];
  }

  if (self->_purchasedAdamID)
  {
    [v6 appendFormat:@" purchasedAdamID: %lli", self->_purchasedAdamID];
  }

  if (self->_radioAdamID)
  {
    [v6 appendFormat:@" radioAdamID: %lli", self->_radioAdamID];
  }

  if (self->_equivalencySourceAdamID)
  {
    [v6 appendFormat:@" equivalencySourceAdamID: %lli", self->_equivalencySourceAdamID];
  }

  if (self->_subscriptionAdamID)
  {
    [v6 appendFormat:@" subscriptionAdamID: %lli", self->_subscriptionAdamID];
  }

  if (self->_tvShowPurchasedAdamID)
  {
    [v6 appendFormat:@" tvShowPurchasedAdamID: %lli", self->_tvShowPurchasedAdamID];
  }

  if (self->_tvShowSubscriptionAdamID)
  {
    [v6 appendFormat:@" tvShowSubscriptionAdamID: %lli", self->_tvShowSubscriptionAdamID];
  }

  [v6 appendString:@">"];

  return v6;
}

- (SSVPlayActivityEventItemIDs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSVPlayActivityEventItemIDs *)self init];
  if (v5)
  {
    v5->_cloudID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsCloudID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventItemIDsLyricsID"];
    lyricsID = v5->_lyricsID;
    v5->_lyricsID = v6;

    v5->_purchasedAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsPurchasedAdamID"];
    v5->_radioAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsRadioAdamID"];
    v5->_equivalencySourceAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsEquivalencySourceAdamID"];
    v5->_subscriptionAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsSubscriptionAdamID"];
    v5->_tvShowPurchasedAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsTVShowPurchasedAdamID"];
    v5->_tvShowSubscriptionAdamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventItemIDsTVShowSubscriptionAdamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cloudID = self->_cloudID;
  v5 = a3;
  [v5 encodeInt64:cloudID forKey:@"SSVPlayActivityEventItemIDsCloudID"];
  [v5 encodeObject:self->_lyricsID forKey:@"SSVPlayActivityEventItemIDsLyricsID"];
  [v5 encodeInt64:self->_purchasedAdamID forKey:@"SSVPlayActivityEventItemIDsPurchasedAdamID"];
  [v5 encodeInt64:self->_radioAdamID forKey:@"SSVPlayActivityEventItemIDsRadioAdamID"];
  [v5 encodeInt64:self->_equivalencySourceAdamID forKey:@"SSVPlayActivityEventItemIDsEquivalencySourceAdamID"];
  [v5 encodeInt64:self->_subscriptionAdamID forKey:@"SSVPlayActivityEventItemIDsSubscriptionAdamID"];
  [v5 encodeInt64:self->_tvShowPurchasedAdamID forKey:@"SSVPlayActivityEventItemIDsTVShowPurchasedAdamID"];
  [v5 encodeInt64:self->_tvShowSubscriptionAdamID forKey:@"SSVPlayActivityEventItemIDsTVShowSubscriptionAdamID"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = self->_cloudID;
    objc_storeStrong(v4 + 3, self->_lyricsID);
    v5[4] = self->_purchasedAdamID;
    v5[5] = self->_radioAdamID;
    v5[1] = self->_equivalencySourceAdamID;
    v5[6] = self->_subscriptionAdamID;
    v5[7] = self->_tvShowPurchasedAdamID;
    v5[8] = self->_tvShowSubscriptionAdamID;
  }

  return v5;
}

@end