@interface SBFSpringLoadedInteractionBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (SBFSpringLoadedInteractionBehaviorDelegate)delegate;
- (void)interactionDidFinish:(id)finish;
@end

@implementation SBFSpringLoadedInteractionBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  contextCopy = context;
  interactionCopy = interaction;
  dropSession = [contextCopy dropSession];
  view = [interactionCopy view];

  [contextCopy locationInView:view];
  v11 = v10;
  v13 = v12;
  delegate = [(SBFSpringLoadedInteractionBehavior *)self delegate];
  v15 = [delegate targetItemForSpringLoadingInteractionInView:view atLocation:dropSession forDropSession:{v11, v13}];

  [contextCopy setTargetItem:v15];
  return v15 != 0;
}

- (void)interactionDidFinish:(id)finish
{
  delegate = [(SBFSpringLoadedInteractionBehavior *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate springLoadedInteractionDidFinish];
  }
}

- (SBFSpringLoadedInteractionBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end