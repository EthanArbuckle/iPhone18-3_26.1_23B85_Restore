@interface _UITabOutlineParser
- (_UITabOutlineParser)initWithTabs:(id)tabs includeAllowsHidingItems:(BOOL)items transaction:(id)transaction;
- (_UITabSidebarTransaction)transaction;
- (void)_parseNode:(id)node tabs:(id)tabs rootNode:(id)rootNode;
- (void)_parseTabs:(id)tabs;
@end

@implementation _UITabOutlineParser

- (_UITabOutlineParser)initWithTabs:(id)tabs includeAllowsHidingItems:(BOOL)items transaction:(id)transaction
{
  tabsCopy = tabs;
  transactionCopy = transaction;
  v17.receiver = self;
  v17.super_class = _UITabOutlineParser;
  v10 = [(_UITabOutlineParser *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_includeAllowsHidingItems = items;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentByIdentifier = v11->_contentByIdentifier;
    v11->_contentByIdentifier = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    allGroupIdentifiers = v11->_allGroupIdentifiers;
    v11->_allGroupIdentifiers = v14;

    objc_storeWeak(&v11->_transaction, transactionCopy);
    [(_UITabOutlineParser *)v11 _parseTabs:tabsCopy];
  }

  return v11;
}

- (void)_parseTabs:(id)tabs
{
  tabsCopy = tabs;
  v12 = [[_UITabOutlineNode alloc] initWithIdentifier:@"Root"];
  [(_UITabOutlineParser *)self _parseNode:v12 tabs:tabsCopy rootNode:v12];

  children = [(_UITabOutlineNode *)v12 children];

  if (children)
  {
    children2 = [(_UITabOutlineNode *)v12 children];
    v7 = [children2 indexesOfObjectsPassingTest:&__block_literal_global_483];

    children3 = [(_UITabOutlineNode *)v12 children];
    v9 = [(NSArray *)children3 objectsAtIndexes:v7];
    rootItems = self->_rootItems;
    self->_rootItems = v9;

    [(NSArray *)children3 removeObjectsAtIndexes:v7];
    groupItems = self->_groupItems;
    self->_groupItems = children3;
  }
}

- (void)_parseNode:(id)node tabs:(id)tabs rootNode:(id)rootNode
{
  v84 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  tabsCopy = tabs;
  rootNodeCopy = rootNode;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = tabsCopy;
  v9 = [tabsCopy countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v77;
    p_info = &OBJC_METACLASS___UIDraggingSystemSessionInfo.info;
    v56 = *v77;
    v57 = nodeCopy;
    do
    {
      v13 = 0;
      v59 = v10;
      do
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v13;
        v14 = *(*(&v76 + 1) + 8 * v13);
        _isGroup = [v14 _isGroup];
        v16 = v14;
        v17 = objc_alloc((p_info + 46));
        identifier = [v16 identifier];
        v19 = [v17 initWithIdentifier:identifier];

        [v19 setIsGroup:_isGroup];
        [v19 setIsDestination:{objc_msgSend(v16, "_isSidebarDestination")}];
        if (_isGroup)
        {
          allGroupIdentifiers = self->_allGroupIdentifiers;
          identifier2 = [v16 identifier];
          [(NSMutableSet *)allGroupIdentifiers addObject:identifier2];

          if ([v16 isCollapsedByDefault])
          {
            collapsedByDefaultGroupIdentifiers = self->_collapsedByDefaultGroupIdentifiers;
            if (!collapsedByDefaultGroupIdentifiers)
            {
              v23 = [MEMORY[0x1E695DFA8] set];
              v24 = self->_collapsedByDefaultGroupIdentifiers;
              self->_collapsedByDefaultGroupIdentifiers = v23;

              collapsedByDefaultGroupIdentifiers = self->_collapsedByDefaultGroupIdentifiers;
              v10 = v59;
            }

            identifier3 = [v16 identifier];
            [(NSMutableSet *)collapsedByDefaultGroupIdentifiers addObject:identifier3];
          }
        }

        v26 = [_UITabSidebarContent contentForTab:v16];
        [v26 setNode:v19];
        contentByIdentifier = self->_contentByIdentifier;
        identifier4 = [v16 identifier];
        [(NSMutableDictionary *)contentByIdentifier setObject:v26 forKeyedSubscript:identifier4];

        if (![v16 isHidden] || objc_msgSend(v16, "allowsHiding") && -[_UITabOutlineParser includeAllowsHidingItems](self, "includeAllowsHidingItems"))
        {
          if (_isGroup)
          {
            v61 = v26;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            sidebarActions = [v16 sidebarActions];
            v30 = [sidebarActions countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v73;
              do
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v73 != v32)
                  {
                    objc_enumerationMutation(sidebarActions);
                  }

                  v34 = *(*(&v72 + 1) + 8 * i);
                  v35 = [_UITabSidebarContent contentForAction:v34 group:v16];
                  v36 = self->_contentByIdentifier;
                  identifier5 = [v34 identifier];
                  [(NSMutableDictionary *)v36 setObject:v35 forKeyedSubscript:identifier5];

                  identifier6 = [v34 identifier];
                  [v19 addActionIdentifier:identifier6];
                }

                v31 = [sidebarActions countByEnumeratingWithState:&v72 objects:v82 count:16];
              }

              while (v31);
            }

            sidebarAppearance = [v16 sidebarAppearance];
            nodeCopy = v57;
            v40 = rootNodeCopy;
            if (sidebarAppearance == 2 || (v41 = [v16 sidebarAppearance], v40 = v57, !v41))
            {
              [v40 addChild:v19];
            }

            WeakRetained = objc_loadWeakRetained(&self->_transaction);
            identifier7 = [v16 identifier];
            v44 = [WeakRetained currentDisplayOrderForGroupWithIdentifier:identifier7];

            v45 = [v16 _orderedChildrenForDisplayOrder:v44];
            [(_UITabOutlineParser *)self _parseNode:v19 tabs:v45 rootNode:rootNodeCopy];
            if ([v16 sidebarAppearance] == 1)
            {
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              children = [v19 children];
              v47 = [children countByEnumeratingWithState:&v68 objects:v81 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v69;
                do
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v69 != v49)
                    {
                      objc_enumerationMutation(children);
                    }

                    [v57 addChild:*(*(&v68 + 1) + 8 * j)];
                  }

                  v48 = [children countByEnumeratingWithState:&v68 objects:v81 count:16];
                }

                while (v48);
              }

              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              actions = [v19 actions];
              v52 = [actions countByEnumeratingWithState:&v64 objects:v80 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v65;
                do
                {
                  for (k = 0; k != v53; ++k)
                  {
                    if (*v65 != v54)
                    {
                      objc_enumerationMutation(actions);
                    }

                    [v57 addActionIdentifier:*(*(&v64 + 1) + 8 * k)];
                  }

                  v53 = [actions countByEnumeratingWithState:&v64 objects:v80 count:16];
                }

                while (v53);
              }
            }

            v11 = v56;
            p_info = (&OBJC_METACLASS___UIDraggingSystemSessionInfo + 32);
            v10 = v59;
            v26 = v61;
          }

          else
          {
            [nodeCopy addChild:v19];
          }
        }

        v13 = v62 + 1;
      }

      while (v62 + 1 != v10);
      v10 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v10);
  }
}

- (_UITabSidebarTransaction)transaction
{
  WeakRetained = objc_loadWeakRetained(&self->_transaction);

  return WeakRetained;
}

@end