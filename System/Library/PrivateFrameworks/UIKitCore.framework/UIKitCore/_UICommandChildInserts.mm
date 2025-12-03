@interface _UICommandChildInserts
- (void)_setBeforeElements:(id)elements afterElements:(id)afterElements;
@end

@implementation _UICommandChildInserts

- (void)_setBeforeElements:(id)elements afterElements:(id)afterElements
{
  elementsCopy = elements;
  afterElementsCopy = afterElements;
  beforeElements = self->_beforeElements;
  self->_beforeElements = elementsCopy;
  v10 = elementsCopy;

  afterElements = self->_afterElements;
  self->_afterElements = afterElementsCopy;
}

@end