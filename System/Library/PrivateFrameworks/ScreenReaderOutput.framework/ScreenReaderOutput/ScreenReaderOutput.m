uint64_t sub_26490D848()
{
  MEMORY[0x2667468D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26490D880()
{

  return MEMORY[0x2821FE8E8](v0, 29, 7);
}

uint64_t sub_26490D8B8()
{

  return MEMORY[0x2821FE8E8](v0, 45, 7);
}

uint64_t sub_26490D8F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26490D928()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26490D970()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26490D9B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26490D9FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26490DA34()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26490DA74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26490DAAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26490DAF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26490DB30()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26490DB7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26490DBB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26490DBF4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26490DC40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void _inputEventHandler(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _inputEventHandler];
  objc_autoreleasePoolPop(v3);
}

void sub_26491BFBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x26491BEE4);
    }

    v2 = objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26491C048(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x26491C01CLL);
  }

  JUMPOUT(0x26491C05CLL);
}

void sub_26491C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _blinkerEventHandler(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _blinkerEventHandler];
  objc_autoreleasePoolPop(v3);
}

void sub_264924974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___appendBrailleKeysToArray_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _isMemorizingKeys] & 1) == 0)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v2 = [*(*(a1 + 32) + 184) currentBrailleChord];
    v3 = [v2 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v3)
    {
LABEL_16:

      goto LABEL_17;
    }

    v4 = v3;
    v5 = 0;
    v6 = *v39;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= _DotValue[([*(*(&v38 + 1) + 8 * i) unsignedLongValue] >> 8)];
      }

      v4 = [v2 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v4);

    if (v5)
    {
      [*(*(a1 + 32) + 184) setLastBrailleChordTypingTime:CFAbsoluteTimeGetCurrent()];
      v2 = [objc_alloc(MEMORY[0x277CF3310]) initWithBits:v5];
      v8 = [v2 unicode];
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v9 = [objc_alloc(MEMORY[0x277CF3310]) initWithBits:0];
        v10 = [v9 unicode];
        v11 = [v10 stringByAppendingString:v8];

        v8 = v11;
      }

      v12 = +[SCROBrailleTranslationManager sharedManager];
      v13 = [v12 defaultLanguage];

      v14 = +[SCROBrailleTranslationManager sharedManager];
      v15 = [v14 serviceIdentifier];

      if (*(a1 + 56) & 1) != 0 || ([*(*(a1 + 32) + 48) isSingleLetterInputOn] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 48), "wantsEdits") & 1) == 0 && (objc_msgSend(*(a1 + 32), "isInputEightDot"))
      {
        v16 = [*(a1 + 32) keyArrayForBrailleStringWithCurrentModifiers:v8];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }

      else
      {
        v20 = [*(*(a1 + 32) + 48) hasEdits];
        v21 = *(a1 + 32);
        v22 = *(v21 + 48);
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(v21 + 184), "currentBrailleModifiers")}];
        v43 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        LOBYTE(v22) = [v22 insertBrailleStringAtCursor:v8 modifiers:v24];

        if ((v22 & 1) == 0)
        {
          [*(a1 + 32) _startEditingText];
        }

        v25 = *(a1 + 32);
        Current = CFAbsoluteTimeGetCurrent();
        if (v20)
        {
          v27 = +[SCROSharedInputProperties sharedInstance];
          [v27 lastBrailleChordPosted];
          v29 = Current - v28;

          [v25[23] brailleCharExponentialMovingAverage];
          [v25[23] setBrailleCharExponentialMovingAverage:v30 * 0.6 + v29 * 0.4];
          [v25[23] brailleCharExponentialMovingAverage];
          [v25[23] setBrailleTranslationTimeout:{fmin(v31 * 3.5, 10.0)}];
        }

        v32 = +[SCROSharedInputProperties sharedInstance];
        [v32 setLastBrailleChordPosted:Current];

        [*(a1 + 32) _updateDisplay];
        v37 = 0;
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(*(a1 + 32) + 184), "currentBrailleModifiers")}];
        v42 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v35 = [SCROBrailleTranslationUtility spokenStringForInsertedBrailleString:v8 speakLiterally:&v37 modifiers:v34];

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
        [WeakRetained brailleDisplay:*(a1 + 32) insertedUntranslatedText:v35 speakLiterally:v37];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t ___appendBrailleKeysToArray_block_invoke_2(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 184) currentBrailleChordContainsSpacebar];
  if (result)
  {
    if (([*(a1 + 32) _isMemorizingKeys] & 1) == 0)
    {
      [*(*(a1 + 32) + 184) setLastBrailleChordTypingTime:CFAbsoluteTimeGetCurrent()];
      v3 = [objc_alloc(MEMORY[0x277CF3310]) initWithBits:0];
      v4 = [v3 unicode];

      if ((*(a1 + 48) & 1) != 0 || ([*(*(a1 + 32) + 48) isSingleLetterInputOn] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 48), "wantsEdits") & 1) == 0 && !objc_msgSend(*(a1 + 32), "isInputContracted"))
      {
        v5 = [*(a1 + 32) keyArrayForBrailleStringWithCurrentModifiers:v4];
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }

      else
      {
        v17 = *(a1 + 32);
        v18 = *(v17 + 48);
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(v17 + 184), "currentBrailleModifiers")}];
        v21[0] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        LOBYTE(v18) = [v18 insertBrailleStringAtCursor:v4 modifiers:v20];

        if ((v18 & 1) == 0)
        {
          [*(a1 + 32) _startEditingText];
        }
      }

      v8 = *(a1 + 32);
      Current = CFAbsoluteTimeGetCurrent();
      v10 = +[SCROSharedInputProperties sharedInstance];
      [v10 lastBrailleChordPosted];
      v12 = Current - v11;

      [v8[23] brailleCharExponentialMovingAverage];
      [v8[23] setBrailleCharExponentialMovingAverage:v13 * 0.6 + v12 * 0.4];
      [v8[23] brailleCharExponentialMovingAverage];
      [v8[23] setBrailleTranslationTimeout:{fmin(v14 * 3.5, 10.0)}];

      v15 = +[SCROSharedInputProperties sharedInstance];
      [v15 setLastBrailleChordPosted:Current];
    }

    [*(*(a1 + 32) + 184) setCurrentBrailleChordContainsSpacebar:0];
    result = [*(*(a1 + 32) + 184) setCurrentBrailleChordBeganWithSpacebar:0];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t term()
{
  result = _fd;
  if (_fd)
  {
    tcdrain(_fd);
    v1 = _fd;

    return close(v1);
  }

  return result;
}

void _postBrailleDisplayDetected(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = a2;
    v5 = a1;
    v6 = [[v3 alloc] initWithObjectsAndKeys:{v5, @"driverID", v4, @"element", 0}];

    v7 = _SCROD_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Detected braille device: %{public}@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:kSCROBrailleDisplayConnectedNotification object:_SCROBrailleDisplayAutoDetector userInfo:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _connectHandler(void *a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  v6 = IOIteratorNext(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [[SCROIOUSBElement alloc] initWithIOObject:v7];
      if (!v8)
      {
        v8 = [[SCROIOHIDElement alloc] initWithIOObject:v7];
      }

      _postBrailleDisplayDetected(v5, v8);

      IOObjectRelease(v7);
      v7 = IOIteratorNext(a2);
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_ptr;
  v8 = get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_ptr;
  if (!get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_ptr)
  {
    v3 = libAccessibilityLibrary();
    v6[3] = dlsym(v3, "_AXSVoiceOverTouchSetTactileGraphicsDisplay");
    get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    soft__AXSVoiceOverTouchSetTactileGraphicsDisplay_cold_1();
  }

  return v2(a1);
}

void sub_26492777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libAccessibilityLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary_0;
  v6 = libAccessibilityLibraryCore_frameworkLibrary_0;
  if (!libAccessibilityLibraryCore_frameworkLibrary_0)
  {
    v7 = xmmword_279B73FD0;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_26492887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke_0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t libAccessibilityLibrary()
{
  v1 = 0;
  result = libAccessibilityLibraryCore();
  if (!result)
  {
    libAccessibilityLibrary_cold_1(&v1);
  }

  return result;
}

BOOL SCROBrailleDisplayHistoryIsStringUnread(void *a1)
{
  v1 = [a1 attribute:kSCROUnreadAttribute atIndex:0 effectiveRange:0];
  v2 = v1 != 0;

  return v2;
}

BOOL SCROBrailleDisplayHistoryIsHistoryString(void *a1)
{
  v1 = [a1 attribute:kSCROHistoryAttribute atIndex:0 effectiveRange:0];
  v2 = v1 != 0;

  return v2;
}

uint64_t brailleUIOnKeybagLockStatusChange(uint64_t a1, void *a2)
{
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "Keybag lock status changed", v5, 2u);
  }

  result = MKBGetDeviceLockState();
  if (result == 1)
  {
    return [a2 endBrailleUI];
  }

  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26492BD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26492C084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _updateNewlyActiveDisplay(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a1;
  [v14 setDelegateWantsDisplayCallback:a3];
  [v14 setInputAllowed:a4];
  [v14 setStatusAttributesWithMasterCellIndex:a5 virtualAlignment:a6];
  [v14 setPrepareToMemorizeNextKey:0 immediate:0];
  [v14 setBrailleFormatter:v13];

  [v14 setAutomaticBrailleTranslationEnabled:a7];
  [v14 endUpdates];
}

void sub_26492DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void _addDisplayConfigurationToList(void *a1, void *a2, const __CFDictionary *a3, uint64_t a4)
{
  key = a1;
  v7 = a2;
  v8 = [CFDictionaryGetValue(a3 key)];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v8 setObject:v9 forKey:kSCROBrailleDisplayState[0]];
    v10 = [key canvasDescriptor];
    if (v10)
    {
      [v8 setObject:v10 forKey:kSCROBrailleDisplayCanvasDescriptor[0]];
    }

    if ([key isMultiLine])
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKey:kSCROBrailleDisplayIsMultiLine[0]];
    }

    v11 = [key token];
    if (v11 == kSCROSystemVirtualBrailleDisplayToken)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKey:kSCROBrailleDisplayIsSystemVirtual[0]];
    }

    [v7 addObject:v8];
  }
}

void sub_264933330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264937040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264937138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264937E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libAccessibilityLibraryCore_0()
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary_1;
  v6 = libAccessibilityLibraryCore_frameworkLibrary_1;
  if (!libAccessibilityLibraryCore_frameworkLibrary_1)
  {
    v7 = xmmword_279B74508;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary_1 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_2649394B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t libAccessibilityLibrary_0()
{
  v1 = 0;
  result = libAccessibilityLibraryCore_0();
  if (!result)
  {
    libAccessibilityLibrary_cold_1_0(&v1);
  }

  return result;
}

void *__getkAXSVoiceOverTouchTactileGraphicsDisplayChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary_0();
  result = dlsym(v2, "kAXSVoiceOverTouchTactileGraphicsDisplayChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXSVoiceOverTouchTactileGraphicsDisplayChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _processQueue(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 _processQueue];
  objc_autoreleasePoolPop(v2);
}

void sub_264940D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *_applyDots7And8FocusFilterToPrintBraille(void *a1, NSUInteger a2, NSUInteger a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x28223BE20]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v6;
  v28 = a2;
  v33 = a2;
  v34 = a3;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  memset(buffer, 0, sizeof(buffer));
  v10 = v28 + a3;
  v35 = 0;
  v36 = 0;
  v32 = CStringPtr;
  if (v10 <= [(__CFString *)v5 length])
  {
    v27 = &v27;
    if (!a3)
    {
LABEL_31:
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v8 length:a3];
      v13 = [(__CFString *)v5 stringByReplacingCharactersInRange:v28 withString:a3, v24];

      goto LABEL_32;
    }

    v14 = 0;
    v15 = 0;
    v16 = 64;
    while (1)
    {
      if (v15 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v15;
      }

      v18 = v28 + v15;
      if (v18 >= [(__CFString *)v5 length])
      {
        goto LABEL_31;
      }

      v19 = v34;
      if (v34 <= v15)
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        if (CharactersPtr)
        {
          v20 = &CharactersPtr[v33];
        }

        else
        {
          if (v32)
          {
            LOBYTE(v21) = v32[v33 + v15];
            goto LABEL_19;
          }

          if (v36 <= v15 || (v22 = v35, v35 > v15))
          {
            v23 = v15 - v17 + 64;
            if (v23 >= v34)
            {
              v23 = v34;
            }

            v35 = v15 - v17;
            v36 = v23;
            if (v34 >= v16 - v17)
            {
              v19 = v16 - v17;
            }

            v44.location = v15 - v17 + v33;
            v44.length = v19 + v17 + v14;
            CFStringGetCharacters(v30, v44, buffer);
            v22 = v35;
          }

          v20 = buffer - v22;
        }

        v21 = v20[v15];
      }

LABEL_19:
      *&v8[2 * v15++] = kSCROBrailleUnicodeCharacterBase + 192 + ((v21 - kSCROBrailleUnicodeCharacterBase) & 0x3F);
      --v14;
      ++v16;
      if (a3 == v15)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = _SCROD_LOG();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v43.location = v28;
    v43.length = a3;
    v12 = NSStringFromRange(v43);
    *buf = 138412547;
    v38 = v12;
    v39 = 2117;
    v40 = v5;
    _os_log_impl(&dword_26490B000, v11, OS_LOG_TYPE_DEFAULT, "Error applying braille filter. Range %@ goes beyond braille string %{sensitive}@", buf, 0x16u);
  }

  v13 = v5;
LABEL_32:

  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_2649441D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SCROJapaneseBrailleSelected()
{
  v0 = +[SCROBrailleTranslationManager sharedManager];
  v1 = [v0 serviceIdentifier];
  if ([v1 isEqual:@"com.apple.scrod.braille.table.nbsc"])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v0 serviceIdentifier];
    v2 = [v3 isEqual:@"com.apple.scrod.braille.table.apple"];
  }

  return v2;
}

uint64_t SCROJapaneseInputBrailleSelected()
{
  v0 = +[SCROBrailleTranslationManager inputManager];
  v1 = [v0 serviceIdentifier];
  if ([v1 isEqual:@"com.apple.scrod.braille.table.nbsc"])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v0 serviceIdentifier];
    v2 = [v3 isEqual:@"com.apple.scrod.braille.table.apple"];
  }

  return v2;
}

void sub_264947A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_264947EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_264948438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t SCROBrailleCreateTranslatePrintBrailleToBrailleCode(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  Length = CFStringGetLength(v1);
  v3 = MEMORY[0x28223BE20]();
  v4 = &buffer - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  v36 = 0;
  v37 = v3;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v34 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  buffer = 0u;
  v38 = 0;
  v39 = 0;
  v35 = CStringPtr;
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    do
    {
      if (v9 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v9;
      }

      v12 = v37;
      if (v37 <= v9)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        if (v34)
        {
          v13 = &v34[v36];
        }

        else
        {
          if (v35)
          {
            LOBYTE(v14) = v35[v36 + v9];
            goto LABEL_13;
          }

          if (v39 <= v9 || v8 > v9)
          {
            v16 = -v11;
            v17 = v11 + v7;
            v18 = v10 - v11;
            v19 = v9 + v16;
            v20 = v19 + 64;
            if (v19 + 64 >= v37)
            {
              v20 = v37;
            }

            v38 = v19;
            v39 = v20;
            if (v37 >= v18)
            {
              v12 = v18;
            }

            v41.location = v19 + v36;
            v41.length = v12 + v17;
            CFStringGetCharacters(v33, v41, &buffer);
            v8 = v38;
          }

          v13 = &buffer - v8;
        }

        v14 = v13[v9];
      }

LABEL_13:
      v4[v9++] = v14 - kSCROBrailleUnicodeCharacterBase;
      --v7;
      ++v10;
    }

    while (Length != v9);
  }

  v21 = objc_alloc(MEMORY[0x277CBEA90]);
  v22 = [v21 initWithBytes:v4 length:{Length, buffer, *(&buffer + 1), v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32}];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_26494B940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initICFolder()
{
  if (NotesSharedLibrary_sOnce != -1)
  {
    initICFolder_cold_1();
  }

  result = objc_getClass("ICFolder");
  classICFolder = result;
  getICFolderClass = ICFolderFunction;
  return result;
}

void *__NotesSharedLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NotesShared.framework/NotesShared", 2);
  NotesSharedLibrary_sLib = result;
  return result;
}

Class initICNote()
{
  if (NotesSharedLibrary_sOnce != -1)
  {
    initICFolder_cold_1();
  }

  result = objc_getClass("ICNote");
  classICNote = result;
  getICNoteClass = ICNoteFunction;
  return result;
}

Class initICCloudSyncingObject()
{
  if (NotesSharedLibrary_sOnce != -1)
  {
    initICFolder_cold_1();
  }

  result = objc_getClass("ICCloudSyncingObject");
  classICCloudSyncingObject = result;
  getICCloudSyncingObjectClass = ICCloudSyncingObjectFunction;
  return result;
}

