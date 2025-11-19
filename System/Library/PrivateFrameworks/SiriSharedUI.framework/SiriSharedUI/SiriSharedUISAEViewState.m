@interface SiriSharedUISAEViewState
- (SiriSharedUISAEViewState)initWithContainerView:(id)a3;
- (SiriSharedUISAEViewStateDelegate)delegate;
- (void)_presentOrTransitionActiveSmartDialogView;
- (void)_presentPillOrCollapseResult;
- (void)_setActiveConversationTranscriptItems:(id)a3;
- (void)_setIsPresentedWithSmartDialogText;
- (void)_setSmartDialogCard:(id)a3;
- (void)_setSmartDialogPlugin:(id)a3 attribution:(id)a4;
- (void)_setSmartDialogServerUtterances:(id)a3;
- (void)_setSmartDialogUserUtterance:(id)a3;
- (void)_setState:(int)a3;
- (void)_smartDialogContentDidChange;
- (void)removeResponseElements:(unint64_t)a3;
- (void)saeViewModelDidChange:(id)a3 withDiff:(unint64_t)a4;
- (void)setIsDisplayingLatency:(BOOL)a3;
- (void)setSmartDialogAnimationInProgress:(BOOL)a3;
- (void)updateDoNotReplaceSmartDialogForSiriMail:(id)a3 conversationTranscriptItems:(id)a4 shouldPreserveResultSpace:(BOOL)a5;
@end

@implementation SiriSharedUISAEViewState

- (SiriSharedUISAEViewState)initWithContainerView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriSharedUISAEViewState;
  v5 = [(SiriSharedUISAEViewState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SiriSharedUISAEViewState *)v5 setContainerView:v4];
    *&v6->_currentViewState = 0;
  }

  return v6;
}

