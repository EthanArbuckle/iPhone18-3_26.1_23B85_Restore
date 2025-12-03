@interface CRPerformanceMetric
+ (id)metricWithDisplayName:(id)name unit:(id)unit denominator:(double)denominator serializationKey:(id)key;
+ (id)pcMetricWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator serializationKey:(id)key;
- (CRPerformanceMetric)initWithDictionary:(id)dictionary key:(id)key;
- (CRPerformanceMetric)initWithDisplayName:(id)name unit:(id)unit denominator:(double)denominator serializationKey:(id)key;
- (double)mean;
- (double)variance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (void)addSample:(double)sample;
- (void)mergeMetric:(id)metric;
@end

@implementation CRPerformanceMetric

+ (id)metricWithDisplayName:(id)name unit:(id)unit denominator:(double)denominator serializationKey:(id)key
{
  keyCopy = key;
  unitCopy = unit;
  nameCopy = name;
  v12 = [[CRPerformanceMetric alloc] initWithDisplayName:nameCopy unit:unitCopy denominator:keyCopy serializationKey:denominator];

  return v12;
}

+ (id)pcMetricWithDisplayName:(id)name pcMetricID:(unint64_t)d unit:(id)unit denominator:(double)denominator serializationKey:(id)key
{
  keyCopy = key;
  unitCopy = unit;
  nameCopy = name;
  v14 = [[CRPerformanceMetric alloc] initWithDisplayName:nameCopy unit:unitCopy denominator:keyCopy serializationKey:denominator];

  [(CRPerformanceMetric *)v14 setPcMetricID:d];

  return v14;
}

- (CRPerformanceMetric)initWithDisplayName:(id)name unit:(id)unit denominator:(double)denominator serializationKey:(id)key
{
  nameCopy = name;
  unitCopy = unit;
  keyCopy = key;
  v17.receiver = self;
  v17.super_class = CRPerformanceMetric;
  v14 = [(CRPerformanceMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_displayName, name);
    objc_storeStrong(&v15->_unit, unit);
    v15->_denominator = denominator;
    objc_storeStrong(&v15->_serializationKey, key);
    v15->_M2 = 0.0;
    *&v15->_pcMetricID = 0u;
    *&v15->_min = 0u;
    *&v15->_sumX = 0u;
  }

  return v15;
}

- (CRPerformanceMetric)initWithDictionary:(id)dictionary key:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricName"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricUnit"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricDenominator"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricPCMetricID"];
  longLongValue = [v13 longLongValue];

  v15 = [(CRPerformanceMetric *)self initWithDisplayName:v8 unit:v9 denominator:keyCopy serializationKey:v12];
  if (v15)
  {
    [(CRPerformanceMetric *)v15 setPcMetricID:longLongValue];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricNumSamples"];
    -[CRPerformanceMetric setNumSamples:](v15, "setNumSamples:", [v16 integerValue]);

    v17 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricFirst"];
    [v17 doubleValue];
    [(CRPerformanceMetric *)v15 setFirst:?];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricMin"];
    [v18 doubleValue];
    [(CRPerformanceMetric *)v15 setMin:?];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricMax"];
    [v19 doubleValue];
    [(CRPerformanceMetric *)v15 setMax:?];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricMean"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"CRPerformanceMetricStdDev"];
    [v23 doubleValue];
    v25 = v24;

    [(CRPerformanceMetric *)v15 setSumX:v22 * [(CRPerformanceMetric *)v15 numSamples]];
    numSamples = [(CRPerformanceMetric *)v15 numSamples];
    v27 = 1.0;
    if (numSamples >= 2)
    {
      v27 = ([(CRPerformanceMetric *)v15 numSamples]- 1);
    }

    [(CRPerformanceMetric *)v15 setM2:v25 * v25 * v27];
  }

  return v15;
}

