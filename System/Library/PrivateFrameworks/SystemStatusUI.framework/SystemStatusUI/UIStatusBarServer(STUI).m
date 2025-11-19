@interface UIStatusBarServer(STUI)
+ (id)stui_doubleHeightStatusStringMapping;
+ (id)stui_getDoubleHeightStatusStringBackgroundActivityWithIdentifier:()STUI;
+ (void)stui_postDoubleHeightStatusString:()STUI forBackgroundActivityWithIdentifier:;
@end

@implementation UIStatusBarServer(STUI)

+ (id)stui_doubleHeightStatusStringMapping
{
  if (_MergedGlobals_54 != -1)
  {
    dispatch_once(&_MergedGlobals_54, &__block_literal_global_10);
  }

  v1 = qword_280C1E868;

  return v1;
}

+ (void)stui_postDoubleHeightStatusString:()STUI forBackgroundActivityWithIdentifier:
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 stui_doubleHeightStatusStringMapping];
  [v7 setObject:v9 forKey:v6];
  v8 = STUIStyleOverrideForBackgroundActivityIdentifier(v6);

  if (v8)
  {
    [a1 postDoubleHeightStatusString:v9 forStyle:{objc_msgSend(MEMORY[0x277D75A78], "_defaultStyleForRequestedStyle:styleOverrides:activeStyleOverride:", 0, v8, 0)}];
  }
}

+ (id)stui_getDoubleHeightStatusStringBackgroundActivityWithIdentifier:()STUI
{
  v4 = a3;
  v5 = [a1 stui_doubleHeightStatusStringMapping];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v7 = STUIStyleOverrideForBackgroundActivityIdentifier(v4);
    if (v7)
    {
      v6 = [a1 getDoubleHeightStatusStringForStyle:{objc_msgSend(MEMORY[0x277D75A78], "_defaultStyleForRequestedStyle:styleOverrides:activeStyleOverride:", 0, v7, 0)}];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end