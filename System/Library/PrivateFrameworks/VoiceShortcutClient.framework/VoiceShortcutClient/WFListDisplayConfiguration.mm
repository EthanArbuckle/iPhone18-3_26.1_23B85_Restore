@interface WFListDisplayConfiguration
- (WFListDisplayConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFListDisplayConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFListDisplayConfiguration *)self titleLineLimit];
  [v4 encodeObject:v5 forKey:@"titleLineLimit"];
}

- (WFListDisplayConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFListDisplayConfiguration;
  v5 = [(WFListDisplayConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleLineLimit"];
    titleLineLimit = v5->_titleLineLimit;
    v5->_titleLineLimit = v6;

    v8 = v5;
  }

  return v5;
}

@end