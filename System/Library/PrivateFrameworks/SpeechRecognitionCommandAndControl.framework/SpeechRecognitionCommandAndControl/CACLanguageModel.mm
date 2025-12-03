@interface CACLanguageModel
- (CACLanguageModel)initWithText:(id)text identifier:(id)identifier attributes:(id)attributes;
- (__RXLanguageObject)createRXLanguageObjectRef;
- (id)_initWithLanguageModel:(id)model;
- (id)_mutableAttributes;
- (id)_mutableChildren;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addChildLanguageModel:(id)model;
- (void)logTreeDescriptionWithLevel:(int)level;
- (void)setObject:(id)object forAttribute:(id)attribute;
@end

@implementation CACLanguageModel

- (CACLanguageModel)initWithText:(id)text identifier:(id)identifier attributes:(id)attributes
{
  textCopy = text;
  identifierCopy = identifier;
  attributesCopy = attributes;
  v11 = [(CACLanguageModel *)self init];
  v12 = v11;
  if (v11)
  {
    [(CACLanguageModel *)v11 setText:textCopy];
    [(CACLanguageModel *)v12 setIdentifier:identifierCopy];
    if ([attributesCopy count])
    {
      _mutableAttributes = [(CACLanguageModel *)v12 _mutableAttributes];
      [_mutableAttributes addEntriesFromDictionary:attributesCopy];
    }
  }

  return v12;
}

- (id)_initWithLanguageModel:(id)model
{
  modelCopy = model;
  text = [modelCopy text];
  identifier = [modelCopy identifier];
  attributes = [modelCopy attributes];

  v8 = [(CACLanguageModel *)self initWithText:text identifier:identifier attributes:attributes];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithLanguageModel:self];
}

- (id)_mutableAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attributes = selfCopy->_attributes;
  if (!attributes)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_attributes;
    selfCopy->_attributes = v4;

    attributes = selfCopy->_attributes;
  }

  v6 = attributes;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)_mutableChildren
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  children = selfCopy->_children;
  if (!children)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_children;
    selfCopy->_children = v4;

    children = selfCopy->_children;
  }

  v6 = children;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)addChildLanguageModel:(id)model
{
  modelCopy = model;
  _mutableChildren = [(CACLanguageModel *)self _mutableChildren];
  [_mutableChildren addObject:modelCopy];
}

- (void)setObject:(id)object forAttribute:(id)attribute
{
  attributeCopy = attribute;
  objectCopy = object;
  _mutableAttributes = [(CACLanguageModel *)self _mutableAttributes];
  [_mutableAttributes setObject:objectCopy forKey:attributeCopy];
}

- (__RXLanguageObject)createRXLanguageObjectRef
{
  v3 = +[CACSpeechSystem speechSystem];
  v4 = [v3 createRXLanguageObjectRefFromCACLanguageModel:self];

  return v4;
}

- (void)logTreeDescriptionWithLevel:(int)level
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (level >= 1)
  {
    levelCopy = level;
    do
    {
      [v5 appendString:@">"];
      --levelCopy;
    }

    while (levelCopy);
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

        [*(*(&v14 + 1) + 8 * v13++) logTreeDescriptionWithLevel:{(level + 1), v14}];
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