@interface WiFiUsageLQMFeature
- (BOOL)isEqual:(id)equal;
- (WiFiUsageLQMFeature)initWithField:(id)field andPerSecond:(BOOL)second;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WiFiUsageLQMFeature

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldName = self->_fieldName;
    fieldName = [equalCopy fieldName];
    v7 = [(NSString *)fieldName isEqual:fieldName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WiFiUsageLQMFeature)initWithField:(id)field andPerSecond:(BOOL)second
{
  fieldCopy = field;
  v10.receiver = self;
  v10.super_class = WiFiUsageLQMFeature;
  v7 = [(WiFiUsageLQMFeature *)&v10 init];
  fieldName = v7->_fieldName;
  v7->_fieldName = fieldCopy;

  v7->_isPerSecond = second;
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setFieldName:self->_fieldName];
  [v4 setIsPerSecond:self->_isPerSecond];
  [v4 setMedian:self->_median];
  return v4;
}

- (id)description
{
  if (self->_isPerSecond)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"fieldName:%@ isPerSecond:%@ median:%@", self->_fieldName, v2, self->_median];
}

@end