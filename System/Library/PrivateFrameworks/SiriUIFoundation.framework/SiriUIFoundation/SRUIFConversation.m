@interface SRUIFConversation
- (BOOL)_nodeContainsProvisionalItems:(id)a3;
- (BOOL)containsItemForAceViewWithIdentifier:(id)a3;
- (BOOL)containsItemWithIdentifier:(id)a3;
- (BOOL)hasItemWithIdentifier:(id)a3;
- (BOOL)itemAtIndexPathIsVirgin:(id)a3;
- (SRUIFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4;
- (SRUIFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4 rootNode:(id)a5;
- (SRUIFConversation)initWithLanguageCode:(id)a3;
- (SRUIFConversation)initWithPropertyListRepresentation:(id)a3;
- (SRUIFConversationDelegate)delegate;
- (id)_changePresentationStateForNodes:(id)a3;
- (id)_childOfNode:(id)a3 withItemWhichCanBeUpdatedWithAceObject:(id)a4 inDialogPhase:(id)a5;
- (id)_indexPathForItemWithIdentifier:(id)a3 ignoreNonExistent:(BOOL)a4;
- (id)_indexPathsForAddingItemsWithCount:(int64_t)a3 asChildrenOfItemWithIdentifier:(id)a4;
- (id)_itemAtIndexPath:(id)a3;
- (id)_nodeAtIndexPath:(id)a3;
- (id)aceCommandIdentifierForItemAtIndexPath:(id)a3;
- (id)aceObjectForItemAtIndexPath:(id)a3;
- (id)additionalSpeechInterpretationsForRefId:(id)a3;
- (id)dialogPhaseForItemAtIndexPath:(id)a3;
- (id)identifierOfItemAtIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)itemWithIdentifier:(id)a3;
- (id)itemsRelatedToIdentifier:(id)a3;
- (id)lastItem;
- (id)parentOfItemWithIdentifier:(id)a3;
- (id)propertyListRepresentation;
- (int64_t)numberOfChildrenForItemAtIndexPath:(id)a3;
- (int64_t)numberOfChildrenForItemWithIdentifier:(id)a3;
- (int64_t)presentationStateForItemAtIndexPath:(id)a3;
- (int64_t)typeForItemAtIndexPath:(id)a3;
- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 aceCommandIdentifier:(id)a5 dialogPhase:(id)a6 asChildrenOfItemWithIdentifier:(id)a7;
- (void)_addItemsForAceViews:(id)a3 withDialogPhase:(id)a4 fromCommandWithIdentifier:(id)a5 atIndexPaths:(id)a6 isSupplemental:(BOOL)a7 isImmersiveExperience:(BOOL)a8;
- (void)_enumerateItemsUsingBlock:(id)a3;
- (void)_processInsertions:(id)a3 inDialogPhase:(id)a4;
- (void)_removeNodes:(id)a3;
- (void)addAdditionalSpeechInterpretation:(id)a3 refId:(id)a4;
- (void)addItemForMusicStartSessionCommand:(id)a3;
- (void)addItemForPartialResultCommand:(id)a3;
- (void)addItemForSpeechRecognizedCommand:(id)a3;
- (void)addItemsForAddViewsCommand:(id)a3;
- (void)addItemsForShowHelpCommand:(id)a3;
- (void)addRecognitionUpdateWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5;
- (void)addSelectionResponse:(id)a3;
- (void)cancelItemWithIdentifier:(id)a3;
- (void)notifyDelegateOfUpdates:(id)a3 inserts:(id)a4 presentationChanges:(id)a5;
- (void)removeItemsAtIndexPaths:(id)a3;
- (void)removeItemsFollowingItemAtIndexPath:(id)a3;
- (void)removeItemsWithIdentifiers:(id)a3;
- (void)removeTransientItems;
- (void)updateWithUpdateViewsCommand:(id)a3;
@end

@implementation SRUIFConversation

- (SRUIFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4 rootNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SRUIFConversation;
  v11 = [(SRUIFConversation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rootNode, a5);
    v14 = [v9 copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v14;

    v11->_synchronizedWithServer = 1;
  }

  return v11;
}

- (SRUIFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SRUIFTreeNode);
  v9 = [(SRUIFConversation *)self initWithIdentifier:v7 languageCode:v6 rootNode:v8];

  return v9;
}

- (SRUIFConversation)initWithLanguageCode:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(SRUIFConversation *)self initWithIdentifier:v6 languageCode:v5];

  return v7;
}

- (id)_nodeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFConversation *)self _rootNode];
  v6 = [v5 nodeAtIndexPath:v4];

  return v6;
}

