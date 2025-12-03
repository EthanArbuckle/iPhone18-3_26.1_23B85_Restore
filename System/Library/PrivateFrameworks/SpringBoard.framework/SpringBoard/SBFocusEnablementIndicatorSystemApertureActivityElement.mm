@interface SBFocusEnablementIndicatorSystemApertureActivityElement
- (SBFocusEnablementIndicatorSystemApertureActivityElement)initWithActivityDescription:(id)description enabled:(BOOL)enabled;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (void)setExpanding:(BOOL)expanding;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setPreviewing:(BOOL)previewing;
- (void)setProminent:(BOOL)prominent;
- (void)setUrgent:(BOOL)urgent;
@end

@implementation SBFocusEnablementIndicatorSystemApertureActivityElement

- (SBFocusEnablementIndicatorSystemApertureActivityElement)initWithActivityDescription:(id)description enabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
  v4 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)&v8 initWithActivityDescription:description enabled:enabled];
  if (v4)
  {
    v5 = [[SBSystemActionElementPreviewingCoordinator alloc] initWithElement:v4];
    previewingCoordinator = v4->_previewingCoordinator;
    v4->_previewingCoordinator = v5;
  }

  return v4;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
  if ([(FCUIFocusEnablementIndicatorSystemApertureElement *)&v8 layoutMode]!= mode)
  {
    v7.receiver = self;
    v7.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)&v7 setLayoutMode:mode reason:reason];
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setPreviewing:(BOOL)previewing
{
  if (self->_previewing != previewing)
  {
    self->_previewing = previewing;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setUrgent:(BOOL)urgent
{
  if (self->_urgent != urgent)
  {
    self->_urgent = urgent;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)expanding
{
  if (self->_expanding != expanding)
  {
    self->_expanding = expanding;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)prominent
{
  if (self->_prominent != prominent)
  {
    self->_prominent = prominent;
    layoutHost = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self layoutHost];
    [layoutHost preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

@end