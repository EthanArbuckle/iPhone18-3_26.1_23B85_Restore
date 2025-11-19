@interface TypistKeyboardDataInputUIClient
+ (BOOL)_attemptRemoteKeyboardConnection:(double)a3 targetApplication:(id)a4;
+ (BOOL)connectToRemoteKeyboard:(double)a3 targetApplication:(id)a4;
+ (BOOL)dismissKeyboard;
+ (BOOL)hasMarkedText;
+ (BOOL)isExtendedCandidateViewMode;
+ (BOOL)switchToKeyboard:(id)a3;
+ (BOOL)switchToPlane:(id)a3;
+ (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4;
+ (CGPoint)getCandidateCenter:(id)a3;
+ (CGPoint)getCandidateCenterAtIndex:(int64_t)a3;
+ (CGPoint)getExtendedCandidateViewToggleButtonCenter;
+ (CGRect)findKeyBoundsInKeyboard:(id)a3;
+ (CGRect)getCandidateBarRect;
+ (__n128)getKeyboardScaleTransform;
+ (double)getKeyboardPPM;
+ (id)addKeyboardPopupKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6 keyplaneKeycaps:(id)a7;
+ (id)addKeyboards:(id)a3;
+ (id)dismissOneTimeTIActions:(id)a3;
+ (id)getAllCandidates;
+ (id)getKeyboardLayout:(id)a3;
+ (id)getKeyboardUISettings;
+ (id)getKeyplaneDescription:(id)a3;
+ (id)getSentenceBoundaryStrings;
+ (id)getTIPreferences;
+ (id)getVisibleCandidateList:(id)a3;
+ (id)getVisibleKeyplaneName;
+ (id)markedText;
+ (id)removeKeyboards:(id)a3;
+ (id)setKeyboardUISettings:(id)a3;
+ (id)setKeyboards:(id)a3;
+ (id)setTIPreferences:(id)a3;
+ (void)disconnectFromRemoteKeyboard;
+ (void)showCandidateAtIndex:(int64_t)a3;
+ (void)tryConnection;
@end

@implementation TypistKeyboardDataInputUIClient

+ (BOOL)connectToRemoteKeyboard:(double)a3 targetApplication:(id)a4
{
  v6 = a4;
  if (_inputTeletypeIsLinked_onceToken != -1)
  {
    +[TypistKeyboardDataInputUIClient connectToRemoteKeyboard:targetApplication:];
  }

  v7 = _inputTeletypeIsLinked_linked | _activeConnectionPtr_activeConnectionPtr;
  if (_inputTeletypeIsLinked_linked == 1 && (_activeConnectionPtr_activeConnectionPtr & 1) == 0)
  {
    v7 = [a1 _attemptRemoteKeyboardConnection:v6 targetApplication:a3];
    _activeConnectionPtr_activeConnectionPtr = v7;
  }

  return v7 & 1;
}

+ (BOOL)_attemptRemoteKeyboardConnection:(double)a3 targetApplication:(id)a4
{
  v5 = a4;
  if (+[TypistKeyboardData isKeyboardUIOutOfProcess])
  {
    v12 = [getITTKeyboardProxyClass() connectToRemoteKeyboard:a3];
  }

  else
  {
    if (!v5)
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"No target application bundle id is provided for IP keyboard.", v6, v7, v8, v9, v10, v11, v15);
      v13 = 0;
      goto LABEL_6;
    }

    v12 = [getITTKeyboardProxyClass() connectToRemoteKeyboard:v5 targetApplication:a3];
  }

  v13 = v12;
LABEL_6:

  return v13;
}

+ (void)tryConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__TypistKeyboardDataInputUIClient_tryConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (tryConnection_onceToken != -1)
  {
    dispatch_once(&tryConnection_onceToken, block);
  }
}

