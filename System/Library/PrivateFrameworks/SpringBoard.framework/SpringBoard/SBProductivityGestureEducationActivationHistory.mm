@interface SBProductivityGestureEducationActivationHistory
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBProductivityGestureEducationActivationHistory

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBProductivityGestureEducationActivationHistory);
  [(SBProductivityGestureEducationActivationHistory *)v4 setCount:self->_count];
  [(SBProductivityGestureEducationActivationHistory *)v4 setDate:self->_date];
  return v4;
}

@end