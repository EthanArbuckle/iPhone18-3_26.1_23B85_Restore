@interface SBTopAffordanceViewController
+ (UIImageSymbolConfiguration)symbolConfiguration;
+ (id)imageForAction:(int64_t)a3 interfaceOrientation:(int64_t)a4;
+ (id)landscapeImageNameForAction:(int64_t)a3;
+ (id)portraitImageNameForAction:(int64_t)a3;
- (BOOL)_dismissIfNeededWithLocation:(CGPoint)a3 window:(id)a4;
- (BOOL)isExpanded;
- (BOOL)isLumaTrackingEnabled;
- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4;
- (SBTopAffordanceViewController)initWithDeviceApplicationSceneHandle:(id)a3;
- (SBTopAffordanceViewControllerDelegate)delegate;
- (SBWindowControlsLayout)windowControlsLayout;
- (UIEdgeInsets)_safeAreaEdgeInsetsForSettings:(id)a3;
- (id)_createAlphaAnimatableProperty;
- (id)_localizedMenuTitleForKey:(id)a3;
- (id)_makeDotsView;
- (id)_makeLumaTrackingView;
- (id)_makePillBackgroundContainerView;
- (id)_makePillContentsView;
- (id)_windowControlsAccessibilityIdentifier;
- (id)effectiveWindowControlsView;
- (void)_requestPerformShortcutActionWithType:(int64_t)a3;
- (void)_setSystemPointerInteractionEnabled:(BOOL)a3;
- (void)_updateStyleForOverrideUserInterfaceStyle;
- (void)_updateWindowControlsLayoutAnimated:(BOOL)a3 previousLayout:(SBWindowControlsLayout *)a4;
- (void)affordancePresenceController:(id)a3 didChangeToPresence:(int64_t)a4;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)loadView;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)setHidden:(BOOL)a3;
- (void)setHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)setLumaTrackingEnabled:(BOOL)a3;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)setWindowControlsLayout:(SBWindowControlsLayout *)a3;
- (void)topAffordanceDotsViewWillDismissMenu:(id)a3;
- (void)topAffordanceDotsViewWillPresentMenu:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transientUI:(id)a3 wasIndirectPannedToDismissFromGestureRecognizer:(id)a4;
- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7;
- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)windowControlsViewController:(id)a3 didRequestAction:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestArrangeWithConfiguration:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestMoveToDisplay:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestSlideOverAction:(unint64_t)a4;
- (void)windowControlsViewController:(id)a3 didRequestTileToPosition:(unint64_t)a4;
- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)a3;
- (void)windowControlsViewControllerWillCollapse:(id)a3;
- (void)windowControlsViewControllerWillExpand:(id)a3;
@end

@implementation SBTopAffordanceViewController

+ (UIImageSymbolConfiguration)symbolConfiguration
{
  if (symbolConfiguration_once != -1)
  {
    +[SBTopAffordanceViewController symbolConfiguration];
  }

  v3 = symbolConfiguration_symbolConfiguration;

  return v3;
}

void __52__SBTopAffordanceViewController_symbolConfiguration__block_invoke()
{
  v0 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] weight:*MEMORY[0x277D74410]];
  v3 = [v0 fontWithSize:14.0];

  v1 = [MEMORY[0x277D755D0] configurationWithFont:v3];
  v2 = symbolConfiguration_symbolConfiguration;
  symbolConfiguration_symbolConfiguration = v1;
}

+ (id)imageForAction:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  v7 = [a1 symbolConfiguration];
  v8 = a4 - 1;
  v9 = MEMORY[0x277D755B8];
  if (v8 >= 2)
  {
    [a1 landscapeImageNameForAction:a3];
  }

  else
  {
    [a1 portraitImageNameForAction:a3];
  }
  v10 = ;
  v11 = [v9 systemImageNamed:v10 withConfiguration:v7];

  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

+ (id)portraitImageNameForAction:(int64_t)a3
{
  if (a3 >> 31)
  {
    v3 = @"rectangle.portrait.inset.filled";
    goto LABEL_32;
  }

  if ((a3 & 2) != 0)
  {
    v3 = @"rectangle.inset.fill";
    goto LABEL_32;
  }

  if ((a3 & 4) != 0)
  {
    v3 = @"rectangle.center.inset.fill";
    goto LABEL_32;
  }

  if ((a3 & 8) != 0)
  {
    v3 = @"plus.rectangle.on.rectangle";
    goto LABEL_32;
  }

  if ((a3 & 0x10) != 0)
  {
    v3 = @"minus.rectangle";
    goto LABEL_32;
  }

  if ((~a3 & 0x3C001E0) == 0)
  {
LABEL_7:
    v3 = @"rectangle.portrait.split.2x1";
    goto LABEL_32;
  }

  if ((a3 & 0x20) != 0)
  {
    v5 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v6 = @"rectangle.portrait.lefthalf.inset.filled";
    v7 = @"rectangle.portrait.righthalf.inset.filled";
LABEL_29:
    if (v5 == 1)
    {
      v6 = v7;
    }

    v3 = v6;
    goto LABEL_32;
  }

  if ((a3 & 0x40) != 0)
  {
    v5 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v6 = @"rectangle.portrait.righthalf.inset.filled";
    v7 = @"rectangle.portrait.lefthalf.inset.filled";
    goto LABEL_29;
  }

  if ((a3 & 0x80) != 0)
  {
    v3 = @"square.tophalf.filled";
  }

  else if ((a3 & 0x100) != 0)
  {
    v3 = @"square.bottomhalf.filled";
  }

  else
  {
    if ((a3 & 0x200) != 0)
    {
      goto LABEL_7;
    }

    if ((a3 & 0x2000) != 0)
    {
      v3 = @"square.grid.2x2";
    }

    else if ((a3 & 0x4000) != 0)
    {
      v3 = @"rectangle.split.3x1";
    }

    else if ((a3 & 0x8000) != 0)
    {
      v3 = @"inset.filled.lefthalf.topright.bottomright.rectangle";
    }

    else if ((a3 & 0x40000) != 0)
    {
      v3 = @"display";
    }

    else if ((a3 & 0x80000) != 0)
    {
      v3 = @"ipad";
    }

    else if ((a3 & 0x100000) != 0)
    {
      v3 = @"xmark";
    }

    else if ((a3 & 0x4000000) != 0)
    {
      v3 = @"arrowtriangle.forward.inset.filled.trailingthird.rectangle";
    }

    else if ((a3 & 0x8000000) != 0)
    {
      v3 = @"arrowtriangle.backward.inset.filled.trailingthird.rectangle";
    }

    else
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:a2 object:a1 file:@"SBTopAffordanceViewController.m" lineNumber:324 description:@"Invalid options with no corresponding image"];

      v3 = &stru_283094718;
    }
  }

LABEL_32:

  return v3;
}

