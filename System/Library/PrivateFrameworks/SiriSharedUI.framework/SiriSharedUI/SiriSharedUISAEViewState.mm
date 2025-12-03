@interface SiriSharedUISAEViewState
- (SiriSharedUISAEViewState)initWithContainerView:(id)view;
- (SiriSharedUISAEViewStateDelegate)delegate;
- (void)_presentOrTransitionActiveSmartDialogView;
- (void)_presentPillOrCollapseResult;
- (void)_setActiveConversationTranscriptItems:(id)items;
- (void)_setIsPresentedWithSmartDialogText;
- (void)_setSmartDialogCard:(id)card;
- (void)_setSmartDialogPlugin:(id)plugin attribution:(id)attribution;
- (void)_setSmartDialogServerUtterances:(id)utterances;
- (void)_setSmartDialogUserUtterance:(id)utterance;
- (void)_setState:(int)state;
- (void)_smartDialogContentDidChange;
- (void)removeResponseElements:(unint64_t)elements;
- (void)saeViewModelDidChange:(id)change withDiff:(unint64_t)diff;
- (void)setIsDisplayingLatency:(BOOL)latency;
- (void)setSmartDialogAnimationInProgress:(BOOL)progress;
- (void)updateDoNotReplaceSmartDialogForSiriMail:(id)mail conversationTranscriptItems:(id)items shouldPreserveResultSpace:(BOOL)space;
@end

@implementation SiriSharedUISAEViewState

- (SiriSharedUISAEViewState)initWithContainerView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = SiriSharedUISAEViewState;
  v5 = [(SiriSharedUISAEViewState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SiriSharedUISAEViewState *)v5 setContainerView:viewCopy];
    *&v6->_currentViewState = 0;
  }

  return v6;
}

- (void)updateDoNotReplaceSmartDialogForSiriMail:(id)mail conversationTranscriptItems:(id)items shouldPreserveResultSpace:(BOOL)space
{
  v52 = *MEMORY[0x277D85DE8];
  mailCopy = mail;
  itemsCopy = items;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = mailCopy;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        dialogIdentifier = [*(*(&v42 + 1) + 8 * i) dialogIdentifier];
        v14 = dialogIdentifier;
        if (dialogIdentifier && (([dialogIdentifier hasPrefix:@"ContactResolution#HandleDisambiguation"] & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"SendMail#PromptForRecipients")))
        {
          self->_doNotReplaceSmartDialogForSiriMail = 1;
          v31 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            doNotReplaceSmartDialogForSiriMail = self->_doNotReplaceSmartDialogForSiriMail;
            *buf = 136315394;
            v48 = "[SiriSharedUISAEViewState updateDoNotReplaceSmartDialogForSiriMail:conversationTranscriptItems:shouldPreserveResultSpace:]";
            v49 = 1024;
            v50 = doNotReplaceSmartDialogForSiriMail;
            _os_log_impl(&dword_21E3EB000, v31, OS_LOG_TYPE_DEFAULT, "%s #sae dialog is a mail dialog, setting _doNotReplaceSmartDialogForSiriMail to %d", buf, 0x12u);
          }

          goto LABEL_32;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v10);
  }

  v35 = v8;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = itemsCopy;
  v15 = itemsCopy;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = *v39;
  while (2)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v38 + 1) + 8 * j);
      aceObject = [v20 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        aceObject2 = [v20 aceObject];
        bundleName = [aceObject2 bundleName];
        if ([bundleName isEqualToString:@"SiriMailUIPlugin"])
        {
        }

        else
        {
          bundleName2 = [aceObject2 bundleName];
          v26 = [bundleName2 isEqualToString:@"SiriInferenceFlowsUIPlugin"];

          if (!v26)
          {
LABEL_21:

            continue;
          }
        }

        responseViewId = [aceObject2 responseViewId];
        v28 = [responseViewId hasPrefix:@"contact#"];

        if ((v28 & 1) == 0)
        {
          self->_doNotReplaceSmartDialogForSiriMail = 1;
          v33 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            v34 = self->_doNotReplaceSmartDialogForSiriMail;
            *buf = 136315394;
            v48 = "[SiriSharedUISAEViewState updateDoNotReplaceSmartDialogForSiriMail:conversationTranscriptItems:shouldPreserveResultSpace:]";
            v49 = 1024;
            v50 = v34;
            _os_log_impl(&dword_21E3EB000, v33, OS_LOG_TYPE_DEFAULT, "%s #sae snippet is a mail plugin, setting _doNotReplaceSmartDialogForSiriMail to %d", buf, 0x12u);
          }

          v8 = v35;
          itemsCopy = v36;
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_24:

  self->_doNotReplaceSmartDialogForSiriMail = 0;
  v29 = *MEMORY[0x277CEF098];
  v8 = v35;
  itemsCopy = v36;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v30 = self->_doNotReplaceSmartDialogForSiriMail;
    *buf = 136315394;
    v48 = "[SiriSharedUISAEViewState updateDoNotReplaceSmartDialogForSiriMail:conversationTranscriptItems:shouldPreserveResultSpace:]";
    v49 = 1024;
    v50 = v30;
    _os_log_impl(&dword_21E3EB000, v29, OS_LOG_TYPE_DEFAULT, "%s #sae setting _doNotReplaceSmartDialogForSiriMail to %d", buf, 0x12u);
  }

LABEL_32:
}

