@interface _UISheetPresentationController
- (void)_invalidateDetents;
- (void)_sendDidChangeSelectedDetentIdentifier;
@end

@implementation _UISheetPresentationController

- (void)_invalidateDetents
{
  v2.receiver = self;
  v2.super_class = _UISheetPresentationController;
  [(UISheetPresentationController *)&v2 _invalidateDetents];
}

- (void)_sendDidChangeSelectedDetentIdentifier
{
  v4.receiver = self;
  v4.super_class = _UISheetPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidChangeSelectedDetentIdentifier];
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _sheetPresentationController:self didChangeIndexOfCurrentDetent:{-[UISheetPresentationController _indexOfCurrentDetent](self, "_indexOfCurrentDetent")}];
  }
}

@end