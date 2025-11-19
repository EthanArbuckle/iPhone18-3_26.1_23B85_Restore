@interface _UIAnimatedTextLayoutInfo
- (_UIAnimatedTextLayoutInfo)initWithAnimatedTextSpacer:(id)a3 animatingTextRange:(id)a4;
@end

@implementation _UIAnimatedTextLayoutInfo

- (_UIAnimatedTextLayoutInfo)initWithAnimatedTextSpacer:(id)a3 animatingTextRange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIAnimatedTextLayoutInfo;
  v9 = [(_UIAnimatedTextLayoutInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_animatedTextSpacer, a3);
    objc_storeStrong(&v10->_animatingTextRange, a4);
  }

  return v10;
}

@end