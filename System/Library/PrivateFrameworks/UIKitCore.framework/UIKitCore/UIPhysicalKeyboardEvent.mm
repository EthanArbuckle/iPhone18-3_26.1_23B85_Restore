@interface UIPhysicalKeyboardEvent
+ (id)_eventWithInput:(id)input inputFlags:(int)flags;
- (BOOL)_isARepeat;
- (BOOL)_isDeleteKey;
- (BOOL)_isEjectKey;
- (BOOL)_isGlobeKey;
- (BOOL)_isKeyDown;
- (BOOL)_isModifierKey;
- (BOOL)_shouldAttemptSecurePasteAuthentication;
- (BOOL)isEqual:(id)equal;
- (UIPhysicalKeyboardEvent)initWithCoder:(id)coder;
- (id)_cloneEvent;
- (int64_t)_keyCode;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map additionalModifiers:(int64_t)modifiers;
- (int64_t)_matchFidelityFromKeyMapForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map translator:(id)translator addingModifiers:(int64_t)modifiers ignoringModifiers:(int64_t)ignoringModifiers;
- (void)_prepareKeyTranslationMapIfNeeded;
- (void)_privatize;
- (void)_setHIDEvent:(__IOHIDEvent *)event keyboard:(__GSKeyboard *)keyboard;
- (void)_setModifierFlags:(int64_t)flags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIPhysicalKeyboardEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _modifiedInput = [(UIPhysicalKeyboardEvent *)self _modifiedInput];

  if (_modifiedInput)
  {
    _modifiedInput2 = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
    [coderCopy encodeObject:_modifiedInput2 forKey:@"modifiedInput"];
  }

  _unmodifiedInput = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];

  if (_unmodifiedInput)
  {
    _unmodifiedInput2 = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];
    [coderCopy encodeObject:_unmodifiedInput2 forKey:@"unmodifiedInput"];
  }

  _shiftModifiedInput = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];

  if (_shiftModifiedInput)
  {
    _shiftModifiedInput2 = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
    [coderCopy encodeObject:_shiftModifiedInput2 forKey:@"shiftModifiedInput"];
  }

  _commandModifiedInput = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];

  if (_commandModifiedInput)
  {
    _commandModifiedInput2 = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
    [coderCopy encodeObject:_commandModifiedInput2 forKey:@"commandModifiedInput"];
  }

  _markedInput = [(UIPhysicalKeyboardEvent *)self _markedInput];

  if (_markedInput)
  {
    _markedInput2 = [(UIPhysicalKeyboardEvent *)self _markedInput];
    [coderCopy encodeObject:_markedInput2 forKey:@"markedInput"];
  }

  _privateInput = [(UIPhysicalKeyboardEvent *)self _privateInput];

  if (_privateInput)
  {
    _privateInput2 = [(UIPhysicalKeyboardEvent *)self _privateInput];
    [coderCopy encodeObject:_privateInput2 forKey:@"privateInput"];
  }

  _hint = [(UIPhysicalKeyboardEvent *)self _hint];

  if (_hint)
  {
    _hint2 = [(UIPhysicalKeyboardEvent *)self _hint];
    [coderCopy encodeObject:_hint2 forKey:@"hint"];
  }

  [coderCopy encodeInteger:-[UIPhysicalKeyboardEvent _modifierFlags](self forKey:{"_modifierFlags"), @"modifiedFlags"}];
  [coderCopy encodeInteger:-[UIPhysicalKeyboardEvent _privateModifierFlags](self forKey:{"_privateModifierFlags"), @"privateModifierFlags"}];
  [coderCopy encodeInt32:-[UIPhysicalKeyboardEvent _keyCode](self forKey:{"_keyCode"), @"keyCode"}];
  [coderCopy encodeInt:-[UIPhysicalKeyboardEvent _inputFlags](self forKey:{"_inputFlags"), @"inputFlags"}];
  [coderCopy encodeInteger:-[UIPhysicalKeyboardEvent source](self forKey:{"source"), @"source"}];
  [coderCopy encodeBool:-[UIPhysicalKeyboardEvent _isExternalEvent](self forKey:{"_isExternalEvent"), @"externalEvent"}];
  [(UIEvent *)self _hidEvent];
  Data = IOHIDEventCreateData();
  [coderCopy encodeObject:Data forKey:@"hidEvent"];
  [coderCopy encodeInt:-[UIPhysicalKeyboardEvent keyCommandCode](self forKey:{"keyCommandCode"), @"keyCommandCode"}];
  [coderCopy encodeBool:-[UIPhysicalKeyboardEvent keyCommandHandlingBeforePublic](self forKey:{"keyCommandHandlingBeforePublic"), @"keyCommandHandlingBeforePublic"}];
  [coderCopy encodeBool:-[UIPhysicalKeyboardEvent shiftDown](self forKey:{"shiftDown"), @"shiftDown"}];
  [coderCopy encodeBool:-[UIPhysicalKeyboardEvent keyEventForwardedFromInputUIHost](self forKey:{"keyEventForwardedFromInputUIHost"), @"keyEventForwardedFromInputUIHost"}];
  [coderCopy encodeObject:self->_keyTranslationMap forKey:@"keyTranslationMap"];
}

- (UIPhysicalKeyboardEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = UIPhysicalKeyboardEvent;
  v5 = [(UIPhysicalKeyboardEvent *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_modifiedInput:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unmodifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_unmodifiedInput:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shiftModifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_shiftModifiedInput:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandModifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_commandModifiedInput:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"markedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_markedInput:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_privateInput:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
    [(UIPhysicalKeyboardEvent *)v5 set_hint:v12];

    -[UIPhysicalKeyboardEvent _setModifierFlags:](v5, "_setModifierFlags:", [coderCopy decodeIntegerForKey:@"modifiedFlags"]);
    -[UIPhysicalKeyboardEvent set_privateModifierFlags:](v5, "set_privateModifierFlags:", [coderCopy decodeIntegerForKey:@"privateModifierFlags"]);
    -[UIPhysicalKeyboardEvent set_keyCode:](v5, "set_keyCode:", [coderCopy decodeInt32ForKey:@"keyCode"]);
    -[UIPhysicalKeyboardEvent set_inputFlags:](v5, "set_inputFlags:", [coderCopy decodeIntForKey:@"inputFlags"]);
    -[UIPhysicalKeyboardEvent setSource:](v5, "setSource:", [coderCopy decodeIntegerForKey:@"source"]);
    -[UIPhysicalKeyboardEvent set_externalEvent:](v5, "set_externalEvent:", [coderCopy decodeBoolForKey:@"externalEvent"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hidEvent"];
    v14 = IOHIDEventCreateWithData();
    if (v14)
    {
      v15 = v14;
      v25.receiver = v5;
      v25.super_class = UIPhysicalKeyboardEvent;
      [(UIEvent *)&v25 _setHIDEvent:v14];
      CFRelease(v15);
    }

    -[UIPhysicalKeyboardEvent setKeyCommandCode:](v5, "setKeyCommandCode:", [coderCopy decodeIntForKey:@"keyCommandCode"]);
    -[UIPhysicalKeyboardEvent setKeyCommandHandlingBeforePublic:](v5, "setKeyCommandHandlingBeforePublic:", [coderCopy decodeBoolForKey:@"keyCommandHandlingBeforePublic"]);
    -[UIPhysicalKeyboardEvent setShiftDown:](v5, "setShiftDown:", [coderCopy decodeBoolForKey:@"shiftDown"]);
    -[UIPhysicalKeyboardEvent setKeyEventForwardedFromInputUIHost:](v5, "setKeyEventForwardedFromInputUIHost:", [coderCopy decodeBoolForKey:@"keyEventForwardedFromInputUIHost"]);
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyTranslationMap"];
    keyTranslationMap = v5->_keyTranslationMap;
    v5->_keyTranslationMap = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalEscapeKeyTranslationMap"];
    originalEscapeKeyTranslationMap = v5->_originalEscapeKeyTranslationMap;
    v5->_originalEscapeKeyTranslationMap = v18;

    _shiftModifiedInput = [(UIPhysicalKeyboardEvent *)v5 _shiftModifiedInput];

    if (_shiftModifiedInput)
    {
      v21 = v5->_keyTranslationMap;
      _shiftModifiedInput2 = [(UIPhysicalKeyboardEvent *)v5 _shiftModifiedInput];
      [(_UIPhysicalKeyTranslationMap *)v21 setKeyTranslation:_shiftModifiedInput2 modifiers:0x20000];
    }

    if ([(UIEvent *)v5 _hidEvent])
    {
      v23 = v5->_keyTranslationMap != 0;
    }

    else
    {
      v23 = 0;
    }

    v5->_needToPrepareKeyTranslationMap = v23;
  }

  return v5;
}

- (void)_prepareKeyTranslationMapIfNeeded
{
  if (self->_needToPrepareKeyTranslationMap && [(UIEvent *)self _hidEvent]&& self->_keyTranslationMap)
  {
    v3 = -[_UIPhysicalKeyTranslator initWithGSKeyboard:]([_UIPhysicalKeyTranslator alloc], "initWithGSKeyboard:", [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:self createIfNeeded:0]);
    [(_UIPhysicalKeyTranslationMap *)self->_keyTranslationMap populateAllCombinationsOfModifiers:1966080 translator:v3];
  }

  self->_needToPrepareKeyTranslationMap = 0;
}

- (BOOL)_isKeyDown
{
  if (![(UIEvent *)self _hidEvent])
  {
    return 1;
  }

  [(UIEvent *)self _hidEvent];
  return IOHIDEventGetIntegerValue() != 0;
}

- (BOOL)_isEjectKey
{
  _hidEvent = [(UIEvent *)self _hidEvent];
  if (_hidEvent)
  {
    [(UIEvent *)self _hidEvent];
    IntegerValue = IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    v5 = IOHIDEventGetIntegerValue();
    v7 = v5 == 430 || v5 == 184;
    LOBYTE(_hidEvent) = IntegerValue == 12 && v7;
  }

  return _hidEvent;
}

- (BOOL)_isGlobeKey
{
  _hidEvent = [(UIEvent *)self _hidEvent];
  if (_hidEvent)
  {
    [(UIEvent *)self _hidEvent];
    IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    IOHIDEventGetIntegerValue();
    LOBYTE(_hidEvent) = GSKeyboardIsGlobeKeyUsagePair() != 0;
  }

  return _hidEvent;
}

- (int64_t)_keyCode
{
  result = [(UIEvent *)self _hidEvent];
  if (result)
  {
    [(UIEvent *)self _hidEvent];

    return IOHIDEventGetIntegerValue();
  }

  return result;
}

- (void)_setModifierFlags:(int64_t)flags
{
  keyTranslationMap = self->_keyTranslationMap;
  if (keyTranslationMap && [(_UIPhysicalKeyTranslationMap *)keyTranslationMap originalModifiers]!= flags)
  {
    v6 = [[_UIPhysicalKeyTranslationMap alloc] initWithKeyCode:[(UIPhysicalKeyboardEvent *)self _keyCode] action:[(UIPhysicalKeyboardEvent *)self _isKeyDown]^ 1 modifiers:flags];
    v7 = self->_keyTranslationMap;
    self->_keyTranslationMap = v6;

    self->_needToPrepareKeyTranslationMap = 0;
  }

  self->_modifierFlags = flags;
}

- (BOOL)_isModifierKey
{
  _hidEvent = [(UIEvent *)self _hidEvent];
  if (_hidEvent)
  {
    _keyCode = [(UIPhysicalKeyboardEvent *)self _keyCode];

    LOBYTE(_hidEvent) = isModifierFlag(_keyCode);
  }

  return _hidEvent;
}

- (BOOL)_isARepeat
{
  _isKeyDown = [(UIPhysicalKeyboardEvent *)self _isKeyDown];
  if (_isKeyDown)
  {
    LOBYTE(_isKeyDown) = [(UIPhysicalKeyboardEvent *)self _inputFlags]& 1;
  }

  return _isKeyDown;
}

- (BOOL)_isDeleteKey
{
  _hidEvent = [(UIEvent *)self _hidEvent];
  if (_hidEvent)
  {
    [(UIEvent *)self _hidEvent];
    IntegerValue = IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    v5 = IOHIDEventGetIntegerValue();
    LOBYTE(_hidEvent) = IntegerValue == 7 && v5 == 42;
  }

  return _hidEvent;
}

- (void)_setHIDEvent:(__IOHIDEvent *)event keyboard:(__GSKeyboard *)keyboard
{
  v91 = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = UIPhysicalKeyboardEvent;
  [(UIEvent *)&v88 _setHIDEvent:?];
  TimeStamp = IOHIDEventGetTimeStamp();
  [(UIEvent *)self _setTimestamp:_UIMediaTimeForMachTime(TimeStamp)];
  if (!keyboard)
  {
    return;
  }

  if (IOHIDEventGetType() != 3)
  {
    return;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue != 7 && IntegerValue != 255)
  {
    if (IntegerValue != 12)
    {
      return;
    }

    v9 = IOHIDEventGetIntegerValue();
    if (v9 != 184 && v9 != 669 && v9 != 430)
    {
      return;
    }
  }

  originalEscapeKeyTranslationMap = self->_originalEscapeKeyTranslationMap;
  v79 = 160;
  self->_originalEscapeKeyTranslationMap = 0;

  v11 = IOHIDEventGetIntegerValue();
  v12 = IOHIDEventGetIntegerValue();
  v13 = IOHIDEventGetIntegerValue();
  v84 = &v78;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v12;
  memset(v77, 0, 54);
  memset(v76, 0, sizeof(v76));
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  memset(&v72[52], 0, 48);
  if (v12)
  {
    v15 = 10;
  }

  else
  {
    v15 = 11;
  }

  *&v72[36] = 0uLL;
  *v72 = v15;
  v16 = v11 == 103 || v11 == 133;
  memset(&v72[4], 0, 32);
  v17 = 0x200000;
  if (!v16)
  {
    v17 = 0;
  }

  if ((v11 - 83) < 0x11)
  {
    v17 = 0x200000;
  }

  if (v14 != 7)
  {
    v17 = 0;
  }

  v85 = v17;
  v87 = 0;
  ModifierState = GSKeyboardGetModifierState();
  if (!isModifierFlag(v11))
  {
    v19 = [UIKeyboardImpl activeInstance:*v72];
    isCapsLockSwitchEnabled = [v19 isCapsLockSwitchEnabled];

    if ((isCapsLockSwitchEnabled & 1) == 0)
    {
      v21 = BKSHIDEventGetKeyboardAttributes();
      gSModifierState = [v21 GSModifierState];

      if (((gSModifierState ^ ModifierState) & 0x40000) != 0)
      {
        v23 = +[UIKeyboardImpl activeInstance];
        [v23 _setCapsLockIfNeeded:keyboard event:event];

        ModifierState = GSKeyboardGetModifierState();
      }

      v24 = +[UIKeyboardImpl activeInstance];
      v25 = ((ModifierState & 0x40000) == 0) ^ [v24 isCapsLockSignOn];

      if ((v25 & 1) == 0)
      {
        v26 = +[UIKeyboardImpl activeInstance];
        [v26 _setCapsLockIfNeeded:keyboard event:event];
      }
    }
  }

  LiveModifierState = GSKeyboardGetLiveModifierState();
  if (dyld_program_sdk_at_least())
  {
    v28 = ModifierState & 0x40000;
  }

  else
  {
    v28 = 0;
  }

  v83 = &v77[1];
  GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
  v29 = GSKeyboardGetModifierState();
  v30 = GSKeyboardGetLiveModifierState();
  v31 = dyld_program_sdk_at_least();
  v32 = v29 & 0x40000;
  if (!v31)
  {
    v32 = 0;
  }

  v33 = v32 | v30;
  *&v72[64] = v32 | v30;
  if (v13 == 7)
  {
    v34 = v28 | LiveModifierState;
    v35 = 54;
    if (v11 != 133)
    {
      v35 = v11;
    }

    if (v11 == 88)
    {
      v36 = 40;
    }

    else
    {
      v36 = v35;
    }

    v77[26] = 1;
    v37 = isModifierFlag(v36);
    v38 = v34 == v33;
    v39 = 57;
    if (v36 == 57)
    {
      v40 = 57;
    }

    else
    {
      v40 = v36;
    }

    if (v36 != 57)
    {
      v39 = v36;
      v38 = 0;
    }

    if (v37)
    {
      LOWORD(v11) = v40;
    }

    else
    {
      LOWORD(v11) = v36;
    }

    if (v37)
    {
      v41 = v39;
    }

    else
    {
      v41 = v36;
    }

    if (!v37)
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
    v77[26] = 1;
    v41 = v11;
  }

  if (*&v72[96] || v77[0] != 0 || v38)
  {
    v80 = 0;
    v81 = 0;
  }

  else
  {
    *v72 = 12;
    if (dyld_program_sdk_at_least())
    {
      v80 = &stru_1EFB14550;
    }

    else
    {
      v80 = 0;
    }

    v81 = 32;
  }

  v42 = GSEventCreateWithEventRecord();
  gsEvent = self->super.super._gsEvent;
  if (gsEvent)
  {
    CFRelease(gsEvent);
    self->super.super._gsEvent = 0;
  }

  if (v42)
  {
    self->super.super._gsEvent = CFRetain(v42);
    CFRelease(v42);
  }

  v82 = v77;
  v44 = *&v72[64] >> 21;
  if ((*&v72[64] & 0x480000) != 0)
  {
    v45 = (((*&v72[64] & 0x1010000) != 0) << 20) | 0x80000;
  }

  else
  {
    v45 = ((*&v72[64] & 0x1010000) != 0) << 20;
  }

  if ((*&v72[64] & 0x900000) != 0)
  {
    v45 |= 0x40000uLL;
  }

  if ((*&v72[64] & 0x220000) != 0)
  {
    v45 |= 0x20000uLL;
  }

  v46 = v85 | (*&v72[64] >> 3) & 0x800000 | (*&v72[64] >> 2) & 0x10000u | v45;
  v85 = [[_UIPhysicalKeyTranslator alloc] initWithGSKeyboard:keyboard];
  v47 = &OBJC_METACLASS___UIKeyboardDicationBackground;
  if (v87)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithCharacters:v89 length:?];
    v49 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@".");
    v50 = [v48 isEqualToString:v49];

    if (v50)
    {
      v51 = [[_UIPhysicalKeyTranslationMap alloc] initWithKeyCode:v11 action:v86 == 0 modifiers:v46];
      v52 = v79;
      v53 = *(&self->super.super.super.isa + v79);
      *(&self->super.super.super.isa + v79) = v51;

      [*(&self->super.super.super.isa + v52) populateAllCombinationsOfModifiers:1966080 translator:v85];
      v54 = v46 & 0xFFFFFFFFFFEFFFFFLL;
      v41 = 41;
    }

    else
    {
      [(UIPhysicalKeyboardEvent *)self set_commandModifiedInput:v48];
      v54 = v46;
    }

    v47 = &OBJC_METACLASS___UIKeyboardDicationBackground;
  }

  else
  {
    [(UIPhysicalKeyboardEvent *)self set_commandModifiedInput:0];
    v54 = v46;
  }

  v55 = v44 & 0x10;
  if (v13 != 7 || v80)
  {
    v56 = v80;
    v57 = v56;
    if (v13 != 7)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v56 = _UISpecialKeyEquivalentFromHIDUsage(v41 + v54);
  }

  v57 = _UISpecialKeyEquivalentFromHIDUsage(v41);

LABEL_77:
  v58 = [objc_alloc(&v47[40]) initWithKeyCode:v41 action:v86 == 0 modifiers:v54];
  keyTranslationMap = self->_keyTranslationMap;
  self->_keyTranslationMap = v58;

  [(UIPhysicalKeyboardEvent *)self _setModifierFlags:v54];
  [(UIPhysicalKeyboardEvent *)self set_privateModifierFlags:v46];
  [(UIPhysicalKeyboardEvent *)self set_inputFlags:v55 | v81];
  if (!v56)
  {
    v61 = 0x1E696A000uLL;
    v62 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v72[98] length:*&v72[96]];
    [(UIPhysicalKeyboardEvent *)self set_modifiedInput:v62];

    v60 = v82;
    if (v57)
    {
      goto LABEL_79;
    }

LABEL_81:
    v63 = [*(v61 + 3776) stringWithCharacters:v76 length:{HIWORD(v75), *v72}];
    [(UIPhysicalKeyboardEvent *)self set_unmodifiedInput:v63];

    goto LABEL_82;
  }

  [(UIPhysicalKeyboardEvent *)self set_modifiedInput:v56];
  v60 = v82;
  v61 = 0x1E696A000;
  if (!v57)
  {
    goto LABEL_81;
  }

