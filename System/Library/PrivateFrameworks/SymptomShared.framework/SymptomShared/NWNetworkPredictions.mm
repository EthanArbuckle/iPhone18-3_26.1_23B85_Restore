@interface NWNetworkPredictions
- (NWNetworkPredictions)initWithCoder:(id)a3;
- (NWNetworkPredictions)initWithSpec:(id)a3 toQuality:(int64_t)a4 withConfidence:(double)a5 resolutionSeconds:(unsigned int)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWNetworkPredictions

- (NWNetworkPredictions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NWNetworkPredictions;
  v5 = [(NWNetworkPredictions *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changePointAt"];
    changePointAt = v5->_changePointAt;
    v5->_changePointAt = v7;

    v5->_toQuality = [v4 decodeIntegerForKey:@"toQuality"];
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v9;
    v5->_resolutionSeconds = [v4 decodeIntegerForKey:@"resolutionSeconds"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NWNetworkPredictions *)self changePointAt];
  [v6 encodeObject:v5 forKey:@"changePointAt"];

  [v6 encodeInteger:-[NWNetworkPredictions toQuality](self forKey:{"toQuality"), @"toQuality"}];
  [(NWNetworkPredictions *)self confidence];
  [v6 encodeDouble:@"confidence" forKey:?];
  [v6 encodeInteger:-[NWNetworkPredictions resolutionSeconds](self forKey:{"resolutionSeconds"), @"resolutionSeconds"}];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NWNetworkPredictions *)self changePointAt];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 descriptionWithLocale:v5];
  v7 = [(NWNetworkPredictions *)self toQuality];
  [(NWNetworkPredictions *)self confidence];
  v9 = [v3 initWithFormat:@"pred %p, nextAt:%@, quality:%ld, confidence:%f, resolution:%ld", self, v6, v7, v8, -[NWNetworkPredictions resolutionSeconds](self, "resolutionSeconds")];

  return v9;
}

- (NWNetworkPredictions)initWithSpec:(id)a3 toQuality:(int64_t)a4 withConfidence:(double)a5 resolutionSeconds:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = NWNetworkPredictions;
  v12 = [(NWNetworkPredictions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changePointAt, a3);
    v13->_toQuality = a4;
    v13->_confidence = a5;
    v13->_resolutionSeconds = a6;
  }

  return v13;
}

@end