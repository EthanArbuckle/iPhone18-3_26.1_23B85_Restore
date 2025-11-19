@interface UIKeyboardEmojiSplitCategoryPicker
- (UIKeyboardEmojiSplitCategoryPicker)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (id)symbolForRow:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForRow:(int64_t)a3 fallback:(BOOL)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setRenderConfig:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCategorySelectedIndicator:(int64_t)a3;
- (void)updateToCategory:(int64_t)a3;
@end

@implementation UIKeyboardEmojiSplitCategoryPicker

- (UIKeyboardEmojiSplitCategoryPicker)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v23.receiver = self;
  v23.super_class = UIKeyboardEmojiSplitCategoryPicker;
  v13 = [(UIKeyboardEmojiSplit *)&v23 initWithFrame:x, y, width, height];
  if (v13)
  {
    [v12 setClipCorners:10];
    [(UIKBKeyView *)v13 updateForKeyplane:v11 key:v12];
    v14 = [(UIKeyboardEmojiSplit *)v13 picker];
    [v14 setDelegate:v13];

    v15 = [(UIKeyboardEmojiSplit *)v13 picker];
    [v15 setDataSource:v13];

    v16 = [[UIView alloc] initWithFrame:0.0, 0.0, 200.0, 6.0];
    v17 = [(UIKeyboardEmojiSplit *)v13 picker];
    [v17 setTableHeaderView:v16];

    v18 = [(UIKeyboardEmojiSplit *)v13 picker];
    [v18 setTableFooterView:v16];

    v19 = [(UIKeyboardEmojiSplit *)v13 picker];
    [v19 setScrollEnabled:1];

    v13->_whiteText = 0;
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v13 selector:sel_receiveNotifictaion_ name:@"UIKeyboardEmojiDidScrollNotification" object:0];

    v21 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardEmojiDidScrollNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardEmojiSplitCategoryPicker;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v18.receiver = self;
  v18.super_class = UIKeyboardEmojiSplitCategoryPicker;
  [(UIView *)&v18 didMoveToWindow];
  v3 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v4 = [v3 lastViewedCategory];
  self->_currentSelected = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v4 categoryType]);

  v5 = [(UIKeyboardEmojiSplit *)self picker];
  currentSelected = self->_currentSelected;
  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v8 = [v7 preferencesActions];
  [v8 rivenSizeFactor:34.0];
  v10 = v9 * currentSelected;
  v11 = [(UIKeyboardEmojiSplit *)self picker];
  [v11 contentSize];
  v13 = v12;
  v14 = self->_currentSelected;
  v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v16 = [v15 preferencesActions];
  [v16 rivenSizeFactor:34.0];
  [v5 scrollRectToVisible:0 animated:{0.0, v10, v13, v17 * v14}];
}

- (void)updateToCategory:(int64_t)a3
{
  self->_lastUsedCategory = a3;
  self->_currentSelected = [UIKeyboardEmojiCategory categoryIndexForCategoryType:?];

  [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:a3];
}

