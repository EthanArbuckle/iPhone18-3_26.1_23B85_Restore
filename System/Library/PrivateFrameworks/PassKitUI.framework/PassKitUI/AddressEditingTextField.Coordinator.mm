@interface AddressEditingTextField.Coordinator
- (_TtCV9PassKitUI23AddressEditingTextField11Coordinator)init;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChangeWithTextField:(id)field;
@end

@implementation AddressEditingTextField.Coordinator

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 56];
  v4 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 88];
  v10[5] = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 72];
  v10[6] = v4;
  v5 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 8];
  v10[0] = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent);
  v6 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 24];
  v7 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 40];
  v10[1] = v5;
  v10[2] = v6;
  v11 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 104];
  v10[3] = v7;
  v10[4] = v3;
  selfCopy = self;
  sub_1BD5C75CC(v10, v9);
  sub_1BD5C6EE4();

  sub_1BD5C7604(v10);
}

- (void)textFieldDidChangeWithTextField:(id)field
{
  v6 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 56];
  v5 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 64];
  sub_1BE048964();
  fieldCopy = field;
  selfCopy = self;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();
  v8 = v6;
  v9 = v5;
  sub_1BE048964();
  text = [fieldCopy text];
  if (text)
  {
    v11 = text;
    sub_1BE052434();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  sub_1BE0518F4();
}

- (_TtCV9PassKitUI23AddressEditingTextField11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end