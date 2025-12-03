@interface AudioUnitFactory
- (_TtC15KonaSynthesizer16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error;
@end

@implementation AudioUnitFactory

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)description error:(id *)error
{
  v5 = *&description->componentType;
  v6 = *&description->componentManufacturer;
  componentFlagsMask = description->componentFlagsMask;
  type metadata accessor for KonaSynthesizerAudioUnit();
  selfCopy = self;
  v9 = sub_100001874(v5, v6, componentFlagsMask, 0);
  v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit) = v9;
  v11 = v9;

  v12 = v11;

  return v12;
}

- (_TtC15KonaSynthesizer16AudioUnitFactory)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioUnitFactory();
  return [(AudioUnitFactory *)&v3 init];
}

@end