void __48__TypistKeyboardDataInputUIClient_tryConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  +[TypistKeyboardData getConnectionTimeoutInSec];
  v3 = v2;
  v4 = +[TypistKeyboardData getTargetApplicationBundleID];
  [v1 connectToRemoteKeyboard:v4 targetApplication:v3];
}

+ (void)disconnectFromRemoteKeyboard
{
  if (_inputTeletypeIsLinked_onceToken != -1)
  {
    +[TypistKeyboardDataInputUIClient connectToRemoteKeyboard:targetApplication:];
  }

  if (_inputTeletypeIsLinked_linked == 1 && _activeConnectionPtr_activeConnectionPtr == 1)
  {
    [getITTKeyboardProxyClass() disconnectFromRemoteKeyboard];
    _activeConnectionPtr_activeConnectionPtr = 0;
  }
}

+ (id)getKeyboardLayout:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = objc_opt_class();
    v27 = NSStringFromClass(v6);
    v26 = [@"ITT" stringByAppendingString:?];
    if (objc_opt_respondsToSelector())
    {
      v25 = [v4 performSelector:sel_flickTable];
    }

    else
    {
      v25 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v4 performSelector:sel__flickGestureDirection];
    }

    else
    {
      v24 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:sel_whiteSpaceRegex];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v4 performSelector:sel_multiTapOrbit];
    }

    else
    {
      v8 = 0;
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v9 = getITTKeyboardConfigurationClass_softClass;
    v32 = getITTKeyboardConfigurationClass_softClass;
    if (!getITTKeyboardConfigurationClass_softClass)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __getITTKeyboardConfigurationClass_block_invoke;
      v28[3] = &unk_279DF4710;
      v28[4] = &v29;
      __getITTKeyboardConfigurationClass_block_invoke(v28);
      v9 = v30[3];
    }

    v10 = v9;
    _Block_object_dispose(&v29, 8);
    v11 = [v9 alloc];
    v12 = [v4 isTenKey];
    v13 = [v4 isKanaKeyboard];
    v14 = [v4 flickTyping];
    v15 = [v4 shouldShowDictationKey];
    v16 = [v4 shouldShowGlobeKey];
    LOBYTE(v23) = [v4 usePopupKeys];
    v17 = [v11 initWithClassKey:v26 isTenKey:v12 isKana:v13 flickTyping:v14 showDictationKey:v15 showGlobeKey:v16 usePopupKeys:v23 flickTable:v25 flickGestureDirection:v24 whiteSpaceRegex:v7 multiTapOrbit:v8];
    v18 = [getITTKeyboardProxyClass() getKeyboardLayoutWithConfiguration:v17];
    v19 = [v18 asPropertyList];
    v20 = v19;
    v21 = MEMORY[0x277CBEC10];
    if (v19)
    {
      v21 = v19;
    }

    v5 = v21;
  }

  return v5;
}

+ (id)getTIPreferences
{
  [a1 tryConnection];
  v2 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() getTIPreferences];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v2 = v5;
  }

  return v2;
}

+ (id)getKeyboardUISettings
{
  [a1 tryConnection];
  v2 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() getKeyboardUISettings];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v2 = v5;
  }

  return v2;
}

+ (id)getSentenceBoundaryStrings
{
  [a1 tryConnection];
  v2 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() getSentenceBoundaryStrings];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v2 = v5;
  }

  return v2;
}

+ (id)setTIPreferences:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__TypistKeyboardDataInputUIClient_setTIPreferences___block_invoke;
    v12[3] = &unk_279DF4C40;
    v13 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [getITTKeyboardProxyClass() setTIPreferences:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v5 = v10;
  }

  return v5;
}

void __52__TypistKeyboardDataInputUIClient_setTIPreferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    [*(a1 + 32) setObject:v5 forKey:v17];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v16 = NSStringFromClass(v8);
    TYLog(@"WARNING: Unsupported key or value class in -setTIPreferences: key=%@, class(key)=%@, class(obj)=%@", v9, v10, v11, v12, v13, v14, v15, v17);
  }
}

