@interface PXGenerativeStoryInWatchNextController
- (BOOL)wantsMemoryCreationButton;
- (BOOL)wantsMemoryCreationCard;
- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size;
- (CGSize)size;
- (PXGSingleViewLayout)layout;
- (PXGenerativeStoryInWatchNextController)init;
- (int64_t)index;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)openGenerativeMemory;
- (void)setLayout:(id)layout;
- (void)setMemoryCardVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setSize:(CGSize)size;
- (void)setWantsMemoryCreationButton:(BOOL)button;
- (void)setWantsMemoryCreationCard:(BOOL)card;
@end

@implementation PXGenerativeStoryInWatchNextController

- (PXGSingleViewLayout)layout
{
  selfCopy = self;
  v3 = sub_1A3E9ADB8();

  return v3;
}

- (void)setLayout:(id)layout
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout);
  *(&self->super.super.isa + OBJC_IVAR___PXGenerativeStoryInWatchNextController____lazy_storage___layout) = layout;
  layoutCopy = layout;
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

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = (self + OBJC_IVAR___PXGenerativeStoryInWatchNextController_size);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (int64_t)index
{
  sub_1A524CC54();
  v6[2] = self;
  selfCopy = self;
  v4 = sub_1A3E9B270(sub_1A3E9DEF4, v6, "PhotosUICore/GenerativeStoryInWatchNextController.swift", 55);

  return v4;
}

- (BOOL)wantsMemoryCreationCard
{
  v3 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWantsMemoryCreationCard:(BOOL)card
{
  v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationCard;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = card;
}

- (BOOL)wantsMemoryCreationButton
{
  v3 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWantsMemoryCreationButton:(BOOL)button
{
  buttonCopy = button;
  v5 = OBJC_IVAR___PXGenerativeStoryInWatchNextController_wantsMemoryCreationButton;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = buttonCopy;
  if (v6 != buttonCopy)
  {
    v7 = qword_1EB19A0D0;
    selfCopy = self;
    if (v7 != -1)
    {
      swift_once();
    }

    [(PXGenerativeStoryInWatchNextController *)selfCopy signalChange:qword_1EB1EB910];
  }
}

- (void)openGenerativeMemory
{
  selfCopy = self;
  sub_1A3E9C0EC();
}

- (void)setMemoryCardVisible:(BOOL)visible animated:(BOOL)animated
{
  selfCopy = self;
  sub_1A3E9C7C4(visible, animated);
}

- (PXGenerativeStoryInWatchNextController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size
{
  v4 = (self + OBJC_IVAR___PXGenerativeStoryInWatchNextController_size);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x10) != 0)
  {
    selfCopy = self;
    sub_1A3E9CA00();
  }
}

@end