@interface _UIKeyboardSuppressionPencilPolicyDelegate
- (BOOL)_shouldSuppressForDelegate:(id)a3;
- (id)_recognitionLocaleIdentifier;
@end

@implementation _UIKeyboardSuppressionPencilPolicyDelegate

- (id)_recognitionLocaleIdentifier
{
  if (self->_isQueryingLocaleIdentifier)
  {
    v2 = 0;
  }

  else
  {
    self->_isQueryingLocaleIdentifier = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v4 = _MergedGlobals_1161;
    v17 = _MergedGlobals_1161;
    if (!_MergedGlobals_1161)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getPKTextInputSettingsClass_block_invoke;
      v13[3] = &unk_1E70F2F20;
      v13[4] = &v14;
      __getPKTextInputSettingsClass_block_invoke(v13);
      v4 = v15[3];
    }

    v5 = v4;
    _Block_object_dispose(&v14, 8);
    v6 = [v4 sharedSettings];
    v7 = [(_UIKeyboardSuppressionPencilPolicyDelegate *)self _overrideLocaleIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v6 recognitionLocaleIdentifier];
    }

    v10 = v9;

    self->_isQueryingLocaleIdentifier = 0;
    if ([(_UIKeyboardSuppressionPencilPolicyDelegate *)self _suppressLocaleIdentifier])
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v2 = v11;
  }

  return v2;
}

- (BOOL)_shouldSuppressForDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardSuppressionPencilPolicyDelegate *)self _recognitionLocaleIdentifier];

  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v5) = [v4 isSecureTextEntry] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v5) = ([v4 _textInputSource] == 3) & v5;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end