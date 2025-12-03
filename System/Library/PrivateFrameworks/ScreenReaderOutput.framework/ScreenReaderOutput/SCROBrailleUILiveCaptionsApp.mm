@interface SCROBrailleUILiveCaptionsApp
- (BOOL)_isOpen;
- (BOOL)_isShowingContextMenu;
- (BOOL)_isShowingSpeechView;
- (BOOL)_isShowingSummary;
- (SCROBrailleUILiveCaptionsApp)initWithDelegate:(id)delegate;
- (id)views;
- (void)_closeContextMenu;
- (void)_closeSpeechView;
- (void)_closeSummary;
- (void)_handleActionInContextMenu:(id)menu;
- (void)_handleActionInSummary:(id)summary;
- (void)_handleActionInTranscription:(id)transcription;
- (void)_handleActionInTypeToSpeak:(id)speak;
- (void)_openContextMenu;
- (void)_openSpeechView;
- (void)_openSummary;
- (void)_refreshSummaryWith:(id)with;
- (void)close;
- (void)didSpeechEnd;
- (void)handleAction:(id)action;
- (void)open;
@end

@implementation SCROBrailleUILiveCaptionsApp

- (SCROBrailleUILiveCaptionsApp)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveCaptionsApp;
  return [(SCROBrailleUIApp *)&v4 initWithDelegate:delegate];
}

- (void)open
{
  if (![(SCROBrailleUILiveCaptionsApp *)self _isOpen])
  {
    v3 = [SCROBrailleUIDynamicBrailleView alloc];
    v4 = SCROBrailleUILocString(@"live.captions.listening.label");
    v5 = [(SCROBrailleUIDynamicBrailleView *)v3 initWithIdentifier:@"transcription" initialText:v4];
    [(SCROBrailleUILiveCaptionsApp *)self setTranscriptionView:v5];

    transcriptionView = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
    [transcriptionView display];

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
  transcriptionView = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
  [transcriptionView dismiss];

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
  transcriptionView = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];

  if (transcriptionView)
  {
    transcriptionView2 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
    [v3 addObject:transcriptionView2];
  }

  speechView = [(SCROBrailleUILiveCaptionsApp *)self speechView];

  if (speechView)
  {
    speechView2 = [(SCROBrailleUILiveCaptionsApp *)self speechView];
    [v3 addObject:speechView2];
  }

  contextMenuView = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];

  if (contextMenuView)
  {
    contextMenuView2 = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [v3 addObject:contextMenuView2];
  }

  summaryView = [(SCROBrailleUILiveCaptionsApp *)self summaryView];

  if (summaryView)
  {
    summaryView2 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [v3 addObject:summaryView2];
  }

  return v3;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  _isOpen = [(SCROBrailleUILiveCaptionsApp *)self _isOpen];
  if (_isOpen)
  {
    originator = [actionCopy originator];
    identifier = [originator identifier];

    if ([identifier isEqualToString:@"transcription"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInTranscription:actionCopy];
    }

    else if ([identifier isEqualToString:@"context.menu"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInContextMenu:actionCopy];
    }

    else if ([identifier isEqualToString:@"speech"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInTypeToSpeak:actionCopy];
    }

    else if ([identifier isEqualToString:@"summary"])
    {
      [(SCROBrailleUILiveCaptionsApp *)self _handleActionInSummary:actionCopy];
    }
  }

  MEMORY[0x2821F96F8](_isOpen);
}

- (void)_handleActionInTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  type = [transcriptionCopy type];
  switch(type)
  {
    case 4:
      liveCaptionsManager = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [liveCaptionsManager stop];

      [(SCROBrailleUILiveCaptionsApp *)self _openContextMenu];
      break;
    case 2:
      [(SCROBrailleUILiveCaptionsApp *)self close];
      break;
    case 1:
      liveCaptionsManager2 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [liveCaptionsManager2 stop];

      [(SCROBrailleUILiveCaptionsApp *)self _openSpeechView];
      break;
    default:
      v8.receiver = self;
      v8.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v8 handleAction:transcriptionCopy];
      break;
  }
}

