@interface ADClientIdentifierProvider
- (ADClientIdentifierProvider)init;
- (id)getIdentifiersWithType:(int64_t)type;
- (void)notificationReceived;
@end

@implementation ADClientIdentifierProvider

- (ADClientIdentifierProvider)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_264E56344();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_264E56334();
  v7 = sub_264E56324();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_264E56314();
  v11 = sub_264E536C4(v6, v10, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (id)getIdentifiersWithType:(int64_t)type
{
  v7 = *(&self->super.isa + OBJC_IVAR___ADClientIdentifierProvider_lock);
  sub_264E560B4();
  selfCopy = self;

  sub_264E51798(&qword_27FFB6EF8, &qword_264E57E10);
  sub_264E560C4();

  type metadata accessor for ClientRotatingIdentifier();
  v5 = sub_264E563C4();

  return v5;
}

- (void)notificationReceived
{
  v4 = *(&self->super.isa + OBJC_IVAR___ADClientIdentifierProvider_lock);
  sub_264E560B4();
  selfCopy = self;

  sub_264E560C4();
}

@end