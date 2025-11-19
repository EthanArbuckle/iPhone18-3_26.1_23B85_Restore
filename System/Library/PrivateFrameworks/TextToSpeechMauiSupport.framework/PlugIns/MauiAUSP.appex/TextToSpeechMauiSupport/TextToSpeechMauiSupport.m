AUAudioUnit __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioUnitFactory.createAudioUnit(with:)(AudioComponentDescription with)
{
  componentFlagsMask = with.componentFlagsMask;
  componentManufacturer = with.componentManufacturer;
  componentType = with.componentType;
  componentSubType = with.componentSubType;
  componentFlags = with.componentFlags;
  sub_10000183C();
  v16 = 0;
  v15[0] = componentType;
  v15[1] = componentSubType;
  v15[2] = componentManufacturer;
  v15[3] = componentFlags;
  v15[4] = componentFlagsMask;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithComponentDescription:v15 error:&v16];
  v8 = v7;
  v9 = v16;
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit);
    *(v1 + OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit) = v7;
    v11 = v9;
    v12 = v8;
  }

  else
  {
    v13 = v16;
    sub_10000182C();

    swift_willThrow();
  }

  return v8;
}

id AudioUnitFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioUnitFactory.init()()
{
  *&v0[OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_auAudioUnit] = 0;
  *&v0[OBJC_IVAR____TtC8MauiAUSP16AudioUnitFactory_observation] = 0;
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

id sub_10000172C(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v4 = [v3 initWithComponentDescription:v8 error:&v10];
  if (v4)
  {
    v5 = v10;
  }

  else
  {
    v6 = v10;
    sub_10000182C();

    swift_willThrow();
  }

  return v4;
}