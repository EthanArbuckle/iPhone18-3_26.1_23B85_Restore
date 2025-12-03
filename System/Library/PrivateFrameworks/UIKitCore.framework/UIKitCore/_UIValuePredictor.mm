@interface _UIValuePredictor
- (_UIValuePredictor)initWithNumPredictions:(unint64_t)predictions numDerivatives:(unint64_t)derivatives;
- (double)_constrainPrediction:(double)prediction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex includeHeader:(BOOL)header includeDetailedConfidence:(BOOL)confidence;
- (id)initFromValuePredictor:(id)predictor;
- (void)_ensureCapacity:(unint64_t)arrayCapacity;
- (void)_getPriorPredictions:(double *)predictions forValueAtIndex:(int)index;
- (void)_propagateDerivatives:(double *)derivatives fromHigherDerivatives:(double *)higherDerivatives atIndex:(int64_t)index;
- (void)_setupDefaults;
- (void)_slideDataWindow;
- (void)_updateConfidenceFactorsAtIndex:(int)index;
- (void)_updateConfidenceFactorsForDerivativeStabilityAtIndex:(int)index;
- (void)_updateConfidenceFactorsForHistoricalAccuracyAtIndex:(int)index;
- (void)_updateConfidenceFactorsForVelocityAtIndex:(int64_t)index;
- (void)_updateDerivatives:(double *)derivatives fromArray:(double *)array weights:(double *)weights atIndex:(int64_t)index wrap:(BOOL)wrap;
- (void)_updatePredictionsAtIndex:(int64_t)index;
- (void)addValue:(double)value weight:(double)weight;
- (void)dealloc;
@end

@implementation _UIValuePredictor

