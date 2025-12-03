@interface SBSAElementDescriptionMutator
- (CGAffineTransform)leadingViewTransform;
- (CGAffineTransform)minimalViewTransform;
- (CGAffineTransform)trailingViewTransform;
- (CGSize)leadingViewScale;
- (CGSize)minimalViewScale;
- (CGSize)trailingViewScale;
- (SBSAElementDescriptionMutator)initWithElementDescription:(id)description;
- (void)setAssociatedSystemApertureElementIdentity:(id)identity;
- (void)setLeadingViewTransform:(CGAffineTransform *)transform;
- (void)setMinimalViewTransform:(CGAffineTransform *)transform;
- (void)setTrailingViewTransform:(CGAffineTransform *)transform;
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

- (SBSAElementDescriptionMutator)initWithElementDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAElementDescriptionMutator;
  v6 = [(SBSAElementDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementDescription, description);
  }

  return v7;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)identity
{
  identityCopy = identity;
  associatedSystemApertureElementIdentity = [(SBSAElementDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    elementDescription = self->_elementDescription;
    if (identityCopy)
    {
      v7 = [SBSAElementIdentification alloc];
      clientIdentifier = [identityCopy clientIdentifier];
      elementIdentifier = [identityCopy elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
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

- (void)setLeadingViewTransform:(CGAffineTransform *)transform
{
  elementDescription = self->_elementDescription;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SBSAElementDescription *)elementDescription _setLeadingViewTransform:v5];
}

- (CGSize)trailingViewScale
{
  [(SBSAElementDescription *)self->_elementDescription trailingViewScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTrailingViewTransform:(CGAffineTransform *)transform
{
  elementDescription = self->_elementDescription;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SBSAElementDescription *)elementDescription _setTrailingViewTransform:v5];
}

- (CGSize)minimalViewScale
{
  [(SBSAElementDescription *)self->_elementDescription minimalViewScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMinimalViewTransform:(CGAffineTransform *)transform
{
  elementDescription = self->_elementDescription;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SBSAElementDescription *)elementDescription _setMinimalViewTransform:v5];
}

@end