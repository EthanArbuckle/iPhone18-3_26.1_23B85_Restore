@interface SBSAIndicatorElementContextMutator
- (CGSize)indicatorSize;
- (NSDirectionalEdgeInsets)preferredEdgeOutsets;
- (SBSAIndicatorElementContextMutator)initWithSystemApertureElementContext:(id)a3;
@end

@implementation SBSAIndicatorElementContextMutator

- (SBSAIndicatorElementContextMutator)initWithSystemApertureElementContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAIndicatorElementContextMutator;
  v6 = [(SBSAIndicatorElementContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemApertureElementContext, a3);
  }

  return v7;
}

- (CGSize)indicatorSize
{
  [(SBSAIndicatorElementContext *)self->_systemApertureElementContext indicatorSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsets
{
  [(SBSAIndicatorElementContext *)self->_systemApertureElementContext preferredEdgeOutsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

@end