@interface TIAnalyticsUtil
+ (BOOL)hasNonWhitespaceNonPunctuationText:(id)text;
+ (BOOL)isArray:(id)array;
+ (BOOL)isBoolean:(id)boolean;
+ (BOOL)isDictionary:(id)dictionary;
+ (BOOL)isFloat:(id)float;
+ (BOOL)isInteger:(id)integer;
+ (BOOL)isNumber:(id)number;
+ (BOOL)isReportableClientId:(id)id;
+ (BOOL)isString:(id)string;
+ (BOOL)isStylizedString:(id)string equalToString:(id)toString;
+ (id)appCategoryForBundleID:(id)d;
+ (id)bucketNumber:(id)number bucketThresholds:(id)thresholds bucketValues:(id)values;
+ (id)bucketRatioWithNumber:(id)number bucketCount:(int)count;
+ (id)bucketRatioWithNumerator:(id)numerator andDenominator:(id)denominator bucketCount:(int)count;
+ (id)bucketRatioWithValue:(double)value bucketCount:(int)count;
+ (id)constrainInteger:(id)integer toMinimum:(id)minimum andMaximum:(id)maximum;
+ (id)indexesForValidRatiosInArray:(id)array;
+ (id)roundCount:(id)count toSignificantDigits:(int64_t)digits;
+ (id)roundNumber:(id)number toSignificantDigits:(id)digits;
+ (id)toFloat:(id)float;
+ (id)toInteger:(id)integer;
+ (int)computeCommonExtentForArrays:(id)arrays;
@end

@implementation TIAnalyticsUtil

+ (id)appCategoryForBundleID:(id)d
{
  dCopy = d;
  if (!InputAnalyticsLibraryCore_12553())
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getIAUtilityClass_softClass;
  v11 = getIAUtilityClass_softClass;
  if (!getIAUtilityClass_softClass)
  {
    InputAnalyticsLibraryCore_12553();
    v9[3] = objc_getClass("IAUtility");
    getIAUtilityClass_softClass = v9[3];
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v4 lookupAppBundle:dCopy];
  }

  else
  {
LABEL_7:
    v6 = @"nil";
  }

  return v6;
}

+ (BOOL)isReportableClientId:(id)id
{
  idCopy = id;
  if ([idCopy hasPrefix:@"com.apple."])
  {
    v4 = 1;
  }

  else
  {
    if (isReportableClientId__onceToken != -1)
    {
      dispatch_once(&isReportableClientId__onceToken, &__block_literal_global_12565);
    }

    v5 = isReportableClientId__topThirdPartyBundleIds;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(idCopy, "hash")}];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

uint64_t __40__TIAnalyticsUtil_isReportableClientId___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1EF7DCC38, &unk_1EF7DCC50, &unk_1EF7DCC68, &unk_1EF7DCC80, &unk_1EF7DCC98, &unk_1EF7DCCB0, &unk_1EF7DCCC8, &unk_1EF7DCCE0, &unk_1EF7DCCF8, &unk_1EF7DCD10, &unk_1EF7DCD28, &unk_1EF7DCD40, &unk_1EF7DCD58, &unk_1EF7DCD70, &unk_1EF7DCD88, &unk_1EF7DCDA0, &unk_1EF7DCDB8, &unk_1EF7DCDD0, &unk_1EF7DCDE8, &unk_1EF7DCE00, &unk_1EF7DCE18, &unk_1EF7DCE30, &unk_1EF7DCE48, 0}];
  v1 = isReportableClientId__topThirdPartyBundleIds;
  isReportableClientId__topThirdPartyBundleIds = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)hasNonWhitespaceNonPunctuationText:(id)text
{
  v3 = MEMORY[0x1E696AB08];
  textCopy = text;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:punctuationCharacterSet];

  LOBYTE(punctuationCharacterSet) = [v8 length] != 0;
  return punctuationCharacterSet;
}

+ (BOOL)isStylizedString:(id)string equalToString:(id)toString
{
  toStringCopy = toString;
  v7 = [self createStringByReplacingStylizedQuotesToStraightQuotes:string];
  LOBYTE(self) = [v7 isEqualToString:toStringCopy];

  return self;
}

