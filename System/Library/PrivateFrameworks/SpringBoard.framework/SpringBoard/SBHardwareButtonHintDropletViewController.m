@interface SBHardwareButtonHintDropletViewController
- (SBHardwareButtonHintDropletViewController)init;
- (SBHardwareButtonHintDropletViewControllerDelegate)delegate;
- (id)_configurationForButton:(int64_t)a3 stage:(unint64_t)a4;
- (id)_existingOrNewDropletStateForButton:(int64_t)a3;
- (id)activateHintDropletForButton:(int64_t)a3;
- (id)associateHintView:(id)a3 withButton:(int64_t)a4;
- (id)setDropletLayoutCallback:(id)a3 forButton:(int64_t)a4;
- (void)_activateButtonAssertionDidInvalidate:(id)a3 forButton:(int64_t)a4;
- (void)_applyButtonState:(id)a3 animated:(BOOL)a4 checkForIdle:(BOOL)a5;
- (void)_applyStateForExistingButton:(int64_t)a3 animated:(BOOL)a4 checkForIdle:(BOOL)a5;
- (void)_associateHintViewAssertionDidInvalidate:(id)a3 forView:(id)a4 forButton:(int64_t)a5;
- (void)_displayLinkCallback:(id)a3;
- (void)_dropletLayoutCallbackAssertionDidInvalidate:(id)a3 forCallback:(id)a4 forButton:(int64_t)a5;
- (void)_startIdleTimer;
- (void)_updateDisplayLink;
- (void)_updateSnapshotVisibility;
- (void)dealloc;
- (void)loadView;
- (void)setKeylineStyle:(unint64_t)a3;
- (void)updateHintContentVisibility:(int64_t)a3 forButton:(int64_t)a4 animationSettings:(id)a5;
- (void)viewDidLoad;
@end

@implementation SBHardwareButtonHintDropletViewController

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v4.receiver = self;
  v4.super_class = SBHardwareButtonHintDropletViewController;
  [(SBHardwareButtonHintDropletViewController *)&v4 dealloc];
}

- (SBHardwareButtonHintDropletViewController)init
{
  v8.receiver = self;
  v8.super_class = SBHardwareButtonHintDropletViewController;
  v2 = [(SBHardwareButtonHintDropletViewController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    buttonStates = v2->_buttonStates;
    v2->_buttonStates = v3;

    v5 = +[SBButtonBezelGeometryInfo buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel];
    buttonGeometryInfo = v2->_buttonGeometryInfo;
    v2->_buttonGeometryInfo = v5;

    v2->_keylineStyle = 0;
  }

  return v2;
}

- (void)loadView
{
  [(SBHardwareButtonHintDropletViewController *)self _defaultInitialViewFrame];
  v7 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v3, v4, v5, v6}];
  [v7 setOpaque:0];
  [(SBHardwareButtonHintDropletViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = SBHardwareButtonHintDropletViewController;
  [(SBHardwareButtonHintDropletViewController *)&v19 viewDidLoad];
  v3 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D069F0]) initWithFrame:{v5, v7, v9, v11}];
  dropletContextView = self->_dropletContextView;
  self->_dropletContextView = v12;

  v14 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v14 addSubview:self->_dropletContextView];

  [(DRPDropletContextView *)self->_dropletContextView setAutoresizingMask:18];
  v15 = objc_alloc_init(MEMORY[0x277D069E8]);
  animator = self->_animator;
  self->_animator = v15;

  v17 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v17 setNeedsLayout];

  v18 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v18 layoutIfNeeded];
}

- (id)activateHintDropletForButton:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 10)
  {
    v3 = 0;
  }

  else
  {
    v8 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = a3;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Hint Droplet Activating: %ld", buf, 0xCu);
    }

    [(NSTimer *)self->_idleTimer invalidate];
    idleTimer = self->_idleTimer;
    self->_idleTimer = 0;

    buttonStates = self->_buttonStates;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = [(NSMutableDictionary *)buttonStates objectForKey:v11];

    if (v12)
    {
      v13 = v12[7];
      v14 = v13;
      if (v13 && [v13 isValid])
      {
        [(SBHardwareButtonHintDropletViewController *)a3 activateHintDropletForButton:a2, self];
      }
    }

    else
    {
      v12 = [(SBHardwareButtonHintDropletViewController *)self _existingOrNewDropletStateForButton:a3];
    }

    objc_initWeak(buf, self);
    v15 = objc_alloc(MEMORY[0x277CF0CE8]);
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __74__SBHardwareButtonHintDropletViewController_activateHintDropletForButton___block_invoke;
    v22 = &unk_2783A90C0;
    objc_copyWeak(v23, buf);
    v23[1] = a3;
    v3 = [v15 initWithIdentifier:v17 forReason:@"activatedButton" queue:MEMORY[0x277D85CD0] invalidationBlock:&v19];

    [(SBCameraHardwareButton *)v12 setForegroundCameraShutterButtonPIDs:v3];
    [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v12 animated:1, v19, v20, v21, v22];
    objc_destroyWeak(v23);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __74__SBHardwareButtonHintDropletViewController_activateHintDropletForButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateButtonAssertionDidInvalidate:v3 forButton:*(a1 + 40)];
}

