@interface _PASArgSubcommandHandlerParams
- (_PASArgSubcommandHandlerParams)initWithSubcommand:(id)subcommand options:(id)options positionalArguments:(id)arguments;
@end

@implementation _PASArgSubcommandHandlerParams

- (_PASArgSubcommandHandlerParams)initWithSubcommand:(id)subcommand options:(id)options positionalArguments:(id)arguments
{
  subcommandCopy = subcommand;
  optionsCopy = options;
  argumentsCopy = arguments;
  v15.receiver = self;
  v15.super_class = _PASArgSubcommandHandlerParams;
  v12 = [(_PASArgSubcommandHandlerParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subcommand, subcommand);
    objc_storeStrong(&v13->_options, options);
    objc_storeStrong(&v13->_positionalArguments, arguments);
  }

  return v13;
}

@end