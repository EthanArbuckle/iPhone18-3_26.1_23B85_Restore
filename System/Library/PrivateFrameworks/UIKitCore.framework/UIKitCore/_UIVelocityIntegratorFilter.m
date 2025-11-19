@interface _UIVelocityIntegratorFilter
- (id)initWithFilter:(id)result;
- (void)dealloc;
@end

@implementation _UIVelocityIntegratorFilter

- (void)dealloc
{
  filter = self->_filter;
  if (filter)
  {
    (*(filter->var0 + 1))(filter, a2);
  }

  v4.receiver = self;
  v4.super_class = _UIVelocityIntegratorFilter;
  [(_UIVelocityIntegratorFilter *)&v4 dealloc];
}

- (id)initWithFilter:(id)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_initWithFilter_ object:v3 file:@"_UIVelocityIntegrator.mm" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"filter"}];
    }

    v5.receiver = v3;
    v5.super_class = _UIVelocityIntegratorFilter;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = a2;
    }
  }

  return result;
}

@end