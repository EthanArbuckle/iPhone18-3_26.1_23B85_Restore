@interface _PASArgParser
+ (_PASArgParser)parserWithHandler:(id)a3;
+ (id)BOOLValueForArgument:(id)a3 error:(id *)a4;
+ (id)enumValueForArgument:(id)a3 withMapping:(id)a4 error:(id *)a5;
+ (id)numberValueForArgument:(id)a3 error:(id *)a4;
+ (id)simpleParserWithHelpGenerator:(id)a3 version:(id)a4 handler:(id)a5;
- (_PASArgParser)initWithHandler:(id)a3;
- (id)_argumentParseTemplate:(id)a3 longArgs:(option *)a4;
- (id)description;
- (id)naiveUsageHelpWithPositionalArgString:(id)a3;
- (id)subcommandLongHelp;
- (int)invokeHandlerWithArguments:(const char *)a3 count:(int)a4 parseErrorCode:(int)a5 error:(id *)a6;
- (void)registerOption:(id)a3;
@end

@implementation _PASArgParser

- (id)_argumentParseTemplate:(id)a3 longArgs:(option *)a4
{
  v7 = a3;
  if (!a4)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:622 description:{@"Invalid parameter not satisfying: %@", @"longArgsRef"}];
  }

  v8 = objc_opt_new();
  if (v7)
  {
    v9 = [v7 registeredOptions];
  }

  else
  {
    v9 = self->_registeredOptions;
  }

  v10 = v9;
  v11 = malloc_type_calloc([(NSMutableArray *)v9 count]+ 1, 0x20uLL, 0x10500402E37B38AuLL);
  if (!v11)
  {
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v25);
  }

  v12 = v11;
  if ([(NSMutableArray *)v10 count])
  {
    v13 = 0;
    p_val = &v12->val;
    do
    {
      v15 = [(NSMutableArray *)v10 objectAtIndexedSubscript:v13];
      v16 = [v15 name];
      *(p_val - 3) = [v16 UTF8String];

      v17 = [v15 argMetavar];
      *(p_val - 4) = v17 != 0;

      v18 = [v15 shortName];

      if (v18)
      {
        *(p_val - 1) = 0;
        v19 = [v15 shortName];
        *p_val = *[v19 UTF8String];
      }

      else
      {
        *(p_val - 1) = v15 + 8;
        *p_val = 1;
      }

      v20 = [v15 shortName];

      if (v20)
      {
        v21 = [v15 shortName];
        [v8 appendString:v21];

        v22 = [v15 argMetavar];

        if (v22)
        {
          [v8 appendString:@":"];
        }
      }

      ++v13;
      p_val += 8;
    }

    while (v13 < [(NSMutableArray *)v10 count]);
  }

  *a4 = v12;

  return v8;
}

- (int)invokeHandlerWithArguments:(const char *)a3 count:(int)a4 parseErrorCode:(int)a5 error:(id *)a6
{
  v117 = *MEMORY[0x1E69E9840];
  v8 = 1;
  *MEMORY[0x1E69E98F0] = 1;
  v9 = MEMORY[0x1E69E98E8];
  *MEMORY[0x1E69E98E8] = 0;
  *MEMORY[0x1E69E98F8] = 0;
  *MEMORY[0x1E69E9900] = 1;
  v10 = objc_opt_new();
  v91 = objc_opt_new();
  v93 = v10;
  v94 = a3;
  v95 = a4;
  if (a4 < 2)
  {
    v20 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3[1]];
    if (!v11)
    {
      v81 = [MEMORY[0x1E696AAA8] currentHandler];
      [v81 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:478 description:@"possibleSubcommand: stringWithUTF8String unexpectedly returned nil"];
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v12 = self->_registeredSubcommands;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v105 objects:v116 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v106;
LABEL_6:
      v16 = 0;
      while (1)
      {
        if (*v106 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v105 + 1) + 8 * v16);
        v18 = [v17 name];
        v19 = [v18 isEqualToString:v11];

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v105 objects:v116 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v20 = v17;

      if (!v20)
      {
        goto LABEL_16;
      }

      v8 = 0;
      ++*MEMORY[0x1E69E98F0];
    }

    else
    {
LABEL_12:

      v20 = 0;
LABEL_16:
      v8 = 1;
    }

    v10 = v93;
    a3 = v94;
    a4 = v95;
  }

  *v9 = 0;
  v104 = 0;
  v103 = 0;
  v21 = [(_PASArgParser *)self _argumentParseTemplate:v20 longArgs:&v103];
  v92 = [v21 UTF8String];

  if (v8)
  {
    v96 = self->_registeredOptions;
    v89 = [(NSMutableSet *)self->_requiredOptions mutableCopy];
  }

  else
  {
    v96 = [v20 registeredOptions];
    v22 = [v20 requiredOptions];
    v89 = [v22 mutableCopy];
  }

  v83 = v8;
  v86 = v20;
  v97 = 0;
  v90 = 0;
  v88 = *MEMORY[0x1E696A588];
