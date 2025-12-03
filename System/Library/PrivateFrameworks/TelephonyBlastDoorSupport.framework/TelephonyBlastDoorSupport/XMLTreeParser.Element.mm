@interface XMLTreeParser.Element
- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element)init;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
@end

@implementation XMLTreeParser.Element

- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [parser setDelegate_];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_26D22E3C4();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_26D1E82DC(v6, v8);
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_26D1E838C(occurredCopy);
}

@end