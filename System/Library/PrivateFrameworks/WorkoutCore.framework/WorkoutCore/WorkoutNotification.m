@interface WorkoutNotification
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC11WorkoutCore19WorkoutNotification)init;
@end

@implementation WorkoutNotification

- (NSString)description
{
  v2 = self;
  v3 = WorkoutNotification.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (_TtC11WorkoutCore19WorkoutNotification)init
{
  static Date.now.getter();
  *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType) = 5;
  *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for WorkoutNotification();
  return [(WorkoutNotification *)&v4 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  outlined init with copy of Any?(v11, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  type metadata accessor for WorkoutNotification();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static WorkoutNotification.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Any?(v11, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

@end