@interface CACCustomCommandActionTextViewCell
- (CACCustomCommandActionTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CACCustomCommandActionTextViewCell

- (CACCustomCommandActionTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = CACCustomCommandActionTextViewCell;
  v4 = [(CACCustomCommandActionTextViewCell *)&v22 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75C40]);
    textView = v4->_textView;
    v4->_textView = v5;

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextView *)v4->_textView setFont:v7];

    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v9 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.PasteTextPlaceholder"];
    v10 = [v8 initWithString:v9];
    [(UITextView *)v4->_textView setAttributedPlaceholder:v10];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    contentView = [(CACCustomCommandActionTextViewCell *)v4 contentView];
    [contentView addSubview:v4->_textView];

    array = [MEMORY[0x277CBEB18] array];
    v14 = MEMORY[0x277CCAAD0];
    v15 = v4->_textView;
    contentView2 = [(CACCustomCommandActionTextViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    v18 = [v14 ax_constraintsToMakeItem:v15 sameDimensionsAsItem:layoutMarginsGuide];
    [array addObjectsFromArray:v18];

    heightAnchor = [(UITextView *)v4->_textView heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:200.0];
    [array addObject:v20];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

@end