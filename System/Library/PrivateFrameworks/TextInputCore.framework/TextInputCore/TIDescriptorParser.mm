@interface TIDescriptorParser
- (TIDescriptorParser)initWithErrorCode:(int64_t)code;
- (id)boxNilForValue:(id)value;
- (id)errorWithDetails:(id)details;
- (id)errorWithMessage:(id)message;
- (id)errorWithMessage:(id)message andValue:(id)value;
- (id)invalidDataTypeErrorForKey:(id)key withValue:(id)value dataType:(id)type;
- (id)invalidValueErrorForKey:(id)key withValue:(id)value;
- (id)missingValueErrorForKey:(id)key;
- (id)parseObjectForKey:(id)key fromConfig:(id)config required:(BOOL)required errors:(id)errors validate:(id)validate;
@end

@implementation TIDescriptorParser

- (id)boxNilForValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    null = valueCopy;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v6 = null;

  return v6;
}

- (id)errorWithDetails:(id)details
{
  detailsCopy = details;
  v5 = objc_opt_new();
  context = [(TIDescriptorParser *)self context];
  [v5 addEntriesFromDictionary:context];

  [v5 addEntriesFromDictionary:detailsCopy];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TIDescriptorErrorDomain" code:-[TIDescriptorParser errorCode](self userInfo:{"errorCode"), v5}];

  return v7;
}

- (id)errorWithMessage:(id)message andValue:(id)value
{
  v13[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = [(TIDescriptorParser *)self boxNilForValue:value];
  v12[0] = @"message";
  v12[1] = @"value";
  v13[0] = messageCopy;
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [(TIDescriptorParser *)self errorWithDetails:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)errorWithMessage:(id)message
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"message";
  v11[0] = message;
  v4 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(TIDescriptorParser *)self errorWithDetails:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)invalidDataTypeErrorForKey:(id)key withValue:(id)value dataType:(id)type
{
  v8 = MEMORY[0x277CCACA8];
  valueCopy = value;
  type = [v8 stringWithFormat:@"Key '%@' data type must be '%@'.", key, type];
  v11 = [(TIDescriptorParser *)self errorWithMessage:type andValue:valueCopy];

  return v11;
}

- (id)invalidValueErrorForKey:(id)key withValue:(id)value
{
  v6 = MEMORY[0x277CCACA8];
  valueCopy = value;
  v8 = [v6 stringWithFormat:@"Key '%@' value is invalid.", key];
  v9 = [(TIDescriptorParser *)self errorWithMessage:v8 andValue:valueCopy];

  return v9;
}

- (id)missingValueErrorForKey:(id)key
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' is missing.", key];
  v5 = [(TIDescriptorParser *)self errorWithMessage:v4];

  return v5;
}

- (id)parseObjectForKey:(id)key fromConfig:(id)config required:(BOOL)required errors:(id)errors validate:(id)validate
{
  requiredCopy = required;
  keyCopy = key;
  errorsCopy = errors;
  validateCopy = validate;
  v15 = [config objectForKey:keyCopy];
  if (v15)
  {
    v16 = validateCopy[2](validateCopy, v15);
  }

  else
  {
    if (!requiredCopy)
    {
LABEL_9:
      v18 = v15;
      v17 = 0;
      goto LABEL_10;
    }

    v16 = [(TIDescriptorParser *)self missingValueErrorForKey:keyCopy];
  }

  v17 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  if (errorsCopy)
  {
    [errorsCopy addObject:v16];
  }

  v18 = 0;
LABEL_10:

  return v18;
}

id __71__TIDescriptorParser_parseDictionaryForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isDictionary:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"dictionary"];
  }

  return v4;
}

id __66__TIDescriptorParser_parseArrayForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isArray:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"array"];
  }

  return v4;
}

id __68__TIDescriptorParser_parseBooleanForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isBoolean:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"BOOLean"];
  }

  return v4;
}

id __67__TIDescriptorParser_parseNumberForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isNumber:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"number"];
  }

  return v4;
}

id __66__TIDescriptorParser_parseFloatForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isFloat:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"float"];
  }

  return v4;
}

id __68__TIDescriptorParser_parseIntegerForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isInteger:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"integer"];
  }

  return v4;
}

id __67__TIDescriptorParser_parseStringForKey_fromConfig_required_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D6F320] isString:v3] && objc_msgSend(v3, "length"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) invalidDataTypeErrorForKey:*(a1 + 40) withValue:v3 dataType:@"string"];
  }

  return v4;
}

- (TIDescriptorParser)initWithErrorCode:(int64_t)code
{
  v9.receiver = self;
  v9.super_class = TIDescriptorParser;
  v4 = [(TIDescriptorParser *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_errorCode = code;
    v6 = objc_opt_new();
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end