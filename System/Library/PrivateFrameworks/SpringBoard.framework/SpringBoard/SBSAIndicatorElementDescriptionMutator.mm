@interface SBSAIndicatorElementDescriptionMutator
- (CGAffineTransform)fixedIndicatorViewTransform;
- (CGAffineTransform)indicatorViewTransform;
- (SBSAIndicatorElementDescriptionMutator)initWithIndicatorElementDescription:(id)a3;
- (void)setAssociatedSystemApertureElementIdentity:(id)a3;
- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)setIndicatorViewTransform:(CGAffineTransform *)a3;
@end

@implementation SBSAIndicatorElementDescriptionMutator

- (SBSAIndicatorElementDescriptionMutator)initWithIndicatorElementDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAIndicatorElementDescriptionMutator;
  v6 = [(SBSAIndicatorElementDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indicatorElementDescription, a3);
  }

  return v7;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)a3
{
  v11 = a3;
  v4 = [(SBSAIndicatorElementDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    indicatorElementDescription = self->_indicatorElementDescription;
    if (v11)
    {
      v7 = [SBSAElementIdentification alloc];
      v8 = [v11 clientIdentifier];
      v9 = [v11 elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:v8 elementIdentifier:v9];
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

- (void)setIndicatorViewTransform:(CGAffineTransform *)a3
{
  indicatorElementDescription = self->_indicatorElementDescription;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
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

- (void)setFixedIndicatorViewTransform:(CGAffineTransform *)a3
{
  indicatorElementDescription = self->_indicatorElementDescription;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(SBSAIndicatorElementDescription *)indicatorElementDescription _setFixedIndicatorViewTransform:v5];
}

@end