LABEL_79:
  [(UIPhysicalKeyboardEvent *)self set_unmodifiedInput:v57, *v72];
LABEL_82:
  v64 = [*(v61 + 3776) stringWithCharacters:v83 length:*v60];
  [(UIPhysicalKeyboardEvent *)self set_markedInput:v64];

  if (HIWORD(v87))
  {
    v65 = [*(v61 + 3776) stringWithCharacters:v90 length:?];
    [(UIPhysicalKeyboardEvent *)self set_shiftModifiedInput:v65];

    v66 = self->_keyTranslationMap;
    _shiftModifiedInput = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
    [(_UIPhysicalKeyTranslationMap *)v66 setKeyTranslation:_shiftModifiedInput modifiers:0x20000];
  }

  else
  {
    [(UIPhysicalKeyboardEvent *)self set_shiftModifiedInput:0];
  }

  v68 = v85;
  [(_UIPhysicalKeyTranslationMap *)self->_keyTranslationMap populateAllCombinationsOfModifiers:1966080 translator:v85];
  self->_needToPrepareKeyTranslationMap = 0;
  if (v56)
  {
    v69 = [*(v61 + 3776) stringWithCharacters:&v72[98] length:*&v72[96]];
    [(UIPhysicalKeyboardEvent *)self set_privateInput:v69];

    v70 = 1;
  }

  else
  {
    [(UIPhysicalKeyboardEvent *)self set_privateInput:self->_modifiedInput];
    _modifierFlags = [(UIPhysicalKeyboardEvent *)self _modifierFlags];
    v70 = _modifierFlags != [(UIPhysicalKeyboardEvent *)self _privateModifierFlags];
  }

  self->_canPrivatize = v70;
}

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf
{
  leafCopy = leaf;
  _keyboardShortcut = [leafCopy _keyboardShortcut];

  if (_keyboardShortcut)
  {
    if (self->_keyTranslationMap)
    {
      [(UIPhysicalKeyboardEvent *)self _prepareKeyTranslationMapIfNeeded];
      v6 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:leafCopy translationMap:self->_keyTranslationMap];
      if (v6 == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      _keyboardShortcut2 = [leafCopy _keyboardShortcut];
      currentLocalizedKeyCombination = [_keyboardShortcut2 currentLocalizedKeyCombination];
      if ([currentLocalizedKeyCombination modifierFlags] == self->_modifierFlags)
      {
        _keyboardShortcut3 = [leafCopy _keyboardShortcut];
        currentLocalizedKeyCombination2 = [_keyboardShortcut3 currentLocalizedKeyCombination];
        keyEquivalent = [currentLocalizedKeyCombination2 keyEquivalent];
        v13 = [keyEquivalent isEqualToString:self->_modifiedInput];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v6 = 0;
    }

    if (self->_originalEscapeKeyTranslationMap)
    {
      v14 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:leafCopy translationMap:?];
      if (v14 == 3)
      {
LABEL_13:
        v7 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
    }

    if (v6 <= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map
{
  leafCopy = leaf;
  mapCopy = map;
  v8 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:leafCopy translationMap:mapCopy additionalModifiers:0];
  v9 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@"+");
  _keyboardShortcut = [leafCopy _keyboardShortcut];
  currentLocalizedKeyCombination = [_keyboardShortcut currentLocalizedKeyCombination];
  keyEquivalent = [currentLocalizedKeyCombination keyEquivalent];
  v13 = [v9 isEqualToString:keyEquivalent];

  if (!v8 && v13)
  {
    if ([mapCopy originalModifiers] == 0x100000)
    {
      v8 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:leafCopy translationMap:mapCopy additionalModifiers:0x20000];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map additionalModifiers:(int64_t)modifiers
{
  leafCopy = leaf;
  mapCopy = map;
  _keyboardShortcut = [leafCopy _keyboardShortcut];
  currentLocalizedKeyCombination = [_keyboardShortcut currentLocalizedKeyCombination];
  modifierFlags = [currentLocalizedKeyCombination modifierFlags];

  if ((modifierFlags & 0x800000) == 0 || [leafCopy _allowsGlobeKeyModifier])
  {
    v39 = mapCopy;
    v13 = [mapCopy originalModifiers] | modifiers;
    _keyboardShortcut2 = [leafCopy _keyboardShortcut];
    currentLocalizedKeyCombination2 = [_keyboardShortcut2 currentLocalizedKeyCombination];
    modifierFlags2 = [currentLocalizedKeyCombination2 modifierFlags];

    _keyboardShortcut3 = [leafCopy _keyboardShortcut];
    currentLocalizedKeyCombination3 = [_keyboardShortcut3 currentLocalizedKeyCombination];
    keyEquivalent = [currentLocalizedKeyCombination3 keyEquivalent];

    _keyboardShortcut4 = [leafCopy _keyboardShortcut];
    currentLocalizedKeyCombination4 = [_keyboardShortcut4 currentLocalizedKeyCombination];
    keyCodes = [currentLocalizedKeyCombination4 keyCodes];

    if ((modifierFlags2 & ~v13) != 0)
    {
      goto LABEL_19;
    }

    v23 = dyld_program_sdk_at_least();
    v24 = modifierFlags2 | 0xFFFFFFFFFFDEFFFFLL;
    if (!v23)
    {
      v24 = -1;
    }

    v25 = v24 & v13;
    if (v23)
    {
      v26 = 2162688;
    }

    else
    {
      v26 = 0;
    }

    if (v25 == modifierFlags2 && ([keyCodes containsIndex:{objc_msgSend(v39, "keyCode")}] & 1) != 0)
    {
      v27 = 3;
LABEL_30:

      mapCopy = v39;
      goto LABEL_31;
    }

    if (!keyEquivalent)
    {
LABEL_19:
      v27 = 0;
      goto LABEL_30;
    }

    v28 = -[_UIPhysicalKeyTranslator initWithGSKeyboard:]([_UIPhysicalKeyTranslator alloc], "initWithGSKeyboard:", [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:self createIfNeeded:1]);
    lowercaseString = [keyEquivalent lowercaseString];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = [(UIPhysicalKeyboardEvent *)self _matchFidelityFromKeyMapForKeyboardShortcutLeaf:leafCopy translationMap:v39 translator:v28 addingModifiers:modifiers ignoringModifiers:v26];
    v29 = v47[3] == 2;
    layoutName = [(_UIPhysicalKeyTranslator *)v28 layoutName];
    v31 = [_UIKeyCommandMatchingCache keyCommandMatchingCacheForLayout:layoutName];

    v32 = [(_UIKeyCommandMatchingCache *)v31 conflictStateForCommandKeyPlaneSwitchForInput:lowercaseString modifiers:917504];
    v33 = v32;
    v34 = v47;
    v35 = v47[3];
    if (!v35)
    {
      if (v32 == 1)
      {
LABEL_29:
        v27 = v47[3];

        _Block_object_dispose(&v46, 8);
        goto LABEL_30;
      }

      v45 = 0;
      if ((v13 & 0x100000) == 0)
      {
        if ([v39 areModifiers:v25 | 0x100000 minimalExcessOfMask:modifierFlags2 matching:lowercaseString translator:v28 matchedModifierSubset:0 betterMatchFound:&v45])
        {
          v34 = v47;
          if ((v45 & 1) == 0)
          {
            v47[3] = 1;
          }
        }

        else
        {
          v34 = v47;
        }
      }

      v35 = v34[3];
    }

    if ((v35 - 1) <= 1)
    {
      if (v33 == 1)
      {
        v34[3] = 0;
      }

      else if (!v33 && [lowercaseString length] == 1)
      {
        v36 = [lowercaseString characterAtIndex:0];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __100__UIPhysicalKeyboardEvent__matchFidelityForKeyboardShortcutLeaf_translationMap_additionalModifiers___block_invoke;
        v40[3] = &unk_1E710E608;
        v41 = v28;
        v44 = v36;
        v42 = v39;
        v43 = &v46;
        [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:917504 staticModifiers:v29 << 20 usingBlock:v40];
        [(_UIKeyCommandMatchingCache *)v31 setCommandKeyPlaneHasSwitchingConflict:lowercaseString input:917504 modifiers:?];
      }
    }

    goto LABEL_29;
  }

  v27 = 0;
LABEL_31:

  return v27;
}

uint64_t __100__UIPhysicalKeyboardEvent__matchFidelityForKeyboardShortcutLeaf_translationMap_additionalModifiers___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) HIDUsageCodeForCharacter:*(a1 + 56) modifiers:a2];
  if (result != -1)
  {
    v6 = result;
    result = [*(a1 + 40) keyCode];
    if (v6 != result)
    {
      *a3 = 1;
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  return result;
}

- (int64_t)_matchFidelityFromKeyMapForKeyboardShortcutLeaf:(id)leaf translationMap:(id)map translator:(id)translator addingModifiers:(int64_t)modifiers ignoringModifiers:(int64_t)ignoringModifiers
{
  leafCopy = leaf;
  mapCopy = map;
  translatorCopy = translator;
  _keyboardShortcut = [leafCopy _keyboardShortcut];
  currentLocalizedKeyCombination = [_keyboardShortcut currentLocalizedKeyCombination];
  modifierFlags = [currentLocalizedKeyCombination modifierFlags];

  v17 = ([mapCopy originalModifiers] | modifiers) & ~ignoringModifiers;
  _keyboardShortcut2 = [leafCopy _keyboardShortcut];
  currentLocalizedKeyCombination2 = [_keyboardShortcut2 currentLocalizedKeyCombination];
  keyEquivalent = [currentLocalizedKeyCombination2 keyEquivalent];
  lowercaseString = [keyEquivalent lowercaseString];

  v22 = [mapCopy keyTranslationWithModifiers:objc_msgSend(mapCopy translator:{"originalModifiers"), translatorCopy}];
  lowercaseString2 = [v22 lowercaseString];

  v24 = v17 & 0xBF0000;
  v25 = [lowercaseString isEqualToString:lowercaseString2] & (modifierFlags == (v17 & 0xBF0000));
  if (v25)
  {
    v26 = 3;
  }

  else
  {
    v26 = 0;
  }

  if ((v25 & 1) == 0 && v17)
  {
    v43 = v17;
    v44 = modifierFlags;
    _keyboardShortcut3 = [leafCopy _keyboardShortcut];
    v45 = translatorCopy;
    v28 = translatorCopy;
    baseKeyCombination = [_keyboardShortcut3 baseKeyCombination];
    modifierFlags2 = [baseKeyCombination modifierFlags];

    currentLocalizedKeyCombination3 = [_keyboardShortcut3 currentLocalizedKeyCombination];
    keyEquivalent2 = [currentLocalizedKeyCombination3 keyEquivalent];

    v46 = v28;
    layoutName = [v28 layoutName];
    v34 = [_UIKeyCommandMatchingCache keyCommandMatchingCacheForLayout:layoutName];

    v35 = [(_UIKeyCommandMatchingCache *)v34 directReachabilityStateForInput:keyEquivalent2 modifiers:modifierFlags2];
    if (v35 == 1)
    {

      v26 = 0;
      translatorCopy = v45;
    }

    else
    {
      if (v35 || ![keyEquivalent2 length])
      {

        v37 = v46;
        v39 = v44;
        translatorCopy = v45;
        v40 = v43;
      }

      else
      {
        lowercaseString3 = [keyEquivalent2 lowercaseString];
        v36 = [v46 HIDUsageCodeForCharacter:objc_msgSend(lowercaseString3 modifiers:{"characterAtIndex:", 0), modifierFlags2}];

        [(_UIKeyCommandMatchingCache *)v34 setDirectlyReachable:keyEquivalent2 input:modifierFlags2 modifiers:?];
        v37 = v46;

        v26 = 0;
        v38 = v36 == -1;
        v39 = v44;
        translatorCopy = v45;
        v40 = v43;
        if (!v38)
        {
          goto LABEL_20;
        }
      }

      v48 = 0;
      v47 = 0;
      if ([mapCopy areModifiers:v24 minimalExcessOfMask:v39 matching:lowercaseString translator:v37 matchedModifierSubset:&v47 betterMatchFound:&v48])
      {
        if ((v40 & 0x100000) == 0 || (v47 & 0x100000) != 0)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }
      }

      else
      {
        v26 = 0;
      }
    }
  }

LABEL_20:

  return v26;
}

- (BOOL)_shouldAttemptSecurePasteAuthentication
{
  v23 = *MEMORY[0x1E69E9840];
  if (![(UIPhysicalKeyboardEvent *)self _isKeyDown])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allVariants = [MEMORY[0x1E69DEC00] allVariants];
  v4 = [allVariants countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(allVariants);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        _modifierFlags = [(UIPhysicalKeyboardEvent *)self _modifierFlags];
        if (_modifierFlags == [v8 keyModifierFlags])
        {
          _commandModifiedInput = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
          keyInput = [v8 keyInput];
          v12 = _commandModifiedInput;
          v13 = keyInput;
          v14 = v13;
          if (v12 == v13)
          {

LABEL_19:
            v16 = 1;
            goto LABEL_20;
          }

          if (v12 && v13)
          {
            v15 = [v12 isEqual:v13];

            if (v15)
            {
              goto LABEL_19;
            }
          }

          else
          {
          }
        }
      }

      v5 = [allVariants countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_20:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _isKeyDown = [(UIPhysicalKeyboardEvent *)self _isKeyDown];
    if (_isKeyDown == [v5 _isKeyDown] && (v7 = -[UIPhysicalKeyboardEvent _modifierFlags](self, "_modifierFlags"), v7 == objc_msgSend(v5, "_modifierFlags")))
    {
      _modifiedInput = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
      _modifiedInput2 = [v5 _modifiedInput];
      v10 = [_modifiedInput isEqual:_modifiedInput2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_cloneEvent
{
  _init = [objc_alloc(objc_opt_class()) _init];
  if ([(UIEvent *)self _hidEvent])
  {
    [_init _setHIDEvent:-[UIEvent _hidEvent](self keyboard:{"_hidEvent"), 0}];
  }

  _modifiedInput = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
  v5 = [_modifiedInput copy];
  [_init set_modifiedInput:v5];

  _unmodifiedInput = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];
  v7 = [_unmodifiedInput copy];
  [_init set_unmodifiedInput:v7];

  _privateInput = [(UIPhysicalKeyboardEvent *)self _privateInput];
  v9 = [_privateInput copy];
  [_init set_privateInput:v9];

  *(_init + 248) = self->_privateModifierFlags;
  _shiftModifiedInput = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
  v11 = [_shiftModifiedInput copy];
  [_init set_shiftModifiedInput:v11];

  _commandModifiedInput = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
  v13 = [_commandModifiedInput copy];
  [_init set_commandModifiedInput:v13];

  _markedInput = [(UIPhysicalKeyboardEvent *)self _markedInput];
  v15 = [_markedInput copy];
  [_init set_markedInput:v15];

  _hint = [(UIPhysicalKeyboardEvent *)self _hint];
  v17 = [_hint copy];
  [_init set_hint:v17];

  [_init _setModifierFlags:{-[UIPhysicalKeyboardEvent _modifierFlags](self, "_modifierFlags")}];
  [_init set_inputFlags:{-[UIPhysicalKeyboardEvent _inputFlags](self, "_inputFlags")}];
  [_init setSource:{-[UIPhysicalKeyboardEvent source](self, "source")}];
  [_init set_externalEvent:{-[UIPhysicalKeyboardEvent _isExternalEvent](self, "_isExternalEvent")}];
  [(UIEvent *)self timestamp];
  [_init _setTimestamp:?];
  *(_init + 152) = self->_canPrivatize;
  v18 = [(_UIPhysicalKeyTranslationMap *)self->_keyTranslationMap copy];
  v19 = *(_init + 168);
  *(_init + 168) = v18;

  *(_init + 176) = self->_needToPrepareKeyTranslationMap;
  v20 = [(_UIPhysicalKeyTranslationMap *)self->_originalEscapeKeyTranslationMap copy];
  v21 = *(_init + 160);
  *(_init + 160) = v20;

  *(_init + 179) = [(UIPhysicalKeyboardEvent *)self keyEventForwardedFromInputUIHost];
  *(_init + 176) = self->_needToPrepareKeyTranslationMap;
  return _init;
}

+ (id)_eventWithInput:(id)input inputFlags:(int)flags
{
  v4 = *&flags;
  inputCopy = input;
  _init = [(UIPressesEvent *)[UIPhysicalKeyboardEvent alloc] _init];
  [_init set_modifiedInput:inputCopy];
  [_init set_unmodifiedInput:inputCopy];

  [_init set_inputFlags:v4];
  [_init _setTimestamp:GSCurrentEventTimestamp() / 1000000000.0];

  return _init;
}

- (void)_privatize
{
  if (self->_canPrivatize)
  {
    self->_canPrivatize = 0;
    privateInput = self->_privateInput;
    if (privateInput && privateInput != self->_modifiedInput)
    {
      objc_storeStrong(&self->_modifiedInput, privateInput);
      objc_storeStrong(&self->_unmodifiedInput, self->_privateInput);
    }

    privateModifierFlags = self->_privateModifierFlags;
    if (privateModifierFlags != self->_modifierFlags)
    {
      self->_modifierFlags = privateModifierFlags;
    }
  }
}

@end