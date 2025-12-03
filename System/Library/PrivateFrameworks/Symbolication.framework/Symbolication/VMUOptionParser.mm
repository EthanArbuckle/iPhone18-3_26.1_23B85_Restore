@interface VMUOptionParser
- (VMUOptionParser)init;
- (id)parseArguments:(char *)arguments withBlock:(id)block;
- (id)parseArgumentsArray:(id)array withBlock:(id)block;
- (void)clearOptionDescriptions;
- (void)dealloc;
- (void)printOptionDescriptions:(id)descriptions;
- (void)registerOptionWithLongName:(id)name shortName:(id)shortName argumentKind:(int)kind argumentName:(id)argumentName optionDescription:(id)description flags:(unint64_t)flags handler:(id)handler;
- (void)usage:(id)usage shouldExit:(BOOL)exit;
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

- (void)registerOptionWithLongName:(id)name shortName:(id)shortName argumentKind:(int)kind argumentName:(id)argumentName optionDescription:(id)description flags:(unint64_t)flags handler:(id)handler
{
  flagsCopy = flags;
  nameCopy = name;
  shortNameCopy = shortName;
  argumentNameCopy = argumentName;
  descriptionCopy = description;
  handlerCopy = handler;
  v19 = objc_autoreleasePoolPush();
  if (nameCopy)
  {
    v20 = [nameCopy length];
    v46 = shortNameCopy;
    v21 = descriptionCopy;
    v22 = handlerCopy;
    v23 = argumentNameCopy;
    v24 = v19;
    v25 = flagsCopy;
    v26 = malloc_type_malloc(v20 + 33, 0xA88CB961uLL);
    v27 = nameCopy;
    strlcpy(v26 + 32, [nameCopy UTF8String], v20 + 33);
    *v26 = v26 + 32;
    *(v26 + 2) = kind;
    *(v26 + 2) = 0;
    *(v26 + 6) = 1;
    v28 = v26;
    flagsCopy = v25;
    v19 = v24;
    argumentNameCopy = v23;
    handlerCopy = v22;
    descriptionCopy = v21;
    shortNameCopy = v46;
    CFArrayAppendValue(self->_longOptStructs, v28);
    optionBlockByString = self->_optionBlockByString;
    v30 = _Block_copy(handlerCopy);
    [(NSMutableDictionary *)optionBlockByString setObject:v30 forKey:nameCopy];
  }

  if (shortNameCopy)
  {
    [(NSMutableString *)self->_shortOpts appendString:shortNameCopy];
    if (kind == 1)
    {
      [(NSMutableString *)self->_shortOpts appendString:@":"];
    }

    v31 = self->_optionBlockByString;
    v32 = _Block_copy(handlerCopy);
    [(NSMutableDictionary *)v31 setObject:v32 forKey:shortNameCopy];
  }

  if (descriptionCopy)
  {
    v33 = [MEMORY[0x1E696AD60] stringWithString:@"        "];
    v34 = v33;
    if (shortNameCopy)
    {
      [v33 appendFormat:@"-%@", shortNameCopy];
      if (!nameCopy)
      {
        if (!kind || !argumentNameCopy)
        {
          goto LABEL_34;
        }

        v37 = kind == 1;
        goto LABEL_22;
      }

      [v34 appendString:@"/"];
      v35 = nameCopy;
    }

    else
    {
      v35 = nameCopy;
      if (!nameCopy)
      {
        if (!kind || !argumentNameCopy)
        {
          goto LABEL_34;
        }

        v37 = kind == 1;
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
    if (!kind || !argumentNameCopy)
    {
      goto LABEL_34;
    }

    v37 = kind == 1;
    if (!shortNameCopy)
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

    [v34 appendFormat:@"%c%c%@%c", v38, v41, argumentNameCopy, v45];
LABEL_34:
    v42 = [v34 length];
    [v34 appendFormat:@"[@@@spacing@@@]%@", descriptionCopy];
    if (flagsCopy)
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

- (id)parseArgumentsArray:(id)array withBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  blockCopy = block;
  v8 = malloc_type_malloc(8 * [arrayCopy count] + 8, 0x10040436913F5uLL);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = arrayCopy;
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
  v16 = [(VMUOptionParser *)self parseArguments:v8 withBlock:blockCopy];
  free(v8);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)parseArguments:(char *)arguments withBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  uTF8String = [(NSMutableString *)self->_shortOpts UTF8String];
  if (arguments && *arguments)
  {
    v56 = uTF8String;
    context = v7;
    v9 = -1;
    v10 = 1;
    do
    {
      v11 = arguments[v10];
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

    v53 = blockCopy;
    v61 = 0;
    v19 = v56;
    v20 = getopt_long_only(v9 + 1, arguments, v56, v14, &v61);
    if (v20 != -1)
    {
      v26 = v20;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v54 = v14;
      v55 = arguments - 1;
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
              context = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", v26, context];
              v35 = [(NSMutableDictionary *)v39 objectForKey:context];

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

        v26 = getopt_long_only(v9 + 1, arguments, v19, v14, &v61);
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
      blockCopy = v53;
      while (1)
      {
        if (v53)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:arguments[v44]];
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
      blockCopy = v53;
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

- (void)usage:(id)usage shouldExit:(BOOL)exit
{
  exitCopy = exit;
  usageCopy = usage;
  userInfo = [usageCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696A578]];

  v8 = MEMORY[0x1E69E9848];
  if (v7 && [usageCopy code])
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

  if (exitCopy)
  {
    if (self->_abortOnError)
    {
      abort();
    }

    exit([usageCopy code]);
  }
}

- (void)clearOptionDescriptions
{
  [(NSMutableArray *)self->_optionDescriptions removeAllObjects];
  appleInternalOptionDescriptions = self->_appleInternalOptionDescriptions;

  [(NSMutableArray *)appleInternalOptionDescriptions removeAllObjects];
}

- (void)printOptionDescriptions:(id)descriptions
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = descriptions;
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