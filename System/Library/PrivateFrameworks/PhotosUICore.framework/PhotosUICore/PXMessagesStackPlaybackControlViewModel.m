@interface PXMessagesStackPlaybackControlViewModel
- (void)setCurrentItem:(int64_t)a3;
- (void)setSettled:(BOOL)a3;
- (void)setVideoController:(id)a3;
@end

@implementation PXMessagesStackPlaybackControlViewModel

- (void)setVideoController:(id)a3
{
  v5 = a3;
  if (self->_videoController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_videoController, a3);
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setCurrentItem:(int64_t)a3
{
  if (self->_currentItem != a3)
  {
    self->_currentItem = a3;
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:2];
  }
}

- (void)setSettled:(BOOL)a3
{
  if (self->_settled != a3)
  {
    self->_settled = a3;
    [(PXMessagesStackPlaybackControlViewModel *)self signalChange:1];
  }
}

@end