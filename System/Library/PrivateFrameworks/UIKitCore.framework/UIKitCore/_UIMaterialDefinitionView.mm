@interface _UIMaterialDefinitionView
- (_TtC5UIKit25_UIMaterialDefinitionView)initWithCoder:(id)coder;
- (_TtC5UIKit25_UIMaterialDefinitionView)initWithFrame:(CGRect)frame;
- (void)_privateSubview_setValue:(id)value forObservedLayerKeyPath:(id)path;
@end

@implementation _UIMaterialDefinitionView

- (_TtC5UIKit25_UIMaterialDefinitionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIMaterialDefinitionView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (void)_privateSubview_setValue:(id)value forObservedLayerKeyPath:(id)path
{
  swift_unknownObjectRetain();
  pathCopy = path;
  selfCopy = self;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v8 = sub_18A4A7288();
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) != 1)
  {

LABEL_6:
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    v10 = sub_18A4A86A8();
    v12.receiver = selfCopy;
    v12.super_class = type metadata accessor for _UIMaterialDefinitionView();
    [(UIView *)&v12 _privateSubview_setValue:v10 forObservedLayerKeyPath:pathCopy];
    swift_unknownObjectRelease();
LABEL_7:

    goto LABEL_8;
  }

  if (v8 != 0x426F54736B73616DLL || v9 != 0xED000073646E756FLL)
  {
    v11 = sub_18A4A86C8();

    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

- (_TtC5UIKit25_UIMaterialDefinitionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIMaterialDefinitionView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end