@interface _RESymbolDefinition
- (_RESymbolDefinition)initWithToken:(id)a3 type:(unint64_t)a4 options:(id)a5;
@end

@implementation _RESymbolDefinition

- (_RESymbolDefinition)initWithToken:(id)a3 type:(unint64_t)a4 options:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _RESymbolDefinition;
  v11 = [(_RESymbolDefinition *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_token, a3);
    v12->_type = a4;
    if (v10)
    {
      v13 = v10;
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