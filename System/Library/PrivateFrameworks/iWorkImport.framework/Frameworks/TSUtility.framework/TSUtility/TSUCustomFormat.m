@interface TSUCustomFormat
- (BOOL)p_isEqual:(id)a3 matchingFullName:(BOOL)a4;
- (NSString)currencyCode;
- (NSString)formatNameStem;
- (NSString)formatNameTag;
- (TSUCustomFormat)customFormatWithNewName:(id)a3;
- (TSUCustomFormat)initWithName:(id)a3 formatType:(unsigned int)a4 data:(id)a5 conditionList:(id)a6;
- (id)conditionalFormatAtIndex:(unint64_t)a3;
- (id)conditionalFormatDataForKey:(unint64_t)a3;
- (id)conditionalFormatDataForValue:(double)a3 outKey:(unint64_t *)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)conditionCount;
- (unint64_t)hash;
- (void)p_addConditionOfType:(int)a3 value:(double)a4 data:(id)a5;
- (void)p_makeFormatNameStemAndTag;
@end

@implementation TSUCustomFormat

- (TSUCustomFormat)initWithName:(id)a3 formatType:(unsigned int)a4 data:(id)a5 conditionList:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = TSUCustomFormat;
  v13 = [(TSUCustomFormat *)&v25 init];
  if (!v13)
  {
    goto LABEL_10;
  }

  if (a4 - 270 <= 4 && a4 != 273)
  {
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
  [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:247 isFatal:0 description:"Creating a custom format without a correct custom format type."];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!v11)
  {
LABEL_5:
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:248 isFatal:0 description:"invalid nil value for '%{public}s'", "customFormatData"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_6:
  v16 = [v10 copy];
  formatName = v13->_formatName;
  v13->_formatName = v16;

  v13->_formatType = a4;
  v18 = [v11 copy];
  defaultFormatData = v13->_defaultFormatData;
  v13->_defaultFormatData = v18;

  [(TSUCustomFormatData *)v13->_defaultFormatData setIsConditional:0];
  if (v12)
  {
    if (![(TSUCustomFormat *)v13 conditionsAllowed])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
      [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:257 isFatal:0 description:"Conditions are only allowed for number and currency custom formats."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v13->_conditionList, a6);
  }

LABEL_10:

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [TSUMutableCustomFormat allocWithZone:a3];
  v5 = [(TSUCustomFormat *)self formatName];
  v6 = [(TSUCustomFormat *)self formatType];
  v7 = [(TSUCustomFormat *)self defaultFormatData];
  v8 = [(TSUCustomFormat *)v4 initWithName:v5 formatType:v6 data:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(TSUCustomFormat *)self conditionList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        v18 = [v14 data];
        [(TSUCustomFormat *)v8 p_addConditionOfType:v15 value:v18 data:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (TSUCustomFormat)customFormatWithNewName:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSUCustomFormat alloc];
  v6 = [(TSUCustomFormat *)self formatType];
  v7 = [(TSUCustomFormat *)self defaultFormatData];
  v8 = [(TSUCustomFormat *)v5 initWithName:v4 formatType:v6 data:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(TSUCustomFormat *)self conditionList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        v18 = [v14 data];
        [(TSUCustomFormat *)v8 p_addConditionOfType:v15 value:v18 data:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (unint64_t)conditionCount
{
  v2 = [(TSUCustomFormat *)self conditionList];
  v3 = [v2 count];

  return v3;
}

- (void)p_addConditionOfType:(int)a3 value:(double)a4 data:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  if (![(TSUCustomFormat *)self conditionsAllowed])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_addConditionOfType:value:data:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:305 isFatal:0 description:"Adding conditions is only allowed for Custom Numbers."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_addConditionOfType:value:data:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:306 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = [(TSUCustomFormat *)self conditionList];

  if (!v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    conditionList = self->_conditionList;
    self->_conditionList = v14;
  }

  v17 = [[TSUCustomFormatCondition alloc] initWithType:v6 value:v8 data:a4];

  v16 = [(TSUCustomFormat *)self conditionList];
  [v16 addObject:v17];
}

- (unint64_t)hash
{
  v3 = [(TSUCustomFormat *)self defaultFormatData];
  v4 = [v3 formatString];
  v5 = [v4 hash];
  v6 = [(TSUCustomFormat *)self formatType];

  return v5 ^ v6;
}

- (void)p_makeFormatNameStemAndTag
{
  v3 = [(TSUCustomFormat *)self formatName];

  if (v3)
  {
    v4 = [(TSUCustomFormat *)self formatName];
    v5 = +[TSULocale currentLocale];
    v12 = 0;
    sub_27704302C(v4, v5, &v12);
    v6 = v12;

    formatNameStem = self->_formatNameStem;
    self->_formatNameStem = v6;
    v8 = v6;

    v9 = [(TSUCustomFormat *)self formatName];
    v10 = [v9 substringFromIndex:{-[NSString length](v8, "length")}];
    formatNameTag = self->_formatNameTag;
    self->_formatNameTag = v10;
  }
}

- (NSString)formatNameStem
{
  formatNameStem = self->_formatNameStem;
  if (!formatNameStem)
  {
    [(TSUCustomFormat *)self p_makeFormatNameStemAndTag];
    formatNameStem = self->_formatNameStem;
  }

  return formatNameStem;
}

- (NSString)formatNameTag
{
  formatNameTag = self->_formatNameTag;
  if (!formatNameTag)
  {
    [(TSUCustomFormat *)self p_makeFormatNameStemAndTag];
    formatNameTag = self->_formatNameTag;
  }

  return formatNameTag;
}

- (BOOL)p_isEqual:(id)a3 matchingFullName:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self != v6)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, v6);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = [(TSUCustomFormat *)self formatType];
    if (v9 != [v8 formatType])
    {
      goto LABEL_20;
    }

    v10 = [(TSUCustomFormat *)self conditionList];
    v11 = [v10 count];
    v12 = [v8 conditionList];
    v13 = [v12 count];

    if (v11 != v13)
    {
      goto LABEL_20;
    }

    if (v4)
    {
      v14 = [v8 formatName];
      v15 = [(TSUCustomFormat *)self formatName];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = [(TSUCustomFormat *)self formatNameStem];
      v19 = [v8 formatNameStem];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v21 = [(TSUCustomFormat *)self defaultFormatData];
    v22 = [v8 defaultFormatData];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      v24 = [(TSUCustomFormat *)self conditionList];
      v25 = [v24 count];

      if (!v25)
      {
        v17 = 1;
        goto LABEL_21;
      }

      v26 = 0;
      while (1)
      {
        v27 = [(TSUCustomFormat *)self conditionList];
        v28 = [v27 objectAtIndex:v26];

        v29 = [v8 conditionList];
        v30 = [v29 objectAtIndex:v26];

        if (v28)
        {
          if (v30)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_isEqual:matchingFullName:]"];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
          [TSUAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:387 isFatal:0 description:"invalid nil value for '%{public}s'", "thisCondition"];

          +[TSUAssertionHandler logBacktraceThrottled];
          if (v30)
          {
            goto LABEL_15;
          }
        }

        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_isEqual:matchingFullName:]"];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
        [TSUAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:388 isFatal:0 description:"invalid nil value for '%{public}s'", "otherCondition"];

        +[TSUAssertionHandler logBacktraceThrottled];
LABEL_15:
        v17 = [v28 isEqual:v30];

        if (v17)
        {
          ++v26;
          v31 = [(TSUCustomFormat *)self conditionList];
          v32 = [v31 count];

          if (v26 < v32)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v17 = 1;
LABEL_22:

  return v17;
}

- (id)conditionalFormatDataForValue:(double)a3 outKey:(unint64_t *)a4
{
  if (![(TSUCustomFormat *)self conditionsAllowed]|| (v7 = [(TSUCustomFormat *)self conditionCount]) == 0)
  {
LABEL_25:
    v15 = [(TSUCustomFormat *)self defaultFormatData];
    v18 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v10 = [(TSUCustomFormat *)self conditionList];
    v11 = [v10 objectAtIndexedSubscript:v9];

    [v11 conditionValue];
    v13 = v12;
    v14 = [v11 conditionType];
    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
LABEL_22:
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat conditionalFormatDataForValue:outKey:]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
          [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:445 isFatal:0 description:"Unexpected condition type in conditional number format!"];

          +[TSUAssertionHandler logBacktraceThrottled];
LABEL_23:

          goto LABEL_24;
        }

        if (v13 <= a3)
        {
          goto LABEL_23;
        }
      }

      else if (v13 != a3 && vabdd_f64(a3, v13) >= 1.0e-14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          if (v13 < a3)
          {
            goto LABEL_23;
          }

          break;
        case 3:
          if (v13 >= a3)
          {
            goto LABEL_23;
          }

          break;
        case 4:
          if (v13 > a3)
          {
            goto LABEL_23;
          }

          break;
        default:
          goto LABEL_22;
      }
    }

    v15 = [v11 data];

    if (v15)
    {
      break;
    }

