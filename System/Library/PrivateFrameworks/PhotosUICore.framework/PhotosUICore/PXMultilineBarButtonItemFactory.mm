@interface PXMultilineBarButtonItemFactory
+ (id)px_toolbarMultilineBarButtonItemWithTitle:(id)title titleColor:(id)color target:(id)target action:(SEL)action;
@end

@implementation PXMultilineBarButtonItemFactory

+ (id)px_toolbarMultilineBarButtonItemWithTitle:(id)title titleColor:(id)color target:(id)target action:(SEL)action
{
  colorCopy = color;
  v10 = MEMORY[0x1E69DC738];
  targetCopy = target;
  titleCopy = title;
  v13 = [v10 buttonWithType:0];
  [v13 addTarget:targetCopy action:action forControlEvents:64];

  [v13 setTitle:titleCopy forState:0];
  if (colorCopy)
  {
    [v13 setTitleColor:colorCopy forState:0];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v13 setTitleColor:labelColor forState:0];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel = [v13 titleLabel];
  [titleLabel setFont:v15];

  titleLabel2 = [v13 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  titleLabel3 = [v13 titleLabel];
  [titleLabel3 setTextAlignment:1];

  titleLabel4 = [v13 titleLabel];
  [titleLabel4 setAdjustsFontForContentSizeCategory:1];

  titleLabel5 = [v13 titleLabel];
  [titleLabel5 setNumberOfLines:2];

  titleLabel6 = [v13 titleLabel];
  [titleLabel6 setAdjustsFontSizeToFitWidth:1];

  titleLabel7 = [v13 titleLabel];
  [titleLabel7 setMinimumScaleFactor:0.7];

  [v13 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v13];

  return v23;
}

@end