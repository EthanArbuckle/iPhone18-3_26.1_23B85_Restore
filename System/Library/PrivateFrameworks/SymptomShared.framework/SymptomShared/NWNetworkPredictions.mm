@interface NWNetworkPredictions
- (NWNetworkPredictions)initWithCoder:(id)coder;
- (NWNetworkPredictions)initWithSpec:(id)spec toQuality:(int64_t)quality withConfidence:(double)confidence resolutionSeconds:(unsigned int)seconds;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWNetworkPredictions

- (NWNetworkPredictions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NWNetworkPredictions;
  v5 = [(NWNetworkPredictions *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changePointAt"];
    changePointAt = v5->_changePointAt;
    v5->_changePointAt = v7;

    v5->_toQuality = [coderCopy decodeIntegerForKey:@"toQuality"];
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v9;
    v5->_resolutionSeconds = [coderCopy decodeIntegerForKey:@"resolutionSeconds"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  changePointAt = [(NWNetworkPredictions *)self changePointAt];
  [coderCopy encodeObject:changePointAt forKey:@"changePointAt"];

  [coderCopy encodeInteger:-[NWNetworkPredictions toQuality](self forKey:{"toQuality"), @"toQuality"}];
  [(NWNetworkPredictions *)self confidence];
  [coderCopy encodeDouble:@"confidence" forKey:?];
  [coderCopy encodeInteger:-[NWNetworkPredictions resolutionSeconds](self forKey:{"resolutionSeconds"), @"resolutionSeconds"}];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  changePointAt = [(NWNetworkPredictions *)self changePointAt];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [changePointAt descriptionWithLocale:currentLocale];
  toQuality = [(NWNetworkPredictions *)self toQuality];
  [(NWNetworkPredictions *)self confidence];
  v9 = [v3 initWithFormat:@"pred %p, nextAt:%@, quality:%ld, confidence:%f, resolution:%ld", self, v6, toQuality, v8, -[NWNetworkPredictions resolutionSeconds](self, "resolutionSeconds")];

  return v9;
}

- (NWNetworkPredictions)initWithSpec:(id)spec toQuality:(int64_t)quality withConfidence:(double)confidence resolutionSeconds:(unsigned int)seconds
{
  specCopy = spec;
  v15.receiver = self;
  v15.super_class = NWNetworkPredictions;
  v12 = [(NWNetworkPredictions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changePointAt, spec);
    v13->_toQuality = quality;
    v13->_confidence = confidence;
    v13->_resolutionSeconds = seconds;
  }

  return v13;
}

@end