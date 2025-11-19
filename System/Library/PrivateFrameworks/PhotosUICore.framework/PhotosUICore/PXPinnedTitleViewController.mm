@interface PXPinnedTitleViewController
- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithCoder:(id)a3;
- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
@end

@implementation PXPinnedTitleViewController

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x58);
  v5 = self;
  if ((v4() & 1) != 0 && a3 == 1)
  {

    v6 = 0;
  }

  else
  {
    v9.receiver = v5;
    v9.super_class = type metadata accessor for PXPinnedTitleViewController();
    v7 = [(PXPinnedTitleViewController *)&v9 contentScrollViewForEdge:a3];

    v6 = v7;
  }

  return v6;
}

- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1A524C674();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
    v6 = a4;
    v7 = sub_1A524C634();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PXPinnedTitleViewController();
  v9 = [(PXPinnedTitleViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC12PhotosUICore27PXPinnedTitleViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore27PXPinnedTitleViewController_shouldPinTitle) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXPinnedTitleViewController();
  v4 = a3;
  v5 = [(PXPinnedTitleViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end