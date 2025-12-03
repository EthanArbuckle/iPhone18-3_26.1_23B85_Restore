@interface WFCompactThumbnailViewController
- (WFCompactThumbnailViewControllerDelegate)delegate;
- (void)invalidateContentSize;
@end

@implementation WFCompactThumbnailViewController

- (WFCompactThumbnailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)invalidateContentSize
{
  delegate = [(WFCompactThumbnailViewController *)self delegate];
  [delegate thumbnailViewControllerDidInvalidateSize:self];
}

@end