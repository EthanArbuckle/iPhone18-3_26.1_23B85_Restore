@interface TVRUIMiniPlayerMediaControlsViewController
- (TVRUIMiniPlayerMediaControlsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_configureHierarchy;
- (void)_invokeCommandHandlerWithCommand:(unint64_t)command withFeedback:(BOOL)feedback;
- (void)_playPauseWasTapped:(id)tapped;
- (void)_skipBackwardWasLongPressed:(id)pressed;
- (void)_skipBackwardWasTapped:(id)tapped;
- (void)_skipForwardWasLongPressed:(id)pressed;
- (void)_skipForwardWasTapped:(id)tapped;
- (void)_updateButtonsFromPlayingState:(BOOL)state mediaActive:(BOOL)active playbackRate:(id)rate;
- (void)setIsMediaActive:(BOOL)active;
- (void)setIsPlaying:(BOOL)playing;
- (void)setPlaybackRate:(id)rate;
- (void)viewDidLoad;
@end

@implementation TVRUIMiniPlayerMediaControlsViewController

- (TVRUIMiniPlayerMediaControlsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = TVRUIMiniPlayerMediaControlsViewController;
  v4 = [(TVRUIMiniPlayerMediaControlsViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v4->_styleProvider;
    v4->_styleProvider = v5;

    playbackRate = v4->_playbackRate;
    v4->_playbackRate = &unk_287E84E00;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUIMiniPlayerMediaControlsViewController;
  [(TVRUIMiniPlayerMediaControlsViewController *)&v3 viewDidLoad];
  [(TVRUIMiniPlayerMediaControlsViewController *)self _configureHierarchy];
}

- (void)setIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  self->_isPlaying = playing;
  isMediaActive = [(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive];
  playbackRate = [(TVRUIMiniPlayerMediaControlsViewController *)self playbackRate];
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:playingCopy mediaActive:isMediaActive playbackRate:playbackRate];
}

- (void)setIsMediaActive:(BOOL)active
{
  activeCopy = active;
  self->_isMediaActive = active;
  isPlaying = [(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying];
  playbackRate = [(TVRUIMiniPlayerMediaControlsViewController *)self playbackRate];
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:isPlaying mediaActive:activeCopy playbackRate:playbackRate];
}

- (void)setPlaybackRate:(id)rate
{
  objc_storeStrong(&self->_playbackRate, rate);
  rateCopy = rate;
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:[(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying] mediaActive:[(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive] playbackRate:rateCopy];
}

- (void)_configureHierarchy
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(TVREventHaptic);
  eventHaptic = self->_eventHaptic;
  self->_eventHaptic = v3;

  v5 = [[TVRUIButton alloc] initWithType:7 hasTapAction:1 buttonLocation:2];
  [(TVRUIButton *)v5 setHasButtonShape:0];
  v6 = [[TVRUIButton alloc] initWithType:9994 hasTapAction:1 buttonLocation:2];
  [(TVRUIButton *)v6 setHasButtonShape:0];
  v7 = [[TVRUIButton alloc] initWithType:6 hasTapAction:1 buttonLocation:2];
  [(TVRUIButton *)v7 setHasButtonShape:0];
  v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipBackwardWasTapped_];
  [v8 setCancelsTouchesInView:0];
  v65 = v8;
  [(TVRUIButton *)v5 addGestureRecognizer:v8];
  v64 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipBackwardWasLongPressed_];
  [(TVRUIButton *)v5 addGestureRecognizer:?];
  v63 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__playPauseWasTapped_];
  [(TVRUIButton *)v6 addGestureRecognizer:?];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipForwardWasTapped_];
  [v9 setCancelsTouchesInView:0];
  v62 = v9;
  [(TVRUIButton *)v7 addGestureRecognizer:v9];
  v61 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipForwardWasLongPressed_];
  [(TVRUIButton *)v7 addGestureRecognizer:?];
  selfCopy = self;
  view = [(TVRUIMiniPlayerMediaControlsViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v72[0] = v5;
  v72[1] = v7;
  v72[2] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
  v12 = [v11 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v68;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        LODWORD(v17) = 1148846080;
        [v16 setContentHuggingPriority:1 forAxis:v17];
        [view addSubview:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v13);
  }

  [view setClipsToBounds:0];
  v45 = MEMORY[0x277CCAAD0];
  heightAnchor = [view heightAnchor];
  v59 = [heightAnchor constraintEqualToConstant:41.0];
  v71[0] = v59;
  leadingAnchor = [(TVRUIButton *)v5 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v71[1] = v56;
  centerYAnchor = [(TVRUIButton *)v5 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v53 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v71[2] = v53;
  widthAnchor = [(TVRUIButton *)v5 widthAnchor];
  v51 = [widthAnchor constraintEqualToConstant:64.0];
  v71[3] = v51;
  heightAnchor2 = [(TVRUIButton *)v5 heightAnchor];
  v49 = [heightAnchor2 constraintEqualToConstant:64.0];
  v71[4] = v49;
  leadingAnchor3 = [(TVRUIButton *)v6 leadingAnchor];
  imageView = [(TVRUIButton *)v5 imageView];
  trailingAnchor = [imageView trailingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:65.0];
  v71[5] = v44;
  centerYAnchor3 = [(TVRUIButton *)v6 centerYAnchor];
  centerYAnchor4 = [view centerYAnchor];
  v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v71[6] = v41;
  widthAnchor2 = [(TVRUIButton *)v6 widthAnchor];
  v36 = [widthAnchor2 constraintEqualToConstant:88.0];
  v71[7] = v36;
  heightAnchor3 = [(TVRUIButton *)v6 heightAnchor];
  v34 = [heightAnchor3 constraintEqualToConstant:88.0];
  v71[8] = v34;
  leadingAnchor4 = [(TVRUIButton *)v7 leadingAnchor];
  imageView2 = [(TVRUIButton *)v6 imageView];
  trailingAnchor2 = [imageView2 trailingAnchor];
  v30 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:65.0];
  v71[9] = v30;
  centerYAnchor5 = [(TVRUIButton *)v7 centerYAnchor];
  centerYAnchor6 = [view centerYAnchor];
  v18 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v71[10] = v18;
  trailingAnchor3 = [(TVRUIButton *)v7 trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v71[11] = v21;
  [(TVRUIButton *)v7 widthAnchor];
  v22 = v7;
  v23 = v37 = v7;
  [v23 constraintEqualToConstant:64.0];
  v24 = v40 = v5;
  v71[12] = v24;
  heightAnchor4 = [(TVRUIButton *)v22 heightAnchor];
  [heightAnchor4 constraintEqualToConstant:64.0];
  v26 = v38 = v6;
  v71[13] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:14];
  [v45 activateConstraints:v27];

  [(TVRUIMiniPlayerMediaControlsViewController *)selfCopy setSkipForwardButton:v37];
  [(TVRUIMiniPlayerMediaControlsViewController *)selfCopy setSkipBackwardButton:v40];
  [(TVRUIMiniPlayerMediaControlsViewController *)selfCopy setPlayPauseButton:v38];
}

- (void)_updateButtonsFromPlayingState:(BOOL)state mediaActive:(BOOL)active playbackRate:(id)rate
{
  stateCopy = state;
  v36 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  playPauseButton = [(TVRUIMiniPlayerMediaControlsViewController *)self playPauseButton];
  v10 = playPauseButton;
  if (stateCopy)
  {
    v11 = 9994;
  }

  else
  {
    v11 = 9993;
  }

  [playPauseButton _updateButtonType:v11];

  [rateCopy doubleValue];
  if (!rateCopy || ((v13 = fabs(v12 + -1.0), v14 = fabs(v12), v13 >= 0.00000011920929) ? (v15 = v14 < 0.00000011920929) : (v15 = 1), v15))
  {
    v16 = 0;
    v17 = 7;
    v18 = 6;
  }

  else
  {
    v16 = 1;
    v17 = 9996;
    v18 = 9995;
  }

  [(TVRUIMiniPlayerMediaControlsViewController *)self setWantsFastForwardButton:v16];
  skipForwardButton = [(TVRUIMiniPlayerMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton _updateButtonType:v18];

  skipBackwardButton = [(TVRUIMiniPlayerMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton _updateButtonType:v17];

  if (active)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    styleProvider = [(TVRUIMiniPlayerMediaControlsViewController *)self styleProvider];
    whiteColor = [styleProvider inactiveMediaControlTintColor];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  skipBackwardButton2 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipBackwardButton];
  v34[0] = skipBackwardButton2;
  skipForwardButton2 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipForwardButton];
  v34[1] = skipForwardButton2;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

  v26 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v30 + 1) + 8 * i) setTintColor:whiteColor];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v27);
  }
}

