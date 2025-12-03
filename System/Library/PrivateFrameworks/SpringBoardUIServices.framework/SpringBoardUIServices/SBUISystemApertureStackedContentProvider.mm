@interface SBUISystemApertureStackedContentProvider
- (SBUISystemApertureContentViewContaining)contentContainer;
- (SBUISystemApertureStackedContentProvider)initWithContentViewProviders:(id)providers;
- (double)contentSpacing;
- (int64_t)contentAxis;
- (int64_t)contentDistribution;
- (void)setContentAxis:(int64_t)axis;
- (void)setContentDistribution:(int64_t)distribution;
- (void)setContentSpacing:(double)spacing;
@end

@implementation SBUISystemApertureStackedContentProvider

- (SBUISystemApertureStackedContentProvider)initWithContentViewProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(SBUISystemApertureStackedContentProvider *)a2 initWithContentViewProviders:?];
  }

  v11.receiver = self;
  v11.super_class = SBUISystemApertureStackedContentProvider;
  v6 = [(SBUISystemApertureStackedContentProvider *)&v11 init];
  if (v6)
  {
    v7 = [providersCopy bs_compactMap:&__block_literal_global_32];
    v8 = [[_SBUISystemApertureStackView alloc] initWithArrangedSubviews:v7];
    [(_SBUISystemApertureStackView *)v8 setDistribution:1];
    [(_SBUISystemApertureStackView *)v8 setAlignment:0];
    [(_SBUISystemApertureStackView *)v8 setAxis:0];
    [(_SBUISystemApertureStackView *)v8 setSpacing:SBUISystemApertureInterItemSpacing()];
    providedView = v6->_providedView;
    v6->_providedView = &v8->super.super;
  }

  return v6;
}

- (int64_t)contentDistribution
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  distribution = [_providedView distribution];

  return distribution;
}

- (void)setContentDistribution:(int64_t)distribution
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [_providedView setDistribution:distribution];
}

- (int64_t)contentAxis
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  axis = [_providedView axis];

  return axis;
}

- (void)setContentAxis:(int64_t)axis
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [_providedView setAxis:axis];
}

- (double)contentSpacing
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [_providedView spacing];
  v4 = v3;

  return v4;
}

- (void)setContentSpacing:(double)spacing
{
  _providedView = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [_providedView setSpacing:spacing];
}

- (SBUISystemApertureContentViewContaining)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

- (void)initWithContentViewProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureStackedContentProvider.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"contentViewProviders"}];
}

@end