@interface ICRadioTrackInfoContentReference
- (ICRadioTrackInfoContentReference)initWithCoder:(id)coder;
- (ICRadioTrackInfoContentReference)initWithStoreIdentifier:(id)identifier trackInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICRadioTrackInfoContentReference

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICRadioTrackInfoContentReference;
  coderCopy = coder;
  [(ICRadioStoreContentReference *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_trackInfo forKey:{@"trackInfo", v5.receiver, v5.super_class}];
}

- (ICRadioTrackInfoContentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICRadioTrackInfoContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"trackInfo"];
    trackInfo = v5->_trackInfo;
    v5->_trackInfo = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ICRadioTrackInfoContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_trackInfo copyWithZone:zone];
    v7 = v5[3];
    v5[3] = v6;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)status
{
  v8.receiver = self;
  v8.super_class = ICRadioTrackInfoContentReference;
  v4 = [(ICRadioStoreContentReference *)&v8 rawContentDictionaryWithSubscriptionStatus:status];
  v5 = [v4 mutableCopy];

  [v5 setObject:self->_trackInfo forKeyedSubscript:@"track-info"];
  v6 = [v5 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  storeIdentifier = [(ICRadioStoreContentReference *)self storeIdentifier];
  trackInfo = [(ICRadioTrackInfoContentReference *)self trackInfo];
  v6 = [v3 stringWithFormat:@"<ICRadioTrackInfoContentReference: %p adamID=%@> trackInfo=%@", self, storeIdentifier, trackInfo];

  return v6;
}

- (ICRadioTrackInfoContentReference)initWithStoreIdentifier:(id)identifier trackInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = ICRadioTrackInfoContentReference;
  v7 = [(ICRadioStoreContentReference *)&v11 initWithStoreIdentifier:identifier];
  if (v7)
  {
    v8 = [infoCopy copy];
    trackInfo = v7->_trackInfo;
    v7->_trackInfo = v8;
  }

  return v7;
}

@end