@interface UISimpleTextPrintFormatter
- (UISimpleTextPrintFormatter)initWithAttributedText:(NSAttributedString *)attributedText;
- (UISimpleTextPrintFormatter)initWithText:(NSString *)text;
@end

@implementation UISimpleTextPrintFormatter

- (UISimpleTextPrintFormatter)initWithText:(NSString *)text
{
  v4 = MEMORY[0x277D75C40];
  v5 = text;
  v6 = [[v4 alloc] initWithFrame:{0.0, 0.0, 612.0, 798.0}];
  v7 = [MEMORY[0x277D75348] blackColor];
  [v6 setTextColor:v7];

  [v6 setText:v5];
  v8 = [(UIViewPrintFormatter *)[UITextViewPrintFormatter alloc] _initWithView:v6];

  return v8;
}

- (UISimpleTextPrintFormatter)initWithAttributedText:(NSAttributedString *)attributedText
{
  v4 = MEMORY[0x277D75C40];
  v5 = attributedText;
  v6 = [[v4 alloc] initWithFrame:{0.0, 0.0, 612.0, 798.0}];
  [v6 setAttributedText:v5];

  v7 = [(UIViewPrintFormatter *)[UITextViewPrintFormatter alloc] _initWithView:v6];
  return v7;
}

@end