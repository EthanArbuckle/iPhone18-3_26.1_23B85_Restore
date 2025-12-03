@interface SiriSharedUICompactViewModelController
- (BOOL)alwaysShowRecognizedSpeech;
- (SiriSharedUICompactViewModelChangeObserving)viewModelChangeObserver;
- (SiriSharedUICompactViewModelController)initWithConversation:(id)conversation delegate:(id)delegate;
- (SiriSharedUICompactViewModelControllerDelegate)delegate;
- (id)_serverUtterancesToDisplayForConversation:(id)conversation;
- (id)_userUtteranceForConversationItem:(id)item;
- (int64_t)inputType;
- (unint64_t)_generateDiffFromViewModel:(id)model toViewModel:(id)viewModel;
- (void)_clearAdditionalContentTranscriptItems;
- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)diff;
- (void)_processInitialConversationItemsForConversation:(id)conversation;
- (void)_processInsertedConversationItems:(id)items forConversation:(id)conversation;
- (void)_processUpdatedConversationItemsAtIndexPaths:(id)paths;
- (void)conversationDidChangeWithTransaction:(id)transaction;
- (void)inputTypeDidChange;
- (void)resetViewsAndClearASR:(BOOL)r;
- (void)revealLatencyView;
- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object;
- (void)setViewModel:(id)model;
- (void)setViewModelChangeObserver:(id)observer;
- (void)updateCurrentRequestText:(id)text;
- (void)updateLatencySummary:(id)summary;
@end

@implementation SiriSharedUICompactViewModelController

- (SiriSharedUICompactViewModelController)initWithConversation:(id)conversation delegate:(id)delegate
{
  conversationCopy = conversation;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SiriSharedUICompactViewModelController;
  v9 = [(SiriSharedUICompactViewModelController *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(SiriSharedUICompactViewModel);
    viewModel = v9->_viewModel;
    v9->_viewModel = v10;

    objc_storeStrong(&v9->_conversation, conversation);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverUtteranceConversationIds = v9->_serverUtteranceConversationIds;
    v9->_serverUtteranceConversationIds = v12;

    v9->_immersiveExperienceOn = 0;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    [(SiriSharedUICompactViewModelController *)v9 inputTypeDidChange];
    [(SiriSharedUICompactViewModelController *)v9 _processInitialConversationItemsForConversation:conversationCopy];
  }

  return v9;
}

- (void)setViewModelChangeObserver:(id)observer
{
  objc_storeWeak(&self->_viewModelChangeObserver, observer);
  v4 = objc_alloc_init(SiriSharedUICompactViewModel);
  [(SiriSharedUICompactViewModelController *)self _notifyObserverOfViewModelChangeWithDiff:[(SiriSharedUICompactViewModelController *)self _generateDiffFromViewModel:v4 toViewModel:self->_viewModel]];
}

- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)diff
{
  if (diff)
  {
    viewModelChangeObserver = [(SiriSharedUICompactViewModelController *)self viewModelChangeObserver];
    viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      [viewModelChangeObserver compactViewModelDidChange:viewModel withDiff:diff];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__SiriSharedUICompactViewModelController__notifyObserverOfViewModelChangeWithDiff___block_invoke;
      block[3] = &unk_278354BA0;
      v8 = viewModelChangeObserver;
      v9 = viewModel;
      diffCopy = diff;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (unint64_t)_generateDiffFromViewModel:(id)model toViewModel:(id)viewModel
{
  v69 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  viewModelCopy = viewModel;
  array = [MEMORY[0x277CBEB18] array];
  resultTranscriptItems = [viewModelCopy resultTranscriptItems];
  resultTranscriptItems2 = [modelCopy resultTranscriptItems];
  v10 = [resultTranscriptItems isEqualToArray:resultTranscriptItems2];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    [array addObject:@"resultTranscriptItems"];
    v11 = 1;
  }

  conversationTranscriptItems = [viewModelCopy conversationTranscriptItems];
  conversationTranscriptItems2 = [modelCopy conversationTranscriptItems];
  v14 = [conversationTranscriptItems isEqualToArray:conversationTranscriptItems2];

  if ((v14 & 1) == 0)
  {
    v11 |= 2uLL;
    [array addObject:@"conversationTranscriptItems"];
  }

  additionalPlatterTranscriptItems = [viewModelCopy additionalPlatterTranscriptItems];
  additionalPlatterTranscriptItems2 = [modelCopy additionalPlatterTranscriptItems];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = additionalPlatterTranscriptItems;
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
  v50 = v11;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 += [*(*(&v55 + 1) + 8 * i) count];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v19);
    v23 = v20 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = array;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v25 = additionalPlatterTranscriptItems2;
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v52;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v28 += [*(*(&v51 + 1) + 8 * j) count];
      }

      v27 = [v25 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v27);
    v31 = v28 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v23 && v31)
  {
    v32 = v24;
LABEL_27:
    v33 = v50;
    goto LABEL_29;
  }

  v32 = v24;
  if ([v17 isEqualToArray:v25])
  {
    goto LABEL_27;
  }

  v33 = v50 | 0x20;
  [v32 addObject:@"additionalPlatterTranscriptItems"];
