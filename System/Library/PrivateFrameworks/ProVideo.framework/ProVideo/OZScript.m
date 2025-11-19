@interface OZScript
- (OZScript)init;
- (id)preprocess:(id)a3;
- (id)process:(id)a3;
- (void)dealloc;
- (void)dispatch:(id)a3;
- (void)loadScriptWithURL:(id)a3;
@end

@implementation OZScript

- (OZScript)init
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = OZScript;
  v2 = [(OZScript *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD4640]);
    v2->_context = v3;
    [(JSContext *)v3 setExceptionHandler:&__block_literal_global_84];
    [(JSContext *)v2->_context setObject:&__block_literal_global_4 forKeyedSubscript:@"print"];
    v5 = 0;
    v2->_paramRegex = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\s*EXPORT\\s+(CHANNEL_(?:FLOAT|PERCENT|ANGLE|COLOR|POSITION|PADDING|TEXTURE_2D))\\s+var\\s+([a-zA-Z_][a-zA-Z_0-9]*)(.*)" options:0 error:&v5];
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = @"\\s*EXPORT\\s+(CHANNEL_(?:FLOAT|PERCENT|ANGLE|COLOR|POSITION|PADDING|TEXTURE_2D))\\s+var\\s+([a-zA-Z_][a-zA-Z_0-9]*)(.*)";
      _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[JavaScript] Could not create regex: %@", buf, 0xCu);
    }

    SCNExportJavaScriptModule(v2->_context);
    v2->_parameterDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_alertShown = 0;
  }

  return v2;
}

void __16__OZScript_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a3 toString];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[JavaScript] %@", &v4, 0xCu);
  }
}

void __16__OZScript_init__block_invoke_1(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = a2;
    _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v3, 0xCu);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZScript;
  [(OZScript *)&v3 dealloc];
}

- (void)dispatch:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __21__OZScript_dispatch___block_invoke;
  v3[3] = &unk_279AA9BD8;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __21__OZScript_dispatch___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  result = [v1 isUndefined];
  if ((result & 1) == 0)
  {

    return [v1 callWithArguments:0];
  }

  return result;
}

- (void)loadScriptWithURL:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  self->_url = [a3 copy];
  v8 = 0;
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:a3 encoding:134217984 error:&v8];
  v6 = v8;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v6 localizedDescription];
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error while processing script file: %@", buf, 0xCu);
    }
  }

  else
  {
    [(JSContext *)self->_context evaluateScript:[(OZScript *)self preprocess:v5]];
  }
}

- (id)preprocess:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return &stru_2872E16E0;
  }

  v6 = v5;
  v7 = *v12;
  v8 = &stru_2872E16E0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v8 = [(__CFString *)v8 stringByAppendingFormat:@"%@\n", [(OZScript *)self process:*(*(&v11 + 1) + 8 * i)]];
    }

    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v8;
}

- (id)process:(id)a3
{
  v3 = a3;
  if (![a3 containsString:@"EXPORT"])
  {
    return v3;
  }

  v5 = -[NSRegularExpression firstMatchInString:options:range:](self->_paramRegex, "firstMatchInString:options:range:", v3, 0, 0, [v3 length]);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Script] Error parsing published parameter", buf, 2u);
    }

    return &stru_2872E16E0;
  }

  v6 = v5;
  v7 = [(NSTextCheckingResult *)v5 rangeAtIndex:1];
  v9 = [v3 substringWithRange:{v7, v8}];
  v10 = [(NSTextCheckingResult *)v6 rangeAtIndex:2];
  v12 = [v3 substringWithRange:{v10, v11}];
  v13 = [(NSTextCheckingResult *)v6 rangeAtIndex:3];
  v15 = [v3 substringWithRange:{v13, v14}];
  if ([v9 isEqualToString:@"CHANNEL_FLOAT"])
  {
    v16 = 0;
  }

  else if ([v9 isEqualToString:@"CHANNEL_PERCENT"])
  {
    v16 = 1;
  }

  else if ([v9 isEqualToString:@"CHANNEL_ANGLE"])
  {
    v16 = 4;
  }

  else if ([v9 isEqualToString:@"CHANNEL_COLOR"])
  {
    v16 = 2;
  }

  else if ([v9 isEqualToString:@"CHANNEL_POSITION"])
  {
    v16 = 3;
  }

  else if ([v9 isEqualToString:@"CHANNEL_PADDING"])
  {
    v16 = 5;
  }

  else if ([v9 isEqualToString:@"CHANNEL_TEXTURE_2D"])
  {
    v16 = 6;
  }

  else
  {
    v16 = 0;
  }

  v18 = [[OZShaderParameter alloc] initWithName:v12 type:v16];
  [(NSMutableArray *)self->_parameterDescriptors addObject:v18];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"var %@%@", v12, v15];
}

@end