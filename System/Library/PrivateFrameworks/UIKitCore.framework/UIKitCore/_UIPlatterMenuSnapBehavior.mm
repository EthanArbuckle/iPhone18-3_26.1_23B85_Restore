@interface _UIPlatterMenuSnapBehavior
- (CGPoint)anchorPoint;
- (_UIPlatterMenuSnapBehavior)initWithItem:(id)item attachedToAnchor:(CGPoint)anchor;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setDamping:(double)damping;
- (void)setFrequency:(double)frequency;
@end

@implementation _UIPlatterMenuSnapBehavior

- (_UIPlatterMenuSnapBehavior)initWithItem:(id)item attachedToAnchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = _UIPlatterMenuSnapBehavior;
  v8 = [(UIDynamicBehavior *)&v14 init];
  if (v8)
  {
    v9 = [[UIAttachmentBehavior alloc] initWithItem:itemCopy attachedToAnchor:x, y];
    spring1 = v8->_spring1;
    v8->_spring1 = v9;

    v11 = [[UIAttachmentBehavior alloc] initWithItem:itemCopy attachedToAnchor:x, y];
    spring2 = v8->_spring2;
    v8->_spring2 = v11;

    [(UIAttachmentBehavior *)v8->_spring1 setLength:0.0];
    [(UIAttachmentBehavior *)v8->_spring2 setLength:0.0];
    [(UIDynamicBehavior *)v8 addChildBehavior:v8->_spring1];
    [(UIDynamicBehavior *)v8 addChildBehavior:v8->_spring2];
  }

  return v8;
}

- (void)setDamping:(double)damping
{
  [(UIAttachmentBehavior *)self->_spring1 setDamping:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setDamping:damping];
}

- (void)setFrequency:(double)frequency
{
  [(UIAttachmentBehavior *)self->_spring1 setFrequency:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setFrequency:frequency];
}

- (CGPoint)anchorPoint
{
  [(UIAttachmentBehavior *)self->_spring1 anchorPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIAttachmentBehavior *)self->_spring1 setAnchorPoint:?];
  spring2 = self->_spring2;

  [(UIAttachmentBehavior *)spring2 setAnchorPoint:x, y];
}

@end