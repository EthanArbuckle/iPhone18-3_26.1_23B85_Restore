@interface PXMultilineBarButtonItemFactory
+ (id)px_toolbarMultilineBarButtonItemWithTitle:(id)a3 titleColor:(id)a4 target:(id)a5 action:(SEL)a6;
@end

@implementation PXMultilineBarButtonItemFactory

+ (id)px_toolbarMultilineBarButtonItemWithTitle:(id)a3 titleColor:(id)a4 target:(id)a5 action:(SEL)a6
{
  v9 = a4;
  v10 = MEMORY[0x1E69DC738];
  v11 = a5;
  v12 = a3;
  v13 = [v10 buttonWithType:0];
  [v13 addTarget:v11 action:a6 forControlEvents:64];

  [v13 setTitle:v12 forState:0];
  if (v9)
  {
    [v13 setTitleColor:v9 forState:0];
  }

  else
  {
    v14 = [MEMORY[0x1E69DC888] labelColor];
    [v13 setTitleColor:v14 forState:0];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = [v13 titleLabel];
  [v16 setFont:v15];

  v17 = [v13 titleLabel];
  [v17 setLineBreakMode:4];

  v18 = [v13 titleLabel];
  [v18 setTextAlignment:1];

  v19 = [v13 titleLabel];
  [v19 setAdjustsFontForContentSizeCategory:1];

  v20 = [v13 titleLabel];
  [v20 setNumberOfLines:2];

  v21 = [v13 titleLabel];
  [v21 setAdjustsFontSizeToFitWidth:1];

  v22 = [v13 titleLabel];
  [v22 setMinimumScaleFactor:0.7];

  [v13 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v13];

  return v23;
}

@end