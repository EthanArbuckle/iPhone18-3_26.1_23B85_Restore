uint64_t ConsiderateVolumeAudioCategory.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x656E696665646E75;
    }

    if (a1 == 1)
    {
      return 0x7472656C61;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x656E6F74676E6972;
      case 3:
        return 1769105779;
      case 4:
        return 0x6D72616C61;
    }
  }

  result = sub_261AD95F0();
  __break(1u);
  return result;
}

uint64_t sub_261AD1380()
{
  v1 = *v0;
  sub_261AD9620();
  MEMORY[0x266718640](v1);
  return sub_261AD9640();
}

uint64_t sub_261AD13F4()
{
  v1 = *v0;
  sub_261AD9620();
  MEMORY[0x266718640](v1);
  return sub_261AD9640();
}

unint64_t sub_261AD1438@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261AD3A9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_261AD1478()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    switch(v1)
    {
      case 2:
        return 0x656E6F74676E6972;
      case 3:
        return 1769105779;
      case 4:
        return 0x6D72616C61;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    return 0x656E696665646E75;
  }

  if (v1 != 1)
  {
LABEL_13:
    v3 = *v0;
    result = sub_261AD95F0();
    __break(1u);
    return result;
  }

  return 0x7472656C61;
}

RelevanceServicesCompanion::ConsiderateVolumeThrottleStrategy_optional __swiftcall ConsiderateVolumeThrottleStrategy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_261AD1584()
{
  v1 = *v0;
  sub_261AD9620();
  MEMORY[0x266718640](v1);
  return sub_261AD9640();
}

uint64_t sub_261AD15F8()
{
  v1 = *v0;
  sub_261AD9620();
  MEMORY[0x266718640](v1);
  return sub_261AD9640();
}

void *sub_261AD163C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t ConsiderateVolumeContext.audioCategory.getter()
{
  v1 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConsiderateVolumeContext.audioCategory.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double ConsiderateVolumeContext.timeoutInterval.getter()
{
  v1 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConsiderateVolumeContext.timeoutInterval.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConsiderateVolumeContext.throttleStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ConsiderateVolumeContext.throttleStrategy.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

double ConsiderateVolumeContext.throttleInterval.getter()
{
  v1 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConsiderateVolumeContext.throttleInterval.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConsiderateVolumeContext.userInfo.getter()
{
  v1 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ConsiderateVolumeContext.userInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ConsiderateVolumeContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConsiderateVolumeContext.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory] = 0;
  *&v0[OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval] = 0x3FC999999999999ALL;
  v0[OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy] = 0;
  *&v0[OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ConsiderateVolumeContext.__allocating_init(builder:)(void (*a1)(void))
{
  v3 = [objc_allocWithZone(v1) init];
  a1();

  return v3;
}

_BYTE *ConsiderateVolumeContext.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = [v2 init];
  v5 = sub_261AD94B0();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  swift_beginAccess();
  *&v4[v8] = v7;
  v9 = sub_261AD94B0();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  swift_beginAccess();
  *&v4[v12] = v11;
  v13 = sub_261AD94B0();
  v14 = [a1 decodeIntegerForKey_];

  LOBYTE(v13) = v14 == 1;
  v15 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  swift_beginAccess();
  v4[v15] = v13;
  v16 = sub_261AD94B0();
  [a1 decodeDoubleForKey_];
  v18 = v17;

  v19 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval;
  swift_beginAccess();
  *&v4[v19] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8C50, &qword_261AD9C80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_261AD9C70;
  *(v20 + 32) = sub_261AD3B64(0, &qword_27FED8C58, 0x277CBEAC0);
  *(v20 + 40) = sub_261AD3B64(0, &qword_27FED8C60, 0x277CCACA8);
  *(v20 + 48) = sub_261AD3B64(0, &qword_27FED8C68, 0x277CCABB0);
  *(v20 + 56) = sub_261AD3B64(0, &qword_27FED8C70, 0x277CBEA60);
  sub_261AD9530();

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8C80, &qword_261AD9C90);
    if (swift_dynamicCast())
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_261AD3BAC(v26, &qword_27FED8C78, &qword_261AD9C88);
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  v23 = *&v4[v22];
  *&v4[v22] = v21;

  return v4;
}

Swift::Void __swiftcall ConsiderateVolumeContext.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeDouble:v8 forKey:v7];

  v9 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeDouble:v14 forKey:v13];

  v15 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  if (*(v1 + v15))
  {

    v16 = sub_261AD94A0();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();
}

BOOL ConsiderateVolumeContext.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_261AD3AF4(a1, v26);
  if (!v27)
  {
    sub_261AD3BAC(v26, &qword_27FED8C78, &qword_261AD9C88);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory;
  swift_beginAccess();
  if (v4 != *&v25[v5])
  {
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval;
  swift_beginAccess();
  if (v7 != *&v25[v8])
  {
    goto LABEL_11;
  }

  v9 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  swift_beginAccess();
  LODWORD(v9) = *(v1 + v9);
  v10 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy;
  swift_beginAccess();
  if (v9 != v25[v10] || (v11 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval, swift_beginAccess(), v12 = *(v1 + v11), v13 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval, swift_beginAccess(), v12 != *&v25[v13]))
  {
LABEL_11:

    return 0;
  }

  v14 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo;
  swift_beginAccess();
  v17 = *&v25[v16];
  if (v15)
  {
    if (v17)
    {

      sub_261AD37D4(v18);
      v19 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v20 = sub_261AD94A0();

      v21 = [v19 initWithDictionary_];

      sub_261AD37D4(v17);
      v22 = sub_261AD94A0();

      v23 = [v21 isEqualToDictionary_];

      return v23;
    }

    goto LABEL_11;
  }

  return v17 == 0;
}

uint64_t ConsiderateVolumeAdjustmentResult.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_timestamp;
  v4 = sub_261AD9450();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ConsiderateVolumeAdjustmentResult.__allocating_init(volume:ambientSpl:audioCategory:profile:timestamp:isContinuous:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, float a6, float a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume] = a6;
  *&v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl] = a7;
  *&v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory] = a1;
  *&v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile] = a2;
  v16 = OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_timestamp;
  v17 = sub_261AD9450();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v15[v16], a3, v17);
  v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous] = a4;
  *&v15[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo] = a5;
  v21.receiver = v15;
  v21.super_class = v7;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v18 + 8))(a3, v17);
  return v19;
}

