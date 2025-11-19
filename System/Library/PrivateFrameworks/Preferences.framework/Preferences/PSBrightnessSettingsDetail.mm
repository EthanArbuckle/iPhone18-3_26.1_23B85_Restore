@interface PSBrightnessSettingsDetail
+ (double)incrementedBrightnessValue:(double)a3;
+ (void)beginBrightnessAdjustmentTransaction;
+ (void)beginObservingExternalBrightnessChanges:(id)a3 changedAction:(id)a4;
+ (void)endBrightnessAdjustmentTransaction;
+ (void)endObservingExternalBrightnessChanges;
+ (void)incrementBrightnessValue:(double)a3;
+ (void)setAutoBrightnessEnabled:(BOOL)a3;
+ (void)setValue:(double)a3;
@end

@implementation PSBrightnessSettingsDetail

+ (double)incrementedBrightnessValue:(double)a3
{
  PSBKSDisplayBrightnessGetCurrent();
  result = fmax(v4 + a3, 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

+ (void)incrementBrightnessValue:(double)a3
{
  PSBKSDisplayBrightnessGetCurrent();
  v5 = fmax(v4 + a3, 0.0);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v5;

  PSBKSDisplayBrightnessSet(v6);
}

+ (void)setValue:(double)a3
{
  if (__transactionRef)
  {
    v4 = a3;

    PSBKSDisplayBrightnessSet(v4);
  }

  else
  {
    NSLog(&cfstr_DSWarningThere.isa, a2, a3, 684, "+[PSBrightnessSettingsDetail setValue:]");
  }
}

+ (void)beginBrightnessAdjustmentTransaction
{
  if (!__transactionRef)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v2 = getBKSDisplayBrightnessTransactionCreateSymbolLoc_ptr;
    v8 = getBKSDisplayBrightnessTransactionCreateSymbolLoc_ptr;
    if (!getBKSDisplayBrightnessTransactionCreateSymbolLoc_ptr)
    {
      v3 = BackBoardServicesLibrary();
      v6[3] = dlsym(v3, "BKSDisplayBrightnessTransactionCreate");
      getBKSDisplayBrightnessTransactionCreateSymbolLoc_ptr = v6[3];
      v2 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v2)
    {
      v4 = [PSContactsAuthorizationLevelController dealloc];
      _Block_object_dispose(&v5, 8);
      _Unwind_Resume(v4);
    }

    __transactionRef = v2(*MEMORY[0x1E695E480]);
  }
}

+ (void)endBrightnessAdjustmentTransaction
{
  if (__transactionRef)
  {
    CFRelease(__transactionRef);
    __transactionRef = 0;
  }
}

+ (void)beginObservingExternalBrightnessChanges:(id)a3 changedAction:(id)a4
{
  v5 = a4;
  v6 = a3;
  observer = +[PSBrightnessController sharedController];
  [observer setIsTracking:v6];

  [observer setBrightnessChangedExternally:v5];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observer, _BrightnessChangedExternally, *MEMORY[0x1E69DE368], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (void)endObservingExternalBrightnessChanges
{
  observer = +[PSBrightnessController sharedController];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, *MEMORY[0x1E69DE368], 0);
  [observer setIsTracking:0];
  [observer setBrightnessChangedExternally:0];
}

+ (void)setAutoBrightnessEnabled:(BOOL)a3
{
  CFPreferencesSetAppValue(@"BKEnableALS", [MEMORY[0x1E696AD98] numberWithBool:0], @"com.apple.backboardd");

  CFPreferencesAppSynchronize(@"com.apple.backboardd");
}

@end