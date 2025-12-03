@interface WFListDisplayConfiguration
- (WFListDisplayConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFListDisplayConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleLineLimit = [(WFListDisplayConfiguration *)self titleLineLimit];
  [coderCopy encodeObject:titleLineLimit forKey:@"titleLineLimit"];
}

- (WFListDisplayConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFListDisplayConfiguration;
  v5 = [(WFListDisplayConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleLineLimit"];
    titleLineLimit = v5->_titleLineLimit;
    v5->_titleLineLimit = v6;

    v8 = v5;
  }

  return v5;
}

@end