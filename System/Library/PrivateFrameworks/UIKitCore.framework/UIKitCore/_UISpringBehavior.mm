@interface _UISpringBehavior
- (CGPoint)anchorPoint;
- (_UISpringBehavior)init;
- (_UISpringBehavior)initWithItem:(id)item anchorPoint:(CGPoint)point;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setDamping:(double)damping;
- (void)setFrequency:(double)frequency;
@end

@implementation _UISpringBehavior

- (_UISpringBehavior)initWithItem:(id)item anchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISpringBehavior.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v27.receiver = self;
  v27.super_class = _UISpringBehavior;
  v9 = [(UIDynamicBehavior *)&v27 init];
  if (v9)
  {
    v10 = [[UIAttachmentBehavior alloc] initWithItem:itemCopy attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v10 setDamping:0.75];
    [(UIAttachmentBehavior *)v10 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v10];
    topLeft = v9->_topLeft;
    v9->_topLeft = v10;
    v12 = v10;

    v13 = [UIAttachmentBehavior alloc];
    v14 = [(UIAttachmentBehavior *)v13 initWithItem:itemCopy attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v14 setDamping:0.75];
    [(UIAttachmentBehavior *)v14 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v14];
    topRight = v9->_topRight;
    v9->_topRight = v14;
    v16 = v14;

    v17 = [UIAttachmentBehavior alloc];
    v18 = [(UIAttachmentBehavior *)v17 initWithItem:itemCopy attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v18 setDamping:0.75];
    [(UIAttachmentBehavior *)v18 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v18];
    bottomRight = v9->_bottomRight;
    v9->_bottomRight = v18;
    v20 = v18;

    v21 = [UIAttachmentBehavior alloc];
    v22 = [(UIAttachmentBehavior *)v21 initWithItem:itemCopy attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v22 setDamping:0.75];
    [(UIAttachmentBehavior *)v22 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v22];
    bottomLeft = v9->_bottomLeft;
    v9->_bottomLeft = v22;

    [(_UISpringBehavior *)v9 setAnchorPoint:x, y];
    v24 = v9;
  }

  return v9;
}

- (_UISpringBehavior)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItem_anchorPoint_);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISpringBehavior.m" lineNumber:66 description:{@"Use %@ to instantiate an instance of %@.", v5, v7}];

  return 0;
}

- (void)setAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = point.x + -100.0;
  v7 = point.y + -100.0;
  [(UIAttachmentBehavior *)self->_topLeft setAnchorPoint:point.x + -100.0, point.y + -100.0];
  [(UIAttachmentBehavior *)self->_topRight setAnchorPoint:x + 100.0, v7];
  [(UIAttachmentBehavior *)self->_bottomRight setAnchorPoint:x + 100.0, y + 100.0];
  [(UIAttachmentBehavior *)self->_bottomLeft setAnchorPoint:v6, y + 100.0];
  self->_anchorPoint.x = x;
  self->_anchorPoint.y = y;
}

- (void)setDamping:(double)damping
{
  v14 = *MEMORY[0x1E69E9840];
  self->_damping = damping;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  childBehaviors = [(UIDynamicBehavior *)self childBehaviors];
  v5 = [childBehaviors countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(childBehaviors);
        }

        [*(*(&v9 + 1) + 8 * v8++) setDamping:self->_damping];
      }

      while (v6 != v8);
      v6 = [childBehaviors countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setFrequency:(double)frequency
{
  v14 = *MEMORY[0x1E69E9840];
  self->_frequency = frequency;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  childBehaviors = [(UIDynamicBehavior *)self childBehaviors];
  v5 = [childBehaviors countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(childBehaviors);
        }

        [*(*(&v9 + 1) + 8 * v8++) setFrequency:self->_frequency];
      }

      while (v6 != v8);
      v6 = [childBehaviors countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end