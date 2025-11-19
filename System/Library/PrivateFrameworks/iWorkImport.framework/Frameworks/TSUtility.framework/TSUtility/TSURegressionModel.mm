@interface TSURegressionModel
- (_NSRange)superscriptRangeAtIndex:(int)a3;
- (double)coefficientAtIndex:(int)a3;
- (double)estimateForX:(double *)a3;
- (double)rSquared;
- (id)equationString;
- (id)formattedStringWithCoefficient:(double)a3 locale:(id)a4;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3;
- (id)initAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6;
- (id)initNonAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 desiredIntercept:(double)a7;
- (int)numCoefficients;
- (int)regressionType;
@end

@implementation TSURegressionModel

- (id)initAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6
{
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSURegressionModel initAffineWithMappings:xs:ys:xDimension:]", a4, a5, *&a6}];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:23 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)initNonAffineWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 desiredIntercept:(double)a7
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSURegressionModel initNonAffineWithMappings:xs:ys:xDimension:desiredIntercept:]", a4, a5, *&a6, a7}];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:28 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (int)regressionType
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel regressionType]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:33 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (int)numCoefficients
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel numCoefficients]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:46 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (double)coefficientAtIndex:(int)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel coefficientAtIndex:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:51 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

- (double)estimateForX:(double *)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel estimateForX:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:56 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

- (double)rSquared
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel rSquared]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:61 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0.0;
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:66 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (_NSRange)superscriptRangeAtIndex:(int)a3
{
  v3 = 0;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)equationString
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel equationString]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:79 isFatal:0 description:"TSURegressionModel subclasses must override"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)formattedStringWithCoefficient:(double)a3 locale:(id)a4
{
  v5 = a4;
  v6 = fabs(a3);
  if (!v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSURegressionModel formattedStringWithCoefficient:locale:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:85 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = @"0.###E+0";
  if (v6 < 1000000.0)
  {
    if (v6 >= 10000.0)
    {
      v9 = @"#";
    }

    else if (v6 >= 1000.0)
    {
      v9 = @"#.#";
    }

    else if (v6 >= 100.0)
    {
      v9 = @"#.##";
    }

    else if (v6 >= 10.0)
    {
      v9 = @"#.###";
    }

    else if (v6 >= 0.0001)
    {
      v9 = @"#.####";
    }
  }

  LOBYTE(v12) = 0;
  v10 = [v5 numberFormatterStringFromDouble:v9 withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:a3 suppressMinusSign:v12];

  return v10;
}

@end