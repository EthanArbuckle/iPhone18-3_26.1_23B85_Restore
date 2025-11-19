@interface UIStatusBarDefaultRepositionAnimation
@end

@implementation UIStatusBarDefaultRepositionAnimation

void ___UIStatusBarDefaultRepositionAnimation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIStatusBarDefaultRepositionAnimation_block_invoke_2;
  v13[3] = &unk_1E70F0F78;
  v14 = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___UIStatusBarDefaultRepositionAnimation_block_invoke_3;
  v11[3] = &unk_1E7103030;
  v9 = v6;
  v10 = v5;
  [UIView _animateUsingSpringWithTension:0 friction:v13 interactive:v11 animations:v7 completion:v8];
}

@end