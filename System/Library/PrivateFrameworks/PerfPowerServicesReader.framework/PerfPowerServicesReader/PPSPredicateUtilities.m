@interface PPSPredicateUtilities
+ (id)constantValueForLeftExpression:(id)a3 inPredicate:(id)a4;
+ (id)constantValueForLeftKeyPath:(id)a3 inPredicate:(id)a4;
+ (id)keyPathsAndValuesForPredicate:(id)a3;
+ (id)predicateByRemovingSubpredicateWithLeftExpression:(id)a3 fromPredicate:(id)a4;
+ (id)predicateByRemovingSubpredicateWithLeftKeyPath:(id)a3 fromPredicate:(id)a4;
+ (id)predicateByReplacingNilWithEmptyString:(id)a3;
+ (id)predicateByReplacingUint64bit:(id)a3 legalMetricNames:(id)a4;
+ (id)predicateByReplacingUnsignedIntegerWithSignedInteger:(id)a3 legalMetricNames:(id)a4;
+ (id)predicateForStartTimestamp:(double)a3 endTimestamp:(double)a4 withKeyPath:(id)a5;
+ (id)subpredicateForPredicate:(id)a3 withLeftExpression:(id)a4;
+ (id)subpredicateForPredicate:(id)a3 withLeftKeyPath:(id)a4;
+ (id)subpredicatesForPredicate:(id)a3 withLeftExpression:(id)a4;
+ (id)subpredicatesForPredicate:(id)a3 withLeftKeyPath:(id)a4;
@end

@implementation PPSPredicateUtilities

+ (id)constantValueForLeftExpression:(id)a3 inPredicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() subpredicateForPredicate:v5 withLeftExpression:v6];

  v8 = [v7 rightExpression];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v8;
      goto LABEL_6;
    }

    if ([v8 expressionType] == 14)
    {
      v9 = [v8 collection];
LABEL_6:
      v10 = v9;
      goto LABEL_9;
    }

    if (![v8 expressionType])
    {
      v9 = [v8 constantValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)constantValueForLeftKeyPath:(id)a3 inPredicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v6];

  v9 = [v7 constantValueForLeftExpression:v8 inPredicate:v5];

  return v9;
}

+ (id)keyPathsAndValuesForPredicate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 leftExpression];
    if ([v5 expressionType] == 3)
    {
      v6 = [v5 keyPath];
      v7 = [objc_opt_class() constantValueForLeftKeyPath:v6 inPredicate:v4];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:v6];
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
    v4 = v3;
    v9 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v4 subpredicates];
    v10 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v14 = [objc_opt_class() keyPathsAndValuesForPredicate:*(*(&v17 + 1) + 8 * i)];
          if (v14)
          {
            [v9 addEntriesFromDictionary:v14];
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)predicateByReplacingNilWithEmptyString:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v3;
    v8 = v10;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_28;
    }

    v11 = [v10 compoundPredicateType];
    v12 = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v8 subpredicates];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = [objc_opt_class() predicateByReplacingNilWithEmptyString:*(*(&v26 + 1) + 8 * i)];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    if (v11)
    {
      if (v11 == 2)
      {
        v19 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v12];
      }

      else
      {
        if (v11 != 1)
        {
          v21 = 0;
          goto LABEL_27;
        }

        v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];
      }

      v21 = v19;
    }

    else
    {
      v22 = MEMORY[0x277CCA920];
      v23 = [v12 objectAtIndexedSubscript:0];
      v21 = [v22 notPredicateWithSubpredicate:v23];
    }

LABEL_27:

    v8 = v21;
    goto LABEL_28;
  }

  v4 = v3;
  v5 = [v4 leftExpression];
  if ([v5 expressionType] == 3)
  {
    v6 = [v5 keyPath];
    v7 = [objc_opt_class() constantValueForLeftKeyPath:v6 inPredicate:v4];
    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v20 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&stru_286FFF1D8];
      v8 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v5 rightExpression:v20 modifier:objc_msgSend(v4 type:"comparisonPredicateModifier") options:{objc_msgSend(v4, "predicateOperatorType"), objc_msgSend(v4, "options")}];
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

+ (id)predicateByReplacingUnsignedIntegerWithSignedInteger:(id)a3 legalMetricNames:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_opt_class() predicateByReplacingUint64bit:v5 legalMetricNames:v6];
    goto LABEL_22;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v5;
  v7 = v9;
  if (isKindOfClass)
  {
    v23 = [v9 compoundPredicateType];
    v10 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v7 subpredicates];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [objc_opt_class() predicateByReplacingUnsignedIntegerWithSignedInteger:*(*(&v24 + 1) + 8 * i) legalMetricNames:v6];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    if (v23)
    {
      if (v23 == 2)
      {
        v17 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v10];
      }

      else
      {
        if (v23 != 1)
        {
          v18 = 0;
          goto LABEL_21;
        }

        v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
      }

      v18 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CCA920];
      v20 = [v10 objectAtIndexedSubscript:0];
      v18 = [v19 notPredicateWithSubpredicate:v20];
    }