- (id)_itemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _nodeAtIndexPath:a3];
  v4 = [v3 item];

  return v4;
}

- (void)_removeNodes:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__SRUIFConversation__removeNodes___block_invoke;
    aBlock[3] = &unk_279C62270;
    v26 = v5;
    v39 = v26;
    v40 = self;
    v23 = self;
    v25 = v6;
    v41 = v25;
    v24 = v7;
    v42 = v24;
    v8 = _Block_copy(aBlock);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v8[2](v8, v14);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __34__SRUIFConversation__removeNodes___block_invoke_2;
          v32[3] = &unk_279C62298;
          v15 = v8;
          v32[4] = v14;
          v33 = v15;
          [v14 enumerateDescendentNodesUsingBlock:v32];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v11);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v28 + 1) + 8 * j) removeFromParentNode];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
      }

      while (v18);
    }

    if ([v26 count])
    {
      v21 = [(SRUIFConversation *)v23 delegate];
      [v21 conversation:v23 didRemoveItemsWithIdentifiers:v26 atIndexPaths:v25 parentItemIdentifiers:v24];
    }

    v4 = v27;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __34__SRUIFConversation__removeNodes___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 item];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v14 parentNode];
    v7 = [*(a1 + 40) _rootNode];
    if (v6 == v7)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v8 = [v6 item];
      v9 = [v8 identifier];
    }

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v3 identifier];
      [v10 addObject:v11];

      v12 = *(a1 + 48);
      v13 = [v14 absoluteIndexPath];
      [v12 addObject:v13];

      [*(a1 + 56) addObject:v9];
    }
  }
}

