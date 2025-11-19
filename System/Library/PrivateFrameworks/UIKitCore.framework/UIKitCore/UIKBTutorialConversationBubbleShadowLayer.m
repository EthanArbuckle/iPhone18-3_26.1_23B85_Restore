@interface UIKBTutorialConversationBubbleShadowLayer
- (CGSize)_offsetForShadowStyle:(int64_t)a3;
- (UIKBTutorialConversationBubbleShadowLayer)initWithShadowType:(int64_t)a3;
- (double)_opacityForShadowStyle:(int64_t)a3;
- (double)_radiusForShadowStyle:(int64_t)a3;
- (int64_t)_shadowStyleForShadowType:(int64_t)a3 userInterfaceStyle:(int64_t)a4;
- (void)_updateShadowProperties;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation UIKBTutorialConversationBubbleShadowLayer

- (UIKBTutorialConversationBubbleShadowLayer)initWithShadowType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UIKBTutorialConversationBubbleShadowLayer;
  v4 = [(UIKBTutorialConversationBubbleShadowLayer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_shadowType = a3;
    v4->_userInterfaceStyle = 0;
    v6 = +[UIColor blackColor];
    -[UIKBTutorialConversationBubbleShadowLayer setShadowColor:](v5, "setShadowColor:", [v6 CGColor]);

    [(UIKBTutorialConversationBubbleShadowLayer *)v5 _updateShadowProperties];
  }

  return v5;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(UIKBTutorialConversationBubbleShadowLayer *)self _updateShadowProperties];
  }
}

- (void)_updateShadowProperties
{
  v3 = [(UIKBTutorialConversationBubbleShadowLayer *)self _shadowStyleForShadowType:self->_shadowType userInterfaceStyle:self->_userInterfaceStyle];
  [(UIKBTutorialConversationBubbleShadowLayer *)self _opacityForShadowStyle:v3];
  *&v4 = v4;
  [(UIKBTutorialConversationBubbleShadowLayer *)self setShadowOpacity:v4];
  [(UIKBTutorialConversationBubbleShadowLayer *)self _radiusForShadowStyle:v3];
  [(UIKBTutorialConversationBubbleShadowLayer *)self setShadowRadius:?];
  [(UIKBTutorialConversationBubbleShadowLayer *)self _offsetForShadowStyle:v3];

  [(UIKBTutorialConversationBubbleShadowLayer *)self setShadowOffset:?];
}

- (int64_t)_shadowStyleForShadowType:(int64_t)a3 userInterfaceStyle:(int64_t)a4
{
  v4 = 3;
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 1;
  }

  if (a4 != 2)
  {
    v4 = 0;
  }

  if (a4 >= 2)
  {
    return v4;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (double)_opacityForShadowStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 3)
  {
    return dbl_18A683290[a3];
  }

  return result;
}

- (double)_radiusForShadowStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 3)
  {
    return dbl_18A6832B0[a3];
  }

  return result;
}

- (CGSize)_offsetForShadowStyle:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2 || (v4 = 0.0, a3 == 3))
    {
      v3 = *MEMORY[0x1E695F060];
      v4 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    v4 = 8.0;
    v5 = 6.0;
    if (a3 != 1)
    {
      v5 = 0.0;
    }

    if (a3)
    {
      v4 = v5;
    }
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end