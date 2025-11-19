@interface ICPlayActivityEventItemIDs
- (ICPlayActivityEventItemIDs)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICPlayActivityEventItemIDs

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
    v5[6] = self->_reportingAdamID;
    v5[7] = self->_subscriptionAdamID;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)a3
{
  cloudID = self->_cloudID;
  v5 = a3;
  [v5 encodeInt64:cloudID forKey:@"ICPlayActivityEventItemIDsCloudID"];
  [v5 encodeObject:self->_lyricsID forKey:@"ICPlayActivityEventItemIDsLyricsID"];
  [v5 encodeInt64:self->_purchasedAdamID forKey:@"ICPlayActivityEventItemIDsPurchasedAdamID"];
  [v5 encodeInt64:self->_radioAdamID forKey:@"ICPlayActivityEventItemIDsRadioAdamID"];
  [v5 encodeInt64:self->_equivalencySourceAdamID forKey:@"ICPlayActivityEventItemIDsEquivalencySourceAdamID"];
  [v5 encodeInt64:self->_reportingAdamID forKey:@"ICPlayActivityEventItemIDsReportingAdamID"];
  [v5 encodeInt64:self->_subscriptionAdamID forKey:@"ICPlayActivityEventItemIDsSubscriptionAdamID"];
}

- (ICPlayActivityEventItemIDs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICPlayActivityEventItemIDs *)self init];
  if (v5)
  {
    v5->_cloudID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsCloudID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventItemIDsLyricsID"];
    lyricsID = v5->_lyricsID;
    v5->_lyricsID = v6;

    v5->_purchasedAdamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsPurchasedAdamID"];
    v5->_radioAdamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsRadioAdamID"];
    v5->_equivalencySourceAdamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsEquivalencySourceAdamID"];
    v5->_reportingAdamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsReportingAdamID"];
    v5->_subscriptionAdamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventItemIDsSubscriptionAdamID"];
  }

  return v5;
}

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

  if (self->_reportingAdamID)
  {
    [v6 appendFormat:@" reportingAdamID: %lli", self->_reportingAdamID];
  }

  if (self->_subscriptionAdamID)
  {
    [v6 appendFormat:@" subscriptionAdamID: %lli", self->_subscriptionAdamID];
  }

  [v6 appendString:@">"];

  return v6;
}

@end