+ (id)landscapeImageNameForAction:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFF80000002) != 0)
  {
    v3 = @"rectangle.inset.fill";
    goto LABEL_30;
  }

  if ((a3 & 4) != 0)
  {
    v3 = @"rectangle.center.inset.fill";
    goto LABEL_30;
  }

  if ((a3 & 8) != 0)
  {
    v3 = @"plus.rectangle.on.rectangle";
    goto LABEL_30;
  }

  if ((a3 & 0x10) != 0)
  {
    v3 = @"minus.rectangle";
    goto LABEL_30;
  }

  if ((~a3 & 0x3C001E0) == 0)
  {
LABEL_7:
    v3 = @"rectangle.split.2x1";
    goto LABEL_30;
  }

  if ((a3 & 0x20) != 0)
  {
    v5 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v6 = @"rectangle.lefthalf.inset.fill";
    v7 = @"rectangle.righthalf.inset.fill";
LABEL_27:
    if (v5 == 1)
    {
      v6 = v7;
    }

    v3 = v6;
    goto LABEL_30;
  }

  if ((a3 & 0x40) != 0)
  {
    v5 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v6 = @"rectangle.righthalf.inset.fill";
    v7 = @"rectangle.lefthalf.inset.fill";
    goto LABEL_27;
  }

  if ((a3 & 0x80) != 0)
  {
    v3 = @"square.tophalf.filled";
  }

  else if ((a3 & 0x100) != 0)
  {
    v3 = @"square.bottomhalf.filled";
  }

  else
  {
    if ((a3 & 0x200) != 0)
    {
      goto LABEL_7;
    }

    if ((a3 & 0x2000) != 0)
    {
      v3 = @"square.grid.2x2";
    }

    else if ((a3 & 0x4000) != 0)
    {
      v3 = @"rectangle.split.3x1";
    }

    else if ((a3 & 0x8000) != 0)
    {
      v3 = @"inset.filled.lefthalf.topright.bottomright.rectangle";
    }

    else if ((a3 & 0x40000) != 0)
    {
      v3 = @"display";
    }

    else if ((a3 & 0x80000) != 0)
    {
      v3 = @"ipad.landscape";
    }

    else if ((a3 & 0x100000) != 0)
    {
      v3 = @"xmark";
    }

    else if ((a3 & 0x4000000) != 0)
    {
      v3 = @"arrowtriangle.forward.inset.filled.trailingthird.rectangle";
    }

    else if ((a3 & 0x8000000) != 0)
    {
      v3 = @"arrowtriangle.backward.inset.filled.trailingthird.rectangle";
    }

    else
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:a2 object:a1 file:@"SBTopAffordanceViewController.m" lineNumber:381 description:@"Invalid options with no corresponding image"];

      v3 = &stru_283094718;
    }
  }

LABEL_30:

  return v3;
}

- (SBTopAffordanceViewController)initWithDeviceApplicationSceneHandle:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SBTopAffordanceViewController;
  v6 = [(SBTopAffordanceViewController *)&v16 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_highlighted = 0;
    objc_storeStrong(&v6->_sceneHandle, a3);
    [(SBDeviceApplicationSceneHandle *)v7->_sceneHandle addObserver:v7];
    v8 = [MEMORY[0x277CF0CF0] settingsWithMass:2.0 stiffness:400.0 damping:45.0];
    styleSettings = v7->_styleSettings;
    v7->_styleSettings = v8;

    v10 = [SBAffordancePresenceController alloc];
    v11 = [(SBDeviceApplicationSceneHandle *)v7->_sceneHandle _windowScene];
    v12 = [(SBAffordancePresenceController *)v10 initWithDelegate:v7 windowScene:v11];
    affordancePresenceController = v7->_affordancePresenceController;
    v7->_affordancePresenceController = v12;

    v7->_windowControlsInitialSize = *MEMORY[0x277CBF3A8];
    v14 = *MEMORY[0x277CBF348];
    *&v7->_windowControlsLayout.style = 0uLL;
    v7->_windowControlsLayout.margin = v14;
  }

  return v7;
}

- (void)dealloc
{
  [(UIViewFloatAnimatableProperty *)self->_alphaAnimatableProperty invalidate];
  [(SBDeviceApplicationSceneHandle *)self->_sceneHandle removeObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBTopAffordanceViewController;
  [(SBTopAffordanceViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [_SBTopAffordanceView alloc];
  v4 = [(_SBTopAffordanceView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_SBTopAffordanceView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBTopAffordanceViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v55[4] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = SBTopAffordanceViewController;
  [(SBTopAffordanceViewController *)&v54 viewDidLoad];
  v3 = [(SBTopAffordanceViewController *)self view];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = [(SBTopAffordanceViewController *)self _makeLumaTrackingView];
    lumaTrackingView = self->_lumaTrackingView;
    self->_lumaTrackingView = v4;

    [v3 addSubview:self->_lumaTrackingView];
  }

  v6 = [(SBTopAffordanceViewController *)self _makeDotsView];
  dotsView = self->_dotsView;
  self->_dotsView = v6;

  if (_UISolariumEnabled())
  {
    v8 = [objc_alloc(MEMORY[0x277D6C088]) initWithElements:SBWindowControlsElementsFromTopAffordanceOptionsMask(self->_optionsMask) delegate:self];
    windowControlsViewController = self->_windowControlsViewController;
    self->_windowControlsViewController = v8;

    v10 = [(SWKWindowControlsViewController *)self->_windowControlsViewController view];
    [v10 bounds];
    self->_windowControlsInitialSize.width = v11;
    self->_windowControlsInitialSize.height = v12;

    [(SWKWindowControlsViewController *)self->_windowControlsViewController unfocus];
    [(SBTopAffordanceViewController *)self bs_addChildViewController:self->_windowControlsViewController];
    v13 = [(SWKWindowControlsViewController *)self->_windowControlsViewController view];
    v14 = [(SBTopAffordanceViewController *)self _windowControlsAccessibilityIdentifier];
    [(SBTopAffordanceDotsView *)v13 setAccessibilityIdentifier:v14];
  }

  else
  {
    [v3 addSubview:self->_dotsView];
    v13 = self->_dotsView;
  }

  v15 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v16 = [v15 switcherController];
  v17 = [v16 windowManagementContext];
  v18 = [v17 isFlexibleWindowingEnabled];

  if (v18)
  {
    if (_UISolariumEnabled())
    {
      margin = self->_windowControlsLayout.margin;
      v53[0] = *&self->_windowControlsLayout.style;
      v53[1] = margin;
      [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:0 previousLayout:v53];
      v20 = objc_opt_new();
      v21 = 0;
      goto LABEL_15;
    }

    v27 = +[SBAppSwitcherDomain rootSettings];
    v24 = [v27 windowingSettings];

    [v24 threeDotsTopAffordanceTopEdgeOffset];
    v29 = v28;
    [v24 threeDotsTopAffordanceLeadingEdgeOffset];
    v31 = v30;
    v32 = [(SBTopAffordanceDotsView *)v13 leftAnchor];
    v33 = [v3 leftAnchor];
    v21 = [v32 constraintEqualToAnchor:v33 constant:v31];

    v25 = [(SBTopAffordanceDotsView *)v13 centerYAnchor];
    v34 = [v3 topAnchor];
    v26 = [v25 constraintEqualToAnchor:v34 constant:v29];
  }

  else
  {
    v22 = [(SBTopAffordanceDotsView *)v13 centerXAnchor];
    v23 = [v3 centerXAnchor];
    v21 = [v22 constraintEqualToAnchor:v23];

    v24 = [(SBTopAffordanceDotsView *)v13 centerYAnchor];
    v25 = [v3 topAnchor];
    [(SBTopAffordanceViewController *)self _defaultCenterYOffset];
    v26 = [v24 constraintEqualToAnchor:v25 constant:?];
  }

  v35 = objc_opt_new();
  v20 = v35;
  if (v21)
  {
    [v35 addObject:v21];
  }

  if (v26)
  {
    [v20 addObject:v26];
  }

LABEL_15:
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v52 = [(_UILumaTrackingBackdropView *)self->_lumaTrackingView centerXAnchor];
    v51 = [(SBTopAffordanceDotsView *)v13 centerXAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v55[0] = v50;
    v49 = [(_UILumaTrackingBackdropView *)self->_lumaTrackingView topAnchor];
    v48 = [(SBTopAffordanceDotsView *)v13 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v55[1] = v47;
    v36 = [(_UILumaTrackingBackdropView *)self->_lumaTrackingView widthAnchor];
    v37 = [v36 constraintEqualToConstant:32.0];
    v55[2] = v37;
    v38 = [(_UILumaTrackingBackdropView *)self->_lumaTrackingView heightAnchor];
    [v38 constraintEqualToConstant:32.0];
    v39 = v21;
    v41 = v40 = v3;
    v55[3] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    [v20 addObjectsFromArray:v42];

    v3 = v40;
    v21 = v39;
  }

  if ([v20 count])
  {
    [v3 addConstraints:v20];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v43 = [(SBAffordancePresenceController *)self->_affordancePresenceController currentPresence];
    v44 = 0.0;
    if (!v43)
    {
      v44 = 1.0;
    }

    [(SBTopAffordanceDotsView *)v13 setAlpha:v44];
  }

  v45 = [(SBTopAffordanceViewController *)self _createAlphaAnimatableProperty];
  alphaAnimatableProperty = self->_alphaAnimatableProperty;
  self->_alphaAnimatableProperty = v45;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBTopAffordanceViewController;
  [(SBTopAffordanceViewController *)&v5 viewWillLayoutSubviews];
  margin = self->_windowControlsLayout.margin;
  v4[0] = *&self->_windowControlsLayout.style;
  v4[1] = margin;
  [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:0 previousLayout:v4];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBTopAffordanceViewController;
  [(SBTopAffordanceViewController *)&v4 setOverrideUserInterfaceStyle:a3];
  [(SBTopAffordanceViewController *)self _updateStyleForOverrideUserInterfaceStyle];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_highlighted = a3;
    styleSettings = self->_styleSettings;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBTopAffordanceViewController_setHighlighted___block_invoke;
    v6[3] = &unk_2783A9F58;
    v6[4] = self;
    v7 = a3;
    [MEMORY[0x277CF0D38] animateWithSettings:styleSettings actions:v6];
  }
}

uint64_t __48__SBTopAffordanceViewController_setHighlighted___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1112) setHighlighted:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1032);
  v3 = *(a1 + 40);

  return [v2 setHighlightedIfNeeded:v3 animated:1];
}

- (BOOL)isExpanded
{
  v2 = [(SBTopAffordanceViewController *)self dotsView];
  v3 = [v2 isHeld];

  return v3;
}

- (void)dismissAnimated:(BOOL)a3
{
  if ([(SBTopAffordanceViewController *)self isExpanded])
  {
    v5 = [(SBTopAffordanceViewController *)self dotsView];
    v4 = [v5 contextMenuInteraction];
    [v4 dismissMenu];
  }
}

- (BOOL)isLumaTrackingEnabled
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  else
  {
    return [(_UILumaTrackingBackdropView *)self->_lumaTrackingView isPaused]^ 1;
  }
}

