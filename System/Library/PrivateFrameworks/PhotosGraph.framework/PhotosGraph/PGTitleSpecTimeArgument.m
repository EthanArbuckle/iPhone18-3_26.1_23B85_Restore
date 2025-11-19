@interface PGTitleSpecTimeArgument
+ (id)argumentWithTimeType:(unint64_t)a3;
- (PGTitleSpecTimeArgument)initWithTimeType:(unint64_t)a3;
- (id)_anniversaryTitleWithMomentNodes:(id)a3;
- (id)_birthdayTitleWithMomentNodes:(id)a3;
- (id)_holidayTitleWithMomentNodes:(id)a3;
- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4;
- (id)_yearsAgoStringWithEventNodes:(id)a3 relativeToDateComponents:(id)a4;
- (id)_yearsAgoTitle;
@end

@implementation PGTitleSpecTimeArgument

- (id)_holidayTitleWithMomentNodes:(id)a3
{
  v3 = [PGCommonTitleUtility dateNodesFromMomentNodes:a3];
  v4 = [PGCommonTitleUtility holidayNameForDateNodes:v3];

  return v4;
}

- (id)_yearsAgoStringWithEventNodes:(id)a3 relativeToDateComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PGUseOrdinalAge" value:@"PGUseOrdinalAge" table:@"Localizable"];

  v9 = v8 && ([v8 isEqualToString:@"1"] & 1) != 0;
  v10 = [PGTimeTitleUtility numberOfYearsAgoWithMomentNodes:v5 relativeToDateComponents:v6 useOrdinal:v9];

  return v10;
}

- (id)_birthdayTitleWithMomentNodes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [PGGraphMomentNodeCollection alloc];
    v6 = [v4 anyObject];
    v7 = [v6 graph];
    v8 = [(MAElementCollection *)v5 initWithSet:v4 graph:v7];

    v9 = [(PGGraphMomentNodeCollection *)v8 birthdayPersonNodes];
    v10 = [v9 temporarySet];

    if ([v10 count] == 1)
    {
      v11 = [v10 anyObject];
      v12 = [v11 birthdayDateComponents];
      v13 = [v12 year];
      v14 = 0;
      if (v12 && v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [(PGTitleSpecTimeArgument *)self _yearsAgoStringWithEventNodes:v4 relativeToDateComponents:v12];
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

- (id)_anniversaryTitleWithMomentNodes:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
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

  v11 = [v4 anyObject];
  if (v11)
  {
    if ([v4 count] >= 2)
    {
      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "More than one person with anniversary found for momentNodes. Taking any person.", buf, 2u);
      }
    }

    v14 = [v11 anniversaryDateComponents];
    v15 = [v14 year];
    v16 = 0;
    if (v14 && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(PGTitleSpecTimeArgument *)self _yearsAgoStringWithEventNodes:v5 relativeToDateComponents:v14];
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
  v2 = [(PGTitleSpecArgument *)self inputVariable];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PGMemoryTitleFormatWithNumberOfYears %lu" value:@"PGMemoryTitleFormatWithNumberOfYears %lu" table:@"Localizable"];
    v8 = [v5 localizedStringWithFormat:v7, v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  type = self->_type;
  if (type > 1)
  {
    if (type == 3)
    {
      v10 = [(PGTitleSpecTimeArgument *)self _holidayTitleWithMomentNodes:v6];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_11;
      }

      v10 = [(PGTitleSpecTimeArgument *)self _yearsAgoTitle];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v10 = [(PGTitleSpecTimeArgument *)self _anniversaryTitleWithMomentNodes:v6];
  }

  else
  {
    v10 = [(PGTitleSpecTimeArgument *)self _birthdayTitleWithMomentNodes:v6];
  }

  v8 = v10;
LABEL_11:

  return v8;
}

- (PGTitleSpecTimeArgument)initWithTimeType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGTitleSpecTimeArgument;
  v4 = [(PGTitleSpecTimeArgument *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    [(PGTitleSpecArgument *)v4 setRequiresInput:a3 == 2];
  }

  return v5;
}

+ (id)argumentWithTimeType:(unint64_t)a3
{
  v3 = [[PGTitleSpecTimeArgument alloc] initWithTimeType:a3];

  return v3;
}

@end