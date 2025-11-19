@interface ABTResult
- (NSArray)locations;
- (NSString)string;
- (_TtC22AppleBrailleTranslator9ABTResult)init;
@end

@implementation ABTResult

- (NSString)string
{
  v2 = *(self + OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string);
  v3 = *(self + OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string + 8);

  v4 = sub_21870();

  return v4;
}

- (NSArray)locations
{
  v2 = *(self + OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations);

  v3.super.isa = sub_21980().super.isa;

  return v3.super.isa;
}

- (_TtC22AppleBrailleTranslator9ABTResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end