@interface _UIAlertControllerVisualStyleAlertTVCustomCurveFactory
- (_UIAlertControllerVisualStyleAlertTVCustomCurveFactory)initWithCustomCurve:(unint64_t)curve;
- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path;
@end

@implementation _UIAlertControllerVisualStyleAlertTVCustomCurveFactory

- (_UIAlertControllerVisualStyleAlertTVCustomCurveFactory)initWithCustomCurve:(unint64_t)curve
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerVisualStyleAlertTVCustomCurveFactory;
  result = [(_UIAlertControllerVisualStyleAlertTVCustomCurveFactory *)&v5 init];
  if (result)
  {
    result->_curve = curve;
  }

  return result;
}

- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path
{
  v4 = [(_UIAlertControllerVisualStyleAlertTVCustomCurveFactory *)self curve:view];
  if (v4 == 1)
  {
    LODWORD(v5) = 1040522936;
    LODWORD(v6) = 1052938076;
    LODWORD(v7) = 1043878380;
    goto LABEL_5;
  }

  if (!v4)
  {
    LODWORD(v5) = 1051931443;
    LODWORD(v7) = 1043878380;
    v6 = 0.0;
LABEL_5:
    LODWORD(v8) = 1.0;
    v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :v6 :v7 :v8];
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
LABEL_7:

  return v9;
}

@end