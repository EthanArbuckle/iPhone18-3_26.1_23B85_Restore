@interface UIKeyboardEmojiSplitCategoryPicker
- (UIKeyboardEmojiSplitCategoryPicker)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (id)symbolForRow:(int64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForRow:(int64_t)row fallback:(BOOL)fallback;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setRenderConfig:(id)config;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCategorySelectedIndicator:(int64_t)indicator;
- (void)updateToCategory:(int64_t)category;
@end

@implementation UIKeyboardEmojiSplitCategoryPicker

- (UIKeyboardEmojiSplitCategoryPicker)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v23.receiver = self;
  v23.super_class = UIKeyboardEmojiSplitCategoryPicker;
  height = [(UIKeyboardEmojiSplit *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    [keyCopy setClipCorners:10];
    [(UIKBKeyView *)height updateForKeyplane:keyplaneCopy key:keyCopy];
    picker = [(UIKeyboardEmojiSplit *)height picker];
    [picker setDelegate:height];

    picker2 = [(UIKeyboardEmojiSplit *)height picker];
    [picker2 setDataSource:height];

    v16 = [[UIView alloc] initWithFrame:0.0, 0.0, 200.0, 6.0];
    picker3 = [(UIKeyboardEmojiSplit *)height picker];
    [picker3 setTableHeaderView:v16];

    picker4 = [(UIKeyboardEmojiSplit *)height picker];
    [picker4 setTableFooterView:v16];

    picker5 = [(UIKeyboardEmojiSplit *)height picker];
    [picker5 setScrollEnabled:1];

    height->_whiteText = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_receiveNotifictaion_ name:@"UIKeyboardEmojiDidScrollNotification" object:0];

    v21 = height;
  }

  return height;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardEmojiDidScrollNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardEmojiSplitCategoryPicker;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v18.receiver = self;
  v18.super_class = UIKeyboardEmojiSplitCategoryPicker;
  [(UIView *)&v18 didMoveToWindow];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  lastViewedCategory = [emojiKeyManager lastViewedCategory];
  self->_currentSelected = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [lastViewedCategory categoryType]);

  picker = [(UIKeyboardEmojiSplit *)self picker];
  currentSelected = self->_currentSelected;
  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v7 preferencesActions];
  [preferencesActions rivenSizeFactor:34.0];
  v10 = v9 * currentSelected;
  picker2 = [(UIKeyboardEmojiSplit *)self picker];
  [picker2 contentSize];
  v13 = v12;
  v14 = self->_currentSelected;
  v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v15 preferencesActions];
  [preferencesActions2 rivenSizeFactor:34.0];
  [picker scrollRectToVisible:0 animated:{0.0, v10, v13, v17 * v14}];
}

- (void)updateToCategory:(int64_t)category
{
  self->_lastUsedCategory = category;
  self->_currentSelected = [UIKeyboardEmojiCategory categoryIndexForCategoryType:?];

  [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:category];
}

