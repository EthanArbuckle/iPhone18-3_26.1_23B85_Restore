@interface VCSProperty
- (VCSProperty)initWithName:(id)a3 rawValue:(id)a4 type:(unint64_t)a5;
- (VCSProperty)initWithName:(id)a3 rawValues:(id)a4 type:(unint64_t)a5;
- (VCSProperty)initWithName:(id)a3 value:(id)a4;
- (VCSProperty)initWithName:(id)a3 values:(id)a4;
- (VCSProperty)initWithVCSLine:(id)a3 parseState:(id)a4;
- (id)initClassificationProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initEncodedTextProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initISO8061DateListProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initISO8061Property:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initIntProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initKeywordListProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initRFC822AddressProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initRecurrenceProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initStatusProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initTranspProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
- (id)initURIProperty:(id)a3 withParseState:(id)a4 property:(id *)a5;
@end

@implementation VCSProperty

- (VCSProperty)initWithName:(id)a3 values:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VCSProperty;
  v9 = [(VCSProperty *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = [v8 mutableCopy];
    values = v10->_values;
    v10->_values = v11;
  }

  return v10;
}

- (VCSProperty)initWithName:(id)a3 value:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(VCSProperty *)self initWithName:v8 values:v9, v13, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (VCSProperty)initWithName:(id)a3 rawValues:(id)a4 type:(unint64_t)a5
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__VCSProperty_initWithName_rawValues_type___block_invoke;
  v11[3] = &__block_descriptor_40_e26___VCSPropertyValue_16__0_8l;
  v11[4] = a5;
  v7 = a3;
  v8 = [a4 VCS_map:v11];
  v9 = [(VCSProperty *)self initWithName:v7 values:v8];

  return v9;
}

VCSPropertyValue *__43__VCSProperty_initWithName_rawValues_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VCSPropertyValue alloc] initWithValue:v3 type:*(a1 + 32)];

  return v4;
}

- (VCSProperty)initWithName:(id)a3 rawValue:(id)a4 type:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v19 = v8;
    v10 = MEMORY[0x277CBEA60];
    v11 = a3;
    v12 = [v10 arrayWithObjects:&v19 count:1];
    v13 = [(VCSProperty *)self initWithName:v11 rawValues:v12 type:a5, v19, v20];

    v14 = v13;
  }

  else
  {
    v15 = a3;
    v16 = [(VCSProperty *)self initWithName:v15 rawValues:MEMORY[0x277CBEBF8] type:a5];

    v14 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (VCSProperty)initWithVCSLine:(id)a3 parseState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 tokenID];
  v9 = [v7 context];
  v10 = [VCSParsedLine lookupProperty:v8];
  if (!v10)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initWithVCSLine:v6 parseState:?];
    }

    goto LABEL_13;
  }

  v11 = v10;
  if ((v10->var1 & v9) == 0)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initWithVCSLine:v6 parseState:?];
    }

LABEL_13:

    goto LABEL_14;
  }

  var2 = v10->var2;
  if (var2 <= 11)
  {
    if (var2 > 8)
    {
      if (var2 == 9)
      {
        v13 = [(VCSProperty *)self initStatusProperty:v6 withParseState:v7 property:v10];
      }

      else if (var2 == 10)
      {
        v13 = [(VCSProperty *)self initEncodedTextProperty:v6 withParseState:v7 property:v10];
      }

      else
      {
        v13 = [(VCSProperty *)self initRecurrenceProperty:v6 withParseState:v7 property:v10];
      }

      goto LABEL_35;
    }

    switch(var2)
    {
      case 5:
        v13 = [(VCSProperty *)self initIntProperty:v6 withParseState:v7 property:v10];
        goto LABEL_35;
      case 7:
        v13 = [(VCSProperty *)self initISO8061Property:v6 withParseState:v7 property:v10];
        goto LABEL_35;
      case 8:
        v13 = [(VCSProperty *)self initRFC822AddressProperty:v6 withParseState:v7 property:v10];
LABEL_35:
        v18 = v13;
LABEL_36:
        self = v18;
        v15 = v18;
        goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (var2 <= 16)
  {
    switch(var2)
    {
      case 12:
        v13 = [(VCSProperty *)self initISO8061DateListProperty:v6 withParseState:v7 property:v10];
        goto LABEL_35;
      case 13:
        v13 = [(VCSProperty *)self initKeywordListProperty:v6 withParseState:v7 property:v10];
        goto LABEL_35;
      case 14:
        v13 = [(VCSProperty *)self initURIProperty:v6 withParseState:v7 property:v10];
        goto LABEL_35;
    }

LABEL_38:
    self = [(VCSProperty *)self init];
    v20 = __ROR8__(v8 - 8, 1);
    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = [v6 content];
          v22 = strcmp([v21 bytes], "1.0");

          if (v22)
          {
            v23 = VCSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [VCSProperty initWithVCSLine:v6 parseState:?];
            }

            [v7 setStatus:2];
            goto LABEL_14;
          }
        }
      }

      else
      {
        v31 = [v6 content];
        v32 = strcmp([v31 bytes], "PalmDesktop Generated");

        if (!v32)
        {
          v33 = VCSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [VCSProperty initWithVCSLine:v33 parseState:?];
          }

          [v7 setPalmImport:1];
        }
      }

