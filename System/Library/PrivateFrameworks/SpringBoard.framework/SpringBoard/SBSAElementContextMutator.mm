@interface SBSAElementContextMutator
- (CGRect)preferredLeadingBounds;
- (CGRect)preferredMinimalBounds;
- (CGRect)preferredTrailingBounds;
- (NSDirectionalEdgeInsets)preferredEdgeOutsets;
- (SBSAElementContextMutator)initWithSystemApertureElementContext:(id)context;
- (void)setKeyColor:(id)color;
@end

@implementation SBSAElementContextMutator

- (SBSAElementContextMutator)initWithSystemApertureElementContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBSAElementContextMutator;
  v6 = [(SBSAElementContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemApertureElementContext, context);
  }

  return v7;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsets
{
  [(SBSAElementContext *)self->_systemApertureElementContext preferredEdgeOutsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setKeyColor:(id)color
{
  colorCopy = color;
  keyColor = [(SBSAElementContext *)self->_systemApertureElementContext keyColor];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(SBSAElementContext *)self->_systemApertureElementContext _setKeyColor:colorCopy];
  }
}

- (CGRect)preferredLeadingBounds
{
  [(SBSAElementContext *)self->_systemApertureElementContext preferredLeadingBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredTrailingBounds
{
  [(SBSAElementContext *)self->_systemApertureElementContext preferredTrailingBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredMinimalBounds
{
  [(SBSAElementContext *)self->_systemApertureElementContext preferredMinimalBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end