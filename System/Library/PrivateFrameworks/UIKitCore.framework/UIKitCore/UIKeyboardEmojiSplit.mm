@interface UIKeyboardEmojiSplit
- (UIKeyboardEmojiSplit)initWithFrame:(CGRect)frame;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation UIKeyboardEmojiSplit

- (UIKeyboardEmojiSplit)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = UIKeyboardEmojiSplit;
  v3 = [(UIView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 bounds];
    v9 = [[UITableView alloc] initWithFrame:v5, v6, v7, v8];
    picker = v3->_picker;
    v3->_picker = v9;

    [(UITableView *)v3->_picker setSeparatorStyle:0];
    [(UITableView *)v3->_picker setDelaysContentTouches:0];
    v11 = +[UIColor clearColor];
    [(UITableView *)v3->_picker setBackgroundColor:v11];

    [(UIView *)v3 addSubview:v3->_picker];
    v12 = v3;
  }

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [UIKeyboardEmojiCategory enabledCategoryIndexes:view];
  v5 = [v4 count];

  return v5;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [UIKeyboardPreferencesController sharedPreferencesController:view];
  preferencesActions = [v4 preferencesActions];
  [preferencesActions rivenSizeFactor:200.0];
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v6 preferencesActions];
  [preferencesActions2 rivenSizeFactor:34.0];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];
}

@end