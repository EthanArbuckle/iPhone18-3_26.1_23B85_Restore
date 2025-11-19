@interface CRPerformanceMetric
+ (id)metricWithDisplayName:(id)a3 unit:(id)a4 denominator:(double)a5 serializationKey:(id)a6;
+ (id)pcMetricWithDisplayName:(id)a3 pcMetricID:(unint64_t)a4 unit:(id)a5 denominator:(double)a6 serializationKey:(id)a7;
- (CRPerformanceMetric)initWithDictionary:(id)a3 key:(id)a4;
- (CRPerformanceMetric)initWithDisplayName:(id)a3 unit:(id)a4 denominator:(double)a5 serializationKey:(id)a6;
- (double)mean;
- (double)variance;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (void)addSample:(double)a3;
- (void)mergeMetric:(id)a3;
@end

@implementation CRPerformanceMetric

+ (id)metricWithDisplayName:(id)a3 unit:(id)a4 denominator:(double)a5 serializationKey:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[CRPerformanceMetric alloc] initWithDisplayName:v11 unit:v10 denominator:v9 serializationKey:a5];

  return v12;
}

+ (id)pcMetricWithDisplayName:(id)a3 pcMetricID:(unint64_t)a4 unit:(id)a5 denominator:(double)a6 serializationKey:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = [[CRPerformanceMetric alloc] initWithDisplayName:v13 unit:v12 denominator:v11 serializationKey:a6];

  [(CRPerformanceMetric *)v14 setPcMetricID:a4];

  return v14;
}

- (CRPerformanceMetric)initWithDisplayName:(id)a3 unit:(id)a4 denominator:(double)a5 serializationKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CRPerformanceMetric;
  v14 = [(CRPerformanceMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_displayName, a3);
    objc_storeStrong(&v15->_unit, a4);
    v15->_denominator = a5;
    objc_storeStrong(&v15->_serializationKey, a6);
    v15->_M2 = 0.0;
    *&v15->_pcMetricID = 0u;
    *&v15->_min = 0u;
    *&v15->_sumX = 0u;
  }

  return v15;
}

- (CRPerformanceMetric)initWithDictionary:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricName"];
  v9 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricUnit"];
  v10 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricDenominator"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricPCMetricID"];
  v14 = [v13 longLongValue];

  v15 = [(CRPerformanceMetric *)self initWithDisplayName:v8 unit:v9 denominator:v7 serializationKey:v12];
  if (v15)
  {
    [(CRPerformanceMetric *)v15 setPcMetricID:v14];
    v16 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricNumSamples"];
    -[CRPerformanceMetric setNumSamples:](v15, "setNumSamples:", [v16 integerValue]);

    v17 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricFirst"];
    [v17 doubleValue];
    [(CRPerformanceMetric *)v15 setFirst:?];

    v18 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricMin"];
    [v18 doubleValue];
    [(CRPerformanceMetric *)v15 setMin:?];

    v19 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricMax"];
    [v19 doubleValue];
    [(CRPerformanceMetric *)v15 setMax:?];

    v20 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricMean"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [v6 objectForKeyedSubscript:@"CRPerformanceMetricStdDev"];
    [v23 doubleValue];
    v25 = v24;

    [(CRPerformanceMetric *)v15 setSumX:v22 * [(CRPerformanceMetric *)v15 numSamples]];
    v26 = [(CRPerformanceMetric *)v15 numSamples];
    v27 = 1.0;
    if (v26 >= 2)
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
  v3 = [(CRPerformanceMetric *)self displayName];
  v21[0] = v3;
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
  v15 = [(CRPerformanceMetric *)self unit];
  v21[7] = v15;
  v20[8] = @"CRPerformanceMetricDenominator";
  v16 = MEMORY[0x1E696AD98];
  [(CRPerformanceMetric *)self denominator];
  v17 = [v16 numberWithDouble:?];
  v21[8] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:9];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRPerformanceMetric allocWithZone:a3];
  v5 = [(CRPerformanceMetric *)self displayName];
  v6 = [(CRPerformanceMetric *)self unit];
  [(CRPerformanceMetric *)self denominator];
  v8 = v7;
  v9 = [(CRPerformanceMetric *)self serializationKey];
  v10 = [(CRPerformanceMetric *)v4 initWithDisplayName:v5 unit:v6 denominator:v9 serializationKey:v8];

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

