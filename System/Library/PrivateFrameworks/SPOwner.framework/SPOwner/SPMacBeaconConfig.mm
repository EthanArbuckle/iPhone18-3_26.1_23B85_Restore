@interface SPMacBeaconConfig
- (SPMacBeaconConfig)initWithCoder:(id)a3;
- (SPMacBeaconConfig)initWithInitialNoBeaconDuration:(double)a3 fastRollAdvertisementDuration:(double)a4 fastRollAdvertisementInterval:(double)a5 slowRollAdvertisementDuration:(double)a6 slowRollNoAdvertisementDuration:(double)a7 noAdvertisementDurationDecayFactor:(double)a8 postInitialDayAdvertisementTimes:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)initFromPrefs;
- (void)encodeWithCoder:(id)a3;
- (void)persistToPrefs;
@end

@implementation SPMacBeaconConfig

- (SPMacBeaconConfig)initWithInitialNoBeaconDuration:(double)a3 fastRollAdvertisementDuration:(double)a4 fastRollAdvertisementInterval:(double)a5 slowRollAdvertisementDuration:(double)a6 slowRollNoAdvertisementDuration:(double)a7 noAdvertisementDurationDecayFactor:(double)a8 postInitialDayAdvertisementTimes:(id)a9
{
  v16 = a9;
  v22.receiver = self;
  v22.super_class = SPMacBeaconConfig;
  v17 = [(SPMacBeaconConfig *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_initialNoBeaconDuration = a3;
    v17->_fastRollAdvertisementDuration = a4;
    v17->_fastRollAdvertisementInterval = a5;
    v17->_slowRollAdvertisementDuration = a6;
    v17->_slowRollNoAdvertisementDuration = a7;
    v17->_noAdvertisementDurationDecayFactor = a8;
    v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16 copyItems:1];
    postInitialDayAdvertisementTimes = v18->_postInitialDayAdvertisementTimes;
    v18->_postInitialDayAdvertisementTimes = v19;
  }

  return v18;
}

