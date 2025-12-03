@interface WBSSavedAccountSearchMatch
- (_TtC10SafariCore26WBSSavedAccountSearchMatch)init;
- (_TtC10SafariCore26WBSSavedAccountSearchMatch)initWithScore:(int64_t)score matchingType:(int64_t)type matchingRange:(_NSRange)range;
@end

@implementation WBSSavedAccountSearchMatch

- (_TtC10SafariCore26WBSSavedAccountSearchMatch)initWithScore:(int64_t)score matchingType:(int64_t)type matchingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  *(&self->super.isa + OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_score) = score;
  *(&self->super.isa + OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingType) = type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A918, &qword_1B8574C20);
  result = swift_allocObject();
  *result->matchingType = xmmword_1B85740E0;
  if (__OFADD__(location, length))
  {
    __break(1u);
  }

  else
  {
    result[1].super.isa = location;
    *result[1].score = location + length;
    *(&self->super.isa + OBJC_IVAR____TtC10SafariCore26WBSSavedAccountSearchMatch_matchingRanges) = result;
    v9.receiver = self;
    v9.super_class = type metadata accessor for WBSSavedAccountSearchMatch();
    return [(WBSSavedAccountSearchMatch *)&v9 init];
  }

  return result;
}

- (_TtC10SafariCore26WBSSavedAccountSearchMatch)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end