- (id)associateHintView:(id)a3 withButton:(int64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  v8 = SBLogButtonHintingUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v38 = a4;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Hint Droplet: %ld Associating Hint View: %@", buf, 0x16u);
  }

  v9 = [(SBHardwareButtonHintDropletViewController *)self _existingOrNewDropletStateForButton:a4];
  [(SBCameraHardwareButton *)v9 setAllCameraShutterButtonPIDs:v6];
  v10 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v10 addSubview:v6];
  v11 = [(SBButtonBezelGeometryInfo *)self->_buttonGeometryInfo buttonScreenEdgeForButton:a4];
  buttonGeometryInfo = self->_buttonGeometryInfo;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 _referenceBounds];
  [(SBButtonBezelGeometryInfo *)buttonGeometryInfo buttonHWRectForButton:a4 onEmbeddedDisplayBounds:?];
  v15 = v14;
  v17 = v16;

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v6 centerYAnchor];
  v19 = [v10 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v15 + v17 * 0.5];
  [v20 setActive:1];

  if (v11 == 8)
  {
    v21 = [v6 leftAnchor];
    v22 = [v10 rightAnchor];
    [v6 bounds];
    v24 = [v21 constraintEqualToAnchor:v22 constant:-v25];
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_8;
    }

    v21 = [v6 rightAnchor];
    v22 = [v10 leftAnchor];
    [v6 bounds];
    v24 = [v21 constraintEqualToAnchor:v22 constant:v23];
  }

  v26 = v24;
  [v24 setActive:1];

LABEL_8:
  objc_initWeak(buf, self);
  v27 = objc_alloc(MEMORY[0x277CF0CE8]);
  v28 = [MEMORY[0x277CCAD78] UUID];
  v29 = [v28 UUIDString];
  v30 = MEMORY[0x277D85CD0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __74__SBHardwareButtonHintDropletViewController_associateHintView_withButton___block_invoke;
  v34[3] = &unk_2783C06D0;
  objc_copyWeak(v36, buf);
  v31 = v6;
  v35 = v31;
  v36[1] = a4;
  v32 = [v27 initWithIdentifier:v29 forReason:@"associatedHintView" queue:MEMORY[0x277D85CD0] invalidationBlock:v34];

  [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v9 animated:1];
  objc_destroyWeak(v36);
  objc_destroyWeak(buf);

  return v32;
}

void __74__SBHardwareButtonHintDropletViewController_associateHintView_withButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _associateHintViewAssertionDidInvalidate:v3 forView:*(a1 + 32) forButton:*(a1 + 48)];
}

- (void)updateHintContentVisibility:(int64_t)a3 forButton:(int64_t)a4 animationSettings:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  buttonStates = self->_buttonStates;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v10 = [(NSMutableDictionary *)buttonStates objectForKey:v9];

  if (v10)
  {
    v11 = *(v10 + 48);
    if (v11)
    {

      goto LABEL_5;
    }

    if (*(v10 + 40))
    {
LABEL_5:
      if (a3 == 1)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (*(v10 + 64) != v12)
      {
        v13 = SBLogButtonHintingUI();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134218240;
          v16 = a4;
          v17 = 2048;
          v18 = v12;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Hint Droplet: %ld Updated hint presented stage: %ld", &v15, 0x16u);
        }

        *(v10 + 64) = v12;
        [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v10 animated:1];
      }

      goto LABEL_15;
    }
  }

  v14 = SBLogButtonHintingUI();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SBHardwareButtonHintDropletViewController updateHintContentVisibility:a4 forButton:v14 animationSettings:?];
  }

LABEL_15:
}

void __80__SBHardwareButtonHintDropletViewController_setDropletLayoutCallback_forButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dropletLayoutCallbackAssertionDidInvalidate:v3 forCallback:*(a1 + 32) forButton:*(a1 + 48)];
}

