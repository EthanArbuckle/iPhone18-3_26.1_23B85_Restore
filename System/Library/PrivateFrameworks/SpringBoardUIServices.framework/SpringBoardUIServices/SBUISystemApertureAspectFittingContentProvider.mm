@interface SBUISystemApertureAspectFittingContentProvider
- (CGSize)explicitIntrinsicSize;
- (SBUISystemApertureAspectFittingContentProvider)initWithView:(id)a3;
- (id)_providedView;
- (void)setContentContainer:(id)a3;
- (void)setExplicitIntrinsicSize:(CGSize)a3;
@end

@implementation SBUISystemApertureAspectFittingContentProvider

- (SBUISystemApertureAspectFittingContentProvider)initWithView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUISystemApertureAspectFittingContentProvider *)a2 initWithView:?];
  }

  customView = self->_customView;
  self->_customView = v5;
  v7 = v5;

  v8 = [[_SBUISystemApertureAspectFittingView alloc] initWithContentView:v7];
  v11.receiver = self;
  v11.super_class = SBUISystemApertureAspectFittingContentProvider;
  v9 = [(SBUISystemApertureCustomContentProvider *)&v11 initWithView:v8];

  return v9;
}

- (CGSize)explicitIntrinsicSize
{
  v2 = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
  [v2 explicitIntrinsicSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setExplicitIntrinsicSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBUISystemApertureAspectFittingContentProvider *)self explicitIntrinsicSize];
  if (width != v7 || height != v6)
  {
    v9 = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
    [v9 setExplicitIntrinsicSize:{width, height}];

    v10 = [(SBUISystemApertureCustomContentProvider *)self contentContainer];
    [v10 preferredContentSizeDidInvalidateForContentViewProvider:self];
  }
}

- (id)_providedView
{
  v4.receiver = self;
  v4.super_class = SBUISystemApertureAspectFittingContentProvider;
  v2 = [(SBUISystemApertureCustomContentProvider *)&v4 providedView];

  return v2;
}

- (void)setContentContainer:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBUISystemApertureAspectFittingContentProvider;
  [(SBUISystemApertureCustomContentProvider *)&v7 setContentContainer:v4];
  v5 = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak((v5 + 416), v4);
  }
}

- (void)initWithView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureAspectFittingContentProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"customView"}];
}

@end