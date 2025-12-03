@interface PGTitleSpecTimeArgument
+ (id)argumentWithTimeType:(unint64_t)type;
- (PGTitleSpecTimeArgument)initWithTimeType:(unint64_t)type;
- (id)_anniversaryTitleWithMomentNodes:(id)nodes;
- (id)_birthdayTitleWithMomentNodes:(id)nodes;
- (id)_holidayTitleWithMomentNodes:(id)nodes;
- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context;
- (id)_yearsAgoStringWithEventNodes:(id)nodes relativeToDateComponents:(id)components;
- (id)_yearsAgoTitle;
@end

@implementation PGTitleSpecTimeArgument

- (id)_holidayTitleWithMomentNodes:(id)nodes
{
  v3 = [PGCommonTitleUtility dateNodesFromMomentNodes:nodes];
  v4 = [PGCommonTitleUtility holidayNameForDateNodes:v3];

  return v4;
}

- (id)_yearsAgoStringWithEventNodes:(id)nodes relativeToDateComponents:(id)components
{
  nodesCopy = nodes;
  componentsCopy = components;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PGUseOrdinalAge" value:@"PGUseOrdinalAge" table:@"Localizable"];

  v9 = v8 && ([v8 isEqualToString:@"1"] & 1) != 0;
  v10 = [PGTimeTitleUtility numberOfYearsAgoWithMomentNodes:nodesCopy relativeToDateComponents:componentsCopy useOrdinal:v9];

  return v10;
}

- (id)_birthdayTitleWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    v5 = [PGGraphMomentNodeCollection alloc];
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];
    v8 = [(MAElementCollection *)v5 initWithSet:nodesCopy graph:graph];

    birthdayPersonNodes = [(PGGraphMomentNodeCollection *)v8 birthdayPersonNodes];
    temporarySet = [birthdayPersonNodes temporarySet];

    if ([temporarySet count] == 1)
    {
      anyObject2 = [temporarySet anyObject];
      birthdayDateComponents = [anyObject2 birthdayDateComponents];
      year = [birthdayDateComponents year];
      v14 = 0;
      if (birthdayDateComponents && year != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [(PGTitleSpecTimeArgument *)self _yearsAgoStringWithEventNodes:nodesCopy relativeToDateComponents:birthdayDateComponents];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_anniversaryTitleWithMomentNodes:(id)nodes
{
  v28 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __60__PGTitleSpecTimeArgument__anniversaryTitleWithMomentNodes___block_invoke;
        v21[3] = &unk_278889240;
        v22 = v4;
        [v10 enumerateNeighborNodesThroughEdgesWithLabel:@"ANNIVERSARY" domain:301 usingBlock:v21];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  anyObject = [v4 anyObject];
  if (anyObject)
  {
    if ([v4 count] >= 2)
    {
      v12 = +[PGLogging sharedLogging];
      loggingConnection = [v12 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "More than one person with anniversary found for momentNodes. Taking any person.", buf, 2u);
      }
    }

    anniversaryDateComponents = [anyObject anniversaryDateComponents];
    year = [anniversaryDateComponents year];
    v16 = 0;
    if (anniversaryDateComponents && year != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(PGTitleSpecTimeArgument *)self _yearsAgoStringWithEventNodes:v5 relativeToDateComponents:anniversaryDateComponents];
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_yearsAgoTitle
{
  inputVariable = [(PGTitleSpecArgument *)self inputVariable];
  v3 = inputVariable;
  if (inputVariable)
  {
    integerValue = [inputVariable integerValue];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PGMemoryTitleFormatWithNumberOfYears %lu" value:@"PGMemoryTitleFormatWithNumberOfYears %lu" table:@"Localizable"];
    v8 = [v5 localizedStringWithFormat:v7, integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
  v8 = 0;
  type = self->_type;
  if (type > 1)
  {
    if (type == 3)
    {
      _yearsAgoTitle = [(PGTitleSpecTimeArgument *)self _holidayTitleWithMomentNodes:nodesCopy];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_11;
      }

      _yearsAgoTitle = [(PGTitleSpecTimeArgument *)self _yearsAgoTitle];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    _yearsAgoTitle = [(PGTitleSpecTimeArgument *)self _anniversaryTitleWithMomentNodes:nodesCopy];
  }

  else
  {
    _yearsAgoTitle = [(PGTitleSpecTimeArgument *)self _birthdayTitleWithMomentNodes:nodesCopy];
  }

  v8 = _yearsAgoTitle;
LABEL_11:

  return v8;
}

- (PGTitleSpecTimeArgument)initWithTimeType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecTimeArgument;
  v4 = [(PGTitleSpecTimeArgument *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    [(PGTitleSpecArgument *)v4 setRequiresInput:type == 2];
  }

  return v5;
}

+ (id)argumentWithTimeType:(unint64_t)type
{
  v3 = [[PGTitleSpecTimeArgument alloc] initWithTimeType:type];

  return v3;
}

@end