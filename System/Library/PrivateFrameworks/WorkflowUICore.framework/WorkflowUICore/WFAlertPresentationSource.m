@interface WFAlertPresentationSource
+ (id)sourceWithBarButtonItem:(id)a3;
+ (id)sourceWithView:(id)a3;
+ (id)sourceWithView:(id)a3 rect:(CGRect)a4;
- (CGRect)sourceRect;
- (WFAlertPresentationSource)initWithSourceView:(id)a3 sourceRect:(CGRect)a4 barButtonItem:(id)a5;
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

- (WFAlertPresentationSource)initWithSourceView:(id)a3 sourceRect:(CGRect)a4 barButtonItem:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = WFAlertPresentationSource;
  v14 = [(WFAlertPresentationSource *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceView, a3);
    v15->_sourceRect.origin.x = x;
    v15->_sourceRect.origin.y = y;
    v15->_sourceRect.size.width = width;
    v15->_sourceRect.size.height = height;
    objc_storeStrong(&v15->_barButtonItem, a5);
    v15->_permittedArrowDirections = 15;
    v16 = v15;
  }

  return v15;
}

+ (id)sourceWithBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithSourceView:0 sourceRect:v4 barButtonItem:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];

  return v6;
}

+ (id)sourceWithView:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [[a1 alloc] initWithSourceView:v9 sourceRect:0 barButtonItem:{x, y, width, height}];

  return v10;
}

+ (id)sourceWithView:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  if (v4)
  {
    [v4 bounds];
  }

  else
  {
    v6 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v9 = *(MEMORY[0x277CBF398] + 24);
  }

  v10 = [v5 initWithSourceView:v4 sourceRect:0 barButtonItem:{v6, v7, v8, v9}];

  return v10;
}

@end