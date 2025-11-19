@interface UIImageViewSymbolPixelAlignmentEnabled
@end

@implementation UIImageViewSymbolPixelAlignmentEnabled

void ___UIImageViewSymbolPixelAlignmentEnabled_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v2 = _UIInternalPreference_UIImageViewPreferredSymbolPixelAlignmentBehavior, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIImageViewPreferredSymbolPixelAlignmentBehavior))
  {
    v1 = 0;
  }

  else
  {
    while (v0 >= v2)
    {
      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIImageViewPreferredSymbolPixelAlignmentBehavior, @"UIImageViewPreferredSymbolPixelAlignmentBehavior", _UIInternalPreferenceUpdateInteger);
      v1 = 0;
      v2 = _UIInternalPreference_UIImageViewPreferredSymbolPixelAlignmentBehavior;
      if (v0 == _UIInternalPreference_UIImageViewPreferredSymbolPixelAlignmentBehavior)
      {
        goto LABEL_5;
      }
    }

    v1 = qword_1ED48B780 == 1;
  }

LABEL_5:
  byte_1ED497FDA = v1;
}

@end