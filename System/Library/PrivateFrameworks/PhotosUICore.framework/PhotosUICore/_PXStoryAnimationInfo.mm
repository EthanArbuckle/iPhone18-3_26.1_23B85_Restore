@interface _PXStoryAnimationInfo
- (PXStoryAnimation)animation;
- (_PXStoryAnimationInfo)initWithAnimation:(id)animation startTime:(id *)time;
@end

@implementation _PXStoryAnimationInfo

- (PXStoryAnimation)animation
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);

  return WeakRetained;
}

- (_PXStoryAnimationInfo)initWithAnimation:(id)animation startTime:(id *)time
{
  animationCopy = animation;
  v13.receiver = self;
  v13.super_class = _PXStoryAnimationInfo;
  v7 = [(_PXStoryAnimationInfo *)&v13 init];
  if (v7)
  {
    identifier = [animationCopy identifier];
    v9 = [identifier copy];
    v10 = *(v7 + 1);
    *(v7 + 1) = v9;

    objc_storeWeak(v7 + 2, animationCopy);
    var3 = time->var3;
    *(v7 + 24) = *&time->var0;
    *(v7 + 5) = var3;
  }

  return v7;
}

@end