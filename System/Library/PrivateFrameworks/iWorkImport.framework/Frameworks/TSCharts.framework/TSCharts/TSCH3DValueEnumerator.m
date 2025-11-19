@interface TSCH3DValueEnumerator
- (id)enumerator;
@end

@implementation TSCH3DValueEnumerator

- (id)enumerator
{
  v6 = objc_msgSend_count(self, a2, v2, v3, v4);
  result = self;
  self->_imp._index = -1;
  self->_imp._max = v6;
  self->_imp._value = NAN;
  self->_imp._forward = 1;
  return result;
}

@end