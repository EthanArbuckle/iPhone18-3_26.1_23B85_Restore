@interface _PXStoryAnimationInfo
- (PXStoryAnimation)animation;
- (_PXStoryAnimationInfo)initWithAnimation:(id)a3 startTime:(id *)a4;
@end

@implementation _PXStoryAnimationInfo

- (PXStoryAnimation)animation
{
  WeakRetained = objc_loadWeakRetained(&self->_animation);

  return WeakRetained;
}

- (_PXStoryAnimationInfo)initWithAnimation:(id)a3 startTime:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = _PXStoryAnimationInfo;
  v7 = [(_PXStoryAnimationInfo *)&v13 init];
  if (v7)
  {
    v8 = [v6 identifier];
    v9 = [v8 copy];
    v10 = *(v7 + 1);
    *(v7 + 1) = v9;

    objc_storeWeak(v7 + 2, v6);
    var3 = a4->var3;
    *(v7 + 24) = *&a4->var0;
    *(v7 + 5) = var3;
  }

  return v7;
}

@end