- (void)updateCategorySelectedIndicator:(int64_t)a3
{
  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = [v5 count];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [(UIKeyboardEmojiSplit *)self picker];
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
      v10 = [v8 cellForRowAtIndexPath:v9];

      [v10 setPressIndicatorHidden:{+[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", i) != a3}];
    }
  }

  v11 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v12 = +[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", [v11 count] - 6);

  if (v12 == a3)
  {
    v29 = [(UIKeyboardEmojiSplit *)self picker];
    v13 = [(UIKeyboardEmojiSplit *)self picker];
    [v13 contentSize];
    v15 = v14;
    v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v17 = [v16 preferencesActions];
    [v17 rivenSizeFactor:34.0];
    [v29 scrollRectToVisible:1 animated:{0.0, 0.0, v15, v18}];
  }

  else
  {
    if ([UIKeyboardEmojiCategory categoryTypeForCategoryIndex:5]!= a3)
    {
      return;
    }

    v29 = [(UIKeyboardEmojiSplit *)self picker];
    v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v16 = [v13 preferencesActions];
    [v16 rivenSizeFactor:34.0];
    v20 = v19 * 3.0;
    v17 = [(UIKeyboardEmojiSplit *)self picker];
    [v17 contentSize];
    v22 = v21;
    v23 = [(UIKeyboardEmojiSplit *)self picker];
    [v23 contentSize];
    v25 = v24;
    v26 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v27 = [v26 preferencesActions];
    [v27 rivenSizeFactor:34.0];
    [v29 scrollRectToVisible:1 animated:{0.0, v20, v22, v25 - v28}];
  }
}

- (id)titleForRow:(int64_t)a3 fallback:(BOOL)a4
{
  v4 = a4;
  v6 = _MergedGlobals_11_7;
  if (!_MergedGlobals_11_7)
  {
    v7 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __59__UIKeyboardEmojiSplitCategoryPicker_titleForRow_fallback___block_invoke;
    v22 = &unk_1E7114148;
    v10 = v8;
    v23 = v10;
    v11 = v9;
    v24 = v11;
    [v7 enumerateObjectsUsingBlock:&v19];
    v12 = _MergedGlobals_11_7;
    _MergedGlobals_11_7 = v10;
    v13 = v10;

    v14 = qword_1ED49A968;
    qword_1ED49A968 = v11;
    v15 = v11;

    v6 = _MergedGlobals_11_7;
  }

  if (v4)
  {
    v16 = qword_1ED49A968;
  }

  else
  {
    v16 = v6;
  }

  v17 = [v16 objectAtIndex:{a3, v19, v20, v21, v22}];

  return v17;
}

void __59__UIKeyboardEmojiSplitCategoryPicker_titleForRow_fallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = [UIKeyboardEmojiCategory displayName:v3];
  [v4 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [UIKeyboardEmojiCategory fallbackDisplayName:v3];
  [v6 addObject:v7];
}

- (id)symbolForRow:(int64_t)a3
{
  v4 = [UIKeyboardEmojiCategory categoryForType:[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:a3]];
  v5 = [(UIKBKeyView *)self renderConfig];
  v6 = [UIKeyboardEmojiGraphics emojiCategoryImagePath:v4 forRenderConfig:v5];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[UIKeyboardEmojiSplitCategoryPicker titleForRow:fallback:](self, "titleForRow:fallback:", [v5 row], 0);
  v7 = [[UIKeyboardEmojiSplitCategoryCell alloc] initWithStyle:0 reuseIdentifier:v6];
  v8 = -[UIKeyboardEmojiSplitCategoryPicker symbolForRow:](self, "symbolForRow:", [v5 row]);
  v9 = _UIImageWithName(v8);
  v10 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
  [v10 setImage:v9];

  v35 = *off_1E70EC918;
  v11 = [off_1E70ECC18 systemFontOfSize:14.0];
  v36[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  [v6 sizeWithAttributes:v12];
  v14 = v13;

  v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v16 = [v15 preferencesActions];
  [v16 rivenSizeFactor:ceil(v14)];
  v18 = v17;
  v19 = [(UIKeyboardEmojiSplitCategoryCell *)v7 title];
  [v19 bounds];
  v21 = v20;

  if (v18 > v21)
  {
    v22 = -[UIKeyboardEmojiSplitCategoryPicker titleForRow:fallback:](self, "titleForRow:fallback:", [v5 row], 1);

    v6 = v22;
  }

  [(UIKeyboardEmojiSplitCategoryCell *)v7 setTitleText:v6];
  -[UIKeyboardEmojiSplitCategoryCell setPressIndicatorHidden:](v7, "setPressIndicatorHidden:", [v5 row] != self->_currentSelected);
  v23 = [(UIKeyboardEmojiSplitCategoryPicker *)self whiteText];
  v24 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
  v25 = [v24 image];
  if (v23)
  {
    v26 = +[UIColor whiteColor];
    v27 = [v25 _flatImageWithColor:v26];
    v28 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
    [v28 setImage:v27];

    +[UIColor whiteColor];
  }

  else
  {
    v29 = +[UIColor blackColor];
    v30 = [v25 _flatImageWithColor:v29];
    v31 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
    [v31 setImage:v30];

    +[UIColor blackColor];
  }
  v32 = ;
  v33 = [(UIKeyboardEmojiSplitCategoryCell *)v7 title];
  [v33 setTextColor:v32];

  [(UIKeyboardEmojiSplitCategoryCell *)v7 setSelectedCircleBlendMode:[(UIKeyboardEmojiSplitCategoryPicker *)self whiteText]^ 1];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = +[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", [v5 row]);
  v7 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v7 reloadForCategory:v6 withSender:self];

  v8 = [v5 row];
  self->_currentSelected = v8;
  [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:v6];
  v10 = +[UIKeyboardImpl activeInstance];
  v9 = [v10 feedbackGenerator];
  [v9 actionOccurred:1];
}

- (void)setRenderConfig:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIKeyboardEmojiSplitCategoryPicker;
  v4 = a3;
  [(UIKBKeyView *)&v8 setRenderConfig:v4];
  v5 = [v4 whiteText];

  [(UIKeyboardEmojiSplitCategoryPicker *)self setWhiteText:v5];
  v6 = [(UIKeyboardEmojiSplit *)self picker];
  [v6 reloadData];

  v7 = [(UIKeyboardEmojiSplit *)self picker];
  [v7 setNeedsDisplay];

  if (self->_lastUsedCategory)
  {
    [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:?];
  }
}

@end