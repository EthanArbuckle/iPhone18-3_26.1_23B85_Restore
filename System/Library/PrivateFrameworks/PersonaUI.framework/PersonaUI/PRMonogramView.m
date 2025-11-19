@interface PRMonogramView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (PRMonogramView)initWithFrame:(CGRect)a3;
- (void)_updateCornerRadii;
- (void)_updateTextLabel;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBordered:(BOOL)a3;
- (void)setCircular:(BOOL)a3;
- (void)setMonogram:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PRMonogramView

- (PRMonogramView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PRMonogramView;
  v3 = [(PRMonogramView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRMonogramView *)v3 setCircular:1];
    v5 = +[PRMonogram plateOverlayLayer];
    circleGradientLayer = v4->_circleGradientLayer;
    v4->_circleGradientLayer = v5;

    v7 = v4->_circleGradientLayer;
    [(PRMonogramView *)v4 bounds];
    [(CAGradientLayer *)v7 setFrame:?];
    v8 = [(PRMonogramView *)v4 layer];
    [v8 addSublayer:v4->_circleGradientLayer];

    v9 = objc_alloc(MEMORY[0x277D75BB8]);
    [(PRMonogramView *)v4 bounds];
    v10 = [v9 initWithFrame:?];
    textField = v4->_textField;
    v4->_textField = v10;

    v12 = [MEMORY[0x277D75348] whiteColor];
    [(UITextField *)v4->_textField setTintColor:v12];

    [(UITextField *)v4->_textField setTextAlignment:1];
    [(UITextField *)v4->_textField setAdjustsFontSizeToFitWidth:0];
    [(UITextField *)v4->_textField setEnabled:0];
    [(UITextField *)v4->_textField setAutocapitalizationType:3];
    [(UITextField *)v4->_textField setAutocorrectionType:1];
    [(UITextField *)v4->_textField setSpellCheckingType:1];
    [(UITextField *)v4->_textField setReturnKeyType:9];
    [(UITextField *)v4->_textField setKeyboardType:13];
    [(UITextField *)v4->_textField setDelegate:v4];
    [(PRMonogramView *)v4 addSubview:v4->_textField];
  }

  return v4;
}

- (void)dealloc
{
  [(PRMonogram *)self->_monogram removeObserver:self forKeyPath:@"text"];
  [(PRMonogram *)self->_monogram removeObserver:self forKeyPath:@"fontIndex"];
  [(PRMonogram *)self->_monogram removeObserver:self forKeyPath:@"color"];
  v3.receiver = self;
  v3.super_class = PRMonogramView;
  [(PRMonogramView *)&v3 dealloc];
}

- (void)setMonogram:(id)a3
{
  v5 = a3;
  monogram = self->_monogram;
  if (monogram != v5)
  {
    v7 = v5;
    [(PRMonogram *)monogram removeObserver:self forKeyPath:@"text"];
    [(PRMonogram *)self->_monogram removeObserver:self forKeyPath:@"fontIndex"];
    [(PRMonogram *)self->_monogram removeObserver:self forKeyPath:@"color"];
    objc_storeStrong(&self->_monogram, a3);
    [(PRMonogram *)self->_monogram addObserver:self forKeyPath:@"text" options:1 context:0];
    [(PRMonogram *)self->_monogram addObserver:self forKeyPath:@"fontIndex" options:1 context:0];
    [(PRMonogram *)self->_monogram addObserver:self forKeyPath:@"color" options:1 context:0];
    monogram = [(PRMonogramView *)self _updateTextLabel];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](monogram, v5);
}

- (void)setBordered:(BOOL)a3
{
  if (self->_bordered != a3)
  {
    self->_bordered = a3;
    [(PRMonogramView *)self _updateTextLabel];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
  }
}

