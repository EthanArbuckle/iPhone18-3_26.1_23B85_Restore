@interface TLKIconsView
- (TLKIconsView)init;
- (void)setProminence:(unint64_t)prominence;
- (void)setSymbolFont:(id)font;
- (void)updateIcons:(id)icons;
@end

@implementation TLKIconsView

- (TLKIconsView)init
{
  v5.receiver = self;
  v5.super_class = TLKIconsView;
  v2 = [(TLKIconsView *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKIconsView *)v2 setImageViews:v3];

    [(TLKStackView *)v2 setAlignment:5];
    [TLKLayoutUtilities deviceScaledRoundedValue:v2 forView:2.5];
    [(NUIContainerStackView *)v2 setSpacing:?];
    [(TLKIconsView *)v2 setProminence:1];
  }

  return v2;
}

- (void)setProminence:(unint64_t)prominence
{
  v14 = *MEMORY[0x1E69E9840];
  self->_prominence = prominence;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  imageViews = [(TLKIconsView *)self imageViews];
  v5 = [imageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(imageViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) setProminence:prominence];
      }

      while (v6 != v8);
      v6 = [imageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setSymbolFont:(id)font
{
  v16 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  objc_storeStrong(&self->_symbolFont, font);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  imageViews = [(TLKIconsView *)self imageViews];
  v7 = [imageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(imageViews);
        }

        [*(*(&v11 + 1) + 8 * v10++) setSymbolFont:fontCopy];
      }

      while (v8 != v10);
      v8 = [imageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)updateIcons:(id)icons
{
  iconsCopy = icons;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__TLKIconsView_updateIcons___block_invoke;
  v6[3] = &unk_1E7FD8DA8;
  v7 = iconsCopy;
  selfCopy = self;
  v5 = iconsCopy;
  [(TLKIconsView *)self performBatchUpdates:v6];
}

void __28__TLKIconsView_updateIcons___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) imageViews];
  v4 = [v3 count];

  if (v2 > v4)
  {
    do
    {
      v5 = objc_opt_new();
      [v5 setProminence:{objc_msgSend(*(a1 + 40), "prominence")}];
      v6 = [*(a1 + 40) symbolFont];
      [v5 setSymbolFont:v6];

      [v5 setSymbolScale:1];
      [TLKLayoutUtilities requireIntrinsicSizeForView:v5];
      v7 = [*(a1 + 40) imageViews];
      [v7 addObject:v5];

      [*(a1 + 40) addArrangedSubview:v5];
      v8 = [*(a1 + 32) count];
      v9 = [*(a1 + 40) imageViews];
      v10 = [v9 count];
    }

    while (v8 > v10);
  }

  v11 = [*(a1 + 40) imageViews];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [*(a1 + 32) count];
      v15 = [*(a1 + 40) imageViews];
      v16 = [v15 objectAtIndexedSubscript:v13];
      v17 = v16;
      if (v13 >= v14)
      {
        [v16 setHidden:1];
      }

      else
      {
        [v16 setHidden:0];

        v15 = [*(a1 + 32) objectAtIndexedSubscript:v13];
        v17 = [v15 image];
        v18 = [*(a1 + 40) imageViews];
        v19 = [v18 objectAtIndexedSubscript:v13];
        [v19 setTlkImage:v17];
      }

      ++v13;
      v20 = [*(a1 + 40) imageViews];
      v21 = [v20 count];
    }

    while (v13 < v21);
  }
}

@end