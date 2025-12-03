@interface SCRCArgumentParser
+ (id)commandPath;
- (BOOL)parse;
- (SCRCArgumentParser)initWithArgc:(int)argc argv:(const char *)argv;
- (id)_displayHelp:(id)help;
- (id)setRunningAtStartup:(id)startup;
- (int)run;
- (void)addSubcommand:(id)subcommand;
- (void)stop;
@end

@implementation SCRCArgumentParser

+ (id)commandPath
{
  if (_Parser)
  {
    _arguments = [_Parser _arguments];
    firstObject = [_arguments firstObject];
  }

  else
  {
    firstObject = @"unknown";
  }

  return firstObject;
}

- (SCRCArgumentParser)initWithArgc:(int)argc argv:(const char *)argv
{
  v17.receiver = self;
  v17.super_class = SCRCArgumentParser;
  v4 = [(SCRCArgumentSubcommand *)&v17 init:*&argc];
  if (v4)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [(SCRCArgumentParser *)v4 setAppName:processName];

    appName = [(SCRCArgumentParser *)v4 appName];
    v8 = [appName length];

    if (!v8 || ([MEMORY[0x277CCAC38] processInfo], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "arguments"), v10 = objc_claimAutoreleasedReturnValue(), -[SCRCArgumentParser set_arguments:](v4, "set_arguments:", v10), v10, v9, -[SCRCArgumentParser _arguments](v4, "_arguments"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, !v12))
    {
      v15 = 0;
      goto LABEL_7;
    }

    v13 = objc_opt_new();
    subcommandArray = v4->__subcommandArray;
    v4->__subcommandArray = v13;

    [(SCRCArgumentSubcommand *)v4 addOption:104 argument:0 target:v4 action:sel__displayHelp_ argumentDescription:@"Help." required:0];
    [(SCRCArgumentSubcommand *)v4 addOption:118 argument:0 target:v4 action:sel__displayVersion_ argumentDescription:@"Version information." required:0];
  }

  v15 = v4;
LABEL_7:

  return v15;
}

- (void)addSubcommand:(id)subcommand
{
  subcommandCopy = subcommand;
  _subcommandArray = [(SCRCArgumentParser *)self _subcommandArray];
  v5 = [_subcommandArray containsObject:subcommandCopy];

  if ((v5 & 1) == 0)
  {
    _subcommandArray2 = [(SCRCArgumentParser *)self _subcommandArray];
    [_subcommandArray2 addObject:subcommandCopy];
  }
}

- (BOOL)parse
{
  v62 = *MEMORY[0x277D85DE8];
  [(SCRCArgumentParser *)self set_subcommand:0];
  _arguments = [(SCRCArgumentParser *)self _arguments];
  v4 = [_arguments count];

  if (v4 >= 2)
  {
    _arguments2 = [(SCRCArgumentParser *)self _arguments];
    v6 = [_arguments2 objectAtIndexedSubscript:1];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    _subcommandArray = [(SCRCArgumentParser *)self _subcommandArray];
    v8 = [_subcommandArray countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v56;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(_subcommandArray);
          }

          v12 = *(*(&v55 + 1) + 8 * i);
          subcommandName = [v12 subcommandName];
          v14 = [subcommandName isEqualToString:v6];

          if (v14)
          {
            [(SCRCArgumentParser *)self set_subcommand:v12];
            goto LABEL_12;
          }
        }

        v9 = [_subcommandArray countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v15 = MEMORY[0x277CBEB18];
  optionArray = [(SCRCArgumentSubcommand *)self optionArray];
  v17 = [v15 arrayWithArray:optionArray];

  _subcommand = [(SCRCArgumentParser *)self _subcommand];
  optionArray2 = [_subcommand optionArray];
  v20 = [optionArray2 count];

  if (v20)
  {
    _subcommand2 = [(SCRCArgumentParser *)self _subcommand];
    optionArray3 = [_subcommand2 optionArray];
    [v17 addObjectsFromArray:optionArray3];
  }

  if ([v17 count])
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEBD0] standardUserDefaults];
    v45 = v44 = v17;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v52;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v51 + 1) + 8 * j);
          option = [v29 option];
          if (option)
          {
            _subcommandArray2 = option;
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%@", option];
            _arguments3 = [(SCRCArgumentParser *)selfCopy _arguments];
            v34 = [_arguments3 containsObject:v32];

            if (v34)
            {
              argument = [v29 argument];
              v36 = [argument length];

              if (v36)
              {
                _subcommand3 = [v45 objectForKey:_subcommandArray2];
                if (!_subcommand3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  [(SCRCArgumentParser *)selfCopy _subcommand];

LABEL_44:
                  v17 = v44;

LABEL_46:
                  v42 = 0;
                  goto LABEL_47;
                }

                [v29 setArgument:_subcommand3];
                [array addObject:v29];
              }

              else
              {
                [array addObject:v29];
              }
            }

            else if ([v29 required])
            {
              _subcommand3 = [(SCRCArgumentParser *)selfCopy _subcommand];
              goto LABEL_44;
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v24 = array;
    v38 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v48;
      v17 = v44;
      while (2)
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(v24);
          }

          if (([*(*(&v47 + 1) + 8 * k) process] & 1) == 0)
          {
            _subcommandArray2 = [(SCRCArgumentParser *)selfCopy _subcommandArray];
            [_subcommandArray2 count];
            goto LABEL_46;
          }
        }

        v39 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
        v42 = 1;
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v42 = 1;
      v17 = v44;
    }

