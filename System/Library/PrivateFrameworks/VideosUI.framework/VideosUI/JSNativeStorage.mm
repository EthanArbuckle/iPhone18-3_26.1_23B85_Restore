@interface JSNativeStorage
- (void)readData:(id)data :(id)a4;
- (void)storeData:(id)data :(id)a4 :(id)a5;
@end

@implementation JSNativeStorage

- (void)storeData:(id)data :(id)a4 :(id)a5
{
  v7 = sub_1E4205F14();
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = a5;
  selfCopy = self;
  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E3BA2110(v7, v9, v12, v10);

  __swift_destroy_boxed_opaque_existential_1(v12);
}

- (void)readData:(id)data :(id)a4
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a4;
  selfCopy = self;
  sub_1E3BA2B8C(v6, v8, v9);
}

@end