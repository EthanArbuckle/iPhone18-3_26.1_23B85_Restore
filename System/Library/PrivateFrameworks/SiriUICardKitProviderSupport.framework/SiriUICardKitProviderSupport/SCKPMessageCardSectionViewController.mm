@interface SCKPMessageCardSectionViewController
+ (void)initialize;
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (SCKPMessageCardSectionViewController)initWithMessageCardSection:(id)section interaction:(id)interaction;
- (void)_asrUpdated:(id)updated;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)beginAudioPlayback;
- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info;
- (void)createAudioPlayer;
- (void)desiresInteractivity:(id)interactivity;
- (void)loadView;
- (void)messageCardSectionAttachmentTapped:(id)tapped;
- (void)messageCardSectionPlayButtonTapped:(id)tapped;
- (void)messageCardSectionSendButtonTapped:(id)tapped;
- (void)messageCardSectionViewBeganEditing:(id)editing;
- (void)messageCardSectionViewFinishedEditing:(id)editing;
- (void)pauseAudioPlayback;
- (void)setupPlaybackSessionOptions;
@end

@implementation SCKPMessageCardSectionViewController

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___SCKPMessageCardSectionViewController;
  objc_msgSendSuper2(&v2, sel_initialize);
  CRLogInitIfNeeded();
}

- (SCKPMessageCardSectionViewController)initWithMessageCardSection:(id)section interaction:(id)interaction
{
  sectionCopy = section;
  interactionCopy = interaction;
  v12.receiver = self;
  v12.super_class = SCKPMessageCardSectionViewController;
  v9 = [(SCKPMessageCardSectionViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cardSection, section);
    objc_storeStrong(&v10->_interaction, interaction);
  }

  return v10;
}

- (void)loadView
{
  v3 = [[SCKPMessageCardSectionView alloc] initWithMessageCardSection:self->_cardSection delegate:self];
  [(SCKPMessageCardSectionViewController *)self setView:v3];
}

- (void)desiresInteractivity:(id)interactivity
{
  if (interactivity)
  {
    (*(interactivity + 2))(interactivity, 1);
  }
}

- (void)messageCardSectionViewBeganEditing:(id)editing
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  messageText = [(SFMessageCardSection *)self->_cardSection messageText];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(messageText, "length")}];
  [dictionary setObject:v6 forKeyedSubscript:@"oldTextLength"];

  textInputMode = [(SCKPMessageCardSectionViewController *)self textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];
  [dictionary setObject:primaryLanguage forKeyedSubscript:@"keyboardLocale"];

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:5701 context:dictionary];

  cardSectionViewControllingDelegate = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
  v11 = objc_alloc_init(MEMORY[0x277CF9428]);
  [cardSectionViewControllingDelegate performCommand:v11 forViewController:self];
}

- (void)messageCardSectionViewFinishedEditing:(id)editing
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

- (void)messageCardSectionSendButtonTapped:(id)tapped
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  tappedCopy = tapped;
  dictionary = [v4 dictionary];
  v7 = MEMORY[0x277CCABB0];
  view = [(SCKPMessageCardSectionViewController *)self view];
  displayedText = [view displayedText];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(displayedText, "length")}];
  [dictionary setObject:v10 forKeyedSubscript:@"newTextLength"];

  v11 = MEMORY[0x277CCABB0];
  messageText = [(SFMessageCardSection *)self->_cardSection messageText];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(messageText, "length")}];
  [dictionary setObject:v13 forKeyedSubscript:@"oldTextLength"];

  textInputMode = [(SCKPMessageCardSectionViewController *)self textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];
  [dictionary setObject:primaryLanguage forKeyedSubscript:@"keyboardLocale"];

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:5703 context:dictionary];

  v17 = objc_alloc_init(MEMORY[0x277CF9440]);
  [v17 setInvocationIdentifier:*MEMORY[0x277D5C2E0]];
  v24[0] = *MEMORY[0x277D5C2D8];
  displayedText2 = [tappedCopy displayedText];

  v24[1] = @"keyboardLocale";
  v25[0] = displayedText2;
  textInputMode2 = [(SCKPMessageCardSectionViewController *)self textInputMode];
  primaryLanguage2 = [textInputMode2 primaryLanguage];
  v25[1] = primaryLanguage2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v17 setUserInfo:v21];

  cardSectionViewControllingDelegate = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
  [cardSectionViewControllingDelegate performCommand:v17 forViewController:self];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)messageCardSectionPlayButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  if (!self->_player)
  {
    [(SCKPMessageCardSectionViewController *)self createAudioPlayer];
    tappedCopy = v5;
  }

  if ([tappedCopy playButtonState])
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

- (void)messageCardSectionAttachmentTapped:(id)tapped
{
  commands = [(SFMessageCardSection *)self->_cardSection commands];
  firstObject = [commands firstObject];

  if (firstObject)
  {
    cardSectionViewControllingDelegate = [(SCKPMessageCardSectionViewController *)self cardSectionViewControllingDelegate];
    [cardSectionViewControllingDelegate performCommand:firstObject forViewController:self];
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
    view = [(SCKPMessageCardSectionViewController *)self view];
    [view setPlayButtonState:1];
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
  view = [(SCKPMessageCardSectionViewController *)self view];
  [view setPlayButtonState:0];
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController audioPlayerDidFinishPlaying:successfully:];
  }

  view = [(SCKPMessageCardSectionViewController *)self view];
  [view setPlayButtonState:0];
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  errorCopy = error;
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SCKPMessageCardSectionViewController audioPlayerDecodeErrorDidOccur:error:];
  }

  view = [(SCKPMessageCardSectionViewController *)self view];
  [view setPlayButtonState:0];
}

- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v9 = infoCopy;
  if (occur == 7 && infoCopy)
  {
    v10 = [infoCopy objectForKey:@"UpdatedRecognition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SCKPMessageCardSectionViewController *)self _asrUpdated:v10];
    }
  }

  else
  {
    if (occur == 9)
    {
      view = [(SCKPMessageCardSectionViewController *)self view];
      keyboardIsVisible = [view keyboardIsVisible];

      if (!keyboardIsVisible)
      {
        goto LABEL_12;
      }

      view2 = [(SCKPMessageCardSectionViewController *)self view];
      [view2 dismissKeyboard];

      selfCopy2 = self;
      v13 = 1;
    }

    else
    {
      if (occur != 8)
      {
        goto LABEL_12;
      }

      view3 = [(SCKPMessageCardSectionViewController *)self view];
      [view3 dismissKeyboard];

      selfCopy2 = self;
      v13 = 0;
    }

    [(SCKPMessageCardSectionViewController *)selfCopy2 messageContentUpdatedAndInitiatedByNewRequest:v13];
  }

LABEL_12:
}

- (void)_asrUpdated:(id)updated
{
  v20 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  intent = [(INInteraction *)self->_interaction intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    intent2 = [(INInteraction *)self->_interaction intent];
    content = [intent2 content];
    v9 = [content length];

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

    recipients = [intent2 recipients];
    v13 = [recipients count];

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

    attachments = [intent2 attachments];
    v15 = [attachments count];

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

  if (updatedCopy && [updatedCopy length])
  {
    v16 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = updatedCopy;
      _os_log_impl(&dword_26950D000, v16, OS_LOG_TYPE_INFO, "Updating message field with ASR recognition : %@", &v18, 0xCu);
    }

    intent2 = [(SCKPMessageCardSectionViewController *)self view];
    [intent2 setMessageContents:updatedCopy];
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