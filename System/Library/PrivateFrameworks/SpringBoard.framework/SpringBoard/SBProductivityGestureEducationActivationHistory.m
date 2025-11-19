@interface SBProductivityGestureEducationActivationHistory
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBProductivityGestureEducationActivationHistory

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBProductivityGestureEducationActivationHistory);
  [(SBProductivityGestureEducationActivationHistory *)v4 setCount:self->_count];
  [(SBProductivityGestureEducationActivationHistory *)v4 setDate:self->_date];
  return v4;
}

@end