- (id)_childOfNode:(id)a3 withItemWhichCanBeUpdatedWithAceObject:(id)a4 inDialogPhase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  if ([(SRUIFConversation *)self _nodeContainsProvisionalItems:v8])
  {
    v11 = [v10 isConfirmedDialogPhase];
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke;
  aBlock[3] = &unk_279C622C0;
  v23 = v11;
  v12 = v9;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2;
  v17[3] = &unk_279C622E8;
  v20 = v11;
  v14 = v13;
  v18 = v14;
  v19 = &v24;
  [v8 enumerateChildNodesWithOptions:2 usingBlock:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

uint64_t __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dialogPhase];
  v5 = [v3 presentationState];
  v6 = [v3 aceObject];

  v7 = [v4 isExpository];
  v8 = v7;
  if (v5 == 2)
  {
    v8 = *(a1 + 40) | v7;
  }

  if (([v4 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v4, "isClarificationDialogPhase"))
  {
    v9 = [*(a1 + 32) af_isUtterance] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(a1 + 32) encodedClassName];
  v11 = [v6 encodedClassName];
  if ([v10 isEqualToString:v11])
  {
    v12 = [*(a1 + 32) groupIdentifier];
    v13 = [v6 groupIdentifier];
    v14 = [v12 isEqualToString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v9 & v8 & v14;
}

void __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 item];
  v8 = v7;
  if ((*(a1 + 48) & 1) != 0 || ([v7 dialogPhase], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isUserRequestDialogPhase"), v9, (v10 & 1) == 0))
  {
    if (!(*(*(a1 + 32) + 16))())
    {
      goto LABEL_6;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = 1;
LABEL_6:
}

- (void)_processInsertions:(id)a3 inDialogPhase:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CEF098];
  if (!v6)
  {
    v6 = +[SRUIFDialogPhase completionDialogPhase];
    v8 = *v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[SRUIFConversation _processInsertions:inDialogPhase:]";
      v62 = 2112;
      v63 = v6;
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s No dialog phase provided for conversation insertions; defaulting to %@", buf, 0x16u);
    }
  }

  if (([v6 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v6, "isClarificationDialogPhase"))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v38 = v9;
  v40 = [MEMORY[0x277CBEB40] orderedSet];
  v10 = [MEMORY[0x277CBEB40] orderedSet];
  v37 = [MEMORY[0x277CBEB40] orderedSet];
  v35 = [MEMORY[0x277CBEB40] orderedSet];
  v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke;
  v57[3] = &unk_279C62310;
  v12 = self;
  v57[4] = self;
  v13 = v11;
  v58 = v13;
  [v41 enumerateObjectsUsingBlock:v57];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = v13;
  obj = [v13 keyEnumerator];
  v14 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      v17 = 0;
      do
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v53 + 1) + 8 * v17);
        v19 = [v39 objectForKey:v18];
        v20 = [v41 sruif_arrayByMappingWithBlock:&__block_literal_global_2];
        if (([v6 isExpository] & 1) == 0 && (objc_msgSend(v6, "isConfirmedDialogPhase") & 1) == 0 && ((objc_msgSend(v20, "containsObject:", &unk_287A18C00) & 1) != 0 || (objc_msgSend(v20, "containsObject:", &unk_287A18C18) & 1) != 0 || objc_msgSend(v20, "containsObject:", &unk_287A18C30)) && -[SRUIFConversation _nodeContainsProvisionalItems:](v12, "_nodeContainsProvisionalItems:", v18))
        {
          if (([v6 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v6, "isClarificationDialogPhase"))
          {
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_18;
            v51[3] = &unk_279C62358;
            v52 = v37;
            [v18 enumerateChildNodesUsingBlock:v51];
            v21 = &v52;
          }

          else
          {
            if ([v6 isSummaryDialogPhase])
            {
              goto LABEL_23;
            }

            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_2_19;
            v49[3] = &unk_279C62358;
            v50 = v35;
            [v18 enumerateChildNodesWithOptions:2 usingBlock:v49];
            v21 = &v50;
          }
        }

LABEL_23:
        if (([v20 containsObject:&unk_287A18C00] & 1) != 0 || objc_msgSend(v20, "containsObject:", &unk_287A18C18))
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_3;
          v47[3] = &unk_279C62358;
          v48 = v37;
          [v18 enumerateChildNodesUsingBlock:v47];
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_4;
        v42[3] = &unk_279C62380;
        v42[4] = v12;
        v42[5] = v18;
        v43 = v6;
        v46 = v38;
        v44 = v10;
        v45 = v40;
        [v19 enumerateObjectsUsingBlock:v42];

        ++v17;
      }

      while (v15 != v17);
      v22 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      v15 = v22;
    }

    while (v22);
  }

  if ([v10 count])
  {
    v23 = [v10 array];
    v24 = [SRUIFTreeNode absoluteIndexPathsForTreeNodes:v23];
  }

  else
  {
    v24 = 0;
  }

  if ([v40 count])
  {
    v25 = [v40 array];
    v26 = [SRUIFTreeNode absoluteIndexPathsForTreeNodes:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = v12;
  if ([v35 count])
  {
    v28 = [v35 array];
    v29 = [(SRUIFConversation *)v27 _changePresentationStateForNodes:v28];
  }

  else
  {
    v29 = 0;
  }

  [(SRUIFConversation *)v27 notifyDelegateOfUpdates:v24 inserts:v26 presentationChanges:v29];
  if ([v37 count])
  {
    v30 = [v37 array];
    [(SRUIFConversation *)v27 _removeNodes:v30];
  }

  v31 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    v33 = [(SRUIFConversation *)v27 _rootNode];
    *buf = 136315394;
    v61 = "[SRUIFConversation _processInsertions:inDialogPhase:]";
    v62 = 2112;
    v63 = v33;
    _os_log_impl(&dword_26951F000, v32, OS_LOG_TYPE_DEFAULT, "%s rootNode=%@", buf, 0x16u);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 indexPath];
  v4 = *(a1 + 32);
  v5 = [v3 indexPathByRemovingLastIndex];
  v6 = [v4 _nodeAtIndexPath:v5];

  v7 = [*(a1 + 40) objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 40) setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

uint64_t __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 conversationItemType];

  return [v2 numberWithInteger:v3];
}

void __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_18(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 item];
  if ([v3 presentationState] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 af_isUtterance];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_2_19(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 item];
  v7 = [v6 dialogPhase];
  if ([v7 isConfirmationDialogPhase])
  {
    v8 = [v6 aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if ([v6 presentationState] == 2)
      {
        [v6 setPresentationState:3];
        [*(a1 + 32) addObject:v10];
      }

      *a4 = 1;
    }
  }

  else
  {
  }
}

