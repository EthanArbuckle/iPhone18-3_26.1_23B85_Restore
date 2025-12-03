@interface BridgedContext
- (void)useObject:(id)object forClass:(Class)class;
- (void)useObject:(id)object forClass:(Class)class name:(id)name;
- (void)useObject:(id)object forProtocol:(id)protocol;
- (void)useObject:(id)object forProtocol:(id)protocol name:(id)name;
@end

@implementation BridgedContext

- (void)useObject:(id)object forClass:(Class)class
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1BF0B6400(v7, ObjCClassMetadata);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (void)useObject:(id)object forClass:(Class)class name:(id)name
{
  swift_unknownObjectRetain();
  nameCopy = name;
  selfCopy = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1BF17A0AC();

  sub_1BF0B6634(v10, ObjCClassMetadata);

  __swift_destroy_boxed_opaque_existential_1(v10);
}

- (void)useObject:(id)object forProtocol:(id)protocol
{
  swift_unknownObjectRetain();
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  sub_1BF0B67A8(v8, protocolCopy);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)useObject:(id)object forProtocol:(id)protocol name:(id)name
{
  swift_unknownObjectRetain();
  protocolCopy = protocol;
  nameCopy = name;
  selfCopy = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  sub_1BF17A0AC();

  sub_1BF0B68E4(v11, protocolCopy);

  __swift_destroy_boxed_opaque_existential_1(v11);
}

@end