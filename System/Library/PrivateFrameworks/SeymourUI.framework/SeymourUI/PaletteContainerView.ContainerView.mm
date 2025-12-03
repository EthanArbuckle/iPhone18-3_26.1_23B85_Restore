@interface PaletteContainerView.ContainerView
- (_TtCC9SeymourUI20PaletteContainerViewP33_CD8D19E118B7B4A87B690718073E587E13ContainerView)initWithCoder:(id)coder;
- (_TtCC9SeymourUI20PaletteContainerViewP33_CD8D19E118B7B4A87B690718073E587E13ContainerView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
@end

@implementation PaletteContainerView.ContainerView

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PaletteContainerView.ContainerView();
  v2 = v4.receiver;
  [(PaletteContainerView.ContainerView *)&v4 didMoveToSuperview];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setNeedsLayout];
}

- (_TtCC9SeymourUI20PaletteContainerViewP33_CD8D19E118B7B4A87B690718073E587E13ContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for PaletteContainerView.ContainerView();
  return [(PaletteContainerView.ContainerView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC9SeymourUI20PaletteContainerViewP33_CD8D19E118B7B4A87B690718073E587E13ContainerView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for PaletteContainerView.ContainerView();
  coderCopy = coder;
  v6 = [(PaletteContainerView.ContainerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end