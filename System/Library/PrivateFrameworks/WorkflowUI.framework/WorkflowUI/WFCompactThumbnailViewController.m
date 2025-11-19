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
  v3 = [(WFCompactThumbnailViewController *)self delegate];
  [v3 thumbnailViewControllerDidInvalidateSize:self];
}

@end