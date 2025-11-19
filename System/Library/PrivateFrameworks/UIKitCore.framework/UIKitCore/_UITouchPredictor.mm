@interface _UITouchPredictor
- (_UITouchPredictor)init;
- (_UITouchPredictor)initWithTouchPredictor:(id)a3;
- (id)_predictedTouchesAtIndex:(unint64_t)a3 forTouch:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionFromIndex:(int)a3 toIndex:(int)a4 includeHeader:(BOOL)a5 includeDetailedConfidence:(BOOL)a6;
- (id)predictedTouchesForTouch:(id)a3;
- (unint64_t)_dampenedNumPredictionsAtIndex:(unint64_t)a3;
- (unint64_t)_numPredictionsAtIndex:(unint64_t)a3 hardLimit:(unint64_t *)a4;
- (void)_updatePredictionsForTouch:(id)a3 weight:(double)a4;
- (void)addTouch:(id)a3;
@end

@implementation _UITouchPredictor

- (_UITouchPredictor)init
{
  v16.receiver = self;
  v16.super_class = _UITouchPredictor;
  v2 = [(_UITouchPredictor *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    predictions = v2->_predictions;
    v2->_predictions = v3;

    v2->_predictionsValid = 0;
    v2->_numPredictionsBufferCount = 0;
    v2->_averageTouchInterval = 0.0;
    v2->_lastTouchTimestamp = 0.0;
    v5 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    xValuePredictor = v2->_xValuePredictor;
    v2->_xValuePredictor = v5;

    [(_UIValuePredictor *)v2->_xValuePredictor setMinHistoricalAccuracyThreshold:0.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMaxHistoricalAccuracyThreshold:2.0];
    [(_UIValuePredictor *)v2->_xValuePredictor setDerivativeStabilityThreshold:1.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMinVelocityThreshold:0.5];
    [(_UIValuePredictor *)v2->_xValuePredictor setMaxVelocityThreshold:1.5];
    v7 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    yValuePredictor = v2->_yValuePredictor;
    v2->_yValuePredictor = v7;

    [(_UIValuePredictor *)v2->_yValuePredictor setMinHistoricalAccuracyThreshold:0.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMaxHistoricalAccuracyThreshold:2.0];
    [(_UIValuePredictor *)v2->_yValuePredictor setDerivativeStabilityThreshold:1.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMinVelocityThreshold:0.5];
    [(_UIValuePredictor *)v2->_yValuePredictor setMaxVelocityThreshold:1.5];
    v9 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    angleValuePredictor = v2->_angleValuePredictor;
    v2->_angleValuePredictor = v9;

    [(_UIValuePredictor *)v2->_angleValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_angleValuePredictor setMaxConstraint:1.57079633];
    v11 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    azimuthValuePredictor = v2->_azimuthValuePredictor;
    v2->_azimuthValuePredictor = v11;

    [(_UIValuePredictor *)v2->_azimuthValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_azimuthValuePredictor setMaxConstraint:6.28318531];
    [(_UIValuePredictor *)v2->_azimuthValuePredictor setWrapConstraint:1];
    v13 = [[_UIValuePredictor alloc] initWithNumPredictions:4 numDerivatives:4];
    forceValuePredictor = v2->_forceValuePredictor;
    v2->_forceValuePredictor = v13;

    [(_UIValuePredictor *)v2->_forceValuePredictor setMinConstraint:0.0];
    [(_UIValuePredictor *)v2->_forceValuePredictor setMaxConstraint:500.0];
  }

  return v2;
}

- (_UITouchPredictor)initWithTouchPredictor:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _UITouchPredictor;
  v5 = [(_UITouchPredictor *)&v24 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    predictions = v5->_predictions;
    v5->_predictions = v6;

    v5->_predictionsValid = 0;
    v5->_numPredictionsBufferCount = 0;
    v5->_averageTouchInterval = 0.0;
    v5->_lastTouchTimestamp = 0.0;
    v8 = [v4 _xValuePredictor];
    v9 = [v8 copy];
    xValuePredictor = v5->_xValuePredictor;
    v5->_xValuePredictor = v9;

    v11 = [v4 _yValuePredictor];
    v12 = [v11 copy];
    yValuePredictor = v5->_yValuePredictor;
    v5->_yValuePredictor = v12;

    v14 = [v4 _angleValuePredictor];
    v15 = [v14 copy];
    angleValuePredictor = v5->_angleValuePredictor;
    v5->_angleValuePredictor = v15;

    v17 = [v4 _azimuthValuePredictor];
    v18 = [v17 copy];
    azimuthValuePredictor = v5->_azimuthValuePredictor;
    v5->_azimuthValuePredictor = v18;

    v20 = [v4 _forceValuePredictor];
    v21 = [v20 copy];
    forceValuePredictor = v5->_forceValuePredictor;
    v5->_forceValuePredictor = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithTouchPredictor:self];
}

