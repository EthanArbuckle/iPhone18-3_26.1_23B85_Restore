@interface PXMessagesStackPlaybackControlViewModel
- (void)setCurrentItem:(int64_t)item;
- (void)setSettled:(BOOL)settled;
- (void)setVideoController:(id)controller;
@end

@implementation PXMessagesStackPlaybackControlViewModel

- (void)setVideoController:(id)controller
{
  controllerCopy = controller;
  if (self->_videoController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_videoController, controller);
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:4];
    controllerCopy = v6;
  }
}

- (void)setCurrentItem:(int64_t)item
{
  if (self->_currentItem != item)
  {
    self->_currentItem = item;
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:2];
  }
}

- (void)setSettled:(BOOL)settled
{
  if (self->_settled != settled)
  {
    self->_settled = settled;
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:1];
  }
}

@end