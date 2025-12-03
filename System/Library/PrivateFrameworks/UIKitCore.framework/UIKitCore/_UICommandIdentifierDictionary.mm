@interface _UICommandIdentifierDictionary
- (BOOL)intersectsEntriesFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (_UICommandIdentifierDictionary)init;
- (_UICommandIdentifierDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersectingIdentifiersFromDictionary:(id)dictionary;
- (id)objectForAction:(SEL)action propertyList:(id)list;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)removeEntriesFromDictionary:(id)dictionary;
- (void)removeObjectForAction:(SEL)action propertyList:(id)list;
- (void)setObject:(id)object forAction:(SEL)action propertyList:(id)list;
@end

@implementation _UICommandIdentifierDictionary

- (_UICommandIdentifierDictionary)init
{
  v8.receiver = self;
  v8.super_class = _UICommandIdentifierDictionary;
  v2 = [(_UICommandIdentifierDictionary *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UISelectorDictionary);
    actionDictionary = v2->_actionDictionary;
    v2->_actionDictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionPropertyListDictionary = v2->_actionPropertyListDictionary;
    v2->_actionPropertyListDictionary = v5;
  }

  return v2;
}

- (_UICommandIdentifierDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _UICommandIdentifierDictionary;
  v5 = [(_UICommandIdentifierDictionary *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy[1] copy];
    actionDictionary = v5->_actionDictionary;
    v5->_actionDictionary = v6;

    v8 = [dictionaryCopy[2] mutableCopy];
    actionPropertyListDictionary = v5->_actionPropertyListDictionary;
    v5->_actionPropertyListDictionary = v8;
  }

  return v5;
}

- (id)objectForAction:(SEL)action propertyList:(id)list
{
  if (list)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    v5 = [_UICommandIdentifier identifierWithAction:action propertyList:?];
    v6 = [(NSMutableDictionary *)actionPropertyListDictionary objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = [(_UISelectorDictionary *)self->_actionDictionary objectForSelector:action];
  }

  return v6;
}

- (void)setObject:(id)object forAction:(SEL)action propertyList:(id)list
{
  if (list)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    objectCopy = object;
    objectCopy2 = [_UICommandIdentifier identifierWithAction:action propertyList:list];
    [(NSMutableDictionary *)actionPropertyListDictionary setObject:objectCopy forKeyedSubscript:?];
  }

  else
  {
    actionDictionary = self->_actionDictionary;
    objectCopy2 = object;
    [_UISelectorDictionary setObject:"setObject:forSelector:" forSelector:?];
  }
}

- (void)removeObjectForAction:(SEL)action propertyList:(id)list
{
  if (list)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    v7 = [_UICommandIdentifier identifierWithAction:action propertyList:?];
    [(NSMutableDictionary *)actionPropertyListDictionary removeObjectForKey:v7];
  }

  else
  {
    actionDictionary = self->_actionDictionary;

    [(_UISelectorDictionary *)actionDictionary removeObjectForSelector:action];
  }
}

- (BOOL)intersectsEntriesFromDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allSelectors = self->_actionPropertyListDictionary;
  v6 = [(NSMutableDictionary *)allSelectors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allSelectors);
        }

        v10 = [dictionaryCopy[2] objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];

        if (v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)allSelectors countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  allSelectors = [(_UISelectorDictionary *)self->_actionDictionary allSelectors];
  allSelectors2 = [dictionaryCopy[1] allSelectors];
  v12 = [(NSMutableDictionary *)allSelectors intersectsSet:allSelectors2];

LABEL_11:
  return v12;
}

- (id)intersectingIdentifiersFromDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DFA8];
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  dictionaryCopy = dictionary;
  allKeys = [(NSMutableDictionary *)actionPropertyListDictionary allKeys];
  v8 = [v4 setWithArray:allKeys];

  v9 = MEMORY[0x1E695DFD8];
  allKeys2 = [dictionaryCopy[2] allKeys];
  v11 = [v9 setWithArray:allKeys2];
  [v8 intersectSet:v11];

  allSelectors = [(_UISelectorDictionary *)self->_actionDictionary allSelectors];
  v13 = dictionaryCopy[1];

  allSelectors2 = [v13 allSelectors];
  [allSelectors intersectSet:allSelectors2];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72___UICommandIdentifierDictionary_intersectingIdentifiersFromDictionary___block_invoke;
  v17[3] = &unk_1E71074D8;
  v15 = v8;
  v18 = v15;
  [allSelectors enumerateSelectorsUsingBlock:v17];

  return v15;
}

- (void)removeEntriesFromDictionary:(id)dictionary
{
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  v5 = *(dictionary + 2);
  dictionaryCopy = dictionary;
  allKeys = [v5 allKeys];
  [(NSMutableDictionary *)actionPropertyListDictionary removeObjectsForKeys:allKeys];

  actionDictionary = self->_actionDictionary;
  v9 = dictionaryCopy[1];

  allSelectors = [v9 allSelectors];
  [(_UISelectorDictionary *)actionDictionary removeObjectsForSelectors:allSelectors];
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  v5 = *(dictionary + 2);
  dictionaryCopy = dictionary;
  [(NSMutableDictionary *)actionPropertyListDictionary addEntriesFromDictionary:v5];
  actionDictionary = self->_actionDictionary;
  v8 = dictionaryCopy[1];

  [(_UISelectorDictionary *)actionDictionary addEntriesFromDictionary:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UICommandIdentifierDictionary alloc];

  return [(_UICommandIdentifierDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UISelectorDictionary *)self->_actionDictionary isEqual:equalCopy[1]])
  {
    v5 = [(NSMutableDictionary *)self->_actionPropertyListDictionary isEqualToDictionary:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end