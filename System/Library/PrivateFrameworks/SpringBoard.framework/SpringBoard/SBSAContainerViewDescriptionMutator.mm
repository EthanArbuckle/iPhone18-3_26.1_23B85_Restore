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
- (void)setAssociatedSystemApertureElementIdentity:(id)identity;
- (void)setContentBounds:(CGRect)bounds;
- (void)setContentCenter:(CGPoint)center;
- (void)setContentClippingEnabled:(BOOL)enabled;
- (void)setContentScale:(CGSize)scale;
- (void)setKeyLineMode:(int64_t)mode;
- (void)setKeyLineTintColor:(id)color;
- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration;
- (void)setSampledBackgroundLuminanceLevel:(int64_t)level;
- (void)setShadowStyle:(int64_t)style;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation SBSAContainerViewDescriptionMutator

- (SAElementIdentifying)associatedSystemApertureElementIdentity
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  associatedSystemApertureElementIdentity = [_containerViewDescription associatedSystemApertureElementIdentity];

  return associatedSystemApertureElementIdentity;
}

- (id)_containerViewDescription
{
  viewDescription = [(SBSAViewDescriptionMutator *)self viewDescription];
  v3 = objc_opt_class();
  v4 = viewDescription;
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
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  keyLineTintColor = [_containerViewDescription keyLineTintColor];

  return keyLineTintColor;
}

- (CGSize)contentScale
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription contentScale];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setAssociatedSystemApertureElementIdentity:(id)identity
{
  identityCopy = identity;
  associatedSystemApertureElementIdentity = [(SBSAContainerViewDescriptionMutator *)self associatedSystemApertureElementIdentity];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
    if (identityCopy)
    {
      v7 = [SBSAElementIdentification alloc];
      clientIdentifier = [identityCopy clientIdentifier];
      elementIdentifier = [identityCopy elementIdentifier];
      v10 = [(SBSAElementIdentification *)v7 initWithClientIdentifier:clientIdentifier elementIdentifier:elementIdentifier];
      [_containerViewDescription _setAssociatedSystemApertureElementIdentity:v10];
    }

    else
    {
      [_containerViewDescription _setAssociatedSystemApertureElementIdentity:0];
    }
  }
}

- (void)setContentScale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setContentScale:{width, height}];
}

- (CGRect)contentBounds
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription contentBounds];
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

- (void)setContentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setContentBounds:{x, y, width, height}];
}

- (CGPoint)contentCenter
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription contentCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setContentCenter:{x, y}];
}

- (int64_t)keyLineMode
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  keyLineMode = [_containerViewDescription keyLineMode];

  return keyLineMode;
}

- (void)setKeyLineMode:(int64_t)mode
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setKeyLineMode:mode];
}

- (void)setKeyLineTintColor:(id)color
{
  colorCopy = color;
  keyLineTintColor = [(SBSAContainerViewDescriptionMutator *)self keyLineTintColor];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
    [_containerViewDescription _setKeyLineTintColor:colorCopy];
  }
}

- (int64_t)sampledBackgroundLuminanceLevel
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  sampledBackgroundLuminanceLevel = [_containerViewDescription sampledBackgroundLuminanceLevel];

  return sampledBackgroundLuminanceLevel;
}

- (void)setSampledBackgroundLuminanceLevel:(int64_t)level
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setSampledBackgroundLuminanceLevel:level];
}

- (int64_t)shadowStyle
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  shadowStyle = [_containerViewDescription shadowStyle];

  return shadowStyle;
}

- (void)setShadowStyle:(int64_t)style
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setShadowStyle:style];
}

- (SBSystemApertureContainerRenderingConfiguration)renderingConfiguration
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  if (_containerViewDescription)
  {
    v6 = _containerViewDescription;
    [_containerViewDescription renderingConfiguration];
    _containerViewDescription = v6;
  }

  else
  {
    retstr->renderingStyle = 0;
    retstr->cloningStyle = 0;
    *&retstr->alwaysRenderInSnapshots = 0;
  }

  return result;
}

- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  v5 = *configuration;
  [_containerViewDescription _setRenderingConfiguration:&v5];
}

- (BOOL)isContentClippingEnabled
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  isContentClippingEnabled = [_containerViewDescription isContentClippingEnabled];

  return isContentClippingEnabled;
}

- (void)setContentClippingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setContentClippingEnabled:enabledCopy];
}

- (BOOL)isUserInteractionEnabled
{
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  isUserInteractionEnabled = [_containerViewDescription isUserInteractionEnabled];

  return isUserInteractionEnabled;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _containerViewDescription = [(SBSAContainerViewDescriptionMutator *)self _containerViewDescription];
  [_containerViewDescription _setUserInteractionEnabled:enabledCopy];
}

@end