@interface SBSAIndicatorElementDescriptionMutator
- (CGAffineTransform)fixedIndicatorViewTransform;
- (CGAffineTransform)indicatorViewTransform;
- (SBSAIndicatorElementDescriptionMutator)initWithIndicatorElementDescription:(id)description;
- (void)setAssociatedSystemApertureElementIdentity:(id)identity;
- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)transform;
- (void)setIndicatorViewTransform:(CGAffineTransform *)transform;
@end

@implementation SBSAIndicatorElementDescriptionMutator

- (SBSAIndicatorElementDescriptionMutator)initWithIndicatorElementDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAIndicatorElementDescriptionMutator;
  v6 = [(SBSAIndicatorElementDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indicatorElementDescription, description);
  }

  return v7;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)identity
{
  identityCopy = identity;
  associatedSystemApertureElementIdentity = [(SBSAIndicatorElementDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    indicatorElementDescription = self->_indicatorElementDescription;
    if (identityCopy)
    {
      v7 = [SBSAElementIdentification alloc];
      clientIdentifier = [identityCopy clientIdentifier];
      elementIdentifier = [identityCopy elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
      [(SBSAIndicatorElementDescription *)indicatorElementDescription _setAssociatedSystemApertureElementIdentity:v10];
    }

    else
    {
      [(SBSAIndicatorElementDescription *)indicatorElementDescription _setAssociatedSystemApertureElementIdentity:0];
    }
  }
}

- (CGAffineTransform)indicatorViewTransform
{
  result = self->_indicatorElementDescription;
  if (result)
  {
    return [(CGAffineTransform *)result indicatorViewTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)setIndicatorViewTransform:(CGAffineTransform *)transform
{
  indicatorElementDescription = self->_indicatorElementDescription;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SBSAIndicatorElementDescription *)indicatorElementDescription _setIndicatorViewTransform:v5];
}

- (CGAffineTransform)fixedIndicatorViewTransform
{
  result = self->_indicatorElementDescription;
  if (result)
  {
    return [(CGAffineTransform *)result fixedIndicatorViewTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)transform
{
  indicatorElementDescription = self->_indicatorElementDescription;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(SBSAIndicatorElementDescription *)indicatorElementDescription _setFixedIndicatorViewTransform:v5];
}

@end