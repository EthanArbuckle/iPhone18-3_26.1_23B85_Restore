@interface TSWPURLDragItem
- (CGPoint)canvasDragPoint;
- (TSWPURLDragItem)initWithDragPreview:(id)a3 canvasRect:(CGRect)a4 canvasDragPoint:(CGPoint)a5 range:(_NSRange)a6;
- (_NSRange)range;
- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)a3 icc:(id)a4 canvasView:(id)a5 boundsRect:(CGRect)a6;
@end

@implementation TSWPURLDragItem

- (TSWPURLDragItem)initWithDragPreview:(id)a3 canvasRect:(CGRect)a4 canvasDragPoint:(CGPoint)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  y = a5.y;
  x = a5.x;
  v11.receiver = self;
  v11.super_class = TSWPURLDragItem;
  result = [(TSWPDragItem *)&v11 initWithDragPreview:a3 canvasRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (result)
  {
    result->_canvasDragPoint.x = x;
    result->_canvasDragPoint.y = y;
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)a3 icc:(id)a4 canvasView:(id)a5 boundsRect:(CGRect)a6
{
  objc_opt_class();
  [(TSWPURLDragItem *)self canvasDragPoint];
  [a4 hitRep:?];
  result = TSUDynamicCast();
  if (result)
  {
    v9 = result;
    v10 = [(TSWPURLDragItem *)self range];
    v12 = [TSWPSelection selectionWithRange:v10, v11];
    v13 = [MEMORY[0x277CBEB98] setWithObject:v9];

    return [TSWPEditingController _targetedDragPreviewForSelection:v12 interactiveCanvasController:a4 reps:v13 applyScale:1 imageFrameUnion:0];
  }

  return result;
}

- (CGPoint)canvasDragPoint
{
  x = self->_canvasDragPoint.x;
  y = self->_canvasDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end