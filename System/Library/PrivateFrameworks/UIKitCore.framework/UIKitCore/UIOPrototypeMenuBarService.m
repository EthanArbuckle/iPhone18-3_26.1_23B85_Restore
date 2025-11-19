@interface UIOPrototypeMenuBarService
@end

@implementation UIOPrototypeMenuBarService

void __44___UIOPrototypeMenuBarService_sharedService__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4A0FA8;
  qword_1ED4A0FA8 = v0;
}

uint64_t __45___UIOPrototypeMenuBarService_overlayService__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 24);

  return [v5 setDelegate:?];
}

uint64_t __96___UIOPrototypeMenuBarService_isUserAffordanceToShowPrototypeMenuBarAllowedForProcessForWindow___block_invoke()
{
  if (_UIApplicationProcessIsOverlayUI() & 1) != 0 || (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsDruid() & 1) != 0 || (_UIApplicationProcessIsPointerUI() & 1) != 0 || (_UIApplicationIsApplicationWidgetExtension() & 1) != 0 || (_UIApplicationIsWidgetServer())
  {
    result = 1;
  }

  else
  {
    result = _UIApplicationProcessIsWidgetRenderer();
  }

  _MergedGlobals_1303 = result;
  return result;
}

uint64_t __53___UIOPrototypeMenuBarService_togglePrototypeMenuBar__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if ((*(result + 16) & 1) == 0)
    {
      return [result _setMenuBarPresented:1];
    }
  }

  return result;
}

void __55___UIOPrototypeMenuBarService__addButtonToWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = [WeakRetained _hasInvalidated];
    v3 = v12;
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [v12 keyWindow];
      if ([v5 isUserAffordanceToShowPrototypeMenuBarAllowedForProcessForWindow:v6])
      {
        v7 = [*(a1 + 32) _shouldButtonsOnScenesBeEnabled];

        v3 = v12;
        if (!v7)
        {
          goto LABEL_9;
        }

        v6 = [[_UIOPrototypeMenuBarSummonButtonWindow alloc] initWithWindowScene:v12];
        [(_UIOPrototypeMenuBarSummonButtonWindow *)v6 setMenuBarPresented:*(*(a1 + 32) + 16)];
        [(UIWindow *)v6 setHidden:0];
        v8 = *(*(a1 + 32) + 8);
        if (!v8)
        {
          v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:3];
          v10 = *(a1 + 32);
          v11 = *(v10 + 8);
          *(v10 + 8) = v9;

          v8 = *(*(a1 + 32) + 8);
        }

        [v8 setObject:v6 forKey:v12];
      }

      v3 = v12;
    }
  }

LABEL_9:
}

@end