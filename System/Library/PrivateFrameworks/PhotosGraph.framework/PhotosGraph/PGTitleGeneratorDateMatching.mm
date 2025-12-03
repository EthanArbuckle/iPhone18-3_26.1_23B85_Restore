@interface PGTitleGeneratorDateMatching
+ (BOOL)type:(int64_t)type isBetterThanType:(int64_t)thanType;
+ (id)_typeMatchings;
- (BOOL)_dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear;
- (PGTitle)title;
- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval highlightNode:(id)node titleGenerationContext:(id)context;
- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes titleGenerationContext:(id)context holidayName:(id)name isForHighlight:(BOOL)highlight;
- (int64_t)_findBestType;
- (int64_t)_matchingTypeForDateNode:(id)node;
- (unint64_t)allowedTimeTitleFormats;
@end

@implementation PGTitleGeneratorDateMatching

- (int64_t)_matchingTypeForDateNode:(id)node
{
  v37 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  [objc_opt_class() _typeMatchings];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  type = 0;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v20 = *v33;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v33 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v32 + 1) + 8 * v6);
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v8 = self->_graph;
      v9 = self->_momentNodes;
      v10 = self->_referenceDateInterval;
      collection = [nodeCopy collection];
      momentNodes = [collection momentNodes];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__PGTitleGeneratorDateMatching__matchingTypeForDateNode___block_invoke;
      v22[3] = &unk_278882308;
      v13 = v9;
      v27 = &v28;
      v23 = v13;
      v24 = v7;
      v14 = v8;
      v25 = v14;
      v15 = v10;
      v26 = v15;
      [momentNodes enumerateNodesUsingBlock:v22];

      v16 = *(v29 + 24);
      if (v16 == 1)
      {
        type = [v7 type];
      }

      _Block_object_dispose(&v28, 8);
      if (v16)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return type;
}

void __57__PGTitleGeneratorDateMatching__matchingTypeForDateNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [*(a1 + 40) eventEvaluationBlock];
    *(*(*(a1 + 64) + 8) + 24) = (v5)[2](v5, *(a1 + 48), *(a1 + 56), v6);

    *a3 = *(*(*(a1 + 64) + 8) + 24);
  }
}

- (int64_t)_findBestType
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_referenceDateInterval)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_dateNodes;
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(PGTitleGeneratorDateMatching *)self _matchingTypeForDateNode:*(*(&v13 + 1) + 8 * i), v13];
          if (v9)
          {
            v10 = v9;
            if ([objc_opt_class() type:v9 isBetterThanType:v6])
            {
              v6 = v10;
            }
          }
        }

        v5 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_referenceDateInterval)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    startDate = self->_dateNodes;
    v4 = [(NSSet *)startDate countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v34;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(startDate);
          }

          localDate = [*(*(&v33 + 1) + 8 * i) localDate];
          if (!v7 || [v7 compare:localDate] == 1)
          {
            v11 = localDate;

            v7 = v11;
          }

          if (!v6 || [v6 compare:localDate] == -1)
          {
            v12 = localDate;

            v6 = v12;
          }
        }

        v5 = [(NSSet *)startDate countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v5);

      if (!v7)
      {
        v28 = 0;
        goto LABEL_31;
      }

      startDate = [(NSDateInterval *)self->_referenceDateInterval startDate];
      v13 = [MEMORY[0x277D27690] components:24 fromDate:startDate];
      v14 = MEMORY[0x277D27690];
      endDate = [(NSDateInterval *)self->_referenceDateInterval endDate];
      v32 = [v14 components:24 fromDate:endDate];
      while (2)
      {

        v16 = v7;
        v17 = [MEMORY[0x277D27690] components:24 fromDate:v16];
        v18 = [MEMORY[0x277D27690] components:24 fromDate:v6];
        v31 = v16;
        do
        {
          v19 = [v13 day];
          if (v19 == [v17 day])
          {
            month = [v13 month];
            if (month == [v17 month])
            {
              LOBYTE(v7) = 1;
              goto LABEL_28;
            }
          }

          endDate = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v16];

          v21 = [MEMORY[0x277D27690] components:24 fromDate:endDate];

          v22 = [v21 day];
          if (v22 > [v18 day])
          {
            break;
          }

          month2 = [v21 month];
          v17 = v21;
          v16 = endDate;
        }

        while (month2 <= [v18 month]);
        v24 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:startDate];

        v25 = [MEMORY[0x277D27690] components:24 fromDate:v24];

        v26 = [v25 day];
        if (v26 <= [v32 day])
        {
          month3 = [v25 month];
          if (month3 <= [v32 month])
          {

            v13 = v25;
            startDate = v24;
            continue;
          }
        }

        break;
      }

      LOBYTE(v7) = 0;
      v17 = v21;
      startDate = v24;
      v16 = endDate;
      v13 = v25;
