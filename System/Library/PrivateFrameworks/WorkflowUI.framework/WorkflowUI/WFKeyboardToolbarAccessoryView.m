@interface WFKeyboardToolbarAccessoryView
- (BOOL)isPhoneUI;
- (NSArray)barItems;
- (WFKeyboardToolbarAccessoryView)init;
- (double)borderedButtonWidthForButtonTitle:(id)a3 font:(id)a4;
- (double)inverseToolbarPadding;
- (double)keyboardButtonHeight;
- (id)borderedButtonItemWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (id)buttonImageWithSize:(CGSize)a3;
- (id)fixedSpaceItemOfWidth:(double)a3;
- (id)flexibleSpaceItem;
- (id)plainButtonItemWithTitle:(id)a3 bolded:(BOOL)a4 target:(id)a5 action:(SEL)a6;
- (void)appendBarItem:(id)a3;
- (void)drawRoundedRectangleInRect:(CGRect)a3 withContext:(CGContext *)a4 color:(id)a5 radius:(double)a6;
- (void)prependBarItem:(id)a3;
- (void)setBarItems:(id)a3;
@end

@implementation WFKeyboardToolbarAccessoryView

- (void)drawRoundedRectangleInRect:(CGRect)a3 withContext:(CGContext *)a4 color:(id)a5 radius:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  v9 = a3.origin.y;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSetFillColorWithColor(a4, [a5 CGColor]);
  CGContextMoveToPoint(a4, x, v9 + a6);
  v11 = v9 + height - a6;
  CGContextAddLineToPoint(a4, x, v11);
  v12 = x + a6;
  CGContextAddArc(a4, x + a6, v11, a6, 3.14159265, 1.57079633, 1);
  v13 = x + width;
  CGContextAddLineToPoint(a4, v13 - a6, v9 + height);
  CGContextAddArc(a4, v13 - a6, v11, a6, 1.57079633, 0.0, 1);
  CGContextAddLineToPoint(a4, v13, v9 + a6);
  CGContextAddArc(a4, v13 - a6, v9 + a6, a6, 0.0, -1.57079633, 1);
  CGContextAddLineToPoint(a4, v12, y);
  CGContextAddArc(a4, v12, v9 + a6, a6, -1.57079633, 3.14159265, 1);

  CGContextFillPath(a4);
}

- (id)buttonImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(WFKeyboardToolbarAccessoryView *)self isPhoneUI])
  {
    v6 = 4.0;
  }

  else
  {
    v6 = 7.0;
  }

  v7 = [MEMORY[0x277D75348] whiteColor];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.533 green:0.545 blue:0.561 alpha:1.0];
  v13.width = width;
  v13.height = height;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  [(WFKeyboardToolbarAccessoryView *)self drawRoundedRectangleInRect:CurrentContext withContext:v8 color:0.0 radius:0.0, width, height, v6];
  [(WFKeyboardToolbarAccessoryView *)self drawRoundedRectangleInRect:CurrentContext withContext:v7 color:0.0 radius:0.0, width, height + -1.0, v6];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)fixedSpaceItemOfWidth:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v4 setWidth:a3];

  return v4;
}

- (id)flexibleSpaceItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (id)borderedButtonItemWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = MEMORY[0x277D74300];
  v9 = a4;
  v10 = a3;
  v11 = [v8 systemFontOfSize:14.0];
  [(WFKeyboardToolbarAccessoryView *)self borderedButtonWidthForButtonTitle:v10 font:v11];
  v13 = v12;
  [(WFKeyboardToolbarAccessoryView *)self keyboardButtonHeight];
  v15 = v14;
  v16 = [(WFKeyboardToolbarAccessoryView *)self buttonImageWithSize:v13, v14];
  v17 = [MEMORY[0x277D75220] buttonWithType:0];
  [v17 setFrame:{0.0, 0.0, v13, v15}];
  v18 = [v17 titleLabel];
  [v18 setFont:v11];

  [v17 setBackgroundImage:v16 forState:0];
  [v17 setTitle:v10 forState:0];

  v19 = [MEMORY[0x277D75348] blackColor];
  [v17 setTitleColor:v19 forState:0];

  [v17 addTarget:v9 action:a5 forControlEvents:64];
  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v17];

  return v20;
}

- (id)plainButtonItemWithTitle:(id)a3 bolded:(BOOL)a4 target:(id)a5 action:(SEL)a6
{
  v10 = MEMORY[0x277D74300];
  v11 = a5;
  v12 = a3;
  if (a4)
  {
    [v10 boldSystemFontOfSize:16.0];
  }

  else
  {
    [v10 systemFontOfSize:16.0];
  }
  v13 = ;
  [(WFKeyboardToolbarAccessoryView *)self borderedButtonWidthForButtonTitle:v12 font:v13];
  v15 = v14;
  [(WFKeyboardToolbarAccessoryView *)self keyboardButtonHeight];
  v17 = v16;
  v18 = [MEMORY[0x277D75220] buttonWithType:1];
  [v18 setFrame:{0.0, 0.0, v15, v17}];
  v19 = [v18 titleLabel];
  [v19 setFont:v13];

  [v18 setTitle:v12 forState:0];
  [v18 addTarget:v11 action:a6 forControlEvents:64];

  v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v18];

  return v20;
}

- (double)inverseToolbarPadding
{
  v2 = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = -14.0;
  if (v2)
  {
    return -13.0;
  }

  return result;
}

- (double)keyboardButtonHeight
{
  v2 = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = 34.0;
  if (v2)
  {
    return 30.0;
  }

  return result;
}

- (double)borderedButtonWidthForButtonTitle:(id)a3 font:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277D740A8];
  v15[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [v8 sizeWithAttributes:v9];
  v11 = v10;

  v12 = [(WFKeyboardToolbarAccessoryView *)self isPhoneUI];
  result = v11 + 17.0;
  if (!v12)
  {
    return 118.0;
  }

  return result;
}

- (BOOL)isPhoneUI
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (void)prependBarItem:(id)a3
{
  v4 = a3;
  v5 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  v6 = [v5 items];
  v8 = [v6 mutableCopy];

  [v8 insertObject:v4 atIndex:1];
  v7 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [v7 setItems:v8];
}

- (void)appendBarItem:(id)a3
{
  v4 = a3;
  v5 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  v8 = [v5 items];

  v6 = [v8 mutableCopy];
  [v6 insertObject:v4 atIndex:{objc_msgSend(v8, "count") - 1}];

  v7 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [v7 setItems:v6];
}

- (void)setBarItems:(id)a3
{
  v4 = [a3 mutableCopy];
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

  v9 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  [v9 setItems:v10];
}

- (NSArray)barItems
{
  v2 = [(WFKeyboardToolbarAccessoryView *)self toolbar];
  v3 = [v2 items];
  v4 = [v3 mutableCopy];

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
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UIToolbar *)v6 setBackgroundColor:v7];

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