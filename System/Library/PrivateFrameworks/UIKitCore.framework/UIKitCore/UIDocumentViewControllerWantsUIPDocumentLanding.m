@interface UIDocumentViewControllerWantsUIPDocumentLanding
@end

@implementation UIDocumentViewControllerWantsUIPDocumentLanding

void ___UIDocumentViewControllerWantsUIPDocumentLanding_block_invoke()
{
  v0 = +[UITraitCollection _fallbackTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  _MergedGlobals_27_1 = v1 < 2;
  _MergedGlobals_27_1 = _os_feature_enabled_impl() & (v1 < 2);
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_ForceDocumentViewControllerDocumentLanding, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ForceDocumentViewControllerDocumentLanding))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = v2 < v5;
      if (v2 < v5)
      {
        break;
      }

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_ForceDocumentViewControllerDocumentLanding, @"ForceDocumentViewControllerDocumentLanding", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_ForceDocumentViewControllerDocumentLanding;
    }

    while (v2 != _UIInternalPreference_ForceDocumentViewControllerDocumentLanding);
  }

  if (byte_1EA95E494)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _MergedGlobals_27_1 |= v4;
}

@end