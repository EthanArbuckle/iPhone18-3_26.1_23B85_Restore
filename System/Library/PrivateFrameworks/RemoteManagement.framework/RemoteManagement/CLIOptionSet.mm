@interface CLIOptionSet
- (CLIOptionSet)init;
- (CLIOptionSet)initWithOptions:(id)options;
- (id)_copiedSet;
- (void)_registerOption:(id)option;
@end

@implementation CLIOptionSet

- (CLIOptionSet)init
{
  v10.receiver = self;
  v10.super_class = CLIOptionSet;
  v2 = [(CLIOptionSet *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    options = v2->_options;
    v2->_options = v3;

    v5 = objc_opt_new();
    shortAliasToOptionDict = v2->_shortAliasToOptionDict;
    v2->_shortAliasToOptionDict = v5;

    v7 = objc_opt_new();
    longAliasToOptionDict = v2->_longAliasToOptionDict;
    v2->_longAliasToOptionDict = v7;
  }

  return v2;
}

- (CLIOptionSet)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(CLIOptionSet *)self init];
  if (v5)
  {
    v6 = objc_opt_new();
    options = v5->_options;
    v5->_options = v6;

    v8 = objc_opt_new();
    shortAliasToOptionDict = v5->_shortAliasToOptionDict;
    v5->_shortAliasToOptionDict = v8;

    v10 = objc_opt_new();
    longAliasToOptionDict = v5->_longAliasToOptionDict;
    v5->_longAliasToOptionDict = v10;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = optionsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(CLIOptionSet *)v5 _registerOption:*(*(&v18 + 1) + 8 * v16), v18];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (void)_registerOption:(id)option
{
  optionCopy = option;
  [optionCopy _finalize];
  if ([(NSMutableSet *)self->_options containsObject:optionCopy])
  {
    sub_1000109F8();
  }

  [(NSMutableSet *)self->_options addObject:optionCopy];
  shortName = [optionCopy shortName];
  if (shortName)
  {
    v5 = [(NSMutableDictionary *)self->_shortAliasToOptionDict objectForKeyedSubscript:shortName];

    if (v5)
    {
      sub_100010A64();
    }

    [(NSMutableDictionary *)self->_shortAliasToOptionDict setObject:optionCopy forKeyedSubscript:shortName];
  }

  longName = [optionCopy longName];
  if (longName)
  {
    v7 = [(NSMutableDictionary *)self->_longAliasToOptionDict objectForKeyedSubscript:longName];

    if (v7)
    {
      sub_100010ADC();
    }

    [(NSMutableDictionary *)self->_longAliasToOptionDict setObject:optionCopy forKeyedSubscript:longName];
  }
}

- (id)_copiedSet
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_options;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copy];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end