Class initICNoteListSortUtilities()
{
  if (NotesSupportLibrary_sOnce != -1)
  {
    initICNoteListSortUtilities_cold_1();
  }

  result = objc_getClass("ICNoteListSortUtilities");
  classICNoteListSortUtilities = result;
  getICNoteListSortUtilitiesClass = ICNoteListSortUtilitiesFunction;
  return result;
}

void *__NotesSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NotesSupport.framework/NotesSupport", 2);
  NotesSupportLibrary_sLib = result;
  return result;
}

Class initICNoteContext()
{
  if (NotesSharedLibrary_sOnce != -1)
  {
    initICFolder_cold_1();
  }

  result = objc_getClass("ICNoteContext");
  classICNoteContext = result;
  getICNoteContextClass = ICNoteContextFunction;
  return result;
}

Class initICAccount()
{
  if (NotesSharedLibrary_sOnce != -1)
  {
    initICFolder_cold_1();
  }

  result = objc_getClass("ICAccount");
  classICAccount = result;
  getICAccountClass = ICAccountFunction;
  return result;
}

Class initAXSpringBoardServer()
{
  if (AccessibilityUtilitiesLibrary_sOnce != -1)
  {
    initAXSpringBoardServer_cold_1();
  }

  result = objc_getClass("AXSpringBoardServer");
  classAXSpringBoardServer = result;
  getAXSpringBoardServerClass = AXSpringBoardServerFunction;
  return result;
}

void *__AccessibilityUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities", 2);
  AccessibilityUtilitiesLibrary_sLib = result;
  return result;
}

Class initAXSettings()
{
  if (AccessibilityUtilitiesLibrary_sOnce != -1)
  {
    initAXSpringBoardServer_cold_1();
  }

  result = objc_getClass("AXSettings");
  classAXSettings = result;
  getAXSettingsClass = AXSettingsFunction;
  return result;
}

uint64_t initAXDeviceHasGreyMatterEnabled()
{
  if (AccessibilityUtilitiesLibrary_sOnce != -1)
  {
    initAXSpringBoardServer_cold_1();
  }

  v0 = dlsym(AccessibilityUtilitiesLibrary_sLib, "AXDeviceHasGreyMatterEnabled");
  softLinkAXDeviceHasGreyMatterEnabled = v0;

  return v0();
}

id _SCROD_LOG()
{
  if (_SCROD_LOG_onceToken != -1)
  {
    _SCROD_LOG_cold_1();
  }

  v1 = _SCROD_LOG_log;

  return v1;
}

id _SCROD_BRAILLE_LOG()
{
  if (_SCROD_BRAILLE_LOG_onceToken != -1)
  {
    _SCROD_BRAILLE_LOG_cold_1();
  }

  v1 = _SCROD_BRAILLE_LOG_log;

  return v1;
}

id SCRONSStringForPurportedString(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 description];
    goto LABEL_5;
  }

  v4 = _SCROD_LOG();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v1;
    _os_log_impl(&dword_26490B000, v4, OS_LOG_TYPE_DEFAULT, "An object purported to be an NSString was not actually an NSString nor responded to description: %@", &v7, 0xCu);
  }

  v3 = 0;
LABEL_9:

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t _systemBuildVersion()
{
  if (!_systemBuildVersion_buildVersion)
  {
    v0 = _CFCopySystemVersionDictionary();
    if (v0)
    {
      v1 = v0;
      Value = CFDictionaryGetValue(v0, *MEMORY[0x277CBEC70]);
      _systemBuildVersion_buildVersion = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(v1);
    }
  }

  return _systemBuildVersion_buildVersion;
}

void sub_264952914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose((v70 - 248), 8);
  _Block_object_dispose((v70 - 216), 8);
  _Block_object_dispose((v70 - 184), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initAXUIClient()
{
  if (AccessibilityUILibrary_sOnce != -1)
  {
    initAXUIClient_cold_1();
  }

  result = objc_getClass("AXUIClient");
  classAXUIClient = result;
  getAXUIClientClass = AXUIClientFunction;
  return result;
}

void *__AccessibilityUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccessibilityUI.framework/AccessibilityUI", 2);
  AccessibilityUILibrary_sLib = result;
  return result;
}

Class initCalculate()
{
  if (CalculateLibrary_sOnce != -1)
  {
    initCalculate_cold_1();
  }

  result = objc_getClass("Calculate");
  classCalculate = result;
  getCalculateClass = CalculateFunction;
  return result;
}

void *__CalculateLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Calculate.framework/Calculate", 2);
  CalculateLibrary_sLib = result;
  return result;
}

id initValCalculateKeyNumberFormatter()
{
  if (softLinkOnceCalculateKeyNumberFormatter != -1)
  {
    initValCalculateKeyNumberFormatter_cold_1();
  }

  v1 = constantValCalculateKeyNumberFormatter;

  return v1;
}

void __initValCalculateKeyNumberFormatter_block_invoke()
{
  if (CalculateLibrary_sOnce != -1)
  {
    initCalculate_cold_1();
  }

  v0 = dlsym(CalculateLibrary_sLib, "CalculateKeyNumberFormatter");
  if (v0)
  {
    objc_storeStrong(&constantValCalculateKeyNumberFormatter, *v0);
  }

  getCalculateKeyNumberFormatter = CalculateKeyNumberFormatterFunction;
}

id initValCalculateKeyAssumeDegrees()
{
  if (softLinkOnceCalculateKeyAssumeDegrees != -1)
  {
    initValCalculateKeyAssumeDegrees_cold_1();
  }

  v1 = constantValCalculateKeyAssumeDegrees;

  return v1;
}

void __initValCalculateKeyAssumeDegrees_block_invoke()
{
  if (CalculateLibrary_sOnce != -1)
  {
    initCalculate_cold_1();
  }

  v0 = dlsym(CalculateLibrary_sLib, "CalculateKeyAssumeDegrees");
  if (v0)
  {
    objc_storeStrong(&constantValCalculateKeyAssumeDegrees, *v0);
  }

  getCalculateKeyAssumeDegrees = CalculateKeyAssumeDegreesFunction;
}

id initValCalculateKeyAllowPartialExpressions()
{
  if (softLinkOnceCalculateKeyAllowPartialExpressions != -1)
  {
    initValCalculateKeyAllowPartialExpressions_cold_1();
  }

  v1 = constantValCalculateKeyAllowPartialExpressions;

  return v1;
}

void __initValCalculateKeyAllowPartialExpressions_block_invoke()
{
  if (CalculateLibrary_sOnce != -1)
  {
    initCalculate_cold_1();
  }

  v0 = dlsym(CalculateLibrary_sLib, "CalculateKeyAllowPartialExpressions");
  if (v0)
  {
    objc_storeStrong(&constantValCalculateKeyAllowPartialExpressions, *v0);
  }

  getCalculateKeyAllowPartialExpressions = CalculateKeyAllowPartialExpressionsFunction;
}

id initValCalculateKeyScientificNotationFormat()
{
  if (softLinkOnceCalculateKeyScientificNotationFormat != -1)
  {
    initValCalculateKeyScientificNotationFormat_cold_1();
  }

  v1 = constantValCalculateKeyScientificNotationFormat;

  return v1;
}

void __initValCalculateKeyScientificNotationFormat_block_invoke()
{
  if (CalculateLibrary_sOnce != -1)
  {
    initCalculate_cold_1();
  }

  v0 = dlsym(CalculateLibrary_sLib, "CalculateKeyScientificNotationFormat");
  if (v0)
  {
    objc_storeStrong(&constantValCalculateKeyScientificNotationFormat, *v0);
  }

  getCalculateKeyScientificNotationFormat = CalculateKeyScientificNotationFormatFunction;
}

void sub_264957A48(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_264957A60(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x264957A6CLL);
}

void sub_264957B90(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x264957AF8);
}

void _addConnections()
{
  [_Lock_0 lock];
  Copy = CFSetCreateCopy(0, _PendingConnections);
  CFSetRemoveAllValues(_PendingConnections);
  [_Lock_0 unlock];
  if (Copy)
  {
    v1 = objc_autoreleasePoolPush();
    CFSetApplyFunction(Copy, _addConnection, 0);
    objc_autoreleasePoolPop(v1);

    CFRelease(Copy);
  }
}

void _retryHandler()
{
  v0 = objc_autoreleasePoolPush();
  +[SCROConnection _configServer];

  objc_autoreleasePoolPop(v0);
}

void _scrodDeathCallback()
{
  v0 = objc_autoreleasePoolPush();
  [SCROConnection _unconfigServerAndRetry:1];

  objc_autoreleasePoolPop(v0);
}

void sub_2649588D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    NSLog(&cfstr_CaughtExceptio_1.isa);

    objc_end_catch();
    JUMPOUT(0x2649588A8);
  }

  _Unwind_Resume(exception_object);
}

void _invalidateConnection(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  [v3 _stopConnection];
  CFSetRemoveValue(_ActiveConnections, v3);
  if (!CFSetGetCount(_ActiveConnections))
  {
    [SCROConnection _unconfigServerAndRetry:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_264958FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    NSLog(&cfstr_CaughtExceptio_2.isa);

    objc_end_catch();
    JUMPOUT(0x264958F84);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _SCROXPing(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  [v2 _ping];
  objc_autoreleasePoolPop(v3);

  return 0;
}

void sub_26495A340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    NSLog(&cfstr_CaughtExceptio_0.isa);

    objc_end_catch();
    JUMPOUT(0x26495A318);
  }

  _Unwind_Resume(exception_object);
}

void sub_26495A410(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x26495A3D8);
}

void _addConnection(void *a1)
{
  v1 = _ActiveConnections;
  v2 = a1;
  CFSetSetValue(v1, v2);
  [v2 _startConnection];
}

id SCROBrailleUILocString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_28763D5C8 table:@"BrailleUI"];

  return v4;
}

BOOL SCROSerializeWrapper(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void **a5, _DWORD *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 4096;
  __src = mmap(0, 0x1000uLL, 3, 4098, -1, 0);
  v22 = 0;
  __n = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = AXSerializeCFType();
    if (v13)
    {
      v14 = v24;
      if (v24 != 4096)
      {
        v15 = __src;
LABEL_11:
        munmap(v15, v14);
      }
    }

    else
    {
      v18 = __n;
      v19 = __src;
      if (__n <= 0x1000)
      {
        memcpy(a3, __src, __n);
        *a4 = v18;
        v14 = v24;
        v15 = v19;
        goto LABEL_11;
      }

      *a5 = __src;
      *a6 = v24;
    }

    v17 = v13 != 0;
    goto LABEL_13;
  }

  v16 = _SCROD_LOG();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Error archiving data: %@", buf, 0xCu);
  }

  v17 = 1;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL SCROUnserializeWrapper(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a2 || a4)
  {
    v4 = AXUnserializeCFType();
  }

  else
  {
    v4 = -25200;
  }

  result = v4 != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __SCROUnserializeWrapper_block_invoke()
{
  v5[12] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v2 = [v0 setWithArray:v1];
  v3 = SCROUnserializeWrapper_classes;
  SCROUnserializeWrapper_classes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void _deadNameHandler(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 20) == 72)
  {
    v1 = *(a1 + 32);
    v2 = +[SCROServer sharedServer];
    [v2 _setClientCount:{+[SCROClient removeClientWithPort:](SCROClient, "removeClientWithPort:", v1)}];
    v3 = _SCROD_LOG();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v2, "_clientCount")}];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "Client count: %@", &v9, 0xCu);
    }

    if (![v2 _clientCount] && (objc_msgSend(v2, "_shouldStayAliveAfterLastClientUnregisters") & 1) == 0)
    {
      v5 = [v2 _deathTimer];
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Death timer firing: %@", &v9, 0xCu);
      }

      if (v5)
      {
        Current = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v5, Current + 3.0);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_264963FD8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    fwrite("Caught Exception handling dead name.\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
    objc_end_catch();
    JUMPOUT(0x264963FA8);
  }

  _Unwind_Resume(a1);
}

void _deathTimerHandler()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _SCROD_LOG();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26490B000, v1, OS_LOG_TYPE_DEFAULT, "Posting server timeout", v5, 2u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = kSCROServerTimeoutNotification;
  v4 = +[SCROServer sharedServer];
  [v2 postNotificationName:v3 object:v4 userInfo:0];

  objc_autoreleasePoolPop(v0);
}

uint64_t _SCROXRegisterWithServer(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  if (a2 == 19)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = +[SCROServer sharedServer];
    v11 = a6[1];
    v17[0] = *a6;
    v17[1] = v11;
    v12 = [SCROClient addClientGetIdentifier:a4 token:v17 getPort:a3];
    if (v12)
    {
      if ([v10 _incrementClientCount] == 1)
      {
        v13 = [v10 _deathTimer];
        if (v13)
        {
          Current = CFAbsoluteTimeGetCurrent();
          CFRunLoopTimerSetNextFireDate(v13, Current + 630720000.0);
        }
      }
    }

    [v10 _registerForNotificationOnDeathPort:*a3];

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "ERROR: Version mismatch: client = %d, scrod = %d\n", a2, 19);
    *a4 = 0;
    *a3 = 0;
    *a5 = 3;
  }

  return 0;
}

void sub_26496476C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    fwrite("Caught Exception creating client\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
    objc_end_catch();
    JUMPOUT(0x2649646ECLL);
  }

  JUMPOUT(0x2649646F0);
}

uint64_t _SCROXSendEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, _BYTE *a7, _DWORD *a8, void **a9, _DWORD *a10, _BOOL4 *a11, _OWORD *a12)
{
  *a11 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  if (!(a6 | a4))
  {
    return 0;
  }

  context = objc_autoreleasePoolPush();
  v31 = a5;
  cf = 0;
  v19 = SCROUnserializeWrapper(a3, a4, a5, a6);
  if (v19)
  {
    NSLog(&cfstr_ErrorWhileDese_1.isa, v19, context);
    v20 = 0;
  }

  else
  {
    v20 = [[SCROEvent alloc] initForHandlerType:a2];
    [v20 setMainDictionary:cf];
    v21 = a12[1];
    v32[0] = *a12;
    v32[1] = v21;
    v22 = [SCROClient isClientTrustedWithPortToken:v32];
    v23 = +[SCROServer sharedServer];
    v24 = [v23 delegate];
    v25 = [v24 handleEvent:v20 handlerType:a2 trusted:v22];

    if (!v25)
    {
      v27 = [v20 claimDictionary];
      if (v27)
      {
        v28 = SCROSerializeWrapper(v27, 4096, a7, a8, a9, a10);
        v29 = v28;
        if (v28)
        {
          NSLog(&cfstr_ErrorWhileSeri_1.isa, v28, context);
          *a11 = v29;
        }
      }

      goto LABEL_7;
    }

    NSLog(&cfstr_ErrorWhileHand.isa, v25, context);
  }

  *a11 = 1;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31 && a6)
  {
    munmap(v31, a6);
  }

  objc_autoreleasePoolPop(context);
  return 0;
}

uint64_t _SCROXRegisterForCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, _OWORD *a6)
{
  *a5 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = a6[1];
  v17[0] = *a6;
  v17[1] = v12;
  v13 = [SCROClient isClientTrustedWithPortToken:v17];
  v14 = +[SCROServer sharedServer];
  v15 = [v14 delegate];
  *a5 = [v15 registerCallbackForKey:a4 forClientIdentifier:a2 handlerType:a3 trusted:v13];

  if (*a5)
  {
    NSLog(&cfstr_ErrorWhileHand.isa, *a5);
  }

  else
  {
    [SCROClient registerCallbackWithKey:a4 forClientIdentifier:a2];
  }

  objc_autoreleasePoolPop(v11);
  return 0;
}

uint64_t _SCROXGetCallbacks(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4, void **a5, _DWORD *a6, _BOOL4 *a7)
{
  *a7 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v13 = objc_autoreleasePoolPush();
  v14 = [SCROClient callbacksForClientIdentifier:a2];
  if (v14)
  {
    v15 = SCROSerializeWrapper(v14, 4096, a3, a4, a5, a6);
    v16 = v15;
    if (v15)
    {
      NSLog(&cfstr_ErrorWhileSeri_2.isa, v15);
      *a7 = v16;
    }
  }

  objc_autoreleasePoolPop(v13);
  return 0;
}

