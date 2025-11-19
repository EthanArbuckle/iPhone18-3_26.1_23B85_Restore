@interface AudioUnitFactory
- (_TtC8MauiAUSP16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4;
@end

@implementation AudioUnitFactory

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4
{
  v5 = *&a3->componentType;
  v6 = *&a3->componentManufacturer;
  componentFlagsMask = a3->componentFlagsMask;
  sub_10000183C();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = self;
  v10 = sub_10000172C(v5, v6, componentFlagsMask);
  v11 = *(&v9->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit);
  *(&v9->super.isa + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit) = v10;
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