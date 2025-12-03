@interface CLICommand
- (BOOL)isEqual:(id)equal;
- (BOOL)runWithOptions:(id)options;
- (BOOL)startRunLoop;
- (NSString)name;
- (id)description;
- (id)nameSummaryString;
- (unint64_t)hash;
- (void)register;
@end

@implementation CLICommand

- (id)description
{
  name = [(CLICommand *)self name];
  aliases = [(CLICommand *)self aliases];
  options = [(CLICommand *)self options];
  v6 = [options count];
  shortEnglishDescription = [(CLICommand *)self shortEnglishDescription];
  longEnglishDescription = [(CLICommand *)self longEnglishDescription];
  usageLine = [(CLICommand *)self usageLine];
  v10 = [NSString stringWithFormat:@"<Command '%@'>\nAliases: %@\n# Options: %lu\nDescriptions:\nShort: %@\nLong: %@\nUsage: %@>", name, aliases, v6, shortEnglishDescription, longEnglishDescription, usageLine];

  return v10;
}

- (BOOL)runWithOptions:(id)options
{
  optionsCopy = options;
  p_executionBlock = &self->_executionBlock;
  executionBlock = self->_executionBlock;
  if (!executionBlock)
  {
    sub_10001061C();
    executionBlock = v9;
  }

  v7 = executionBlock[2](executionBlock, optionsCopy, p_executionBlock);

  return v7;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
  }

  else
  {
    sub_10001068C();
    name = v5;
  }

  return name;
}

- (id)nameSummaryString
{
  name = [(CLICommand *)self name];
  v4 = [NSMutableArray arrayWithObject:name];

  aliases = [(CLICommand *)self aliases];
  if (aliases)
  {
    [v4 addObjectsFromArray:aliases];
  }

  [v4 sortUsingSelector:"compare:"];
  v6 = [v4 componentsJoinedByString:@" | "];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(CLICommand *)self name];
    name2 = [v5 name];

    v8 = [name isEqualToString:name2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  name = [(CLICommand *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)startRunLoop
{
  v2 = +[CLIProgram sharedProgram];
  startRunLoop = [v2 startRunLoop];

  return startRunLoop;
}

- (void)register
{
  if (qword_100025158 != -1)
  {
    sub_1000108E8();
  }

  if ([qword_100025140 containsObject:self])
  {
    v3 = objc_opt_class();
    name = [(CLICommand *)self name];
    NSLog(@"Command %@ (%@) was already registered. Most likely the 'enabled' class property was YES and the command was also manually registered.", v3, name);
  }

  else
  {
    [qword_100025140 addObject:self];
    options = [(CLICommand *)self options];
    if (options)
    {
      v5 = qword_100025148;
      v6 = [[CLIOptionSet alloc] initWithOptions:options];
      [v5 setObject:v6 forKey:self];
    }

    name2 = [(CLICommand *)self name];
    v8 = [qword_100025138 objectForKeyedSubscript:name2];

    if (v8)
    {
      sub_100010B54();
    }

    [qword_100025138 setObject:self forKeyedSubscript:name2];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    aliases = [(CLICommand *)self aliases];
    v10 = [aliases countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(aliases);
          }

          [qword_100025138 setObject:self forKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        }

        v11 = [aliases countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

@end