- (void)_handleActionInTypeToSpeak:(id)speak
{
  speakCopy = speak;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSpeechView])
  {
    type = [speakCopy type];
    if (type == 2)
    {
      if (![(SCROBrailleUILiveCaptionsApp *)self isSpeaking])
      {
        [(SCROBrailleUILiveCaptionsApp *)self _closeSpeechView];
      }
    }

    else if (type == 1)
    {
      if (![(SCROBrailleUILiveCaptionsApp *)self isSpeaking])
      {
        [(SCROBrailleUILiveCaptionsApp *)self setIsSpeaking:1];
        v6 = +[SCROBrailleTranslationManager inputManager];
        speechView = [(SCROBrailleUILiveCaptionsApp *)self speechView];
        value = [speechView value];
        v9 = [v6 textForPrintBraille:value language:0 mode:1 locations:0];

        liveSpeechManager = [(SCROBrailleUILiveCaptionsApp *)self liveSpeechManager];
        [liveSpeechManager speak:v9 completionHandler:&__block_literal_global_3];
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v11 handleAction:speakCopy];
    }
  }
}

- (void)_handleActionInContextMenu:(id)menu
{
  menuCopy = menu;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    type = [menuCopy type];
    if (type == 2)
    {
      [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
    }

    else
    {
      if (type == 1)
      {
        contextMenuView = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
        focusedItem = [contextMenuView focusedItem];
        identifier = [focusedItem identifier];

        if ([identifier isEqualToString:@"context.menu.pause"])
        {
          selfCopy2 = self;
          v10 = 1;
        }

        else
        {
          if (![identifier isEqualToString:@"context.menu.resume"])
          {
            if ([identifier isEqualToString:@"context.menu.copy"])
            {
              v11 = +[SCROBrailleUIPasteBoard sharedBoard];
              transcriptionView = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
              textValue = [transcriptionView textValue];
              [v11 writeText:textValue];
            }

            else
            {
              if ([identifier isEqualToString:@"context.menu.listen.to.audio"])
              {
                liveCaptionsManager = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
                [liveCaptionsManager setIsSourceAudio:1];

                v15 = +[SCROBrailleUISettingsManager sharedInstance];
                v11 = v15;
                v16 = 1;
              }

              else
              {
                if (![identifier isEqualToString:@"context.menu.listen.to.microphone"])
                {
                  if ([identifier isEqualToString:@"context.menu.summarize"])
                  {
                    [(SCROBrailleUILiveCaptionsApp *)self _openSummary];
                    intelligenceManager = [(SCROBrailleUILiveCaptionsApp *)self intelligenceManager];
                    transcriptionView2 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
                    unreadTextValue = [transcriptionView2 unreadTextValue];
                    v24[0] = MEMORY[0x277D85DD0];
                    v24[1] = 3221225472;
                    v24[2] = __59__SCROBrailleUILiveCaptionsApp__handleActionInContextMenu___block_invoke;
                    v24[3] = &unk_279B74630;
                    v24[4] = self;
                    v21 = [intelligenceManager summarize:unreadTextValue completionHandler:v24];

                    transcriptionView3 = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
                    [transcriptionView3 resetUnreadText];
                  }

                  goto LABEL_20;
                }

                liveCaptionsManager2 = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
                [liveCaptionsManager2 setIsSourceAudio:0];

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

          selfCopy2 = self;
          v10 = 0;
        }

        [(SCROBrailleUILiveCaptionsApp *)selfCopy2 setIsTranscriptionPaused:v10];
        goto LABEL_19;
      }

      v23.receiver = self;
      v23.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v23 handleAction:menuCopy];
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

- (void)_handleActionInSummary:(id)summary
{
  summaryCopy = summary;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    if ([summaryCopy type] == 2)
    {
      [(SCROBrailleUILiveCaptionsApp *)self _closeSummary];
    }

    else
    {
      v5.receiver = self;
      v5.super_class = SCROBrailleUILiveCaptionsApp;
      [(SCROBrailleUIApp *)&v5 handleAction:summaryCopy];
    }
  }
}

- (BOOL)_isOpen
{
  transcriptionView = [(SCROBrailleUILiveCaptionsApp *)self transcriptionView];
  v3 = transcriptionView != 0;

  return v3;
}

- (BOOL)_isShowingSpeechView
{
  speechView = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  v3 = speechView != 0;

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

  speechView = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  [speechView display];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeSpeechView
{
  [(SCROBrailleUILiveCaptionsApp *)self setLiveSpeechManager:0];
  speechView = [(SCROBrailleUILiveCaptionsApp *)self speechView];
  [speechView dismiss];

  [(SCROBrailleUILiveCaptionsApp *)self setSpeechView:0];
}

- (void)didSpeechEnd
{
  [(SCROBrailleUILiveCaptionsApp *)self _closeSpeechView];
  if (![(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused])
  {
    liveCaptionsManager = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
    [liveCaptionsManager startWithCompletionHandler:0];
  }

  [(SCROBrailleUILiveCaptionsApp *)self setIsSpeaking:0];
}

- (BOOL)_isShowingContextMenu
{
  contextMenuView = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
  v3 = contextMenuView != 0;

  return v3;
}

- (void)_openContextMenu
{
  v28[4] = *MEMORY[0x277D85DE8];
  if (![(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    isTranscriptionPaused = [(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused];
    v4 = [SCROBrailleUIListItem alloc];
    if (isTranscriptionPaused)
    {
      v5 = @"live.captions.context.menu.resume";
    }

    else
    {
      v5 = @"live.captions.context.menu.pause";
    }

    if (isTranscriptionPaused)
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

    liveCaptionsManager = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
    isSourceAudio = [liveCaptionsManager isSourceAudio];

    if (isSourceAudio)
    {
      v14 = @"live.captions.context.menu.listen.to.microphone";
    }

    else
    {
      v14 = @"live.captions.context.menu.listen.to.audio";
    }

    if (isSourceAudio)
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

    contextMenuView = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [contextMenuView display];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_closeContextMenu
{
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingContextMenu])
  {
    contextMenuView = [(SCROBrailleUILiveCaptionsApp *)self contextMenuView];
    [contextMenuView dismiss];

    [(SCROBrailleUILiveCaptionsApp *)self setContextMenuView:0];
    if (![(SCROBrailleUILiveCaptionsApp *)self isTranscriptionPaused])
    {
      liveCaptionsManager = [(SCROBrailleUILiveCaptionsApp *)self liveCaptionsManager];
      [liveCaptionsManager startWithCompletionHandler:0];
    }
  }
}

- (BOOL)_isShowingSummary
{
  summaryView = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
  v3 = summaryView != 0;

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

    summaryView = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [summaryView display];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_refreshSummaryWith:(id)with
{
  v12[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    summaryView = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    v6 = [[SCROBrailleUIListItem alloc] initWithIdentifier:@"summary.summary.content" label:withCopy isInline:0 shouldPreserveCase:1];
    v7 = [SCROBrailleUIListView alloc];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [(SCROBrailleUIListView *)v7 initWithIdentifier:@"summary" items:v8];
    [(SCROBrailleUILiveCaptionsApp *)self setSummaryView:v9];

    summaryView2 = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [summaryView2 display];

    [summaryView dismiss];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeSummary
{
  if ([(SCROBrailleUILiveCaptionsApp *)self _isShowingSummary])
  {
    summaryView = [(SCROBrailleUILiveCaptionsApp *)self summaryView];
    [summaryView dismiss];

    [(SCROBrailleUILiveCaptionsApp *)self setSummaryView:0];

    [(SCROBrailleUILiveCaptionsApp *)self _closeContextMenu];
  }
}

@end