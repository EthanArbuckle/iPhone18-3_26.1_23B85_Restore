@interface _UIResponder_Override
+ (id)overrideForResponder:(id)responder withTarget:(id)target forType:(int64_t)type;
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

+ (id)overrideForResponder:(id)responder withTarget:(id)target forType:(int64_t)type
{
  responderCopy = responder;
  targetCopy = target;
  _currentOverrideClient = [responderCopy _currentOverrideClient];
  v10 = _currentOverrideClient;
  if (_currentOverrideClient && (v11 = objc_loadWeakRetained((_currentOverrideClient + 16)), v11, v11 == targetCopy))
  {
    if ((*(v10 + 24) & type) == 0)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 16));
      _overrideHost = [WeakRetained _overrideHost];
      [_overrideHost attachOverrider:responderCopy forTypes:type];

      *(v10 + 24) |= type;
    }
  }

  else
  {
    v12 = objc_opt_new();

    if (v12)
    {
      objc_storeWeak((v12 + 8), responderCopy);
      objc_storeWeak((v12 + 16), targetCopy);
      *(v12 + 24) = type;
      _overrideHost2 = [targetCopy _overrideHost];
      [_overrideHost2 attachOverrider:responderCopy forTypes:type];
    }

    v10 = v12;
  }

  v14 = v10;

  return v14;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  _overrideHost = [WeakRetained _overrideHost];
  v5 = objc_loadWeakRetained(&self->_owner);
  [_overrideHost detachOverrider:v5 forTypes:self->_types];

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