LABEL_29:
  serverUtterances = [viewModelCopy serverUtterances];
  serverUtterances2 = [modelCopy serverUtterances];
  v36 = [serverUtterances isEqualToArray:serverUtterances2];

  if ((v36 & 1) == 0)
  {
    v33 |= 4uLL;
    [v32 addObject:@"serverUtterances"];
  }

  speechRecognitionHypothesis = [viewModelCopy speechRecognitionHypothesis];
  speechRecognitionHypothesis2 = [modelCopy speechRecognitionHypothesis];

  if (speechRecognitionHypothesis != speechRecognitionHypothesis2)
  {
    v33 |= 8uLL;
    [v32 addObject:@"speechRecognitionHypothesis"];
  }

  latencyViewModel = [viewModelCopy latencyViewModel];
  latencyViewModel2 = [modelCopy latencyViewModel];
  v41 = [latencyViewModel viewShouldUpdateFromOldModel:latencyViewModel2];

  if (v41)
  {
    v33 |= 0x40uLL;
    [v32 addObject:@"latencyViewModel"];
  }

  inputType = [viewModelCopy inputType];
  if (inputType != [modelCopy inputType])
  {
    v33 |= 0x10uLL;
    [v32 addObject:@"inputType"];
  }

  v43 = [v32 count];
  v44 = *MEMORY[0x277CEF098];
  v45 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v43)
  {
    if (v45)
    {
      *buf = 136315906;
      v60 = "[SiriSharedUICompactViewModelController _generateDiffFromViewModel:toViewModel:]";
      v61 = 2112;
      v62 = v32;
      v63 = 2112;
      v64 = modelCopy;
      v65 = 2112;
      v66 = viewModelCopy;
      v46 = "%s #viewModelDiff %@ differs between original %@ and updated %@";
      v47 = v44;
      v48 = 42;
LABEL_42:
      _os_log_impl(&dword_21E3EB000, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
    }
  }

  else if (v45)
  {
    *buf = 136315138;
    v60 = "[SiriSharedUICompactViewModelController _generateDiffFromViewModel:toViewModel:]";
    v46 = "%s #viewModelDiff no difference between viewModels";
    v47 = v44;
    v48 = 12;
    goto LABEL_42;
  }

  return v33;
}

- (void)setViewModel:(id)model
{
  viewModel = self->_viewModel;
  modelCopy = model;
  v6 = [(SiriSharedUICompactViewModelController *)self _generateDiffFromViewModel:viewModel toViewModel:modelCopy];
  v7 = [modelCopy copy];

  v8 = self->_viewModel;
  self->_viewModel = v7;

  [(SiriSharedUICompactViewModelController *)self _notifyObserverOfViewModelChangeWithDiff:v6];
}

- (void)_processInitialConversationItemsForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy numberOfChildrenForItemWithIdentifier:0] >= 1)
  {
    lastItem = [conversationCopy lastItem];
    identifier = [lastItem identifier];
    v6 = [conversationCopy sruif_itemsRelatedToIdentifier:identifier];

    [(SiriSharedUICompactViewModelController *)self _processInsertedConversationItems:v6 forConversation:conversationCopy];
  }
}

