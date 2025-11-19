@interface XMLTreeParser.ElementBuilder
- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder)init;
@end

@implementation XMLTreeParser.ElementBuilder

- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder)init
{
  *(&self->super.isa + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_rootElement) = 0;
  type metadata accessor for XMLTreeParser.ErrorContext();
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser14ElementBuilder_errorContext) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for XMLTreeParser.ElementBuilder();
  return [(XMLTreeParser.ElementBuilder *)&v5 init];
}

@end