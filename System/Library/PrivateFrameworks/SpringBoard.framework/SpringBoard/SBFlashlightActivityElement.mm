@interface SBFlashlightActivityElement
- (SAActivityHosting)activityHost;
- (SBFlashlightActivityElement)initWithFlashlightOn:(BOOL)a3;
- (SBFlashlightActivityElementDelegate)delegate;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (void)_handleExpandedLeadingButtonAction;
- (void)setFlashlightOn:(BOOL)a3;
- (void)setPreviewing:(BOOL)a3;
@end

@implementation SBFlashlightActivityElement

- (SBFlashlightActivityElement)initWithFlashlightOn:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBFlashlightActivityElement;
  return [(SBFlashlightElement *)&v4 initWithStyle:0 state:a3];
}

- (void)setFlashlightOn:(BOOL)a3
{
  if (self->_flashlightOn != a3)
  {
    self->_flashlightOn = a3;
    [(SBFlashlightElement *)self setState:a3];
  }
}

- (void)_handleExpandedLeadingButtonAction
{
  v3 = [(SBFlashlightActivityElement *)self delegate];
  [v3 flashlightActivityElementRequestsTogglingFlashlight:self];

  v4 = [(SBSystemApertureProvidedContentElement *)self layoutHost];
  [v4 preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (void)setPreviewing:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SBFlashlightActivityElement;
  if ([(SBSystemApertureProvidedContentElement *)&v7 isPreviewing]!= a3)
  {
    v6.receiver = self;
    v6.super_class = SBFlashlightActivityElement;
    [(SBSystemApertureProvidedContentElement *)&v6 setPreviewing:v3];
    v5 = [(SBSystemApertureProvidedContentElement *)self layoutHost];
    [v5 preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  v5.receiver = self;
  v5.super_class = SBFlashlightActivityElement;
  v3 = [(SBSystemApertureProvidedContentElement *)&v5 systemApertureLayoutCustomizingOptions];
  if ([(SBSystemApertureProvidedContentElement *)self isPreviewing])
  {
    return v3;
  }

  else
  {
    return v3 | 2;
  }
}

- (SAActivityHosting)activityHost
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);

  return WeakRetained;
}

- (SBFlashlightActivityElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end