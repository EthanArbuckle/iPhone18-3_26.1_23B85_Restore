@interface VCSProperty
- (VCSProperty)initWithName:(id)name rawValue:(id)value type:(unint64_t)type;
- (VCSProperty)initWithName:(id)name rawValues:(id)values type:(unint64_t)type;
- (VCSProperty)initWithName:(id)name value:(id)value;
- (VCSProperty)initWithName:(id)name values:(id)values;
- (VCSProperty)initWithVCSLine:(id)line parseState:(id)state;
- (id)initClassificationProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initEncodedTextProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initISO8061DateListProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initISO8061Property:(id)property withParseState:(id)state property:(id *)a5;
- (id)initIntProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initKeywordListProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initRFC822AddressProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initRecurrenceProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initStatusProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initTranspProperty:(id)property withParseState:(id)state property:(id *)a5;
- (id)initURIProperty:(id)property withParseState:(id)state property:(id *)a5;
@end

@implementation VCSProperty

- (VCSProperty)initWithName:(id)name values:(id)values
{
  nameCopy = name;
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = VCSProperty;
  v9 = [(VCSProperty *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [valuesCopy mutableCopy];
    values = v10->_values;
    v10->_values = v11;
  }

  return v10;
}

- (VCSProperty)initWithName:(id)name value:(id)value
{
  v14 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v6 = MEMORY[0x277CBEA60];
  valueCopy2 = value;
  nameCopy = name;
  v9 = [v6 arrayWithObjects:&valueCopy count:1];

  v10 = [(VCSProperty *)self initWithName:nameCopy values:v9, valueCopy, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (VCSProperty)initWithName:(id)name rawValues:(id)values type:(unint64_t)type
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__VCSProperty_initWithName_rawValues_type___block_invoke;
  v11[3] = &__block_descriptor_40_e26___VCSPropertyValue_16__0_8l;
  v11[4] = type;
  nameCopy = name;
  v8 = [values VCS_map:v11];
  v9 = [(VCSProperty *)self initWithName:nameCopy values:v8];

  return v9;
}

VCSPropertyValue *__43__VCSProperty_initWithName_rawValues_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VCSPropertyValue alloc] initWithValue:v3 type:*(a1 + 32)];

  return v4;
}

- (VCSProperty)initWithName:(id)name rawValue:(id)value type:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v9 = valueCopy;
  if (valueCopy)
  {
    v19 = valueCopy;
    v10 = MEMORY[0x277CBEA60];
    nameCopy = name;
    v12 = [v10 arrayWithObjects:&v19 count:1];
    v13 = [(VCSProperty *)self initWithName:nameCopy rawValues:v12 type:type, v19, v20];

    v14 = v13;
  }

  else
  {
    nameCopy2 = name;
    v16 = [(VCSProperty *)self initWithName:nameCopy2 rawValues:MEMORY[0x277CBEBF8] type:type];

    v14 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (VCSProperty)initWithVCSLine:(id)line parseState:(id)state
{
  lineCopy = line;
  stateCopy = state;
  tokenID = [lineCopy tokenID];
  context = [stateCopy context];
  v10 = [VCSParsedLine lookupProperty:tokenID];
  if (!v10)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initWithVCSLine:lineCopy parseState:?];
    }

    goto LABEL_13;
  }

  v11 = v10;
  if ((v10->var1 & context) == 0)
  {
    v14 = VCSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initWithVCSLine:lineCopy parseState:?];
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
        v13 = [(VCSProperty *)self initStatusProperty:lineCopy withParseState:stateCopy property:v10];
      }

      else if (var2 == 10)
      {
        v13 = [(VCSProperty *)self initEncodedTextProperty:lineCopy withParseState:stateCopy property:v10];
      }

      else
      {
        v13 = [(VCSProperty *)self initRecurrenceProperty:lineCopy withParseState:stateCopy property:v10];
      }

      goto LABEL_35;
    }

    switch(var2)
    {
      case 5:
        v13 = [(VCSProperty *)self initIntProperty:lineCopy withParseState:stateCopy property:v10];
        goto LABEL_35;
      case 7:
        v13 = [(VCSProperty *)self initISO8061Property:lineCopy withParseState:stateCopy property:v10];
        goto LABEL_35;
      case 8:
        v13 = [(VCSProperty *)self initRFC822AddressProperty:lineCopy withParseState:stateCopy property:v10];
LABEL_35:
        selfCopy = v13;
LABEL_36:
        self = selfCopy;
        v15 = selfCopy;
        goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (var2 <= 16)
  {
    switch(var2)
    {
      case 12:
        v13 = [(VCSProperty *)self initISO8061DateListProperty:lineCopy withParseState:stateCopy property:v10];
        goto LABEL_35;
      case 13:
        v13 = [(VCSProperty *)self initKeywordListProperty:lineCopy withParseState:stateCopy property:v10];
        goto LABEL_35;
      case 14:
        v13 = [(VCSProperty *)self initURIProperty:lineCopy withParseState:stateCopy property:v10];
        goto LABEL_35;
    }

LABEL_38:
    self = [(VCSProperty *)self init];
    v20 = __ROR8__(tokenID - 8, 1);
    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          content = [lineCopy content];
          v22 = strcmp([content bytes], "1.0");

          if (v22)
          {
            v23 = VCSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [VCSProperty initWithVCSLine:lineCopy parseState:?];
            }

            [stateCopy setStatus:2];
            goto LABEL_14;
          }
        }
      }

      else
      {
        content2 = [lineCopy content];
        v32 = strcmp([content2 bytes], "PalmDesktop Generated");

        if (!v32)
        {
          v33 = VCSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [VCSProperty initWithVCSLine:v33 parseState:?];
          }

          [stateCopy setPalmImport:1];
        }
      }