- (id)dictionary
{
  v21[9] = *MEMORY[0x1E69E9840];
  displayName = [(CRPerformanceMetric *)self displayName];
  v21[0] = displayName;
  v20[1] = @"CRPerformanceMetricNumSamples";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CRPerformanceMetric numSamples](self, "numSamples")}];
  v21[1] = v4;
  v20[2] = @"CRPerformanceMetricFirst";
  v5 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self first];
  v6 = [v5 numberWithDouble:?];
  v21[2] = v6;
  v20[3] = @"CRPerformanceMetricMin";
  v7 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self min];
  v8 = [v7 numberWithDouble:?];
  v21[3] = v8;
  v20[4] = @"CRPerformanceMetricMax";
  v9 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self max];
  v10 = [v9 numberWithDouble:?];
  v21[4] = v10;
  v20[5] = @"CRPerformanceMetricMean";
  v11 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self mean];
  v12 = [v11 numberWithDouble:?];
  v21[5] = v12;
  v20[6] = @"CRPerformanceMetricStdDev";
  v13 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self stdDev];
  v14 = [v13 numberWithDouble:?];
  v21[6] = v14;
  v20[7] = @"CRPerformanceMetricUnit";
  unit = [(CRPerformanceMetric *)self unit];
  v21[7] = unit;
  v20[8] = @"CRPerformanceMetricDenominator";
  v16 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self denominator];
  v17 = [v16 numberWithDouble:?];
  v21[8] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:9];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRPerformanceMetric allocWithZone:zone];
  displayName = [(CRPerformanceMetric *)self displayName];
  unit = [(CRPerformanceMetric *)self unit];
  [(CRPerformanceMetric *)self denominator];
  v8 = v7;
  serializationKey = [(CRPerformanceMetric *)self serializationKey];
  v10 = [(CRPerformanceMetric *)v4 initWithDisplayName:displayName unit:unit denominator:serializationKey serializationKey:v8];

  [(CRPerformanceMetric *)v10 setNumSamples:[(CRPerformanceMetric *)self numSamples]];
  [(CRPerformanceMetric *)self first];
  [(CRPerformanceMetric *)v10 setFirst:?];
  [(CRPerformanceMetric *)self min];
  [(CRPerformanceMetric *)v10 setMin:?];
  [(CRPerformanceMetric *)self max];
  [(CRPerformanceMetric *)v10 setMax:?];
  [(CRPerformanceMetric *)self sumX];
  [(CRPerformanceMetric *)v10 setSumX:?];
  [(CRPerformanceMetric *)v10 setPcMetricID:[(CRPerformanceMetric *)self pcMetricID]];
  [(CRPerformanceMetric *)self M2];
  [(CRPerformanceMetric *)v10 setM2:?];
  return v10;
}

- (void)addSample:(double)sample
{
  [(CRPerformanceMetric *)self setNumSamples:[(CRPerformanceMetric *)self numSamples]+ 1];
  [(CRPerformanceMetric *)self sumX];
  [(CRPerformanceMetric *)self setSumX:v5 + sample];
  if ([(CRPerformanceMetric *)self numSamples]== 1)
  {
    [(CRPerformanceMetric *)self setFirst:sample];
    [(CRPerformanceMetric *)self setMin:sample];
    [(CRPerformanceMetric *)self setMax:sample];
    [(CRPerformanceMetric *)self setM2:0.0];

    [(CRPerformanceMetric *)self setWelfordMean:sample];
  }

  else
  {
    [(CRPerformanceMetric *)self min];
    [(CRPerformanceMetric *)self setMin:fmin(v6, sample)];
    [(CRPerformanceMetric *)self max];
    [(CRPerformanceMetric *)self setMax:fmax(v7, sample)];
    [(CRPerformanceMetric *)self welfordMean];
    v9 = sample - v8;
    v10 = (sample - v8) / [(CRPerformanceMetric *)self numSamples];
    [(CRPerformanceMetric *)self welfordMean];
    [(CRPerformanceMetric *)self setWelfordMean:v11 + v10];
    [(CRPerformanceMetric *)self welfordMean];
    v13 = sample - v12;
    [(CRPerformanceMetric *)self M2];
    v15 = v14 + v9 * v13;

    [(CRPerformanceMetric *)self setM2:v15];
  }
}

- (void)mergeMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy numSamples])
  {
    if ([(CRPerformanceMetric *)self numSamples])
    {
      [metricCopy mean];
      v5 = v4;
      [(CRPerformanceMetric *)self mean];
      v7 = v5 - v6;
      [(CRPerformanceMetric *)self M2];
      v9 = v8;
      [metricCopy M2];
      -[CRPerformanceMetric setM2:](self, "setM2:", v9 + v10 + v7 * v7 * -[CRPerformanceMetric numSamples](self, "numSamples") * [metricCopy numSamples] / (objc_msgSend(metricCopy, "numSamples") + -[CRPerformanceMetric numSamples](self, "numSamples")));
      [(CRPerformanceMetric *)self min];
      v12 = v11;
      [metricCopy min];
      [(CRPerformanceMetric *)self setMin:fmin(v12, v13)];
      [(CRPerformanceMetric *)self max];
      v15 = v14;
      [metricCopy max];
      v17 = fmax(v15, v16);
    }

    else
    {
      [metricCopy M2];
      [(CRPerformanceMetric *)self setM2:?];
      [metricCopy first];
      [(CRPerformanceMetric *)self setFirst:?];
      [metricCopy min];
      [(CRPerformanceMetric *)self setMin:?];
      [metricCopy max];
    }

    [(CRPerformanceMetric *)self setMax:v17];
    -[CRPerformanceMetric setNumSamples:](self, "setNumSamples:", -[CRPerformanceMetric numSamples](self, "numSamples") + [metricCopy numSamples]);
    [metricCopy sumX];
    v19 = v18;
    [(CRPerformanceMetric *)self sumX];
    [(CRPerformanceMetric *)self setSumX:v19 + v20];
  }
}

- (double)mean
{
  if (![(CRPerformanceMetric *)self numSamples])
  {
    return 0.0;
  }

  [(CRPerformanceMetric *)self sumX];
  return v3 / [(CRPerformanceMetric *)self numSamples];
}

- (double)variance
{
  numSamples = [(CRPerformanceMetric *)self numSamples];
  result = 0.0;
  if (numSamples >= 2)
  {
    [(CRPerformanceMetric *)self M2];
    return v5 / ([(CRPerformanceMetric *)self numSamples]- 1);
  }

  return result;
}

@end