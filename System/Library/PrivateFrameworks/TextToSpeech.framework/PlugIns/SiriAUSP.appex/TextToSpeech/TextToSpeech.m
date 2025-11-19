Swift::Void __swiftcall AudioUnitFactory.beginRequest(with:)(NSExtensionContext with)
{
  v3 = *(v1 + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context);
  *(v1 + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context) = with;
  v2 = with.super.isa;
}

AUAudioUnit __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioUnitFactory.createAudioUnit(with:)(AudioComponentDescription with)
{
  sub_100001678();
  result.super.isa = sub_100001668();
  if (!v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit);
    *(v1 + OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit) = result;
    isa = result.super.isa;
    v6 = result.super.isa;

    return isa;
  }

  return result;
}

id AudioUnitFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioUnitFactory.init()()
{
  *&v0[OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_audioUnit] = 0;
  *&v0[OBJC_IVAR____TtC8SiriAUSP16AudioUnitFactory_context] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id AudioUnitFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}