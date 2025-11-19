@interface PUITextAlignmentBarButtonItem
+ (id)buttonConfigurationForTextAlignment:(unint64_t)a3;
+ (id)defaultImage;
- (PUITextAlignmentBarButtonItem)initWithTextAlignment:(unint64_t)a3 target:(id)a4 action:(SEL)a5;
- (void)_update;
- (void)setTextAlignment:(unint64_t)a3;
@end

@implementation PUITextAlignmentBarButtonItem

+ (id)defaultImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v4 = [v2 _systemImageNamed:@"kashida.arabic" withConfiguration:v3];

  return v4;
}

+ (id)buttonConfigurationForTextAlignment:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    v4 = [MEMORY[0x1E69DC888] labelColor];
    [v3 setBaseForegroundColor:v4];
  }

  v5 = [v3 background];
  [v5 setCornerRadius:10.0];

  [v3 setButtonSize:1];
  v6 = +[PUITextAlignmentBarButtonItem defaultImage];
  [v3 setImage:v6];

  return v3;
}

- (PUITextAlignmentBarButtonItem)initWithTextAlignment:(unint64_t)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = [PUITextAlignmentBarButtonItem buttonConfigurationForTextAlignment:a3];
  v10 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:0];
  [v10 addTarget:v8 action:a5 forControlEvents:64];

  v14.receiver = self;
  v14.super_class = PUITextAlignmentBarButtonItem;
  v11 = [(PUITextAlignmentBarButtonItem *)&v14 initWithCustomView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_button, v10);
    v12->_textAlignment = a3;
  }

  return v12;
}

- (void)setTextAlignment:(unint64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(PUITextAlignmentBarButtonItem *)self _update];
  }
}

- (void)_update
{
  v3 = [PUITextAlignmentBarButtonItem buttonConfigurationForTextAlignment:self->_textAlignment];
  [(UIButton *)self->_button setConfiguration:v3];
}

@end