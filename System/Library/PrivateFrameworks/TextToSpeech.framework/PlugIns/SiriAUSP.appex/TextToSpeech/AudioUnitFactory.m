@interface AudioUnitFactory
- (_TtC8SiriAUSP16AudioUnitFactory)init;
- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation AudioUnitFactory

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context);
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context) = a3;
  v3 = a3;
}

- (id)createAudioUnitWithComponentDescription:(AudioComponentDescription *)a3 error:(id *)a4
{
  v5 = *&a3->componentType;
  v6 = *&a3->componentManufacturer;
  componentFlagsMask = a3->componentFlagsMask;
  sub_100001678();
  v8 = self;
  v9 = sub_100001668();
  v10 = *(&v8->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit);
  *(&v8->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit) = v9;
  v11 = v9;

  v12 = v11;

  return v12;
}

- (_TtC8SiriAUSP16AudioUnitFactory)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioUnitFactory();
  return [(AudioUnitFactory *)&v3 init];
}

@end