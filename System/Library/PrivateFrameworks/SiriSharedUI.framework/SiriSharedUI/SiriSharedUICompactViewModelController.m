@interface SiriSharedUICompactViewModelController
- (BOOL)alwaysShowRecognizedSpeech;
- (SiriSharedUICompactViewModelChangeObserving)viewModelChangeObserver;
- (SiriSharedUICompactViewModelController)initWithConversation:(id)a3 delegate:(id)a4;
- (SiriSharedUICompactViewModelControllerDelegate)delegate;
- (id)_serverUtterancesToDisplayForConversation:(id)a3;
- (id)_userUtteranceForConversationItem:(id)a3;
- (int64_t)inputType;
- (unint64_t)_generateDiffFromViewModel:(id)a3 toViewModel:(id)a4;
- (void)_clearAdditionalContentTranscriptItems;
- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)a3;
- (void)_processInitialConversationItemsForConversation:(id)a3;
- (void)_processInsertedConversationItems:(id)a3 forConversation:(id)a4;
- (void)_processUpdatedConversationItemsAtIndexPaths:(id)a3;
- (void)conversationDidChangeWithTransaction:(id)a3;
- (void)inputTypeDidChange;
- (void)resetViewsAndClearASR:(BOOL)a3;
- (void)revealLatencyView;
- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4;
- (void)setViewModel:(id)a3;
- (void)setViewModelChangeObserver:(id)a3;
- (void)updateCurrentRequestText:(id)a3;
- (void)updateLatencySummary:(id)a3;
@end

@implementation SiriSharedUICompactViewModelController

- (SiriSharedUICompactViewModelController)initWithConversation:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SiriSharedUICompactViewModelController;
  v9 = [(SiriSharedUICompactViewModelController *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(SiriSharedUICompactViewModel);
    viewModel = v9->_viewModel;
    v9->_viewModel = v10;

    objc_storeStrong(&v9->_conversation, a3);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverUtteranceConversationIds = v9->_serverUtteranceConversationIds;
    v9->_serverUtteranceConversationIds = v12;

    v9->_immersiveExperienceOn = 0;
    objc_storeWeak(&v9->_delegate, v8);
    [(SiriSharedUICompactViewModelController *)v9 inputTypeDidChange];
    [(SiriSharedUICompactViewModelController *)v9 _processInitialConversationItemsForConversation:v7];
  }

  return v9;
}

- (void)setViewModelChangeObserver:(id)a3
{
  objc_storeWeak(&self->_viewModelChangeObserver, a3);
  v4 = objc_alloc_init(SiriSharedUICompactViewModel);
  [(SiriSharedUICompactViewModelController *)self _notifyObserverOfViewModelChangeWithDiff:[(SiriSharedUICompactViewModelController *)self _generateDiffFromViewModel:v4 toViewModel:self->_viewModel]];
}

- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)a3
{
  if (a3)
  {
    v5 = [(SiriSharedUICompactViewModelController *)self viewModelChangeObserver];
    v6 = [(SiriSharedUICompactViewModelController *)self viewModel];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      [v5 compactViewModelDidChange:v6 withDiff:a3];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__SiriSharedUICompactViewModelController__notifyObserverOfViewModelChangeWithDiff___block_invoke;
      block[3] = &unk_278354BA0;
      v8 = v5;
      v9 = v6;
      v10 = a3;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (unint64_t)_generateDiffFromViewModel:(id)a3 toViewModel:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v6 resultTranscriptItems];
  v9 = [v5 resultTranscriptItems];
  v10 = [v8 isEqualToArray:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    [v7 addObject:@"resultTranscriptItems"];
    v11 = 1;
  }

  v12 = [v6 conversationTranscriptItems];
  v13 = [v5 conversationTranscriptItems];
  v14 = [v12 isEqualToArray:v13];

  if ((v14 & 1) == 0)
  {
    v11 |= 2uLL;
    [v7 addObject:@"conversationTranscriptItems"];
  }

  v15 = [v6 additionalPlatterTranscriptItems];
  v16 = [v5 additionalPlatterTranscriptItems];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = v15;
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

  v24 = v7;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v25 = v16;
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
  v34 = [v6 serverUtterances];
  v35 = [v5 serverUtterances];
  v36 = [v34 isEqualToArray:v35];

  if ((v36 & 1) == 0)
  {
    v33 |= 4uLL;
    [v32 addObject:@"serverUtterances"];
  }

  v37 = [v6 speechRecognitionHypothesis];
  v38 = [v5 speechRecognitionHypothesis];

  if (v37 != v38)
  {
    v33 |= 8uLL;
    [v32 addObject:@"speechRecognitionHypothesis"];
  }

  v39 = [v6 latencyViewModel];
  v40 = [v5 latencyViewModel];
  v41 = [v39 viewShouldUpdateFromOldModel:v40];

  if (v41)
  {
    v33 |= 0x40uLL;
    [v32 addObject:@"latencyViewModel"];
  }

  v42 = [v6 inputType];
  if (v42 != [v5 inputType])
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
      v64 = v5;
      v65 = 2112;
      v66 = v6;
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

- (void)setViewModel:(id)a3
{
  viewModel = self->_viewModel;
  v5 = a3;
  v6 = [(SiriSharedUICompactViewModelController *)self _generateDiffFromViewModel:viewModel toViewModel:v5];
  v7 = [v5 copy];

  v8 = self->_viewModel;
  self->_viewModel = v7;

  [(SiriSharedUICompactViewModelController *)self _notifyObserverOfViewModelChangeWithDiff:v6];
}

- (void)_processInitialConversationItemsForConversation:(id)a3
{
  v7 = a3;
  if ([v7 numberOfChildrenForItemWithIdentifier:0] >= 1)
  {
    v4 = [v7 lastItem];
    v5 = [v4 identifier];
    v6 = [v7 sruif_itemsRelatedToIdentifier:v5];

    [(SiriSharedUICompactViewModelController *)self _processInsertedConversationItems:v6 forConversation:v7];
  }
}

- (void)conversationDidChangeWithTransaction:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 updatedItemIndexPaths];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v7 = v6;

  v8 = [v3 insertedItemIndexPaths];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v11 = v10;

  v12 = [(SiriSharedUICompactViewModelController *)self conversation];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
  v45 = v13;
  v42 = v11;
  v43 = v3;
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

        v18 = [v12 itemAtIndexPath:*(*(&v51 + 1) + 8 * i)];
        if ([v18 type] == 3)
        {
          v19 = [v18 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (-[SiriSharedUICompactViewModelController serverUtteranceConversationIds](self, "serverUtteranceConversationIds"), v20 = objc_claimAutoreleasedReturnValue(), [v12 identifier], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKey:", v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "identifier"), v23 = v15, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v22, "containsObject:", v24), v24, v15 = v23, v22, v16 = v44, v21, v20, v13 = v45, !v25))
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
    v3 = v43;
  }

  else
  {
    v26 = 0;
  }

  if (![v11 count] && (v26 & 1) == 0)
  {
    v27 = self;
    v28 = v13;
LABEL_26:
    [(SiriSharedUICompactViewModelController *)v27 _processUpdatedConversationItemsAtIndexPaths:v28];
    goto LABEL_45;
  }

  if ([v11 count] == 1)
  {
    v29 = [v11 objectAtIndexedSubscript:0];
    v30 = [v12 itemAtIndexPath:v29];
    v31 = [v30 type];

    if (v31 == 1)
    {
      v32 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v58 = "[SiriSharedUICompactViewModelController conversationDidChangeWithTransaction:]";
        _os_log_impl(&dword_21E3EB000, v32, OS_LOG_TYPE_DEFAULT, "%s The only item added to the conversation is an SASSpeechRecognized. Treating as an update", buf, 0xCu);
      }

      v27 = self;
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
        v40 = [v12 itemAtIndexPath:v39];
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
    [(SiriSharedUICompactViewModelController *)self _processInsertedConversationItems:v33 forConversation:v12];
  }

  v11 = v42;
  v3 = v43;
  v13 = v45;
LABEL_45:
}

- (void)_processUpdatedConversationItemsAtIndexPaths:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SiriSharedUICompactViewModelController *)self conversation];
  v50 = [(SiriSharedUICompactViewModelController *)self alwaysShowRecognizedSpeech];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = v4;
  v42 = v7;
  v49 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v49)
  {
    v44 = 0;
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

        v11 = [v5 itemAtIndexPath:{*(*(&v51 + 1) + 8 * i), v42}];
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

          if (v50 || v13)
          {
            v14 = objc_alloc(MEMORY[0x277D61B08]);
            v15 = [(SiriSharedUICompactViewModelController *)self _userUtteranceForConversationItem:v11];
            v16 = [v11 aceObject];
            v17 = [v14 initWithUserUtterance:v15 backingAceObject:v16 isFinal:{objc_msgSend(v11, "type") == 1}];

            v18 = [(SiriSharedUICompactViewModelController *)self viewModel];
            v19 = [v18 speechRecognitionHypothesis];
            if ([v19 isFinal])
            {
              v20 = 0;
            }

            else
            {
              v28 = [(SiriSharedUICompactViewModelController *)self viewModel];
              v29 = [v28 speechRecognitionHypothesis];
              v20 = v29 != 0;
            }

            v9 = 0x277CEF000uLL;

            if (v20 || v50)
            {
              v44 = !v20;
            }

            else
            {
              v44 = [MEMORY[0x277CEF4D0] saeAvailable];
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
            v31 = [v30 bestTextInterpretation];

            v9 = 0x277CEF000;
            v45 = v31;
          }

          v8 = v17;
        }

        else
        {
          v21 = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
          v22 = [v5 identifier];
          v23 = [v21 objectForKey:v22];
          [v11 identifier];
          v24 = self;
          v26 = v25 = v5;
          v27 = [v23 containsObject:v26];

          v5 = v25;
          self = v24;
          v7 = v42;

          v6 = v47;
          v9 = 0x277CEF000;
          v46 |= v27;
        }

        v32 = [v11 identifier];
        [v6 addObject:v32];
      }

      v49 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v49);
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v45 = 0;
    v8 = 0;
  }

  if ([v6 count])
  {
    v33 = [(SiriSharedUICompactViewModelController *)self delegate];
    [v33 compactViewModelController:self didProcessConversationItemsWithIdentifiers:v6];
  }

  if (((v8 | v45) != 0) | v46 & 1)
  {
    v34 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v35 = @"updating existing viewModel with new hypothesis.";
      if (v44)
      {
        v35 = @"clearing previous content from viewModel since this hypothesis .";
      }

      *buf = 136315394;
      v56 = "[SiriSharedUICompactViewModelController _processUpdatedConversationItemsAtIndexPaths:]";
      v57 = 2112;
      v58 = v35;
      _os_log_impl(&dword_21E3EB000, v34, OS_LOG_TYPE_DEFAULT, "%s #compact speechRecognitionHypothesis updated, %@", buf, 0x16u);
    }

    v36 = [(SiriSharedUICompactViewModelController *)self viewModel];
    v37 = v36;
    if (v44)
    {
      v38 = self;
      v39 = [v36 copyWithConversationTranscriptItems:MEMORY[0x277CBEBF8] serverUtterances:MEMORY[0x277CBEBF8] speechRecognitionHypothesis:v8 latencyViewUtterance:v45];

      v37 = [(SiriSharedUICompactViewModelController *)v38 serverUtteranceConversationIds];
      v40 = [v5 identifier];
      v41 = [v37 objectForKey:v40];
      [v41 removeAllObjects];
    }

    else
    {
      v40 = [(SiriSharedUICompactViewModelController *)self _serverUtterancesToDisplayForConversation:v5];
      v38 = self;
      v39 = [v37 copyWithServerUtterances:v40 speechRecognitionHypothesis:v8 latencyViewUtterance:v45];
    }

    [(SiriSharedUICompactViewModelController *)v38 setViewModel:v39];
    v7 = v43;
  }
}