- (void)conversationDidChangeWithTransaction:(id)transaction
{
  v60 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  updatedItemIndexPaths = [transactionCopy updatedItemIndexPaths];
  v5 = updatedItemIndexPaths;
  if (updatedItemIndexPaths)
  {
    v6 = updatedItemIndexPaths;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v7 = v6;

  insertedItemIndexPaths = [transactionCopy insertedItemIndexPaths];
  v9 = insertedItemIndexPaths;
  if (insertedItemIndexPaths)
  {
    v10 = insertedItemIndexPaths;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v11 = v10;

  conversation = [(SiriSharedUICompactViewModelController *)self conversation];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
  v45 = v13;
  v42 = v11;
  v43 = transactionCopy;
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    v44 = *v52;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [conversation itemAtIndexPath:*(*(&v51 + 1) + 8 * i)];
        if ([v18 type] == 3)
        {
          aceObject = [v18 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (-[SiriSharedUICompactViewModelController serverUtteranceConversationIds](self, "serverUtteranceConversationIds"), v20 = objc_claimAutoreleasedReturnValue(), [conversation identifier], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKey:", v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "identifier"), v23 = v15, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v22, "containsObject:", v24), v24, v15 = v23, v22, v16 = v44, v21, v20, v13 = v45, !v25))
          {

            v26 = 1;
            goto LABEL_21;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_21:
    v11 = v42;
    transactionCopy = v43;
  }

  else
  {
    v26 = 0;
  }

  if (![v11 count] && (v26 & 1) == 0)
  {
    selfCopy2 = self;
    v28 = v13;
LABEL_26:
    [(SiriSharedUICompactViewModelController *)selfCopy2 _processUpdatedConversationItemsAtIndexPaths:v28];
    goto LABEL_45;
  }

  if ([v11 count] == 1)
  {
    v29 = [v11 objectAtIndexedSubscript:0];
    v30 = [conversation itemAtIndexPath:v29];
    type = [v30 type];

    if (type == 1)
    {
      v32 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v58 = "[SiriSharedUICompactViewModelController conversationDidChangeWithTransaction:]";
        _os_log_impl(&dword_21E3EB000, v32, OS_LOG_TYPE_DEFAULT, "%s The only item added to the conversation is an SASSpeechRecognized. Treating as an update", buf, 0xCu);
      }

      selfCopy2 = self;
      v28 = v11;
      goto LABEL_26;
    }
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v34 = [v13 arrayByAddingObjectsFromArray:v11];
  v35 = [v34 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v47 + 1) + 8 * j);
        v40 = [conversation itemAtIndexPath:v39];
        if ([v40 type] == 2)
        {
          v55 = v39;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
          [(SiriSharedUICompactViewModelController *)self _processUpdatedConversationItemsAtIndexPaths:v41];
        }

        else
        {
          [v33 addObject:v40];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v36);
  }

  if ([v33 count])
  {
    [(SiriSharedUICompactViewModelController *)self _processInsertedConversationItems:v33 forConversation:conversation];
  }

  v11 = v42;
  transactionCopy = v43;
  v13 = v45;
LABEL_45:
}

- (void)_processUpdatedConversationItemsAtIndexPaths:(id)paths
{
  v62 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  conversation = [(SiriSharedUICompactViewModelController *)self conversation];
  alwaysShowRecognizedSpeech = [(SiriSharedUICompactViewModelController *)self alwaysShowRecognizedSpeech];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = pathsCopy;
  v42 = v7;
  v49 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v49)
  {
    saeAvailable = 0;
    v46 = 0;
    v45 = 0;
    v8 = 0;
    v47 = v6;
    v48 = *v52;
    v9 = 0x277CEF000uLL;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [conversation itemAtIndexPath:{*(*(&v51 + 1) + 8 * i), v42}];
        if ([v11 type] == 1 || objc_msgSend(v11, "type") == 2)
        {
          if (v8)
          {
            v12 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
            {
              [(SiriSharedUICompactViewModelController *)v59 _processUpdatedConversationItemsAtIndexPaths:v12];
            }
          }

          if ([*(v9 + 1232) saeAvailable])
          {
            v13 = [v11 type] == 1;
          }

          else
          {
            v13 = 0;
          }

          if (alwaysShowRecognizedSpeech || v13)
          {
            v14 = objc_alloc(MEMORY[0x277D61B08]);
            v15 = [(SiriSharedUICompactViewModelController *)self _userUtteranceForConversationItem:v11];
            aceObject = [v11 aceObject];
            v17 = [v14 initWithUserUtterance:v15 backingAceObject:aceObject isFinal:{objc_msgSend(v11, "type") == 1}];

            viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
            speechRecognitionHypothesis = [viewModel speechRecognitionHypothesis];
            if ([speechRecognitionHypothesis isFinal])
            {
              v20 = 0;
            }

            else
            {
              viewModel2 = [(SiriSharedUICompactViewModelController *)self viewModel];
              speechRecognitionHypothesis2 = [viewModel2 speechRecognitionHypothesis];
              v20 = speechRecognitionHypothesis2 != 0;
            }

            v9 = 0x277CEF000uLL;

            if (v20 || alwaysShowRecognizedSpeech)
            {
              saeAvailable = !v20;
            }

            else
            {
              saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];
            }

            v6 = v47;
          }

          else
          {
            v17 = v8;
          }

          if ([*(v9 + 1232) saeAvailable] && objc_msgSend(v11, "type") == 1)
          {
            v30 = [(SiriSharedUICompactViewModelController *)self _userUtteranceForConversationItem:v11];
            bestTextInterpretation = [v30 bestTextInterpretation];

            v9 = 0x277CEF000;
            v45 = bestTextInterpretation;
          }

          v8 = v17;
        }

        else
        {
          serverUtteranceConversationIds = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
          identifier = [conversation identifier];
          v23 = [serverUtteranceConversationIds objectForKey:identifier];
          [v11 identifier];
          selfCopy = self;
          v26 = v25 = conversation;
          v27 = [v23 containsObject:v26];

          conversation = v25;
          self = selfCopy;
          v7 = v42;

          v6 = v47;
          v9 = 0x277CEF000;
          v46 |= v27;
        }

        identifier2 = [v11 identifier];
        [v6 addObject:identifier2];
      }

      v49 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v49);
  }

  else
  {
    saeAvailable = 0;
    v46 = 0;
    v45 = 0;
    v8 = 0;
  }

  if ([v6 count])
  {
    delegate = [(SiriSharedUICompactViewModelController *)self delegate];
    [delegate compactViewModelController:self didProcessConversationItemsWithIdentifiers:v6];
  }

  if (((v8 | v45) != 0) | v46 & 1)
  {
    v34 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"updating existing viewModel with new hypothesis.";
      if (saeAvailable)
      {
        v35 = @"clearing previous content from viewModel since this hypothesis .";
      }

      *buf = 136315394;
      v56 = "[SiriSharedUICompactViewModelController _processUpdatedConversationItemsAtIndexPaths:]";
      v57 = 2112;
      v58 = v35;
      _os_log_impl(&dword_21E3EB000, v34, OS_LOG_TYPE_DEFAULT, "%s #compact speechRecognitionHypothesis updated, %@", buf, 0x16u);
    }

    viewModel3 = [(SiriSharedUICompactViewModelController *)self viewModel];
    serverUtteranceConversationIds2 = viewModel3;
    if (saeAvailable)
    {
      selfCopy3 = self;
      v39 = [viewModel3 copyWithConversationTranscriptItems:MEMORY[0x277CBEBF8] serverUtterances:MEMORY[0x277CBEBF8] speechRecognitionHypothesis:v8 latencyViewUtterance:v45];

      serverUtteranceConversationIds2 = [(SiriSharedUICompactViewModelController *)selfCopy3 serverUtteranceConversationIds];
      identifier3 = [conversation identifier];
      v41 = [serverUtteranceConversationIds2 objectForKey:identifier3];
      [v41 removeAllObjects];
    }

    else
    {
      identifier3 = [(SiriSharedUICompactViewModelController *)self _serverUtterancesToDisplayForConversation:conversation];
      selfCopy3 = self;
      v39 = [serverUtteranceConversationIds2 copyWithServerUtterances:identifier3 speechRecognitionHypothesis:v8 latencyViewUtterance:v45];
    }

    [(SiriSharedUICompactViewModelController *)selfCopy3 setViewModel:v39];
    v7 = v43;
  }
}

