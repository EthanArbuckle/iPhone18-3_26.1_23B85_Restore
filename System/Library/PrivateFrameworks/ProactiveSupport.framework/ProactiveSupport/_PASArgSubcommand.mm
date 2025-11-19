@interface _PASArgSubcommand
+ (_PASArgSubcommand)subcommandWithName:(id)a3 help:(id)a4 handler:(id)a5;
+ (id)simpleSubcommandWithHelpGenerator:(id)a3 name:(id)a4 help:(id)a5 handler:(id)a6;
- (_PASArgSubcommand)initWithName:(id)a3 help:(id)a4 handler:(id)a5;
- (id)customUsageHelpWithUsageOverride:(id)a3 positionalArgString:(id)a4 optionHelpOverride:(id)a5 additionalHelpText:(id)a6;
- (id)description;
- (void)registerOption:(id)a3;
@end

@implementation _PASArgSubcommand

- (id)customUsageHelpWithUsageOverride:(id)a3 positionalArgString:(id)a4 optionHelpOverride:(id)a5 additionalHelpText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@ -- %@\n\n", self->_name, self->_helpDescription];
  v15 = v14;
  if (v10)
  {
    [v14 appendString:v10];
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 processName];
  name = self->_name;
  v20 = [(_PASArgSubcommand *)self optionShortHelp];
  v21 = [v23 initWithFormat:@"Usage:\n%@ %@%@", v18, name, v20];
  [v15 appendString:v21];

  if (v11)
  {
LABEL_3:
    [v15 appendString:v11];
    [v15 appendString:@"\n"];
  }

LABEL_4:
  if (v12)
  {
    [v15 appendString:v12];
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v22 = [(_PASArgSubcommand *)self optionLongHelp];
  [v15 appendString:v22];

  if (v13)
  {
LABEL_6:
    [v15 appendString:v13];
  }

LABEL_7:

  return v15;
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
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"_PASSubcommand. name:%@ help:%@", self->_name, self->_helpDescription];
  if ([(NSMutableArray *)self->_registeredOptions count])
  {
    [v3 appendFormat:@" Options:\n"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_registeredOptions;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"  %@\n", *(*(&v11 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_PASArgSubcommand)initWithName:(id)a3 help:(id)a4 handler:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 length])
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"helpDescription"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = _PASArgSubcommand;
  v13 = [(_PASArgSubcommand *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v14->_helpDescription, a4);
    v15 = MEMORY[0x1AC566DD0](v12);
    handler = v14->_handler;
    v14->_handler = v15;

    v17 = objc_opt_new();
    registeredOptions = v14->_registeredOptions;
    v14->_registeredOptions = v17;

    v19 = objc_opt_new();
    requiredOptions = v14->_requiredOptions;
    v14->_requiredOptions = v19;
  }

  return v14;
}

+ (id)simpleSubcommandWithHelpGenerator:(id)a3 name:(id)a4 help:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"_PASArgParser.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73___PASArgSubcommand_simpleSubcommandWithHelpGenerator_name_help_handler___block_invoke;
  v21[3] = &unk_1E77F1C40;
  v22 = v11;
  v23 = v14;
  v15 = v14;
  v16 = v11;
  v17 = [_PASArgSubcommand subcommandWithName:v12 help:v13 handler:v21];
  v18 = [_PASArgOption optionWithName:@"help" shortName:@"h" help:@"Display a help page."];
  [v17 registerOption:v18];

  return v17;
}

+ (_PASArgSubcommand)subcommandWithName:(id)a3 help:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 help:v9 handler:v8];

  return v11;
}

@end