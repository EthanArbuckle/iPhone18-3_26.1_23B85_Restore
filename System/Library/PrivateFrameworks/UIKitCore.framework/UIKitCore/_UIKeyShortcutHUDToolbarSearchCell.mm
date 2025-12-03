@interface _UIKeyShortcutHUDToolbarSearchCell
- (_UIKeyShortcutHUDToolbarSearchCell)initWithFrame:(CGRect)frame;
- (id)defaultContentConfiguration;
@end

@implementation _UIKeyShortcutHUDToolbarSearchCell

- (_UIKeyShortcutHUDToolbarSearchCell)initWithFrame:(CGRect)frame
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIKeyShortcutHUDToolbarSearchCell;
  v3 = [(_UIKeyShortcutHUDCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    centerXAnchor = [(UIView *)v3->_searchIconImageView centerXAnchor];
    centerXAnchor2 = [(UIView *)v3 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[0] = v10;
    centerYAnchor = [(UIView *)v3->_searchIconImageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v7 activateConstraints:v14];

    defaultContentConfiguration = [(_UIKeyShortcutHUDToolbarSearchCell *)v3 defaultContentConfiguration];
    [(UICollectionViewCell *)v3 setContentConfiguration:defaultContentConfiguration];
  }

  return v3;
}

- (id)defaultContentConfiguration
{
  v7.receiver = self;
  v7.super_class = _UIKeyShortcutHUDToolbarSearchCell;
  defaultContentConfiguration = [(_UIKeyShortcutHUDCell *)&v7 defaultContentConfiguration];
  v3 = +[_UIKeyShortcutHUDUtilities searchIconAttributedString];
  [defaultContentConfiguration setAttributedText:v3];

  v4 = +[UIColor clearColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:v4];

  [defaultContentConfiguration setDirectionalLayoutMargins:{0.0, 7.0, 0.0, 7.0}];

  return defaultContentConfiguration;
}

@end