- (void)saeViewModelDidChange:(id)change withDiff:(unint64_t)diff
{
  v163 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = changeCopy;
  selfCopy = self;
  v142 = changeCopy;
  if (diff != 8)
  {
    if (self->_animatingInActiveSmartDialogView)
    {
      v141 = [[SAEViewModelUpdates alloc] initWithViewModel:changeCopy diff:diff];
      objc_storeStrong(&self->_pendingViewModelUpdate, v141);
      v21 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        pendingViewModelUpdate = self->_pendingViewModelUpdate;
        *buf = 136315394;
        v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
        v159 = 2112;
        v160 = pendingViewModelUpdate;
        _os_log_impl(&dword_21E3EB000, v21, OS_LOG_TYPE_DEFAULT, "%s #sae: smartDialog is being animated, pending update: %@", buf, 0x16u);
      }

LABEL_160:

      goto LABEL_161;
    }

    diffCopy = diff;
    conversationTranscriptItems = [(SAEViewModelUpdates *)changeCopy conversationTranscriptItems];
    v141 = [conversationTranscriptItems mutableCopy];

    serverUtterances = [(SAEViewModelUpdates *)v142 serverUtterances];
    [(SiriSharedUISAEViewState *)self updateDoNotReplaceSmartDialogForSiriMail:serverUtterances conversationTranscriptItems:v141 shouldPreserveResultSpace:[(SAEViewModelUpdates *)v142 shouldPreserveResultSpace]];
    userUtterance = [(SAEViewModelUpdates *)v142 userUtterance];
    if ([(SAEViewModelUpdates *)v142 shouldPreserveResultSpace])
    {
      v24 = [(SAEViewModelUpdates *)v141 count]!= 0;
    }

    else
    {
      v24 = 0;
    }

    self->_shouldPreserveResultSpace = v24;
    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = v142;
      _os_log_impl(&dword_21E3EB000, v25, OS_LOG_TYPE_DEFAULT, "%s #sae incoming viewModel: %@", buf, 0x16u);
    }

    v26 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = v141;
      _os_log_impl(&dword_21E3EB000, v26, OS_LOG_TYPE_DEFAULT, "%s #sae Setting active conversation transcript items to : %@", buf, 0x16u);
    }

    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      firstObject = [(SAEViewModelUpdates *)serverUtterances firstObject];
      text = [firstObject text];
      *buf = 136315650;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = serverUtterances;
      v161 = 2112;
      v162 = text;
      _os_log_impl(&dword_21E3EB000, v27, OS_LOG_TYPE_DEFAULT, "%s #sae Setting server utterances to : %@ text: %@", buf, 0x20u);
    }

    v30 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      speech = [(SAEViewModelUpdates *)userUtterance speech];
      userUtterance2 = [speech userUtterance];
      bestTextInterpretation = [userUtterance2 bestTextInterpretation];
      *buf = 136315650;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = userUtterance;
      v161 = 2112;
      v162 = bestTextInterpretation;
      _os_log_impl(&dword_21E3EB000, v30, OS_LOG_TYPE_DEFAULT, "%s #sae Setting user utterance to : %@ text: %@", buf, 0x20u);
    }

    v34 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 1024;
      LODWORD(v160) = v24;
      _os_log_impl(&dword_21E3EB000, v34, OS_LOG_TYPE_DEFAULT, "%s #sae Setting shouldPreserveInResult to %d", buf, 0x12u);
    }

    latencySummary = [(SAEViewModelUpdates *)userUtterance latencySummary];

    delegate = [(SiriSharedUISAEViewState *)self delegate];
    alwaysShowRecognizedSpeech = [delegate alwaysShowRecognizedSpeech];
    if (latencySummary)
    {
      v38 = 1;
    }

    else
    {
      v38 = alwaysShowRecognizedSpeech;
    }

    if (v38)
    {
      v39 = 1;
    }

    else
    {
      speech2 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance speech];
      v39 = ([speech2 isFinal] & 1) != 0 || -[SiriSharedUISmartDialogView revealRecognizedSpeech](self->_activeSmartDialogView, "revealRecognizedSpeech");
    }

    if ((diffCopy & 2) != 0)
    {
      v41 = 1;
    }

    else
    {
      v41 = diffCopy & 1 | ((diffCopy & 4) != 0 && v39);
    }

    v134 = v41;
    requireFinalSpeechHypothesisBeforeAppearance = [(SiriSharedUISAEViewState *)self requireFinalSpeechHypothesisBeforeAppearance];
    speech3 = [(SAEViewModelUpdates *)userUtterance speech];
    userUtterance3 = [speech3 userUtterance];

    if (requireFinalSpeechHypothesisBeforeAppearance)
    {
      speech4 = [(SAEViewModelUpdates *)userUtterance speech];
      isFinal = [speech4 isFinal];
    }

    else
    {
      isFinal = 1;
    }

    shouldShow = 0;
    if (userUtterance3 && isFinal)
    {
      shouldShow = [(SAEViewModelUpdates *)userUtterance shouldShow];
    }

    if ([(SAEViewModelUpdates *)serverUtterances count])
    {
      selfCopy2 = self;
      if (!self->_isInAmbient)
      {
        v49 = 0;
LABEL_57:
        if (!selfCopy2->_activeSmartDialogView)
        {
          WeakRetained = objc_loadWeakRetained(&selfCopy2->_delegate);
          createNewSmartDialog = [WeakRetained createNewSmartDialog];
          activeSmartDialogView = selfCopy->_activeSmartDialogView;
          selfCopy->_activeSmartDialogView = createNewSmartDialog;

          selfCopy->_upcomingResultHasSnippet = 0;
        }

        speech5 = [(SAEViewModelUpdates *)userUtterance speech];
        if (speech5)
        {
          speech6 = [(SAEViewModelUpdates *)userUtterance speech];
          isFinal2 = [speech6 isFinal];

          v61 = isFinal2 ^ 1;
        }

        else
        {
          v61 = 0;
        }

        speech7 = [(SiriSharedUISAEUserUtteranceViewModel *)selfCopy->_userUtterance speech];
        userUtterance4 = [speech7 userUtterance];
        bestTextInterpretation2 = [userUtterance4 bestTextInterpretation];

        speech8 = [(SAEViewModelUpdates *)userUtterance speech];
        userUtterance5 = [speech8 userUtterance];
        bestTextInterpretation3 = [userUtterance5 bestTextInterpretation];

        v66 = 0;
        if (bestTextInterpretation2 && bestTextInterpretation3)
        {
          speech9 = [(SAEViewModelUpdates *)userUtterance speech];
          if ([speech9 isFinal])
          {
            v66 = [bestTextInterpretation2 isEqual:bestTextInterpretation3] ^ 1;
          }

          else
          {
            v66 = 0;
          }
        }

        if (bestTextInterpretation2)
        {
          v68 = 1;
        }

        else
        {
          v68 = bestTextInterpretation3 == 0;
        }

        v69 = !v68;
        if ([(SAEViewModelUpdates *)v141 count])
        {
          v70 = 0;
        }

        else
        {
          activeTranscriptItems = [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView activeTranscriptItems];
          v70 = [activeTranscriptItems count] != 0;
        }

        v72 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          doNotReplaceSmartDialogForSiriMail = selfCopy->_doNotReplaceSmartDialogForSiriMail;
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = doNotReplaceSmartDialogForSiriMail;
          _os_log_impl(&dword_21E3EB000, v72, OS_LOG_TYPE_DEFAULT, "%s #droplet: _doNotReplaceSmartDialogForSiriMail = %d", buf, 0x12u);
        }

        v74 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          hasResult = [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView hasResult];
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = hasResult;
          _os_log_impl(&dword_21E3EB000, v74, OS_LOG_TYPE_DEFAULT, "%s #droplet: [_activeSmartDialogView hasResult] = %d", buf, 0x12u);
        }

        v76 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          shouldShow2 = [(SAEViewModelUpdates *)userUtterance shouldShow];
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = shouldShow2;
          _os_log_impl(&dword_21E3EB000, v76, OS_LOG_TYPE_DEFAULT, "%s #droplet: [userUtterance shouldShow] = %d", buf, 0x12u);
        }

        v78 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v61;
          _os_log_impl(&dword_21E3EB000, v78, OS_LOG_TYPE_DEFAULT, "%s #droplet: ongoingASR = %d", buf, 0x12u);
        }

        v79 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v66;
          _os_log_impl(&dword_21E3EB000, v79, OS_LOG_TYPE_DEFAULT, "%s #droplet: differentFinalASR = %d", buf, 0x12u);
        }

        v80 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v69;
          _os_log_impl(&dword_21E3EB000, v80, OS_LOG_TYPE_DEFAULT, "%s #droplet: noPrevASRAndIncomingASR = %d", buf, 0x12u);
        }

        v81 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v70;
          _os_log_impl(&dword_21E3EB000, v81, OS_LOG_TYPE_DEFAULT, "%s #droplet: snippetNeedsToBeRemoved = %d", buf, 0x12u);
        }

        v82 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = diffCopy & 1;
          _os_log_impl(&dword_21E3EB000, v82, OS_LOG_TYPE_DEFAULT, "%s #droplet: smartDialogNeedsToBeRemoved = %d", buf, 0x12u);
        }

        if (!selfCopy->_doNotReplaceSmartDialogForSiriMail && [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView hasResult]&& diffCopy & 1 | ([(SAEViewModelUpdates *)userUtterance shouldShow]| v61 | v66 | v70) & 1 | v69 & 1)
        {
          objc_storeStrong(&selfCopy->_finalAndDisplayedSmartDialog, selfCopy->_activeSmartDialogView);
          [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView setIsActive:0];
          revealRecognizedSpeech = [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView revealRecognizedSpeech];
          v84 = objc_loadWeakRetained(&selfCopy->_delegate);
          createNewSmartDialog2 = [v84 createNewSmartDialog];
          v86 = selfCopy->_activeSmartDialogView;
          selfCopy->_activeSmartDialogView = createNewSmartDialog2;

          [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView setRevealRecognizedSpeech:revealRecognizedSpeech];
          v87 = [(NSArray *)selfCopy->_activeConversationTranscriptItems copy];
          previousConversationTranscriptItems = selfCopy->_previousConversationTranscriptItems;
          selfCopy->_previousConversationTranscriptItems = v87;

          selfCopy->_upcomingResultHasSnippet = 0;
          v89 = *MEMORY[0x277CEF098];
          if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_101;
          }

          v90 = selfCopy->_activeSmartDialogView;
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 2112;
          v160 = v90;
          v91 = "%s #droplet set new activeSmartDialog to %@";
          v92 = v89;
          v93 = 22;
        }

        else
        {
          v89 = *MEMORY[0x277CEF098];
          if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_101;
          }

          *buf = 136315138;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v91 = "%s #droplet keep old smartDialog";
          v92 = v89;
          v93 = 12;
        }

        _os_log_impl(&dword_21E3EB000, v92, OS_LOG_TYPE_DEFAULT, v91, buf, v93);
