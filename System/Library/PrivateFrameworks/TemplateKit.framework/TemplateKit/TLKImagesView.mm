@interface TLKImagesView
- (TLKImagesViewDelegate)delegate;
- (id)imageViewAtLocation:(CGPoint)location;
- (id)setupContentView;
- (void)_handleTap:(id)tap;
- (void)_updateImages;
- (void)_updateSpacing;
- (void)observedPropertiesChanged;
- (void)setImages:(id)images;
- (void)setPaddingDisabled:(BOOL)disabled;
- (void)setSelectionEnabled:(BOOL)enabled;
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

- (void)setImages:(id)images
{
  imagesCopy = images;
  if (self->_images != imagesCopy)
  {
    objc_storeStrong(&self->_images, images);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setPaddingDisabled:(BOOL)disabled
{
  if (self->_paddingDisabled != disabled)
  {
    self->_paddingDisabled = disabled;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSelectionEnabled:(BOOL)enabled
{
  if (self->_selectionEnabled != enabled)
  {
    self->_selectionEnabled = enabled;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  [(TLKImagesView *)self _updateImages];
  [(TLKImagesView *)self _updateSpacing];
  images = [(TLKImagesView *)self images];
  v3 = [images count] == 1 && -[TLKImagesView isPaddingDisabled](self, "isPaddingDisabled");
  imageButtons = [(TLKImagesView *)self imageButtons];
  firstObject = [imageButtons firstObject];
  [firstObject setAlwaysShowPlaceholderView:v3];
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

  contentView = [(TLKView *)self contentView];
  [contentView setItemSpacing:v3];

  if ([(TLKImagesView *)self isPaddingDisabled])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 6.0;
  }

  contentView2 = [(TLKView *)self contentView];
  [contentView2 setRowSpacing:v5];

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

  contentView3 = [(TLKView *)self contentView];
  [contentView3 setLayoutMargins:{v7, v8, v9, v10}];
}

- (void)_updateImages
{
  if ([(TLKImagesView *)self useGridAlignment])
  {
    v3 = 4;
  }

  else
  {
    images = [(TLKImagesView *)self images];
    v5 = [images count];

    if (v5 >= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = v5;
    }
  }

  contentView = [(TLKView *)self contentView];
  [contentView setNumberOfColumns:v3];

  imageButtons = [(TLKImagesView *)self imageButtons];
  v8 = [imageButtons count];

  images2 = [(TLKImagesView *)self images];
  v10 = [images2 count];

  if (v8 < v10)
  {
    do
    {
      v11 = objc_opt_new();
      [v11 setMatchesHeightForAlignmentRectWithIntrinsicContentSize:0];
      [v11 addTarget:self action:sel__handleTap_];
      imageButtons2 = [(TLKImagesView *)self imageButtons];
      [imageButtons2 addObject:v11];

      ++v8;
      images3 = [(TLKImagesView *)self images];
      v14 = [images3 count];
    }

    while (v8 < v14);
  }

  imageButtons3 = [(TLKImagesView *)self imageButtons];
  images4 = [(TLKImagesView *)self images];
  v17 = [imageButtons3 subarrayWithRange:{0, objc_msgSend(images4, "count")}];
  contentView2 = [(TLKView *)self contentView];
  [contentView2 setArrangedSubviews:v17];

  images5 = [(TLKImagesView *)self images];
  v20 = [images5 count];

  if (v20)
  {
    v21 = 0;
    do
    {
      imageButtons4 = [(TLKImagesView *)self imageButtons];
      v23 = [imageButtons4 objectAtIndexedSubscript:v21];

      images6 = [(TLKImagesView *)self images];
      v25 = [images6 objectAtIndexedSubscript:v21];
      [v23 setTlkImage:v25];

      [v23 setEnabled:{-[TLKImagesView isSelectionEnabled](self, "isSelectionEnabled")}];
      ++v21;
      images7 = [(TLKImagesView *)self images];
      v27 = [images7 count];
    }

    while (v21 < v27);
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  tlkImage = [tapCopy tlkImage];

  [WeakRetained imagesView:self didSelectImage:tlkImage];
}

- (id)imageViewAtLocation:(CGPoint)location
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(TLKImagesView *)self hitTest:0 withEvent:location.x, location.y];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  imageButtons = [(TLKImagesView *)self imageButtons];
  tlkImageView = [imageButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (tlkImageView)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != tlkImageView; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(imageButtons);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4 == v9)
        {
          tlkImageView = [v9 tlkImageView];
          goto LABEL_11;
        }
      }

      tlkImageView = [imageButtons countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (tlkImageView)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return tlkImageView;
}

- (TLKImagesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end