- (void)_processInsertedConversationItems:(id)items forConversation:(id)conversation
{
  v168 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  conversationCopy = conversation;
  [(SiriSharedUICompactViewModelController *)self _clearAdditionalContentTranscriptItems];
  array = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v154 objects:v167 count:16];
  selfCopy = self;
  if (v9)
  {
    v10 = v9;
    v11 = *v155;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v155 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v154 + 1) + 8 * i) isSupplemental])
        {
          v124 = 1;
          serverUtteranceConversationIds = v8;
          v14 = conversationCopy;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v154 objects:v167 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  serverUtteranceConversationIds = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  v14 = conversationCopy;
  identifier = [conversationCopy identifier];
  v16 = [serverUtteranceConversationIds objectForKey:identifier];
  [v16 removeAllObjects];

  v124 = 0;
LABEL_11:

  array2 = [MEMORY[0x277CBEB18] array];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v150 objects:v166 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v151;
    v21 = *MEMORY[0x277D47C40];
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v151 != v20)
        {
          objc_enumerationMutation(v17);
        }

        aceObject = [*(*(&v150 + 1) + 8 * j) aceObject];
        v24 = [aceObject propertyForKey:v21];

        if (v24 && [v24 BOOLValue])
        {

          v123 = 1;
          goto LABEL_22;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v150 objects:v166 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v123 = 0;
LABEL_22:
    v14 = conversationCopy;
  }

  else
  {
    v123 = 0;
  }

  p_isa = &selfCopy->super.isa;
  if (!SiriSharedUIDeviceIsPad() && (SiriSharedUIDeviceIsMac() & 1) == 0 && ![(SiriSharedUICompactViewModelController *)selfCopy immersiveExperienceOn])
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v26 = v17;
    v27 = [v26 countByEnumeratingWithState:&v146 objects:v165 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v147;
      while (2)
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v147 != v29)
          {
            objc_enumerationMutation(v26);
          }

          if ([*(*(&v146 + 1) + 8 * k) isImmersiveExperience])
          {

            p_isa = &selfCopy->super.isa;
            delegate = [(SiriSharedUICompactViewModelController *)selfCopy delegate];
            [delegate immersiveExperienceRequestedForViewModelController:selfCopy];

            [(SiriSharedUICompactViewModelController *)selfCopy setImmersiveExperienceOn:1];
            v14 = conversationCopy;
            goto LABEL_37;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v146 objects:v165 count:16];
        v14 = conversationCopy;
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    p_isa = &selfCopy->super.isa;
  }

