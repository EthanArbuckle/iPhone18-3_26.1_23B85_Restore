@interface TSUDuration
+ (id)durationWithTimeInterval:(double)interval;
- (TSUDuration)initWithTimeInterval:(double)interval;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSUDuration

+ (id)durationWithTimeInterval:(double)interval
{
  v3 = [objc_alloc(objc_opt_class()) initWithTimeInterval:interval];

  return v3;
}

- (TSUDuration)initWithTimeInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = TSUDuration;
  result = [(TSUDuration *)&v5 init];
  if (result)
  {
    result->mTimeInterval = interval;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mTimeInterval = self->mTimeInterval;

  return [v4 initWithTimeInterval:mTimeInterval];
}

@end