LABEL_101:

        [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView setIsInAmbient:selfCopy->_isInAmbient];
        delegate2 = [(SiriSharedUISAEViewState *)selfCopy delegate];
        if ([delegate2 alwaysShowRecognizedSpeech])
        {
          v95 = selfCopy->_inputType == 2;

          if (v95)
          {
            goto LABEL_107;
          }
        }

        else
        {
        }

        latencySummary2 = [(SAEViewModelUpdates *)userUtterance latencySummary];
        v97 = latencySummary2 == 0;

        if (v97)
        {
          v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v99 = [v98 localizedStringForKey:@"Working…" value:&stru_282F84AA8 table:@"Localizable"];

          [(SAEViewModelUpdates *)userUtterance setLatencySummary:v99];
        }

LABEL_107:
        [(SiriSharedUISAEViewState *)selfCopy _setSmartDialogUserUtterance:userUtterance];
        if ((diffCopy & 0x10) != 0)
        {
          v100 = objc_loadWeakRetained(&selfCopy->_delegate);
          v101 = objc_opt_respondsToSelector();

          if (v101)
          {
            v102 = objc_loadWeakRetained(&selfCopy->_delegate);
            [v102 speechRecognitionHypothesisUpdated];

            speech10 = [(SAEViewModelUpdates *)userUtterance speech];
            isFinal3 = [speech10 isFinal];

            if (isFinal3)
            {
              [(SiriSharedUISAEViewState *)selfCopy setIsDisplayingLatency:1];
            }
          }
        }

        if ((diffCopy & 1) == 0)
        {
          v133 = 0;
          v144 = 0;
LABEL_145:
          if ([(SAEViewModelUpdates *)v141 count]|| ([(SAEViewModelUpdates *)serverUtterances count]!= 0) & ~v49 | shouldShow & 1)
          {
            v126 = objc_loadWeakRetained(&selfCopy->_delegate);
            v127 = objc_opt_respondsToSelector();

            if (v127)
            {
              v128 = objc_loadWeakRetained(&selfCopy->_delegate);
              [v128 didPresentContentWithAceObject:v144];
            }
          }

          if ((diffCopy & 2) != 0)
          {
            [(SiriSharedUISAEViewState *)selfCopy _setSmartDialogServerUtterances:serverUtterances];
          }

          if ([(SAEViewModelUpdates *)serverUtterances count]!= 0 || v133)
          {
            [(SiriSharedUISAEViewState *)selfCopy _setIsPresentedWithSmartDialogText];
          }

          v129 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
            _os_log_impl(&dword_21E3EB000, v129, OS_LOG_TYPE_DEFAULT, "%s #sae Applying updates", buf, 0xCu);
          }

          if (v134)
          {
            v130 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
              _os_log_impl(&dword_21E3EB000, v130, OS_LOG_TYPE_DEFAULT, "%s #sae contentDidChange", buf, 0xCu);
            }

            [(SiriSharedUISAEViewState *)selfCopy _smartDialogContentDidChange];
          }

          goto LABEL_160;
        }

        v105 = objc_loadWeakRetained(&selfCopy->_delegate);
        v135 = [v105 filterTranscriptItemsForSAEDialogBoxContent:v141];

        v106 = [SiriSharedUIUtilities filterTranscriptItemsForRFPluginContent:v141];
        v108 = v107;
        v145 = v106;
        v131 = v108;
        v133 = v106 != 0;
        if (!v135 && !v106)
        {
          v109 = selfCopy;
          if ([(SAEViewModelUpdates *)serverUtterances count])
          {
            selfCopy->_hasSmartDialogSnippet = 1;
          }

          else
          {
            activeSmartDialogView = [(SiriSharedUISAEViewState *)selfCopy activeSmartDialogView];
            serverUtterances2 = [activeSmartDialogView serverUtterances];
            if ([serverUtterances2 count])
            {
              selfCopy->_hasSmartDialogSnippet = 1;
            }

            else
            {
              delegate3 = [(SiriSharedUISAEViewState *)selfCopy delegate];
              if ([delegate3 alwaysShowRecognizedSpeech])
              {
                revealRecognizedSpeech2 = 1;
              }

              else
              {
                revealRecognizedSpeech2 = [(SiriSharedUISmartDialogView *)selfCopy->_activeSmartDialogView revealRecognizedSpeech];
              }

              selfCopy->_hasSmartDialogSnippet = revealRecognizedSpeech2;
            }

            v109 = selfCopy;
          }

LABEL_143:
          [(SiriSharedUISAEViewState *)v109 _setActiveConversationTranscriptItems:v141, v131];
          v144 = 0;
          goto LABEL_144;
        }

        v109 = selfCopy;
        selfCopy->_hasSmartDialogSnippet = 1;
        if (v135 && v106)
        {
          v110 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            [SiriSharedUISAEViewState saeViewModelDidChange:v110 withDiff:?];
          }

          v109 = selfCopy;
        }

        else if (!v135)
        {
          if (v106)
          {
            array = [MEMORY[0x277CBEB18] array];
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v114 = v141;
            v115 = [(SAEViewModelUpdates *)v114 countByEnumeratingWithState:&v147 objects:v155 count:16];
            if (v115)
            {
              v144 = 0;
              v116 = *v148;
              do
              {
                for (i = 0; i != v115; ++i)
                {
                  if (*v148 != v116)
                  {
                    objc_enumerationMutation(v114);
                  }

                  v118 = *(*(&v147 + 1) + 8 * i);
                  aceObject = [v118 aceObject];
                  aceId = [aceObject aceId];
                  aceId2 = [v145 aceId];
                  v122 = aceId == aceId2;

                  if (v122)
                  {
                    aceObject2 = [v118 aceObject];

                    v144 = aceObject2;
                  }

                  else
                  {
                    [array addObject:v118];
                  }
                }

                v115 = [(SAEViewModelUpdates *)v114 countByEnumeratingWithState:&v147 objects:v155 count:16];
              }

              while (v115);
            }

            else
            {
              v144 = 0;
            }

            [(SiriSharedUISAEViewState *)selfCopy _setActiveConversationTranscriptItems:array];
            [(SiriSharedUISAEViewState *)selfCopy _setSmartDialogPlugin:v145 attribution:v131];

            goto LABEL_144;
          }

          goto LABEL_143;
        }

        [(SiriSharedUISAEViewState *)v109 _setActiveConversationTranscriptItems:v141, v131];
        v144 = [SiriSharedUIUtilities getAceObjectForSACardSnippetFromTranscriptItems:v141];
        [(SiriSharedUISAEViewState *)v109 _setSmartDialogCard:v135];