void __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_4(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 indexPath];
  v5 = [v3 aceObject];
  v6 = [v3 conversationItemType];
  v7 = [v3 aceCommandIdentifier];
  v8 = [v3 isTransient];
  v9 = [v3 isSupplemental];
  v10 = [v3 isImmersiveExperience];

  v11 = [*(a1 + 32) _childOfNode:*(a1 + 40) withItemWhichCanBeUpdatedWithAceObject:v5 inDialogPhase:*(a1 + 48)];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v34 = "[SRUIFConversation _processInsertions:inDialogPhase:]_block_invoke_4";
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_INFO, "%s ACE object: %@", buf, 0x16u);
  }

  if (v11)
  {
    v13 = [v11 item];
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 136315906;
      v34 = "[SRUIFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_26951F000, v14, OS_LOG_TYPE_DEFAULT, "%s %@: updating item %@ at %@ from ACE object.", buf, 0x2Au);
    }

    [(SRUIFTreeNode *)v13 setAceObject:v5];
    [(SRUIFTreeNode *)v13 setDialogPhase:*(a1 + 48)];
    [(SRUIFTreeNode *)v13 setPresentationState:*(a1 + 72)];
    [(SRUIFTreeNode *)v13 setAceCommandIdentifier:v7];
    [(SRUIFTreeNode *)v13 setTransient:v8];
    [(SRUIFTreeNode *)v13 setSupplemental:v9];
    [(SRUIFTreeNode *)v13 setImmersiveExperience:v10];
    [*(a1 + 56) addObject:v11];
  }

  else
  {
    v13 = objc_alloc_init(SRUIFTreeNode);
    [*(a1 + 40) addChildNode:v13];
    v16 = v5;
    v17 = v4;
    v18 = [SRUIFMutableConversationItem alloc];
    v32 = v7;
    v19 = *(a1 + 48);
    v31 = *(a1 + 72);
    v20 = objc_alloc_init(SRUIFDataStore);
    v21 = v9;
    v22 = v20;
    v30 = v20;
    BYTE2(v29) = v10;
    BYTE1(v29) = v21;
    LOBYTE(v29) = v8;
    v23 = v18;
    v4 = v17;
    v5 = v16;
    v24 = v19;
    v7 = v32;
    v25 = [SRUIFMutableConversationItem initWithType:v23 aceObject:"initWithType:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" dialogPhase:v6 presentationState:v16 aceCommandIdentifier:v24 virgin:v31 transient:v32 supplemental:1 immersiveExperience:v29 associatedDataStore:v30];

    [(SRUIFTreeNode *)v13 setItem:v25];
    v26 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      *buf = 136315906;
      v34 = "[SRUIFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_26951F000, v26, OS_LOG_TYPE_DEFAULT, "%s %@: adding new item %@ at %@ for ACE object.", buf, 0x2Au);
    }

    [*(a1 + 64) addObject:v13];

    v11 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_addItemsForAceViews:(id)a3 withDialogPhase:(id)a4 fromCommandWithIdentifier:(id)a5 atIndexPaths:(id)a6 isSupplemental:(BOOL)a7 isImmersiveExperience:(BOOL)a8
{
  v14 = a5;
  v15 = a6;
  v16 = MEMORY[0x277CBEB18];
  v17 = a4;
  v18 = a3;
  v19 = [v16 arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __134__SRUIFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience___block_invoke;
  v26 = &unk_279C623A8;
  v27 = v15;
  v28 = v19;
  v29 = v14;
  v30 = a7;
  v31 = a8;
  v20 = v14;
  v21 = v19;
  v22 = v15;
  [v18 enumerateObjectsUsingBlock:&v23];

  [(SRUIFConversation *)self _processInsertions:v21 inDialogPhase:v17, v23, v24, v25, v26];
}

void __134__SRUIFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndex:a3];
  v7 = *(a1 + 40);
  v8 = -[SRUIFConversationInsertion initWithConversationItemType:aceObject:aceCommandIdentifier:transient:supplemental:immersiveExperience:indexPath:]([SRUIFConversationInsertion alloc], "initWithConversationItemType:aceObject:aceCommandIdentifier:transient:supplemental:immersiveExperience:indexPath:", 3, v6, *(a1 + 48), [v6 isTransient], *(a1 + 56), *(a1 + 57), v9);

  [v7 addObject:v8];
}

- (id)_indexPathsForAddingItemsWithCount:(int64_t)a3 asChildrenOfItemWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
  v8 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:v6];
  v9 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v8];
  if (a3 >= 1)
  {
    v10 = v9;
    v11 = v9 + a3;
    do
    {
      v12 = [v8 indexPathByAddingIndex:v10];
      [v7 addObject:v12];

      ++v10;
    }

    while (v10 < v11);
  }

  return v7;
}

- (void)addItemsForAddViewsCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 dialogPhase];
  v10 = [SRUIFDialogPhase dialogPhaseForAceDialogPhase:v5];

  v6 = [v4 views];
  v7 = [v4 aceId];
  v8 = [v4 supplemental];
  v9 = [v4 immersiveExperience];

  [(SRUIFConversation *)self _addItemsForAceViews:v6 withDialogPhase:v10 fromCommandWithIdentifier:v7 asChildrenOfItemWithIdentifier:0 isSupplemental:v8 isImmersiveExperience:v9];
}

- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 aceCommandIdentifier:(id)a5 dialogPhase:(id)a6 asChildrenOfItemWithIdentifier:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = -[SRUIFConversation _indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:](self, "_indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:", [v15 count], v13);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __113__SRUIFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke;
  v20[3] = &unk_279C623D0;
  v22 = v12;
  v23 = a4;
  v21 = v16;
  v17 = v12;
  v18 = v16;
  v19 = [v15 sruif_arrayByMappingWithBlock:v20];

  [(SRUIFConversation *)self _processInsertions:v19 inDialogPhase:v14];
}

SRUIFConversationInsertion *__113__SRUIFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [[SRUIFConversationInsertion alloc] initWithConversationItemType:a1[6] aceObject:v6 aceCommandIdentifier:a1[5] transient:0 supplemental:0 immersiveExperience:0 indexPath:v7];

  return v8;
}

- (void)addItemForSpeechRecognizedCommand:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 refId];
  v7 = [(SRUIFConversation *)self _rootNode];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SRUIFConversation_addItemForSpeechRecognizedCommand___block_invoke;
  v15[3] = &unk_279C623F8;
  v8 = v6;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(SRUIFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v9 aceId];
    v13 = +[SRUIFDialogPhase userRequestDialogPhase];
    [(SRUIFConversation *)self _addItemsForAceObjects:v11 type:1 aceCommandIdentifier:v12 dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFConversation_addItemForSpeechRecognizedCommand___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  if ([v5 isEqualToString:a1[4]])
  {
    v6 = [v3 type];

    if (v6 != 2)
    {
      goto LABEL_6;
    }

    [v3 setAceObject:a1[5]];
    [v3 setType:1];
    v7 = a1[6];
    v4 = [v8 absoluteIndexPath];
    [v7 addObject:v4];
  }

  else
  {
  }

LABEL_6:
}

- (void)addAdditionalSpeechInterpretation:(id)a3 refId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    if (!additionalInterpretationsForRefId)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_additionalInterpretationsForRefId;
      self->_additionalInterpretationsForRefId = v9;

      additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    }

    v11 = [(NSMutableDictionary *)additionalInterpretationsForRefId objectForKey:v7];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_additionalInterpretationsForRefId setValue:v11 forKey:v7];
    }

    [v11 addObject:v6];
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [(SRUIFConversation *)self _rootNode];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __61__SRUIFConversation_addAdditionalSpeechInterpretation_refId___block_invoke;
    v19 = &unk_279C62420;
    v20 = v7;
    v14 = v12;
    v21 = v14;
    [v13 enumerateDescendentNodesUsingBlock:&v16];

    if ([v14 count])
    {
      [(SRUIFConversation *)self notifyDelegateOfUpdates:v14 inserts:0 presentationChanges:0];
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFConversation addAdditionalSpeechInterpretation:v15 refId:?];
    }
  }
}

void __61__SRUIFConversation_addAdditionalSpeechInterpretation_refId___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 absoluteIndexPath];
    [v7 addObject:v8];
  }
}

- (id)additionalSpeechInterpretationsForRefId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_additionalInterpretationsForRefId objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)addRecognitionUpdateWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_updatedUserUtteranceForRefId)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updatedUserUtteranceForRefId = self->_updatedUserUtteranceForRefId;
    self->_updatedUserUtteranceForRefId = v10;
  }

  v12 = [objc_alloc(MEMORY[0x277CEF4F0]) initWithPhrases:v13 utterances:v8];
  [(NSMutableDictionary *)self->_updatedUserUtteranceForRefId setObject:v12 forKey:v9];
}

- (void)addItemForPartialResultCommand:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 refId];
  v7 = [(SRUIFConversation *)self _rootNode];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__SRUIFConversation_addItemForPartialResultCommand___block_invoke;
  v15[3] = &unk_279C623F8;
  v8 = v6;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(SRUIFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [v9 aceId];
    v13 = +[SRUIFDialogPhase userRequestDialogPhase];
    [(SRUIFConversation *)self _addItemsForAceObjects:v11 type:2 aceCommandIdentifier:v12 dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__SRUIFConversation_addItemForPartialResultCommand___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  if ([v3 type] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 refId];
    v6 = [v5 isEqualToString:a1[4]];

    if (v6)
    {
      [v3 setAceObject:a1[5]];
      v7 = a1[6];
      v8 = [v9 absoluteIndexPath];
      [v7 addObject:v8];
    }
  }
}

