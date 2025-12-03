@interface TUToolbarDefaultCompressionAnimation
- (TUToolbarDefaultCompressionAnimation)initWithToolbar:(id)toolbar;
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)reloadWithTraitCollection:(id)collection;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation TUToolbarDefaultCompressionAnimation

- (TUToolbarDefaultCompressionAnimation)initWithToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  v9.receiver = self;
  v9.super_class = TUToolbarDefaultCompressionAnimation;
  v6 = [(TUToolbarDefaultCompressionAnimation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_toolbar, toolbar);
  }

  return v7;
}

- (void)updateWithPercentage:(double)percentage
{
  v38 = *MEMORY[0x1E69E9840];
  toolbar = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  window = [toolbar window];
  [window frame];
  Height = CGRectGetHeight(v39);
  [toolbar ts_frameUsingCenterAndBounds];
  v8 = Height - v7;
  memset(&v36, 0, sizeof(v36));
  v28 = *(MEMORY[0x1E695EFD0] + 16);
  *&v35.a = *MEMORY[0x1E695EFD0];
  v29 = *&v35.a;
  *&v35.c = v28;
  *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
  v27 = *&v35.tx;
  CGAffineTransformTranslate(&v36, &v35, 0.0, (Height - v7) * percentage);
  *&v35.a = v29;
  *&v35.c = v28;
  *&v35.tx = v27;
  [toolbar setTransform:&v35];
  v26 = toolbar;
  items = [toolbar items];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [items countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        ts_barButtonItemView = [v14 ts_barButtonItemView];
        subviews = [ts_barButtonItemView subviews];
        firstObject = [subviews firstObject];

        v18 = [v14 conformsToProtocol:&unk_1F539EEC8];
        if (firstObject)
        {
          v19 = v18;
          *&v35.a = v29;
          *&v35.c = v28;
          *&v35.tx = v27;
          [firstObject setTransform:&v35];
          superview = [firstObject superview];
          [firstObject frame];
          [superview convertPoint:window toView:?];
          v22 = v21;

          v23 = Height - v22 - v8;
          if ((v23 <= 0.0) | v19 & 1)
          {
            if (!v19)
            {
              goto LABEL_12;
            }

            [v14 scrollOffset];
            v25 = -((v8 - v24) * percentage);
          }

          else
          {
            v25 = v23 * percentage;
          }

          *&v30.a = v29;
          *&v30.c = v28;
          *&v30.tx = v27;
          CGAffineTransformTranslate(&v35, &v30, 0.0, v25);
          [firstObject setTransform:&v35];
        }

LABEL_12:
      }

      v11 = [items countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v11);
  }

  v35 = v36;
  [v26 setTransform:&v35];
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  toolbar = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  [toolbar frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

- (void)reloadWithTraitCollection:(id)collection
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  toolbar = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  ts_barButtonViews = [toolbar ts_barButtonViews];

  v5 = [ts_barButtonViews countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v19 = *(MEMORY[0x1E69792E8] + 80);
    v20 = *(MEMORY[0x1E69792E8] + 64);
    v17 = *(MEMORY[0x1E69792E8] + 112);
    v18 = *(MEMORY[0x1E69792E8] + 96);
    v15 = *(MEMORY[0x1E69792E8] + 16);
    v16 = *MEMORY[0x1E69792E8];
    v13 = *(MEMORY[0x1E69792E8] + 48);
    v14 = *(MEMORY[0x1E69792E8] + 32);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(ts_barButtonViews);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        layer = [v9 layer];
        LODWORD(v11) = 1.0;
        [layer setOpacity:v11];

        layer2 = [v9 layer];
        v21[4] = v20;
        v21[5] = v19;
        v21[6] = v18;
        v21[7] = v17;
        v21[0] = v16;
        v21[1] = v15;
        v21[2] = v14;
        v21[3] = v13;
        [layer2 setTransform:v21];
      }

      v6 = [ts_barButtonViews countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

@end