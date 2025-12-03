@interface WFSlotTemplateExclusionRect
- (CGRect)rect;
- (CGRect)resolvedRectWithViewBounds:(CGRect)bounds inRTL:(BOOL)l;
- (WFSlotTemplateExclusionRect)initWithRect:(CGRect)rect fromEdge:(unint64_t)edge;
@end

@implementation WFSlotTemplateExclusionRect

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)resolvedRectWithViewBounds:(CGRect)bounds inRTL:(BOOL)l
{
  lCopy = l;
  width = bounds.size.width;
  y = self->_rect.origin.y;
  v7 = self->_rect.size.width;
  height = self->_rect.size.height;
  v9 = [(WFSlotTemplateExclusionRect *)self edge:bounds.origin.x]== 0;
  v10 = width - v7;
  if (v9 != lCopy)
  {
    v10 = 0.0;
  }

  v11 = y;
  v12 = v7;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (WFSlotTemplateExclusionRect)initWithRect:(CGRect)rect fromEdge:(unint64_t)edge
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13.receiver = self;
  v13.super_class = WFSlotTemplateExclusionRect;
  v9 = [(WFSlotTemplateExclusionRect *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_rect.origin.x = x;
    v9->_rect.origin.y = y;
    v9->_rect.size.width = width;
    v9->_rect.size.height = height;
    v9->_edge = edge;
    v11 = v9;
  }

  return v10;
}

@end