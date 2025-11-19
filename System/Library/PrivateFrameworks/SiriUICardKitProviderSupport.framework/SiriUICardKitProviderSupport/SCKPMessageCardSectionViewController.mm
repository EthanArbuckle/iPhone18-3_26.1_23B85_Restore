@interface SCKPMessageCardSectionViewController
+ (void)initialize;
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (SCKPMessageCardSectionViewController)initWithMessageCardSection:(id)a3 interaction:(id)a4;
- (void)_asrUpdated:(id)a3;
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)beginAudioPlayback;
- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5;
- (void)createAudioPlayer;
- (void)desiresInteractivity:(id)a3;
- (void)loadView;
- (void)messageCardSectionAttachmentTapped:(id)a3;
- (void)messageCardSectionPlayButtonTapped:(id)a3;
- (void)messageCardSectionSendButtonTapped:(id)a3;
- (void)messageCardSectionViewBeganEditing:(id)a3;
- (void)messageCardSectionViewFinishedEditing:(id)a3;
- (void)pauseAudioPlayback;
- (void)setupPlaybackSessionOptions;
@end

@implementation SCKPMessageCardSectionViewController

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___SCKPMessageCardSectionViewController;
  objc_msgSendSuper2(&v2, sel_initialize);
  CRLogInitIfNeeded();
}

- (SCKPMessageCardSectionViewController)initWithMessageCardSection:(id)a3 interaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCKPMessageCardSectionViewController;
  v9 = [(SCKPMessageCardSectionViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cardSection, a3);
    objc_storeStrong(&v10->_interaction, a4);
  }

  return v10;
}

- (void)loadView
{
  v3 = [[SCKPMessageCardSectionView alloc] initWithMessageCardSection:self->_cardSection delegate:self];
  [(SCKPMessageCardSectionViewController *)self setView:v3];
}

- (void)desiresInteractivity:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

- (void)messageCardSectionViewBeganEditing:(id)a3
{
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(SFMessageCardSection *)self->_cardSection messageText];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
  [v12 setObject:v6 forKeyedSubscript:@"oldTextLength"];

  v7 = [(SCKPMessageCardSectionViewController *)self textInputMode];
  v8 = [v7 primaryLanguage];
  [v12 setObject:v8 forKeyedSubscript:@"keyboardLocale"];

  v9 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v9 logEventWithType:5701 context:v12];

  v10 = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
  v11 = objc_alloc_init(MEMORY[0x277CF9428]);
  [v10 performCommand:v11 forViewController:self];
}

- (void)messageCardSectionViewFinishedEditing:(id)a3
{
  v4 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SCKPMessageCardSectionViewController_messageCardSectionViewFinishedEditing___block_invoke;
  block[3] = &unk_279C60258;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __78__SCKPMessageCardSectionViewController_messageCardSectionViewFinishedEditing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) cardSectionViewControllingDelegate];
  v2 = objc_alloc_init(MEMORY[0x277CF9438]);
  [v3 performCommand:v2 forViewController:*(a1 + 32)];
}

- (void)messageCardSectionSendButtonTapped:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(SCKPMessageCardSectionViewController *)self view];
  v9 = [v8 displayedText];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  [v6 setObject:v10 forKeyedSubscript:@"newTextLength"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(SFMessageCardSection *)self->_cardSection messageText];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
  [v6 setObject:v13 forKeyedSubscript:@"oldTextLength"];

  v14 = [(SCKPMessageCardSectionViewController *)self textInputMode];
  v15 = [v14 primaryLanguage];
  [v6 setObject:v15 forKeyedSubscript:@"keyboardLocale"];

  v16 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v16 logEventWithType:5703 context:v6];

  v17 = objc_alloc_init(MEMORY[0x277CF9440]);
  [v17 setInvocationIdentifier:*MEMORY[0x277D5C2E0]];
  v24[0] = *MEMORY[0x277D5C2D8];
  v18 = [v5 displayedText];

  v24[1] = @"keyboardLocale";
  v25[0] = v18;
  v19 = [(SCKPMessageCardSectionViewController *)self textInputMode];
  v20 = [v19 primaryLanguage];
  v25[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v17 setUserInfo:v21];

  v22 = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
  [v22 performCommand:v17 forViewController:self];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)messageCardSectionPlayButtonTapped:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_player)
  {
    [(SCKPMessageCardSectionViewController *)self createAudioPlayer];
    v4 = v5;
  }

  if ([v4 playButtonState])
  {
    if ([v5 playButtonState] == 1)
    {
      [(SCKPMessageCardSectionViewController *)self pauseAudioPlayback];
    }
  }

  else
  {
    [(SCKPMessageCardSectionViewController *)self setupPlaybackSessionOptions];
    [(SCKPMessageCardSectionViewController *)self beginAudioPlayback];
  }
}

