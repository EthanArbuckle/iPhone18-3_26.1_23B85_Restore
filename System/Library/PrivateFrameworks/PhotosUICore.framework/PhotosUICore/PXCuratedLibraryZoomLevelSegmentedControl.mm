@interface PXCuratedLibraryZoomLevelSegmentedControl
- (PXCuratedLibraryZoomLevelSegmentedControl)initWithFrame:(CGRect)frame;
- (void)_highlightSegment:(int64_t)segment;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation PXCuratedLibraryZoomLevelSegmentedControl

- (void)_highlightSegment:(int64_t)segment
{
  if ((segment & 0x8000000000000000) == 0 && [(PXCuratedLibraryZoomLevelSegmentedControl *)self selectedSegmentIndex]!= segment)
  {
    self->_lastTouchRemainedOnSelectedSegment = 0;
  }

  v5.receiver = self;
  v5.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v5 _highlightSegment:segment];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  self->_lastTouchRemainedOnSelectedSegment = 0;
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v4 touchesCancelled:cancelled withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  anyObject = [endedCopy anyObject];
  [anyObject locationInView:self];
  v21.x = v17;
  v21.y = v18;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v19 = CGRectContainsPoint(v22, v21);

  if (!v19)
  {
    self->_lastTouchRemainedOnSelectedSegment = 0;
  }

  v20.receiver = self;
  v20.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v20 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_lastTouchRemainedOnSelectedSegment = 1;
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v4 touchesBegan:began withEvent:event];
}

- (PXCuratedLibraryZoomLevelSegmentedControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  v3 = [(PXCuratedLibraryZoomLevelSegmentedControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXCuratedLibraryZoomLevelSegmentedControl *)v3 _setAlwaysEmitValueChanged:1];
  }

  return v4;
}

@end