- (void)addTouch:(id)a3
{
  v10 = a3;
  [(NSMutableArray *)self->_predictions removeAllObjects];
  self->_predictionsValid = 0;
  if (self->_lastTouchTimestamp == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    [v10 timestamp];
    v5 = v4 - self->_lastTouchTimestamp;
    if (self->_averageTouchInterval == 0.0)
    {
      averageTouchInterval = v5;
    }

    else
    {
      averageTouchInterval = self->_averageTouchInterval;
    }

    v7 = (v5 + averageTouchInterval) * 0.5;
    self->_averageTouchInterval = v7;
    v8 = v7 / v5;
  }

  [v10 timestamp];
  self->_lastTouchTimestamp = v9;
  [(_UITouchPredictor *)self _updatePredictionsForTouch:v10 weight:v8];
}

- (unint64_t)_numPredictionsAtIndex:(unint64_t)a3 hardLimit:(unint64_t *)a4
{
  [(_UIValuePredictor *)self->_xValuePredictor _predictionsAtIndex:?];
  [(_UIValuePredictor *)self->_yValuePredictor _predictionsAtIndex:a3];
  v7 = [(_UIValuePredictor *)self->_xValuePredictor _confidenceFactorsAtIndex:a3];
  v8 = [(_UIValuePredictor *)self->_yValuePredictor _confidenceFactorsAtIndex:a3];
  v9 = [(_UIValuePredictor *)self->_xValuePredictor _confidenceFactorsForVelocityAtIndex:a3];
  v10 = [(_UIValuePredictor *)self->_yValuePredictor _confidenceFactorsForVelocityAtIndex:a3];
  v11 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      if ((v9[v11] + v10[v11]) * 0.5 >= 0.3)
      {
        v13 = (v11 + 1) * 0.75 * 0.25;
        if (v7[v11] >= v13 && v8[v11] >= v13)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }
      }
    }

    ++v11;
  }

  while (v11 != 4);
  *a4 = 4;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  else
  {
    return v12;
  }
}

- (unint64_t)_dampenedNumPredictionsAtIndex:(unint64_t)a3
{
  v15 = 4;
  v4 = [(_UITouchPredictor *)self _numPredictionsAtIndex:a3 hardLimit:&v15];
  numPredictionsBufferCount = self->_numPredictionsBufferCount;
  if (numPredictionsBufferCount <= 4)
  {
    v6 = (&self->super.isa + numPredictionsBufferCount);
    v7 = numPredictionsBufferCount + 1;
    self->_numPredictionsBufferCount = v7;
    v6[10] = v4;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0.0;
    goto LABEL_8;
  }

  v12 = *&self->_numPredictionsBuffer[3];
  *self->_numPredictionsBuffer = *&self->_numPredictionsBuffer[1];
  *&self->_numPredictionsBuffer[2] = v12;
  self->_numPredictionsBuffer[4] = v4;
  v7 = self->_numPredictionsBufferCount;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  numPredictionsBuffer = self->_numPredictionsBuffer;
  v9 = 0.0;
  v10 = v7;
  do
  {
    v11 = *numPredictionsBuffer++;
    v9 = v9 + v11;
    --v10;
  }

  while (v10);
LABEL_8:
  v13 = round(v9 / v7);
  if (v13 > v15)
  {
    return v15;
  }

  return v13;
}

- (id)_predictedTouchesAtIndex:(unint64_t)a3 forTouch:(id)a4
{
  v6 = a4;
  if (!self->_predictionsValid)
  {
    v33 = [(_UIValuePredictor *)self->_xValuePredictor _predictionsAtIndex:a3];
    v7 = [(_UIValuePredictor *)self->_yValuePredictor _predictionsAtIndex:a3];
    v8 = [(_UIValuePredictor *)self->_angleValuePredictor _predictionsAtIndex:a3];
    v9 = [(_UIValuePredictor *)self->_azimuthValuePredictor _predictionsAtIndex:a3];
    v10 = [(_UIValuePredictor *)self->_forceValuePredictor _predictionsAtIndex:a3];
    v31 = v6;
    v11 = v6;
    v12 = [v11 window];
    [v12 contentScaleFactor];
    v34 = v13;

    averageTouchInterval = self->_averageTouchInterval;
    v15 = [(_UITouchPredictor *)self _dampenedNumPredictionsAtIndex:a3];
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = v15 & 0x7FFFFFFF;
      v32 = vdupq_lane_s64(v34, 0);
      v18 = v11;
      while (1)
      {
        v19 = v18;
        v18 = [v11 _clone];
        [v18 _setPreviousTouch:v19];
        v20 = v33[v16];
        v21 = v7[v16];
        v22 = v20;
        v25.f64[1] = v21;
        *&v23 = v32.f64[0];
        v24 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v25, *&v34)), v32);
        v25.f64[0] = v24.f64[1];
        if (v18)
        {
          v25 = *(v18 + 112);
          v23 = *(v18 + 144);
          *(v18 + 160) = v23;
          *(v18 + 112) = v24;
          *(v18 + 128) = v25;
          *(v18 + 144) = v20;
          *(v18 + 152) = v21;
        }

        if ((v16 & 0x8000000000000000) == 0)
        {
          [(UITouch *)v18 _setAltitudeAngle:?];
          v25.f64[0] = v9[v16];
          if (v18)
          {
            *(v18 + 368) = v25.f64[0];
            [(UITouch *)v18 _computeAzimuthAngleInWindow];
          }
        }

        if (v16 < 0)
        {
          goto LABEL_14;
        }

        v25.f64[0] = v10[v16];
        if (v18)
        {
          break;
        }

        [v19 timestamp];
        [0 setTimestamp:averageTouchInterval + v27];
