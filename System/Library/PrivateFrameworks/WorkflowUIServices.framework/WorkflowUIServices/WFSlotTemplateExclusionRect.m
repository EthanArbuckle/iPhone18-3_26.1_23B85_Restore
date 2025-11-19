@interface WFSlotTemplateExclusionRect
- (CGRect)rect;
- (CGRect)resolvedRectWithViewBounds:(CGRect)a3 inRTL:(BOOL)a4;
- (WFSlotTemplateExclusionRect)initWithRect:(CGRect)a3 fromEdge:(unint64_t)a4;
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

- (CGRect)resolvedRectWithViewBounds:(CGRect)a3 inRTL:(BOOL)a4
{
  v4 = a4;
  width = a3.size.width;
  y = self->_rect.origin.y;
  v7 = self->_rect.size.width;
  height = self->_rect.size.height;
  v9 = [(WFSlotTemplateExclusionRect *)self edge:a3.origin.x]== 0;
  v10 = width - v7;
  if (v9 != v4)
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

- (WFSlotTemplateExclusionRect)initWithRect:(CGRect)a3 fromEdge:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v9->_edge = a4;
    v11 = v9;
  }

  return v10;
}

@end