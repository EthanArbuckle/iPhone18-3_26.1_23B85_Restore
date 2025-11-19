@interface FinanceKitSegmentedBarConfiguration
- (_TtC9PassKitUI35FinanceKitSegmentedBarConfiguration)init;
- (double)valueForSegmentAtIndex:(int64_t)a3;
- (id)colorForSegmentAtIndex:(int64_t)a3;
@end

@implementation FinanceKitSegmentedBarConfiguration

- (double)valueForSegmentAtIndex:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0);
  result = MEMORY[0x1EEE9AC00](v5, v6);
  v10 = &v14 - v8;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending);
    if (*(v11 + 16) > a3)
    {
      sub_1BD5A0764(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a3, &v14 - v8);
      v12 = *&v10[*(v5 + 48)];
      v13 = sub_1BE049B04();
      (*(*(v13 - 8) + 8))(v10, v13);
      return v12;
    }
  }

  __break(1u);
  return result;
}

- (id)colorForSegmentAtIndex:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0) - 8;
  MEMORY[0x1EEE9AC00](v5, v6);
  v10 = &v14 - v9;
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI35FinanceKitSegmentedBarConfiguration_spending);
  if (*(v11 + 16) <= a3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BD5A0764(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a3, &v14 - v9);
  v12 = self;
  MEMORY[0x1BFB3FF90](v10);
  result = PKBrightColorForFKCategory();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;

  return v13;
}

- (_TtC9PassKitUI35FinanceKitSegmentedBarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end