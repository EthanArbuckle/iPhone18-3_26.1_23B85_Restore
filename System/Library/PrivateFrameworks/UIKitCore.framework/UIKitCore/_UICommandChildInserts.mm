@interface _UICommandChildInserts
- (void)_setBeforeElements:(id)a3 afterElements:(id)a4;
@end

@implementation _UICommandChildInserts

- (void)_setBeforeElements:(id)a3 afterElements:(id)a4
{
  v6 = a3;
  v7 = a4;
  beforeElements = self->_beforeElements;
  self->_beforeElements = v6;
  v10 = v6;

  afterElements = self->_afterElements;
  self->_afterElements = v7;
}

@end