uint64_t _SCROXSetValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, unsigned int a7, _BOOL4 *a8, _OWORD *a9)
{
  *a8 = 0;
  cf = 0;
  v16 = objc_autoreleasePoolPush();
  v17 = SCROUnserializeWrapper(a4, a5, a6, a7);
  v18 = v17;
  if (v17)
  {
    NSLog(&cfstr_ErrorWhileDese_1.isa, v17);
    *a8 = v18;
  }

  else
  {
    v19 = a9[1];
    v26[0] = *a9;
    v26[1] = v19;
    v20 = [SCROClient isClientTrustedWithPortToken:v26];
    if (a3 == 107)
    {
      *a8 = 0;
    }

    else
    {
      v21 = v20;
      v22 = +[SCROServer sharedServer];
      v23 = [v22 delegate];
      v24 = [v23 setValue:cf forKey:a3 handlerType:a2 trusted:v21];

      if (v24)
      {
        NSLog(&cfstr_ErrorWhileHand_0.isa, v24);
        *a8 = 1;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a6 && a7)
  {
    munmap(a6, a7);
  }

  objc_autoreleasePoolPop(v16);
  return 0;
}

uint64_t _SCROXGetValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _DWORD *a5, void **a6, _DWORD *a7, _BOOL4 *a8, _OWORD *a9)
{
  *a8 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  context = objc_autoreleasePoolPush();
  v15 = a9[1];
  v27[0] = *a9;
  v27[1] = v15;
  v16 = [SCROClient isClientTrustedWithPortToken:v27];
  v17 = +[SCROServer sharedServer];
  v18 = [v17 delegate];
  v26 = 0;
  v19 = [v18 getValue:&v26 forKey:a3 handlerType:a2 trusted:v16];
  v20 = v26;

  if (v19)
  {
    NSLog(&cfstr_ErrorWhileGett_2.isa, v19);
    *a8 = 1;
  }

  else if (v20)
  {
    v22 = SCROSerializeWrapper(v20, 4096, a4, a5, a6, a7);
    v23 = v22;
    if (v22)
    {
      NSLog(&cfstr_ErrorWhileSeri_3.isa, v22);
      *a8 = v23;
    }
  }

  objc_autoreleasePoolPop(context);

  return 0;
}

uint64_t _SCROXGetValueForKeyWithObject(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, _BYTE *a8, _DWORD *a9, void **a10, _DWORD *a11, _BOOL4 *a12, _OWORD *a13)
{
  *a12 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  cf = 0;
  context = objc_autoreleasePoolPush();
  v32 = a6;
  v31 = a7;
  v19 = SCROUnserializeWrapper(a4, a5, a6, a7);
  v20 = v19;
  if (v19)
  {
    NSLog(&cfstr_ErrorWhileDese_2.isa, v19);
    v21 = 0;
LABEL_3:
    *a12 = v20;
    goto LABEL_9;
  }

  v22 = a13[1];
  v34[0] = *a13;
  v34[1] = v22;
  v23 = [SCROClient isClientTrustedWithPortToken:v34];
  v24 = +[SCROServer sharedServer];
  v25 = [v24 delegate];
  v33 = 0;
  v26 = [v25 getValue:&v33 forKey:a3 withObject:cf handlerType:a2 trusted:v23];
  v21 = v33;

  if (v26)
  {
    NSLog(&cfstr_ErrorWhileGett_2.isa, v26);
    *a12 = 1;
  }

  else if (v21)
  {
    v27 = SCROSerializeWrapper(v21, 4096, a8, a9, a10, a11);
    v20 = v27;
    if (v27)
    {
      NSLog(&cfstr_ErrorWhileSeri_3.isa, v27);
      goto LABEL_3;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32 && v31)
  {
    munmap(v32, v31);
  }

  objc_autoreleasePoolPop(context);

  return 0;
}

uint64_t _SCROXPerformAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, _OWORD *a6)
{
  *a5 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = a6[1];
  v16[0] = *a6;
  v16[1] = v11;
  v12 = [SCROClient isClientTrustedWithPortToken:v16];
  v13 = +[SCROServer sharedServer];
  v14 = [v13 delegate];
  *a5 = [v14 performActionForKey:a4 handlerType:a3 trusted:v12];

  if (*a5)
  {
    NSLog(&cfstr_ErrorWhilePerf.isa, *a5);
  }

  objc_autoreleasePoolPop(v10);
  return 0;
}

uint64_t _SCRORegisterWithServer(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *&reply_port[16] = 0u;
  memset(v17, 0, sizeof(v17));
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = a2;
  v9 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v9;
  v15 = 5395;
  *&reply_port[12] = 0xA604000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&reply_port[8];
  }

  else
  {
    v10 = v9;
  }

  v11 = mach_msg(&v15, 3, 0x24u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&reply_port[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&reply_port[16] == 680100)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*reply_port == 36)
          {
            v12 = 4294966996;
            if (*&reply_port[28])
            {
              if (*&reply_port[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = *&reply_port[28];
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_28;
        }

        v12 = 4294966996;
        if (*&reply_port[20] == 1 && *reply_port == 56 && !*&reply_port[4] && HIWORD(v17[0]) << 16 == 0x100000)
        {
          v12 = 0;
          v13 = v17[3];
          *a3 = *&reply_port[24];
          *a4 = v13;
          *a5 = v17[4];
          return v12;
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((v15 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&reply_port[8]);
    }

    goto LABEL_28;
  }

  return v12;
}

uint64_t _SCROSendEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10, _DWORD *a11, _DWORD *a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3);
  v67 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *&v38[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v35 = 1;
  v36 = v17;
  v37 = 16777472;
  *v38 = v15;
  *&v38[4] = *MEMORY[0x277D85EF8];
  *&v38[12] = v18;
  if (v14 <= 0x1000)
  {
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    __memcpy_chk();
    *&v38[16] = v22;
    v25 = (v22 + 3) & 0x3FFC;
    *(&reply_port + v25 + 60) = v21;
    v26 = mig_get_reply_port();
    reply_port.msgh_remote_port = v24;
    reply_port.msgh_local_port = v26;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xA604100000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v26;
    }

    v28 = mach_msg(&reply_port, 275, v25 + 64, 0x1048u, msgh_local_port, v23, 0);
    v19 = v28;
    if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v28)
      {
        if (reply_port.msgh_id == 71)
        {
          v19 = 4294966988;
        }

        else if (reply_port.msgh_id == 680101)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v19 = 4294966996;
            if (v35 == 1 && reply_port.msgh_size - 64 <= 0x1000 && !reply_port.msgh_remote_port && HIBYTE(v37) == 1)
            {
              v29 = *&v38[12];
              if (*&v38[12] <= 0x1000u && reply_port.msgh_size - 64 >= *&v38[12])
              {
                v30 = (*&v38[12] + 3) & 0xFFFFFFFC;
                if (reply_port.msgh_size == v30 + 64)
                {
                  v31 = &reply_port + v30 - 4096;
                  if (*v38 == *(v31 + 1038))
                  {
                    memcpy(v20, &v38[16], *&v38[12]);
                    v19 = 0;
                    *a9 = v29;
                    *a10 = v36;
                    *a11 = *(v31 + 1038);
                    *a12 = *(v31 + 1039);
                    goto LABEL_35;
                  }
                }
              }
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v19 = 4294966996;
            if (HIDWORD(v36))
            {
              if (reply_port.msgh_remote_port)
              {
                v19 = 4294966996;
              }

              else
              {
                v19 = HIDWORD(v36);
              }
            }
          }

          else
          {
            v19 = 4294966996;
          }
        }

        else
        {
          v19 = 4294966995;
        }

        goto LABEL_34;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v19 - 268435459) > 1)
    {
      goto LABEL_35;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port.msgh_local_port);
    }

LABEL_34:
    mach_msg_destroy(&reply_port);
    goto LABEL_35;
  }

  v19 = 4294966989;
LABEL_35:
  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t _SCRORegisterForCallback(int a1, mach_msg_timeout_t a2, int a3, int a4, int a5, _DWORD *a6)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = a3;
  *&reply_port[32] = a4;
  *&reply_port[36] = a5;
  v9 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v9;
  v15 = 5395;
  *&reply_port[12] = 0xA604200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&reply_port[8];
  }

  else
  {
    v10 = v9;
  }

  v11 = mach_msg(&v15, 275, 0x2Cu, 0x30u, v10, a2, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&reply_port[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&reply_port[16] == 680102)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*reply_port == 40)
          {
            if (!*&reply_port[4])
            {
              v12 = *&reply_port[28];
              if (!*&reply_port[28])
              {
                *a6 = *&reply_port[32];
                return v12;
              }

              goto LABEL_27;
            }
          }

          else if (*reply_port == 36)
          {
            if (*&reply_port[4])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&reply_port[28] == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&reply_port[28];
            }

            goto LABEL_27;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((v15 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&reply_port[8]);
    }

    goto LABEL_27;
  }

  return v12;
}

uint64_t _SCROGetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v3;
  v59 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  *__n = 0u;
  v30 = 0u;
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = v17;
  v18 = mig_get_reply_port();
  *&reply_port[4] = v16;
  *&reply_port[8] = v18;
  v28 = 5395;
  *&reply_port[12] = 0xA604300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v28);
    v19 = *&reply_port[8];
  }

  else
  {
    v19 = v18;
  }

  v20 = mach_msg(&v28, 275, 0x24u, 0x1048u, v19, v15, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v20)
    {
      if (*&reply_port[16] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&reply_port[16] == 680103)
      {
        if ((v28 & 0x80000000) == 0)
        {
          if (*reply_port == 36)
          {
            v21 = 4294966996;
            if (*&reply_port[28])
            {
              if (*&reply_port[4])
              {
                v21 = 4294966996;
              }

              else
              {
                v21 = *&reply_port[28];
              }
            }
          }

          else
          {
            v21 = 4294966996;
          }

          goto LABEL_32;
        }

        v21 = 4294966996;
        if (*&reply_port[20] == 1 && (*reply_port - 64) <= 0x1000 && !*&reply_port[4] && BYTE3(v30) == 1)
        {
          v22 = __n[0];
          if (LODWORD(__n[0]) <= 0x1000 && (*reply_port - 64) >= LODWORD(__n[0]))
          {
            v23 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
            if (*reply_port == v23 + 64)
            {
              v24 = &reply_port[v23 - 4];
              if (DWORD1(v30) == *(v24 + 14))
              {
                v25 = v24 - 4096;
                memcpy(v13, __n + 4, LODWORD(__n[0]));
                v21 = 0;
                *v11 = v22;
                *v9 = *&reply_port[24];
                *v7 = *(v25 + 1038);
                *v5 = *(v25 + 1039);
                goto LABEL_33;
              }
            }
          }
        }
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_32:
      mach_msg_destroy(&v28);
      goto LABEL_33;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v21 - 268435459) <= 1)
  {
    if ((v28 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&reply_port[8]);
    }

    goto LABEL_32;
  }

LABEL_33:
  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t _SCROSetValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3);
  v61 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *&v32[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v29 = 1;
  v30 = v13;
  v31 = 16777472;
  *v32 = v12;
  *&v32[4] = *MEMORY[0x277D85EF8];
  *&v32[12] = v14;
  *&v32[16] = v15;
  if (v11 <= 0x1000)
  {
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    __memcpy_chk();
    *&v32[20] = v18;
    v21 = (v18 + 3) & 0x3FFC;
    *(&reply_port + v21 + 64) = v17;
    v22 = mig_get_reply_port();
    reply_port.msgh_remote_port = v20;
    reply_port.msgh_local_port = v22;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xA604400000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v22;
    }

    v24 = mach_msg(&reply_port, 275, v21 + 68, 0x30u, msgh_local_port, v19, 0);
    v16 = v24;
    if ((v24 - 268435458) <= 0xE && ((1 << (v24 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v24)
      {
        if (reply_port.msgh_id == 71)
        {
          v16 = 4294966988;
        }

        else if (reply_port.msgh_id == 680104)
        {
          if ((reply_port.msgh_bits & 0x80000000) == 0)
          {
            if (reply_port.msgh_size == 40)
            {
              if (!reply_port.msgh_remote_port)
              {
                v16 = HIDWORD(v30);
                if (!HIDWORD(v30))
                {
                  *a9 = v31;
                  goto LABEL_30;
                }

                goto LABEL_29;
              }
            }

            else if (reply_port.msgh_size == 36)
            {
              if (reply_port.msgh_remote_port)
              {
                v25 = 1;
              }

              else
              {
                v25 = HIDWORD(v30) == 0;
              }

              if (v25)
              {
                v16 = 4294966996;
              }

              else
              {
                v16 = HIDWORD(v30);
              }

              goto LABEL_29;
            }
          }

          v16 = 4294966996;
        }

        else
        {
          v16 = 4294966995;
        }

LABEL_29:
        mach_msg_destroy(&reply_port);
        goto LABEL_30;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v16 - 268435459) > 1)
    {
      goto LABEL_30;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port.msgh_local_port);
    }

    goto LABEL_29;
  }

  v16 = 4294966989;
LABEL_30:
  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t _SCROGetValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v9;
  v64 = *MEMORY[0x277D85DE8];
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  *__n = 0u;
  v35 = 0u;
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = v21;
  LODWORD(v35) = v22;
  v23 = mig_get_reply_port();
  *&reply_port[4] = v20;
  *&reply_port[8] = v23;
  v33 = 5395;
  *&reply_port[12] = 0xA604500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v33);
    v24 = *&reply_port[8];
  }

  else
  {
    v24 = v23;
  }

  v25 = mach_msg(&v33, 275, 0x28u, 0x1048u, v24, v19, 0);
  v26 = v25;
  if ((v25 - 268435458) <= 0xE && ((1 << (v25 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v25)
    {
      if (*&reply_port[16] == 71)
      {
        v26 = 4294966988;
      }

      else if (*&reply_port[16] == 680105)
      {
        if ((v33 & 0x80000000) == 0)
        {
          if (*reply_port == 36)
          {
            v26 = 4294966996;
            if (*&reply_port[28])
            {
              if (*&reply_port[4])
              {
                v26 = 4294966996;
              }

              else
              {
                v26 = *&reply_port[28];
              }
            }
          }

          else
          {
            v26 = 4294966996;
          }

          goto LABEL_32;
        }

        v26 = 4294966996;
        if (*&reply_port[20] == 1 && (*reply_port - 64) <= 0x1000 && !*&reply_port[4] && BYTE3(v35) == 1)
        {
          v27 = __n[0];
          if (LODWORD(__n[0]) <= 0x1000 && (*reply_port - 64) >= LODWORD(__n[0]))
          {
            v28 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
            if (*reply_port == v28 + 64)
            {
              v29 = &reply_port[v28 - 4];
              if (DWORD1(v35) == *(v29 + 14))
              {
                v30 = v29 - 4096;
                memcpy(v17, __n + 4, LODWORD(__n[0]));
                v26 = 0;
                *v15 = v27;
                *v13 = *&reply_port[24];
                *v11 = *(v30 + 1038);
                *a9 = *(v30 + 1039);
                goto LABEL_33;
              }
            }
          }
        }
      }

      else
      {
        v26 = 4294966995;
      }

LABEL_32:
      mach_msg_destroy(&v33);
      goto LABEL_33;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v26 - 268435459) <= 1)
  {
    if ((v33 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&reply_port[8]);
    }

    goto LABEL_32;
  }

LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t _SCROGetValueForKeyWithObject(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, void *__dst, _DWORD *a10, void *a11, _DWORD *a12, _DWORD *a13)
{
  v13 = MEMORY[0x28223BE20](a1, a2, a3);
  v67 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *&v38[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v35 = 1;
  v36 = v17;
  v37 = 16777472;
  *v38 = v16;
  *&v38[4] = *MEMORY[0x277D85EF8];
  *&v38[12] = v18;
  *&v38[16] = v19;
  if (v15 <= 0x1000)
  {
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = v13;
    __memcpy_chk();
    *&v38[20] = v22;
    v25 = (v22 + 3) & 0x3FFC;
    *(&reply_port + v25 + 64) = v21;
    v26 = mig_get_reply_port();
    reply_port.msgh_remote_port = v24;
    reply_port.msgh_local_port = v26;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xA604600000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v26;
    }

    v28 = mach_msg(&reply_port, 275, v25 + 68, 0x1048u, msgh_local_port, v23, 0);
    v20 = v28;
    if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v28)
      {
        if (reply_port.msgh_id == 71)
        {
          v20 = 4294966988;
        }

        else if (reply_port.msgh_id == 680106)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v20 = 4294966996;
            if (v35 == 1 && reply_port.msgh_size - 64 <= 0x1000 && !reply_port.msgh_remote_port && HIBYTE(v37) == 1)
            {
              v29 = *&v38[12];
              if (*&v38[12] <= 0x1000u && reply_port.msgh_size - 64 >= *&v38[12])
              {
                v30 = (*&v38[12] + 3) & 0xFFFFFFFC;
                if (reply_port.msgh_size == v30 + 64)
                {
                  v31 = &reply_port + v30 - 4096;
                  if (*v38 == *(v31 + 1038))
                  {
                    memcpy(__dst, &v38[16], *&v38[12]);
                    v20 = 0;
                    *a10 = v29;
                    *a11 = v36;
                    *a12 = *(v31 + 1038);
                    *a13 = *(v31 + 1039);
                    goto LABEL_35;
                  }
                }
              }
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v20 = 4294966996;
            if (HIDWORD(v36))
            {
              if (reply_port.msgh_remote_port)
              {
                v20 = 4294966996;
              }

              else
              {
                v20 = HIDWORD(v36);
              }
            }
          }

          else
          {
            v20 = 4294966996;
          }
        }

        else
        {
          v20 = 4294966995;
        }

        goto LABEL_34;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v20 - 268435459) > 1)
    {
      goto LABEL_35;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port.msgh_local_port);
    }

