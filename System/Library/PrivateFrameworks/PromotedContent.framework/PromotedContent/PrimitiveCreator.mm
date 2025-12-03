@interface PrimitiveCreator
- (_TtC15PromotedContent16PrimitiveCreator)init;
- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options;
@end

@implementation PrimitiveCreator

- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options
{
  propertiesCopy = properties;
  if (properties)
  {
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    propertiesCopy = sub_1C1B94CB8();
  }

  if (internalProperties)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    internalProperties = sub_1C1B94CB8();
  }

  selfCopy = self;
  sub_1C1AB46A4(metric, purpose, propertiesCopy, internalProperties, order, options);
}

- (_TtC15PromotedContent16PrimitiveCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end