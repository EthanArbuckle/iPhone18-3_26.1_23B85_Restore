@interface UIKeyboardEmojiSplit
- (UIKeyboardEmojiSplit)initWithFrame:(CGRect)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation UIKeyboardEmojiSplit

- (UIKeyboardEmojiSplit)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = UIKeyboardEmojiSplit;
  v3 = [(UIView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [UIKeyboardEmojiCategory enabledCategoryIndexes:a3];
  v5 = [v4 count];

  return v5;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [UIKeyboardPreferencesController sharedPreferencesController:a3];
  v5 = [v4 preferencesActions];
  [v5 rivenSizeFactor:200.0];
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v6 preferencesActions];
  [v7 rivenSizeFactor:34.0];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];
}

@end