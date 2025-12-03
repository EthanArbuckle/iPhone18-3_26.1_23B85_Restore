@interface SBIconLabelAccessoryView
- (CGSize)intrinsicContentSize;
- (SBIconLabelAccessoryView)initWithCoder:(id)coder;
- (UIEdgeInsets)alignmentRectInsets;
- (void)updateWithLegibilitySettings:(id)settings labelFont:(id)font;
@end

@implementation SBIconLabelAccessoryView

- (SBIconLabelAccessoryView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateWithLegibilitySettings:(id)settings labelFont:(id)font
{
  fontCopy = font;
  settingsCopy = settings;
  labelAccessorySystemImageName = [objc_opt_class() labelAccessorySystemImageName];
  v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:fontCopy scale:{objc_msgSend(objc_opt_class(), "labelAccessorySystemImageScale")}];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:labelAccessorySystemImageName withConfiguration:v9];
  if (!v10)
  {
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBIconLabelAccessoryView updateWithLegibilitySettings:labelAccessorySystemImageName labelFont:v11];
    }
  }

  [(SBIconLabelAccessoryView *)self setBaseImage:v10];
  [(SBIconLabelAccessoryView *)self updateWithBaseImage:v10 legibilitySettings:settingsCopy];

  [(SBIconLabelAccessoryView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  baseImage = [(SBIconLabelAccessoryView *)self baseImage];
  [baseImage size];
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