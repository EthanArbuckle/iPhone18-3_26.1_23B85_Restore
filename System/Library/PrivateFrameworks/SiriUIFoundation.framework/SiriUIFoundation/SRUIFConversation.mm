@interface SRUIFConversation
- (BOOL)_nodeContainsProvisionalItems:(id)items;
- (BOOL)containsItemForAceViewWithIdentifier:(id)identifier;
- (BOOL)containsItemWithIdentifier:(id)identifier;
- (BOOL)hasItemWithIdentifier:(id)identifier;
- (BOOL)itemAtIndexPathIsVirgin:(id)virgin;
- (SRUIFConversation)initWithIdentifier:(id)identifier languageCode:(id)code;
- (SRUIFConversation)initWithIdentifier:(id)identifier languageCode:(id)code rootNode:(id)node;
- (SRUIFConversation)initWithLanguageCode:(id)code;
- (SRUIFConversation)initWithPropertyListRepresentation:(id)representation;
- (SRUIFConversationDelegate)delegate;
- (id)_changePresentationStateForNodes:(id)nodes;
- (id)_childOfNode:(id)node withItemWhichCanBeUpdatedWithAceObject:(id)object inDialogPhase:(id)phase;
- (id)_indexPathForItemWithIdentifier:(id)identifier ignoreNonExistent:(BOOL)existent;
- (id)_indexPathsForAddingItemsWithCount:(int64_t)count asChildrenOfItemWithIdentifier:(id)identifier;
- (id)_itemAtIndexPath:(id)path;
- (id)_nodeAtIndexPath:(id)path;
- (id)aceCommandIdentifierForItemAtIndexPath:(id)path;
- (id)aceObjectForItemAtIndexPath:(id)path;
- (id)additionalSpeechInterpretationsForRefId:(id)id;
- (id)dialogPhaseForItemAtIndexPath:(id)path;
- (id)identifierOfItemAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)itemWithIdentifier:(id)identifier;
- (id)itemsRelatedToIdentifier:(id)identifier;
- (id)lastItem;
- (id)parentOfItemWithIdentifier:(id)identifier;
- (id)propertyListRepresentation;
- (int64_t)numberOfChildrenForItemAtIndexPath:(id)path;
- (int64_t)numberOfChildrenForItemWithIdentifier:(id)identifier;
- (int64_t)presentationStateForItemAtIndexPath:(id)path;
- (int64_t)typeForItemAtIndexPath:(id)path;
- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type aceCommandIdentifier:(id)identifier dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)withIdentifier;
- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier atIndexPaths:(id)paths isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience;
- (void)_enumerateItemsUsingBlock:(id)block;
- (void)_processInsertions:(id)insertions inDialogPhase:(id)phase;
- (void)_removeNodes:(id)nodes;
- (void)addAdditionalSpeechInterpretation:(id)interpretation refId:(id)id;
- (void)addItemForMusicStartSessionCommand:(id)command;
- (void)addItemForPartialResultCommand:(id)command;
- (void)addItemForSpeechRecognizedCommand:(id)command;
- (void)addItemsForAddViewsCommand:(id)command;
- (void)addItemsForShowHelpCommand:(id)command;
- (void)addRecognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)addSelectionResponse:(id)response;
- (void)cancelItemWithIdentifier:(id)identifier;
- (void)notifyDelegateOfUpdates:(id)updates inserts:(id)inserts presentationChanges:(id)changes;
- (void)removeItemsAtIndexPaths:(id)paths;
- (void)removeItemsFollowingItemAtIndexPath:(id)path;
- (void)removeItemsWithIdentifiers:(id)identifiers;
- (void)removeTransientItems;
- (void)updateWithUpdateViewsCommand:(id)command;
@end

@implementation SRUIFConversation

