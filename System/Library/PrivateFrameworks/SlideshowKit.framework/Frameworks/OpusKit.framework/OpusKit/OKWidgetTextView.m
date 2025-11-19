@interface OKWidgetTextView
+ (id)supportedSettings;
- (OKWidgetTextView)initWithWidget:(id)a3;
- (UIEdgeInsets)settingContentEdgeInsets;
- (float)settingFontSize;
- (id)settingFontName;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSettingFontName:(id)a3;
- (void)setSettingFontSize:(float)a3;
- (void)setSettingOverflowEnabled:(BOOL)a3;
@end

@implementation OKWidgetTextView

- (OKWidgetTextView)initWithWidget:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKWidgetTextView;
  v3 = [(OKWidgetTextViewProxy *)&v7 initWithWidget:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75C40]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v5 = [v4 initWithFrame:?];
    v3->_textView = v5;
    [(UITextView *)v5 setEditable:0];
    [(UITextView *)v3->_textView setDelegate:v3];
    -[UITextView setFont:](v3->_textView, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:12.0]);
    [(UITextView *)v3->_textView setTextAlignment:0];
    -[UITextView setTextColor:](v3->_textView, "setTextColor:", [MEMORY[0x277D75348] whiteColor]);
    -[UITextView setBackgroundColor:](v3->_textView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(UITextView *)v3->_textView setClipsToBounds:1];
    [(UITextView *)v3->_textView setScrollEnabled:0];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:v3->_textView];
    if ([[(OKPresentationCanvas *)[(OKWidgetViewProxy *)v3 widget] presentation] enableDisplayDebugging])
    {
      [-[UITextView layer](v3->_textView "layer")];
      [-[UITextView layer](v3->_textView "layer")];
      [(UITextView *)v3->_textView setAlpha:0.949999988];
    }
  }

  return v3;
}

- (void)dealloc
{
  textView = self->_textView;
  if (textView)
  {

    self->_textView = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetTextView;
  [(OKWidgetTextViewProxy *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKWidgetTextView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"contentInset";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF0E48;
  v9[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[1] = @"overflowEnabled";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF0E60;
  v7[1] = MEMORY[0x277CBEC28];
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OKWidgetTextView;
  [(OKWidgetViewProxy *)&v3 layoutSubviews];
  [(OKWidgetTextViewProxy *)self textViewFrame];
  [(UITextView *)self->_textView setFrame:?];
}

- (id)settingFontName
{
  v2 = [(UITextView *)self->_textView font];

  return [(UIFont *)v2 fontName];
}

- (void)setSettingFontName:(id)a3
{
  v5 = [(UITextView *)self->_textView font];
  if (v5)
  {
    v6 = MEMORY[0x277D74300];
    [(UIFont *)v5 pointSize];
    v8 = v6;
  }

  else
  {
    [(OKWidgetViewProxy *)self layoutFactor];
    v8 = MEMORY[0x277D74300];
    if (v9 >= v10)
    {
      v9 = v10;
    }

    v7 = v9 * 12.0;
  }

  v11 = [v8 fontWithName:a3 size:v7];
  textView = self->_textView;

  [(UITextView *)textView setFont:v11];
}

- (float)settingFontSize
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [(UIFont *)[(UITextView *)self->_textView font] pointSize];
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  return v7 / v8;
}

- (void)setSettingFontSize:(float)a3
{
  v5 = [(UITextView *)self->_textView font];
  [(OKWidgetViewProxy *)self layoutFactor];
  if (v5)
  {
    if (v6 >= v7)
    {
      v6 = v7;
    }

    v8 = [(UIFont *)v5 fontWithSize:v6 * a3];
  }

  else
  {
    if (v6 >= v7)
    {
      v6 = v7;
    }

    v8 = [MEMORY[0x277D74300] systemFontOfSize:v6 * a3];
  }

  v9 = v8;
  textView = self->_textView;

  [(UITextView *)textView setFont:v9];
}

- (UIEdgeInsets)settingContentEdgeInsets
{
  [(UITextView *)self->_textView contentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setSettingOverflowEnabled:(BOOL)a3
{
  v3 = a3;
  [(UITextView *)self->_textView setClipsToBounds:!a3];
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] setClipsToBounds:!v3];

  [(OKWidgetTextView *)self setClipsToBounds:!v3];
}

@end