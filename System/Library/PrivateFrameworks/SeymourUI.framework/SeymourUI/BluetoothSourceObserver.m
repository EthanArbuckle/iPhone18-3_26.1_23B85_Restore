@interface BluetoothSourceObserver
- (_TtC9SeymourUI23BluetoothSourceObserver)init;
- (void)handleUpdatedSourceList:(id)a3;
@end

@implementation BluetoothSourceObserver

- (_TtC9SeymourUI23BluetoothSourceObserver)init
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772E88);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI23BluetoothSourceObserver_state) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(BluetoothSourceObserver *)&v6 init];
}

- (void)handleUpdatedSourceList:(id)a3
{
  sub_20B51C88C(0, &qword_27C772E78);
  sub_20C0E0E4C();
  sub_20C13CF74();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI23BluetoothSourceObserver_state);
  v5 = self;
  os_unfair_lock_lock((v4 + 40));
  sub_20C0E0EB4((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 40));
}

@end