- (void)setLumaTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) == 0 && [(_UILumaTrackingBackdropView *)self->_lumaTrackingView isPaused]== v3)
  {
    lumaTrackingView = self->_lumaTrackingView;
    if (v3)
    {
      v7 = [(SBTopAffordanceViewController *)self traitCollection];
      if ([v7 userInterfaceStyle] == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      [(_UILumaTrackingBackdropView *)lumaTrackingView unpauseAfterSeedingWithLumaLevel:v6];
    }

    else
    {

      [(_UILumaTrackingBackdropView *)lumaTrackingView setPaused:1];
    }
  }
}

- (void)setWindowControlsLayout:(SBWindowControlsLayout *)a3
{
  p_windowControlsLayout = &self->_windowControlsLayout;
  style = self->_windowControlsLayout.style;
  v7 = a3->style == style && a3->underlapsStatusBar == self->_windowControlsLayout.underlapsStatusBar;
  if (!v7 || (a3->margin.x == self->_windowControlsLayout.margin.x ? (v8 = a3->margin.y == self->_windowControlsLayout.margin.y) : (v8 = 0), !v8))
  {
    v17 = v3;
    v18 = v4;
    v15 = *&self->_windowControlsLayout.underlapsStatusBar;
    y = self->_windowControlsLayout.margin.y;
    margin = a3->margin;
    *&p_windowControlsLayout->style = *&a3->style;
    self->_windowControlsLayout.margin = margin;
    v10 = p_windowControlsLayout->style;
    if (style)
    {
      v11 = v10 == 1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      self->_effectiveWindowControlsLayoutMargin = a3->margin;
    }

    v12 = style;
    v13 = v15;
    v14 = y;
    [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:1 previousLayout:&v12];
  }
}

- (id)effectiveWindowControlsView
{
  if (_UISolariumEnabled())
  {
    v3 = [(SBTopAffordanceViewController *)self windowControlsView];
  }

  else
  {
    v3 = self->_dotsView;
  }

  return v3;
}

- (BOOL)_dismissIfNeededWithLocation:(CGPoint)a3 window:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  LODWORD(v8) = [(SWKWindowControlsViewController *)self->_windowControlsViewController isPresentingMenu];
  if ([(SBTopAffordanceViewController *)self isExpanded]|| v8)
  {
    v9 = [(SBTopAffordanceViewController *)self view];
    v10 = [v7 screen];
    v11 = [v10 fixedCoordinateSpace];

    [v7 convertPoint:v11 toCoordinateSpace:{x, y}];
    [v9 convertPoint:v11 fromCoordinateSpace:?];
    v12 = [v9 hitTest:0 withEvent:?];

    if (v12)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = SBLogTopAffordance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Top affordance dismiss upon screen tap", v14, 2u);
      }

      LOBYTE(v8) = 1;
      [(SBTopAffordanceViewController *)self dismissAnimated:1];
      [(SWKWindowControlsViewController *)self->_windowControlsViewController focus];
    }
  }

  return v8;
}

- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [v5 view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v5 window];
  v12 = [v5 view];
  [v11 convertPoint:v12 fromView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  v17 = [v5 window];

  LOBYTE(self) = [(SBTopAffordanceViewController *)self _dismissIfNeededWithLocation:v17 window:v14, v16];
  return self;
}

- (void)transientUI:(id)a3 wasIndirectPannedToDismissFromGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 view];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 window];
  v14 = [v6 view];

  [v13 convertPoint:v14 fromView:{v10, v12}];
  v16 = v15;
  v18 = v17;

  v19 = [v7 window];

  [(SBTopAffordanceViewController *)self _dismissIfNeededWithLocation:v19 window:v16, v18];
}

- (void)affordancePresenceController:(id)a3 didChangeToPresence:(int64_t)a4
{
  v5 = 0.0;
  if (!a4)
  {
    v5 = 1.0;
  }

  [(SBTopAffordanceDotsView *)self->_dotsView setAlpha:a3, v5];
  margin = self->_windowControlsLayout.margin;
  v7[0] = *&self->_windowControlsLayout.style;
  v7[1] = margin;
  [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:1 previousLayout:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBTopAffordanceViewController;
  v4 = a3;
  [(SBTopAffordanceViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(SBTopAffordanceViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(SBTopAffordanceViewController *)self _updateStyleForOverrideUserInterfaceStyle];
  }
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  if (a4 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(SBTopAffordanceViewController *)self setOverrideUserInterfaceStyle:v4];
}

- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3
{
  margin = a3->margin;
  v4[0] = *&a3->style;
  v4[1] = margin;
  [(SBTopAffordanceViewController *)self setWindowControlsLayout:v4];
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  margin = self->_windowControlsLayout.margin;
  v5[0] = *&self->_windowControlsLayout.style;
  v5[1] = margin;
  [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:1 previousLayout:v5];
}

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  if ([a4 ui_containsChangesToSceneSafeAreaSettings])
  {
    margin = self->_windowControlsLayout.margin;
    v7[0] = *&self->_windowControlsLayout.style;
    v7[1] = margin;
    [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:1 previousLayout:v7];
  }
}

- (void)_requestPerformShortcutActionWithType:(int64_t)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:a3];

  v13[0] = *MEMORY[0x277D67690];
  v6 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v7 = [v6 bundleIdentifier];
  v14[0] = v7;
  v13[1] = *MEMORY[0x277D67698];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = MEMORY[0x277D65DD0];
  v11 = v9;
  v12 = [v10 sharedInstance];
  [v12 emitEvent:50 withPayload:v11];
}

