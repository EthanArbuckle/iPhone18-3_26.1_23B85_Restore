@interface NLStandardActivityPickerItem
- (BOOL)isEqual:(id)a3;
- (NLStandardActivityPickerItem)init;
- (NSString)description;
- (_TtC11WorkoutCore26CompoundActivityPickerItem)compoundItem;
- (id)copyWithZone:(void *)a3;
- (id)detailWithFormattingManager:(id)a3;
- (int64_t)hash;
@end

@implementation NLStandardActivityPickerItem

- (_TtC11WorkoutCore26CompoundActivityPickerItem)compoundItem
{
  v3 = *(&self->super.isa + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  v4 = type metadata accessor for CompoundActivityPickerItem();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v5[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = self;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = self;
  v7 = v3;
  v8 = [(NLStandardActivityPickerItem *)&v10 init];

  return v8;
}

- (id)detailWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = StandardActivityPickerItem.detail(formattingManager:)(v4);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (NLStandardActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v12 = *(&self->super.isa + OBJC_IVAR___NLStandardActivityPickerItem_type);
  v3 = *(&self->super.isa + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  v4 = *(&self->super.isa + OBJC_IVAR___NLStandardActivityPickerItem_goal);
  v5 = *(&self->super.isa + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
  v6 = objc_allocWithZone(type metadata accessor for StandardActivityPickerItem());
  v7 = v5;
  v8 = v3;
  v9 = v4;
  v10 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(&v12, v8, v9, v5);

  return v10;
}

- (int64_t)hash
{
  v2 = self;
  v3 = StandardActivityPickerItem.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  outlined init with copy of Any?(v11, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_8;
  }

  type metadata accessor for StandardActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static StandardActivityPickerItem.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Any?(v11);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  v3 = StandardActivityPickerItem.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end