- (SRUIFConversation)initWithIdentifier:(id)identifier languageCode:(id)code rootNode:(id)node
{
  identifierCopy = identifier;
  codeCopy = code;
  nodeCopy = node;
  v17.receiver = self;
  v17.super_class = SRUIFConversation;
  v11 = [(SRUIFConversation *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rootNode, node);
    v14 = [codeCopy copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v14;

    v11->_synchronizedWithServer = 1;
  }

  return v11;
}

- (SRUIFConversation)initWithIdentifier:(id)identifier languageCode:(id)code
{
  codeCopy = code;
  identifierCopy = identifier;
  v8 = objc_alloc_init(SRUIFTreeNode);
  v9 = [(SRUIFConversation *)self initWithIdentifier:identifierCopy languageCode:codeCopy rootNode:v8];

  return v9;
}

- (SRUIFConversation)initWithLanguageCode:(id)code
{
  v4 = MEMORY[0x277CCAD78];
  codeCopy = code;
  uUID = [v4 UUID];
  v7 = [(SRUIFConversation *)self initWithIdentifier:uUID languageCode:codeCopy];

  return v7;
}

- (id)_nodeAtIndexPath:(id)path
{
  pathCopy = path;
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v6 = [_rootNode nodeAtIndexPath:pathCopy];

  return v6;
}

- (id)_itemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _nodeAtIndexPath:path];
  item = [v3 item];

  return item;
}

- (void)_removeNodes:(id)nodes
{
  v45 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__SRUIFConversation__removeNodes___block_invoke;
    aBlock[3] = &unk_279C62270;
    v26 = array;
    v39 = v26;
    selfCopy = self;
    selfCopy2 = self;
    v25 = array2;
    v41 = v25;
    v24 = array3;
    v42 = v24;
    v8 = _Block_copy(aBlock);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = nodesCopy;
    v9 = nodesCopy;
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
      delegate = [(SRUIFConversation *)selfCopy2 delegate];
      [delegate conversation:selfCopy2 didRemoveItemsWithIdentifiers:v26 atIndexPaths:v25 parentItemIdentifiers:v24];
    }

    nodesCopy = v27;
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

