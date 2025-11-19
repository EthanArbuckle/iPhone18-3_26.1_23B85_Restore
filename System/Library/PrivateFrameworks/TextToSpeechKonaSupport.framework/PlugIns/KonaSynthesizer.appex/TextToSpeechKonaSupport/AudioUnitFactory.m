@interface AudioUnitFactory
- (_TtC15KonaSynthesizer16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4;
@end

@implementation AudioUnitFactory

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4
{
  v5 = *&a3->componentType;
  v6 = *&a3->componentManufacturer;
  componentFlagsMask = a3->componentFlagsMask;
  type metadata accessor for KonaSynthesizerAudioUnit();
  v8 = self;
  v9 = sub_100001874(v5, v6, componentFlagsMask, 0);
  v10 = *(&v8->super.isa + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit);
  *(&v8->super.isa + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit) = v9;
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