LABEL_34:
    mach_msg_destroy(&reply_port);
    goto LABEL_35;
  }

  v20 = 4294966989;
LABEL_35:
  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t _SCROPerformAction(int a1, mach_msg_timeout_t a2, int a3, int a4, int a5, _DWORD *a6)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = a3;
  *&reply_port[32] = a4;
  *&reply_port[36] = a5;
  v9 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v9;
  v15 = 5395;
  *&reply_port[12] = 0xA604700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&reply_port[8];
  }

  else
  {
    v10 = v9;
  }

  v11 = mach_msg(&v15, 275, 0x2Cu, 0x30u, v10, a2, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&reply_port[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&reply_port[16] == 680107)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*reply_port == 40)
          {
            if (!*&reply_port[4])
            {
              v12 = *&reply_port[28];
              if (!*&reply_port[28])
              {
                *a6 = *&reply_port[32];
                return v12;
              }

              goto LABEL_27;
            }
          }

          else if (*reply_port == 36)
          {
            if (*&reply_port[4])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&reply_port[28] == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&reply_port[28];
            }

            goto LABEL_27;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((v15 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&reply_port[8]);
    }

    goto LABEL_27;
  }

  return v12;
}

uint64_t (*SCROClientFunctions_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 680008) >= 0xFFFFFFF8)
  {
    return _SCROXSCROClientFunctions_subsystem[5 * (v1 - 680000) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XRegisterWithServer(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 32) = 0x10000000000000;
  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = _SCROXRegisterWithServer(v4, v5, (a2 + 28), (a2 + 48), (a2 + 52), v7);
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XSendEvent(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4161) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 56);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 64 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 64)
  {
    goto LABEL_7;
  }

  if (*(result + 40) != *(result + v7 + 60))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v22 = 0;
  v8 = ((v3 + 3) & 0x3FFC) + result;
  if (*v8 || *(v8 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
  }

  else
  {
    *(a2 + 52) = 4096;
    v9 = (a2 + 52);
    *(a2 + 36) = 16777473;
    v10 = *(result + 12);
    v11 = *(result + 52);
    v12 = *(result + 56);
    v13 = *(result + 28);
    v14 = *(result + 40);
    v15 = *(v8 + 36);
    v21[0] = *(v8 + 20);
    v21[1] = v15;
    result = _SCROXSendEvent(v10, v11, result + 60, v12, v13, v14, (a2 + 56), v9, (a2 + 28), &v22 + 1, &v22, v21);
    if (!result)
    {
      v17 = v22;
      v16 = HIDWORD(v22);
      *(a2 + 40) = HIDWORD(v22);
      *(a2 + 44) = *MEMORY[0x277D85EF8];
      v18 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
      v19 = v18 + 64;
      v20 = a2 + v18;
      *(v20 + 56) = v16;
      *(v20 + 60) = v17;
      *a2 |= 0x80000000;
      *(a2 + 4) = v19;
      *(a2 + 24) = 1;
      return result;
    }

    *(a2 + 32) = result;
  }

LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XRegisterForCallback(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 36);
  v7 = *(result + 40);
  v8 = *(result + 80);
  v9[0] = *(result + 64);
  v9[1] = v8;
  result = _SCROXRegisterForCallback(v4, v5, v6, v7, (a2 + 36), v9);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XGetCallbacks(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  v11 = 0;
  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 4096;
  *(a2 + 36) = 16777473;
  v9 = *(result + 56);
  v10 = *(result + 72);
  result = _SCROXGetCallbacks(*(result + 12), *(result + 32), (a2 + 56), (a2 + 52), (a2 + 28), &v11 + 1, &v11);
  if (!result)
  {
    v5 = v11;
    v4 = HIDWORD(v11);
    *(a2 + 40) = HIDWORD(v11);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    v6 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
    v7 = v6 + 64;
    v8 = a2 + v6;
    *(v8 + 56) = v4;
    *(v8 + 60) = v5;
    *a2 |= 0x80000000;
    *(a2 + 4) = v7;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XSetValueForKey(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4165) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 60);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
LABEL_8:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = -304;
  if (v3 - 68 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 68)
  {
    goto LABEL_7;
  }

  v8 = *(result + 40);
  if (v8 != *(result + v7 + 64))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v9 = ((v3 + 3) & 0x3FFC) + result;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    goto LABEL_8;
  }

  v10 = *(result + 12);
  v11 = *(result + 52);
  v12 = *(result + 56);
  v13 = *(result + 28);
  v14 = *(v9 + 36);
  v15[0] = *(v9 + 20);
  v15[1] = v14;
  result = _SCROXSetValueForKey(v10, v11, v12, result + 64, v6, v13, v8, (a2 + 36), v15);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XGetValueForKey(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  v16 = 0;
  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 4096;
  v4 = (a2 + 52);
  v5 = (a2 + 28);
  *(a2 + 36) = 16777473;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 36);
  v9 = *(result + 76);
  v15[0] = *(result + 60);
  v15[1] = v9;
  result = _SCROXGetValueForKey(v6, v7, v8, (a2 + 56), v4, v5, &v16 + 1, &v16, v15);
  if (!result)
  {
    v11 = v16;
    v10 = HIDWORD(v16);
    *(a2 + 40) = HIDWORD(v16);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    v12 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
    v13 = v12 + 64;
    v14 = a2 + v12;
    *(v14 + 56) = v10;
    *(v14 + 60) = v11;
    *a2 |= 0x80000000;
    *(a2 + 4) = v13;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XGetValueForKeyWithObject(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4165) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 60);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 68 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 68)
  {
    goto LABEL_7;
  }

  if (*(result + 40) != *(result + v7 + 64))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v22 = 0;
  v8 = ((v3 + 3) & 0x3FFC) + result;
  if (*v8 || *(v8 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
  }

  else
  {
    *(a2 + 52) = 4096;
    *(a2 + 36) = 16777473;
    v9 = *(result + 12);
    v10 = *(result + 52);
    v11 = *(result + 56);
    v12 = *(result + 60);
    v13 = *(result + 28);
    v14 = *(result + 40);
    v15 = *(v8 + 36);
    v21[0] = *(v8 + 20);
    v21[1] = v15;
    result = _SCROXGetValueForKeyWithObject(v9, v10, v11, result + 64, v12, v13, v14, (a2 + 56), (a2 + 52), (a2 + 28), &v22 + 1, &v22, v21);
    if (!result)
    {
      v17 = v22;
      v16 = HIDWORD(v22);
      *(a2 + 40) = HIDWORD(v22);
      *(a2 + 44) = *MEMORY[0x277D85EF8];
      v18 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
      v19 = v18 + 64;
      v20 = a2 + v18;
      *(v20 + 56) = v16;
      *(v20 + 60) = v17;
      *a2 |= 0x80000000;
      *(a2 + 4) = v19;
      *(a2 + 24) = 1;
      return result;
    }

    *(a2 + 32) = result;
  }

LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XPerformAction(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 36);
  v7 = *(result + 40);
  v8 = *(result + 80);
  v9[0] = *(result + 64);
  v9[1] = v8;
  result = _SCROXPerformAction(v4, v5, v6, v7, (a2 + 36), v9);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t SCROClientFunctions_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 680008) >= 0xFFFFFFF8 && (v5 = _SCROXSCROClientFunctions_subsystem[5 * (v4 - 680000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _SCROPing(mach_port_t a1, mach_msg_timeout_t timeout)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0xA875000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 17, 0x18u, 0, 0, timeout, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t (*SCROHandlerFunctions_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 690000)
  {
    return _XPing;
  }

  else
  {
    return 0;
  }
}

uint64_t _XPing(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 7u)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  result = _SCROXPing(*(result + 12), *(result + 76));
  *(a2 + 32) = result;
  return result;
}

uint64_t SCROHandlerFunctions_server(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) != 690000)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    if (!*(a1 + 24) && *(a1 + 28) > 7u)
    {
      *(a2 + 32) = _SCROXPing(*(a1 + 12), *(a1 + 76));
      return 1;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return 1;
}

uint64_t SCROBrailleUICaptionableBrailleLine.mathML.getter()
{
  v1 = (v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SCROBrailleUICaptionableBrailleLine.mathML.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_2649684DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mathML];
  if (v3)
  {
    v4 = v3;
    v5 = sub_264982784();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_264968544(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_264982774();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setMathML_];
}

id sub_2649685B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_264982774();

  v8 = [v6 initWithBraille:v7 selection:{a3, a4}];

  return v8;
}

id sub_264968640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_translatedCaption);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v4 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_mathML);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille);
  *v8 = a1;
  v8[1] = a2;
  v9 = (v4 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection);
  *v9 = a3;
  v9[1] = a4;
  v11.super_class = SCROBrailleUICaptionableBrailleLine;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SCROBrailleUICaptionableBrailleLine.braille.getter()
{
  v1 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille + 8);

  return v1;
}

uint64_t SCROBrailleUICaptionableBrailleLine.selection.getter()
{
  result = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection);
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__selection + 8);
  return result;
}

uint64_t SCROBrailleUICaptionableBrailleLine.caption.getter()
{
  if (*(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption + 8))
  {
    v1 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption);
    v2 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption + 8);
  }

  else
  {
    v3 = (v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_translatedCaption);
    if (*(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_translatedCaption + 8))
    {
      v1 = *v3;
      v4 = *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_translatedCaption + 8);
    }

    else
    {
      nullsub_1();
      v1 = sub_26497C660(*(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille), *(v0 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine__braille + 8));
      v5 = v3[1];
      *v3 = v1;
      v3[1] = v6;
    }
  }

  return v1;
}

Swift::Void __swiftcall SCROBrailleUICaptionableBrailleLine.setManualCaption(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption + 8);
  *(v1 + OBJC_IVAR___SCROBrailleUICaptionableBrailleLine_manualCaption) = a1;
}

id sub_264968AD4(unint64_t a1, uint64_t a2, char a3)
{
  v12 = a2 - 10;
  if (__OFSUB__(a2, 10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v5 = a2;
  v9 = a2 + 10;
  if (__OFADD__(a2, 10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    if (v7 < 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = sub_264982A44();
    if (v23 < v9)
    {
      v9 = v23;
    }

    if (v9 >= v6)
    {
      if (sub_264982A44() < v6)
      {
        goto LABEL_41;
      }

      a1 = sub_264982A44();
      if (a1 >= v9)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = a3;
  v7 = a1;
  v10 = a1 >> 62;
  v6 = v12 & ~(v12 >> 63);
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 < v9)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < v6)
  {
    goto LABEL_40;
  }

  if (v12 > v13)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) == 0 || v6 == v9)
  {
  }

  else
  {
    if (v6 >= v9)
    {
      goto LABEL_43;
    }

    type metadata accessor for SCROBrailleUICaptionableBrailleLine(a1);

    v14 = v6;
    do
    {
      v15 = v14 + 1;
      sub_264982A04();
      v14 = v15;
    }

    while (v9 != v15);
  }

  if (v10)
  {
    v8 = sub_264982A54();
    v10 = v16;
    v11 = v17;
    v9 = v18;

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v9 = (2 * v9) | 1;
    v11 = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_264982AB4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v9 >> 1, v11))
  {
    goto LABEL_44;
  }

  if (v21 != (v9 >> 1) - v11)
  {
    goto LABEL_45;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_27;
  }

  for (i = MEMORY[0x277D84F90]; ; i = sub_264969CA4(v8, v10, v11, v9))
  {
    swift_unknownObjectRelease();
LABEL_27:
    *&v4[OBJC_IVAR___SCROBrailleUIVisualRepresentation_lines] = i;
    if (!__OFSUB__(v5, v6))
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_unknownObjectRelease_n();
LABEL_19:
    ;
  }

  *&v4[OBJC_IVAR___SCROBrailleUIVisualRepresentation_focusedIndex] = v5 - v6;
  v4[OBJC_IVAR___SCROBrailleUIVisualRepresentation_isList] = v3 & 1;
  v24.receiver = v4;
  v24.super_class = SCROBrailleUIVisualRepresentation;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t SCROBrailleUIVisualRepresentation.dictionaryForUIMessage.getter()
{
  sub_264969D84(MEMORY[0x277D84F90]);
  *&v36 = 0x7473694C7369;
  *(&v36 + 1) = 0xE600000000000000;
  v1 = MEMORY[0x277D837D0];
  sub_2649829D4();
  v2 = *(v0 + OBJC_IVAR___SCROBrailleUIVisualRepresentation_isList);
  v37 = MEMORY[0x277D839B0];
  LOBYTE(v36) = v2;
  sub_264969EA0(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_264969870(v35, &v38, isUniquelyReferenced_nonNull_native);
  sub_264969EB0(&v38);
  strcpy(&v36, "focusedIndex");
  BYTE13(v36) = 0;
  HIWORD(v36) = -5120;
  sub_2649829D4();
  v4 = *(v0 + OBJC_IVAR___SCROBrailleUIVisualRepresentation_focusedIndex);
  v37 = MEMORY[0x277D83B88];
  *&v36 = v4;
  sub_264969EA0(&v36, v35);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_264969870(v35, &v38, v5);
  sub_264969EB0(&v38);
  v6 = *(v0 + OBJC_IVAR___SCROBrailleUIVisualRepresentation_lines);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v9 = MEMORY[0x277D84F90];
LABEL_20:
    *&v36 = 0x73656E696CLL;
    *(&v36 + 1) = 0xE500000000000000;
    sub_2649829D4();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C20, &qword_26498C800);
    *&v36 = v9;
    sub_264969EA0(&v36, v35);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_264969870(v35, &v38, v30);
    sub_264969EB0(&v38);
    v31 = sub_264982734();

    return v31;
  }

  if (v6 < 0)
  {
    v28 = *(v0 + OBJC_IVAR___SCROBrailleUIVisualRepresentation_lines);
  }

  v29 = *(v0 + OBJC_IVAR___SCROBrailleUIVisualRepresentation_lines);
  result = sub_264982A44();
  v6 = v29;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (result >= 1)
  {
    v8 = 0;
    v33 = v6 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    v34 = v6;
    v32 = result;
    do
    {
      if (v33)
      {
        v10 = MEMORY[0x266745520](v8);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C08, &qword_26498C7F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26498C7E0;
      v38 = 0x656C6C69617262;
      v39 = 0xE700000000000000;
      sub_2649829D4();
      v13 = [v11 braille];
      v14 = sub_264982784();
      v16 = v15;

      *(inited + 96) = v1;
      *(inited + 72) = v14;
      *(inited + 80) = v16;
      v38 = 0xD000000000000018;
      v39 = 0x8000000264991B90;
      sub_2649829D4();
      v17 = [v11 selection];
      v18 = MEMORY[0x277D83B88];
      *(inited + 168) = MEMORY[0x277D83B88];
      *(inited + 144) = v17;
      v38 = 0xD000000000000016;
      v39 = 0x8000000264991BB0;
      sub_2649829D4();
      [v11 selection];
      *(inited + 240) = v18;
      *(inited + 216) = v19;
      v38 = 0x6E6F6974706163;
      v39 = 0xE700000000000000;
      sub_2649829D4();
      v20 = [v11 caption];
      v21 = sub_264982784();
      v23 = v22;

      *(inited + 312) = v1;
      *(inited + 288) = v21;
      *(inited + 296) = v23;
      v38 = 0x4C4D6874616DLL;
      v39 = 0xE600000000000000;
      sub_2649829D4();
      v24 = [v11 mathML];
      *(inited + 384) = sub_264969F80(0, &qword_27FF86C10, 0x277D82BB8);
      if (!v24)
      {
        v24 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      *(inited + 360) = v24;
      v25 = sub_264969D84(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C18, &qword_26498C7F8);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_264969484(0, v9[2] + 1, 1, v9);
      }

      v27 = v9[2];
      v26 = v9[3];
      if (v27 >= v26 >> 1)
      {
        v9 = sub_264969484((v26 > 1), v27 + 1, 1, v9);
      }

      ++v8;

      v9[2] = v27 + 1;
      v9[v27 + 4] = v25;
      v6 = v34;
    }

    while (v32 != v8);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_264969398()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_264969440(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2649829B4();

  return sub_264969A38(a1, v5);
}

void *sub_264969484(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C30, &qword_26498C810);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C38, &qword_26498C818);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2649695B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C40, &unk_26498C820);
  result = sub_264982A74();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_264969EA0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_264969FCC(v24, &v38);
        sub_26496A074(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2649829B4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_264969EA0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_264969870(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_264969440(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_264969B00();
      goto LABEL_7;
    }

    sub_2649695B8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_264969440(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_264969FCC(a2, v22);
      return sub_2649699BC(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_264982AC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_264969EA0(a1, v17);
}

_OWORD *sub_2649699BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_264969EA0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_264969A38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264969FCC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667454D0](v9, a1);
      sub_264969EB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_264969B00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C40, &unk_26498C820);
  v2 = *v0;
  v3 = sub_264982A64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_264969FCC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_26496A074(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_264969EA0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

int64_t sub_264969CA4(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (!__OFSUB__(a4 >> 1, a3))
  {
    if (!v5)
    {
      return MEMORY[0x277D84F90];
    }

    if (v5 < 1)
    {
      v7 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for SCROBrailleUICaptionableBrailleLine(result);
        swift_arrayInitWithCopy();
        return v7;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
      v7 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v7);
      v8 = result - 32;
      if (result < 32)
      {
        v8 = result - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v8 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_264969D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C40, &unk_26498C820);
    v3 = sub_264982A84();
    v4 = a1 + 32;

    while (1)
    {
      sub_26496A0D0(v4, v13);
      result = sub_264969440(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_264969EA0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_264969EA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264969F80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26496A074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26496A0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C18, &qword_26498C7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26496A1BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000002649922C0 == a2)
  {
    return 1;
  }

  else
  {
    return sub_264982AA4();
  }
}

uint64_t sub_26496A278(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000264992050 == a2)
  {
    return 1;
  }

  else
  {
    return sub_264982AA4();
  }
}

uint64_t sub_26496A334(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002649920F0 == a2)
  {
    return 1;
  }

  else
  {
    return sub_264982AA4();
  }
}

id sub_26496A3F0(uint64_t a1, uint64_t a2)
{
  v5 = 15;
  v6 = &off_28763C280;
  while (--v5)
  {
    if (*(v6 - 1) != a1 || *v6 != a2)
    {
      v6 += 2;
      if ((sub_264982AA4() & 1) == 0)
      {
        continue;
      }
    }

    return 0;
  }

  if (qword_27FF87348 != -1)
  {
    swift_once();
  }

  v9 = qword_27FF87350;
  if (!*(qword_27FF87350 + 16) || (v10 = sub_26496A734(a1, a2), (v11 & 1) == 0))
  {
    if (a1 == 0xD000000000000019 && 0x80000002649923A0 == a2 || (sub_264982AA4() & 1) != 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v14 = OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectLeftPressTime;
      v15 = OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectLeftDoublePressed;
      if (Current - *(v2 + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectLeftPressTime) < 0.5)
      {
        v16 = *(v2 + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectLeftDoublePressed) == 0;
        v17 = 15;
        v18 = 17;
LABEL_19:
        if (v16)
        {
          v12 = v17;
        }

        else
        {
          v12 = v18;
        }

        v19 = 1;
        goto LABEL_24;
      }

      v19 = 0;
      v12 = 13;
    }

    else
    {
      if ((a1 != 0xD00000000000001ALL || 0x80000002649923C0 != a2) && (sub_264982AA4() & 1) == 0)
      {
        v12 = 0;
        return [objc_opt_self() eventWithType_];
      }

      Current = CFAbsoluteTimeGetCurrent();
      v14 = OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectRightPressTime;
      v15 = OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectRightDoublePressed;
      if (Current - *(v2 + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_lastSelectRightPressTime) < 0.5)
      {
        v16 = *(v2 + OBJC_IVAR___SCROBrailleUIKeyCommandAdapter_isSelectRightDoublePressed) == 0;
        v17 = 16;
        v18 = 18;
        goto LABEL_19;
      }

      v19 = 0;
      v12 = 14;
    }

LABEL_24:
    *(v2 + v15) = v19;
    *(v2 + v14) = Current;
    return [objc_opt_self() eventWithType_];
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  return [objc_opt_self() eventWithType_];
}

uint64_t sub_26496A688()
{
  v0 = sub_26496A864(&unk_28763C358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C68, &qword_26498C830);
  result = swift_arrayDestroy();
  qword_27FF87350 = v0;
  return result;
}

unint64_t type metadata accessor for SCROBrailleUIKeyCommandAdapter()
{
  result = qword_27FF87358;
  if (!qword_27FF87358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF87358);
  }

  return result;
}

unint64_t sub_26496A734(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264982AE4();
  sub_2649827C4();
  v6 = sub_264982B04();

  return sub_26496A7AC(a1, a2, v6);
}

unint64_t sub_26496A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_264982AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26496A864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C70, &qword_26498C838);
    v3 = sub_264982A84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26496A734(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void type metadata accessor for SCROBrailleUIEventType()
{
  if (!qword_27FF86C78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF86C78);
    }
  }
}

uint64_t sub_26496A9E8(char a1)
{
  sub_264982AE4();
  MEMORY[0x266745600](a1 & 1);
  return sub_264982B04();
}

uint64_t sub_26496AA48()
{
  v1 = *v0;
  sub_264982AE4();
  MEMORY[0x266745600](v1);
  return sub_264982B04();
}

uint64_t sub_26496AABC()
{
  v1 = *v0;
  sub_264982AE4();
  MEMORY[0x266745600](v1);
  return sub_264982B04();
}

id sub_26496AB00()
{
  result = [objc_allocWithZone(type metadata accessor for BRUILiveCaptionsCallManager()) init];
  qword_27FF86E78 = result;
  return result;
}

id sub_26496AB34()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_26496AB68()
{
  if (qword_27FF87360 != -1)
  {
    swift_once();
  }

  return &qword_27FF86E78;
}

id sub_26496ABB8()
{
  if (qword_27FF87360 != -1)
  {
    swift_once();
  }

  v0 = qword_27FF86E78;

  return v0;
}

uint64_t sub_26496AC78()
{
  v16 = sub_264982944();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16, v2, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264982934();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8, v9);
  v10 = sub_264982714();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12, v13);
  v15[1] = sub_264969F80(0, &qword_27FF86C80, 0x277D85C78);
  sub_264982704();
  v17 = MEMORY[0x277D84F90];
  sub_26496DEF0(&qword_27FF86C88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C90, &qword_26498C880);
  sub_26496DF38(&qword_27FF86C98, &qword_27FF86C90, &qword_26498C880);
  sub_2649829A4();
  (*(v0 + 104))(v5, *MEMORY[0x277D85268], v16);
  return sub_264982984();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26496AF4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649826C4();

  return v1;
}

