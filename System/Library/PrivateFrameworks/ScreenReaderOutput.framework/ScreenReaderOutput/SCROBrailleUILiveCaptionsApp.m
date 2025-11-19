@interface SCROBrailleUILiveCaptionsApp
- (BOOL)_isOpen;
- (BOOL)_isShowingContextMenu;
- (BOOL)_isShowingSpeechView;
- (BOOL)_isShowingSummary;
- (SCROBrailleUILiveCaptionsApp)initWithDelegate:(id)a3;
- (id)views;
- (void)_closeContextMenu;
- (void)_closeSpeechView;
- (void)_closeSummary;
- (void)_handleActionInContextMenu:(id)a3;
- (void)_handleActionInSummary:(id)a3;
- (void)_handleActionInTranscription:(id)a3;
- (void)_handleActionInTypeToSpeak:(id)a3;
- (void)_openContextMenu;
- (void)_openSpeechView;
- (void)_openSummary;
- (void)_refreshSummaryWith:(id)a3;
- (void)close;
- (void)didSpeechEnd;
- (void)handleAction:(id)a3;
- (void)open;
@end

@implementation SCROBrailleUILiveCaptionsApp

- (SCROBrailleUILiveCaptionsApp)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveCaptionsApp;
  return [(SCROBrailleUIApp *)&v4 initWithDelegate:a3];
}

- (void)open
{
  if (![(SCROBrailleUILiveCaptionsApp *)self _isOpen])
  {
    v3 = [SCROBrailleUIDynamicBrailleView alloc];
    v4 = SCROBrailleUILocString(@"live.captions.listening.label");
    v5 = [(SCROBrailleUIDynamicBrailleView *)v3 initWithIdentifier:@"transcription" initialText:v4];
    [(SCROBrailleUILiveCaptionsApp *)self setTranscriptionView:v5];

    v6 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
    [v6 display];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SCROBrailleUILiveCaptionsApp_open__block_invoke;
    block[3] = &unk_279B73DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7.receiver = self;
    v7.super_class = SCROBrailleUILiveCaptionsApp;
    [(SCROBrailleUIApp *)&v7 open];
  }
}

void __36__SCROBrailleUILiveCaptionsApp_open__block_invoke(uint64_t a1)
{
  v2 = [SCROBrailleUILiveCaptionsManager alloc];
  v3 = [*(a1 + 32) transcriptionView];
  v4 = [(SCROBrailleUILiveCaptionsManager *)v2 initWithClient:v3];
  [*(a1 + 32) setLiveCaptionsManager:v4];

  v5 = +[SCROBrailleUISettingsManager sharedInstance];
  v6 = [v5 liveCaptionsSource] == 1;
  v7 = [*(a1 + 32) liveCaptionsManager];
  [v7 setIsSourceAudio:v6];

  v8 = [*(a1 + 32) liveCaptionsManager];
  [v8 startWithCompletionHandler:0];

  v9 = objc_alloc_init(SCROBrailleUIIntelligenceManager);
  [*(a1 + 32) setIntelligenceManager:v9];
}

- (void)close
{
  [(SCROBrailleUILiveCaptionsApp *)self _closeSpeechView];
  [(SCROBrailleUILiveCaptionsApp *)self _closeSummary];
  [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SCROBrailleUILiveCaptionsApp_close__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v3 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
  [v3 dismiss];

  [(SCROBrailleUILiveCaptionsApp *)self setTranscriptionView:0];
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveCaptionsApp;
  [(SCROBrailleUIApp *)&v4 close];
}

uint64_t __37__SCROBrailleUILiveCaptionsApp_close__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) liveCaptionsManager];
  [v2 stop];

  [*(a1 + 32) setLiveCaptionsManager:0];
  v3 = *(a1 + 32);

  return [v3 setIntelligenceManager:0];
}

- (id)views
{
  v3 = objc_opt_new();
  v4 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];

  if (v4)
  {
    v5 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
    [v3 addObject:v5];
  }

  v6 = [(SCROBrailleUILiveCaptionsApp *)self speechView];

  if (v6)
  {
    v7 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
    [v3 addObject:v7];
  }

  v8 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];

  if (v8)
  {
    v9 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [v3 addObject:v9];
  }

  v10 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];

  if (v10)
  {
    v11 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [v3 addObject:v11];
  }

  return v3;
}

- (void)handleAction:(id)a3
{
  v7 = a3;
  v4 = [(SCROBrailleUILiveCaptionsApp *)self _isOpen];
  if (v4)
  {
    v5 = [v7 originator];
    v6 = [v5 identifier];

    if ([v6 isEqualToString:@"transcription"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInTranscription:v7];
    }

    else if ([v6 isEqualToString:@"context.menu"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInContextMenu:v7];
    }

    else if ([v6 isEqualToString:@"speech"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInTypeToSpeak:v7];
    }

    else if ([v6 isEqualToString:@"summary"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInSummary:v7];
    }
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)_handleActionInTranscription:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  switch(v5)
  {
    case 4:
      v7 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [v7 stop];

      [(SCROBrailleUILiveCaptionsApp *)self _openContextMenu];
      break;
    case 2:
      [(SCROBrailleUILiveCaptionsApp *)self close];
      break;
    case 1:
      v6 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [v6 stop];

      [(SCROBrailleUILiveCaptionsApp *)self _openSpeechView];
      break;
    default:
      v8.receiver = self;
      v8.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v8 handleAction:v4];
      break;
  }
}

