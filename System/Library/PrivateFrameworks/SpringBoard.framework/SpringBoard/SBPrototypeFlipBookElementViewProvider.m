@interface SBPrototypeFlipBookElementViewProvider
+ (void)registerElementForRecording;
- (BOOL)isOnLastState;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBSecureFlipBookElementHost)secureElementHost;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (UIView)leadingView;
- (id)initForCapture:(BOOL)a3;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3;
- (void)recordingModeChanged;
- (void)setActiveComponentStates:(id)a3;
- (void)setActiveConfiguration:(id)a3;
- (void)transitionToNextState;
@end

@implementation SBPrototypeFlipBookElementViewProvider

- (id)initForCapture:(BOOL)a3
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
    v5->_isForCapture = a3;
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

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  top = a4.top;
  if (a3 == 3)
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
      leading = a5.leading;
    }

    else
    {
      leading = -40.0;
    }

    if (internalLayoutMode == 3)
    {
      trailing = a5.trailing;
    }

    v11 = leading - v7 * 2.0;
    v12 = trailing - v7 * 2.0;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained edgeOutsetsForSize:{1.79769313e308, v8 + v7 * 2.0}];
    bottom = v14;
  }

  else
  {
    v12 = a4.trailing;
    bottom = a4.bottom;
    v11 = a4.leading;
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

- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3
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

  [(UIView *)self->_leadingView setFrame:a3, v4, v4, v5, v5];
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
  v6 = [v5 intValue];

  v7 = [(NSArray *)self->_leadingStates objectAtIndexedSubscript:self->_currentState];
  [(UIView *)self->_leadingView setState:v7];
  if (self->_internalLayoutMode != v6)
  {
    self->_internalLayoutMode = v6;
    v8 = [(SBPrototypeFlipBookElementViewProvider *)self elementHost];
    if ([(SBPrototypeFlipBookElementViewProvider *)self layoutMode]== 3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 elementRequestsSignificantUpdateTransition:self];
    }
  }

  v9 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    v11 = [(SBPrototypeFlipBookElementViewProvider *)self preferredComponentStates];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[Prototype FBE] (%@) preferredComponentStates: %@", &v13, 0x16u);
  }

  v12 = [(SBPrototypeFlipBookElementViewProvider *)self secureElementHost];
  [v12 preferredRecordedStateDidInvalidateForLayoutSpecifier:self];
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

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __116__SBPrototypeFlipBookElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v9[3] = &unk_2783B6F60;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [a5 animateAlongsideTransition:v9 completion:0];
}

+ (void)registerElementForRecording
{
  v4 = [[SBPrototypeFlipBookElementViewProvider alloc] initForCapture:1];
  v2 = [SBApp systemApertureControllerForMainDisplay];
  v3 = [v2 registerElement:v4];

  [v4 setElementAssertion:v3];
}

- (NSArray)recordableConfigurations
{
  v7[1] = *MEMORY[0x277D85DE8];
  recordableConfiguration = self->_recordableConfiguration;
  if (!recordableConfiguration)
  {
    v4 = [(SBPrototypeFlipBookElementViewProvider *)self leadingView];
    recordableConfiguration = self->_recordableConfiguration;
  }

  v7[0] = recordableConfiguration;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)recordingModeChanged
{
  v3 = [(SBPrototypeFlipBookElementViewProvider *)self secureElementHost];
  v4 = [v3 isInRecordingMode];

  if ((v4 & 1) == 0)
  {
    [(SAInvalidatable *)self->_elementAssertion invalidateWithReason:@"recording mode changed"];
    elementAssertion = self->_elementAssertion;
    self->_elementAssertion = 0;
  }
}

- (void)setActiveConfiguration:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_activeConfiguration, a3);
  v6 = [(SBPrototypeFlipBookElementViewProvider *)self leadingView];
  [v6 setHidden:self->_activeConfiguration != 0];

  v7 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    activeConfiguration = self->_activeConfiguration;
    v10 = 138412546;
    v11 = v8;
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

- (void)setActiveComponentStates:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_activeComponentStates, a3);
  v6 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(SBPrototypeFlipBookElementViewProvider *)self elementIdentifier];
    activeComponentStates = self->_activeComponentStates;
    v9 = 138412546;
    v10 = v7;
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