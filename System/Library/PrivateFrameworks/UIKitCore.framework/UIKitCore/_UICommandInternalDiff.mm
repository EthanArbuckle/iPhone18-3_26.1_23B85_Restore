@interface _UICommandInternalDiff
- (id)_deletesForMenu:(id)menu;
- (id)_parentInsertsForMenu:(id)menu;
- (id)_replacementsForMenu:(id)menu;
- (void)deleteItem:(id)item inMenu:(id)menu;
- (void)deleteMenu:(id)menu;
- (void)insertAtStartElements:(id)elements atEndElements:(id)endElements inMenu:(id)menu;
- (void)insertBeforeElements:(id)elements afterElements:(id)afterElements aroundElement:(id)element inMenu:(id)menu;
- (void)insertFallbackBeforeElements:(id)elements fallbackAfterElements:(id)afterElements inMenu:(id)menu;
- (void)replaceItem:(id)item inMenu:(id)menu withElements:(id)elements;
@end

@implementation _UICommandInternalDiff

- (void)deleteMenu:(id)menu
{
  menuDeletes = self->_menuDeletes;
  if (menuDeletes)
  {
    [(NSMutableSet *)menuDeletes addObject:menu];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] setWithObject:menu];
    v6 = self->_menuDeletes;
    self->_menuDeletes = v5;
  }

  [(NSMutableDictionary *)self->_itemDeletes removeObjectForKey:menu];
  [(NSMutableDictionary *)self->_inserts removeObjectForKey:menu];
}

- (id)_deletesForMenu:(id)menu
{
  menuCopy = menu;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:menuCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    itemDeletes = self->_itemDeletes;
    if (itemDeletes)
    {
      v5 = [(NSMutableDictionary *)itemDeletes objectForKeyedSubscript:menuCopy];
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(NSMutableDictionary *)self->_itemDeletes setObject:v5 forKeyedSubscript:menuCopy];
      }
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:menuCopy];
      v8 = self->_itemDeletes;
      self->_itemDeletes = v7;
    }
  }

  return v5;
}

- (id)_parentInsertsForMenu:(id)menu
{
  menuCopy = menu;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:menuCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    inserts = self->_inserts;
    if (inserts)
    {
      v5 = [(NSMutableDictionary *)inserts objectForKeyedSubscript:menuCopy];
      if (!v5)
      {
        v5 = objc_alloc_init(_UICommandParentInserts);
        [(NSMutableDictionary *)self->_inserts setObject:v5 forKeyedSubscript:menuCopy];
      }
    }

    else
    {
      v5 = objc_alloc_init(_UICommandParentInserts);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:menuCopy];
      v8 = self->_inserts;
      self->_inserts = v7;
    }
  }

  return v5;
}

- (id)_replacementsForMenu:(id)menu
{
  menuCopy = menu;
  if (([(NSMutableSet *)self->_menuDeletes containsObject:menuCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    replacements = self->_replacements;
    if (replacements)
    {
      v5 = [(NSMutableDictionary *)replacements objectForKeyedSubscript:menuCopy];
      if (!v5)
      {
        v5 = objc_alloc_init(_UICommandParentReplacements);
        [(NSMutableDictionary *)self->_replacements setObject:v5 forKeyedSubscript:menuCopy];
      }
    }

    else
    {
      v5 = objc_alloc_init(_UICommandParentReplacements);
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v5 forKey:menuCopy];
      v8 = self->_replacements;
      self->_replacements = v7;
    }
  }

  return v5;
}

- (void)deleteItem:(id)item inMenu:(id)menu
{
  itemCopy = item;
  v7 = [(_UICommandInternalDiff *)self _deletesForMenu:menu];
  [v7 addObject:itemCopy];
}

- (void)replaceItem:(id)item inMenu:(id)menu withElements:(id)elements
{
  elementsCopy = elements;
  itemCopy = item;
  v10 = [(_UICommandInternalDiff *)self _replacementsForMenu:menu];
  [v10 _setReplacementElements:elementsCopy forElement:itemCopy];
}

- (void)insertAtStartElements:(id)elements atEndElements:(id)endElements inMenu:(id)menu
{
  endElementsCopy = endElements;
  elementsCopy = elements;
  v10 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:menu];
  [v10 _setAtStartElements:elementsCopy atEndElements:endElementsCopy];
}

- (void)insertBeforeElements:(id)elements afterElements:(id)afterElements aroundElement:(id)element inMenu:(id)menu
{
  elementCopy = element;
  afterElementsCopy = afterElements;
  elementsCopy = elements;
  v13 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:menu];
  [v13 _setBeforeElements:elementsCopy afterElements:afterElementsCopy aroundElement:elementCopy];
}

- (void)insertFallbackBeforeElements:(id)elements fallbackAfterElements:(id)afterElements inMenu:(id)menu
{
  afterElementsCopy = afterElements;
  elementsCopy = elements;
  v10 = [(_UICommandInternalDiff *)self _parentInsertsForMenu:menu];
  [v10 _addFallbackBeforeElements:elementsCopy fallbackAfterElements:afterElementsCopy];
}

@end