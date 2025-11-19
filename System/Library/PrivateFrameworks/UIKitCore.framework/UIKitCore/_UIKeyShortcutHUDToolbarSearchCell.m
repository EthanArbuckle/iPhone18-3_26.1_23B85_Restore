@interface _UIKeyShortcutHUDToolbarSearchCell
- (_UIKeyShortcutHUDToolbarSearchCell)initWithFrame:(CGRect)a3;
- (id)defaultContentConfiguration;
@end

@implementation _UIKeyShortcutHUDToolbarSearchCell

- (_UIKeyShortcutHUDToolbarSearchCell)initWithFrame:(CGRect)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIKeyShortcutHUDToolbarSearchCell;
  v3 = [(_UIKeyShortcutHUDCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    searchIconImageView = v3->_searchIconImageView;
    v3->_searchIconImageView = v4;

    v6 = +[_UIKeyShortcutHUDUtilities searchIcon];
    [(UIImageView *)v3->_searchIconImageView setImage:v6];

    [(UIImageView *)v3->_searchIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3 addSubview:v3->_searchIconImageView];
    v7 = MEMORY[0x1E69977A0];
    v8 = [(UIView *)v3->_searchIconImageView centerXAnchor];
    v9 = [(UIView *)v3 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v18[0] = v10;
    v11 = [(UIView *)v3->_searchIconImageView centerYAnchor];
    v12 = [(UIView *)v3 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v7 activateConstraints:v14];

    v15 = [(_UIKeyShortcutHUDToolbarSearchCell *)v3 defaultContentConfiguration];
    [(UICollectionViewCell *)v3 setContentConfiguration:v15];
  }

  return v3;
}

- (id)defaultContentConfiguration
{
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDToolbarSearchCell;
  v2 = [(_UIKeyShortcutHUDCell *)&v7 defaultContentConfiguration];
  v3 = +[_UIKeyShortcutHUDUtilities searchIconAttributedString];
  [v2 setAttributedText:v3];

  v4 = +[UIColor clearColor];
  v5 = [v2 textProperties];
  [v5 setColor:v4];

  [v2 setDirectionalLayoutMargins:{0.0, 7.0, 0.0, 7.0}];

  return v2;
}

@end