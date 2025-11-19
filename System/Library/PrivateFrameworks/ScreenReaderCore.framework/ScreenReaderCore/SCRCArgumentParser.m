@interface SCRCArgumentParser
+ (id)commandPath;
- (BOOL)parse;
- (SCRCArgumentParser)initWithArgc:(int)a3 argv:(const char *)a4;
- (id)_displayHelp:(id)a3;
- (id)setRunningAtStartup:(id)a3;
- (int)run;
- (void)addSubcommand:(id)a3;
- (void)stop;
@end

@implementation SCRCArgumentParser

+ (id)commandPath
{
  if (_Parser)
  {
    v2 = [_Parser _arguments];
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = @"unknown";
  }

  return v3;
}

- (SCRCArgumentParser)initWithArgc:(int)a3 argv:(const char *)a4
{
  v17.receiver = self;
  v17.super_class = SCRCArgumentParser;
  v4 = [(SCRCArgumentSubcommand *)&v17 init:*&a3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 processName];
    [(SCRCArgumentParser *)v4 setAppName:v6];

    v7 = [(SCRCArgumentParser *)v4 appName];
    v8 = [v7 length];

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

- (void)addSubcommand:(id)a3
{
  v7 = a3;
  v4 = [(SCRCArgumentParser *)self _subcommandArray];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(SCRCArgumentParser *)self _subcommandArray];
    [v6 addObject:v7];
  }
}

- (BOOL)parse
{
  v62 = *MEMORY[0x277D85DE8];
  [(SCRCArgumentParser *)self set_subcommand:0];
  v3 = [(SCRCArgumentParser *)self _arguments];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = [(SCRCArgumentParser *)self _arguments];
    v6 = [v5 objectAtIndexedSubscript:1];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v7 = [(SCRCArgumentParser *)self _subcommandArray];
    v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v55 + 1) + 8 * i);
          v13 = [v12 subcommandName];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            [(SCRCArgumentParser *)self set_subcommand:v12];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
  v16 = [(SCRCArgumentSubcommand *)self optionArray];
  v17 = [v15 arrayWithArray:v16];

  v18 = [(SCRCArgumentParser *)self _subcommand];
  v19 = [v18 optionArray];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(SCRCArgumentParser *)self _subcommand];
    v22 = [v21 optionArray];
    [v17 addObjectsFromArray:v22];
  }

  if ([v17 count])
  {
    v23 = self;
    v46 = [MEMORY[0x277CBEB18] array];
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
          v30 = [v29 option];
          if (v30)
          {
            v31 = v30;
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%@", v30];
            v33 = [(SCRCArgumentParser *)v23 _arguments];
            v34 = [v33 containsObject:v32];

            if (v34)
            {
              v35 = [v29 argument];
              v36 = [v35 length];

              if (v36)
              {
                v37 = [v45 objectForKey:v31];
                if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  [(SCRCArgumentParser *)v23 _subcommand];

LABEL_44:
                  v17 = v44;

LABEL_46:
                  v42 = 0;
                  goto LABEL_47;
                }

                [v29 setArgument:v37];
                [v46 addObject:v29];
              }

              else
              {
                [v46 addObject:v29];
              }
            }

            else if ([v29 required])
            {
              v37 = [(SCRCArgumentParser *)v23 _subcommand];
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
    v24 = v46;
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
            v31 = [(SCRCArgumentParser *)v23 _subcommandArray];
            [v31 count];
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
  v2 = [(SCRCArgumentParser *)self _subcommand];
  v3 = [v2 run];

  return v3;
}

- (void)stop
{
  v2 = [(SCRCArgumentParser *)self _subcommand];
  [v2 stop];
}

- (id)_displayHelp:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() versionString];
  v5 = [(SCRCArgumentParser *)self _subcommand];
  if (v5)
  {
    v6 = [(SCRCArgumentParser *)self _subcommand];
    v7 = [v6 optionArray];
  }

  else
  {
    v7 = [(SCRCArgumentSubcommand *)self optionArray];
  }

  v8 = [v7 sortedArrayUsingSelector:?];
  v9 = [(SCRCArgumentParser *)self _subcommand];
  if (v9)
  {
    v10 = [(SCRCArgumentParser *)self _subcommand];
    v11 = [v10 subcommandName];
  }

  else
  {
    v11 = @"<subcommand>";
  }

  [v8 count];
  v12 = [(SCRCArgumentParser *)self _subcommand];
  v13 = [v12 formattedHelpHeader];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v39 = v13;
    v17 = v7;
    v18 = v11;
    v19 = v4;
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

        v24 = [v20 argument];
        [v24 length];

        ++v22;
        v23 = v20;
      }

      while (v16 != v22);
      v16 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);

    v4 = v19;
    v11 = v18;
    v7 = v17;
    v13 = v39;
  }

  v25 = [(SCRCArgumentParser *)self _subcommand];
  if (v25)
  {
    v26 = v25;
    v27 = v14;
LABEL_17:

    v14 = v27;
    goto LABEL_18;
  }

  v32 = [(SCRCArgumentParser *)self _subcommandArray];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [(SCRCArgumentParser *)self _subcommandArray];
    v27 = [v34 sortedArrayUsingSelector:sel_compare_];

    v26 = [v27 objectEnumerator];
    v35 = [v26 nextObject];
    v36 = [v35 subcommandName];

    if (v36)
    {
      do
      {
        [v36 length];
        v37 = [v26 nextObject];
        v38 = [v37 subcommandName];

        v36 = v38;
      }

      while (v38);
    }

    goto LABEL_17;
  }

LABEL_18:
  v28 = [(SCRCArgumentParser *)self _subcommand];
  v29 = [v28 formattedHelpFooter];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:0];

  return v30;
}

- (id)setRunningAtStartup:(id)a3
{
  [(SCRCArgumentParser *)self setIsLaunchedAtLogin:1];
  memset(&context, 0, sizeof(context));
  v3 = SCDynamicStoreCreate(0, @"watchForConsoleUserChanges", _consoleUserChanged, &context);
  if (!v3)
  {
    v13 = [_Parser appName];
    v14 = [v13 UTF8String];
    v15 = getpid();
    syslog(3, "%s[%d]: could not open session with configd\n", v14, v15);

    v16 = [_Parser appName];
    v17 = [v16 UTF8String];
    v18 = getpid();
    v19 = SCError();
    v20 = SCErrorString(v19);
    syslog(3, "%s[%d]: error = %s\n", v17, v18, v20);

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
    v7 = [_Parser appName];
    [v7 UTF8String];
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

    v7 = [_Parser appName];
    [v7 UTF8String];
    getpid();
    syslog(3, "%s[%d]: could not create runloop source\n");
  }

  v8 = [_Parser appName];
  v9 = [v8 UTF8String];
  v10 = getpid();
  v11 = SCError();
  v12 = SCErrorString(v11);
  syslog(3, "%s[%d]: error = %s\n", v9, v10, v12);

LABEL_8:
  CFRelease(v4);
LABEL_9:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:1];

  return v24;
}

@end