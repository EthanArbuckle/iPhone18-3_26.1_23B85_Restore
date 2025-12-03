@interface _UIKeyboardSuppressionPencilPolicyDelegate
- (BOOL)_shouldSuppressForDelegate:(id)delegate;
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
    sharedSettings = [v4 sharedSettings];
    _overrideLocaleIdentifier = [(_UIKeyboardSuppressionPencilPolicyDelegate *)self _overrideLocaleIdentifier];
    v8 = _overrideLocaleIdentifier;
    if (_overrideLocaleIdentifier)
    {
      recognitionLocaleIdentifier = _overrideLocaleIdentifier;
    }

    else
    {
      recognitionLocaleIdentifier = [sharedSettings recognitionLocaleIdentifier];
    }

    v10 = recognitionLocaleIdentifier;

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

- (BOOL)_shouldSuppressForDelegate:(id)delegate
{
  delegateCopy = delegate;
  _recognitionLocaleIdentifier = [(_UIKeyboardSuppressionPencilPolicyDelegate *)self _recognitionLocaleIdentifier];

  if (_recognitionLocaleIdentifier)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(_recognitionLocaleIdentifier) = [delegateCopy isSecureTextEntry] ^ 1;
    }

    else
    {
      LOBYTE(_recognitionLocaleIdentifier) = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      LOBYTE(_recognitionLocaleIdentifier) = ([delegateCopy _textInputSource] == 3) & _recognitionLocaleIdentifier;
    }

    else
    {
      LOBYTE(_recognitionLocaleIdentifier) = 0;
    }
  }

  return _recognitionLocaleIdentifier;
}

@end