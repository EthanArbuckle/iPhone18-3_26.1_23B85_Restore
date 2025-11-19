@interface TVRUIMiniPlayerMediaControlsViewController
- (TVRUIMiniPlayerMediaControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_configureHierarchy;
- (void)_invokeCommandHandlerWithCommand:(unint64_t)a3 withFeedback:(BOOL)a4;
- (void)_playPauseWasTapped:(id)a3;
- (void)_skipBackwardWasLongPressed:(id)a3;
- (void)_skipBackwardWasTapped:(id)a3;
- (void)_skipForwardWasLongPressed:(id)a3;
- (void)_skipForwardWasTapped:(id)a3;
- (void)_updateButtonsFromPlayingState:(BOOL)a3 mediaActive:(BOOL)a4 playbackRate:(id)a5;
- (void)setIsMediaActive:(BOOL)a3;
- (void)setIsPlaying:(BOOL)a3;
- (void)setPlaybackRate:(id)a3;
- (void)viewDidLoad;
@end

@implementation TVRUIMiniPlayerMediaControlsViewController

- (TVRUIMiniPlayerMediaControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = TVRUIMiniPlayerMediaControlsViewController;
  v4 = [(TVRUIMiniPlayerMediaControlsViewController *)&v9 initWithNibName:a3 bundle:a4];
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

- (void)setIsPlaying:(BOOL)a3
{
  v3 = a3;
  self->_isPlaying = a3;
  v5 = [(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive];
  v6 = [(TVRUIMiniPlayerMediaControlsViewController *)self playbackRate];
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:v3 mediaActive:v5 playbackRate:v6];
}

- (void)setIsMediaActive:(BOOL)a3
{
  v3 = a3;
  self->_isMediaActive = a3;
  v5 = [(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying];
  v6 = [(TVRUIMiniPlayerMediaControlsViewController *)self playbackRate];
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:v5 mediaActive:v3 playbackRate:v6];
}

- (void)setPlaybackRate:(id)a3
{
  objc_storeStrong(&self->_playbackRate, a3);
  v5 = a3;
  [(TVRUIMiniPlayerMediaControlsViewController *)self _updateButtonsFromPlayingState:[(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying] mediaActive:[(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive] playbackRate:v5];
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
  v66 = self;
  v10 = [(TVRUIMiniPlayerMediaControlsViewController *)self view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
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
        [v10 addSubview:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v13);
  }

  [v10 setClipsToBounds:0];
  v45 = MEMORY[0x277CCAAD0];
  v60 = [v10 heightAnchor];
  v59 = [v60 constraintEqualToConstant:41.0];
  v71[0] = v59;
  v58 = [(TVRUIButton *)v5 leadingAnchor];
  v57 = [v10 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v71[1] = v56;
  v55 = [(TVRUIButton *)v5 centerYAnchor];
  v54 = [v10 centerYAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v71[2] = v53;
  v52 = [(TVRUIButton *)v5 widthAnchor];
  v51 = [v52 constraintEqualToConstant:64.0];
  v71[3] = v51;
  v50 = [(TVRUIButton *)v5 heightAnchor];
  v49 = [v50 constraintEqualToConstant:64.0];
  v71[4] = v49;
  v47 = [(TVRUIButton *)v6 leadingAnchor];
  v48 = [(TVRUIButton *)v5 imageView];
  v46 = [v48 trailingAnchor];
  v44 = [v47 constraintEqualToAnchor:v46 constant:65.0];
  v71[5] = v44;
  v43 = [(TVRUIButton *)v6 centerYAnchor];
  v42 = [v10 centerYAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v71[6] = v41;
  v39 = [(TVRUIButton *)v6 widthAnchor];
  v36 = [v39 constraintEqualToConstant:88.0];
  v71[7] = v36;
  v35 = [(TVRUIButton *)v6 heightAnchor];
  v34 = [v35 constraintEqualToConstant:88.0];
  v71[8] = v34;
  v32 = [(TVRUIButton *)v7 leadingAnchor];
  v33 = [(TVRUIButton *)v6 imageView];
  v31 = [v33 trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:65.0];
  v71[9] = v30;
  v29 = [(TVRUIButton *)v7 centerYAnchor];
  v28 = [v10 centerYAnchor];
  v18 = [v29 constraintEqualToAnchor:v28];
  v71[10] = v18;
  v19 = [(TVRUIButton *)v7 trailingAnchor];
  v20 = [v10 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v71[11] = v21;
  [(TVRUIButton *)v7 widthAnchor];
  v22 = v7;
  v23 = v37 = v7;
  [v23 constraintEqualToConstant:64.0];
  v24 = v40 = v5;
  v71[12] = v24;
  v25 = [(TVRUIButton *)v22 heightAnchor];
  [v25 constraintEqualToConstant:64.0];
  v26 = v38 = v6;
  v71[13] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:14];
  [v45 activateConstraints:v27];

  [(TVRUIMiniPlayerMediaControlsViewController *)v66 setSkipForwardButton:v37];
  [(TVRUIMiniPlayerMediaControlsViewController *)v66 setSkipBackwardButton:v40];
  [(TVRUIMiniPlayerMediaControlsViewController *)v66 setPlayPauseButton:v38];
}

- (void)_updateButtonsFromPlayingState:(BOOL)a3 mediaActive:(BOOL)a4 playbackRate:(id)a5
{
  v6 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(TVRUIMiniPlayerMediaControlsViewController *)self playPauseButton];
  v10 = v9;
  if (v6)
  {
    v11 = 9994;
  }

  else
  {
    v11 = 9993;
  }

  [v9 _updateButtonType:v11];

  [v8 doubleValue];
  if (!v8 || ((v13 = fabs(v12 + -1.0), v14 = fabs(v12), v13 >= 0.00000011920929) ? (v15 = v14 < 0.00000011920929) : (v15 = 1), v15))
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
  v19 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipForwardButton];
  [v19 _updateButtonType:v18];

  v20 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipBackwardButton];
  [v20 _updateButtonType:v17];

  if (a4)
  {
    v21 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v22 = [(TVRUIMiniPlayerMediaControlsViewController *)self styleProvider];
    v21 = [v22 inactiveMediaControlTintColor];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipBackwardButton];
  v34[0] = v23;
  v24 = [(TVRUIMiniPlayerMediaControlsViewController *)self skipForwardButton];
  v34[1] = v24;
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

        [*(*(&v30 + 1) + 8 * i) setTintColor:v21];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v27);
  }
}

- (void)_skipBackwardWasTapped:(id)a3
{
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying])
    {
      v4 = [(TVRUIMiniPlayerMediaControlsViewController *)self wantsFastForwardButton];
    }

    else
    {
      v4 = 2;
    }

    [(TVRUIMiniPlayerMediaControlsViewController *)self _invokeCommandHandlerWithCommand:v4 withFeedback:1];
  }
}

