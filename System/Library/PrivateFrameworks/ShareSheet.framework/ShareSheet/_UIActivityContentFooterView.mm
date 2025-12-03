@interface _UIActivityContentFooterView
- (_UIActivityContentFooterView)initWithFrame:(CGRect)frame;
- (id)_createEditButton;
- (void)prepareForReuse;
@end

@implementation _UIActivityContentFooterView

- (_UIActivityContentFooterView)initWithFrame:(CGRect)frame
{
  v42.receiver = self;
  v42.super_class = _UIActivityContentFooterView;
  v3 = [(_UIActivityContentFooterView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _createEditButton = [(_UIActivityContentFooterView *)v3 _createEditButton];
    [_createEditButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [_createEditButton setAccessibilityIdentifier:@"editButton"];
    [(_UIActivityContentFooterView *)v4 setEditButton:_createEditButton];
    v6 = v4;
    [(_UIActivityContentFooterView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    editButton = [(_UIActivityContentFooterView *)v6 editButton];
    [(_UIActivityContentFooterView *)v6 addSubview:editButton];

    array = [MEMORY[0x1E695DF70] array];
    if (_ShareSheetSolariumEnabled())
    {
      editButton2 = [(_UIActivityContentFooterView *)v6 editButton];
      centerXAnchor = [editButton2 centerXAnchor];
      layoutMarginsGuide = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
      centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [array addObject:v13];

      editButton3 = [(_UIActivityContentFooterView *)v6 editButton];
      topAnchor = [editButton3 topAnchor];
      topAnchor2 = [(_UIActivityContentFooterView *)v6 topAnchor];
      v17 = 20.0;
      centerYAnchor = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
      [array addObject:centerYAnchor];
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      editButton4 = [(_UIActivityContentFooterView *)v6 editButton];
      v22 = editButton4;
      if (userInterfaceIdiom == 6)
      {
        centerXAnchor3 = [editButton4 centerXAnchor];
        layoutMarginsGuide2 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        centerXAnchor4 = [layoutMarginsGuide2 centerXAnchor];
        v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        [array addObject:v26];

        editButton3 = [(_UIActivityContentFooterView *)v6 editButton];
        topAnchor = [editButton3 centerYAnchor];
        topAnchor2 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        centerYAnchor = [topAnchor2 centerYAnchor];
        v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor];
        [array addObject:v27];
      }

      else
      {
        leadingAnchor = [editButton4 leadingAnchor];
        layoutMarginsGuide3 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
        v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [array addObject:v31];

        editButton5 = [(_UIActivityContentFooterView *)v6 editButton];
        trailingAnchor = [editButton5 trailingAnchor];
        layoutMarginsGuide4 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
        v36 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:0.0];
        [array addObject:v36];

        editButton3 = [(_UIActivityContentFooterView *)v6 editButton];
        topAnchor = [editButton3 topAnchor];
        topAnchor2 = [(_UIActivityContentFooterView *)v6 topAnchor];
        centerYAnchor = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
        [array addObject:centerYAnchor];
      }

      v17 = 16.0;
    }

    bottomAnchor = [(_UIActivityContentFooterView *)v6 bottomAnchor];
    editButton6 = [(_UIActivityContentFooterView *)v6 editButton];
    bottomAnchor2 = [editButton6 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v17];
    [array addObject:v40];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v4;
}

- (id)_createEditButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_45];
LABEL_5:
    [v2 setConfiguration:filledButtonConfiguration];

    goto LABEL_7;
  }

  if (_ShareSheetSolariumEnabled())
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  titleLabel = [v2 titleLabel];
  [titleLabel setFont:v8];

  [v2 setContentHorizontalAlignment:4];
  [v2 setContentVerticalAlignment:1];
LABEL_7:

  return v2;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _UIActivityContentFooterView;
  [(_UIActivityContentFooterView *)&v4 prepareForReuse];
  editButton = [(_UIActivityContentFooterView *)self editButton];
  [editButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

@end