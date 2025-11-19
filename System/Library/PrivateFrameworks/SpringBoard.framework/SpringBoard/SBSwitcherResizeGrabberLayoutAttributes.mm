@interface SBSwitcherResizeGrabberLayoutAttributes
+ (id)attributesWithLeafAppLayout:(id)a3 edge:(unint64_t)a4;
- (id)_copy;
@end

@implementation SBSwitcherResizeGrabberLayoutAttributes

+ (id)attributesWithLeafAppLayout:(id)a3 edge:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SBSwitcherResizeGrabberLayoutAttributes);
  [(SBSwitcherResizeGrabberLayoutAttributes *)v6 setLeafAppLayout:v5];

  [(SBSwitcherResizeGrabberLayoutAttributes *)v6 setEdge:a4];

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