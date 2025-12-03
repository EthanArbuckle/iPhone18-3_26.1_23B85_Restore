@interface _RESymbolDefinition
- (_RESymbolDefinition)initWithToken:(id)token type:(unint64_t)type options:(id)options;
@end

@implementation _RESymbolDefinition

- (_RESymbolDefinition)initWithToken:(id)token type:(unint64_t)type options:(id)options
{
  tokenCopy = token;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = _RESymbolDefinition;
  v11 = [(_RESymbolDefinition *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_token, token);
    v12->_type = type;
    if (optionsCopy)
    {
      v13 = optionsCopy;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v12->_options, v13);
  }

  return v12;
}

@end