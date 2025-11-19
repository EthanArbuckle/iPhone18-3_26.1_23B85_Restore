@interface CRFormAdjustFieldHeightStep
- (_TtC15TextRecognition27CRFormAdjustFieldHeightStep)init;
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormAdjustFieldHeightStep

- (_TtC15TextRecognition27CRFormAdjustFieldHeightStep)init
{
  v3 = sub_1B41416A0(8u);
  v4 = v3;
  v5 = v3 <= 0.0;
  v6 = 1.15;
  if (!v5)
  {
    v6 = v4;
  }

  *(&self->super.isa + OBJC_IVAR____TtC15TextRecognition27CRFormAdjustFieldHeightStep_effectiveUnderlinedSignatureFieldHeightScaling) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRFormAdjustFieldHeightStep();
  return [(CRFormAdjustFieldHeightStep *)&v8 init];
}

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70);
  v9 = sub_1B429FDF8();
  if (a4)
  {
    sub_1B429FDF8();
  }

  v10 = a5;
  v11 = self;
  sub_1B4100F14(v9);

  v12 = sub_1B429FDE8();

  return v12;
}

@end