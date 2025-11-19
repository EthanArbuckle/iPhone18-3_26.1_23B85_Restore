@interface SBFocusEnablementIndicatorSystemApertureActivityElement
- (SBFocusEnablementIndicatorSystemApertureActivityElement)initWithActivityDescription:(id)a3 enabled:(BOOL)a4;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (void)setExpanding:(BOOL)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setPreviewing:(BOOL)a3;
- (void)setProminent:(BOOL)a3;
- (void)setUrgent:(BOOL)a3;
@end

@implementation SBFocusEnablementIndicatorSystemApertureActivityElement

- (SBFocusEnablementIndicatorSystemApertureActivityElement)initWithActivityDescription:(id)a3 enabled:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
  v4 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)&v8 initWithActivityDescription:a3 enabled:a4];
  if (v4)
  {
    v5 = [[SBSystemActionElementPreviewingCoordinator alloc] initWithElement:v4];
    previewingCoordinator = v4->_previewingCoordinator;
    v4->_previewingCoordinator = v5;
  }

  return v4;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
  if ([(FCUIFocusEnablementIndicatorSystemApertureElement *)&v8 layoutMode]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SBFocusEnablementIndicatorSystemApertureActivityElement;
    [(FCUIFocusEnablementIndicatorSystemApertureElement *)&v7 setLayoutMode:a3 reason:a4];
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setPreviewing:(BOOL)a3
{
  if (self->_previewing != a3)
  {
    self->_previewing = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setUrgent:(BOOL)a3
{
  if (self->_urgent != a3)
  {
    self->_urgent = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)a3
{
  if (self->_expanding != a3)
  {
    self->_expanding = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)a3
{
  if (self->_prominent != a3)
  {
    self->_prominent = a3;
    v5 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)self layoutHost];
    [v5 preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

@end