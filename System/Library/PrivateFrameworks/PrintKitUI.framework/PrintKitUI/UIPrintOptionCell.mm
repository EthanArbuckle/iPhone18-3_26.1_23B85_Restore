@interface UIPrintOptionCell
- (UIPrintOptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIPrintOptionCell

- (UIPrintOptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIPrintOptionCell;
  v4 = [(UIPrintOptionCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_previewDidChangeSize_ name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_previewDidChangeSize_ name:@"UIPrintPreviewHeightDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  v4 = [(UIPrintOptionCell *)self accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setEnabled:v3];
  }
}

@end