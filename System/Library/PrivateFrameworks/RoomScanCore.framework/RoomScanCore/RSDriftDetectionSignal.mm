@interface RSDriftDetectionSignal
- (RSDriftDetectionSignal)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSDriftDetectionSignal

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(RSDriftDetectionSignal);
  *(result + 2) = self->_type;
  *(result + 2) = LODWORD(self->_score);
  return result;
}

- (RSDriftDetectionSignal)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = RSDriftDetectionSignal;
    self = [(RSDriftDetectionSignal *)&v2 init];
    if (self)
    {
      self->_type = -1;
      self->_score = 0.0;
    }
  }

  return self;
}

@end