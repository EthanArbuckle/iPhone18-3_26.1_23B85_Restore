@interface UIPencilPreferences
@end

@implementation UIPencilPreferences

void __41___UIPencilPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1268;
  _MergedGlobals_1268 = v1;
}

void __52___UIPencilPreferences__preferredTapActionDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() willChangeValueForKey:@"preferredTapAction"];
    v2[1] = _UIPencilPreferredActionForKey(@"UIPencilPreferredTapAction");
    [objc_opt_class() didChangeValueForKey:@"preferredTapAction"];
    WeakRetained = v2;
  }
}

void __56___UIPencilPreferences__preferredSqueezeActionDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() willChangeValueForKey:@"_preferredSqueezeAction"];
    v2[2] = _UIPencilPreferredActionForKey(@"UIPencilPreferredSqueezeAction");
    [objc_opt_class() didChangeValueForKey:@"_preferredSqueezeAction"];
    WeakRetained = v2;
  }
}

void __58___UIPencilPreferences__prefersPencilOnlyDrawingDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [objc_opt_class() willChangeValueForKey:@"prefersPencilOnlyDrawing"];
    v2[24] = v2[24] & 0xFE | _UIPencilPrefersPencilOnlyDrawingForKey();
    [objc_opt_class() didChangeValueForKey:@"prefersPencilOnlyDrawing"];
    WeakRetained = v2;
  }
}

void __57___UIPencilPreferences__prefersHoverToolPreviewDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [objc_opt_class() willChangeValueForKey:@"prefersHoverToolPreview"];
    if (_UIPencilPrefersHoverToolPreview())
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3[24] = v3[24] & 0xFD | v2;
    [objc_opt_class() didChangeValueForKey:@"prefersHoverToolPreview"];
    WeakRetained = v3;
  }
}

@end