@interface UIImageViewCommonInit
@end

@implementation UIImageViewCommonInit

void ___UIImageViewCommonInit_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = a2;
  if ([v4 isUserInteractionEnabled])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [UIView animateWithDuration:v6 delay:v7 options:v5 animations:2.0 completion:0.0];
}

void ___UIImageViewCommonInit_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (v2[244] >> 12) & 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIImageViewCommonInit_block_invoke_2;
  v7[3] = &unk_1E7103420;
  v8 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIImageViewCommonInit_block_invoke_3;
  v5[3] = &unk_1E70F3590;
  v6 = v8;
  v4 = v8;
  [UIView conditionallyAnimate:v3 withAnimation:v7 layout:v5 completion:0];
}

void ___UIImageViewCommonInit_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 _headroomUsage];

  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v6 = [v4 _currentImage];
    [v4 _updateHDRFlags:{objc_msgSend(v6, "isHighDynamicRange")}];
  }

  else
  {
    v5 = *MEMORY[0x1E69792A8];
    v6 = [*(a1 + 32) layer];
    [v6 setPreferredDynamicRange:v5];
  }
}

@end