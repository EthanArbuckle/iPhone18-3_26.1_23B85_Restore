@interface _GlassGroupView
- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4;
@end

@implementation _GlassGroupView

- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  if (sub_18A4A7288() == 0x426F54736B73616DLL && v8 == 0xED000073646E756FLL)
  {
  }

  else
  {
    v9 = sub_18A4A86C8();

    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_0(v12, v12[3]);
      v10 = sub_18A4A86A8();
      v11.receiver = v7;
      v11.super_class = type metadata accessor for _GlassGroupView();
      [(UIView *)&v11 _privateSubview_setValue:v10 forObservedLayerKeyPath:v6];
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

@end