@interface UINavigationBar(Bridge)
- (TUNavigationBarCompressibleTitleView)ts_fetchCompressibleTitleView;
- (id)fetchCustomTitleViewInView:()Bridge;
- (id)fetchRegularTitleViewInView:()Bridge;
- (id)ts_barButtonViews;
- (id)ts_contentView;
- (id)ts_fetchTitleView;
- (void)syncBarButtonItems:()Bridge;
- (void)ts_resetButtonTransforms;
- (void)ts_setBlurthroughBackground;
@end

@implementation UINavigationBar(Bridge)

- (TUNavigationBarCompressibleTitleView)ts_fetchCompressibleTitleView
{
  ts_contentView = [self ts_contentView];
  v3 = [self fetchCustomTitleViewInView:ts_contentView];
  if (v3)
  {
    v4 = [[TUNavigationBarCompressibleTitleView alloc] initWithCustomTitleView:v3];
  }

  else
  {
    v5 = [self fetchRegularTitleViewInView:ts_contentView];
    if (v5)
    {
      v4 = [[TUNavigationBarCompressibleTitleView alloc] initWithRegularTitleView:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)ts_contentView
{
  subviews = [self subviews];
  v3 = [subviews indexOfObjectPassingTest:&__block_literal_global_2];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    subviews2 = [self subviews];
    v4 = [subviews2 objectAtIndex:v3];
  }

  return v4;
}

- (void)ts_setBlurthroughBackground
{
  v4[1] = *MEMORY[0x1E69E9840];
  ts_sideBarEffect = [MEMORY[0x1E69DD290] ts_sideBarEffect];
  v4[0] = ts_sideBarEffect;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [self setBackgroundEffects:v3];
}

- (id)ts_barButtonViews
{
  v2 = objc_opt_new();
  topItem = [self topItem];
  rightBarButtonItems = [topItem rightBarButtonItems];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__UINavigationBar_Bridge__ts_barButtonViews__block_invoke;
  v14[3] = &unk_1E84F3F50;
  v5 = v2;
  v15 = v5;
  [rightBarButtonItems enumerateObjectsUsingBlock:v14];

  topItem2 = [self topItem];
  leftBarButtonItems = [topItem2 leftBarButtonItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__UINavigationBar_Bridge__ts_barButtonViews__block_invoke_2;
  v12[3] = &unk_1E84F3F50;
  v8 = v5;
  v13 = v8;
  [leftBarButtonItems enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

- (void)ts_resetButtonTransforms
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  ts_barButtonViews = [self ts_barButtonViews];
  v2 = [ts_barButtonViews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    v15 = *(MEMORY[0x1E69792E8] + 80);
    v16 = *(MEMORY[0x1E69792E8] + 64);
    v13 = *(MEMORY[0x1E69792E8] + 112);
    v14 = *(MEMORY[0x1E69792E8] + 96);
    v11 = *(MEMORY[0x1E69792E8] + 16);
    v12 = *MEMORY[0x1E69792E8];
    v9 = *(MEMORY[0x1E69792E8] + 48);
    v10 = *(MEMORY[0x1E69792E8] + 32);
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(ts_barButtonViews);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        [v6 setContentAlpha:{1.0, v9, v10, v11, v12, v13, v14, v15, v16}];
        view = [v6 view];
        layer = [view layer];
        v17[4] = v16;
        v17[5] = v15;
        v17[6] = v14;
        v17[7] = v13;
        v17[0] = v12;
        v17[1] = v11;
        v17[2] = v10;
        v17[3] = v9;
        [layer setTransform:v17];
      }

      v3 = [ts_barButtonViews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }
}

- (id)ts_fetchTitleView
{
  ts_fetchCompressibleTitleView = [self ts_fetchCompressibleTitleView];
  view = [ts_fetchCompressibleTitleView view];

  return view;
}

- (void)syncBarButtonItems:()Bridge
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__UINavigationBar_Bridge__syncBarButtonItems___block_invoke;
  v6[3] = &unk_1E84F3FA0;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)fetchCustomTitleViewInView:()Bridge
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F53548B8])
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [v4 subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = [self fetchCustomTitleViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)fetchRegularTitleViewInView:()Bridge
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [v4 subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = [self fetchRegularTitleViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

@end