- (void)addItemsForShowHelpCommand:(id)a3
{
  v19 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(SRUIFConversation *)self _indexPathsForAddingItemsWithCount:2 asChildrenOfItemWithIdentifier:0];
  v6 = [v5 mutableCopy];

  v7 = [v19 text];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D47A00]);
    [v8 setText:v7];
    v9 = [v19 speakableText];
    [v8 setSpeakableText:v9];

    v10 = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
    v11 = [SRUIFConversationInsertion alloc];
    v12 = [v19 aceId];
    v13 = [(SRUIFConversationInsertion *)v11 initWithConversationItemType:3 aceObject:v8 aceCommandIdentifier:v12 transient:0 supplemental:0 immersiveExperience:0 indexPath:v10];
    [v4 addObject:v13];
  }

  v14 = [SRUIFConversationInsertion alloc];
  v15 = [v19 aceId];
  v16 = [v6 firstObject];
  v17 = [(SRUIFConversationInsertion *)v14 initWithConversationItemType:4 aceObject:v19 aceCommandIdentifier:v15 transient:0 supplemental:0 immersiveExperience:0 indexPath:v16];
  [v4 addObject:v17];

  v18 = +[SRUIFDialogPhase completionDialogPhase];
  [(SRUIFConversation *)self _processInsertions:v4 inDialogPhase:v18];
}

- (void)addItemForMusicStartSessionCommand:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v5 aceId];
  v8 = +[SRUIFDialogPhase reflectionDialogPhase];

  [(SRUIFConversation *)self _addItemsForAceObjects:v6 type:5 aceCommandIdentifier:v7 dialogPhase:v8 asChildrenOfItemWithIdentifier:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addSelectionResponse:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [SRUIFDialogPhase userRequestDialogPhase:v9];

  [(SRUIFConversation *)self addItemsForAceViews:v6 withDialogPhase:v7 asChildrenOfItemWithIdentifier:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUpdateViewsCommand:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v4;
  obj = [v4 views];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [(SRUIFConversation *)self _rootNode];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __50__SRUIFConversation_updateWithUpdateViewsCommand___block_invoke;
        v15[3] = &unk_279C62420;
        v15[4] = v10;
        v16 = v5;
        [v11 enumerateDescendentNodesUsingBlock:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(SRUIFConversation *)self notifyDelegateOfUpdates:v5 inserts:0 presentationChanges:0];
  v12 = *MEMORY[0x277D85DE8];
}

void __50__SRUIFConversation_updateWithUpdateViewsCommand___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 item];
  if ([v3 type] == 3)
  {
    v4 = [v3 aceObject];
    v5 = [v4 viewId];
    v6 = [*(a1 + 32) viewId];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      [v3 setAceObject:*(a1 + 32)];
      v8 = *(a1 + 40);
      v9 = [v10 absoluteIndexPath];
      [v8 addObject:v9];
    }
  }
}

- (void)removeItemsWithIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SRUIFConversation *)self removeItemsAtIndexPaths:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeItemsAtIndexPaths:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SRUIFConversation *)self _nodeAtIndexPath:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SRUIFConversation *)self _removeNodes:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeItemsFollowingItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v4 indexAtPosition:{objc_msgSend(v4, "length") - 1}];
    v7 = [v4 indexPathByRemovingLastIndex];
    v8 = [(SRUIFConversation *)self _nodeAtIndexPath:v7];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __57__SRUIFConversation_removeItemsFollowingItemAtIndexPath___block_invoke;
    v13 = &unk_279C62448;
    v14 = v5;
    v15 = v6;
    v9 = v5;
    [v8 enumerateChildNodesWithOptions:2 usingBlock:&v10];
    [(SRUIFConversation *)self _removeNodes:v9, v10, v11, v12, v13];
  }
}

uint64_t __57__SRUIFConversation_removeItemsFollowingItemAtIndexPath___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) < a3)
  {
    return [*(result + 32) addObject:a2];
  }

  *a4 = 1;
  return result;
}

- (void)removeTransientItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SRUIFConversation *)self _rootNode];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SRUIFConversation_removeTransientItems__block_invoke;
  v6[3] = &unk_279C62470;
  v7 = v3;
  v5 = v3;
  [v4 enumerateDescendentNodesUsingBlock:v6];

  [(SRUIFConversation *)self _removeNodes:v5];
}

void __41__SRUIFConversation_removeTransientItems__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)cancelItemWithIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(SRUIFConversation *)self _indexPathForItemWithIdentifier:a3 ignoreNonExistent:0];
  v5 = [(SRUIFConversation *)self _itemAtIndexPath:v4];
  if ([v5 presentationState] != 3)
  {
    [v5 setPresentationState:3];
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(SRUIFConversation *)self notifyDelegateOfUpdates:0 inserts:0 presentationChanges:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsItemWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(SRUIFConversation *)self _rootNode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SRUIFConversation_containsItemWithIdentifier___block_invoke;
  v8[3] = &unk_279C62498;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateDescendentNodesUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __48__SRUIFConversation_containsItemWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 item];
  v5 = [v7 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)identifierOfItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 identifier];

  return v4;
}

