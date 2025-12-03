@interface SRUIFTreeNodePropertyListSerialization
- (id)_propertyListWithTreeNode:(id)node itemPropertyListCreation:(id)creation;
- (id)_treeNodeWithPropertyList:(id)list error:(id *)error itemCreation:(id)creation;
- (id)propertyListWithTreeNode:(id)node itemPropertyListCreation:(id)creation;
- (id)treeNodeWithPropertyList:(id)list error:(id *)error itemCreation:(id)creation;
@end

@implementation SRUIFTreeNodePropertyListSerialization

- (id)_propertyListWithTreeNode:(id)node itemPropertyListCreation:(id)creation
{
  v25 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  creationCopy = creation;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  item = [nodeCopy item];
  v10 = item;
  if (creationCopy && item)
  {
    v11 = creationCopy[2](creationCopy, item);
    if (v11)
    {
      [dictionary setObject:v11 forKey:@"Item"];
    }

    else
    {
      v12 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[SRUIFTreeNodePropertyListSerialization _propertyListWithTreeNode:itemPropertyListCreation:]";
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, "%s item property list creation block returned nil for item %@", buf, 0x16u);
      }
    }
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodeCopy, "numberOfChildNodes")}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__SRUIFTreeNodePropertyListSerialization__propertyListWithTreeNode_itemPropertyListCreation___block_invoke;
  v18[3] = &unk_279C626E0;
  v19 = v13;
  v20 = creationCopy;
  v18[4] = self;
  v14 = v13;
  v15 = creationCopy;
  [nodeCopy enumerateChildNodesUsingBlock:v18];
  [dictionary setObject:v14 forKey:@"ChildNodes"];

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __93__SRUIFTreeNodePropertyListSerialization__propertyListWithTreeNode_itemPropertyListCreation___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _propertyListWithTreeNode:a2 itemPropertyListCreation:*(a1 + 48)];
  [*(a1 + 40) addObject:v3];
}

- (id)propertyListWithTreeNode:(id)node itemPropertyListCreation:(id)creation
{
  v4 = [(SRUIFTreeNodePropertyListSerialization *)self _propertyListWithTreeNode:node itemPropertyListCreation:creation];
  [v4 setObject:&unk_287A18CA8 forKey:@"Version"];

  return v4;
}

- (id)_treeNodeWithPropertyList:(id)list error:(id *)error itemCreation:(id)creation
{
  v39 = *MEMORY[0x277D85DE8];
  listCopy = list;
  creationCopy = creation;
  v10 = objc_alloc_init(SRUIFDictionarySchema);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__SRUIFTreeNodePropertyListSerialization__treeNodeWithPropertyList_error_itemCreation___block_invoke;
  v36[3] = &unk_279C62730;
  v36[4] = self;
  v11 = creationCopy;
  v37 = v11;
  v12 = [SRUIFCoercion coercionWithBlock:v36];
  [(SRUIFDictionarySchema *)v10 setObjectCoercion:v12 forKey:@"ChildNodes"];

  v13 = objc_alloc_init(SRUIFTreeNode);
  v14 = [(SRUIFDictionarySchema *)v10 coerceObject:listCopy error:error];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKey:@"Item"];
    v17 = 0;
    v30 = v16;
    v31 = listCopy;
    if (v11)
    {
      v18 = v16;
      if (v16)
      {
        v19 = (*(v11 + 2))(v11, v16);
        if (v19)
        {
          [(SRUIFTreeNode *)v13 setItem:v19];
          v17 = 0;
        }

        else
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Item creation block returned nil for %@", v18];
          v17 = [SRUIFConversationError errorWithCode:400 localizedFailureReason:v21];

          v13 = 0;
        }
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [v15 objectForKey:@"ChildNodes"];
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(SRUIFTreeNode *)v13 addChildNode:*(*(&v32 + 1) + 8 * i)];
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v24);
    }

    if (error)
    {
      v27 = v17;
      *error = v17;
    }

    v13 = v13;

    v20 = v13;
    listCopy = v31;
  }

  else
  {
    v20 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

id __87__SRUIFTreeNodePropertyListSerialization__treeNodeWithPropertyList_error_itemCreation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v6 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  v7 = v26;
  obj = v26[5];
  v8 = [v6 coerceObject:v5 error:&obj];
  objc_storeStrong(v7 + 5, obj);

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v10 = v20[5];
    v20[5] = v9;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__SRUIFTreeNodePropertyListSerialization__treeNodeWithPropertyList_error_itemCreation___block_invoke_13;
    v14[3] = &unk_279C62708;
    v11 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v16 = &v25;
    v15 = v11;
    v17 = &v19;
    [v8 enumerateObjectsUsingBlock:v14];
  }

  if (a3)
  {
    *a3 = v26[5];
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __87__SRUIFTreeNodePropertyListSerialization__treeNodeWithPropertyList_error_itemCreation___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [*(a1 + 32) _treeNodeWithPropertyList:a2 error:&obj itemCreation:*(a1 + 40)];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  if (v7)
  {
    [v9 addObject:v7];
  }

  else
  {
    *(v8 + 40) = 0;

    *a4 = 1;
  }
}

- (id)treeNodeWithPropertyList:(id)list error:(id *)error itemCreation:(id)creation
{
  creationCopy = creation;
  listCopy = list;
  v10 = objc_alloc_init(SRUIFDictionarySchema);
  v11 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v10 setObjectCoercion:v11 forKey:@"Version"];

  v12 = [(SRUIFDictionarySchema *)v10 coerceObject:listCopy error:error];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [v12 objectForKey:@"Version"];
  integerValue = [v13 integerValue];

  if (integerValue == 1)
  {
    error = [(SRUIFTreeNodePropertyListSerialization *)self _treeNodeWithPropertyList:v12 error:error itemCreation:creationCopy];
    goto LABEL_7;
  }

  if (error)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create tree node from property list with version %ld", integerValue];
    *error = [SRUIFConversationError errorWithCode:400 localizedFailureReason:v15];

LABEL_6:
    error = 0;
  }

LABEL_7:

  return error;
}

@end