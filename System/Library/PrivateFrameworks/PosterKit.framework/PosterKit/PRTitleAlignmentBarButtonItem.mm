@interface PRTitleAlignmentBarButtonItem
+ (id)buttonConfigurationForTitleAlignment:(unint64_t)alignment;
+ (id)defaultImage;
- (PRTitleAlignmentBarButtonItem)initWithTitleAlignment:(unint64_t)alignment target:(id)target action:(SEL)action;
- (void)setTitleAlignment:(unint64_t)alignment;
@end

@implementation PRTitleAlignmentBarButtonItem

+ (id)defaultImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v4 = [v2 _systemImageNamed:@"kashida.arabic" withConfiguration:v3];

  return v4;
}

+ (id)buttonConfigurationForTitleAlignment:(unint64_t)alignment
{
  if (alignment == 1)
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  }

  else
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [filledButtonConfiguration setBaseForegroundColor:labelColor];
  }

  background = [filledButtonConfiguration background];
  [background setCornerRadius:10.0];

  [filledButtonConfiguration setButtonSize:1];
  v6 = +[PRTitleAlignmentBarButtonItem defaultImage];
  [filledButtonConfiguration setImage:v6];

  return filledButtonConfiguration;
}

- (void)setTitleAlignment:(unint64_t)alignment
{
  v5 = [PRTitleAlignmentBarButtonItem buttonConfigurationForTitleAlignment:?];
  [(UIButton *)self->_button setConfiguration:v5];
  self->_titleAlignment = alignment;
}

- (PRTitleAlignmentBarButtonItem)initWithTitleAlignment:(unint64_t)alignment target:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [PRTitleAlignmentBarButtonItem buttonConfigurationForTitleAlignment:alignment];
  v10 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:0];
  [v10 addTarget:targetCopy action:action forControlEvents:64];

  v14.receiver = self;
  v14.super_class = PRTitleAlignmentBarButtonItem;
  v11 = [(PRTitleAlignmentBarButtonItem *)&v14 initWithCustomView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_button, v10);
    v12->_titleAlignment = alignment;
  }

  return v12;
}

@end