@interface SBUISystemApertureCustomContentProvider
- (SBUISystemApertureContentViewContaining)contentContainer;
- (SBUISystemApertureCustomContentProvider)initWithView:(id)a3;
@end

@implementation SBUISystemApertureCustomContentProvider

- (SBUISystemApertureCustomContentProvider)initWithView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBUISystemApertureCustomContentProvider *)a2 initWithView:?];
  }

  v10.receiver = self;
  v10.super_class = SBUISystemApertureCustomContentProvider;
  v7 = [(SBUISystemApertureCustomContentProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_providedView, a3);
  }

  return v8;
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

- (void)initWithView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureCustomContentProvider.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"customView"}];
}

@end