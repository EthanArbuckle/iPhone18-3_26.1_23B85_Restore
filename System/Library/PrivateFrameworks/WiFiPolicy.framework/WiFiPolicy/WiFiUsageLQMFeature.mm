@interface WiFiUsageLQMFeature
- (BOOL)isEqual:(id)a3;
- (WiFiUsageLQMFeature)initWithField:(id)a3 andPerSecond:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation WiFiUsageLQMFeature

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldName = self->_fieldName;
    v6 = [v4 fieldName];
    v7 = [(NSString *)fieldName isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WiFiUsageLQMFeature)initWithField:(id)a3 andPerSecond:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WiFiUsageLQMFeature;
  v7 = [(WiFiUsageLQMFeature *)&v10 init];
  fieldName = v7->_fieldName;
  v7->_fieldName = v6;

  v7->_isPerSecond = a4;
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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