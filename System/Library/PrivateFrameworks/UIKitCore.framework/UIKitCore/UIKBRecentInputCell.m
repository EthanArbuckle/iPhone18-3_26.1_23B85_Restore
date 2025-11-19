@interface UIKBRecentInputCell
+ (id)textColorForRenderConfig:(id)a3 isSelected:(BOOL)a4;
+ (id)titleAttributesForRenderConfig:(id)a3;
- (UIKBRecentInputCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setInputText:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation UIKBRecentInputCell

- (UIKBRecentInputCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIKBRecentInputCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 _setFocusStyle:1];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = UIKBRecentInputCell;
  [(UICollectionViewCell *)&v8 setSelected:a3];
  v4 = objc_opt_class();
  v5 = [(UIView *)self _inheritedRenderConfig];
  v6 = [v4 textColorForRenderConfig:v5 isSelected:{-[UICollectionViewCell isSelected](self, "isSelected")}];
  v7 = [(UIKBRecentInputCell *)self label];
  [v7 setTextColor:v6];
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
  v11 = [(UIKBRecentInputCell *)self label];
  [v11 setFrame:{v4, v8, v6, v10}];
}

- (void)setInputText:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRecentInputCell *)self label];

  if (!v5)
  {
    v6 = [UILabel alloc];
    [(UIView *)self bounds];
    v7 = [(UILabel *)v6 initWithFrame:?];
    v8 = [(UICollectionViewCell *)self contentView];
    [v8 addSubview:v7];

    [(UIKBRecentInputCell *)self setLabel:v7];
  }

  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = objc_opt_class();
  v14 = [(UIView *)self _inheritedRenderConfig];
  v11 = [v10 titleAttributesForRenderConfig:v14];
  v12 = [v9 initWithString:v4 attributes:v11];

  v13 = [(UIKBRecentInputCell *)self label];
  [v13 setAttributedText:v12];
}

+ (id)textColorForRenderConfig:(id)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  if ([a3 lightKeyboard])
  {
    v5 = 0.0;
  }

  else
  {
    if (v4)
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

+ (id)titleAttributesForRenderConfig:(id)a3
{
  v4 = qword_1ED49A760;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED49A760, &__block_literal_global_354);
  }

  v6 = [_MergedGlobals_5_16 mutableCopy];
  v7 = [a1 textColorForRenderConfig:v5 isSelected:0];

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