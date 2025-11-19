@interface VMUOptionParser
- (VMUOptionParser)init;
- (id)parseArguments:(char *)a3 withBlock:(id)a4;
- (id)parseArgumentsArray:(id)a3 withBlock:(id)a4;
- (void)clearOptionDescriptions;
- (void)dealloc;
- (void)printOptionDescriptions:(id)a3;
- (void)registerOptionWithLongName:(id)a3 shortName:(id)a4 argumentKind:(int)a5 argumentName:(id)a6 optionDescription:(id)a7 flags:(unint64_t)a8 handler:(id)a9;
- (void)usage:(id)a3 shouldExit:(BOOL)a4;
@end

@implementation VMUOptionParser

- (VMUOptionParser)init
{
  v13.receiver = self;
  v13.super_class = VMUOptionParser;
  v2 = [(VMUOptionParser *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    optionDescriptions = v2->_optionDescriptions;
    v2->_optionDescriptions = v3;

    v5 = objc_opt_new();
    appleInternalOptionDescriptions = v2->_appleInternalOptionDescriptions;
    v2->_appleInternalOptionDescriptions = v5;

    v7 = objc_opt_new();
    optionBlockByString = v2->_optionBlockByString;
    v2->_optionBlockByString = v7;

    callBacks.version = 1;
    callBacks.retain = 0;
    callBacks.copyDescription = 0;
    callBacks.equal = 0;
    callBacks.release = _arrayFreeValue;
    v2->_longOptStructs = CFArrayCreateMutable(0, 0, &callBacks);
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@":"];
    shortOpts = v2->_shortOpts;
    v2->_shortOpts = v9;

    v2->_parametersShowAsAssignment = 1;
  }

  return v2;
}

- (void)dealloc
{
  longOptStructs = self->_longOptStructs;
  if (longOptStructs)
  {
    CFRelease(longOptStructs);
    self->_longOptStructs = 0;
  }

  v4.receiver = self;
  v4.super_class = VMUOptionParser;
  [(VMUOptionParser *)&v4 dealloc];
}

- (void)registerOptionWithLongName:(id)a3 shortName:(id)a4 argumentKind:(int)a5 argumentName:(id)a6 optionDescription:(id)a7 flags:(unint64_t)a8 handler:(id)a9
{
  v9 = a8;
  v47 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = objc_autoreleasePoolPush();
  if (v47)
  {
    v20 = [v47 length];
    v46 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v16;
    v24 = v19;
    v25 = v9;
    v26 = malloc_type_malloc(v20 + 33, 0xA88CB961uLL);
    v27 = v47;
    strlcpy(v26 + 32, [v47 UTF8String], v20 + 33);
    *v26 = v26 + 32;
    *(v26 + 2) = a5;
    *(v26 + 2) = 0;
    *(v26 + 6) = 1;
    v28 = v26;
    v9 = v25;
    v19 = v24;
    v16 = v23;
    v18 = v22;
    v17 = v21;
    v15 = v46;
    CFArrayAppendValue(self->_longOptStructs, v28);
    optionBlockByString = self->_optionBlockByString;
    v30 = _Block_copy(v18);
    [(NSMutableDictionary *)optionBlockByString setObject:v30 forKey:v47];
  }

  if (v15)
  {
    [(NSMutableString *)self->_shortOpts appendString:v15];
    if (a5 == 1)
    {
      [(NSMutableString *)self->_shortOpts appendString:@":"];
    }

    v31 = self->_optionBlockByString;
    v32 = _Block_copy(v18);
    [(NSMutableDictionary *)v31 setObject:v32 forKey:v15];
  }

  if (v17)
  {
    v33 = [MEMORY[0x1E696AD60] stringWithString:@"        "];
    v34 = v33;
    if (v15)
    {
      [v33 appendFormat:@"-%@", v15];
      if (!v47)
      {
        if (!a5 || !v16)
        {
          goto LABEL_34;
        }

        v37 = a5 == 1;
        goto LABEL_22;
      }

      [v34 appendString:@"/"];
      v35 = v47;
    }

    else
    {
      v35 = v47;
      if (!v47)
      {
        if (!a5 || !v16)
        {
          goto LABEL_34;
        }

        v37 = a5 == 1;
LABEL_26:
        if (self->_parametersShowAsAssignment)
        {
          v38 = 61;
        }

        else
        {
          v38 = 32;
        }

        goto LABEL_29;
      }
    }

    if (self->_singleHyphenLongNames)
    {
      v36 = "-";
    }

    else
    {
      v36 = "--";
    }

    [v34 appendFormat:@"%s%@", v36, v35];
    if (!a5 || !v16)
    {
      goto LABEL_34;
    }

    v37 = a5 == 1;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_22:
    v38 = 32;
LABEL_29:
    v39 = !v37;
    v40 = 93;
    if (!v39)
    {
      v40 = 62;
    }

    v45 = v40;
    v41 = 91;
    if (!v39)
    {
      v41 = 60;
    }

    [v34 appendFormat:@"%c%c%@%c", v38, v41, v16, v45];
LABEL_34:
    v42 = [v34 length];
    [v34 appendFormat:@"[@@@spacing@@@]%@", v17];
    if (v9)
    {
      if (!os_variant_has_internal_content())
      {
LABEL_41:

        goto LABEL_42;
      }

      v43 = 40;
    }

    else
    {
      v43 = 32;
    }

    [*(&self->super.isa + v43) addObject:v34];
    spacing = self->_spacing;
    if (spacing <= v42 + 2)
    {
      spacing = v42 + 2;
    }

    self->_spacing = spacing;
    goto LABEL_41;
  }

LABEL_42:
  objc_autoreleasePoolPop(v19);
}

