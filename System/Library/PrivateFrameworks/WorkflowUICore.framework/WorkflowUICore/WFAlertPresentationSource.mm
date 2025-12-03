@interface WFAlertPresentationSource
+ (id)sourceWithBarButtonItem:(id)item;
+ (id)sourceWithView:(id)view;
+ (id)sourceWithView:(id)view rect:(CGRect)rect;
- (CGRect)sourceRect;
- (WFAlertPresentationSource)initWithSourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item;
@end

@implementation WFAlertPresentationSource

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (WFAlertPresentationSource)initWithSourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = WFAlertPresentationSource;
  v14 = [(WFAlertPresentationSource *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceView, view);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    objc_storeStrong(&v15->_barButtonItem, item);
    v15->_permittedArrowDirections = 15;
    v16 = v15;
  }

  return v15;
}

+ (id)sourceWithBarButtonItem:(id)item
{
  itemCopy = item;
  v5 = [self alloc];
  v6 = [v5 initWithSourceView:0 sourceRect:itemCopy barButtonItem:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];

  return v6;
}

+ (id)sourceWithView:(id)view rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v10 = [[self alloc] initWithSourceView:viewCopy sourceRect:0 barButtonItem:{x, y, width, height}];

  return v10;
}

+ (id)sourceWithView:(id)view
{
  viewCopy = view;
  v5 = [self alloc];
  if (viewCopy)
  {
    [viewCopy bounds];
  }

  else
  {
    v6 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v9 = *(MEMORY[0x277CBF398] + 24);
  }

  v10 = [v5 initWithSourceView:viewCopy sourceRect:0 barButtonItem:{v6, v7, v8, v9}];

  return v10;
}

@end