- (id)_childOfNode:(id)node withItemWhichCanBeUpdatedWithAceObject:(id)object inDialogPhase:(id)phase
{
  nodeCopy = node;
  objectCopy = object;
  phaseCopy = phase;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  if ([(SRUIFConversation *)self _nodeContainsProvisionalItems:nodeCopy])
  {
    isConfirmedDialogPhase = [phaseCopy isConfirmedDialogPhase];
  }

  else
  {
    isConfirmedDialogPhase = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke;
  aBlock[3] = &unk_279C622C0;
  v23 = isConfirmedDialogPhase;
  v12 = objectCopy;
  v22 = v12;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__SRUIFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2;
  v17[3] = &unk_279C622E8;
  v20 = isConfirmedDialogPhase;
  v14 = v13;
  v18 = v14;
  v19 = &v24;
  [nodeCopy enumerateChildNodesWithOptions:2 usingBlock:v17];
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

- (void)_processInsertions:(id)insertions inDialogPhase:(id)phase
{
  v64 = *MEMORY[0x277D85DE8];
  insertionsCopy = insertions;
  phaseCopy = phase;
  v7 = MEMORY[0x277CEF098];
  if (!phaseCopy)
  {
    phaseCopy = +[SRUIFDialogPhase completionDialogPhase];
    v8 = *v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[SRUIFConversation _processInsertions:inDialogPhase:]";
      v62 = 2112;
      v63 = phaseCopy;
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s No dialog phase provided for conversation insertions; defaulting to %@", buf, 0x16u);
    }
  }

  if (([phaseCopy isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isClarificationDialogPhase"))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v38 = v9;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet4 = [MEMORY[0x277CBEB40] orderedSet];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke;
  v57[3] = &unk_279C62310;
  selfCopy = self;
  v57[4] = self;
  v13 = strongToStrongObjectsMapTable;
  v58 = v13;
  [insertionsCopy enumerateObjectsUsingBlock:v57];
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
        v20 = [insertionsCopy sruif_arrayByMappingWithBlock:&__block_literal_global_2];
        if (([phaseCopy isExpository] & 1) == 0 && (objc_msgSend(phaseCopy, "isConfirmedDialogPhase") & 1) == 0 && ((objc_msgSend(v20, "containsObject:", &unk_287A18C00) & 1) != 0 || (objc_msgSend(v20, "containsObject:", &unk_287A18C18) & 1) != 0 || objc_msgSend(v20, "containsObject:", &unk_287A18C30)) && -[SRUIFConversation _nodeContainsProvisionalItems:](selfCopy, "_nodeContainsProvisionalItems:", v18))
        {
          if (([phaseCopy isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isClarificationDialogPhase"))
          {
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_18;
            v51[3] = &unk_279C62358;
            v52 = orderedSet3;
            [v18 enumerateChildNodesUsingBlock:v51];
            v21 = &v52;
          }

          else
          {
            if ([phaseCopy isSummaryDialogPhase])
            {
              goto LABEL_23;
            }

            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_2_19;
            v49[3] = &unk_279C62358;
            v50 = orderedSet4;
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
          v48 = orderedSet3;
          [v18 enumerateChildNodesUsingBlock:v47];
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __54__SRUIFConversation__processInsertions_inDialogPhase___block_invoke_4;
        v42[3] = &unk_279C62380;
        v42[4] = selfCopy;
        v42[5] = v18;
        v43 = phaseCopy;
        v46 = v38;
        v44 = orderedSet2;
        v45 = orderedSet;
        [v19 enumerateObjectsUsingBlock:v42];

        ++v17;
      }

      while (v15 != v17);
      v22 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      v15 = v22;
    }

    while (v22);
  }

  if ([orderedSet2 count])
  {
    array = [orderedSet2 array];
    v24 = [SRUIFTreeNode absoluteIndexPathsForTreeNodes:array];
  }

  else
  {
    v24 = 0;
  }

  if ([orderedSet count])
  {
    array2 = [orderedSet array];
    v26 = [SRUIFTreeNode absoluteIndexPathsForTreeNodes:array2];
  }

  else
  {
    v26 = 0;
  }

  v27 = selfCopy;
  if ([orderedSet4 count])
  {
    array3 = [orderedSet4 array];
    v29 = [(SRUIFConversation *)v27 _changePresentationStateForNodes:array3];
  }

  else
  {
    v29 = 0;
  }

  [(SRUIFConversation *)v27 notifyDelegateOfUpdates:v24 inserts:v26 presentationChanges:v29];
  if ([orderedSet3 count])
  {
    array4 = [orderedSet3 array];
    [(SRUIFConversation *)v27 _removeNodes:array4];
  }

  v31 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    _rootNode = [(SRUIFConversation *)v27 _rootNode];
    *buf = 136315394;
    v61 = "[SRUIFConversation _processInsertions:inDialogPhase:]";
    v62 = 2112;
    v63 = _rootNode;
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

- (void)_addItemsForAceViews:(id)views withDialogPhase:(id)phase fromCommandWithIdentifier:(id)identifier atIndexPaths:(id)paths isSupplemental:(BOOL)supplemental isImmersiveExperience:(BOOL)experience
{
  identifierCopy = identifier;
  pathsCopy = paths;
  v16 = MEMORY[0x277CBEB18];
  phaseCopy = phase;
  viewsCopy = views;
  v19 = [v16 arrayWithCapacity:{objc_msgSend(viewsCopy, "count")}];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __134__SRUIFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience___block_invoke;
  v26 = &unk_279C623A8;
  v27 = pathsCopy;
  v28 = v19;
  v29 = identifierCopy;
  supplementalCopy = supplemental;
  experienceCopy = experience;
  v20 = identifierCopy;
  v21 = v19;
  v22 = pathsCopy;
  [viewsCopy enumerateObjectsUsingBlock:&v23];

  [(SRUIFConversation *)self _processInsertions:v21 inDialogPhase:phaseCopy, v23, v24, v25, v26];
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

- (id)_indexPathsForAddingItemsWithCount:(int64_t)count asChildrenOfItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  v8 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:identifierCopy];
  v9 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v8];
  if (count >= 1)
  {
    v10 = v9;
    v11 = v9 + count;
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

- (void)addItemsForAddViewsCommand:(id)command
{
  commandCopy = command;
  dialogPhase = [commandCopy dialogPhase];
  v10 = [SRUIFDialogPhase dialogPhaseForAceDialogPhase:dialogPhase];

  views = [commandCopy views];
  aceId = [commandCopy aceId];
  supplemental = [commandCopy supplemental];
  immersiveExperience = [commandCopy immersiveExperience];

  [(SRUIFConversation *)self _addItemsForAceViews:views withDialogPhase:v10 fromCommandWithIdentifier:aceId asChildrenOfItemWithIdentifier:0 isSupplemental:supplemental isImmersiveExperience:immersiveExperience];
}

- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type aceCommandIdentifier:(id)identifier dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  phaseCopy = phase;
  objectsCopy = objects;
  v16 = -[SRUIFConversation _indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:](self, "_indexPathsForAddingItemsWithCount:asChildrenOfItemWithIdentifier:", [objectsCopy count], withIdentifierCopy);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __113__SRUIFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke;
  v20[3] = &unk_279C623D0;
  v22 = identifierCopy;
  typeCopy = type;
  v21 = v16;
  v17 = identifierCopy;
  v18 = v16;
  v19 = [objectsCopy sruif_arrayByMappingWithBlock:v20];

  [(SRUIFConversation *)self _processInsertions:v19 inDialogPhase:phaseCopy];
}

SRUIFConversationInsertion *__113__SRUIFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [[SRUIFConversationInsertion alloc] initWithConversationItemType:a1[6] aceObject:v6 aceCommandIdentifier:a1[5] transient:0 supplemental:0 immersiveExperience:0 indexPath:v7];

  return v8;
}

- (void)addItemForSpeechRecognizedCommand:(id)command
{
  v19[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  array = [MEMORY[0x277CBEB18] array];
  refId = [commandCopy refId];
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SRUIFConversation_addItemForSpeechRecognizedCommand___block_invoke;
  v15[3] = &unk_279C623F8;
  v8 = refId;
  v16 = v8;
  v9 = commandCopy;
  v17 = v9;
  v10 = array;
  v18 = v10;
  [_rootNode enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(SRUIFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    aceId = [v9 aceId];
    v13 = +[SRUIFDialogPhase userRequestDialogPhase];
    [(SRUIFConversation *)self _addItemsForAceObjects:v11 type:1 aceCommandIdentifier:aceId dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
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

- (void)addAdditionalSpeechInterpretation:(id)interpretation refId:(id)id
{
  interpretationCopy = interpretation;
  idCopy = id;
  if (idCopy)
  {
    additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    if (!additionalInterpretationsForRefId)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_additionalInterpretationsForRefId;
      self->_additionalInterpretationsForRefId = v9;

      additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    }

    v11 = [(NSMutableDictionary *)additionalInterpretationsForRefId objectForKey:idCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_additionalInterpretationsForRefId setValue:v11 forKey:idCopy];
    }

    [v11 addObject:interpretationCopy];
    array = [MEMORY[0x277CBEB18] array];
    _rootNode = [(SRUIFConversation *)self _rootNode];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __61__SRUIFConversation_addAdditionalSpeechInterpretation_refId___block_invoke;
    v19 = &unk_279C62420;
    v20 = idCopy;
    v14 = array;
    v21 = v14;
    [_rootNode enumerateDescendentNodesUsingBlock:&v16];

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

- (id)additionalSpeechInterpretationsForRefId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_additionalInterpretationsForRefId objectForKey:id];
  v4 = [v3 copy];

  return v4;
}

- (void)addRecognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  idCopy = id;
  if (!self->_updatedUserUtteranceForRefId)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updatedUserUtteranceForRefId = self->_updatedUserUtteranceForRefId;
    self->_updatedUserUtteranceForRefId = v10;
  }

  v12 = [objc_alloc(MEMORY[0x277CEF4F0]) initWithPhrases:phrasesCopy utterances:utterancesCopy];
  [(NSMutableDictionary *)self->_updatedUserUtteranceForRefId setObject:v12 forKey:idCopy];
}

- (void)addItemForPartialResultCommand:(id)command
{
  v19[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  array = [MEMORY[0x277CBEB18] array];
  refId = [commandCopy refId];
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__SRUIFConversation_addItemForPartialResultCommand___block_invoke;
  v15[3] = &unk_279C623F8;
  v8 = refId;
  v16 = v8;
  v9 = commandCopy;
  v17 = v9;
  v10 = array;
  v18 = v10;
  [_rootNode enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(SRUIFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    aceId = [v9 aceId];
    v13 = +[SRUIFDialogPhase userRequestDialogPhase];
    [(SRUIFConversation *)self _addItemsForAceObjects:v11 type:2 aceCommandIdentifier:aceId dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
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

- (void)addItemsForShowHelpCommand:(id)command
{
  commandCopy = command;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [(SRUIFConversation *)self _indexPathsForAddingItemsWithCount:2 asChildrenOfItemWithIdentifier:0];
  v6 = [v5 mutableCopy];

  text = [commandCopy text];
  if (text)
  {
    v8 = objc_alloc_init(MEMORY[0x277D47A00]);
    [v8 setText:text];
    speakableText = [commandCopy speakableText];
    [v8 setSpeakableText:speakableText];

    firstObject = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
    v11 = [SRUIFConversationInsertion alloc];
    aceId = [commandCopy aceId];
    v13 = [(SRUIFConversationInsertion *)v11 initWithConversationItemType:3 aceObject:v8 aceCommandIdentifier:aceId transient:0 supplemental:0 immersiveExperience:0 indexPath:firstObject];
    [array addObject:v13];
  }

  v14 = [SRUIFConversationInsertion alloc];
  aceId2 = [commandCopy aceId];
  firstObject2 = [v6 firstObject];
  v17 = [(SRUIFConversationInsertion *)v14 initWithConversationItemType:4 aceObject:commandCopy aceCommandIdentifier:aceId2 transient:0 supplemental:0 immersiveExperience:0 indexPath:firstObject2];
  [array addObject:v17];

  v18 = +[SRUIFDialogPhase completionDialogPhase];
  [(SRUIFConversation *)self _processInsertions:array inDialogPhase:v18];
}

- (void)addItemForMusicStartSessionCommand:(id)command
{
  v11 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v4 = MEMORY[0x277CBEA60];
  commandCopy2 = command;
  v6 = [v4 arrayWithObjects:&commandCopy count:1];
  aceId = [commandCopy2 aceId];
  v8 = +[SRUIFDialogPhase reflectionDialogPhase];

  [(SRUIFConversation *)self _addItemsForAceObjects:v6 type:5 aceCommandIdentifier:aceId dialogPhase:v8 asChildrenOfItemWithIdentifier:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addSelectionResponse:(id)response
{
  v10 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = MEMORY[0x277CBEA60];
  responseCopy2 = response;
  v6 = [v4 arrayWithObjects:&responseCopy count:1];
  v7 = [SRUIFDialogPhase userRequestDialogPhase:responseCopy];

  [(SRUIFConversation *)self addItemsForAceViews:v6 withDialogPhase:v7 asChildrenOfItemWithIdentifier:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithUpdateViewsCommand:(id)command
{
  v22 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = commandCopy;
  obj = [commandCopy views];
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
        _rootNode = [(SRUIFConversation *)self _rootNode];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __50__SRUIFConversation_updateWithUpdateViewsCommand___block_invoke;
        v15[3] = &unk_279C62420;
        v15[4] = v10;
        v16 = array;
        [_rootNode enumerateDescendentNodesUsingBlock:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(SRUIFConversation *)self notifyDelegateOfUpdates:array inserts:0 presentationChanges:0];
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

- (void)removeItemsWithIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = identifiersCopy;
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

- (void)removeItemsAtIndexPaths:(id)paths
{
  v18 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = pathsCopy;
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

- (void)removeItemsFollowingItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [pathCopy indexAtPosition:{objc_msgSend(pathCopy, "length") - 1}];
    indexPathByRemovingLastIndex = [pathCopy indexPathByRemovingLastIndex];
    v8 = [(SRUIFConversation *)self _nodeAtIndexPath:indexPathByRemovingLastIndex];
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
  array = [MEMORY[0x277CBEB18] array];
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SRUIFConversation_removeTransientItems__block_invoke;
  v6[3] = &unk_279C62470;
  v7 = array;
  v5 = array;
  [_rootNode enumerateDescendentNodesUsingBlock:v6];

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

- (void)cancelItemWithIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(SRUIFConversation *)self _indexPathForItemWithIdentifier:identifier ignoreNonExistent:0];
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

- (BOOL)containsItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SRUIFConversation_containsItemWithIdentifier___block_invoke;
  v8[3] = &unk_279C62498;
  v6 = identifierCopy;
  v9 = v6;
  v10 = &v11;
  [_rootNode enumerateDescendentNodesUsingBlock:v8];

  LOBYTE(_rootNode) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return _rootNode;
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

- (id)identifierOfItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  identifier = [v3 identifier];

  return identifier;
}

- (id)_indexPathForItemWithIdentifier:(id)identifier ignoreNonExistent:(BOOL)existent
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (identifierCopy)
  {
    _rootNode = [(SRUIFConversation *)self _rootNode];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SRUIFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke;
    v11[3] = &unk_279C62498;
    v12 = identifierCopy;
    v13 = &v14;
    [_rootNode enumerateDescendentNodesUsingBlock:v11];

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

- (BOOL)hasItemWithIdentifier:(id)identifier
{
  v3 = [(SRUIFConversation *)self _indexPathForItemWithIdentifier:identifier ignoreNonExistent:1];
  v4 = v3 != 0;

  return v4;
}

- (id)itemWithIdentifier:(id)identifier
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:identifier];
  v5 = [(SRUIFConversation *)self itemAtIndexPath:v4];

  return v5;
}

- (id)parentOfItemWithIdentifier:(id)identifier
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:identifier];
  indexPathByRemovingLastIndex = [v4 indexPathByRemovingLastIndex];
  v6 = [(SRUIFConversation *)self _itemAtIndexPath:indexPathByRemovingLastIndex];

  return v6;
}

- (id)itemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
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

- (int64_t)typeForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  type = [v3 type];

  return type;
}

- (id)dialogPhaseForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  dialogPhase = [v3 dialogPhase];

  return dialogPhase;
}

- (id)aceObjectForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  aceObject = [v3 aceObject];

  return aceObject;
}

- (int64_t)presentationStateForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  presentationState = [v3 presentationState];

  return presentationState;
}

- (int64_t)numberOfChildrenForItemWithIdentifier:(id)identifier
{
  v4 = [(SRUIFConversation *)self indexPathForItemWithIdentifier:identifier];
  v5 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v4];

  return v5;
}

- (int64_t)numberOfChildrenForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _nodeAtIndexPath:path];
  numberOfChildNodes = [v3 numberOfChildNodes];

  return numberOfChildNodes;
}

- (id)aceCommandIdentifierForItemAtIndexPath:(id)path
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:path];
  aceCommandIdentifier = [v3 aceCommandIdentifier];

  return aceCommandIdentifier;
}

- (BOOL)itemAtIndexPathIsVirgin:(id)virgin
{
  v3 = [(SRUIFConversation *)self _itemAtIndexPath:virgin];
  isVirgin = [v3 isVirgin];

  return isVirgin;
}

- (id)itemsRelatedToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CCAA70]);
  v7 = [(SRUIFConversation *)self numberOfChildrenForItemAtIndexPath:v6];

  v18 = identifierCopy;
  v8 = [(SRUIFConversation *)self itemWithIdentifier:identifierCopy];
  aceObject = [v8 aceObject];
  refId = [aceObject refId];

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathWithIndex:i];
      v13 = [(SRUIFConversation *)self itemAtIndexPath:v12];

      aceObject2 = [v13 aceObject];
      refId2 = [aceObject2 refId];
      v16 = [refId2 isEqualToString:refId];

      if (v16)
      {
        [array addObject:v13];
      }
    }
  }

  return array;
}