- (id)_existingOrNewDropletStateForButton:(int64_t)a3
{
  buttonStates = self->_buttonStates;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)buttonStates objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if ((a3 - 3) > 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(SBHardwareButtonHintDropletViewController *)self _existingOrNewDropletStateForButton:10];
    }

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    v12 = [[_SBHardwareButtonHintDropletState alloc] initWithButton:a3 dropletContextView:self->_dropletContextView contentView:v11 groupState:v10];
    [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v12 animated:0 checkForIdle:0];
    v13 = self->_buttonStates;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)v13 setObject:v12 forKey:v14];

    v8 = v12;
  }

  return v8;
}

- (void)_applyStateForExistingButton:(int64_t)a3 animated:(BOOL)a4 checkForIdle:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  buttonStates = self->_buttonStates;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)buttonStates objectForKey:v9];

  v10 = v11;
  if (v11)
  {
    [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v11 animated:v6 checkForIdle:v5];
    v10 = v11;
  }
}

- (void)_startIdleTimer
{
  [(NSTimer *)self->_idleTimer invalidate];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __60__SBHardwareButtonHintDropletViewController__startIdleTimer__block_invoke;
  v9 = &unk_2783AA438;
  objc_copyWeak(&v10, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v6 block:3.0];
  idleTimer = self->_idleTimer;
  self->_idleTimer = v4;

  [(NSTimer *)self->_idleTimer setTolerance:0.3, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__SBHardwareButtonHintDropletViewController__startIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 hintDropletViewControllerDidBecomeIdle:v3];

    WeakRetained = v3;
  }
}

- (void)_updateDisplayLink
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMutableDictionary *)self->_buttonStates objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 40);
          if (v9)
          {

LABEL_18:
            if (self->_displayLink)
            {
              return;
            }

            v13 = SBLogButtonHintingUI();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v17 = 0;
              _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Hint Droplet Starting CADisplayLink", v17, 2u);
            }

            v14 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkCallback_];
            displayLink = self->_displayLink;
            self->_displayLink = v14;

            v16 = self->_displayLink;
            v12 = [MEMORY[0x277CBEB88] mainRunLoop];
            [(CADisplayLink *)v16 addToRunLoop:v12 forMode:*MEMORY[0x277CBE738]];
            goto LABEL_22;
          }

          if (*(v8 + 48))
          {
            goto LABEL_18;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v5 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (self->_displayLink)
  {
    v11 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Hint Droplet Stopping CADisplayLink", v17, 2u);
    }

    [(CADisplayLink *)self->_displayLink invalidate];
    v12 = self->_displayLink;
    self->_displayLink = 0;
LABEL_22:
  }
}

- (void)_displayLinkCallback:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_displayLink == v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v4;
    v5 = [(NSMutableDictionary *)self->_buttonStates objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v6)
    {
      v8 = 0;
      goto LABEL_29;
    }

    v7 = v6;
    v8 = 0;
    v9 = *v31;
    while (1)
    {
      v10 = 0;
      v26 = v7;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 8);
          v13 = *(v11 + 40);
          v14 = *(v11 + 48);
        }

        else
        {
          v13 = 0;
          v12 = 0;
          v14 = 0;
        }

        v15 = v14;
        if (!(v13 | v15))
        {
          v13 = 0;
          goto LABEL_20;
        }

        if (!v8)
        {
          [(SBHardwareButtonHintDropletViewController *)self view];
          v16 = v9;
          v17 = self;
          v19 = v18 = v5;
          v8 = [v19 window];

          v5 = v18;
          self = v17;
          v9 = v16;
          v7 = v26;
        }

        v20 = [(SBButtonBezelGeometryInfo *)self->_buttonGeometryInfo buttonScreenEdgeForButton:v12];
        if (v12 != 10)
        {
          if (v11)
          {
            v21 = *(v11 + 24);
          }

          else
          {
            v21 = 0;
          }

          v22 = _offsetOfDropletView(v21, v8, v20);
          if (!v13)
          {
            goto LABEL_17;
          }

LABEL_16:
          (*(v13 + 16))(v13, v12, v22);
          goto LABEL_17;
        }

        [(SBHardwareButtonHintDropletViewController *)&self->_buttonStates _displayLinkCallback:v8, v20, &v34];
        v22 = v34;
        if (v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        if (v15)
        {
          v23 = MEMORY[0x277D75D18];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __66__SBHardwareButtonHintDropletViewController__displayLinkCallback___block_invoke;
          v27[3] = &unk_2783A8BC8;
          v28 = v15;
          v29 = v22;
          [v23 performWithoutAnimation:v27];
        }

LABEL_20:

        ++v10;
      }

      while (v7 != v10);
      v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v7 = v24;
      if (!v24)
      {
LABEL_29:

        v4 = v25;
        break;
      }
    }
  }
}

