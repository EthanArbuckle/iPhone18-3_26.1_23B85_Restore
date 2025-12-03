@interface PXPinnedTitleViewController
- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithCoder:(id)coder;
- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
@end

@implementation PXPinnedTitleViewController

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x58);
  selfCopy = self;
  if ((v4() & 1) != 0 && edge == 1)
  {

    v6 = 0;
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = type metadata accessor for PXPinnedTitleViewController();
    v7 = [(PXPinnedTitleViewController *)&v9 contentScrollViewForEdge:edge];

    v6 = v7;
  }

  return v6;
}

- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1A524C674();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
    bundleCopy = bundle;
    v7 = sub_1A524C634();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PXPinnedTitleViewController();
  v9 = [(PXPinnedTitleViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXPinnedTitleViewController();
  coderCopy = coder;
  v5 = [(PXPinnedTitleViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end