- (id)_indexPathForItemWithIdentifier:(id)a3 ignoreNonExistent:(BOOL)a4
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (v5)
  {
    v6 = [(SRUIFConversation *)self _rootNode];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SRUIFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke;
    v11[3] = &unk_279C62498;
    v12 = v5;
    v13 = &v14;
    [v6 enumerateDescendentNodesUsingBlock:v11];

    v7 = v12;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAA70]);
    v7 = v15[5];
    v15[5] = v8;
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __71__SRUIFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 item];
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = [v11 absoluteIndexPath];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a3 = 1;
  }
}

- (BOOL)hasItemWithIdentifier:(id)a3
{
  v3 = [(SRUIFConversation *)self _indexPathForItemWithIdentifier:a3 ignoreNonExistent:1];
  v4 = v3 != 0;

  return v4;
}

- (id)itemWithIdentifier:(id)a3
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [(SRUIFConversation *)self itemAtIndexPath:v4];

  return v5;
}

- (id)parentOfItemWithIdentifier:(id)a3
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [v4 indexPathByRemovingLastIndex];
  v6 = [(SRUIFConversation *)self _itemAtIndexPath:v5];

  return v6;
}

- (id)itemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)lastItem
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA70]);
  v4 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v3];

  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA70]) initWithIndex:v4 - 1];
    v6 = [(SRUIFConversation *)self _itemAtIndexPath:v5];
  }

  return v6;
}

- (int64_t)typeForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 type];

  return v4;
}

- (id)dialogPhaseForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 dialogPhase];

  return v4;
}

- (id)aceObjectForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 aceObject];

  return v4;
}

- (int64_t)presentationStateForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 presentationState];

  return v4;
}

- (int64_t)numberOfChildrenForItemWithIdentifier:(id)a3
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v4];

  return v5;
}

- (int64_t)numberOfChildrenForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _nodeAtIndexPath:a3];
  v4 = [v3 numberOfChildNodes];

  return v4;
}

- (id)aceCommandIdentifierForItemAtIndexPath:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 aceCommandIdentifier];

  return v4;
}

- (BOOL)itemAtIndexPathIsVirgin:(id)a3
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 isVirgin];

  return v4;
}

- (id)itemsRelatedToIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CCAA70]);
  v7 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v6];

  v18 = v4;
  v8 = [(SRUIFConversation *)self itemWithIdentifier:v4];
  v9 = [v8 aceObject];
  v10 = [v9 refId];

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathWithIndex:i];
      v13 = [(SRUIFConversation *)self itemAtIndexPath:v12];

      v14 = [v13 aceObject];
      v15 = [v14 refId];
      v16 = [v15 isEqualToString:v10];

      if (v16)
      {
        [v5 addObject:v13];
      }
    }
  }

  return v5;
}

- (void)_enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFConversation *)self _rootNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SRUIFConversation__enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_279C624C0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateDescendentNodesUsingBlock:v7];
}

void __47__SRUIFConversation__enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 item];
  (*(v4 + 16))(v4, v5, a3);
}

- (BOOL)containsItemForAceViewWithIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SRUIFConversation_containsItemForAceViewWithIdentifier___block_invoke;
  v7[3] = &unk_279C624E8;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SRUIFConversation *)self _enumerateItemsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __58__SRUIFConversation_containsItemForAceViewWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 type] == 3;
  v6 = v10;
  if (v5)
  {
    v7 = [v10 aceObject];
    v8 = [v7 viewId];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }

    v6 = v10;
  }
}

- (BOOL)_nodeContainsProvisionalItems:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SRUIFConversation__nodeContainsProvisionalItems___block_invoke;
  v6[3] = &unk_279C62510;
  v6[4] = &v7;
  [v3 enumerateChildNodesWithOptions:2 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__SRUIFConversation__nodeContainsProvisionalItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 item];
  if ([v6 presentationState] == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_changePresentationStateForNodes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 parentNode];

          if (v11)
          {
            v12 = [v10 absoluteIndexPath];
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:&unk_287A18C48 forKey:@"Version"];
  v4 = [(SRUIFConversation *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"Identifier"];

  v6 = [(SRUIFConversation *)self languageCode];
  [v3 setObject:v6 forKey:@"LanguageCode"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFConversation isSynchronizedWithServer](self, "isSynchronizedWithServer")}];
  [v3 setObject:v7 forKey:@"SynchronizedWithServer"];

  v8 = objc_alloc_init(SRUIFTreeNodePropertyListSerialization);
  v9 = [(SRUIFConversation *)self _rootNode];
  v10 = [(SRUIFTreeNodePropertyListSerialization *)v8 propertyListWithTreeNode:v9 itemPropertyListCreation:&__block_literal_global_51];

  [v3 setObject:v10 forKey:@"RootNode"];

  return v3;
}

