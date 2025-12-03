@interface _PASArgSubcommand
+ (_PASArgSubcommand)subcommandWithName:(id)name help:(id)help handler:(id)handler;
+ (id)simpleSubcommandWithHelpGenerator:(id)generator name:(id)name help:(id)help handler:(id)handler;
- (_PASArgSubcommand)initWithName:(id)name help:(id)help handler:(id)handler;
- (id)customUsageHelpWithUsageOverride:(id)override positionalArgString:(id)string optionHelpOverride:(id)helpOverride additionalHelpText:(id)text;
- (id)description;
- (void)registerOption:(id)option;
@end

@implementation _PASArgSubcommand

- (id)customUsageHelpWithUsageOverride:(id)override positionalArgString:(id)string optionHelpOverride:(id)helpOverride additionalHelpText:(id)text
{
  overrideCopy = override;
  stringCopy = string;
  helpOverrideCopy = helpOverride;
  textCopy = text;
  v14 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@ -- %@\n\n", self->_name, self->_helpDescription];
  v15 = v14;
  if (overrideCopy)
  {
    [v14 appendString:overrideCopy];
    if (!stringCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  name = self->_name;
  optionShortHelp = [(_PASArgSubcommand *)self optionShortHelp];
  v21 = [v23 initWithFormat:@"Usage:\n%@ %@%@", processName, name, optionShortHelp];
  [v15 appendString:v21];

  if (stringCopy)
  {
LABEL_3:
    [v15 appendString:stringCopy];
    [v15 appendString:@"\n"];
  }

LABEL_4:
  if (helpOverrideCopy)
  {
    [v15 appendString:helpOverrideCopy];
    if (!textCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  optionLongHelp = [(_PASArgSubcommand *)self optionLongHelp];
  [v15 appendString:optionLongHelp];

  if (textCopy)
  {
LABEL_6:
    [v15 appendString:textCopy];
  }

LABEL_7:

  return v15;
}

- (void)registerOption:(id)option
{
  optionCopy = option;
  [(NSMutableArray *)self->_registeredOptions addObject:optionCopy];
  if ([optionCopy required])
  {
    requiredOptions = self->_requiredOptions;
    name = [optionCopy name];
    [(NSMutableSet *)requiredOptions addObject:name];
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

- (_PASArgSubcommand)initWithName:(id)name help:(id)help handler:(id)handler
{
  nameCopy = name;
  helpCopy = help;
  handlerCopy = handler;
  if ([nameCopy length])
  {
    if (helpCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"helpDescription"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];

  if (!helpCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = _PASArgSubcommand;
  v13 = [(_PASArgSubcommand *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_helpDescription, help);
    v15 = MEMORY[0x1AC566DD0](handlerCopy);
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

+ (id)simpleSubcommandWithHelpGenerator:(id)generator name:(id)name help:(id)help handler:(id)handler
{
  generatorCopy = generator;
  nameCopy = name;
  helpCopy = help;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73___PASArgSubcommand_simpleSubcommandWithHelpGenerator_name_help_handler___block_invoke;
  v21[3] = &unk_1E77F1C40;
  v22 = generatorCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = generatorCopy;
  v17 = [_PASArgSubcommand subcommandWithName:nameCopy help:helpCopy handler:v21];
  v18 = [_PASArgOption optionWithName:@"help" shortName:@"h" help:@"Display a help page."];
  [v17 registerOption:v18];

  return v17;
}

+ (_PASArgSubcommand)subcommandWithName:(id)name help:(id)help handler:(id)handler
{
  handlerCopy = handler;
  helpCopy = help;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy help:helpCopy handler:handlerCopy];

  return v11;
}

@end