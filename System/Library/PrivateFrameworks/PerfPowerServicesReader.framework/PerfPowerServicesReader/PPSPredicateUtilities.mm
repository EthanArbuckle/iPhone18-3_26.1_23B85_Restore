@interface PPSPredicateUtilities
+ (id)constantValueForLeftExpression:(id)expression inPredicate:(id)predicate;
+ (id)constantValueForLeftKeyPath:(id)path inPredicate:(id)predicate;
+ (id)keyPathsAndValuesForPredicate:(id)predicate;
+ (id)predicateByRemovingSubpredicateWithLeftExpression:(id)expression fromPredicate:(id)predicate;
+ (id)predicateByRemovingSubpredicateWithLeftKeyPath:(id)path fromPredicate:(id)predicate;
+ (id)predicateByReplacingNilWithEmptyString:(id)string;
+ (id)predicateByReplacingUint64bit:(id)uint64bit legalMetricNames:(id)names;
+ (id)predicateByReplacingUnsignedIntegerWithSignedInteger:(id)integer legalMetricNames:(id)names;
+ (id)predicateForStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp withKeyPath:(id)path;
+ (id)subpredicateForPredicate:(id)predicate withLeftExpression:(id)expression;
+ (id)subpredicateForPredicate:(id)predicate withLeftKeyPath:(id)path;
+ (id)subpredicatesForPredicate:(id)predicate withLeftExpression:(id)expression;
+ (id)subpredicatesForPredicate:(id)predicate withLeftKeyPath:(id)path;
@end

@implementation PPSPredicateUtilities

+ (id)constantValueForLeftExpression:(id)expression inPredicate:(id)predicate
{
  predicateCopy = predicate;
  expressionCopy = expression;
  v7 = [objc_opt_class() subpredicateForPredicate:predicateCopy withLeftExpression:expressionCopy];

  rightExpression = [v7 rightExpression];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      collection = rightExpression;
      goto LABEL_6;
    }

    if ([rightExpression expressionType] == 14)
    {
      collection = [rightExpression collection];
LABEL_6:
      v10 = collection;
      goto LABEL_9;
    }

    if (![rightExpression expressionType])
    {
      collection = [rightExpression constantValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)constantValueForLeftKeyPath:(id)path inPredicate:(id)predicate
{
  predicateCopy = predicate;
  pathCopy = path;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:pathCopy];

  v9 = [v7 constantValueForLeftExpression:v8 inPredicate:predicateCopy];

  return v9;
}

+ (id)keyPathsAndValuesForPredicate:(id)predicate
{
  v22 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicateCopy;
    leftExpression = [v4 leftExpression];
    if ([leftExpression expressionType] == 3)
    {
      keyPath = [leftExpression keyPath];
      v7 = [objc_opt_class() constantValueForLeftKeyPath:keyPath inPredicate:v4];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:keyPath];
      v9 = [v8 mutableCopy];
    }

    else
    {
      v9 = 0;
    }

LABEL_16:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicateCopy;
    v9 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    leftExpression = [v4 subpredicates];
    v10 = [leftExpression countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(leftExpression);
          }

          v14 = [objc_opt_class() keyPathsAndValuesForPredicate:*(*(&v17 + 1) + 8 * i)];
          if (v14)
          {
            [v9 addEntriesFromDictionary:v14];
          }
        }

        v11 = [leftExpression countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_18:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)predicateByReplacingNilWithEmptyString:(id)string
{
  v31 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    v8 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = stringCopy;
    v8 = v10;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_28;
    }

    compoundPredicateType = [v10 compoundPredicateType];
    array = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    subpredicates = [v8 subpredicates];
    v14 = [subpredicates countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(subpredicates);
          }

          v18 = [objc_opt_class() predicateByReplacingNilWithEmptyString:*(*(&v26 + 1) + 8 * i)];
          [array addObject:v18];
        }

        v15 = [subpredicates countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    if (compoundPredicateType)
    {
      if (compoundPredicateType == 2)
      {
        v19 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array];
      }

      else
      {
        if (compoundPredicateType != 1)
        {
          v21 = 0;
          goto LABEL_27;
        }

        v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
      }

      v21 = v19;
    }

    else
    {
      v22 = MEMORY[0x277CCA920];
      v23 = [array objectAtIndexedSubscript:0];
      v21 = [v22 notPredicateWithSubpredicate:v23];
    }