- (id)_makeLumaTrackingView
{
  v3 = objc_alloc(MEMORY[0x277D760C0]);
  v4 = [v3 initWithTransitionBoundaries:self delegate:0.4 frame:{0.5, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

- (id)_makeDotsView
{
  v3 = [SBTopAffordanceDotsView alloc];
  v4 = [(SBTopAffordanceDotsView *)v3 initWithFrame:self delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = +[SBMedusaDomain rootSettings];
  [v5 topAffordanceHitTestExtendTop];
  v7 = -v6;
  [v5 topAffordanceHitTestExtendLeft];
  v9 = -v8;
  [v5 topAffordanceHitTestExtendBottom];
  v11 = -v10;
  [v5 topAffordanceHitTestExtendRight];
  [(SBTopAffordanceDotsView *)v4 setHitTestEdgeInsets:v7, v9, v11, -v12];
  v13 = MEMORY[0x277CCACA8];
  v14 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v15 = [v14 bundleIdentifier];
  v16 = [v13 stringWithFormat:@"top-affordance:%@", v15];
  [(SBTopAffordanceDotsView *)v4 setAccessibilityIdentifier:v16];

  [(SBTopAffordanceDotsView *)v4 setHidden:self->_hidden];
  [(SBTopAffordanceDotsView *)v4 setShowsMenuAsPrimaryAction:1];
  [(SBTopAffordanceDotsView *)v4 setMenu:self->_menu];

  return v4;
}

- (id)_windowControlsAccessibilityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 stringWithFormat:@"window-controls:%@", v4];

  return v5;
}

- (id)_makePillBackgroundContainerView
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_makePillContentsView
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7
{
  v176 = a6;
  v227[2] = *MEMORY[0x277D85DE8];
  margin = a5->margin;
  location = *&a5->style;
  v225 = margin;
  [(SBTopAffordanceViewController *)self setWindowControlsLayout:&location];
  if (self->_optionsMask == a3 && self->_interfaceOrientation == a7 && self->_selectedActionType == a4)
  {
    goto LABEL_135;
  }

  objc_initWeak(&location, self);
  v180 = [MEMORY[0x277CBEB18] array];
  v179 = [MEMORY[0x277CBEB18] array];
  if ((a3 & 2) != 0)
  {
    v10 = [SBTopAffordanceViewController imageForAction:2 interfaceOrientation:a7];
    v11 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_MAXIMIZATION_ZOOM"];
    maximizationZoomAction = self->_maximizationZoomAction;
    if (maximizationZoomAction)
    {
      [(UIAction *)maximizationZoomAction setTitle:v11];
      [(UIAction *)self->_maximizationZoomAction setImage:v10];
    }

    else
    {
      v14 = MEMORY[0x277D750C8];
      v222[0] = MEMORY[0x277D85DD0];
      v222[1] = 3221225472;
      v222[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke;
      v222[3] = &unk_2783ADB30;
      objc_copyWeak(&v223, &location);
      v15 = [v14 actionWithTitle:v11 image:v10 identifier:@"top-affordance-toggle-maximization-zoom-button" handler:v222];
      v16 = self->_maximizationZoomAction;
      self->_maximizationZoomAction = v15;

      [(UIAction *)self->_maximizationZoomAction setAccessibilityIdentifier:@"top-affordance-toggle-maximization-zoom-button"];
      objc_destroyWeak(&v223);
    }

    [v180 addObject:self->_maximizationZoomAction];
  }

  else
  {
    if ((a3 & 4) == 0)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v10 = [SBTopAffordanceViewController imageForAction:4 interfaceOrientation:a7];
    v11 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_MAXIMIZATION_UNZOOM"];
    maximizationUnzoomAction = self->_maximizationUnzoomAction;
    if (maximizationUnzoomAction)
    {
      [(UIAction *)maximizationUnzoomAction setTitle:v11];
      [(UIAction *)self->_maximizationUnzoomAction setImage:v10];
    }

    else
    {
      v17 = MEMORY[0x277D750C8];
      v220[0] = MEMORY[0x277D85DD0];
      v220[1] = 3221225472;
      v220[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_2;
      v220[3] = &unk_2783ADB30;
      objc_copyWeak(&v221, &location);
      v18 = [v17 actionWithTitle:v11 image:v10 identifier:@"top-affordance-toggle-maximization-unzoom-button" handler:v220];
      v19 = self->_maximizationUnzoomAction;
      self->_maximizationUnzoomAction = v18;

      [(UIAction *)self->_maximizationUnzoomAction setAccessibilityIdentifier:@"top-affordance-toggle-maximization-unzoom-button"];
      objc_destroyWeak(&v221);
    }

    [v180 addObject:self->_maximizationUnzoomAction];
  }

LABEL_16:
  if ((a3 & 8) != 0)
  {
    addToSetAction = self->_addToSetAction;
    if (!addToSetAction)
    {
      v21 = MEMORY[0x277D750C8];
      v22 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_ADD_TO_SET"];
      v23 = [SBTopAffordanceViewController imageForAction:8 interfaceOrientation:a7];
      v218[0] = MEMORY[0x277D85DD0];
      v218[1] = 3221225472;
      v218[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_3;
      v218[3] = &unk_2783ADB30;
      objc_copyWeak(&v219, &location);
      v24 = [v21 actionWithTitle:v22 image:v23 identifier:@"top-affordance-add-to-set-button" handler:v218];
      v25 = self->_addToSetAction;
      self->_addToSetAction = v24;

      [(UIAction *)self->_addToSetAction setAccessibilityIdentifier:@"top-affordance-add-to-set-button"];
      objc_destroyWeak(&v219);
      addToSetAction = self->_addToSetAction;
    }

    [v180 addObject:addToSetAction];
  }

  if ((a3 & 0x10) != 0)
  {
    removeFromSetAction = self->_removeFromSetAction;
    if (!removeFromSetAction)
    {
      v27 = MEMORY[0x277D750C8];
      v28 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_REMOVE_FROM_SET"];
      v29 = [SBTopAffordanceViewController imageForAction:16 interfaceOrientation:a7];
      v216[0] = MEMORY[0x277D85DD0];
      v216[1] = 3221225472;
      v216[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_4;
      v216[3] = &unk_2783ADB30;
      objc_copyWeak(&v217, &location);
      v30 = [v27 actionWithTitle:v28 image:v29 identifier:@"top-affordance-remove-from-set-button" handler:v216];
      v31 = self->_removeFromSetAction;
      self->_removeFromSetAction = v30;

      [(UIAction *)self->_removeFromSetAction setAccessibilityIdentifier:@"top-affordance-remove-from-set-button"];
      objc_destroyWeak(&v217);
      removeFromSetAction = self->_removeFromSetAction;
    }

    [v180 addObject:removeFromSetAction];
  }

  if (a3 >> 31)
  {
    v32 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];

    fullScreenAction = self->_fullScreenAction;
    if (fullScreenAction)
    {
      [(UIAction *)fullScreenAction setImage:v32];
    }

    else
    {
      v34 = MEMORY[0x277D750C8];
      v35 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_FULL_SCREEN"];
      v214[0] = MEMORY[0x277D85DD0];
      v214[1] = 3221225472;
      v214[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_5;
      v214[3] = &unk_2783ADB30;
      objc_copyWeak(&v215, &location);
      v36 = [v34 actionWithTitle:v35 image:v32 identifier:@"top-affordance-full-screen-button" handler:v214];
      v37 = self->_fullScreenAction;
      self->_fullScreenAction = v36;

      [(UIAction *)self->_fullScreenAction setAccessibilityIdentifier:@"top-affordance-full-screen-button"];
      objc_destroyWeak(&v215);
    }

    [v180 addObject:self->_fullScreenAction];
    v38 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];

    p_splitViewAction = &self->_splitViewAction;
    splitViewAction = self->_splitViewAction;
    if (splitViewAction)
    {
      [(UIAction *)splitViewAction setImage:v38];
    }

    else
    {
      v41 = MEMORY[0x277D750C8];
      v42 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_SPLIT_VIEW"];
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_6;
      v212[3] = &unk_2783ADB30;
      objc_copyWeak(&v213, &location);
      v43 = [v41 actionWithTitle:v42 image:v38 identifier:@"top-affordance-split-view-button" handler:v212];
      v44 = *p_splitViewAction;
      *p_splitViewAction = v43;

      [*p_splitViewAction setAccessibilityIdentifier:@"top-affordance-split-view-button"];
      objc_destroyWeak(&v213);
    }

    v45 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];

    primarySplitAction = self->_primarySplitAction;
    if (primarySplitAction)
    {
      [(UIAction *)primarySplitAction setImage:v45];
    }

    else
    {
      v47 = MEMORY[0x277D750C8];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v48 = @"TOP_AFFORDANCE_MENU_TITLE_RIGHT_SPLIT";
      }

      else
      {
        v48 = @"TOP_AFFORDANCE_MENU_TITLE_LEFT_SPLIT";
      }

      v49 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:v48];
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_7;
      v210[3] = &unk_2783ADB30;
      objc_copyWeak(&v211, &location);
      v50 = [v47 actionWithTitle:v49 image:v45 identifier:@"top-affordance-split-view-left-button" handler:v210];
      v51 = self->_primarySplitAction;
      self->_primarySplitAction = v50;

      [(UIAction *)self->_primarySplitAction setAccessibilityIdentifier:@"top-affordance-split-view-left-button"];
      objc_destroyWeak(&v211);
    }

    v10 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];

    sideSplitAction = self->_sideSplitAction;
    if (sideSplitAction)
    {
      [(UIAction *)sideSplitAction setImage:v10];
    }

    else
    {
      v53 = MEMORY[0x277D750C8];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v54 = @"TOP_AFFORDANCE_MENU_TITLE_LEFT_SPLIT";
      }

      else
      {
        v54 = @"TOP_AFFORDANCE_MENU_TITLE_RIGHT_SPLIT";
      }

      v55 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:v54];
      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 3221225472;
      v208[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_8;
      v208[3] = &unk_2783ADB30;
      objc_copyWeak(&v209, &location);
      v56 = [v53 actionWithTitle:v55 image:v10 identifier:@"top-affordance-split-view-right-button" handler:v208];
      v57 = self->_sideSplitAction;
      self->_sideSplitAction = v56;

      [(UIAction *)self->_sideSplitAction setAccessibilityIdentifier:@"top-affordance-split-view-right-button"];
      objc_destroyWeak(&v209);
    }

    if (a3 < 0xFFFFFFFF80000000)
    {
      splitViewMenu = self->_splitViewMenu;
      self->_splitViewMenu = 0;
    }

    else
    {
      v58 = MEMORY[0x277D75710];
      v59 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_SPLIT_VIEW"];
      v60 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];
      v61 = self->_sideSplitAction;
      v227[0] = self->_primarySplitAction;
      v227[1] = v61;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:2];
      v63 = [v58 menuWithTitle:v59 image:v60 identifier:@"top-affordance-split-view-sub-menu" options:32 children:v62];
      p_splitViewAction = &self->_splitViewMenu;
      v64 = self->_splitViewMenu;
      self->_splitViewMenu = v63;

      [(UIMenu *)self->_splitViewMenu setAccessibilityIdentifier:@"top-affordance-split-view-sub-menu"];
      [(UIMenu *)self->_splitViewMenu setPreferredElementSize:1];
      [(UIMenu *)self->_splitViewMenu _sb_setSurfacesSelectionState:1];
    }

    [v180 addObject:*p_splitViewAction];
  }

  if ((a3 & 0x3C001E0) != 0)
  {
    if ((a3 & 0x20) != 0)
    {
      v67 = [SBTopAffordanceViewController imageForAction:32 interfaceOrientation:a7];

      tileLeftAction = self->_tileLeftAction;
      if (tileLeftAction)
      {
        [(UIAction *)tileLeftAction setImage:v67];
      }

      else
      {
        v69 = MEMORY[0x277D750C8];
        if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
        {
          v70 = @"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_TRAILING";
        }

        else
        {
          v70 = @"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_LEADING";
        }

        v71 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:v70];
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_9;
        v206[3] = &unk_2783ADB30;
        objc_copyWeak(&v207, &location);
        v72 = [v69 actionWithTitle:v71 image:v67 identifier:@"top-affordance-tile-manual-leading-button" handler:v206];
        v73 = self->_tileLeftAction;
        self->_tileLeftAction = v72;

        [(UIAction *)self->_tileLeftAction setAccessibilityIdentifier:@"top-affordance-tile-manual-leading-button"];
        objc_destroyWeak(&v207);
      }
    }

    else
    {
      v66 = self->_tileLeftAction;
      self->_tileLeftAction = 0;

      v67 = v10;
    }

    if ((a3 & 0x40) != 0)
    {
      v75 = [SBTopAffordanceViewController imageForAction:64 interfaceOrientation:a7];

      tileRightAction = self->_tileRightAction;
      if (tileRightAction)
      {
        [(UIAction *)tileRightAction setImage:v75];
      }

      else
      {
        v77 = MEMORY[0x277D750C8];
        if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
        {
          v78 = @"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_LEADING";
        }

        else
        {
          v78 = @"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_TRAILING";
        }

        v79 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:v78];
        v204[0] = MEMORY[0x277D85DD0];
        v204[1] = 3221225472;
        v204[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_10;
        v204[3] = &unk_2783ADB30;
        objc_copyWeak(&v205, &location);
        v80 = [v77 actionWithTitle:v79 image:v75 identifier:@"top-affordance-tile-manual-trailing-button" handler:v204];
        v81 = self->_tileRightAction;
        self->_tileRightAction = v80;

        [(UIAction *)self->_tileRightAction setAccessibilityIdentifier:@"top-affordance-tile-manual-trailing-button"];
        objc_destroyWeak(&v205);
      }
    }

    else
    {
      v74 = self->_tileRightAction;
      self->_tileRightAction = 0;

      v75 = v67;
    }

    if ((a3 & 0x80) != 0)
    {
      v83 = [SBTopAffordanceViewController imageForAction:128 interfaceOrientation:a7];

      tileTopAction = self->_tileTopAction;
      if (tileTopAction)
      {
        [(UIAction *)tileTopAction setImage:v83];
      }

      else
      {
        v85 = MEMORY[0x277D750C8];
        v86 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_TOP"];
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_11;
        v202[3] = &unk_2783ADB30;
        objc_copyWeak(&v203, &location);
        v87 = [v85 actionWithTitle:v86 image:v83 identifier:@"top-affordance-tile-manual-top-button" handler:v202];
        v88 = self->_tileTopAction;
        self->_tileTopAction = v87;

        [(UIAction *)self->_tileTopAction setAccessibilityIdentifier:@"top-affordance-tile-manual-top-button"];
        objc_destroyWeak(&v203);
      }
    }

    else
    {
      v82 = self->_tileTopAction;
      self->_tileTopAction = 0;

      v83 = v75;
    }

    if ((a3 & 0x100) != 0)
    {
      v10 = [SBTopAffordanceViewController imageForAction:256 interfaceOrientation:a7];

      tileBottomAction = self->_tileBottomAction;
      if (tileBottomAction)
      {
        [(UIAction *)tileBottomAction setImage:v10];
      }

      else
      {
        v91 = MEMORY[0x277D750C8];
        v92 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL_BOTTOM"];
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_12;
        v200[3] = &unk_2783ADB30;
        objc_copyWeak(&v201, &location);
        v93 = [v91 actionWithTitle:v92 image:v10 identifier:@"top-affordance-tile-manual-bottom-button" handler:v200];
        v94 = self->_tileBottomAction;
        self->_tileBottomAction = v93;

        [(UIAction *)self->_tileBottomAction setAccessibilityIdentifier:@"top-affordance-tile-manual-bottom-button"];
        objc_destroyWeak(&v201);
      }
    }

    else
    {
      v89 = self->_tileBottomAction;
      self->_tileBottomAction = 0;

      v10 = v83;
    }

    if ((a3 & 0x3C001E0) == 0x3C001E0)
    {
      v95 = MEMORY[0x277D75710];
      v96 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_MANUAL"];
      v97 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];
      v98 = self->_tileRightAction;
      v226[0] = self->_tileLeftAction;
      v226[1] = v98;
      v99 = self->_tileBottomAction;
      v226[2] = self->_tileTopAction;
      v226[3] = v99;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:4];
      v101 = [v95 menuWithTitle:v96 image:v97 identifier:@"top-affordance-tile-manual-sub-menu" options:32 children:v100];
      p_tileMenu = &self->_tileMenu;
      tileMenu = self->_tileMenu;
      self->_tileMenu = v101;

      [(UIMenu *)self->_tileMenu setAccessibilityIdentifier:@"top-affordance-tile-manual-sub-menu"];
      [(UIMenu *)self->_tileMenu setPreferredElementSize:0];
    }

    else
    {
      p_tileMenu = &self->_tileMenu;
      v104 = self->_tileMenu;
      self->_tileMenu = 0;
    }

    [v180 addObject:*p_tileMenu];
  }

  if ((a3 & 0xE200) != 0)
  {
    if ((a3 & 0x200) != 0)
    {
      v106 = [SBTopAffordanceViewController imageForAction:512 interfaceOrientation:a7];

      arrangeLeftAndRightAction = self->_arrangeLeftAndRightAction;
      if (arrangeLeftAndRightAction)
      {
        [(UIAction *)arrangeLeftAndRightAction setImage:v106];
      }

      else
      {
        v108 = MEMORY[0x277D750C8];
        v109 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_AUTO_VERTICAL_SPLIT_TWO"];
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_13;
        v198[3] = &unk_2783ADB30;
        objc_copyWeak(&v199, &location);
        v110 = [v108 actionWithTitle:v109 image:v106 identifier:@"top-affordance-tile-auto-vertical-two-button" handler:v198];
        v111 = self->_arrangeLeftAndRightAction;
        self->_arrangeLeftAndRightAction = v110;

        [(UIAction *)self->_arrangeLeftAndRightAction setAccessibilityIdentifier:@"top-affordance-tile-auto-vertical-two-button"];
        objc_destroyWeak(&v199);
      }
    }

    else
    {
      v105 = self->_arrangeLeftAndRightAction;
      self->_arrangeLeftAndRightAction = 0;

      v106 = v10;
    }

    if ((a3 & 0x2000) != 0)
    {
      v113 = [SBTopAffordanceViewController imageForAction:0x2000 interfaceOrientation:a7];

      arrangeGridEvenFourAction = self->_arrangeGridEvenFourAction;
      if (arrangeGridEvenFourAction)
      {
        [(UIAction *)arrangeGridEvenFourAction setImage:v113];
      }

      else
      {
        v115 = MEMORY[0x277D750C8];
        v116 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_AUTO_GRID_EVEN_FOUR"];
        v196[0] = MEMORY[0x277D85DD0];
        v196[1] = 3221225472;
        v196[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_14;
        v196[3] = &unk_2783ADB30;
        objc_copyWeak(&v197, &location);
        v117 = [v115 actionWithTitle:v116 image:v113 identifier:@"top-affordance-tile-auto-grid-four-button" handler:v196];
        v118 = self->_arrangeGridEvenFourAction;
        self->_arrangeGridEvenFourAction = v117;

        [(UIAction *)self->_arrangeGridEvenFourAction setAccessibilityIdentifier:@"top-affordance-tile-auto-grid-four-button"];
        objc_destroyWeak(&v197);
      }
    }

    else
    {
      v112 = self->_arrangeGridEvenFourAction;
      self->_arrangeGridEvenFourAction = 0;

      v113 = v106;
    }

    if ((a3 & 0x4000) != 0)
    {
      v120 = [SBTopAffordanceViewController imageForAction:0x4000 interfaceOrientation:a7];

      arrangeThirdsAction = self->_arrangeThirdsAction;
      if (arrangeThirdsAction)
      {
        [(UIAction *)arrangeThirdsAction setImage:v120];
      }

      else
      {
        v122 = MEMORY[0x277D750C8];
        v123 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_ARRANGE_THIRDS"];
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_15;
        v194[3] = &unk_2783ADB30;
        objc_copyWeak(&v195, &location);
        v124 = [v122 actionWithTitle:v123 image:v120 identifier:@"top-affordance-arrange-thirds" handler:v194];
        v125 = self->_arrangeThirdsAction;
        self->_arrangeThirdsAction = v124;

        [(UIAction *)self->_arrangeThirdsAction setAccessibilityIdentifier:@"top-affordance-arrange-thirds"];
        objc_destroyWeak(&v195);
      }
    }

    else
    {
      v119 = self->_arrangeThirdsAction;
      self->_arrangeThirdsAction = 0;

      v120 = v113;
    }

    if ((a3 & 0x8000) != 0)
    {
      v10 = [SBTopAffordanceViewController imageForAction:0x8000 interfaceOrientation:a7];

      arrangeLeftAndQuartersAction = self->_arrangeLeftAndQuartersAction;
      if (arrangeLeftAndQuartersAction)
      {
        [(UIAction *)arrangeLeftAndQuartersAction setImage:v10];
      }

      else
      {
        v128 = MEMORY[0x277D750C8];
        v129 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_ARRANGE_LEFT_AND_QUARTERS"];
        v192[0] = MEMORY[0x277D85DD0];
        v192[1] = 3221225472;
        v192[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_16;
        v192[3] = &unk_2783ADB30;
        objc_copyWeak(&v193, &location);
        v130 = [v128 actionWithTitle:v129 image:v10 identifier:@"top-affordance-arrange-left-and-quarters" handler:v192];
        v131 = self->_arrangeLeftAndQuartersAction;
        self->_arrangeLeftAndQuartersAction = v130;

        [(UIAction *)self->_arrangeLeftAndQuartersAction setAccessibilityIdentifier:@"top-affordance-arrange-left-and-quarters"];
        objc_destroyWeak(&v193);
      }
    }

    else
    {
      v126 = self->_arrangeLeftAndQuartersAction;
      self->_arrangeLeftAndQuartersAction = 0;

      v10 = v120;
    }

    v132 = objc_opt_new();
    [v132 bs_safeAddObject:self->_arrangeLeftAndRightAction];
    [v132 bs_safeAddObject:self->_arrangeThirdsAction];
    [v132 bs_safeAddObject:self->_arrangeLeftAndQuartersAction];
    [v132 bs_safeAddObject:self->_arrangeGridEvenFourAction];
    v133 = MEMORY[0x277D75710];
    v134 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_TILE_AUTO"];
    v135 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];
    v136 = [v133 menuWithTitle:v134 image:v135 identifier:@"top-affordance-tile-auto-sub-menu" options:32 children:v132];
    arrangeMenu = self->_arrangeMenu;
    self->_arrangeMenu = v136;

    [(UIMenu *)self->_arrangeMenu setAccessibilityIdentifier:@"top-affordance-tile-auto-sub-menu"];
    [(UIMenu *)self->_arrangeMenu setPreferredElementSize:1];
    [v180 addObject:self->_arrangeMenu];
  }

  if (a3 >> 31)
  {
    v138 = [SBTopAffordanceViewController imageForAction:0xFFFFFFFF80000000 interfaceOrientation:a7];

    v139 = MEMORY[0x277D750C8];
    v140 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_SLIDE_OVER"];
    v190[0] = MEMORY[0x277D85DD0];
    v190[1] = 3221225472;
    v190[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_17;
    v190[3] = &unk_2783C2738;
    objc_copyWeak(v191, &location);
    v191[1] = 40;
    v141 = [v139 actionWithTitle:v140 image:v138 identifier:@"top-affordance-slide-over-button" handler:v190];
    slideOverAction = self->_slideOverAction;
    self->_slideOverAction = v141;

    [(UIAction *)self->_slideOverAction setAccessibilityIdentifier:@"top-affordance-slide-over-button"];
    [(UIAction *)self->_slideOverAction setImage:v138];
    [v180 addObject:self->_slideOverAction];
    objc_destroyWeak(v191);
  }

  else
  {
    v138 = v10;
  }

  if ((a3 & 0x100000) != 0)
  {
    closeAction = self->_closeAction;
    if (!closeAction)
    {
      v144 = MEMORY[0x277D750C8];
      v145 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_CLOSE"];
      v146 = [SBTopAffordanceViewController imageForAction:0x100000 interfaceOrientation:a7];
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_18;
      v188[3] = &unk_2783ADB30;
      objc_copyWeak(&v189, &location);
      v147 = [v144 actionWithTitle:v145 image:v146 identifier:@"top-affordance-close-window" handler:v188];
      v148 = self->_closeAction;
      self->_closeAction = v147;

      [(UIAction *)self->_closeAction setAccessibilityIdentifier:@"top-affordance-close-window"];
      [(UIAction *)self->_closeAction setAttributes:2];
      objc_destroyWeak(&v189);
      closeAction = self->_closeAction;
    }

    v178 = closeAction;
  }

  else
  {
    v178 = 0;
  }

  if ((a3 & 0xC0000) != 0)
  {
    if ((a3 & 0x40000) != 0)
    {
      v149 = 18;
    }

    else
    {
      v149 = 19;
    }

    if ((a3 & 0x40000) != 0)
    {
      v150 = 0x40000;
    }

    else
    {
      v150 = 0x80000;
    }

    v151 = [SBTopAffordanceViewController imageForAction:v150 interfaceOrientation:a7];

    v152 = @"TOP_AFFORDANCE_MENU_TITLE_MOVE_TO_EXTERNAL_DISPLAY";
    if ((a3 & 0x40000) == 0)
    {
      v152 = @"TOP_AFFORDANCE_MENU_TITLE_MOVE_TO_MAIN_DISPLAY";
    }

    v153 = v152;
    v154 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:v153];
    v155 = MEMORY[0x277D750C8];
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_19;
    v186[3] = &unk_2783C2738;
    objc_copyWeak(v187, &location);
    v187[1] = v149;
    v156 = [v155 actionWithTitle:v154 image:v151 identifier:@"top-affordance-move-to-other-display-button" handler:v186];
    moveToDisplayAction = self->_moveToDisplayAction;
    self->_moveToDisplayAction = v156;

    [(UIAction *)self->_moveToDisplayAction setAccessibilityIdentifier:@"top-affordance-move-to-other-display-button"];
    [(UIAction *)self->_moveToDisplayAction setTitle:v154];
    [(UIAction *)self->_moveToDisplayAction setImage:v151];
    [v180 addObject:self->_moveToDisplayAction];
    objc_destroyWeak(v187);

    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v151 = v138;
    if ((a3 & 0x4000000) == 0)
    {
LABEL_118:
      enterSlideOverAction = self->_enterSlideOverAction;
      self->_enterSlideOverAction = 0;
      v159 = v151;
      goto LABEL_121;
    }
  }

  v159 = [SBTopAffordanceViewController imageForAction:0x4000000 interfaceOrientation:a7];

  enterSlideOverAction = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_ENTER_SLIDE_OVER"];
  v160 = MEMORY[0x277D750C8];
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_20;
  v184[3] = &unk_2783C2738;
  objc_copyWeak(v185, &location);
  v185[1] = 26;
  v161 = [v160 actionWithTitle:enterSlideOverAction image:v159 identifier:@"top-affordance-enter-slide-over" handler:v184];
  v162 = self->_enterSlideOverAction;
  self->_enterSlideOverAction = v161;

  [(UIAction *)self->_enterSlideOverAction setAccessibilityIdentifier:@"top-affordance-enter-slide-over"];
  [(UIAction *)self->_enterSlideOverAction setTitle:enterSlideOverAction];
  [(UIAction *)self->_enterSlideOverAction setImage:v159];
  [v180 addObject:self->_enterSlideOverAction];
  objc_destroyWeak(v185);
LABEL_121:

  if ((a3 & 0x8000000) != 0)
  {
    v164 = [SBTopAffordanceViewController imageForAction:0x8000000 interfaceOrientation:a7];

    v163 = [(SBTopAffordanceViewController *)self _localizedMenuTitleForKey:@"TOP_AFFORDANCE_MENU_TITLE_EXIT_SLIDE_OVER"];
    v165 = MEMORY[0x277D750C8];
    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_21;
    v182[3] = &unk_2783C2738;
    objc_copyWeak(v183, &location);
    v183[1] = 27;
    v166 = [v165 actionWithTitle:v163 image:v164 identifier:@"top-affordance-exit-slide-over" handler:v182];
    exitSlideOverAction = self->_exitSlideOverAction;
    self->_exitSlideOverAction = v166;

    [(UIAction *)self->_exitSlideOverAction setAccessibilityIdentifier:@"top-affordance-exit-slide-over"];
    [(UIAction *)self->_exitSlideOverAction setTitle:v163];
    [(UIAction *)self->_exitSlideOverAction setImage:v164];
    [v180 addObject:self->_exitSlideOverAction];
    objc_destroyWeak(v183);
  }

  else
  {
    v163 = self->_exitSlideOverAction;
    self->_exitSlideOverAction = 0;
    v164 = v159;
  }

  [(UIAction *)self->_fullScreenAction setState:0];
  p_primarySplitAction = &self->_primarySplitAction;
  [(UIAction *)self->_primarySplitAction setState:0];
  [(UIAction *)self->_sideSplitAction setState:0];
  [(UIAction *)self->_slideOverAction setState:0];
  p_fullScreenAction = &self->_splitViewAction;
  [(UIAction *)self->_splitViewAction setState:0];
  [(UIAction *)self->_tileLeftAction setState:0];
  [(UIAction *)self->_tileRightAction setState:0];
  [(UIAction *)self->_tileTopAction setState:0];
  [(UIAction *)self->_tileBottomAction setState:0];
  [(UIAction *)self->_arrangeLeftAndRightAction setState:0];
  [(UIAction *)self->_arrangeGridEvenFourAction setState:0];
  [(UIAction *)self->_arrangeThirdsAction setState:0];
  [(UIAction *)self->_arrangeLeftAndQuartersAction setState:0];
  [(UIAction *)self->_enterSlideOverAction setState:0];
  [(UIAction *)self->_exitSlideOverAction setState:0];
  switch(a4)
  {
    case '%':
      p_fullScreenAction = &self->_fullScreenAction;
      goto LABEL_131;
    case '&':
LABEL_128:
      [(UIAction *)*p_primarySplitAction setState:1];
LABEL_131:
      [(UIAction *)*p_fullScreenAction setState:1];
      goto LABEL_132;
    case '\'':
      p_primarySplitAction = &self->_sideSplitAction;
      goto LABEL_128;
  }

  p_fullScreenAction = &self->_slideOverAction;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0x28)
  {
    goto LABEL_131;
  }