uint64_t sub_26496AFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649826C4();

  *a2 = v5;
  return result;
}

uint64_t sub_26496B040(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2649826D4();
}

uint64_t sub_26496B0B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2649826D4();
}

void (*sub_26496B120(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2649826B4();
  return sub_26496B1C4;
}

void sub_26496B1C4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26496B250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CA8, &qword_26498C8D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6);
  (*(v3 + 16))(&v9 - v7, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CA0, &qword_26498C8D0);
  sub_2649826A4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_26496B388(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CA8, &qword_26498C8D8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager__currentCallEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CA0, &qword_26498C8D0);
  sub_264982694();
  swift_endAccess();
  return sub_26496B4F8;
}

void sub_26496B4F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_2649826A4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_2649826A4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_26496B660()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_26496B6A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CB0, &qword_26498C8E0);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2, v4, v5);
  v44 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CA0, &qword_26498C8D0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7, v9, v10);
  v41 = v38 - v11;
  v40 = sub_264982944();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40, v14, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264982934();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20, v21);
  v22 = sub_264982714();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24, v25);
  *&v0[OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter] = 0;
  v39 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callQueue;
  v26 = sub_264969F80(0, &qword_27FF86C80, 0x277D85C78);
  v38[0] = "VOTEventCommandSelectRight";
  v38[1] = v26;
  sub_264982704();
  v49 = MEMORY[0x277D84F90];
  sub_26496DEF0(&qword_27FF86C88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C90, &qword_26498C880);
  sub_26496DF38(&qword_27FF86C98, &qword_27FF86C90, &qword_26498C880);
  sub_2649829A4();
  (*(v12 + 104))(v17, *MEMORY[0x277D85268], v40);
  *&v0[v39] = sub_264982984();
  v27 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager__currentCallEvent;
  LOBYTE(v49) = 1;
  v28 = v41;
  sub_264982684();
  (*(v42 + 32))(&v1[v27], v28, v43);
  v29 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers;
  v30 = objc_opt_self();
  *&v1[v29] = [v30 weakObjectsHashTable];
  v31 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_newObservers;
  *&v1[v31] = [v30 weakObjectsHashTable];
  v32 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager__currentCallCount;
  v49 = 0;
  v33 = v44;
  sub_264982684();
  v34 = v46;
  v35 = *(v45 + 32);
  v35(&v1[v32], v33, v46);
  v36 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager__currentVideoCallCount;
  v49 = 0;
  sub_264982684();
  v35(&v1[v36], v33, v34);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  return objc_msgSendSuper2(&v48, sel_init);
}

id sub_26496BBA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers;
  result = [*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers) containsObject_];
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter))
    {
      return result;
    }

    goto LABEL_8;
  }

  [*(v1 + v3) addObject_];
  [*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_newObservers) addObject_];
  if (!*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter))
  {
LABEL_8:

    return sub_26496BC98();
  }

  return sub_26496BEAC(0x100000000);
}

uint64_t sub_26496BC98()
{
  v1 = v0;
  v2 = sub_264982664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264982554();
  v9 = sub_264982644();
  v10 = sub_264982924();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26490B000, v9, v10, "Will begin monitoring for calls", v11, 2u);
    MEMORY[0x266746840](v11, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  v12 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callQueue;
  v13 = [objc_allocWithZone(MEMORY[0x277D6EDF0]) initWithQueue_];
  v14 = *(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter);
  *(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter) = v13;

  v15 = *(v1 + v12);
  MEMORY[0x28223BE20](v16, v17, v18);
  *&v22[-16] = v1;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CC8, &qword_26498C8E8);
  sub_264982964();

  v22[12] = 1;
  return sub_26496BEAC(0x100000000);
}

uint64_t sub_26496BEAC(uint64_t a1)
{
  v3 = sub_2649826E4();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_264982714();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v22, v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = a1;
  *(v16 + 28) = BYTE4(a1) & 1;
  aBlock[4] = sub_26496DECC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26496E610;
  aBlock[3] = &block_descriptor_22;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = v1;
  sub_2649826F4();
  v24 = MEMORY[0x277D84F90];
  sub_26496DEF0(&qword_27FF86D08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D10, &qword_26498CAA8);
  sub_26496DF38(&qword_27FF86D18, &qword_27FF86D10, &qword_26498CAA8);
  sub_2649829A4();
  MEMORY[0x266745480](0, v14, v8, v17);
  _Block_release(v17);

  (*(v23 + 8))(v8, v3);
  (*(v9 + 8))(v14, v22);
}

void sub_26496C184(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers;
  [*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers) removeObject_];
  [*(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_newObservers) removeObject_];
  if (![*(v1 + v3) count])
  {

    sub_26496C214();
  }
}

void sub_26496C214()
{
  v1 = v0;
  v2 = sub_264982664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982554();
  v9 = sub_264982644();
  v10 = sub_264982924();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26490B000, v9, v10, "Will end monitoring calls", v11, 2u);
    MEMORY[0x266746840](v11, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];

  v13 = *(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter);
  *(v1 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter) = 0;
}

BOOL sub_26496C3DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649826C4();

  return v1 > 0;
}

uint64_t sub_26496C464()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649826C4();

  return v1;
}

uint64_t sub_26496C534(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CD0, &qword_26498C980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8);
  (*(v5 + 16))(&v12 - v9, a1, v4);
  v10 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CB0, &qword_26498C8E0);
  sub_2649826A4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_26496C680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649826C4();

  *a2 = v5;
  return result;
}

uint64_t sub_26496C710(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2649826D4();
}

uint64_t sub_26496C790()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2649826D4();
}

uint64_t sub_26496C814(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_264982694();
  return swift_endAccess();
}

void sub_26496C898(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_26496DDC4;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_26496E610;
    v7[3] = &block_descriptor;
    v5 = _Block_copy(v7);
    v6 = v3;

    [v6 registerWithCompletionHandler_];
    _Block_release(v5);
  }

  *a1 = v3 == 0;
}

uint64_t sub_26496C9B4(char *a1, uint64_t a2)
{
  v4 = sub_2649826E4();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4, v6, v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_264982714();
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v43, v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264982664();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter;
  v22 = *&a1[OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_callCenter];
  if (v22)
  {
    v23 = [v22 currentCallCount];
    v24 = *&a1[v21];
    if (v24)
    {
      v25 = [v24 currentVideoCallCount];
      goto LABEL_6;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = 0;
LABEL_6:
  sub_264982554();
  v26 = sub_264982644();
  v27 = sub_264982924();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v13;
    v29 = v23;
    v30 = v28;
    *v28 = 134218496;
    *(v28 + 4) = v29;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v25;
    *(v28 + 22) = 1024;
    if ((a2 & 0x100000000) != 0)
    {
      v31 = -1;
    }

    else
    {
      v31 = a2;
    }

    *(v28 + 24) = v31;
    _os_log_impl(&dword_26490B000, v26, v27, "currentCallCount=%ld currentVideoCallCount=%ld status=%d", v28, 0x1Cu);
    v32 = v30;
    v23 = v29;
    v13 = v40;
    MEMORY[0x266746840](v32, -1, -1);
  }

  (*(v15 + 8))(v20, v14);
  sub_264969F80(0, &qword_27FF86C80, 0x277D85C78);
  v33 = sub_264982954();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v23;
  *(v34 + 32) = v25;
  *(v34 + 40) = a2;
  *(v34 + 44) = BYTE4(a2) & 1;
  aBlock[4] = sub_26496DF8C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26496E610;
  aBlock[3] = &block_descriptor_28;
  v35 = _Block_copy(aBlock);
  v36 = a1;

  sub_2649826F4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26496DEF0(&qword_27FF86D08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D10, &qword_26498CAA8);
  sub_26496DF38(&qword_27FF86D18, &qword_27FF86D10, &qword_26498CAA8);
  v37 = v42;
  v38 = v45;
  sub_2649829A4();
  MEMORY[0x266745480](0, v13, v37, v35);
  _Block_release(v35);

  (*(v44 + 8))(v37, v38);
  return (*(v41 + 8))(v13, v43);
}

uint64_t sub_26496CE38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26496CE7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264982374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264982664();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11, v13, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982554();
  (*(v5 + 16))(v10, a1, v4);
  v17 = sub_264982644();
  v18 = sub_264982924();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = a1;
    v22 = v21;
    v35[0] = v21;
    *v20 = 136315138;
    v23 = sub_264982344();
    v32 = v2;
    v25 = v24;
    (*(v5 + 8))(v10, v4);
    v26 = sub_26496D81C(v23, v25, v35);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26490B000, v17, v18, "Did receive call status change: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266746840](v22, -1, -1);
    MEMORY[0x266746840](v20, -1, -1);

    (*(v33 + 8))(v16, v30);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    (*(v33 + 8))(v16, v11);
  }

  sub_264982364();
  if (v35[3])
  {
    sub_264969F80(0, &qword_27FF86CF8, 0x277D6EDD8);
    if (swift_dynamicCast())
    {
      v27 = v34;
      v28 = [v34 status];
      LOBYTE(v35[0]) = 0;
      sub_26496BEAC(v28);
    }
  }

  else
  {
    sub_26496D7B4(v35);
  }
}

id sub_26496D2A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26496D418@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_264982674();
  *a1 = result;
  return result;
}

unint64_t sub_26496D45C()
{
  result = qword_27FF86CD8;
  if (!qword_27FF86CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF86CD8);
  }

  return result;
}