- (void)_processInsertedConversationItems:(id)a3 forConversation:(id)a4
{
  v168 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v125 = a4;
  [(SiriSharedUICompactViewModelController *)self _clearAdditionalContentTranscriptItems];
  v127 = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v154 objects:v167 count:16];
  v131 = self;
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
          v13 = v8;
          v14 = v125;
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

  v13 = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  v14 = v125;
  v15 = [v125 identifier];
  v16 = [v13 objectForKey:v15];
  [v16 removeAllObjects];

  v124 = 0;
LABEL_11:

  v126 = [MEMORY[0x277CBEB18] array];
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

        v23 = [*(*(&v150 + 1) + 8 * j) aceObject];
        v24 = [v23 propertyForKey:v21];

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
    v14 = v125;
  }

  else
  {
    v123 = 0;
  }

  p_isa = &v131->super.isa;
  if (!SiriSharedUIDeviceIsPad() && (SiriSharedUIDeviceIsMac() & 1) == 0 && ![(SiriSharedUICompactViewModelController *)v131 immersiveExperienceOn])
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

            p_isa = &v131->super.isa;
            v31 = [(SiriSharedUICompactViewModelController *)v131 delegate];
            [v31 immersiveExperienceRequestedForViewModelController:v131];

            [(SiriSharedUICompactViewModelController *)v131 setImmersiveExperienceOn:1];
            v14 = v125;
            goto LABEL_37;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v146 objects:v165 count:16];
        v14 = v125;
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    p_isa = &v131->super.isa;
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
    v128 = 0;
    goto LABEL_71;
  }

  v33 = v32;
  v128 = 0;
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
      v36 = [v35 aceObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [p_isa delegate];
        v38 = [v37 siriDeviceLockedForViewModelController:p_isa];

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
        v39 = [p_isa serverUtteranceConversationIds];
        v40 = [v14 identifier];
        v41 = [v39 objectForKey:v40];

        if (!v41)
        {
          v42 = [p_isa serverUtteranceConversationIds];
          v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v44 = [v14 identifier];
          [v42 setObject:v43 forKey:v44];
        }

        v45 = [p_isa serverUtteranceConversationIds];
        v46 = [v14 identifier];
        v47 = [v45 objectForKey:v46];
        v48 = [v35 identifier];
        [v47 addObject:v48];
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v35 presentationState] != 3)
      {
        v53 = [p_isa delegate];
        v45 = [v53 compactViewModelController:p_isa requestsTranscriptItemForAceObject:v36];

        v54 = [v45 viewController];
        [v54 setAceObject:v36];

        v55 = [v45 viewController];
        [v55 wasAddedToTranscript];

        [v127 addObject:v45];
        [v126 addObject:v45];
        v46 = [v45 viewController];
        if (objc_opt_respondsToSelector())
        {
          [v46 configureForConversationStorable:v35];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_50;
        }

        v47 = [p_isa _instrumentationManager];
        v48 = [v47 currentInstrumentationTurnContext];
        v56 = [v48 turnIdentifier];
        [v46 setInstrumentationTurnIdentifier:v56];

        v14 = v125;
LABEL_48:

        p_isa = &v131->super.isa;
        goto LABEL_49;
      }

      if ([v35 type] == 1)
      {
        if (v128)
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
          v45 = [p_isa _userUtteranceForConversationItem:v35];
          v46 = [v35 aceObject];
          v51 = [v50 initWithUserUtterance:v45 backingAceObject:v46 isFinal:1];
          v47 = v128;
          v128 = v51;
LABEL_49:

LABEL_50:
          v7 = v130;
        }
      }

      v52 = [v35 identifier];
      [v7 addObject:v52];

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

  if ([v126 count])
  {
    objc_storeStrong(p_isa + 7, v126);
  }

  if ([v7 count])
  {
    v59 = [p_isa delegate];
    [v59 compactViewModelController:p_isa didProcessConversationItemsWithIdentifiers:v7];
  }

  v60 = [MEMORY[0x277CBEB38] dictionary];
  if ([v127 count] || (-[SiriSharedUICompactViewModelController serverUtteranceConversationIds](v131, "serverUtteranceConversationIds"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v125, "identifier"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "objectForKey:", v62), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "count"), v63, v62, v61, v64))
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v65 = v127;
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
          v71 = [v70 platterCategory];
          v72 = [MEMORY[0x277CCABB0] numberWithInteger:v71];
          v73 = [v60 objectForKey:v72];

          if (!v73)
          {
            v74 = [MEMORY[0x277CBEB18] array];
            [v60 setObject:v74 forKey:v72];
          }

          v75 = [v60 objectForKeyedSubscript:v72];
          [v75 addObject:v70];
        }

        v67 = [v65 countByEnumeratingWithState:&v138 objects:v159 count:16];
      }

      while (v67);
    }

    v7 = v130;
  }

  v76 = [MEMORY[0x277CBEB18] array];
  v77 = [MEMORY[0x277CBEB18] array];
  v78 = [v60 objectForKeyedSubscript:&unk_282F90FD8];

  if (v78)
  {
    v79 = [v60 objectForKeyedSubscript:&unk_282F90FD8];

    [v60 removeObjectForKey:&unk_282F90FD8];
    v77 = v79;
  }

  v80 = [v60 objectForKeyedSubscript:&unk_282F90FF0];

  if (v80)
  {
    v81 = [v60 objectForKeyedSubscript:&unk_282F90FF0];

    [v60 removeObjectForKey:&unk_282F90FF0];
    v76 = v81;
  }

  v82 = v131;
  v83 = [MEMORY[0x277CBEB18] array];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v84 = v60;
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
        [v83 addObject:v89];
      }

      v86 = [v84 countByEnumeratingWithState:&v134 objects:v158 count:16];
    }

    while (v86);
  }

  if (!v128)
  {
    v90 = [(SiriSharedUICompactViewModelController *)v131 viewModel];
    v128 = [v90 speechRecognitionHypothesis];
  }

  if (v124)
  {
    v91 = [(SiriSharedUICompactViewModelController *)v131 viewModel];
    v92 = [v91 resultTranscriptItems];
    v93 = [v92 arrayByAddingObjectsFromArray:v76];
    v94 = [v93 mutableCopy];

    v95 = [(SiriSharedUICompactViewModelController *)v131 viewModel];
    v96 = [v95 conversationTranscriptItems];
    v97 = [v96 arrayByAddingObjectsFromArray:v77];
    v98 = [v97 mutableCopy];

    v99 = [v83 count];
    v100 = [(SiriSharedUICompactViewModelController *)v131 viewModel];
    v101 = [v100 additionalPlatterTranscriptItems];
    v102 = [v101 count];

    if (v99 == v102 && [v83 count])
    {
      v133 = v98;
      v103 = 0;
      v82 = v131;
      do
      {
        v104 = [(SiriSharedUICompactViewModelController *)v82 viewModel];
        v105 = [v104 additionalPlatterTranscriptItems];
        v106 = [v105 objectAtIndexedSubscript:v103];
        v107 = [v83 objectAtIndexedSubscript:v103];
        v108 = [v107 mutableCopy];
        v109 = [v106 arrayByAddingObjectsFromArray:v108];
        [v83 setObject:v109 atIndexedSubscript:v103];

        v82 = v131;
        ++v103;
      }

      while ([v83 count] > v103);
      v76 = v94;
      v77 = v133;
      v7 = v130;
    }

    else
    {
      v76 = v94;
      v77 = v98;
      v7 = v130;
      v82 = v131;
    }
  }

  else if (v123 && ![v76 count])
  {
    v110 = [MEMORY[0x277CEF4D0] saeAvailable];
    v111 = [(SiriSharedUICompactViewModelController *)v131 viewModel];
    v112 = v111;
    if (v110)
    {
      v113 = [(NSArray *)v111 conversationTranscriptItems];

      v114 = [(NSArray *)v113 count];
      storedTranscriptItems = v113;
      if (!v114)
      {
        storedTranscriptItems = v131->_storedTranscriptItems;
      }

      v116 = v77;
      v77 = [(NSArray *)storedTranscriptItems mutableCopy];
    }

    else
    {
      v116 = [(NSArray *)v111 resultTranscriptItems];
      v117 = [v116 mutableCopy];

      v113 = v112;
      v76 = v117;
    }

    v7 = v130;
  }

  v118 = [(SiriSharedUICompactViewModelController *)v82 inputType];
  v119 = [SiriSharedUICompactViewModel alloc];
  [(SiriSharedUICompactViewModelController *)v82 _serverUtterancesToDisplayForConversation:v125];
  v121 = v120 = v82;
  v122 = [(SiriSharedUICompactViewModel *)v119 initWithInputType:v118 resultTranscriptItems:v76 conversationTranscriptItems:v77 additionalPlatterTranscriptItems:v83 serverUtterances:v121 speechRecognitionHypothesis:v128];

  [(SiriSharedUICompactViewModelController *)v120 setViewModel:v122];
}