LABEL_132:
  v170 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:1 children:v180];
  [v179 addObject:v170];
  if (v178)
  {
    [v179 addObject:v178];
  }

  v171 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:@"top-affordance-context-menu" options:1 children:v179];
  menu = self->_menu;
  self->_menu = v171;

  [(SBTopAffordanceDotsView *)self->_dotsView setShowsMenuAsPrimaryAction:1];
  [(SBTopAffordanceDotsView *)self->_dotsView setMenu:self->_menu];
  [(SWKWindowControlsViewController *)self->_windowControlsViewController setElements:SBWindowControlsElementsFromTopAffordanceOptionsMask(a3)];
  self->_optionsMask = a3;
  self->_interfaceOrientation = a7;
  self->_selectedActionType = a4;

  objc_destroyWeak(&location);
LABEL_135:
  if (self->_hidden != v176)
  {
    self->_hidden = v176;
    [(SBTopAffordanceDotsView *)self->_dotsView setHidden:?];
    v173 = self->_windowControlsLayout.margin;
    location = *&self->_windowControlsLayout.style;
    v225 = v173;
    [(SBTopAffordanceViewController *)self _updateWindowControlsLayoutAnimated:1 previousLayout:&location];
  }

  if ([(SBTopAffordanceViewController *)self isExpanded])
  {
    if (self->_hidden)
    {
      v174 = [(SBTopAffordanceViewController *)self dotsView];
      v175 = [v174 contextMenuInteraction];
      [v175 dismissMenu];
    }
  }
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:1];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:2];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:3];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:4];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:37];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:38];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:38];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:39];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:5];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:6];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:7];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:8];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:9];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:13];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:14];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:15];

  [v4 setState:0];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:*(a1 + 40)];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:20];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:*(a1 + 40)];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:*(a1 + 40)];
}