LABEL_21:

    v7 = v18;
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)predicateByReplacingUint64bit:(id)a3 legalMetricNames:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_39;
  }

  v7 = v5;
  v8 = [v7 leftExpression];
  if ([v8 expressionType] == 3)
  {
    v9 = [v8 keyPath];
    v10 = [v6 containsObject:v9];

    if (v10)
    {
      v11 = [v8 keyPath];
      v12 = [PPSPredicateUtilities constantValueForLeftKeyPath:v11 inPredicate:v7];

      if (!v12)
      {
        v27 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v67 = v8;
      v66 = v12;
      if ([v12 conformsToProtocol:&unk_28702FB30])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v63 = v7;
          v13 = [MEMORY[0x277CBEB18] array];
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
                  v20 = [v19 constantValue];

                  v19 = v20;
                }

                v21 = [v19 unsignedLongLongValue];
                v22 = MEMORY[0x277CCA9C0];
                v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
                v24 = [v22 expressionForConstantValue:v23];
                [v13 addObject:v24];
              }

              v16 = [v14 countByEnumeratingWithState:&v68 objects:v76 count:16];
            }

            while (v16);
          }

          v25 = objc_alloc(MEMORY[0x277CCA918]);
          v26 = [MEMORY[0x277CCA9C0] expressionForAggregate:v13];
          v7 = v63;
          v8 = v67;
          v27 = [v25 initWithLeftExpression:v67 rightExpression:v26 modifier:objc_msgSend(v63 type:"comparisonPredicateModifier") options:{objc_msgSend(v63, "predicateOperatorType"), objc_msgSend(v63, "options")}];
          v12 = v66;
          goto LABEL_36;
        }
      }

      v28 = [v12 unsignedLongLongValue];
      v29 = [v12 unsignedLongLongValue];
      v30 = MEMORY[0x277CCA9C0];
      v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v29];
      v26 = [v30 expressionForConstantValue:v31];

      v32 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_287017EC8];
      v64 = v28;
      v65 = v26;
      if ([v7 predicateOperatorType] && objc_msgSend(v7, "predicateOperatorType") != 1)
      {
        if ([v7 predicateOperatorType] != 2 && objc_msgSend(v7, "predicateOperatorType") != 3)
        {
          if ([v7 predicateOperatorType] == 4 || objc_msgSend(v7, "predicateOperatorType") == 5)
          {
            v57 = v32;
            v58 = objc_alloc(MEMORY[0x277CCA918]);
            v59 = [v7 comparisonPredicateModifier];
            v60 = [v7 predicateOperatorType];
            v61 = [v7 options];
            v62 = v58;
            v32 = v57;
            v54 = [v62 initWithLeftExpression:v8 rightExpression:v26 modifier:v59 type:v60 options:v61];
          }

          else
          {
            v54 = 0;
          }

          goto LABEL_35;
        }

        v46 = v32;
        v34 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v8 rightExpression:v26 modifier:objc_msgSend(v7 type:"comparisonPredicateModifier") options:{objc_msgSend(v7, "predicateOperatorType"), objc_msgSend(v7, "options")}];
        v47 = objc_alloc(MEMORY[0x277CCA918]);
        v48 = [v7 comparisonPredicateModifier];
        v49 = [v7 options];
        v50 = v47;
        v32 = v46;
        v51 = [v50 initWithLeftExpression:v8 rightExpression:v46 modifier:v48 type:0 options:v49];
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
        v34 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v8 rightExpression:v26 modifier:objc_msgSend(v7 type:"comparisonPredicateModifier") options:{objc_msgSend(v7, "predicateOperatorType"), objc_msgSend(v7, "options")}];
        v35 = objc_alloc(MEMORY[0x277CCA918]);
        v36 = [v7 comparisonPredicateModifier];
        v37 = [v7 options];
        v38 = v35;
        v32 = v33;
        v39 = [v38 initWithLeftExpression:v8 rightExpression:v33 modifier:v36 type:2 options:v37];
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
          v13 = v54;

          v27 = v13;
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

+ (id)predicateByRemovingSubpredicateWithLeftExpression:(id)a3 fromPredicate:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 leftExpression];
    if ([v8 isEqual:v5])
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
      v11 = v6;
      v12 = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [v11 subpredicates];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [objc_opt_class() predicateByRemovingSubpredicateWithLeftExpression:v5 fromPredicate:*(*(&v21 + 1) + 8 * i)];
            if (v18)
            {
              [v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      if ([v12 count])
      {
        v10 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v11 subpredicates:{"compoundPredicateType"), v12}];
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

+ (id)predicateByRemovingSubpredicateWithLeftKeyPath:(id)a3 fromPredicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v6];

  v9 = [v7 predicateByRemovingSubpredicateWithLeftExpression:v8 fromPredicate:v5];

  return v9;
}

+ (id)predicateForStartTimestamp:(double)a3 endTimestamp:(double)a4 withKeyPath:(id)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC30];
  v8 = a5;
  v9 = [v7 predicateWithFormat:@"(%K >= %lf)", v8, *&a3];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K <= %lf)", v8, *&a4];

  v11 = MEMORY[0x277CCA920];
  v16[0] = v9;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)subpredicateForPredicate:(id)a3 withLeftExpression:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() subpredicatesForPredicate:v6 withLeftExpression:v5];

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

+ (id)subpredicateForPredicate:(id)a3 withLeftKeyPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v5];

  v9 = [v7 subpredicateForPredicate:v6 withLeftExpression:v8];

  return v9;
}

+ (id)subpredicatesForPredicate:(id)a3 withLeftExpression:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 leftExpression];
    v9 = [v8 isEqual:v6];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
      v11 = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [v12 subpredicates];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [objc_opt_class() subpredicatesForPredicate:*(*(&v21 + 1) + 8 * i) withLeftExpression:v6];
            [v11 addObjectsFromArray:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)subpredicatesForPredicate:(id)a3 withLeftKeyPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v5];

  v9 = [v7 subpredicatesForPredicate:v6 withLeftExpression:v8];

  return v9;
}

@end