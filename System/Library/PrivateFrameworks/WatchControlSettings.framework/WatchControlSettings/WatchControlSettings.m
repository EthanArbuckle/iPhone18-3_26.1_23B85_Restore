uint64_t WCInputSourceTypeIsSupportedOnDevice(uint64_t a1, void *a2)
{
  if (a1)
  {
    return 1;
  }

  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:@"1FD8E157-2B7C-45B6-B939-FFB8BE14E27F"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

id WCAvailableInputSourceTypes()
{
  if (WCAvailableInputSourceTypes_onceToken != -1)
  {
    WCAvailableInputSourceTypes_cold_1();
  }

  v1 = WCAvailableInputSourceTypes_AvailableInputSourceTypes;

  return v1;
}

void __WCAvailableInputSourceTypes_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v0 addObject:v1];

  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v0 addObject:v2];

  v3 = WCAvailableInputSourceTypes_AvailableInputSourceTypes;
  WCAvailableInputSourceTypes_AvailableInputSourceTypes = v0;
}

id WCNameForInputSourceType(uint64_t a1, id a2)
{
  if (a1)
  {
    if (a1 == 1000)
    {
      v3 = @"input.source.digital.crown";
    }

    else
    {
      if (a1 != 1)
      {
        goto LABEL_8;
      }

      v3 = @"input.source.motion.pointer";
    }
  }

  else
  {
    v3 = @"input.source.grey";
  }

  a2 = WCLocalizedString(v3);
LABEL_8:

  return a2;
}

void WCSynchronizeDomain(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  [v5 synchronizeNanoDomain:v4 keys:v3];
}

void sub_2729FEC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WCNameForActionMenuPosition(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WCLocalizedString(off_279E5D070[a1]);
  }

  return a1;
}

id WCLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v2 isLoaded] & 1) == 0)
  {
    [v2 load];
  }

  v3 = [v2 localizedStringForKey:v1 value:&stru_288202F60 table:@"Localizable"];

  return v3;
}

id defaultGreyEventActionCustomizations()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_288205230;
  v3[1] = &unk_288205248;
  v4[0] = &unk_288205260;
  v4[1] = &unk_288205278;
  v3[2] = &unk_288205200;
  v3[3] = &unk_288205218;
  v4[2] = &unk_288205290;
  v4[3] = &unk_2882052A8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id WCNameForMotionPointerMovementTolerance(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WCLocalizedString(off_279E5D088[a1]);
  }

  return a1;
}

id WCNameForMotionPointerEdge(unint64_t a1)
{
  if (a1 <= 3)
  {
    a1 = WCLocalizedString(off_279E5D0A0[a1]);
  }

  return a1;
}

id defaultMotionPointerEdgeActionCustomizations()
{
  if (defaultMotionPointerEdgeActionCustomizations_onceToken != -1)
  {
    defaultMotionPointerEdgeActionCustomizations_cold_1();
  }

  v1 = defaultMotionPointerEdgeActionCustomizations_DefaultMotionPointerEdgeActions;

  return v1;
}

void __defaultMotionPointerEdgeActionCustomizations_block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_288205200;
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WCDefaultActionForMotionPointerEdge(0)];
  v8[0] = v0;
  v7[1] = &unk_288205218;
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WCDefaultActionForMotionPointerEdge(1uLL)];
  v8[1] = v1;
  v7[2] = &unk_288205230;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WCDefaultActionForMotionPointerEdge(2uLL)];
  v8[2] = v2;
  v7[3] = &unk_288205248;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WCDefaultActionForMotionPointerEdge(3uLL)];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = defaultMotionPointerEdgeActionCustomizations_DefaultMotionPointerEdgeActions;
  defaultMotionPointerEdgeActionCustomizations_DefaultMotionPointerEdgeActions = v4;

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t AXAssistiveTouchCursorColorForCursorColor(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return 0;
  }

  return result;
}

uint64_t WCNameForCursorColor(uint64_t a1)
{
  AXAssistiveTouchCursorColorForCursorColor(a1);

  return AXAssistiveTouchScannerColorDescription();
}

id WCNameForFocusMovementStyle(void *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = @"focus.movement.style.auto";
  }

  else
  {
    v2 = @"focus.movement.style.manual";
  }

  a1 = WCLocalizedString(v2);
LABEL_6:

  return a1;
}

