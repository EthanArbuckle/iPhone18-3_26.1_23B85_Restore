@interface UIScrollViewVFDGetSettings
@end

@implementation UIScrollViewVFDGetSettings

uint64_t ___UIScrollViewVFDGetSettings_block_invoke()
{
  v0 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  if (_UIInternalPreferenceUsesDefault(&_MergedGlobals_953, @"ScrollViewVFDStaticTable", _UIInternalPreferenceUpdateId))
  {
    v1 = 0;
  }

  else
  {
    v1 = qword_1ED48B560;
  }

  v2 = _UIScrollViewVFDTableFromString(v1);
  if (v0 == 1)
  {
    v3 = &_UIScrollViewVFDDefaultConfig_iPad;
  }

  else
  {
    v3 = &_UIScrollViewVFDDefaultConfig_iPhone;
  }

  if (v0 == 1)
  {
    v4 = &unk_1E7123320;
  }

  else
  {
    v4 = &unk_1E7123348;
  }

  if (v2)
  {
    v3 = v2;
  }

  qword_1ED497410 = v3;
  if (_UIInternalPreferenceUsesDefault(algn_1ED48B568, @"ScrollViewVFDDynamicTable", _UIInternalPreferenceUpdateId))
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1ED48B570;
  }

  v6 = _UIScrollViewVFDTableFromString(v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  qword_1ED497418 = v7;
  result = _UIInternalPreferenceUsesDefault(algn_1ED48B578, @"ScrollViewVFDStaticRateRangeMinFrames", _UIInternalPreferenceUpdateInteger);
  v9 = qword_1ED48B580;
  if (result)
  {
    v9 = -1;
  }

  if (v9 < 0)
  {
    LODWORD(v9) = 5;
  }

  _MergedGlobals_32_1 = v9;
  return result;
}

@end