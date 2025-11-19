@interface _UITraitMonochromaticTreatment
+ (int64_t)_glassMonochromaticTreatment;
+ (int64_t)_sidebarListAccessoriesMonochromaticTreatment;
+ (int64_t)_sidebarListMonochromaticTreatment;
@end

@implementation _UITraitMonochromaticTreatment

+ (int64_t)_glassMonochromaticTreatment
{
  v2 = _UIInternalPreferenceUsesDefault_0(&_MergedGlobals_952, @"UseMonochromaticTreatment");
  if (byte_1ED48B544)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return _treatment(2, v3);
}

+ (int64_t)_sidebarListAccessoriesMonochromaticTreatment
{
  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_952, @"UseMonochromaticTreatment") & 1) != 0 || byte_1ED48B544)
  {
    v3 = _UIInternalPreferenceUsesDefault_0(&dword_1ED48B550, @"UseMonochromaticTreatmentSidebarListAccessories");
    if (byte_1ED48B554)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  return _treatment(1, v2);
}

+ (int64_t)_sidebarListMonochromaticTreatment
{
  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_952, @"UseMonochromaticTreatment") & 1) != 0 || byte_1ED48B544)
  {
    v3 = _UIInternalPreferenceUsesDefault_0(&dword_1ED48B548, @"UseMonochromaticTreatmentSidebarList");
    if (byte_1ED48B54C)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  return _treatment(1, v2);
}

@end