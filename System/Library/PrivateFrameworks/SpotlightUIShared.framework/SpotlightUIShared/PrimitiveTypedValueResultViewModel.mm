@interface PrimitiveTypedValueResultViewModel
- (_TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel)init;
@end

@implementation PrimitiveTypedValueResultViewModel

- (_TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel)init
{
  v3 = sub_26B9AAEE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__isSelected) = 0;
  sub_26B9AAEC4();
  (*(v4 + 32))(self + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text, v7, v3);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__isMultilineText) = 0;
  sub_26B9AB274();
  v8 = type metadata accessor for PrimitiveTypedValueResultViewModel(0);
  v10.receiver = self;
  v10.super_class = v8;
  return [(PrimitiveTypedValueResultViewModel *)&v10 init];
}

@end