id WCLocalizedStringElton(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v2 isLoaded] & 1) == 0)
  {
    [v2 load];
  }

  v3 = [v2 localizedStringForKey:v1 value:&stru_288202F60 table:@"Localizable-elton"];

  return v3;
}

uint64_t WCAXHandGestureEventUsageForGreyEvent(unint64_t a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return WCAXHandGestureEventUsageUnknown;
  }
}

uint64_t WCGreyEventForAXHandGestureEventUsage(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return WCGreyEventNone;
  }

  else
  {
    return a1 - 1;
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id wc_general_log()
{
  if (wc_general_log_onceToken != -1)
  {
    wc_general_log_cold_1();
  }

  v1 = wc_general_log___logger;

  return v1;
}

uint64_t __wc_general_log_block_invoke()
{
  wc_general_log___logger = os_log_create("com.apple.WatchControl", "general");

  return MEMORY[0x2821F96F8]();
}

id wc_action_log()
{
  if (wc_action_log_onceToken != -1)
  {
    wc_action_log_cold_1();
  }

  v1 = wc_action_log___logger;

  return v1;
}

uint64_t __wc_action_log_block_invoke()
{
  wc_action_log___logger = os_log_create("com.apple.WatchControl", "action");

  return MEMORY[0x2821F96F8]();
}

id wc_autoscroll_log()
{
  if (wc_autoscroll_log_onceToken != -1)
  {
    wc_autoscroll_log_cold_1();
  }

  v1 = wc_autoscroll_log___logger;

  return v1;
}

uint64_t __wc_autoscroll_log_block_invoke()
{
  wc_autoscroll_log___logger = os_log_create("com.apple.WatchControl", "autoscroll");

  return MEMORY[0x2821F96F8]();
}

id wc_focus_log()
{
  if (wc_focus_log_onceToken != -1)
  {
    wc_focus_log_cold_1();
  }

  v1 = wc_focus_log___logger;

  return v1;
}

uint64_t __wc_focus_log_block_invoke()
{
  wc_focus_log___logger = os_log_create("com.apple.WatchControl", "focus");

  return MEMORY[0x2821F96F8]();
}

id wc_input_source_log()
{
  if (wc_input_source_log_onceToken != -1)
  {
    wc_input_source_log_cold_1();
  }

  v1 = wc_input_source_log___logger;

  return v1;
}

uint64_t __wc_input_source_log_block_invoke()
{
  wc_input_source_log___logger = os_log_create("com.apple.WatchControl", "input_source");

  return MEMORY[0x2821F96F8]();
}

id wc_motion_pointer_log()
{
  if (wc_motion_pointer_log_onceToken != -1)
  {
    wc_motion_pointer_log_cold_1();
  }

  v1 = wc_motion_pointer_log___logger;

  return v1;
}

uint64_t __wc_motion_pointer_log_block_invoke()
{
  wc_motion_pointer_log___logger = os_log_create("com.apple.WatchControl", "motion_pointer");

  return MEMORY[0x2821F96F8]();
}

id wc_services_log()
{
  if (wc_services_log_onceToken != -1)
  {
    wc_services_log_cold_1();
  }

  v1 = wc_services_log___logger;

  return v1;
}

uint64_t __wc_services_log_block_invoke()
{
  wc_services_log___logger = os_log_create("com.apple.WatchControl", "services");

  return MEMORY[0x2821F96F8]();
}

id wc_shake_gesture_log()
{
  if (wc_shake_gesture_log_onceToken != -1)
  {
    wc_shake_gesture_log_cold_1();
  }

  v1 = wc_shake_gesture_log___logger;

  return v1;
}

uint64_t __wc_shake_gesture_log_block_invoke()
{
  wc_shake_gesture_log___logger = os_log_create("com.apple.WatchControl", "shake_gesture");

  return MEMORY[0x2821F96F8]();
}

id wc_focus_v2_log()
{
  if (wc_focus_v2_log_onceToken != -1)
  {
    wc_focus_v2_log_cold_1();
  }

  v1 = wc_focus_v2_log___logger;

  return v1;
}

uint64_t __wc_focus_v2_log_block_invoke()
{
  wc_focus_v2_log___logger = os_log_create("com.apple.WatchControl", "focus_v2");

  return MEMORY[0x2821F96F8]();
}

id WCLocalizedTitleForCustomAction(uint64_t a1, void *a2)
{
  if (a1 != 1)
  {
    goto LABEL_4;
  }

  v2 = MEMORY[0x277CE7E38];
  v3 = a2;
  v4 = [v2 sharedManager];
  v5 = [v4 shortcutForIdentifier:v3];

  if (v5)
  {
    v6 = [v5 shortcutName];
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

  return v6;
}

id WCImageForCustomAction(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 1)
  {
    v4 = [MEMORY[0x277CE7E38] sharedManager];
    v5 = [v4 shortcutForIdentifier:v3];

    if (v5)
    {
      v6 = [v5 glyphCharacter];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v7 = getWFSystemImageNameForGlyphCharacterSymbolLoc_ptr;
      v18 = getWFSystemImageNameForGlyphCharacterSymbolLoc_ptr;
      if (!getWFSystemImageNameForGlyphCharacterSymbolLoc_ptr)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __getWFSystemImageNameForGlyphCharacterSymbolLoc_block_invoke;
        v14[3] = &unk_279E5D0C8;
        v14[4] = &v15;
        __getWFSystemImageNameForGlyphCharacterSymbolLoc_block_invoke(v14);
        v7 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (!v7)
      {
        v13 = WCImageForCustomAction_cold_1();
        _Block_object_dispose(&v15, 8);
        _Unwind_Resume(v13);
      }

      v8 = v7(v6);
      if ([v8 length])
      {
        v9 = MEMORY[0x277D755B8];
        v10 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28]];
        v11 = [v9 _systemImageNamed:v8 withConfiguration:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id WCPayloadForCustomAction(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = kWCCustomActionTypePayloadTypeKey;
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:a1];
  v10[1] = kWCCustomActionTypePayloadIdentifierKey;
  v11[0] = v5;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id WCDictionaryForCustomActionPayload(void *a1, uint64_t a2)
{
  v3 = a1;
  if (WCDictionaryForCustomActionPayload_onceToken != -1)
  {
    WCDictionaryForCustomActionPayload_cold_1();
  }

  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:WCDictionaryForCustomActionPayload_UnarchiveClasses fromData:v3 error:a2];
  v5 = v4;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

void __WCDictionaryForCustomActionPayload_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = WCDictionaryForCustomActionPayload_UnarchiveClasses;
  WCDictionaryForCustomActionPayload_UnarchiveClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

BOOL WCRetrieveCustomActionFromPayload(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = WCDictionaryForCustomActionPayload(a1, a4);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:kWCCustomActionTypePayloadTypeKey];
    *a2 = [v8 integerValue];

    *a3 = [v7 objectForKeyedSubscript:kWCCustomActionTypePayloadIdentifierKey];
  }

  return v7 != 0;
}

void *__getWFSystemImageNameForGlyphCharacterSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __VoiceShortcutClientLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279E5D0E8;
    v8 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = VoiceShortcutClientLibraryCore_frameworkLibrary;
    if (VoiceShortcutClientLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = VoiceShortcutClientLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "WFSystemImageNameForGlyphCharacter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWFSystemImageNameForGlyphCharacterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id WCAvailableActions()
{
  if (WCAvailableActions_onceToken != -1)
  {
    WCAvailableActions_cold_1();
  }

  v1 = WCAvailableActions_AvailableActions;

  return v1;
}

void __WCAvailableActions_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 24; ++i)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v0 addObject:v2];
  }

  v3 = WCAvailableActions_AvailableActions;
  WCAvailableActions_AvailableActions = v0;
}