uint64_t type metadata accessor for BRUILiveCaptionsCallManager()
{
  result = qword_27FF87540;
  if (!qword_27FF87540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26496D510()
{
  sub_26496E5B8(319, &qword_27FF86CE0, &type metadata for BRUILiveCaptionsCallManager.Event, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26496E5B8(319, &qword_27FF86CE8, MEMORY[0x277D83B88], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for BRUILiveCaptionsCallManager.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BRUILiveCaptionsCallManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26496D7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86CF0, &qword_26498CA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26496D81C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26496D8E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26496A074(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26496D8E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26496D9F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_264982A34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26496D9F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26496DA40(a1, a2);
  sub_26496DB70(&unk_28763C560);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26496DA40(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26496DC5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264982A34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264982824();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26496DC5C(v10, 0);
        result = sub_2649829E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26496DB70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26496DCD0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26496DC5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D00, &qword_26498CAA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26496DCD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D00, &qword_26498CAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_26496DDC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    [v3 addObserver:v1 selector:sel_handleCallStatusChanged_ name:*MEMORY[0x277D6EFF8] object:0];

    v4 = [v2 defaultCenter];
    [v4 addObserver:v1 selector:sel_handleCallStatusChanged_ name:*MEMORY[0x277D6F040] object:0];
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26496DEF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26496DF38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_26496DF8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 44);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v1;
  sub_2649826D4();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v3;
  v7 = v6;
  result = sub_2649826D4();
  if (v5)
  {
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2649826C4();

    if (v29 > 0)
    {
      v17 = [*(v7 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_newObservers) allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D20, &qword_26498CAB0);
      v11 = sub_264982874();

      if (v11 >> 62)
      {
        goto LABEL_46;
      }

      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_20;
      }

LABEL_47:
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2649826C4();
    }

    return [*(v7 + OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_newObservers) removeAllObjects];
  }

  if (v4 == 6)
  {
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v29) = 1;
    v23 = v7;
    sub_2649826D4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2649826C4();

    if (v29)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2649826C4();

    v24 = [*&v23[OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D20, &qword_26498CAB0);
    v7 = sub_264982874();

    if (v7 >> 62)
    {
      v11 = sub_264982A44();
      if (!v11)
      {
      }
    }

    else
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
      }
    }

    for (i = 4; ; ++i)
    {
      v26 = i - 4;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x266745520](i - 4, v7);
        v15 = __OFADD__(v26, 1);
        v28 = i - 3;
        if (v15)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v26 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v27 = *(v7 + 8 * i);
        swift_unknownObjectRetain();
        v15 = __OFADD__(v26, 1);
        v28 = i - 3;
        if (v15)
        {
LABEL_42:
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v18 = sub_264982A44();
            if (!v18)
            {
              goto LABEL_47;
            }

LABEL_20:
            v19 = 4;
LABEL_22:
            v20 = v19 - 4;
            if ((v11 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x266745520](v19 - 4, v11);
              v15 = __OFADD__(v20, 1);
              v22 = v19 - 3;
              if (v15)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }

            if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              continue;
            }

            break;
          }

          v21 = *(v11 + 8 * v19);
          swift_unknownObjectRetain();
          v15 = __OFADD__(v20, 1);
          v22 = v19 - 3;
          if (!v15)
          {
LABEL_25:
            if ([v21 respondsToSelector_])
            {
              [v21 callConnected];
            }

            swift_unknownObjectRelease();
            ++v19;
            if (v22 == v18)
            {
              goto LABEL_47;
            }

            goto LABEL_22;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if ([v27 respondsToSelector_])
      {
        [v27 allActiveCallsEnded];
      }

      swift_unknownObjectRelease();
      if (v28 == v11)
      {
      }
    }
  }

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v29) = 0;
    v9 = v7;
    sub_2649826D4();
    v10 = [*&v9[OBJC_IVAR____TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D20, &qword_26498CAB0);
    v7 = sub_264982874();

    if (v7 >> 62)
    {
      v11 = sub_264982A44();
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_6:
        v12 = 4;
        do
        {
          v13 = v12 - 4;
          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x266745520](v12 - 4, v7);
            v15 = __OFADD__(v13, 1);
            v16 = v12 - 3;
            if (v15)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v14 = *(v7 + 8 * v12);
            swift_unknownObjectRetain();
            v15 = __OFADD__(v13, 1);
            v16 = v12 - 3;
            if (v15)
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          if ([v14 respondsToSelector_])
          {
            [v14 callConnected];
          }

          swift_unknownObjectRelease();
          ++v12;
        }

        while (v16 != v11);
      }
    }
  }

  return result;
}

void sub_26496E5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26496E624@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for BRUINemethParserStack();
  inited = swift_initStackObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26498CAD0;
  v23 = 6;
  v24 = 0u;
  v25 = 0u;
  v26 = 3;
  type metadata accessor for BRUINemethParserStack.Element();
  v7 = swift_allocObject();
  sub_264970314(&v23, MEMORY[0x277D84F90]);
  *(v6 + 32) = v7;
  *(inited + 16) = v6;
  v8 = (inited + 16);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 4 * v9;
    do
    {
      v11 = sub_264982854();
      v12 = MEMORY[0x2667452B0](v11);
      v14 = v13;

      sub_26496EA18(v12, v14);
    }

    while (v10 > sub_2649827F4() >> 14);
  }

  swift_beginAccess();
  while (1)
  {
    v15 = *v8;
    if (*v8 >> 62)
    {
      break;
    }

    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= 1)
    {
      goto LABEL_14;
    }

LABEL_9:
    sub_26496F710();
  }

  if (v15 < 0)
  {
    v17 = *v8;
  }

  if (sub_264982A44() >= 2)
  {
    goto LABEL_9;
  }

  result = sub_264982A44();
LABEL_14:
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (__OFSUB__(result--, 1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    v19 = MEMORY[0x266745520](result, v15);
LABEL_20:
    swift_beginAccess();
    v20 = *(v19 + 72);

    v21 = nullsub_1(v20);
    a3[3] = &type metadata for BRUILinearMathString;
    a3[4] = &off_28763D190;

    *a3 = v21;
    return result;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v15 + 8 * result + 32);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_26496E8B0()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26498CAD0;
  v4 = 6;
  v5 = 0u;
  v6 = 0u;
  v7 = 3;
  type metadata accessor for BRUINemethParserStack.Element();
  v2 = swift_allocObject();
  sub_264970314(&v4, MEMORY[0x277D84F90]);
  *(v1 + 32) = v2;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_26496E96C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86C28, &qword_26498CB20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26498CAD0;
  v5 = 6;
  v6 = 0u;
  v7 = 0u;
  v8 = 3;
  type metadata accessor for BRUINemethParserStack.Element();
  v3 = swift_allocObject();
  sub_264970314(&v5, MEMORY[0x277D84F90]);
  *(v2 + 32) = v3;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_26496EA18(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v7 < 0)
  {
    v34 = *(v2 + 16);
  }

  v8 = sub_264982A44();
  if (!v8)
  {
    goto LABEL_68;
  }

LABEL_3:
  v3 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 8 * v3 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_73:
    v35 = (*(v3 + 56) + 16 * v2);
    v37 = *v35;
    v36 = v35[1];

    v38 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v38 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v55 >> 14 < 4 * v38)
    {
      if (sub_264982844() == v4 + 3211264 && v39 == 0xA300000000000000)
      {

        goto LABEL_90;
      }

      a2 = v39;
      v42 = sub_264982AA4();

      if (v42)
      {
LABEL_90:
        v43 = *(v53 + 16);
        if (!(v43 >> 62))
        {
          result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_92;
          }

          goto LABEL_132;
        }

LABEL_131:
        result = sub_264982A44();
        if (result)
        {
LABEL_92:
          a2 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            if ((v43 & 0xC000000000000001) == 0)
            {
              if ((a2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_136;
              }

              if (a2 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              a2 = *(v43 + 8 * a2 + 32);

LABEL_97:
              v60 = &type metadata for BRUIMathCharacter;
              v61 = &off_28763D170;
              *&v59 = v37;
              *(&v59 + 1) = v36;
              sub_26497F0A0(&v59, v57);
              swift_beginAccess();
              v36 = *(a2 + 72);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a2 + 72) = v36;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_98:
                v46 = v36[2];
                v45 = v36[3];
                if (v46 >= v45 >> 1)
                {
                  v36 = sub_264971CB8((v45 > 1), v46 + 1, 1, v36);
                  *(a2 + 72) = v36;
                }

                v60 = &type metadata for BRUIOverlinedMathString;
                v61 = &off_28763D1F0;
                *&v59 = swift_allocObject();
                sub_264971E18(v57, v59 + 16);
                v36[2] = v46 + 1;
                sub_264971E00(&v59, &v36[5 * v46 + 4]);
                sub_264971E74(v57);
                *(a2 + 72) = v36;
                swift_endAccess();

                return v54;
              }

LABEL_136:
              v36 = sub_264971CB8(0, v36[2] + 1, 1, v36);
              *(a2 + 72) = v36;
              goto LABEL_98;
            }

LABEL_134:

            a2 = MEMORY[0x266745520](a2, v43);

            goto LABEL_97;
          }

LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }
    }

    v43 = *(v53 + 16);
    if (v43 >> 62)
    {
      if (v43 < 0)
      {
        v52 = *(v53 + 16);
      }

      v47 = sub_264982A44();
      if (v47)
      {
LABEL_103:
        a2 = v47 - 1;
        if (!__OFSUB__(v47, 1))
        {
          if ((v43 & 0xC000000000000001) == 0)
          {
            if ((a2 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_129;
            }

            if (a2 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_131;
            }

            a2 = *(v43 + 8 * a2 + 32);

LABEL_108:
            swift_beginAccess();
            v43 = *(a2 + 72);
            v48 = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 72) = v43;
            if (v48)
            {
LABEL_109:
              v50 = *(v43 + 16);
              v49 = *(v43 + 24);
              if (v50 >= v49 >> 1)
              {
                v43 = sub_264971CB8((v49 > 1), v50 + 1, 1, v43);
              }

              *&v57[24] = &type metadata for BRUIMathCharacter;
              *&v57[32] = &off_28763D170;
              *v57 = v37;
              *&v57[8] = v36;
              *(v43 + 16) = v50 + 1;
              sub_264971E00(v57, v43 + 40 * v50 + 32);
              *(a2 + 72) = v43;
              swift_endAccess();

              return v54;
            }

LABEL_129:
            v43 = sub_264971CB8(0, *(v43 + 16) + 1, 1, v43);
            *(a2 + 72) = v43;
            goto LABEL_109;
          }

LABEL_127:

          a2 = MEMORY[0x266745520](a2, v43);

          goto LABEL_108;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    else
    {
      v47 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_103;
      }
    }

    __break(1u);
    goto LABEL_126;
  }

LABEL_70:

  v9 = MEMORY[0x266745520](v3, v7);

LABEL_8:
  swift_beginAccess();
  v10 = *(v9 + 64);

  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_13:

    if (sub_264982834())
    {
      memset(v57, 0, sizeof(v57));
LABEL_15:
      v58 = 3;
      sub_26496F568(v57);
      sub_264971EC8(v57);
      return 2;
    }

    v4 = 8429794;
    if (sub_264982834())
    {
      v16 = 1;
    }

    else
    {
      if ((sub_264982834() & 1) == 0)
      {
        if (sub_264982834())
        {
          *v57 = 3;
          memset(&v57[8], 0, 32);
          v58 = 3;
          goto LABEL_38;
        }

        if (sub_264982834())
        {
          v24 = 4;
        }

        else
        {
          if (sub_264982834())
          {
            v16 = 4;
            goto LABEL_37;
          }

          if ((sub_264982834() & 1) == 0)
          {
            if ((sub_264982834() & 1) == 0)
            {
LABEL_52:
              if (qword_27FF87550 != -1)
              {
                goto LABEL_121;
              }

              while (1)
              {
                v25 = qword_27FF87558;
                v26 = *(qword_27FF87558 + 16);
                if (!v26)
                {
                  return 1;
                }

                v53 = v2;
                v27 = 0;
                v28 = (qword_27FF87558 + 40);
                v56 = *(qword_27FF87558 + 16);
                while (v27 < *(v25 + 16))
                {
                  v3 = *(v28 - 1);
                  v2 = *v28;

                  if (sub_2649827D4() < v2)
                  {
                  }

                  else
                  {
                    v54 = v2;
                    v55 = sub_2649827F4();
                    v29 = sub_264982854();
                    v2 = MEMORY[0x2667452B0](v29);
                    v31 = v30;

                    if (*(v3 + 16))
                    {
                      v2 = sub_26496A734(v2, v31);
                      v33 = v32;

                      if (v33)
                      {
                        goto LABEL_73;
                      }
                    }

                    else
                    {
                    }

                    v26 = v56;
                  }

                  ++v27;
                  v28 += 2;
                  result = 1;
                  if (v26 == v27)
                  {
                    return result;
                  }
                }

LABEL_120:
                __break(1u);
LABEL_121:
                swift_once();
              }
            }

            v16 = 5;
            goto LABEL_37;
          }

          v24 = 5;
        }

        *v57 = v24;
        memset(&v57[8], 0, 32);
        goto LABEL_15;
      }

      v16 = 2;
    }

LABEL_37:
    *v57 = v16;
    memset(&v57[8], 0, 32);
    v58 = 3;
LABEL_38:
    sub_26496F568(v57);
    sub_264971EC8(v57);
    return 1;
  }

  v12 = 0;
  v4 = v10 + 40;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v14 = *(v4 - 8);
    v13 = *v4;

    if (sub_264982834())
    {
      break;
    }

    ++v12;
    v4 += 16;
    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  v17 = *(v2 + 16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v40 = *(v2 + 16);
    }

    v18 = sub_264982A44();
    if (v18 < 2)
    {
      goto LABEL_82;
    }

