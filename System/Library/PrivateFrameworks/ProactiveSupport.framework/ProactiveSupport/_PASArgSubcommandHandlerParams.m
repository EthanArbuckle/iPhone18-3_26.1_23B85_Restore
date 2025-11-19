@interface _PASArgSubcommandHandlerParams
- (_PASArgSubcommandHandlerParams)initWithSubcommand:(id)a3 options:(id)a4 positionalArguments:(id)a5;
@end

@implementation _PASArgSubcommandHandlerParams

- (_PASArgSubcommandHandlerParams)initWithSubcommand:(id)a3 options:(id)a4 positionalArguments:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _PASArgSubcommandHandlerParams;
  v12 = [(_PASArgSubcommandHandlerParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subcommand, a3);
    objc_storeStrong(&v13->_options, a4);
    objc_storeStrong(&v13->_positionalArguments, a5);
  }

  return v13;
}

@end