LABEL_22:
  v23 = getopt_long(a4, a3, v92, v103, &v104);
  if (v23 == 63)
  {
    v24 = *MEMORY[0x1E69E98F8];
    v25 = 1;
  }

  else
  {
    v24 = v23;
    if (v23 == -1)
    {
      v60 = v86;
      goto LABEL_59;
    }

    v25 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v26 = v96;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v99 objects:v115 count:16];
  if (!v27)
  {
    goto LABEL_57;
  }

  v28 = v27;
  v29 = *v100;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v100 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v99 + 1) + 8 * i);
      name = v103->name;
      if (v103->name)
      {
        v33 = v103 + 1;
        while (1)
        {
          v34 = [v31 name];
          v35 = strcmp(name, [v34 UTF8String]);

          if (!v35)
          {
            flag = v33[-1].flag;
            if (flag)
            {
              if (*flag == 1)
              {
                break;
              }
            }
          }

          v37 = v33->name;
          ++v33;
          name = v37;
          if (!v37)
          {
            goto LABEL_37;
          }
        }

        *flag = 0;
LABEL_43:
        if ([v31 required])
        {
          v41 = [v31 name];
          [v89 removeObject:v41];
        }

        v42 = [v31 argMetavar];

        v10 = v93;
        if (v42)
        {
          if (*MEMORY[0x1E69E98E0])
          {
            v43 = v25;
          }

          else
          {
            v43 = 1;
          }

          v44 = MEMORY[0x1E696AEC0];
          if (v43 == 1)
          {
            v45 = [v31 name];
            v46 = [v44 stringWithFormat:@"Option: %@ missing required argument", v45];

            v47 = MEMORY[0x1E696ABC0];
            v113 = v88;
            v114 = v46;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            v49 = [v47 errorWithDomain:@"_PASArgParser" code:0 userInfo:v48];

            v50 = 0;
            v90 = v49;
            goto LABEL_55;
          }

          v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        }

        else
        {
          v51 = [MEMORY[0x1E695DFB0] null];
        }

        v50 = v51;
        v52 = [v31 name];
        [v93 setObject:v50 forKeyedSubscript:v52];

        v53 = [v31 name];
        v54 = [v53 isEqualToString:@"help"];

        v97 |= v54;
        v55 = [v31 shortName];

        if (!v55)
        {
LABEL_56:
          a3 = v94;

          a4 = v95;
          goto LABEL_22;
        }

        v46 = [v31 shortName];
        [v93 setObject:v50 forKeyedSubscript:v46];
LABEL_55:

        goto LABEL_56;
      }

