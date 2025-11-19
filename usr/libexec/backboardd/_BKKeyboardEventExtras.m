@interface _BKKeyboardEventExtras
- (BOOL)isEqual:(id)a3;
- (id)copy;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation _BKKeyboardEventExtras

- (void)appendDescriptionToFormatter:(id)a3
{
  v9 = a3;
  v4 = [v9 appendObject:self->_authenticationSpecification withName:@"authSpec" skipIfNil:1];
  eventSource = self->_eventSource;
  v6 = NSStringFromBKSHIDEventSource();
  [v9 appendString:v6 withName:@"eventSource"];

  v7 = [v9 appendBool:self->_modifiersOnly withName:@"modifiersOnly"];
  v8 = [v9 appendUnsignedInteger:self->_GSModifierState withName:@"GSModifierState" format:1];
}

- (id)copy
{
  v3 = objc_alloc_init(_BKKeyboardEventExtras);
  objc_storeStrong(&v3->_authenticationSpecification, self->_authenticationSpecification);
  v3->_eventSource = self->_eventSource;
  v3->_modifiersOnly = self->_modifiersOnly;
  v3->_GSModifierState = self->_GSModifierState;
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && (authenticationSpecification = self->_authenticationSpecification, v6 = v4->_authenticationSpecification, BSEqualObjects()) && self->_eventSource == v4->_eventSource && self->_modifiersOnly == v4->_modifiersOnly && self->_GSModifierState == v4->_GSModifierState;
  }

  return v7;
}

@end