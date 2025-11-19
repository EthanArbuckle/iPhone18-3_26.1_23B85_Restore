@interface PPSTimeIntervalSet
- (PPSTimeIntervalSet)initWithCoalescePolicy:(id)a3;
- (PPSTimeIntervalSet)initWithTimeInterval:(id)a3;
- (PPSTimeIntervalSet)initWithTimeInterval:(id)a3 coalescePolicy:(id)a4;
- (PPSTimeIntervalSet)initWithTimeIntervalSet:(id)a3 coalescePolicy:(id)a4;
@end

@implementation PPSTimeIntervalSet

- (PPSTimeIntervalSet)initWithCoalescePolicy:(id)a3
{
  v4.receiver = self;
  v4.super_class = PPSTimeIntervalSet;
  return [(PPSTimeIntervalSet *)&v4 init];
}

- (PPSTimeIntervalSet)initWithTimeInterval:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = +[PPSTimeIntervalCoalescePolicy legacyPolicy];
  v6 = [v4 initWithCoalescePolicy:v5];

  return v6;
}

- (PPSTimeIntervalSet)initWithTimeInterval:(id)a3 coalescePolicy:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithCoalescePolicy:v5];

  return v6;
}

- (PPSTimeIntervalSet)initWithTimeIntervalSet:(id)a3 coalescePolicy:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithCoalescePolicy:v5];

  return v6;
}

@end