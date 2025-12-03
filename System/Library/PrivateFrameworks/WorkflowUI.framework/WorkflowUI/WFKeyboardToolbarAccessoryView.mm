@interface WFKeyboardToolbarAccessoryView
- (BOOL)isPhoneUI;
- (NSArray)barItems;
- (WFKeyboardToolbarAccessoryView)init;
- (double)borderedButtonWidthForButtonTitle:(id)title font:(id)font;
- (double)inverseToolbarPadding;
- (double)keyboardButtonHeight;
- (id)borderedButtonItemWithTitle:(id)title target:(id)target action:(SEL)action;
- (id)buttonImageWithSize:(CGSize)size;
- (id)fixedSpaceItemOfWidth:(double)width;
- (id)flexibleSpaceItem;
- (id)plainButtonItemWithTitle:(id)title bolded:(BOOL)bolded target:(id)target action:(SEL)action;
- (void)appendBarItem:(id)item;
- (void)drawRoundedRectangleInRect:(CGRect)rect withContext:(CGContext *)context color:(id)color radius:(double)radius;
- (void)prependBarItem:(id)item;
- (void)setBarItems:(id)items;
@end

@implementation WFKeyboardToolbarAccessoryView

- (void)drawRoundedRectangleInRect:(CGRect)rect withContext:(CGContext *)context color:(id)color radius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  v9 = rect.origin.y;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  CGContextMoveToPoint(context, x, v9 + radius);
  v11 = v9 + height - radius;
  CGContextAddLineToPoint(context, x, v11);
  v12 = x + radius;
  CGContextAddArc(context, x + radius, v11, radius, 3.14159265, 1.57079633, 1);
  v13 = x + width;
  CGContextAddLineToPoint(context, v13 - radius, v9 + height);
  CGContextAddArc(context, v13 - radius, v11, radius, 1.57079633, 0.0, 1);
  CGContextAddLineToPoint(context, v13, v9 + radius);
  CGContextAddArc(context, v13 - radius, v9 + radius, radius, 0.0, -1.57079633, 1);
  CGContextAddLineToPoint(context, v12, y);
  CGContextAddArc(context, v12, v9 + radius, radius, -1.57079633, 3.14159265, 1);

  CGContextFillPath(context);
}

- (id)buttonImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(WFKeyboardToolbarAccessoryView *)self isPhoneUI])
  {
    v6 = 4.0;
  }

  else
  {
    v6 = 7.0;
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.533 green:0.545 blue:0.561 alpha:1.0];
  v13.width = width;
  v13.height = height;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  [(WFKeyboardToolbarAccessoryView *)self drawRoundedRectangleInRect:CurrentContext withContext:v8 color:0.0 radius:0.0, width, height, v6];
  [(WFKeyboardToolbarAccessoryView *)self drawRoundedRectangleInRect:CurrentContext withContext:whiteColor color:0.0 radius:0.0, width, height + -1.0, v6];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)fixedSpaceItemOfWidth:(double)width
{
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:width];

  return v4;
}

- (id)flexibleSpaceItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (id)borderedButtonItemWithTitle:(id)title target:(id)target action:(SEL)action
{
  v8 = MEMORY[0x277D74300];
  targetCopy = target;
  titleCopy = title;
  v11 = [v8 systemFontOfSize:14.0];
  [(WFKeyboardToolbarAccessoryView *)self borderedButtonWidthForButtonTitle:titleCopy font:v11];
  v13 = v12;
  [(WFKeyboardToolbarAccessoryView *)self keyboardButtonHeight];
  v15 = v14;
  v16 = [(WFKeyboardToolbarAccessoryView *)self buttonImageWithSize:v13, v14];
  v17 = [MEMORY[0x277D75220] buttonWithType:0];
  [v17 setFrame:{0.0, 0.0, v13, v15}];
  titleLabel = [v17 titleLabel];
  [titleLabel setFont:v11];

  [v17 setBackgroundImage:v16 forState:0];
  [v17 setTitle:titleCopy forState:0];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [v17 setTitleColor:blackColor forState:0];

  [v17 addTarget:targetCopy action:action forControlEvents:64];
  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v17];

  return v20;
}