uint64_t __66__SBHardwareButtonHintDropletViewController__displayLinkCallback___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeTranslation(&v3, *(a1 + 40), 0.0);
  return [v1 setTransform:&v3];
}

- (void)setKeylineStyle:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_keylineStyle != a3)
  {
    self->_keylineStyle = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSMutableDictionary *)self->_buttonStates objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:*(*(&v9 + 1) + 8 * v8++) animated:1];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)_configurationForButton:(int64_t)a3 stage:(unint64_t)a4
{
  v7 = [(SBButtonBezelGeometryInfo *)self->_buttonGeometryInfo buttonScreenEdgeForButton:?];
  buttonGeometryInfo = self->_buttonGeometryInfo;
  v9 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v9 bounds];
  [(SBButtonBezelGeometryInfo *)buttonGeometryInfo buttonHWRectForButton:a3 onEmbeddedDisplayBounds:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(SBHardwareButtonHintDropletViewController *)self view];
  [v18 bounds];
  v20 = v19;
  v22 = v21;

  keylineStyle = self->_keylineStyle;
  v24 = MEMORY[0x277D069F8];

  return [v24 hardwareButtonHintForButton:a3 stage:a4 keylineStyle:keylineStyle rectEdge:v7 buttonRect:v11 canvasSize:{v13, v15, v17, v20, v22}];
}

- (void)_updateSnapshotVisibility
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"SBHardwareButtonHintDropletsAlwaysVisibleInSnapshots"];

  v5 = (v4 & 1) == 0 && self->_displayLink == 0;
  v6 = [(SBHardwareButtonHintDropletViewController *)self view];
  v7 = [v6 layer];

  v8 = [v7 disableUpdateMask];
  if (v5)
  {
    v9 = v8 | 2u;
    if (v8 != v9)
    {
      v10 = SBLogButtonHintingUI();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v11 = "Hint Droplet: Hiding droplets from snapshots";
        v12 = &v14;
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = v8 & 0xFFFFFFFD;
    if (v8 != v9)
    {
      v10 = SBLogButtonHintingUI();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v11 = "Hint Droplet: Revealing droplets in snapshots";
        v12 = &v13;
        goto LABEL_11;
      }

LABEL_12:

      [v7 setDisableUpdateMask:v9];
    }
  }
}

- (SBHardwareButtonHintDropletViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_activateButtonAssertionDidInvalidate:(id)a3 forButton:(int64_t)a4
{
  buttonStates = self->_buttonStates;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [(NSMutableDictionary *)buttonStates objectForKey:v8];

  if (v9)
  {
    v10 = v9[7];
  }

  else
  {
    v10 = 0;
  }

  if (v10 && v10 == v7)
  {
    v11 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_30(&dword_21ED4E000, v12, v13, "Hint Droplet Deactivating: %ld", v14, v15, v16, v17, 0);
    }

    [(SBCameraHardwareButton *)v9 setForegroundCameraShutterButtonPIDs:?];
    OUTLINED_FUNCTION_0_49();
  }
}

- (void)_associateHintViewAssertionDidInvalidate:(id)a3 forView:(id)a4 forButton:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  buttonStates = self->_buttonStates;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v10 = [(NSMutableDictionary *)buttonStates objectForKey:v9];

  if (v10)
  {
    v11 = v10[6];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v12;
  if (v12 && v12 == v7)
  {
    v14 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = a5;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Hint Droplet: %ld Disassociating Hint View: %@", &v15, 0x16u);
    }

    [v7 removeFromSuperview];
    [(SBCameraHardwareButton *)v10 setAllCameraShutterButtonPIDs:?];
    if (v10)
    {
      v10[8] = 1;
    }

    [(SBHardwareButtonHintDropletViewController *)self _applyButtonState:v10 animated:1];
  }
}

- (id)setDropletLayoutCallback:(id)a3 forButton:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  v8 = SBLogButtonHintingUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = a4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Hint Droplet Setting Layout Callback: %ld", buf, 0xCu);
  }

  v9 = [(SBHardwareButtonHintDropletViewController *)self _existingOrNewDropletStateForButton:a4];
  v11 = v9;
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v10, v6, 40);
  }

  objc_initWeak(buf, self);
  v12 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];
  v15 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__SBHardwareButtonHintDropletViewController_setDropletLayoutCallback_forButton___block_invoke;
  v19[3] = &unk_2783C06F8;
  objc_copyWeak(v21, buf);
  v16 = v6;
  v20 = v16;
  v21[1] = a4;
  v17 = [v12 initWithIdentifier:v14 forReason:@"setLayoutCallback" queue:MEMORY[0x277D85CD0] invalidationBlock:v19];

  OUTLINED_FUNCTION_0_49();
  objc_destroyWeak(v21);
  objc_destroyWeak(buf);

  return v17;
}