LABEL_24:
    if (v8 == ++v9)
    {
      goto LABEL_25;
    }
  }

  v18 = v9 + 1;
  if (a4)
  {
LABEL_26:
    *a4 = v18;
  }

LABEL_27:

  return v15;
}

- (id)conditionalFormatAtIndex:(unint64_t)a3
{
  v4 = [(TSUCustomFormat *)self conditionList];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)conditionalFormatDataForKey:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(TSUCustomFormat *)self conditionList];
    v5 = [v4 objectAtIndexedSubscript:a3 - 1];
    v6 = [v5 data];
  }

  else
  {
    v6 = [(TSUCustomFormat *)self defaultFormatData];
  }

  return v6;
}

- (NSString)currencyCode
{
  if (self->_currencyCodeComputed)
  {
    goto LABEL_21;
  }

  v3 = self;
  objc_sync_enter(v3);
  if (self->_currencyCodeComputed)
  {
    goto LABEL_20;
  }

  v4 = [(TSUCustomFormat *)v3 defaultFormatData];
  v5 = [v4 currencyCodeIndex];

  v6 = 0;
  for (i = 0; i < [(TSUCustomFormat *)v3 conditionCount]; ++i)
  {
    v8 = [(TSUCustomFormat *)v3 conditionalFormatAtIndex:i];
    v9 = [v8 data];
    v10 = [v9 currencyCodeIndex];

    if (v5 && v10 && v10 != v5)
    {
      v5 = 0;
      break;
    }

    if (v5)
    {
      goto LABEL_9;
    }

    if (i)
    {
      if (i == 1)
      {
        if (v10 == v6)
        {
          v5 = v10;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_9:
      v10 = v6;
      goto LABEL_10;
    }

    v5 = 0;
LABEL_10:
    v6 = v10;
  }

  v11 = TSUCurrencyCodeForIndex(v5);
  currencyCode = v3->_currencyCode;
  v3->_currencyCode = v11;

  self->_currencyCodeComputed = 1;
LABEL_20:
  objc_sync_exit(v3);

LABEL_21:
  v13 = self->_currencyCode;

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TSUCustomFormat *)self formatName];
  v5 = [(TSUCustomFormat *)self defaultFormatData];
  v6 = [v5 formatString];
  v7 = [v3 stringWithFormat:@"TSUCustomFormat:%@, %@", v4, v6];

  return v7;
}

@end