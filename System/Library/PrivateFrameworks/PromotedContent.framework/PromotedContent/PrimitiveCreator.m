@interface PrimitiveCreator
- (_TtC15PromotedContent16PrimitiveCreator)init;
- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8;
@end

@implementation PrimitiveCreator

- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8
{
  v11 = a5;
  if (a5)
  {
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v11 = sub_1C1B94CB8();
  }

  if (a6)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    a6 = sub_1C1B94CB8();
  }

  v15 = self;
  sub_1C1AB46A4(a3, a4, v11, a6, a7, a8);
}

- (_TtC15PromotedContent16PrimitiveCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end