- (SRUIFConversation)initWithPropertyListRepresentation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(SRUIFDictionarySchema);
  v6 = +[SRUIFCoercion stringToUUIDCoercion];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Identifier"];

  v7 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Version"];

  v8 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v8 forKey:@"LanguageCode"];

  v9 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v9 forKey:@"SynchronizedWithServer"];

  v10 = [[SRUIFCoercion alloc] initWithBlock:&__block_literal_global_57];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v10 forKey:@"RootNode"];

  v28 = 0;
  v11 = [(SRUIFDictionarySchema *)v5 coerceObject:v4 error:&v28];
  v12 = v28;
  if (!v11)
  {
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFConversation *)v24 initWithPropertyListRepresentation:v12, v4];
    }

    goto LABEL_10;
  }

  v13 = [v11 objectForKey:@"Version"];
  v14 = [v13 integerValue];

  if (v14 != 1)
  {
    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFConversation *)v14 initWithPropertyListRepresentation:v25];
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v15 = [v11 objectForKey:@"Identifier"];
  v16 = [v11 objectForKey:@"LanguageCode"];
  v17 = [v11 objectForKey:@"SynchronizedWithServer"];
  v18 = [v17 BOOLValue];

  v19 = [v11 objectForKey:@"RootNode"];
  self = [(SRUIFConversation *)self initWithIdentifier:v15 languageCode:v16 rootNode:v19];
  [(SRUIFConversation *)self setSynchronizedWithServer:v18];
  v20 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [(SRUIFConversation *)self _rootNode];
    *buf = 136315394;
    v30 = "[SRUIFConversation initWithPropertyListRepresentation:]";
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&dword_26951F000, v21, OS_LOG_TYPE_DEFAULT, "%s rootNode=%@", buf, 0x16u);
  }

  v23 = self;
LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

id __56__SRUIFConversation_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_alloc_init(SRUIFTreeNodePropertyListSerialization);
  v6 = [(SRUIFTreeNodePropertyListSerialization *)v5 treeNodeWithPropertyList:v4 error:a3 itemCreation:&__block_literal_global_59];

  return v6;
}

SRUIFMutableConversationItem *__56__SRUIFConversation_initWithPropertyListRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SRUIFMutableConversationItem alloc] initWithPropertyListRepresentation:v2];

  return v3;
}

- (void)notifyDelegateOfUpdates:(id)a3 inserts:(id)a4 presentationChanges:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([v23 count])
  {
    v10 = [(SRUIFConversation *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(SRUIFConversation *)self delegate];
      [v12 conversation:self didUpdateItemsAtIndexPaths:v23];
    }
  }

  if ([v8 count])
  {
    v13 = [(SRUIFConversation *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(SRUIFConversation *)self delegate];
      [v15 conversation:self didInsertItemsAtIndexPaths:v8];
    }
  }

  if ([v9 count])
  {
    v16 = [(SRUIFConversation *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(SRUIFConversation *)self delegate];
      [v18 conversation:self presentationStateDidChangeForItemsAtIndexPaths:v9];
    }
  }

  if ([v23 count] || objc_msgSend(v8, "count") || objc_msgSend(v9, "count"))
  {
    v19 = [[SRUIFConversationTransaction alloc] initWithUpdatedItemIndexPaths:v23 insertedItemIndexPaths:v8 presentationStateChangedItemIndexPaths:v9];
    v20 = [(SRUIFConversation *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(SRUIFConversation *)self delegate];
      [v22 conversation:self didChangeWithTransaction:v19];
    }
  }
}

- (SRUIFConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addAdditionalSpeechInterpretation:(os_log_t)log refId:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFConversation addAdditionalSpeechInterpretation:refId:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s Unable to add additional speech interpretation, invalid refId", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFConversation initWithPropertyListRepresentation:]";
  v5 = 2050;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s Unable to create conversation from property list with version %{public}ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 localizedFailureReason];
  v8 = 136315650;
  v9 = "[SRUIFConversation initWithPropertyListRepresentation:]";
  v10 = 2112;
  v11 = v6;
  v12 = 2114;
  v13 = a3;
  _os_log_error_impl(&dword_26951F000, v5, OS_LOG_TYPE_ERROR, "%s passed invalid property list (%@): %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end