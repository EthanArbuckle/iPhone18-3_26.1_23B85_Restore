@interface _UIValuePredictor
- (_UIValuePredictor)initWithNumPredictions:(unint64_t)a3 numDerivatives:(unint64_t)a4;
- (double)_constrainPrediction:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 includeHeader:(BOOL)a5 includeDetailedConfidence:(BOOL)a6;
- (id)initFromValuePredictor:(id)a3;
- (void)_ensureCapacity:(unint64_t)arrayCapacity;
- (void)_getPriorPredictions:(double *)a3 forValueAtIndex:(int)a4;
- (void)_propagateDerivatives:(double *)a3 fromHigherDerivatives:(double *)a4 atIndex:(int64_t)a5;
- (void)_setupDefaults;
- (void)_slideDataWindow;
- (void)_updateConfidenceFactorsAtIndex:(int)a3;
- (void)_updateConfidenceFactorsForDerivativeStabilityAtIndex:(int)a3;
- (void)_updateConfidenceFactorsForHistoricalAccuracyAtIndex:(int)a3;
- (void)_updateConfidenceFactorsForVelocityAtIndex:(int64_t)a3;
- (void)_updateDerivatives:(double *)a3 fromArray:(double *)a4 weights:(double *)a5 atIndex:(int64_t)a6 wrap:(BOOL)a7;
- (void)_updatePredictionsAtIndex:(int64_t)a3;
- (void)addValue:(double)a3 weight:(double)a4;
- (void)dealloc;
@end

@implementation _UIValuePredictor

- (_UIValuePredictor)initWithNumPredictions:(unint64_t)a3 numDerivatives:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = _UIValuePredictor;
  v6 = [(_UIValuePredictor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v8 = 8;
    if (a3 < 8)
    {
      v8 = a3;
    }

    v6->_numPredictions = v8;
    v6->_numDerivatives = a4;
    v6->_arrayCapacity = a4 + 7;
    [(_UIValuePredictor *)v6 _setupDefaults];
    [(_UIValuePredictor *)v7 _ensureCapacity:v7->_arrayCapacity];
  }

  return v7;
}

