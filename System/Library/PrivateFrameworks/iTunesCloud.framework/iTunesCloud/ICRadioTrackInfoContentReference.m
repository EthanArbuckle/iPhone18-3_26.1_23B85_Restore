@interface ICRadioTrackInfoContentReference
- (ICRadioTrackInfoContentReference)initWithCoder:(id)a3;
- (ICRadioTrackInfoContentReference)initWithStoreIdentifier:(id)a3 trackInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICRadioTrackInfoContentReference

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICRadioTrackInfoContentReference;
  v4 = a3;
  [(ICRadioStoreContentReference *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_trackInfo forKey:{@"trackInfo", v5.receiver, v5.super_class}];
}

- (ICRadioTrackInfoContentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICRadioTrackInfoContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"trackInfo"];
    trackInfo = v5->_trackInfo;
    v5->_trackInfo = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ICRadioTrackInfoContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_trackInfo copyWithZone:a3];
    v7 = v5[3];
    v5[3] = v6;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3
{
  v8.receiver = self;
  v8.super_class = ICRadioTrackInfoContentReference;
  v4 = [(ICRadioStoreContentReference *)&v8 rawContentDictionaryWithSubscriptionStatus:a3];
  v5 = [v4 mutableCopy];

  [v5 setObject:self->_trackInfo forKeyedSubscript:@"track-info"];
  v6 = [v5 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICRadioStoreContentReference *)self storeIdentifier];
  v5 = [(ICRadioTrackInfoContentReference *)self trackInfo];
  v6 = [v3 stringWithFormat:@"<ICRadioTrackInfoContentReference: %p adamID=%@> trackInfo=%@", self, v4, v5];

  return v6;
}

- (ICRadioTrackInfoContentReference)initWithStoreIdentifier:(id)a3 trackInfo:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = ICRadioTrackInfoContentReference;
  v7 = [(ICRadioStoreContentReference *)&v11 initWithStoreIdentifier:a3];
  if (v7)
  {
    v8 = [v6 copy];
    trackInfo = v7->_trackInfo;
    v7->_trackInfo = v8;
  }

  return v7;
}

@end