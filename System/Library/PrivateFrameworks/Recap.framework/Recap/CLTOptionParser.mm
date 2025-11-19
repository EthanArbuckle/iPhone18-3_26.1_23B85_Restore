@interface CLTOptionParser
- (CLTOptionParser)init;
- (CLTOptionParser)initWithArguments:(id)a3;
- (NSString)versionLine;
- (id)helpString;
- (id)parse;
- (id)usageLine;
- (id)usageString;
- (int)parseWithSuccessHandler:(id)a3;
- (void)addOption:(id)a3;
- (void)removeAllOptions;
@end

@implementation CLTOptionParser

- (CLTOptionParser)init
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 arguments];
  v5 = [(CLTOptionParser *)self initWithArguments:v4];

  return v5;
}

- (CLTOptionParser)initWithArguments:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLTOptionParser;
  v5 = [(CLTOptionParser *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(CLTOptionParser *)v5 setInputArguments:v4];
    v7 = [v4 firstObject];
    v8 = [v7 lastPathComponent];
    [(CLTOptionParser *)v6 setToolName:v8];

    [(CLTOptionParser *)v6 setVersionString:@"0.0.1"];
    [(CLTOptionParser *)v6 setUsageOptionsDescription:@"[options]"];
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_opt_new();
    [v10 addShorthand:@"h"];
    [v10 addLongform:@"help"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__CLTOptionParser_initWithArguments___block_invoke;
    v19[3] = &unk_279AF0D10;
    v11 = v6;
    v20 = v11;
    [v10 setTriggerAction:v19];
    [v10 setRighthandHelp:@"Shows this help."];
    objc_storeStrong(v11 + 7, v10);

    v12 = objc_opt_new();
    [v12 addLongform:@"version"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__CLTOptionParser_initWithArguments___block_invoke_2;
    v17[3] = &unk_279AF0D10;
    v13 = v11;
    v18 = v13;
    [v12 setTriggerAction:v17];
    [v12 setRighthandHelp:@"Shows version and build time."];
    objc_storeStrong(v13 + 8, v12);

    v14 = objc_opt_new();
    [v14 addShorthand:@"v"];
    [v14 addLongform:@"verbose"];
    [v14 setTriggerAction:&__block_literal_global];
    [v14 setRighthandHelp:{@"Increase verbosity, can appear multiple times."}];
    [v14 setMaxAllowedOccurencies:3];
    objc_storeStrong(v13 + 8, v14);
    v15 = [v9 arrayWithObjects:{v10, v12, v14, 0}];
    [v13 setOptions:v15];
  }

  return v6;
}

void __37__CLTOptionParser_initWithArguments___block_invoke(uint64_t a1)
{
  if ((_CLTLogLevel & 0x80000000) == 0)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = [*(a1 + 32) helpString];
    v3 = [v1 stringWithFormat:@"%@", v2];
    v4 = [v3 UTF8String];
    v5 = MEMORY[0x277D85E08];
    fputs(v4, *MEMORY[0x277D85E08]);

    fflush(*v5);
  }

  exit(0);
}

void __37__CLTOptionParser_initWithArguments___block_invoke_2(uint64_t a1)
{
  if ((_CLTLogLevel & 0x80000000) == 0)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = [*(a1 + 32) versionLine];
    v3 = [v1 stringWithFormat:@"%@\n", v2];
    v4 = [v3 UTF8String];
    v5 = MEMORY[0x277D85E08];
    fputs(v4, *MEMORY[0x277D85E08]);

    fflush(*v5);
  }

  exit(0);
}

- (NSString)versionLine
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CLTOptionParser *)self toolName];
  v5 = [(CLTOptionParser *)self versionString];
  v6 = [v3 stringWithFormat:@"%@ (v%@) (build time: %s %s)", v4, v5, "Oct 10 2025", "23:45:12"];

  return v6;
}

- (id)helpString
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(CLTOptionParser *)self versionLine];
  v8[0] = v3;
  v4 = [(CLTOptionParser *)self usageString];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v5 componentsJoinedByString:@"\n"];

  return v6;
}

- (id)usageLine
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CLTOptionParser *)self toolName];
  v5 = [(CLTOptionParser *)self usageOptionsDescription];
  v6 = [v3 stringWithFormat:@"Usage: %@ %@", v4, v5];

  return v6;
}

- (id)usageString
{
  v41[2] = *MEMORY[0x277D85DE8];
  v3 = [(CLTOptionParser *)self usageLine];
  v41[0] = v3;
  v41[1] = &stru_28741F8C0;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v5 = [v4 mutableCopy];

  v6 = [(CLTOptionParser *)self introductionaryDescription];

  if (v6)
  {
    v7 = [(CLTOptionParser *)self introductionaryDescription];
    [v5 addObject:v7];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [(CLTOptionParser *)self options];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    v12 = 20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v35 + 1) + 8 * i) lefthandHelp];
        v15 = [v14 length];

        if (v12 <= v15)
        {
          v12 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 20;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = self;
  obj = [(CLTOptionParser *)self options];
  v16 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        v20 = v5;
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        v22 = MEMORY[0x277CCACA8];
        v23 = [v21 lefthandHelp];
        v24 = [v23 stringByPaddingToLength:v12 withString:@" " startingAtIndex:0];
        v25 = [v21 righthandHelp];
        v26 = [v22 stringWithFormat:@" %@  %@", v24, v25];

        v5 = v20;
        [v20 addObject:v26];
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v17);
  }

  [v5 addObject:&stru_28741F8C0];
  if ([(NSArray *)v29->_additionalHelpLines count])
  {
    [v5 addObjectsFromArray:v29->_additionalHelpLines];
    [v5 addObject:&stru_28741F8C0];
  }

  v27 = [v5 componentsJoinedByString:@"\n"];

  return v27;
}

