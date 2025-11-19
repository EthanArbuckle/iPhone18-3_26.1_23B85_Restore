@interface _UISceneConnectionOptionDefinitionPayloadStorage
- (_UISceneConnectionOptionDefinitionPayloadStorage)init;
- (id)encodeAsBSActions;
- (void)applyValuesFromOtherStorage:(id)a3;
@end

@implementation _UISceneConnectionOptionDefinitionPayloadStorage

- (_UISceneConnectionOptionDefinitionPayloadStorage)init
{
  *(&self->super.isa + OBJC_IVAR____UISceneConnectionOptionDefinitionPayloadStorage_payloads) = sub_188E9037C(MEMORY[0x1E69E7CC0]);
  v4.receiver = self;
  v4.super_class = _UISceneConnectionOptionDefinitionPayloadStorage;
  return [(_UISceneConnectionOptionDefinitionPayloadStorage *)&v4 init];
}

- (void)applyValuesFromOtherStorage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1891FC160(v4);
}

- (id)encodeAsBSActions
{
  v2 = self;
  sub_1891FC2AC();

  sub_188A34624(0, &qword_1ED48FD98);
  sub_188D06B5C();
  v3 = sub_18A4A7798();

  return v3;
}

@end