@interface SBSwitcherResizeGrabberLayoutAttributes
+ (id)attributesWithLeafAppLayout:(id)layout edge:(unint64_t)edge;
- (id)_copy;
@end

@implementation SBSwitcherResizeGrabberLayoutAttributes

+ (id)attributesWithLeafAppLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  v6 = objc_alloc_init(SBSwitcherResizeGrabberLayoutAttributes);
  [(SBSwitcherResizeGrabberLayoutAttributes *)v6 setLeafAppLayout:layoutCopy];

  [(SBSwitcherResizeGrabberLayoutAttributes *)v6 setEdge:edge];

  return v6;
}

- (id)_copy
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [(SBAppLayout *)self->_leafAppLayout copy];
  [v3 setLeafAppLayout:v4];

  [v3 setEdge:self->_edge];
  return v3;
}

@end