LABEL_16:
        [(NSMutableArray *)self->_predictions addObject:v18];

        if (++v16 == v17)
        {
          goto LABEL_20;
        }
      }

      v21 = *(v18 + 216);
      *&v23 = *(v18 + 224);
      if (*&v23 < v25.f64[0])
      {
        *&v23 = v10[v16];
      }

      *(v18 + 176) = v21;
      *(v18 + 216) = v25.f64[0];
      *(v18 + 224) = v23;
LABEL_14:
      [v19 timestamp];
      [v18 setTimestamp:averageTouchInterval + v26];
      if (v18)
      {
        *(v18 + 236) |= 0x80u;
      }

      goto LABEL_16;
    }

    v18 = v11;
LABEL_20:
    self->_predictionsValid = 1;

    v6 = v31;
  }

  predictions = self->_predictions;
  v29 = predictions;

  return predictions;
}

- (id)predictedTouchesForTouch:(id)a3
{
  xValuePredictor = self->_xValuePredictor;
  v5 = a3;
  v6 = [(_UITouchPredictor *)self _predictedTouchesAtIndex:[(_UIValuePredictor *)xValuePredictor numValues]- 1 forTouch:v5];

  return v6;
}

- (id)descriptionFromIndex:(int)a3 toIndex:(int)a4 includeHeader:(BOOL)a5 includeDetailedConfidence:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = [(_UIValuePredictor *)self->_xValuePredictor descriptionFromIndex:a3 toIndex:a4 includeHeader:v7 includeDetailedConfidence:v6];
  [v11 appendFormat:@"X:\n%@", v12];

  v13 = [(_UIValuePredictor *)self->_yValuePredictor descriptionFromIndex:a3 toIndex:a4 includeHeader:v7 includeDetailedConfidence:v6];
  [v11 appendFormat:@"Y:\n%@", v13];

  v14 = [(_UIValuePredictor *)self->_angleValuePredictor descriptionFromIndex:a3 toIndex:a4 includeHeader:v7 includeDetailedConfidence:v6];
  [v11 appendFormat:@"Angle:\n%@", v14];

  v15 = [(_UIValuePredictor *)self->_azimuthValuePredictor descriptionFromIndex:a3 toIndex:a4 includeHeader:v7 includeDetailedConfidence:v6];
  [v11 appendFormat:@"Azimuth:\n%@", v15];

  v16 = [(_UIValuePredictor *)self->_forceValuePredictor descriptionFromIndex:a3 toIndex:a4 includeHeader:v7 includeDetailedConfidence:v6];
  [v11 appendFormat:@"Force:\n%@", v16];

  return v11;
}

- (id)description
{
  v3 = [(_UIValuePredictor *)self->_xValuePredictor numValues]+ 3;

  return [(_UITouchPredictor *)self descriptionFromIndex:0 toIndex:v3 includeHeader:1 includeDetailedConfidence:1];
}

- (void)_updatePredictionsForTouch:(id)a3 weight:(double)a4
{
  v6 = a3;
  [v6 preciseLocationInView:0];
  v8 = v7;
  [_UIValuePredictor addValue:"addValue:weight:" weight:?];
  [(_UIValuePredictor *)self->_yValuePredictor addValue:v8 weight:a4];
  angleValuePredictor = self->_angleValuePredictor;
  [v6 altitudeAngle];
  [_UIValuePredictor addValue:"addValue:weight:" weight:?];
  if (v6)
  {
    v10 = v6[46];
  }

  else
  {
    v10 = 0.0;
  }

  [(_UIValuePredictor *)self->_azimuthValuePredictor addValue:v10 weight:a4];
  forceValuePredictor = self->_forceValuePredictor;
  [v6 _pressure];
  v13 = v12;

  [(_UIValuePredictor *)forceValuePredictor addValue:v13 weight:a4];
}

@end