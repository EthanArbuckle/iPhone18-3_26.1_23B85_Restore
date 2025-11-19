@interface _UISpringBehavior
- (CGPoint)anchorPoint;
- (_UISpringBehavior)init;
- (_UISpringBehavior)initWithItem:(id)a3 anchorPoint:(CGPoint)a4;
- (void)setAnchorPoint:(CGPoint)a3;
- (void)setDamping:(double)a3;
- (void)setFrequency:(double)a3;
@end

@implementation _UISpringBehavior

- (_UISpringBehavior)initWithItem:(id)a3 anchorPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  if (!v8)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UISpringBehavior.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v27.receiver = self;
  v27.super_class = _UISpringBehavior;
  v9 = [(UIDynamicBehavior *)&v27 init];
  if (v9)
  {
    v10 = [[UIAttachmentBehavior alloc] initWithItem:v8 attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v10 setDamping:0.75];
    [(UIAttachmentBehavior *)v10 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v10];
    topLeft = v9->_topLeft;
    v9->_topLeft = v10;
    v12 = v10;

    v13 = [UIAttachmentBehavior alloc];
    v14 = [(UIAttachmentBehavior *)v13 initWithItem:v8 attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v14 setDamping:0.75];
    [(UIAttachmentBehavior *)v14 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v14];
    topRight = v9->_topRight;
    v9->_topRight = v14;
    v16 = v14;

    v17 = [UIAttachmentBehavior alloc];
    v18 = [(UIAttachmentBehavior *)v17 initWithItem:v8 attachedToAnchor:x, y];
    [(UIAttachmentBehavior *)v18 setDamping:0.75];
    [(UIAttachmentBehavior *)v18 setFrequency:4.5];
    [(UIDynamicBehavior *)v9 addChildBehavior:v18];
    bottomRight = v9->_bottomRight;
    v9->_bottomRight = v18;
    v20 = v18;

    v21 = [UIAttachmentBehavior alloc];
    v22 = [(UIAttachmentBehavior *)v21 initWithItem:v8 attachedToAnchor:x, y];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItem_anchorPoint_);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 handleFailureInMethod:a2 object:self file:@"_UISpringBehavior.m" lineNumber:66 description:{@"Use %@ to instantiate an instance of %@.", v5, v7}];

  return 0;
}

- (void)setAnchorPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = a3.x + -100.0;
  v7 = a3.y + -100.0;
  [(UIAttachmentBehavior *)self->_topLeft setAnchorPoint:a3.x + -100.0, a3.y + -100.0];
  [(UIAttachmentBehavior *)self->_topRight setAnchorPoint:x + 100.0, v7];
  [(UIAttachmentBehavior *)self->_bottomRight setAnchorPoint:x + 100.0, y + 100.0];
  [(UIAttachmentBehavior *)self->_bottomLeft setAnchorPoint:v6, y + 100.0];
  self->_anchorPoint.x = x;
  self->_anchorPoint.y = y;
}

- (void)setDamping:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_damping = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIDynamicBehavior *)self childBehaviors];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setDamping:self->_damping];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setFrequency:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_frequency = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIDynamicBehavior *)self childBehaviors];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setFrequency:self->_frequency];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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