id WCNameForAction(uint64_t a1)
{
  if (!(!v2 & v1))
  {
    v6 = @"action.none";
    switch(a1)
    {
      case 0:
        goto LABEL_49;
      case 1:
        v6 = @"action.activate.focused.element";
        goto LABEL_49;
      case 2:
        v6 = @"action.motion.pointer.toggle";
        goto LABEL_49;
      case 3:
        v6 = @"action.move.focus.forwards";
        goto LABEL_49;
      case 4:
        v6 = @"action.move.focus.backwards";
        goto LABEL_49;
      case 5:
        v6 = @"action.autoscroll.digital.crown";
        goto LABEL_49;
      case 6:
        v6 = @"action.autoscroll.vertical";
        goto LABEL_49;
      case 7:
        v6 = @"action.autoscroll.horizontal";
        goto LABEL_49;
      case 8:
        v6 = @"action.scroll.to.bottom";
        goto LABEL_49;
      case 9:
        v6 = @"action.scroll.to.top";
        goto LABEL_49;
      case 10:
        v6 = @"action.digital.crown.press";
        goto LABEL_49;
      case 11:
        v6 = @"action.sting.press";
        goto LABEL_49;
      case 12:
        v6 = @"action.sting.keycord.press";
        goto LABEL_49;
      case 13:
        v6 = @"action.show.dock";
        goto LABEL_49;
      case 14:
        v6 = @"action.show.notification.center";
        goto LABEL_49;
      case 15:
        v6 = @"action.show.control.center";
        goto LABEL_49;
      case 16:
        goto LABEL_7;
      case 17:
        v6 = @"action.show.siri";
        goto LABEL_49;
      case 18:
        v6 = @"action.show.wallet";
        goto LABEL_49;
      case 19:
        v6 = @"action.show.shutdown.alert";
        goto LABEL_49;
      case 20:
        v6 = @"action.gesture.mode";
        goto LABEL_49;
      case 21:
        goto LABEL_8;
      case 22:
        v6 = @"action.tap.and.hold";
        goto LABEL_49;
      case 23:
        v6 = @"action.side.button.press";
        goto LABEL_49;
      default:
        JUMPOUT(0);
    }
  }

  v5 = 0;
  switch(a1)
  {
    case 10000:
      v6 = @"action.action.menu.dismiss";
      goto LABEL_49;
    case 10001:
LABEL_8:
      v6 = @"action.action.menu";
      goto LABEL_49;
    case 10002:
      v6 = @"action.system.state.unlock";
      goto LABEL_49;
    case 10003:
      v6 = @"action.motion.pointer.tap.point";
      goto LABEL_49;
    case 10004:
    case 10005:
LABEL_7:
      v6 = @"action.show.app.launcher";
      goto LABEL_49;
    case 10006:
      v6 = @"action.confirm.apple.pay";
      goto LABEL_49;
    case 10007:
      v6 = @"action.confirm.auto.unlock";
      goto LABEL_49;
    case 10008:
      v6 = @"action.file.radar";
      goto LABEL_49;
    case 10009:
      v6 = @"action.motion.pointer.edge.swipe.top";
      goto LABEL_49;
    case 10010:
      v6 = @"action.motion.pointer.edge.swipe.bottom";
      goto LABEL_49;
    case 10011:
      v6 = @"action.motion.pointer.edge.swipe.left";
      goto LABEL_49;
    case 10012:
      v6 = @"action.motion.pointer.edge.swipe.right";
      goto LABEL_49;
    case 10013:
      v6 = @"action.move.focus.to.first";
      goto LABEL_49;
    case 10014:
      v6 = @"action.move.focus.to.last";
      goto LABEL_49;
    case 10015:
      v6 = @"action.pause.motion.pointer";
      goto LABEL_49;
    case 10016:
      v6 = @"action.digital.crown.single.turn.up";
      goto LABEL_49;
    case 10017:
      v6 = @"action.digital.crown.single.turn.down";
      goto LABEL_49;
    case 10018:
      v6 = @"action.pause.auto.focus.navigation";
      goto LABEL_49;
    case 10019:
      v6 = @"action.turn.off.backlight";
      goto LABEL_49;
    case 10021:
      v6 = @"action.nearby.device.control";
      goto LABEL_49;
    case 10022:
      v6 = @"action.return.to.last.app";
      goto LABEL_49;
    case 10023:
      v6 = @"action.digital.crown.dynamic.turn";
      goto LABEL_49;
    case 10024:
      v6 = @"action.show.home.screen";
LABEL_49:
      v5 = WCLocalizedString(v6);
      break;
    default:
      break;
  }

  return v5;
}

