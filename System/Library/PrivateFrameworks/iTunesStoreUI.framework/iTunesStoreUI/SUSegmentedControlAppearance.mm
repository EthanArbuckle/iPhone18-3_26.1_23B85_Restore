@interface SUSegmentedControlAppearance
+ (id)defaultBarAppearance;
+ (id)defaultOptionsAppearanceForTintStyle:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4 barMetrics:(int64_t)a5;
- (id)titleTextAttributesForState:(unint64_t)a3;
- (void)dealloc;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5;
- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5 barMetrics:(int64_t)a6;
- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)styleSegmentedControl:(id)a3;
@end

@implementation SUSegmentedControlAppearance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSegmentedControlAppearance;
  [(SUSegmentedControlAppearance *)&v3 dealloc];
}

+ (id)defaultBarAppearance
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [v2 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentBarButton", v3), 0, 0}];
  [v2 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentBarButtonHighlighted", v3), 4, 0}];
  [v2 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentBarDivider" barMetrics:{v3), 0, 0, 0}];
  [v2 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentBarDividerHighlighted" barMetrics:{v3), 0, 4, 0}];
  [v2 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentBarMiniButton", v3), 0, 1}];
  [v2 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentBarMiniButtonHighlighted", v3), 4, 1}];
  [v2 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentBarMiniDivider" barMetrics:{v3), 0, 0, 1}];
  [v2 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentBarMiniDividerHighlighted" barMetrics:{v3), 0, 4, 1}];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  v6 = *MEMORY[0x1E69DB650];
  [v4 setObject:v5 forKey:*MEMORY[0x1E69DB650]];
  v7 = +[SUUIAppearance _defaultShadowWithColor:offset:](SUUIAppearance, "_defaultShadowWithColor:offset:", [MEMORY[0x1E69DC888] blackColor], 0.0, -1.0);
  v8 = *MEMORY[0x1E69DB6A8];
  [v4 setObject:v7 forKey:*MEMORY[0x1E69DB6A8]];
  [v2 setTitleTextAttributes:v4 forState:0];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 0.87, 1.0), v6}];
  [v9 setObject:+[SUUIAppearance _defaultShadowWithColor:offset:](SUUIAppearance forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.11, 1.0), 0.0, -1.0), v8}];
  [v2 setTitleTextAttributes:v9 forState:4];

  return v2;
}

+ (id)defaultOptionsAppearanceForTintStyle:(int64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (a3 == 1)
  {
    [v4 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentOptionsDarkButton", v5), 0, 0}];
    [v4 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentOptionsDarkButtonSelected", v5), 4, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDarkDivider" barMetrics:{v5), 0, 0, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDarkDividerSelected" barMetrics:{v5), 0, 4, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDarkDividerSelected" barMetrics:{v5), 4, 0, 0}];
    [v4 setOptionsBackgroundImage:{objc_msgSend(MEMORY[0x1E69DCAB8], "imageNamed:inBundle:", @"UISegmentOptionsDarkBackground", v5)}];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.823529412 alpha:1.0];
    v8 = *MEMORY[0x1E69DB650];
    [v6 setObject:v7 forKey:*MEMORY[0x1E69DB650]];
    v9 = +[SUUIAppearance _defaultShadowWithColor:offset:](SUUIAppearance, "_defaultShadowWithColor:offset:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.35], 0.0, -1.0);
    v10 = *MEMORY[0x1E69DB6A8];
    [v6 setObject:v9 forKey:*MEMORY[0x1E69DB6A8]];
    [v4 setTitleTextAttributes:v6 forState:0];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 1.0, 1.0), v8}];
    v12 = MEMORY[0x1E69DC888];
    v13 = 0.8;
    v14 = 0.0;
  }

  else
  {
    [v4 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentOptionsButton", v5), 0, 0}];
    [v4 setBackgroundImage:objc_msgSend(MEMORY[0x1E69DCAB8] forState:"imageNamed:inBundle:" barMetrics:{@"UISegmentOptionsButtonSelected", v5), 4, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDivider" barMetrics:{v5), 0, 0, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDividerSelected" barMetrics:{v5), 0, 4, 0}];
    [v4 setDividerImage:objc_msgSend(MEMORY[0x1E69DCAB8] forLeftSegmentState:"imageNamed:inBundle:" rightSegmentState:@"UISegmentOptionsDividerSelected" barMetrics:{v5), 4, 0, 0}];
    [v4 setOptionsBackgroundImage:{objc_msgSend(MEMORY[0x1E69DCAB8], "imageNamed:inBundle:", @"UISegmentOptionsBackground", v5)}];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.39 alpha:1.0];
    v17 = *MEMORY[0x1E69DB650];
    [v15 setObject:v16 forKey:*MEMORY[0x1E69DB650]];
    v18 = +[SUUIAppearance _defaultShadowWithColor:offset:](SUUIAppearance, "_defaultShadowWithColor:offset:", [MEMORY[0x1E69DC888] colorWithWhite:0.93 alpha:1.0], 0.0, 1.0);
    v10 = *MEMORY[0x1E69DB6A8];
    [v15 setObject:v18 forKey:*MEMORY[0x1E69DB6A8]];
    [v4 setTitleTextAttributes:v15 forState:0];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 1.0, 1.0), v17}];
    v12 = MEMORY[0x1E69DC888];
    v14 = 0.42;
    v13 = 1.0;
  }

  [v11 setObject:+[SUUIAppearance _defaultShadowWithColor:offset:](SUUIAppearance forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(v12, "colorWithWhite:alpha:", v14, v13), 0.0, -1.0), v10}];
  [v4 setTitleTextAttributes:v11 forState:4];

  return v4;
}

- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4 barMetrics:(int64_t)a5
{
  v6 = [(SUSegmentedControlAppearance *)self _newDividerImageKeyWithLeftState:a3 rightState:a4 barMetrics:a5];
  v7 = [(NSMutableDictionary *)self->_dividerImages objectForKey:v6];

  return v7;
}

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5
{
  backgroundImages = self->_backgroundImages;
  if (!backgroundImages)
  {
    backgroundImages = objc_alloc_init(SUControlAppearance);
    self->_backgroundImages = backgroundImages;
  }

  [(SUControlAppearance *)backgroundImages setImage:a3 forState:a4 barMetrics:a5];
}

- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5 barMetrics:(int64_t)a6
{
  v8 = [(SUSegmentedControlAppearance *)self _newDividerImageKeyWithLeftState:a4 rightState:a5 barMetrics:a6];
  dividerImages = self->_dividerImages;
  v10 = v8;
  if (a3)
  {
    if (!dividerImages)
    {
      dividerImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v10;
      self->_dividerImages = dividerImages;
    }

    [(NSMutableDictionary *)dividerImages setObject:a3 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)dividerImages removeObjectForKey:v8];
  }
}

- (void)styleSegmentedControl:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  backgroundImages = self->_backgroundImages;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __54__SUSegmentedControlAppearance_styleSegmentedControl___block_invoke;
  v35[3] = &unk_1E8167200;
  v35[4] = a3;
  [(SUControlAppearance *)backgroundImages enumerateImagesUsingBlock:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_dividerImages;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 componentsSeparatedByString:@":"];
        if ([v11 count] == 3)
        {
          v12 = [objc_msgSend(v11 objectAtIndex:{0), "integerValue"}];
          v13 = [objc_msgSend(v11 objectAtIndex:{1), "integerValue"}];
          v14 = [objc_msgSend(v11 objectAtIndex:{2), "integerValue"}];
          v15 = objc_opt_respondsToSelector();
          v16 = [(NSMutableDictionary *)self->_dividerImages objectForKey:v10];
          if (v15)
          {
            [a3 _setDividerImage:v16 forLeftSegmentState:v12 rightSegmentState:v13 barMetrics:v14];
          }

          else
          {
            [a3 setDividerImage:v16 forLeftSegmentState:v12 rightSegmentState:v13 barMetrics:v14];
          }
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  if (objc_opt_respondsToSelector())
  {
    [a3 _setOptionsBackgroundImage:self->_optionsBackgroundImage];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  titleTextAttributes = self->_titleTextAttributes;
  v18 = [(NSMutableDictionary *)titleTextAttributes countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(titleTextAttributes);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = objc_opt_respondsToSelector();
        v24 = [(NSMutableDictionary *)self->_titleTextAttributes objectForKey:v22];
        v25 = [v22 integerValue];
        if (v23)
        {
          [a3 _setTitleTextAttributes:v24 forState:v25];
        }

        else
        {
          [a3 setTitleTextAttributes:v24 forState:v25];
        }
      }

      v19 = [(NSMutableDictionary *)titleTextAttributes countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v19);
  }
}

uint64_t __54__SUSegmentedControlAppearance_styleSegmentedControl___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_respondsToSelector();
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _setBackgroundImage:a3 forState:a2 barMetrics:0];
    v10 = *(a1 + 32);

    return [v10 _setBackgroundImage:a4 forState:a2 barMetrics:1];
  }

  else
  {
    [v9 setBackgroundImage:a3 forState:a2 barMetrics:0];
    v12 = *(a1 + 32);

    return [v12 setBackgroundImage:a4 forState:a2 barMetrics:1];
  }
}

- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a4];
  titleTextAttributes = self->_titleTextAttributes;
  v9 = v6;
  if (a3)
  {
    if (!titleTextAttributes)
    {
      self->_titleTextAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = [a3 copy];
    [(NSMutableDictionary *)self->_titleTextAttributes setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)titleTextAttributes removeObjectForKey:?];
  }
}

- (id)titleTextAttributesForState:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  v5 = [(NSMutableDictionary *)self->_titleTextAttributes objectForKey:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(SUControlAppearance *)self->_backgroundImages copyWithZone:a3];
  v5[2] = [(NSMutableDictionary *)self->_dividerImages mutableCopyWithZone:a3];
  v5[3] = self->_optionsBackgroundImage;
  v5[4] = [(NSMutableDictionary *)self->_titleTextAttributes mutableCopyWithZone:a3];
  return v5;
}

@end