- (void)_handleActionInTypeToSpeak:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSpeechView])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      if (![(SCROBrailleUILiveCaptionsApp *)self isSpeaking])
      {
        [(SCROBrailleUILiveCaptionsApp *)self _closeSpeechView];
      }
    }

    else if (v5 == 1)
    {
      if (![(SCROBrailleUILiveCaptionsApp *)self isSpeaking])
      {
        [(SCROBrailleUILiveCaptionsApp *)self setIsSpeaking:1];
        v6 = +[SCROBrailleTranslationManager inputManager];
        v7 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
        v8 = [v7 value];
        v9 = [v6 textForPrintBraille:v8 language:0 mode:1 locations:0];

        v10 = [(SCROBrailleUILiveCaptionsApp *)self liveSpeechManager];
        [v10 speak:v9 completionHandler:&__block_literal_global_3];
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v11 handleAction:v4];
    }
  }
}

- (void)_handleActionInContextMenu:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    v5 = [v4 type];
    if (v5 == 2)
    {
      [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
        v7 = [v6 focusedItem];
        v8 = [v7 identifier];

        if ([v8 isEqualToString:@"context.menu.pause"])
        {
          v9 = self;
          v10 = 1;
        }

        else
        {
          if (![v8 isEqualToString:@"context.menu.resume"])
          {
            if ([v8 isEqualToString:@"context.menu.copy"])
            {
              v11 = +[SCROBrailleUIPasteBoard sharedBoard];
              v12 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
              v13 = [v12 textValue];
              [v11 writeText:v13];
            }

            else
            {
              if ([v8 isEqualToString:@"context.menu.listen.to.audio"])
              {
                v14 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
                [v14 setIsSourceAudio:1];

                v15 = +[SCROBrailleUISettingsManager sharedInstance];
                v11 = v15;
                v16 = 1;
              }

              else
              {
                if (![v8 isEqualToString:@"context.menu.listen.to.microphone"])
                {
                  if ([v8 isEqualToString:@"context.menu.summarize"])
                  {
                    [(SCROBrailleUILiveCaptionsApp *)self _openSummary];
                    v18 = [(SCROBrailleUILiveCaptionsApp *)self intelligenceManager];
                    v19 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
                    v20 = [v19 unreadTextValue];
                    v24[0] = MEMORY[0x277D85DD0];
                    v24[1] = 3221225472;
                    v24[2] = __59__SCROBrailleUILiveCaptionsApp__handleActionInContextMenu___block_invoke;
                    v24[3] = &unk_279B74630;
                    v24[4] = self;
                    v21 = [v18 summarize:v20 completionHandler:v24];

                    v22 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
                    [v22 resetUnreadText];
                  }

                  goto LABEL_20;
                }

                v17 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
                [v17 setIsSourceAudio:0];

                v15 = +[SCROBrailleUISettingsManager sharedInstance];
                v11 = v15;
                v16 = 0;
              }

              [v15 setLiveCaptionsSource:v16];
            }

LABEL_19:
            [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
LABEL_20:

            goto LABEL_21;
          }

          v9 = self;
          v10 = 0;
        }

        [(SCROBrailleUILiveCaptionsApp *)v9 setIsTranscriptionPaused:v10];
        goto LABEL_19;
      }

      v23.receiver = self;
      v23.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v23 handleAction:v4];
    }
  }

LABEL_21:
}

void __59__SCROBrailleUILiveCaptionsApp__handleActionInContextMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = SCROBrailleUILocString(@"live.captions.locale.not.supported");
  }

  v4 = v3;
  [*(a1 + 32) _refreshSummaryWith:v3];
}

- (void)_handleActionInSummary:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    if ([v4 type] == 2)
    {
      [(SCROBrailleUILiveCaptionsApp *)self _closeSummary];
    }

    else
    {
      v5.receiver = self;
      v5.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v5 handleAction:v4];
    }
  }
}

