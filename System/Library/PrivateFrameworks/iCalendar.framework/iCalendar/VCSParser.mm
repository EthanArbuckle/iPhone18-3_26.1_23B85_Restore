@interface VCSParser
+ (id)parseVCSData:(id)a3;
+ (id)parseVCSFile:(id)a3;
+ (unint64_t)beginVCSEntity:(id)a3 withParseState:(id)a4;
+ (unint64_t)decodeVCSLine:(id)a3 withParseState:(id)a4;
+ (unint64_t)endVCSEntity:(id)a3 withParseState:(id)a4;
@end

@implementation VCSParser

+ (id)parseVCSFile:(id)a3
{
  v4 = MEMORY[0x277CBEB28];
  v5 = a3;
  v6 = [[v4 alloc] initWithContentsOfFile:v5];

  [v6 increaseLengthBy:1];
  v7 = [a1 parseVCSData:v6];

  return v7;
}

+ (id)parseVCSData:(id)a3
{
  v3 = a3;
  v4 = [[VCSParserInputStream alloc] initWithData:v3];
  if (!v4)
  {
    v8 = VCSLogHandle();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser parseVCSData:];
    }

    v23 = 0;
    goto LABEL_38;
  }

  v24 = v3;
  v5 = 100;
  v6 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  v7 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  v8 = objc_alloc_init(VCSParseState);
  v26 = objc_alloc_init(VCSParsedLine);
  v9 = 100;
  while (1)
  {
    __size = v5;
    v10 = [(VCSParserInputStream *)v4 getLine:v6 withSize:&__size];
    if (v10 == 3)
    {
      break;
    }

LABEL_6:
    v12 = v10;
    if (v10)
    {
LABEL_7:
      if (!v12)
      {
        goto LABEL_27;
      }

      if (v12 == 4)
      {
        free(v6);
        free(v7);
        v22 = [(VCSParseState *)v8 calendars];
        v23 = [v22 copy];

        goto LABEL_34;
      }
    }

    else
    {
      if ([(VCSParserInputStream *)v4 isContinued])
      {
        while (1)
        {
          __size = v9;
          v13 = [(VCSParserInputStream *)v4 getLine:v7 withSize:&__size];
          if (v13 == 3)
          {
            v9 = __size;
            v7 = malloc_type_realloc(v7, __size, 0x100004077774924uLL);
            v13 = [(VCSParserInputStream *)v4 getLine:v7 withSize:&__size];
          }

          v12 = v13;
          if (!v13)
          {
            for (i = v7; ; ++i)
            {
              v15 = *i;
              if (v15 != 32 && v15 != 9)
              {
                break;
              }
            }

            v17 = strlen(v6);
            v18 = v17 + strlen(i) + 2;
            if (v5 < v18)
            {
              v6 = reallocf(v6, v18);
              v5 = v18;
            }

            if (!v6)
            {
              goto LABEL_33;
            }

            strlcat(v6, "\n", v5);
            strlcat(v6, i, v5);
          }

          if (![(VCSParserInputStream *)v4 isContinued])
          {
            goto LABEL_7;
          }
        }
      }

LABEL_27:
      [(VCSParseState *)v8 setLineNumber:[(VCSParserInputStream *)v4 lineNum]];
      v19 = [(VCSParsedLine *)v26 loadFromCString:v6 withParseState:v8];
      if (v19 && [a1 decodeVCSLine:v19 withParseState:v8] == 2)
      {
        v20 = VCSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(VCSParser *)&buf parseVCSData:v28, v20];
        }
      }
    }
  }

  v5 = __size;
  v11 = reallocf(v6, __size);
  if (v11)
  {
    v6 = v11;
    v10 = [(VCSParserInputStream *)v4 getLine:v11 withSize:&__size];
    goto LABEL_6;
  }

LABEL_33:
  free(v7);

  v23 = 0;
LABEL_34:
  v3 = v24;
LABEL_38:

  return v23;
}

+ (unint64_t)decodeVCSLine:(id)a3 withParseState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (v8 == 3)
  {
    v11 = [[VCSProperty alloc] initWithVCSLine:v6 parseState:v7];
    if (!v11)
    {
LABEL_15:
      v10 = [v7 status];
      goto LABEL_16;
    }

    v12 = v11;
    v13 = [v7 currentEntity];
    [v13 setProperty:v12];

    v14 = v7;
    v15 = 0;
LABEL_14:
    [v14 setStatus:v15];
    goto LABEL_15;
  }

  if (v8 != 1)
  {
    v16 = VCSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VCSParser decodeVCSLine:v6 withParseState:v16];
    }

    goto LABEL_13;
  }

  v9 = [v6 tokenID];
  if (v9 == 2)
  {
    v10 = [a1 endVCSEntity:v6 withParseState:v7];
    goto LABEL_16;
  }

  if (v9 != 1)
  {
    v16 = VCSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser decodeVCSLine:withParseState:];
    }

LABEL_13:

    v14 = v7;
    v15 = 1;
    goto LABEL_14;
  }

  v10 = [a1 beginVCSEntity:v6 withParseState:v7];
LABEL_16:
  v17 = v10;

  return v17;
}