id ConsiderateVolumeAdjustmentResult.init(volume:ambientSpl:audioCategory:profile:timestamp:isContinuous:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, float a6, float a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume] = a6;
  *&v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl] = a7;
  *&v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory] = a1;
  *&v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile] = a2;
  v16 = OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_timestamp;
  v17 = sub_261AD9450();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[v16], a3, v17);
  v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous] = a4;
  *&v7[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo] = a5;
  v21.receiver = v7;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v18 + 8))(a3, v17);
  return v19;
}

id ConsiderateVolumeAdjustmentResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8CA8, &qword_261AD9C98) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v42[-v6];
  v8 = sub_261AD9450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v49 = &v42[-v14];
  v15 = sub_261AD94B0();
  [a1 decodeFloatForKey_];
  v17 = v16;

  v18 = sub_261AD94B0();
  [a1 decodeFloatForKey_];
  v20 = v19;

  v21 = sub_261AD94B0();
  v45 = [a1 decodeIntegerForKey_];

  v22 = sub_261AD94B0();
  v44 = [a1 decodeIntegerForKey_];

  sub_261AD3B64(0, &qword_27FED8CB0, 0x277CBEAA8);
  v23 = sub_261AD9520();
  if (v23)
  {
    v24 = v23;
    v25 = *(v9 + 56);
    v25(v5, 1, 1, v8);
    sub_261AD3C0C();
    sub_261AD95D0();

    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      v26 = *(v9 + 32);
      v26(v7, v5, v8);
      v25(v7, 0, 1, v8);
      v26(v49, v7, v8);
      goto LABEL_7;
    }
  }

  else
  {
    v25 = *(v9 + 56);
  }

  v25(v7, 1, 1, v8);
  sub_261AD9420();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_261AD3BAC(v7, &qword_27FED8CA8, &qword_261AD9C98);
  }

LABEL_7:
  v27 = sub_261AD94B0();
  v43 = [a1 decodeBoolForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8C50, &qword_261AD9C80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_261AD9C70;
  *(v28 + 32) = sub_261AD3B64(0, &qword_27FED8C58, 0x277CBEAC0);
  *(v28 + 40) = sub_261AD3B64(0, &qword_27FED8C60, 0x277CCACA8);
  *(v28 + 48) = sub_261AD3B64(0, &qword_27FED8C68, 0x277CCABB0);
  *(v28 + 56) = sub_261AD3B64(0, &qword_27FED8C70, 0x277CBEA60);
  v46 = a1;
  sub_261AD9530();

  if (v53)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8C80, &qword_261AD9C90);
    if (swift_dynamicCast())
    {
      v29 = v50;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_261AD3BAC(v52, &qword_27FED8C78, &qword_261AD9C88);
    v29 = 0;
  }

  if (v44 >= 3)
  {
    v30 = 1;
  }

  else
  {
    v30 = v44;
  }

  if (v45 >= 5)
  {
    v31 = 0;
  }

  else
  {
    v31 = v45;
  }

  v32 = *(v9 + 16);
  v32(v13, v49, v8);
  v33 = v13;
  v34 = ObjectType;
  v35 = objc_allocWithZone(ObjectType);
  *&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume] = v17;
  *&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl] = v20;
  *&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory] = v31;
  *&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile] = v30;
  v32(&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_timestamp], v33, v8);
  v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous] = v43;
  *&v35[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo] = v29;
  v51.receiver = v35;
  v51.super_class = v34;
  v36 = objc_msgSendSuper2(&v51, sel_init);

  v37 = *(v9 + 8);
  v37(v33, v8);
  v37(v49, v8);
  v38 = v47;
  swift_getObjectType();
  v39 = *((*MEMORY[0x277D85000] & *v38) + 0x30);
  v40 = *((*MEMORY[0x277D85000] & *v38) + 0x34);
  swift_deallocPartialClassInstance();
  return v36;
}

Swift::Void __swiftcall ConsiderateVolumeAdjustmentResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume);
  v5 = sub_261AD94B0();
  LODWORD(v6) = v4;
  [(objc_class *)with.super.isa encodeFloat:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl);
  v8 = sub_261AD94B0();
  LODWORD(v9) = v7;
  [(objc_class *)with.super.isa encodeFloat:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory);
  v11 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile);
  v13 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeInteger:v12 forKey:v13];

  v14 = sub_261AD9430();
  v15 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous);
  v17 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeBool:v16 forKey:v17];

  if (*(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo))
  {
    v18 = sub_261AD94A0();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_261AD94B0();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();
}

BOOL ConsiderateVolumeAdjustmentResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_261AD3AF4(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume) == *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_volume] && *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl) == *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_ambientSpl] && *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory) == *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_audioCategory] && *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile) == *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_profile] && (sub_261AD9440() & 1) != 0 && *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous) == v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_isContinuous])
      {
        v4 = *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo);
        v5 = *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo];
        if (!v4)
        {

          return v5 == 0;
        }

        if (v5)
        {
          v6 = *&v12[OBJC_IVAR____TtC26RelevanceServicesCompanion33ConsiderateVolumeAdjustmentResult_userInfo];

          sub_261AD37D4(v4);
          v7 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
          v8 = sub_261AD94A0();

          v9 = [v7 initWithDictionary_];

          sub_261AD37D4(v5);
          v10 = sub_261AD94A0();

          v11 = [v9 isEqualToDictionary_];

          return v11;
        }
      }
    }
  }

  else
  {
    sub_261AD3BAC(v13, &qword_27FED8C78, &qword_261AD9C88);
  }

  return 0;
}

