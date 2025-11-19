@interface CACLanguageModel
- (CACLanguageModel)initWithText:(id)a3 identifier:(id)a4 attributes:(id)a5;
- (__RXLanguageObject)createRXLanguageObjectRef;
- (id)_initWithLanguageModel:(id)a3;
- (id)_mutableAttributes;
- (id)_mutableChildren;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addChildLanguageModel:(id)a3;
- (void)logTreeDescriptionWithLevel:(int)a3;
- (void)setObject:(id)a3 forAttribute:(id)a4;
@end

@implementation CACLanguageModel

- (CACLanguageModel)initWithText:(id)a3 identifier:(id)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CACLanguageModel *)self init];
  v12 = v11;
  if (v11)
  {
    [(CACLanguageModel *)v11 setText:v8];
    [(CACLanguageModel *)v12 setIdentifier:v9];
    if ([v10 count])
    {
      v13 = [(CACLanguageModel *)v12 _mutableAttributes];
      [v13 addEntriesFromDictionary:v10];
    }
  }

  return v12;
}

- (id)_initWithLanguageModel:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v4 identifier];
  v7 = [v4 attributes];

  v8 = [(CACLanguageModel *)self initWithText:v5 identifier:v6 attributes:v7];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initWithLanguageModel:self];
}

- (id)_mutableAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  attributes = v2->_attributes;
  if (!attributes)
  {
    v4 = objc_opt_new();
    v5 = v2->_attributes;
    v2->_attributes = v4;

    attributes = v2->_attributes;
  }

  v6 = attributes;
  objc_sync_exit(v2);

  return v6;
}

- (id)_mutableChildren
{
  v2 = self;
  objc_sync_enter(v2);
  children = v2->_children;
  if (!children)
  {
    v4 = objc_opt_new();
    v5 = v2->_children;
    v2->_children = v4;

    children = v2->_children;
  }

  v6 = children;
  objc_sync_exit(v2);

  return v6;
}

- (void)addChildLanguageModel:(id)a3
{
  v4 = a3;
  v5 = [(CACLanguageModel *)self _mutableChildren];
  [v5 addObject:v4];
}

- (void)setObject:(id)a3 forAttribute:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CACLanguageModel *)self _mutableAttributes];
  [v8 setObject:v7 forKey:v6];
}

- (__RXLanguageObject)createRXLanguageObjectRef
{
  v3 = +[CACSpeechSystem speechSystem];
  v4 = [v3 createRXLanguageObjectRefFromCACLanguageModel:self];

  return v4;
}

- (void)logTreeDescriptionWithLevel:(int)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@">"];
      --v6;
    }

    while (v6);
  }

  v7 = CACLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CACLanguageModel *)self description];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_26B354000, v7, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_children;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) logTreeDescriptionWithLevel:{(a3 + 1), v14}];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_children count])
  {
    v3 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_children;
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

          v9 = [*(*(&v11 + 1) + 8 * i) description];
          [v3 appendFormat:@"%@\n", v9];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p '%@' ID: %@ Attributes: %@", self, self->_text, self->_identifier, self->_attributes];
  }

  return v3;
}

@end