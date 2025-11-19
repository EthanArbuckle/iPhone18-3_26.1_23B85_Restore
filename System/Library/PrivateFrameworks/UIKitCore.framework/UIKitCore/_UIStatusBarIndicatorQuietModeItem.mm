@interface _UIStatusBarIndicatorQuietModeItem
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)a3;
- (_UIStatusBarImageView)emphasizedImageView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)imageViewForIdentifier:(id)a3;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_emphasizedImageView;
@end

@implementation _UIStatusBarIndicatorQuietModeItem

- (_UIStatusBarImageView)emphasizedImageView
{
  emphasizedImageView = self->_emphasizedImageView;
  if (!emphasizedImageView)
  {
    [(_UIStatusBarIndicatorQuietModeItem *)self _create_emphasizedImageView];
    emphasizedImageView = self->_emphasizedImageView;
  }

  return emphasizedImageView;
}

- (void)_create_emphasizedImageView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  emphasizedImageView = self->_emphasizedImageView;
  self->_emphasizedImageView = v4;

  v6 = self->_emphasizedImageView;

  [(_UIStatusBarImageView *)v6 setFontStyle:1];
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() emphasizedQuietModeIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarIndicatorQuietModeItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (id)imageViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() emphasizedQuietModeIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarIndicatorQuietModeItem *)self emphasizedImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarIndicatorQuietModeItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v9 imageViewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() emphasizedQuietModeIdentifier];
  if (v5 == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIStatusBarIndicatorQuietModeItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v8 shouldUpdateIndicatorForIdentifier:v4];
  }

  return v6;
}

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 quietModeEntry];
  v5 = [v4 imageName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"moon.fill";
  }

  v8 = v7;

  return v7;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _UIStatusBarIndicatorQuietModeItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v19 applyUpdate:v6 toDisplayItem:v7];
  if ([v6 dataChanged])
  {
    v9 = [v6 data];
    v10 = [v9 quietModeEntry];
    v11 = [v10 BOOLValue];

    v12 = 0.3;
    if (v11)
    {
      v12 = 1.0;
    }

    [v7 setViewAlpha:v12];
    v13 = [v7 identifier];
    v14 = [(_UIStatusBarIndicatorQuietModeItem *)self imageViewForIdentifier:v13];
    [v14 setUseDisabledAppearanceForAccessibilityHUD:v11 ^ 1u];

    v15 = [v6 data];
    v16 = [v15 quietModeEntry];
    v17 = [v16 focusName];
    [(_UIStatusBarIndicatorQuietModeItem *)self setFocusName:v17];
  }

  return v8;
}

@end