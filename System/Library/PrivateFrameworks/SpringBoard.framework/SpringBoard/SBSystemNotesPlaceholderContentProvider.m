@interface SBSystemNotesPlaceholderContentProvider
- (SBScenePlaceholderContentViewProviderDelegate)delegate;
- (SBSystemNotesPlaceholderContentProvider)initWithSnapshot:(id)a3;
- (id)sceneView:(id)a3 requestsPlaceholderContentViewWithContext:(id)a4;
- (void)setSnapshot:(id)a3;
@end

@implementation SBSystemNotesPlaceholderContentProvider

- (SBSystemNotesPlaceholderContentProvider)initWithSnapshot:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSystemNotesPlaceholderContentProvider;
  v6 = [(SBSystemNotesPlaceholderContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshot, a3);
  }

  return v7;
}

- (id)sceneView:(id)a3 requestsPlaceholderContentViewWithContext:(id)a4
{
  v4 = [[SBPIPSceneContentPlaceholderView alloc] initWithImage:self->_snapshot];

  return v4;
}

- (void)setSnapshot:(id)a3
{
  v6 = a3;
  if (([(UIImage *)self->_snapshot isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_snapshot, a3);
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