+ (id)setKeyboardUISettings:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__TypistKeyboardDataInputUIClient_setKeyboardUISettings___block_invoke;
    v12[3] = &unk_279DF4C40;
    v13 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [getITTKeyboardProxyClass() setKeyboardUISettings:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v5 = v10;
  }

  return v5;
}

void __57__TypistKeyboardDataInputUIClient_setKeyboardUISettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    [*(a1 + 32) setObject:v5 forKey:v17];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v16 = NSStringFromClass(v8);
    TYLog(@"WARNING: Unsupported key or value class in -setKeyboardUISettings: key=%@, class(key)=%@, class(obj)=%@", v9, v10, v11, v12, v13, v14, v15, v17);
  }
}

+ (id)setKeyboards:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEBF8];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [getITTKeyboardProxyClass() setKeyboards:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v5 = v8;
  }

  return v5;
}

+ (id)addKeyboards:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEBF8];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [getITTKeyboardProxyClass() addKeyboards:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v5 = v8;
  }

  return v5;
}

+ (id)removeKeyboards:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEBF8];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [getITTKeyboardProxyClass() removeKeyboards:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v5 = v8;
  }

  return v5;
}

+ (id)dismissOneTimeTIActions:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  v5 = MEMORY[0x277CBEC10];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v6 = [getITTKeyboardProxyClass() dismissOneTimeTIActions:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v5 = v8;
  }

  return v5;
}

+ (BOOL)switchToKeyboard:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v5 = [getITTKeyboardProxyClass() switchToKeyboard:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)dismissKeyboard
{
  [a1 tryConnection];
  if (_activeConnectionPtr_activeConnectionPtr != 1)
  {
    return 0;
  }

  ITTKeyboardProxyClass = getITTKeyboardProxyClass();

  return [ITTKeyboardProxyClass dismissKeyboard];
}

+ (BOOL)switchToPlane:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v5 = [getITTKeyboardProxyClass() switchToPlane:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getVisibleKeyplaneName
{
  [a1 tryConnection];
  v2 = &stru_288014100;
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() getVisibleKeyplaneName];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = &stru_288014100;
    }

    v2 = v5;
  }

  return v2;
}

+ (id)getKeyplaneDescription:(id)a3
{
  v4 = a3;
  [a1 tryConnection];
  if (_activeConnectionPtr_activeConnectionPtr == 1 && ([getITTKeyboardProxyClass() getDescriptionOfKeyplane:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = objc_alloc_init(TypistKeyplane);
    v8 = [v6 name];
    [(TypistKeyplane *)v7 setName:v8];

    -[TypistKeyplane setIsLetters:](v7, "setIsLetters:", [v6 isLetters]);
    -[TypistKeyplane setIsAlphabeticPlane:](v7, "setIsAlphabeticPlane:", [v6 isAlphabeticPlane]);
    -[TypistKeyplane setIsShiftKeyplane:](v7, "setIsShiftKeyplane:", [v6 isShiftKeyplane]);
    -[TypistKeyplane setUsesAutoShift:](v7, "setUsesAutoShift:", [v6 usesAutoShift]);
    -[TypistKeyplane setIgnoresShiftState:](v7, "setIgnoresShiftState:", [v6 ignoresShiftState]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getAllCandidates
{
  v2 = MEMORY[0x277CBEBF8];
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() getAllCandidates];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v2 = v5;
  }

  return v2;
}

+ (id)getVisibleCandidateList:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    if ([v3 isEqualToString:@"typistCandidateBarTypeMecabra"])
    {
      v5 = 1;
LABEL_5:
      v6 = [getITTKeyboardProxyClass() getVisibleCandidates:v5];
      goto LABEL_7;
    }

    v5 = 0;
    if ([v4 isEqualToString:@"typistCandidateBarTypeFavonious"])
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_7:
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

+ (CGPoint)getCandidateCenter:(id)a3
{
  v3 = a3;
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    getITTKeyboardProxyClass();
    if (objc_opt_respondsToSelector())
    {
      getITTKeyboardProxyClass();
      [objc_opt_class() getCandidateRectWithString_];
    }

    else
    {
      v6 = *MEMORY[0x277CBF3A0];
      v7 = *(MEMORY[0x277CBF3A0] + 8);
      v8 = *(MEMORY[0x277CBF3A0] + 16);
      v9 = *(MEMORY[0x277CBF3A0] + 24);
    }

    UIRectGetCenter();
    v4 = v10;
    v5 = v11;
  }

  else
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  v12 = v4;
  v13 = v5;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGRect)getCandidateBarRect
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    [getITTKeyboardProxyClass() getCandidateBarRect];
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (__n128)getKeyboardScaleTransform
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    [getITTKeyboardProxyClass() getKeyboardScaleTransform];
  }

  else
  {
    result = *MEMORY[0x277D860B8];
    v3 = *(MEMORY[0x277D860B8] + 16);
    v4 = *(MEMORY[0x277D860B8] + 32);
    v5 = *(MEMORY[0x277D860B8] + 48);
  }

  return result;
}