LABEL_144:

        goto LABEL_145;
      }

      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v48 = serverUtterances;
      v49 = 0;
      v50 = [(SAEViewModelUpdates *)v48 countByEnumeratingWithState:&v151 objects:v156 count:16];
      if (v50)
      {
        v51 = *v152;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v152 != v51)
            {
              objc_enumerationMutation(v48);
            }

            dialogIdentifier = [*(*(&v151 + 1) + 8 * j) dialogIdentifier];
            v54 = [dialogIdentifier isEqual:@"PlaybackControls#SilenceInterstitials"];

            v49 |= v54;
          }

          v50 = [(SAEViewModelUpdates *)v48 countByEnumeratingWithState:&v151 objects:v156 count:16];
        }

        while (v50);
      }
    }

    else
    {
      v49 = 0;
    }

    selfCopy2 = selfCopy;
    goto LABEL_57;
  }

  inputType = [(SiriSharedUISAEViewState *)self inputType];
  inputType2 = [(SAEViewModelUpdates *)v7 inputType];
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = SiriSharedUIViewModelInputTypeGetDescription(inputType2);
    *buf = 136315394;
    v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
    v159 = 2112;
    v160 = v13;
    _os_log_impl(&dword_21E3EB000, v12, OS_LOG_TYPE_DEFAULT, "%s #sae Setting input type to : %@", buf, 0x16u);
  }

  [(SiriSharedUISAEViewState *)self setInputType:inputType2];
  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 didSetInputType:inputType2];

  if (inputType == 1 && inputType2 == 2)
  {
    v15 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = SiriSharedUIViewModelInputTypeGetDescription(1);
      v18 = SiriSharedUIViewModelInputTypeGetDescription(2);
      *buf = 136315650;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = v17;
      v161 = 2112;
      v162 = v18;
      _os_log_impl(&dword_21E3EB000, v16, OS_LOG_TYPE_DEFAULT, "%s #sae Switched input type from : %@ to : %@", buf, 0x20u);
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v140 = objc_loadWeakRetained(&self->_delegate);
      [v140 didSetInputTypeFromTextToVoice];
    }
  }

