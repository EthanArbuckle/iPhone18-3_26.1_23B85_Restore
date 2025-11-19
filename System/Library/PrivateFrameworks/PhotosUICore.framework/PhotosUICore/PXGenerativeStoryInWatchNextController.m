@interface PXGenerativeStoryInWatchNextController
- (BOOL)wantsMemoryCreationButton;
- (BOOL)wantsMemoryCreationCard;
- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4;
- (CGSize)size;
- (PXGSingleViewLayout)layout;
- (PXGenerativeStoryInWatchNextController)init;
- (int64_t)index;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)openGenerativeMemory;
- (void)setLayout:(id)a3;
- (void)setMemoryCardVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setSize:(CGSize)a3;
- (void)setWantsMemoryCreationButton:(BOOL)a3;
- (void)setWantsMemoryCreationCard:(BOOL)a3;
@end

@implementation PXGenerativeStoryInWatchNextController

- (PXGSingleViewLayout)layout
{
  v2 = self;
  v3 = sub_1A3E9ADB8();

  return v3;
}

- (void)setLayout:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout);
  *(&self->super.super.isa + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout) = a3;
  v3 = a3;
}

- (CGSize)size
{
  v2 = (self + OBJC_IVAR___PXGenerativeStoryInWatchNextController_size);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___PXGenerativeStoryInWatchNextController_size);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (int64_t)index
{
  sub_1A524CC54();
  v6[2] = self;
  v3 = self;
  v4 = sub_1A3E9B270(sub_1A3E9DEF4, v6, "PhotosUICore/GenerativeStoryInWatchNextController.swift", 55);

  return v4;
}

- (BOOL)wantsMemoryCreationCard
{
  v3 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWantsMemoryCreationCard:(BOOL)a3
{
  v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)wantsMemoryCreationButton
{
  v3 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWantsMemoryCreationButton:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = v3;
  if (v6 != v3)
  {
    v7 = qword_1EB19A0D0;
    v8 = self;
    if (v7 != -1)
    {
      swift_once();
    }

    [(PXGenerativeStoryInWatchNextController *)v8 signalChange:qword_1EB1EB910];
  }
}

- (void)openGenerativeMemory
{
  v2 = self;
  sub_1A3E9C0EC();
}

- (void)setMemoryCardVisible:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1A3E9C7C4(a3, a4);
}

- (PXGenerativeStoryInWatchNextController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)singleViewLayout:(id)a3 desiredSizeForReferenceSize:(CGSize)a4
{
  v4 = (self + OBJC_IVAR___PXGenerativeStoryInWatchNextController_size);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 0x10) != 0)
  {
    v6 = self;
    sub_1A3E9CA00();
  }
}

@end