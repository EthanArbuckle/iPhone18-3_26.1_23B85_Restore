@interface PRXTextView
+ (PRXTextView)textViewWithStyle:(int64_t)a3;
- (PRXTextView)initWithStyle:(int64_t)a3;
- (void)setTitleText:(id)a3;
@end

@implementation PRXTextView

- (PRXTextView)initWithStyle:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = PRXTextView;
  v4 = [(PRXTextView *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [[PRXTextStyleDefinition alloc] initWithStyle:a3];
    v7 = [(PRXTextStyleDefinition *)v6 textColor];
    [(PRXTextView *)v5 setTextColor:v7];

    v8 = [(PRXTextStyleDefinition *)v6 font];
    [(PRXTextView *)v5 setFont:v8];

    [(PRXTextView *)v5 setTextAlignment:[(PRXTextStyleDefinition *)v6 textAlignment]];
    [(PRXTextView *)v5 setAccessibilityTraits:[(PRXTextStyleDefinition *)v6 accessibilityTraits]];
    v9 = [(PRXTextStyleDefinition *)v6 numberOfLines];
    v10 = [(PRXTextView *)v5 textContainer];
    [v10 setMaximumNumberOfLines:v9];

    [(PRXTextView *)v5 setScrollEnabled:0];
    [(PRXTextView *)v5 setShowsVerticalScrollIndicator:0];
    [(PRXTextView *)v5 setShowsHorizontalScrollIndicator:0];
    [(PRXTextView *)v5 setAutomaticallyAdjustsScrollIndicatorInsets:0];
    [(PRXTextView *)v5 setEditable:0];
    [(PRXTextView *)v5 setSelectable:0];
    [(PRXTextView *)v5 setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x277D75348] clearColor];
    [(PRXTextView *)v5 setBackgroundColor:v11];

    [(PRXTextView *)v5 setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v12 = [(PRXTextView *)v5 textContainer];
    [v12 setLineFragmentPadding:0.0];

    v13 = [(PRXTextView *)v5 layoutManager];
    [v13 setUsesFontLeading:0];

    v14 = v5;
  }

  return v5;
}

+ (PRXTextView)textViewWithStyle:(int64_t)a3
{
  v3 = [[a1 alloc] initWithStyle:a3];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (self->_style)
  {
    v4 = a3;
    [(PRXTextView *)self setText:v4];
  }

  else
  {
    v5 = a3;
    v4 = [[PRXTextStyleDefinition alloc] initWithStyle:self->_style];
    v6 = objc_alloc_init(MEMORY[0x277D74240]);
    LODWORD(v7) = 1045220557;
    [v6 setHyphenationFactor:v7];
    [v6 setAlignment:{-[PRXTextStyleDefinition textAlignment](v4, "textAlignment")}];
    [v6 setLineBreakStrategy:0xFFFFLL];
    v8 = *MEMORY[0x277D74118];
    v15[0] = v6;
    v9 = *MEMORY[0x277D740A8];
    v14[0] = v8;
    v14[1] = v9;
    v10 = [(PRXTextStyleDefinition *)v4 font];
    v15[1] = v10;
    v14[2] = *MEMORY[0x277D740C0];
    v11 = [(PRXTextStyleDefinition *)v4 textColor];
    v15[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v12];
    [(PRXTextView *)self setAttributedText:v13];
  }
}

@end