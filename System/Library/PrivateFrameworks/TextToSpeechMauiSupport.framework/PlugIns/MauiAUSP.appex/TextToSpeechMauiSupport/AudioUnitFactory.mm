@interface AudioUnitFactory
- (_TtC8MauiAUSP16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error;
@end

@implementation AudioUnitFactory

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error
{
  v5 = *&description->componentType;
  v6 = *&description->componentManufacturer;
  componentFlagsMask = description->componentFlagsMask;
  sub_10000183C();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v10 = sub_10000172C(v5, v6, componentFlagsMask);
  v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit) = v10;
  v12 = v10;

  v13 = v12;

  return v13;
}

- (_TtC8MauiAUSP16AudioUnitFactory)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_observation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioUnitFactory();
  return [(AudioUnitFactory *)&v3 init];
}

@end