- (id)_userUtteranceForConversationItem:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = [v3 aceObject];
    v5 = [v4 recognition];
    v6 = [v4 refId];
    v7 = [v4 sessionId];
    v8 = [v5 af_userUtteranceValueWithRefId:v6 sessionId:v7];

LABEL_5:
    goto LABEL_7;
  }

  if ([v3 type] == 2)
  {
    v4 = [v3 aceObject];
    v8 = [v4 af_userUtteranceValue];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_serverUtterancesToDisplayForConversation:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = self;
  v5 = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];
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
        v16 = [v4 itemWithIdentifier:{v15, v35}];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 aceObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v20 = [v19 text];

            if (v20)
            {
              [v36 addObject:v19];
            }

            v18 = v19;
          }

          else
          {
            v25 = v12;
            v26 = v13;
            v27 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              v29 = [v15 UUIDString];
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              *buf = v35;
              v45 = "[SiriSharedUICompactViewModelController _serverUtterancesToDisplayForConversation:]";
              v46 = 2112;
              v47 = v29;
              v48 = 2112;
              v49 = v31;
              _os_log_impl(&dword_21E3EB000, v28, OS_LOG_TYPE_DEFAULT, "%s #compact Removing %@ because it is no longer an SAUIAssistantUtteranceView. New type: %@", buf, 0x20u);
            }

            v19 = [(SiriSharedUICompactViewModelController *)v39 serverUtteranceConversationIds];
            v32 = [v4 identifier];
            v33 = [v19 objectForKey:v32];
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
            v23 = [v15 UUIDString];
            *buf = 136315394;
            v45 = "[SiriSharedUICompactViewModelController _serverUtterancesToDisplayForConversation:]";
            v46 = 2112;
            v47 = v23;
            _os_log_impl(&dword_21E3EB000, v22, OS_LOG_TYPE_DEFAULT, "%s #compact Removing %@ because it is no longer in the conversation", buf, 0x16u);
          }

          v18 = [(SiriSharedUICompactViewModelController *)v39 serverUtteranceConversationIds];
          v19 = [v4 identifier];
          v24 = [v18 objectForKey:v19];
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
  v3 = [MEMORY[0x277CBEB18] array];
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

      v8 = [MEMORY[0x277CBEA60] array];
      [v3 addObject:v8];

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

  v9 = [v3 copy];
  v10 = [(SiriSharedUICompactViewModelController *)self viewModel];
  v11 = [v10 copyWithAdditionalPlatterTranscriptItems:v9];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v11];
}

