@interface SBSAContainerViewDescriptionMutator
- (BOOL)isContentClippingEnabled;
- (BOOL)isUserInteractionEnabled;
- (CGPoint)contentCenter;
- (CGRect)contentBounds;
- (CGSize)contentScale;
- (SAElementIdentifying)associatedSystemApertureElementIdentity;
- (SBSystemApertureContainerRenderingConfiguration)renderingConfiguration;
- (UIColor)keyLineTintColor;
- (id)_containerViewDescription;
- (int64_t)keyLineMode;
- (int64_t)sampledBackgroundLuminanceLevel;
- (int64_t)shadowStyle;
- (void)setAssociatedSystemApertureElementIdentity:(id)a3;
- (void)setContentBounds:(CGRect)a3;
- (void)setContentCenter:(CGPoint)a3;
- (void)setContentClippingEnabled:(BOOL)a3;
- (void)setContentScale:(CGSize)a3;
- (void)setKeyLineMode:(int64_t)a3;
- (void)setKeyLineTintColor:(id)a3;
- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
- (void)setSampledBackgroundLuminanceLevel:(int64_t)a3;
- (void)setShadowStyle:(int64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation SBSAContainerViewDescriptionMutator

- (SAElementIdentifying)associatedSystemApertureElementIdentity
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 associatedSystemApertureElementIdentity];

  return v3;
}

- (id)_containerViewDescription
{
  v2 = [(SBSAViewDescriptionMutator *)self viewDescription];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (UIColor)keyLineTintColor
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 keyLineTintColor];

  return v3;
}

- (CGSize)contentScale
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v2 contentScale];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)a3
{
  v11 = a3;
  v4 = [(SBSAContainerViewDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
    if (v11)
    {
      v7 = [SBSAElementIdentification alloc];
      v8 = [v11 clientIdentifier];
      v9 = [v11 elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:v8 elementIdentifier:v9];
      [v6 _setAssociatedSystemApertureElementIdentity:v10];
    }

    else
    {
      [v6 _setAssociatedSystemApertureElementIdentity:0];
    }
  }
}

- (void)setContentScale:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v5 _setContentScale:{width, height}];
}

- (CGRect)contentBounds
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v2 contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v7 _setContentBounds:{x, y, width, height}];
}

- (CGPoint)contentCenter
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v2 contentCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v5 _setContentCenter:{x, y}];
}

- (int64_t)keyLineMode
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 keyLineMode];

  return v3;
}

- (void)setKeyLineMode:(int64_t)a3
{
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v4 _setKeyLineMode:a3];
}

- (void)setKeyLineTintColor:(id)a3
{
  v7 = a3;
  v4 = [(SBSAContainerViewDescriptionMutator *)self keyLineTintColor];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
    [v6 _setKeyLineTintColor:v7];
  }
}

- (int64_t)sampledBackgroundLuminanceLevel
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 sampledBackgroundLuminanceLevel];

  return v3;
}

- (void)setSampledBackgroundLuminanceLevel:(int64_t)a3
{
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v4 _setSampledBackgroundLuminanceLevel:a3];
}

- (int64_t)shadowStyle
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 shadowStyle];

  return v3;
}

- (void)setShadowStyle:(int64_t)a3
{
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v4 _setShadowStyle:a3];
}

- (SBSystemApertureContainerRenderingConfiguration)renderingConfiguration
{
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  if (v4)
  {
    v6 = v4;
    [v4 renderingConfiguration];
    v4 = v6;
  }

  else
  {
    retstr->renderingStyle = 0;
    retstr->cloningStyle = 0;
    *&retstr->alwaysRenderInSnapshots = 0;
  }

  return result;
}

- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v5 = *a3;
  [v4 _setRenderingConfiguration:&v5];
}

- (BOOL)isContentClippingEnabled
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 isContentClippingEnabled];

  return v3;
}

- (void)setContentClippingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v4 _setContentClippingEnabled:v3];
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v3 = [v2 isUserInteractionEnabled];

  return v3;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [v4 _setUserInteractionEnabled:v3];
}

@end