- (id)initFromValuePredictor:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIValuePredictor;
  v5 = [(_UIValuePredictor *)&v16 init];
  if (v5)
  {
    v5->_numValues = [v4 numValues];
    v5->_numPredictions = [v4 numPredictions];
    v5->_numDerivatives = [v4 numDerivatives];
    v5->_arrayCapacity = v4[2];
    [(_UIValuePredictor *)v5 _ensureCapacity:?];
    v6 = 8 * v5->_numValues;
    memcpy(v5->_values, [v4 _valuesAtIndex:0], v6);
    memcpy(v5->_valueWeights, [v4 _valueWeightsAtIndex:0], v6);
    memcpy(v5->_predictions, [v4 _predictionsAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactors, [v4 _confidenceFactorsAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForVelocity, [v4 _confidenceFactorsForVelocityAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForHistoricalAccuracy, [v4 _confidenceFactorsForHistoricalAccuracyAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForDerivativeStability, [v4 _confidenceFactorsForDerivativeStabilityAtIndex:0], v5->_numPredictions * v6);
    if (v5->_numDerivatives)
    {
      v7 = 0;
      do
      {
        memcpy(v5->_derivatives[v7], *([v4 _derivatives] + 8 * v7), 8 * v5->_capacity);
        ++v7;
      }

      while (v7 < v5->_numDerivatives);
    }

    [v4 minHistoricalAccuracyThreshold];
    v5->_minHistoricalAccuracyThreshold = v8;
    [v4 maxHistoricalAccuracyThreshold];
    v5->_maxHistoricalAccuracyThreshold = v9;
    [v4 derivativeStabilityThreshold];
    v5->_derivativeStabilityThreshold = v10;
    [v4 minVelocityThreshold];
    v5->_minVelocityThreshold = v11;
    [v4 maxVelocityThreshold];
    v5->_maxVelocityThreshold = v12;
    [v4 minConstraint];
    v5->_minConstraint = v13;
    [v4 maxConstraint];
    v5->_maxConstraint = v14;
    v5->_wrapConstraint = [v4 wrapConstraint];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initFromValuePredictor:self];
}

- (void)dealloc
{
  free(self->_values);
  self->_values = 0;
  free(self->_valueWeights);
  self->_valueWeights = 0;
  free(self->_predictions);
  self->_predictions = 0;
  free(self->_confidenceFactorsForVelocity);
  self->_confidenceFactorsForVelocity = 0;
  free(self->_confidenceFactorsForHistoricalAccuracy);
  self->_confidenceFactorsForHistoricalAccuracy = 0;
  free(self->_confidenceFactorsForDerivativeStability);
  self->_confidenceFactorsForDerivativeStability = 0;
  free(self->_confidenceFactors);
  self->_confidenceFactors = 0;
  if (self->_numDerivatives)
  {
    v3 = 0;
    do
    {
      free(self->_derivatives[v3++]);
    }

    while (v3 < self->_numDerivatives);
  }

  free(self->_derivatives);
  v4.receiver = self;
  v4.super_class = _UIValuePredictor;
  [(_UIValuePredictor *)&v4 dealloc];
}

- (double)_constrainPrediction:(double)a3
{
  minConstraint = self->_minConstraint;
  maxConstraint = self->_maxConstraint;
  if (self->_wrapConstraint)
  {
    if (minConstraint <= maxConstraint)
    {
      v5 = self->_maxConstraint;
    }

    else
    {
      v5 = self->_minConstraint;
    }

    if (minConstraint <= maxConstraint)
    {
      v6 = self->_minConstraint;
    }

    else
    {
      v6 = self->_maxConstraint;
    }

    if (v5 - v6 == 0.0)
    {
      v6 = v5;
      goto LABEL_13;
    }

    a3 = a3 - (v5 - v6) * floor((a3 - v6) / (v5 - v6));
    if (vabdd_f64(a3, v6) < 0.001 || vabdd_f64(a3, v5) < 0.001)
    {
      goto LABEL_13;
    }
  }

  v6 = a3;
LABEL_13:
  if (v6 >= maxConstraint)
  {
    result = self->_maxConstraint;
  }

  else
  {
    result = v6;
  }

  if (minConstraint >= result)
  {
    return self->_minConstraint;
  }

  return result;
}

- (void)_setupDefaults
{
  *&self->_minHistoricalAccuracyThreshold = xmmword_18A64B720;
  *&self->_derivativeStabilityThreshold = xmmword_18A659030;
  *&self->_maxVelocityThreshold = xmmword_18A681240;
  self->_maxConstraint = NAN;
}

- (void)_ensureCapacity:(unint64_t)arrayCapacity
{
  if (!arrayCapacity)
  {
    arrayCapacity = self->_arrayCapacity;
  }

  if (arrayCapacity >= self->_capacity)
  {
    self->_capacity = arrayCapacity;
    v4 = 8 * arrayCapacity;
    self->_values = malloc_type_realloc(self->_values, 8 * arrayCapacity, 0x100004000313F17uLL);
    self->_valueWeights = malloc_type_realloc(self->_valueWeights, v4, 0x100004000313F17uLL);
    self->_predictions = malloc_type_realloc(self->_predictions, self->_numPredictions * v4, 0x100004000313F17uLL);
    self->_confidenceFactorsForVelocity = malloc_type_realloc(self->_confidenceFactorsForVelocity, self->_numPredictions * v4, 0x100004000313F17uLL);
    self->_confidenceFactorsForHistoricalAccuracy = malloc_type_realloc(self->_confidenceFactorsForHistoricalAccuracy, self->_numPredictions * v4, 0x100004000313F17uLL);
    self->_confidenceFactorsForDerivativeStability = malloc_type_realloc(self->_confidenceFactorsForDerivativeStability, self->_numPredictions * v4, 0x100004000313F17uLL);
    self->_confidenceFactors = malloc_type_realloc(self->_confidenceFactors, self->_numPredictions * v4, 0x100004000313F17uLL);
    if (!self->_derivatives)
    {
      self->_derivatives = malloc_type_calloc(self->_numDerivatives, 8uLL, 0x80040B8603338uLL);
    }

    numDerivatives = self->_numDerivatives;
    if (numDerivatives)
    {
      for (i = 0; i < numDerivatives; ++i)
      {
        self->_derivatives[i] = malloc_type_realloc(self->_derivatives[i], v4, 0x100004000313F17uLL);
        numDerivatives = self->_numDerivatives;
      }
    }

    numValues = self->_numValues;
    capacity = self->_capacity;
    if (numValues < capacity)
    {
      numPredictions = self->_numPredictions;
      values = self->_values;
      valueWeights = self->_valueWeights;
      v12 = numValues * numPredictions;
      do
      {
        values[numValues] = NAN;
        valueWeights[numValues] = 1.0;
        if (numPredictions)
        {
          v13 = 0;
          v14 = &self->_confidenceFactors[v12];
          v15 = &self->_confidenceFactorsForDerivativeStability[v12];
          v16 = &self->_confidenceFactorsForHistoricalAccuracy[v12];
          v17 = &self->_confidenceFactorsForVelocity[v12];
          v18 = &self->_predictions[v12];
          do
          {
            v18[v13] = NAN;
            v17[v13] = 0.0;
            v16[v13] = 0.0;
            v15[v13] = 0.0;
            v14[v13++] = 0.0;
          }

          while (numPredictions != v13);
        }

        if (numDerivatives)
        {
          derivatives = self->_derivatives;
          v20 = numDerivatives;
          do
          {
            v21 = *derivatives++;
            *(v21 + 8 * numValues) = 0x7FF8000000000000;
            --v20;
          }

          while (v20);
        }

        ++numValues;
        v12 += numPredictions;
      }

      while (numValues != capacity);
    }
  }
}

- (void)_slideDataWindow
{
  v3 = self->_numValues - 1;
  self->_numValues = v3;
  v4 = 8 * v3;
  memmove([(_UIValuePredictor *)self _valuesAtIndex:0], [(_UIValuePredictor *)self _valuesAtIndex:1], 8 * v3);
  memmove([(_UIValuePredictor *)self _valueWeightsAtIndex:0], [(_UIValuePredictor *)self _valueWeightsAtIndex:1], v4);
  memmove([(_UIValuePredictor *)self _predictionsAtIndex:0], [(_UIValuePredictor *)self _predictionsAtIndex:1], self->_numPredictions * v4);
  memmove([(_UIValuePredictor *)self _confidenceFactorsAtIndex:0], [(_UIValuePredictor *)self _confidenceFactorsAtIndex:1], self->_numPredictions * v4);
  memmove([(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:0], [(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:1], self->_numPredictions * v4);
  memmove([(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:0], [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:1], self->_numPredictions * v4);
  memmove([(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:0], [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:1], self->_numPredictions * v4);
  if (self->_numDerivatives)
  {
    v5 = 0;
    do
    {
      v6 = self->_derivatives[v5];
      memmove(v6, v6 + 1, 8 * self->_arrayCapacity - 8);
      ++v5;
    }

    while (v5 < self->_numDerivatives);
  }
}

- (void)_updateDerivatives:(double *)a3 fromArray:(double *)a4 weights:(double *)a5 atIndex:(int64_t)a6 wrap:(BOOL)a7
{
  v7 = 0;
  a3[a6] = NAN;
  v8 = 0.0;
  v9 = 0.0;
  v10 = &a4[a6];
  do
  {
    if (a6 + v7 >= 1)
    {
      v11 = ((v7 + 7) * (v7 + 7));
      if (a5)
      {
        v11 = a5[a6 + v7] * v11;
      }

      v12 = *v10 - *(v10 - 1);
      if (a7)
      {
        v13 = self->_maxConstraint - self->_minConstraint;
        v14 = fabs(v12);
        v15 = v13 * 0.5;
        v16 = v12 - v13;
        v17 = v12 + v13;
        if (v12 >= 0.0)
        {
          v17 = v16;
        }

        if (v14 > v15)
        {
          v12 = v17;
        }
      }

      v8 = v8 + v11 * v12;
      v9 = v9 + v11;
    }

    --v7;
    --v10;
  }

  while (v7 != -7);
  if (v9 != 0.0)
  {
    a3[a6] = v8 / v9;
  }
}

- (void)_propagateDerivatives:(double *)a3 fromHigherDerivatives:(double *)a4 atIndex:(int64_t)a5
{
  v5 = a5 + 1;
  if (a5 + 1 < self->_numPredictions + a5 + 1)
  {
    v6 = a5;
    v11 = a4 + 1;
    v12 = 0x1E696A000uLL;
    do
    {
      v13 = v6 + 1;
      if (v6 < -1 || v13 >= self->_capacity)
      {
        v16 = [*(v12 + 2728) currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"_UIValuePredictor.m" lineNumber:316 description:@"Index out of bounds"];

        v12 = 0x1E696A000;
        if (v6 < 0)
        {
LABEL_11:
          v14 = NAN;
LABEL_12:
          a3[v6 + 1] = v14;
          goto LABEL_13;
        }
      }

      else if (v6 < 0)
      {
        goto LABEL_11;
      }

      if (v13 < self->_capacity)
      {
        if (a4)
        {
          v14 = v11[v6] + a3[v6];
        }

        else
        {
          v14 = a3[v6];
        }

        goto LABEL_12;
      }

LABEL_13:
      v15 = v6 + 2;
      ++v6;
    }

    while (v15 < self->_numPredictions + v5);
  }
}

- (void)_updateConfidenceFactorsForVelocityAtIndex:(int64_t)a3
{
  v5 = [(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:?];
  v6 = [(_UIValuePredictor *)self _valuesAtIndex:a3];
  v7 = [(_UIValuePredictor *)self _predictionsAtIndex:a3];
  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    v9 = 0;
    v10 = v7 - 1;
    do
    {
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      v12 = (fabs(v10[1] - *v11) - self->_minVelocityThreshold) / (self->_maxVelocityThreshold - self->_minVelocityThreshold);
      if (v12 > 1.0)
      {
        v12 = 1.0;
      }

      v5[v9++] = fmax(v12, 0.0);
      ++v10;
    }

    while (numPredictions != v9);
  }
}

- (void)_getPriorPredictions:(double *)a3 forValueAtIndex:(int)a4
{
  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    v7 = 0;
    v8 = a4;
    v9 = a4 - 1;
    do
    {
      a3[v7] = NAN;
      if (v7 < v8)
      {
        a3[v7] = [(_UIValuePredictor *)self _predictionsAtIndex:v9][8 * v7];
        numPredictions = self->_numPredictions;
      }

      ++v7;
      --v9;
    }

    while (v7 < numPredictions);
  }
}

- (void)_updateConfidenceFactorsForHistoricalAccuracyAtIndex:(int)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    LODWORD(v3) = a3;
    if (!self->_numPredictions)
    {
      goto LABEL_18;
    }

    v5 = 0;
    v6 = v31;
    v7 = *&a3;
    do
    {
      [(_UIValuePredictor *)self _getPriorPredictions:v6 forValueAtIndex:v7];
      ++v5;
      numPredictions = self->_numPredictions;
      v7 = (v7 - 1);
      v6 += 64;
    }

    while (v5 < numPredictions);
    if (numPredictions)
    {
      v9 = 0;
      v10 = v30;
      v11 = v31;
      v3 = v3;
      do
      {
        if (v3 - v9 < 0)
        {
          v12 = NAN;
        }

        else
        {
          v12 = self->_values[v3 - v9];
        }

        for (i = 0; i != numPredictions; ++i)
        {
          *&v10[8 * i] = vabdd_f64(v12, *&v11[8 * i]);
        }

        ++v9;
        v10 += 64;
        v11 += 64;
      }

      while (v9 != numPredictions);
      v14 = 0;
      v15 = v30;
      do
      {
        v16 = 0.0;
        v17 = v15;
        v18 = numPredictions;
        v19 = 0.0;
        do
        {
          v20 = *v17;
          v21 = pow(v18, 1.1);
          v19 = v19 + v21 * v20;
          v16 = v16 + v21;
          v17 += 8;
          --v18;
        }

        while (v18);
        v29[v14++] = v19 / v16;
        ++v15;
      }

      while (v14 != numPredictions);
    }

    else
    {
LABEL_18:
      v3 = v3;
    }

    v22 = [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:v3];
    v23 = self->_numPredictions;
    if (v23)
    {
      v24 = v29;
      do
      {
        v25 = *v24;
        minHistoricalAccuracyThreshold = self->_minHistoricalAccuracyThreshold;
        v27 = 1.0;
        if (*v24 <= minHistoricalAccuracyThreshold || (maxHistoricalAccuracyThreshold = self->_maxHistoricalAccuracyThreshold, v27 = 0.0, v25 >= maxHistoricalAccuracyThreshold))
        {
          *v22 = v27;
        }

        else
        {
          *v22 = 1.0 - (v25 - minHistoricalAccuracyThreshold) / (maxHistoricalAccuracyThreshold - minHistoricalAccuracyThreshold);
        }

        ++v22;
        ++v24;
        --v23;
      }

      while (v23);
    }
  }
}

- (void)_updateConfidenceFactorsForDerivativeStabilityAtIndex:(int)a3
{
  v4 = a3;
  v5 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:a3];
  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    v7 = 1.0;
    do
    {
      if (v4 >= 1)
      {
        v8 = &self->_derivatives[self->_numDerivatives - 1][v4];
        v9 = vabdd_f64(*v8, *(v8 - 1));
        derivativeStabilityThreshold = self->_derivativeStabilityThreshold;
        v11 = 0.0;
        if (v9 < derivativeStabilityThreshold)
        {
          v11 = v7 * ((derivativeStabilityThreshold - v9) / derivativeStabilityThreshold);
          v7 = v11;
        }

        *v5 = v11;
      }

      ++v5;
      --v4;
      --numPredictions;
    }

    while (numPredictions);
  }
}

- (void)_updateConfidenceFactorsAtIndex:(int)a3
{
  v3 = *&a3;
  v5 = a3;
  [(_UIValuePredictor *)self _updateConfidenceFactorsForVelocityAtIndex:a3];
  [(_UIValuePredictor *)self _updateConfidenceFactorsForHistoricalAccuracyAtIndex:v3];
  [(_UIValuePredictor *)self _updateConfidenceFactorsForDerivativeStabilityAtIndex:v3];
  v6 = [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:v5];
  v7 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:v5];
  v8 = [(_UIValuePredictor *)self _confidenceFactorsAtIndex:v5];
  for (i = self->_numPredictions; i; --i)
  {
    *v8 = 0.0;
    *v8 = (*v6 + *v6 + *v7++) / 3.0;
    ++v6;
    ++v8;
  }
}

- (void)_updatePredictionsAtIndex:(int64_t)a3
{
  [(_UIValuePredictor *)self _updateDerivatives:*self->_derivatives fromArray:self->_values weights:self->_valueWeights atIndex:a3 wrap:self->_wrapConstraint];
  numDerivatives = self->_numDerivatives;
  if (numDerivatives >= 2)
  {
    v6 = 0;
    do
    {
      [(_UIValuePredictor *)self _updateDerivatives:self->_derivatives[v6 + 1] fromArray:self->_derivatives[v6] weights:0 atIndex:a3 wrap:0];
      numDerivatives = self->_numDerivatives;
      v7 = v6 + 2;
      ++v6;
    }

    while (v7 < numDerivatives);
  }

  [(_UIValuePredictor *)self _propagateDerivatives:self->_derivatives[numDerivatives - 1] fromHigherDerivatives:0 atIndex:a3];
  v8 = self->_numDerivatives;
  if ((v8 - 2) >= 0)
  {
    do
    {
      [(_UIValuePredictor *)self _propagateDerivatives:self->_derivatives[v8 - 2] fromHigherDerivatives:self->_derivatives[v8 - 1] atIndex:a3];
      --v8;
    }

    while (v8 != 1);
  }

  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    for (i = 0; i < numPredictions; ++i)
    {
      if (a3 <= 0)
      {
        self->_predictions[(a3 + i) * numPredictions] = NAN;
      }

      else
      {
        [(_UIValuePredictor *)self _constrainPrediction:(*self->_derivatives)[a3 + 1 + i] + self->_values[a3 + i]];
        numPredictions = self->_numPredictions;
        self->_predictions[numPredictions * a3 + i] = v11;
      }
    }
  }

  [(_UIValuePredictor *)self _updateConfidenceFactorsAtIndex:a3];
}

