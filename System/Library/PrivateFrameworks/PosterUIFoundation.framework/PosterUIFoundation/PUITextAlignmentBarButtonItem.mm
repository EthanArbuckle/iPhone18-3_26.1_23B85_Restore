@interface PUITextAlignmentBarButtonItem
+ (id)buttonConfigurationForTextAlignment:(unint64_t)alignment;
+ (id)defaultImage;
- (PUITextAlignmentBarButtonItem)initWithTextAlignment:(unint64_t)alignment target:(id)target action:(SEL)action;
- (void)_update;
- (void)setTextAlignment:(unint64_t)alignment;
@end

@implementation PUITextAlignmentBarButtonItem

+ (id)defaultImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v4 = [v2 _systemImageNamed:@"kashida.arabic" withConfiguration:v3];

  return v4;
}

+ (id)buttonConfigurationForTextAlignment:(unint64_t)alignment
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
  v6 = +[PUITextAlignmentBarButtonItem defaultImage];
  [filledButtonConfiguration setImage:v6];

  return filledButtonConfiguration;
}

- (PUITextAlignmentBarButtonItem)initWithTextAlignment:(unint64_t)alignment target:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [PUITextAlignmentBarButtonItem buttonConfigurationForTextAlignment:alignment];
  v10 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:0];
  [v10 addTarget:targetCopy action:action forControlEvents:64];

  v14.receiver = self;
  v14.super_class = PUITextAlignmentBarButtonItem;
  v11 = [(PUITextAlignmentBarButtonItem *)&v14 initWithCustomView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_button, v10);
    v12->_textAlignment = alignment;
  }

  return v12;
}

- (void)setTextAlignment:(unint64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(PUITextAlignmentBarButtonItem *)self _update];
  }
}

- (void)_update
{
  v3 = [PUITextAlignmentBarButtonItem buttonConfigurationForTextAlignment:self->_textAlignment];
  [(UIButton *)self->_button setConfiguration:v3];
}

@end