__CFString *WCSymbolNameForAction(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 10000:
      result = @"xmark.circle.fill";
      break;
    case 10001:
LABEL_7:
      result = @"filemenu.and.selection";
      break;
    case 10002:
      result = @"lock.open.fill";
      break;
    case 10003:
      result = @"dot.circle.and.hand.point.up.left.fill";
      break;
    case 10004:
      result = @"list.bullet";
      break;
    case 10005:
LABEL_6:
      result = @"circles.hexagongrid.fill";
      break;
    case 10006:
LABEL_8:
      result = @"wallet.fill";
      break;
    case 10007:
      result = @"lock.circle.fill";
      break;
    case 10008:
      result = @"ant.circle.fill";
      break;
    case 10009:
      result = @"chevron.up.circle.fill";
      break;
    case 10010:
      result = @"chevron.down.circle.fill";
      break;
    case 10011:
      result = @"chevron.left.circle.fill";
      break;
    case 10012:
      result = @"chevron.right.circle.fill";
      break;
    case 10013:
LABEL_9:
      result = @"arrow.up.to.line";
      break;
    case 10014:
LABEL_10:
      result = @"arrow.down.to.line";
      break;
    case 10015:
    case 10018:
      result = @"pause.circle.fill";
      break;
    case 10016:
    case 10023:
LABEL_5:
      result = @"digitalcrown.arrow.clockwise.fill";
      break;
    case 10017:
      result = @"digitalcrown.arrow.counterclockwise.fill";
      break;
    case 10019:
      result = @"applewatch.case.inset.filled";
      break;
    case 10020:
      return result;
    case 10021:
      result = @"wave.3.forward";
      break;
    case 10022:
      result = @"square.fill.on.square.fill";
      break;
    case 10024:
      result = @"platter.filled.bottom.applewatch.case";
      break;
    default:
      switch(a1)
      {
        case 1:
        case 22:
          result = @"hand.tap.fill";
          break;
        case 2:
          result = @"smallcircle.fill.circle";
          break;
        case 3:
          result = @"chevron.forward.2";
          break;
        case 4:
          result = @"chevron.backward.2";
          break;
        case 5:
          goto LABEL_5;
        case 6:
          result = @"arrow.up.arrow.down.circle.fill";
          break;
        case 7:
          result = @"arrow.left.arrow.right.circle.fill";
          break;
        case 8:
          goto LABEL_10;
        case 9:
          goto LABEL_9;
        case 10:
          result = @"digitalcrown.press.fill";
          break;
        case 11:
          result = @"applewatch.action.button.arrow.right";
          break;
        case 12:
          result = @"applewatch.action.button.arrow.right.and.side.button.arrow.left";
          break;
        case 13:
          result = @"watchdock.applewatch.case";
          break;
        case 14:
          result = @"bell.badge";
          break;
        case 15:
          result = @"controlcenter.applewatch.case";
          break;
        case 16:
          goto LABEL_6;
        case 17:
          result = @"siri";
          break;
        case 18:
          goto LABEL_8;
        case 19:
          result = @"power";
          break;
        case 20:
          result = @"hand.draw.fill";
          break;
        case 21:
          goto LABEL_7;
        case 23:
          result = @"applewatch.side.button.arrow.left";
          break;
        default:
          return result;
      }

      break;
  }

  return result;
}

