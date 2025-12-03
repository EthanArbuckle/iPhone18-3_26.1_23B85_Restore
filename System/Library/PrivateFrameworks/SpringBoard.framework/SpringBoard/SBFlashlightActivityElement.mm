@interface SBFlashlightActivityElement
- (SAActivityHosting)activityHost;
- (SBFlashlightActivityElement)initWithFlashlightOn:(BOOL)on;
- (SBFlashlightActivityElementDelegate)delegate;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (void)_handleExpandedLeadingButtonAction;
- (void)setFlashlightOn:(BOOL)on;
- (void)setPreviewing:(BOOL)previewing;
@end

@implementation SBFlashlightActivityElement

- (SBFlashlightActivityElement)initWithFlashlightOn:(BOOL)on
{
  v4.receiver = self;
  v4.super_class = SBFlashlightActivityElement;
  return [(SBFlashlightElement *)&v4 initWithStyle:0 state:on];
}

- (void)setFlashlightOn:(BOOL)on
{
  if (self->_flashlightOn != on)
  {
    self->_flashlightOn = on;
    [(SBFlashlightElement *)self setState:on];
  }
}

- (void)_handleExpandedLeadingButtonAction
{
  delegate = [(SBFlashlightActivityElement *)self delegate];
  [delegate flashlightActivityElementRequestsTogglingFlashlight:self];

  layoutHost = [(SBSystemApertureProvidedContentElement *)self layoutHost];
  [layoutHost preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (void)setPreviewing:(BOOL)previewing
{
  previewingCopy = previewing;
  v7.receiver = self;
  v7.super_class = SBFlashlightActivityElement;
  if ([(SBSystemApertureProvidedContentElement *)&v7 isPreviewing]!= previewing)
  {
    v6.receiver = self;
    v6.super_class = SBFlashlightActivityElement;
    [(SBSystemApertureProvidedContentElement *)&v6 setPreviewing:previewingCopy];
    layoutHost = [(SBSystemApertureProvidedContentElement *)self layoutHost];
    [layoutHost preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  v5.receiver = self;
  v5.super_class = SBFlashlightActivityElement;
  systemApertureLayoutCustomizingOptions = [(SBSystemApertureProvidedContentElement *)&v5 systemApertureLayoutCustomizingOptions];
  if ([(SBSystemApertureProvidedContentElement *)self isPreviewing])
  {
    return systemApertureLayoutCustomizingOptions;
  }

  else
  {
    return systemApertureLayoutCustomizingOptions | 2;
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