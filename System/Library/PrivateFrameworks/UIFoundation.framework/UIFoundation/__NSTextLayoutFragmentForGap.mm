@interface __NSTextLayoutFragmentForGap
- (void)setLayoutFragmentFrame:(CGRect)frame;
@end

@implementation __NSTextLayoutFragmentForGap

- (void)setLayoutFragmentFrame:(CGRect)frame
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  v5.receiver = self;
  v5.super_class = __NSTextLayoutFragmentForGap;
  [(NSTextLayoutFragment *)&v5 setLayoutFragmentFrame:frame.origin.x, frame.origin.y, v3, v4];
}

@end