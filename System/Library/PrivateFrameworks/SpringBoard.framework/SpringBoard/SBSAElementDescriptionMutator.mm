@interface SBSAElementDescriptionMutator
- (CGAffineTransform)leadingViewTransform;
- (CGAffineTransform)minimalViewTransform;
- (CGAffineTransform)trailingViewTransform;
- (CGSize)leadingViewScale;
- (CGSize)minimalViewScale;
- (CGSize)trailingViewScale;
- (SBSAElementDescriptionMutator)initWithElementDescription:(id)a3;
- (void)setAssociatedSystemApertureElementIdentity:(id)a3;
- (void)setLeadingViewTransform:(CGAffineTransform *)a3;
- (void)setMinimalViewTransform:(CGAffineTransform *)a3;
- (void)setTrailingViewTransform:(CGAffineTransform *)a3;
@end

@implementation SBSAElementDescriptionMutator

- (CGAffineTransform)leadingViewTransform
{
  result = self->_elementDescription;
  if (result)
  {
    return [(CGAffineTransform *)result leadingViewTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CGAffineTransform)trailingViewTransform
{
  result = self->_elementDescription;
  if (result)
  {
    return [(CGAffineTransform *)result trailingViewTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CGAffineTransform)minimalViewTransform
{
  result = self->_elementDescription;
  if (result)
  {
    return [(CGAffineTransform *)result minimalViewTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (SBSAElementDescriptionMutator)initWithElementDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAElementDescriptionMutator;
  v6 = [(SBSAElementDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementDescription, a3);
  }

  return v7;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)a3
{
  v11 = a3;
  v4 = [(SBSAElementDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    elementDescription = self->_elementDescription;
    if (v11)
    {
      v7 = [SBSAElementIdentification alloc];
      v8 = [v11 clientIdentifier];
      v9 = [v11 elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:v8 elementIdentifier:v9];
      [(SBSAElementDescription *)elementDescription _setAssociatedSystemApertureElementIdentity:v10];
    }

    else
    {
      [(SBSAElementDescription *)elementDescription _setAssociatedSystemApertureElementIdentity:0];
    }
  }
}

- (CGSize)leadingViewScale
{
  [(SBSAElementDescription *)self->_elementDescription leadingViewScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setLeadingViewTransform:(CGAffineTransform *)a3
{
  elementDescription = self->_elementDescription;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(SBSAElementDescription *)elementDescription _setLeadingViewTransform:v5];
}

- (CGSize)trailingViewScale
{
  [(SBSAElementDescription *)self->_elementDescription trailingViewScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTrailingViewTransform:(CGAffineTransform *)a3
{
  elementDescription = self->_elementDescription;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(SBSAElementDescription *)elementDescription _setTrailingViewTransform:v5];
}

- (CGSize)minimalViewScale
{
  [(SBSAElementDescription *)self->_elementDescription minimalViewScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMinimalViewTransform:(CGAffineTransform *)a3
{
  elementDescription = self->_elementDescription;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(SBSAElementDescription *)elementDescription _setMinimalViewTransform:v5];
}

@end