uint64_t sub_261AD3628(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_261AD9540();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_261AD3BAC(v10, &qword_27FED8C78, &qword_261AD9C88);
  return v8 & 1;
}

id _s26RelevanceServicesCompanion24ConsiderateVolumeContextCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261AD37D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FED8D50, &qword_261AD9F18);
    v2 = sub_261AD95C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_261AD4044(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_261AD40A0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_261AD40A0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_261AD40A0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_261AD9560();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_261AD40A0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_261AD3A9C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_261AD3AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8C78, &qword_261AD9C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261AD3B64(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_261AD3BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_261AD3C0C()
{
  result = qword_27FED8CB8;
  if (!qword_27FED8CB8)
  {
    sub_261AD9450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8CB8);
  }

  return result;
}

unint64_t sub_261AD3C68()
{
  result = qword_27FED8CC0;
  if (!qword_27FED8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8CC0);
  }

  return result;
}

unint64_t sub_261AD3CC0()
{
  result = qword_27FED8CC8;
  if (!qword_27FED8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConsiderateVolumeThrottleStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConsiderateVolumeThrottleStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for ConsiderateVolumeAdjustmentResult()
{
  result = qword_27FED8D40;
  if (!qword_27FED8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AD3F40()
{
  result = sub_261AD9450();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_261AD4044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_261AD40A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t ConsiderateVolumeAudioCategory.rsAudioCategory.getter(unint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelevancePlatformFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RelevancePlatformFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_261AD41B8()
{
  result = qword_27FED8DC0;
  if (!qword_27FED8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8DC0);
  }

  return result;
}

uint64_t sub_261AD4214()
{
  sub_261AD9620();
  MEMORY[0x266718640](0);
  return sub_261AD9640();
}

uint64_t sub_261AD4280()
{
  sub_261AD9620();
  MEMORY[0x266718640](0);
  return sub_261AD9640();
}

void __swiftcall RSConsiderateVolumeSettingsController.init()(RSConsiderateVolumeSettingsController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id RSConsiderateVolumeSettingsController.init()()
{
  *&v0[OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController] = [objc_allocWithZone(type metadata accessor for ConsiderateVolumeSettingsController()) init];
  v2.receiver = v0;
  v2.super_class = RSConsiderateVolumeSettingsController;
  return objc_msgSendSuper2(&v2, sel_init);
}

void __swiftcall RSConsiderateVolumeSettingsController.init(alwaysSynchronize:)(RSConsiderateVolumeSettingsController *__return_ptr retstr, Swift::Bool alwaysSynchronize)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithAlwaysSynchronize_];
}

id RSConsiderateVolumeSettingsController.init(alwaysSynchronize:)(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for ConsiderateVolumeSettingsController());
  *&v2[OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController] = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(a1);
  v6.receiver = v2;
  v6.super_class = RSConsiderateVolumeSettingsController;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t RSConsiderateVolumeSettingsController.isEnabled(for:)(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  if (*(v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_featureEnabled) != 1)
  {
    goto LABEL_7;
  }

  if (a1 >= 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  if (v3 <= 2)
  {
    if ((v3 - 1) >= 2)
    {
LABEL_7:
      v4 = 0;
      return v4 & 1;
    }

    goto LABEL_9;
  }

  if (v3 == 4)
  {
LABEL_9:
    v5 = 0xEF64656C62616E45;
    v6 = 0x656E6F74676E6972;
    goto LABEL_11;
  }

  v5 = 0xEB0000000064656CLL;
  v6 = 0x62616E4569726973;
LABEL_11:
  v7 = sub_261AD8730(v6, v5, *(v1 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController));
  if (v7 == 2)
  {
    v8 = (v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock(v8);
    v11 = MEMORY[0x277D839B0];
    v4 = 1;
    v10[0] = 1;
    sub_261AD4D00(v10, v6, v5);
    os_unfair_lock_unlock(v8);
  }

  else
  {
    v4 = v7;
  }

  return v4 & 1;
}

void RSConsiderateVolumeSettingsController.setEnabled(_:for:)(char a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  if (a2 >= 5)
  {
    a2 = 0;
  }

  ConsiderateVolumeSettingsController.setEnabled(_:for:)(a1, a2);
}

unint64_t RSConsiderateVolumeSettingsController.getUserProfile(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);
  if ((a1 - 1) < 2 || a1 == 4)
  {
    v3 = 0xEB00000000656C69;
    v4 = 0x666F725072657375;
  }

  else
  {
    if (a1 != 3)
    {
      return 1;
    }

    v3 = 0xEF656C69666F7250;
    v4 = 0x7265735569726973;
  }

  result = sub_261AD8A4C(v4, v3, *(v1 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController));
  if ((v6 & 1) != 0 || result >= 3)
  {
    v7 = (v2 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock(v7);
    v8[3] = MEMORY[0x277D83B88];
    v8[0] = 1;
    sub_261AD4D00(v8, v4, v3);
    os_unfair_lock_unlock(v7);
    return 1;
  }

  return result;
}

unint64_t RSConsiderateVolumeSettingsController.setUserProfile(_:for:)(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (a2 == 3)
  {
    v4 = 0x7265735569726973;
    v5 = 0xEF656C69666F7250;
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v4 = 0x666F725072657375;
    v5 = 0xEB00000000656C69;
  }

  return sub_261AD7FD0(v4, v5, v3, *(v2 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController));
}

Swift::Void __swiftcall RSConsiderateVolumeSettingsController.synchronize()()
{
  v1 = *(v0 + OBJC_IVAR___RSConsiderateVolumeSettingsController_settingsController);

  v2 = v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  *(v2 + 8) = MEMORY[0x277D84F98];

  os_unfair_lock_unlock(v2);
}

uint64_t static RSConsiderateVolumeSettingsController.getAudioCategory(fromAVAudioCategory:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6F74676E6952 && a2 == 0xE800000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6D72616C41 && a2 == 0xE500000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x7472656C41 && a2 == 0xE500000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6D6F436563696F56 && a2 == 0xEC000000646E616DLL)
  {
    return 3;
  }

  if (sub_261AD95E0())
  {
    return 3;
  }

  return 0;
}

uint64_t sub_261AD4D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_261AD40A0(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v17, v18);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12);
    sub_261AD50B8(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8);
    __swift_destroy_boxed_opaque_existential_0(v17);

    *v3 = v16;
  }

  else
  {
    sub_261AD53F8(a1);
    sub_261AD4E64(a2, a3, v17);

    return sub_261AD53F8(v17);
  }

  return result;
}

double sub_261AD4E64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261AD784C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261AD7C34();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_261AD40A0((*(v12 + 56) + 32 * v9), a3);
    sub_261AD4F08(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_261AD4F08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261AD9550() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_261AD9620();

      sub_261AD94D0();
      v14 = sub_261AD9640();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_261AD50B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v34 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v13 = *a5;
  v15 = sub_261AD784C(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_261AD40A0(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_261AD7C34();
    goto LABEL_7;
  }

  sub_261AD797C(v18, a4 & 1);
  v24 = *a5;
  v25 = sub_261AD784C(a2, a3);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_261AD9610();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = v34;
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_261AD52D8(v15, a2, a3, v31, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

_OWORD *sub_261AD52D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_261AD40A0(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t type metadata accessor for RSConsiderateVolumeSettingsController()
{
  result = qword_27FED8DD0;
  if (!qword_27FED8DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FED8DD0);
  }

  return result;
}

uint64_t sub_261AD53F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_261AD5560()
{
  v0 = sub_261AD9490();
  __swift_allocate_value_buffer(v0, qword_27FED8E80);
  __swift_project_value_buffer(v0, qword_27FED8E80);
  return sub_261AD9480();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t ConsiderateVolumeProfile.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id ConsiderateVolumeSettingsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ConsiderateVolumeSettingsController.isEnabled(for:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_featureEnabled) != 1)
  {
    goto LABEL_5;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = 0xEB0000000064656CLL;
      v4 = 0x62616E4569726973;
      goto LABEL_10;
    }

    if (a1 != 4)
    {
      goto LABEL_14;
    }

LABEL_9:
    v3 = 0xEF64656C62616E45;
    v4 = 0x656E6F74676E6972;
LABEL_10:
    v5 = sub_261AD8730(v4, v3, v1);
    if (v5 == 2)
    {
      v6 = (v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
      os_unfair_lock_lock((v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
      v8[3] = MEMORY[0x277D839B0];
      v2 = 1;
      LOBYTE(v8[0]) = 1;
      sub_261AD4D00(v8, v4, v3);
      os_unfair_lock_unlock(v6);
    }

    else
    {
      v2 = v5;
    }

    return v2 & 1;
  }

  if ((a1 - 1) < 2)
  {
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

LABEL_14:
  result = sub_261AD95F0();
  __break(1u);
  return result;
}

void ConsiderateVolumeSettingsController.setEnabled(_:for:)(char a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return;
    }

    if (a2 != 1)
    {
      goto LABEL_21;
    }
  }

  else if (a2 != 4)
  {
    if (a2 == 3)
    {
      v3 = 0x62616E4569726973;
      v4 = 0xEB0000000064656CLL;
LABEL_15:

      sub_261AD7DD8(v3, v4, a1 & 1, v2);
      return;
    }

    if (a2 == 2)
    {
      v3 = 0x656E6F74676E6972;
      v4 = 0xEF64656C62616E45;
      goto LABEL_15;
    }

LABEL_21:
    sub_261AD95F0();
    __break(1u);
    return;
  }

  oslog = sub_261AD9470();
  v6 = sub_261AD9500();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    if (a2 > 2)
    {
      v9 = 0x6D72616C61;
    }

    else
    {
      v9 = 0x7472656C61;
    }

    v10 = sub_261AD72A4(v9, 0xE500000000000000, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_261AD72A4(v9, 0xE500000000000000, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_261AD0000, oslog, v6, "Enabling/disabling %s category is not supported. %s category shares preferences with Ringtone.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266718A10](v8, -1, -1);
    MEMORY[0x266718A10](v7, -1, -1);
  }

  else
  {
  }
}

unint64_t ConsiderateVolumeSettingsController.getUserProfile(for:)(uint64_t a1)
{
  if (a1 <= 2)
  {
    if ((a1 - 1) >= 2)
    {
      if (a1)
      {
        goto LABEL_14;
      }

      return 1;
    }

    goto LABEL_8;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
LABEL_14:
      result = sub_261AD95F0();
      __break(1u);
      return result;
    }

LABEL_8:
    v2 = 0xEB00000000656C69;
    v3 = 0x666F725072657375;
    goto LABEL_9;
  }

  v2 = 0xEF656C69666F7250;
  v3 = 0x7265735569726973;
LABEL_9:
  result = sub_261AD8A4C(v3, v2, v1);
  if ((v5 & 1) != 0 || result >= 3)
  {
    v6 = (v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
    v7[3] = MEMORY[0x277D83B88];
    v7[0] = 1;
    sub_261AD4D00(v7, v3, v2);
    os_unfair_lock_unlock(v6);
    return 1;
  }

  return result;
}

uint64_t ConsiderateVolumeSettingsController.setUserProfile(_:for:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v4 = 0x7265735569726973;
      v5 = 0xEF656C69666F7250;
      goto LABEL_7;
    }

    if (a2 == 4)
    {
      return result;
    }

LABEL_12:
    result = sub_261AD95F0();
    __break(1u);
    return result;
  }

  if (a2 < 2)
  {
    return result;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v4 = 0x666F725072657375;
  v5 = 0xEB00000000656C69;
LABEL_7:

  return sub_261AD7FD0(v4, v5, v3, v2);
}

Swift::Void __swiftcall ConsiderateVolumeSettingsController.synchronize()()
{
  v1 = v0 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
  v2 = *(v1 + 8);

  *(v1 + 8) = MEMORY[0x277D84F98];

  os_unfair_lock_unlock(v1);
}

uint64_t ConsiderateVolumeSettingsController.hasActiveCategory.getter()
{
  v2 = v0;
  v3 = 0;
  v4 = 0;
  v91 = *MEMORY[0x277D85DE8];
  v5 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor;
  v81 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize;
  v6 = &v0[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache];
  v7 = v0[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_featureEnabled];
  v80 = v7;
  v79 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor;
  while (1)
  {
    while (1)
    {
      v8 = v3;
      if (v7)
      {
        break;
      }

LABEL_3:
      v4 = 1;
      v3 = 1;
      if (v8)
      {
        LOBYTE(v19) = 0;
        goto LABEL_67;
      }
    }

    v9 = *(&unk_28743BB30 + v4 + 4);
    if (v9 > 2)
    {
      break;
    }

    if ((v9 - 1) >= 2)
    {
      if (v9)
      {
        goto LABEL_69;
      }

      goto LABEL_3;
    }

LABEL_9:
    v10 = *&v2[v5];
    if (!v10)
    {
      goto LABEL_42;
    }

    v11 = v2[v81];
    v12 = v10;
    v1 = v12;
    if (v11 == 1)
    {

LABEL_24:
      LOBYTE(v89) = 0;
      v20 = sub_261AD94B0();
      v19 = [v1 BOOLForKey:v20 keyExistsAndHasValidFormat:&v89];

      if (v89 != 1)
      {

LABEL_42:
        os_unfair_lock_lock(v6);
        v42 = MEMORY[0x277D839B0];
        *(&v90 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v89) = 1;
        sub_261AD40A0(&v89, &v87);
        v43 = *&v6[2]._os_unfair_lock_opaque;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = *&v6[2]._os_unfair_lock_opaque;
        v45 = v82;
        *&v6[2]._os_unfair_lock_opaque = 0x8000000000000000;
        v46 = *__swift_mutable_project_boxed_opaque_existential_0(&v87, v88);
        v86 = v42;
        LOBYTE(v85) = v46;
        v47 = sub_261AD784C(0x656E6F74676E6972, 0xEF64656C62616E45);
        v49 = v45[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v1) = v48;
          if (v45[3] < v52)
          {
            sub_261AD797C(v52, isUniquelyReferenced_nonNull_native);
            v47 = sub_261AD784C(0x656E6F74676E6972, 0xEF64656C62616E45);
            if ((v1 & 1) != (v53 & 1))
            {
LABEL_55:
              v47 = sub_261AD9610();
              __break(1u);
LABEL_56:
              if (v1)
              {
                goto LABEL_57;
              }

LABEL_63:
              v71 = v47;
              sub_261AD7C34();
              v47 = v71;
              v54 = v82;
              if ((v8 & 1) == 0)
              {
                goto LABEL_64;
              }

LABEL_58:
              v69 = (v54[7] + 32 * v47);
              __swift_destroy_boxed_opaque_existential_0(v69);
              sub_261AD40A0(&v85, v69);
              goto LABEL_66;
            }

LABEL_47:
            v54 = v82;
            if (v1)
            {
              goto LABEL_58;
            }

LABEL_48:
            v55 = v47;
            v56 = *__swift_mutable_project_boxed_opaque_existential_0(&v85, v86);
            v84 = MEMORY[0x277D839B0];
            LOBYTE(v83) = v56;
            v54[(v55 >> 6) + 8] |= 1 << v55;
            v57 = (v54[6] + 16 * v55);
            *v57 = 0x656E6F74676E6972;
            v57[1] = 0xEF64656C62616E45;
            sub_261AD40A0(&v83, (v54[7] + 32 * v55));
            v58 = v54[2];
            v51 = __OFADD__(v58, 1);
            v59 = v58 + 1;
            if (v51)
            {
              __break(1u);
LABEL_51:

LABEL_52:
              os_unfair_lock_lock(v6);
              v60 = MEMORY[0x277D839B0];
              *(&v90 + 1) = MEMORY[0x277D839B0];
              LOBYTE(v89) = 1;
              sub_261AD40A0(&v89, &v87);
              v61 = *&v6[2]._os_unfair_lock_opaque;
              LOBYTE(v1) = swift_isUniquelyReferenced_nonNull_native();
              v82 = *&v6[2]._os_unfair_lock_opaque;
              v62 = v82;
              *&v6[2]._os_unfair_lock_opaque = 0x8000000000000000;
              v63 = *__swift_mutable_project_boxed_opaque_existential_0(&v87, v88);
              v86 = v60;
              LOBYTE(v85) = v63;
              isUniquelyReferenced_nonNull_native = 0x62616E4569726973;
              v5 = 0xEB0000000064656CLL;
              v47 = sub_261AD784C(0x62616E4569726973, 0xEB0000000064656CLL);
              v65 = v62[2];
              v66 = (v64 & 1) == 0;
              v51 = __OFADD__(v65, v66);
              v67 = v65 + v66;
              if (v51)
              {
                __break(1u);
                goto LABEL_63;
              }

              LOBYTE(v8) = v64;
              if (v62[3] >= v67)
              {
                goto LABEL_56;
              }

              sub_261AD797C(v67, v1);
              v47 = sub_261AD784C(0x62616E4569726973, 0xEB0000000064656CLL);
              if ((v8 & 1) != (v68 & 1))
              {
                goto LABEL_55;
              }

LABEL_57:
              v54 = v82;
              if (v8)
              {
                goto LABEL_58;
              }

LABEL_64:
              v72 = v47;
              v73 = *__swift_mutable_project_boxed_opaque_existential_0(&v85, v86);
              v84 = MEMORY[0x277D839B0];
              LOBYTE(v83) = v73;
              v54[(v72 >> 6) + 8] |= 1 << v72;
              v74 = (v54[6] + 16 * v72);
              *v74 = isUniquelyReferenced_nonNull_native;
              v74[1] = v5;
              sub_261AD40A0(&v83, (v54[7] + 32 * v72));
              v75 = v54[2];
              v51 = __OFADD__(v75, 1);
              v59 = v75 + 1;
              if (v51)
              {
                __break(1u);
              }
            }

            v54[2] = v59;
            __swift_destroy_boxed_opaque_existential_0(&v85);
LABEL_66:
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v76 = *&v6[2]._os_unfair_lock_opaque;
            *&v6[2]._os_unfair_lock_opaque = v54;

            os_unfair_lock_unlock(v6);
            LOBYTE(v19) = 1;
LABEL_67:
            v77 = *MEMORY[0x277D85DE8];
            return v19 & 1;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_47;
          }
        }

        v70 = v47;
        sub_261AD7C34();
        v47 = v70;
        v54 = v82;
        if (v1)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      os_unfair_lock_lock(v6);
      *(&v90 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v89) = v19;
      sub_261AD40A0(&v89, &v87);
      v21 = *&v6[2]._os_unfair_lock_opaque;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v85 = *&v6[2]._os_unfair_lock_opaque;
      *&v6[2]._os_unfair_lock_opaque = 0x8000000000000000;
      v23 = v88;
      v24 = __swift_mutable_project_boxed_opaque_existential_0(&v87, v88);
      v25 = *(*(v23 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_261AD83B8(*v27, 0x656E6F74676E6972, 0xEF64656C62616E45, v22, &v85);
      __swift_destroy_boxed_opaque_existential_0(&v87);
      v7 = v80;
      *&v6[2]._os_unfair_lock_opaque = v85;
      os_unfair_lock_unlock(v6);
      goto LABEL_26;
    }

    os_unfair_lock_lock(v6);
    v13 = *&v6[2]._os_unfair_lock_opaque;
    if (*(v13 + 16) && (v14 = sub_261AD784C(0x656E6F74676E6972, 0xEF64656C62616E45), (v15 & 1) != 0))
    {
      sub_261AD4044(*(v13 + 56) + 32 * v14, &v89);
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
    if ((swift_dynamicCast() & 1) == 0)
    {
      os_unfair_lock_unlock(v6);
      goto LABEL_24;
    }

    v19 = v87;
    os_unfair_lock_unlock(v6);
    if (v19 == 2)
    {
      goto LABEL_24;
    }

LABEL_26:

LABEL_38:
    v3 = 1;
    v4 = 1;
    if ((v8 | v19))
    {
      goto LABEL_67;
    }
  }

  if (v9 == 4)
  {
    goto LABEL_9;
  }

  if (v9 == 3)
  {
    v16 = *&v2[v5];
    if (!v16)
    {
      goto LABEL_52;
    }

    v17 = v2[v81];
    v18 = v16;
    v1 = v18;
    if (v17 == 1)
    {

      goto LABEL_35;
    }

    os_unfair_lock_lock(v6);
    v29 = *&v6[2]._os_unfair_lock_opaque;
    if (*(v29 + 16) && (v30 = sub_261AD784C(0x62616E4569726973, 0xEB0000000064656CLL), (v31 & 1) != 0))
    {
      sub_261AD4044(*(v29 + 56) + 32 * v30, &v89);
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
    if (swift_dynamicCast())
    {
      v19 = v87;
      os_unfair_lock_unlock(v6);
      if (v19 != 2)
      {

LABEL_37:
        v5 = v79;
        goto LABEL_38;
      }
    }

    else
    {
      os_unfair_lock_unlock(v6);
    }

LABEL_35:
    v32 = v2;
    LOBYTE(v89) = 0;
    v2 = v1;
    LOBYTE(v1) = 108;
    v33 = sub_261AD94B0();
    v19 = [v2 BOOLForKey:v33 keyExistsAndHasValidFormat:&v89];

    if (v89 != 1)
    {
      goto LABEL_51;
    }

    os_unfair_lock_lock(v6);
    *(&v90 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v89) = v19;
    sub_261AD40A0(&v89, &v87);
    v34 = *&v6[2]._os_unfair_lock_opaque;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v85 = *&v6[2]._os_unfair_lock_opaque;
    *&v6[2]._os_unfair_lock_opaque = 0x8000000000000000;
    v36 = v88;
    v37 = __swift_mutable_project_boxed_opaque_existential_0(&v87, v88);
    v38 = *(*(v36 - 8) + 64);
    MEMORY[0x28223BE20](v37);
    v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40);
    sub_261AD83B8(*v40, 0x62616E4569726973, 0xEB0000000064656CLL, v35, &v85);
    __swift_destroy_boxed_opaque_existential_0(&v87);
    v7 = v80;
    *&v6[2]._os_unfair_lock_opaque = v85;
    os_unfair_lock_unlock(v6);

    v2 = v32;
    goto LABEL_37;
  }

LABEL_69:
  *&v89 = v9;
  result = sub_261AD95F0();
  __break(1u);
  return result;
}

uint64_t ConsiderateVolumeProfile.description.getter(uint64_t a1)
{
  v1 = 0x746C7561666544;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x726564756F4CLL;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x72657465697551;
  }
}

uint64_t *sub_261AD6754@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_261AD6770()
{
  v1 = *v0;
  v2 = 0x746C7561666544;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0x726564756F4CLL;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x72657465697551;
  }
}

id ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor;
  v5 = objc_allocWithZone(MEMORY[0x277D2BA58]);
  v6 = sub_261AD94B0();
  v7 = [v5 initWithDomain_];

  *&v1[v4] = v7;
  v8 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_npsManager;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
  v9 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_logger;
  if (qword_27FED8C20 != -1)
  {
    swift_once();
  }

  v10 = sub_261AD9490();
  v11 = __swift_project_value_buffer(v10, qword_27FED8E80);
  (*(*(v10 - 8) + 16))(&v1[v9], v11, v10);
  v12 = OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_featureEnabled;
  v18[3] = &type metadata for RelevancePlatformFeatureFlags;
  v18[4] = sub_261AD8D50();
  LOBYTE(v10) = sub_261AD9460();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v1[v12] = v10 & 1;
  v13 = &v1[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache];
  v14 = sub_261AD8620(MEMORY[0x277D84F90]);
  *v13 = 0;
  *(v13 + 1) = v14;
  v1[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize] = a1 & 1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_261AD69F4();

  return v15;
}

void sub_261AD69F4()
{
  if ((*(v0 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize) & 1) == 0)
  {
    v1 = CFNotificationCenterGetDarwinNotifyCenter();
    v2 = sub_261AD94B0();
    CFNotificationCenterAddObserver(v1, v0, sub_261AD71DC, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = sub_261AD94B0();
    CFNotificationCenterAddObserver(v3, v0, sub_261AD71DC, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

id ConsiderateVolumeSettingsController.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(1);
  swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id ConsiderateVolumeSettingsController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize) & 1) == 0)
  {
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(v2, v0);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ConsiderateVolumeSettingsController.ringtoneUserVolume.setter(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    return sub_261AD81C4(0xD000000000000012, 0x8000000261ADA5D0, v1, *&result);
  }

  return result;
}

uint64_t (*ConsiderateVolumeSettingsController.ringtoneUserVolume.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_261AD8DA4(0xD000000000000012, 0x8000000261ADA5D0, v1);
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_261AD6ECC;
}

uint64_t sub_261AD6ECC(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    return sub_261AD81C4(0xD000000000000012, 0x8000000261ADA5D0, *result, *(result + 8));
  }

  return result;
}

Swift::Bool __swiftcall ConsiderateVolumeSettingsController.keyExists(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_261AD94B0();
  v5 = [v3 objectForKey_];

  v6 = v5 != 0;
  if (v5)
  {
    sub_261AD9540();

    swift_unknownObjectRelease();
    sub_261AD40A0(&v8, v9);
  }

  else
  {

    memset(v9, 0, sizeof(v9));
  }

  sub_261AD3BAC(v9, &qword_27FED8C78, &qword_261AD9C88);
  return v6;
}

uint64_t sub_261AD6FE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_261AD784C(a2, a3), (v5 & 1) != 0))
  {
    sub_261AD4044(*(v3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_261AD7084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_261AD784C(a2, a3), (v5 & 1) != 0))
  {
    sub_261AD4044(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

unint64_t sub_261AD712C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_261AD784C(a2, a3), (v5 & 1) != 0))
  {
    sub_261AD4044(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8DD8, &unk_261ADA010);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    v7 = 0;
  }

  return v7 | ((v6 ^ 1u) << 32);
}

uint64_t sub_261AD72A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261AD7370(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_261AD4044(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_261AD7370(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261AD747C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_261AD9590();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_261AD747C(uint64_t a1, unint64_t a2)
{
  v4 = sub_261AD74C8(a1, a2);
  sub_261AD75F8(&unk_28743BB08);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261AD74C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_261AD76E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_261AD9590();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_261AD94E0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261AD76E4(v10, 0);
        result = sub_261AD9580();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261AD75F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_261AD7758(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261AD76E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E60, &unk_261ADA1C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_261AD7758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E60, &unk_261ADA1C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_261AD784C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_261AD9620();
  sub_261AD94D0();
  v6 = sub_261AD9640();

  return sub_261AD78C4(a1, a2, v6);
}

unint64_t sub_261AD78C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_261AD95E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_261AD797C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E50, &qword_261ADA1B0);
  v36 = a2;
  result = sub_261AD95B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_261AD40A0(v25, v37);
      }

      else
      {
        sub_261AD4044(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_261AD9620();
      sub_261AD94D0();
      result = sub_261AD9640();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_261AD40A0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_261AD7C34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E50, &qword_261ADA1B0);
  v2 = *v0;
  v3 = sub_261AD95A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_261AD4044(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_261AD40A0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_261AD7DD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v18[3] = MEMORY[0x277D839B0];
  LOBYTE(v18[0]) = a3;
  v4 = *(a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (v4)
  {
    v17[0] = a3 & 1;
    v8 = v4;
    v9 = sub_261AD9600();
    v10 = sub_261AD94B0();
    [v8 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();

    v11 = (a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock((a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
    sub_261AD4044(v18, v17);

    sub_261AD4D00(v17, a1, a2);
    os_unfair_lock_unlock(v11);
    v12 = *(a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_npsManager);
    v13 = sub_261AD94B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E40, &qword_261ADA1A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261ADA000;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_261AD88E4(inited);
    swift_setDeallocating();
    sub_261AD91E0(inited + 32);
    v15 = sub_261AD94F0();

    [v12 synchronizeNanoDomain:v13 keys:v15];
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_261AD7FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = MEMORY[0x277D83B88];
  v18[0] = a3;
  v4 = *(a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (v4)
  {
    v17[0] = a3;
    v8 = v4;
    v9 = sub_261AD9600();
    v10 = sub_261AD94B0();
    [v8 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();

    v11 = (a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock((a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
    sub_261AD4044(v18, v17);

    sub_261AD4D00(v17, a1, a2);
    os_unfair_lock_unlock(v11);
    v12 = *(a4 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_npsManager);
    v13 = sub_261AD94B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E40, &qword_261ADA1A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261ADA000;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_261AD88E4(inited);
    swift_setDeallocating();
    sub_261AD91E0(inited + 32);
    v15 = sub_261AD94F0();

    [v12 synchronizeNanoDomain:v13 keys:v15];
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_261AD81C4(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v18[3] = MEMORY[0x277D83A90];
  *v18 = a4;
  v4 = *(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (v4)
  {
    *v17 = a4;
    v8 = v4;
    v9 = sub_261AD9600();
    v10 = sub_261AD94B0();
    [v8 setObject:v9 forKey:v10];
    swift_unknownObjectRelease();

    v11 = (a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
    os_unfair_lock_lock((a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
    sub_261AD4044(v18, v17);

    sub_261AD4D00(v17, a1, a2);
    os_unfair_lock_unlock(v11);
    v12 = *(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_npsManager);
    v13 = sub_261AD94B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E40, &qword_261ADA1A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261ADA000;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_261AD88E4(inited);
    swift_setDeallocating();
    sub_261AD91E0(inited + 32);
    v15 = sub_261AD94F0();

    [v12 synchronizeNanoDomain:v13 keys:v15];
  }

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

_OWORD *sub_261AD83B8(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v29) = a1;
  v9 = MEMORY[0x277D839B0];
  v30 = MEMORY[0x277D839B0];
  v10 = *a5;
  v12 = sub_261AD784C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *a5;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v19);
      return sub_261AD40A0(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_261AD7C34();
    goto LABEL_7;
  }

  sub_261AD797C(v15, a4 & 1);
  v21 = *a5;
  v22 = sub_261AD784C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_261AD9610();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v9);
  v25 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  sub_261AD859C(v12, a2, a3, *v27, v18);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_261AD859C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261AD40A0(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_261AD8620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E50, &qword_261ADA1B0);
    v3 = sub_261AD95C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_261AD93AC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_261AD784C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261AD40A0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_261AD8730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (*(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize) == 1)
  {
  }

  else
  {
    v7 = a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
    v8 = v3;
    os_unfair_lock_lock(v7);
    v9 = sub_261AD6FE0((v7 + 8), a1, a2);
    os_unfair_lock_unlock(v7);
    if (v9 != 2)
    {

      goto LABEL_10;
    }
  }

  v14[0] = 0;
  v10 = sub_261AD94B0();
  v9 = [v3 BOOLForKey:v10 keyExistsAndHasValidFormat:v14];

  if (v14[0] != 1)
  {

LABEL_8:
    v9 = 2;
    goto LABEL_10;
  }

  v11 = (a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
  v15 = MEMORY[0x277D839B0];
  v14[0] = v9;

  sub_261AD4D00(v14, a1, a2);
  os_unfair_lock_unlock(v11);

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_261AD88E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E48, &qword_261ADA1A8);
    v3 = sub_261AD9570();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_261AD9620();

      sub_261AD94D0();
      result = sub_261AD9640();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_261AD95E0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

id sub_261AD8A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (*(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize) == 1)
  {
  }

  else
  {
    v7 = a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
    v15 = v3;
    os_unfair_lock_lock(v7);
    v8 = sub_261AD7084((v7 + 8), a1, a2);
    v10 = v9;
    os_unfair_lock_unlock(v7);
    if ((v10 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  LOBYTE(v16[0]) = 0;
  v11 = sub_261AD94B0();
  v8 = [v3 integerForKey:v11 keyExistsAndHasValidFormat:v16];

  if (LOBYTE(v16[0]) != 1)
  {

LABEL_8:
    v8 = 0;
    goto LABEL_10;
  }

  v12 = (a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
  v16[3] = MEMORY[0x277D83B88];
  v16[0] = v8;

  sub_261AD4D00(v16, a1, a2);
  os_unfair_lock_unlock(v12);

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _s26RelevanceServicesCompanion35ConsiderateVolumeSettingsControllerC16getAudioCategory011fromAVAudioJ0AA0deiJ0OSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656E6F74676E6952 && a2 == 0xE800000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6D72616C41 && a2 == 0xE500000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x7472656C41 && a2 == 0xE500000000000000 || (sub_261AD95E0() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6D6F436563696F56 && a2 == 0xEC000000646E616DLL)
  {
    return 3;
  }

  if (sub_261AD95E0())
  {
    return 3;
  }

  return 0;
}

unint64_t sub_261AD8D50()
{
  result = qword_27FED8E10;
  if (!qword_27FED8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8E10);
  }

  return result;
}

unint64_t sub_261AD8DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (*(a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize) == 1)
  {

LABEL_6:
    v17[0] = 0;
    v11 = sub_261AD94B0();
    [v3 floatForKey:v11 keyExistsAndHasValidFormat:v17];
    v13 = v12;

    if (v17[0] == 1)
    {
      LODWORD(v9) = v13;
      v14 = (a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache);
      os_unfair_lock_lock((a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache));
      v18 = MEMORY[0x277D83A90];
      *v17 = v13;

      sub_261AD4D00(v17, a1, a2);
      os_unfair_lock_unlock(v14);

      v10 = 0;
      goto LABEL_10;
    }

LABEL_9:
    LODWORD(v9) = 0;
    v10 = 1;
    goto LABEL_10;
  }

  v7 = a3 + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache;
  v8 = v3;
  os_unfair_lock_lock(v7);
  v9 = sub_261AD712C((v7 + 8), a1, a2);
  os_unfair_lock_unlock(v7);
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v10 = 0;
LABEL_10:
  v17[0] = v10;
  v15 = *MEMORY[0x277D85DE8];
  return v9 | (v10 << 32);
}

unint64_t sub_261AD8F88()
{
  result = qword_27FED8E18;
  if (!qword_27FED8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8E18);
  }

  return result;
}

unint64_t sub_261AD8FDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261AD8DA4(0xD000000000000012, 0x8000000261ADA5D0, *a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_261AD9034(uint64_t result, uint64_t *a2)
{
  if ((*(result + 4) & 1) == 0)
  {
    return sub_261AD81C4(0xD000000000000012, 0x8000000261ADA5D0, *a2, *result);
  }

  return result;
}

uint64_t type metadata accessor for ConsiderateVolumeSettingsController()
{
  result = qword_27FED8E20;
  if (!qword_27FED8E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AD90C8()
{
  result = sub_261AD9490();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_261AD91B0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E30, &qword_261ADA190);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_261AD9234(char *a1)
{
  if (qword_27FED8C20 != -1)
  {
    swift_once();
  }

  v2 = sub_261AD9490();
  __swift_project_value_buffer(v2, qword_27FED8E80);
  v3 = sub_261AD9470();
  v4 = sub_261AD9510();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_261AD0000, v3, v4, "Prefs did change, synchronizing accessor", v5, 2u);
    MEMORY[0x266718A10](v5, -1, -1);
  }

  if (a1)
  {
    v6 = *&a1[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_accessor];
    v9 = a1;

    v7 = &v9[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache];
    os_unfair_lock_lock(&v9[OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_cache]);
    v8 = *(v7 + 1);

    *(v7 + 1) = MEMORY[0x277D84F98];
    os_unfair_lock_unlock(v7);
  }
}

uint64_t sub_261AD93AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED8E58, &qword_261ADA1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}