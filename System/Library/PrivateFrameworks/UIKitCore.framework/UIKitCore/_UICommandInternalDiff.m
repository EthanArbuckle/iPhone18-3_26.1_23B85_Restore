@interface _UICommandInternalDiff
- (id)_deletesForMenu:(id)a3;
- (id)_parentInsertsForMenu:(id)a3;
- (id)_replacementsForMenu:(id)a3;
- (void)deleteItem:(id)a3 inMenu:(id)a4;
- (void)deleteMenu:(id)a3;
- (void)insertAtStartElements:(id)a3 atEndElements:(id)a4 inMenu:(id)a5;
- (void)insertBeforeElements:(id)a3 afterElements:(id)a4 aroundElement:(id)a5 inMenu:(id)a6;
- (void)insertFallbackBeforeElements:(id)a3 fallbackAfterElements:(id)a4 inMenu:(id)a5;
- (void)replaceItem:(id)a3 inMenu:(id)a4 withElements:(id)a5;
@end

@implementation _UICommandInternalDiff

- (void)deleteMenu:(id)a3
{
  menuDeletes = self->_menuDeletes;
  if (menuDeletes)
  {
    [(NSMutableSet *)menuDeletes addObject:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] setWithObject:a3];
    v6 = self->_menuDeletes;
    self->_menuDeletes = v5;
  }

  [(NSMutableDictionary *)self->_itemDeletes removeObjectForKey:a3];
  [(NSMutableDictionary *)self->_inserts removeObjectForKey:a3];
}

- (id)_deletesForMenu:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    itemDeletes = self->_itemDeletes;
    if (itemDeletes)
    {
      v5 = [(NSMutableDictionary *)itemDeletes objectForKeyedSubscript:v4];
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(NSMutableDictionary *)self->_itemDeletes setObject:v5 forKeyedSubscript:v4];
      }
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:v4];
      v8 = self->_itemDeletes;
      self->_itemDeletes = v7;
    }
  }

  return v5;
}

- (id)_parentInsertsForMenu:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    inserts = self->_inserts;
    if (inserts)
    {
      v5 = [(NSMutableDictionary *)inserts objectForKeyedSubscript:v4];
      if (!v5)
      {
        v5 = objc_alloc_init(_UICommandParentInserts);
        [(NSMutableDictionary *)self->_inserts setObject:v5 forKeyedSubscript:v4];
      }
    }

    else
    {
      v5 = objc_alloc_init(_UICommandParentInserts);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:v4];
      v8 = self->_inserts;
      self->_inserts = v7;
    }
  }

  return v5;
}

- (id)_replacementsForMenu:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    replacements = self->_replacements;
    if (replacements)
    {
      v5 = [(NSMutableDictionary *)replacements objectForKeyedSubscript:v4];
      if (!v5)
      {
        v5 = objc_alloc_init(_UICommandParentReplacements);
        [(NSMutableDictionary *)self->_replacements setObject:v5 forKeyedSubscript:v4];
      }
    }

    else
    {
      v5 = objc_alloc_init(_UICommandParentReplacements);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:v4];
      v8 = self->_replacements;
      self->_replacements = v7;
    }
  }

  return v5;
}

- (void)deleteItem:(id)a3 inMenu:(id)a4
{
  v6 = a3;
  v7 = [(_UICommandInternalDiff *)self _deletesForMenu:a4];
  [v7 addObject:v6];
}

- (void)replaceItem:(id)a3 inMenu:(id)a4 withElements:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_UICommandInternalDiff *)self _replacementsForMenu:a4];
  [v10 _setReplacementElements:v8 forElement:v9];
}

- (void)insertAtStartElements:(id)a3 atEndElements:(id)a4 inMenu:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:a5];
  [v10 _setAtStartElements:v9 atEndElements:v8];
}

- (void)insertBeforeElements:(id)a3 afterElements:(id)a4 aroundElement:(id)a5 inMenu:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:a6];
  [v13 _setBeforeElements:v12 afterElements:v11 aroundElement:v10];
}

- (void)insertFallbackBeforeElements:(id)a3 fallbackAfterElements:(id)a4 inMenu:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:a5];
  [v10 _addFallbackBeforeElements:v9 fallbackAfterElements:v8];
}

@end