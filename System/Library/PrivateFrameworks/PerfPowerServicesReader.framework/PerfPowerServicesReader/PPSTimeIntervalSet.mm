@interface PPSTimeIntervalSet
- (PPSTimeIntervalSet)initWithCoalescePolicy:(id)policy;
- (PPSTimeIntervalSet)initWithTimeInterval:(id)interval;
- (PPSTimeIntervalSet)initWithTimeInterval:(id)interval coalescePolicy:(id)policy;
- (PPSTimeIntervalSet)initWithTimeIntervalSet:(id)set coalescePolicy:(id)policy;
@end

@implementation PPSTimeIntervalSet

- (PPSTimeIntervalSet)initWithCoalescePolicy:(id)policy
{
  v4.receiver = self;
  v4.super_class = PPSTimeIntervalSet;
  return [(PPSTimeIntervalSet *)&v4 init];
}

- (PPSTimeIntervalSet)initWithTimeInterval:(id)interval
{
  v4 = objc_alloc(objc_opt_class());
  v5 = +[PPSTimeIntervalCoalescePolicy legacyPolicy];
  v6 = [v4 initWithCoalescePolicy:v5];

  return v6;
}

- (PPSTimeIntervalSet)initWithTimeInterval:(id)interval coalescePolicy:(id)policy
{
  policyCopy = policy;
  v6 = [objc_alloc(objc_opt_class()) initWithCoalescePolicy:policyCopy];

  return v6;
}

- (PPSTimeIntervalSet)initWithTimeIntervalSet:(id)set coalescePolicy:(id)policy
{
  policyCopy = policy;
  v6 = [objc_alloc(objc_opt_class()) initWithCoalescePolicy:policyCopy];

  return v6;
}

@end