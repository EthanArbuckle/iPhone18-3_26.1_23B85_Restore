@interface PKPassFooterViewConfiguration
- (BOOL)isEqual:(id)equal;
- (PKPassFooterViewConfiguration)initWithPassView:(id)view state:(int64_t)state;
@end

@implementation PKPassFooterViewConfiguration

- (PKPassFooterViewConfiguration)initWithPassView:(id)view state:(int64_t)state
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PKPassFooterViewConfiguration;
  v7 = [(PKPassFooterViewConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = state;
    if (state == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = viewCopy;
    }

    objc_storeStrong(&v7->_passView, v9);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_passView && equalCopy[2] == self->_state;

  return v5;
}

@end