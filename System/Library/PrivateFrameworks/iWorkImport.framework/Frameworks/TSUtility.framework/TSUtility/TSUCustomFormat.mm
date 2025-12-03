@interface TSUCustomFormat
- (BOOL)p_isEqual:(id)equal matchingFullName:(BOOL)name;
- (NSString)currencyCode;
- (NSString)formatNameStem;
- (NSString)formatNameTag;
- (TSUCustomFormat)customFormatWithNewName:(id)name;
- (TSUCustomFormat)initWithName:(id)name formatType:(unsigned int)type data:(id)data conditionList:(id)list;
- (id)conditionalFormatAtIndex:(unint64_t)index;
- (id)conditionalFormatDataForKey:(unint64_t)key;
- (id)conditionalFormatDataForValue:(double)value outKey:(unint64_t *)key;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)conditionCount;
- (unint64_t)hash;
- (void)p_addConditionOfType:(int)type value:(double)value data:(id)data;
- (void)p_makeFormatNameStemAndTag;
@end

@implementation TSUCustomFormat

- (TSUCustomFormat)initWithName:(id)name formatType:(unsigned int)type data:(id)data conditionList:(id)list
{
  nameCopy = name;
  dataCopy = data;
  listCopy = list;
  v25.receiver = self;
  v25.super_class = TSUCustomFormat;
  v13 = [(TSUCustomFormat *)&v25 init];
  if (!v13)
  {
    goto LABEL_10;
  }

  if (type - 270 <= 4 && type != 273)
  {
    if (dataCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
  [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:247 isFatal:0 description:"Creating a custom format without a correct custom format type."];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!dataCopy)
  {
LABEL_5:
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:248 isFatal:0 description:"invalid nil value for '%{public}s'", "customFormatData"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_6:
  v16 = [nameCopy copy];
  formatName = v13->_formatName;
  v13->_formatName = v16;

  v13->_formatType = type;
  v18 = [dataCopy copy];
  defaultFormatData = v13->_defaultFormatData;
  v13->_defaultFormatData = v18;

  [(TSUCustomFormatData *)v13->_defaultFormatData setIsConditional:0];
  if (listCopy)
  {
    if (![(TSUCustomFormat *)v13 conditionsAllowed])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
      [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:257 isFatal:0 description:"Conditions are only allowed for number and currency custom formats."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    objc_storeStrong(&v13->_conditionList, list);
  }

LABEL_10:

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [TSUMutableCustomFormat allocWithZone:zone];
  formatName = [(TSUCustomFormat *)self formatName];
  formatType = [(TSUCustomFormat *)self formatType];
  defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
  v8 = [(TSUCustomFormat *)v4 initWithName:formatName formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(TSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(TSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (TSUCustomFormat)customFormatWithNewName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [TSUCustomFormat alloc];
  formatType = [(TSUCustomFormat *)self formatType];
  defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
  v8 = [(TSUCustomFormat *)v5 initWithName:nameCopy formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(TSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(TSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (unint64_t)conditionCount
{
  conditionList = [(TSUCustomFormat *)self conditionList];
  v3 = [conditionList count];

  return v3;
}

- (void)p_addConditionOfType:(int)type value:(double)value data:(id)data
{
  v6 = *&type;
  dataCopy = data;
  if (![(TSUCustomFormat *)self conditionsAllowed])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_addConditionOfType:value:data:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:305 isFatal:0 description:"Adding conditions is only allowed for Custom Numbers."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!dataCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat p_addConditionOfType:value:data:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:306 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  conditionList = [(TSUCustomFormat *)self conditionList];

  if (!conditionList)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    conditionList = self->_conditionList;
    self->_conditionList = v14;
  }

  v17 = [[TSUCustomFormatCondition alloc] initWithType:v6 value:dataCopy data:value];

  conditionList2 = [(TSUCustomFormat *)self conditionList];
  [conditionList2 addObject:v17];
}

- (unint64_t)hash
{
  defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
  formatString = [defaultFormatData formatString];
  v5 = [formatString hash];
  formatType = [(TSUCustomFormat *)self formatType];

  return v5 ^ formatType;
}

- (void)p_makeFormatNameStemAndTag
{
  formatName = [(TSUCustomFormat *)self formatName];

  if (formatName)
  {
    formatName2 = [(TSUCustomFormat *)self formatName];
    v5 = +[TSULocale currentLocale];
    v12 = 0;
    sub_27704302C(formatName2, v5, &v12);
    v6 = v12;

    formatNameStem = self->_formatNameStem;
    self->_formatNameStem = v6;
    v8 = v6;

    formatName3 = [(TSUCustomFormat *)self formatName];
    v10 = [formatName3 substringFromIndex:{-[NSString length](v8, "length")}];
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

- (BOOL)p_isEqual:(id)equal matchingFullName:(BOOL)name
{
  nameCopy = name;
  equalCopy = equal;
  if (self != equalCopy)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, equalCopy);
    if (!v8)
    {
      goto LABEL_20;
    }

    formatType = [(TSUCustomFormat *)self formatType];
    if (formatType != [v8 formatType])
    {
      goto LABEL_20;
    }

    conditionList = [(TSUCustomFormat *)self conditionList];
    v11 = [conditionList count];
    conditionList2 = [v8 conditionList];
    v13 = [conditionList2 count];

    if (v11 != v13)
    {
      goto LABEL_20;
    }

    if (nameCopy)
    {
      formatName = [v8 formatName];
      formatName2 = [(TSUCustomFormat *)self formatName];
      v16 = [formatName isEqualToString:formatName2];

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      formatNameStem = [(TSUCustomFormat *)self formatNameStem];
      formatNameStem2 = [v8 formatNameStem];
      v20 = [formatNameStem isEqual:formatNameStem2];

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
    defaultFormatData2 = [v8 defaultFormatData];
    v23 = [defaultFormatData isEqual:defaultFormatData2];

    if (v23)
    {
      conditionList3 = [(TSUCustomFormat *)self conditionList];
      v25 = [conditionList3 count];

      if (!v25)
      {
        v17 = 1;
        goto LABEL_21;
      }

      v26 = 0;
      while (1)
      {
        conditionList4 = [(TSUCustomFormat *)self conditionList];
        v28 = [conditionList4 objectAtIndex:v26];

        conditionList5 = [v8 conditionList];
        v30 = [conditionList5 objectAtIndex:v26];

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
          conditionList6 = [(TSUCustomFormat *)self conditionList];
          v32 = [conditionList6 count];

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

- (id)conditionalFormatDataForValue:(double)value outKey:(unint64_t *)key
{
  if (![(TSUCustomFormat *)self conditionsAllowed]|| (v7 = [(TSUCustomFormat *)self conditionCount]) == 0)
  {
LABEL_25:
    defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
    v18 = 0;
    if (!key)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    conditionList = [(TSUCustomFormat *)self conditionList];
    v11 = [conditionList objectAtIndexedSubscript:v9];

    [v11 conditionValue];
    v13 = v12;
    conditionType = [v11 conditionType];
    if (conditionType <= 1)
    {
      if (conditionType)
      {
        if (conditionType != 1)
        {
LABEL_22:
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormat conditionalFormatDataForValue:outKey:]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
          [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:445 isFatal:0 description:"Unexpected condition type in conditional number format!"];

          +[TSUAssertionHandler logBacktraceThrottled];
LABEL_23:

          goto LABEL_24;
        }

        if (v13 <= value)
        {
          goto LABEL_23;
        }
      }

      else if (v13 != value && vabdd_f64(value, v13) >= 1.0e-14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      switch(conditionType)
      {
        case 2:
          if (v13 < value)
          {
            goto LABEL_23;
          }

          break;
        case 3:
          if (v13 >= value)
          {
            goto LABEL_23;
          }

          break;
        case 4:
          if (v13 > value)
          {
            goto LABEL_23;
          }

          break;
        default:
          goto LABEL_22;
      }
    }

    defaultFormatData = [v11 data];

    if (defaultFormatData)
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
  if (key)
  {
LABEL_26:
    *key = v18;
  }

LABEL_27:

  return defaultFormatData;
}

- (id)conditionalFormatAtIndex:(unint64_t)index
{
  conditionList = [(TSUCustomFormat *)self conditionList];
  v5 = [conditionList objectAtIndexedSubscript:index];

  return v5;
}

- (id)conditionalFormatDataForKey:(unint64_t)key
{
  if (key)
  {
    conditionList = [(TSUCustomFormat *)self conditionList];
    v5 = [conditionList objectAtIndexedSubscript:key - 1];
    data = [v5 data];
  }

  else
  {
    data = [(TSUCustomFormat *)self defaultFormatData];
  }

  return data;
}

- (NSString)currencyCode
{
  if (self->_currencyCodeComputed)
  {
    goto LABEL_21;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (self->_currencyCodeComputed)
  {
    goto LABEL_20;
  }

  defaultFormatData = [(TSUCustomFormat *)selfCopy defaultFormatData];
  currencyCodeIndex = [defaultFormatData currencyCodeIndex];

  v6 = 0;
  for (i = 0; i < [(TSUCustomFormat *)selfCopy conditionCount]; ++i)
  {
    v8 = [(TSUCustomFormat *)selfCopy conditionalFormatAtIndex:i];
    data = [v8 data];
    currencyCodeIndex2 = [data currencyCodeIndex];

    if (currencyCodeIndex && currencyCodeIndex2 && currencyCodeIndex2 != currencyCodeIndex)
    {
      currencyCodeIndex = 0;
      break;
    }

    if (currencyCodeIndex)
    {
      goto LABEL_9;
    }

    if (i)
    {
      if (i == 1)
      {
        if (currencyCodeIndex2 == v6)
        {
          currencyCodeIndex = currencyCodeIndex2;
        }

        else
        {
          currencyCodeIndex = 0;
        }
      }

      else
      {
        currencyCodeIndex = 0;
      }

LABEL_9:
      currencyCodeIndex2 = v6;
      goto LABEL_10;
    }

    currencyCodeIndex = 0;
LABEL_10:
    v6 = currencyCodeIndex2;
  }

  v11 = TSUCurrencyCodeForIndex(currencyCodeIndex);
  currencyCode = selfCopy->_currencyCode;
  selfCopy->_currencyCode = v11;

  self->_currencyCodeComputed = 1;
LABEL_20:
  objc_sync_exit(selfCopy);

LABEL_21:
  v13 = self->_currencyCode;

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  formatName = [(TSUCustomFormat *)self formatName];
  defaultFormatData = [(TSUCustomFormat *)self defaultFormatData];
  formatString = [defaultFormatData formatString];
  v7 = [v3 stringWithFormat:@"TSUCustomFormat:%@, %@", formatName, formatString];

  return v7;
}

@end