LABEL_72:
      v18 = self;
      goto LABEL_36;
    }

    if (v20 != 2)
    {
      if (v20 != 9)
      {
        goto LABEL_72;
      }

      v24 = [v6 convertedContent];
      v25 = [v24 componentsSeparatedByString:@" "];;
      v26 = [[VCSPropertyValue alloc] initWithValue:v25 type:3];
      v27 = [v6 params];
      v28 = [v27 objectForKeyedSubscript:@"VALUE"];
      v29 = v28;
      if (v28 && [v28 isEqual:@"URL"])
      {
        v30 = [(VCSProperty *)self singleValue];
        [(VCSPropertyValue *)v26 addParameter:@"ALTREP" withValue:v30];
      }

      self = [(VCSProperty *)self initWithName:v11->var4 value:v26];

LABEL_71:
      goto LABEL_72;
    }

    v24 = [v6 params];
    v34 = [v24 objectForKey:@"VALUE"];
    v25 = v34;
    if (!v34)
    {
      v39 = VCSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [VCSProperty initWithVCSLine:v39 parseState:?];
      }

      goto LABEL_70;
    }

    if ([v34 isEqual:@"URL"])
    {
      v35 = MEMORY[0x277CBEBC0];
      v36 = MEMORY[0x277CCACA8];
      v37 = [v6 content];
      v38 = [v36 stringWithUTF8String:{objc_msgSend(v37, "bytes")}];
      v39 = [v35 URLWithString:v38 encodingInvalidCharacters:0];
    }

    else
    {
      if (![v25 isEqual:@"CONTENT-ID"])
      {
        goto LABEL_68;
      }

      v37 = [@"CID:" mutableCopy];
      v40 = [v6 content];
      v41 = [v40 bytes];

      if (*v41 == 60 && v41[strlen(v41) - 1] == 62)
      {
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v41 + 1];
        [v37 appendString:v42];

        [v37 deleteCharactersInRange:{objc_msgSend(v37, "length") - 1, 1}];
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v41];
        [v37 appendString:v43];
      }

      v39 = [MEMORY[0x277CBEBC0] URLWithString:v37 encodingInvalidCharacters:0];
    }

    if (v39)
    {
      var4 = v11->var4;
      v45 = [[VCSAttachment alloc] initWithURL:v39];
      self = [(VCSProperty *)self initWithName:var4 value:v45];

LABEL_70:
      goto LABEL_71;
    }

LABEL_68:
    v39 = VCSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initWithVCSLine:v39 parseState:?];
    }

    goto LABEL_70;
  }

  if (var2 == 17)
  {
    v13 = [(VCSProperty *)self initClassificationProperty:v6 withParseState:v7 property:v10];
    goto LABEL_35;
  }

  if (var2 == 18)
  {
    v13 = [(VCSProperty *)self initTranspProperty:v6 withParseState:v7 property:v10];
    goto LABEL_35;
  }

  if (var2 != 19)
  {
    goto LABEL_38;
  }

  v16 = [v7 currentEntity];
  v17 = [[VCSAlarm alloc] initWithLine:v6 parseState:v7 property:v11];
  [v16 addChildEntity:v17];

LABEL_14:
  v15 = 0;
LABEL_37:

  return v15;
}

- (id)initISO8061Property:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v7 = a3;
  v8 = a5->var4;
  v9 = [VCSDate alloc];
  v10 = [v7 content];
  v11 = -[VCSDate initWithDateString:](v9, "initWithDateString:", [v10 bytes]);

  if (!v8)
  {
    v8 = [v7 keyword];
  }

  v12 = [(VCSProperty *)self initWithName:v8 rawValue:v11 type:7];

  return v12;
}

- (id)initISO8061DateListProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v7 = a3;
  v8 = a5->var4;
  v9 = [v7 content];
  v10 = [VCSDate dateListFromData:v9];

  if (!v8)
  {
    v8 = [v7 keyword];
  }

  v11 = [(VCSProperty *)self initWithName:v8 rawValues:v10 type:7];

  return v11;
}

- (id)initEncodedTextProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v7 = a3;
  v8 = a5->var4;
  if (!v8)
  {
    v8 = [v7 keyword];
  }

  v9 = [v7 convertedContent];
  v10 = [(VCSProperty *)self initWithName:v8 rawValue:v9 type:3];

  return v10;
}

- (id)initIntProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  if (!v10)
  {
    v10 = [v8 keyword];
  }

  v16 = 0;
  v11 = [v8 content];
  v12 = sscanf([v11 bytes], "%d", &v16);

  if (v12 == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    self = [(VCSProperty *)self initWithName:v10 rawValue:v13 type:4];
    v14 = self;
  }

  else
  {
    v13 = VCSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initIntProperty:v10 withParseState:v8 property:?];
    }

    v14 = 0;
  }

  return v14;
}

