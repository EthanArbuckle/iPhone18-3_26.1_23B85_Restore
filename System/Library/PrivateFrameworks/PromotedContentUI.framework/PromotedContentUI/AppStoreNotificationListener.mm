@interface AppStoreNotificationListener
- (void)backgrounded:(id)a3;
- (void)becameActive:(id)a3;
- (void)resignActive:(id)a3;
@end

@implementation AppStoreNotificationListener

- (void)becameActive:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v8 = *self->theLock;

  [v8 lock];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *&self->lifecycleDelegate[8];
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  [v8 unlock];

  (*(v5 + 8))(v7, v4);
}

- (void)resignActive:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v8 = *self->theLock;

  [v8 lock];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *&self->lifecycleDelegate[8];
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  [v8 unlock];

  (*(v5 + 8))(v7, v4);
}

- (void)backgrounded:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v8 = *self->theLock;

  [v8 lock];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *&self->lifecycleDelegate[8];
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  [v8 unlock];

  (*(v5 + 8))(v7, v4);
}

@end