LABEL_37:
      v38 = [v31 shortName];

      if (v38)
      {
        v39 = [v31 shortName];
        v40 = [v39 UTF8String];

        if (v24 == *v40)
        {
          goto LABEL_43;
        }
      }
    }

    v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v99 objects:v115 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_57:

  a3 = v94;
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized option: (%s)", v94[*MEMORY[0x1E69E98F0] - 1]];
  v57 = MEMORY[0x1E696ABC0];
  v111 = v88;
  v112 = v56;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  v59 = [v57 errorWithDomain:@"_PASArgParser" code:0 userInfo:v58];

  v90 = v59;
  v10 = v93;
  v60 = v86;
  a4 = v95;
LABEL_59:
  if ((v97 & 1) == 0 && [v89 count])
  {
    v61 = [v89 allObjects];
    v62 = [v61 _pas_componentsJoinedByString:{@", "}];

    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required options: %@", v62];
    v64 = MEMORY[0x1E696ABC0];
    v109 = v88;
    v110 = v63;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v66 = [v64 errorWithDomain:@"_PASArgParser" code:0 userInfo:v65];

    v60 = v86;
    v90 = v66;
    a4 = v95;
  }

  v67 = *MEMORY[0x1E69E98F0];
  if (a4 > v67)
  {
    v68 = a4 - v67;
    v69 = &a3[v67];
    do
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v69];
      if (!v70)
      {
        v71 = [MEMORY[0x1E696AAA8] currentHandler];
        [v71 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:585 description:@"posArgStr: stringWithUTF8String unexpectedly returned nil"];

        v60 = v86;
      }

      [v91 addObject:v70];

      ++v69;
      --v68;
    }

    while (v68);
  }

  free(v103);
  v72 = v90;
  if (v90)
  {
    v73 = a6;
    v74 = a5;
    v75 = v89;
    if (a6)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v75 = v89;
    if (v83)
    {
      v79 = [[_PASArgToplevelHandlerParams alloc] initWithParser:self options:v10 positionalArguments:v91];
      v74 = (*(self->_handler + 2))();
      v72 = 0;
    }

    else
    {
      v79 = [[_PASArgSubcommandHandlerParams alloc] initWithSubcommand:v60 options:v10 positionalArguments:v91];
      v80 = [v60 handler];
      v98 = 0;
      v74 = (v80)[2](v80, v79, &v98);
      v72 = v98;
    }

    v73 = a6;

    if (a6)
    {
LABEL_69:
      v76 = v72;
      *v73 = v72;
    }
  }

  v77 = *MEMORY[0x1E69E9840];
  return v74;
}

- (id)naiveUsageHelpWithPositionalArgString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] stringWithString:@"Usage:\n  "];
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];
  [v5 appendString:v7];

  if ([(NSMutableArray *)self->_registeredSubcommands count])
  {
    [v5 appendString:@" [SUBCOMMAND]"];
  }

  v8 = [(_PASArgParser *)self optionShortHelp];
  [v5 appendString:v8];

  if (v4)
  {
    [v5 appendString:v4];
  }

  [v5 appendString:@"\n"];
  v9 = [(_PASArgParser *)self subcommandLongHelp];
  [v5 appendString:v9];

  v10 = [(_PASArgParser *)self optionLongHelp];
  [v5 appendString:v10];

  return v5;
}

