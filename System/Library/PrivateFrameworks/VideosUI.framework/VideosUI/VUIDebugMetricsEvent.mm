@interface VUIDebugMetricsEvent
- (NSDate)eventDate;
- (NSString)eventType;
- (NSString)pageContext;
- (VUIDebugMetricsEvent)initWithEventDictionary:(id)dictionary termCollater:(id)collater;
- (id)_sortKeys:(id)keys;
- (id)objectForKeyedSubscript:(id)subscript;
@end

@implementation VUIDebugMetricsEvent

- (VUIDebugMetricsEvent)initWithEventDictionary:(id)dictionary termCollater:(id)collater
{
  v84[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  collaterCopy = collater;
  v70.receiver = self;
  v70.super_class = VUIDebugMetricsEvent;
  v7 = [(VUIDebugMetricsEvent *)&v70 init];
  if (v7)
  {
    v8 = [dictionaryCopy copy];
    rawData = v7->_rawData;
    v7->_rawData = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [MEMORY[0x1E69D5928] app];
    v12 = [v11 dictionaryForKey:kVUIBagKeyMetrics];

    v60 = v12;
    v62 = [v12 valueForKey:@"metricsBase"];
    primaryTerms = [collaterCopy primaryTerms];
    v14 = [primaryTerms valueForKey:@"page"];
    v15 = [(VUIDebugMetricsEvent *)v7 _sortKeys:v14];

    eventType = [(VUIDebugMetricsEvent *)v7 eventType];
    v17 = [eventType isEqualToString:@"page"];

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      primaryTerms2 = [collaterCopy primaryTerms];
      eventType2 = [(VUIDebugMetricsEvent *)v7 eventType];
      v21 = [primaryTerms2 valueForKey:eventType2];

      v18 = [(VUIDebugMetricsEvent *)v7 _sortKeys:v21];
      eventType3 = [(VUIDebugMetricsEvent *)v7 eventType];
      LODWORD(eventType2) = [eventType3 isEqualToString:@"pageRender"];

      if (eventType2)
      {
        v23 = [v21 mutableCopy];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __61__VUIDebugMetricsEvent_initWithEventDictionary_termCollater___block_invoke;
        v68[3] = &unk_1E8734D10;
        v69 = dictionaryCopy;
        [v23 sortUsingComparator:v68];
        v24 = [v23 copy];

        v18 = v24;
      }
    }

    v66 = v10;
    allKeys = [dictionaryCopy allKeys];
    allKeys2 = [dictionaryCopy allKeys];
    v27 = [allKeys2 indexesOfObjectsPassingTest:&__block_literal_global_126];
    v28 = [allKeys objectsAtIndexes:v27];

    baseTerms = [collaterCopy baseTerms];
    v30 = [(VUIDebugMetricsEvent *)v7 _sortKeys:baseTerms];

    metricsKitTerms = [collaterCopy metricsKitTerms];
    v32 = [(VUIDebugMetricsEvent *)v7 _sortKeys:metricsKitTerms];

    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = v33;
    if (v18)
    {
      [v33 addObjectsFromArray:v18];
    }

    v65 = v15;
    [v34 addObjectsFromArray:v15];
    v64 = v28;
    [v34 addObjectsFromArray:v28];
    v63 = v30;
    [v34 addObjectsFromArray:v30];
    v59 = v32;
    [v34 addObjectsFromArray:v32];
    v35 = v62;
    allKeys3 = [v62 allKeys];
    [v34 addObjectsFromArray:allKeys3];

    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    allKeys4 = [dictionaryCopy allKeys];
    [v37 addObjectsFromArray:allKeys4];

    [v37 minusSet:v34];
    v39 = MEMORY[0x1E695DFD8];
    filteredTerms = [collaterCopy filteredTerms];
    v41 = [v39 setWithArray:filteredTerms];
    [v37 minusSet:v41];

    allObjects = [v37 allObjects];
    v61 = allObjects;
    if (v18 && [(NSArray *)v18 count])
    {
      v83[0] = @"header";
      eventType4 = [(VUIDebugMetricsEvent *)v7 eventType];
      v44 = [eventType4 stringByAppendingString:@" fields"];
      v83[1] = @"keys";
      v84[0] = v44;
      v84[1] = v18;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
      [(NSArray *)v66 addObject:v45];

      allObjects = v61;
      v35 = v62;
    }

    if ([(NSArray *)v65 count])
    {
      v81[0] = 0x1F5DC6000;
      v81[1] = @"keys";
      v82[0] = @"page fields";
      v82[1] = v65;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
      [(NSArray *)v66 addObject:v46];
    }

    if ([allObjects count])
    {
      v79[0] = 0x1F5DC6000;
      v79[1] = @"keys";
      v80[0] = @"uncategorized fields";
      v80[1] = allObjects;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      [(NSArray *)v66 addObject:v47];
    }

    if ([v64 count])
    {
      v77[0] = 0x1F5DC6000;
      v77[1] = @"keys";
      v78[0] = @"UTS fields";
      v78[1] = v64;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      [(NSArray *)v66 addObject:v48];
    }

    if ([v63 count])
    {
      v75[0] = 0x1F5DC6000;
      v75[1] = @"keys";
      v76[0] = @"base fields";
      v76[1] = v63;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
      [(NSArray *)v66 addObject:v49];
    }

    if ([v35 count])
    {
      v73[0] = @"header";
      v73[1] = @"keys";
      v74[0] = @"bag metrics fields";
      allKeys5 = [v35 allKeys];
      v74[1] = allKeys5;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      [(NSArray *)v66 addObject:v51];
    }

    if ([v59 count])
    {
      v71[0] = 0x1F5DC6000;
      v71[1] = @"keys";
      v72[0] = @"metricsKit fields";
      v72[1] = v59;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
      [(NSArray *)v66 addObject:v52];
    }

    sortedPrimaryKeys = v7->_sortedPrimaryKeys;
    v7->_sortedPrimaryKeys = v18;
    v54 = v18;

    sortedPageKeys = v7->_sortedPageKeys;
    v7->_sortedPageKeys = v65;
    v56 = v65;

    eventData = v7->_eventData;
    v7->_eventData = v66;
  }

  return v7;
}