LABEL_161:
}

- (void)_smartDialogContentDidChange
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriSharedUISAEViewState _smartDialogContentDidChange]";
  _os_log_error_impl(&dword_21E3EB000, log, OS_LOG_TYPE_ERROR, "%s #sae: smartDialog animation in progress, not animating result. This should not happen!", &v1, 0xCu);
}

- (void)_presentOrTransitionActiveSmartDialogView
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = self->_inputType == 2 && [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView ongoingASR];
  userUtteranceViewModel = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
  shouldShow = [userUtteranceViewModel shouldShow];

  if (((shouldShow & 1) != 0 || v3) && ![(SiriSharedUISAEViewState *)self activeSmartDialogIsLatencyPill])
  {

    [(SiriSharedUISAEViewState *)self _presentPillOrCollapseResult];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    hasPendingUpdates = [WeakRetained hasPendingUpdates];

    if (hasPendingUpdates)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 willPresentResult];

      [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView transitionToExpandablePlatterStyle:4];

      [(SiriSharedUISAEViewState *)self _presentResult];
    }

    else
    {
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SiriSharedUISAEViewState _presentOrTransitionActiveSmartDialogView]";
        _os_log_impl(&dword_21E3EB000, v9, OS_LOG_TYPE_DEFAULT, "%s #sae: no pending updates, return", &v10, 0xCu);
      }
    }
  }
}

