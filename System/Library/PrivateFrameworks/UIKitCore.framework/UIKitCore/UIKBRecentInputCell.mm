@interface UIKBRecentInputCell
+ (id)textColorForRenderConfig:(id)config isSelected:(BOOL)selected;
+ (id)titleAttributesForRenderConfig:(id)config;
- (UIKBRecentInputCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setInputText:(id)text;
- (void)setSelected:(BOOL)selected;
@end

@implementation UIKBRecentInputCell

- (UIKBRecentInputCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIKBRecentInputCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 _setFocusStyle:1];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  v8.receiver = self;
  v8.super_class = UIKBRecentInputCell;
  [(UICollectionViewCell *)&v8 setSelected:selected];
  v4 = objc_opt_class();
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v6 = [v4 textColorForRenderConfig:_inheritedRenderConfig isSelected:{-[UICollectionViewCell isSelected](self, "isSelected")}];
  label = [(UIKBRecentInputCell *)self label];
  [label setTextColor:v6];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIKBRecentInputCell;
  [(UICollectionViewCell *)&v12 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3 + 20.0;
  v6 = v5 + -20.0;
  v8 = v7 + 9.0;
  v10 = v9 + -9.0;
  label = [(UIKBRecentInputCell *)self label];
  [label setFrame:{v4, v8, v6, v10}];
}

- (void)setInputText:(id)text
{
  textCopy = text;
  label = [(UIKBRecentInputCell *)self label];

  if (!label)
  {
    v6 = [UILabel alloc];
    [(UIView *)self bounds];
    v7 = [(UILabel *)v6 initWithFrame:?];
    contentView = [(UICollectionViewCell *)self contentView];
    [contentView addSubview:v7];

    [(UIKBRecentInputCell *)self setLabel:v7];
  }

  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = objc_opt_class();
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v11 = [v10 titleAttributesForRenderConfig:_inheritedRenderConfig];
  v12 = [v9 initWithString:textCopy attributes:v11];

  label2 = [(UIKBRecentInputCell *)self label];
  [label2 setAttributedText:v12];
}

+ (id)textColorForRenderConfig:(id)config isSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([config lightKeyboard])
  {
    v5 = 0.0;
  }

  else
  {
    if (selectedCopy)
    {
      v6 = +[UIColor blackColor];
      goto LABEL_7;
    }

    v5 = 1.0;
  }

  v6 = [UIColor colorWithWhite:v5 alpha:0.6];
LABEL_7:

  return v6;
}

+ (id)titleAttributesForRenderConfig:(id)config
{
  v4 = qword_1ED49A760;
  configCopy = config;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED49A760, &__block_literal_global_354);
  }

  v6 = [_MergedGlobals_5_16 mutableCopy];
  v7 = [self textColorForRenderConfig:configCopy isSelected:0];

  [v6 setObject:v7 forKey:*off_1E70EC920];

  return v6;
}

void __54__UIKBRecentInputCell_titleAttributesForRenderConfig___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *off_1E70EC918;
  v0 = [off_1E70ECC18 systemFontOfSize:36.0];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = _MergedGlobals_5_16;
  _MergedGlobals_5_16 = v1;
}

@end