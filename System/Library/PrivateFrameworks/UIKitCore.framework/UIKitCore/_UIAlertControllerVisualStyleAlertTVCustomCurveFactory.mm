@interface _UIAlertControllerVisualStyleAlertTVCustomCurveFactory
- (_UIAlertControllerVisualStyleAlertTVCustomCurveFactory)initWithCustomCurve:(unint64_t)a3;
- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4;
@end

@implementation _UIAlertControllerVisualStyleAlertTVCustomCurveFactory

- (_UIAlertControllerVisualStyleAlertTVCustomCurveFactory)initWithCustomCurve:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerVisualStyleAlertTVCustomCurveFactory;
  result = [(_UIAlertControllerVisualStyleAlertTVCustomCurveFactory *)&v5 init];
  if (result)
  {
    result->_curve = a3;
  }

  return result;
}

- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4
{
  v4 = [(_UIAlertControllerVisualStyleAlertTVCustomCurveFactory *)self curve:a3];
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