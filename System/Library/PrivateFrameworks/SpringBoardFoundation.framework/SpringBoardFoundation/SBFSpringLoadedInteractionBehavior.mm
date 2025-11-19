@interface SBFSpringLoadedInteractionBehavior
- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4;
- (SBFSpringLoadedInteractionBehaviorDelegate)delegate;
- (void)interactionDidFinish:(id)a3;
@end

@implementation SBFSpringLoadedInteractionBehavior

- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 dropSession];
  v9 = [v7 view];

  [v6 locationInView:v9];
  v11 = v10;
  v13 = v12;
  v14 = [(SBFSpringLoadedInteractionBehavior *)self delegate];
  v15 = [v14 targetItemForSpringLoadingInteractionInView:v9 atLocation:v8 forDropSession:{v11, v13}];

  [v6 setTargetItem:v15];
  return v15 != 0;
}

- (void)interactionDidFinish:(id)a3
{
  v3 = [(SBFSpringLoadedInteractionBehavior *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 springLoadedInteractionDidFinish];
  }
}

- (SBFSpringLoadedInteractionBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end