LABEL_37:
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = v17;
  v32 = [obj countByEnumeratingWithState:&v142 objects:v164 count:16];
  v130 = v7;
  if (!v32)
  {
    speechRecognitionHypothesis = 0;
    goto LABEL_71;
  }

  v33 = v32;
  speechRecognitionHypothesis = 0;
  v132 = *v143;
  while (2)
  {
    v34 = 0;
    do
    {
      if (*v143 != v132)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v142 + 1) + 8 * v34);
      aceObject2 = [v35 aceObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate2 = [p_isa delegate];
        v38 = [delegate2 siriDeviceLockedForViewModelController:p_isa];

        if (v38)
        {
          v58 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v163 = "[SiriSharedUICompactViewModelController _processInsertedConversationItems:forConversation:]";
            _os_log_impl(&dword_21E3EB000, v58, OS_LOG_TYPE_DEFAULT, "%s Not displaying SAABPersonPicker since device is passcode locked", buf, 0xCu);
          }

          goto LABEL_71;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        serverUtteranceConversationIds2 = [p_isa serverUtteranceConversationIds];
        identifier2 = [v14 identifier];
        v41 = [serverUtteranceConversationIds2 objectForKey:identifier2];

        if (!v41)
        {
          serverUtteranceConversationIds3 = [p_isa serverUtteranceConversationIds];
          v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
          identifier3 = [v14 identifier];
          [serverUtteranceConversationIds3 setObject:v43 forKey:identifier3];
        }

        serverUtteranceConversationIds4 = [p_isa serverUtteranceConversationIds];
        identifier4 = [v14 identifier];
        _instrumentationManager = [serverUtteranceConversationIds4 objectForKey:identifier4];
        identifier5 = [v35 identifier];
        [_instrumentationManager addObject:identifier5];
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v35 presentationState] != 3)
      {
        delegate3 = [p_isa delegate];
        serverUtteranceConversationIds4 = [delegate3 compactViewModelController:p_isa requestsTranscriptItemForAceObject:aceObject2];

        viewController = [serverUtteranceConversationIds4 viewController];
        [viewController setAceObject:aceObject2];

        viewController2 = [serverUtteranceConversationIds4 viewController];
        [viewController2 wasAddedToTranscript];

        [array addObject:serverUtteranceConversationIds4];
        [array2 addObject:serverUtteranceConversationIds4];
        identifier4 = [serverUtteranceConversationIds4 viewController];
        if (objc_opt_respondsToSelector())
        {
          [identifier4 configureForConversationStorable:v35];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_50;
        }

        _instrumentationManager = [p_isa _instrumentationManager];
        identifier5 = [_instrumentationManager currentInstrumentationTurnContext];
        turnIdentifier = [identifier5 turnIdentifier];
        [identifier4 setInstrumentationTurnIdentifier:turnIdentifier];

        v14 = conversationCopy;
LABEL_48:

        p_isa = &selfCopy->super.isa;
        goto LABEL_49;
      }

      if ([v35 type] == 1)
      {
        if (speechRecognitionHypothesis)
        {
          v49 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
          {
            [(SiriSharedUICompactViewModelController *)v160 _processInsertedConversationItems:v49 forConversation:?];
          }
        }

        if ([p_isa alwaysShowRecognizedSpeech])
        {
          v50 = objc_alloc(MEMORY[0x277D61B08]);
          serverUtteranceConversationIds4 = [p_isa _userUtteranceForConversationItem:v35];
          identifier4 = [v35 aceObject];
          v51 = [v50 initWithUserUtterance:serverUtteranceConversationIds4 backingAceObject:identifier4 isFinal:1];
          _instrumentationManager = speechRecognitionHypothesis;
          speechRecognitionHypothesis = v51;
LABEL_49:

LABEL_50:
          v7 = v130;
        }
      }

      identifier6 = [v35 identifier];
      [v7 addObject:identifier6];

      ++v34;
    }

    while (v33 != v34);
    v57 = [obj countByEnumeratingWithState:&v142 objects:v164 count:16];
    v33 = v57;
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_71:

  if ([array2 count])
  {
    objc_storeStrong(p_isa + 7, array2);
  }

  if ([v7 count])
  {
    delegate4 = [p_isa delegate];
    [delegate4 compactViewModelController:p_isa didProcessConversationItemsWithIdentifiers:v7];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([array count] || (-[SiriSharedUICompactViewModelController serverUtteranceConversationIds](selfCopy, "serverUtteranceConversationIds"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(conversationCopy, "identifier"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "objectForKey:", v62), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "count"), v63, v62, v61, v64))
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v65 = array;
    v66 = [v65 countByEnumeratingWithState:&v138 objects:v159 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v139;
      do
      {
        for (m = 0; m != v67; ++m)
        {
          if (*v139 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v138 + 1) + 8 * m);
          platterCategory = [v70 platterCategory];
          v72 = [MEMORY[0x277CCABB0] numberWithInteger:platterCategory];
          v73 = [dictionary objectForKey:v72];

          if (!v73)
          {
            array3 = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array3 forKey:v72];
          }

          v75 = [dictionary objectForKeyedSubscript:v72];
          [v75 addObject:v70];
        }

        v67 = [v65 countByEnumeratingWithState:&v138 objects:v159 count:16];
      }

      while (v67);
    }

    v7 = v130;
  }

  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  v78 = [dictionary objectForKeyedSubscript:&unk_282F90FD8];

  if (v78)
  {
    v79 = [dictionary objectForKeyedSubscript:&unk_282F90FD8];

    [dictionary removeObjectForKey:&unk_282F90FD8];
    array5 = v79;
  }

  v80 = [dictionary objectForKeyedSubscript:&unk_282F90FF0];

  if (v80)
  {
    v81 = [dictionary objectForKeyedSubscript:&unk_282F90FF0];

    [dictionary removeObjectForKey:&unk_282F90FF0];
    array4 = v81;
  }

  v82 = selfCopy;
  array6 = [MEMORY[0x277CBEB18] array];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v84 = dictionary;
  v85 = [v84 countByEnumeratingWithState:&v134 objects:v158 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v135;
    do
    {
      for (n = 0; n != v86; ++n)
      {
        if (*v135 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [v84 objectForKey:*(*(&v134 + 1) + 8 * n)];
        [array6 addObject:v89];
      }

      v86 = [v84 countByEnumeratingWithState:&v134 objects:v158 count:16];
    }

    while (v86);
  }

  if (!speechRecognitionHypothesis)
  {
    viewModel = [(SiriSharedUICompactViewModelController *)selfCopy viewModel];
    speechRecognitionHypothesis = [viewModel speechRecognitionHypothesis];
  }

  if (v124)
  {
    viewModel2 = [(SiriSharedUICompactViewModelController *)selfCopy viewModel];
    resultTranscriptItems = [viewModel2 resultTranscriptItems];
    v93 = [resultTranscriptItems arrayByAddingObjectsFromArray:array4];
    v94 = [v93 mutableCopy];

    viewModel3 = [(SiriSharedUICompactViewModelController *)selfCopy viewModel];
    conversationTranscriptItems = [viewModel3 conversationTranscriptItems];
    v97 = [conversationTranscriptItems arrayByAddingObjectsFromArray:array5];
    v98 = [v97 mutableCopy];

    v99 = [array6 count];
    viewModel4 = [(SiriSharedUICompactViewModelController *)selfCopy viewModel];
    additionalPlatterTranscriptItems = [viewModel4 additionalPlatterTranscriptItems];
    v102 = [additionalPlatterTranscriptItems count];

    if (v99 == v102 && [array6 count])
    {
      v133 = v98;
      v103 = 0;
      v82 = selfCopy;
      do
      {
        viewModel5 = [(SiriSharedUICompactViewModelController *)v82 viewModel];
        additionalPlatterTranscriptItems2 = [viewModel5 additionalPlatterTranscriptItems];
        v106 = [additionalPlatterTranscriptItems2 objectAtIndexedSubscript:v103];
        v107 = [array6 objectAtIndexedSubscript:v103];
        v108 = [v107 mutableCopy];
        v109 = [v106 arrayByAddingObjectsFromArray:v108];
        [array6 setObject:v109 atIndexedSubscript:v103];

        v82 = selfCopy;
        ++v103;
      }

      while ([array6 count] > v103);
      array4 = v94;
      array5 = v133;
      v7 = v130;
    }

    else
    {
      array4 = v94;
      array5 = v98;
      v7 = v130;
      v82 = selfCopy;
    }
  }

  else if (v123 && ![array4 count])
  {
    saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];
    viewModel6 = [(SiriSharedUICompactViewModelController *)selfCopy viewModel];
    v112 = viewModel6;
    if (saeAvailable)
    {
      conversationTranscriptItems2 = [(NSArray *)viewModel6 conversationTranscriptItems];

      v114 = [(NSArray *)conversationTranscriptItems2 count];
      storedTranscriptItems = conversationTranscriptItems2;
      if (!v114)
      {
        storedTranscriptItems = selfCopy->_storedTranscriptItems;
      }

      resultTranscriptItems2 = array5;
      array5 = [(NSArray *)storedTranscriptItems mutableCopy];
    }

    else
    {
      resultTranscriptItems2 = [(NSArray *)viewModel6 resultTranscriptItems];
      v117 = [resultTranscriptItems2 mutableCopy];

      conversationTranscriptItems2 = v112;
      array4 = v117;
    }

    v7 = v130;
  }

  inputType = [(SiriSharedUICompactViewModelController *)v82 inputType];
  v119 = [SiriSharedUICompactViewModel alloc];
  [(SiriSharedUICompactViewModelController *)v82 _serverUtterancesToDisplayForConversation:conversationCopy];
  v121 = v120 = v82;
  v122 = [(SiriSharedUICompactViewModel *)v119 initWithInputType:inputType resultTranscriptItems:array4 conversationTranscriptItems:array5 additionalPlatterTranscriptItems:array6 serverUtterances:v121 speechRecognitionHypothesis:speechRecognitionHypothesis];

  [(SiriSharedUICompactViewModelController *)v120 setViewModel:v122];
}

