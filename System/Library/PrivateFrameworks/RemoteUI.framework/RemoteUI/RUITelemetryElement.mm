@interface RUITelemetryElement
- (NSArray)children;
- (NSDictionary)attributes;
- (NSString)name;
- (RUITelemetryElement)init;
- (RUITelemetryElement)initWithXMLElement:(id)element url:(id)url;
- (RUITelemetryElement)parent;
@end

@implementation RUITelemetryElement

- (RUITelemetryElement)initWithXMLElement:(id)element url:(id)url
{
  *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement) = element;
  *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_url) = url;
  v8.receiver = self;
  v8.super_class = RUITelemetryElement;
  elementCopy = element;
  urlCopy = url;
  return [(RUITelemetryElement *)&v8 init];
}

- (NSDictionary)attributes
{
  v2 = *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement);
  selfCopy = self;
  attributtes = [v2 attributtes];
  sub_21BA87BCC();

  v5 = sub_21BA87BBC();

  return v5;
}

- (NSString)name
{
  v2 = *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement);
  selfCopy = self;
  name = [v2 name];
  if (!name)
  {
    sub_21BA87CBC();
    name = sub_21BA87C8C();
  }

  return name;
}

- (NSArray)children
{
  selfCopy = self;
  RUITelemetryElement.children.getter();

  type metadata accessor for RUITelemetryElement();
  v3 = sub_21BA87EFC();

  return v3;
}

- (RUITelemetryElement)parent
{
  selfCopy = self;
  v3 = RUITelemetryElement.parent.getter();

  return v3;
}

- (RUITelemetryElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end