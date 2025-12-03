@interface _UICubicPolyTangent
+ (id)keyboardTrackpadCurve;
- (_UICubicPolyTangent)init;
- (double)clipForIOFixedMath:(double)math polynomialPower:(int)power tangencyStartingAt:(double)at;
- (double)gainForPower:(int)power;
- (double)piecewiseCubicAcceleratedSpeed:(double)speed;
- (double)quarticDerivative:(double)derivative;
- (double)quarticTangentFunction:(double)function powerOfEarliestTangent:(int)tangent;
- (double)tangentSpeedForPower:(int)power;
- (int)RootPowerOfEarliestTangent:(int)tangent;
- (void)clipGainsForIOFixedMathWithTangency;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation _UICubicPolyTangent

- (_UICubicPolyTangent)init
{
  v3.receiver = self;
  v3.super_class = _UICubicPolyTangent;
  result = [(_UICubicPolyTangent *)&v3 init];
  if (result)
  {
    *&result->_cubicGain = 0u;
    *&result->_initialLinearGain = 0u;
    *&result->_tangentLineSpeed = xmmword_18A683010;
    result->_tangentCbrtSpeed = 0.0;
    result->_tangentHyperCbrtSpeed = 0.0;
  }

  return result;
}

- (double)clipForIOFixedMath:(double)math polynomialPower:(int)power tangencyStartingAt:(double)at
{
  result = pow(at * 0.0078125 * 16383.0, 1.0 / power) / at;
  if (result >= math)
  {
    result = math;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)clipGainsForIOFixedMathWithTangency
{
  [(_UICubicPolyTangent *)self tangentSpeedForPower:[(_UICubicPolyTangent *)self RootPowerOfEarliestTangent:1]];
  if (v3 <= 128.0 && v3 > 0.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 128.0;
  }

  [(_UICubicPolyTangent *)self clipForIOFixedMath:1 polynomialPower:self->_initialLinearGain tangencyStartingAt:v5];
  self->_initialLinearGain = v6;
  [(_UICubicPolyTangent *)self clipForIOFixedMath:2 polynomialPower:self->_parabolicGain tangencyStartingAt:v5];
  self->_parabolicGain = v7;
  [(_UICubicPolyTangent *)self clipForIOFixedMath:3 polynomialPower:self->_cubicGain tangencyStartingAt:v5];
  self->_cubicGain = v8;
  [(_UICubicPolyTangent *)self clipForIOFixedMath:4 polynomialPower:self->_quarticGain tangencyStartingAt:v5];
  self->_quarticGain = v9;
}

- (double)tangentSpeedForPower:(int)power
{
  if (power < 1)
  {
    return 0.0;
  }

  v3 = 8 * (power - 1) + 40;
  if (power >= 4)
  {
    v3 = 64;
  }

  return *(&self->super.isa + v3);
}

- (double)gainForPower:(int)power
{
  if (power < 1)
  {
    return 0.0;
  }

  v3 = 8 * (power - 1) + 8;
  if (power >= 4)
  {
    v3 = 32;
  }

  return *(&self->super.isa + v3);
}

- (int)RootPowerOfEarliestTangent:(int)tangent
{
  if (tangent > 4)
  {
    return 0;
  }

  v3 = *&tangent;
  v5 = 0;
  v6 = 0.0;
  do
  {
    [(_UICubicPolyTangent *)self tangentSpeedForPower:v3];
    if (v7 != 0.0 && (v7 < v6 || v6 <= 0.0))
    {
      v5 = v3;
      v6 = v7;
    }

    v3 = (v3 + 1);
  }

  while (v3 != 5);
  return v5;
}

- (double)quarticDerivative:(double)derivative
{
  v3 = (self->_parabolicGain + self->_parabolicGain) * (self->_parabolicGain * derivative);
  v4 = *&self->_cubicGain;
  v5 = vmulq_n_f64(v4, derivative);
  v4.f64[1] = vmuld_lane_f64(4.0, v4, 1);
  v6.f64[1] = v5.f64[1];
  v6.f64[0] = 3.0;
  v7 = vmulq_f64(v5, vmulq_f64(v5, vmulq_f64(v4, v6)));
  return self->_initialLinearGain + v3 + v7.f64[0] + v7.f64[1];
}

- (double)quarticTangentFunction:(double)function powerOfEarliestTangent:(int)tangent
{
  v6 = [(_UICubicPolyTangent *)self RootPowerOfEarliestTangent:2];
  [(_UICubicPolyTangent *)self tangentSpeedForPower:v6];
  v8 = v7;
  if (tangent == 1)
  {
    [(_UICubicPolyTangent *)self quarticDerivative:self->_tangentLineSpeed];
    v10 = v9;
    [(_UICubicPolyTangent *)self quarticFunction:self->_tangentLineSpeed];
    v12 = v11 - v10 * self->_tangentLineSpeed;
    functionCopy2 = function;
    if (v8 >= function || v8 == 0.0)
    {
      return v10 * function + v12;
    }

    v23 = v8 * v10 + v12;
  }

  else
  {
    [(_UICubicPolyTangent *)self quarticFunction:v7];
    v23 = v14;
    [(_UICubicPolyTangent *)self quarticDerivative:v8];
    v10 = v15;
    functionCopy2 = function;
  }

  if (v6 == 3)
  {
    v17 = v23 * (v23 * (v10 * 3.0)) * functionCopy2 + v23 * (v23 * v23) - v23 * (v23 * (v10 * 3.0)) * self->_tangentCbrtSpeed;
    v18 = 0.33333;
  }

  else
  {
    if (v6 == 2)
    {
      return sqrt(v23 * (v10 + v10) * functionCopy2 + v23 * v23 - v23 * (v10 + v10) * self->_tangentSqrtSpeed);
    }

    v19 = vdupq_lane_s64(*&v23, 0);
    v20.f64[1] = v19.f64[1];
    v20.f64[0] = v23 * (v10 * 4.0);
    v21 = vmulq_n_f64(vmulq_n_f64(v20, v23), v23);
    v19.f64[0] = functionCopy2;
    v22 = vmulq_f64(v19, v21);
    v17 = v22.f64[0] + v22.f64[1] - self->_tangentHyperCbrtSpeed * v21.f64[0];
    v18 = 0.25;
  }

  return pow(v17, v18);
}

- (double)piecewiseCubicAcceleratedSpeed:(double)speed
{
  v5 = [(_UICubicPolyTangent *)self RootPowerOfEarliestTangent:1];
  [(_UICubicPolyTangent *)self tangentSpeedForPower:v5];
  if (v6 >= speed || v6 == 0.0)
  {

    [(_UICubicPolyTangent *)self quarticFunction:speed];
  }

  else
  {

    [(_UICubicPolyTangent *)self quarticTangentFunction:v5 powerOfEarliestTangent:speed];
  }

  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"linear"])
  {
    [settingsCopy linear];
    [(_UICubicPolyTangent *)self setTangentLineSpeed:?];
  }

  else if ([keyCopy isEqualToString:@"parabolic"])
  {
    [settingsCopy parabolic];
    [(_UICubicPolyTangent *)self setTangentSqrtSpeed:?];
  }

  else if ([keyCopy isEqualToString:@"gain"])
  {
    [settingsCopy gain];
    [(_UICubicPolyTangent *)self setParabolicGain:?];
  }
}

+ (id)keyboardTrackpadCurve
{
  if (qword_1ED4A2700 != -1)
  {
    dispatch_once(&qword_1ED4A2700, &__block_literal_global_654);
  }

  v3 = _MergedGlobals_1356;

  return v3;
}

@end