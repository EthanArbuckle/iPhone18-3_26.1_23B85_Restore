@interface OFUIView
- (void)commonInit;
- (void)dealloc;
- (void)registerDraggingPasteboardType:(id)a3;
@end

@implementation OFUIView

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OFUIView;
  [(OFViewProxy *)&v3 commonInit];
  self->_draggingPasteboardTypes = objc_alloc_init(MEMORY[0x277CBEB18]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OFUIView;
  [(OFViewProxy *)&v3 dealloc];
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