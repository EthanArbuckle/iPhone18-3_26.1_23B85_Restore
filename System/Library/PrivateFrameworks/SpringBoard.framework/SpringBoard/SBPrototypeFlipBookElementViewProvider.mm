@interface SBPrototypeFlipBookElementViewProvider
+ (void)registerElementForRecording;
- (BOOL)isOnLastState;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBSecureFlipBookElementHost)secureElementHost;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (UIView)leadingView;
- (id)initForCapture:(BOOL)capture;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews;
- (void)recordingModeChanged;
- (void)setActiveComponentStates:(id)states;
- (void)setActiveConfiguration:(id)configuration;
- (void)transitionToNextState;
@end

@implementation SBPrototypeFlipBookElementViewProvider

- (id)initForCapture:(BOOL)capture
{
  v9.receiver = self;
  v9.super_class = SBPrototypeFlipBookElementViewProvider;
  v4 = [(SBPrototypeFlipBookElementViewProvider *)&v9 init];
  v5 = v4;
  if (v4)
  {
    leadingStates = v4->_leadingStates;
    v4->_internalLayoutMode = 2;
    v4->_leadingStates = &unk_28336E3D0;

    internalLayoutModeStates = v5->_internalLayoutModeStates;
    v5->_internalLayoutModeStates = &unk_28336E3E8;

    v5->_currentState = 0;
    v5->_isForCapture = capture;
  }

  return v5;
}

- (UIView)leadingView
{
  v15[1] = *MEMORY[0x277D85DE8];
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = objc_alloc(MEMORY[0x277CF0D48]);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Sbuiproudlocki.isa)];
    v6 = [v4 initWithPackageName:@"lock@3x-d73" inBundle:v5];
    v7 = self->_leadingView;
    self->_leadingView = v6;

    [(UIView *)self->_leadingView setState:@"Sleep"];
    v8 = [[SBPrototypeFlipBookElementDescription alloc] initWithAssetView:self->_leadingView];
    leadingDescription = self->_leadingDescription;
    self->_leadingDescription = v8;

    v10 = objc_opt_new();
    recordableConfiguration = self->_recordableConfiguration;
    self->_recordableConfiguration = v10;

    v12 = self->_recordableConfiguration;
    v15[0] = self->_leadingDescription;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SBPrototypeFlipBookElementDefaultConfiguration *)v12 configureLayoutMode:3 withDescriptions:v13];

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  top = outsets.top;
  if (mode == 3)
  {
    internalLayoutMode = self->_internalLayoutMode;
    if (internalLayoutMode == 3)
    {
      v7 = 12.0;
    }

    else
    {
      v7 = 8.0;
    }

    if (internalLayoutMode == 3)
    {
      v8 = 88.0;
    }

    else
    {
      v8 = 40.0;
    }

    trailing = -40.0;
    if (internalLayoutMode == 3)
    {
      leading = maximumOutsets.leading;
    }

    else
    {
      leading = -40.0;
    }

    if (internalLayoutMode == 3)
    {
      trailing = maximumOutsets.trailing;
    }

    v11 = leading - v7 * 2.0;
    v12 = trailing - v7 * 2.0;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained edgeOutsetsForSize:{1.79769313e308, v8 + v7 * 2.0}];
    bottom = v14;
  }

  else
  {
    v12 = outsets.trailing;
    bottom = outsets.bottom;
    v11 = outsets.leading;
  }

  v16 = top;
  v17 = v11;
  v18 = bottom;
  v19 = v12;
  result.trailing = v19;
  result.bottom = v18;
  result.leading = v17;
  result.top = v16;
  return result;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews
{
  internalLayoutMode = self->_internalLayoutMode;
  v4 = 8.0;
  if (internalLayoutMode == 3)
  {
    v4 = 12.0;
  }

  v5 = 88.0;
  if (internalLayoutMode != 3)
  {
    v5 = 40.0;
  }

  [(UIView *)self->_leadingView setFrame:subviews, v4, v4, v5, v5];
}

