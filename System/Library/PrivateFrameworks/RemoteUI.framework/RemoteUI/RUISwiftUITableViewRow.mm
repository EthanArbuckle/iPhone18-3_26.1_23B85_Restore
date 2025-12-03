@interface RUISwiftUITableViewRow
- (BOOL)isSelected;
- (RUIXMLElement)xmlElement;
- (_TtC8RemoteUI22RUISwiftUITableViewRow)initWithAttributes:(id)attributes parent:(id)parent;
- (id)tableCell;
- (void)populatePostbackDictionary:(id)dictionary;
- (void)setSelected:(BOOL)selected;
- (void)setXmlElement:(id)element;
@end

@implementation RUISwiftUITableViewRow

- (RUIXMLElement)xmlElement
{
  v3 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setXmlElement:(id)element
{
  v5 = OBJC_IVAR____TtC8RemoteUI22RUISwiftUITableViewRow_xmlElement;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = element;
  elementCopy = element;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RUISwiftUITableViewRow();
  return [(RUITableViewRow *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ECA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v14 - v6);
  v8 = type metadata accessor for RUISwiftUITableViewRow();
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(RUITableViewRow *)&v14 setSelected:selectedCopy];
  v10 = swift_allocObject();
  *(v10 + 16) = selectedCopy;
  *v7 = v10;
  v11 = *MEMORY[0x277D23260];
  v12 = sub_21BA8685C();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  sub_21BA868BC();
}

- (_TtC8RemoteUI22RUISwiftUITableViewRow)initWithAttributes:(id)attributes parent:(id)parent
{
  if (attributes)
  {
    v5 = sub_21BA87BCC();
  }

  else
  {
    v5 = 0;
  }

  parentCopy = parent;
  return RUISwiftUITableViewRow.init(attributes:parent:)(v5, parent);
}

- (id)tableCell
{
  selfCopy = self;
  v3 = sub_21BA18208();

  return v3;
}

- (void)populatePostbackDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  sub_21BA187D0(dictionary);
}

@end