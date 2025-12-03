@interface RUIXMLElement
- (NSArray)children;
- (NSDictionary)attributes;
- (NSDictionary)attributtes;
- (NSString)name;
- (NSString)stringValue;
- (NSString)xmlString;
- (RUIXMLElement)init;
- (RUIXMLElement)initWithName:(id)name;
- (RUIXMLElement)initWithName:(id)name attributes:(id)attributes;
- (RUIXMLElement)parent;
- (void)appendChild:(id)child;
- (void)appendChildren:(id)children;
- (void)setAttributes:(id)attributes;
- (void)setAttributtes:(id)attributtes;
- (void)setStringValue:(id)value;
- (void)traverseWithDelegate:(id)delegate;
@end

@implementation RUIXMLElement

- (void)traverseWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  RUIXMLElement.traverse(withDelegate:)(delegate);
  swift_unknownObjectRelease();
}

- (NSString)name
{

  v2 = sub_21BA87C8C();

  return v2;
}

- (NSDictionary)attributtes
{
  selfCopy = self;
  attributes = [(RUIXMLElement *)selfCopy attributes];
  sub_21BA87BCC();

  v4 = sub_21BA87BBC();

  return v4;
}

- (void)setAttributtes:(id)attributtes
{
  sub_21BA87BCC();
  selfCopy = self;
  v4 = sub_21BA87BBC();

  [(RUIXMLElement *)selfCopy setAttributes:v4];
}

- (NSDictionary)attributes
{
  swift_beginAccess();

  v2 = sub_21BA87BBC();

  return v2;
}

- (void)setAttributes:(id)attributes
{
  v4 = sub_21BA87BCC();
  v5 = OBJC_IVAR___RUIXMLElement_attributes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (RUIXMLElement)parent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)stringValue
{
  v2 = self + OBJC_IVAR___RUIXMLElement_stringValue;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_21BA87C8C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStringValue:(id)value
{
  if (value)
  {
    v4 = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___RUIXMLElement_stringValue);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)children
{
  v2 = swift_beginAccess();
  type metadata accessor for RUIXMLElement(v2);

  v3 = sub_21BA87EFC();

  return v3;
}

- (RUIXMLElement)initWithName:(id)name
{
  nameCopy = name;
  sub_21BA48270(MEMORY[0x277D84F90]);
  v5 = sub_21BA87BBC();

  v6 = [(RUIXMLElement *)self initWithName:nameCopy attributes:v5];

  return v6;
}

- (RUIXMLElement)initWithName:(id)name attributes:(id)attributes
{
  v5 = sub_21BA87CBC();
  v7 = v6;
  v8 = sub_21BA87BCC();
  swift_unknownObjectWeakInit();
  v9 = (self + OBJC_IVAR___RUIXMLElement_stringValue);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR___RUIXMLElement_mutableChildren) = MEMORY[0x277D84F90];
  v10 = (self + OBJC_IVAR___RUIXMLElement_name);
  *v10 = v5;
  v10[1] = v7;
  *(self + OBJC_IVAR___RUIXMLElement_attributes) = v8;
  v12.receiver = self;
  v12.super_class = RUIXMLElement;
  return [(RUIXMLElement *)&v12 init];
}

- (void)appendChildren:(id)children
{
  type metadata accessor for RUIXMLElement(self);
  v4 = sub_21BA87F0C();
  selfCopy = self;
  RUIXMLElement.appendChildren(_:)(v4);
}

- (void)appendChild:(id)child
{
  childCopy = child;
  selfCopy = self;
  RUIXMLElement.appendChild(_:)(childCopy);
}

- (RUIXMLElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)xmlString
{
  selfCopy = self;
  sub_21BA64A9C(selfCopy);

  v3 = sub_21BA87C8C();

  return v3;
}

@end