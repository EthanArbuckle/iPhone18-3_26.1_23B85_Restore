@interface UIPrinterTableViewCell
+ (UIImage)blankImage;
+ (UIImage)checkmarkImage;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (PKPrinter)printer;
- (UIPrinterTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)delegate;
- (int)printerState;
- (void)expandedAccessoryAreaTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)printerAccessoryViewInfoButtonPressed:(id)a3;
- (void)setPrinter:(id)a3;
- (void)setPrinterSelected:(BOOL)a3;
- (void)setPrinterState:(int)a3;
@end

@implementation UIPrinterTableViewCell

- (UIPrinterTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = UIPrinterTableViewCell;
  v4 = [(UIPrinterTableViewCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIPrinterAccessoryView alloc];
    v6 = [(UIPrinterAccessoryView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    printerAccessoryView = v4->_printerAccessoryView;
    v4->_printerAccessoryView = v6;

    [(UIPrinterAccessoryView *)v4->_printerAccessoryView setDelegate:v4];
    v8 = [MEMORY[0x277D756E0] subtitleCellConfiguration];
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    v10 = [v8 secondaryTextProperties];
    [v10 setColor:v9];

    v11 = [v8 imageProperties];
    [v11 setReservedLayoutSize:{20.0, 20.0}];

    [v8 setImageToTextPadding:8.0];
    [(UIPrinterTableViewCell *)v4 setContentConfiguration:v8];
    [(UIPrinterTableViewCell *)v4 setAccessoryView:v4->_printerAccessoryView];
    v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_expandedAccessoryAreaTapped];
    [(UIPrinterTableViewCell *)v4 setExpandedAccessoryTapRecognizer:v12];

    v13 = [(UIPrinterTableViewCell *)v4 expandedAccessoryTapRecognizer];
    [v13 setDelegate:v4];

    v14 = [(UIPrinterTableViewCell *)v4 expandedAccessoryTapRecognizer];
    [(UIPrinterTableViewCell *)v4 addGestureRecognizer:v14];
  }

  return v4;
}

- (void)setPrinter:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_printer, v4);
  v10 = [(UIPrinterTableViewCell *)self contentConfiguration];
  v5 = [v4 displayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2871AE610;
  }

  [v10 setText:v7];

  v8 = [v4 location];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_2871AE610;
  }

  [v10 setSecondaryText:v9];

  [(UIPrinterTableViewCell *)self setContentConfiguration:v10];
}

- (void)setPrinterSelected:(BOOL)a3
{
  v6 = [(UIPrinterTableViewCell *)self contentConfiguration];
  if (a3)
  {
    +[UIPrinterTableViewCell checkmarkImage];
  }

  else
  {
    +[UIPrinterTableViewCell blankImage];
  }
  v5 = ;
  [v6 setImage:v5];

  [(UIPrinterTableViewCell *)self setContentConfiguration:v6];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPrinterTableViewCell;
  [(UIPrinterTableViewCell *)&v3 prepareForReuse];
  [(UIPrinterTableViewCell *)self setPrinter:0];
  [(UIPrinterTableViewCell *)self setPrinterState:0];
  [(UIPrinterTableViewCell *)self setPrinterSelected:0];
}

- (void)printerAccessoryViewInfoButtonPressed:(id)a3
{
  v4 = [(UIPrinterTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 printerInfoButtonTapped:self];
  }
}

- (int)printerState
{
  v2 = [(UIPrinterTableViewCell *)self printerAccessoryView];
  v3 = [v2 printerState];

  return v3;
}

- (void)setPrinterState:(int)a3
{
  v3 = *&a3;
  v5 = [(UIPrinterTableViewCell *)self printerAccessoryView];
  v6 = [v5 printerState];

  if (v6 != v3)
  {
    v7 = [(UIPrinterTableViewCell *)self printerAccessoryView];
    [v7 setPrinterState:v3];

    [(UIPrinterTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3 = [(UIPrinterTableViewCell *)self accessoryView];
  [v3 sizeToFit];

  v4.receiver = self;
  v4.super_class = UIPrinterTableViewCell;
  [(UIPrinterTableViewCell *)&v4 layoutSubviews];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(UIPrinterTableViewCell *)self contentView];
  [v5 locationInView:v6];
  v8 = v7;

  v9 = [(UIPrinterTableViewCell *)self contentView];
  v10 = [(UIPrinterTableViewCell *)self printerAccessoryView];
  v11 = [v10 infoButton];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(UIPrinterTableViewCell *)self printerAccessoryView];
  [v9 convertRect:v20 fromView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [MEMORY[0x277D75128] sharedApplication];
  v30 = [v29 userInterfaceLayoutDirection];

  v31 = v22;
  v32 = v24;
  v33 = v26;
  v34 = v28;
  if (v30)
  {
    return v8 <= CGRectGetMaxX(*&v31);
  }

  else
  {
    return v8 >= CGRectGetMinX(*&v31);
  }
}

- (void)expandedAccessoryAreaTapped
{
  v3 = [(UIPrinterTableViewCell *)self expandedAccessoryTapRecognizer];
  v4 = [v3 state];

  if (v4 == 3)
  {
    v5 = [(UIPrinterTableViewCell *)self printerAccessoryView];
    [(UIPrinterTableViewCell *)self printerAccessoryViewInfoButtonPressed:v5];
  }
}

+ (UIImage)checkmarkImage
{
  v2 = checkmarkImage___checkmarkImage;
  if (!checkmarkImage___checkmarkImage)
  {
    v3 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:1 scale:20.0];
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v3];
    v5 = checkmarkImage___checkmarkImage;
    checkmarkImage___checkmarkImage = v4;

    v2 = checkmarkImage___checkmarkImage;
  }

  return v2;
}

+ (UIImage)blankImage
{
  v2 = blankImage___blankImage;
  if (!blankImage___blankImage)
  {
    v8.width = 20.0;
    v8.height = 20.0;
    UIGraphicsBeginImageContext(v8);
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    UIGraphicsPopContext();
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    v5 = blankImage___blankImage;
    blankImage___blankImage = v4;

    UIGraphicsEndImageContext();
    v2 = blankImage___blankImage;
  }

  return v2;
}

- (PKPrinter)printer
{
  WeakRetained = objc_loadWeakRetained(&self->_printer);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end