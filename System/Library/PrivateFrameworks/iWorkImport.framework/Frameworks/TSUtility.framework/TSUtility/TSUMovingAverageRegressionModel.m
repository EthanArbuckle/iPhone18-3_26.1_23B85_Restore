@interface TSUMovingAverageRegressionModel
- (TSUMovingAverageRegressionModel)initWithMappings:(int)a3 xs:(id)a4 ys:(id)a5 numPeriod:(int)a6;
- (_NSRange)superscriptRangeAtIndex:(int)a3;
- (double)coefficientAtIndex:(int)a3;
- (double)estimateForX:(double *)a3;
- (double)rSquared;
- (double)trendXValueAtIndex:(int)a3;
- (double)trendYValueAtIndex:(int)a3;
- (id)equationString;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3;
- (id)initAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6;
- (id)initNonAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 desiredIntercept:(double)a7;
- (int)numCoefficients;
- (int)numSuperscriptRanges;
- (void)dealloc;
@end

@implementation TSUMovingAverageRegressionModel

- (TSUMovingAverageRegressionModel)initWithMappings:(int)a3 xs:(id)a4 ys:(id)a5 numPeriod:(int)a6
{
  v10 = a4;
  v11 = a5;
  v51.receiver = self;
  v51.super_class = TSUMovingAverageRegressionModel;
  v12 = [(TSUMovingAverageRegressionModel *)&v51 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_26;
  }

  v12->super.mErrorType = 0;
  if (a6 < 2 || a3 <= a6)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel initWithMappings:xs:ys:numPeriod:]"];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:23 isFatal:0 description:"Invalid period number in moving average mode."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v37 = 5;
LABEL_25:
    v13->super.mErrorType = v37;
    goto LABEL_26;
  }

  v14 = 8 * (a3 - a6 + 1);
  v15 = malloc_type_malloc(v14, 0x100004000313F17uLL);
  v13->mTrendXValues = v15;
  if (!v15)
  {
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel initWithMappings:xs:ys:numPeriod:]"];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
    v40 = v38;
    v41 = v39;
    v42 = 30;
LABEL_24:
    [TSUAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:v42 isFatal:0 description:"malloc in SFUMovingAverageRegressionModel failed.", v44];

    +[TSUAssertionHandler logBacktraceThrottled];
    v37 = 1;
    goto LABEL_25;
  }

  v16 = malloc_type_malloc(v14, 0x100004000313F17uLL);
  v44 = 32;
  v13->mTrendYValues = v16;
  if (!v16)
  {
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel initWithMappings:xs:ys:numPeriod:]"];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
    v40 = v38;
    v41 = v39;
    v42 = 37;
    goto LABEL_24;
  }

  v45 = v13;
  v49 = 0;
  v17 = a3;
  v18 = a6;
  v19 = -a6;
  v46 = 1 - a6;
  v47 = a6;
  v48 = v10;
  do
  {
    v20 = v17 - 1;
    v21 = [v10 objectAtIndex:{v17 - 1, v44}];
    v22 = [MEMORY[0x277CBEB68] null];
    v23 = [v21 isEqual:v22];

    if ((v23 & 1) == 0)
    {
      v50 = v21;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0.0;
LABEL_9:
      v28 = -v24;
      do
      {
        v29 = [v11 objectAtIndex:v17 + v28 - 1];
        v30 = [MEMORY[0x277CBEB68] null];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          [v29 doubleValue];
          v27 = v27 + v32;
          ++v26;

          v25 = 1;
          v24 = 1 - v28;
          if (v46 != v28)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }

        --v28;
      }

      while (v19 != v28);
      if (v25)
      {
LABEL_16:
        (*(&v45->super.super.isa + v44))[v49] = v27 / v26;
        v21 = v50;
        [v50 doubleValue];
        v45->mTrendXValues[v49++] = v33;
        v18 = v47;
        v10 = v48;
        v20 = v17 - 1;
        goto LABEL_18;
      }

      v18 = v47;
      v10 = v48;
      v21 = v50;
      v20 = v17 - 1;
    }

LABEL_18:

    v34 = v17 <= v18;
    v17 = v20;
  }

  while (!v34);
  v13 = v45;
  v45->mNumTrendPoint = v49;
LABEL_26:

  return v13;
}

- (id)initAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6
{
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUMovingAverageRegressionModel initAffineWithMappings:xs:ys:xDimension:]", a4, a5, *&a6}];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:79 isFatal:0 description:"Moving average trend line should not use this constructor."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)initNonAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 desiredIntercept:(double)a7
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUMovingAverageRegressionModel initNonAffineWithMappings:xs:ys:xDimension:desiredIntercept:]", a4, a5, *&a6, a7}];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:84 isFatal:0 description:"Moving average trend line should not use this constructor."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (void)dealloc
{
  mTrendXValues = self->mTrendXValues;
  if (mTrendXValues)
  {
    free(mTrendXValues);
  }

  mTrendYValues = self->mTrendYValues;
  if (mTrendYValues)
  {
    free(mTrendYValues);
  }

  v5.receiver = self;
  v5.super_class = TSUMovingAverageRegressionModel;
  [(TSUMovingAverageRegressionModel *)&v5 dealloc];
}

- (int)numCoefficients
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel numCoefficients]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:102 isFatal:0 description:"Moving average trend line should not have coefficients."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (double)coefficientAtIndex:(int)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel coefficientAtIndex:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:107 isFatal:0 description:"Moving average trend line should not have coefficients."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

- (double)trendXValueAtIndex:(int)a3
{
  if (a3 < 0 || self->mNumTrendPoint <= a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel trendXValueAtIndex:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:117 isFatal:0 description:"Invalid index for moving average trend line."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return self->mTrendXValues[a3];
}

- (double)trendYValueAtIndex:(int)a3
{
  if (a3 < 0 || self->mNumTrendPoint <= a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel trendYValueAtIndex:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:124 isFatal:0 description:"Invalid index for moving average trend line."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return self->mTrendYValues[a3];
}

- (double)rSquared
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel rSquared]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:130 isFatal:0 description:"Moving average trend line does not have r-squared value."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:135 isFatal:0 description:"Moving average trend line does not have equation string."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (int)numSuperscriptRanges
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel numSuperscriptRanges]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:140 isFatal:0 description:"Moving average trend line does not have equation string."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (_NSRange)superscriptRangeAtIndex:(int)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel superscriptRangeAtIndex:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:145 isFatal:0 description:"Moving average trend line does not have equation string."];

  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = 0;
  v6 = 0;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)equationString
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel equationString]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:150 isFatal:0 description:"Moving average trend line does not have equation string."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (double)estimateForX:(double *)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMovingAverageRegressionModel estimateForX:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUMovingAverageRegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:155 isFatal:0 description:"Moving average trend line should not use this method to retrieve values."];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

@end