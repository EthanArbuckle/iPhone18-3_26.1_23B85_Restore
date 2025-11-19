@interface SBGestureDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBGestureDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"multitaskingGesturesRequireEducation"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBGestureRequiresEducation-Multitasking" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGesturesAllowed"];
  v6 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBUseSystemGestures" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"productivityGesturesRequireEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBGestureRequiresEducation-Productivity" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"productivityGesturesAllowed"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBProductivityGesturesAllowed" toDefaultValue:v6 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"swipeToRevealMenuBarGesturesEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBSwipeToRevealMenuBarGesturesEnabled" toDefaultValue:v6 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGestureLoggingOptions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBSystemGestureLogging" toDefaultValue:0 options:1];
}

@end