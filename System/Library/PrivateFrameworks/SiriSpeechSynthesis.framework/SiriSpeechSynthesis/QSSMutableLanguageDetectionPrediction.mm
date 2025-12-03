@interface QSSMutableLanguageDetectionPrediction
- (BOOL)is_low_confidence;
- (QSSMutableLanguageDetectionPrediction)init;
- (float)confidence;
- (float)threshold;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfidence:(float)confidence;
- (void)setLocale:(id)locale;
- (void)setThreshold:(float)threshold;
@end

@implementation QSSMutableLanguageDetectionPrediction

- (BOOL)is_low_confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_low_confidence"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setThreshold:(float)threshold
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = threshold;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)threshold
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"threshold"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setConfidence:(float)confidence
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = confidence;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setLocale:(id)locale
{
  v4 = [locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableLanguageDetectionPrediction)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableLanguageDetectionPrediction;
  v2 = [(QSSMutableLanguageDetectionPrediction *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end