id WCImageForAction(uint64_t a1)
{
  v2 = WCSymbolNameForAction(a1);
  v3 = v2;
  if (a1 == 12)
  {
    v4 = v2;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v5 = getWCImageForAssetNameSymbolLoc_ptr;
    v17 = getWCImageForAssetNameSymbolLoc_ptr;
    if (!getWCImageForAssetNameSymbolLoc_ptr)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getWCImageForAssetNameSymbolLoc_block_invoke;
      v13[3] = &unk_279E5D0C8;
      v13[4] = &v14;
      __getWCImageForAssetNameSymbolLoc_block_invoke(v13);
      v5 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v5)
    {
      v12 = WCImageForCustomAction_cold_1();
      _Block_object_dispose(&v14, 8);
      _Unwind_Resume(v12);
    }

    v6 = v5(v4);
  }

  else
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28]];
    v6 = [v7 _systemImageNamed:v3 withConfiguration:v8];
  }

  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = [v6 imageWithTintColor:v9 renderingMode:1];

  return v10;
}

BOOL WCActionRequiresFocusRing(unint64_t a1)
{
  result = 1;
  if (a1 > 0x15 || ((1 << a1) & 0x20001A) == 0)
  {
    return a1 - 10000 < 2;
  }

  return result;
}

uint64_t WCActionIsStingSupported()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getActivePairedDevice];

  v2 = [v1 valueForProperty:*MEMORY[0x277D2BB28]];
  v3 = [v2 BOOLValue];

  v4 = [v1 valueForProperty:*MEMORY[0x277D2BB30]];
  v5 = [v4 BOOLValue];

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];
  v7 = [v1 supportsCapability:v6];

  return v7 & ~(v3 | v5) & 1;
}

