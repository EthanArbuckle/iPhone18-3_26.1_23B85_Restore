@interface RSTextCoachingSignal
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RSTextCoachingSignal

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RSTextCoachingSignal);
  v4->_type = self->_type;
  objc_storeStrong(&v4->_text, self->_text);
  v4->_score = self->_score;
  v4->_state = self->_state;
  return v4;
}

@end