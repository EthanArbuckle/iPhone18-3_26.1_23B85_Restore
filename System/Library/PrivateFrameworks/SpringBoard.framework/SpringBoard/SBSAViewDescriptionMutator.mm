@interface SBSAViewDescriptionMutator
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)boundsVelocity;
- (CGSize)scale;
- (SBSAViewDescriptionMutator)initWithViewDescription:(id)description;
@end

@implementation SBSAViewDescriptionMutator

- (CGRect)bounds
{
  [(SBSAViewDescription *)self->_viewDescription bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)center
{
  [(SBSAViewDescription *)self->_viewDescription center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (SBSAViewDescriptionMutator)initWithViewDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SBSAViewDescriptionMutator;
  v6 = [(SBSAViewDescriptionMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewDescription, description);
  }

  return v7;
}

- (CGSize)scale
{
  [(SBSAViewDescription *)self->_viewDescription scale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)boundsVelocity
{
  [(SBSAViewDescription *)self->_viewDescription boundsVelocity];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end