+ (double)getKeyboardPPM
{
  if (_activeConnectionPtr_activeConnectionPtr != 1)
  {
    return 0.0;
  }

  ITTKeyboardProxyClass = getITTKeyboardProxyClass();

  [ITTKeyboardProxyClass getKeyboardPPM];
  return result;
}

+ (BOOL)isExtendedCandidateViewMode
{
  if (_activeConnectionPtr_activeConnectionPtr != 1)
  {
    return 0;
  }

  ITTKeyboardProxyClass = getITTKeyboardProxyClass();

  return [ITTKeyboardProxyClass isExtendedCandidateViewMode];
}

+ (CGPoint)getExtendedCandidateViewToggleButtonCenter
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    [getITTKeyboardProxyClass() getExtendedCandidateViewToggleButtonCenter];
  }

  else
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

+ (BOOL)hasMarkedText
{
  if (_activeConnectionPtr_activeConnectionPtr != 1)
  {
    return 0;
  }

  ITTKeyboardProxyClass = getITTKeyboardProxyClass();

  return [ITTKeyboardProxyClass hasMarkedText];
}

+ (id)markedText
{
  v2 = &stru_288014100;
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = [getITTKeyboardProxyClass() markedText];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = &stru_288014100;
    }

    v2 = v5;
  }

  return v2;
}

+ (void)showCandidateAtIndex:(int64_t)a3
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    ITTKeyboardProxyClass = getITTKeyboardProxyClass();

    [ITTKeyboardProxyClass showCandidateAtIndex:a3];
  }
}

+ (CGRect)findKeyBoundsInKeyboard:(id)a3
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    v3 = a3;
    [getITTKeyboardProxyClass() findKeyBoundsInKeyboard:v3];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (id)addKeyboardPopupKeys:(id)a3 keys:(id)a4 inPlane:(id)a5 addTo:(id)a6 keyplaneKeycaps:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  __assert_rtn("+[TypistKeyboardDataInputUIClient addKeyboardPopupKeys:keys:inPlane:addTo:keyplaneKeycaps:]", "TypistKeyboardDataInputUIClient.m", 459, "false && Do no expect calls to [TypistKeyboardDataInputUIClient addKeyboardPopupKeys:keys:inPlane:addTo:keyplaneCaps:]");
}

+ (CGPoint)centerOfKey:(CGPoint)a3 withOffset:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)getCandidateCenterAtIndex:(int64_t)a3
{
  if (_activeConnectionPtr_activeConnectionPtr == 1)
  {
    [getITTKeyboardProxyClass() getCandidateCenterWithIndex:a3];
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

@end