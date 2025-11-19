@interface TSUNumberParser
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5;
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5 outValueType:(int *)a6;
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5 outValueType:(int *)a6 outCurrencyCode:(id *)a7;
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5;
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5 outValueType:(int *)a6;
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5 outValueType:(int *)a6 outCurrencyCode:(id *)a7;
@end

@implementation TSUNumberParser

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5 outValueType:(int *)a6 outCurrencyCode:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:outValueType:outCurrencyCode:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1004 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueTypeAndCurrencyFromString = TSUUnivNumberParser::getNumberValueTypeAndCurrencyFromString(v11, v12, a5, a6, a7);

  return NumberValueTypeAndCurrencyFromString;
}

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5 outValueType:(int *)a6
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:outValueType:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1009 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueAndTypeFromString = TSUUnivNumberParser::getNumberValueAndTypeFromString(v9, v10, a5, a6);

  return NumberValueAndTypeFromString;
}

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5
{
  v7 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1014 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueFromString = TSUUnivNumberParser::getNumberValueFromString(v7, v9, a5, v8);

  return NumberValueFromString;
}

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5 outValueType:(int *)a6 outCurrencyCode:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:outValueType:outCurrencyCode:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1019 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v11)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v23, v12);
    *a6 = -999;
    v18 = 0;
    v19 = -999;
    v20 = 10;
    v21 = 0u;
    v22 = 0u;
    v15 = TSUUnivNumberParser::numberValueTypeAndCurrency(v23, v11, &v18, a6, a7);
    if (v15)
    {
      TSUDecimal::operator=(&v17, &v18);
      *a5 = v17;
    }

    TSUParsedNumber::~TSUParsedNumber(&v18);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5 outValueType:(int *)a6
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:outValueType:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1038 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v9)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v21, v10);
    *a6 = -999;
    v16 = 0;
    v17 = -999;
    v18 = 10;
    v19 = 0u;
    v20 = 0u;
    v13 = TSUUnivNumberParser::numberValueAndType(v21, v9, &v16, a6);
    if (v13)
    {
      TSUDecimal::operator=(&v15, &v16);
      *a5 = v15;
    }

    TSUParsedNumber::~TSUParsedNumber(&v16);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDecimalValue:(TSUDecimal *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1056 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v7)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v19, v8);
    v14 = 0;
    v15 = -999;
    v16 = 10;
    v17 = 0u;
    v18 = 0u;
    v11 = TSUUnivNumberParser::numberValue(v19, v7, &v14);
    if (v11)
    {
      TSUDecimal::operator=(&v13, &v14);
      *a5 = v13;
    }

    TSUParsedNumber::~TSUParsedNumber(&v14);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end