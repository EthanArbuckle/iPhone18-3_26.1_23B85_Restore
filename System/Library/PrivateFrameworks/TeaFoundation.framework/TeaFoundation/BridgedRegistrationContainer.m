@interface BridgedRegistrationContainer
- (id)registerClass:(Class)a3 factory:(id)a4;
- (id)registerClass:(Class)a3 name:(id)a4 factory:(id)a5;
@end

@implementation BridgedRegistrationContainer

- (id)registerClass:(Class)a3 name:(id)a4 factory:(id)a5
{
  v7 = _Block_copy(a5);
  if (a4)
  {
    v8 = sub_1BF17A0AC();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  v13 = sub_1BEFF27E8(ObjCClassMetadata, v8, a4, sub_1BEFFCB08, v11);

  return v13;
}

- (id)registerClass:(Class)a3 factory:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  v9 = sub_1BEFF2C9C(ObjCClassMetadata, sub_1BEFFCB08, v7);

  return v9;
}

@end