- (void)updateDoNotReplaceSmartDialogForSiriMail:(id)a3 conversationTranscriptItems:(id)a4 shouldPreserveResultSpace:(BOOL)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v42 + 1) + 8 * i) dialogIdentifier];
        v14 = v13;
        if (v13 && (([v13 hasPrefix:@"ContactResolution#HandleDisambiguation"] & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"SendMail#PromptForRecipients")))
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
  v36 = v7;
  v15 = v7;
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
      v21 = [v20 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v23 = [v20 aceObject];
        v24 = [v23 bundleName];
        if ([v24 isEqualToString:@"SiriMailUIPlugin"])
        {
        }

        else
        {
          v25 = [v23 bundleName];
          v26 = [v25 isEqualToString:@"SiriInferenceFlowsUIPlugin"];

          if (!v26)
          {
LABEL_21:

            continue;
          }
        }

        v27 = [v23 responseViewId];
        v28 = [v27 hasPrefix:@"contact#"];

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
          v7 = v36;
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
  v7 = v36;
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

- (void)saeViewModelDidChange:(id)a3 withDiff:(unint64_t)a4
{
  v163 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  v146 = self;
  v142 = v6;
  if (a4 != 8)
  {
    if (self->_animatingInActiveSmartDialogView)
    {
      v141 = [[SAEViewModelUpdates alloc] initWithViewModel:v6 diff:a4];
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

    v138 = a4;
    v23 = [(SAEViewModelUpdates *)v6 conversationTranscriptItems];
    v141 = [v23 mutableCopy];

    v139 = [(SAEViewModelUpdates *)v142 serverUtterances];
    [(SiriSharedUISAEViewState *)self updateDoNotReplaceSmartDialogForSiriMail:v139 conversationTranscriptItems:v141 shouldPreserveResultSpace:[(SAEViewModelUpdates *)v142 shouldPreserveResultSpace]];
    v143 = [(SAEViewModelUpdates *)v142 userUtterance];
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
      v28 = [(SAEViewModelUpdates *)v139 firstObject];
      v29 = [v28 text];
      *buf = 136315650;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = v139;
      v161 = 2112;
      v162 = v29;
      _os_log_impl(&dword_21E3EB000, v27, OS_LOG_TYPE_DEFAULT, "%s #sae Setting server utterances to : %@ text: %@", buf, 0x20u);
    }

    v30 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(SAEViewModelUpdates *)v143 speech];
      v32 = [v31 userUtterance];
      v33 = [v32 bestTextInterpretation];
      *buf = 136315650;
      v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
      v159 = 2112;
      v160 = v143;
      v161 = 2112;
      v162 = v33;
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

    v35 = [(SAEViewModelUpdates *)v143 latencySummary];

    v36 = [(SiriSharedUISAEViewState *)self delegate];
    v37 = [v36 alwaysShowRecognizedSpeech];
    if (v35)
    {
      v38 = 1;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      v39 = 1;
    }

    else
    {
      v40 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance speech];
      v39 = ([v40 isFinal] & 1) != 0 || -[SiriSharedUISmartDialogView revealRecognizedSpeech](self->_activeSmartDialogView, "revealRecognizedSpeech");
    }

    if ((v138 & 2) != 0)
    {
      v41 = 1;
    }

    else
    {
      v41 = v138 & 1 | ((v138 & 4) != 0 && v39);
    }

    v134 = v41;
    v42 = [(SiriSharedUISAEViewState *)self requireFinalSpeechHypothesisBeforeAppearance];
    v43 = [(SAEViewModelUpdates *)v143 speech];
    v44 = [v43 userUtterance];

    if (v42)
    {
      v45 = [(SAEViewModelUpdates *)v143 speech];
      v46 = [v45 isFinal];
    }

    else
    {
      v46 = 1;
    }

    v132 = 0;
    if (v44 && v46)
    {
      v132 = [(SAEViewModelUpdates *)v143 shouldShow];
    }

    if ([(SAEViewModelUpdates *)v139 count])
    {
      v47 = self;
      if (!self->_isInAmbient)
      {
        v49 = 0;
LABEL_57:
        if (!v47->_activeSmartDialogView)
        {
          WeakRetained = objc_loadWeakRetained(&v47->_delegate);
          v56 = [WeakRetained createNewSmartDialog];
          activeSmartDialogView = v146->_activeSmartDialogView;
          v146->_activeSmartDialogView = v56;

          v146->_upcomingResultHasSnippet = 0;
        }

        v58 = [(SAEViewModelUpdates *)v143 speech];
        if (v58)
        {
          v59 = [(SAEViewModelUpdates *)v143 speech];
          v60 = [v59 isFinal];

          v61 = v60 ^ 1;
        }

        else
        {
          v61 = 0;
        }

        v62 = [(SiriSharedUISAEUserUtteranceViewModel *)v146->_userUtterance speech];
        v63 = [v62 userUtterance];
        v137 = [v63 bestTextInterpretation];

        v64 = [(SAEViewModelUpdates *)v143 speech];
        v65 = [v64 userUtterance];
        v136 = [v65 bestTextInterpretation];

        v66 = 0;
        if (v137 && v136)
        {
          v67 = [(SAEViewModelUpdates *)v143 speech];
          if ([v67 isFinal])
          {
            v66 = [v137 isEqual:v136] ^ 1;
          }

          else
          {
            v66 = 0;
          }
        }

        if (v137)
        {
          v68 = 1;
        }

        else
        {
          v68 = v136 == 0;
        }

        v69 = !v68;
        if ([(SAEViewModelUpdates *)v141 count])
        {
          v70 = 0;
        }

        else
        {
          v71 = [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView activeTranscriptItems];
          v70 = [v71 count] != 0;
        }

        v72 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          doNotReplaceSmartDialogForSiriMail = v146->_doNotReplaceSmartDialogForSiriMail;
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = doNotReplaceSmartDialogForSiriMail;
          _os_log_impl(&dword_21E3EB000, v72, OS_LOG_TYPE_DEFAULT, "%s #droplet: _doNotReplaceSmartDialogForSiriMail = %d", buf, 0x12u);
        }

        v74 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView hasResult];
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v75;
          _os_log_impl(&dword_21E3EB000, v74, OS_LOG_TYPE_DEFAULT, "%s #droplet: [_activeSmartDialogView hasResult] = %d", buf, 0x12u);
        }

        v76 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = [(SAEViewModelUpdates *)v143 shouldShow];
          *buf = 136315394;
          v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
          v159 = 1024;
          LODWORD(v160) = v77;
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
          LODWORD(v160) = v138 & 1;
          _os_log_impl(&dword_21E3EB000, v82, OS_LOG_TYPE_DEFAULT, "%s #droplet: smartDialogNeedsToBeRemoved = %d", buf, 0x12u);
        }

        if (!v146->_doNotReplaceSmartDialogForSiriMail && [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView hasResult]&& v138 & 1 | ([(SAEViewModelUpdates *)v143 shouldShow]| v61 | v66 | v70) & 1 | v69 & 1)
        {
          objc_storeStrong(&v146->_finalAndDisplayedSmartDialog, v146->_activeSmartDialogView);
          [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView setIsActive:0];
          v83 = [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView revealRecognizedSpeech];
          v84 = objc_loadWeakRetained(&v146->_delegate);
          v85 = [v84 createNewSmartDialog];
          v86 = v146->_activeSmartDialogView;
          v146->_activeSmartDialogView = v85;

          [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView setRevealRecognizedSpeech:v83];
          v87 = [(NSArray *)v146->_activeConversationTranscriptItems copy];
          previousConversationTranscriptItems = v146->_previousConversationTranscriptItems;
          v146->_previousConversationTranscriptItems = v87;

          v146->_upcomingResultHasSnippet = 0;
          v89 = *MEMORY[0x277CEF098];
          if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_101;
          }

          v90 = v146->_activeSmartDialogView;
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

        [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView setIsInAmbient:v146->_isInAmbient];
        v94 = [(SiriSharedUISAEViewState *)v146 delegate];
        if ([v94 alwaysShowRecognizedSpeech])
        {
          v95 = v146->_inputType == 2;

          if (v95)
          {
            goto LABEL_107;
          }
        }

        else
        {
        }

        v96 = [(SAEViewModelUpdates *)v143 latencySummary];
        v97 = v96 == 0;

        if (v97)
        {
          v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v99 = [v98 localizedStringForKey:@"Working…" value:&stru_282F84AA8 table:@"Localizable"];

          [(SAEViewModelUpdates *)v143 setLatencySummary:v99];
        }