LABEL_27:

    v8 = v21;
    goto LABEL_28;
  }

  v4 = stringCopy;
  leftExpression = [v4 leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    keyPath = [leftExpression keyPath];
    v7 = [objc_opt_class() constantValueForLeftKeyPath:keyPath inPredicate:v4];
    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&stru_286FFF1D8];
      v8 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:leftExpression rightExpression:v20 modifier:objc_msgSend(v4 type:"comparisonPredicateModifier") options:{objc_msgSend(v4, "predicateOperatorType"), objc_msgSend(v4, "options")}];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_28:
  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)predicateByReplacingUnsignedIntegerWithSignedInteger:(id)integer legalMetricNames:(id)names
{
  v29 = *MEMORY[0x277D85DE8];
  integerCopy = integer;
  namesCopy = names;
  if (!integerCopy)
  {
    v7 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_opt_class() predicateByReplacingUint64bit:integerCopy legalMetricNames:namesCopy];
    goto LABEL_22;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = integerCopy;
  v7 = v9;
  if (isKindOfClass)
  {
    compoundPredicateType = [v9 compoundPredicateType];
    array = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    subpredicates = [v7 subpredicates];
    v12 = [subpredicates countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(subpredicates);
          }

          v16 = [objc_opt_class() predicateByReplacingUnsignedIntegerWithSignedInteger:*(*(&v24 + 1) + 8 * i) legalMetricNames:namesCopy];
          [array addObject:v16];
        }

        v13 = [subpredicates countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    if (compoundPredicateType)
    {
      if (compoundPredicateType == 2)
      {
        v17 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array];
      }

      else
      {
        if (compoundPredicateType != 1)
        {
          v18 = 0;
          goto LABEL_21;
        }

        v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
      }

      v18 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CCA920];
      v20 = [array objectAtIndexedSubscript:0];
      v18 = [v19 notPredicateWithSubpredicate:v20];
    }

LABEL_21:

    v7 = v18;
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)predicateByReplacingUint64bit:(id)uint64bit legalMetricNames:(id)names
{
  v77 = *MEMORY[0x277D85DE8];
  uint64bitCopy = uint64bit;
  namesCopy = names;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_39;
  }

  v7 = uint64bitCopy;
  leftExpression = [v7 leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    keyPath = [leftExpression keyPath];
    v10 = [namesCopy containsObject:keyPath];

    if (v10)
    {
      keyPath2 = [leftExpression keyPath];
      v12 = [PPSPredicateUtilities constantValueForLeftKeyPath:keyPath2 inPredicate:v7];

      if (!v12)
      {
        v27 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v67 = leftExpression;
      v66 = v12;
      if ([v12 conformsToProtocol:&unk_28702FB30])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v63 = v7;
          array = [MEMORY[0x277CBEB18] array];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v69;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v69 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v68 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && ![v19 expressionType])
                {
                  constantValue = [v19 constantValue];

                  v19 = constantValue;
                }

                unsignedLongLongValue = [v19 unsignedLongLongValue];
                v22 = MEMORY[0x277CCA9C0];
                v23 = [MEMORY[0x277CCABB0] numberWithLongLong:unsignedLongLongValue];
                v24 = [v22 expressionForConstantValue:v23];
                [array addObject:v24];
              }

              v16 = [v14 countByEnumeratingWithState:&v68 objects:v76 count:16];
            }

            while (v16);
          }

          v25 = objc_alloc(MEMORY[0x277CCA918]);
          v26 = [MEMORY[0x277CCA9C0] expressionForAggregate:array];
          v7 = v63;
          leftExpression = v67;
          v27 = [v25 initWithLeftExpression:v67 rightExpression:v26 modifier:objc_msgSend(v63 type:"comparisonPredicateModifier") options:{objc_msgSend(v63, "predicateOperatorType"), objc_msgSend(v63, "options")}];
          v12 = v66;
          goto LABEL_36;
        }
      }

      unsignedLongLongValue2 = [v12 unsignedLongLongValue];
      unsignedLongLongValue3 = [v12 unsignedLongLongValue];
      v30 = MEMORY[0x277CCA9C0];
      v31 = [MEMORY[0x277CCABB0] numberWithLongLong:unsignedLongLongValue3];
      v26 = [v30 expressionForConstantValue:v31];

      v32 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_287017EC8];
      v64 = unsignedLongLongValue2;
      v65 = v26;
      if ([v7 predicateOperatorType] && objc_msgSend(v7, "predicateOperatorType") != 1)
      {
        if ([v7 predicateOperatorType] != 2 && objc_msgSend(v7, "predicateOperatorType") != 3)
        {
          if ([v7 predicateOperatorType] == 4 || objc_msgSend(v7, "predicateOperatorType") == 5)
          {
            v57 = v32;
            v58 = objc_alloc(MEMORY[0x277CCA918]);
            comparisonPredicateModifier = [v7 comparisonPredicateModifier];
            predicateOperatorType = [v7 predicateOperatorType];
            options = [v7 options];
            v62 = v58;
            v32 = v57;
            v54 = [v62 initWithLeftExpression:leftExpression rightExpression:v26 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];
          }

          else
          {
            v54 = 0;
          }

          goto LABEL_35;
        }

        v46 = v32;
        v34 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:leftExpression rightExpression:v26 modifier:objc_msgSend(v7 type:"comparisonPredicateModifier") options:{objc_msgSend(v7, "predicateOperatorType"), objc_msgSend(v7, "options")}];
        v47 = objc_alloc(MEMORY[0x277CCA918]);
        comparisonPredicateModifier2 = [v7 comparisonPredicateModifier];
        options2 = [v7 options];
        v50 = v47;
        v32 = v46;
        v51 = [v50 initWithLeftExpression:leftExpression rightExpression:v46 modifier:comparisonPredicateModifier2 type:0 options:options2];
        v40 = v51;
        v41 = MEMORY[0x277CCA920];
        if (v64 < 0)
        {
          v72[0] = v34;
          v72[1] = v51;
          v42 = MEMORY[0x277CBEA60];
          v43 = v72;
          goto LABEL_26;
        }

        v73[0] = v34;
        v73[1] = v51;
        v52 = MEMORY[0x277CBEA60];
        v53 = v73;
      }

      else
      {
        v33 = v32;
        v34 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:leftExpression rightExpression:v26 modifier:objc_msgSend(v7 type:"comparisonPredicateModifier") options:{objc_msgSend(v7, "predicateOperatorType"), objc_msgSend(v7, "options")}];
        v35 = objc_alloc(MEMORY[0x277CCA918]);
        comparisonPredicateModifier3 = [v7 comparisonPredicateModifier];
        options3 = [v7 options];
        v38 = v35;
        v32 = v33;
        v39 = [v38 initWithLeftExpression:leftExpression rightExpression:v33 modifier:comparisonPredicateModifier3 type:2 options:options3];
        v40 = v39;
        v41 = MEMORY[0x277CCA920];
        if ((v64 & 0x8000000000000000) == 0)
        {
          v75[0] = v34;
          v75[1] = v39;
          v42 = MEMORY[0x277CBEA60];
          v43 = v75;
LABEL_26:
          v44 = [v42 arrayWithObjects:v43 count:2];
          v45 = [v41 andPredicateWithSubpredicates:v44];
LABEL_34:
          v54 = v45;

          v26 = v65;
          v12 = v66;
LABEL_35:
          array = v54;

          v27 = array;
LABEL_36:

          goto LABEL_37;
        }

        v74[0] = v34;
        v74[1] = v39;
        v52 = MEMORY[0x277CBEA60];
        v53 = v74;
      }

      v44 = [v52 arrayWithObjects:v53 count:2];
      v45 = [v41 orPredicateWithSubpredicates:v44];
      goto LABEL_34;
    }

    v27 = v7;
  }

  else
  {
    v27 = 0;
  }

