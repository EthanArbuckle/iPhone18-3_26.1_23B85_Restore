@interface PXCuratedLibraryZoomLevelSegmentedControl
- (PXCuratedLibraryZoomLevelSegmentedControl)initWithFrame:(CGRect)a3;
- (void)_highlightSegment:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation PXCuratedLibraryZoomLevelSegmentedControl

- (void)_highlightSegment:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0 && [(PXCuratedLibraryZoomLevelSegmentedControl *)self selectedSegmentIndex]!= a3)
  {
    self->_lastTouchRemainedOnSelectedSegment = 0;
  }

  v5.receiver = self;
  v5.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v5 _highlightSegment:a3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  self->_lastTouchRemainedOnSelectedSegment = 0;
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v4 touchesCancelled:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 anyObject];
  [v16 locationInView:self];
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
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v20 touchesEnded:v7 withEvent:v6];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_lastTouchRemainedOnSelectedSegment = 1;
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  [(PXCuratedLibraryZoomLevelSegmentedControl *)&v4 touchesBegan:a3 withEvent:a4];
}

- (PXCuratedLibraryZoomLevelSegmentedControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXCuratedLibraryZoomLevelSegmentedControl;
  v3 = [(PXCuratedLibraryZoomLevelSegmentedControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXCuratedLibraryZoomLevelSegmentedControl *)v3 _setAlwaysEmitValueChanged:1];
  }

  return v4;
}

@end