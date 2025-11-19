@interface SBIconLabelAccessoryView
- (CGSize)intrinsicContentSize;
- (SBIconLabelAccessoryView)initWithCoder:(id)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4;
@end

@implementation SBIconLabelAccessoryView

- (SBIconLabelAccessoryView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() labelAccessorySystemImageName];
  v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:{objc_msgSend(objc_opt_class(), "labelAccessorySystemImageScale")}];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v8 withConfiguration:v9];
  if (!v10)
  {
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBIconLabelAccessoryView updateWithLegibilitySettings:v8 labelFont:v11];
    }
  }

  [(SBIconLabelAccessoryView *)self setBaseImage:v10];
  [(SBIconLabelAccessoryView *)self updateWithBaseImage:v10 legibilitySettings:v7];

  [(SBIconLabelAccessoryView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(SBIconLabelAccessoryView *)self baseImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateWithLegibilitySettings:(uint64_t)a1 labelFont:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Failed to find system image named '%{public}@' for label accessory view!", &v2, 0xCu);
}

@end