LABEL_72:
      selfCopy = self;
      goto LABEL_36;
    }

    if (v20 != 2)
    {
      if (v20 != 9)
      {
        goto LABEL_72;
      }

      convertedContent = [lineCopy convertedContent];
      v25 = [convertedContent componentsSeparatedByString:@" "];;
      v26 = [[VCSPropertyValue alloc] initWithValue:v25 type:3];
      params = [lineCopy params];
      v28 = [params objectForKeyedSubscript:@"VALUE"];
      v29 = v28;
      if (v28 && [v28 isEqual:@"URL"])
      {
        singleValue = [(VCSProperty *)self singleValue];
        [(VCSPropertyValue *)v26 addParameter:@"ALTREP" withValue:singleValue];
      }

      self = [(VCSProperty *)self initWithName:v11->var4 value:v26];

LABEL_71:
      goto LABEL_72;
    }

    convertedContent = [lineCopy params];
    v34 = [convertedContent objectForKey:@"VALUE"];
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
      content3 = [lineCopy content];
      v38 = [v36 stringWithUTF8String:{objc_msgSend(content3, "bytes")}];
      v39 = [v35 URLWithString:v38 encodingInvalidCharacters:0];
    }

    else
    {
      if (![v25 isEqual:@"CONTENT-ID"])
      {
        goto LABEL_68;
      }

      content3 = [@"CID:" mutableCopy];
      content4 = [lineCopy content];
      bytes = [content4 bytes];

      if (*bytes == 60 && bytes[strlen(bytes) - 1] == 62)
      {
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:bytes + 1];
        [content3 appendString:v42];

        [content3 deleteCharactersInRange:{objc_msgSend(content3, "length") - 1, 1}];
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:bytes];
        [content3 appendString:v43];
      }

      v39 = [MEMORY[0x277CBEBC0] URLWithString:content3 encodingInvalidCharacters:0];
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
    v13 = [(VCSProperty *)self initClassificationProperty:lineCopy withParseState:stateCopy property:v10];
    goto LABEL_35;
  }

  if (var2 == 18)
  {
    v13 = [(VCSProperty *)self initTranspProperty:lineCopy withParseState:stateCopy property:v10];
    goto LABEL_35;
  }

  if (var2 != 19)
  {
    goto LABEL_38;
  }

  currentEntity = [stateCopy currentEntity];
  v17 = [[VCSAlarm alloc] initWithLine:lineCopy parseState:stateCopy property:v11];
  [currentEntity addChildEntity:v17];

LABEL_14:
  v15 = 0;
LABEL_37:

  return v15;
}

- (id)initISO8061Property:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  keyword = a5->var4;
  v9 = [VCSDate alloc];
  content = [propertyCopy content];
  v11 = -[VCSDate initWithDateString:](v9, "initWithDateString:", [content bytes]);

  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  v12 = [(VCSProperty *)self initWithName:keyword rawValue:v11 type:7];

  return v12;
}

- (id)initISO8061DateListProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  keyword = a5->var4;
  content = [propertyCopy content];
  v10 = [VCSDate dateListFromData:content];

  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  v11 = [(VCSProperty *)self initWithName:keyword rawValues:v10 type:7];

  return v11;
}

