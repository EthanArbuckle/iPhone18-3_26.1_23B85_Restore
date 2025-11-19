@interface UIALAShouldAdjustBaselineAlignmentConstraintsForViewsWithoutBaselineInformation
@end

@implementation UIALAShouldAdjustBaselineAlignmentConstraintsForViewsWithoutBaselineInformation

void ___UIALAShouldAdjustBaselineAlignmentConstraintsForViewsWithoutBaselineInformation_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v0 valueForKey:@"UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation"];

    v1 = v6;
    if (v6)
    {
      v2 = 1;
    }

    else
    {
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
        v1 = 0;
      }

      if (_UIInternalPreferencesRevisionVar < 1 || (v4 = _UIInternalPreference_UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation))
      {
        v3 = 1;
      }

      else
      {
        v5 = _UIInternalPreferencesRevisionVar;
        while (1)
        {
          v3 = v5 >= v4;
          if (v5 < v4)
          {
            break;
          }

          _UIInternalPreferenceSync(v5, &_UIInternalPreference_UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation, @"UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation", _UIInternalPreferenceUpdateBool);
          v4 = _UIInternalPreference_UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation;
          v1 = 0;
          if (v5 == _UIInternalPreference_UIStackViewHorizontalBaselineAlignmentAdjustsForAbsentBaselineInformation)
          {
            goto LABEL_9;
          }
        }

        v1 = 0;
      }

LABEL_9:
      if (byte_1ED48B674)
      {
        v2 = 1;
      }

      else
      {
        v2 = v3;
      }
    }

    _MergedGlobals_17_5 = v2;
  }
}

@end