LABEL_38:

LABEL_39:
  v55 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)predicateByRemovingSubpredicateWithLeftExpression:(id)expression fromPredicate:(id)predicate
{
  v26 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = predicateCopy;
    leftExpression = [v7 leftExpression];
    if ([leftExpression isEqual:expressionCopy])
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = predicateCopy;
      array = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      subpredicates = [v11 subpredicates];
      v14 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(subpredicates);
            }

            v18 = [objc_opt_class() predicateByRemovingSubpredicateWithLeftExpression:expressionCopy fromPredicate:*(*(&v21 + 1) + 8 * i)];
            if (v18)
            {
              [array addObject:v18];
            }
          }

          v15 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      if ([array count])
      {
        v10 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v11 subpredicates:{"compoundPredicateType"), array}];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)predicateByRemovingSubpredicateWithLeftKeyPath:(id)path fromPredicate:(id)predicate
{
  predicateCopy = predicate;
  pathCopy = path;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:pathCopy];

  v9 = [v7 predicateByRemovingSubpredicateWithLeftExpression:v8 fromPredicate:predicateCopy];

  return v9;
}

+ (id)predicateForStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp withKeyPath:(id)path
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC30];
  pathCopy = path;
  v9 = [v7 predicateWithFormat:@"(%K >= %lf)", pathCopy, *&timestamp];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K <= %lf)", pathCopy, *&endTimestamp];

  v11 = MEMORY[0x277CCA920];
  v16[0] = v9;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)subpredicateForPredicate:(id)predicate withLeftExpression:(id)expression
{
  expressionCopy = expression;
  predicateCopy = predicate;
  v7 = [objc_opt_class() subpredicatesForPredicate:predicateCopy withLeftExpression:expressionCopy];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)subpredicateForPredicate:(id)predicate withLeftKeyPath:(id)path
{
  pathCopy = path;
  predicateCopy = predicate;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:pathCopy];

  v9 = [v7 subpredicateForPredicate:predicateCopy withLeftExpression:v8];

  return v9;
}

+ (id)subpredicatesForPredicate:(id)predicate withLeftExpression:(id)expression
{
  v26 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  expressionCopy = expression;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = predicateCopy;
    leftExpression = [v7 leftExpression];
    v9 = [leftExpression isEqual:expressionCopy];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
      array = [v10 mutableCopy];
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = predicateCopy;
      array = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      subpredicates = [v12 subpredicates];
      v14 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(subpredicates);
            }

            v18 = [objc_opt_class() subpredicatesForPredicate:*(*(&v21 + 1) + 8 * i) withLeftExpression:expressionCopy];
            [array addObjectsFromArray:v18];
          }

          v15 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }

    else
    {
      array = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)subpredicatesForPredicate:(id)predicate withLeftKeyPath:(id)path
{
  pathCopy = path;
  predicateCopy = predicate;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:pathCopy];

  v9 = [v7 subpredicatesForPredicate:predicateCopy withLeftExpression:v8];

  return v9;
}

@end