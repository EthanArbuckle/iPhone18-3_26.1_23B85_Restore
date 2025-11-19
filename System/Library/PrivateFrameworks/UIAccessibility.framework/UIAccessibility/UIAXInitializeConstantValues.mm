@interface UIAXInitializeConstantValues
@end

@implementation UIAXInitializeConstantValues

uint64_t ___UIAXInitializeConstantValues_block_invoke()
{
  kUIAccessibilityGSEventFlagEventFallThru = 0x1000000;
  UIAccessibilityScreenWillChangeNotification = 1055;
  UIAccessibilityScreenLockedNotification = 1004;
  UIAccessibilityScreenOnNotification = 1039;
  UIAccessibilityScreenUnlockedByExternalDeviceNotification = 1030;
  UIAccessibilityAlertNotification = 1006;
  UIAccessibilityWebPageLoadedNotification = 1007;
  UIAccessibilityValueChangedNotification = 1005;
  UIAccessibilitySelectionChangedNotification = 1017;
  UIAccessibilityAutoCorrectionMadeNotification = 1010;
  UIAccessibilityKeyboardKeySelectedNotification = 1012;
  UIAccessibilityAutoCorrectionDisplayedNotification = 1013;
  UIAccessibilityTextReplacementOccurredNotification = 1052;
  UIAccessibilityPasteOperationOccurredNotification = 1054;
  UIAccessibilityKeyboardChangedNotification = 1014;
  UIAccessibilitySpringBoardReturnNotification = 1015;
  UIAccessibilityElementMovedNotification = 1016;
  UIAccessibilityFirstResponderChangedNotification = 1018;
  UIAccessibilityKeyboardFocusChangedNotification = 1078;
  UIAccessibilityNativeFocusItemDidChangeWithContextNotification = 1053;
  UIAccessibilityDevicePointerDidEnterElementNotification = 1077;
  UIAccessibilityLowBatteryNotification = 1019;
  UIAccessibilityMoveToElementNotification = 1020;
  UIAccessibilityInvalidTextInputNotification = 1023;
  UIAccessibilityViewAnimationEndedNotification = 1025;
  UIAccessibilityDictationRequestCompleteNotification = 1027;
  UIAccessibilityKBPopupVariantsDisplayedNotification = 1029;
  UIAccessibilityUpdateElementVisualsNotification = 1044;
  UIAccessibilityElementPreviewNotification = 1045;
  UIAccessibilityElementPreviewActionNotification = 1051;
  UIAccessibilityScreenWillWakeNotification = 1059;
  UIAccessibilityWebFormControlInteractionStartNotification = 1061;
  UIAccessibilityWebFormControlInteractionEndNotification = 1062;
  UIAccessibilityFKAArrowNavigationNotification = 1067;
  UIAccessibilityScrollViewDidEndDeceleratingNotification = 1069;
  UIAccessibilityContextMenuStatusNotification = 1070;
  UIAccessibilityEyeTrackingCalibrationStartNotification = 1087;
  UIAccessibilityEyeTrackingCalibrationEndNotification = 1088;
  objc_storeStrong(&UIAccessibilityMoveToElementNotificationKeyElement, *MEMORY[0x1E69890C0]);
  objc_storeStrong(&UIAccessibilityMoveToElementNotificationKeySyncNativeFocus, *MEMORY[0x1E69890D0]);
  objc_storeStrong(&UIAccessibilityMoveToElementNotificationKeyIgnoreTouchInProgress, *MEMORY[0x1E69890C8]);
  objc_storeStrong(&UIAccessibilityAutoCorrectionForContinuousPathKey, *MEMORY[0x1E6988FF8]);
  UIAccessibilityTraitWebContent = *MEMORY[0x1E6989268];
  UIAccessibilityTraitTextEntry = *MEMORY[0x1E6989160];
  UIAccessibilityTraitPickerElement = *MEMORY[0x1E69890F8];
  UIAccessibilityTraitIsEditing = *MEMORY[0x1E6989090];
  UIAccessibilityTraitLaunchIcon = *MEMORY[0x1E69890A0];
  UIAccessibilityTraitFolderIcon = *MEMORY[0x1E6989050];
  UIAccessibilityTraitStatusBarElement = *MEMORY[0x1E6989148];
  UIAccessibilityTraitAllowsLayoutChangeInStatusBar = *MEMORY[0x1E6988FD8];
  UIAccessibilityTraitSecureTextField = *MEMORY[0x1E6989120];
  UIAccessibilityTraitBackButton = *MEMORY[0x1E6989000];
  UIAccessibilityTraitToggle = *MEMORY[0x1E6989218];
  UIAccessibilityTraitSelectionDismissesItem = *MEMORY[0x1E6989130];
  UIAccessibilityTraitVisited = *MEMORY[0x1E6989260];
  UIAccessibilityTraitScrollable = *MEMORY[0x1E6989118];
  UIAccessibilityTraitSpacer = *MEMORY[0x1E6989138];
  UIAccessibilityTraitTableIndex = *MEMORY[0x1E6989158];
  UIAccessibilityTraitMap = *MEMORY[0x1E69890B0];
  UIAccessibilityTraitTextOperationsAvailable = *MEMORY[0x1E6989210];
  UIAccessibilityTraitDraggable = *MEMORY[0x1E6989030];
  UIAccessibilityTraitGesturePracticeRegion = *MEMORY[0x1E6989058];
  UIAccessibilityTraitPopupButton = *MEMORY[0x1E6989108];
  UIAccessibilityTraitAllowsNativeSliding = *MEMORY[0x1E6988FE0];
  UIAccessibilityTraitTouchContainer = *MEMORY[0x1E6989220];
  UIAccessibilityTraitBookContent = *MEMORY[0x1E6989008];
  UIAccessibilityTraitMenuItem = *MEMORY[0x1E69890B8];
  UIAccessibilityAutoCorrectCandidate = *MEMORY[0x1E6988FF0];
  UIAccessibilityTraitDeleteKey = *MEMORY[0x1E6989028];
  UIAccessibilityTraitTabButton = *MEMORY[0x1E6989150];
  UIAccessibilityTraitRadioButton = *MEMORY[0x1E6989110];
  UIAccessibilityTraitInactive = *MEMORY[0x1E6989070];
  UIAccessibilityTraitAlert = *MEMORY[0x1E6988FC8];
  UIAccessibilityScrollToVisibleAction = 2003;
  UIAccessibilityIncrementAction = 2004;
  UIAccessibilityDecrementAction = 2005;
  UIAccessibilityScrollUpPageAction = 2007;
  UIAccessibilityScrollDownPageAction = 2006;
  UIAccessibilityScrollRightPageAction = 2009;
  UIAccessibilityScrollLeftPageAction = 2008;
  UIAccessibilityActivateAction = 2010;
  UIAccessibilityStartStopToggleAction = 2011;
  _UIAccessibilitySetBroadcastCallback();
  _UIAccessibilitySetConvertFrameCallback();
  _UIAccessibilitySetConvertPathCallback();
  _UIAccessibilitySetConvertAccessibilityPathToViewCallback();

  return MEMORY[0x1EEE4E170](_UIAccessibilityFocusedElementForAssistiveTech);
}

@end