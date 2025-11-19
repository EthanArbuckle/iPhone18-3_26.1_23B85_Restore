@interface PKImageSequenceView
- (id)initWitImages:(id)a3;
- (void)_finishedTransitionToImage:(id)a3;
- (void)_transitionToImage:(id)a3 immedately:(BOOL)a4 fast:(BOOL)a5;
- (void)layoutSubviews;
- (void)startAnimation;
- (void)updateImages:(id)a3;
@end

@implementation PKImageSequenceView

- (id)initWitImages:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKImageSequenceView;
  v5 = [(PKImageSequenceView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    images = v5->_images;
    v5->_images = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->_imageView;
    v5->_imageView = v8;

    v10 = v5->_imageView;
    v11 = [(NSArray *)v5->_images firstObject];
    [(UIImageView *)v10 setImage:v11];

    [(UIImageView *)v5->_imageView setContentMode:1];
    [(UIImageView *)v5->_imageView setAccessibilityIgnoresInvertColors:1];
    [(PKImageSequenceView *)v5 addSubview:v5->_imageView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    fadeInImageView = v5->_fadeInImageView;
    v5->_fadeInImageView = v12;

    [(UIImageView *)v5->_fadeInImageView setContentMode:1];
    [(UIImageView *)v5->_fadeInImageView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v5->_fadeInImageView setAlpha:0.0];
    [(PKImageSequenceView *)v5 addSubview:v5->_fadeInImageView];
    if (![v4 count])
    {
      v14 = [MEMORY[0x1E69DC888] lightGrayColor];
      [(PKImageSequenceView *)v5 setBackgroundColor:v14];
    }
  }

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKImageSequenceView;
  [(PKImageSequenceView *)&v5 layoutSubviews];
  imageView = self->_imageView;
  [(PKImageSequenceView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
  fadeInImageView = self->_fadeInImageView;
  [(PKImageSequenceView *)self bounds];
  [(UIImageView *)fadeInImageView setFrame:?];
}

- (void)updateImages:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    images = self->_images;
    self->_images = v4;

    [(PKImageSequenceView *)self startAnimation];
  }
}

- (void)startAnimation
{
  if (![(UIView *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v3 = [(NSArray *)self->_images count];
    if (!self->_isAnimating)
    {
      if (v3)
      {
        self->_isAnimating = 1;
        v4 = [(NSArray *)self->_images count];
        v5 = [(NSArray *)self->_images firstObject];
        v12 = v5;
        if (v4 < 2)
        {
          v11 = v5;
          v8 = self;
          v7 = v11;
          v9 = 1;
          v10 = 1;
        }

        else
        {
          v6 = [(UIImageView *)self->_imageView image];
          self->_activeImageIndex = v12 == v6;

          v7 = [(NSArray *)self->_images objectAtIndex:self->_activeImageIndex];
          v8 = self;
          v12 = v7;
          v9 = 0;
          v10 = 0;
        }

        [(PKImageSequenceView *)v8 _transitionToImage:v7 immedately:v9 fast:v10];
      }
    }
  }
}

- (void)_transitionToImage:(id)a3 immedately:(BOOL)a4 fast:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  objc_initWeak(&location, self);
  animationContext = self->_animationContext;
  [(UIImageView *)self->_fadeInImageView setAlpha:0.0];
  [(UIImageView *)self->_fadeInImageView setImage:v8];
  [(PKImageSequenceView *)self bringSubviewToFront:self->_fadeInImageView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke;
  aBlock[3] = &unk_1E801ED30;
  aBlock[4] = self;
  v18[1] = animationContext;
  v19 = a5;
  objc_copyWeak(v18, &location);
  v10 = v8;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v6)
  {
    (*(v11 + 2))(v11);
  }

  else
  {
    v13 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke_4;
    block[3] = &unk_1E8010B50;
    v15 = v12;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 416) == *(a1 + 56))
  {
    v3 = MEMORY[0x1E69DD250];
    if (*(a1 + 64))
    {
      v4 = 0.25;
    }

    else
    {
      v4 = 1.0;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke_2;
    v8[3] = &unk_1E8010948;
    v8[4] = v1;
    objc_copyWeak(&v9, (a1 + 48));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke_3;
    v5[3] = &unk_1E80113B0;
    objc_copyWeak(&v7, (a1 + 48));
    v6 = *(a1 + 40);
    [v3 animateWithDuration:0x10000 delay:v8 options:v5 animations:v4 completion:0.0];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
  }
}

void __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setAlpha:1.0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [WeakRetained setBackgroundColor:v2];
}

void __58__PKImageSequenceView__transitionToImage_immedately_fast___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _finishedTransitionToImage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_finishedTransitionToImage:(id)a3
{
  fadeInImageView = self->_fadeInImageView;
  v7 = fadeInImageView;
  objc_storeStrong(&self->_fadeInImageView, self->_imageView);
  objc_storeStrong(&self->_imageView, fadeInImageView);
  if (self->_isAnimating && [(NSArray *)self->_images count]>= 2)
  {
    v5 = self->_activeImageIndex + 1;
    self->_activeImageIndex = v5 % [(NSArray *)self->_images count];
    v6 = [(NSArray *)self->_images objectAtIndex:?];
    [(PKImageSequenceView *)self _transitionToImage:v6 immedately:0 fast:0];
  }

  else
  {
    [(PKImageSequenceView *)self stopAnimation];
  }
}

@end