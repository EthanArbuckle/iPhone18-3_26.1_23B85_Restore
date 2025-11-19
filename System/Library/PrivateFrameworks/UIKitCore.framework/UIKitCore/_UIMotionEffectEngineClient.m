@interface _UIMotionEffectEngineClient
- (BOOL)isEqual:(id)a3;
- (_UIMotionEffectEngineClient)initWithMotionEffect:(id)a3 view:(id)a4;
- (id)description;
@end

@implementation _UIMotionEffectEngineClient

- (_UIMotionEffectEngineClient)initWithMotionEffect:(id)a3 view:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _UIMotionEffectEngineClient;
  v9 = [(_UIMotionEffectEngineClient *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_effect, a3);
    objc_storeStrong(&v10->_view, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_effect && v4[2] == self->_view;

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