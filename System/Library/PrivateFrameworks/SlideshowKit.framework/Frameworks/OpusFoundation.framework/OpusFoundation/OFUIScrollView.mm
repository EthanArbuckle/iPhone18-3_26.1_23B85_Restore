@interface OFUIScrollView
- (OFUIScrollView)initWithCoder:(id)coder;
- (OFUIScrollView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)registerDraggingPasteboardType:(id)type;
@end

@implementation OFUIScrollView

- (OFUIScrollView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUIScrollView;
  v3 = [(OFUIScrollView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUIScrollView *)v3 commonInit];
  }

  return v4;
}

- (OFUIScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OFUIScrollView;
  v3 = [(OFUIScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUIScrollView *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_viewControllerProxy, 0);
  draggingPasteboardTypes = self->_draggingPasteboardTypes;
  if (draggingPasteboardTypes)
  {

    self->_draggingPasteboardTypes = 0;
  }

  v4.receiver = self;
  v4.super_class = OFUIScrollView;
  [(OFUIScrollView *)&v4 dealloc];
}

- (void)registerDraggingPasteboardType:(id)type
{
  if (([(NSMutableArray *)self->_draggingPasteboardTypes containsObject:?]& 1) == 0)
  {
    draggingPasteboardTypes = self->_draggingPasteboardTypes;

    [(NSMutableArray *)draggingPasteboardTypes addObject:type];
  }
}

@end