LABEL_20:
    a2 = *(v2 + 16);
    if (a2 >> 62)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        v51 = *(v2 + 16);
      }

      v18 = sub_264982A44();
      a1 = v18;
      if (v18)
      {
LABEL_22:

        v18 = a1 - 1;
        if (!__OFSUB__(a1, 1))
        {
          if ((a2 & 0xC000000000000001) == 0)
          {
            if (v18 < 0)
            {
              __break(1u);
            }

            else if (v18 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v19 = *(a2 + 8 * v18 + 32);

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_120;
          }

LABEL_117:
          v19 = MEMORY[0x266745520](v18, a2);
LABEL_27:

          swift_beginAccess();
          v20 = *(v19 + 64);

          v21 = (v20 + 40);
          v22 = *(v20 + 16) + 1;
          while (--v22)
          {
            if (*(v21 - 1) != v14 || *v21 != v13)
            {
              v21 += 2;
              if ((sub_264982AA4() & 1) == 0)
              {
                continue;
              }
            }

            sub_26496F710();
            goto LABEL_83;
          }

          goto LABEL_82;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 >= 2)
  {
    goto LABEL_20;
  }

LABEL_82:

LABEL_83:
  if (v14 == 8429794 && v13 == 0xA300000000000000 || (sub_264982AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v41 = sub_2649827D4();

    return v41;
  }
}

uint64_t sub_26496F3C4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  while (1)
  {
    v4 = *(v1 + 16);
    if (v4 >> 62)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_8;
    }

LABEL_4:
    sub_26496F710();
  }

  if (v4 < 0)
  {
    v5 = *(v1 + 16);
  }

  if (sub_264982A44() >= 2)
  {
    goto LABEL_4;
  }

LABEL_8:
  v6 = *(v1 + 16);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_264982A44();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:

    v8 = MEMORY[0x266745520](v2, v6);

LABEL_15:
    swift_beginAccess();
    v9 = *(v8 + 72);

    result = nullsub_1(v9);
    a1[3] = &type metadata for BRUILinearMathString;
    a1[4] = &off_28763D190;
    *a1 = result;
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 8 * v2 + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26496F568(uint64_t a1)
{
  v3 = v1;
  sub_264971FE8(a1, v9);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_264982A44();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v6 = MEMORY[0x266745520](v2, v4);

LABEL_8:
    swift_beginAccess();
    v7 = *(v6 + 64);

    type metadata accessor for BRUINemethParserStack.Element();
    swift_allocObject();
    sub_264970314(v9, v7);
    swift_beginAccess();

    MEMORY[0x266745370](v8);
    if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      sub_264982894();
      swift_endAccess();
    }

LABEL_15:
    sub_264982884();
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 8 * v2 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_26496F710()
{
  v2 = v0;
  swift_beginAccess();
  v3 = v0[2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v40 = v0[2];
    }

    result = sub_264982A44();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v5 = v0[2];
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v5 < 0)
  {
    v41 = v0[2];
  }

  if (!sub_264982A44())
  {
    goto LABEL_104;
  }

LABEL_5:
  v0 += 2;
  v6 = sub_2649720B0();
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + 16);
  if (v7 >> 62)
  {
    goto LABEL_112;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    v18 = sub_264982A44();
    if (v18)
    {
      goto LABEL_26;
    }

    goto LABEL_116;
  }

  while (1)
  {
    v6 = sub_264972020(v10);
LABEL_9:
    v11 = v6;
    swift_endAccess();
    swift_beginAccess();
    v12 = *(v11 + 72);

    v0 = nullsub_1(v13);
    sub_264971FE8(v11 + 16, &v52);
    if (v56 >= 2u)
    {
      if (v56 != 2)
      {
        if (v54 | v55 | v52 | v53 | *(&v52 + 1))
        {
          v22 = v54 | v55 | v53 | *(&v52 + 1);
          if (v52 != 1 || v22)
          {
            if (v52 == 2 && !v22)
            {
              v1 = *(v2 + 16);
              if (!(v1 >> 62))
              {
                v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v24)
                {
LABEL_123:
                  __break(1u);
                  goto LABEL_124;
                }

                goto LABEL_48;
              }

LABEL_122:
              v24 = sub_264982A44();
              if (!v24)
              {
                goto LABEL_123;
              }

LABEL_48:
              v2 = v24 - 1;
              if (__OFSUB__(v24, 1))
              {
LABEL_124:
                __break(1u);
                goto LABEL_125;
              }

              if ((v1 & 0xC000000000000001) != 0)
              {
LABEL_125:

                v2 = MEMORY[0x266745520](v2, v1);

LABEL_53:
                v58 = &type metadata for BRUILinearMathString;
                v59 = &off_28763D190;
                *&v57 = v0;
                sub_26497FA30(&v57, &v48);
                swift_beginAccess();
                v0 = *(v2 + 72);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v2 + 72) = v0;
                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_54:
                  v27 = v0[2];
                  v26 = v0[3];
                  if (v27 >= v26 >> 1)
                  {
                    v0 = sub_264971CB8((v26 > 1), v27 + 1, 1, v0);
                    *(v2 + 72) = v0;
                  }

                  v58 = &type metadata for BRUISuperScriptMathString;
                  v59 = &off_28763D1D0;
                  *&v57 = swift_allocObject();
                  sub_2649723A0(&v48, v57 + 16);
                  v0[2] = v27 + 1;
                  sub_264971E00(&v57, &v0[5 * v27 + 4]);
                  sub_2649723FC(&v48);
                  goto LABEL_21;
                }

LABEL_127:
                v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                *(v2 + 72) = v0;
                goto LABEL_54;
              }

              if ((v2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_127;
              }

              if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v2 = *(v1 + 8 * v2 + 32);

                goto LABEL_53;
              }

              __break(1u);
              goto LABEL_129;
            }

            if (v52 == 3 && !v22)
            {
              v1 = *(v2 + 16);
              if (!(v1 >> 62))
              {
                v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v28)
                {
LABEL_130:
                  __break(1u);
                  goto LABEL_131;
                }

                goto LABEL_61;
              }

LABEL_129:
              v28 = sub_264982A44();
              if (!v28)
              {
                goto LABEL_130;
              }

LABEL_61:
              v2 = v28 - 1;
              if (__OFSUB__(v28, 1))
              {
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }

              if ((v1 & 0xC000000000000001) != 0)
              {
LABEL_132:

                v2 = MEMORY[0x266745520](v2, v1);

LABEL_66:
                v58 = &type metadata for BRUILinearMathString;
                v59 = &off_28763D190;
                *&v57 = v0;
                sub_26497F0A0(&v57, &v48);
                swift_beginAccess();
                v0 = *(v2 + 72);
                v29 = swift_isUniquelyReferenced_nonNull_native();
                *(v2 + 72) = v0;
                if (v29)
                {
LABEL_67:
                  v31 = v0[2];
                  v30 = v0[3];
                  if (v31 >= v30 >> 1)
                  {
                    v0 = sub_264971CB8((v30 > 1), v31 + 1, 1, v0);
                    *(v2 + 72) = v0;
                  }

                  v58 = &type metadata for BRUIOverlinedMathString;
                  v59 = &off_28763D1F0;
                  *&v57 = swift_allocObject();
                  sub_264971E18(&v48, v57 + 16);
                  v0[2] = v31 + 1;
                  sub_264971E00(&v57, &v0[5 * v31 + 4]);
                  sub_264971E74(&v48);
                  goto LABEL_21;
                }

LABEL_134:
                v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                *(v2 + 72) = v0;
                goto LABEL_67;
              }

              if ((v2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_134;
              }

              if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v2 = *(v1 + 8 * v2 + 32);

                goto LABEL_66;
              }

              __break(1u);
              goto LABEL_136;
            }

            if (v52 == 4 && !v22)
            {
              v1 = *(v2 + 16);
              if (!(v1 >> 62))
              {
                v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v32)
                {
LABEL_137:
                  __break(1u);
                  goto LABEL_138;
                }

                goto LABEL_74;
              }

LABEL_136:
              v32 = sub_264982A44();
              if (!v32)
              {
                goto LABEL_137;
              }

LABEL_74:
              v2 = v32 - 1;
              if (__OFSUB__(v32, 1))
              {
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              if ((v1 & 0xC000000000000001) != 0)
              {
LABEL_139:

                v2 = MEMORY[0x266745520](v2, v1);

LABEL_79:
                v58 = &type metadata for BRUILinearMathString;
                v59 = &off_28763D190;
                *&v57 = v0;
                v47 = 0;
                v45 = 0u;
                v46 = 0u;
                sub_26497F604(&v57, &v45, &v48);
                swift_beginAccess();
                v0 = *(v2 + 72);
                v33 = swift_isUniquelyReferenced_nonNull_native();
                *(v2 + 72) = v0;
                if (v33)
                {
LABEL_80:
                  v35 = v0[2];
                  v34 = v0[3];
                  if (v35 >= v34 >> 1)
                  {
                    v0 = sub_264971CB8((v34 > 1), v35 + 1, 1, v0);
                    *(v2 + 72) = v0;
                  }

                  v58 = &type metadata for BRUIRadicalMathString;
                  v59 = &off_28763D210;
                  *&v57 = swift_allocObject();
                  sub_2649722F0(&v48, v57 + 16);
                  v0[2] = v35 + 1;
                  sub_264971E00(&v57, &v0[5 * v35 + 4]);
                  sub_26497234C(&v48);
                  goto LABEL_21;
                }

LABEL_141:
                v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
                *(v2 + 72) = v0;
                goto LABEL_80;
              }

              if ((v2 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_141;
              }

              if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v2 = *(v1 + 8 * v2 + 32);

                goto LABEL_79;
              }

              __break(1u);
              goto LABEL_143;
            }

            if (v52 != 5 || v22)
            {
              v1 = *(v2 + 16);
              if (!(v1 >> 62))
              {
                result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!result)
                {
LABEL_144:
                  __break(1u);
                  goto LABEL_145;
                }

LABEL_88:
                v2 = result - 1;
                if (!__OFSUB__(result, 1))
                {
                  if ((v1 & 0xC000000000000001) == 0)
                  {
                    if ((v2 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                      goto LABEL_148;
                    }

                    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return result;
                    }

                    v2 = *(v1 + 8 * v2 + 32);

LABEL_93:
                    swift_beginAccess();
                    v1 = *(v2 + 72);
                    v36 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + 72) = v1;
                    if (v36)
                    {
LABEL_94:
                      v38 = *(v1 + 16);
                      v37 = *(v1 + 24);
                      v39 = v38 + 1;
                      if (v38 >= v37 >> 1)
                      {
                        v43 = sub_264971CB8((v37 > 1), v38 + 1, 1, v1);
                        v39 = v38 + 1;
                        v1 = v43;
                      }

                      v49 = &type metadata for BRUILinearMathString;
                      v50 = &off_28763D190;
                      *&v48 = v0;
                      *(v1 + 16) = v39;
                      sub_264971E00(&v48, v1 + 40 * v38 + 32);
                      *(v2 + 72) = v1;
                      goto LABEL_22;
                    }

LABEL_148:
                    v1 = sub_264971CB8(0, *(v1 + 16) + 1, 1, v1);
                    *(v2 + 72) = v1;
                    goto LABEL_94;
                  }

LABEL_146:

                  v2 = MEMORY[0x266745520](v2, v1);

                  goto LABEL_93;
                }

LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

LABEL_143:
              result = sub_264982A44();
              if (!result)
              {
                goto LABEL_144;
              }

              goto LABEL_88;
            }

            v49 = &type metadata for BRUILinearMathString;
            v50 = &off_28763D190;
            *&v48 = v0;
            v23 = 2;
          }

          else
          {
            v49 = &type metadata for BRUILinearMathString;
            v50 = &off_28763D190;
            *&v48 = v0;
            v23 = 1;
          }

          v51 = v23;
        }

        else
        {
          v49 = &type metadata for BRUILinearMathString;
          v50 = &off_28763D190;
          *&v48 = v0;
          v51 = 0;
        }

        sub_26496F568(&v48);

        return sub_264971EC8(&v48);
      }

      sub_264971E00(&v52, &v57);
      v1 = *(v2 + 16);
      if (v1 >> 62)
      {
        goto LABEL_115;
      }

      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_26:
        v2 = v18 - 1;
        if (!__OFSUB__(v18, 1))
        {
          if ((v1 & 0xC000000000000001) == 0)
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_120;
            }

            if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v2 = *(v1 + 8 * v2 + 32);

              goto LABEL_31;
            }

            __break(1u);
            goto LABEL_122;
          }

LABEL_118:

          v2 = MEMORY[0x266745520](v2, v1);

LABEL_31:
          *(&v46 + 1) = &type metadata for BRUILinearMathString;
          v47 = &off_28763D190;
          *&v45 = v0;
          sub_26497228C(&v57, v44);
          sub_26497F604(&v45, v44, &v48);
          swift_beginAccess();
          v0 = *(v2 + 72);
          v19 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 72) = v0;
          if (v19)
          {
LABEL_32:
            v21 = v0[2];
            v20 = v0[3];
            if (v21 >= v20 >> 1)
            {
              v0 = sub_264971CB8((v20 > 1), v21 + 1, 1, v0);
              *(v2 + 72) = v0;
            }

            *(&v46 + 1) = &type metadata for BRUIRadicalMathString;
            v47 = &off_28763D210;
            *&v45 = swift_allocObject();
            sub_2649722F0(&v48, v45 + 16);
            v0[2] = v21 + 1;
            sub_264971E00(&v45, &v0[5 * v21 + 4]);
            sub_26497234C(&v48);
            *(v2 + 72) = v0;
            swift_endAccess();

            __swift_destroy_boxed_opaque_existential_0(&v57);
          }

LABEL_120:
          v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
          *(v2 + 72) = v0;
          goto LABEL_32;
        }

LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    sub_264971E00(&v52, &v57);
    v1 = *(v2 + 16);
    if (v1 >> 62)
    {
LABEL_105:
      v14 = sub_264982A44();
      if (!v14)
      {
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:

        v2 = MEMORY[0x266745520](v2, v1);

LABEL_17:
        v54 = &type metadata for BRUILinearMathString;
        v55 = &off_28763D190;
        *&v52 = v0;
        sub_26497EDD4(&v57, &v52, &v48);
        swift_beginAccess();
        v0 = *(v2 + 72);
        v15 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 72) = v0;
        if ((v15 & 1) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_106;
      }
    }

    v2 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_107;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_108;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 8 * v2 + 32);

      goto LABEL_17;
    }

    __break(1u);
LABEL_112:
    v42 = sub_264982A44();
    v9 = __OFSUB__(v42, 1);
    v10 = v42 - 1;
    if (v9)
    {
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_110:
  v0 = sub_264971CB8(0, v0[2] + 1, 1, v0);
  *(v2 + 72) = v0;
LABEL_18:
  v17 = v0[2];
  v16 = v0[3];
  if (v17 >= v16 >> 1)
  {
    v0 = sub_264971CB8((v16 > 1), v17 + 1, 1, v0);
    *(v2 + 72) = v0;
  }

  v54 = &type metadata for BRUIFractionMathString;
  v55 = &off_28763D1B0;
  *&v52 = swift_allocObject();
  sub_264972450(&v48, v52 + 16);
  v0[2] = v17 + 1;
  sub_264971E00(&v52, &v0[5 * v17 + 4]);
  sub_2649724AC(&v48);
LABEL_21:
  *(v2 + 72) = v0;
LABEL_22:
  swift_endAccess();
}

uint64_t sub_264970314(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  sub_264971FE8(a1, v2 + 16);
  *(v2 + 64) = a2;
  v7 = (v2 + 64);
  sub_264971FE8(a1, &v58);
  if (v63 > 1u)
  {
    if (v63 == 2)
    {
      __swift_destroy_boxed_opaque_existential_0(&v58);
LABEL_10:
      swift_beginAccess();
      sub_2649707E4(&unk_28763C768);
LABEL_31:
      swift_endAccess();
      goto LABEL_32;
    }

    if (!(v61 | v62 | v58 | v60 | v59))
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v7 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = sub_264971BAC(0, *(a2 + 2) + 1, 1, a2);
        *v7 = a2;
      }

      v28 = *(a2 + 2);
      v29 = *(a2 + 3);
      v30 = v28 + 1;
      if (v28 >= v29 >> 1)
      {
        v55 = v28 + 1;
        v44 = a2;
        v45 = *(a2 + 2);
        v46 = sub_264971BAC((v29 > 1), v28 + 1, 1, v44);
        v28 = v45;
        v30 = v55;
        a2 = v46;
      }

      *(a2 + 2) = v30;
      v24 = &a2[16 * v28];
      v25 = 0x8CA0E2A0A0E2;
      v26 = 0xA600000000000000;
      goto LABEL_30;
    }

    v19 = v61 | v62 | v60 | v59;
    if (v58 == 1 && !v19)
    {
      swift_beginAccess();
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *v7 = a2;
      if ((v20 & 1) == 0)
      {
        a2 = sub_264971BAC(0, *(a2 + 2) + 1, 1, a2);
        *v7 = a2;
      }

      v21 = *(a2 + 2);
      v22 = *(a2 + 3);
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        v56 = v21 + 1;
        v47 = a2;
        v48 = *(a2 + 2);
        v49 = sub_264971BAC((v22 > 1), v21 + 1, 1, v47);
        v21 = v48;
        v23 = v56;
        a2 = v49;
      }

      *(a2 + 2) = v23;
      v24 = &a2[16 * v21];
      v25 = 9216226;
      v26 = 0xA300000000000000;
LABEL_30:
      *(v24 + 4) = v25;
      *(v24 + 5) = v26;
      *v7 = a2;
      goto LABEL_31;
    }

    if (v58 != 2 || v19)
    {
      if (v58 == 3 && !v19)
      {
        swift_beginAccess();
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *v7 = a2;
        if ((v34 & 1) == 0)
        {
          a2 = sub_264971BAC(0, *(a2 + 2) + 1, 1, a2);
          *v7 = a2;
        }

        v35 = *(a2 + 2);
        v36 = *(a2 + 3);
        v37 = v35 + 1;
        if (v35 >= v36 >> 1)
        {
          v57 = v35 + 1;
          v50 = a2;
          v51 = *(a2 + 2);
          v52 = sub_264971BAC((v36 > 1), v35 + 1, 1, v50);
          v35 = v51;
          v37 = v57;
          a2 = v52;
        }

        *(a2 + 2) = v37;
        v24 = &a2[16 * v35];
        v25 = 0xA0E2B1A0E2A3A0E2;
        v26 = 0xA9000000000000BBLL;
        goto LABEL_30;
      }

      if (v58 == 4 && !v19)
      {
        goto LABEL_10;
      }

      if (v58 != 5 || v19)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      v33 = &unk_28763C7A8;
    }

    else
    {
      swift_beginAccess();
      v33 = &unk_28763C728;
    }

    sub_2649707E4(v33);
    goto LABEL_31;
  }

  if (v63)
  {
    swift_beginAccess();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = a2;
    if ((v15 & 1) == 0)
    {
      a2 = sub_264971BAC(0, *(a2 + 2) + 1, 1, a2);
      *v7 = a2;
    }

    v16 = *(a2 + 2);
    v17 = *(a2 + 3);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v54 = v16 + 1;
      v41 = a2;
      v42 = *(a2 + 2);
      v43 = sub_264971BAC((v17 > 1), v16 + 1, 1, v41);
      v16 = v42;
      v18 = v54;
      a2 = v43;
    }

    *(a2 + 2) = v18;
    v12 = &a2[16 * v16];
    v13 = 12361954;
    v14 = 0xA300000000000000;
  }

  else
  {
    swift_beginAccess();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = a2;
    if ((v8 & 1) == 0)
    {
      a2 = sub_264971BAC(0, *(a2 + 2) + 1, 1, a2);
      *v7 = a2;
    }

    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v53 = v9 + 1;
      v38 = a2;
      v39 = *(a2 + 2);
      v40 = sub_264971BAC((v10 > 1), v9 + 1, 1, v38);
      v9 = v39;
      v11 = v53;
      a2 = v40;
    }

    *(a2 + 2) = v11;
    v12 = &a2[16 * v9];
    v13 = 0xBCA0E2A0A0E2;
    v14 = 0xA600000000000000;
  }

  *(v12 + 4) = v13;
  *(v12 + 5) = v14;
  *v7 = a2;
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(&v58);
LABEL_32:
  sub_264971EC8(a1);
  swift_beginAccess();
  v31 = *(v3 + 72);
  *(v3 + 72) = v6;

  return v3;
}