+ (unint64_t)beginVCSEntity:(id)a3 withParseState:(id)a4
{
  v5 = a4;
  v19 = 0;
  v6 = a3;
  v7 = [v5 context];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v6 content];

  v10 = [v8 initWithData:v9 encoding:1];
  v11 = [VCSParsedLine tokenizeNSStringKeyword:v10 withType:&v19];
  if (v19 != 2)
  {
    v12 = VCSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(VCSParser *)v10 beginVCSEntity:v5 withParseState:v12];
    }

    goto LABEL_19;
  }

  if ((v11 - 4) >= 2)
  {
    if (v11 == 3)
    {
      if (!v7)
      {
        v17 = objc_opt_new();
        [v5 setCurrentCalendar:v17];

        v18 = [v5 currentCalendar];
        [v5 setCurrentEntity:v18];

        [v5 setContext:1];
        goto LABEL_20;
      }

      v13 = VCSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[VCSParser beginVCSEntity:withParseState:];
      }
    }

    else
    {
      v13 = VCSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[VCSParser beginVCSEntity:withParseState:];
      }
    }
  }

  else
  {
    if (v7 == 1)
    {
      if (v11 == 4)
      {
        v12 = objc_opt_new();
        [v5 setContext:2];
      }

      else
      {
        v12 = 0;
      }

      [v5 setCurrentEntity:v12];
LABEL_19:

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }

    v13 = VCSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser beginVCSEntity:withParseState:];
    }
  }

  v14 = 1;
LABEL_21:
  [v5 setStatus:v14];
  v15 = [v5 status];

  return v15;
}

+ (unint64_t)endVCSEntity:(id)a3 withParseState:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v41 = 0;
  v7 = [v6 context];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 content];
  v10 = [v8 initWithData:v9 encoding:1];

  v11 = [VCSParsedLine tokenizeNSStringKeyword:v10 withType:&v41];
  if (v41 != 2)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser endVCSEntity:withParseState:];
    }

    goto LABEL_9;
  }

  if (v11 == 5)
  {
    if (v7 != 3)
    {
      v32 = VCSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[VCSParser endVCSEntity:withParseState:];
      }

      goto LABEL_35;
    }

    v16 = [v6 currentEntity];
    goto LABEL_28;
  }

  if (v11 == 4)
  {
    if (v7 != 2)
    {
      v32 = VCSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[VCSParser endVCSEntity:withParseState:];
      }

      goto LABEL_35;
    }

    v16 = [v6 currentEntity];
    [v16 ensureDurationAlarms];
    if ([v16 hasPropertyWithName:@"DTSTART"] && (objc_msgSend(v16, "hasPropertyWithName:", @"DTEND") & 1) == 0)
    {
      v17 = [v16 startDate];
      v18 = [v17 dateByAddingDays:1];
      [v16 setEndDate:v18];

      [v16 setFullDayEvent:1];
    }

    if ([v16 hasPropertyWithName:@"EXDATE"])
    {
      v35 = v10;
      v36 = v5;
      v19 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = [v16 propertyForName:@"EXDATE"];
      v21 = [v20 values];

      v22 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v37 + 1) + 8 * i) value];
            v27 = [v16 startDate];
            v28 = [v26 dateWithTimeComponentsFromDate:v27];

            [v19 addObject:v28];
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v23);
      }

      if ([v19 count])
      {
        [v16 removePropertyForName:@"EXDATE"];
        v29 = [[VCSProperty alloc] initWithName:@"EXDATE" rawValues:v19 type:7];
        [v16 setProperty:v29];
      }

      v10 = v35;
      v5 = v36;
    }

LABEL_28:
    v30 = [v6 currentCalendar];
    [v30 addChildEntity:v16];

    v31 = [v6 currentCalendar];
    [v6 setCurrentEntity:v31];

    v15 = 1;
    [v6 setContext:1];

    goto LABEL_36;
  }

  if (v11 != 3)
  {
    v32 = VCSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser endVCSEntity:withParseState:];
    }

LABEL_35:

    v15 = 0;
    goto LABEL_36;
  }

  if (v7 != 1)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[VCSParser endVCSEntity:withParseState:];
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = [v6 calendars];
  v13 = [v6 currentCalendar];
  [v12 addObject:v13];

  [v6 setCurrentCalendar:0];
  [v6 setCurrentEntity:0];
  [v6 setContext:0];
LABEL_10:
  v15 = 1;
LABEL_36:

  v33 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)parseVCSData:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2754C5000, log, OS_LOG_TYPE_ERROR, "Fatal vCalendar parser error !", buf, 2u);
}

+ (void)parseVCSData:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)decodeVCSLine:withParseState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)decodeVCSLine:(void *)a1 withParseState:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 keyword];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2754C5000, a2, OS_LOG_TYPE_ERROR, "Unexpeced token type: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)beginVCSEntity:(NSObject *)a3 withParseState:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = [a2 lineNumber];
  _os_log_error_impl(&dword_2754C5000, a3, OS_LOG_TYPE_ERROR, "Unknown entity type: %@ at line %d.", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)beginVCSEntity:withParseState:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)beginVCSEntity:withParseState:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)beginVCSEntity:withParseState:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)endVCSEntity:withParseState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)endVCSEntity:withParseState:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)endVCSEntity:withParseState:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)endVCSEntity:withParseState:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)endVCSEntity:withParseState:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end