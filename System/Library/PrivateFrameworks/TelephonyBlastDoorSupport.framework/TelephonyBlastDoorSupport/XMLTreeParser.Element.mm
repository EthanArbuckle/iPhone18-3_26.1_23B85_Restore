@interface XMLTreeParser.Element
- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element)init;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
@end

@implementation XMLTreeParser.Element

- (_TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a3 setDelegate_];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_26D22E3C4();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_26D1E82DC(v6, v8);
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_26D1E838C(v8);
}

@end