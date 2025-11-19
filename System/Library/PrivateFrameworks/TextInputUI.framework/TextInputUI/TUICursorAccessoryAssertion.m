@interface TUICursorAccessoryAssertion
- (NSString)description;
- (TUICursorAccessoryAssertion)initWithAccessoryType:(unint64_t)a3 accessory:(id)a4 controller:(id)a5;
- (TUICursorAccessoryAssertionController)controller;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TUICursorAccessoryAssertion

- (TUICursorAccessoryAssertionController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TUICursorAccessoryAssertion *)self accessoryType];
  v7 = [(TUICursorAccessoryAssertion *)self accessory];
  v8 = [v3 stringWithFormat:@"<%@:%p %lux %@>", v5, self, v6, v7];

  return v8;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = TUIAssertionLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[TUICursorAccessoryAssertion invalidate]";
    _os_log_debug_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  v4 = [(TUICursorAccessoryAssertion *)self controller];
  [v4 endTrackingAssertion:self];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = TUIAssertionLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[TUICursorAccessoryAssertion dealloc]";
    _os_log_debug_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  [(TUICursorAccessoryAssertion *)self invalidate];
  v4.receiver = self;
  v4.super_class = TUICursorAccessoryAssertion;
  [(TUICursorAccessoryAssertion *)&v4 dealloc];
}

- (TUICursorAccessoryAssertion)initWithAccessoryType:(unint64_t)a3 accessory:(id)a4 controller:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TUICursorAccessoryAssertion;
  v10 = [(TUICursorAccessoryAssertion *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(TUICursorAccessoryAssertion *)v10 setAccessoryType:a3];
    [(TUICursorAccessoryAssertion *)v11 setAccessory:v8];
    [(TUICursorAccessoryAssertion *)v11 setController:v9];
  }

  return v11;
}

@end