LABEL_107:
        [(SiriSharedUISAEViewState *)v146 _setSmartDialogUserUtterance:v143];
        if ((v138 & 0x10) != 0)
        {
          v100 = objc_loadWeakRetained(&v146->_delegate);
          v101 = objc_opt_respondsToSelector();

          if (v101)
          {
            v102 = objc_loadWeakRetained(&v146->_delegate);
            [v102 speechRecognitionHypothesisUpdated];

            v103 = [(SAEViewModelUpdates *)v143 speech];
            v104 = [v103 isFinal];

            if (v104)
            {
              [(SiriSharedUISAEViewState *)v146 setIsDisplayingLatency:1];
            }
          }
        }

        if ((v138 & 1) == 0)
        {
          v133 = 0;
          v144 = 0;
LABEL_145:
          if ([(SAEViewModelUpdates *)v141 count]|| ([(SAEViewModelUpdates *)v139 count]!= 0) & ~v49 | v132 & 1)
          {
            v126 = objc_loadWeakRetained(&v146->_delegate);
            v127 = objc_opt_respondsToSelector();

            if (v127)
            {
              v128 = objc_loadWeakRetained(&v146->_delegate);
              [v128 didPresentContentWithAceObject:v144];
            }
          }

          if ((v138 & 2) != 0)
          {
            [(SiriSharedUISAEViewState *)v146 _setSmartDialogServerUtterances:v139];
          }

          if ([(SAEViewModelUpdates *)v139 count]!= 0 || v133)
          {
            [(SiriSharedUISAEViewState *)v146 _setIsPresentedWithSmartDialogText];
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

            [(SiriSharedUISAEViewState *)v146 _smartDialogContentDidChange];
          }

          goto LABEL_160;
        }

        v105 = objc_loadWeakRetained(&v146->_delegate);
        v135 = [v105 filterTranscriptItemsForSAEDialogBoxContent:v141];

        v106 = [SiriSharedUIUtilities filterTranscriptItemsForRFPluginContent:v141];
        v108 = v107;
        v145 = v106;
        v131 = v108;
        v133 = v106 != 0;
        if (!v135 && !v106)
        {
          v109 = v146;
          if ([(SAEViewModelUpdates *)v139 count])
          {
            v146->_hasSmartDialogSnippet = 1;
          }

          else
          {
            v111 = [(SiriSharedUISAEViewState *)v146 activeSmartDialogView];
            v112 = [v111 serverUtterances];
            if ([v112 count])
            {
              v146->_hasSmartDialogSnippet = 1;
            }

            else
            {
              v124 = [(SiriSharedUISAEViewState *)v146 delegate];
              if ([v124 alwaysShowRecognizedSpeech])
              {
                v125 = 1;
              }

              else
              {
                v125 = [(SiriSharedUISmartDialogView *)v146->_activeSmartDialogView revealRecognizedSpeech];
              }

              v146->_hasSmartDialogSnippet = v125;
            }

            v109 = v146;
          }

LABEL_143:
          [(SiriSharedUISAEViewState *)v109 _setActiveConversationTranscriptItems:v141, v131];
          v144 = 0;
          goto LABEL_144;
        }

        v109 = v146;
        v146->_hasSmartDialogSnippet = 1;
        if (v135 && v106)
        {
          v110 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            [SiriSharedUISAEViewState saeViewModelDidChange:v110 withDiff:?];
          }

          v109 = v146;
        }

        else if (!v135)
        {
          if (v106)
          {
            v113 = [MEMORY[0x277CBEB18] array];
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
                  v119 = [v118 aceObject];
                  v120 = [v119 aceId];
                  v121 = [v145 aceId];
                  v122 = v120 == v121;

                  if (v122)
                  {
                    v123 = [v118 aceObject];

                    v144 = v123;
                  }

                  else
                  {
                    [v113 addObject:v118];
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

            [(SiriSharedUISAEViewState *)v146 _setActiveConversationTranscriptItems:v113];
            [(SiriSharedUISAEViewState *)v146 _setSmartDialogPlugin:v145 attribution:v131];

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
      v48 = v139;
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

            v53 = [*(*(&v151 + 1) + 8 * j) dialogIdentifier];
            v54 = [v53 isEqual:@"PlaybackControls#SilenceInterstitials"];

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

    v47 = v146;
    goto LABEL_57;
  }

  v8 = [(SiriSharedUISAEViewState *)self inputType];
  v9 = [(SAEViewModelUpdates *)v7 inputType];
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = SiriSharedUIViewModelInputTypeGetDescription(v9);
    *buf = 136315394;
    v158 = "[SiriSharedUISAEViewState saeViewModelDidChange:withDiff:]";
    v159 = 2112;
    v160 = v13;
    _os_log_impl(&dword_21E3EB000, v12, OS_LOG_TYPE_DEFAULT, "%s #sae Setting input type to : %@", buf, 0x16u);
  }

  [(SiriSharedUISAEViewState *)self setInputType:v9];
  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 didSetInputType:v9];

  if (v8 == 1 && v9 == 2)
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
  v4 = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
  v5 = [v4 shouldShow];

  if (((v5 & 1) != 0 || v3) && ![(SiriSharedUISAEViewState *)self activeSmartDialogIsLatencyPill])
  {

    [(SiriSharedUISAEViewState *)self _presentPillOrCollapseResult];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained hasPendingUpdates];

    if (v7)
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
    v3 = [(NSArray *)self->_previousConversationTranscriptItems firstObject];
    v4 = [v3 taskIdentifier];
    v21 = [v4 UUIDString];

    v5 = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
    v6 = [v5 taskIdentifier];

    if (v6 && ([v21 isEqual:v6] & 1) != 0)
    {
      self->_upcomingResultHasSnippet = 0;
      [(SiriSharedUISAEViewState *)self _setState:1];

      v7 = v21;
LABEL_7:

      return;
    }
  }

  v7 = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView superview];
  if (v7)
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
  v9 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance latencySummary];
  v10 = [SiriSharedUIUtilities stringIsBlank:v9];

  v11 = [(SiriSharedUISAEUserUtteranceViewModel *)self->_userUtterance speech];
  v12 = [v11 userUtterance];
  v13 = [v12 bestTextInterpretation];
  v14 = [SiriSharedUIUtilities stringIsBlank:v13];

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
    v18 = [(SiriSharedUISAEViewState *)self delegate];
    if (([v18 alwaysShowRecognizedSpeech] & 1) != 0 || -[SiriSharedUISmartDialogView revealRecognizedSpeech](self->_activeSmartDialogView, "revealRecognizedSpeech"))
    {
      v19 = [(SiriSharedUISmartDialogView *)self->_activeSmartDialogView userUtteranceViewModel];
      v20 = [v19 shouldShow];

      if (!v20)
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

- (void)_setState:(int)a3
{
  v40 = *MEMORY[0x277D85DE8];
  p_currentViewState = &self->_currentViewState;
  currentViewState = self->_currentViewState;
  if (currentViewState != a3 || a3 == 3 || a3 == 0)
  {
    self->_previousViewState = currentViewState;
    p_previousViewState = &self->_previousViewState;
    self->_currentViewState = a3;
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

    v17 = [(SiriSharedUISAEViewState *)self containerView];
    v18 = [v17 resultContentView];

    v19 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[SiriSharedUISAEViewState _setState:]";
      v36 = 1024;
      LODWORD(v37) = v18 == 0;
      _os_log_impl(&dword_21E3EB000, v19, OS_LOG_TYPE_DEFAULT, "%s #viewState: presentResultAnimation(isFirstSnippet: %i)", &v34, 0x12u);
    }

    v20 = [(SiriSharedUISAEViewState *)self delegate];
    [v20 presentResultAnimation:v18 == 0];

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
  v2 = [(SiriSharedUISAEViewState *)self activeConversationTranscriptItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) viewController];
        if (objc_opt_respondsToSelector())
        {
          [v7 setIsPresentedWithSmartDialogText:1];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setSmartDialogAnimationInProgress:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  animatingInActiveSmartDialogView = self->_animatingInActiveSmartDialogView;
  self->_animatingInActiveSmartDialogView = a3;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[SiriSharedUISAEViewState setSmartDialogAnimationInProgress:]";
    v19 = 1024;
    *v20 = animatingInActiveSmartDialogView;
    *&v20[4] = 1024;
    *&v20[6] = v3;
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
        v12 = [(SAEViewModelUpdates *)v9 viewModel];
        [(SiriSharedUISAEViewState *)self saeViewModelDidChange:v12 withDiff:[(SAEViewModelUpdates *)v9 diff]];

        v13 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(SAEViewModelUpdates *)v9 viewModel];
          v16 = [(SAEViewModelUpdates *)v9 diff];
          v17 = 136315906;
          v18 = "[SiriSharedUISAEViewState setSmartDialogAnimationInProgress:]";
          v19 = 2112;
          *v20 = v9;
          *&v20[8] = 2112;
          v21 = v15;
          v22 = 2048;
          v23 = v16;
          _os_log_impl(&dword_21E3EB000, v14, OS_LOG_TYPE_DEFAULT, "%s #sae: executing cached pending update: %@, viewModel:%@, diff:%ld", &v17, 0x2Au);
        }
      }
    }
  }
}