- (id)_userUtteranceForConversationItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] == 1)
  {
    aceObject = [itemCopy aceObject];
    recognition = [aceObject recognition];
    refId = [aceObject refId];
    sessionId = [aceObject sessionId];
    af_userUtteranceValue = [recognition af_userUtteranceValueWithRefId:refId sessionId:sessionId];

LABEL_5:
    goto LABEL_7;
  }

  if ([itemCopy type] == 2)
  {
    aceObject = [itemCopy aceObject];
    af_userUtteranceValue = [aceObject af_userUtteranceValue];
    goto LABEL_5;
  }

  af_userUtteranceValue = 0;
LABEL_7:

  return af_userUtteranceValue;
}

- (id)_serverUtterancesToDisplayForConversation:(id)conversation
{
  v51 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  serverUtteranceConversationIds = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  identifier = [conversationCopy identifier];
  v7 = [serverUtteranceConversationIds objectForKey:identifier];
  v8 = [v7 copy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v41;
    v13 = MEMORY[0x277CEF098];
    *&v10 = 136315650;
    v35 = v10;
    do
    {
      v14 = 0;
      v37 = v11;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        v16 = [conversationCopy itemWithIdentifier:{v15, v35}];
        v17 = v16;
        if (v16)
        {
          aceObject = [v16 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            serverUtteranceConversationIds2 = aceObject;
            text = [serverUtteranceConversationIds2 text];

            if (text)
            {
              [v36 addObject:serverUtteranceConversationIds2];
            }

            aceObject = serverUtteranceConversationIds2;
          }

          else
          {
            v25 = v12;
            v26 = v13;
            v27 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              uUIDString = [v15 UUIDString];
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              *buf = v35;
              v45 = "[SiriSharedUICompactViewModelController _serverUtterancesToDisplayForConversation:]";
              v46 = 2112;
              v47 = uUIDString;
              v48 = 2112;
              v49 = v31;
              _os_log_impl(&dword_21E3EB000, v28, OS_LOG_TYPE_DEFAULT, "%s #compact Removing %@ because it is no longer an SAUIAssistantUtteranceView. New type: %@", buf, 0x20u);
            }

            serverUtteranceConversationIds2 = [(SiriSharedUICompactViewModelController *)selfCopy serverUtteranceConversationIds];
            identifier2 = [conversationCopy identifier];
            v33 = [serverUtteranceConversationIds2 objectForKey:identifier2];
            [v33 removeObject:v15];

            v13 = v26;
            v12 = v25;
            v11 = v37;
          }
        }

        else
        {
          v21 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            uUIDString2 = [v15 UUIDString];
            *buf = 136315394;
            v45 = "[SiriSharedUICompactViewModelController _serverUtterancesToDisplayForConversation:]";
            v46 = 2112;
            v47 = uUIDString2;
            _os_log_impl(&dword_21E3EB000, v22, OS_LOG_TYPE_DEFAULT, "%s #compact Removing %@ because it is no longer in the conversation", buf, 0x16u);
          }

          aceObject = [(SiriSharedUICompactViewModelController *)selfCopy serverUtteranceConversationIds];
          serverUtteranceConversationIds2 = [conversationCopy identifier];
          v24 = [aceObject objectForKey:serverUtteranceConversationIds2];
          [v24 removeObject:v15];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v11);
  }

  return v36;
}

