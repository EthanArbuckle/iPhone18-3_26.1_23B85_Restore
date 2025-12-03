@interface FTMutableLatnnMitigatorResult
- (BOOL)processed;
- (FTMutableLatnnMitigatorResult)init;
- (double)score;
- (double)threshold;
- (float)calibration_offset;
- (float)calibration_scale;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCalibration_offset:(float)calibration_offset;
- (void)setCalibration_scale:(float)calibration_scale;
- (void)setScore:(double)score;
- (void)setThreshold:(double)threshold;
- (void)setVersion:(id)version;
@end

@implementation FTMutableLatnnMitigatorResult

- (FTMutableLatnnMitigatorResult)init
{
  v6.receiver = self;
  v6.super_class = FTMutableLatnnMitigatorResult;
  v2 = [(FTMutableLatnnMitigatorResult *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)processed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"processed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setVersion:(id)version
{
  v4 = [version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)threshold
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"threshold"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setThreshold:(double)threshold
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:threshold];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)score
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"score"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setScore:(double)score
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:score];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)calibration_scale
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"calibration_scale"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setCalibration_scale:(float)calibration_scale
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = calibration_scale;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)calibration_offset
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"calibration_offset"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setCalibration_offset:(float)calibration_offset
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = calibration_offset;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end