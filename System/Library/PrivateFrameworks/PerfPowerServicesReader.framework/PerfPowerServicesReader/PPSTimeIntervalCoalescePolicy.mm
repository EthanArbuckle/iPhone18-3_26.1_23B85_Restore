@interface PPSTimeIntervalCoalescePolicy
+ (id)legacyPolicy;
- (PPSTimeIntervalCoalescePolicy)initWithCoder:(id)coder;
- (PPSTimeIntervalCoalescePolicy)initWithNumberCoalescePolicy:(signed __int16)policy stringCoalescePolicy:(signed __int16)coalescePolicy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSTimeIntervalCoalescePolicy

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PPSTimeIntervalCoalescePolicy numberPolicy](self forKey:{"numberPolicy"), @"numberPolicy"}];
  [coderCopy encodeInteger:-[PPSTimeIntervalCoalescePolicy stringPolicy](self forKey:{"stringPolicy"), @"stringPolicy"}];
}

- (PPSTimeIntervalCoalescePolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PPSTimeIntervalCoalescePolicy;
  v5 = [(PPSTimeIntervalCoalescePolicy *)&v7 init];
  if (v5)
  {
    v5->_numberPolicy = [coderCopy decodeIntegerForKey:@"numberPolicy"];
    v5->_stringPolicy = [coderCopy decodeIntegerForKey:@"stringPolicy"];
  }

  return v5;
}

+ (id)legacyPolicy
{
  v2 = [objc_alloc(objc_opt_class()) initWithNumberCoalescePolicy:0 stringCoalescePolicy:0];

  return v2;
}

- (PPSTimeIntervalCoalescePolicy)initWithNumberCoalescePolicy:(signed __int16)policy stringCoalescePolicy:(signed __int16)coalescePolicy
{
  v7.receiver = self;
  v7.super_class = PPSTimeIntervalCoalescePolicy;
  result = [(PPSTimeIntervalCoalescePolicy *)&v7 init];
  if (result)
  {
    result->_numberPolicy = policy;
    result->_stringPolicy = coalescePolicy;
  }

  return result;
}

@end