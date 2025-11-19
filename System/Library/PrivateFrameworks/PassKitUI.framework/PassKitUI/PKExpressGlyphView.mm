@interface PKExpressGlyphView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_updateGlyphViewAnimated:(uint64_t)a1;
- (void)glyphView:(id)a3 revealingCheckmark:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation PKExpressGlyphView

- (void)_updateGlyphViewAnimated:(uint64_t)a1
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = [a1 traitCollection];
  v5 = *(a1 + 408);
  if (v5 == 2)
  {
    [*(a1 + 432) setColorMode:3 animated:a2];
    v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v10 = MEMORY[0x1E69DD1B8];
    v23[0] = v4;
    v23[1] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v10 traitCollectionWithTraitsFromCollections:v11];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:1 scale:11.0];
    v14 = [v13 configurationWithTraitCollection:v12];

    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:v14];

    v7 = 10;
  }

  else
  {
    v6 = 7;
    if (v5)
    {
      v6 = 0;
    }

    if (v5 == 1)
    {
      v7 = 11;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0;
  }

  objc_initWeak(&location, a1);
  v15 = *(a1 + 432);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__PKExpressGlyphView__updateGlyphViewAnimated___block_invoke;
  v20[3] = &unk_1E8011180;
  objc_copyWeak(&v21, &location);
  [v15 setState:v7 animated:a2 completionHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PKExpressGlyphView__updateGlyphViewAnimated___block_invoke_2;
  v17[3] = &unk_1E8010A10;
  v16 = v8;
  v18 = v16;
  v19 = a1;
  PKUIPerformWithEffectiveTraitCollection(v4, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (CGSize)intrinsicContentSize
{
  maximumLength = self->_maximumLength;
  v3 = maximumLength;
  result.height = v3;
  result.width = maximumLength;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = fmin(fmin(a3.width, a3.height), self->_maximumLength);
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKExpressGlyphView;
  [(PKExpressGlyphView *)&v16 layoutSubviews];
  [(PKExpressGlyphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = fmin(v7 / self->_maximumLength, v9 / self->_maximumLength);
  glyphView = self->_glyphView;
  CATransform3DMakeScale(&v15, v11, v11, 1.0);
  [(PKGlyphView *)glyphView setTransform3D:&v15];
  v13 = self->_glyphView;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [(PKGlyphView *)v13 setCenter:MidX, CGRectGetMidY(v18)];
}

void __47__PKExpressGlyphView__updateGlyphViewAnimated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = WeakRetained[52];
    v3 = v9[52];
    v9[52] = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    WeakRetained = v9;
  }
}

void __47__PKExpressGlyphView__updateGlyphViewAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 432) primaryColor];
    v7 = [v2 _flatImageWithColor:v3];
  }

  else
  {
    v7 = 0;
  }

  v4 = *(*(a1 + 40) + 432);
  v5 = v7;
  v6 = [v7 CGImage];
  [v7 alignmentRectInsets];
  [v4 setCustomImage:v6 withAlignmentEdgeInsets:?];
}

- (void)glyphView:(id)a3 revealingCheckmark:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained expressGlyphView:self revealingCheckmarkAnimated:v4];
}

@end