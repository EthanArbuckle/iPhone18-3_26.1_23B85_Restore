@interface SBUICoronaAnimationController
+ (id)animationSettingsForTransitionToStyle:(int64_t)style;
- (id)_configurePropertyAnimatorIfNecessaryForChangeToUserInterfaceStyle:(int64_t)style;
- (void)addParticipant:(id)participant;
- (void)coronaDidChange:(int64_t)change;
- (void)removeParticipant:(id)participant;
@end

@implementation SBUICoronaAnimationController

+ (id)animationSettingsForTransitionToStyle:(int64_t)style
{
  v3 = MEMORY[0x277CDA7B0];
  if (style == 2)
  {
    v3 = MEMORY[0x277CDA7C0];
  }

  v4 = [MEMORY[0x277CD9EF8] functionWithName:*v3];
  v5 = [MEMORY[0x277CF0B70] settingsWithDuration:v4 timingFunction:0.5];

  return v5;
}

- (void)addParticipant:(id)participant
{
  participantCopy = participant;
  v5 = participantCopy;
  if (participantCopy)
  {
    participants = self->_participants;
    v9 = v5;
    if (!participants)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_participants;
      self->_participants = weakObjectsHashTable;

      participants = self->_participants;
    }

    participantCopy = [(NSHashTable *)participants addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](participantCopy, v5);
}

- (void)removeParticipant:(id)participant
{
  if (participant)
  {
    participants = self->_participants;
    if (participants)
    {
      [(NSHashTable *)participants removeObject:?];
    }
  }
}

- (id)_configurePropertyAnimatorIfNecessaryForChangeToUserInterfaceStyle:(int64_t)style
{
  propertyAnimator = self->_propertyAnimator;
  if (!propertyAnimator)
  {
    if (style == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = objc_alloc(MEMORY[0x277D75D40]);
    v7 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:v5];
    v8 = [v6 initWithDuration:v7 timingParameters:0.5];
    v9 = self->_propertyAnimator;
    self->_propertyAnimator = v8;

    objc_initWeak(&location, self);
    v10 = self->_propertyAnimator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__SBUICoronaAnimationController__configurePropertyAnimatorIfNecessaryForChangeToUserInterfaceStyle___block_invoke;
    v12[3] = &unk_27836B700;
    objc_copyWeak(&v13, &location);
    [(UIViewPropertyAnimator *)v10 addCompletion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    propertyAnimator = self->_propertyAnimator;
  }

  return propertyAnimator;
}

void __100__SBUICoronaAnimationController__configurePropertyAnimatorIfNecessaryForChangeToUserInterfaceStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPropertyAnimator:0];
}

- (void)coronaDidChange:(int64_t)change
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(SBUICoronaAnimationController *)self _configurePropertyAnimatorIfNecessaryForChangeToUserInterfaceStyle:change];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_participants;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) coronaAnimationController:self willAnimateCoronaTransitionWithAnimator:{self->_propertyAnimator, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(UIViewPropertyAnimator *)self->_propertyAnimator startAnimation];
  v10 = *MEMORY[0x277D85DE8];
}

@end