- (id)parseArgumentsArray:(id)a3 withBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = malloc_type_malloc(8 * [v6 count] + 8, 0x10040436913F5uLL);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    v11 = v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        *v11++ = [v15 UTF8String];
      }

      v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  *v11 = 0;
  v16 = [(VMUOptionParser *)self parseArguments:v8 withBlock:v7];
  free(v8);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)parseArguments:(char *)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSMutableString *)self->_shortOpts UTF8String];
  if (a3 && *a3)
  {
    v56 = v8;
    context = v7;
    v9 = -1;
    v10 = 1;
    do
    {
      v11 = a3[v10];
      ++v9;
      ++v10;
    }

    while (v11);
    Count = CFArrayGetCount(self->_longOptStructs);
    v13 = malloc_type_calloc(Count + 1, 0x20uLL, 0x10500402E37B38AuLL);
    v14 = v13;
    if (Count >= 1)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_longOptStructs, v15);
        v18 = ValueAtIndex[1];
        *&v16->name = *ValueAtIndex;
        *&v16->flag = v18;
        ++v16;
        ++v15;
      }

      while (Count != v15);
    }

    v53 = v6;
    v61 = 0;
    v19 = v56;
    v20 = getopt_long_only(v9 + 1, a3, v56, v14, &v61);
    if (v20 != -1)
    {
      v26 = v20;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v54 = v14;
      v55 = a3 - 1;
      while (1)
      {
        v30 = *MEMORY[0x1E69E98E0];
        if (*MEMORY[0x1E69E98E0])
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        }

        else
        {
          v31 = 0;
        }

        if (v26 == 63)
        {
          VMUOptionParserError(-1, @"unrecognized option '%s'", v30, v21, v22, v23, v24, v25, v55[*MEMORY[0x1E69E98F0]]);
        }

        else
        {
          if (v26 != 58)
          {
            if (v26 == 1)
            {
              optionBlockByString = self->_optionBlockByString;
              if (v14[v61].name)
              {
                name = v14[v61].name;
              }

              else
              {
                name = "";
              }

              v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
              v35 = [(NSMutableDictionary *)optionBlockByString objectForKey:v34];

              if (v35)
              {
                if (v28)
                {
                  v36 = v29;
                }

                else
                {
                  v36 = 0;
                }

                v60 = v36;
                (v35)[2](v35, v31, &v60);
                v37 = v60;
                if (v28)
                {
                  v29 = v37;
                }

                else
                {
                  v28 = v37;
                }
              }
            }

            else
            {
              v38 = v27;
              v39 = self->_optionBlockByString;
              v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v26, context];
              v35 = [(NSMutableDictionary *)v39 objectForKey:v40];

              if (v35)
              {
                if (v28)
                {
                  v41 = v29;
                }

                else
                {
                  v41 = 0;
                }

                v59 = v41;
                (v35)[2](v35, v31, &v59);
                v42 = v59;
                if (v28)
                {
                  v29 = v42;
                }

                else
                {
                  v28 = v42;
                }
              }

              v27 = v38;
              v14 = v54;
            }

            v19 = v56;
            goto LABEL_40;
          }

          VMUOptionParserError(-1, @"%s flag supplied with no argument", v30, v21, v22, v23, v24, v25, v55[*MEMORY[0x1E69E98F0]]);
        }

        v27 = v35 = v27;
