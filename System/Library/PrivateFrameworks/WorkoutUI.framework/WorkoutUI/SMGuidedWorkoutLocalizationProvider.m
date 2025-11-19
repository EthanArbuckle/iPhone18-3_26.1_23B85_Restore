@interface SMGuidedWorkoutLocalizationProvider
- (SMGuidedWorkoutLocalizationProvider)init;
- (id)guidedWorkoutClose;
- (id)guidedWorkoutNoInternet;
- (id)guidedWorkoutOK;
- (id)guidedWorkoutOutdoorPushRunningPace;
- (id)guidedWorkoutOutdoorPushWalkingPace;
- (id)guidedWorkoutPlaybackError;
- (id)guidedWorkoutRun;
- (id)guidedWorkoutVulcanDisambiguationTitle;
- (id)guidedWorkoutWalk;
@end

@implementation SMGuidedWorkoutLocalizationProvider

- (id)guidedWorkoutOutdoorPushWalkingPace
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x800000020CBA3D80;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutOutdoorPushRunningPace
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x800000020CBA3DB0;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutWalk
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._object = 0x800000020CBA3DE0;
  v4.value._object = 0x800000020CB99A10;
  v3._countAndFlagsBits = 0xD000000000000013;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutRun
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._object = 0x800000020CBA3E00;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v4.value._object = 0x800000020CB99A10;
  v3._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutVulcanDisambiguationTitle
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x800000020CBA3E20;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutClose
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x800000020CBA3E50;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutOK
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 19279;
  v4._object = 0xE200000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutNoInternet
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x800000020CBA3E70;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)guidedWorkoutPlaybackError
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000020CBA3EA0;
  v4.value._object = 0x800000020CB99A10;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  v7 = MEMORY[0x20F30BAD0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (SMGuidedWorkoutLocalizationProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GuidedWorkoutLocalizationProvider();
  return [(SMGuidedWorkoutLocalizationProvider *)&v3 init];
}

@end