- (void)_enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SRUIFConversation__enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_279C624C0;
  v8 = blockCopy;
  v6 = blockCopy;
  [_rootNode enumerateDescendentNodesUsingBlock:v7];
}

void __47__SRUIFConversation__enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 item];
  (*(v4 + 16))(v4, v5, a3);
}

- (BOOL)containsItemForAceViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SRUIFConversation_containsItemForAceViewWithIdentifier___block_invoke;
  v7[3] = &unk_279C624E8;
  v5 = identifierCopy;
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

- (BOOL)_nodeContainsProvisionalItems:(id)items
{
  itemsCopy = items;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SRUIFConversation__nodeContainsProvisionalItems___block_invoke;
  v6[3] = &unk_279C62510;
  v6[4] = &v7;
  [itemsCopy enumerateChildNodesWithOptions:2 usingBlock:v6];
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

- (id)_changePresentationStateForNodes:(id)nodes
{
  v20 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  array = [MEMORY[0x277CBEB18] array];
  if ([nodesCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = nodesCopy;
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
          parentNode = [v10 parentNode];

          if (parentNode)
          {
            absoluteIndexPath = [v10 absoluteIndexPath];
            [array addObject:absoluteIndexPath];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)propertyListRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_287A18C48 forKey:@"Version"];
  identifier = [(SRUIFConversation *)self identifier];
  uUIDString = [identifier UUIDString];
  [dictionary setObject:uUIDString forKey:@"Identifier"];

  languageCode = [(SRUIFConversation *)self languageCode];
  [dictionary setObject:languageCode forKey:@"LanguageCode"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFConversation isSynchronizedWithServer](self, "isSynchronizedWithServer")}];
  [dictionary setObject:v7 forKey:@"SynchronizedWithServer"];

  v8 = objc_alloc_init(SRUIFTreeNodePropertyListSerialization);
  _rootNode = [(SRUIFConversation *)self _rootNode];
  v10 = [(SRUIFTreeNodePropertyListSerialization *)v8 propertyListWithTreeNode:_rootNode itemPropertyListCreation:&__block_literal_global_51];

  [dictionary setObject:v10 forKey:@"RootNode"];

  return dictionary;
}

