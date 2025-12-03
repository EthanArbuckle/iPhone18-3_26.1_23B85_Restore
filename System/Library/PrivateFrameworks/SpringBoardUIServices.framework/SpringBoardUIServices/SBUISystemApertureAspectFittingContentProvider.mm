@interface SBUISystemApertureAspectFittingContentProvider
- (CGSize)explicitIntrinsicSize;
- (SBUISystemApertureAspectFittingContentProvider)initWithView:(id)view;
- (id)_providedView;
- (void)setContentContainer:(id)container;
- (void)setExplicitIntrinsicSize:(CGSize)size;
@end

@implementation SBUISystemApertureAspectFittingContentProvider

- (SBUISystemApertureAspectFittingContentProvider)initWithView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [(SBUISystemApertureAspectFittingContentProvider *)a2 initWithView:?];
  }

  customView = self->_customView;
  self->_customView = viewCopy;
  v7 = viewCopy;

  v8 = [[_SBUISystemApertureAspectFittingView alloc] initWithContentView:v7];
  v11.receiver = self;
  v11.super_class = SBUISystemApertureAspectFittingContentProvider;
  v9 = [(SBUISystemApertureCustomContentProvider *)&v11 initWithView:v8];

  return v9;
}

- (CGSize)explicitIntrinsicSize
{
  _providedView = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
  [_providedView explicitIntrinsicSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setExplicitIntrinsicSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SBUISystemApertureAspectFittingContentProvider *)self explicitIntrinsicSize];
  if (width != v7 || height != v6)
  {
    _providedView = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
    [_providedView setExplicitIntrinsicSize:{width, height}];

    contentContainer = [(SBUISystemApertureCustomContentProvider *)self contentContainer];
    [contentContainer preferredContentSizeDidInvalidateForContentViewProvider:self];
  }
}

- (id)_providedView
{
  v4.receiver = self;
  v4.super_class = SBUISystemApertureAspectFittingContentProvider;
  providedView = [(SBUISystemApertureCustomContentProvider *)&v4 providedView];

  return providedView;
}

- (void)setContentContainer:(id)container
{
  containerCopy = container;
  v7.receiver = self;
  v7.super_class = SBUISystemApertureAspectFittingContentProvider;
  [(SBUISystemApertureCustomContentProvider *)&v7 setContentContainer:containerCopy];
  _providedView = [(SBUISystemApertureAspectFittingContentProvider *)self _providedView];
  v6 = _providedView;
  if (_providedView)
  {
    objc_storeWeak((_providedView + 416), containerCopy);
  }
}

- (void)initWithView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureAspectFittingContentProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"customView"}];
}

@end