- (void)addSample:(double)a3
{
  [(CRPerformanceMetric *)self setNumSamples:[(CRPerformanceMetric *)self numSamples]+ 1];
  [(CRPerformanceMetric *)self sumX];
  [(CRPerformanceMetric *)self setSumX:v5 + a3];
  if ([(CRPerformanceMetric *)self numSamples]== 1)
  {
    [(CRPerformanceMetric *)self setFirst:a3];
    [(CRPerformanceMetric *)self setMin:a3];
    [(CRPerformanceMetric *)self setMax:a3];
    [(CRPerformanceMetric *)self setM2:0.0];

    [(CRPerformanceMetric *)self setWelfordMean:a3];
  }

  else
  {
    [(CRPerformanceMetric *)self min];
    [(CRPerformanceMetric *)self setMin:fmin(v6, a3)];
    [(CRPerformanceMetric *)self max];
    [(CRPerformanceMetric *)self setMax:fmax(v7, a3)];
    [(CRPerformanceMetric *)self welfordMean];
    v9 = a3 - v8;
    v10 = (a3 - v8) / [(CRPerformanceMetric *)self numSamples];
    [(CRPerformanceMetric *)self welfordMean];
    [(CRPerformanceMetric *)self setWelfordMean:v11 + v10];
    [(CRPerformanceMetric *)self welfordMean];
    v13 = a3 - v12;
    [(CRPerformanceMetric *)self M2];
    v15 = v14 + v9 * v13;

    [(CRPerformanceMetric *)self setM2:v15];
  }
}

- (void)mergeMetric:(id)a3
{
  v21 = a3;
  if ([v21 numSamples])
  {
    if ([(CRPerformanceMetric *)self numSamples])
    {
      [v21 mean];
      v5 = v4;
      [(CRPerformanceMetric *)self mean];
      v7 = v5 - v6;
      [(CRPerformanceMetric *)self M2];
      v9 = v8;
      [v21 M2];
      -[CRPerformanceMetric setM2:](self, "setM2:", v9 + v10 + v7 * v7 * -[CRPerformanceMetric numSamples](self, "numSamples") * [v21 numSamples] / (objc_msgSend(v21, "numSamples") + -[CRPerformanceMetric numSamples](self, "numSamples")));
      [(CRPerformanceMetric *)self min];
      v12 = v11;
      [v21 min];
      [(CRPerformanceMetric *)self setMin:fmin(v12, v13)];
      [(CRPerformanceMetric *)self max];
      v15 = v14;
      [v21 max];
      v17 = fmax(v15, v16);
    }

    else
    {
      [v21 M2];
      [(CRPerformanceMetric *)self setM2:?];
      [v21 first];
      [(CRPerformanceMetric *)self setFirst:?];
      [v21 min];
      [(CRPerformanceMetric *)self setMin:?];
      [v21 max];
    }

    [(CRPerformanceMetric *)self setMax:v17];
    -[CRPerformanceMetric setNumSamples:](self, "setNumSamples:", -[CRPerformanceMetric numSamples](self, "numSamples") + [v21 numSamples]);
    [v21 sumX];
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
  v3 = [(CRPerformanceMetric *)self numSamples];
  result = 0.0;
  if (v3 >= 2)
  {
    [(CRPerformanceMetric *)self M2];
    return v5 / ([(CRPerformanceMetric *)self numSamples]- 1);
  }

  return result;
}

@end