- (void)_presentPillOrCollapseResult
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_previousConversationTranscriptItems count])
  {
    firstObject = [(NSArray *)self->_previousConversationTranscriptItems firstObject];
    taskIdentifier = [firstObject taskIdentifier];
    uUIDString = [taskIdentifier UUIDString];

    userUtteranceViewModel = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
    taskIdentifier2 = [userUtteranceViewModel taskIdentifier];

    if (taskIdentifier2 && ([uUIDString isEqual:taskIdentifier2] & 1) != 0)
    {
      self->_upcomingResultHasSnippet = 0;
      [(SiriSharedUISAEViewState *)self _setState:1];

      superview = uUIDString;
LABEL_7:

      return;
    }
  }

  superview = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView superview];
  if (superview)
  {
    goto LABEL_7;
  }

  currentViewState = self->_currentViewState;
  if (currentViewState == 2)
  {
    return;
  }

  if (currentViewState == 1)
  {
    goto LABEL_7;
  }

  self->_upcomingResultHasSnippet = 0;
  latencySummary = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance latencySummary];
  v10 = [SiriSharedUIUtilities stringIsBlank:latencySummary];

  speech = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance speech];
  userUtterance = [speech userUtterance];
  bestTextInterpretation = [userUtterance bestTextInterpretation];
  v14 = [SiriSharedUIUtilities stringIsBlank:bestTextInterpretation];

  v15 = *MEMORY[0x277CEF098];
  v16 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (!v14 || !v10)
  {
    if (v16)
    {
      *buf = 136315138;
      v23 = "[SiriSharedUISAEViewState _presentPillOrCollapseResult]";
      _os_log_impl(&dword_21E3EB000, v15, OS_LOG_TYPE_DEFAULT, "%s #droplet presenting latency pill", buf, 0xCu);
    }

    if (self->_currentViewState == 3)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(SiriSharedUISAEViewState *)self _setState:v17];
    delegate = [(SiriSharedUISAEViewState *)self delegate];
    if (([delegate alwaysShowRecognizedSpeech] & 1) != 0 || -[SiriSharedUISmartDialogView revealRecognizedSpeech](self->_activeSmartDialogView, "revealRecognizedSpeech"))
    {
      userUtteranceViewModel2 = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
      shouldShow = [userUtteranceViewModel2 shouldShow];

      if (!shouldShow)
      {
        return;
      }
    }

    else
    {
    }

    [(SiriSharedUISystemAssistantExperienceContainerView *)self->_containerView startLatencyLightOnActivePill];
    return;
  }

  if (v16)
  {
    *buf = 136315138;
    v23 = "[SiriSharedUISAEViewState _presentPillOrCollapseResult]";
    _os_log_impl(&dword_21E3EB000, v15, OS_LOG_TYPE_DEFAULT, "%s #droplet not presenting pill because we do not have ASR or latency text", buf, 0xCu);
  }
}

- (void)_setState:(int)state
{
  v40 = *MEMORY[0x277D85DE8];
  p_currentViewState = &self->_currentViewState;
  currentViewState = self->_currentViewState;
  if (currentViewState != state || state == 3 || state == 0)
  {
    self->_previousViewState = currentViewState;
    p_previousViewState = &self->_previousViewState;
    self->_currentViewState = state;
    v9 = MEMORY[0x277CEF098];
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *p_previousViewState;
      v12 = v10;
      v13 = ViewStateGetDescription(v11);
      v14 = ViewStateGetDescription(*p_currentViewState);
      v34 = 136315650;
      v35 = "[SiriSharedUISAEViewState _setState:]";
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_21E3EB000, v12, OS_LOG_TYPE_DEFAULT, "%s #viewState: transiting state from %@ to %@", &v34, 0x20u);
    }

    v15 = *p_previousViewState;
    v16 = *p_currentViewState;
    if (*p_previousViewState)
    {
      if (v15 == 1)
      {
        if (!v16)
        {
          v31 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 136315138;
            v35 = "[SiriSharedUISAEViewState _setState:]";
            _os_log_impl(&dword_21E3EB000, v31, OS_LOG_TYPE_DEFAULT, "%s #viewState: performClearLatencyPillAnimation", &v34, 0xCu);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained performClearLatencyPillAnimation];
          goto LABEL_59;
        }

        if (v16 == 3)
        {
          v28 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 136315138;
            v35 = "[SiriSharedUISAEViewState _setState:]";
            _os_log_impl(&dword_21E3EB000, v28, OS_LOG_TYPE_DEFAULT, "%s #viewState: performSinglePillExpandAnimation", &v34, 0xCu);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained performSinglePillExpandAnimation];
          goto LABEL_59;
        }

        goto LABEL_61;
      }

      if (v15 == 2)
      {
        if (v16 == 3)
        {
          v26 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 136315138;
            v35 = "[SiriSharedUISAEViewState _setState:]";
            _os_log_impl(&dword_21E3EB000, v26, OS_LOG_TYPE_DEFAULT, "%s #viewState: performPillMergeAndCrossfadeAnimation", &v34, 0xCu);
          }

          if (self->_finalAndDisplayedSmartDialog && self->_shouldPreserveResultSpace)
          {
            [(SiriSharedUISAEViewState *)self setActiveSmartDialogView:?];
            finalAndDisplayedSmartDialog = self->_finalAndDisplayedSmartDialog;
            self->_finalAndDisplayedSmartDialog = 0;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained performPillMergeAndCrossfadeAnimation];
          goto LABEL_59;
        }

        v25 = 0;
        v24 = 1;
        if (v16)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      }

      if (v15 != 3)
      {
        goto LABEL_31;
      }

      if (v16 != 3)
      {
        if (v16 != 2)
        {
LABEL_26:
          if (v15)
          {
            if (v16 == 1)
            {
              v23 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = 136315138;
                v35 = "[SiriSharedUISAEViewState _setState:]";
                _os_log_impl(&dword_21E3EB000, v23, OS_LOG_TYPE_DEFAULT, "%s #viewState: performPillCollapseAnimation", &v34, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained performPillCollapseAnimation];
LABEL_59:

LABEL_63:
              [(SiriSharedUISAEViewState *)self setIsDisplayingLatency:(self->_currentViewState - 1) < 2];
              return;
            }

            v24 = 0;
            v25 = 1;
            if (v16)
            {
LABEL_61:
              v32 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                [(SiriSharedUISAEViewState *)p_previousViewState _setState:v32, p_currentViewState];
              }

              goto LABEL_63;
            }

LABEL_48:
            if (v24)
            {
              v29 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = 136315138;
                v35 = "[SiriSharedUISAEViewState _setState:]";
                _os_log_impl(&dword_21E3EB000, v29, OS_LOG_TYPE_DEFAULT, "%s #viewState: performClearLatencyPillAndResultAnimation", &v34, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained performClearLatencyPillAndResultAnimation];
              goto LABEL_59;
            }

            if (v25)
            {
              v30 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = 136315138;
                v35 = "[SiriSharedUISAEViewState _setState:]";
                _os_log_impl(&dword_21E3EB000, v30, OS_LOG_TYPE_DEFAULT, "%s #viewState: performClearResultAnimation", &v34, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained performClearResultAnimation];
              goto LABEL_59;
            }

            if (!v15)
            {
              v33 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = 136315138;
                v35 = "[SiriSharedUISAEViewState _setState:]";
                _os_log_impl(&dword_21E3EB000, v33, OS_LOG_TYPE_DEFAULT, "%s #viewState: performClearTextFieldLatencyEffectsAnimation", &v34, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              [WeakRetained performClearTextFieldLatencyEffectsAnimation];
              goto LABEL_59;
            }

            goto LABEL_61;
          }

LABEL_31:
          v24 = 0;
          v25 = 0;
          if (v16)
          {
            goto LABEL_61;
          }

          goto LABEL_48;
        }

LABEL_23:
        v21 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315138;
          v35 = "[SiriSharedUISAEViewState _setState:]";
          _os_log_impl(&dword_21E3EB000, v21, OS_LOG_TYPE_DEFAULT, "%s #viewState: presentLatencyPillAnimation", &v34, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained presentLatencyPillAnimation];
        goto LABEL_59;
      }
    }

    else
    {
      if (v16 == 1)
      {
        goto LABEL_23;
      }

      if (v16 != 3)
      {
        goto LABEL_26;
      }
    }

    containerView = [(SiriSharedUISAEViewState *)self containerView];
    resultContentView = [containerView resultContentView];

    v19 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[SiriSharedUISAEViewState _setState:]";
      v36 = 1024;
      LODWORD(v37) = resultContentView == 0;
      _os_log_impl(&dword_21E3EB000, v19, OS_LOG_TYPE_DEFAULT, "%s #viewState: presentResultAnimation(isFirstSnippet: %i)", &v34, 0x12u);
    }

    delegate = [(SiriSharedUISAEViewState *)self delegate];
    [delegate presentResultAnimation:resultContentView == 0];

    goto LABEL_63;
  }
}

