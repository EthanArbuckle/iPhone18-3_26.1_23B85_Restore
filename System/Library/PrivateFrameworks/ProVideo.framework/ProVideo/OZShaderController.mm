@interface OZShaderController
- (OZShaderController)initWithURL:(id)l;
- (id)functionNameFromLine:(id)line;
- (id)preprocess:(id)preprocess;
- (id)process:(id)process;
- (void)dealloc;
- (void)loadShaderWithURL:(id)l;
@end

@implementation OZShaderController

- (OZShaderController)initWithURL:(id)l
{
  v6.receiver = self;
  v6.super_class = OZShaderController;
  v4 = [(OZShaderController *)&v6 init];
  if (v4)
  {
    v4->_parameters = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(OZShaderController *)v4 initRegex];
    [(OZShaderController *)v4 loadShaderWithURL:l];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZShaderController;
  [(OZShaderController *)&v3 dealloc];
}

- (void)loadShaderWithURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  self->_url = [l copy];
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:l encoding:134217984 error:0];
  self->_shader = v5;
  if (v5)
  {
    v6 = [(OZShaderController *)self preprocess:v5];
    self->_shader = v6;
    v7 = v6;
    if (self->_shader)
    {
      v8 = MTLCreateSystemDefaultDevice();
      self->_device = v8;
      v11 = 0;
      self->_library = [(MTLDevice *)v8 newLibraryWithSource:self->_shader options:0 error:&v11];
      v9 = v11;
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          localizedDescription = [v9 localizedDescription];
          *buf = 138412290;
          v13 = localizedDescription;
          _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Shader] Error while processing script file: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)preprocess:(id)preprocess
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [preprocess componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
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

      v8 = [(__CFString *)v8 stringByAppendingFormat:@"%@\n", [(OZShaderController *)self process:*(*(&v11 + 1) + 8 * i)]];
    }

    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v8;
}

- (id)process:(id)process
{
  processCopy = process;
  if (![process containsString:@"EXPORT"])
  {
    if ([processCopy hasPrefix:@"vertex"])
    {
      self->_vertexFunctionName = [(OZShaderController *)self functionNameFromLine:processCopy];
    }

    else if ([processCopy hasPrefix:@"fragment"])
    {
      self->_fragmentFunctionName = [(OZShaderController *)self functionNameFromLine:processCopy];
    }

    return processCopy;
  }

  v5 = -[NSRegularExpression firstMatchInString:options:range:](self->_paramRegex, "firstMatchInString:options:range:", processCopy, 0, 0, [processCopy length]);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Shader] Error parsing published parameter", buf, 2u);
    }

    return &stru_2872E16E0;
  }

  v6 = v5;
  v7 = [(NSTextCheckingResult *)v5 rangeAtIndex:1];
  v9 = [processCopy substringWithRange:{v7, v8}];
  v10 = [(NSTextCheckingResult *)v6 rangeAtIndex:2];
  v12 = [processCopy substringWithRange:{v10, v11}];
  v13 = [(NSTextCheckingResult *)v6 rangeAtIndex:3];
  v15 = [processCopy substringWithRange:{v13, v14}];
  v16 = [(NSTextCheckingResult *)v6 rangeAtIndex:4];
  v18 = [processCopy substringWithRange:{v16, v17}];
  if ([v9 isEqualToString:@"CHANNEL_FLOAT"])
  {
    v19 = 0;
  }

  else if ([v9 isEqualToString:@"CHANNEL_PERCENT"])
  {
    v19 = 1;
  }

  else if ([v9 isEqualToString:@"CHANNEL_ANGLE"])
  {
    v19 = 4;
  }

  else if ([v9 isEqualToString:@"CHANNEL_COLOR"])
  {
    v19 = 2;
  }

  else if ([v9 isEqualToString:@"CHANNEL_POSITION"])
  {
    v19 = 3;
  }

  else if ([v9 isEqualToString:@"CHANNEL_PADDING"])
  {
    v19 = 5;
  }

  else if ([v9 isEqualToString:@"CHANNEL_TEXTURE_2D"])
  {
    v19 = 6;
  }

  else if ([v9 isEqualToString:@"CHANNEL_TRANSFORM"])
  {
    v19 = 7;
  }

  else
  {
    v19 = 0;
  }

  v21 = [[OZShaderParameter alloc] initWithName:v15 type:v19];
  [(NSMutableArray *)self->_parameters addObject:v21];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@%@", v12, v15, v18];
}

- (id)functionNameFromLine:(id)line
{
  result = -[NSRegularExpression firstMatchInString:options:range:](self->_functionRegex, "firstMatchInString:options:range:", line, 0, 0, [line length]);
  if (result)
  {
    v6 = [result rangeAtIndex:1];

    return [line substringWithRange:{v6, v5}];
  }

  return result;
}

@end