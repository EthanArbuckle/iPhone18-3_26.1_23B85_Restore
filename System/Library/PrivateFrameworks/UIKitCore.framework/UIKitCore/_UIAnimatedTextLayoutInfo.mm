@interface _UIAnimatedTextLayoutInfo
- (_UIAnimatedTextLayoutInfo)initWithAnimatedTextSpacer:(id)spacer animatingTextRange:(id)range;
@end

@implementation _UIAnimatedTextLayoutInfo

- (_UIAnimatedTextLayoutInfo)initWithAnimatedTextSpacer:(id)spacer animatingTextRange:(id)range
{
  spacerCopy = spacer;
  rangeCopy = range;
  v12.receiver = self;
  v12.super_class = _UIAnimatedTextLayoutInfo;
  v9 = [(_UIAnimatedTextLayoutInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_animatedTextSpacer, spacer);
    objc_storeStrong(&v10->_animatingTextRange, range);
  }

  return v10;
}

@end