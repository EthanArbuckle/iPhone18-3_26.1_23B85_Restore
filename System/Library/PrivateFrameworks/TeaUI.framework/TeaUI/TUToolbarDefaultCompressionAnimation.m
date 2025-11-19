@interface TUToolbarDefaultCompressionAnimation
- (TUToolbarDefaultCompressionAnimation)initWithToolbar:(id)a3;
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)reloadWithTraitCollection:(id)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation TUToolbarDefaultCompressionAnimation

- (TUToolbarDefaultCompressionAnimation)initWithToolbar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUToolbarDefaultCompressionAnimation;
  v6 = [(TUToolbarDefaultCompressionAnimation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_toolbar, a3);
  }

  return v7;
}

- (void)updateWithPercentage:(double)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  v5 = [v4 window];
  [v5 frame];
  Height = CGRectGetHeight(v39);
  [v4 ts_frameUsingCenterAndBounds];
  v8 = Height - v7;
  memset(&v36, 0, sizeof(v36));
  v28 = *(MEMORY[0x1E695EFD0] + 16);
  *&v35.a = *MEMORY[0x1E695EFD0];
  v29 = *&v35.a;
  *&v35.c = v28;
  *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
  v27 = *&v35.tx;
  CGAffineTransformTranslate(&v36, &v35, 0.0, (Height - v7) * a3);
  *&v35.a = v29;
  *&v35.c = v28;
  *&v35.tx = v27;
  [v4 setTransform:&v35];
  v26 = v4;
  v9 = [v4 items];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 ts_barButtonItemView];
        v16 = [v15 subviews];
        v17 = [v16 firstObject];

        v18 = [v14 conformsToProtocol:&unk_1F539EEC8];
        if (v17)
        {
          v19 = v18;
          *&v35.a = v29;
          *&v35.c = v28;
          *&v35.tx = v27;
          [v17 setTransform:&v35];
          v20 = [v17 superview];
          [v17 frame];
          [v20 convertPoint:v5 toView:?];
          v22 = v21;

          v23 = Height - v22 - v8;
          if ((v23 <= 0.0) | v19 & 1)
          {
            if (!v19)
            {
              goto LABEL_12;
            }

            [v14 scrollOffset];
            v25 = -((v8 - v24) * a3);
          }

          else
          {
            v25 = v23 * a3;
          }

          *&v30.a = v29;
          *&v30.c = v28;
          *&v30.tx = v27;
          CGAffineTransformTranslate(&v35, &v30, 0.0, v25);
          [v17 setTransform:&v35];
        }

LABEL_12:
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v11);
  }

  v35 = v36;
  [v26 setTransform:&v35];
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v3 = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  [v3 frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

- (void)reloadWithTraitCollection:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(TUToolbarDefaultCompressionAnimation *)self toolbar];
  v4 = [v3 ts_barButtonViews];

  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 layer];
        LODWORD(v11) = 1.0;
        [v10 setOpacity:v11];

        v12 = [v9 layer];
        v21[4] = v20;
        v21[5] = v19;
        v21[6] = v18;
        v21[7] = v17;
        v21[0] = v16;
        v21[1] = v15;
        v21[2] = v14;
        v21[3] = v13;
        [v12 setTransform:v21];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

@end