id WCDefaultActionsForActionGroup(uint64_t a1)
{
  if (a1 > 9999)
  {
    if (a1 <= 10001)
    {
      if (a1 == 10000)
      {
        v1 = &unk_2882056E0;
      }

      else
      {
        v1 = &unk_2882056F8;
      }

      goto LABEL_20;
    }

    if (a1 == 10003)
    {
      v1 = &unk_288205710;
      goto LABEL_20;
    }

LABEL_11:
    v1 = MEMORY[0x277CBEBF8];
    goto LABEL_20;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = &unk_2882056B0;
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v1 = &unk_288205698;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v1 = [&unk_2882056C8 mutableCopy];
  if (_os_feature_enabled_impl())
  {
    [v1 removeObject:&unk_288205410];
  }

  if (AXIsInternalInstall())
  {
    [v1 addObject:&unk_2882054A0];
  }

  if (WCActionIsStingSupported())
  {
    [v1 insertObject:&unk_2882054B8 atIndex:3];
    [v1 insertObject:&unk_2882054D0 atIndex:3];
  }

LABEL_20:

  return v1;
}

id WCNameForActionGroup(uint64_t a1)
{
  v3 = 0;
  if (a1 > 9999)
  {
    switch(a1)
    {
      case 10000:
        v4 = @"action.group.general.interaction";
        break;
      case 10002:
        v4 = @"action.group.siri.shortcuts";
        break;
      case 10003:
        v4 = @"action.group.digital.crown";
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = @"action.group.autoscroll";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_15;
      }

      v4 = @"action.group.accessibility.actions";
    }
  }

  else
  {
    v4 = @"action.group.system";
  }

  v3 = WCLocalizedString(v4);
LABEL_15:

  return v3;
}

__CFString *WCSymbolNameForActionGroup(uint64_t a1)
{
  v1 = @"smallcircle.fill.circle.fill";
  v2 = @"digitalcrown.arrow.clockwise.fill";
  if (a1 != 10003)
  {
    v2 = 0;
  }

  if (a1 == 10002)
  {
    v3 = @"app.2.stack.3d.fill";
  }

  else
  {
    v3 = v2;
  }

  v4 = @"applewatch";
  if (a1 != 10000)
  {
    v1 = v3;
  }

  v5 = @"hand.tap.fill";
  if (a1 != 2)
  {
    v5 = 0;
  }

  if (a1 == 1)
  {
    v5 = @"arrow.up.and.down.and.sparkles";
  }

  if (a1)
  {
    v4 = v5;
  }

  if (a1 <= 9999)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

id WCImageForActionGroup(uint64_t a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = WCSymbolNameForActionGroup(a1);
  v3 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28]];
  v4 = [v1 _systemImageNamed:v2 withConfiguration:v3];

  v5 = [MEMORY[0x277D75348] whiteColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  return v6;
}

id WCAvailableActionGroupsForSettings()
{
  v0 = [&unk_288205740 arrayByAddingObjectsFromArray:&unk_288205728];
  v1 = [v0 arrayByAddingObjectsFromArray:&unk_288205758];

  return v1;
}

unint64_t WCDefaultActionForMotionPointerEdge(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 0;
  }

  else
  {
    return a1 + 10009;
  }
}

void *__getWCImageForAssetNameSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WatchControlAssetsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WatchControlAssetsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279E5D120;
    v8 = 0;
    WatchControlAssetsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = WatchControlAssetsLibraryCore_frameworkLibrary;
    if (WatchControlAssetsLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = WatchControlAssetsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "WCImageForAssetName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWCImageForAssetNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WatchControlAssetsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WatchControlAssetsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *greyEventNameForAnalytics(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"clench";
  }

  else
  {
    return *(&off_279E5D160 + a1 - 1);
  }
}

