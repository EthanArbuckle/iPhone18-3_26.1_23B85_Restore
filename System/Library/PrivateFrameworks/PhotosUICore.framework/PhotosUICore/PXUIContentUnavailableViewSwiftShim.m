@interface PXUIContentUnavailableViewSwiftShim
+ (id)lemonade_defaultFeedConfigurationWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 buttonTitle:(id)a6 buttonIsEnabled:(BOOL)a7 buttonAction:(id)a8;
+ (id)lemonade_defaultRowConfigurationWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 buttonTitle:(id)a6 buttonIsEnabled:(BOOL)a7 buttonAction:(id)a8;
- (PXUIContentUnavailableViewSwiftShim)init;
- (UIContentUnavailableView)unavailableView;
- (void)updateConfiguration:(id)a3;
@end

@implementation PXUIContentUnavailableViewSwiftShim

- (void)updateConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PXUIContentUnavailableViewSwiftShim *)self unavailableView];
  [v5 setConfiguration:v4];
}

- (UIContentUnavailableView)unavailableView
{
  view = self->_view;
  if (!view)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC8D0]);
    v5 = [PXUIContentUnavailableViewSwiftShim lemonade_defaultRowConfigurationWithTitle:0 subtitle:0 systemImageName:0 buttonTitle:0 buttonIsEnabled:0 buttonAction:0];
    v6 = [v4 initWithConfiguration:v5];
    v7 = self->_view;
    self->_view = v6;

    view = self->_view;
  }

  return view;
}

- (PXUIContentUnavailableViewSwiftShim)init
{
  v3.receiver = self;
  v3.super_class = PXUIContentUnavailableViewSwiftShim;
  return [(PXUIContentUnavailableViewSwiftShim *)&v3 init];
}

+ (id)lemonade_defaultFeedConfigurationWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 buttonTitle:(id)a6 buttonIsEnabled:(BOOL)a7 buttonAction:(id)a8
{
  v8 = [a1 lemonade_defaultRowConfigurationWithTitle:a3 subtitle:a4 systemImageName:a5 buttonTitle:a6 buttonIsEnabled:a7 buttonAction:a8];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [v8 imageProperties];
  [v10 setTintColor:v9];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  v12 = [v8 textProperties];
  [v12 setColor:v11];

  v13 = [MEMORY[0x1E69DC888] labelColor];
  v14 = [v8 secondaryTextProperties];
  [v14 setColor:v13];

  if (objc_opt_respondsToSelector())
  {
    v15 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v8 setBackground:v15];
  }

  return v8;
}

+ (id)lemonade_defaultRowConfigurationWithTitle:(id)a3 subtitle:(id)a4 systemImageName:(id)a5 buttonTitle:(id)a6 buttonIsEnabled:(BOOL)a7 buttonAction:(id)a8
{
  v43 = a7;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = MEMORY[0x1E69DC8C8];
  v17 = a4;
  v18 = [v16 emptyConfiguration];
  v19 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8]];
  v20 = [v18 imageProperties];
  [v20 setPreferredSymbolConfiguration:v19];

  v21 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v22 = [v18 imageProperties];
  [v22 setTintColor:v21];

  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v24 = [v18 textProperties];
  [v24 setFont:v23];

  v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v26 = [v18 textProperties];
  [v26 setColor:v25];

  v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v28 = [v18 secondaryTextProperties];
  [v28 setFont:v27];

  v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v30 = [v18 secondaryTextProperties];
  [v30 setColor:v29];

  [v18 setImageToTextPadding:8.0];
  [v18 setTextToSecondaryTextPadding:4.0];
  [v18 setTextToButtonPadding:12.0];
  [v18 setButtonToSecondaryButtonPadding:12.0];
  if (objc_opt_respondsToSelector())
  {
    [v18 setDirectionalLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v32 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [v31 setBackgroundColor:v32];

    [v18 setBackground:v31];
  }

  [v18 setText:v12];
  [v18 setSecondaryText:v17];

  if (v13)
  {
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13];
    [v18 setImage:v33];
  }

  else
  {
    [v18 setImage:0];
  }

  v34 = [v18 buttonProperties];
  v35 = [v34 configuration];
  v36 = v35;
  if (v15)
  {
    [v35 setTitle:v14];

    v37 = [v18 buttonProperties];
    [v37 setEnabled:v43];

    v38 = [v18 buttonProperties];
    v39 = v38;
    v40 = v15;
  }

  else
  {
    [v35 setTitle:0];

    v41 = [v18 buttonProperties];
    [v41 setEnabled:1];

    v38 = [v18 buttonProperties];
    v39 = v38;
    v40 = 0;
  }

  [v38 setPrimaryAction:v40];

  return v18;
}

@end