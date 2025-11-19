@interface _UIMaterialDefinitionView
- (_TtC5UIKit25_UIMaterialDefinitionView)initWithCoder:(id)a3;
- (_TtC5UIKit25_UIMaterialDefinitionView)initWithFrame:(CGRect)a3;
- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4;
@end

@implementation _UIMaterialDefinitionView

- (_TtC5UIKit25_UIMaterialDefinitionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIMaterialDefinitionView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v8 = sub_18A4A7288();
  if (*(&v7->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) != 1)
  {

LABEL_6:
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    v10 = sub_18A4A86A8();
    v12.receiver = v7;
    v12.super_class = type metadata accessor for _UIMaterialDefinitionView();
    [(UIView *)&v12 _privateSubview_setValue:v10 forObservedLayerKeyPath:v6];
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

- (_TtC5UIKit25_UIMaterialDefinitionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25_UIMaterialDefinitionView_ignoresSyncingMasksToBounds) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIMaterialDefinitionView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end