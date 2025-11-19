@interface _UIPlatterMenuSnapBehavior
- (CGPoint)anchorPoint;
- (_UIPlatterMenuSnapBehavior)initWithItem:(id)a3 attachedToAnchor:(CGPoint)a4;
- (void)setAnchorPoint:(CGPoint)a3;
- (void)setDamping:(double)a3;
- (void)setFrequency:(double)a3;
@end

@implementation _UIPlatterMenuSnapBehavior

- (_UIPlatterMenuSnapBehavior)initWithItem:(id)a3 attachedToAnchor:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = _UIPlatterMenuSnapBehavior;
  v8 = [(UIDynamicBehavior *)&v14 init];
  if (v8)
  {
    v9 = [[UIAttachmentBehavior alloc] initWithItem:v7 attachedToAnchor:x, y];
    spring1 = v8->_spring1;
    v8->_spring1 = v9;

    v11 = [[UIAttachmentBehavior alloc] initWithItem:v7 attachedToAnchor:x, y];
    spring2 = v8->_spring2;
    v8->_spring2 = v11;

    [(UIAttachmentBehavior *)v8->_spring1 setLength:0.0];
    [(UIAttachmentBehavior *)v8->_spring2 setLength:0.0];
    [(UIDynamicBehavior *)v8 addChildBehavior:v8->_spring1];
    [(UIDynamicBehavior *)v8 addChildBehavior:v8->_spring2];
  }

  return v8;
}

- (void)setDamping:(double)a3
{
  [(UIAttachmentBehavior *)self->_spring1 setDamping:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setDamping:a3];
}

- (void)setFrequency:(double)a3
{
  [(UIAttachmentBehavior *)self->_spring1 setFrequency:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setFrequency:a3];
}

- (CGPoint)anchorPoint
{
  [(UIAttachmentBehavior *)self->_spring1 anchorPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setAnchorPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIAttachmentBehavior *)self->_spring1 setAnchorPoint:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setAnchorPoint:x, y];
}

@end