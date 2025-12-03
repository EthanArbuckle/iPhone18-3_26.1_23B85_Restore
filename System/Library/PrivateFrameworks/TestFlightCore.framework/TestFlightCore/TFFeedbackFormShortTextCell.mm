@interface TFFeedbackFormShortTextCell
+ (CGSize)_sizeToFitText:(id)text fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (UIEdgeInsets)_textFieldInsetsInTraitEnvironment:(id)environment;
- (TFFeedbackFormShortTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureTextFieldForContentType:(unint64_t)type;
- (void)_prepareForDisplayWithTraitCollection:(id)collection;
- (void)applyContentsOfEntry:(id)entry;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataString:(id)string;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TFFeedbackFormShortTextCell

- (TFFeedbackFormShortTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = TFFeedbackFormShortTextCell;
  v4 = [(TFFeedbackFormBaseCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75BB8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v4->_textField;
    v4->_textField = v6;

    [(UITextField *)v4->_textField setDelegate:v4];
    [(UITextField *)v4->_textField setClearButtonMode:2];
    contentView = [(TFFeedbackFormShortTextCell *)v4 contentView];
    [contentView addSubview:v4->_textField];

    traitCollection = [(TFFeedbackFormShortTextCell *)v4 traitCollection];
    [(TFFeedbackFormShortTextCell *)v4 _prepareForDisplayWithTraitCollection:traitCollection];
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
  contentView = [(TFFeedbackFormShortTextCell *)self contentView];
  [contentView bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  textField = [(TFFeedbackFormShortTextCell *)self textField];
  [textField setFrame:{v13, v15, v17, v19}];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormShortTextCell;
  [(TFFeedbackFormShortTextCell *)&v5 traitCollectionDidChange:change];
  traitCollection = [(TFFeedbackFormShortTextCell *)self traitCollection];
  [(TFFeedbackFormShortTextCell *)self _prepareForDisplayWithTraitCollection:traitCollection];

  [(TFFeedbackFormShortTextCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = TFFeedbackFormShortTextCell;
  [(TFFeedbackFormShortTextCell *)&v10 prepareForReuse];
  textField = [(TFFeedbackFormShortTextCell *)self textField];
  isFirstResponder = [textField isFirstResponder];

  if (isFirstResponder)
  {
    shortTextEntry = [(TFFeedbackFormShortTextCell *)self shortTextEntry];

    if (shortTextEntry)
    {
      updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
      shortTextEntry2 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
      textField2 = [(TFFeedbackFormShortTextCell *)self textField];
      text = [textField2 text];
      [updateProxy didUpdateEntry:shortTextEntry2 toString:text editInProgress:0];
    }
  }

  [(TFFeedbackFormShortTextCell *)self setShortTextEntry:0];
}

- (void)applyContentsOfEntry:(id)entry
{
  entryCopy = entry;
  if (![entryCopy type])
  {
    [(TFFeedbackFormShortTextCell *)self setShortTextEntry:entryCopy];
    shortTextEntry = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
    placeholder = [shortTextEntry placeholder];
    textField = [(TFFeedbackFormShortTextCell *)self textField];
    [textField setPlaceholder:placeholder];

    shortTextEntry2 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
    -[TFFeedbackFormShortTextCell _configureTextFieldForContentType:](self, "_configureTextFieldForContentType:", [shortTextEntry2 contentType]);
  }
}

+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  height = size.height;
  width = size.width;
  entryCopy = entry;
  environmentCopy = environment;
  v13 = entryCopy;
  sourceCopy = source;
  identifier = [v13 identifier];
  v16 = [sourceCopy stringForIdentifier:identifier];

  if (!v16 || ![v16 length])
  {
    placeholder = [v13 placeholder];

    v16 = placeholder;
  }

  [self _sizeToFitText:v16 fittingSize:environmentCopy inTraitEnvironment:{width, height}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setDisplayedDataString:(id)string
{
  stringCopy = string;
  textField = [(TFFeedbackFormShortTextCell *)self textField];
  [textField setText:stringCopy];
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  if (!reason)
  {
    v11 = editingCopy;
    shortTextEntry = [(TFFeedbackFormShortTextCell *)self shortTextEntry];

    editingCopy = v11;
    if (shortTextEntry)
    {
      updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
      shortTextEntry2 = [(TFFeedbackFormShortTextCell *)self shortTextEntry];
      text = [v11 text];
      [updateProxy didUpdateEntry:shortTextEntry2 toString:text editInProgress:0];

      editingCopy = v11;
    }
  }
}

- (void)_configureTextFieldForContentType:(unint64_t)type
{
  if (type == 1)
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

  textField = [(TFFeedbackFormShortTextCell *)self textField];
  [textField setTextContentType:v10];

  textField2 = [(TFFeedbackFormShortTextCell *)self textField];
  [textField2 setKeyboardType:v5];

  textField3 = [(TFFeedbackFormShortTextCell *)self textField];
  [textField3 setSmartInsertDeleteType:v4];

  textField4 = [(TFFeedbackFormShortTextCell *)self textField];
  [textField4 setAutocorrectionType:v4];
}

- (void)_prepareForDisplayWithTraitCollection:(id)collection
{
  v5 = [TFFeedbackFormShortTextCell _createTextFieldFontWithTraitCollection:collection];
  textField = [(TFFeedbackFormShortTextCell *)self textField];
  [textField setFont:v5];
}

+ (CGSize)_sizeToFitText:(id)text fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  width = size.width;
  v31[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  textCopy = text;
  [TFFeedbackFormShortTextCell _textFieldInsetsInTraitEnvironment:environmentCopy];
  v11 = v10;
  v13 = v12;
  v16 = width - v14 - v15;
  v30 = *MEMORY[0x277D740A8];
  traitCollection = [environmentCopy traitCollection];

  v18 = [self _createTextFieldFontWithTraitCollection:traitCollection];
  v31[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [textCopy boundingRectWithSize:2 options:v19 attributes:0 context:{v16, 1.79769313e308}];
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

+ (UIEdgeInsets)_textFieldInsetsInTraitEnvironment:(id)environment
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:environment];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end