- (void)addValue:(double)a3 weight:(double)a4
{
  [(_UIValuePredictor *)self _ensureCapacity:self->_capacity];
  numValues = self->_numValues;
  if (numValues >= self->_arrayCapacity - self->_numDerivatives)
  {
    [(_UIValuePredictor *)self _slideDataWindow];
    numValues = self->_numValues;
  }

  values = self->_values;
  self->_valueWeights[numValues] = a4;
  self->_numValues = numValues + 1;
  values[numValues] = a3;

  [(_UIValuePredictor *)self _updatePredictionsAtIndex:?];
}

- (id)descriptionFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 includeHeader:(BOOL)a5 includeDetailedConfidence:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = v11;
  if (v7)
  {
    [v11 appendString:@"  #"];
    [v12 appendString:@"        v"];
    if (self->_numPredictions)
    {
      v13 = 0;
      do
      {
        if (v6)
        {
          [v12 appendFormat:@"       p%d   c%d  cv%d  ch%d  cd%d", v13, v13, v13, v13, v13];
        }

        else
        {
          [v12 appendFormat:@"       p%d   c%d", v13, v13, v25, v26, v27];
        }

        ++v13;
      }

      while (self->_numPredictions > v13);
    }

    if (self->_numDerivatives)
    {
      v14 = 0;
      do
      {
        [v12 appendFormat:@"        d%d", ++v14];
      }

      while (self->_numDerivatives > v14);
    }

    [v12 appendString:@"\n"];
  }

  if (a3 <= a4)
  {
    v28 = a4;
    do
    {
      if ((a3 & 0x8000000000000000) == 0 && a3 < self->_numValues + self->_numDerivatives - 1)
      {
        [v12 appendFormat:@"%3ld ", a3];
        [v12 appendFormat:@"%8.2f ", *&self->_values[a3]];
        v15 = [(_UIValuePredictor *)self _predictionsAtIndex:a3];
        v16 = [(_UIValuePredictor *)self _confidenceFactorsAtIndex:a3];
        v17 = [(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:a3];
        v18 = [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:a3];
        v19 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:a3];
        if (self->_numPredictions)
        {
          v20 = v19;
          v21 = 0;
          do
          {
            v22 = v16[v21];
            if (v6)
            {
              [v12 appendFormat:@"%8.2f(%4.2f, %4.2f, %4.2f, %4.2f)", *&v15[v21], *&v22, *&v17[v21], *&v18[v21], *&v20[v21]];
            }

            else
            {
              [v12 appendFormat:@"%8.2f(%4.2f)", *&v15[v21], *&v22, v25, v26, v27];
            }

            ++v21;
          }

          while (v21 < self->_numPredictions);
        }

        a4 = v28;
        if (self->_numDerivatives)
        {
          v23 = 0;
          do
          {
            [v12 appendFormat:@"%9.3f ", *&self->_derivatives[v23++][a3]];
          }

          while (v23 < self->_numDerivatives);
        }
      }

      [v12 appendString:@"\n"];
      ++a3;
    }

    while (a3 <= a4);
  }

  return v12;
}

@end