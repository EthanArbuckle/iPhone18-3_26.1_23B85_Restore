@interface TTRIUIDividedGridViewCell
- (NSLayoutConstraint)widthConstraint;
- (TTRIDividedGridViewController)viewController;
- (TTRIUIDividedGridViewCell)init;
- (TTRIUIDividedGridViewCell)initWithBackgroundColor:(id)a3;
- (id)selectedTextColor;
- (unint64_t)accessibilityTraits;
- (void)setSelected:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TTRIUIDividedGridViewCell

- (TTRIUIDividedGridViewCell)initWithBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = [(TTRIUIDividedGridViewCell *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bgColor, a3);
    [(TTRIUIDividedGridViewCell *)v7 setBackgroundColor:v7->_bgColor];
  }

  return v7;
}

- (TTRIUIDividedGridViewCell)init
{
  v14.receiver = self;
  v14.super_class = TTRIUIDividedGridViewCell;
  v2 = [(TTRIUIDividedGridViewCell *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    label = v2->_label;
    v2->_label = v3;

    [(UILabel *)v2->_label setTextAlignment:1];
    v5 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v2->_label setTextColor:v5];

    [(UILabel *)v2->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TTRIUIDividedGridViewCell *)v2 addSubview:v2->_label];
    v6 = MEMORY[0x277CCAAD0];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v2->_label, 0);
    v8 = [v6 constraintsWithVisualFormat:@"H:|-(7)-[_label]-(7)-|" options:1024 metrics:0 views:v7];
    [(TTRIUIDividedGridViewCell *)v2 addConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v2->_label, 0);
    v11 = [v9 constraintsWithVisualFormat:@"V:|-(0)-[_label]-(0)-|" options:512 metrics:0 views:v10];
    [(TTRIUIDividedGridViewCell *)v2 addConstraints:v11];

    v12 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    [(TTRIUIDividedGridViewCell *)v2 setBackgroundColor:v12];
  }

  return v2;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [(TTRIUIDividedGridViewCell *)self viewController:a3];
  [v5 cellTapped:self];
}

- (id)selectedTextColor
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [(TTRIUIDividedGridViewCell *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [MEMORY[0x277D75348] blackColor];

    v3 = v6;
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (![(TTRIUIDividedGridViewCell *)self selected])
  {
    if (self->_bgColor)
    {
      [(TTRIUIDividedGridViewCell *)self setBackgroundColor:?];
      goto LABEL_9;
    }

    v4 = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    goto LABEL_7;
  }

  v4 = [(TTRIUIDividedGridViewCell *)self tintColor];
  if (v4)
  {
LABEL_7:
    [(TTRIUIDividedGridViewCell *)self setBackgroundColor:v4];
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277D75348] darkGrayColor];
  [(TTRIUIDividedGridViewCell *)self setBackgroundColor:v5];

LABEL_8:
LABEL_9:
  if ([(TTRIUIDividedGridViewCell *)self selected])
  {
    [(TTRIUIDividedGridViewCell *)self selectedTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v7 = ;
  v6 = [(TTRIUIDividedGridViewCell *)self label];
  [v6 setTextColor:v7];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = TTRIUIDividedGridViewCell;
  v3 = [(TTRIUIDividedGridViewCell *)&v6 accessibilityTraits];
  if (self->_selected)
  {
    v4 = *MEMORY[0x277D76598];
  }

  else
  {
    v4 = 0;
  }

  return *MEMORY[0x277D76548] | v3 | v4;
}

- (TTRIDividedGridViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (NSLayoutConstraint)widthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_widthConstraint);

  return WeakRetained;
}

@end