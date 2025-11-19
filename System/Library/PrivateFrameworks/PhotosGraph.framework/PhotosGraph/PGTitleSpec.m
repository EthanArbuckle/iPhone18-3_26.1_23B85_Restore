@interface PGTitleSpec
+ (id)specWithFormat:(id)a3 titleCategory:(int64_t)a4;
+ (int64_t)_weekdayForWeekdayCriteria:(unint64_t)a3;
- (BOOL)_canFulfillWeekdayCriteriaWithMomentNodes:(id)a3;
- (BOOL)_resolveRequiredInputForArgument:(id)a3;
- (PGTitleSpec)initWithFormat:(id)a3 titleCategory:(int64_t)a4;
- (PGTitleSpecDelegate)delegate;
- (id)_appendArguments:(id)a3 toFormatString:(id)a4;
- (id)_titleWithResolvedArguments:(id)a3;
- (id)description;
- (id)titleWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4;
- (id)titleWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5;
@end

@implementation PGTitleSpec

- (PGTitleSpecDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGTitleSpec;
  v4 = [(PGTitleSpec *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_format];

  return v5;
}

- (BOOL)_canFulfillWeekdayCriteriaWithMomentNodes:(id)a3
{
  if (!self->_weekdayCriteria)
  {
    return 1;
  }

  v4 = [PGTimeTitleUtility significantDateNodesFromMomentNodes:a3 dateFormatterType:5];
  if ([v4 count] == 1)
  {
    v5 = [v4 anyObject];
    v6 = [v5 localDate];
    v7 = [MEMORY[0x277D27690] dayOfWeekFromDate:v6];
    v8 = v7 == [objc_opt_class() _weekdayForWeekdayCriteria:self->_weekdayCriteria];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_appendArguments:(id)a3 toFormatString:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v10 = [v5 objectAtIndexedSubscript:1];
      v9 = PFLocalizedStringWithValidatedFormat();
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_8;
      }

      v8 = [v5 objectAtIndexedSubscript:0];
      v10 = [v5 objectAtIndexedSubscript:1];
      v15 = [v5 objectAtIndexedSubscript:2];
      v9 = PFLocalizedStringWithValidatedFormat();
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v9 = v6;
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = PFLocalizedStringWithValidatedFormat();
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v11 = +[PGLogging sharedLogging];
  v12 = [v11 loggingConnection];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v17 = 3;
    _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "Not able to resolve a string with more than %lu arguments. Please file a radar agains Photos Media Mining.", buf, 0xCu);
  }

  v9 = 0;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_resolveRequiredInputForArgument:(id)a3
{
  v4 = a3;
  v5 = [v4 inputVariable];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained titleSpec:self inputForArgument:v4];

    v6 = v8 != 0;
    [v4 setInputVariable:v8];
  }

  return v6;
}

- (id)_titleWithResolvedArguments:(id)a3
{
  v4 = a3;
  v5 = [(PGTitleSpec *)self _appendArguments:v4 toFormatString:self->_format];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  if (!self->_hasSpecArgumentHandlingLineBreakBehavior)
  {
    if (self->_insertNonBreakableSpace)
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

      v8 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v7 andUsedNames:v4];
      v6 = v7;
LABEL_8:

      v6 = v8;
      goto LABEL_9;
    }

    if (!self->_hasLineBreak)
    {
      v8 = [PGCommonTitleUtility titleWithLineBreakForTitle:v5 andUsedNames:v4];
      goto LABEL_8;
    }
  }

LABEL_9:
  v9 = [PGTitle titleWithString:v6 category:self->_titleCategory];

LABEL_10:

  return v9;
}

- (id)titleWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PGTitleSpec *)self _canFulfillWeekdayCriteriaWithMomentNodes:v8])
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_arguments, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_arguments;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 requiresInput] && !-[PGTitleSpec _resolveRequiredInputForArgument:](self, "_resolveRequiredInputForArgument:", v17))
          {
            goto LABEL_15;
          }

          v18 = [v17 _resolvedStringWithMomentNodes:v8 features:v9 argumentEvaluationContext:v10];
          if (![v18 length])
          {

LABEL_15:
            v19 = 0;
            goto LABEL_16;
          }

          [v11 addObject:v18];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = [(PGTitleSpec *)self _titleWithResolvedArguments:v11];
LABEL_16:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)titleWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(PGTitleSpec *)self _canFulfillWeekdayCriteriaWithMomentNodes:v6])
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_arguments, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_arguments;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 requiresInput] && !-[PGTitleSpec _resolveRequiredInputForArgument:](self, "_resolveRequiredInputForArgument:", v14))
          {
            goto LABEL_15;
          }

          v15 = [v14 _resolvedStringWithMomentNodes:v6 argumentEvaluationContext:v7];
          if (![v15 length])
          {

LABEL_15:
            v16 = 0;
            goto LABEL_16;
          }

          [v8 addObject:v15];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = [(PGTitleSpec *)self _titleWithResolvedArguments:v8];
LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PGTitleSpec)initWithFormat:(id)a3 titleCategory:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PGTitleSpec;
  v8 = [(PGTitleSpec *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_format, a3);
    v9->_titleCategory = a4;
    arguments = v9->_arguments;
    v9->_arguments = MEMORY[0x277CBEBF8];

    v9->_weekdayCriteria = 0;
  }

  return v9;
}

+ (int64_t)_weekdayForWeekdayCriteria:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return -1;
  }

  else
  {
    return qword_22F78C390[a3 - 1];
  }
}

+ (id)specWithFormat:(id)a3 titleCategory:(int64_t)a4
{
  v5 = a3;
  v6 = [[PGTitleSpec alloc] initWithFormat:v5 titleCategory:a4];

  return v6;
}

@end