- (id)plainButtonItemWithTitle:(id)title bolded:(BOOL)bolded target:(id)target action:(SEL)action
{
  v10 = MEMORY[0x277D74300];
  targetCopy = target;
  titleCopy = title;
  if (bolded)
  {
    [v10 boldSystemFontOfSize:16.0];
  }

  else
  {
    [v10 systemFontOfSize:16.0];
  }
  v13 = ;
  [(WFKeyboardToolbarAccessoryView *)self borderedButtonWidthForButtonTitle:titleCopy font:v13];
  v15 = v14;
  [(WFKeyboardToolbarAccessoryView *)self keyboardButtonHeight];
  v17 = v16;
  v18 = [MEMORY[0x277D75220] buttonWithType:1];
  [v18 setFrame:{0.0, 0.0, v15, v17}];
  titleLabel = [v18 titleLabel];
  [titleLabel setFont:v13];

  [v18 setTitle:titleCopy forState:0];
  [v18 addTarget:targetCopy action:action forControlEvents:64];

  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v18];

  return v20;
}

- (double)inverseToolbarPadding
{
  isPhoneUI = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = -14.0;
  if (isPhoneUI)
  {
    return -13.0;
  }

  return result;
}

- (double)keyboardButtonHeight
{
  isPhoneUI = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = 34.0;
  if (isPhoneUI)
  {
    return 30.0;
  }

  return result;
}

- (double)borderedButtonWidthForButtonTitle:(id)title font:(id)font
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D740A8];
  v15[0] = font;
  v6 = MEMORY[0x277CBEAC0];
  fontCopy = font;
  titleCopy = title;
  v9 = [v6 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [titleCopy sizeWithAttributes:v9];
  v11 = v10;

  isPhoneUI = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = v11 + 17.0;
  if (!isPhoneUI)
  {
    return 118.0;
  }

  return result;
}

- (BOOL)isPhoneUI
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (void)prependBarItem:(id)item
{
  itemCopy = item;
  toolbar = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  items = [toolbar items];
  v8 = [items mutableCopy];

  [v8 insertObject:itemCopy atIndex:1];
  toolbar2 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [toolbar2 setItems:v8];
}

- (void)appendBarItem:(id)item
{
  itemCopy = item;
  toolbar = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  items = [toolbar items];

  v6 = [items mutableCopy];
  [v6 insertObject:itemCopy atIndex:{objc_msgSend(items, "count") - 1}];

  toolbar2 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [toolbar2 setItems:v6];
}

- (void)setBarItems:(id)items
{
  v4 = [items mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v10 = v6;

  [(WFKeyboardToolbarAccessoryView *)self inverseToolbarPadding];
  v7 = [(WFKeyboardToolbarAccessoryView *)self fixedSpaceItemOfWidth:?];
  [v10 insertObject:v7 atIndex:0];

  [(WFKeyboardToolbarAccessoryView *)self inverseToolbarPadding];
  v8 = [(WFKeyboardToolbarAccessoryView *)self fixedSpaceItemOfWidth:?];
  [v10 addObject:v8];

  toolbar = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [toolbar setItems:v10];
}

- (NSArray)barItems
{
  toolbar = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  items = [toolbar items];
  v4 = [items mutableCopy];

  [(NSArray *)v4 removeObjectAtIndex:0];
  [(NSArray *)v4 removeLastObject];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (WFKeyboardToolbarAccessoryView)init
{
  [(WFKeyboardToolbarAccessoryView *)self keyboardButtonHeight];
  v4 = v3 + 10.0;
  v5 = [(UIInputView *)self initWithFrame:0 inputViewStyle:0.0, 0.0, 0.0, v3 + 10.0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75C58]) initWithFrame:{0.0, 0.0, 0.0, v4}];
    [(UIToolbar *)v6 setClipsToBounds:1];
    [(UIToolbar *)v6 setAutoresizingMask:6];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIToolbar *)v6 setBackgroundColor:clearColor];

    v8 = objc_opt_new();
    [(UIToolbar *)v6 setBackgroundImage:v8 forToolbarPosition:0 barMetrics:0];

    [(WFKeyboardToolbarAccessoryView *)v5 addSubview:v6];
    toolbar = v5->_toolbar;
    v5->_toolbar = v6;

    [(WFKeyboardToolbarAccessoryView *)v5 removeAllBarItems];
    v10 = v5;
  }

  return v5;
}

@end