void __129__SBTopAffordanceViewController_updateTopAffordanceContextMenuWithOptions_selectedActionType_layout_hidden_interfaceOrientation___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPerformShortcutActionWithType:*(a1 + 40)];
}

- (void)_updateStyleForOverrideUserInterfaceStyle
{
  v2 = [(SBTopAffordanceViewController *)self view];
  [v2 layoutIfNeeded];
}

- (void)_setSystemPointerInteractionEnabled:(BOOL)a3
{
  if (self->_isSystemPointerInteractionEnabled != a3)
  {
    self->_isSystemPointerInteractionEnabled = a3;
    [(SBTopAffordanceDotsView *)self->_dotsView setPointerInteractionEnabled:?];
  }
}

- (id)_localizedMenuTitleForKey:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_283094718 table:@"SpringBoard"];

  return v6;
}

- (void)_updateWindowControlsLayoutAnimated:(BOOL)a3 previousLayout:(SBWindowControlsLayout *)a4
{
  v5 = a3;
  v7 = [(SWKWindowControlsViewController *)self->_windowControlsViewController viewIfLoaded];
  if (v7)
  {
    v8 = [(SBAffordancePresenceController *)self->_affordancePresenceController currentPresence];
    v9 = v8;
    v10 = (a4->style | 4) == 4 || v8 != 0;
    v11 = (self->_windowControlsLayout.style | 4) == 4 || v8 || self->_hidden;
    v12 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [v12 setDampingRatio:1.0];
    [v12 setResponse:0.43];
    if (v5)
    {
      if (v9)
      {
        v13 = self->_windowControlsLayout.style == 1;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }

    else
    {
      v14 = 2;
    }

    v15 = 0.011;
    if (!v11)
    {
      v15 = 1.0;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__SBTopAffordanceViewController__updateWindowControlsLayoutAnimated_previousLayout___block_invoke;
    v21[3] = &unk_2783A8BC8;
    v21[4] = self;
    *&v21[5] = v15;
    [MEMORY[0x277D75D18] sb_animateWithSettings:v12 mode:v14 animations:v21 completion:0];
    v16 = 3;
    if (v10 || v11)
    {
      v16 = 4;
    }

    if (v5)
    {
      v17 = v16;
    }

    else
    {
      v17 = 4;
    }

    v18 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__SBTopAffordanceViewController__updateWindowControlsLayoutAnimated_previousLayout___block_invoke_2;
    v19[3] = &unk_2783A92D8;
    v19[4] = self;
    v20 = v7;
    [v18 sb_animateWithSettings:v12 mode:v17 animations:v19 completion:0];
  }
}

void __84__SBTopAffordanceViewController__updateWindowControlsLayoutAnimated_previousLayout___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[132];
  v4 = v2[133];
  v2 += 130;
  v6 = *v2;
  v5 = v2[1];
  v7 = v3;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v8 = [*(a1 + 32) view];
    [v8 bounds];
    v7 = v9 - v3 - v6;
  }

  v10 = [*(*(a1 + 32) + 1120) sceneIfExists];
  v23 = [v10 settings];

  v11 = [v23 ui_safeAreaSettings];
  v12 = [v11 safeAreaEdgeInsetResolver];
  [v12 safeAreaEdgeInsetsForOrientation:{objc_msgSend(v23, "interfaceOrientation")}];
  v14 = v13;

  [*(a1 + 40) setCenter:{v6 * 0.5 + v7, v4 + v5 * 0.5}];
  [*(a1 + 40) layoutIfNeeded];
  v15 = *(a1 + 32);
  if (*(v15 + 1352) == 1 && *(v15 + 1344) == 2)
  {
    v16 = [*(v15 + 1120) _windowScene];
    v17 = [v16 switcherController];
    v18 = [v17 settings];
    v19 = [v18 windowingSettings];
    [v19 windowControlsInlineTopWithSafeAreaEdgeOffset];
    v4 = v4 - v14 + v20;
  }

  v21 = objc_opt_respondsToSelector();
  v22 = *(*(a1 + 32) + 1032);
  if (v21)
  {
    [v22 setCornerOffset:{v3, v4}];
  }

  else
  {
    [v22 setCornerPoint:{v3, v4}];
  }
}

