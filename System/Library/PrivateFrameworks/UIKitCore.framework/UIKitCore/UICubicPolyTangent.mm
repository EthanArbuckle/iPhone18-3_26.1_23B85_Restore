@interface UICubicPolyTangent
@end

@implementation UICubicPolyTangent

void __44___UICubicPolyTangent_keyboardTrackpadCurve__block_invoke()
{
  v0 = objc_alloc_init(_UICubicPolyTangent);
  v1 = _MergedGlobals_1356;
  _MergedGlobals_1356 = v0;

  [_MergedGlobals_1356 setInitialLinearGain:0.0];
  v2 = +[_UITextSelectionSettings sharedInstance];
  [v2 gain];
  [_MergedGlobals_1356 setParabolicGain:?];

  [_MergedGlobals_1356 setCubicGain:0.0];
  [_MergedGlobals_1356 setQuarticGain:0.0];
  v3 = +[_UITextSelectionSettings sharedInstance];
  [v3 linear];
  [_MergedGlobals_1356 setTangentLineSpeed:?];

  v4 = +[_UITextSelectionSettings sharedInstance];
  [v4 parabolic];
  [_MergedGlobals_1356 setTangentSqrtSpeed:?];

  [_MergedGlobals_1356 setTangentCbrtSpeed:0.0];
  [_MergedGlobals_1356 setTangentHyperCbrtSpeed:0.0];
  v5 = +[_UITextSelectionSettings sharedInstance];
  [v5 addKeyObserver:_MergedGlobals_1356];
}

@end