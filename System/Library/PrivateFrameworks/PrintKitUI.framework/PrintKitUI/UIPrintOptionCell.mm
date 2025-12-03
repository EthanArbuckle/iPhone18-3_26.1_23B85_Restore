@interface UIPrintOptionCell
- (UIPrintOptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIPrintOptionCell

- (UIPrintOptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = UIPrintOptionCell;
  v4 = [(UIPrintOptionCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_previewDidChangeSize_ name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_previewDidChangeSize_ name:@"UIPrintPreviewHeightDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UIPrintOptionCell;
  [(UIPrintOptionCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPrintOptionCell;
  [(UIPrintOptionCell *)&v3 prepareForReuse];
  [(UIPrintOptionCell *)self setAccessoryView:0];
  [(UIPrintOptionCell *)self setContentConfiguration:0];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  accessoryView = [(UIPrintOptionCell *)self accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [accessoryView setEnabled:enabledCopy];
  }
}

@end