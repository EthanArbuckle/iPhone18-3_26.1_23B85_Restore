@interface MOContextPredicateBuilder
+ (id)createPredicateForValue:(id)a3 inCollection:(id)a4;
+ (id)createPredicateWithLeftExpression:(id)a3 rightExpression:(id)a4 operation:(unint64_t)a5;
+ (id)extractFirstValueForKeyPath:(id)a3 fromPredicates:(id)a4;
+ (id)stringForCompoundPredicateType:(unint64_t)a3;
+ (id)stringForOperatorType:(unint64_t)a3;
+ (unint64_t)predicateOperatorFromType:(unint64_t)a3;
+ (void)disassemblePredicate:(id)a3;
+ (void)inspectExpression:(id)a3;
@end

@implementation MOContextPredicateBuilder

+ (unint64_t)predicateOperatorFromType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 4;
  }

  else
  {
    return qword_25E4A2728[a3 - 1];
  }
}

+ (id)createPredicateWithLeftExpression:(id)a3 rightExpression:(id)a4 operation:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v8 rightExpression:v7 modifier:0 type:objc_msgSend(objc_opt_class() options:{"predicateOperatorFromType:", a5), 0}];

  return v9;
}

+ (id)createPredicateForValue:(id)a3 inCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() predicateOperatorFromType:6];
  v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v6];

  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v5];

  v10 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v7 options:0];

  return v10;
}

+ (void)inspectExpression:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 expressionType];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:v4];
        }

        break;
      case 4:
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:v4];
        }

        v6 = [v4 arguments];
        v12 = [v6 count];
        v13 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            +[MOContextPredicateBuilder inspectExpression:];
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = v6;
          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                [a1 inspectExpression:*(*(&v24 + 1) + 8 * i)];
              }

              v16 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
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

        v6 = [v4 collection];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v6);
              }

              [a1 inspectExpression:*(*(&v20 + 1) + 8 * j)];
            }

            v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        if (v7)
        {
          [MOContextPredicateBuilder inspectExpression:v4];
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
    [MOContextPredicateBuilder inspectExpression:v4];
  }

LABEL_44:

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)disassemblePredicate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 leftExpression];
    v7 = [v5 rightExpression];
    v8 = [v5 predicateOperatorType];
    v9 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[MOContextPredicateBuilder disassemblePredicate:];
    }

    v10 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[MOContextPredicateBuilder disassemblePredicate:];
    }

    v11 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextPredicateBuilder *)a1 disassemblePredicate:v8];
    }

LABEL_19:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v12 = [v5 compoundPredicateType];
    v13 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextPredicateBuilder *)a1 disassemblePredicate:v12];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 subpredicates];
    v14 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v6);
          }

          [a1 disassemblePredicate:*(*(&v19 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[MOContextPredicateBuilder disassemblePredicate:];
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)stringForOperatorType:(unint64_t)a3
{
  if (a3 <= 6)
  {
    if (a3 > 2)
    {
      switch(a3)
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
      switch(a3)
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

  if (a3 > 9)
  {
    switch(a3)
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

  if (a3 == 7)
  {
    return @"LIKE";
  }

  if (a3 == 8)
  {
    return @"BEGINSWITH";
  }

  return @"ENDSWITH";
}

+ (id)stringForCompoundPredicateType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_279A1F3A0[a3];
  }
}

+ (id)extractFirstValueForKeyPath:(id)a3 fromPredicates:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = 0x277CCA000uLL;
    v10 = 0x277CCA000uLL;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      v13 = *(v9 + 2328);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v24 = *(v10 + 2336);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v12 subpredicates];
        v27 = [a1 extractFirstValueForKeyPath:v32 fromPredicates:v25];

        if (v27)
        {
          goto LABEL_19;
        }

LABEL_15:
      }

      if (v7 == ++v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v14 = v12;
    v15 = [v14 leftExpression];
    if ([v15 expressionType] == 3)
    {
      v16 = [v14 leftExpression];
      [v16 keyPath];
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v21 = v20 = v5;
      v31 = [v21 isEqualToString:v32];

      v5 = v20;
      v9 = v19;
      v8 = v18;
      v7 = v17;
      v10 = 0x277CCA000;

      if (v31)
      {
        v22 = [v14 rightExpression];
        v23 = [v22 expressionType];

        if (!v23)
        {
          v26 = [v14 rightExpression];
          v27 = [v26 constantValue];

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
  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (void)inspectExpression:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 variable];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v2, v3, "Variable: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)inspectExpression:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 function];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v2, v3, "Function: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)inspectExpression:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)inspectExpression:(void *)a1 .cold.7(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v2, v3, "Key Path: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)inspectExpression:(void *)a1 .cold.8(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 constantValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v2, v3, "Constant Value: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)inspectExpression:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)disassemblePredicate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)disassemblePredicate:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 stringForCompoundPredicateType:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v3, v4, "Compound Predicate Type: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)disassemblePredicate:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)disassemblePredicate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)disassemblePredicate:(void *)a1 .cold.5(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 stringForOperatorType:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_25E48F000, v3, v4, "Operator Type: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end