uint64_t sub_2649707E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_264971BAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2649708D8()
{
  sub_264971EC8(v0 + 16);
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_264970920()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_264970940()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_264970978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D40, &qword_26498CC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CAE0;
  if (qword_27FF87590 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FF87598;
  *(v0 + 40) = 5;
  v1 = qword_27FF87580;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_27FF87588;
  *(v0 + 56) = 4;
  v2 = qword_27FF87570;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_27FF87578;
  *(v0 + 72) = 2;
  v3 = qword_27FF87560;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_27FF87568;
  *(v0 + 88) = 1;
  qword_27FF87558 = v0;
}

uint64_t sub_264970AE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CAF0;
  *(v0 + 32) = 8560866;
  *(v0 + 40) = 0xA300000000000000;
  result = nullsub_1(49);
  if (!v2)
  {
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v2;
  *(v0 + 64) = 8823010;
  *(v0 + 72) = 0xA300000000000000;
  result = nullsub_1(50);
  if (!v3)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 80) = result;
  *(v0 + 88) = v3;
  *(v0 + 96) = 9609442;
  *(v0 + 104) = 0xA300000000000000;
  result = nullsub_1(51);
  if (!v4)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 112) = result;
  *(v0 + 120) = v4;
  *(v0 + 128) = 11706594;
  *(v0 + 136) = 0xA300000000000000;
  result = nullsub_1(52);
  if (!v5)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 144) = result;
  *(v0 + 152) = v5;
  *(v0 + 160) = 10658018;
  *(v0 + 168) = 0xA300000000000000;
  result = nullsub_1(53);
  if (!v6)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 176) = result;
  *(v0 + 184) = v6;
  *(v0 + 192) = 9871586;
  *(v0 + 200) = 0xA300000000000000;
  result = nullsub_1(54);
  if (!v7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 208) = result;
  *(v0 + 216) = v7;
  *(v0 + 224) = 11968738;
  *(v0 + 232) = 0xA300000000000000;
  result = nullsub_1(55);
  if (!v8)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 240) = result;
  *(v0 + 248) = v8;
  *(v0 + 256) = 10920162;
  *(v0 + 264) = 0xA300000000000000;
  result = nullsub_1(56);
  if (!v9)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 272) = result;
  *(v0 + 280) = v9;
  *(v0 + 288) = 9740514;
  *(v0 + 296) = 0xA300000000000000;
  result = nullsub_1(57);
  if (!v10)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 304) = result;
  *(v0 + 312) = v10;
  *(v0 + 320) = 11837666;
  *(v0 + 328) = 0xA300000000000000;
  result = nullsub_1(48);
  if (!v11)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 336) = result;
  *(v0 + 344) = v11;
  *(v0 + 352) = 8429794;
  *(v0 + 360) = 0xA300000000000000;
  result = sub_26497D994();
  if (!v12)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 368) = result;
  *(v0 + 376) = v12;
  *(v0 + 384) = 11313378;
  *(v0 + 392) = 0xA300000000000000;
  result = nullsub_1(43);
  if (!v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 400) = result;
  *(v0 + 408) = v13;
  *(v0 + 416) = 10789090;
  *(v0 + 424) = 0xA300000000000000;
  result = nullsub_1(45);
  if (!v14)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 432) = result;
  *(v0 + 440) = v14;
  *(v0 + 448) = 11051234;
  *(v0 + 456) = 0xA300000000000000;
  result = nullsub_1(46);
  if (!v15)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 464) = result;
  *(v0 + 472) = v15;
  *(v0 + 480) = 9216226;
  *(v0 + 488) = 0xA300000000000000;
  result = nullsub_1(47);
  if (!v16)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 496) = result;
  *(v0 + 504) = v16;
  *(v0 + 512) = 12034274;
  *(v0 + 520) = 0xA300000000000000;
  result = nullsub_1(40);
  if (!v17)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 528) = result;
  *(v0 + 536) = v17;
  *(v0 + 544) = 12493026;
  *(v0 + 552) = 0xA300000000000000;
  result = nullsub_1(41);
  if (!v18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v0 + 560) = result;
  *(v0 + 568) = v18;
  *(v0 + 576) = 8495330;
  *(v0 + 584) = 0xA300000000000000;
  result = nullsub_1(97);
  if (!v19)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *(v0 + 592) = result;
  *(v0 + 600) = v19;
  *(v0 + 608) = 8626402;
  *(v0 + 616) = 0xA300000000000000;
  result = nullsub_1(98);
  if (!v20)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v0 + 624) = result;
  *(v0 + 632) = v20;
  *(v0 + 640) = 9019618;
  *(v0 + 648) = 0xA300000000000000;
  result = nullsub_1(99);
  if (!v21)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  *(v0 + 656) = result;
  *(v0 + 664) = v21;
  *(v0 + 672) = 10068194;
  *(v0 + 680) = 0xA300000000000000;
  result = nullsub_1(100);
  if (!v22)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v0 + 688) = result;
  *(v0 + 696) = v22;
  *(v0 + 704) = 9543906;
  *(v0 + 712) = 0xA300000000000000;
  result = nullsub_1(101);
  if (!v23)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *(v0 + 720) = result;
  *(v0 + 728) = v23;
  *(v0 + 736) = 9150690;
  *(v0 + 744) = 0xA300000000000000;
  result = nullsub_1(102);
  if (!v24)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v0 + 752) = result;
  *(v0 + 760) = v24;
  *(v0 + 768) = 10199266;
  *(v0 + 776) = 0xA300000000000000;
  result = nullsub_1(103);
  if (!v25)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *(v0 + 784) = result;
  *(v0 + 792) = v25;
  *(v0 + 800) = 9674978;
  *(v0 + 808) = 0xA300000000000000;
  result = nullsub_1(104);
  if (!v26)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  *(v0 + 816) = result;
  *(v0 + 824) = v26;
  *(v0 + 832) = 9085154;
  *(v0 + 840) = 0xA300000000000000;
  result = nullsub_1(105);
  if (!v27)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  *(v0 + 848) = result;
  *(v0 + 856) = v27;
  *(v0 + 864) = 10133730;
  *(v0 + 872) = 0xA300000000000000;
  result = nullsub_1(106);
  if (!v28)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v0 + 880) = result;
  *(v0 + 888) = v28;
  *(v0 + 896) = 8757474;
  *(v0 + 904) = 0xA300000000000000;
  result = nullsub_1(107);
  if (!v29)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  *(v0 + 912) = result;
  *(v0 + 920) = v29;
  *(v0 + 928) = 8888546;
  *(v0 + 936) = 0xA300000000000000;
  result = nullsub_1(108);
  if (!v30)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *(v0 + 944) = result;
  *(v0 + 952) = v30;
  *(v0 + 960) = 9281762;
  *(v0 + 968) = 0xA300000000000000;
  result = nullsub_1(109);
  if (!v31)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *(v0 + 976) = result;
  *(v0 + 984) = v31;
  *(v0 + 992) = 10330338;
  *(v0 + 1000) = 0xA300000000000000;
  result = nullsub_1(110);
  if (!v32)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *(v0 + 1008) = result;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 9806050;
  *(v0 + 1032) = 0xA300000000000000;
  result = nullsub_1(111);
  if (!v33)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  *(v0 + 1040) = result;
  *(v0 + 1048) = v33;
  *(v0 + 1056) = 9412834;
  *(v0 + 1064) = 0xA300000000000000;
  result = nullsub_1(112);
  if (!v34)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  *(v0 + 1072) = result;
  *(v0 + 1080) = v34;
  *(v0 + 1088) = 10461410;
  *(v0 + 1096) = 0xA300000000000000;
  result = nullsub_1(113);
  if (!v35)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  *(v0 + 1104) = result;
  *(v0 + 1112) = v35;
  *(v0 + 1120) = 9937122;
  *(v0 + 1128) = 0xA300000000000000;
  result = nullsub_1(114);
  if (!v36)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  *(v0 + 1136) = result;
  *(v0 + 1144) = v36;
  *(v0 + 1152) = 9347298;
  *(v0 + 1160) = 0xA300000000000000;
  result = nullsub_1(115);
  if (!v37)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  *(v0 + 1168) = result;
  *(v0 + 1176) = v37;
  *(v0 + 1184) = 10395874;
  *(v0 + 1192) = 0xA300000000000000;
  result = nullsub_1(116);
  if (!v38)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  *(v0 + 1200) = result;
  *(v0 + 1208) = v38;
  *(v0 + 1216) = 10854626;
  *(v0 + 1224) = 0xA300000000000000;
  result = nullsub_1(117);
  if (!v39)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *(v0 + 1232) = result;
  *(v0 + 1240) = v39;
  *(v0 + 1248) = 10985698;
  *(v0 + 1256) = 0xA300000000000000;
  result = nullsub_1(118);
  if (!v40)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  *(v0 + 1264) = result;
  *(v0 + 1272) = v40;
  *(v0 + 1280) = 12230882;
  *(v0 + 1288) = 0xA300000000000000;
  result = nullsub_1(119);
  if (!v41)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  *(v0 + 1296) = result;
  *(v0 + 1304) = v41;
  *(v0 + 1312) = 11378914;
  *(v0 + 1320) = 0xA300000000000000;
  result = nullsub_1(120);
  if (!v42)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  *(v0 + 1328) = result;
  *(v0 + 1336) = v42;
  *(v0 + 1344) = 12427490;
  *(v0 + 1352) = 0xA300000000000000;
  result = nullsub_1(121);
  if (!v43)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  *(v0 + 1360) = result;
  *(v0 + 1368) = v43;
  *(v0 + 1376) = 11903202;
  *(v0 + 1384) = 0xA300000000000000;
  result = nullsub_1(122);
  if (!v44)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *(v0 + 1392) = result;
  *(v0 + 1400) = v44;
  *(v0 + 1408) = 10526946;
  *(v0 + 1416) = 0xA300000000000000;
  result = nullsub_1(44);
  if (!v45)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  *(v0 + 1424) = result;
  *(v0 + 1432) = v45;
  *(v0 + 1440) = 11772130;
  *(v0 + 1448) = 0xA300000000000000;
  result = nullsub_1(124);
  if (!v46)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  *(v0 + 1456) = result;
  *(v0 + 1464) = v46;
  *(v0 + 1472) = 11509986;
  *(v0 + 1480) = 0xA300000000000000;
  result = nullsub_1(33);
  if (!v47)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *(v0 + 1488) = result;
  *(v0 + 1496) = v47;
  *(v0 + 1504) = 10592482;
  *(v0 + 1512) = 0xA300000000000000;
  result = sub_26497D994();
  if (v48)
  {
    *(v0 + 1520) = result;
    *(v0 + 1528) = v48;
    v49 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    qword_27FF87568 = v49;
    return result;
  }

LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_264971284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D48, &qword_26498CC38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26498CB00;
  *(v0 + 32) = 0xA1A0E288A0E2;
  *(v0 + 40) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0x8CA0E2A8A0E2;
  *(v0 + 72) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 80) = result;
  *(v0 + 88) = v3;
  *(v0 + 96) = 0x81A0E2A0A0E2;
  *(v0 + 104) = 0xA600000000000000;
  result = nullsub_1(65);
  if (!v4)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 112) = result;
  *(v0 + 120) = v4;
  *(v0 + 128) = 0x83A0E2A0A0E2;
  *(v0 + 136) = 0xA600000000000000;
  result = nullsub_1(66);
  if (!v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v0 + 144) = result;
  *(v0 + 152) = v5;
  *(v0 + 160) = 0x89A0E2A0A0E2;
  *(v0 + 168) = 0xA600000000000000;
  result = nullsub_1(67);
  if (!v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v0 + 176) = result;
  *(v0 + 184) = v6;
  *(v0 + 192) = 0x99A0E2A0A0E2;
  *(v0 + 200) = 0xA600000000000000;
  result = nullsub_1(68);
  if (!v7)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v0 + 208) = result;
  *(v0 + 216) = v7;
  *(v0 + 224) = 0x91A0E2A0A0E2;
  *(v0 + 232) = 0xA600000000000000;
  result = nullsub_1(69);
  if (!v8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 240) = result;
  *(v0 + 248) = v8;
  *(v0 + 256) = 0x8BA0E2A0A0E2;
  *(v0 + 264) = 0xA600000000000000;
  result = nullsub_1(70);
  if (!v9)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v0 + 272) = result;
  *(v0 + 280) = v9;
  *(v0 + 288) = 0x9BA0E2A0A0E2;
  *(v0 + 296) = 0xA600000000000000;
  result = nullsub_1(71);
  if (!v10)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 304) = result;
  *(v0 + 312) = v10;
  *(v0 + 320) = 0x93A0E2A0A0E2;
  *(v0 + 328) = 0xA600000000000000;
  result = nullsub_1(72);
  if (!v11)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v0 + 336) = result;
  *(v0 + 344) = v11;
  *(v0 + 352) = 0x8AA0E2A0A0E2;
  *(v0 + 360) = 0xA600000000000000;
  result = nullsub_1(73);
  if (!v12)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 368) = result;
  *(v0 + 376) = v12;
  *(v0 + 384) = 0x9AA0E2A0A0E2;
  *(v0 + 392) = 0xA600000000000000;
  result = nullsub_1(74);
  if (!v13)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v0 + 400) = result;
  *(v0 + 408) = v13;
  *(v0 + 416) = 0x85A0E2A0A0E2;
  *(v0 + 424) = 0xA600000000000000;
  result = nullsub_1(75);
  if (!v14)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v0 + 432) = result;
  *(v0 + 440) = v14;
  *(v0 + 448) = 0x87A0E2A0A0E2;
  *(v0 + 456) = 0xA600000000000000;
  result = nullsub_1(76);
  if (!v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v0 + 464) = result;
  *(v0 + 472) = v15;
  *(v0 + 480) = 0x8DA0E2A0A0E2;
  *(v0 + 488) = 0xA600000000000000;
  result = nullsub_1(77);
  if (!v16)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 496) = result;
  *(v0 + 504) = v16;
  *(v0 + 512) = 0x9DA0E2A0A0E2;
  *(v0 + 520) = 0xA600000000000000;
  result = nullsub_1(78);
  if (!v17)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v0 + 528) = result;
  *(v0 + 536) = v17;
  *(v0 + 544) = 0x95A0E2A0A0E2;
  *(v0 + 552) = 0xA600000000000000;
  result = nullsub_1(79);
  if (!v18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v0 + 560) = result;
  *(v0 + 568) = v18;
  *(v0 + 576) = 0x8FA0E2A0A0E2;
  *(v0 + 584) = 0xA600000000000000;
  result = nullsub_1(80);
  if (!v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(v0 + 592) = result;
  *(v0 + 600) = v19;
  *(v0 + 608) = 0x9FA0E2A0A0E2;
  *(v0 + 616) = 0xA600000000000000;
  result = nullsub_1(81);
  if (!v20)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 624) = result;
  *(v0 + 632) = v20;
  *(v0 + 640) = 0x97A0E2A0A0E2;
  *(v0 + 648) = 0xA600000000000000;
  result = nullsub_1(82);
  if (!v21)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v0 + 656) = result;
  *(v0 + 664) = v21;
  *(v0 + 672) = 0x8EA0E2A0A0E2;
  *(v0 + 680) = 0xA600000000000000;
  result = nullsub_1(83);
  if (!v22)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v0 + 688) = result;
  *(v0 + 696) = v22;
  *(v0 + 704) = 0x9EA0E2A0A0E2;
  *(v0 + 712) = 0xA600000000000000;
  result = nullsub_1(84);
  if (!v23)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v0 + 720) = result;
  *(v0 + 728) = v23;
  *(v0 + 736) = 0xA5A0E2A0A0E2;
  *(v0 + 744) = 0xA600000000000000;
  result = nullsub_1(85);
  if (!v24)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 752) = result;
  *(v0 + 760) = v24;
  *(v0 + 768) = 0xA7A0E2A0A0E2;
  *(v0 + 776) = 0xA600000000000000;
  result = nullsub_1(86);
  if (!v25)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v0 + 784) = result;
  *(v0 + 792) = v25;
  *(v0 + 800) = 0xBAA0E2A0A0E2;
  *(v0 + 808) = 0xA600000000000000;
  result = nullsub_1(87);
  if (!v26)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v0 + 816) = result;
  *(v0 + 824) = v26;
  *(v0 + 832) = 0xADA0E2A0A0E2;
  *(v0 + 840) = 0xA600000000000000;
  result = nullsub_1(88);
  if (!v27)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v0 + 848) = result;
  *(v0 + 856) = v27;
  *(v0 + 864) = 0xBDA0E2A0A0E2;
  *(v0 + 872) = 0xA600000000000000;
  result = nullsub_1(89);
  if (!v28)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v0 + 880) = result;
  *(v0 + 888) = v28;
  *(v0 + 896) = 0xB5A0E2A0A0E2;
  *(v0 + 904) = 0xA600000000000000;
  result = nullsub_1(90);
  if (!v29)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v0 + 912) = result;
  *(v0 + 920) = v29;
  *(v0 + 928) = 0x8FA0E2A8A0E2;
  *(v0 + 936) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v30)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v0 + 944) = result;
  *(v0 + 952) = v30;
  *(v0 + 960) = 0xB4A0E288A0E2;
  *(v0 + 968) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v31)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *(v0 + 976) = result;
  *(v0 + 984) = v31;
  *(v0 + 992) = 0xB7A0E288A0E2;
  *(v0 + 1000) = 0xA600000000000000;
  result = nullsub_1(91);
  if (!v32)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v0 + 1008) = result;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 0xBEA0E288A0E2;
  *(v0 + 1032) = 0xA600000000000000;
  result = nullsub_1(93);
  if (!v33)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  *(v0 + 1040) = result;
  *(v0 + 1048) = v33;
  *(v0 + 1056) = 0xB7A0E2A8A0E2;
  *(v0 + 1064) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v34)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v0 + 1072) = result;
  *(v0 + 1080) = v34;
  *(v0 + 1088) = 0xBEA0E2A8A0E2;
  *(v0 + 1096) = 0xA600000000000000;
  result = sub_26497D994();
  if (!v35)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *(v0 + 1104) = result;
  *(v0 + 1112) = v35;
  *(v0 + 1120) = 0xB4A0E2B8A0E2;
  *(v0 + 1128) = 0xA600000000000000;
  result = sub_26497D994();
  if (v36)
  {
    *(v0 + 1136) = result;
    *(v0 + 1144) = v36;
    v37 = sub_264972178(v0);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86D50, &qword_26498CC40);
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    qword_27FF87578 = v37;
    return result;
  }

LABEL_71:
  __break(1u);
  return result;
}