LABEL_40:

        v26 = getopt_long_only(v9 + 1, a3, v19, v14, &v61);
        if (v26 == -1)
        {
          goto LABEL_44;
        }
      }
    }

    v29 = 0;
    v28 = 0;
    v27 = 0;
LABEL_44:
    v57 = v27;
    v44 = *MEMORY[0x1E69E98F0];
    if (*MEMORY[0x1E69E98F0] <= v9)
    {
      v6 = v53;
      while (1)
      {
        if (v53)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3[v44]];
          if (v28)
          {
            v47 = v29;
          }

          else
          {
            v47 = 0;
          }

          v58 = v47;
          v53[2](v53, v46, &v58);
          v48 = v58;
          if (v28)
          {
            v29 = v48;
          }

          else
          {
            v28 = v48;
          }
        }

        if (v28)
        {
          break;
        }

        v45 = 0;
        v49 = *MEMORY[0x1E69E98F0];
        v44 = *MEMORY[0x1E69E98F0] + 1;
        *MEMORY[0x1E69E98F0] = v44;
        if (v49 >= v9)
        {
          goto LABEL_59;
        }
      }

      v45 = v28;
    }

    else
    {
      v45 = v28;
      v6 = v53;
    }

LABEL_59:
    *MEMORY[0x1E69E98F0] = 0;
    [(NSMutableDictionary *)self->_optionBlockByString removeAllObjects];
    free(v14);

    objc_autoreleasePoolPop(context);
    if (v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v57;
    }

    v43 = v50;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    v43 = 0;
  }

  return v43;
}

- (void)usage:(id)a3 shouldExit:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [v15 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E696A578]];

  v8 = MEMORY[0x1E69E9848];
  if (v7 && [v15 code])
  {
    fprintf(*v8, "[invalid usage]: %s\n\n", [v7 UTF8String]);
  }

  customUsageDescription = self->_customUsageDescription;
  if (customUsageDescription)
  {
    fprintf(*v8, "%s\n", [(NSString *)customUsageDescription UTF8String]);
  }

  else
  {
    if (self->_purposeDescription)
    {
      v10 = *v8;
      v11 = getprogname();
      fprintf(v10, "%s: %s\n\n", v11, [(NSString *)self->_purposeDescription UTF8String]);
    }

    if (self->_syntaxDescription)
    {
      v12 = *v8;
      v13 = getprogname();
      fprintf(v12, "Usage: %s %s\n\n", v13, [(NSString *)self->_syntaxDescription UTF8String]);
    }

    discussionDescription = self->_discussionDescription;
    if (discussionDescription)
    {
      fprintf(*v8, "%s\n\n", [(NSString *)discussionDescription UTF8String]);
    }

    [(VMUOptionParser *)self printOptionDescriptions:self->_optionDescriptions];
    if ([(NSMutableArray *)self->_appleInternalOptionDescriptions count])
    {
      fwrite("\nApple-internal options:\n", 0x19uLL, 1uLL, *v8);
      [(VMUOptionParser *)self printOptionDescriptions:self->_appleInternalOptionDescriptions];
    }
  }

  if (v4)
  {
    if (self->_abortOnError)
    {
      abort();
    }

    exit([v15 code]);
  }
}

- (void)clearOptionDescriptions
{
  [(NSMutableArray *)self->_optionDescriptions removeAllObjects];
  appleInternalOptionDescriptions = self->_appleInternalOptionDescriptions;

  [(NSMutableArray *)appleInternalOptionDescriptions removeAllObjects];
}

- (void)printOptionDescriptions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v15 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 rangeOfString:@"[@@@spacing@@@]"];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", self->_spacing - v8, ""];
        v10 = [v7 stringByReplacingOccurrencesOfString:@"[@@@spacing@@@]" withString:v9];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%*s", (LODWORD(self->_spacing) + 3), ""];
        v12 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:v11];

        if (v7)
        {
          fprintf(*MEMORY[0x1E69E9848], "%s\n", [v12 UTF8String]);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end