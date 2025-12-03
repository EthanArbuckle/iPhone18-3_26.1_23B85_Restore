@interface MOContextPredicateBuilder
+ (id)createPredicateForValue:(id)value inCollection:(id)collection;
+ (id)createPredicateWithLeftExpression:(id)expression rightExpression:(id)rightExpression operation:(unint64_t)operation;
+ (id)extractFirstValueForKeyPath:(id)path fromPredicates:(id)predicates;
+ (id)stringForCompoundPredicateType:(unint64_t)type;
+ (id)stringForOperatorType:(unint64_t)type;
+ (unint64_t)predicateOperatorFromType:(unint64_t)type;
+ (void)disassemblePredicate:(id)predicate;
+ (void)inspectExpression:(id)expression;
@end

@implementation MOContextPredicateBuilder

+ (unint64_t)predicateOperatorFromType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return 4;
  }

  else
  {
    return qword_1000A76B8[type - 1];
  }
}

+ (id)createPredicateWithLeftExpression:(id)expression rightExpression:(id)rightExpression operation:(unint64_t)operation
{
  rightExpressionCopy = rightExpression;
  expressionCopy = expression;
  v9 = +[NSComparisonPredicate predicateWithLeftExpression:rightExpression:modifier:type:options:](NSComparisonPredicate, "predicateWithLeftExpression:rightExpression:modifier:type:options:", expressionCopy, rightExpressionCopy, 0, [objc_opt_class() predicateOperatorFromType:operation], 0);

  return v9;
}

+ (id)createPredicateForValue:(id)value inCollection:(id)collection
{
  collectionCopy = collection;
  valueCopy = value;
  v7 = [objc_opt_class() predicateOperatorFromType:6];
  v8 = [NSExpression expressionForKeyPath:valueCopy];

  v9 = [NSExpression expressionForConstantValue:collectionCopy];

  v10 = [NSComparisonPredicate predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v7 options:0];

  return v10;
}

+ (void)inspectExpression:(id)expression
{
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  arguments = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v7 = os_log_type_enabled(arguments, OS_LOG_TYPE_DEBUG);
  if (expressionType > 2)
  {
    switch(expressionType)
    {
      case 3:
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:expressionCopy];
        }

        break;
      case 4:
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:expressionCopy];
        }

        arguments = [expressionCopy arguments];
        v12 = [arguments count];
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            +[MOContextPredicateBuilder inspectExpression:];
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = arguments;
          v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                [self inspectExpression:*(*(&v23 + 1) + 8 * i)];
              }

              v16 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
            }

            while (v16);
          }
        }

        else if (v14)
        {
          +[MOContextPredicateBuilder inspectExpression:];
        }

        break;
      case 14:
        if (v7)
        {
          +[MOContextPredicateBuilder inspectExpression:];
        }

        arguments = [expressionCopy collection];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [arguments countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(arguments);
              }

              [self inspectExpression:*(*(&v19 + 1) + 8 * j)];
            }

            v9 = [arguments countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        break;
      default:
LABEL_24:
        if (v7)
        {
          +[MOContextPredicateBuilder inspectExpression:];
        }

        break;
    }
  }

  else if (expressionType)
  {
    if (expressionType != 1)
    {
      if (expressionType == 2)
      {
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:expressionCopy];
        }

        goto LABEL_44;
      }

      goto LABEL_24;
    }

    if (v7)
    {
      +[MOContextPredicateBuilder inspectExpression:];
    }
  }

  else if (v7)
  {
    [MOContextPredicateBuilder inspectExpression:expressionCopy];
  }

LABEL_44:
}

+ (void)disassemblePredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = predicateCopy;
    leftExpression = [v5 leftExpression];
    rightExpression = [v5 rightExpression];
    predicateOperatorType = [v5 predicateOperatorType];
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[MOContextPredicateBuilder disassemblePredicate:];
    }

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[MOContextPredicateBuilder disassemblePredicate:];
    }

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextPredicateBuilder *)self disassemblePredicate:predicateOperatorType];
    }

