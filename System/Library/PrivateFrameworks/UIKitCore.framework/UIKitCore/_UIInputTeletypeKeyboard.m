@interface _UIInputTeletypeKeyboard
- (_UIInputTeletypeKeyboard)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIInputTeletypeKeyboard

- (_UIInputTeletypeKeyboard)init
{
  v8.receiver = self;
  v8.super_class = _UIInputTeletypeKeyboard;
  v2 = [(_UIInputTeletypeKeyboard *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = _MergedGlobals_1018;
    v13 = _MergedGlobals_1018;
    if (!_MergedGlobals_1018)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getITTAppKeyboardHostClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getITTAppKeyboardHostClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    if (v3)
    {
      v5 = objc_alloc_init(v3);
      appKeyboard = v2->_appKeyboard;
      v2->_appKeyboard = v5;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(_UIITTAppKeyboardHost *)self->_appKeyboard invalidate];
  v3.receiver = self;
  v3.super_class = _UIInputTeletypeKeyboard;
  [(_UIInputTeletypeKeyboard *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = [(_UIInputTeletypeKeyboard *)self appKeyboard];
  [v2 invalidate];
}

@end