- (void)_dropletLayoutCallbackAssertionDidInvalidate:(id)a3 forCallback:(id)a4 forButton:(int64_t)a5
{
  buttonStates = self->_buttonStates;
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithInteger:a5];
  v10 = [(NSMutableDictionary *)buttonStates objectForKey:v9];

  if (v10)
  {
    v11 = v10[5];
  }

  else
  {
    v11 = 0;
  }

  if (v11 && v11 == v8)
  {
    v12 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_30(&dword_21ED4E000, v13, v14, "Hint Droplet Removing Layout Callback: %ld", v15, v16, v17, v18, 0);
    }

    if (v10)
    {
      objc_setProperty_nonatomic_copy(v10, v19, 0, 40);
      v10[8] = 1;
    }

    OUTLINED_FUNCTION_0_49();
  }
}

- (void)_applyButtonState:(id)a3 animated:(BOOL)a4 checkForIdle:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8[1];
    if (v10 == 10)
    {
      [(SBHardwareButtonHintDropletViewController *)self _applyStateForExistingButton:3 animated:v6 checkForIdle:0];
      [(SBHardwareButtonHintDropletViewController *)self _applyStateForExistingButton:4 animated:v6 checkForIdle:0];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(_SBHardwareButtonHintDropletState *)v9 stage];
  v12 = [(SBHardwareButtonHintDropletViewController *)self _configurationForButton:v10 stage:v11];
  if (v9)
  {
    v13 = v9[3];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (v12 && v14)
  {
    v16 = SBLogButtonHintingUI();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = NSStringFromSBSHardwareButtonKind();
      v23 = NSStringFromSBHardwareButtonHintDropletStage(v11);
      v24 = NSStringFromSBHardwareButtonHintDropletKeylineStyle(self->_keylineStyle);
      [v12 debugDescription];
      *buf = 138413314;
      v33 = v26;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 1024;
      v39 = v6;
      v41 = v40 = 2112;
      v25 = v41;
      _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "applying button state for button: %@; stage: %@; keylineStyle: %@; animated:s %{BOOL}u;\nconfiguration: %@", buf, 0x30u);
    }

    [(DRPDropletAnimationCoordinator *)self->_animator applyViewConfiguration:v12 animated:v6 tracking:0 containerView:v15 contextView:self->_dropletContextView];
  }

  if (v9 && v5 && !v9[7] && !v9[6] && !v9[5])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(NSMutableDictionary *)self->_buttonStates objectEnumerator];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          if (!v22 || v22[7] || v22[6] || v22[5])
          {

            goto LABEL_29;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    [(SBHardwareButtonHintDropletViewController *)self _startIdleTimer];
  }

LABEL_29:
  [(SBHardwareButtonHintDropletViewController *)self _updateDisplayLink];
  [(SBHardwareButtonHintDropletViewController *)self _updateSnapshotVisibility];
}

- (void)activateHintDropletForButton:(uint64_t)a3 .cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"activating an already-active button %li", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    v16 = 2114;
    v17 = @"SBHardwareButtonHintDropletViewController.m";
    v18 = 1024;
    v19 = 129;
    v20 = 2114;
    v21 = v5;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v9 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateHintContentVisibility:(uint64_t)a1 forButton:(NSObject *)a2 animationSettings:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSBSHardwareButtonKind();
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "We shouldn't be trying to update the hint content appearance state for a button that has no hinting state: %{public}@", &v4, 0xCu);
}

- (void)_displayLinkCallback:(uint64_t)a3 .cold.1(id *a1, void *a2, uint64_t a3, double *a4)
{
  v8 = [*a1 objectForKey:&unk_283371F30];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = _offsetOfDropletView(v11, a2, a3);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [*a1 objectForKey:&unk_283371F48];
  v14 = v13;
  if (v13)
  {
    v15 = *(v13 + 24);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = _offsetOfDropletView(v16, a2, a3);
  }

  else
  {
    v17 = 0.0;
  }

  if (v12 >= v17)
  {
    v17 = v12;
  }

  *a4 = v17;
}

@end