- (BOOL)_isOpen
{
  v2 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isShowingSpeechView
{
  v2 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openSpeechView
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [[SCROBrailleUILiveSpeechManager alloc] initWithClient:self];
  [(SCROBrailleUILiveCaptionsApp *)self setLiveSpeechManager:v3];

  v4 = [SCROBrailleUIListItem alloc];
  v5 = SCROBrailleUILocString(@"live.captions.type.to.speak.label");
  v6 = [(SCROBrailleUIListItem *)v4 initWithIdentifier:@"type.to.speak" label:v5 isInline:1];

  v7 = [SCROBrailleUIListView alloc];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(SCROBrailleUIListView *)v7 initWithIdentifier:@"speech" items:v8];
  [(SCROBrailleUILiveCaptionsApp *)self setSpeechView:v9];

  v10 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  [v10 display];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeSpeechView
{
  [(SCROBrailleUILiveCaptionsApp *)self setLiveSpeechManager:0];
  v3 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  [v3 dismiss];

  [(SCROBrailleUILiveCaptionsApp *)self setSpeechView:0];
}

- (void)didSpeechEnd
{
  [(SCROBrailleUILiveCaptionsApp *)self _closeSpeechView];
  if (![(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused])
  {
    v3 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
    [v3 startWithCompletionHandler:0];
  }

  [(SCROBrailleUILiveCaptionsApp *)self setIsSpeaking:0];
}

- (BOOL)_isShowingContextMenu
{
  v2 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openContextMenu
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    v3 = [(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused];
    v4 = [SCROBrailleUIListItem alloc];
    if (v3)
    {
      v5 = @"live.captions.context.menu.resume";
    }

    else
    {
      v5 = @"live.captions.context.menu.pause";
    }

    if (v3)
    {
      v6 = @"context.menu.resume";
    }

    else
    {
      v6 = @"context.menu.pause";
    }

    v7 = SCROBrailleUILocString(v5);
    v8 = [(SCROBrailleUIListItem *)v4 initWithIdentifier:v6 label:v7 isInline:0];

    v9 = [SCROBrailleUIListItem alloc];
    v10 = SCROBrailleUILocString(@"live.captions.context.menu.copy");
    v11 = [(SCROBrailleUIListItem *)v9 initWithIdentifier:@"context.menu.copy" label:v10 isInline:0];

    v12 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
    v13 = [v12 isSourceAudio];

    if (v13)
    {
      v14 = @"live.captions.context.menu.listen.to.microphone";
    }

    else
    {
      v14 = @"live.captions.context.menu.listen.to.audio";
    }

    if (v13)
    {
      v15 = @"context.menu.listen.to.microphone";
    }

    else
    {
      v15 = @"context.menu.listen.to.audio";
    }

    v16 = [SCROBrailleUIListItem alloc];
    v17 = SCROBrailleUILocString(v14);
    v18 = [(SCROBrailleUIListItem *)v16 initWithIdentifier:v15 label:v17 isInline:0];

    v19 = +[SCROBrailleUISettingsManager sharedInstance];
    LODWORD(v16) = [v19 isAppleIntelligenceEnabled];

    if (v16)
    {
      v20 = [SCROBrailleUIListItem alloc];
      v21 = SCROBrailleUILocString(@"live.captions.context.menu.summarize");
      v22 = [(SCROBrailleUIListItem *)v20 initWithIdentifier:@"context.menu.summarize" label:v21 isInline:0];

      v28[0] = v8;
      v28[1] = v11;
      v28[2] = v18;
      v28[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    }

    else
    {
      v27[0] = v8;
      v27[1] = v11;
      v27[2] = v18;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    }

    v24 = [[SCROBrailleUIListView alloc] initWithIdentifier:@"context.menu" items:v23];
    [(SCROBrailleUILiveCaptionsApp *)self setContextMenuView:v24];

    v25 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [v25 display];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_closeContextMenu
{
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    v3 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [v3 dismiss];

    [(SCROBrailleUILiveCaptionsApp *)self setContextMenuView:0];
    if (![(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused])
    {
      v4 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [v4 startWithCompletionHandler:0];
    }
  }
}

- (BOOL)_isShowingSummary
{
  v2 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
  v3 = v2 != 0;

  return v3;
}

- (void)_openSummary
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    v3 = [SCROBrailleUIListItem alloc];
    v4 = SCROBrailleUILocString(@"live.captions.summary.summarizing");
    v5 = [(SCROBrailleUIListItem *)v3 initWithIdentifier:@"summary.summarizing" label:v4 isInline:0];

    v6 = [SCROBrailleUIListView alloc];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [(SCROBrailleUIListView *)v6 initWithIdentifier:@"summary" items:v7];
    [(SCROBrailleUILiveCaptionsApp *)self setSummaryView:v8];

    v9 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [v9 display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_refreshSummaryWith:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    v5 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    v6 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"summary.summary.content" label:v4 isInline:0 shouldPreserveCase:1];
    v7 = [SCROBrailleUIListView alloc];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [(SCROBrailleUIListView *)v7 initWithIdentifier:@"summary" items:v8];
    [(SCROBrailleUILiveCaptionsApp *)self setSummaryView:v9];

    v10 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [v10 display];

    [v5 dismiss];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeSummary
{
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    v3 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [v3 dismiss];

    [(SCROBrailleUILiveCaptionsApp *)self setSummaryView:0];

    [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
  }
}

@end