- (id)initEncodedTextProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  convertedContent = [propertyCopy convertedContent];
  v10 = [(VCSProperty *)self initWithName:keyword rawValue:convertedContent type:3];

  return v10;
}

- (id)initIntProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  v16 = 0;
  content = [propertyCopy content];
  v12 = sscanf([content bytes], "%d", &v16);

  if (v12 == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    self = [(VCSProperty *)self initWithName:keyword rawValue:v13 type:4];
    selfCopy = self;
  }

  else
  {
    v13 = VCSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initIntProperty:keyword withParseState:propertyCopy property:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initURIProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  v9 = MEMORY[0x277CBEBC0];
  v10 = MEMORY[0x277CCACA8];
  content = [propertyCopy content];
  v12 = [v10 stringWithUTF8String:{objc_msgSend(content, "bytes")}];
  v13 = [v9 URLWithString:v12 encodingInvalidCharacters:0];

  v14 = [(VCSProperty *)self initWithName:keyword rawValue:v13 type:6];
  return v14;
}

- (id)initClassificationProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  content = [propertyCopy content];
  bytes = [content bytes];

  if (!strcmp(bytes, "PUBLIC"))
  {
    v13 = 0;
  }

  else if (!strcmp(bytes, "PRIVATE"))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (strcmp(bytes, "CONFIDENTIAL") == 0);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [(VCSProperty *)self initWithName:keyword rawValue:v14 type:2];

  return v15;
}

- (id)initStatusProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  content = [propertyCopy content];
  bytes = [content bytes];

  if (!strcmp(bytes, "TENTATIVE"))
  {
    v13 = 0;
  }

  else if (!strcmp(bytes, "CONFIRMED"))
  {
    v13 = 1;
  }

  else if (!strcmp(bytes, "NEEDS ACTION"))
  {
    v13 = 2;
  }

  else
  {
    if (strcmp(bytes, "COMPLETED"))
    {
LABEL_13:
      selfCopy = 0;
      goto LABEL_14;
    }

    v13 = 3;
  }

  currentEntity = [stateCopy currentEntity];
  v15 = [currentEntity isValidStatus:v13];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  self = [(VCSProperty *)self initWithName:keyword rawValue:v16 type:0];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)initRecurrenceProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  v11 = [VCSRecurrenceRule alloc];
  content = [propertyCopy content];
  v13 = -[VCSRecurrenceRule initWithString:](v11, "initWithString:", [content bytes]);

  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  if ([stateCopy palmImport])
  {
    endDate = [(VCSRecurrenceRule *)v13 endDate];
    v15 = endDate;
    if (endDate)
    {
      dateForEndOfDay = [endDate dateForEndOfDay];
      [(VCSRecurrenceRule *)v13 setEndDate:dateForEndOfDay];
    }
  }

  v17 = [(VCSProperty *)self initWithName:keyword rawValue:v13 type:9];

  return v17;
}

- (id)initTranspProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  content = [propertyCopy content];
  bytes = [content bytes];
  v13 = *bytes != 48 || bytes[1] != 0;

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = [(VCSProperty *)self initWithName:keyword rawValue:v14 type:1];

  return v15;
}

- (id)initKeywordListProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  keyword = a5->var4;
  v9 = objc_opt_new();
  content = [propertyCopy content];
  v11 = strdup([content bytes]);

  if (!keyword)
  {
    keyword = [propertyCopy keyword];
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
  v17 = [(VCSProperty *)self initWithName:keyword rawValues:v9 type:3];

  return v17;
}

- (id)initRFC822AddressProperty:(id)property withParseState:(id)state property:(id *)a5
{
  propertyCopy = property;
  stateCopy = state;
  keyword = a5->var4;
  if (!keyword)
  {
    keyword = [propertyCopy keyword];
  }

  v11 = MEMORY[0x277CCACA8];
  content = [propertyCopy content];
  v13 = [v11 stringWithUTF8String:{objc_msgSend(content, "bytes")}];

  vCS_uncommentedAddress = [v13 VCS_uncommentedAddress];
  if (vCS_uncommentedAddress)
  {
    v15 = [MEMORY[0x277CBEBC0] VCS_URLForMail:vCS_uncommentedAddress];
  }

  else
  {
    v16 = VCSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VCSProperty initRFC822AddressProperty:propertyCopy withParseState:? property:?];
    }

    v15 = 0;
  }

  v17 = [(VCSProperty *)self initWithName:keyword rawValue:v15 type:8];

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