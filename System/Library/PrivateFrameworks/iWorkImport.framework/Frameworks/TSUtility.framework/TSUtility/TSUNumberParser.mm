@interface TSUNumberParser
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value;
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value outValueType:(int *)type;
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value outValueType:(int *)type outCurrencyCode:(id *)code;
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value;
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value outValueType:(int *)type;
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value outValueType:(int *)type outCurrencyCode:(id *)code;
@end

@implementation TSUNumberParser

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value outValueType:(int *)type outCurrencyCode:(id *)code
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:outValueType:outCurrencyCode:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1004 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueTypeAndCurrencyFromString = TSUUnivNumberParser::getNumberValueTypeAndCurrencyFromString(stringCopy, localeCopy, value, type, code);

  return NumberValueTypeAndCurrencyFromString;
}

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value outValueType:(int *)type
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:outValueType:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1009 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueAndTypeFromString = TSUUnivNumberParser::getNumberValueAndTypeFromString(stringCopy, localeCopy, value, type);

  return NumberValueAndTypeFromString;
}

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDoubleValue:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1014 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  NumberValueFromString = TSUUnivNumberParser::getNumberValueFromString(stringCopy, localeCopy, value, v8);

  return NumberValueFromString;
}

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value outValueType:(int *)type outCurrencyCode:(id *)code
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:outValueType:outCurrencyCode:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1019 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (stringCopy)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v23, localeCopy);
    *type = -999;
    v18 = 0;
    v19 = -999;
    v20 = 10;
    v21 = 0u;
    v22 = 0u;
    v15 = TSUUnivNumberParser::numberValueTypeAndCurrency(v23, stringCopy, &v18, type, code);
    if (v15)
    {
      TSUDecimal::operator=(&v17, &v18);
      *value = v17;
    }

    TSUParsedNumber::~TSUParsedNumber(&v18);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value outValueType:(int *)type
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:outValueType:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1038 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (stringCopy)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v21, localeCopy);
    *type = -999;
    v16 = 0;
    v17 = -999;
    v18 = 10;
    v19 = 0u;
    v20 = 0u;
    v13 = TSUUnivNumberParser::numberValueAndType(v21, stringCopy, &v16, type);
    if (v13)
    {
      TSUDecimal::operator=(&v15, &v16);
      *value = v15;
    }

    TSUParsedNumber::~TSUParsedNumber(&v16);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDecimalValue:(TSUDecimal *)value
{
  stringCopy = string;
  localeCopy = locale;
  if (!localeCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUNumberParser numberValueFromString:locale:outDecimalValue:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUnivNumberParser.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1056 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (stringCopy)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v19, localeCopy);
    v14 = 0;
    v15 = -999;
    v16 = 10;
    v17 = 0u;
    v18 = 0u;
    v11 = TSUUnivNumberParser::numberValue(v19, stringCopy, &v14);
    if (v11)
    {
      TSUDecimal::operator=(&v13, &v14);
      *value = v13;
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