@interface BridgedContext
- (void)useObject:(id)a3 forClass:(Class)a4;
- (void)useObject:(id)a3 forClass:(Class)a4 name:(id)a5;
- (void)useObject:(id)a3 forProtocol:(id)a4;
- (void)useObject:(id)a3 forProtocol:(id)a4 name:(id)a5;
@end

@implementation BridgedContext

- (void)useObject:(id)a3 forClass:(Class)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1BF0B6400(v7, ObjCClassMetadata);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (void)useObject:(id)a3 forClass:(Class)a4 name:(id)a5
{
  swift_unknownObjectRetain();
  v7 = a5;
  v8 = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1BF17A0AC();

  sub_1BF0B6634(v10, ObjCClassMetadata);

  __swift_destroy_boxed_opaque_existential_1(v10);
}

- (void)useObject:(id)a3 forProtocol:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  sub_1BF0B67A8(v8, v6);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)useObject:(id)a3 forProtocol:(id)a4 name:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  v10 = self;
  sub_1BF17B01C();
  swift_unknownObjectRelease();
  sub_1BF17A0AC();

  sub_1BF0B68E4(v11, v8);

  __swift_destroy_boxed_opaque_existential_1(v11);
}

@end