@interface UIKeyboardEmojiGraphics
+ (BOOL)isWildcatKeyboard;
+ (CGPoint)margin:(BOOL)a3;
+ (CGPoint)padding:(BOOL)a3;
+ (CGSize)emojiSize:(BOOL)a3;
+ (double)emojiPageControlYOffset:(BOOL)a3;
+ (double)optionalDescriptionPadding:(BOOL)a3;
+ (double)recentLableVerticalPadding:(BOOL)a3;
+ (id)emojiCategoryImageName:(id)a3 forRenderConfig:(id)a4;
+ (id)emojiCategoryImagePath:(id)a3 forRenderConfig:(id)a4;
+ (id)emojiFontAttributes;
+ (id)emojiFontAttributesForPortrait:(BOOL)a3;
+ (id)sharedInstance;
+ (unsigned)colCount:(BOOL)a3;
+ (unsigned)rowCount:(BOOL)a3;
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

+ (id)emojiFontAttributesForPortrait:(BOOL)a3
{
  v3 = a3;
  [UIKeyboardEmojiGraphics emojiSize:1];
  v6 = CTFontCreateWithName(@"AppleColorEmoji", v5, 0);
  v7 = MEMORY[0x1E695DF20];
  v8 = *MEMORY[0x1E6965658];
  v9 = MEMORY[0x1E696AD98];
  [a1 padding:v3];
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

  v5 = [a1 emojiFontAttributesForPortrait:v4];
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

+ (CGSize)emojiSize:(BOOL)a3
{
  v3 = [a1 isWildcatKeyboard];
  v4 = 32.0;
  if (v3)
  {
    v4 = 48.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (unsigned)rowCount:(BOOL)a3
{
  if (a3)
  {
    return 3;
  }

  if ([a1 isWildcatKeyboard])
  {
    return 3;
  }

  return 2;
}

+ (unsigned)colCount:(BOOL)a3
{
  if ([a1 isWildcatKeyboard])
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
    v7 = [v6 containerView];
    [v7 bounds];
    v5 = v8;
  }

  v9 = 50.0;
  if (v5 < 480.0)
  {
    v9 = 45.0;
  }

  return llround(v5 / v9);
}

+ (CGPoint)margin:(BOOL)a3
{
  v3 = a3;
  if ([a1 isWildcatKeyboard])
  {
    if (v3)
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 41.0;
    }

    v5 = 33.0;
    if (v3)
    {
      v5 = 20.0;
    }
  }

  else
  {
    v6 = [objc_opt_class() colCount:v3];
    v4 = 22.0;
    v5 = 16.0;
    if (v6 <= 0xE)
    {
      v7 = [objc_opt_class() colCount:v3];
      v5 = 29.0;
      if (v7 <= 0xC)
      {
        v4 = 20.0;
        if ([objc_opt_class() colCount:v3] <= 0xA)
        {
          v8 = [objc_opt_class() colCount:v3];
          v5 = 7.5;
          if (v8 <= 9)
          {
            if ([objc_opt_class() colCount:v3] <= 8)
            {
              v9 = [objc_opt_class() colCount:v3];
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

+ (double)recentLableVerticalPadding:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 isWildcatKeyboard];
  result = 0.0;
  if ((v4 & 1) == 0)
  {
    if ([objc_opt_class() colCount:v3] > 0xE)
    {
      return 1.0;
    }

    v6 = [objc_opt_class() colCount:v3];
    result = 2.0;
    if (v6 <= 0xC)
    {
      if ([objc_opt_class() colCount:v3] > 0xA)
      {
        return 1.0;
      }

      v7 = [objc_opt_class() colCount:v3];
      result = 1.0;
      if (v7 <= 9)
      {
        v8 = [objc_opt_class() colCount:v3];
        result = 5.0;
        if (v8 <= 8)
        {
          v9 = [objc_opt_class() colCount:v3];
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

+ (CGPoint)padding:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 isWildcatKeyboard];
  v5 = 9.0;
  if (!v3)
  {
    v5 = 28.0;
  }

  v6 = 43.0;
  if (v3)
  {
    v6 = 20.0;
  }

  v7 = 19.0;
  v8 = 13.0;
  if (v3)
  {
    v7 = 13.0;
  }

  else
  {
    v8 = 16.0;
  }

  if (!v4)
  {
    v6 = v8;
    v5 = v7;
  }

  result.y = v5;
  result.x = v6;
  return result;
}

+ (double)optionalDescriptionPadding:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 isWildcatKeyboard];
  result = 24.0;
  if (v3)
  {
    result = 8.0;
  }

  if (!v4)
  {
    return 9.0;
  }

  return result;
}

+ (double)emojiPageControlYOffset:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 isWildcatKeyboard];
  result = 8.0;
  if (v3)
  {
    result = 4.0;
  }

  if (!v4)
  {
    return 4.0;
  }

  return result;
}

+ (id)emojiCategoryImagePath:(id)a3 forRenderConfig:(id)a4
{
  v5 = a3;
  v6 = [a4 lightKeyboard];
  v7 = [v5 categoryType];

  v8 = 0;
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v8 = @"emoji_recents.png";
        goto LABEL_28;
      }

      if (v7 != 1)
      {
        goto LABEL_28;
      }

      v9 = @"emoji_people_dark.png";
      v10 = @"emoji_people.png";
      goto LABEL_25;
    }

    if (v7 == 2)
    {
      v9 = @"emoji_nature_dark.png";
      v10 = @"emoji_nature.png";
    }

    else
    {
      if (v7 != 3)
      {
        v11 = v7 == 4;
        v12 = @"emoji_celebration.png";
        goto LABEL_13;
      }

      v9 = @"emoji_food-and-drink_dark.png";
      v10 = @"emoji_food-and-drink.png";
    }
  }

  else
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v9 = @"emoji_activity_dark.png";
        v10 = @"emoji_activity.png";
      }

      else if (v7 == 6)
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

    if (v7 == 8)
    {
      v8 = @"emoji_symbols.png";
      goto LABEL_28;
    }

    if (v7 != 10)
    {
      v11 = v7 == 11;
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
  if (v6)
  {
    v9 = v10;
  }

  v8 = v9;
LABEL_28:

  return v8;
}

+ (id)emojiCategoryImageName:(id)a3 forRenderConfig:(id)a4
{
  v5 = a3;
  v6 = [a4 lightKeyboard];
  v7 = [v5 categoryType];

  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v12 = @"clock";
        goto LABEL_29;
      }

      if (v7 != 1)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v13 = @"emoji.face.grinning.inverse";
      v14 = @"emoji.face.grinning";
    }

    else
    {
      if (v7 != 2)
      {
        v8 = @"emoji.apple";
        v9 = @"emoji.soccer.ball";
        if (v7 != 4)
        {
          v9 = 0;
        }

        v10 = v7 == 3;
        goto LABEL_17;
      }

      v13 = @"emoji.dog.face.inverse";
      v14 = @"emoji.dog.face";
    }
  }

  else
  {
    if (v7 > 7)
    {
      v8 = @"lightbulb";
      v9 = @"lightbulb";
      v11 = @"emoji.heart";
      if (v7 != 11)
      {
        v11 = 0;
      }

      if (v7 != 10)
      {
        v9 = v11;
      }

      v10 = v7 == 8;
      goto LABEL_17;
    }

    if (v7 != 5)
    {
      v8 = @"emoji.automobile";
      v9 = @"flag";
      if (v7 != 7)
      {
        v9 = 0;
      }

      v10 = v7 == 6;
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

  if (v6)
  {
    v13 = v14;
  }

  v12 = v13;
LABEL_29:

  return v12;
}

@end