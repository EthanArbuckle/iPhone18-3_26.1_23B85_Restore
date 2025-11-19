@interface SBSubstituteSystemApertureViewController
- (BOOL)_isLockHidden;
- (BOOL)_isOnContinuityDisplay;
- (BOOL)_isStandbyPresented;
- (CGRect)_lockFrame;
- (CGRect)_substituteLockElementContainerFrame;
- (CGRect)sensorRegionFrame;
- (CGRect)systemApertureContainerView:(id)a3 hitRectForBounds:(CGRect)a4 debugColor:(id *)a5;
- (SBSubstituteSystemApertureViewController)initWithSensorRegionFrame:(CGRect)a3;
- (SBSystemApertureWindowScene)activeWindowScene;
- (UIEdgeInsets)_currentEdgeInsets;
- (double)_lockPadding;
- (id)_statusBarManager;
- (void)_ensureStatusBarAvoidanceFrame;
- (void)_postLayoutDidChangeNotificationIfNecessary;
- (void)_updateKeylineMode;
- (void)_updateLockViewHidden;
- (void)setActiveWindowScene:(id)a3;
- (void)setSensorRegionFrame:(CGRect)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBSubstituteSystemApertureViewController

- (SBSubstituteSystemApertureViewController)initWithSensorRegionFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = SBSubstituteSystemApertureViewController;
  v7 = [(SBSubstituteSystemApertureViewController *)&v12 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_sensorRegionFrame.origin.x = x;
    v7->_sensorRegionFrame.origin.y = y;
    v7->_sensorRegionFrame.size.width = width;
    v7->_sensorRegionFrame.size.height = height;
    v9 = objc_alloc_init(SBSystemApertureKeyLineColorValidator);
    keyLineColorValidator = v8->_keyLineColorValidator;
    v8->_keyLineColorValidator = v9;
  }

  return v8;
}

- (void)setSensorRegionFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_sensorRegionFrame = &self->_sensorRegionFrame;
  if (!CGRectEqualToRect(self->_sensorRegionFrame, a3))
  {
    p_sensorRegionFrame->origin.x = x;
    p_sensorRegionFrame->origin.y = y;
    p_sensorRegionFrame->size.width = width;
    p_sensorRegionFrame->size.height = height;
    v9 = [(SBSubstituteSystemApertureViewController *)self viewIfLoaded];
    [v9 setNeedsLayout];
  }
}

