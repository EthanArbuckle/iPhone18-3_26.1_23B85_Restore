@interface _UIViewBlockVisitor
- (BOOL)_visitView:(id)view;
- (_UIViewBlockVisitor)initWithTraversalDirection:(unint64_t)direction visitorBlock:(id)block;
- (void)dealloc;
@end

@implementation _UIViewBlockVisitor

- (void)dealloc
{
  visitorBlock = self->_visitorBlock;
  if (visitorBlock)
  {
  }

  v4.receiver = self;
  v4.super_class = _UIViewBlockVisitor;
  [(_UIViewBlockVisitor *)&v4 dealloc];
}

- (_UIViewBlockVisitor)initWithTraversalDirection:(unint64_t)direction visitorBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = _UIViewBlockVisitor;
  v5 = [(_UIViewVisitor *)&v8 initWithTraversalDirection:direction];
  v6 = v5;
  if (v5)
  {
    [(_UIViewBlockVisitor *)v5 setVisitorBlock:block];
  }

  return v6;
}

- (BOOL)_visitView:(id)view
{
  if (![(_UIViewBlockVisitor *)self visitorBlock])
  {
    return 1;
  }

  v4 = *([(_UIViewBlockVisitor *)self visitorBlock]+ 16);

  return v4();
}

@end