@interface SSReduceTransparencyFlashView
- (SSReduceTransparencyFlashView)initWithFrame:(CGRect)a3;
- (void)flashWithCompletion:(id)a3;
- (void)layoutSubviews;
@end

@implementation SSReduceTransparencyFlashView

- (SSReduceTransparencyFlashView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SSReduceTransparencyFlashView;
  v3 = [(SSFlashView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  colorView = v3->_colorView;
  v3->_colorView = v4;

  [(SSReduceTransparencyFlashView *)v3 addSubview:v3->_colorView];
  return v3;
}

- (void)layoutSubviews
{
  colorView = self->_colorView;
  [(SSReduceTransparencyFlashView *)self bounds];
  [(UIView *)colorView setFrame:?];
  if ([(SSFlashView *)self style])
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [(UIView *)self->_colorView setBackgroundColor:v4];
}

- (void)flashWithCompletion:(id)a3
{
  v4 = a3;
  oldCompletionBlock = self->_oldCompletionBlock;
  if (oldCompletionBlock)
  {
    oldCompletionBlock[2]();
    v6 = self->_oldCompletionBlock;
    self->_oldCompletionBlock = 0;
  }

  [(UIView *)self->_colorView setAlpha:1.0];
  v7 = MEMORY[0x1E69DD250];
  [objc_opt_class() expectedAnimationDurationForStyle:{-[SSFlashView style](self, "style")}];
  v9 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SSReduceTransparencyFlashView_flashWithCompletion___block_invoke;
  v13[3] = &unk_1E8590600;
  v13[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__SSReduceTransparencyFlashView_flashWithCompletion___block_invoke_2;
  v11[3] = &unk_1E8590800;
  v12 = v4;
  v10 = v4;
  [v7 animateWithDuration:6 delay:v13 options:v11 animations:v9 completion:0.0];
}

uint64_t __53__SSReduceTransparencyFlashView_flashWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end