- (id)parse
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(NSArray *)self->_inputArguments count]== 1 && ![(CLTOptionParser *)self succeedWithoutArguments])
  {
    v4 = [(CLTOptionParser *)self defaultHelpOption];
    v5 = [v4 triggerAction];
    v5[2]();
  }

  v6 = [(NSArray *)self->_inputArguments objectEnumerator];
  v7 = [v6 nextObject];
  v8 = 0;
  v9 = 0;
  v49 = self;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v10 = v9;
          v9 = [v6 nextObject];

          if (!v9)
          {
            goto LABEL_50;
          }
        }

        while (v8 && ([v8 consumeArgument:v9] & 1) != 0);

        if ([v9 isEqual:@"--"])
        {
          v8 = [v6 allObjects];
          [v3 addObjectsFromArray:v8];
LABEL_50:
          v37 = 0;
          goto LABEL_51;
        }

        if ([v9 hasPrefix:@"-"])
        {
          break;
        }

        [v3 addObject:v9];
        v8 = 0;
      }

      v11 = [v9 substringFromIndex:1];
      v48 = v11;
      v45 = v6;
      v46 = v3;
      if ([v11 hasPrefix:@"-"])
      {
        v12 = [v11 substringFromIndex:1];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v13 = [(CLTOptionParser *)self options];
        v14 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v56;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v56 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v55 + 1) + 8 * i);
              v19 = [v18 longforms];
              v20 = [v19 containsObject:v12];

              if (v20)
              {
                v35 = [v18 triggerAction];

                if (v35)
                {
                  v36 = [v18 triggerAction];
                  v36[2]();
                }

                [v18 setOccurencies:{objc_msgSend(v18, "occurencies") + 1}];
                v50 = v18;
                LOBYTE(v21) = 1;
                goto LABEL_40;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

          LOBYTE(v21) = 0;
          v50 = 0;
LABEL_40:
          v11 = v48;
          self = v49;
        }

        else
        {
          LOBYTE(v21) = 0;
          v50 = 0;
        }
      }

      else if ([v11 length])
      {
        v50 = 0;
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = [v11 substringWithRange:{v22, 1}];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v24 = [(CLTOptionParser *)self options];
          v25 = [v24 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v25)
          {
            v26 = v25;
            v47 = v21;
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
                v30 = [v29 shorthands];
                v31 = [v30 containsObject:v23];

                if (v31)
                {
                  v32 = [v29 triggerAction];

                  if (v32)
                  {
                    v33 = [v29 triggerAction];
                    v33[2]();
                  }

                  [v29 setOccurencies:{objc_msgSend(v29, "occurencies") + 1}];
                  v34 = v29;

                  v21 = 1;
                  v50 = v34;
                  v11 = v48;
                  self = v49;
                  goto LABEL_35;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v51 objects:v59 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }

            v11 = v48;
            self = v49;
            v21 = v47;
          }

LABEL_35:

          ++v22;
        }

        while (v22 < [v11 length]);
      }

      else
      {
        LOBYTE(v21) = 0;
        v50 = 0;
      }

      v8 = v50;
      if (!v50 && (v21 & 1) == 0)
      {
        break;
      }

      v6 = v45;
      v3 = v46;
    }

    v6 = v45;
    v3 = v46;
    if (![(CLTOptionParser *)self succeedWithUnkownFlags])
    {
      break;
    }

    v8 = 0;
  }

  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Option unknown: %@\n", v9];
  v40 = [v39 UTF8String];
  v41 = MEMORY[0x277D85DF8];
  fputs(v40, *MEMORY[0x277D85DF8]);

  v42 = MEMORY[0x277CCACA8];
  v43 = [(CLTOptionParser *)self usageLine];
  v44 = [v42 stringWithFormat:@"%@\n", v43];
  fputs([v44 UTF8String], *v41);

  v37 = &unk_287426760;
  v8 = v11;
LABEL_51:

  return v37;
}

- (int)parseWithSuccessHandler:(id)a3
{
  v4 = a3;
  v5 = [(CLTOptionParser *)self parse];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = v4[2](v4);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (void)removeAllOptions
{
  v2 = [(CLTOptionParser *)self options];
  [v2 removeAllObjects];
}

- (void)addOption:(id)a3
{
  v4 = a3;
  v5 = [(CLTOptionParser *)self options];
  [v5 addObject:v4];
}

@end