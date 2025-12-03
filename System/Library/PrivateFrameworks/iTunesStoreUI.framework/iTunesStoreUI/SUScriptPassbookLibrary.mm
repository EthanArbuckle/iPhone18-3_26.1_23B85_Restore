@interface SUScriptPassbookLibrary
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSArray)passes;
- (SUScriptPassbookLibrary)initWithPassLibrary:(id)library;
- (id)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptPassbookLibrary

- (SUScriptPassbookLibrary)initWithPassLibrary:(id)library
{
  v6.receiver = self;
  v6.super_class = SUScriptPassbookLibrary;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_passLibrary = library;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptPassbookLibrary;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    number = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    identifier = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    number = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  }

  v7 = [(PKPassLibrary *)self->_passLibrary passWithPassTypeIdentifier:identifier serialNumber:number];
  if (v7)
  {
    v7 = [[SUScriptPassbookPass alloc] initWithPass:v7];
    [(SUScriptObject *)self checkInScriptObject:v7];
  }

  return v7;
}

- (NSArray)passes
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  passes = [(PKPassLibrary *)self->_passLibrary passes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)passes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(passes);
        }

        v9 = [[SUScriptPassbookPass alloc] initWithPass:*(*(&v11 + 1) + 8 * v8)];
        [(NSArray *)array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)passes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SUScriptObject *)self checkInScriptObjects:array];
  return array;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_43 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPassbookLibrary;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_34, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPassbookLibrary;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPassbookLibrary;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_43 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_34 = sel_passWithPassTypeIdentifier_serialNumber_;
    unk_1EBF3B1E0 = @"getPass";
    __KeyMapping_43 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"passes", 0}];
  }
}

@end