- (void)_clearAdditionalContentTranscriptItems
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [SiriSharedUITranscriptItem additionalContentViewPlatterCategories:0];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      array2 = [MEMORY[0x277CBEA60] array];
      [array addObject:array2];

      if (!--v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v9 = [array copy];
  viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
  v11 = [viewModel copyWithAdditionalPlatterTranscriptItems:v9];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v11];
}

- (int64_t)inputType
{
  delegate = [(SiriSharedUICompactViewModelController *)self delegate];
  v4 = [delegate inputTypeForCompactViewModelController:self];

  return v4;
}

- (void)inputTypeDidChange
{
  inputType = [(SiriSharedUICompactViewModelController *)self inputType];
  viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
  v5 = [viewModel copyWithInputType:inputType];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v5];
}

- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object
{
  v6 = MEMORY[0x277D61B08];
  objectCopy = object;
  utteranceCopy = utterance;
  v11 = [[v6 alloc] initWithUserUtterance:utteranceCopy backingAceObject:objectCopy isFinal:1];

  viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
  v10 = [viewModel copyWithSpeechRecognitionHypothesis:v11];
  [(SiriSharedUICompactViewModelController *)self setViewModel:v10];
}

- (void)resetViewsAndClearASR:(BOOL)r
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SiriSharedUICompactViewModelController resetViewsAndClearASR:]";
    _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #suppressSnippet: Reset previous view except for ASR.", &v9, 0xCu);
  }

  v6 = objc_alloc_init(SiriSharedUICompactViewModel);
  if (!r)
  {
    speechRecognitionHypothesis = [(SiriSharedUICompactViewModel *)self->_viewModel speechRecognitionHypothesis];
    v8 = [(SiriSharedUICompactViewModel *)v6 copyWithSpeechRecognitionHypothesis:speechRecognitionHypothesis];

    v6 = v8;
  }

  [(SiriSharedUICompactViewModelController *)self setViewModel:v6];
}

