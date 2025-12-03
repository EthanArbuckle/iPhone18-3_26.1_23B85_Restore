@interface STSCategoryTitleTableViewCell
- (STSCategoryTitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (STSCategoryTitleTableViewCellDelegate)selectionDelegate;
- (void)clearButtonPressed:(id)pressed;
@end

@implementation STSCategoryTitleTableViewCell

- (STSCategoryTitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v29.receiver = self;
  v29.super_class = STSCategoryTitleTableViewCell;
  v4 = [(STSCategoryTitleTableViewCell *)&v29 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    fontDescriptor = [v28 fontDescriptor];
    v6 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    textLabel = [(STSCategoryTitleTableViewCell *)v4 textLabel];
    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    [textLabel setFont:v8];

    textLabel2 = [(STSCategoryTitleTableViewCell *)v4 textLabel];
    [textLabel2 setAdjustsFontSizeToFitWidth:1];

    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    v11 = STSLocalizedString(@"CLEAR");
    [(UIButton *)v10 setTitle:v11 forState:0];
    titleLabel = [(UIButton *)v10 titleLabel];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [titleLabel setFont:v13];

    titleLabel2 = [(UIButton *)v10 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    [(UIButton *)v10 setTintColor:systemPinkColor];

    [(UIButton *)v10 addTarget:v4 action:sel_clearButtonPressed_ forControlEvents:64];
    [(UIButton *)v10 setHidden:1];
    [(UIButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearButton = v4->_clearButton;
    v4->_clearButton = v10;
    v17 = v10;

    [(STSCategoryTitleTableViewCell *)v4 addSubview:v4->_clearButton];
    array = [MEMORY[0x277CBEB18] array];
    readableContentGuide = [(STSCategoryTitleTableViewCell *)v4 readableContentGuide];
    centerYAnchor = [(UIButton *)v4->_clearButton centerYAnchor];
    centerYAnchor2 = [(STSCategoryTitleTableViewCell *)v4 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v22];

    trailingAnchor = [(UIButton *)v4->_clearButton trailingAnchor];
    contentView = [(STSCategoryTitleTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    [array addObject:v26];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)clearButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);
  result = [(STSCategoryTitleTableViewCell *)self result];
  [WeakRetained clearButton:pressedCopy pressedForCategoryResult:result];
}

- (STSCategoryTitleTableViewCellDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end