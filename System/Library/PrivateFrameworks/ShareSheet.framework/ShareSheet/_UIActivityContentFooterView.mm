@interface _UIActivityContentFooterView
- (_UIActivityContentFooterView)initWithFrame:(CGRect)a3;
- (id)_createEditButton;
- (void)prepareForReuse;
@end

@implementation _UIActivityContentFooterView

- (_UIActivityContentFooterView)initWithFrame:(CGRect)a3
{
  v42.receiver = self;
  v42.super_class = _UIActivityContentFooterView;
  v3 = [(_UIActivityContentFooterView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIActivityContentFooterView *)v3 _createEditButton];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAccessibilityIdentifier:@"editButton"];
    [(_UIActivityContentFooterView *)v4 setEditButton:v5];
    v6 = v4;
    [(_UIActivityContentFooterView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(_UIActivityContentFooterView *)v6 editButton];
    [(_UIActivityContentFooterView *)v6 addSubview:v7];

    v8 = [MEMORY[0x1E695DF70] array];
    if (_ShareSheetSolariumEnabled())
    {
      v9 = [(_UIActivityContentFooterView *)v6 editButton];
      v10 = [v9 centerXAnchor];
      v11 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
      v12 = [v11 centerXAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      [v8 addObject:v13];

      v14 = [(_UIActivityContentFooterView *)v6 editButton];
      v15 = [v14 topAnchor];
      v16 = [(_UIActivityContentFooterView *)v6 topAnchor];
      v17 = 20.0;
      v18 = [v15 constraintEqualToAnchor:v16 constant:20.0];
      [v8 addObject:v18];
    }

    else
    {
      v19 = [MEMORY[0x1E69DC938] currentDevice];
      v20 = [v19 userInterfaceIdiom];

      v21 = [(_UIActivityContentFooterView *)v6 editButton];
      v22 = v21;
      if (v20 == 6)
      {
        v23 = [v21 centerXAnchor];
        v24 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        v25 = [v24 centerXAnchor];
        v26 = [v23 constraintEqualToAnchor:v25];
        [v8 addObject:v26];

        v14 = [(_UIActivityContentFooterView *)v6 editButton];
        v15 = [v14 centerYAnchor];
        v16 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        v18 = [v16 centerYAnchor];
        v27 = [v15 constraintGreaterThanOrEqualToAnchor:v18];
        [v8 addObject:v27];
      }

      else
      {
        v28 = [v21 leadingAnchor];
        v29 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        v30 = [v29 leadingAnchor];
        v31 = [v28 constraintEqualToAnchor:v30];
        [v8 addObject:v31];

        v32 = [(_UIActivityContentFooterView *)v6 editButton];
        v33 = [v32 trailingAnchor];
        v34 = [(_UIActivityContentFooterView *)v6 layoutMarginsGuide];
        v35 = [v34 trailingAnchor];
        v36 = [v33 constraintGreaterThanOrEqualToAnchor:v35 constant:0.0];
        [v8 addObject:v36];

        v14 = [(_UIActivityContentFooterView *)v6 editButton];
        v15 = [v14 topAnchor];
        v16 = [(_UIActivityContentFooterView *)v6 topAnchor];
        v18 = [v15 constraintEqualToAnchor:v16 constant:10.0];
        [v8 addObject:v18];
      }

      v17 = 16.0;
    }

    v37 = [(_UIActivityContentFooterView *)v6 bottomAnchor];
    v38 = [(_UIActivityContentFooterView *)v6 editButton];
    v39 = [v38 bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:v17];
    [v8 addObject:v40];

    [MEMORY[0x1E696ACD8] activateConstraints:v8];
  }

  return v4;
}

- (id)_createEditButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v5 setCornerStyle:4];
    [v5 setTitleTextAttributesTransformer:&__block_literal_global_45];
LABEL_5:
    [v2 setConfiguration:v5];

    goto LABEL_7;
  }

  if (_ShareSheetSolariumEnabled())
  {
    v5 = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];
  v9 = [v2 titleLabel];
  [v9 setFont:v8];

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
  v3 = [(_UIActivityContentFooterView *)self editButton];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

@end