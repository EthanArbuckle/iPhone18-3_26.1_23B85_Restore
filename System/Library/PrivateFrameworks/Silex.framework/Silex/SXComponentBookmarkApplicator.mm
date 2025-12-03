@interface SXComponentBookmarkApplicator
- (SXComponentBookmarkApplicator)initWithScrollPositionRestoring:(id)restoring;
- (void)applyBookmark:(id)bookmark;
@end

@implementation SXComponentBookmarkApplicator

- (SXComponentBookmarkApplicator)initWithScrollPositionRestoring:(id)restoring
{
  restoringCopy = restoring;
  v9.receiver = self;
  v9.super_class = SXComponentBookmarkApplicator;
  v6 = [(SXComponentBookmarkApplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollPositionRestoring, restoring);
  }

  return v7;
}

- (void)applyBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if (bookmarkCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      componentIdentifier = [bookmarkCopy componentIdentifier];

      if (componentIdentifier)
      {
        v5 = [SXComponentScrollPosition alloc];
        componentIdentifier2 = [bookmarkCopy componentIdentifier];
        v7 = [(SXComponentScrollPosition *)v5 initWithComponentIdentifier:componentIdentifier2 canvasWidth:0.0 relativePageOffset:0.0];

        scrollPositionRestoring = [(SXComponentBookmarkApplicator *)self scrollPositionRestoring];
        [scrollPositionRestoring updateScrollPosition:v7 animated:0];
      }
    }
  }
}

@end