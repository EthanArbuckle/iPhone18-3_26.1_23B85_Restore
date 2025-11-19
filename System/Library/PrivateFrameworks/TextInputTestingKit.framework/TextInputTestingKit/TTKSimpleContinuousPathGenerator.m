@interface TTKSimpleContinuousPathGenerator
- (TTKSimpleContinuousPathGenerator)initWithParams:(id)a3;
- (id)generatePathFromInflectionPoints:(id)a3 timestamp:(double)a4 duration:(double)a5 segmentTiming:(id)a6 keys:(id)a7 string:(id)a8 layout:(id)a9;
@end

@implementation TTKSimpleContinuousPathGenerator

- (id)generatePathFromInflectionPoints:(id)a3 timestamp:(double)a4 duration:(double)a5 segmentTiming:(id)a6 keys:(id)a7 string:(id)a8 layout:(id)a9
{
  v13 = a3;
  v14 = a6;
  v15 = objc_alloc_init(TIContinuousPath);
  self->_currentTimestamp = a4;
  [(TTKDefaultContinuousPathGenerator *)self timeDelta];
  v17 = v16;
  if (a5 != -1.0)
  {
    v18 = [v13 count];
    v19 = 0.0;
    if (v18 >= 2)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = [v14 objectAtIndexedSubscript:{v21 - 1, v19}];
        v20 += [v22 count];

        ++v21;
      }

      while (v21 < [v13 count]);
      v19 = v20;
    }

    v17 = a5 / v19;
  }

  v46 = 0uLL;
  v23 = [v13 objectAtIndexedSubscript:0];
  [v23 getValue:&v46];

  if ([v13 count] >= 2)
  {
    v24 = 1;
    do
    {
      v25 = [v13 objectAtIndexedSubscript:{v24, 0, 0}];
      [v25 getValue:&v45];

      v26 = [v14 objectAtIndexedSubscript:v24 - 1];
      if ([v26 count])
      {
        v27 = 0;
        do
        {
          [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v45 byPoint:v46];
          v29 = v28;
          v31 = v30;
          v32 = [v26 objectAtIndex:v27];
          [v32 floatValue];
          [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v29 by:v31, v33];
          [(TTKDefaultContinuousPathGenerator *)self addPoint:v46 andPoint:v34, v35];
          v37 = v36;
          v39 = v38;

          v40 = [TIContinuousPathSample alloc];
          currentTimestamp = self->_currentTimestamp;
          [(TTKDefaultContinuousPathGenerator *)self force];
          v43 = [(TIContinuousPathSample *)v40 initWithPoint:7 timeStamp:-1 force:v37 radius:v39 stage:currentTimestamp pathIndex:v42, 0.0];
          [(TIContinuousPath *)v15 addSample:v43];
          self->_currentTimestamp = v17 + self->_currentTimestamp;

          ++v27;
        }

        while (v27 < [v26 count]);
      }

      v46 = v45;

      ++v24;
    }

    while (v24 < [v13 count]);
  }

  return v15;
}

- (TTKSimpleContinuousPathGenerator)initWithParams:(id)a3
{
  v4.receiver = self;
  v4.super_class = TTKSimpleContinuousPathGenerator;
  return [(TTKDefaultContinuousPathGenerator *)&v4 initWithParams:a3];
}

@end