- (void)_skipBackwardWasLongPressed:(id)a3
{
  v7 = a3;
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([v7 state] == 1)
    {
      v4 = self;
      v5 = 5;
      v6 = 1;
LABEL_7:
      [(TVRUIMiniPlayerMediaControlsViewController *)v4 _invokeCommandHandlerWithCommand:v5 withFeedback:v6];
      goto LABEL_8;
    }

    if ([v7 state] == 3 || objc_msgSend(v7, "state") == 4)
    {
      v4 = self;
      v5 = 6;
      v6 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_playPauseWasTapped:(id)a3
{
  [(TVRUIMiniPlayerMediaControlsViewController *)self setIsPlaying:[(TVRUIMiniPlayerMediaControlsViewController *)self isPlaying]^ 1];

  [(TVRUIMiniPlayerMediaControlsViewController *)self _invokeCommandHandlerWithCommand:2 withFeedback:1];
}

- (void)_skipForwardWasTapped:(id)a3
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

- (void)_skipForwardWasLongPressed:(id)a3
{
  v7 = a3;
  if ([(TVRUIMiniPlayerMediaControlsViewController *)self isMediaActive])
  {
    if ([v7 state] == 1)
    {
      v4 = self;
      v5 = 7;
      v6 = 1;
LABEL_7:
      [(TVRUIMiniPlayerMediaControlsViewController *)v4 _invokeCommandHandlerWithCommand:v5 withFeedback:v6];
      goto LABEL_8;
    }

    if ([v7 state] == 3 || objc_msgSend(v7, "state") == 4)
    {
      v4 = self;
      v5 = 8;
      v6 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_invokeCommandHandlerWithCommand:(unint64_t)a3 withFeedback:(BOOL)a4
{
  v4 = a4;
  v7 = [(TVRUIMiniPlayerMediaControlsViewController *)self commandHandler];

  if (v7)
  {
    v8 = [(TVRUIMiniPlayerMediaControlsViewController *)self commandHandler];
    v8[2](v8, a3, MEMORY[0x277CBEC10]);

    if (v4)
    {
      v9 = [(TVRUIMiniPlayerMediaControlsViewController *)self eventHaptic];
      [v9 playSelectionEventHaptic];
    }
  }
}

@end