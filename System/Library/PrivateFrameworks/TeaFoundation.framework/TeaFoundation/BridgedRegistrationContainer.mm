@interface BridgedRegistrationContainer
- (id)registerClass:(Class)class factory:(id)factory;
- (id)registerClass:(Class)class name:(id)name factory:(id)factory;
@end

@implementation BridgedRegistrationContainer

- (id)registerClass:(Class)class name:(id)name factory:(id)factory
{
  v7 = _Block_copy(factory);
  if (name)
  {
    v8 = sub_1BF17A0AC();
    name = v9;
  }

  else
  {
    v8 = 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  v13 = sub_1BEFF27E8(ObjCClassMetadata, v8, name, sub_1BEFFCB08, v11);

  return v13;
}

- (id)registerClass:(Class)class factory:(id)factory
{
  v5 = _Block_copy(factory);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  v9 = sub_1BEFF2C9C(ObjCClassMetadata, sub_1BEFFCB08, v7);

  return v9;
}

@end