- (int64_t)inputType
{
  v3 = [(SiriSharedUICompactViewModelController *)self delegate];
  v4 = [v3 inputTypeForCompactViewModelController:self];

  return v4;
}

- (void)inputTypeDidChange
{
  v3 = [(SiriSharedUICompactViewModelController *)self inputType];
  v4 = [(SiriSharedUICompactViewModelController *)self viewModel];
  v5 = [v4 copyWithInputType:v3];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v5];
}

- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4
{
  v6 = MEMORY[0x277D61B08];
  v7 = a4;
  v8 = a3;
  v11 = [[v6 alloc] initWithUserUtterance:v8 backingAceObject:v7 isFinal:1];

  v9 = [(SiriSharedUICompactViewModelController *)self viewModel];
  v10 = [v9 copyWithSpeechRecognitionHypothesis:v11];
  [(SiriSharedUICompactViewModelController *)self setViewModel:v10];
}

- (void)resetViewsAndClearASR:(BOOL)a3
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
  if (!a3)
  {
    v7 = [(SiriSharedUICompactViewModel *)self->_viewModel speechRecognitionHypothesis];
    v8 = [(SiriSharedUICompactViewModel *)v6 copyWithSpeechRecognitionHypothesis:v7];

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

- (void)updateLatencySummary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(SiriSharedUICompactViewModelController *)v4 updateLatencySummary:v5];
  }

  v6 = [objc_alloc(MEMORY[0x277CEF4F0]) initWithString:v4 correctionIdentifier:0];
  v7 = [objc_alloc(MEMORY[0x277D61B08]) initWithUserUtterance:v6 backingAceObject:0 isFinal:0];
  v8 = [(SiriSharedUICompactViewModelController *)self viewModel];
  v9 = [v8 copyWithSpeechRecognitionHypothesis:v7];
  [(SiriSharedUICompactViewModelController *)self setViewModel:v9];
}

- (void)updateCurrentRequestText:(id)a3
{
  v4 = MEMORY[0x277CEF4F0];
  v5 = a3;
  v13 = [[v4 alloc] initWithString:v5 correctionIdentifier:0];

  v6 = [objc_alloc(MEMORY[0x277D61B08]) initWithUserUtterance:v13 backingAceObject:0 isFinal:1];
  v7 = [(SiriSharedUICompactViewModelController *)self viewModel];
  v8 = [v7 copyWithConversationTranscriptItems:MEMORY[0x277CBEBF8] serverUtterances:MEMORY[0x277CBEBF8] speechRecognitionHypothesis:v6 latencyViewUtterance:0];

  v9 = [(SiriSharedUICompactViewModelController *)self serverUtteranceConversationIds];
  v10 = [(SiriSharedUICompactViewModelController *)self conversation];
  v11 = [v10 identifier];
  v12 = [v9 objectForKey:v11];
  [v12 removeAllObjects];

  [(SiriSharedUICompactViewModelController *)self setViewModel:v8];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = self;
  v3 = [(SiriSharedUICompactViewModelController *)self delegate];
  LOBYTE(v2) = [v3 compactViewModelControllerShouldAlwaysShowRecognizedSpeech:v2];

  return v2;
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