- (void)updateCategorySelectedIndicator:(int64_t)indicator
{
  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = [v5 count];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      picker = [(UIKeyboardEmojiSplit *)self picker];
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
      v10 = [picker cellForRowAtIndexPath:v9];

      [v10 setPressIndicatorHidden:{+[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", i) != indicator}];
    }
  }

  v11 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v12 = +[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", [v11 count] - 6);

  if (v12 == indicator)
  {
    picker2 = [(UIKeyboardEmojiSplit *)self picker];
    picker3 = [(UIKeyboardEmojiSplit *)self picker];
    [picker3 contentSize];
    v15 = v14;
    preferencesActions2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [preferencesActions2 preferencesActions];
    [preferencesActions rivenSizeFactor:34.0];
    [picker2 scrollRectToVisible:1 animated:{0.0, 0.0, v15, v18}];
  }

  else
  {
    if ([UIKeyboardEmojiCategory categoryTypeForCategoryIndex:5]!= indicator)
    {
      return;
    }

    picker2 = [(UIKeyboardEmojiSplit *)self picker];
    picker3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [picker3 preferencesActions];
    [preferencesActions2 rivenSizeFactor:34.0];
    v20 = v19 * 3.0;
    preferencesActions = [(UIKeyboardEmojiSplit *)self picker];
    [preferencesActions contentSize];
    v22 = v21;
    picker4 = [(UIKeyboardEmojiSplit *)self picker];
    [picker4 contentSize];
    v25 = v24;
    v26 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v26 preferencesActions];
    [preferencesActions3 rivenSizeFactor:34.0];
    [picker2 scrollRectToVisible:1 animated:{0.0, v20, v22, v25 - v28}];
  }
}

- (id)titleForRow:(int64_t)row fallback:(BOOL)fallback
{
  fallbackCopy = fallback;
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

  if (fallbackCopy)
  {
    v16 = qword_1ED49A968;
  }

  else
  {
    v16 = v6;
  }

  v17 = [v16 objectAtIndex:{row, v19, v20, v21, v22}];

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

- (id)symbolForRow:(int64_t)row
{
  v4 = [UIKeyboardEmojiCategory categoryForType:[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:row]];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  v6 = [UIKeyboardEmojiGraphics emojiCategoryImagePath:v4 forRenderConfig:renderConfig];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v36[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = -[UIKeyboardEmojiSplitCategoryPicker titleForRow:fallback:](self, "titleForRow:fallback:", [pathCopy row], 0);
  v7 = [[UIKeyboardEmojiSplitCategoryCell alloc] initWithStyle:0 reuseIdentifier:v6];
  v8 = -[UIKeyboardEmojiSplitCategoryPicker symbolForRow:](self, "symbolForRow:", [pathCopy row]);
  v9 = _UIImageWithName(v8);
  symbol = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
  [symbol setImage:v9];

  v35 = *off_1E70EC918;
  v11 = [off_1E70ECC18 systemFontOfSize:14.0];
  v36[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  [v6 sizeWithAttributes:v12];
  v14 = v13;

  v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v15 preferencesActions];
  [preferencesActions rivenSizeFactor:ceil(v14)];
  v18 = v17;
  title = [(UIKeyboardEmojiSplitCategoryCell *)v7 title];
  [title bounds];
  v21 = v20;

  if (v18 > v21)
  {
    v22 = -[UIKeyboardEmojiSplitCategoryPicker titleForRow:fallback:](self, "titleForRow:fallback:", [pathCopy row], 1);

    v6 = v22;
  }

  [(UIKeyboardEmojiSplitCategoryCell *)v7 setTitleText:v6];
  -[UIKeyboardEmojiSplitCategoryCell setPressIndicatorHidden:](v7, "setPressIndicatorHidden:", [pathCopy row] != self->_currentSelected);
  whiteText = [(UIKeyboardEmojiSplitCategoryPicker *)self whiteText];
  symbol2 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
  image = [symbol2 image];
  if (whiteText)
  {
    v26 = +[UIColor whiteColor];
    v27 = [image _flatImageWithColor:v26];
    symbol3 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
    [symbol3 setImage:v27];

    +[UIColor whiteColor];
  }

  else
  {
    v29 = +[UIColor blackColor];
    v30 = [image _flatImageWithColor:v29];
    symbol4 = [(UIKeyboardEmojiSplitCategoryCell *)v7 symbol];
    [symbol4 setImage:v30];

    +[UIColor blackColor];
  }
  v32 = ;
  title2 = [(UIKeyboardEmojiSplitCategoryCell *)v7 title];
  [title2 setTextColor:v32];

  [(UIKeyboardEmojiSplitCategoryCell *)v7 setSelectedCircleBlendMode:[(UIKeyboardEmojiSplitCategoryPicker *)self whiteText]^ 1];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = +[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:](UIKeyboardEmojiCategory, "categoryTypeForCategoryIndex:", [pathCopy row]);
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager reloadForCategory:v6 withSender:self];

  v8 = [pathCopy row];
  self->_currentSelected = v8;
  [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:v6];
  v10 = +[UIKeyboardImpl activeInstance];
  feedbackGenerator = [v10 feedbackGenerator];
  [feedbackGenerator actionOccurred:1];
}

- (void)setRenderConfig:(id)config
{
  v8.receiver = self;
  v8.super_class = UIKeyboardEmojiSplitCategoryPicker;
  configCopy = config;
  [(UIKBKeyView *)&v8 setRenderConfig:configCopy];
  whiteText = [configCopy whiteText];

  [(UIKeyboardEmojiSplitCategoryPicker *)self setWhiteText:whiteText];
  picker = [(UIKeyboardEmojiSplit *)self picker];
  [picker reloadData];

  picker2 = [(UIKeyboardEmojiSplit *)self picker];
  [picker2 setNeedsDisplay];

  if (self->_lastUsedCategory)
  {
    [(UIKeyboardEmojiSplitCategoryPicker *)self updateCategorySelectedIndicator:?];
  }
}

@end