uint64_t __61__VUIDebugMetricsEvent_initWithEventDictionary_termCollater___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 valueForKey:a2];
  v8 = [*(a1 + 32) valueForKey:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8 != 0;
    }
  }

  else
  {
    v10 = [v7 compare:v8];
  }

  return v10;
}

uint64_t __61__VUIDebugMetricsEvent_initWithEventDictionary_termCollater___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"data.uts"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"data.uts"];
  }

  return v3;
}

- (id)_sortKeys:(id)keys
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__VUIDebugMetricsEvent__sortKeys___block_invoke;
  v7[3] = &unk_1E872E280;
  v7[4] = self;
  keysCopy = keys;
  v4 = [keysCopy indexesOfObjectsPassingTest:v7];
  v5 = [keysCopy objectsAtIndexes:v4];

  return v5;
}

uint64_t __34__VUIDebugMetricsEvent__sortKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 rawData];
  v5 = [v4 allKeys];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (NSDate)eventDate
{
  rawData = [(VUIDebugMetricsEvent *)self rawData];
  v3 = [rawData objectForKeyedSubscript:@"eventTime"];

  if (v3)
  {
    v4 = MEMORY[0x1E695DF00];
    [v3 doubleValue];
    v6 = [v4 dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)eventType
{
  rawData = [(VUIDebugMetricsEvent *)self rawData];
  v3 = [rawData objectForKeyedSubscript:@"eventType"];

  return v3;
}

- (NSString)pageContext
{
  rawData = [(VUIDebugMetricsEvent *)self rawData];
  v3 = [rawData objectForKeyedSubscript:@"pageContext"];

  return v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  rawData = [(VUIDebugMetricsEvent *)self rawData];
  v6 = [rawData objectForKeyedSubscript:subscriptCopy];

  LODWORD(rawData) = [subscriptCopy containsString:@"Time"];
  if (rawData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7 / 1000.0];
      v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v9 setDateFormat:@"dd/MM HH:mm:ss.SS"];
      v10 = [v9 stringFromDate:v8];

      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v6 stringValue];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v13 = [v6 isEqual:null];

    if (v13)
    {
      v10 = @"Null";
      goto LABEL_10;
    }

    stringValue = v6;
  }

  v10 = stringValue;
LABEL_10:

  return v10;
}

@end