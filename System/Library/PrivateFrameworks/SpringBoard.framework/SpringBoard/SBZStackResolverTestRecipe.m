@interface SBZStackResolverTestRecipe
- (SBWindowScene)windowScene;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBZStackResolverTestRecipe

- (void)handleVolumeIncrease
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SBZStackResolverTestRecipe *)self participant];

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v5 = [WeakRetained zStackResolver];

    v6 = [v5 acquireParticipantWithIdentifier:30 delegate:self];
    [(SBZStackResolverTestRecipe *)self setParticipant:v6];

    v7 = SBLogZStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SBZStackResolverTestRecipe *)self participant];
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ acquired participant: %@", &v11, 0x16u);
    }
  }

  v9 = SBLogZStack();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting wantsHomeGesture=YES", &v11, 0xCu);
  }

  [(SBZStackResolverTestRecipe *)self setWantsHomeGesture:1];
  v10 = [(SBZStackResolverTestRecipe *)self participant];
  [v10 setNeedsUpdatePreferencesWithReason:@"User pressed volume up"];
}

- (void)handleVolumeDecrease
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogZStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%@ setting wantsHomeGesture=NO", &v5, 0xCu);
  }

  [(SBZStackResolverTestRecipe *)self setWantsHomeGesture:0];
  v4 = [(SBZStackResolverTestRecipe *)self participant];
  [v4 setNeedsUpdatePreferencesWithReason:@"User pressed volume down"];
}

- (void)zStackParticipantDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogZStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ got zStackParticipantDidChange: %@", &v6, 0x16u);
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [v5 setActivationPolicyForParticipantsBelow:0];
  [v5 setHomeGestureConsumption:{-[SBZStackResolverTestRecipe wantsHomeGesture](self, "wantsHomeGesture")}];
  v6 = SBLogZStack();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%@ updating preferences to: %@", &v7, 0x16u);
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end