- (void)_setIsPresentedWithSmartDialogText
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeConversationTranscriptItems = [(SiriSharedUISAEViewState *)self activeConversationTranscriptItems];
  v3 = [activeConversationTranscriptItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(activeConversationTranscriptItems);
        }

        viewController = [*(*(&v8 + 1) + 8 * v6) viewController];
        if (objc_opt_respondsToSelector())
        {
          [viewController setIsPresentedWithSmartDialogText:1];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [activeConversationTranscriptItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setSmartDialogAnimationInProgress:(BOOL)progress
{
  progressCopy = progress;
  v24 = *MEMORY[0x277D85DE8];
  animatingInActiveSmartDialogView = self->_animatingInActiveSmartDialogView;
  self->_animatingInActiveSmartDialogView = progress;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[SiriSharedUISAEViewState setSmartDialogAnimationInProgress:]";
    v19 = 1024;
    *v20 = animatingInActiveSmartDialogView;
    *&v20[4] = 1024;
    *&v20[6] = progressCopy;
    _os_log_impl(&dword_21E3EB000, v7, OS_LOG_TYPE_DEFAULT, "%s #sae: _animatingInActiveSmartDialogView set from %d to %d", &v17, 0x18u);
  }

  if (!self->_animatingInActiveSmartDialogView && animatingInActiveSmartDialogView)
  {
    pendingViewModelUpdate = self->_pendingViewModelUpdate;
    if (pendingViewModelUpdate)
    {
      v9 = pendingViewModelUpdate;
      v10 = self->_pendingViewModelUpdate;
      self->_pendingViewModelUpdate = 0;

      if ([(SAEViewModelUpdates *)v9 diff]== 4)
      {
        v11 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315138;
          v18 = "[SiriSharedUISAEViewState setSmartDialogAnimationInProgress:]";
          _os_log_impl(&dword_21E3EB000, v11, OS_LOG_TYPE_DEFAULT, "%s #sae ignoring cached update due to the fact only the user utterance was changed and nothing else", &v17, 0xCu);
        }
      }

      else
      {
        viewModel = [(SAEViewModelUpdates *)v9 viewModel];
        [(SiriSharedUISAEViewState *)self saeViewModelDidChange:viewModel withDiff:[(SAEViewModelUpdates *)v9 diff]];

        v13 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          viewModel2 = [(SAEViewModelUpdates *)v9 viewModel];
          diff = [(SAEViewModelUpdates *)v9 diff];
          v17 = 136315906;
          v18 = "[SiriSharedUISAEViewState setSmartDialogAnimationInProgress:]";
          v19 = 2112;
          *v20 = v9;
          *&v20[8] = 2112;
          v21 = viewModel2;
          v22 = 2048;
          v23 = diff;
          _os_log_impl(&dword_21E3EB000, v14, OS_LOG_TYPE_DEFAULT, "%s #sae: executing cached pending update: %@, viewModel:%@, diff:%ld", &v17, 0x2Au);
        }
      }
    }
  }
}

- (void)setIsDisplayingLatency:(BOOL)latency
{
  latencyCopy = latency;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SiriSharedUISAEViewState setIsDisplayingLatency:]";
    v8 = 1024;
    v9 = latencyCopy;
    _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: isDisplayingLatency = %d", &v6, 0x12u);
  }

  self->_isDisplayingLatency = latencyCopy;
}

