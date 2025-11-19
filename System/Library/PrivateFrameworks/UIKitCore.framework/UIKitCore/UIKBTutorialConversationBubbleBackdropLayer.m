@interface UIKBTutorialConversationBubbleBackdropLayer
- (UIKBTutorialConversationBubbleBackdropLayer)init;
- (void)_updateBackgroundColor;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation UIKBTutorialConversationBubbleBackdropLayer

- (UIKBTutorialConversationBubbleBackdropLayer)init
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = UIKBTutorialConversationBubbleBackdropLayer;
  v2 = [(UIKBTutorialConversationBubbleBackdropLayer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(UIKBTutorialConversationBubbleBackdropLayer *)v2 _updateBackgroundColor];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v4 setValue:@"default" forKeyPath:*MEMORY[0x1E6979BA0]];
    [v4 setValue:&unk_1EFE2F068 forKeyPath:*MEMORY[0x1E6979BA8]];
    v5 = MEMORY[0x1E695E118];
    [v4 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B48]];
    [v4 setValue:v5 forKeyPath:*MEMORY[0x1E6979B78]];
    v6 = MEMORY[0x1E695E110];
    [v4 setValue:MEMORY[0x1E695E110] forKeyPath:*MEMORY[0x1E6979AC8]];
    [v4 setValue:v6 forKeyPath:*MEMORY[0x1E6979B68]];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v7 setValue:&unk_1EFE2F078 forKeyPath:*MEMORY[0x1E6979990]];
    v11[0] = v4;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(UIKBTutorialConversationBubbleBackdropLayer *)v3 setFilters:v8];
  }

  return v3;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(UIKBTutorialConversationBubbleBackdropLayer *)self _updateBackgroundColor];
  }
}

- (void)_updateBackgroundColor
{
  userInterfaceStyle = self->_userInterfaceStyle;
  if (userInterfaceStyle >= 2)
  {
    if (userInterfaceStyle != 2)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = 0.278431373;
    v4 = 0.75;
  }

  else
  {
    v4 = 0.9;
    v5 = 1.0;
  }

  v6 = [UIColor colorWithWhite:v5 alpha:v4];
LABEL_7:
  v8 = v6;
  v7 = v6;
  -[UIKBTutorialConversationBubbleBackdropLayer setBackgroundColor:](self, "setBackgroundColor:", [v8 CGColor]);
}

@end