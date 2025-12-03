@interface TSWPDragItem
- (CGRect)canvasRect;
- (TSWPDragItem)initWithDragPreview:(id)preview canvasRect:(CGRect)rect;
- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)preview icc:(id)icc canvasView:(id)view boundsRect:(CGRect)rect;
- (void)dealloc;
@end

@implementation TSWPDragItem

- (TSWPDragItem)initWithDragPreview:(id)preview canvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPDragItem;
  v9 = [(TSWPDragItem *)&v11 init];
  if (v9)
  {
    v9->_targetedDragPreview = preview;
    v9->_canvasRect.origin.x = x;
    v9->_canvasRect.origin.y = y;
    v9->_canvasRect.size.width = width;
    v9->_canvasRect.size.height = height;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPDragItem;
  [(TSWPDragItem *)&v3 dealloc];
}

- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)preview icc:(id)icc canvasView:(id)view boundsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memset(&v22, 0, sizeof(v22));
  [icc viewScale];
  v14 = v13;
  [icc viewScale];
  CGAffineTransformMakeScale(&v22, v14, v15);
  v16 = objc_alloc(MEMORY[0x277D75488]);
  v17 = TSDCenterOfRect(x, y, width, height);
  v21 = v22;
  v18 = [v16 initWithContainer:view center:&v21 transform:v17];
  v19 = [preview retargetedPreviewWithTarget:v18];

  return v19;
}

- (CGRect)canvasRect
{
  x = self->_canvasRect.origin.x;
  y = self->_canvasRect.origin.y;
  width = self->_canvasRect.size.width;
  height = self->_canvasRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end