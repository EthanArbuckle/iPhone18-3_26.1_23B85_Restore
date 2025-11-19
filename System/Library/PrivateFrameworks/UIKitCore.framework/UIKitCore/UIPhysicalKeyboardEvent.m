@interface UIPhysicalKeyboardEvent
+ (id)_eventWithInput:(id)a3 inputFlags:(int)a4;
- (BOOL)_isARepeat;
- (BOOL)_isDeleteKey;
- (BOOL)_isEjectKey;
- (BOOL)_isGlobeKey;
- (BOOL)_isKeyDown;
- (BOOL)_isModifierKey;
- (BOOL)_shouldAttemptSecurePasteAuthentication;
- (BOOL)isEqual:(id)a3;
- (UIPhysicalKeyboardEvent)initWithCoder:(id)a3;
- (id)_cloneEvent;
- (int64_t)_keyCode;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4;
- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4 additionalModifiers:(int64_t)a5;
- (int64_t)_matchFidelityFromKeyMapForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4 translator:(id)a5 addingModifiers:(int64_t)a6 ignoringModifiers:(int64_t)a7;
- (void)_prepareKeyTranslationMapIfNeeded;
- (void)_privatize;
- (void)_setHIDEvent:(__IOHIDEvent *)a3 keyboard:(__GSKeyboard *)a4;
- (void)_setModifierFlags:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIPhysicalKeyboardEvent

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(UIPhysicalKeyboardEvent *)self _modifiedInput];

  if (v4)
  {
    v5 = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
    [v19 encodeObject:v5 forKey:@"modifiedInput"];
  }

  v6 = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];

  if (v6)
  {
    v7 = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];
    [v19 encodeObject:v7 forKey:@"unmodifiedInput"];
  }

  v8 = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];

  if (v8)
  {
    v9 = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
    [v19 encodeObject:v9 forKey:@"shiftModifiedInput"];
  }

  v10 = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];

  if (v10)
  {
    v11 = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
    [v19 encodeObject:v11 forKey:@"commandModifiedInput"];
  }

  v12 = [(UIPhysicalKeyboardEvent *)self _markedInput];

  if (v12)
  {
    v13 = [(UIPhysicalKeyboardEvent *)self _markedInput];
    [v19 encodeObject:v13 forKey:@"markedInput"];
  }

  v14 = [(UIPhysicalKeyboardEvent *)self _privateInput];

  if (v14)
  {
    v15 = [(UIPhysicalKeyboardEvent *)self _privateInput];
    [v19 encodeObject:v15 forKey:@"privateInput"];
  }

  v16 = [(UIPhysicalKeyboardEvent *)self _hint];

  if (v16)
  {
    v17 = [(UIPhysicalKeyboardEvent *)self _hint];
    [v19 encodeObject:v17 forKey:@"hint"];
  }

  [v19 encodeInteger:-[UIPhysicalKeyboardEvent _modifierFlags](self forKey:{"_modifierFlags"), @"modifiedFlags"}];
  [v19 encodeInteger:-[UIPhysicalKeyboardEvent _privateModifierFlags](self forKey:{"_privateModifierFlags"), @"privateModifierFlags"}];
  [v19 encodeInt32:-[UIPhysicalKeyboardEvent _keyCode](self forKey:{"_keyCode"), @"keyCode"}];
  [v19 encodeInt:-[UIPhysicalKeyboardEvent _inputFlags](self forKey:{"_inputFlags"), @"inputFlags"}];
  [v19 encodeInteger:-[UIPhysicalKeyboardEvent source](self forKey:{"source"), @"source"}];
  [v19 encodeBool:-[UIPhysicalKeyboardEvent _isExternalEvent](self forKey:{"_isExternalEvent"), @"externalEvent"}];
  [(UIEvent *)self _hidEvent];
  Data = IOHIDEventCreateData();
  [v19 encodeObject:Data forKey:@"hidEvent"];
  [v19 encodeInt:-[UIPhysicalKeyboardEvent keyCommandCode](self forKey:{"keyCommandCode"), @"keyCommandCode"}];
  [v19 encodeBool:-[UIPhysicalKeyboardEvent keyCommandHandlingBeforePublic](self forKey:{"keyCommandHandlingBeforePublic"), @"keyCommandHandlingBeforePublic"}];
  [v19 encodeBool:-[UIPhysicalKeyboardEvent shiftDown](self forKey:{"shiftDown"), @"shiftDown"}];
  [v19 encodeBool:-[UIPhysicalKeyboardEvent keyEventForwardedFromInputUIHost](self forKey:{"keyEventForwardedFromInputUIHost"), @"keyEventForwardedFromInputUIHost"}];
  [v19 encodeObject:self->_keyTranslationMap forKey:@"keyTranslationMap"];
}

- (UIPhysicalKeyboardEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = UIPhysicalKeyboardEvent;
  v5 = [(UIPhysicalKeyboardEvent *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_modifiedInput:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unmodifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_unmodifiedInput:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shiftModifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_shiftModifiedInput:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandModifiedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_commandModifiedInput:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"markedInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_markedInput:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateInput"];
    [(UIPhysicalKeyboardEvent *)v5 set_privateInput:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
    [(UIPhysicalKeyboardEvent *)v5 set_hint:v12];

    -[UIPhysicalKeyboardEvent _setModifierFlags:](v5, "_setModifierFlags:", [v4 decodeIntegerForKey:@"modifiedFlags"]);
    -[UIPhysicalKeyboardEvent set_privateModifierFlags:](v5, "set_privateModifierFlags:", [v4 decodeIntegerForKey:@"privateModifierFlags"]);
    -[UIPhysicalKeyboardEvent set_keyCode:](v5, "set_keyCode:", [v4 decodeInt32ForKey:@"keyCode"]);
    -[UIPhysicalKeyboardEvent set_inputFlags:](v5, "set_inputFlags:", [v4 decodeIntForKey:@"inputFlags"]);
    -[UIPhysicalKeyboardEvent setSource:](v5, "setSource:", [v4 decodeIntegerForKey:@"source"]);
    -[UIPhysicalKeyboardEvent set_externalEvent:](v5, "set_externalEvent:", [v4 decodeBoolForKey:@"externalEvent"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hidEvent"];
    v14 = IOHIDEventCreateWithData();
    if (v14)
    {
      v15 = v14;
      v25.receiver = v5;
      v25.super_class = UIPhysicalKeyboardEvent;
      [(UIEvent *)&v25 _setHIDEvent:v14];
      CFRelease(v15);
    }

    -[UIPhysicalKeyboardEvent setKeyCommandCode:](v5, "setKeyCommandCode:", [v4 decodeIntForKey:@"keyCommandCode"]);
    -[UIPhysicalKeyboardEvent setKeyCommandHandlingBeforePublic:](v5, "setKeyCommandHandlingBeforePublic:", [v4 decodeBoolForKey:@"keyCommandHandlingBeforePublic"]);
    -[UIPhysicalKeyboardEvent setShiftDown:](v5, "setShiftDown:", [v4 decodeBoolForKey:@"shiftDown"]);
    -[UIPhysicalKeyboardEvent setKeyEventForwardedFromInputUIHost:](v5, "setKeyEventForwardedFromInputUIHost:", [v4 decodeBoolForKey:@"keyEventForwardedFromInputUIHost"]);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyTranslationMap"];
    keyTranslationMap = v5->_keyTranslationMap;
    v5->_keyTranslationMap = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalEscapeKeyTranslationMap"];
    originalEscapeKeyTranslationMap = v5->_originalEscapeKeyTranslationMap;
    v5->_originalEscapeKeyTranslationMap = v18;

    v20 = [(UIPhysicalKeyboardEvent *)v5 _shiftModifiedInput];

    if (v20)
    {
      v21 = v5->_keyTranslationMap;
      v22 = [(UIPhysicalKeyboardEvent *)v5 _shiftModifiedInput];
      [(_UIPhysicalKeyTranslationMap *)v21 setKeyTranslation:v22 modifiers:0x20000];
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
  v3 = [(UIEvent *)self _hidEvent];
  if (v3)
  {
    [(UIEvent *)self _hidEvent];
    IntegerValue = IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    v5 = IOHIDEventGetIntegerValue();
    v7 = v5 == 430 || v5 == 184;
    LOBYTE(v3) = IntegerValue == 12 && v7;
  }

  return v3;
}

- (BOOL)_isGlobeKey
{
  v3 = [(UIEvent *)self _hidEvent];
  if (v3)
  {
    [(UIEvent *)self _hidEvent];
    IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    IOHIDEventGetIntegerValue();
    LOBYTE(v3) = GSKeyboardIsGlobeKeyUsagePair() != 0;
  }

  return v3;
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

- (void)_setModifierFlags:(int64_t)a3
{
  keyTranslationMap = self->_keyTranslationMap;
  if (keyTranslationMap && [(_UIPhysicalKeyTranslationMap *)keyTranslationMap originalModifiers]!= a3)
  {
    v6 = [[_UIPhysicalKeyTranslationMap alloc] initWithKeyCode:[(UIPhysicalKeyboardEvent *)self _keyCode] action:[(UIPhysicalKeyboardEvent *)self _isKeyDown]^ 1 modifiers:a3];
    v7 = self->_keyTranslationMap;
    self->_keyTranslationMap = v6;

    self->_needToPrepareKeyTranslationMap = 0;
  }

  self->_modifierFlags = a3;
}

- (BOOL)_isModifierKey
{
  v3 = [(UIEvent *)self _hidEvent];
  if (v3)
  {
    v4 = [(UIPhysicalKeyboardEvent *)self _keyCode];

    LOBYTE(v3) = isModifierFlag(v4);
  }

  return v3;
}

- (BOOL)_isARepeat
{
  v3 = [(UIPhysicalKeyboardEvent *)self _isKeyDown];
  if (v3)
  {
    LOBYTE(v3) = [(UIPhysicalKeyboardEvent *)self _inputFlags]& 1;
  }

  return v3;
}

- (BOOL)_isDeleteKey
{
  v3 = [(UIEvent *)self _hidEvent];
  if (v3)
  {
    [(UIEvent *)self _hidEvent];
    IntegerValue = IOHIDEventGetIntegerValue();
    [(UIEvent *)self _hidEvent];
    v5 = IOHIDEventGetIntegerValue();
    LOBYTE(v3) = IntegerValue == 7 && v5 == 42;
  }

  return v3;
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3 keyboard:(__GSKeyboard *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = UIPhysicalKeyboardEvent;
  [(UIEvent *)&v88 _setHIDEvent:?];
  TimeStamp = IOHIDEventGetTimeStamp();
  [(UIEvent *)self _setTimestamp:_UIMediaTimeForMachTime(TimeStamp)];
  if (!a4)
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
    v20 = [v19 isCapsLockSwitchEnabled];

    if ((v20 & 1) == 0)
    {
      v21 = BKSHIDEventGetKeyboardAttributes();
      v22 = [v21 GSModifierState];

      if (((v22 ^ ModifierState) & 0x40000) != 0)
      {
        v23 = +[UIKeyboardImpl activeInstance];
        [v23 _setCapsLockIfNeeded:a4 event:a3];

        ModifierState = GSKeyboardGetModifierState();
      }

      v24 = +[UIKeyboardImpl activeInstance];
      v25 = ((ModifierState & 0x40000) == 0) ^ [v24 isCapsLockSignOn];

      if ((v25 & 1) == 0)
      {
        v26 = +[UIKeyboardImpl activeInstance];
        [v26 _setCapsLockIfNeeded:a4 event:a3];
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
  v85 = [[_UIPhysicalKeyTranslator alloc] initWithGSKeyboard:a4];
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
    v67 = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
    [(_UIPhysicalKeyTranslationMap *)v66 setKeyTranslation:v67 modifiers:0x20000];
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
    v71 = [(UIPhysicalKeyboardEvent *)self _modifierFlags];
    v70 = v71 != [(UIPhysicalKeyboardEvent *)self _privateModifierFlags];
  }

  self->_canPrivatize = v70;
}

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3
{
  v4 = a3;
  v5 = [v4 _keyboardShortcut];

  if (v5)
  {
    if (self->_keyTranslationMap)
    {
      [(UIPhysicalKeyboardEvent *)self _prepareKeyTranslationMapIfNeeded];
      v6 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:v4 translationMap:self->_keyTranslationMap];
      if (v6 == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = [v4 _keyboardShortcut];
      v9 = [v8 currentLocalizedKeyCombination];
      if ([v9 modifierFlags] == self->_modifierFlags)
      {
        v10 = [v4 _keyboardShortcut];
        v11 = [v10 currentLocalizedKeyCombination];
        v12 = [v11 keyEquivalent];
        v13 = [v12 isEqualToString:self->_modifiedInput];

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
      v14 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:v4 translationMap:?];
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

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:v6 translationMap:v7 additionalModifiers:0];
  v9 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@"+");
  v10 = [v6 _keyboardShortcut];
  v11 = [v10 currentLocalizedKeyCombination];
  v12 = [v11 keyEquivalent];
  v13 = [v9 isEqualToString:v12];

  if (!v8 && v13)
  {
    if ([v7 originalModifiers] == 0x100000)
    {
      v8 = [(UIPhysicalKeyboardEvent *)self _matchFidelityForKeyboardShortcutLeaf:v6 translationMap:v7 additionalModifiers:0x20000];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)_matchFidelityForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4 additionalModifiers:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 _keyboardShortcut];
  v11 = [v10 currentLocalizedKeyCombination];
  v12 = [v11 modifierFlags];

  if ((v12 & 0x800000) == 0 || [v8 _allowsGlobeKeyModifier])
  {
    v39 = v9;
    v13 = [v9 originalModifiers] | a5;
    v14 = [v8 _keyboardShortcut];
    v15 = [v14 currentLocalizedKeyCombination];
    v16 = [v15 modifierFlags];

    v17 = [v8 _keyboardShortcut];
    v18 = [v17 currentLocalizedKeyCombination];
    v19 = [v18 keyEquivalent];

    v20 = [v8 _keyboardShortcut];
    v21 = [v20 currentLocalizedKeyCombination];
    v22 = [v21 keyCodes];

    if ((v16 & ~v13) != 0)
    {
      goto LABEL_19;
    }

    v23 = dyld_program_sdk_at_least();
    v24 = v16 | 0xFFFFFFFFFFDEFFFFLL;
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

    if (v25 == v16 && ([v22 containsIndex:{objc_msgSend(v39, "keyCode")}] & 1) != 0)
    {
      v27 = 3;
LABEL_30:

      v9 = v39;
      goto LABEL_31;
    }

    if (!v19)
    {
LABEL_19:
      v27 = 0;
      goto LABEL_30;
    }

    v28 = -[_UIPhysicalKeyTranslator initWithGSKeyboard:]([_UIPhysicalKeyTranslator alloc], "initWithGSKeyboard:", [UIApp _hardwareKeyboardForPhysicalKeyboardEvent:self createIfNeeded:1]);
    v38 = [v19 lowercaseString];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = [(UIPhysicalKeyboardEvent *)self _matchFidelityFromKeyMapForKeyboardShortcutLeaf:v8 translationMap:v39 translator:v28 addingModifiers:a5 ignoringModifiers:v26];
    v29 = v47[3] == 2;
    v30 = [(_UIPhysicalKeyTranslator *)v28 layoutName];
    v31 = [_UIKeyCommandMatchingCache keyCommandMatchingCacheForLayout:v30];

    v32 = [(_UIKeyCommandMatchingCache *)v31 conflictStateForCommandKeyPlaneSwitchForInput:v38 modifiers:917504];
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
        if ([v39 areModifiers:v25 | 0x100000 minimalExcessOfMask:v16 matching:v38 translator:v28 matchedModifierSubset:0 betterMatchFound:&v45])
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

      else if (!v33 && [v38 length] == 1)
      {
        v36 = [v38 characterAtIndex:0];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __100__UIPhysicalKeyboardEvent__matchFidelityForKeyboardShortcutLeaf_translationMap_additionalModifiers___block_invoke;
        v40[3] = &unk_1E710E608;
        v41 = v28;
        v44 = v36;
        v42 = v39;
        v43 = &v46;
        [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:917504 staticModifiers:v29 << 20 usingBlock:v40];
        [(_UIKeyCommandMatchingCache *)v31 setCommandKeyPlaneHasSwitchingConflict:v38 input:917504 modifiers:?];
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

- (int64_t)_matchFidelityFromKeyMapForKeyboardShortcutLeaf:(id)a3 translationMap:(id)a4 translator:(id)a5 addingModifiers:(int64_t)a6 ignoringModifiers:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 _keyboardShortcut];
  v15 = [v14 currentLocalizedKeyCombination];
  v16 = [v15 modifierFlags];

  v17 = ([v12 originalModifiers] | a6) & ~a7;
  v18 = [v11 _keyboardShortcut];
  v19 = [v18 currentLocalizedKeyCombination];
  v20 = [v19 keyEquivalent];
  v21 = [v20 lowercaseString];

  v22 = [v12 keyTranslationWithModifiers:objc_msgSend(v12 translator:{"originalModifiers"), v13}];
  v23 = [v22 lowercaseString];

  v24 = v17 & 0xBF0000;
  v25 = [v21 isEqualToString:v23] & (v16 == (v17 & 0xBF0000));
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
    v44 = v16;
    v27 = [v11 _keyboardShortcut];
    v45 = v13;
    v28 = v13;
    v29 = [v27 baseKeyCombination];
    v30 = [v29 modifierFlags];

    v31 = [v27 currentLocalizedKeyCombination];
    v32 = [v31 keyEquivalent];

    v46 = v28;
    v33 = [v28 layoutName];
    v34 = [_UIKeyCommandMatchingCache keyCommandMatchingCacheForLayout:v33];

    v35 = [(_UIKeyCommandMatchingCache *)v34 directReachabilityStateForInput:v32 modifiers:v30];
    if (v35 == 1)
    {

      v26 = 0;
      v13 = v45;
    }

    else
    {
      if (v35 || ![v32 length])
      {

        v37 = v46;
        v39 = v44;
        v13 = v45;
        v40 = v43;
      }

      else
      {
        v42 = [v32 lowercaseString];
        v36 = [v46 HIDUsageCodeForCharacter:objc_msgSend(v42 modifiers:{"characterAtIndex:", 0), v30}];

        [(_UIKeyCommandMatchingCache *)v34 setDirectlyReachable:v32 input:v30 modifiers:?];
        v37 = v46;

        v26 = 0;
        v38 = v36 == -1;
        v39 = v44;
        v13 = v45;
        v40 = v43;
        if (!v38)
        {
          goto LABEL_20;
        }
      }

      v48 = 0;
      v47 = 0;
      if ([v12 areModifiers:v24 minimalExcessOfMask:v39 matching:v21 translator:v37 matchedModifierSubset:&v47 betterMatchFound:&v48])
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
  v3 = [MEMORY[0x1E69DEC00] allVariants];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [(UIPhysicalKeyboardEvent *)self _modifierFlags];
        if (v9 == [v8 keyModifierFlags])
        {
          v10 = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
          v11 = [v8 keyInput];
          v12 = v10;
          v13 = v11;
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

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIPhysicalKeyboardEvent *)self _isKeyDown];
    if (v6 == [v5 _isKeyDown] && (v7 = -[UIPhysicalKeyboardEvent _modifierFlags](self, "_modifierFlags"), v7 == objc_msgSend(v5, "_modifierFlags")))
    {
      v8 = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
      v9 = [v5 _modifiedInput];
      v10 = [v8 isEqual:v9];
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
  v3 = [objc_alloc(objc_opt_class()) _init];
  if ([(UIEvent *)self _hidEvent])
  {
    [v3 _setHIDEvent:-[UIEvent _hidEvent](self keyboard:{"_hidEvent"), 0}];
  }

  v4 = [(UIPhysicalKeyboardEvent *)self _modifiedInput];
  v5 = [v4 copy];
  [v3 set_modifiedInput:v5];

  v6 = [(UIPhysicalKeyboardEvent *)self _unmodifiedInput];
  v7 = [v6 copy];
  [v3 set_unmodifiedInput:v7];

  v8 = [(UIPhysicalKeyboardEvent *)self _privateInput];
  v9 = [v8 copy];
  [v3 set_privateInput:v9];

  *(v3 + 248) = self->_privateModifierFlags;
  v10 = [(UIPhysicalKeyboardEvent *)self _shiftModifiedInput];
  v11 = [v10 copy];
  [v3 set_shiftModifiedInput:v11];

  v12 = [(UIPhysicalKeyboardEvent *)self _commandModifiedInput];
  v13 = [v12 copy];
  [v3 set_commandModifiedInput:v13];

  v14 = [(UIPhysicalKeyboardEvent *)self _markedInput];
  v15 = [v14 copy];
  [v3 set_markedInput:v15];

  v16 = [(UIPhysicalKeyboardEvent *)self _hint];
  v17 = [v16 copy];
  [v3 set_hint:v17];

  [v3 _setModifierFlags:{-[UIPhysicalKeyboardEvent _modifierFlags](self, "_modifierFlags")}];
  [v3 set_inputFlags:{-[UIPhysicalKeyboardEvent _inputFlags](self, "_inputFlags")}];
  [v3 setSource:{-[UIPhysicalKeyboardEvent source](self, "source")}];
  [v3 set_externalEvent:{-[UIPhysicalKeyboardEvent _isExternalEvent](self, "_isExternalEvent")}];
  [(UIEvent *)self timestamp];
  [v3 _setTimestamp:?];
  *(v3 + 152) = self->_canPrivatize;
  v18 = [(_UIPhysicalKeyTranslationMap *)self->_keyTranslationMap copy];
  v19 = *(v3 + 168);
  *(v3 + 168) = v18;

  *(v3 + 176) = self->_needToPrepareKeyTranslationMap;
  v20 = [(_UIPhysicalKeyTranslationMap *)self->_originalEscapeKeyTranslationMap copy];
  v21 = *(v3 + 160);
  *(v3 + 160) = v20;

  *(v3 + 179) = [(UIPhysicalKeyboardEvent *)self keyEventForwardedFromInputUIHost];
  *(v3 + 176) = self->_needToPrepareKeyTranslationMap;
  return v3;
}

+ (id)_eventWithInput:(id)a3 inputFlags:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [(UIPressesEvent *)[UIPhysicalKeyboardEvent alloc] _init];
  [v6 set_modifiedInput:v5];
  [v6 set_unmodifiedInput:v5];

  [v6 set_inputFlags:v4];
  [v6 _setTimestamp:GSCurrentEventTimestamp() / 1000000000.0];

  return v6;
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