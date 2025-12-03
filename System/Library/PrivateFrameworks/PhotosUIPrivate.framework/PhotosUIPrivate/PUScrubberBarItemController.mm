@interface PUScrubberBarItemController
- (UIBarButtonItem)scrubberBarButtonItem;
- (void)_invalidateScrubberBarButtonItem;
- (void)_updateScrubberBarButtonItemIfNeeded;
- (void)setBrowsingSession:(id)session;
@end

@implementation PUScrubberBarItemController

- (void)_updateScrubberBarButtonItemIfNeeded
{
  if (!self->_scrubberBarButtonItem)
  {
    if (self->_scrubberView || ([(PUScrubberBarItemController *)self browsingSession], v6 = objc_claimAutoreleasedReturnValue(), v7 = [[PUScrubberView alloc] initWithFrame:0.0, 0.0, 10.0, 40.0], scrubberView = self->_scrubberView, self->_scrubberView = v7, scrubberView, [(PUScrubberView *)self->_scrubberView setBrowsingSession:v6], [(PUScrubberView *)self->_scrubberView updateIfNeeded], v6, !self->_scrubberBarButtonItem))
    {
      v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_scrubberView];
      scrubberBarButtonItem = self->_scrubberBarButtonItem;
      self->_scrubberBarButtonItem = v3;

      v5 = self->_scrubberBarButtonItem;

      [(UIBarButtonItem *)v5 _setFlexible:1];
    }
  }
}

- (void)_invalidateScrubberBarButtonItem
{
  scrubberBarButtonItem = self->_scrubberBarButtonItem;
  self->_scrubberBarButtonItem = 0;

  scrubberView = self->_scrubberView;
  self->_scrubberView = 0;
}

- (UIBarButtonItem)scrubberBarButtonItem
{
  [(PUScrubberBarItemController *)self _updateScrubberBarButtonItemIfNeeded];
  scrubberBarButtonItem = self->_scrubberBarButtonItem;

  return scrubberBarButtonItem;
}

- (void)setBrowsingSession:(id)session
{
  sessionCopy = session;
  p_browsingSession = &self->_browsingSession;
  if (self->_browsingSession != sessionCopy)
  {
    v7 = sessionCopy;
    objc_storeStrong(p_browsingSession, session);
    p_browsingSession = [(PUScrubberBarItemController *)self _invalidateScrubberBarButtonItem];
    sessionCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_browsingSession, sessionCopy);
}

@end