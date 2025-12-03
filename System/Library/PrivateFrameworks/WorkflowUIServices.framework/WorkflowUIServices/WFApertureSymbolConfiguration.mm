@interface WFApertureSymbolConfiguration
+ (id)configurationWithPointSize:(double)size weight:(int64_t)weight;
- (WFApertureSymbolConfiguration)initWithPointSize:(double)size weight:(int64_t)weight;
@end

@implementation WFApertureSymbolConfiguration

- (WFApertureSymbolConfiguration)initWithPointSize:(double)size weight:(int64_t)weight
{
  v10.receiver = self;
  v10.super_class = WFApertureSymbolConfiguration;
  v6 = [(WFApertureSymbolConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_pointSize = size;
    v6->_weight = weight;
    v8 = v6;
  }

  return v7;
}

+ (id)configurationWithPointSize:(double)size weight:(int64_t)weight
{
  v4 = [[WFApertureSymbolConfiguration alloc] initWithPointSize:weight weight:size];

  return v4;
}

@end