__CFString *actionNameForAnalytics(uint64_t a1)
{
  switch(a1)
  {
    case 10000:
      result = @"DismissActionMenu";
      break;
    case 10001:
      result = @"ActivateActionMenu";
      break;
    case 10002:
      result = @"SystemStateUnlock";
      break;
    case 10003:
      result = @"TapAtMotionPointerPoint";
      break;
    case 10004:
      result = @"AppLauncherList";
      break;
    case 10005:
      result = @"AppLauncherFieldOfIcons";
      break;
    case 10006:
      result = @"ConfirmApplePay";
      break;
    case 10007:
      result = @"ConfirmAutoUnlock";
      break;
    case 10008:
      result = @"FileRadar";
      break;
    case 10009:
      result = @"DwellControlTopEdgeSwipe";
      break;
    case 10010:
      result = @"DwellControlBottomEdgeSwipe";
      break;
    case 10011:
      result = @"DwellControlLeftEdgeSwipe";
      break;
    case 10012:
      result = @"DwellControlRightEdgeSwipe";
      break;
    case 10013:
      result = @"MoveFocusToFirst";
      break;
    case 10014:
      result = @"MoveFocusToLast";
      break;
    case 10015:
      result = @"PauseMotionPointer";
      break;
    case 10016:
      result = @"DigitalCrownSingleTurnUp";
      break;
    case 10017:
      result = @"DigitalCrownSingleTurnDown";
      break;
    case 10018:
      result = @"PauseAutoFocusNavigation";
      break;
    case 10019:
      result = @"TurnOffBacklight";
      break;
    case 10020:
      result = @"CustomActionPlaceholder";
      break;
    case 10021:
      result = @"NearbyDeviceControl";
      break;
    case 10022:
      result = @"ReturnToLastApp";
      break;
    case 10023:
      result = @"DigitalCrownDynamicTurn";
      break;
    case 10024:
      result = @"ShowHomeScreen";
      break;
    default:
      switch(a1)
      {
        case 1:
          result = @"ActivateFocusedElement";
          break;
        case 2:
          result = @"MotionPointer";
          break;
        case 3:
          result = @"MoveFocusForwards";
          break;
        case 4:
          result = @"MoveFocusBackwards";
          break;
        case 5:
          result = @"DigitalCrownAutoScroll";
          break;
        case 6:
          result = @"VerticalAutoScroll";
          break;
        case 7:
          result = @"HorizontalAutoScroll";
          break;
        case 8:
          result = @"ScrollToBottom";
          break;
        case 9:
          result = @"ScrollToTop";
          break;
        case 10:
          result = @"DigitalCrownPress";
          break;
        case 11:
          result = @"StingPress";
          break;
        case 12:
          result = @"StingKeycordPress";
          break;
        case 13:
          result = @"ShowDock";
          break;
        case 14:
          result = @"ShowNotificationCenter";
          break;
        case 15:
          result = @"ShowControlCenter";
          break;
        case 16:
          result = @"ShowAppLauncher";
          break;
        case 17:
          result = @"ShowSiri";
          break;
        case 18:
          result = @"ShowWallet";
          break;
        case 19:
          result = @"ShowShutdownAlert";
          break;
        case 20:
          result = @"GestureMode";
          break;
        case 21:
          result = @"Menu";
          break;
        case 22:
          result = @"TapAndHoldAtPoint";
          break;
        case 23:
          result = @"SideButtonPress";
          break;
        default:
          result = @"None";
          break;
      }

      break;
  }

  return result;
}

__CFString *inputSourceNameForAnalytics(uint64_t a1)
{
  v1 = @"Grey";
  if (a1 == 1)
  {
    v1 = @"MotionPointer";
  }

  if (a1 == 1000)
  {
    return @"DigitalCrown";
  }

  else
  {
    return v1;
  }
}

__CFString *focusRingColorNameForAnalytics(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Default";
  }

  else
  {
    return *(&off_279E5D178 + a1 - 1);
  }
}

uint64_t isUsingGrey()
{
  v0 = +[WatchControlSettings sharedInstance];
  v1 = [v0 enabledInputSourceTypes];

  v2 = [v1 objectForKeyedSubscript:&unk_288205620];
  v3 = [v2 BOOLValue];

  return v3;
}

id WCAvailableGreyEvents()
{
  if (WCAvailableGreyEvents_onceToken != -1)
  {
    WCAvailableGreyEvents_cold_1();
  }

  v1 = WCAvailableGreyEvents_AvailableGreyEvents;

  return v1;
}

void __WCAvailableGreyEvents_block_invoke()
{
  v0 = WCAvailableGreyEvents_AvailableGreyEvents;
  WCAvailableGreyEvents_AvailableGreyEvents = &unk_288205770;
}

id WCNameForGreyEvent(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = @"grey.event.clinch";
      goto LABEL_10;
    }

    if (a1 == 1)
    {
      v1 = @"grey.event.double.clinch";
LABEL_10:
      v3 = WCLocalizedString(v1);
      goto LABEL_13;
    }

LABEL_8:
    v1 = @"grey.event.none";
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    v2 = @"grey.event.tap";
  }

  else
  {
    if (a1 != 3)
    {
      goto LABEL_8;
    }

    v2 = @"grey.event.double.tap";
  }

  v3 = WCLocalizedStringElton(v2);