LABEL_19:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = predicateCopy;
    compoundPredicateType = [v5 compoundPredicateType];
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextPredicateBuilder *)self disassemblePredicate:compoundPredicateType];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    leftExpression = [v5 subpredicates];
    v14 = [leftExpression countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(leftExpression);
          }

          [self disassemblePredicate:*(*(&v18 + 1) + 8 * v17)];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [leftExpression countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[MOContextPredicateBuilder disassemblePredicate:];
  }

LABEL_22:
}

+ (id)stringForOperatorType:(unint64_t)type
{
  if (type <= 6)
  {
    if (type > 2)
    {
      switch(type)
      {
        case 3uLL:
          return @">=";
        case 4uLL:
          return @"==";
        case 5uLL:
          return @"!=";
      }
    }

    else
    {
      switch(type)
      {
        case 0uLL:
          return @"<";
        case 1uLL:
          return @"<=";
        case 2uLL:
          return @">";
      }
    }

    return @"UNKNOWN";
  }

  if (type > 9)
  {
    switch(type)
    {
      case 0xAuLL:
        return @"IN";
      case 0x63uLL:
        return @"CONTAINS";
      case 0x64uLL:
        return @"BETWEEN";
    }

    return @"UNKNOWN";
  }

  if (type == 7)
  {
    return @"LIKE";
  }

  if (type == 8)
  {
    return @"BEGINSWITH";
  }

  return @"ENDSWITH";
}

+ (id)stringForCompoundPredicateType:(unint64_t)type
{
  if (type > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1000B6208[type];
  }
}

+ (id)extractFirstValueForKeyPath:(id)path fromPredicates:(id)predicates
{
  pathCopy = path;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  predicatesCopy = predicates;
  v6 = [predicatesCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v9 = &pc_session_add_metric_ptr;
    v10 = &pc_session_add_metric_ptr;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(predicatesCopy);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = v9[258];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v24 = v10[259];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        subpredicates = [v12 subpredicates];
        constantValue = [self extractFirstValueForKeyPath:pathCopy fromPredicates:subpredicates];

        if (constantValue)
        {
          goto LABEL_19;
        }

LABEL_15:
      }

      if (v7 == ++v11)
      {
        v7 = [predicatesCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v14 = v12;
    leftExpression = [v14 leftExpression];
    if ([leftExpression expressionType] == 3)
    {
      leftExpression2 = [v14 leftExpression];
      [leftExpression2 keyPath];
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v21 = v20 = predicatesCopy;
      v30 = [v21 isEqualToString:pathCopy];

      predicatesCopy = v20;
      v9 = v19;
      v8 = v18;
      v7 = v17;
      v10 = &pc_session_add_metric_ptr;

      if (v30)
      {
        rightExpression = [v14 rightExpression];
        expressionType = [rightExpression expressionType];

        if (!expressionType)
        {
          rightExpression2 = [v14 rightExpression];
          constantValue = [rightExpression2 constantValue];

LABEL_19:
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    goto LABEL_15;
  }

LABEL_18:
  constantValue = 0;
LABEL_20:

  return constantValue;
}

+ (void)inspectExpression:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 variable];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v2, v3, "Variable: %@", v4, v5, v6, v7, v8);
}

+ (void)inspectExpression:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:.cold.3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 function];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v2, v3, "Function: %@", v4, v5, v6, v7, v8);
}

+ (void)inspectExpression:.cold.5()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:.cold.6()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:(void *)a1 .cold.7(void *a1)
{
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v2, v3, "Key Path: %@", v4, v5, v6, v7, v8);
}

+ (void)inspectExpression:(void *)a1 .cold.8(void *a1)
{
  v1 = [a1 constantValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v2, v3, "Constant Value: %@", v4, v5, v6, v7, v8);
}

+ (void)inspectExpression:.cold.9()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)disassemblePredicate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)disassemblePredicate:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v2 = [a1 stringForCompoundPredicateType:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v3, v4, "Compound Predicate Type: %@", v5, v6, v7, v8, v9);
}

+ (void)disassemblePredicate:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)disassemblePredicate:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)disassemblePredicate:(void *)a1 .cold.5(void *a1, uint64_t a2)
{
  v2 = [a1 stringForOperatorType:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v3, v4, "Operator Type: %@", v5, v6, v7, v8, v9);
}

@end