- (void)setActiveWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  if (WeakRetained != obj)
  {
    v5 = [WeakRetained associatedWindowScene];
    v6 = [v5 ambientPresentationController];
    [v6 removeObserver:self];

    objc_storeWeak(&self->_activeWindowScene, obj);
    v7 = [obj associatedWindowScene];
    v8 = [v7 ambientPresentationController];
    [v8 addObserver:self];

    [(SBSubstituteSystemApertureViewController *)self _ensureStatusBarAvoidanceFrame];
    [(SBSubstituteSystemApertureViewController *)self _updateLockViewHidden];
    [(SBSubstituteSystemApertureViewController *)self _postLayoutDidChangeNotificationIfNecessary];
  }
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = SBSubstituteSystemApertureViewController;
  [(SBSubstituteSystemApertureViewController *)&v35 viewDidLoad];
  v3 = [(SBSubstituteSystemApertureViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  containerSubBackgroundParent = self->_containerSubBackgroundParent;
  self->_containerSubBackgroundParent = v12;

  [(UIView *)self->_containerSubBackgroundParent setUserInteractionEnabled:0];
  v14 = [(UIView *)self->_containerSubBackgroundParent layer];
  [v14 setDisableUpdateMask:32];

  v15 = [(SBSubstituteSystemApertureViewController *)self view];
  [v15 addSubview:self->_containerSubBackgroundParent];

  v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  containerBackgroundParent = self->_containerBackgroundParent;
  self->_containerBackgroundParent = v16;

  [(UIView *)self->_containerBackgroundParent setUserInteractionEnabled:0];
  v18 = [(SBSubstituteSystemApertureViewController *)self view];
  [v18 addSubview:self->_containerBackgroundParent];

  v19 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v5, v7, v9, v11}];
  containerParent = self->_containerParent;
  self->_containerParent = v19;

  v21 = [(SBSubstituteSystemApertureViewController *)self view];
  [v21 addSubview:self->_containerParent];

  v22 = objc_alloc(MEMORY[0x277D67D88]);
  v23 = [v22 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  lockView = self->_lockView;
  self->_lockView = v23;

  [(SBUIProudLockIconView *)self->_lockView setState:1 animated:0];
  [(SBUIProudLockIconView *)self->_lockView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = self->_lockView;
  [MEMORY[0x277D65EC0] proudLockAssetSize];
  v27 = v26 / 1.13;
  [MEMORY[0x277D65EC0] proudLockAssetSize];
  [(SBUIProudLockIconView *)v25 setOverrideSize:v27 offset:v28 / 1.13 extent:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 12.0];
  v29 = [SBSystemApertureContainerView alloc];
  v30 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v31 = [(SBSystemApertureContainerView *)v29 initWithInterfaceElementIdentifier:v30];
  substituteLockElementContainer = self->_substituteLockElementContainer;
  self->_substituteLockElementContainer = v31;

  [(SBSystemApertureContainerView *)self->_substituteLockElementContainer setDelegate:self];
  v33 = self->_substituteLockElementContainer;
  v34 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
  [(SBSystemApertureContainerView *)v33 setKeyLineTintColor:v34];

  [(SBSystemApertureContainerView *)self->_substituteLockElementContainer setKeyLineMode:1];
  [(UIView *)self->_containerParent addSubview:self->_substituteLockElementContainer];
  [(SBSystemApertureContainerView *)self->_substituteLockElementContainer addContentSubview:self->_lockView];
  [(SBSubstituteSystemApertureViewController *)self _updateLockViewHidden];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = SBSubstituteSystemApertureViewController;
  [(SBSubstituteSystemApertureViewController *)&v21 viewDidLayoutSubviews];
  v3 = [(SBSubstituteSystemApertureViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_containerBackgroundParent setFrame:v5, v7, v9, v11];
  [(UIView *)self->_containerParent setFrame:v5, v7, v9, v11];
  [(UIView *)self->_containerSubBackgroundParent setFrame:v5, v7, v9, v11];
  [(SBSubstituteSystemApertureViewController *)self _substituteLockElementContainerFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SBSystemApertureContainerView *)self->_substituteLockElementContainer setFrame:?];
  lockView = self->_lockView;
  [(SBSubstituteSystemApertureViewController *)self _lockFrame];
  [(SBUIProudLockIconView *)lockView setFrame:?];
  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  [(SBSystemApertureContainerView *)self->_substituteLockElementContainer setIDCornerRadius:CGRectGetHeight(v22) * 0.5];
  [(SBSubstituteSystemApertureViewController *)self _postLayoutDidChangeNotificationIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSubstituteSystemApertureViewController;
  [(SBSubstituteSystemApertureViewController *)&v4 viewDidAppear:a3];
  [(SBSubstituteSystemApertureViewController *)self _ensureStatusBarAvoidanceFrame];
}

- (CGRect)systemApertureContainerView:(id)a3 hitRectForBounds:(CGRect)a4 debugColor:(id *)a5
{
  [a3 bounds];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)_lockPadding
{
  Height = CGRectGetHeight(self->_sensorRegionFrame);
  [MEMORY[0x277D65EC0] proudLockAssetSize];
  return (Height + v3 / -1.13) * 0.5 + 1.33333333;
}

- (CGRect)_substituteLockElementContainerFrame
{
  if ([(SBSubstituteSystemApertureViewController *)self _isLockHidden])
  {
    x = self->_sensorRegionFrame.origin.x;
    y = self->_sensorRegionFrame.origin.y;
    width = self->_sensorRegionFrame.size.width;
    height = self->_sensorRegionFrame.size.height;
  }

  else
  {
    [(SBSubstituteSystemApertureViewController *)self _lockPadding];
    v8 = v7;
    [MEMORY[0x277D65EC0] proudLockAssetSize];
    v10 = v8 + v9 / 1.13;
    v11 = v8 + 6.0;
    p_sensorRegionFrame = &self->_sensorRegionFrame;
    x = CGRectGetMinX(*p_sensorRegionFrame) - v10;
    y = CGRectGetMinY(*p_sensorRegionFrame);
    width = v11 + v10 + CGRectGetWidth(*p_sensorRegionFrame);
    height = CGRectGetHeight(*p_sensorRegionFrame);
  }

  v13 = x;
  v14 = y;
  v15 = width;
  result.size.height = height;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_lockFrame
{
  if ([(SBSubstituteSystemApertureViewController *)self _isLockHidden])
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v5 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(SBSubstituteSystemApertureViewController *)self _lockPadding];
    v3 = v7;
    Height = CGRectGetHeight(self->_sensorRegionFrame);
    [MEMORY[0x277D65EC0] proudLockAssetSize];
    v4 = (Height - v9 / 1.13) * 0.5;
    [MEMORY[0x277D65EC0] proudLockAssetSize];
    v6 = v10 / 1.13;
    [MEMORY[0x277D65EC0] proudLockAssetSize];
    v5 = v11 / 1.13;
  }

  v12 = v3;
  v13 = v4;
  v14 = v6;
  result.size.height = v5;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_isLockHidden
{
  if ([(SBSubstituteSystemApertureViewController *)self _isOnContinuityDisplay])
  {
    return 1;
  }

  return [(SBSubstituteSystemApertureViewController *)self _isStandbyPresented];
}

- (BOOL)_isStandbyPresented
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v3 = [WeakRetained associatedWindowScene];
  v4 = [v3 ambientPresentationController];
  v5 = [v4 isPresented];

  return v5;
}

- (void)_updateLockViewHidden
{
  v3 = [(SBSubstituteSystemApertureViewController *)self _isLockHidden];
  if (v3 != [(SBUIProudLockIconView *)self->_lockView isHidden])
  {
    [(SBUIProudLockIconView *)self->_lockView setHidden:[(SBSubstituteSystemApertureViewController *)self _isLockHidden]];
    [(SBSubstituteSystemApertureViewController *)self _updateKeylineMode];
    v4 = [(SBSubstituteSystemApertureViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)_updateKeylineMode
{
  if ([(SBSubstituteSystemApertureViewController *)self _isLockHidden])
  {
    v3 = 0;
  }

  else
  {
    lastSampledLumaLevel = self->_lastSampledLumaLevel;
    if (lastSampledLumaLevel > 2)
    {
      return;
    }

    v3 = qword_21F8A6668[lastSampledLumaLevel];
  }

  substituteLockElementContainer = self->_substituteLockElementContainer;

  [(SBSystemApertureContainerView *)substituteLockElementContainer setKeyLineMode:v3];
}

- (BOOL)_isOnContinuityDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v3 = [WeakRetained associatedWindowScene];
  v4 = [v3 isContinuityDisplayWindowScene];

  return v4;
}

- (id)_statusBarManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v3 = [WeakRetained associatedWindowScene];
  v4 = [v3 statusBarManager];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (void)_ensureStatusBarAvoidanceFrame
{
  v13 = [(SBSubstituteSystemApertureViewController *)self _statusBarManager];
  [(SBSubstituteSystemApertureViewController *)self _substituteLockElementContainerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  v12 = [v11 BSAnimationSettings];
  [v13 setAvoidanceFrame:@"SBSubstituteSystemApertureViewController" reason:0 statusBar:v12 animationSettings:2 options:{v4, v6, v8, v10}];
}

- (UIEdgeInsets)_currentEdgeInsets
{
  if ([(SBSubstituteSystemApertureViewController *)self _isLockHidden])
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    x = self->_sensorRegionFrame.origin.x;
    y = self->_sensorRegionFrame.origin.y;
    width = self->_sensorRegionFrame.size.width;
    height = self->_sensorRegionFrame.size.height;
    [(SBSubstituteSystemApertureViewController *)self _substituteLockElementContainerFrame];
    v12 = v11;
    v14 = v13;
    v26 = v15;
    rect = v13;
    v17 = v16;
    v23 = v16;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v26;
    v29.size.height = v17;
    v25 = MinY - CGRectGetMinY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = v12;
    v31.origin.y = rect;
    v31.size.width = v26;
    v31.size.height = v23;
    v24 = MinX - CGRectGetMinX(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxY = CGRectGetMaxY(v32);
    v33.origin.x = v12;
    v33.origin.y = rect;
    v33.size.width = v26;
    v33.size.height = v23;
    v6 = MaxY - CGRectGetMaxY(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v12;
    v35.origin.y = rect;
    v35.size.width = v26;
    v35.size.height = v23;
    v5 = MaxX - CGRectGetMaxX(v35);
    v4 = v24;
    v3 = v25;
  }

  v22 = v6;
  result.right = v5;
  result.bottom = v22;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_postLayoutDidChangeNotificationIfNecessary
{
  v32[4] = *MEMORY[0x277D85DE8];
  [(SBSubstituteSystemApertureViewController *)self _substituteLockElementContainerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBSubstituteSystemApertureViewController *)self _isLockHidden];
  v12 = &unk_28336E0E8;
  if (v11)
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;
  v14 = MEMORY[0x277CBEB38];
  v31[0] = @"SBSystemApertureEdgeInsets";
  v15 = MEMORY[0x277CCAE60];
  [(SBSubstituteSystemApertureViewController *)self _currentEdgeInsets];
  v16 = [v15 valueWithUIEdgeInsets:?];
  v32[0] = v16;
  v31[1] = @"SBSystemApertureFrames";
  v29[0] = v4;
  v29[1] = v6;
  v29[2] = v8;
  v29[3] = v10;
  v17 = [MEMORY[0x277CCAE60] valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v30 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v32[1] = v18;
  v32[2] = v13;
  v31[2] = @"SBSystemApertureVisibleElementIdentifiers";
  v31[3] = @"SBSystemApertureCanRegisterRecordingIndicator";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v32[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v21 = [v14 dictionaryWithDictionary:v20];

  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v23 = [WeakRetained associatedWindowScene];
  v24 = [v23 _sbDisplayConfiguration];
  v25 = [v24 identity];

  if (v25)
  {
    [v21 setObject:v25 forKey:@"SBSystemApertureOriginatingDisplayIdentity"];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v26 = [v21 copy];
    cachedLayoutDidChangeUserInfo = self->_cachedLayoutDidChangeUserInfo;
    self->_cachedLayoutDidChangeUserInfo = v26;

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 postNotificationName:@"SBSystemApertureLayoutDidChangeNotification" object:self userInfo:self->_cachedLayoutDidChangeUserInfo];
  }
}

- (CGRect)sensorRegionFrame
{
  x = self->_sensorRegionFrame.origin.x;
  y = self->_sensorRegionFrame.origin.y;
  width = self->_sensorRegionFrame.size.width;
  height = self->_sensorRegionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBSystemApertureWindowScene)activeWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);

  return WeakRetained;
}

@end