@interface MCAssetVideo
- (NSSet)slides;
- (void)addSlide:(id)slide;
- (void)demolish;
- (void)removeSlide:(id)slide;
@end

@implementation MCAssetVideo

- (void)demolish
{
  objc_sync_enter(self);
  mSlides = self->mSlides;
  if (mSlides)
  {
    [(NSMutableArray *)mSlides removeAllObjects];
  }

  self->mSlides = 0;
  objc_sync_exit(self);
  v4.receiver = self;
  v4.super_class = MCAssetVideo;
  [(MCAsset *)&v4 demolish];
}

- (NSSet)slides
{
  objc_sync_enter(self);
  if (self->mSlides)
  {
    v3 = [NSSet setWithArray:?];
  }

  else
  {
    v3 = sEmptySet;
  }

  objc_sync_exit(self);
  return v3;
}

- (void)addSlide:(id)slide
{
  objc_sync_enter(self);
  mSlides = self->mSlides;
  if (!mSlides)
  {
    mSlides = objc_alloc_init(NSMutableArray);
    self->mSlides = mSlides;
  }

  [(NSMutableArray *)mSlides addObject:slide];

  objc_sync_exit(self);
}

- (void)removeSlide:(id)slide
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->mSlides removeObjectAtIndex:[(NSMutableArray *)self->mSlides indexOfObject:slide]];
  if (![(NSMutableArray *)self->mSlides count])
  {

    self->mSlides = 0;
  }

  objc_sync_exit(self);
}

@end