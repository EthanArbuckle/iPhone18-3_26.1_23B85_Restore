@interface OKPageViewZone
- (CGRect)frame;
- (OKPageViewZone)initWithFrame:(CGRect)a3;
- (void)dealloc;
@end

@implementation OKPageViewZone

- (OKPageViewZone)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = OKPageViewZone;
  v7 = [(OKPageViewZone *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_frame.origin.x = x;
    v7->_frame.origin.y = y;
    v7->_frame.size.width = width;
    v7->_frame.size.height = height;
    v7->_widgetViews = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v8;
}

- (void)dealloc
{
  widgetViews = self->_widgetViews;
  if (widgetViews)
  {

    self->_widgetViews = 0;
  }

  v4.receiver = self;
  v4.super_class = OKPageViewZone;
  [(OKPageViewZone *)&v4 dealloc];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end