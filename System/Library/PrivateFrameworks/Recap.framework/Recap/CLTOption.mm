@interface CLTOption
- (BOOL)consumeArgument:(id)a3;
- (CLTOption)init;
- (NSArray)consumedOrDefaultArguments;
- (NSNumber)numberValue;
- (NSString)lefthandHelp;
@end

@implementation CLTOption

- (CLTOption)init
{
  v10.receiver = self;
  v10.super_class = CLTOption;
  v2 = [(CLTOption *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    shorthands = v2->_shorthands;
    v2->_shorthands = v3;

    v5 = objc_opt_new();
    longforms = v2->_longforms;
    v2->_longforms = v5;

    v7 = objc_opt_new();
    consumedArguments = v2->_consumedArguments;
    v2->_consumedArguments = v7;
  }

  return v2;
}

- (NSString)lefthandHelp
{
  v40 = *MEMORY[0x277D85DE8];
  lefthandHelp = self->_lefthandHelp;
  if (!lefthandHelp)
  {
    v4 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [(CLTOption *)self shorthands];
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [@"-" stringByAppendingString:v10];
          if ([(CLTOption *)self maxAllowedOccurencies]>= 2)
          {
            v12 = [&stru_28741F8C0 stringByPaddingToLength:-[CLTOption maxAllowedOccurencies](self withString:"maxAllowedOccurencies") - 1 startingAtIndex:{v10, 0}];
            v13 = [v11 stringByAppendingFormat:@"[%@]", v12];

            v11 = v13;
          }

          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v7);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [(CLTOption *)self longforms];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * j);
          v20 = @"--";
          if (![v4 count])
          {
            v20 = [@"    " stringByAppendingString:@"--"];
          }

          v21 = [(__CFString *)v20 stringByAppendingString:v19];
          [v4 addObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v16);
    }

    v22 = [v4 componentsJoinedByString:{@", "}];
    v23 = self->_lefthandHelp;
    self->_lefthandHelp = v22;

    if ([(NSString *)self->_argumentHelp length])
    {
      argumentHelp = self->_argumentHelp;
      v37[0] = self->_lefthandHelp;
      v37[1] = argumentHelp;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v26 = [v25 componentsJoinedByString:@" "];
      v27 = self->_lefthandHelp;
      self->_lefthandHelp = v26;
    }

    lefthandHelp = self->_lefthandHelp;
  }

  return lefthandHelp;
}

- (BOOL)consumeArgument:(id)a3
{
  v4 = a3;
  v5 = [(CLTOption *)self maxConsumedArguments];
  v6 = [(CLTOption *)self consumedArguments];
  v7 = [v6 count];

  v8 = 0;
  if (v4 && v7 < v5)
  {
    if ([v4 hasPrefix:@"-"] && (!self->_allowsNegativeNumbersAsArguments || objc_msgSend(v4, "length") < 2 || objc_msgSend(v4, "characterAtIndex:", 1) < 0x30 || objc_msgSend(v4, "characterAtIndex:", 1) > 0x39))
    {
      v8 = 0;
    }

    else
    {
      v9 = [(CLTOption *)self consumedArguments];
      [v9 addObject:v4];

      v8 = 1;
    }
  }

  return v8;
}

- (NSArray)consumedOrDefaultArguments
{
  if ([(NSMutableArray *)self->_consumedArguments count])
  {
    v3 = [(NSMutableArray *)self->_consumedArguments copy];
  }

  else
  {
    v3 = self->_defaultArguments;
  }

  return v3;
}

- (NSNumber)numberValue
{
  v3 = [(NSMutableArray *)self->_consumedArguments count];
  v4 = 88;
  if (v3 == 1)
  {
    v4 = 80;
  }

  v5 = [*(&self->super.isa + v4) firstObject];
  if (v5)
  {
    v6 = numberValue_formatter;
    if (!numberValue_formatter)
    {
      v7 = objc_opt_new();
      v8 = numberValue_formatter;
      numberValue_formatter = v7;

      [numberValue_formatter setNumberStyle:1];
      v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
      [numberValue_formatter setLocale:v9];

      v6 = numberValue_formatter;
    }

    v10 = [v6 numberFromString:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end