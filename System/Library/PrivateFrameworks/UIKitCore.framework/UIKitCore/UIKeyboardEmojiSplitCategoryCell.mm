@interface UIKeyboardEmojiSplitCategoryCell
- (UIKeyboardEmojiSplitCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)symbolFont;
- (id)titleFont;
- (void)setSelectedCircleBlendMode:(BOOL)mode;
@end

@implementation UIKeyboardEmojiSplitCategoryCell

- (id)symbolFont
{
  v2 = _UISolariumEnabled();
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  [preferencesActions rivenSizeFactor:20.0];
  if (v2)
  {
    [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:? design:?];
  }

  else
  {
    [off_1E70ECC18 fontWithName:@".Keycaps-Keys" size:4096 traits:?];
  }
  v5 = ;

  return v5;
}

- (id)titleFont
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  [preferencesActions rivenSizeFactor:14.0];
  v4 = [off_1E70ECC18 systemFontOfSize:?];

  return v4;
}

- (UIKeyboardEmojiSplitCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v59.receiver = self;
  v59.super_class = UIKeyboardEmojiSplitCategoryCell;
  v4 = [(UITableViewCell *)&v59 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor blueColor];
    [(UITableViewCell *)v4 setBackgroundColor:v5];

    v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v6 preferencesActions];
    [preferencesActions rivenSizeFactor:200.0];
    v9 = v8;
    v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v10 preferencesActions];
    [preferencesActions2 rivenSizeFactor:34.0];
    v13 = v12;

    v14 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v14 preferencesActions];
    [preferencesActions3 rivenSizeFactor:32.0];
    v17 = 22.0 - (v16 + -32.0);

    v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions4 = [v18 preferencesActions];
    [preferencesActions4 rivenSizeFactor:32.0];
    v21 = v20;

    v22 = [[UIImageView alloc] initWithFrame:v17, 1.0, v21, v13];
    symbol = v4->_symbol;
    v4->_symbol = v22;

    v24 = +[UIColor clearColor];
    [(UIImageView *)v4->_symbol setBackgroundColor:v24];

    [(UIImageView *)v4->_symbol setContentMode:4];
    contentView = [(UITableViewCell *)v4 contentView];
    [contentView addSubview:v4->_symbol];

    v60.origin.y = 1.0;
    v60.origin.x = v17;
    v60.size.width = v21;
    v60.size.height = v13;
    v26 = CGRectGetMaxX(v60) + 6.0;
    v27 = [[UILabel alloc] initWithFrame:v26, 0.0, v9 - v26, v13];
    title = v4->_title;
    v4->_title = v27;

    [(UILabel *)v4->_title setText:&stru_1EFB14550];
    titleFont = [(UIKeyboardEmojiSplitCategoryCell *)v4 titleFont];
    [(UILabel *)v4->_title setFont:titleFont];

    v30 = +[UIColor clearColor];
    [(UIView *)v4->_title setBackgroundColor:v30];

    v31 = +[UIColor blackColor];
    [(UILabel *)v4->_title setTextColor:v31];

    [(UILabel *)v4->_title setTextAlignment:0];
    contentView2 = [(UITableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_title];

    v33 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions5 = [v33 preferencesActions];
    [preferencesActions5 rivenSizeFactor:4.0];
    v36 = v17 - v35;
    v37 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions6 = [v37 preferencesActions];
    [preferencesActions6 rivenSizeFactor:3.0];
    v40 = 1.0 - v39;
    v41 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions7 = [v41 preferencesActions];
    [preferencesActions7 rivenSizeFactor:40.0];
    v44 = v43;
    v45 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions8 = [v45 preferencesActions];
    [preferencesActions8 rivenSizeFactor:40.0];
    v48 = v47;

    v49 = [[UIView alloc] initWithFrame:v36, v40, v44, v48];
    selectedCircle = v4->_selectedCircle;
    v4->_selectedCircle = v49;

    v51 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions9 = [v51 preferencesActions];
    [preferencesActions9 rivenSizeFactor:20.0];
    v54 = v53;
    layer = [(UIView *)v4->_selectedCircle layer];
    [layer setCornerRadius:v54];

    [(UIView *)v4->_selectedCircle setHidden:1];
    contentView3 = [(UITableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_selectedCircle];

    [(UITableViewCell *)v4 setSelectionStyle:0];
    v57 = v4;
  }

  return v4;
}

- (void)setSelectedCircleBlendMode:(BOOL)mode
{
  if (mode)
  {
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CD0]];
    p_selectedCircle = &self->_selectedCircle;
    layer = [(UIView *)self->_selectedCircle layer];
    [layer setCompositingFilter:v4];

    v7 = +[UIColor blackColor];
    v8 = 1045220557;
  }

  else
  {
    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979850]];
    p_selectedCircle = &self->_selectedCircle;
    layer2 = [(UIView *)self->_selectedCircle layer];
    [layer2 setCompositingFilter:v9];

    v7 = [UIColor colorWithRed:0.380392157 green:0.380392157 blue:0.380392157 alpha:1.0];
    v8 = 1061779669;
  }

  [(UIView *)*p_selectedCircle setBackgroundColor:v7];

  layer3 = [(UIView *)*p_selectedCircle layer];
  LODWORD(v11) = v8;
  [layer3 setOpacity:v11];
}

@end