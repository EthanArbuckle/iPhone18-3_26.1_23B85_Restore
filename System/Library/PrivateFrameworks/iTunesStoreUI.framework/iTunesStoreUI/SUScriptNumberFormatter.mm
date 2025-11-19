@interface SUScriptNumberFormatter
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)localeIdentifier;
- (NSString)style;
- (SUScriptNumberFormatter)init;
- (id)numberFromString:(id)a3;
- (id)scriptAttributeKeys;
- (id)stringFromNumber:(id)a3;
- (void)dealloc;
- (void)setLocaleIdentifier:(id)a3;
- (void)setStyle:(id)a3;
@end

@implementation SUScriptNumberFormatter

- (SUScriptNumberFormatter)init
{
  v5.receiver = self;
  v5.super_class = SUScriptNumberFormatter;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v2->_numberFormatter = v3;
    [(NSNumberFormatter *)v3 setNumberStyle:1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptNumberFormatter;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)numberFromString:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v5 = [(NSNumberFormatter *)self->_numberFormatter numberFromString:a3];
    [(SUScriptObject *)self unlock];
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v7 = MEMORY[0x1E695DFB0];

  return [v7 null];
}

- (id)stringFromNumber:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v5 = [(NSNumberFormatter *)self->_numberFormatter stringFromNumber:a3];
    [(SUScriptObject *)self unlock];
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v7 = MEMORY[0x1E695DFB0];

  return [v7 null];
}

- (NSString)localeIdentifier
{
  [(SUScriptObject *)self lock];
  v3 = [(NSLocale *)[(NSNumberFormatter *)self->_numberFormatter locale] localeIdentifier];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setLocaleIdentifier:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:a3];
    if (v5)
    {
      v8 = v5;
      [(SUScriptObject *)self lock];
      [(NSNumberFormatter *)self->_numberFormatter setLocale:v8];
      [(SUScriptObject *)self unlock];

      return;
    }

    v6 = MEMORY[0x1E69E2F88];
    v7 = @"Unknown locale";
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];
    v7 = @"Invalid argument";
  }

  [v6 throwException:v7];
}

- (void)setStyle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 1;
  if (a3 && (isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([a3 isEqualToString:@"decimal"])
    {
LABEL_2:
      v5 = 1;
      goto LABEL_3;
    }

    if ([a3 isEqualToString:@"none"])
    {
      v5 = 0;
    }

    else if ([a3 isEqualToString:@"currency"])
    {
      v5 = 2;
    }

    else if ([a3 isEqualToString:@"percent"])
    {
      v5 = 3;
    }

    else if ([a3 isEqualToString:@"scientific"])
    {
      v5 = 4;
    }

    else if ([a3 isEqualToString:@"spell-out"])
    {
      v5 = 5;
    }

    else
    {
      v5 = 1;
    }
  }

LABEL_3:
  [(SUScriptObject *)self lock];
  [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:v5];

  [(SUScriptObject *)self unlock];
}

- (NSString)style
{
  [(SUScriptObject *)self lock];
  v3 = [(NSNumberFormatter *)self->_numberFormatter numberStyle];
  [(SUScriptObject *)self unlock];
  if (v3 > NSNumberFormatterSpellOutStyle)
  {
    return @"decimal";
  }

  else
  {
    return &off_1E81659D8[v3]->isa;
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_27 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptNumberFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_22, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptNumberFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptNumberFormatter;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_27 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_22 = sel_numberFromString_;
    unk_1EBF3AD00 = @"numberFromString";
    qword_1EBF3AD08 = sel_stringFromNumber_;
    unk_1EBF3AD10 = @"stringFromNumber";
    __KeyMapping_27 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"localeIdentifier", @"style", @"style", 0}];
  }
}

@end