- (id)subcommandLongHelp
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([(NSMutableArray *)self->_registeredSubcommands count])
  {
    [v3 appendString:@"\nSubcommand Details:\n"];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_registeredSubcommands;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v9 helpDescription];
        [v3 appendFormat:@"  %@ -- %@\n", v10, v11, v14];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)registerOption:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_registeredOptions addObject:v6];
  if ([v6 required])
  {
    requiredOptions = self->_requiredOptions;
    v5 = [v6 name];
    [(NSMutableSet *)requiredOptions addObject:v5];
  }
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"_PASArgParser"];
  if ([(NSMutableArray *)self->_registeredOptions count])
  {
    [v3 appendString:@"\n  Registered Options:\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_registeredOptions;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"    %@\n", *(*(&v20 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  if ([(NSMutableArray *)self->_registeredSubcommands count])
  {
    [v3 appendString:@"\n  Registered Subcommands:\n"];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_registeredSubcommands;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v3 appendFormat:@"    %@\n", *(*(&v16 + 1) + 8 * j)];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_PASArgParser)initWithHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v17.receiver = self;
  v17.super_class = _PASArgParser;
  v6 = [(_PASArgParser *)&v17 init];
  if (v6)
  {
    v7 = objc_opt_new();
    registeredSubcommands = v6->_registeredSubcommands;
    v6->_registeredSubcommands = v7;

    v9 = objc_opt_new();
    registeredOptions = v6->_registeredOptions;
    v6->_registeredOptions = v9;

    v11 = objc_opt_new();
    requiredOptions = v6->_requiredOptions;
    v6->_requiredOptions = v11;

    v13 = MEMORY[0x1AC566DD0](v5);
    handler = v6->_handler;
    v6->_handler = v13;
  }

  return v6;
}

+ (id)simpleParserWithHelpGenerator:(id)a3 version:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"_PASArgParser.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63___PASArgParser_simpleParserWithHelpGenerator_version_handler___block_invoke;
  v20[3] = &unk_1E77F1C68;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v21 = v13;
  v14 = v11;
  v23 = v14;
  v15 = [a1 parserWithHandler:v20];
  v16 = [_PASArgOption optionWithName:@"help" shortName:@"h" help:@"Display a help page."];
  [v15 registerOption:v16];

  if (v13)
  {
    v17 = [_PASArgOption optionWithName:@"version" shortName:@"V" help:@"Display the program name and version."];
    [v15 registerOption:v17];
  }

  return v15;
}

+ (_PASArgParser)parserWithHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandler:v4];

  return v5;
}

+ (id)enumValueForArgument:(id)a3 withMapping:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:a1 file:@"_PASArgParser.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"[argument isKindOfClass:[NSString class]]"}];
    }

    v12 = v9;
    v13 = [v10 objectForKeyedSubscript:v12];
    v11 = v13;
    if (a5 && !v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument value %@ does not correspond an enum value.", v12];
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A588];
      v21[0] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a5 = [v15 errorWithDomain:@"_PASArgParser" code:0 userInfo:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)numberValueForArgument:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"_PASArgParser.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"[argument isKindOfClass:[NSString class]]"}];
    }

    v9 = v7;
    v10 = objc_opt_new();
    v8 = [v10 numberFromString:v9];

    if (a4 && !v8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument value %@ cannot be converted to a number.", v9];
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v18[0] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *a4 = [v12 errorWithDomain:@"_PASArgParser" code:0 userInfo:v13];
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)BOOLValueForArgument:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:a1 file:@"_PASArgParser.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"[argument isKindOfClass:[NSString class]]"}];
      }

      v8 = v7;
      v9 = [v8 lowercaseString];
      if ([v9 isEqualToString:@"yes"])
      {
      }

      else
      {
        v10 = [v8 isEqualToString:@"1"];

        if ((v10 & 1) == 0)
        {
          v13 = [v8 lowercaseString];
          if ([v13 isEqualToString:@"no"])
          {
          }

          else
          {
            v14 = [v8 isEqualToString:@"0"];

            if ((v14 & 1) == 0)
            {
              if (a4)
              {
                v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument value %@ cannot be converted to BOOLean.", v8];
                v16 = MEMORY[0x1E696ABC0];
                v19 = *MEMORY[0x1E696A588];
                v20[0] = v15;
                v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
                *a4 = [v16 errorWithDomain:@"_PASArgParser" code:0 userInfo:v17];

                a4 = 0;
              }

              goto LABEL_10;
            }
          }

          a4 = MEMORY[0x1E695E110];
LABEL_10:

          goto LABEL_11;
        }
      }

      a4 = MEMORY[0x1E695E118];
      goto LABEL_10;
    }
  }

  a4 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return a4;
}

@end