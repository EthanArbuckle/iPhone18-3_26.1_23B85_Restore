@interface OFUIScrollView
- (OFUIScrollView)initWithCoder:(id)a3;
- (OFUIScrollView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)registerDraggingPasteboardType:(id)a3;
@end

@implementation OFUIScrollView

- (OFUIScrollView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OFUIScrollView;
  v3 = [(OFUIScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(OFUIScrollView *)v3 commonInit];
  }

  return v4;
}

- (OFUIScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OFUIScrollView;
  v3 = [(OFUIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)registerDraggingPasteboardType:(id)a3
{
  if (([(NSMutableArray *)self->_draggingPasteboardTypes containsObject:?]& 1) == 0)
  {
    draggingPasteboardTypes = self->_draggingPasteboardTypes;

    [(NSMutableArray *)draggingPasteboardTypes addObject:a3];
  }
}

@end