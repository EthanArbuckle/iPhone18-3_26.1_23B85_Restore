@interface _UIResponder_Override
+ (id)overrideForResponder:(id)a3 withTarget:(id)a4 forType:(int64_t)a5;
- (UIResponder)owner;
- (UIResponder)target;
- (id)description;
- (void)dealloc;
@end

@implementation _UIResponder_Override

- (UIResponder)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

+ (id)overrideForResponder:(id)a3 withTarget:(id)a4 forType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 _currentOverrideClient];
  v10 = v9;
  if (v9 && (v11 = objc_loadWeakRetained((v9 + 16)), v11, v11 == v8))
  {
    if ((*(v10 + 24) & a5) == 0)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 16));
      v17 = [WeakRetained _overrideHost];
      [v17 attachOverrider:v7 forTypes:a5];

      *(v10 + 24) |= a5;
    }
  }

  else
  {
    v12 = objc_opt_new();

    if (v12)
    {
      objc_storeWeak((v12 + 8), v7);
      objc_storeWeak((v12 + 16), v8);
      *(v12 + 24) = a5;
      v13 = [v8 _overrideHost];
      [v13 attachOverrider:v7 forTypes:a5];
    }

    v10 = v12;
  }

  v14 = v10;

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v4 = [WeakRetained _overrideHost];
  v5 = objc_loadWeakRetained(&self->_owner);
  [v4 detachOverrider:v5 forTypes:self->_types];

  v6.receiver = self;
  v6.super_class = _UIResponder_Override;
  [(_UIResponder_Override *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = _UIResponder_Override;
  v4 = [(_UIResponder_Override *)&v10 description];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = objc_loadWeakRetained(&self->_target);
  v7 = NSStringFrom_UI_UIResponder_Override_Type(self->_types);
  v8 = [v3 stringWithFormat:@"<%@ owner=%@; target=%@; types=%@>", v4, WeakRetained, v6, v7];;

  return v8;
}

- (UIResponder)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end