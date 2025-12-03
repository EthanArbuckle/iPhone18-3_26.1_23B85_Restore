@interface ICPlayActivityEventItemIDs
- (ICPlayActivityEventItemIDs)initWithCoder:(id)coder;
- (id)_copyWithClass:(Class)class;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICPlayActivityEventItemIDs

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)coder
{
  cloudID = self->_cloudID;
  coderCopy = coder;
  [coderCopy encodeInt64:cloudID forKey:@"ICPlayActivityEventItemIDsCloudID"];
  [coderCopy encodeObject:self->_lyricsID forKey:@"ICPlayActivityEventItemIDsLyricsID"];
  [coderCopy encodeInt64:self->_purchasedAdamID forKey:@"ICPlayActivityEventItemIDsPurchasedAdamID"];
  [coderCopy encodeInt64:self->_radioAdamID forKey:@"ICPlayActivityEventItemIDsRadioAdamID"];
  [coderCopy encodeInt64:self->_equivalencySourceAdamID forKey:@"ICPlayActivityEventItemIDsEquivalencySourceAdamID"];
  [coderCopy encodeInt64:self->_reportingAdamID forKey:@"ICPlayActivityEventItemIDsReportingAdamID"];
  [coderCopy encodeInt64:self->_subscriptionAdamID forKey:@"ICPlayActivityEventItemIDsSubscriptionAdamID"];
}

- (ICPlayActivityEventItemIDs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICPlayActivityEventItemIDs *)self init];
  if (v5)
  {
    v5->_cloudID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsCloudID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventItemIDsLyricsID"];
    lyricsID = v5->_lyricsID;
    v5->_lyricsID = v6;

    v5->_purchasedAdamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsPurchasedAdamID"];
    v5->_radioAdamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsRadioAdamID"];
    v5->_equivalencySourceAdamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsEquivalencySourceAdamID"];
    v5->_reportingAdamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsReportingAdamID"];
    v5->_subscriptionAdamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventItemIDsSubscriptionAdamID"];
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