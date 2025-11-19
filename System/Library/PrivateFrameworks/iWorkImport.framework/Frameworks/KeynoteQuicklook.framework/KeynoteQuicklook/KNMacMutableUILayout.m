@interface KNMacMutableUILayout
- (void)setInspectorPaneHiddenState:(int64_t)a3;
- (void)setShowingActivityStream:(BOOL)a3;
@end

@implementation KNMacMutableUILayout

- (void)setShowingActivityStream:(BOOL)a3
{
  self->super._showingActivityStream = a3;
  if (!self->super._showingLightTable)
  {
    if (objc_msgSend_sidebarViewMode(self, a2, a3) == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->super._showingTemplateSlides || !self->super._showingNavigatorViewInSidebar)
  {
LABEL_6:
    if (objc_msgSend_currentViewModeSupportsActivityStream(self, a2, a3))
    {
      self->super._activityStreamWasShown = a3;
    }
  }
}

- (void)setInspectorPaneHiddenState:(int64_t)a3
{
  if (a3 <= 2)
  {
    self->super._showingInspectorPane = 0x10001u >> (8 * a3);
    self->super._inspectorPaneAutoHidden = 0x10000u >> (8 * a3);
  }
}

@end