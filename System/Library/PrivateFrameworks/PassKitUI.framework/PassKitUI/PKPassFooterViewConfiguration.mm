@interface PKPassFooterViewConfiguration
- (BOOL)isEqual:(id)a3;
- (PKPassFooterViewConfiguration)initWithPassView:(id)a3 state:(int64_t)a4;
@end

@implementation PKPassFooterViewConfiguration

- (PKPassFooterViewConfiguration)initWithPassView:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKPassFooterViewConfiguration;
  v7 = [(PKPassFooterViewConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = a4;
    if (a4 == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    objc_storeStrong(&v7->_passView, v9);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_passView && v4[2] == self->_state;

  return v5;
}

@end