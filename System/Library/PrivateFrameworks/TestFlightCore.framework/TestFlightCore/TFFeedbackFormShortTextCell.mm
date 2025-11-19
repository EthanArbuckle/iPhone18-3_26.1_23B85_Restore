@interface TFFeedbackFormShortTextCell
+ (CGSize)_sizeToFitText:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5;
+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6;
+ (UIEdgeInsets)_textFieldInsetsInTraitEnvironment:(id)a3;
- (TFFeedbackFormShortTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureTextFieldForContentType:(unint64_t)a3;
- (void)_prepareForDisplayWithTraitCollection:(id)a3;
- (void)applyContentsOfEntry:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataString:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TFFeedbackFormShortTextCell

- (TFFeedbackFormShortTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = TFFeedbackFormShortTextCell;
  v4 = [(TFFeedbackFormBaseCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75BB8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v4->_textField;
    v4->_textField = v6;

    [(UITextField *)v4->_textField setDelegate:v4];
    [(UITextField *)v4->_textField setClearButtonMode:2];
    v8 = [(TFFeedbackFormShortTextCell *)v4 contentView];
    [v8 addSubview:v4->_textField];

    v9 = [(TFFeedbackFormShortTextCell *)v4 traitCollection];
    [(TFFeedbackFormShortTextCell *)v4 _prepareForDisplayWithTraitCollection:v9];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TFFeedbackFormShortTextCell;
  [(TFFeedbackFormBaseCell *)&v21 layoutSubviews];
  [TFFeedbackFormShortTextCell _textFieldInsetsInTraitEnvironment:self];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TFFeedbackFormShortTextCell *)self contentView];
  [v11 bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  v20 = [(TFFeedbackFormShortTextCell *)self textField];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormShortTextCell;
  [(TFFeedbackFormShortTextCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFFeedbackFormShortTextCell *)self traitCollection];
  [(TFFeedbackFormShortTextCell *)self _prepareForDisplayWithTraitCollection:v4];

  [(TFFeedbackFormShortTextCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = TFFeedbackFormShortTextCell;
  [(TFFeedbackFormShortTextCell *)&v10 prepareForReuse];
  v3 = [(TFFeedbackFormShortTextCell *)self textField];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];

    if (v5)
    {
      v6 = [(TFFeedbackFormBaseCell *)self updateProxy];
      v7 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
      v8 = [(TFFeedbackFormShortTextCell *)self textField];
      v9 = [v8 text];
      [v6 didUpdateEntry:v7 toString:v9 editInProgress:0];
    }
  }

  [(TFFeedbackFormShortTextCell *)self setShortTextEntry:0];
}

- (void)applyContentsOfEntry:(id)a3
{
  v8 = a3;
  if (![v8 type])
  {
    [(TFFeedbackFormShortTextCell *)self setShortTextEntry:v8];
    v4 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
    v5 = [v4 placeholder];
    v6 = [(TFFeedbackFormShortTextCell *)self textField];
    [v6 setPlaceholder:v5];

    v7 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
    -[TFFeedbackFormShortTextCell _configureTextFieldForContentType:](self, "_configureTextFieldForContentType:", [v7 contentType]);
  }
}

+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a6;
  v13 = v11;
  v14 = a4;
  v15 = [v13 identifier];
  v16 = [v14 stringForIdentifier:v15];

  if (!v16 || ![v16 length])
  {
    v17 = [v13 placeholder];

    v16 = v17;
  }

  [a1 _sizeToFitText:v16 fittingSize:v12 inTraitEnvironment:{width, height}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setDisplayedDataString:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormShortTextCell *)self textField];
  [v5 setText:v4];
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v11 = v6;
    v7 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];

    v6 = v11;
    if (v7)
    {
      v8 = [(TFFeedbackFormBaseCell *)self updateProxy];
      v9 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
      v10 = [v11 text];
      [v8 didUpdateEntry:v9 toString:v10 editInProgress:0];

      v6 = v11;
    }
  }
}

- (void)_configureTextFieldForContentType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v10 = *MEMORY[0x277D76FB8];
    v4 = 1;
    v5 = 7;
  }

  else
  {
    v10 = 0;
    v5 = 0;
    v4 = 0;
  }

  v6 = [(TFFeedbackFormShortTextCell *)self textField];
  [v6 setTextContentType:v10];

  v7 = [(TFFeedbackFormShortTextCell *)self textField];
  [v7 setKeyboardType:v5];

  v8 = [(TFFeedbackFormShortTextCell *)self textField];
  [v8 setSmartInsertDeleteType:v4];

  v9 = [(TFFeedbackFormShortTextCell *)self textField];
  [v9 setAutocorrectionType:v4];
}

- (void)_prepareForDisplayWithTraitCollection:(id)a3
{
  v5 = [TFFeedbackFormShortTextCell _createTextFieldFontWithTraitCollection:a3];
  v4 = [(TFFeedbackFormShortTextCell *)self textField];
  [v4 setFont:v5];
}

+ (CGSize)_sizeToFitText:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5
{
  width = a4.width;
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  [TFFeedbackFormShortTextCell _textFieldInsetsInTraitEnvironment:v8];
  v11 = v10;
  v13 = v12;
  v16 = width - v14 - v15;
  v30 = *MEMORY[0x277D740A8];
  v17 = [v8 traitCollection];

  v18 = [a1 _createTextFieldFontWithTraitCollection:v17];
  v31[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v9 boundingRectWithSize:2 options:v19 attributes:0 context:{v16, 1.79769313e308}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v33.origin.x = v21;
  v33.origin.y = v23;
  v33.size.width = v25;
  v33.size.height = v27;
  v28 = ceil(v13 + v11 + CGRectGetHeight(v33));
  v29 = width;
  result.height = v28;
  result.width = v29;
  return result;
}

+ (UIEdgeInsets)_textFieldInsetsInTraitEnvironment:(id)a3
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:a3];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end