@interface SBUISystemApertureStackedContentProvider
- (SBUISystemApertureContentViewContaining)contentContainer;
- (SBUISystemApertureStackedContentProvider)initWithContentViewProviders:(id)a3;
- (double)contentSpacing;
- (int64_t)contentAxis;
- (int64_t)contentDistribution;
- (void)setContentAxis:(int64_t)a3;
- (void)setContentDistribution:(int64_t)a3;
- (void)setContentSpacing:(double)a3;
@end

@implementation SBUISystemApertureStackedContentProvider

- (SBUISystemApertureStackedContentProvider)initWithContentViewProviders:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUISystemApertureStackedContentProvider *)a2 initWithContentViewProviders:?];
  }

  v11.receiver = self;
  v11.super_class = SBUISystemApertureStackedContentProvider;
  v6 = [(SBUISystemApertureStackedContentProvider *)&v11 init];
  if (v6)
  {
    v7 = [v5 bs_compactMap:&__block_literal_global_32];
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
  v2 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  v3 = [v2 distribution];

  return v3;
}

- (void)setContentDistribution:(int64_t)a3
{
  v4 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [v4 setDistribution:a3];
}

- (int64_t)contentAxis
{
  v2 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  v3 = [v2 axis];

  return v3;
}

- (void)setContentAxis:(int64_t)a3
{
  v4 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [v4 setAxis:a3];
}

- (double)contentSpacing
{
  v2 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [v2 spacing];
  v4 = v3;

  return v4;
}

- (void)setContentSpacing:(double)a3
{
  v4 = [(SBUISystemApertureStackedContentProvider *)self _providedView];
  [v4 setSpacing:a3];
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