@interface UIBadgeView
@end

@implementation UIBadgeView

void __33___UIBadgeView__applyTextToLabel__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(off_1E70ECB80);
  [v0 setAlignment:1];
  v5[0] = *off_1E70EC920;
  v1 = +[UIColor whiteColor];
  v6[0] = v1;
  v5[1] = *off_1E70EC988;
  v2 = [v0 copy];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_1ED4991C0;
  qword_1ED4991C0 = v3;
}

@end