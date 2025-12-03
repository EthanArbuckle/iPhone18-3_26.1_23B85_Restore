@interface PRXTextView
+ (PRXTextView)textViewWithStyle:(int64_t)style;
- (PRXTextView)initWithStyle:(int64_t)style;
- (void)setTitleText:(id)text;
@end

@implementation PRXTextView

- (PRXTextView)initWithStyle:(int64_t)style
{
  v16.receiver = self;
  v16.super_class = PRXTextView;
  v4 = [(PRXTextView *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v6 = [[PRXTextStyleDefinition alloc] initWithStyle:style];
    textColor = [(PRXTextStyleDefinition *)v6 textColor];
    [(PRXTextView *)v5 setTextColor:textColor];

    font = [(PRXTextStyleDefinition *)v6 font];
    [(PRXTextView *)v5 setFont:font];

    [(PRXTextView *)v5 setTextAlignment:[(PRXTextStyleDefinition *)v6 textAlignment]];
    [(PRXTextView *)v5 setAccessibilityTraits:[(PRXTextStyleDefinition *)v6 accessibilityTraits]];
    numberOfLines = [(PRXTextStyleDefinition *)v6 numberOfLines];
    textContainer = [(PRXTextView *)v5 textContainer];
    [textContainer setMaximumNumberOfLines:numberOfLines];

    [(PRXTextView *)v5 setScrollEnabled:0];
    [(PRXTextView *)v5 setShowsVerticalScrollIndicator:0];
    [(PRXTextView *)v5 setShowsHorizontalScrollIndicator:0];
    [(PRXTextView *)v5 setAutomaticallyAdjustsScrollIndicatorInsets:0];
    [(PRXTextView *)v5 setEditable:0];
    [(PRXTextView *)v5 setSelectable:0];
    [(PRXTextView *)v5 setAdjustsFontForContentSizeCategory:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PRXTextView *)v5 setBackgroundColor:clearColor];

    [(PRXTextView *)v5 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    textContainer2 = [(PRXTextView *)v5 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    layoutManager = [(PRXTextView *)v5 layoutManager];
    [layoutManager setUsesFontLeading:0];

    v14 = v5;
  }

  return v5;
}

+ (PRXTextView)textViewWithStyle:(int64_t)style
{
  v3 = [[self alloc] initWithStyle:style];

  return v3;
}

- (void)setTitleText:(id)text
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (self->_style)
  {
    textCopy = text;
    [(PRXTextView *)self setText:textCopy];
  }

  else
  {
    textCopy2 = text;
    textCopy = [[PRXTextStyleDefinition alloc] initWithStyle:self->_style];
    v6 = objc_alloc_init(MEMORY[0x277D74240]);
    LODWORD(v7) = 1045220557;
    [v6 setHyphenationFactor:v7];
    [v6 setAlignment:{-[PRXTextStyleDefinition textAlignment](textCopy, "textAlignment")}];
    [v6 setLineBreakStrategy:0xFFFFLL];
    v8 = *MEMORY[0x277D74118];
    v15[0] = v6;
    v9 = *MEMORY[0x277D740A8];
    v14[0] = v8;
    v14[1] = v9;
    font = [(PRXTextStyleDefinition *)textCopy font];
    v15[1] = font;
    v14[2] = *MEMORY[0x277D740C0];
    textColor = [(PRXTextStyleDefinition *)textCopy textColor];
    v15[2] = textColor;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy2 attributes:v12];
    [(PRXTextView *)self setAttributedText:v13];
  }
}

@end