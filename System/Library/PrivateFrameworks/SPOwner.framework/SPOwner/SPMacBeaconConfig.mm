@interface SPMacBeaconConfig
- (SPMacBeaconConfig)initWithCoder:(id)coder;
- (SPMacBeaconConfig)initWithInitialNoBeaconDuration:(double)duration fastRollAdvertisementDuration:(double)advertisementDuration fastRollAdvertisementInterval:(double)interval slowRollAdvertisementDuration:(double)rollAdvertisementDuration slowRollNoAdvertisementDuration:(double)noAdvertisementDuration noAdvertisementDurationDecayFactor:(double)factor postInitialDayAdvertisementTimes:(id)times;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)initFromPrefs;
- (void)encodeWithCoder:(id)coder;
- (void)persistToPrefs;
@end

@implementation SPMacBeaconConfig

- (SPMacBeaconConfig)initWithInitialNoBeaconDuration:(double)duration fastRollAdvertisementDuration:(double)advertisementDuration fastRollAdvertisementInterval:(double)interval slowRollAdvertisementDuration:(double)rollAdvertisementDuration slowRollNoAdvertisementDuration:(double)noAdvertisementDuration noAdvertisementDurationDecayFactor:(double)factor postInitialDayAdvertisementTimes:(id)times
{
  timesCopy = times;
  v22.receiver = self;
  v22.super_class = SPMacBeaconConfig;
  v17 = [(SPMacBeaconConfig *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_initialNoBeaconDuration = duration;
    v17->_fastRollAdvertisementDuration = advertisementDuration;
    v17->_fastRollAdvertisementInterval = interval;
    v17->_slowRollAdvertisementDuration = rollAdvertisementDuration;
    v17->_slowRollNoAdvertisementDuration = noAdvertisementDuration;
    v17->_noAdvertisementDurationDecayFactor = factor;
    v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:timesCopy copyItems:1];
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
  stringValue = [v14 stringValue];
  [v13 setString:stringValue forKey:@"noAdvertisementDurationDecayFactor" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];

  v16 = MEMORY[0x277D07B70];
  postInitialDayAdvertisementTimes = self->_postInitialDayAdvertisementTimes;

  [v16 setArray:postInitialDayAdvertisementTimes forKey:@"postInitialDayAdvertisementTimes" inDomain:@"com.apple.icloud.searchpartyd.mac-beacon"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (SPMacBeaconConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"initialNoBeaconDuration"];
  self->_initialNoBeaconDuration = v5;
  [coderCopy decodeDoubleForKey:@"fastRollAdvertisementDuration"];
  self->_fastRollAdvertisementDuration = v6;
  [coderCopy decodeDoubleForKey:@"fastRollAdvertisementInterval"];
  self->_fastRollAdvertisementInterval = v7;
  [coderCopy decodeDoubleForKey:@"slowRollAdvertisementDuration"];
  self->_slowRollAdvertisementDuration = v8;
  [coderCopy decodeDoubleForKey:@"slowRollNoAdvertisementDuration"];
  self->_slowRollNoAdvertisementDuration = v9;
  [coderCopy decodeDoubleForKey:@"noAdvertisementDurationDecayFactor"];
  self->_noAdvertisementDurationDecayFactor = v10;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"postInitialDayAdvertisementTimes"];

  postInitialDayAdvertisementTimes = self->_postInitialDayAdvertisementTimes;
  self->_postInitialDayAdvertisementTimes = v14;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  initialNoBeaconDuration = self->_initialNoBeaconDuration;
  coderCopy = coder;
  [coderCopy encodeDouble:@"initialNoBeaconDuration" forKey:initialNoBeaconDuration];
  [coderCopy encodeDouble:@"fastRollAdvertisementDuration" forKey:self->_fastRollAdvertisementDuration];
  [coderCopy encodeDouble:@"fastRollAdvertisementInterval" forKey:self->_fastRollAdvertisementInterval];
  [coderCopy encodeDouble:@"slowRollAdvertisementDuration" forKey:self->_slowRollAdvertisementDuration];
  [coderCopy encodeDouble:@"slowRollNoAdvertisementDuration" forKey:self->_slowRollNoAdvertisementDuration];
  [coderCopy encodeDouble:@"noAdvertisementDurationDecayFactor" forKey:self->_noAdvertisementDurationDecayFactor];
  [coderCopy encodeObject:self->_postInitialDayAdvertisementTimes forKey:@"postInitialDayAdvertisementTimes"];
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