- (void)revealLatencyView
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriSharedUICompactViewModelController revealLatencyView]";
  _os_log_debug_impl(&dword_21E3EB000, log, OS_LOG_TYPE_DEBUG, "%s Attempting to display latency view", &v1, 0xCu);
}

- (void)updateLatencySummary:(id)summary
{
  summaryCopy = summary;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SiriSharedUICompactViewModelController *)summaryCopy updateLatencySummary:v5];
  }

  v6 = [objc_alloc(MEMORY[0x277CEF4F0]) initWithString:summaryCopy correctionIdentifier:0];
  v7 = [objc_alloc(MEMORY[0x277D61B08]) initWithUserUtterance:v6 backingAceObject:0 isFinal:0];
  viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
  v9 = [viewModel copyWithSpeechRecognitionHypothesis:v7];
  [(SiriSharedUICompactViewModelController *)self setViewModel:v9];
}

- (void)updateCurrentRequestText:(id)text
{
  v4 = MEMORY[0x277CEF4F0];
  textCopy = text;
  v13 = [[v4 alloc] initWithString:textCopy correctionIdentifier:0];

  v6 = [objc_alloc(MEMORY[0x277D61B08]) initWithUserUtterance:v13 backingAceObject:0 isFinal:1];
  viewModel = [(SiriSharedUICompactViewModelController *)self viewModel];
  v8 = [viewModel copyWithConversationTranscriptItems:MEMORY[0x277CBEBF8] serverUtterances:MEMORY[0x277CBEBF8] speechRecognitionHypothesis:v6 latencyViewUtterance:0];

  serverUtteranceConversationIds = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  conversation = [(SiriSharedUICompactViewModelController *)self conversation];
  identifier = [conversation identifier];
  v12 = [serverUtteranceConversationIds objectForKey:identifier];
  [v12 removeAllObjects];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v8];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  selfCopy = self;
  delegate = [(SiriSharedUICompactViewModelController *)self delegate];
  LOBYTE(selfCopy) = [delegate compactViewModelControllerShouldAlwaysShowRecognizedSpeech:selfCopy];

  return selfCopy;
}

- (SiriSharedUICompactViewModelChangeObserving)viewModelChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModelChangeObserver);

  return WeakRetained;
}

- (SiriSharedUICompactViewModelControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processUpdatedConversationItemsAtIndexPaths:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SiriSharedUICompactViewModelController _processUpdatedConversationItemsAtIndexPaths:]";
  _os_log_fault_impl(&dword_21E3EB000, log, OS_LOG_TYPE_FAULT, "%s #compact The conversation updated multiple speech conversation items, but the compact presentation can only show one at a time. The user will only see the last recognition in the list of presented items.", buf, 0xCu);
}

- (void)_processInsertedConversationItems:(os_log_t)log forConversation:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SiriSharedUICompactViewModelController _processInsertedConversationItems:forConversation:]";
  _os_log_fault_impl(&dword_21E3EB000, log, OS_LOG_TYPE_FAULT, "%s #compact Conversation inserted multiple recognized speech conversation items, but the compact presentation can only show one at a time. The user will only see the last recognition in the list of presented items.", buf, 0xCu);
}

- (void)updateLatencySummary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriSharedUICompactViewModelController updateLatencySummary:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_21E3EB000, a2, OS_LOG_TYPE_DEBUG, "%s Updating latency summary to %@", &v2, 0x16u);
}

@end