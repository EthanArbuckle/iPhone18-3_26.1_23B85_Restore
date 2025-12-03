@interface _UIMotionEffectEngineClient
- (BOOL)isEqual:(id)equal;
- (_UIMotionEffectEngineClient)initWithMotionEffect:(id)effect view:(id)view;
- (id)description;
@end

@implementation _UIMotionEffectEngineClient

- (_UIMotionEffectEngineClient)initWithMotionEffect:(id)effect view:(id)view
{
  effectCopy = effect;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = _UIMotionEffectEngineClient;
  v9 = [(_UIMotionEffectEngineClient *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_effect, effect);
    objc_storeStrong(&v10->_view, view);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_effect && equalCopy[2] == self->_view;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p effect=%@ view=%@>", v5, self, self->_effect, self->_view];

  return v6;
}

@end