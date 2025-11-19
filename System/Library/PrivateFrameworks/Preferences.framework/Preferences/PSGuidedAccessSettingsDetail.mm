@interface PSGuidedAccessSettingsDetail
+ (unint64_t)guidedAccessAvailability;
+ (void)enterGuidedAccessMode;
@end

@implementation PSGuidedAccessSettingsDetail

+ (void)enterGuidedAccessMode
{
  if (+[PSGuidedAccessSettingsDetail guidedAccessHasPasscode])
  {

    MEMORY[0x1EEE60AD8]();
  }
}

+ (unint64_t)guidedAccessAvailability
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAXGuidedAccessGetAvailabilitySymbolLoc_ptr;
  v9 = getAXGuidedAccessGetAvailabilitySymbolLoc_ptr;
  if (!getAXGuidedAccessGetAvailabilitySymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getAXGuidedAccessGetAvailabilitySymbolLoc_block_invoke;
    v5[3] = &unk_1E71DBC78;
    v5[4] = &v6;
    __getAXGuidedAccessGetAvailabilitySymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v4 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2();
}

@end