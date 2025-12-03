@interface _PASArgToplevelHandlerParams
- (_PASArgToplevelHandlerParams)initWithParser:(id)parser options:(id)options positionalArguments:(id)arguments;
@end

@implementation _PASArgToplevelHandlerParams

- (_PASArgToplevelHandlerParams)initWithParser:(id)parser options:(id)options positionalArguments:(id)arguments
{
  parserCopy = parser;
  optionsCopy = options;
  argumentsCopy = arguments;
  v15.receiver = self;
  v15.super_class = _PASArgToplevelHandlerParams;
  v12 = [(_PASArgToplevelHandlerParams *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parser, parser);
    objc_storeStrong(&v13->_options, options);
    objc_storeStrong(&v13->_positionalArguments, arguments);
  }

  return v13;
}

@end