- (id)initURIProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v7 = a3;
  v8 = a5->var4;
  if (!v8)
  {
    v8 = [v7 keyword];
  }

  v9 = MEMORY[0x277CBEBC0];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v7 content];
  v12 = [v10 stringWithUTF8String:{objc_msgSend(v11, "bytes")}];
  v13 = [v9 URLWithString:v12 encodingInvalidCharacters:0];

  v14 = [(VCSProperty *)self initWithName:v8 rawValue:v13 type:6];
  return v14;
}

- (id)initClassificationProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  if (!v10)
  {
    v10 = [v8 keyword];
  }

  v11 = [v8 content];
  v12 = [v11 bytes];

  if (!strcmp(v12, "PUBLIC"))
  {
    v13 = 0;
  }

  else if (!strcmp(v12, "PRIVATE"))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (strcmp(v12, "CONFIDENTIAL") == 0);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [(VCSProperty *)self initWithName:v10 rawValue:v14 type:2];

  return v15;
}

- (id)initStatusProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  if (!v10)
  {
    v10 = [v8 keyword];
  }

  v11 = [v8 content];
  v12 = [v11 bytes];

  if (!strcmp(v12, "TENTATIVE"))
  {
    v13 = 0;
  }

  else if (!strcmp(v12, "CONFIRMED"))
  {
    v13 = 1;
  }

  else if (!strcmp(v12, "NEEDS ACTION"))
  {
    v13 = 2;
  }

  else
  {
    if (strcmp(v12, "COMPLETED"))
    {
LABEL_13:
      v17 = 0;
      goto LABEL_14;
    }

    v13 = 3;
  }

  v14 = [v9 currentEntity];
  v15 = [v14 isValidStatus:v13];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  self = [(VCSProperty *)self initWithName:v10 rawValue:v16 type:0];

  v17 = self;
LABEL_14:

  return v17;
}

- (id)initRecurrenceProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  v11 = [VCSRecurrenceRule alloc];
  v12 = [v8 content];
  v13 = -[VCSRecurrenceRule initWithString:](v11, "initWithString:", [v12 bytes]);

  if (!v10)
  {
    v10 = [v8 keyword];
  }

  if ([v9 palmImport])
  {
    v14 = [(VCSRecurrenceRule *)v13 endDate];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 dateForEndOfDay];
      [(VCSRecurrenceRule *)v13 setEndDate:v16];
    }
  }

  v17 = [(VCSProperty *)self initWithName:v10 rawValue:v13 type:9];

  return v17;
}

- (id)initTranspProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  if (!v10)
  {
    v10 = [v8 keyword];
  }

  v11 = [v8 content];
  v12 = [v11 bytes];
  v13 = *v12 != 48 || v12[1] != 0;

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [(VCSProperty *)self initWithName:v10 rawValue:v14 type:1];

  return v15;
}

- (id)initKeywordListProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v7 = a3;
  v8 = a5->var4;
  v9 = objc_opt_new();
  v10 = [v7 content];
  v11 = strdup([v10 bytes]);

  if (!v8)
  {
    v8 = [v7 keyword];
  }

  v12 = 0;
  v13 = v11;
  do
  {
    v14 = strchr(v13, 59);
    v15 = v14;
    if (v14)
    {
      *v14 = 0;
      v15 = v14 + 1;
    }

    v16 = [MEMORY[0x277CCAB68] stringWithUTF8String:v13];

    CFStringTrimWhitespace(v16);
    if ([(__CFString *)v16 length])
    {
      [v9 addObject:v16];
    }

    v13 = v15;
    v12 = v16;
  }

  while (v15);
  free(v11);
  v17 = [(VCSProperty *)self initWithName:v8 rawValues:v9 type:3];

  return v17;
}

- (id)initRFC822AddressProperty:(id)a3 withParseState:(id)a4 property:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5->var4;
  if (!v10)
  {
    v10 = [v8 keyword];
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v8 content];
  v13 = [v11 stringWithUTF8String:{objc_msgSend(v12, "bytes")}];

  v14 = [v13 VCS_uncommentedAddress];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEBC0] VCS_URLForMail:v14];
  }

  else
  {
    v16 = VCSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initRFC822AddressProperty:v8 withParseState:? property:?];
    }

    v15 = 0;
  }

  v17 = [(VCSProperty *)self initWithName:v10 rawValue:v15 type:8];

  return v17;
}

- (void)initWithVCSLine:(void *)a1 parseState:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 content];
  [v1 bytes];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithVCSLine:(void *)a1 parseState:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyword];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithVCSLine:(void *)a1 parseState:.cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyword];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initIntProperty:(uint64_t)a1 withParseState:(void *)a2 property:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 content];
  [v2 bytes];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initRFC822AddressProperty:(void *)a1 withParseState:property:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 content];
  [v1 bytes];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end