@interface PUProgressView
- (PUProgressView)initWithCoder:(id)a3;
- (PUProgressView)initWithStyle:(int64_t)a3;
- (void)hideAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)showInView:(id)a3 animated:(BOOL)a4 afterDelay:(double)a5;
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

- (void)hideAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
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

- (void)showInView:(id)a3 animated:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  v8 = a3;
  [v8 bounds];
  [(PUProgressView *)self setFrame:?];
  [v8 addSubview:self];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  [(PUProgressView *)self setAlpha:0.0];
  v9 = 0.5;
  if (!v6)
  {
    v9 = 0.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PUProgressView_showInView_animated_afterDelay___block_invoke;
  v10[3] = &unk_1E7B80DD0;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v10 options:0 animations:v9 completion:a5];
}

- (PUProgressView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUProgressView.m" lineNumber:47 description:@"unsupported initializer"];

  return [(PUProgressView *)self initWithStyle:0];
}

- (PUProgressView)initWithStyle:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = PUProgressView;
  v4 = [(PUProgressView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    if (a3 == 1)
    {
      v10 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v5->_spinner setColor:v10];

      v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v11 = [v9 colorWithAlphaComponent:0.5];
      [(PUProgressView *)v5 setBackgroundColor:v11];
    }

    else
    {
      if (a3)
      {
LABEL_7:
        [(PUProgressView *)v5 addSubview:v5->_spinner];
        [(PUProgressView *)v5 setAutoresizingMask:18];
        return v5;
      }

      v8 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v5->_spinner setColor:v8];

      v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
      [(PUProgressView *)v5 setBackgroundColor:v9];
    }

    goto LABEL_7;
  }

  return v5;
}

@end