- (void)transitionToNextState
{
  v17 = *MEMORY[0x277D85DE8];
  currentState = self->_currentState;
  self->_currentState = currentState + 1;
  if ([(NSArray *)self->_leadingStates count]== currentState + 1)
  {
    v4 = 0;
    self->_currentState = 0;
  }

  else
  {
    v4 = self->_currentState;
  }

  v5 = [(NSArray *)self->_internalLayoutModeStates objectAtIndexedSubscript:v4];
  intValue = [v5 intValue];

  v7 = [(NSArray *)self->_leadingStates objectAtIndexedSubscript:self->_currentState];
  [(UIView *)self->_leadingView setState:v7];
  if (self->_internalLayoutMode != intValue)
  {
    self->_internalLayoutMode = intValue;
    elementHost = [(SBPrototypeFlipBookElementViewProvider *)self elementHost];
    if ([(SBPrototypeFlipBookElementViewProvider *)self layoutMode]== 3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [elementHost elementRequestsSignificantUpdateTransition:self];
    }
  }

  v9 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    elementIdentifier = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    preferredComponentStates = [(SBPrototypeFlipBookElementViewProvider *)self preferredComponentStates];
    v13 = 138412546;
    v14 = elementIdentifier;
    v15 = 2112;
    v16 = preferredComponentStates;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[Prototype FBE] (%@) preferredComponentStates: %@", &v13, 0x16u);
  }

  secureElementHost = [(SBPrototypeFlipBookElementViewProvider *)self secureElementHost];
  [secureElementHost preferredRecordedStateDidInvalidateForLayoutSpecifier:self];
}

- (BOOL)isOnLastState
{
  v3 = [(NSArray *)self->_leadingStates count];
  if (v3)
  {
    currentState = self->_currentState;
    LOBYTE(v3) = [(NSArray *)self->_leadingStates count]- 1 == currentState;
  }

  return v3;
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116__SBPrototypeFlipBookElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v9[3] = &unk_2783B6F60;
  v9[4] = self;
  v10 = viewCopy;
  v8 = viewCopy;
  [coordinator animateAlongsideTransition:v9 completion:0];
}

+ (void)registerElementForRecording
{
  v4 = [[SBPrototypeFlipBookElementViewProvider alloc] initForCapture:1];
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v3 = [systemApertureControllerForMainDisplay registerElement:v4];

  [v4 setElementAssertion:v3];
}

- (NSArray)recordableConfigurations
{
  v7[1] = *MEMORY[0x277D85DE8];
  recordableConfiguration = self->_recordableConfiguration;
  if (!recordableConfiguration)
  {
    leadingView = [(SBPrototypeFlipBookElementViewProvider *)self leadingView];
    recordableConfiguration = self->_recordableConfiguration;
  }

  v7[0] = recordableConfiguration;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)recordingModeChanged
{
  secureElementHost = [(SBPrototypeFlipBookElementViewProvider *)self secureElementHost];
  isInRecordingMode = [secureElementHost isInRecordingMode];

  if ((isInRecordingMode & 1) == 0)
  {
    [(SAInvalidatable *)self->_elementAssertion invalidateWithReason:@"recording mode changed"];
    elementAssertion = self->_elementAssertion;
    self->_elementAssertion = 0;
  }
}

- (void)setActiveConfiguration:(id)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  objc_storeStrong(&self->_activeConfiguration, configuration);
  leadingView = [(SBPrototypeFlipBookElementViewProvider *)self leadingView];
  [leadingView setHidden:self->_activeConfiguration != 0];

  v7 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    elementIdentifier = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    activeConfiguration = self->_activeConfiguration;
    v10 = 138412546;
    v11 = elementIdentifier;
    v12 = 2112;
    v13 = activeConfiguration;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "[Prototype FBE] (%@) activeConfiguration: %@", &v10, 0x16u);
  }
}

- (NSDictionary)preferredComponentStates
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Padlock";
  v2 = [(NSArray *)self->_leadingStates objectAtIndexedSubscript:self->_currentState];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)setActiveComponentStates:(id)states
{
  v13 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  objc_storeStrong(&self->_activeComponentStates, states);
  v6 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    elementIdentifier = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    activeComponentStates = self->_activeComponentStates;
    v9 = 138412546;
    v10 = elementIdentifier;
    v11 = 2112;
    v12 = activeComponentStates;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "[Prototype FBE] (%@) activeComponentStates: %@", &v9, 0x16u);
  }
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SBSecureFlipBookElementHost)secureElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_secureElementHost);

  return WeakRetained;
}

@end