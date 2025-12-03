@interface _UISEGestureFeatureSettings
- (CGRect)bounds;
- (_UISEGestureFeatureSettings)init;
@end

@implementation _UISEGestureFeatureSettings

- (_UISEGestureFeatureSettings)init
{
  v14.receiver = self;
  v14.super_class = _UISEGestureFeatureSettings;
  v2 = [(_UISEGestureFeatureSettings *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_backProjectTime = xmmword_18A67B920;
    *&v2->_bottomEdgeRegionSize = xmmword_18A67B930;
    *&v2->_edgeAngleWindow = xmmword_18A67B940;
    v4 = 13.0;
    if (!_UIDeviceNativeUserInterfaceIdiom() && MGGetBoolAnswer())
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen _referenceBounds];
      v7 = v6;

      v8 = MGGetBoolAnswer();
      v9 = 0.09;
      if (v8)
      {
        v9 = 0.1;
      }

      v4 = v7 * v9;
    }

    v3->_edgeRegionSize = v4;
    v3->_hysteresis = 15.0;
    v3->_minimumNumberOfSubfeatures = 1;
    v3->_maximumSwipeDuration = 0.25;
    v10 = MGGetBoolAnswer();
    v11 = 1.0;
    if (v10)
    {
      v11 = 2.0;
    }

    v3->_maximumBackProjectTimeFactor = v11;
    v12 = *(MEMORY[0x1E695F050] + 16);
    v3->_bounds.origin = *MEMORY[0x1E695F050];
    v3->_bounds.size = v12;
    v3->_interfaceBottomEdge = 0;
    v3->_targetEdges = 0;
  }

  return v3;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end