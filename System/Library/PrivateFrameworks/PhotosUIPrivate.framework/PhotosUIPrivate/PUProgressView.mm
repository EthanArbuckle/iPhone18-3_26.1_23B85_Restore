@interface PUProgressView
- (PUProgressView)initWithCoder:(id)coder;
- (PUProgressView)initWithStyle:(int64_t)style;
- (void)hideAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)showInView:(id)view animated:(BOOL)animated afterDelay:(double)delay;
@end

@implementation PUProgressView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUProgressView;
  [(PUProgressView *)&v4 layoutSubviews];
  spinner = self->_spinner;
  [(PUProgressView *)self center];
  [(UIActivityIndicatorView *)spinner setCenter:?];
}

- (void)hideAnimated:(BOOL)animated
{
  v3 = 0.0;
  if (animated)
  {
    v3 = 0.5;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__PUProgressView_hideAnimated___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__PUProgressView_hideAnimated___block_invoke_2;
  v4[3] = &unk_1E7B7F020;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:v4 animations:v3 completion:0.0];
}

uint64_t __31__PUProgressView_hideAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) stopAnimating];
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)showInView:(id)view animated:(BOOL)animated afterDelay:(double)delay
{
  animatedCopy = animated;
  viewCopy = view;
  [viewCopy bounds];
  [(PUProgressView *)self setFrame:?];
  [viewCopy addSubview:self];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  [(PUProgressView *)self setAlpha:0.0];
  v9 = 0.5;
  if (!animatedCopy)
  {
    v9 = 0.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PUProgressView_showInView_animated_afterDelay___block_invoke;
  v10[3] = &unk_1E7B80DD0;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 options:0 animations:v9 completion:delay];
}

- (PUProgressView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUProgressView.m" lineNumber:47 description:@"unsupported initializer"];

  return [(PUProgressView *)self initWithStyle:0];
}

- (PUProgressView)initWithStyle:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = PUProgressView;
  v4 = [(PUProgressView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    if (style == 1)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v5->_spinner setColor:whiteColor];

      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v11 = [systemBackgroundColor colorWithAlphaComponent:0.5];
      [(PUProgressView *)v5 setBackgroundColor:v11];
    }

    else
    {
      if (style)
      {
LABEL_7:
        [(PUProgressView *)v5 addSubview:v5->_spinner];
        [(PUProgressView *)v5 setAutoresizingMask:18];
        return v5;
      }

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v5->_spinner setColor:whiteColor2];

      systemBackgroundColor = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
      [(PUProgressView *)v5 setBackgroundColor:systemBackgroundColor];
    }

    goto LABEL_7;
  }

  return v5;
}

@end