- (_UIValuePredictor)initWithNumPredictions:(unint64_t)predictions numDerivatives:(unint64_t)derivatives
{
  v10.receiver = self;
  v10.super_class = _UIValuePredictor;
  v6 = [(_UIValuePredictor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    predictionsCopy = 8;
    if (predictions < 8)
    {
      predictionsCopy = predictions;
    }

    v6->_numPredictions = predictionsCopy;
    v6->_numDerivatives = derivatives;
    v6->_arrayCapacity = derivatives + 7;
    [(_UIValuePredictor *)v6 _setupDefaults];
    [(_UIValuePredictor *)v7 _ensureCapacity:v7->_arrayCapacity];
  }

  return v7;
}

- (id)initFromValuePredictor:(id)predictor
{
  predictorCopy = predictor;
  v16.receiver = self;
  v16.super_class = _UIValuePredictor;
  v5 = [(_UIValuePredictor *)&v16 init];
  if (v5)
  {
    v5->_numValues = [predictorCopy numValues];
    v5->_numPredictions = [predictorCopy numPredictions];
    v5->_numDerivatives = [predictorCopy numDerivatives];
    v5->_arrayCapacity = predictorCopy[2];
    [(_UIValuePredictor *)v5 _ensureCapacity:?];
    v6 = 8 * v5->_numValues;
    memcpy(v5->_values, [predictorCopy _valuesAtIndex:0], v6);
    memcpy(v5->_valueWeights, [predictorCopy _valueWeightsAtIndex:0], v6);
    memcpy(v5->_predictions, [predictorCopy _predictionsAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactors, [predictorCopy _confidenceFactorsAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForVelocity, [predictorCopy _confidenceFactorsForVelocityAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForHistoricalAccuracy, [predictorCopy _confidenceFactorsForHistoricalAccuracyAtIndex:0], v5->_numPredictions * v6);
    memcpy(v5->_confidenceFactorsForDerivativeStability, [predictorCopy _confidenceFactorsForDerivativeStabilityAtIndex:0], v5->_numPredictions * v6);
    if (v5->_numDerivatives)
    {
      v7 = 0;
      do
      {
        memcpy(v5->_derivatives[v7], *([predictorCopy _derivatives] + 8 * v7), 8 * v5->_capacity);
        ++v7;
      }

      while (v7 < v5->_numDerivatives);
    }

    [predictorCopy minHistoricalAccuracyThreshold];
    v5->_minHistoricalAccuracyThreshold = v8;
    [predictorCopy maxHistoricalAccuracyThreshold];
    v5->_maxHistoricalAccuracyThreshold = v9;
    [predictorCopy derivativeStabilityThreshold];
    v5->_derivativeStabilityThreshold = v10;
    [predictorCopy minVelocityThreshold];
    v5->_minVelocityThreshold = v11;
    [predictorCopy maxVelocityThreshold];
    v5->_maxVelocityThreshold = v12;
    [predictorCopy minConstraint];
    v5->_minConstraint = v13;
    [predictorCopy maxConstraint];
    v5->_maxConstraint = v14;
    v5->_wrapConstraint = [predictorCopy wrapConstraint];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (double)_constrainPrediction:(double)prediction
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
      predictionCopy = self->_minConstraint;
    }

    else
    {
      predictionCopy = self->_maxConstraint;
    }

    if (v5 - predictionCopy == 0.0)
    {
      predictionCopy = v5;
      goto LABEL_13;
    }

    prediction = prediction - (v5 - predictionCopy) * floor((prediction - predictionCopy) / (v5 - predictionCopy));
    if (vabdd_f64(prediction, predictionCopy) < 0.001 || vabdd_f64(prediction, v5) < 0.001)
    {
      goto LABEL_13;
    }
  }

  predictionCopy = prediction;
LABEL_13:
  if (predictionCopy >= maxConstraint)
  {
    result = self->_maxConstraint;
  }

  else
  {
    result = predictionCopy;
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

- (void)_updateDerivatives:(double *)derivatives fromArray:(double *)array weights:(double *)weights atIndex:(int64_t)index wrap:(BOOL)wrap
{
  v7 = 0;
  derivatives[index] = NAN;
  v8 = 0.0;
  v9 = 0.0;
  v10 = &array[index];
  do
  {
    if (index + v7 >= 1)
    {
      v11 = ((v7 + 7) * (v7 + 7));
      if (weights)
      {
        v11 = weights[index + v7] * v11;
      }

      v12 = *v10 - *(v10 - 1);
      if (wrap)
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
    derivatives[index] = v8 / v9;
  }
}

- (void)_propagateDerivatives:(double *)derivatives fromHigherDerivatives:(double *)higherDerivatives atIndex:(int64_t)index
{
  v5 = index + 1;
  if (index + 1 < self->_numPredictions + index + 1)
  {
    indexCopy = index;
    v11 = higherDerivatives + 1;
    v12 = 0x1E696A000uLL;
    do
    {
      v13 = indexCopy + 1;
      if (indexCopy < -1 || v13 >= self->_capacity)
      {
        currentHandler = [*(v12 + 2728) currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIValuePredictor.m" lineNumber:316 description:@"Index out of bounds"];

        v12 = 0x1E696A000;
        if (indexCopy < 0)
        {
LABEL_11:
          v14 = NAN;
LABEL_12:
          derivatives[indexCopy + 1] = v14;
          goto LABEL_13;
        }
      }

      else if (indexCopy < 0)
      {
        goto LABEL_11;
      }

      if (v13 < self->_capacity)
      {
        if (higherDerivatives)
        {
          v14 = v11[indexCopy] + derivatives[indexCopy];
        }

        else
        {
          v14 = derivatives[indexCopy];
        }

        goto LABEL_12;
      }

LABEL_13:
      v15 = indexCopy + 2;
      ++indexCopy;
    }

    while (v15 < self->_numPredictions + v5);
  }
}

- (void)_updateConfidenceFactorsForVelocityAtIndex:(int64_t)index
{
  v5 = [(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:?];
  v6 = [(_UIValuePredictor *)self _valuesAtIndex:index];
  v7 = [(_UIValuePredictor *)self _predictionsAtIndex:index];
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

- (void)_getPriorPredictions:(double *)predictions forValueAtIndex:(int)index
{
  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    v7 = 0;
    indexCopy = index;
    v9 = index - 1;
    do
    {
      predictions[v7] = NAN;
      if (v7 < indexCopy)
      {
        predictions[v7] = [(_UIValuePredictor *)self _predictionsAtIndex:v9][8 * v7];
        numPredictions = self->_numPredictions;
      }

      ++v7;
      --v9;
    }

    while (v7 < numPredictions);
  }
}

- (void)_updateConfidenceFactorsForHistoricalAccuracyAtIndex:(int)index
{
  v32 = *MEMORY[0x1E69E9840];
  if (index >= 1)
  {
    LODWORD(v3) = index;
    if (!self->_numPredictions)
    {
      goto LABEL_18;
    }

    v5 = 0;
    v6 = v31;
    v7 = *&index;
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

- (void)_updateConfidenceFactorsForDerivativeStabilityAtIndex:(int)index
{
  indexCopy = index;
  v5 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:index];
  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    v7 = 1.0;
    do
    {
      if (indexCopy >= 1)
      {
        v8 = &self->_derivatives[self->_numDerivatives - 1][indexCopy];
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
      --indexCopy;
      --numPredictions;
    }

    while (numPredictions);
  }
}

- (void)_updateConfidenceFactorsAtIndex:(int)index
{
  v3 = *&index;
  indexCopy = index;
  [(_UIValuePredictor *)self _updateConfidenceFactorsForVelocityAtIndex:index];
  [(_UIValuePredictor *)self _updateConfidenceFactorsForHistoricalAccuracyAtIndex:v3];
  [(_UIValuePredictor *)self _updateConfidenceFactorsForDerivativeStabilityAtIndex:v3];
  v6 = [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:indexCopy];
  v7 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:indexCopy];
  v8 = [(_UIValuePredictor *)self _confidenceFactorsAtIndex:indexCopy];
  for (i = self->_numPredictions; i; --i)
  {
    *v8 = 0.0;
    *v8 = (*v6 + *v6 + *v7++) / 3.0;
    ++v6;
    ++v8;
  }
}

- (void)_updatePredictionsAtIndex:(int64_t)index
{
  [(_UIValuePredictor *)self _updateDerivatives:*self->_derivatives fromArray:self->_values weights:self->_valueWeights atIndex:index wrap:self->_wrapConstraint];
  numDerivatives = self->_numDerivatives;
  if (numDerivatives >= 2)
  {
    v6 = 0;
    do
    {
      [(_UIValuePredictor *)self _updateDerivatives:self->_derivatives[v6 + 1] fromArray:self->_derivatives[v6] weights:0 atIndex:index wrap:0];
      numDerivatives = self->_numDerivatives;
      v7 = v6 + 2;
      ++v6;
    }

    while (v7 < numDerivatives);
  }

  [(_UIValuePredictor *)self _propagateDerivatives:self->_derivatives[numDerivatives - 1] fromHigherDerivatives:0 atIndex:index];
  v8 = self->_numDerivatives;
  if ((v8 - 2) >= 0)
  {
    do
    {
      [(_UIValuePredictor *)self _propagateDerivatives:self->_derivatives[v8 - 2] fromHigherDerivatives:self->_derivatives[v8 - 1] atIndex:index];
      --v8;
    }

    while (v8 != 1);
  }

  numPredictions = self->_numPredictions;
  if (numPredictions)
  {
    for (i = 0; i < numPredictions; ++i)
    {
      if (index <= 0)
      {
        self->_predictions[(index + i) * numPredictions] = NAN;
      }

      else
      {
        [(_UIValuePredictor *)self _constrainPrediction:(*self->_derivatives)[index + 1 + i] + self->_values[index + i]];
        numPredictions = self->_numPredictions;
        self->_predictions[numPredictions * index + i] = v11;
      }
    }
  }

  [(_UIValuePredictor *)self _updateConfidenceFactorsAtIndex:index];
}

- (void)addValue:(double)value weight:(double)weight
{
  [(_UIValuePredictor *)self _ensureCapacity:self->_capacity];
  numValues = self->_numValues;
  if (numValues >= self->_arrayCapacity - self->_numDerivatives)
  {
    [(_UIValuePredictor *)self _slideDataWindow];
    numValues = self->_numValues;
  }

  values = self->_values;
  self->_valueWeights[numValues] = weight;
  self->_numValues = numValues + 1;
  values[numValues] = value;

  [(_UIValuePredictor *)self _updatePredictionsAtIndex:?];
}

- (id)descriptionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex includeHeader:(BOOL)header includeDetailedConfidence:(BOOL)confidence
{
  confidenceCopy = confidence;
  headerCopy = header;
  string = [MEMORY[0x1E696AD60] string];
  v12 = string;
  if (headerCopy)
  {
    [string appendString:@"  #"];
    [v12 appendString:@"        v"];
    if (self->_numPredictions)
    {
      v13 = 0;
      do
      {
        if (confidenceCopy)
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

  if (index <= toIndex)
  {
    toIndexCopy = toIndex;
    do
    {
      if ((index & 0x8000000000000000) == 0 && index < self->_numValues + self->_numDerivatives - 1)
      {
        [v12 appendFormat:@"%3ld ", index];
        [v12 appendFormat:@"%8.2f ", *&self->_values[index]];
        v15 = [(_UIValuePredictor *)self _predictionsAtIndex:index];
        v16 = [(_UIValuePredictor *)self _confidenceFactorsAtIndex:index];
        v17 = [(_UIValuePredictor *)self _confidenceFactorsForVelocityAtIndex:index];
        v18 = [(_UIValuePredictor *)self _confidenceFactorsForHistoricalAccuracyAtIndex:index];
        v19 = [(_UIValuePredictor *)self _confidenceFactorsForDerivativeStabilityAtIndex:index];
        if (self->_numPredictions)
        {
          v20 = v19;
          v21 = 0;
          do
          {
            v22 = v16[v21];
            if (confidenceCopy)
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

        toIndex = toIndexCopy;
        if (self->_numDerivatives)
        {
          v23 = 0;
          do
          {
            [v12 appendFormat:@"%9.3f ", *&self->_derivatives[v23++][index]];
          }

          while (v23 < self->_numDerivatives);
        }
      }

      [v12 appendString:@"\n"];
      ++index;
    }

    while (index <= toIndex);
  }

  return v12;
}

@end