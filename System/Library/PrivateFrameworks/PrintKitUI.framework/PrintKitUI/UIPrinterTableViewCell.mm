@interface UIPrinterTableViewCell
+ (UIImage)blankImage;
+ (UIImage)checkmarkImage;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (PKPrinter)printer;
- (UIPrinterTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)delegate;
- (int)printerState;
- (void)expandedAccessoryAreaTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)printerAccessoryViewInfoButtonPressed:(id)pressed;
- (void)setPrinter:(id)printer;
- (void)setPrinterSelected:(BOOL)selected;
- (void)setPrinterState:(int)state;
@end

@implementation UIPrinterTableViewCell

- (UIPrinterTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = UIPrinterTableViewCell;
  v4 = [(UIPrinterTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIPrinterAccessoryView alloc];
    v6 = [(UIPrinterAccessoryView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    printerAccessoryView = v4->_printerAccessoryView;
    v4->_printerAccessoryView = v6;

    [(UIPrinterAccessoryView *)v4->_printerAccessoryView setDelegate:v4];
    subtitleCellConfiguration = [MEMORY[0x277D756E0] subtitleCellConfiguration];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:secondaryLabelColor];

    imageProperties = [subtitleCellConfiguration imageProperties];
    [imageProperties setReservedLayoutSize:{20.0, 20.0}];

    [subtitleCellConfiguration setImageToTextPadding:8.0];
    [(UIPrinterTableViewCell *)v4 setContentConfiguration:subtitleCellConfiguration];
    [(UIPrinterTableViewCell *)v4 setAccessoryView:v4->_printerAccessoryView];
    v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_expandedAccessoryAreaTapped];
    [(UIPrinterTableViewCell *)v4 setExpandedAccessoryTapRecognizer:v12];

    expandedAccessoryTapRecognizer = [(UIPrinterTableViewCell *)v4 expandedAccessoryTapRecognizer];
    [expandedAccessoryTapRecognizer setDelegate:v4];

    expandedAccessoryTapRecognizer2 = [(UIPrinterTableViewCell *)v4 expandedAccessoryTapRecognizer];
    [(UIPrinterTableViewCell *)v4 addGestureRecognizer:expandedAccessoryTapRecognizer2];
  }

  return v4;
}

- (void)setPrinter:(id)printer
{
  printerCopy = printer;
  objc_storeWeak(&self->_printer, printerCopy);
  contentConfiguration = [(UIPrinterTableViewCell *)self contentConfiguration];
  displayName = [printerCopy displayName];
  v6 = displayName;
  if (displayName)
  {
    v7 = displayName;
  }

  else
  {
    v7 = &stru_2871AE610;
  }

  [contentConfiguration setText:v7];

  location = [printerCopy location];

  if (location)
  {
    v9 = location;
  }

  else
  {
    v9 = &stru_2871AE610;
  }

  [contentConfiguration setSecondaryText:v9];

  [(UIPrinterTableViewCell *)self setContentConfiguration:contentConfiguration];
}

- (void)setPrinterSelected:(BOOL)selected
{
  contentConfiguration = [(UIPrinterTableViewCell *)self contentConfiguration];
  if (selected)
  {
    +[UIPrinterTableViewCell checkmarkImage];
  }

  else
  {
    +[UIPrinterTableViewCell blankImage];
  }
  v5 = ;
  [contentConfiguration setImage:v5];

  [(UIPrinterTableViewCell *)self setContentConfiguration:contentConfiguration];
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

- (void)printerAccessoryViewInfoButtonPressed:(id)pressed
{
  delegate = [(UIPrinterTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate printerInfoButtonTapped:self];
  }
}

- (int)printerState
{
  printerAccessoryView = [(UIPrinterTableViewCell *)self printerAccessoryView];
  printerState = [printerAccessoryView printerState];

  return printerState;
}

- (void)setPrinterState:(int)state
{
  v3 = *&state;
  printerAccessoryView = [(UIPrinterTableViewCell *)self printerAccessoryView];
  printerState = [printerAccessoryView printerState];

  if (printerState != v3)
  {
    printerAccessoryView2 = [(UIPrinterTableViewCell *)self printerAccessoryView];
    [printerAccessoryView2 setPrinterState:v3];

    [(UIPrinterTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  accessoryView = [(UIPrinterTableViewCell *)self accessoryView];
  [accessoryView sizeToFit];

  v4.receiver = self;
  v4.super_class = UIPrinterTableViewCell;
  [(UIPrinterTableViewCell *)&v4 layoutSubviews];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  contentView = [(UIPrinterTableViewCell *)self contentView];
  [touchCopy locationInView:contentView];
  v8 = v7;

  contentView2 = [(UIPrinterTableViewCell *)self contentView];
  printerAccessoryView = [(UIPrinterTableViewCell *)self printerAccessoryView];
  infoButton = [printerAccessoryView infoButton];
  [infoButton frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  printerAccessoryView2 = [(UIPrinterTableViewCell *)self printerAccessoryView];
  [contentView2 convertRect:printerAccessoryView2 fromView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  v31 = v22;
  v32 = v24;
  v33 = v26;
  v34 = v28;
  if (userInterfaceLayoutDirection)
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
  expandedAccessoryTapRecognizer = [(UIPrinterTableViewCell *)self expandedAccessoryTapRecognizer];
  state = [expandedAccessoryTapRecognizer state];

  if (state == 3)
  {
    printerAccessoryView = [(UIPrinterTableViewCell *)self printerAccessoryView];
    [(UIPrinterTableViewCell *)self printerAccessoryViewInfoButtonPressed:printerAccessoryView];
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