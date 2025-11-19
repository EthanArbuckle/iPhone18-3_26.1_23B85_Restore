@interface CACCustomCommandActionTextViewCell
- (CACCustomCommandActionTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CACCustomCommandActionTextViewCell

- (CACCustomCommandActionTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v22.receiver = self;
  v22.super_class = CACCustomCommandActionTextViewCell;
  v4 = [(CACCustomCommandActionTextViewCell *)&v22 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v11];

    v12 = [(CACCustomCommandActionTextViewCell *)v4 contentView];
    [v12 addSubview:v4->_textView];

    v13 = [MEMORY[0x277CBEB18] array];
    v14 = MEMORY[0x277CCAAD0];
    v15 = v4->_textView;
    v16 = [(CACCustomCommandActionTextViewCell *)v4 contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v14 ax_constraintsToMakeItem:v15 sameDimensionsAsItem:v17];
    [v13 addObjectsFromArray:v18];

    v19 = [(UITextView *)v4->_textView heightAnchor];
    v20 = [v19 constraintEqualToConstant:200.0];
    [v13 addObject:v20];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
  }

  return v4;
}

@end