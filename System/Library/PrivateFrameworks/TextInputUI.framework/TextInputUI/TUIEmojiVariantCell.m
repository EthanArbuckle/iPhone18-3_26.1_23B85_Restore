@interface TUIEmojiVariantCell
+ (id)_createDraggableEmojiLabel;
- (TUIEmojiVariantCell)initWithFrame:(CGRect)a3 token:(id)a4;
- (TUIEmojiVariantSelectorView)variantSelectorView;
- (void)dragDidEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)dragWillBegin:(id)a3;
- (void)layoutSubviews;
@end

@implementation TUIEmojiVariantCell

- (TUIEmojiVariantSelectorView)variantSelectorView
{
  WeakRetained = objc_loadWeakRetained(&self->_variantSelectorView);

  return WeakRetained;
}

- (void)dragDidEnd:(id)a3 withOperation:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_variantSelectorView);
  v5 = [WeakRetained delegate];
  v6 = objc_loadWeakRetained(&self->_variantSelectorView);
  [v5 dragAndDropDidEnd:v6];
}

- (void)dragWillBegin:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_variantSelectorView);
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained(&self->_variantSelectorView);
  [v4 dragAndDropWillBegin:v5];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = TUIEmojiVariantCell;
  [(TUIEmojiVariantCell *)&v11 layoutSubviews];
  [(TUIEmojiVariantCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView setFrame:?];
  [(_TUIKeyboardEmojiDraggableView *)self->_labelView setFrame:v4, v6, v8, v10];
}

- (TUIEmojiVariantCell)initWithFrame:(CGRect)a3 token:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v33.receiver = self;
  v33.super_class = TUIEmojiVariantCell;
  v11 = [(TUIEmojiVariantCell *)&v33 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_emojiToken, a4);
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = [v13 initWithFrame:{*MEMORY[0x1E695F058], v15, v16, v17}];
    backgroundView = v12->_backgroundView;
    v12->_backgroundView = v18;

    v20 = [(UIView *)v12->_backgroundView layer];
    [v20 setCornerRadius:5.0];

    v21 = [(UIView *)v12->_backgroundView layer];
    [v21 setMasksToBounds:1];

    v22 = [(TUIEmojiVariantCell *)v12 tintColor];
    [(UIView *)v12->_backgroundView setBackgroundColor:v22];

    [(TUIEmojiVariantCell *)v12 addSubview:v12->_backgroundView];
    v23 = [objc_opt_class() _createDraggableEmojiLabel];
    labelView = v12->_labelView;
    v12->_labelView = v23;

    v25 = v12->_labelView;
    if (v25)
    {
      [(_TUIKeyboardEmojiDraggableView *)v25 setDelegate:v12];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v14, v15, v16, v17}];
      [v26 setTextAlignment:1];
      v27 = v12->_labelView;
      v12->_labelView = v26;
    }

    [(TUIEmojiVariantCell *)v12 addSubview:v12->_labelView];
    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    v29 = [v10 string];
    v30 = +[TUIEmojiVariantSelectorView emojiTextAttributes];
    v31 = [v28 initWithString:v29 attributes:v30];

    [(_TUIKeyboardEmojiDraggableView *)v12->_labelView setAttributedText:v31];
    [(TUIEmojiVariantCell *)v12 setHighlighted:0];
  }

  return v12;
}

+ (id)_createDraggableEmojiLabel
{
  v2 = [objc_alloc(NSClassFromString(&cfstr_Uikeyboardemoj.isa)) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setDragEnabled:_os_feature_enabled_impl()];
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end