- (id)_createAlphaAnimatableProperty
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  [v3 setValue:0.0];
  v4 = [(SBTopAffordanceViewController *)self view];
  objc_initWeak(&location, v4);

  objc_initWeak(&from, v3);
  v5 = MEMORY[0x277D75D18];
  v13[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBTopAffordanceViewController__createAlphaAnimatableProperty__block_invoke;
  v8[3] = &unk_2783B45E8;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v3;
}

void __63__SBTopAffordanceViewController__createAlphaAnimatableProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && ([v2 isInvalidated] & 1) == 0)
  {
    [v2 presentationValue];
    v4 = v3;
    v5 = BSFloatApproximatelyEqualToFloat();
    v6 = 0.0;
    if (!v5)
    {
      v6 = v4;
    }

    [WeakRetained setAlpha:v6];
  }
}

- (UIEdgeInsets)_safeAreaEdgeInsetsForSettings:(id)a3
{
  v3 = a3;
  v4 = [v3 ui_safeAreaSettings];
  v5 = [v4 safeAreaEdgeInsetResolver];
  v6 = [v3 interfaceOrientation];

  [v5 safeAreaEdgeInsetsForOrientation:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)setHidden:(BOOL)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBTopAffordanceViewController.m" lineNumber:1252 description:@"-setHidden: is unavailable on SBTopAffordanceViewController"];
}