- (void)setIsDisplayingLatency:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SiriSharedUISAEViewState setIsDisplayingLatency:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: isDisplayingLatency = %d", &v6, 0x12u);
  }

  self->_isDisplayingLatency = v3;
}

- (void)_setSmartDialogServerUtterances:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  serverUtterances = self->_serverUtterances;
  self->_serverUtterances = v5;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSetServerUtterance:v4];
}

- (void)_setActiveConversationTranscriptItems:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_activeConversationTranscriptItems isEqualToArray:v4]|| ![SiriSharedUIUtilities contentDiffersBetweenItems:v4 andItems:self->_activeConversationTranscriptItems])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[SiriSharedUISAEViewState _setActiveConversationTranscriptItems:]";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_21E3EB000, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: Conversation Transcript has the same content, not updating our compact view for items: %@", buf, 0x16u);
    }
  }

  v6 = [v4 copy];
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

- (void)_setSmartDialogCard:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SiriSharedUISAEViewState__setSmartDialogCard___block_invoke;
    v6[3] = &unk_2783546B0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
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

- (void)_setSmartDialogPlugin:(id)a3 attribution:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SiriSharedUISAEViewState__setSmartDialogPlugin_attribution___block_invoke;
    v9[3] = &unk_2783546D8;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
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

- (void)_setSmartDialogUserUtterance:(id)a3
{
  v4 = a3;
  v5 = [SiriSharedUISAEUserUtteranceViewModel alloc];
  v6 = [v4 speech];
  v7 = [v6 copy];
  v8 = [v4 asrAlternatives];
  v9 = [v4 latencySummary];
  v10 = [v4 shouldShow];
  v11 = [v4 taskIdentifier];

  v12 = [(SiriSharedUISAEUserUtteranceViewModel *)v5 initWithSpeech:v7 asrAlternatives:v8 latencySummary:v9 shouldShow:v10 taskIdentifier:v11];
  userUtterance = self->_userUtterance;
  self->_userUtterance = v12;

  activeSmartDialogView = self->_activeSmartDialogView;
  v15 = self->_userUtterance;

  [(SiriSharedUISmartDialogView *)activeSmartDialogView setUserUtteranceViewModel:v15];
}

- (void)removeResponseElements:(unint64_t)a3
{
  switch(a3)
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