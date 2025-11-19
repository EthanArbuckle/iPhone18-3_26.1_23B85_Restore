@interface UISheetPresentationMetrics
@end

@implementation UISheetPresentationMetrics

void __46___UISheetPresentationMetrics__defaultMetrics__block_invoke()
{
  v0 = [[_UISheetPresentationMetrics alloc] _init];
  v1 = _MergedGlobals_15_7;
  _MergedGlobals_15_7 = v0;
}

void __67___UISheetPresentationMetrics_transitionSpringParametersHighSpeed___block_invoke()
{
  if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_948, @"SheetDampingRatio"))
  {
    v0 = 1.0;
  }

  else
  {
    v0 = *&qword_1ED48B458;
  }

  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B470, @"SheetResponse"))
  {
    v1 = 0.344144233;
  }

  else
  {
    v1 = *&qword_1ED48B478;
  }

  v2 = [_UISpringParameters parametersWithDampingRatio:v0 response:v1];
  v3 = qword_1ED49C088;
  qword_1ED49C088 = v2;

  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B460, @"SheetHighSpeedDampingRatio"))
  {
    v4 = 0.8;
  }

  else
  {
    v4 = *&qword_1ED48B468;
  }

  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B470, @"SheetResponse"))
  {
    v5 = 0.344144233;
  }

  else
  {
    v5 = *&qword_1ED48B478;
  }

  v6 = [_UISpringParameters parametersWithDampingRatio:v4 response:v5];
  v7 = qword_1ED49C090;
  qword_1ED49C090 = v6;
}

@end