LABEL_47:
  }

  else
  {
    v42 = 1;
  }

  return v42;
}

- (int)run
{
  _subcommand = [(SCRCArgumentParser *)self _subcommand];
  v3 = [_subcommand run];

  return v3;
}

- (void)stop
{
  _subcommand = [(SCRCArgumentParser *)self _subcommand];
  [_subcommand stop];
}

- (id)_displayHelp:(id)help
{
  v45 = *MEMORY[0x277D85DE8];
  versionString = [objc_opt_class() versionString];
  _subcommand = [(SCRCArgumentParser *)self _subcommand];
  if (_subcommand)
  {
    _subcommand2 = [(SCRCArgumentParser *)self _subcommand];
    optionArray = [_subcommand2 optionArray];
  }

  else
  {
    optionArray = [(SCRCArgumentSubcommand *)self optionArray];
  }

  v8 = [optionArray sortedArrayUsingSelector:?];
  _subcommand3 = [(SCRCArgumentParser *)self _subcommand];
  if (_subcommand3)
  {
    _subcommand4 = [(SCRCArgumentParser *)self _subcommand];
    subcommandName = [_subcommand4 subcommandName];
  }

  else
  {
    subcommandName = @"<subcommand>";
  }

  [v8 count];
  _subcommand5 = [(SCRCArgumentParser *)self _subcommand];
  formattedHelpHeader = [_subcommand5 formattedHelpHeader];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v39 = formattedHelpHeader;
    v17 = optionArray;
    v18 = subcommandName;
    v19 = versionString;
    v20 = 0;
    v21 = *v41;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v40 + 1) + 8 * v22);

        argument = [v20 argument];
        [argument length];

        ++v22;
        v23 = v20;
      }

      while (v16 != v22);
      v16 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);

    versionString = v19;
    subcommandName = v18;
    optionArray = v17;
    formattedHelpHeader = v39;
  }

  _subcommand6 = [(SCRCArgumentParser *)self _subcommand];
  if (_subcommand6)
  {
    objectEnumerator = _subcommand6;
    v27 = v14;
LABEL_17:

    v14 = v27;
    goto LABEL_18;
  }

  _subcommandArray = [(SCRCArgumentParser *)self _subcommandArray];
  v33 = [_subcommandArray count];

  if (v33)
  {
    _subcommandArray2 = [(SCRCArgumentParser *)self _subcommandArray];
    v27 = [_subcommandArray2 sortedArrayUsingSelector:sel_compare_];

    objectEnumerator = [v27 objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    subcommandName2 = [nextObject subcommandName];

    if (subcommandName2)
    {
      do
      {
        [subcommandName2 length];
        nextObject2 = [objectEnumerator nextObject];
        subcommandName3 = [nextObject2 subcommandName];

        subcommandName2 = subcommandName3;
      }

      while (subcommandName3);
    }

    goto LABEL_17;
  }

LABEL_18:
  _subcommand7 = [(SCRCArgumentParser *)self _subcommand];
  formattedHelpFooter = [_subcommand7 formattedHelpFooter];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:0];

  return v30;
}

- (id)setRunningAtStartup:(id)startup
{
  [(SCRCArgumentParser *)self setIsLaunchedAtLogin:1];
  memset(&context, 0, sizeof(context));
  v3 = SCDynamicStoreCreate(0, @"watchForConsoleUserChanges", _consoleUserChanged, &context);
  if (!v3)
  {
    appName = [_Parser appName];
    uTF8String = [appName UTF8String];
    v15 = getpid();
    syslog(3, "%s[%d]: could not open session with configd\n", uTF8String, v15);

    appName2 = [_Parser appName];
    uTF8String2 = [appName2 UTF8String];
    v18 = getpid();
    v19 = SCError();
    v20 = SCErrorString(v19);
    syslog(3, "%s[%d]: error = %s\n", uTF8String2, v18, v20);

    goto LABEL_9;
  }

  v4 = v3;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, 0);
  CFRelease(0);
  v6 = SCDynamicStoreSetNotificationKeys(v4, Mutable, 0);
  CFRelease(Mutable);
  if (v6)
  {
    appName3 = [_Parser appName];
    [appName3 UTF8String];
    getpid();
    syslog(3, "%s[%d]: could not register notification keys\n");
  }

  else
  {
    RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v4, 0);
    if (RunLoopSource)
    {
      v22 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v22, *MEMORY[0x277CBF058]);
      CFRelease(v22);
      goto LABEL_8;
    }

    appName3 = [_Parser appName];
    [appName3 UTF8String];
    getpid();
    syslog(3, "%s[%d]: could not create runloop source\n");
  }

  appName4 = [_Parser appName];
  uTF8String3 = [appName4 UTF8String];
  v10 = getpid();
  v11 = SCError();
  v12 = SCErrorString(v11);
  syslog(3, "%s[%d]: error = %s\n", uTF8String3, v10, v12);

LABEL_8:
  CFRelease(v4);
LABEL_9:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:1];

  return v24;
}

@end