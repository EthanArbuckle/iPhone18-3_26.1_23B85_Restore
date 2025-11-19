@interface PPSTimeIntervalCoalescePolicy
+ (id)legacyPolicy;
- (PPSTimeIntervalCoalescePolicy)initWithCoder:(id)a3;
- (PPSTimeIntervalCoalescePolicy)initWithNumberCoalescePolicy:(signed __int16)a3 stringCoalescePolicy:(signed __int16)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSTimeIntervalCoalescePolicy

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PPSTimeIntervalCoalescePolicy numberPolicy](self forKey:{"numberPolicy"), @"numberPolicy"}];
  [v4 encodeInteger:-[PPSTimeIntervalCoalescePolicy stringPolicy](self forKey:{"stringPolicy"), @"stringPolicy"}];
}

- (PPSTimeIntervalCoalescePolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PPSTimeIntervalCoalescePolicy;
  v5 = [(PPSTimeIntervalCoalescePolicy *)&v7 init];
  if (v5)
  {
    v5->_numberPolicy = [v4 decodeIntegerForKey:@"numberPolicy"];
    v5->_stringPolicy = [v4 decodeIntegerForKey:@"stringPolicy"];
  }

  return v5;
}

+ (id)legacyPolicy
{
  v2 = [objc_alloc(objc_opt_class()) initWithNumberCoalescePolicy:0 stringCoalescePolicy:0];

  return v2;
}

- (PPSTimeIntervalCoalescePolicy)initWithNumberCoalescePolicy:(signed __int16)a3 stringCoalescePolicy:(signed __int16)a4
{
  v7.receiver = self;
  v7.super_class = PPSTimeIntervalCoalescePolicy;
  result = [(PPSTimeIntervalCoalescePolicy *)&v7 init];
  if (result)
  {
    result->_numberPolicy = a3;
    result->_stringPolicy = a4;
  }

  return result;
}

@end