LABEL_28:

      v28 = v31;
    }

    else
    {
      v28 = 0;
      v6 = 0;
      LOBYTE(v7) = 0;
    }

LABEL_31:
    goto LABEL_32;
  }

  LOBYTE(v7) = 0;
LABEL_32:
  v29 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)allowedTimeTitleFormats
{
  type = self->_type;
  if (!type)
  {
    return 3;
  }

  if (type == 4 && (+[PGUserDefaults isShowingHolidayCalendarEvents](PGUserDefaults, "isShowingHolidayCalendarEvents") || +[PGUserDefaults isAlwaysShowingHolidayCalendarEvents]))
  {
    return 4;
  }

  return 1;
}

- (PGTitle)title
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGRelativeDateTitleOnThisDay" value:@"PGRelativeDateTitleOnThisDay" table:@"Localizable"];

  type = self->_type;
  if ((type - 1) >= 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_22;
      }

      if (+[PGUserDefaults isAlwaysShowingHolidayCalendarEvents])
      {
        v6 = [PGCommonTitleUtility holidayNameForDateNodes:self->_dateNodes];
        goto LABEL_8;
      }

      if (+[PGUserDefaults isShowingHolidayCalendarEvents])
      {
        v6 = self->_holidayName;
LABEL_8:
        v7 = v6;
        v8 = 0;
        if (!v6)
        {
LABEL_9:
          v9 = 0;
          goto LABEL_23;
        }

        goto LABEL_12;
      }
    }

    if ([(PGTitleGeneratorDateMatching *)self _dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear])
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = 0;
    v7 = 0;
    goto LABEL_23;
  }

LABEL_11:
  v7 = v4;
  v8 = 1;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  lineBreakBehavior = self->_lineBreakBehavior;
  if (!(v8 & 1 | !self->_isForHighlight))
  {
    v11 = [PGHighlightsTitleSpecFactory titleSpecForHolidayEventIncludingLocationIfPossible:1];
    [v11 setInsertNonBreakableSpace:(lineBreakBehavior >> 1) & 1];
    v12 = [PGTitleSpecArgumentEvaluationContext alloc];
    locationHelper = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    serviceManager = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
    v15 = [(PGTitleSpecArgumentEvaluationContext *)v12 initWithLocationHelper:locationHelper serviceManager:serviceManager];

    v16 = [v11 titleWithMomentNodes:self->_momentNodes argumentEvaluationContext:v15];
    stringValue = [v16 stringValue];

    if (!stringValue)
    {
      v18 = [PGHighlightsTitleSpecFactory titleSpecForHolidayEventIncludingLocationIfPossible:0];
      [v18 setInsertNonBreakableSpace:(lineBreakBehavior >> 1) & 1];
      v19 = [v18 titleWithMomentNodes:self->_momentNodes argumentEvaluationContext:v15];
      stringValue = [v19 stringValue];
    }

    v7 = stringValue;
  }

  if (lineBreakBehavior)
  {
    v20 = v8;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = [PGCommonTitleUtility titleWithLineBreakForTitle:v7];

    v7 = v21;
  }

  v9 = [PGTitle titleWithString:v7 category:5];
LABEL_23:

  return v9;
}

- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes titleGenerationContext:(id)context holidayName:(id)name isForHighlight:(BOOL)highlight
{
  v43 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  nodesCopy = nodes;
  contextCopy = context;
  nameCopy = name;
  v40.receiver = self;
  v40.super_class = PGTitleGeneratorDateMatching;
  v18 = [(PGTitleGeneratorDateMatching *)&v40 init];
  if (!v18)
  {
    goto LABEL_19;
  }

  if ([nodesCopy count])
  {
    v36 = nameCopy;
    v37 = intervalCopy;
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];

    v21 = graph;
    objc_storeStrong(&v18->_graph, graph);
    objc_storeStrong(&v18->_referenceDateInterval, interval);
    objc_storeStrong(&v18->_momentNodes, nodes);
    v22 = [PGCommonTitleUtility dateNodesFromMomentNodes:nodesCopy];
    dateNodes = v18->_dateNodes;
    v18->_dateNodes = v22;

    objc_storeStrong(&v18->_titleGenerationContext, context);
    objc_storeStrong(&v18->_holidayName, name);
    v18->_isForHighlight = highlight;
    if ([(NSSet *)v18->_dateNodes count]== 1 && !v18->_holidayName)
    {
      v24 = +[PGUserDefaults isAlwaysShowingHolidayCalendarEvents];
      v25 = v18->_dateNodes;
      if (v24)
      {
        v26 = [PGCommonTitleUtility holidayNameForDateNodes:v25];
        v27 = [v26 length];

        if (v27)
        {
          type = 4;
LABEL_18:
          v18->_type = type;

          nameCopy = v36;
          intervalCopy = v37;
LABEL_19:
          v28 = v18;
          goto LABEL_20;
        }
      }

      else
      {
        v39 = 0;
        v29 = [PGCommonTitleUtility containsCelebrationForDateNodes:v25 holidayName:&v39 titleGenerationContext:v18->_titleGenerationContext graph:v18->_graph];
        v30 = v39;
        v31 = v39;
        v32 = v31;
        if (v29)
        {
          if (v31)
          {
            objc_storeStrong(&v18->_holidayName, v30);
            type = 4;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              v35 = v18->_dateNodes;
              *buf = 138412290;
              v42 = v35;
              _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Date %@ contains celebration but holiday name is nil", buf, 0xCu);
            }

            type = [(PGTitleGeneratorDateMatching *)v18 _findBestType];
          }
        }
      }
    }

    if (!type)
    {
      type = [(PGTitleGeneratorDateMatching *)v18 _findBestType];
    }

    goto LABEL_18;
  }

  v28 = 0;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
  return v28;
}

- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval highlightNode:(id)node titleGenerationContext:(id)context
{
  intervalCopy = interval;
  contextCopy = context;
  collection = [node collection];
  momentNodes = [collection momentNodes];

  if ([momentNodes count])
  {
    temporarySet = [momentNodes temporarySet];
    self = [(PGTitleGeneratorDateMatching *)self initWithType:type referenceDateInterval:intervalCopy momentNodes:temporarySet titleGenerationContext:contextCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_typeMatchings
{
  if (_typeMatchings_onceToken != -1)
  {
    dispatch_once(&_typeMatchings_onceToken, &__block_literal_global_28475);
  }

  v3 = _typeMatchings_typeMatchingBlocks;

  return v3;
}

void __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [PGTitleGeneratorTypeMatching typeMatchingWithType:8 eventEvaluationBlock:&__block_literal_global_267];
  v5[0] = v0;
  v1 = [PGTitleGeneratorTypeMatching typeMatchingWithType:9 eventEvaluationBlock:&__block_literal_global_271];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = _typeMatchings_typeMatchingBlocks;
  _typeMatchings_typeMatchingBlocks = v2;

  v4 = *MEMORY[0x277D85DE8];
}

BOOL __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277D276A8] dateIntervalIntersectsWeekend:v5])
  {
    v18 = 0;
    v19 = 0.0;
    v7 = MEMORY[0x277D276A8];
    v8 = [v5 startDate];
    [v7 nextWeekendLocalStartDate:&v18 interval:&v19 options:4 afterDate:v8];
    v9 = v18;

    [v9 timeIntervalSince1970];
    v11 = v10;

    v12 = v11 + v19;
    [v6 timestampUTCStart];
    v14 = v13;
    [v6 timestampUTCEnd];
    v16 = v14 < v12 && v15 > v11;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = 0.0;
  v7 = MEMORY[0x277D276A8];
  v8 = [v5 startDate];
  v9 = [v7 nextWeekendLocalStartDate:&v20 interval:&v21 options:0 afterDate:v8];
  v10 = v20;

  if (v9)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [v11 initWithStartDate:v10 duration:v21];
    if ([v5 intersectsDateInterval:v12])
    {
      [v10 timeIntervalSince1970];
      v14 = v13;
      v15 = v13 + v21;
      [v6 timestampUTCStart];
      v17 = v16;
      [v6 timestampUTCEnd];
      v9 = v17 < v15 && v18 > v14;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)type:(int64_t)type isBetterThanType:(int64_t)thanType
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (type && type != thanType)
  {
    _typeMatchings = [objc_opt_class() _typeMatchings];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [_typeMatchings countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v20;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v14 = 0;
        v18 = v10;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(_typeMatchings);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          if ([v15 type] == type)
          {
            v13 = v10;
          }

          if ([v15 type] == thanType)
          {
            v12 = v10;
          }

          ++v10;
          ++v14;
        }

        while (v9 != v14);
        v10 = v18 + v9;
        v9 = [_typeMatchings countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v13 < v12;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

@end