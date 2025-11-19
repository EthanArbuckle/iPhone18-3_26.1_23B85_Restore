@interface _UICommandIdentifierDictionary
- (BOOL)intersectsEntriesFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UICommandIdentifierDictionary)init;
- (_UICommandIdentifierDictionary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)intersectingIdentifiersFromDictionary:(id)a3;
- (id)objectForAction:(SEL)a3 propertyList:(id)a4;
- (void)addEntriesFromDictionary:(id)a3;
- (void)removeEntriesFromDictionary:(id)a3;
- (void)removeObjectForAction:(SEL)a3 propertyList:(id)a4;
- (void)setObject:(id)a3 forAction:(SEL)a4 propertyList:(id)a5;
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

- (_UICommandIdentifierDictionary)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UICommandIdentifierDictionary;
  v5 = [(_UICommandIdentifierDictionary *)&v11 init];
  if (v5)
  {
    v6 = [v4[1] copy];
    actionDictionary = v5->_actionDictionary;
    v5->_actionDictionary = v6;

    v8 = [v4[2] mutableCopy];
    actionPropertyListDictionary = v5->_actionPropertyListDictionary;
    v5->_actionPropertyListDictionary = v8;
  }

  return v5;
}

- (id)objectForAction:(SEL)a3 propertyList:(id)a4
{
  if (a4)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    v5 = [_UICommandIdentifier identifierWithAction:a3 propertyList:?];
    v6 = [(NSMutableDictionary *)actionPropertyListDictionary objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = [(_UISelectorDictionary *)self->_actionDictionary objectForSelector:a3];
  }

  return v6;
}

- (void)setObject:(id)a3 forAction:(SEL)a4 propertyList:(id)a5
{
  if (a5)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    v8 = a3;
    v10 = [_UICommandIdentifier identifierWithAction:a4 propertyList:a5];
    [(NSMutableDictionary *)actionPropertyListDictionary setObject:v8 forKeyedSubscript:?];
  }

  else
  {
    actionDictionary = self->_actionDictionary;
    v10 = a3;
    [_UISelectorDictionary setObject:"setObject:forSelector:" forSelector:?];
  }
}

- (void)removeObjectForAction:(SEL)a3 propertyList:(id)a4
{
  if (a4)
  {
    actionPropertyListDictionary = self->_actionPropertyListDictionary;
    v7 = [_UICommandIdentifier identifierWithAction:a3 propertyList:?];
    [(NSMutableDictionary *)actionPropertyListDictionary removeObjectForKey:v7];
  }

  else
  {
    actionDictionary = self->_actionDictionary;

    [(_UISelectorDictionary *)actionDictionary removeObjectForSelector:a3];
  }
}

- (BOOL)intersectsEntriesFromDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_actionPropertyListDictionary;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v4[2] objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];

        if (v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(_UISelectorDictionary *)self->_actionDictionary allSelectors];
  v11 = [v4[1] allSelectors];
  v12 = [(NSMutableDictionary *)v5 intersectsSet:v11];

LABEL_11:
  return v12;
}

- (id)intersectingIdentifiersFromDictionary:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  v6 = a3;
  v7 = [(NSMutableDictionary *)actionPropertyListDictionary allKeys];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v6[2] allKeys];
  v11 = [v9 setWithArray:v10];
  [v8 intersectSet:v11];

  v12 = [(_UISelectorDictionary *)self->_actionDictionary allSelectors];
  v13 = v6[1];

  v14 = [v13 allSelectors];
  [v12 intersectSet:v14];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72___UICommandIdentifierDictionary_intersectingIdentifiersFromDictionary___block_invoke;
  v17[3] = &unk_1E71074D8;
  v15 = v8;
  v18 = v15;
  [v12 enumerateSelectorsUsingBlock:v17];

  return v15;
}

- (void)removeEntriesFromDictionary:(id)a3
{
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  v5 = *(a3 + 2);
  v6 = a3;
  v7 = [v5 allKeys];
  [(NSMutableDictionary *)actionPropertyListDictionary removeObjectsForKeys:v7];

  actionDictionary = self->_actionDictionary;
  v9 = v6[1];

  v10 = [v9 allSelectors];
  [(_UISelectorDictionary *)actionDictionary removeObjectsForSelectors:v10];
}

- (void)addEntriesFromDictionary:(id)a3
{
  actionPropertyListDictionary = self->_actionPropertyListDictionary;
  v5 = *(a3 + 2);
  v6 = a3;
  [(NSMutableDictionary *)actionPropertyListDictionary addEntriesFromDictionary:v5];
  actionDictionary = self->_actionDictionary;
  v8 = v6[1];

  [(_UISelectorDictionary *)actionDictionary addEntriesFromDictionary:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UICommandIdentifierDictionary alloc];

  return [(_UICommandIdentifierDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UISelectorDictionary *)self->_actionDictionary isEqual:v4[1]])
  {
    v5 = [(NSMutableDictionary *)self->_actionPropertyListDictionary isEqualToDictionary:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end