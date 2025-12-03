@interface SBSystemNotesPlaceholderContentProvider
- (SBScenePlaceholderContentViewProviderDelegate)delegate;
- (SBSystemNotesPlaceholderContentProvider)initWithSnapshot:(id)snapshot;
- (id)sceneView:(id)view requestsPlaceholderContentViewWithContext:(id)context;
- (void)setSnapshot:(id)snapshot;
@end

@implementation SBSystemNotesPlaceholderContentProvider

- (SBSystemNotesPlaceholderContentProvider)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = SBSystemNotesPlaceholderContentProvider;
  v6 = [(SBSystemNotesPlaceholderContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshot, snapshot);
  }

  return v7;
}

- (id)sceneView:(id)view requestsPlaceholderContentViewWithContext:(id)context
{
  v4 = [[SBPIPSceneContentPlaceholderView alloc] initWithImage:self->_snapshot];

  return v4;
}

- (void)setSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (([(UIImage *)self->_snapshot isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_snapshot, snapshot);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained placeholderContentViewProviderContentDidUpdate:self];
  }
}

- (SBScenePlaceholderContentViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end