LABEL_13:

  return v3;
}

id WCOnboardingDescriptionForGreyEvent(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = WCLocalizedString(off_279E5D1C8[a1]);
  }

  return v2;
}

id WCOnboardingInstructionsForGreyEvent(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = WCLocalizedString(off_279E5D1E8[a1]);
  }

  return v2;
}

id WCPracticeGestureSuccessTitleForGreyEvent(uint64_t a1)
{
  v2 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = @"grey.practice.success.tap.title";
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_12;
      }

      v4 = @"grey.practice.success.double.tap.title";
    }

    v2 = WCLocalizedStringElton(v4);
  }

  else
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_12;
      }

      v3 = @"grey.practice.success.double.clench.title";
    }

    else
    {
      v3 = @"grey.practice.success.clench.title";
    }

    v2 = WCLocalizedString(v3);
  }

LABEL_12:

  return v2;
}

id WCPracticeGestureSuccessMessageForGreyEvent(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = WCLocalizedString(off_279E5D208[a1]);
  }

  return v2;
}

id WCOnboardingImageForGreyEvent(unint64_t a1, char a2)
{
  if (a1 > 3)
  {
    v2 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = off_279E5D228[a1];
  if ((a2 & 1) == 0)
  {
LABEL_5:
    v2 = [(__CFString *)v2 stringByAppendingString:@"-Pre"];
  }

LABEL_6:
  if (v2)
  {
    v3 = soft_WCImageForAssetName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id soft_WCImageForAssetName(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getWCImageForAssetNameSymbolLoc_ptr_0;
  v10 = getWCImageForAssetNameSymbolLoc_ptr_0;
  if (!getWCImageForAssetNameSymbolLoc_ptr_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getWCImageForAssetNameSymbolLoc_block_invoke_0;
    v6[3] = &unk_279E5D0C8;
    v6[4] = &v7;
    __getWCImageForAssetNameSymbolLoc_block_invoke_0(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = WCImageForCustomAction_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(v1);

  return v3;
}

id WCOnboardingAnimationImagesForGreyEvent(unint64_t a1, double *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 > 3)
  {
    v5 = 0;
    v3 = 0.0;
    v4 = 1;
  }

  else
  {
    v3 = dbl_272A09108[a1];
    v4 = qword_272A09128[a1];
    v5 = off_279E5D248[a1];
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = 0;
  do
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%03lu", v5, v7];
    v9 = soft_WCImageForAssetName(v8);
    if (v9)
    {
      [v6 addObject:v9];
    }

    else
    {
      v10 = wc_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_fault_impl(&dword_2729FD000, v10, OS_LOG_TYPE_FAULT, "missing image %@", buf, 0xCu);
      }
    }

    ++v7;
  }

  while (v4 != v7);
  v11 = 1.0 / (v3 / [v6 count]);
  if (v11 > 0.0)
  {
    v12 = 1;
    do
    {
      v13 = [v6 firstObject];
      [v6 insertObject:v13 atIndex:0];

      v14 = v12++;
    }

    while (v11 > v14);
    if (v11 > 0.0)
    {
      v15 = 1;
      do
      {
        v16 = [v6 lastObject];
        [v6 addObject:v16];

        v17 = v15++;
      }

      while (v11 > v17);
    }
  }

  *a2 = v3 + 1.0 + 1.0;
  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

void *__getWCImageForAssetNameSymbolLoc_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WatchControlAssetsLibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WatchControlAssetsLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279E5D1B0;
    v8 = 0;
    WatchControlAssetsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = WatchControlAssetsLibraryCore_frameworkLibrary_0;
    if (WatchControlAssetsLibraryCore_frameworkLibrary_0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = WatchControlAssetsLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "WCImageForAssetName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWCImageForAssetNameSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WatchControlAssetsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WatchControlAssetsLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id WCNameForAutoScrollDirection(unint64_t a1)
{
  if (a1 <= 3)
  {
    a1 = WCLocalizedString(off_279E5D268[a1]);
  }

  return a1;
}

id WCNameForAutoMovementSpeed(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WCLocalizedString(off_279E5D288[a1]);
  }

  return a1;
}

id WCNameForAutoScrollHandlerStatus(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WCLocalizedString(off_279E5D2A0[a1]);
  }

  return a1;
}

uint64_t WCImageForCustomAction_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return WCDictionaryForCustomActionPayload_cold_1(v0);
}