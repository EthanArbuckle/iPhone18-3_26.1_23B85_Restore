@interface UIKBTutorialModalDisplayStyling
- (UIKBTutorialModalDisplayStyling)initWithKeyboardAppearance:(int64_t)a3;
- (id)backgroundBlurEffects:(int64_t)a3;
@end

@implementation UIKBTutorialModalDisplayStyling

- (UIKBTutorialModalDisplayStyling)initWithKeyboardAppearance:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = UIKBTutorialModalDisplayStyling;
  v4 = [(UIKBTutorialModalDisplayStyling *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIKBTutorialModalDisplayStyling *)v4 backgroundBlurEffects:a3];
    backgroundEffects = v5->_backgroundEffects;
    v5->_backgroundEffects = v6;

    v8 = +[UIColor lightGrayColor];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    v10 = +[UIColor labelColor];
    mainTextColor = v5->_mainTextColor;
    v5->_mainTextColor = v10;

    v12 = +[UIColor systemBlueColor];
    buttonTextColor = v5->_buttonTextColor;
    v5->_buttonTextColor = v12;

    v14 = v5;
  }

  return v5;
}

- (id)backgroundBlurEffects:(int64_t)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [UIBlurEffect effectWithStyle:1200];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

@end