- (void)setHidden:(BOOL)a3 forReason:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    [(SBTopAffordanceViewController *)self dismissAnimated:v5];
  }

  [(SBAffordancePresenceController *)self->_affordancePresenceController setHidden:v6 forReason:v8 animated:v5];
}

- (void)topAffordanceDotsViewWillPresentMenu:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceViewControllerWillPresentMenu:self];

  v7 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v5 = [v7 transientUIInteractionManager];
  [v5 registerParticipantForTapToDismiss:self];

  v6 = [v7 transientUIInteractionManager];
  [v6 registerParticipantForIndirectPanToDismiss:self];
}

- (void)topAffordanceDotsViewWillDismissMenu:(id)a3
{
  v6 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v4 = [v6 transientUIInteractionManager];
  [v4 unregisterParticipantForTapToDismiss:self];

  v5 = [v6 transientUIInteractionManager];
  [v5 unregisterParticipantForIndirectPanToDismiss:self];
}

- (void)windowControlsViewController:(id)a3 didRequestAction:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a4 <= 3)
  {
    v7 = WeakRetained;
    [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:qword_21F8A8758[a4]];
    _SBWindowControlsAnalyticsLogAction();
    WeakRetained = v7;
  }
}

- (void)windowControlsViewController:(id)a3 didRequestTileToPosition:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a4 <= 3)
  {
    v7 = WeakRetained;
    [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:a4 + 5];
    _SBWindowControlsAnalyticsLogAction();
    WeakRetained = v7;
  }
}

- (void)windowControlsViewController:(id)a3 didRequestArrangeWithConfiguration:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a4 <= 4)
  {
    v7 = WeakRetained;
    [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:qword_21F8A8798[a4]];
    _SBWindowControlsAnalyticsLogAction();
    WeakRetained = v7;
  }
}

- (void)windowControlsViewController:(id)a3 didRequestMoveToDisplay:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = 18;
  }

  else
  {
    v7 = 19;
  }

  v8 = WeakRetained;
  [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:v7];
  _SBWindowControlsAnalyticsLogAction();
  WeakRetained = v8;
LABEL_6:
}

- (void)windowControlsViewControllerDidRequestAddAnotherWindow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:3];

  _SBWindowControlsAnalyticsLogAction();
}

- (void)windowControlsViewControllerWillExpand:(id)a3
{
  v6 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v4 = [v6 transientUIInteractionManager];
  [v4 registerParticipantForTapToDismiss:self];

  v5 = [v6 transientUIInteractionManager];
  [v5 registerParticipantForIndirectPanToDismiss:self];
}

- (void)windowControlsViewControllerWillCollapse:(id)a3
{
  v6 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v4 = [v6 transientUIInteractionManager];
  [v4 unregisterParticipantForTapToDismiss:self];

  v5 = [v6 transientUIInteractionManager];
  [v5 unregisterParticipantForIndirectPanToDismiss:self];
}

- (void)windowControlsViewController:(id)a3 didRequestSlideOverAction:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = 27;
  }

  else
  {
    v7 = 26;
  }

  v8 = WeakRetained;
  [WeakRetained topAffordanceViewController:self requestsPerformShortcutActionWithType:v7];
  WeakRetained = v8;
LABEL_6:
}

- (SBTopAffordanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowControlsLayout)windowControlsLayout
{
  margin = self[42].margin;
  *&retstr->style = *&self[42].style;
  retstr->margin = margin;
  return self;
}

@end