+ (id)indexesForValidRatiosInArray:(id)array
{
  arrayCopy = array;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TIAnalyticsUtil_indexesForValidRatiosInArray___block_invoke;
  v7[3] = &unk_1E6F4D7C0;
  v5 = v4;
  v8 = v5;
  [arrayCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

uint64_t __48__TIAnalyticsUtil_indexesForValidRatiosInArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  if (v6 >= 0.0)
  {
    v7 = *(a1 + 32);

    return [v7 addIndex:a3];
  }

  return result;
}

+ (int)computeCommonExtentForArrays:(id)arrays
{
  v15 = &v16;
  arraysCopy = arrays;
  v4 = arraysCopy;
  if (arraysCopy)
  {
    v5 = -1;
    v6 = -1;
    v7 = arraysCopy;
    do
    {
      v8 = [v7 count];
      if (v5 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v5;
      }

      if (v6 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      if (v5 == -1)
      {
        v6 = v8;
      }

      else
      {
        v6 = v10;
      }

      if (v5 == -1)
      {
        v5 = v8;
      }

      else
      {
        v5 = v9;
      }

      v11 = v15++;
      v12 = *v11;

      v7 = v12;
    }

    while (v12);
  }

  else
  {
    v6 = -1;
    v5 = -1;
  }

  if (v5 == v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

+ (id)bucketRatioWithValue:(double)value bucketCount:(int)count
{
  if (value == -1.0)
  {
    *&count = 0xFFFFFFFFLL;
  }

  else
  {
    if (value < 0.0)
    {
      value = 0.0;
    }

    if (value > 1.0)
    {
      value = 1.0;
    }

    count = llround(value * count);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{*&count, v4}];

  return v6;
}

+ (id)bucketRatioWithNumerator:(id)numerator andDenominator:(id)denominator bucketCount:(int)count
{
  v5 = *&count;
  denominatorCopy = denominator;
  [numerator doubleValue];
  v9 = v8;
  [denominatorCopy doubleValue];
  v11 = v10;

  if (v9 < 0.0 || v11 <= 0.0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
  }

  else
  {
    v12 = [TIAnalyticsUtil bucketRatioWithValue:v5 bucketCount:v9 / v11];
  }

  return v12;
}

+ (id)bucketRatioWithNumber:(id)number bucketCount:(int)count
{
  v4 = *&count;
  [number doubleValue];

  return [TIAnalyticsUtil bucketRatioWithValue:v4 bucketCount:?];
}

+ (id)bucketNumber:(id)number bucketThresholds:(id)thresholds bucketValues:(id)values
{
  numberCopy = number;
  thresholdsCopy = thresholds;
  valuesCopy = values;
  v10 = valuesCopy;
  if (thresholdsCopy)
  {
    if (valuesCopy)
    {
      [valuesCopy objectAtIndexedSubscript:0];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInteger:0];
    }
    v12 = ;
    if ([thresholdsCopy count])
    {
      v13 = 0;
      while (1)
      {
        [numberCopy doubleValue];
        v15 = v14;
        v16 = [thresholdsCopy objectAtIndexedSubscript:v13];
        [v16 doubleValue];
        v18 = v17;

        if (v15 < v18)
        {
          break;
        }

        ++v13;
        if (v10)
        {
          [v10 objectAtIndexedSubscript:v13];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithInteger:v13];
        }
        v11 = ;

        v12 = v11;
        if ([thresholdsCopy count] == v13)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = v12;
  }

  else
  {
    v11 = numberCopy;
  }

LABEL_15:

  return v11;
}

+ (id)constrainInteger:(id)integer toMinimum:(id)minimum andMaximum:(id)maximum
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  intValue = [integer intValue];
  if (minimumCopy)
  {
    intValue2 = [minimumCopy intValue];
    if (intValue <= intValue2)
    {
      intValue = intValue2;
    }

    else
    {
      intValue = intValue;
    }
  }

  if (maximumCopy)
  {
    intValue3 = [maximumCopy intValue];
    if (intValue >= intValue3)
    {
      intValue = intValue3;
    }

    else
    {
      intValue = intValue;
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:intValue];

  return v12;
}

+ (id)roundNumber:(id)number toSignificantDigits:(id)digits
{
  numberCopy = number;
  digitsCopy = digits;
  if (!digitsCopy)
  {
    v11 = numberCopy;
    goto LABEL_11;
  }

  v7 = [TIAnalyticsUtil isInteger:numberCopy];
  [numberCopy doubleValue];
  if (v8 == 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = 0;
LABEL_8:
      v11 = [v9 numberWithInt:v10];
      goto LABEL_11;
    }

    v16 = 0.0;
  }

  else
  {
    v12 = v8;
    intValue = [digitsCopy intValue];
    v14 = log10(fabs(v12));
    v15 = __exp10((intValue - vcvtpd_s64_f64(v14)));
    v16 = round(v12 * v15) / v15;
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = v16;
      goto LABEL_8;
    }
  }

  v11 = [v9 numberWithDouble:v16];
LABEL_11:
  v17 = v11;

  return v17;
}

+ (id)roundCount:(id)count toSignificantDigits:(int64_t)digits
{
  v5 = MEMORY[0x1E696AD98];
  countCopy = count;
  v7 = [v5 numberWithInteger:digits];
  v8 = [TIAnalyticsUtil roundNumber:countCopy toSignificantDigits:v7];

  return v8;
}

+ (id)toFloat:(id)float
{
  v3 = MEMORY[0x1E696AD98];
  [float floatValue];

  return [v3 numberWithFloat:?];
}

+ (id)toInteger:(id)integer
{
  v3 = MEMORY[0x1E696AD98];
  intValue = [integer intValue];

  return [v3 numberWithInt:intValue];
}

+ (BOOL)isDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isBoolean:(id)boolean
{
  booleanCopy = boolean;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(booleanCopy);
    v5 = v4 == CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isNumber:(id)number
{
  numberCopy = number;
  v4 = [TIAnalyticsUtil isInteger:numberCopy]|| [TIAnalyticsUtil isFloat:numberCopy];

  return v4;
}

+ (BOOL)isFloat:(id)float
{
  floatCopy = float;
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(floatCopy);
    if (v4 != CFBooleanGetTypeID())
    {
      objCType = [floatCopy objCType];
      v8 = *objCType;
      if (!*objCType || v8 == 102 || v8 == 100)
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

+ (BOOL)isInteger:(id)integer
{
  integerCopy = integer;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v4 = CFGetTypeID(integerCopy), v4 != CFBooleanGetTypeID()) && memchr("BcsilqCSILQ", *[integerCopy objCType], 0xCuLL) != 0;

  return v5;
}

+ (BOOL)isString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end