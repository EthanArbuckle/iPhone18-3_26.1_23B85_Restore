@interface AddedElementsCompat
- (AddedElementsCompat)init;
- (AddedElementsCompat)initWithGroupID:(id)d dedupeElements:(id)elements;
- (NSArray)dedupeElements;
- (NSString)groupID;
@end

@implementation AddedElementsCompat

- (NSString)groupID
{

  v2 = sub_2702B3FFC();

  return v2;
}

- (NSArray)dedupeElements
{
  type metadata accessor for DedupeElement();

  v2 = sub_2702B41AC();

  return v2;
}

- (AddedElementsCompat)initWithGroupID:(id)d dedupeElements:(id)elements
{
  v5 = sub_2702B402C();
  v7 = v6;
  type metadata accessor for DedupeElement();
  v8 = sub_2702B41BC();
  v9 = (self + OBJC_IVAR___AddedElementsCompat_groupID);
  *v9 = v5;
  v9[1] = v7;
  *(self + OBJC_IVAR___AddedElementsCompat_dedupeElements) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AddedElements();
  return [(AddedElementsCompat *)&v11 init];
}

- (AddedElementsCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end