- (id)initFromPrefs
{
  v8.receiver = self;
  v8.super_class = SPMacBeaconConfig;
  v2 = [(SPMacBeaconConfig *)&v8 init];
  if (v2)
  {
    v2->_initialNoBeaconDuration = [MEMORY[0x277D07B70] integerForKey:@"initialNoBeaconDuration" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    v2->_fastRollAdvertisementDuration = [MEMORY[0x277D07B70] integerForKey:@"fastRollAdvertisementDuration" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    v2->_fastRollAdvertisementInterval = [MEMORY[0x277D07B70] integerForKey:@"fastRollAdvertisementInterval" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    v2->_slowRollAdvertisementDuration = [MEMORY[0x277D07B70] integerForKey:@"slowRollAdvertisementDuration" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    v2->_slowRollNoAdvertisementDuration = [MEMORY[0x277D07B70] integerForKey:@"slowRollNoAdvertisementDuration" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    v3 = [MEMORY[0x277D07B70] stringForKey:@"noAdvertisementDurationDecayFactor" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    [v3 doubleValue];
    v2->_noAdvertisementDurationDecayFactor = v4;

    v5 = [MEMORY[0x277D07B70] arrayForKey:@"postInitialDayAdvertisementTimes" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
    postInitialDayAdvertisementTimes = v2->_postInitialDayAdvertisementTimes;
    v2->_postInitialDayAdvertisementTimes = v5;
  }

  return v2;
}

- (void)persistToPrefs
{
  v3 = MEMORY[0x277D07B70];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_initialNoBeaconDuration];
  [v3 setInteger:objc_msgSend(v4 forKey:"integerValue") inDomain:{@"initialNoBeaconDuration", @"com.apple.icloud.searchpartyd.mac-beacon"}];

  v5 = MEMORY[0x277D07B70];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fastRollAdvertisementDuration];
  [v5 setInteger:objc_msgSend(v6 forKey:"integerValue") inDomain:{@"fastRollAdvertisementDuration", @"com.apple.icloud.searchpartyd.mac-beacon"}];

  v7 = MEMORY[0x277D07B70];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fastRollAdvertisementInterval];
  [v7 setInteger:objc_msgSend(v8 forKey:"integerValue") inDomain:{@"fastRollAdvertisementInterval", @"com.apple.icloud.searchpartyd.mac-beacon"}];

  v9 = MEMORY[0x277D07B70];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_slowRollAdvertisementDuration];
  [v9 setInteger:objc_msgSend(v10 forKey:"integerValue") inDomain:{@"slowRollAdvertisementDuration", @"com.apple.icloud.searchpartyd.mac-beacon"}];

  v11 = MEMORY[0x277D07B70];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_slowRollNoAdvertisementDuration];
  [v11 setInteger:objc_msgSend(v12 forKey:"integerValue") inDomain:{@"slowRollNoAdvertisementDuration", @"com.apple.icloud.searchpartyd.mac-beacon"}];

  v13 = MEMORY[0x277D07B70];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_noAdvertisementDurationDecayFactor];
  v15 = [v14 stringValue];
  [v13 setString:v15 forKey:@"noAdvertisementDurationDecayFactor" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];

  v16 = MEMORY[0x277D07B70];
  postInitialDayAdvertisementTimes = self->_postInitialDayAdvertisementTimes;

  [v16 setArray:postInitialDayAdvertisementTimes forKey:@"postInitialDayAdvertisementTimes" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPMacBeaconConfig alloc];
  initialNoBeaconDuration = self->_initialNoBeaconDuration;
  fastRollAdvertisementDuration = self->_fastRollAdvertisementDuration;
  fastRollAdvertisementInterval = self->_fastRollAdvertisementInterval;
  slowRollAdvertisementDuration = self->_slowRollAdvertisementDuration;
  slowRollNoAdvertisementDuration = self->_slowRollNoAdvertisementDuration;
  noAdvertisementDurationDecayFactor = self->_noAdvertisementDurationDecayFactor;
  postInitialDayAdvertisementTimes = self->_postInitialDayAdvertisementTimes;

  return [(SPMacBeaconConfig *)v4 initWithInitialNoBeaconDuration:postInitialDayAdvertisementTimes fastRollAdvertisementDuration:initialNoBeaconDuration fastRollAdvertisementInterval:fastRollAdvertisementDuration slowRollAdvertisementDuration:fastRollAdvertisementInterval slowRollNoAdvertisementDuration:slowRollAdvertisementDuration noAdvertisementDurationDecayFactor:slowRollNoAdvertisementDuration postInitialDayAdvertisementTimes:noAdvertisementDurationDecayFactor];
}

- (SPMacBeaconConfig)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"initialNoBeaconDuration"];
  self->_initialNoBeaconDuration = v5;
  [v4 decodeDoubleForKey:@"fastRollAdvertisementDuration"];
  self->_fastRollAdvertisementDuration = v6;
  [v4 decodeDoubleForKey:@"fastRollAdvertisementInterval"];
  self->_fastRollAdvertisementInterval = v7;
  [v4 decodeDoubleForKey:@"slowRollAdvertisementDuration"];
  self->_slowRollAdvertisementDuration = v8;
  [v4 decodeDoubleForKey:@"slowRollNoAdvertisementDuration"];
  self->_slowRollNoAdvertisementDuration = v9;
  [v4 decodeDoubleForKey:@"noAdvertisementDurationDecayFactor"];
  self->_noAdvertisementDurationDecayFactor = v10;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"postInitialDayAdvertisementTimes"];

  postInitialDayAdvertisementTimes = self->_postInitialDayAdvertisementTimes;
  self->_postInitialDayAdvertisementTimes = v14;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  initialNoBeaconDuration = self->_initialNoBeaconDuration;
  v5 = a3;
  [v5 encodeDouble:@"initialNoBeaconDuration" forKey:initialNoBeaconDuration];
  [v5 encodeDouble:@"fastRollAdvertisementDuration" forKey:self->_fastRollAdvertisementDuration];
  [v5 encodeDouble:@"fastRollAdvertisementInterval" forKey:self->_fastRollAdvertisementInterval];
  [v5 encodeDouble:@"slowRollAdvertisementDuration" forKey:self->_slowRollAdvertisementDuration];
  [v5 encodeDouble:@"slowRollNoAdvertisementDuration" forKey:self->_slowRollNoAdvertisementDuration];
  [v5 encodeDouble:@"noAdvertisementDurationDecayFactor" forKey:self->_noAdvertisementDurationDecayFactor];
  [v5 encodeObject:self->_postInitialDayAdvertisementTimes forKey:@"postInitialDayAdvertisementTimes"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SPMacBeaconConfig *)self fastRollAdvertisementDuration];
  v6 = v5;
  [(SPMacBeaconConfig *)self fastRollAdvertisementInterval];
  v8 = v7;
  [(SPMacBeaconConfig *)self slowRollAdvertisementDuration];
  v10 = v9;
  [(SPMacBeaconConfig *)self slowRollNoAdvertisementDuration];
  v12 = v11;
  [(SPMacBeaconConfig *)self noAdvertisementDurationDecayFactor];
  return [v3 stringWithFormat:@"<%@: %p> fast: [%f: %f], slow: [%f: %f], decay: %f", v4, self, v6, v8, v10, v12, v13];
}

@end