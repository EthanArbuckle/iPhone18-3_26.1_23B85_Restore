@interface UIKeyboardEmojiGraphics
+ (BOOL)isWildcatKeyboard;
+ (CGPoint)margin:(BOOL)margin;
+ (CGPoint)padding:(BOOL)padding;
+ (CGSize)emojiSize:(BOOL)size;
+ (double)emojiPageControlYOffset:(BOOL)offset;
+ (double)optionalDescriptionPadding:(BOOL)padding;
+ (double)recentLableVerticalPadding:(BOOL)padding;
+ (id)emojiCategoryImageName:(id)name forRenderConfig:(id)config;
+ (id)emojiCategoryImagePath:(id)path forRenderConfig:(id)config;
+ (id)emojiFontAttributes;
+ (id)emojiFontAttributesForPortrait:(BOOL)portrait;
+ (id)sharedInstance;
+ (unsigned)colCount:(BOOL)count;
+ (unsigned)rowCount:(BOOL)count;
- (UIKeyboardEmojiGraphics)init;
@end

@implementation UIKeyboardEmojiGraphics

- (UIKeyboardEmojiGraphics)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardEmojiGraphics;
  v2 = [(UIKeyboardEmojiGraphics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)sharedInstance
{
  v2 = gSharedEmojiGraphics;
  if (!gSharedEmojiGraphics)
  {
    v3 = objc_alloc_init(UIKeyboardEmojiGraphics);
    v4 = gSharedEmojiGraphics;
    gSharedEmojiGraphics = v3;

    v2 = gSharedEmojiGraphics;
  }

  return v2;
}

+ (id)emojiFontAttributesForPortrait:(BOOL)portrait
{
  portraitCopy = portrait;
  [UIKeyboardEmojiGraphics emojiSize:1];
  v6 = CTFontCreateWithName(@"AppleColorEmoji", v5, 0);
  v7 = MEMORY[0x1E695DF20];
  v8 = *MEMORY[0x1E6965658];
  v9 = MEMORY[0x1E696AD98];
  [self padding:portraitCopy];
  *&v10 = v10;
  v11 = [v9 numberWithFloat:v10];
  v12 = [v7 dictionaryWithObjectsAndKeys:{v6, v8, v11, *MEMORY[0x1E6965A18], 0}];

  CFRelease(v6);

  return v12;
}

+ (id)emojiFontAttributes
{
  v3 = +[UIKeyboard activeKeyboard];
  v4 = ([v3 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;

  v5 = [self emojiFontAttributesForPortrait:v4];
  v6 = emojiFontAttributes_attributes;
  emojiFontAttributes_attributes = v5;

  v7 = emojiFontAttributes_attributes;

  return v7;
}

+ (BOOL)isWildcatKeyboard
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return !+[UIKeyboardImpl isFloating];
  }

  else
  {
    return 0;
  }
}

+ (CGSize)emojiSize:(BOOL)size
{
  isWildcatKeyboard = [self isWildcatKeyboard];
  v4 = 32.0;
  if (isWildcatKeyboard)
  {
    v4 = 48.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (unsigned)rowCount:(BOOL)count
{
  if (count)
  {
    return 3;
  }

  if ([self isWildcatKeyboard])
  {
    return 3;
  }

  return 2;
}

+ (unsigned)colCount:(BOOL)count
{
  if ([self isWildcatKeyboard])
  {
    return 11;
  }

  if (+[UIKeyboardImpl isFloating])
  {
    +[UIKeyboardImpl floatingWidth];
    v5 = v4;
  }

  else
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerView = [v6 containerView];
    [containerView bounds];
    v5 = v8;
  }

  v9 = 50.0;
  if (v5 < 480.0)
  {
    v9 = 45.0;
  }

  return llround(v5 / v9);
}

+ (CGPoint)margin:(BOOL)margin
{
  marginCopy = margin;
  if ([self isWildcatKeyboard])
  {
    if (marginCopy)
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 41.0;
    }

    v5 = 33.0;
    if (marginCopy)
    {
      v5 = 20.0;
    }
  }

  else
  {
    v6 = [objc_opt_class() colCount:marginCopy];
    v4 = 22.0;
    v5 = 16.0;
    if (v6 <= 0xE)
    {
      v7 = [objc_opt_class() colCount:marginCopy];
      v5 = 29.0;
      if (v7 <= 0xC)
      {
        v4 = 20.0;
        if ([objc_opt_class() colCount:marginCopy] <= 0xA)
        {
          v8 = [objc_opt_class() colCount:marginCopy];
          v5 = 7.5;
          if (v8 <= 9)
          {
            if ([objc_opt_class() colCount:marginCopy] <= 8)
            {
              v9 = [objc_opt_class() colCount:marginCopy];
              if (v9 <= 7)
              {
                v4 = 20.0;
              }

              else
              {
                v4 = 24.5;
              }

              v5 = 8.5;
              if (v9 > 7)
              {
                v5 = 13.5;
              }
            }

            else
            {
              v4 = 28.0;
              v5 = 11.0;
            }
          }
        }

        else
        {
          v5 = 27.5;
        }
      }
    }
  }

  v10 = v4;
  result.y = v10;
  result.x = v5;
  return result;
}

+ (double)recentLableVerticalPadding:(BOOL)padding
{
  paddingCopy = padding;
  isWildcatKeyboard = [self isWildcatKeyboard];
  result = 0.0;
  if ((isWildcatKeyboard & 1) == 0)
  {
    if ([objc_opt_class() colCount:paddingCopy] > 0xE)
    {
      return 1.0;
    }

    v6 = [objc_opt_class() colCount:paddingCopy];
    result = 2.0;
    if (v6 <= 0xC)
    {
      if ([objc_opt_class() colCount:paddingCopy] > 0xA)
      {
        return 1.0;
      }

      v7 = [objc_opt_class() colCount:paddingCopy];
      result = 1.0;
      if (v7 <= 9)
      {
        v8 = [objc_opt_class() colCount:paddingCopy];
        result = 5.0;
        if (v8 <= 8)
        {
          v9 = [objc_opt_class() colCount:paddingCopy];
          result = 1.0;
          if (v9 > 7)
          {
            return 4.0;
          }
        }
      }
    }
  }

  return result;
}

+ (CGPoint)padding:(BOOL)padding
{
  paddingCopy = padding;
  isWildcatKeyboard = [self isWildcatKeyboard];
  v5 = 9.0;
  if (!paddingCopy)
  {
    v5 = 28.0;
  }

  v6 = 43.0;
  if (paddingCopy)
  {
    v6 = 20.0;
  }

  v7 = 19.0;
  v8 = 13.0;
  if (paddingCopy)
  {
    v7 = 13.0;
  }

  else
  {
    v8 = 16.0;
  }

  if (!isWildcatKeyboard)
  {
    v6 = v8;
    v5 = v7;
  }

  result.y = v5;
  result.x = v6;
  return result;
}

+ (double)optionalDescriptionPadding:(BOOL)padding
{
  paddingCopy = padding;
  isWildcatKeyboard = [self isWildcatKeyboard];
  result = 24.0;
  if (paddingCopy)
  {
    result = 8.0;
  }

  if (!isWildcatKeyboard)
  {
    return 9.0;
  }

  return result;
}

+ (double)emojiPageControlYOffset:(BOOL)offset
{
  offsetCopy = offset;
  isWildcatKeyboard = [self isWildcatKeyboard];
  result = 8.0;
  if (offsetCopy)
  {
    result = 4.0;
  }

  if (!isWildcatKeyboard)
  {
    return 4.0;
  }

  return result;
}

+ (id)emojiCategoryImagePath:(id)path forRenderConfig:(id)config
{
  pathCopy = path;
  lightKeyboard = [config lightKeyboard];
  categoryType = [pathCopy categoryType];

  v8 = 0;
  if (categoryType <= 4)
  {
    if (categoryType <= 1)
    {
      if (!categoryType)
      {
        v8 = @"emoji_recents.png";
        goto LABEL_28;
      }

      if (categoryType != 1)
      {
        goto LABEL_28;
      }

      v9 = @"emoji_people_dark.png";
      v10 = @"emoji_people.png";
      goto LABEL_25;
    }

    if (categoryType == 2)
    {
      v9 = @"emoji_nature_dark.png";
      v10 = @"emoji_nature.png";
    }

    else
    {
      if (categoryType != 3)
      {
        v11 = categoryType == 4;
        v12 = @"emoji_celebration.png";
        goto LABEL_13;
      }

      v9 = @"emoji_food-and-drink_dark.png";
      v10 = @"emoji_food-and-drink.png";
    }
  }

  else
  {
    if (categoryType <= 7)
    {
      if (categoryType == 5)
      {
        v9 = @"emoji_activity_dark.png";
        v10 = @"emoji_activity.png";
      }

      else if (categoryType == 6)
      {
        v9 = @"emoji_travel-and-places_dark.png";
        v10 = @"emoji_travel-and-places.png";
      }

      else
      {
        v9 = @"emoji_flags_dark.png";
        v10 = @"emoji_flags.png";
      }

      goto LABEL_25;
    }

    if (categoryType == 8)
    {
      v8 = @"emoji_symbols.png";
      goto LABEL_28;
    }

    if (categoryType != 10)
    {
      v11 = categoryType == 11;
      v12 = @"emoji_symbols.png";
LABEL_13:
      if (v11)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_28;
    }

    v9 = @"emoji_objects_dark.png";
    v10 = @"emoji_objects.png";
  }

LABEL_25:
  if (lightKeyboard)
  {
    v9 = v10;
  }

  v8 = v9;
LABEL_28:

  return v8;
}

+ (id)emojiCategoryImageName:(id)name forRenderConfig:(id)config
{
  nameCopy = name;
  lightKeyboard = [config lightKeyboard];
  categoryType = [nameCopy categoryType];

  if (categoryType <= 4)
  {
    if (categoryType <= 1)
    {
      if (!categoryType)
      {
        v12 = @"clock";
        goto LABEL_29;
      }

      if (categoryType != 1)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v13 = @"emoji.face.grinning.inverse";
      v14 = @"emoji.face.grinning";
    }

    else
    {
      if (categoryType != 2)
      {
        v8 = @"emoji.apple";
        v9 = @"emoji.soccer.ball";
        if (categoryType != 4)
        {
          v9 = 0;
        }

        v10 = categoryType == 3;
        goto LABEL_17;
      }

      v13 = @"emoji.dog.face.inverse";
      v14 = @"emoji.dog.face";
    }
  }

  else
  {
    if (categoryType > 7)
    {
      v8 = @"lightbulb";
      v9 = @"lightbulb";
      v11 = @"emoji.heart";
      if (categoryType != 11)
      {
        v11 = 0;
      }

      if (categoryType != 10)
      {
        v9 = v11;
      }

      v10 = categoryType == 8;
      goto LABEL_17;
    }

    if (categoryType != 5)
    {
      v8 = @"emoji.automobile";
      v9 = @"flag";
      if (categoryType != 7)
      {
        v9 = 0;
      }

      v10 = categoryType == 6;
LABEL_17:
      if (v10)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      goto LABEL_29;
    }

    v13 = @"emoji.soccer.ball.inverse";
    v14 = @"emoji.soccer.ball";
  }

  if (lightKeyboard)
  {
    v13 = v14;
  }

  v12 = v13;
LABEL_29:

  return v12;
}

@end