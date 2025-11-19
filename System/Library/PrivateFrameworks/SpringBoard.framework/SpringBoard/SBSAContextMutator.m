@interface SBSAContextMutator
- (CGRect)inertContainerFrame;
- (CGRect)systemContainerBounds;
- (SBSAContextMutator)initWithContext:(id)a3;
- (UIEdgeInsets)landscapeScreenEdgeInsets;
@end

@implementation SBSAContextMutator

- (SBSAContextMutator)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSAContextMutator;
  v6 = [(SBSAContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (CGRect)inertContainerFrame
{
  [(SBSAContext *)self->_context inertContainerFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)systemContainerBounds
{
  [(SBSAContext *)self->_context systemContainerBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)landscapeScreenEdgeInsets
{
  [(SBSAContext *)self->_context landscapeScreenEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end