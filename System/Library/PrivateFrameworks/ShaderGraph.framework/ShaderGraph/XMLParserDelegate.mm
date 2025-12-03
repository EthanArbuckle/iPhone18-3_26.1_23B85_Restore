@interface XMLParserDelegate
- (_TtC11ShaderGraph17XMLParserDelegate)init;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation XMLParserDelegate

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (i)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  parserCopy = parser;
  selfCopy = self;
  specialized XMLParserDelegate.parser(_:didStartElement:namespaceURI:qualifiedName:attributes:)(v11, v13, v14);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  selfCopy = self;
  XMLParserDelegate.endElement()();
}

- (_TtC11ShaderGraph17XMLParserDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(XMLParserDelegate *)&v6 init];
}

@end