- (void)messageCardSectionAttachmentTapped:(id)a3
{
  v4 = [(SFMessageCardSection *)self->_cardSection commands];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
    [v6 performCommand:v5 forViewController:self];
  }

  else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController messageCardSectionAttachmentTapped:];
  }
}

- (void)createAudioPlayer
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupPlaybackSessionOptions
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginAudioPlayback
{
  v12 = *MEMORY[0x277D85DE8];
  [(AVAudioPlayer *)self->_player prepareToPlay];
  [(AVAudioPlayer *)self->_player setCurrentTime:0.0];
  v3 = MEMORY[0x277CF93F0];
  v4 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    player = self->_player;
    v6 = v4;
    [(AVAudioPlayer *)player duration];
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_26950D000, v6, OS_LOG_TYPE_INFO, "Playing audio file of duration: %f", &v10, 0xCu);
  }

  if ([(AVAudioPlayer *)self->_player play])
  {
    v8 = [(SCKPMessageCardSectionViewController *)self view];
    [v8 setPlayButtonState:1];
  }

  else if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController beginAudioPlayback];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pauseAudioPlayback
{
  [(AVAudioPlayer *)self->_player pause];
  v3 = [(SCKPMessageCardSectionViewController *)self view];
  [v3 setPlayButtonState:0];
}

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v5 = a3;
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController audioPlayerDidFinishPlaying:successfully:];
  }

  v6 = [(SCKPMessageCardSectionViewController *)self view];
  [v6 setPlayButtonState:0];
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController audioPlayerDecodeErrorDidOccur:error:];
  }

  v8 = [(SCKPMessageCardSectionViewController *)self view];
  [v8 setPlayButtonState:0];
}

- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 7 && v8)
  {
    v10 = [v8 objectForKey:@"UpdatedRecognition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SCKPMessageCardSectionViewController *)self _asrUpdated:v10];
    }
  }

  else
  {
    if (a3 == 9)
    {
      v14 = [(SCKPMessageCardSectionViewController *)self view];
      v15 = [v14 keyboardIsVisible];

      if (!v15)
      {
        goto LABEL_12;
      }

      v16 = [(SCKPMessageCardSectionViewController *)self view];
      [v16 dismissKeyboard];

      v12 = self;
      v13 = 1;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_12;
      }

      v11 = [(SCKPMessageCardSectionViewController *)self view];
      [v11 dismissKeyboard];

      v12 = self;
      v13 = 0;
    }

    [(SCKPMessageCardSectionViewController *)v12 messageContentUpdatedAndInitiatedByNewRequest:v13];
  }

LABEL_12:
}

- (void)_asrUpdated:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(INInteraction *)self->_interaction intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(INInteraction *)self->_interaction intent];
    v8 = [v7 content];
    v9 = [v8 length];

    if (v9)
    {
      v10 = *MEMORY[0x277CF93F0];
      if (!os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
LABEL_18:

        goto LABEL_19;
      }

      LOWORD(v18) = 0;
      v11 = "Not updating ASR because the intent has content";
LABEL_5:
      _os_log_impl(&dword_26950D000, v10, OS_LOG_TYPE_INFO, v11, &v18, 2u);
      goto LABEL_18;
    }

    v12 = [v7 recipients];
    v13 = [v12 count];

    if (!v13)
    {
      v10 = *MEMORY[0x277CF93F0];
      if (!os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      LOWORD(v18) = 0;
      v11 = "Not updating ASR because we dont have a recipient";
      goto LABEL_5;
    }

    v14 = [v7 attachments];
    v15 = [v14 count];

    if (v15)
    {
      v10 = *MEMORY[0x277CF93F0];
      if (!os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      LOWORD(v18) = 0;
      v11 = "Not updating ASR because the message has an attachment";
      goto LABEL_5;
    }
  }

  if (v4 && [v4 length])
  {
    v16 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_26950D000, v16, OS_LOG_TYPE_INFO, "Updating message field with ASR recognition : %@", &v18, 0xCu);
    }

    v7 = [(SCKPMessageCardSectionViewController *)self view];
    [v7 setMessageContents:v4];
    goto LABEL_18;
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cardSectionViewControllingDelegate);

  return WeakRetained;
}

- (void)audioPlayerDidFinishPlaying:successfully:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_26950D000, v1, OS_LOG_TYPE_ERROR, "Audio player: %@ finished playing with success: %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)audioPlayerDecodeErrorDidOccur:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_26950D000, v1, OS_LOG_TYPE_ERROR, "Audio player: %@ encountered error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end