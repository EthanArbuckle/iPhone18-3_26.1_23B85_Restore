@interface TLKImagesView
- (TLKImagesViewDelegate)delegate;
- (id)imageViewAtLocation:(CGPoint)a3;
- (id)setupContentView;
- (void)_handleTap:(id)a3;
- (void)_updateImages;
- (void)_updateSpacing;
- (void)observedPropertiesChanged;
- (void)setImages:(id)a3;
- (void)setPaddingDisabled:(BOOL)a3;
- (void)setSelectionEnabled:(BOOL)a3;
@end

@implementation TLKImagesView

- (id)setupContentView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  imageButtons = self->_imageButtons;
  self->_imageButtons = v3;

  v5 = objc_opt_new();
  [v5 setHorizontalAlignment:3];
  [v5 setHorizontalDistribution:7];
  [v5 setVerticalAlignment:1];
  [v5 setDelegate:self];
  [TLKView makeContainerShadowCompatible:v5];
  [TLKView makeContainerShadowCompatible:self];

  return v5;
}

- (void)setImages:(id)a3
{
  v10 = a3;
  if (self->_images != v10)
  {
    objc_storeStrong(&self->_images, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setPaddingDisabled:(BOOL)a3
{
  if (self->_paddingDisabled != a3)
  {
    self->_paddingDisabled = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setSelectionEnabled:(BOOL)a3
{
  if (self->_selectionEnabled != a3)
  {
    self->_selectionEnabled = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  [(TLKImagesView *)self _updateImages];
  [(TLKImagesView *)self _updateSpacing];
  v6 = [(TLKImagesView *)self images];
  v3 = [v6 count] == 1 && -[TLKImagesView isPaddingDisabled](self, "isPaddingDisabled");
  v4 = [(TLKImagesView *)self imageButtons];
  v5 = [v4 firstObject];
  [v5 setAlwaysShowPlaceholderView:v3];
}

- (void)_updateSpacing
{
  if ([(TLKImagesView *)self isPaddingDisabled])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 6.0;
  }

  v4 = [(TLKView *)self contentView];
  [v4 setItemSpacing:v3];

  if ([(TLKImagesView *)self isPaddingDisabled])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 6.0;
  }

  v6 = [(TLKView *)self contentView];
  [v6 setRowSpacing:v5];

  if ([(TLKImagesView *)self isPaddingDisabled])
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:6.0];
    v7 = v11;
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:6.0];
    v8 = v12;
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:6.0];
    v9 = v13;
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:6.0];
    v10 = v14;
  }

  v15 = [(TLKView *)self contentView];
  [v15 setLayoutMargins:{v7, v8, v9, v10}];
}

- (void)_updateImages
{
  if ([(TLKImagesView *)self useGridAlignment])
  {
    v3 = 4;
  }

  else
  {
    v4 = [(TLKImagesView *)self images];
    v5 = [v4 count];

    if (v5 >= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = [(TLKView *)self contentView];
  [v6 setNumberOfColumns:v3];

  v7 = [(TLKImagesView *)self imageButtons];
  v8 = [v7 count];

  v9 = [(TLKImagesView *)self images];
  v10 = [v9 count];

  if (v8 < v10)
  {
    do
    {
      v11 = objc_opt_new();
      [v11 setMatchesHeightForAlignmentRectWithIntrinsicContentSize:0];
      [v11 addTarget:self action:sel__handleTap_];
      v12 = [(TLKImagesView *)self imageButtons];
      [v12 addObject:v11];

      ++v8;
      v13 = [(TLKImagesView *)self images];
      v14 = [v13 count];
    }

    while (v8 < v14);
  }

  v15 = [(TLKImagesView *)self imageButtons];
  v16 = [(TLKImagesView *)self images];
  v17 = [v15 subarrayWithRange:{0, objc_msgSend(v16, "count")}];
  v18 = [(TLKView *)self contentView];
  [v18 setArrangedSubviews:v17];

  v19 = [(TLKImagesView *)self images];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = [(TLKImagesView *)self imageButtons];
      v23 = [v22 objectAtIndexedSubscript:v21];

      v24 = [(TLKImagesView *)self images];
      v25 = [v24 objectAtIndexedSubscript:v21];
      [v23 setTlkImage:v25];

      [v23 setEnabled:{-[TLKImagesView isSelectionEnabled](self, "isSelectionEnabled")}];
      ++v21;
      v26 = [(TLKImagesView *)self images];
      v27 = [v26 count];
    }

    while (v21 < v27);
  }
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 tlkImage];

  [WeakRetained imagesView:self didSelectImage:v5];
}

- (id)imageViewAtLocation:(CGPoint)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(TLKImagesView *)self hitTest:0 withEvent:a3.x, a3.y];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TLKImagesView *)self imageButtons];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4 == v9)
        {
          v6 = [v9 tlkImageView];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (TLKImagesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end