- (void)_skipBackwardWasTapped:(id)tapped
{
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying])
    {
      wantsFastForwardButton = [(TVRUIMiniPlayerMediaControlsViewController *)self wantsFastForwardButton];
    }

    else
    {
      wantsFastForwardButton = 2;
    }

    [(TVRUIMiniPlayerMediaControlsViewController *)self _invokeCommandHandlerWithCommand:wantsFastForwardButton withFeedback:1];
  }
}

- (void)_skipBackwardWasLongPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([pressedCopy state] == 1)
    {
      selfCopy2 = self;
      v5 = 5;
      v6 = 1;
LABEL_7:
      [(TVRUIMiniPlayerMediaControlsViewController *)selfCopy2 _invokeCommandHandlerWithCommand:v5 withFeedback:v6];
      goto LABEL_8;
    }

    if ([pressedCopy state] == 3 || objc_msgSend(pressedCopy, "state") == 4)
    {
      selfCopy2 = self;
      v5 = 6;
      v6 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_playPauseWasTapped:(id)tapped
{
  [(TVRUIMiniPlayerMediaControlsViewController *)self setIsPlaying:[(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying]^ 1];

  [(TVRUIMiniPlayerMediaControlsViewController *)self _invokeCommandHandlerWithCommand:2 withFeedback:1];
}

- (void)_skipForwardWasTapped:(id)tapped
{
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying])
    {
      if ([(TVRUIMiniPlayerMediaControlsViewController *)self wantsFastForwardButton])
      {
        v4 = 4;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }

    [(TVRUIMiniPlayerMediaControlsViewController *)self _invokeCommandHandlerWithCommand:v4 withFeedback:1];
  }
}

- (void)_skipForwardWasLongPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([pressedCopy state] == 1)
    {
      selfCopy2 = self;
      v5 = 7;
      v6 = 1;
LABEL_7:
      [(TVRUIMiniPlayerMediaControlsViewController *)selfCopy2 _invokeCommandHandlerWithCommand:v5 withFeedback:v6];
      goto LABEL_8;
    }

    if ([pressedCopy state] == 3 || objc_msgSend(pressedCopy, "state") == 4)
    {
      selfCopy2 = self;
      v5 = 8;
      v6 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_invokeCommandHandlerWithCommand:(unint64_t)command withFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  commandHandler = [(TVRUIMiniPlayerMediaControlsViewController *)self commandHandler];

  if (commandHandler)
  {
    commandHandler2 = [(TVRUIMiniPlayerMediaControlsViewController *)self commandHandler];
    commandHandler2[2](commandHandler2, command, MEMORY[0x277CBEC10]);

    if (feedbackCopy)
    {
      eventHaptic = [(TVRUIMiniPlayerMediaControlsViewController *)self eventHaptic];
      [eventHaptic playSelectionEventHaptic];
    }
  }
}

@end