@interface TIDescriptorParser
- (TIDescriptorParser)initWithErrorCode:(int64_t)a3;
- (id)boxNilForValue:(id)a3;
- (id)errorWithDetails:(id)a3;
- (id)errorWithMessage:(id)a3;
- (id)errorWithMessage:(id)a3 andValue:(id)a4;
- (id)invalidDataTypeErrorForKey:(id)a3 withValue:(id)a4 dataType:(id)a5;
- (id)invalidValueErrorForKey:(id)a3 withValue:(id)a4;
- (id)missingValueErrorForKey:(id)a3;
- (id)parseObjectForKey:(id)a3 fromConfig:(id)a4 required:(BOOL)a5 errors:(id)a6 validate:(id)a7;
@end

@implementation TIDescriptorParser

- (id)boxNilForValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = v5;

  return v6;
}

- (id)errorWithDetails:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(TIDescriptorParser *)self context];
  [v5 addEntriesFromDictionary:v6];

  [v5 addEntriesFromDictionary:v4];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TIDescriptorErrorDomain" code:-[TIDescriptorParser errorCode](self userInfo:{"errorCode"), v5}];

  return v7;
}

- (id)errorWithMessage:(id)a3 andValue:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TIDescriptorParser *)self boxNilForValue:a4];
  v12[0] = @"message";
  v12[1] = @"value";
  v13[0] = v6;
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [(TIDescriptorParser *)self errorWithDetails:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)errorWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"message";
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(TIDescriptorParser *)self errorWithDetails:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)invalidDataTypeErrorForKey:(id)a3 withValue:(id)a4 dataType:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a4;
  v10 = [v8 stringWithFormat:@"Key '%@' data type must be '%@'.", a3, a5];
  v11 = [(TIDescriptorParser *)self errorWithMessage:v10 andValue:v9];

  return v11;
}

- (id)invalidValueErrorForKey:(id)a3 withValue:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"Key '%@' value is invalid.", a3];
  v9 = [(TIDescriptorParser *)self errorWithMessage:v8 andValue:v7];

  return v9;
}

- (id)missingValueErrorForKey:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' is missing.", a3];
  v5 = [(TIDescriptorParser *)self errorWithMessage:v4];

  return v5;
}

- (id)parseObjectForKey:(id)a3 fromConfig:(id)a4 required:(BOOL)a5 errors:(id)a6 validate:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [a4 objectForKey:v12];
  if (v15)
  {
    v16 = v14[2](v14, v15);
  }

  else
  {
    if (!v9)
    {
LABEL_9:
      v18 = v15;
      v17 = 0;
      goto LABEL_10;
    }

    v16 = [(TIDescriptorParser *)self missingValueErrorForKey:v12];
  }

  v17 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  if (v13)
  {
    [v13 addObject:v16];
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

- (TIDescriptorParser)initWithErrorCode:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = TIDescriptorParser;
  v4 = [(TIDescriptorParser *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_errorCode = a3;
    v6 = objc_opt_new();
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end