- (void)setCircular:(BOOL)a3
{
  if (self->_circular != a3)
  {
    self->_circular = a3;
    [(PRMonogramView *)self _updateCornerRadii];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (self->_monogram == a4)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if ([v10 isEqualToString:@"color"] || objc_msgSend(v10, "isEqualToString:", @"text") || objc_msgSend(v10, "isEqualToString:", @"fontIndex"))
    {
      [(PRMonogramView *)self _updateTextLabel];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PRMonogramView;
    [(PRMonogramView *)&v11 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)_updateTextLabel
{
  v37[1] = *MEMORY[0x277D85DE8];
  [(PRMonogramView *)self bounds];
  Height = CGRectGetHeight(v38);
  v4 = [PRMonogram fontForIndex:[(PRMonogram *)self->_monogram fontIndex] plateDiameter:Height];
  v5 = [(PRMonogram *)self->_monogram fontIndex];
  [v4 pointSize];
  [PRMonogram kerningForFontIndex:v5 fontSize:?];
  v7 = v6;
  if (self->_bordered)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v8 = ;
  v36 = *MEMORY[0x277D740C0];
  v37[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:{1, v8}];
  [(UITextField *)self->_textField editRect];
  v11 = v10 + Height * -0.200000003;
  v12 = [(PRMonogram *)self->_monogram text];
  v13 = *MEMORY[0x277D740D0];
  v34[0] = *MEMORY[0x277D740A8];
  v34[1] = v13;
  v35[0] = v4;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v35[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v12 sizeWithAttributes:v15];
  v17 = v16;

  if (v11 > 0.0 && v17 > v11)
  {
    v19 = [PRMonogram fontForIndex:[(PRMonogram *)self->_monogram fontIndex] plateDiameter:Height * (v11 / v17)];

    v20 = [(PRMonogram *)self->_monogram fontIndex];
    [v19 pointSize];
    [PRMonogram kerningForFontIndex:v20 fontSize:?];
    v7 = v21;
    v4 = v19;
  }

  if (v7 != 0.0)
  {
    v22 = [v9 mutableCopy];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v22 setObject:v23 forKey:v13];

    v24 = [v22 copy];
    v9 = v24;
  }

  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v26 = [(PRMonogram *)self->_monogram text];
  if (v26)
  {
    v27 = [(PRMonogram *)self->_monogram text];
    v28 = [v25 initWithString:v27 attributes:v9];
  }

  else
  {
    v28 = [v25 initWithString:&stru_2870278B0 attributes:v9];
  }

  v29 = [(UITextField *)self->_textField attributedText];
  v30 = [v29 isEqual:v28];

  if ((v30 & 1) == 0)
  {
    [(UITextField *)self->_textField setAttributedText:v28];
  }

  v31 = [(UITextField *)self->_textField font];
  v32 = [v31 isEqual:v4];

  if ((v32 & 1) == 0)
  {
    [(UITextField *)self->_textField setFont:v4];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PRMonogramView;
  [(PRMonogramView *)&v8 layoutSubviews];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = [(PRMonogramView *)self layer];
  [v3 bounds];
  [(CAGradientLayer *)self->_circleGradientLayer setFrame:?];

  [(PRMonogramView *)self _updateCornerRadii];
  [MEMORY[0x277CD9FF0] commit];
  [(PRMonogramView *)self bounds];
  [(UITextField *)self->_textField setFrame:PRRectScale(v4, v5, v6, v7, 0.899999976, 1.0)];
  [(PRMonogramView *)self _updateTextLabel];
}

- (void)_updateCornerRadii
{
  v3 = [(PRMonogramView *)self isCircular];
  v4 = 0.0;
  if (v3)
  {
    [(PRMonogramView *)self bounds];
    PRRectGetMinLength(v5, v6, v7, v8);
    v4 = v9 * 0.5;
  }

  circleGradientLayer = self->_circleGradientLayer;

  [(CAGradientLayer *)circleGradientLayer setCornerRadius:v4];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v3 = a3;
  v6 = [v3 endOfDocument];
  v4 = [v3 endOfDocument];
  v5 = [v3 textRangeFromPosition:v6 toPosition:v4];
  [v3 setSelectedTextRange:v5];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v8 = a3;
  v4 = [(PRMonogram *)v8 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(PRMonogram *)v8 text];
    monogram = self->_monogram;
  }

  else
  {
    v6 = [(PRMonogram *)self->_monogram text];
    monogram = v8;
  }

  [(PRMonogram *)monogram setText:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  if (location == 0x7FFFFFFFFFFFFFFFLL || ([v8 markedTextRange], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = 1;
  }

  else
  {
    v13 = [v8 text];
    v14 = [v13 stringByReplacingCharactersInRange:location withString:{length, v9}];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v15 = [v14 length];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__PRMonogramView_textField_shouldChangeCharactersInRange_replacementString___block_invoke;
    v19[3] = &unk_279A1C380;
    v19[4] = &v20;
    [v14 enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v19}];
    v16 = v21[3];
    v11 = v16 < 3;
    if (v16 == 2)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__PRMonogramView_textField_shouldChangeCharactersInRange_replacementString___block_invoke_2;
      v17[3] = &unk_279A1C148;
      v18 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v17);
    }

    _Block_object_dispose(&v20, 8);
  }

  return v11;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = PRMonogramView;
  [(PRMonogramView *)&v5 didMoveToWindow];
  [(PRMonogramView *)self _updateTextLabel];
  v3 = [(PRMonogramView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  [(CAGradientLayer *)self->_circleGradientLayer setRasterizationScale:?];
}

@end