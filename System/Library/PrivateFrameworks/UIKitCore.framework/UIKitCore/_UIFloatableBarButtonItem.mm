@interface _UIFloatableBarButtonItem
- (id)description;
@end

@implementation _UIFloatableBarButtonItem

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIFloatableBarButtonItem;
  v3 = [(UIBarButtonItem *)&v7 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    if ([(_UIFloatableBarButtonItem *)self _isFloating])
    {
      v6 = @" _isFloating";
    }

    else
    {
      if (!self->_floatable)
      {
        goto LABEL_2;
      }

      v6 = @" _floatable";
    }

    [v4 appendString:v6];
  }

LABEL_2:

  return v4;
}

@end