- (void)_setSmartDialogServerUtterances:(id)utterances
{
  utterancesCopy = utterances;
  v5 = [utterancesCopy copy];
  serverUtterances = self->_serverUtterances;
  self->_serverUtterances = v5;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSetServerUtterance:utterancesCopy];
}

- (void)_setActiveConversationTranscriptItems:(id)items
{
  v25 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([(NSArray *)self->_activeConversationTranscriptItems isEqualToArray:itemsCopy]|| ![SiriSharedUIUtilities contentDiffersBetweenItems:itemsCopy andItems:self->_activeConversationTranscriptItems])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[SiriSharedUISAEViewState _setActiveConversationTranscriptItems:]";
      v23 = 2112;
      v24 = itemsCopy;
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: Conversation Transcript has the same content, not updating our compact view for items: %@", buf, 0x16u);
    }
  }

  v6 = [itemsCopy copy];
  activeConversationTranscriptItems = self->_activeConversationTranscriptItems;
  self->_activeConversationTranscriptItems = v6;

  if ([(NSArray *)self->_activeConversationTranscriptItems count])
  {
    v8 = [(NSArray *)self->_activeConversationTranscriptItems copy];
    storedConversationTranscriptItems = self->_storedConversationTranscriptItems;
    self->_storedConversationTranscriptItems = v8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_activeTranscriptItems;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (([*(*(&v16 + 1) + 8 * v14) isHintItem] & 1) == 0)
        {
          self->_upcomingResultHasSnippet = 1;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSetTranscriptItems];
}

- (void)_setSmartDialogCard:(id)card
{
  cardCopy = card;
  objc_initWeak(&location, self);
  if (cardCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SiriSharedUISAEViewState__setSmartDialogCard___block_invoke;
    v6[3] = &unk_2783546B0;
    objc_copyWeak(&v8, &location);
    v7 = cardCopy;
    [WeakRetained setSmartDialogCardBlock:v6];

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

void __48__SiriSharedUISAEViewState__setSmartDialogCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeSmartDialogView];
  [v2 setSmartDialogCard:*(a1 + 32)];
}

- (void)_setSmartDialogPlugin:(id)plugin attribution:(id)attribution
{
  pluginCopy = plugin;
  attributionCopy = attribution;
  objc_initWeak(&location, self);
  if (pluginCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SiriSharedUISAEViewState__setSmartDialogPlugin_attribution___block_invoke;
    v9[3] = &unk_2783546D8;
    objc_copyWeak(&v12, &location);
    v10 = pluginCopy;
    v11 = attributionCopy;
    [WeakRetained setSmartDialogPluginBlock:v9];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __62__SiriSharedUISAEViewState__setSmartDialogPlugin_attribution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained activeSmartDialogView];
  [v2 setSmartDialogPlugin:*(a1 + 32) attribution:*(a1 + 40)];
}

- (void)_setSmartDialogUserUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v5 = [SiriSharedUISAEUserUtteranceViewModel alloc];
  speech = [utteranceCopy speech];
  v7 = [speech copy];
  asrAlternatives = [utteranceCopy asrAlternatives];
  latencySummary = [utteranceCopy latencySummary];
  shouldShow = [utteranceCopy shouldShow];
  taskIdentifier = [utteranceCopy taskIdentifier];

  v12 = [(SiriSharedUISAEUserUtteranceViewModel *)v5 initWithSpeech:v7 asrAlternatives:asrAlternatives latencySummary:latencySummary shouldShow:shouldShow taskIdentifier:taskIdentifier];
  userUtterance = self->_userUtterance;
  self->_userUtterance = v12;

  activeSmartDialogView = self->_activeSmartDialogView;
  v15 = self->_userUtterance;

  [(SiriSharedUISmartDialogView *)activeSmartDialogView setUserUtteranceViewModel:v15];
}

- (void)removeResponseElements:(unint64_t)elements
{
  switch(elements)
  {
    case 2uLL:
      currentViewState = self->_currentViewState;
      if (currentViewState == 3)
      {
        *&self->_currentViewState = 0x300000000;
        goto LABEL_15;
      }

      if (currentViewState != 2)
      {
        return;
      }

      v5 = 0x200000001;
LABEL_13:
      *&self->_currentViewState = v5;
      return;
    case 1uLL:
      v4 = self->_currentViewState;
      if (v4 == 2)
      {
        v5 = 0x200000003;
      }

      else
      {
        if (v4 != 1)
        {
          return;
        }

        v5 = 0x100000000;
      }

      goto LABEL_13;
    case 0xFFFFFFFFFFFFFFFFLL:
      v3 = self->_currentViewState;
      if ((v3 - 1) <= 2)
      {
        self->_currentViewState = 0;
        self->_previousViewState = v3;
LABEL_15:
        self->_animatingInActiveSmartDialogView = 0;
      }

      break;
  }
}

- (SiriSharedUISAEViewStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)saeViewModelDidChange:(os_log_t)log withDiff:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
  _os_log_error_impl(&dword_21E3EB000, log, OS_LOG_TYPE_ERROR, "%s We have been sent both plugin AND a smart dialog card. This should never happen", &v1, 0xCu);
}

- (void)_setState:(unsigned int *)a3 .cold.1(unsigned int *a1, void *a2, unsigned int *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v6 = ViewStateGetDescription(v4);
  v7 = ViewStateGetDescription(*a3);
  v8 = 136315650;
  v9 = "[SiriSharedUISAEViewState _setState:]";
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_ERROR, "%s #viewState: error transition from %@ to %@", &v8, 0x20u);
}

@end