- (SRUIFConversation)initWithPropertyListRepresentation:(id)representation
{
  v33 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
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
  v11 = [(SRUIFDictionarySchema *)v5 coerceObject:representationCopy error:&v28];
  v12 = v28;
  if (!v11)
  {
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFConversation *)v24 initWithPropertyListRepresentation:v12, representationCopy];
    }

    goto LABEL_10;
  }

  v13 = [v11 objectForKey:@"Version"];
  integerValue = [v13 integerValue];

  if (integerValue != 1)
  {
    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFConversation *)integerValue initWithPropertyListRepresentation:v25];
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v15 = [v11 objectForKey:@"Identifier"];
  v16 = [v11 objectForKey:@"LanguageCode"];
  v17 = [v11 objectForKey:@"SynchronizedWithServer"];
  bOOLValue = [v17 BOOLValue];

  v19 = [v11 objectForKey:@"RootNode"];
  self = [(SRUIFConversation *)self initWithIdentifier:v15 languageCode:v16 rootNode:v19];
  [(SRUIFConversation *)self setSynchronizedWithServer:bOOLValue];
  v20 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    _rootNode = [(SRUIFConversation *)self _rootNode];
    *buf = 136315394;
    v30 = "[SRUIFConversation initWithPropertyListRepresentation:]";
    v31 = 2112;
    v32 = _rootNode;
    _os_log_impl(&dword_26951F000, v21, OS_LOG_TYPE_DEFAULT, "%s rootNode=%@", buf, 0x16u);
  }

  selfCopy = self;
LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
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

- (void)notifyDelegateOfUpdates:(id)updates inserts:(id)inserts presentationChanges:(id)changes
{
  updatesCopy = updates;
  insertsCopy = inserts;
  changesCopy = changes;
  if ([updatesCopy count])
  {
    delegate = [(SRUIFConversation *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(SRUIFConversation *)self delegate];
      [delegate2 conversation:self didUpdateItemsAtIndexPaths:updatesCopy];
    }
  }

  if ([insertsCopy count])
  {
    delegate3 = [(SRUIFConversation *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate4 = [(SRUIFConversation *)self delegate];
      [delegate4 conversation:self didInsertItemsAtIndexPaths:insertsCopy];
    }
  }

  if ([changesCopy count])
  {
    delegate5 = [(SRUIFConversation *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate6 = [(SRUIFConversation *)self delegate];
      [delegate6 conversation:self presentationStateDidChangeForItemsAtIndexPaths:changesCopy];
    }
  }

  if ([updatesCopy count] || objc_msgSend(insertsCopy, "count") || objc_msgSend(changesCopy, "count"))
  {
    v19 = [[SRUIFConversationTransaction alloc] initWithUpdatedItemIndexPaths:updatesCopy insertedItemIndexPaths:insertsCopy presentationStateChangedItemIndexPaths:changesCopy];
    delegate7 = [(SRUIFConversation *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate8 = [(SRUIFConversation *)self delegate];
      [delegate8 conversation:self didChangeWithTransaction:v19];
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