@interface TSWPURLDragItem
- (CGPoint)canvasDragPoint;
- (TSWPURLDragItem)initWithDragPreview:(id)preview canvasRect:(CGRect)rect canvasDragPoint:(CGPoint)point range:(_NSRange)range;
- (_NSRange)range;
- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)preview icc:(id)icc canvasView:(id)view boundsRect:(CGRect)rect;
@end

@implementation TSWPURLDragItem

- (TSWPURLDragItem)initWithDragPreview:(id)preview canvasRect:(CGRect)rect canvasDragPoint:(CGPoint)point range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  y = point.y;
  x = point.x;
  v11.receiver = self;
  v11.super_class = TSWPURLDragItem;
  result = [(TSWPDragItem *)&v11 initWithDragPreview:preview canvasRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (result)
  {
    result->_canvasDragPoint.x = x;
    result->_canvasDragPoint.y = y;
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

- (id)retargetedDragPreviewForDefaultTargetedDragPreview:(id)preview icc:(id)icc canvasView:(id)view boundsRect:(CGRect)rect
{
  objc_opt_class();
  [(TSWPURLDragItem *)self canvasDragPoint];
  [icc hitRep:?];
  result = TSUDynamicCast();
  if (result)
  {
    v9 = result;
    range = [(TSWPURLDragItem *)self range];
    v12 = [TSWPSelection selectionWithRange:range, v11];
    v13 = [MEMORY[0x277CBEB98] setWithObject:v9];

    return [TSWPEditingController _targetedDragPreviewForSelection:v12 interactiveCanvasController:icc reps:v13 applyScale:1 imageFrameUnion:0];
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