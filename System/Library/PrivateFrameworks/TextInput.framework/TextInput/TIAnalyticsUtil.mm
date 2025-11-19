@interface TIAnalyticsUtil
+ (BOOL)hasNonWhitespaceNonPunctuationText:(id)a3;
+ (BOOL)isArray:(id)a3;
+ (BOOL)isBoolean:(id)a3;
+ (BOOL)isDictionary:(id)a3;
+ (BOOL)isFloat:(id)a3;
+ (BOOL)isInteger:(id)a3;
+ (BOOL)isNumber:(id)a3;
+ (BOOL)isReportableClientId:(id)a3;
+ (BOOL)isString:(id)a3;
+ (BOOL)isStylizedString:(id)a3 equalToString:(id)a4;
+ (id)appCategoryForBundleID:(id)a3;
+ (id)bucketNumber:(id)a3 bucketThresholds:(id)a4 bucketValues:(id)a5;
+ (id)bucketRatioWithNumber:(id)a3 bucketCount:(int)a4;
+ (id)bucketRatioWithNumerator:(id)a3 andDenominator:(id)a4 bucketCount:(int)a5;
+ (id)bucketRatioWithValue:(double)a3 bucketCount:(int)a4;
+ (id)constrainInteger:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5;
+ (id)indexesForValidRatiosInArray:(id)a3;
+ (id)roundCount:(id)a3 toSignificantDigits:(int64_t)a4;
+ (id)roundNumber:(id)a3 toSignificantDigits:(id)a4;
+ (id)toFloat:(id)a3;
+ (id)toInteger:(id)a3;
+ (int)computeCommonExtentForArrays:(id)a3;
@end

@implementation TIAnalyticsUtil

+ (id)appCategoryForBundleID:(id)a3
{
  v3 = a3;
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
    v6 = [v4 lookupAppBundle:v3];
  }

  else
  {
LABEL_7:
    v6 = @"nil";
  }

  return v6;
}

+ (BOOL)isReportableClientId:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.apple."])
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
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v3, "hash")}];
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

+ (BOOL)hasNonWhitespaceNonPunctuationText:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  LOBYTE(v7) = [v8 length] != 0;
  return v7;
}

+ (BOOL)isStylizedString:(id)a3 equalToString:(id)a4
{
  v6 = a4;
  v7 = [a1 createStringByReplacingStylizedQuotesToStraightQuotes:a3];
  LOBYTE(a1) = [v7 isEqualToString:v6];

  return a1;
}

+ (id)indexesForValidRatiosInArray:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TIAnalyticsUtil_indexesForValidRatiosInArray___block_invoke;
  v7[3] = &unk_1E6F4D7C0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

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

+ (int)computeCommonExtentForArrays:(id)a3
{
  v15 = &v16;
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = -1;
    v6 = -1;
    v7 = v3;
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

+ (id)bucketRatioWithValue:(double)a3 bucketCount:(int)a4
{
  if (a3 == -1.0)
  {
    *&a4 = 0xFFFFFFFFLL;
  }

  else
  {
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    a4 = llround(a3 * a4);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{*&a4, v4}];

  return v6;
}

+ (id)bucketRatioWithNumerator:(id)a3 andDenominator:(id)a4 bucketCount:(int)a5
{
  v5 = *&a5;
  v7 = a4;
  [a3 doubleValue];
  v9 = v8;
  [v7 doubleValue];
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

+ (id)bucketRatioWithNumber:(id)a3 bucketCount:(int)a4
{
  v4 = *&a4;
  [a3 doubleValue];

  return [TIAnalyticsUtil bucketRatioWithValue:v4 bucketCount:?];
}

+ (id)bucketNumber:(id)a3 bucketThresholds:(id)a4 bucketValues:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      [v9 objectAtIndexedSubscript:0];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithInteger:0];
    }
    v12 = ;
    if ([v8 count])
    {
      v13 = 0;
      while (1)
      {
        [v7 doubleValue];
        v15 = v14;
        v16 = [v8 objectAtIndexedSubscript:v13];
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
        if ([v8 count] == v13)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = v12;
  }

  else
  {
    v11 = v7;
  }

LABEL_15:

  return v11;
}

+ (id)constrainInteger:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 intValue];
  if (v7)
  {
    v10 = [v7 intValue];
    if (v9 <= v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = v9;
    }
  }

  if (v8)
  {
    v11 = [v8 intValue];
    if (v9 >= v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = v9;
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:v9];

  return v12;
}

+ (id)roundNumber:(id)a3 toSignificantDigits:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v11 = v5;
    goto LABEL_11;
  }

  v7 = [TIAnalyticsUtil isInteger:v5];
  [v5 doubleValue];
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
    v13 = [v6 intValue];
    v14 = log10(fabs(v12));
    v15 = __exp10((v13 - vcvtpd_s64_f64(v14)));
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

+ (id)roundCount:(id)a3 toSignificantDigits:(int64_t)a4
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithInteger:a4];
  v8 = [TIAnalyticsUtil roundNumber:v6 toSignificantDigits:v7];

  return v8;
}

+ (id)toFloat:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  [a3 floatValue];

  return [v3 numberWithFloat:?];
}

+ (id)toInteger:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 intValue];

  return [v3 numberWithInt:v4];
}

+ (BOOL)isDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isArray:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isBoolean:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(v3);
    v5 = v4 == CFBooleanGetTypeID();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isNumber:(id)a3
{
  v3 = a3;
  v4 = [TIAnalyticsUtil isInteger:v3]|| [TIAnalyticsUtil isFloat:v3];

  return v4;
}

+ (BOOL)isFloat:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFBooleanGetTypeID())
    {
      v7 = [v3 objCType];
      v8 = *v7;
      if (!*v7 || v8 == 102 || v8 == 100)
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

+ (BOOL)isInteger:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v4 = CFGetTypeID(v3), v4 != CFBooleanGetTypeID()) && memchr("BcsilqCSILQ", *[v3 objCType], 0xCuLL) != 0;

  return v5;
}

+ (BOOL)isString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end