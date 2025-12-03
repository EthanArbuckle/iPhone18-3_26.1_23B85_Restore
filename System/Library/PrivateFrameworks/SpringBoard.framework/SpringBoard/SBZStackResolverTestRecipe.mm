@interface SBZStackResolverTestRecipe
- (SBWindowScene)windowScene;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBZStackResolverTestRecipe

- (void)handleVolumeIncrease
{
  v15 = *MEMORY[0x277D85DE8];
  participant = [(SBZStackResolverTestRecipe *)self participant];

  if (!participant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    zStackResolver = [WeakRetained zStackResolver];

    v6 = [zStackResolver acquireParticipantWithIdentifier:30 delegate:self];
    [(SBZStackResolverTestRecipe *)self setParticipant:v6];

    v7 = SBLogZStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      participant2 = [(SBZStackResolverTestRecipe *)self participant];
      v11 = 138412546;
      selfCopy2 = self;
      v13 = 2112;
      v14 = participant2;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ acquired participant: %@", &v11, 0x16u);
    }
  }

  v9 = SBLogZStack();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ setting wantsHomeGesture=YES", &v11, 0xCu);
  }

  [(SBZStackResolverTestRecipe *)self setWantsHomeGesture:1];
  participant3 = [(SBZStackResolverTestRecipe *)self participant];
  [participant3 setNeedsUpdatePreferencesWithReason:@"User pressed volume up"];
}

- (void)handleVolumeDecrease
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogZStack();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%@ setting wantsHomeGesture=NO", &v5, 0xCu);
  }

  [(SBZStackResolverTestRecipe *)self setWantsHomeGesture:0];
  participant = [(SBZStackResolverTestRecipe *)self participant];
  [participant setNeedsUpdatePreferencesWithReason:@"User pressed volume down"];
}

- (void)zStackParticipantDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = SBLogZStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ got zStackParticipantDidChange: %@", &v6, 0x16u);
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  v11 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  [preferencesCopy setHomeGestureConsumption:{-[SBZStackResolverTestRecipe wantsHomeGesture](self, "wantsHomeGesture")}];
  v6 = SBLogZStack();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = preferencesCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%@ updating preferences to: %@", &v7, 0x16u);
  }
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end