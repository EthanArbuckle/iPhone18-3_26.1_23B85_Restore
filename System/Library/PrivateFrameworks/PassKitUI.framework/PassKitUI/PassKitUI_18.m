uint64_t sub_1BD221C68()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = [objc_opt_self() fromDeviceVersion];
  if (v3)
  {
    v4 = v3;
    v5 = PKDeviceClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052434();
      v9 = v8;

      v10 = swift_allocObject();
      v10[2] = v4;
      v10[3] = v7;
      v10[4] = v9;
      sub_1BE048964();
      v11 = sub_1BD224164;
    }

    else
    {

      v10 = 0;
      v11 = sub_1BD134F50;
    }

    v12 = v11;
  }

  else
  {
    v12 = sub_1BD134F50;
    v10 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = sub_1BD224184;
  v13[3] = v2;
  v13[4] = v12;
  v13[5] = v10;
  v14 = swift_allocObject();
  v14[2] = sub_1BD36CA6C;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v10;
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v16 = v15;
  v17 = sub_1BE052404();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BD22415C;
  *(v18 + 24) = v13;
  v32 = sub_1BD224180;
  v33 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD224168;
  v31 = &block_descriptor_99_0;
  v19 = _Block_copy(&aBlock);
  sub_1BE048964();

  v20 = [v16 layoutStringNamed:v17 passingTest:v19];

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {

      goto LABEL_12;
    }

    v22 = sub_1BE052404();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1BD22415C;
    *(v23 + 24) = v14;
    v32 = sub_1BD224180;
    v33 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1BD224168;
    v31 = &block_descriptor_106;
    v24 = _Block_copy(&aBlock);
    sub_1BE048964();

    v25 = [v16 layoutStringNamed:v22 passingTest:v24];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (!v25)
      {

        return 0;
      }

LABEL_12:
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();

      if (v27)
      {
        return v27;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2220F0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_promotion) state];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = [objc_opt_self() fromDeviceVersion];
  if (v3)
  {
    v4 = v3;
    v5 = PKDeviceClass();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BE052434();
      v9 = v8;

      v10 = swift_allocObject();
      v10[2] = v4;
      v10[3] = v7;
      v10[4] = v9;
      sub_1BE048964();
      v11 = sub_1BD224164;
    }

    else
    {

      v10 = 0;
      v11 = sub_1BD134F50;
    }

    v12 = v11;
  }

  else
  {
    v12 = sub_1BD134F50;
    v10 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = sub_1BD224184;
  v13[3] = v2;
  v13[4] = v12;
  v13[5] = v10;
  v14 = swift_allocObject();
  v14[2] = sub_1BD36CA6C;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = v10;
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_layout);
  sub_1BE048964();
  sub_1BE048964();
  v16 = v15;
  v17 = sub_1BE052404();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BD22415C;
  *(v18 + 24) = v13;
  v32 = sub_1BD22277C;
  v33 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1BD224168;
  v31 = &block_descriptor_53;
  v19 = _Block_copy(&aBlock);
  sub_1BE048964();

  v20 = [v16 layoutLinkNamed:v17 passingTest:v19];

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {

      goto LABEL_12;
    }

    v22 = sub_1BE052404();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1BD22415C;
    *(v23 + 24) = v14;
    v32 = sub_1BD224180;
    v33 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1BD224168;
    v31 = &block_descriptor_60_0;
    v24 = _Block_copy(&aBlock);
    sub_1BE048964();

    v25 = [v16 layoutLinkNamed:v22 passingTest:v24];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (!v25)
      {

        return 0;
      }

LABEL_12:
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();

      if (v27)
      {
        return v27;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  __break(1u);
  return result;
}

double sub_1BD222578@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD2225F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2226B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD21C630(v2, v3, v0 + 32);
}

unint64_t sub_1BD2227A8()
{
  result = qword_1EBD3DFB8;
  if (!qword_1EBD3DFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFB0);
    sub_1BD222834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFB8);
  }

  return result;
}

unint64_t sub_1BD222834()
{
  result = qword_1EBD3DFC0;
  if (!qword_1EBD3DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFE0);
    sub_1BD22299C();
    sub_1BD222A80();
    sub_1BD22330C(&qword_1EBD3E018, &qword_1EBD3DFE0, &unk_1BE0C2EC8, sub_1BD22299C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFC0);
  }

  return result;
}

unint64_t sub_1BD22299C()
{
  result = qword_1EBD3DFE8;
  if (!qword_1EBD3DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD0);
    sub_1BD0DE4F4(&qword_1EBD3DFF0, &qword_1EBD3DFF8);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DFE8);
  }

  return result;
}

unint64_t sub_1BD222A80()
{
  result = qword_1EBD3E000;
  if (!qword_1EBD3E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFD8);
    sub_1BD22299C();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E000);
  }

  return result;
}

unint64_t sub_1BD222B38()
{
  result = qword_1EBD3E028;
  if (!qword_1EBD3E028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DFA0);
    sub_1BD222BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E028);
  }

  return result;
}

unint64_t sub_1BD222BC4()
{
  result = qword_1EBD3E030;
  if (!qword_1EBD3E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E038);
    sub_1BD222C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E030);
  }

  return result;
}

unint64_t sub_1BD222C50()
{
  result = qword_1EBD3E040;
  if (!qword_1EBD3E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E048);
    sub_1BD222D08();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E040);
  }

  return result;
}

unint64_t sub_1BD222D08()
{
  result = qword_1EBD3E050;
  if (!qword_1EBD3E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E058);
    sub_1BD0DE4F4(&qword_1EBD3E060, &qword_1EBD3E068);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E050);
  }

  return result;
}

unint64_t sub_1BD222E24()
{
  result = qword_1EBD3E080;
  if (!qword_1EBD3E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E078);
    sub_1BD222ED0(&qword_1EBD4E8F0, &qword_1EBD3E090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E080);
  }

  return result;
}

uint64_t sub_1BD222ED0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_34Tm_0()
{

  sub_1BD0D4604(*(v0 + 96), *(v0 + 104));
  sub_1BD0D4604(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

unint64_t sub_1BD222FCC()
{
  result = qword_1EBD3E0A8;
  if (!qword_1EBD3E0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0A0);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0A8);
  }

  return result;
}

unint64_t sub_1BD223084()
{
  result = qword_1EBD3E0B8;
  if (!qword_1EBD3E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0B0);
    sub_1BD0DE4F4(&qword_1EBD3E0C0, &qword_1EBD3E0C8);
    sub_1BD22313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0B8);
  }

  return result;
}

unint64_t sub_1BD22313C()
{
  result = qword_1EBD3E0D0;
  if (!qword_1EBD3E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0D8);
    sub_1BD2231C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0D0);
  }

  return result;
}

unint64_t sub_1BD2231C8()
{
  result = qword_1EBD3E0E0;
  if (!qword_1EBD3E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0E8);
    sub_1BD223254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0E0);
  }

  return result;
}

unint64_t sub_1BD223254()
{
  result = qword_1EBD3E0F0;
  if (!qword_1EBD3E0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E0F8);
    sub_1BD22330C(&qword_1EBD3E100, &qword_1EBD3E108, &unk_1BE0C2FA0, sub_1BD223390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E0F0);
  }

  return result;
}

uint64_t sub_1BD22330C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0FEBBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD223390()
{
  result = qword_1EBD3E110;
  if (!qword_1EBD3E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E118);
    sub_1BD223448();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E110);
  }

  return result;
}

unint64_t sub_1BD223448()
{
  result = qword_1EBD3E120;
  if (!qword_1EBD3E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E128);
    sub_1BD2234D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E120);
  }

  return result;
}

unint64_t sub_1BD2234D4()
{
  result = qword_1EBD3E130;
  if (!qword_1EBD3E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E138);
    sub_1BD223560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E130);
  }

  return result;
}

unint64_t sub_1BD223560()
{
  result = qword_1EBD3E140;
  if (!qword_1EBD3E140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E148);
    sub_1BD2235EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E140);
  }

  return result;
}

unint64_t sub_1BD2235EC()
{
  result = qword_1EBD3E150;
  if (!qword_1EBD3E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E158);
    sub_1BD0DE4F4(&unk_1EBD3E160, &qword_1EBD3B890);
    sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E150);
  }

  return result;
}

unint64_t sub_1BD2236F8()
{
  result = qword_1EBD3E190;
  if (!qword_1EBD3E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E188);
    sub_1BD223784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E190);
  }

  return result;
}

unint64_t sub_1BD223784()
{
  result = qword_1EBD3E198;
  if (!qword_1EBD3E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E1A0);
    sub_1BD223810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E198);
  }

  return result;
}

unint64_t sub_1BD223810()
{
  result = qword_1EBD3E1A8;
  if (!qword_1EBD3E1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E1B0);
    sub_1BD0DE4F4(&qword_1EBD3E1B8, &qword_1EBD3E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E1A8);
  }

  return result;
}

unint64_t sub_1BD2238E4()
{
  result = qword_1EBD3E210;
  if (!qword_1EBD3E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E208);
    sub_1BD223970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E210);
  }

  return result;
}

unint64_t sub_1BD223970()
{
  result = qword_1EBD3E218;
  if (!qword_1EBD3E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E220);
    sub_1BD22330C(&qword_1EBD3E228, &qword_1EBD3E230, &unk_1BE0C3088, sub_1BD223A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E218);
  }

  return result;
}

unint64_t sub_1BD223A28()
{
  result = qword_1EBD3E238;
  if (!qword_1EBD3E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E240);
    sub_1BD223AB4();
    sub_1BD223CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E238);
  }

  return result;
}

unint64_t sub_1BD223AB4()
{
  result = qword_1EBD3E248;
  if (!qword_1EBD3E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E250);
    sub_1BD223B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E248);
  }

  return result;
}

unint64_t sub_1BD223B38()
{
  result = qword_1EBD3E258;
  if (!qword_1EBD3E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E260);
    sub_1BD223BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E258);
  }

  return result;
}

unint64_t sub_1BD223BC4()
{
  result = qword_1EBD3E268;
  if (!qword_1EBD3E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E270);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E268);
  }

  return result;
}

unint64_t sub_1BD223C50()
{
  result = qword_1EBD3E278;
  if (!qword_1EBD3E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E278);
  }

  return result;
}

unint64_t sub_1BD223CD4()
{
  result = qword_1EBD3E288;
  if (!qword_1EBD3E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E288);
  }

  return result;
}

unint64_t sub_1BD223D28()
{
  result = qword_1EBD3E290;
  if (!qword_1EBD3E290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DF60);
    sub_1BD222ED0(&qword_1EBD36820, &unk_1EBD3DF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E290);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1BD223E94()
{
  result = qword_1EBD3E2A8;
  if (!qword_1EBD3E2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE80);
    sub_1BD223F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2A8);
  }

  return result;
}

unint64_t sub_1BD223F20()
{
  result = qword_1EBD3E2B0;
  if (!qword_1EBD3E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE88);
    sub_1BD223FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2B0);
  }

  return result;
}

unint64_t sub_1BD223FAC()
{
  result = qword_1EBD3E2B8;
  if (!qword_1EBD3E2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DEA0);
    sub_1BD224064();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2B8);
  }

  return result;
}

unint64_t sub_1BD224064()
{
  result = qword_1EBD3E2C0;
  if (!qword_1EBD3E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DE98);
    sub_1BD0DE4F4(&qword_1EBD3E2C8, &unk_1EBD3E2D0);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E2C0);
  }

  return result;
}

uint64_t sub_1BD224188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v6 = 0;
    v7 = (a4 + 48);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v11 = v8;
      sub_1BE048C84();
      if (sub_1BE053074() & 1) != 0 && (sub_1BE053074())
      {
        v12 = sub_1BD3FDC00(v9, a3);

        if (v12)
        {
          return v6;
        }
      }

      else
      {
      }

      ++v6;
      v7 += 3;
    }

    while (v4 != v6);
  }

  return 0;
}

unint64_t sub_1BD2242B8(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_1BE053704();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB40900](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_1BD0E5E8C(0, a3);
    v10 = sub_1BE053074();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1BD2243C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceViewModel(0) - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  v10 = 0;
  if (v9)
  {
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1BD2266D8(v11, v8, type metadata accessor for DeviceViewModel);
      if (*v8 == *a1 && v8[1] == a1[1])
      {
        break;
      }

      v14 = sub_1BE053B84();
      sub_1BD226740(v8, type metadata accessor for DeviceViewModel);
      if (v14)
      {
        return v10;
      }

      ++v10;
      v11 += v12;
      if (v9 == v10)
      {
        return 0;
      }
    }

    sub_1BD226740(v8, type metadata accessor for DeviceViewModel);
  }

  return v10;
}

uint64_t sub_1BD224538(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      v7 = [v6 identifier];
      v8 = sub_1BE052434();
      v10 = v9;

      v11 = [a1 identifier];
      v12 = sub_1BE052434();
      v14 = v13;

      if (v8 == v12 && v10 == v14)
      {
      }

      else
      {
        v16 = sub_1BE053B84();

        if ((v16 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      v17 = sub_1BE053074();

      if (v17)
      {
        return v4;
      }

LABEL_4:
      ++v4;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t sub_1BD224690(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = *a1;
  v12 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v13 = *(v6 + 72);
  v16 = v13;
  v17 = v11;
  while (1)
  {
    sub_1BD2266D8(v12, v8, type metadata accessor for SEStorageUsageGroup);
    if ((sub_1BD3FF77C(*v8, v11) & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_1BE04C164();
    sub_1BD2267A0(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    if (v20 == v18 && v21 == v19)
    {
      break;
    }

    v14 = sub_1BE053B84();

    v13 = v16;
    v11 = v17;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_3:
    sub_1BD226740(v8, type metadata accessor for SEStorageUsageGroup);
    ++v10;
    v12 += v13;
    if (v9 == v10)
    {
      return 0;
    }
  }

  v13 = v16;
  v11 = v17;
LABEL_9:
  if (*(v8 + *(v4 + 24)) != *(a1 + *(v4 + 24)) || *(v8 + *(v4 + 28)) != *(a1 + *(v4 + 28)))
  {
    goto LABEL_3;
  }

  sub_1BD226740(v8, type metadata accessor for SEStorageUsageGroup);
  return v10;
}

uint64_t sub_1BD224914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v43 = &v36 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v42, v11);
  v13 = &v36 - v12;
  v44 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v14 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a2 + 16);
  if (v47)
  {
    v41 = v4;
    v18 = sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v45 = a1;
    v46 = v18;
    v19 = 0;
    v20 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v21 = *(v14 + 72);
    v36 = (v5 + 32);
    v39 = (v5 + 8);
    v40 = (v5 + 48);
    do
    {
      sub_1BD2266D8(v20 + v21 * v19, v17, type metadata accessor for SEStorageUsageGroup.PassEntry);
      result = sub_1BE053074();
      if ((result & 1) == 0)
      {
        goto LABEL_5;
      }

      v23 = *(v17 + 1);
      v24 = *(v45 + 8);
      v25 = *(v23 + 16);
      if (v25 != *(v24 + 16))
      {
        goto LABEL_5;
      }

      if (v25)
      {
        v26 = v23 == v24;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v33 = (v23 + 40);
        v34 = (v24 + 40);
        while (v25)
        {
          result = *(v33 - 1);
          if (result != *(v34 - 1) || *v33 != *v34)
          {
            result = sub_1BE053B84();
            if ((result & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v33 += 2;
          v34 += 2;
          if (!--v25)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        return result;
      }

LABEL_13:
      v27 = v44[6];
      v28 = *(v42 + 48);
      sub_1BD15D62C(&v17[v27], v13);
      sub_1BD15D62C(v45 + v27, &v13[v28]);
      v29 = v41;
      v30 = *v40;
      if ((*v40)(v13, 1, v41) == 1)
      {
        if (v30(&v13[v28], 1, v29) != 1)
        {
          goto LABEL_4;
        }

        sub_1BD0DE53C(v13, &unk_1EBD39970);
      }

      else
      {
        sub_1BD15D62C(v13, v43);
        if (v30(&v13[v28], 1, v29) == 1)
        {
          (*v39)(v43, v29);
LABEL_4:
          sub_1BD0DE53C(v13, &qword_1EBD3A750);
          goto LABEL_5;
        }

        v31 = v37;
        (*v36)(v37, &v13[v28], v29);
        sub_1BD2267A0(&qword_1EBD3E460, MEMORY[0x1E6969530]);
        v38 = sub_1BE052334();
        v32 = *v39;
        (*v39)(v31, v29);
        v32(v43, v29);
        sub_1BD0DE53C(v13, &unk_1EBD39970);
        if ((v38 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (*&v17[v44[7]] == *(v45 + v44[7]) && v17[v44[8]] == *(v45 + v44[8]))
      {
        sub_1BD226740(v17, type metadata accessor for SEStorageUsageGroup.PassEntry);
        return v19;
      }

LABEL_5:
      sub_1BD226740(v17, type metadata accessor for SEStorageUsageGroup.PassEntry);
      ++v19;
    }

    while (v19 != v47);
  }

  return 0;
}

uint64_t sub_1BD224E3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = v5;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  v6 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1BD0D4744(v6);
  return v2;
}

uint64_t sub_1BD224E9C()
{
  sub_1BD0D4744(*(v0 + 16));

  sub_1BD0D4534(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_1BD224F20(void *a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BE0B7020;
    *(v14 + 32) = a1;
    v15 = a1;
    v12 = a2 & 1;
    v13 = v14;
    goto LABEL_10;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *(v2 + 40);
  if (!v6)
  {
    v9 = *(v2 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = a1;
    v11 = a1;
    sub_1BE048C84();
    sub_1BDA7A14C(inited);
    v12 = a2 & 1;
    v13 = v9;
LABEL_10:
    sub_1BD225100(v13, v12);

    return;
  }

  swift_beginAccess();
  v7 = a1;
  v8 = v6;
  MEMORY[0x1BFB3F7A0]();
  if (*((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  [v8 pushViewController:v7 animated:a2 & 1];
}

void sub_1BD225100(unint64_t a1, char a2)
{
  v9 = v2[5];
  if (v9)
  {
    swift_beginAccess();
    v2[7] = a1;
    v10 = v9;
    sub_1BE048C84();

    swift_beginAccess();
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BDA7A14C(a1);
    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v11 = sub_1BE052724();

    [v10 setViewControllers:v11 animated:a2 & 1];

    return;
  }

  v12 = v2[4];
  if (v12)
  {
    v9 = v12;
    v13 = [v9 navigationController];
    if (v13)
    {
      v3 = v13;
      v14 = [v13 viewControllers];
      v15 = 0x1E69DD258uLL;
      sub_1BD0E5E8C(0, &qword_1EBD43450);
      v16 = sub_1BE052744();

      swift_beginAccess();
      v2[6] = v16;

      v17 = v2[6];
      sub_1BE048C84();
      v18 = sub_1BD2242B8(v9, v17, &qword_1EBD43450);
      v6 = v19;

      if (v6)
      {
LABEL_36:
        v38 = v2[5];
        v2[5] = v3;
        v39 = v3;

        sub_1BD225100(a1, a2 & 1);
        return;
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        v15 = v2[6];
        v6 = v15 >> 62;
        if (!(v15 >> 62))
        {
          v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20 >= v18)
          {
            goto LABEL_9;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      if ((sub_1BE053704() & 0x8000000000000000) == 0)
      {
        v20 = sub_1BE053704();
        if (v20 >= v18)
        {
LABEL_9:
          if ((v15 & 0xC000000000000001) != 0)
          {
            sub_1BE048C84();
            if (v18)
            {
              v21 = 0;
              do
              {
                v22 = v21 + 1;
                sub_1BE053864();
                v21 = v22;
              }

              while (v18 != v22);
            }

            if (!v6)
            {
              goto LABEL_14;
            }
          }

          else
          {
            sub_1BE048C84();
            if (!v6)
            {
LABEL_14:
              v4 = v15 & 0xFFFFFFFFFFFFFF8;
              v23 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
              v5 = (2 * v18) | 1;
              goto LABEL_26;
            }
          }

          v4 = sub_1BE0539D4();
          v23 = v31;
          v6 = v32;
          v5 = v33;
LABEL_26:
          swift_endAccess();
          if ((v5 & 1) == 0)
          {
LABEL_27:
            sub_1BD1DA30C(v4, v23, v6, v5);
            v35 = v34;
            goto LABEL_34;
          }

          v41 = v23;
          sub_1BE053BB4();
          swift_unknownObjectRetain_n();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            swift_unknownObjectRelease();
            v36 = MEMORY[0x1E69E7CC0];
          }

          v37 = *(v36 + 16);

          if (!__OFSUB__(v5 >> 1, v6))
          {
            if (v37 == (v5 >> 1) - v6)
            {
              v35 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v35)
              {
LABEL_35:
                v2[6] = v35;

                goto LABEL_36;
              }

              v35 = MEMORY[0x1E69E7CC0];
LABEL_34:
              swift_unknownObjectRelease();
              goto LABEL_35;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          swift_unknownObjectRelease();
          v23 = v41;
          goto LABEL_27;
        }

        goto LABEL_45;
      }

      __break(1u);
    }

    sub_1BE053994();
    __break(1u);
    return;
  }

  if (a1 >> 62)
  {
    v24 = sub_1BE053704();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  v25 = __OFSUB__(v24, 1);
  v20 = v24 - 1;
  if (v25)
  {
    goto LABEL_46;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v26 = MEMORY[0x1BFB40900](v20, a1);
    goto LABEL_22;
  }

  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v26 = *(a1 + 8 * v20 + 32);
LABEL_22:
  v27 = v2[4];
  v2[4] = v26;
  v28 = v26;

  v29 = v2[2];
  if (v29)
  {
    sub_1BE048964();
    v29(v28);
    sub_1BD0D4744(v29);
    v30 = v2[2];
  }

  else
  {
    v30 = 0;
  }

  v2[2] = 0;
  v2[3] = 0;
  sub_1BD0D4744(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BE0B7020;
  *(v40 + 32) = v28;
  swift_beginAccess();
  v2[7] = v40;
}

uint64_t sub_1BD225648()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD2266D0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_30;
  v12 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD2267A0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1BD225910()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      if ([v2 isBeingDismissed])
      {
LABEL_19:

        return;
      }

      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
LABEL_16:
        v12 = swift_dynamicCastObjCProtocolConditional();
        if (v12)
        {
          [v12 showLoadingUI:1 animated:{1, &unk_1F3CDEF98}];
        }

        else
        {
          v13 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
          [v13 startAnimating];
          v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
          v15 = [v2 navigationItem];
          v16 = v14;
          [v15 setRightBarButtonItem:v16 animated:1];
        }

        goto LABEL_19;
      }

      v4 = v3;
      v5 = v2;
      v6 = [v4 viewControllers];
      sub_1BD0E5E8C(0, &qword_1EBD43450);
      v7 = sub_1BE052744();

      if (v7 >> 62)
      {
        v8 = sub_1BE053704();
        if (v8)
        {
LABEL_7:
          v9 = __OFSUB__(v8, 1);
          v10 = v8 - 1;
          if (v9)
          {
            __break(1u);
          }

          else if ((v7 & 0xC000000000000001) == 0)
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v11 = *(v7 + 8 * v10 + 32);
LABEL_12:
              v2 = v11;

LABEL_15:
              goto LABEL_16;
            }

            __break(1u);
            return;
          }

          v11 = MEMORY[0x1BFB40900](v10, v7);
          goto LABEL_12;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      v2 = v5;
      goto LABEL_15;
    }
  }
}

id sub_1BD225BB4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void *sub_1BD225C08()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1BD225C30()
{
  result = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD225C70(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD225CB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_navigationController;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_presentedViewControllerToDismiss;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid] = 1;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v14 = *v11;
    *v11 = a3;
    v11[1] = a4;
    v15 = a1;
    sub_1BD0D44B8(a3);
    sub_1BD0D4744(v14);
    v20.receiver = v4;
    v20.super_class = type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
    v16 = objc_msgSendSuper2(&v20, sel_init);
    [v13 addDelegateObserver_];
    key = 0;
    v17 = a2;
    objc_setAssociatedObject(v17, &key, v16, 1);

    sub_1BD0D4744(a3);
  }

  else
  {
    sub_1BD0D4744(a3);

    MEMORY[0x1BFB46050](&v4[v9]);
    MEMORY[0x1BFB46050](&v4[v10]);
    sub_1BD0D4744(*v11);
    type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

id sub_1BD225EA8()
{
  sub_1BD225F98(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD225F98(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) == 1)
  {
    *(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) = 0;
    sub_1BE04D0E4();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1 & 1;
      _os_log_impl(&dword_1BD026000, v9, v10, "PresentingNavigationPresentationDismisser: invalidating with didDismiss: %{BOOL}d", v11, 8u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v12 = (v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion);
    v13 = *(v2 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_onCompletion);
    if (v13)
    {
      sub_1BE048964();
      v13(0);
      sub_1BD0D4744(v13);
      v14 = *v12;
    }

    else
    {
      v14 = 0;
    }

    *v12 = 0;
    v12[1] = 0;
    sub_1BD0D4744(v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      [Strong removeDelegateObserver_];
    }
  }
}

void sub_1BD22624C(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    if ([v9 transitioningDelegate])
    {
      swift_unknownObjectRelease();

      goto LABEL_4;
    }

    v16 = [v9 viewControllers];
    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v17 = sub_1BE052744();

    if (v17 >> 62)
    {
      v18 = sub_1BE053704();
      if (v18)
      {
LABEL_10:
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
          __break(1u);
        }

        else if ((v17 & 0xC000000000000001) == 0)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = *(v17 + 8 * v20 + 32);
LABEL_15:
            v22 = v21;
            goto LABEL_18;
          }

          __break(1u);
          return;
        }

        v21 = MEMORY[0x1BFB40900](v20, v17);
        goto LABEL_15;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
LABEL_18:

    v23 = [v22 transitioningDelegate];

    [v9 setTransitioningDelegate_];
    swift_unknownObjectRelease();
    v11 = *(v1 + 40);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_4:
  v11 = *(v1 + 40);
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_19:
  v24 = *(v1 + 32);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B7020;
    *(v25 + 32) = v24;
    v26 = v24;
    sub_1BD225100(v25, 0);

    v11 = *(v1 + 40);
    if (v11)
    {
LABEL_5:
      v12 = objc_allocWithZone(type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser());
      v13 = v11;
      v14 = a1;
      v31 = v13;

      [v31 presentViewController:v14 animated:1 completion:0];
      v15 = v31;

      return;
    }
  }

  sub_1BE04D0E4();
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C34();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1BD026000, v27, v28, "Failed to find navigation controller when attempting to present VC.", v29, 2u);
    MEMORY[0x1BFB45F20](v29, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_1BD226600(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser_isValid) & 1) == 0)
  {
    return;
  }

  v3 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    if (Strong)
    {
      v5 = Strong;

      if (v3 == v5)
      {
        goto LABEL_8;
      }

LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    Strong = v3;
LABEL_10:

    goto LABEL_11;
  }

  if (Strong)
  {
    goto LABEL_10;
  }

LABEL_8:
  [a1 dismissViewControllerAnimated:1 completion:0];
  v6 = 1;
LABEL_12:

  sub_1BD225F98(v6);
}

uint64_t sub_1BD2266D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD226740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD2267A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadataFileURL()@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v29 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 temporaryDirectory];
  sub_1BE04A9F4();

  v20 = sub_1BE04A9C4();
  v21 = sub_1BE052404();
  v22 = [v20 URLByAppendingPathComponent_];

  if (v22)
  {
    sub_1BE04A9F4();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v10 + 56);
  v24(v5, v23, 1, v9);
  sub_1BD226B4C(v5, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v17, v9);

    sub_1BD226BBC(v8);
    v25 = 1;
    v26 = v30;
  }

  else
  {
    sub_1BE052434();
    sub_1BE04A9D4();

    v27 = *(v10 + 8);
    v27(v17, v9);
    v27(v8, v9);
    v26 = v30;
    (*(v10 + 32))(v30, v14, v9);
    v25 = 0;
  }

  return (v24)(v26, v25, 1, v9);
}

uint64_t sub_1BD226B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD226BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static NearbyAirDropSendFactory.peerPaymentPostTransactionMetadata()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE052434();
  MEMORY[0x1BFB3F610](v2);

  sub_1BE052434();
  MEMORY[0x1BFB3F610](0xD00000000000002ELL, 0x80000001BE11EC30);
  sub_1BE04DC34();
  v3 = sub_1BE04DC44();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1BD226D70()
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD226E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  return sub_1BE048C84();
}

uint64_t sub_1BD226ED0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria;
  if (!*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1BE048C84();
  v5 = sub_1BD400190(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void sub_1BD227068(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227098(v1);
}

void sub_1BD227098(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E560);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD227258(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD227288(v1);
}

void sub_1BD227288(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD3E570);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1BD227448(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  return *(v2 + *a2);
}

uint64_t sub_1BD2274F0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v7 = (v5 + *a2);
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *a3 = v8;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1BD2275B0(uint64_t result, char a2, void *a3)
{
  v4 = v3 + *a3;
  if ((*(v4 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v4 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v4 = result;
    *(v4 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v6);
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B584();
}

void sub_1BD2276F8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1BD227890()
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  return *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
}

uint64_t sub_1BD227938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
  return result;
}

uint64_t sub_1BD227A10(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD227B28()
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1BD227C90(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E548);
  sub_1BE052754();
  v4[4] = v12;
  v4[5] = v13;
  v4[6] = v14;
  v5 = v15;
  v4[0] = v8;
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  sub_1BD0DE53C(v4, &qword_1EBD3E550);
  sub_1BD227E5C(&v8);
  sub_1BE052754();
  v6[4] = v12;
  v6[5] = v13;
  v6[6] = v14;
  v7 = v15;
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  sub_1BD0DE53C(v6, &qword_1EBD3E550);
  sub_1BD22826C(v1);
  sub_1BE052754();
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v2;
  v8 = v1[0];
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  sub_1BD0DE53C(&v8, &qword_1EBD3E550);
  return v3;
}

void sub_1BD227C90(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if ((v4 || (v4 = sub_1BD228C3C()) != 0) && ((v4, (v5 = sub_1BD228AA4()) == 0) || (v6 = v5, v7 = [v5 suppressPayInFull], v6, (v7 & 1) == 0)))
  {
    v16 = sub_1BD228AA4();
    v17 = sub_1BD228AA4();
    if ((v17 || (v17 = sub_1BD228C3C()) != 0) && ((v17, (v18 = sub_1BD228AA4()) == 0) || (v19 = v18, v20 = [v18 suppressPayInFull], v19, !v20)))
    {
      swift_getKeyPath();
      *&v29[0] = v2;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B594();

      v21 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer) == 0;
    }

    else
    {
      v21 = 0;
    }

    sub_1BD6CCE5C(v16, v21, v29);
    v27 = v29[1];
    v28 = v29[0];
    v25 = v29[3];
    v26 = v29[2];
    v23 = v29[5];
    v24 = v29[4];
    v22 = v29[6];
    v8 = v30;

    v15 = v22;
    v14 = v23;
    v13 = v24;
    v12 = v25;
    v11 = v26;
    v10 = v27;
    v9 = v28;
  }

  else
  {
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 96) = v15;
  *(a1 + 112) = v8;
}

void sub_1BD227E5C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if (v4)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    v46 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState);
    v48 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8);
    swift_getKeyPath();
    sub_1BE04B594();

    if ((*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) != 1)
    {
      swift_getKeyPath();
      sub_1BE04B594();

      v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
      if (v6)
      {
        swift_getKeyPath();
        sub_1BD22CCA8(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
        v7 = v6;
        sub_1BE04B594();

        v47 = v7[OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading];
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 1;
    }

    swift_getKeyPath();
    sub_1BE04B594();

    v21 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v21;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v24 && (v25 = [v24 fallbackSelectedPaymentOfferForType_]) != 0)
    {
      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = [v5 identifier];
    v29 = sub_1BE052434();
    v44 = v30;
    v45 = v29;

    v43 = sub_1BE051444();
    v31 = sub_1BD6CD0B4(v5, v22, v27);
    v41 = v32;
    v42 = v31;
    v33 = sub_1BD6CD3F4(v5, v46, v48, v22, v27, v47);
    v35 = v34;
    v36 = sub_1BD6CD964(v5, v22);
    v38 = v37;
    v40 = v39;

    v18 = v40;
    v16 = v36;
    v15 = v35;
    v14 = v33;
    v13 = v41;
    v12 = v42;
    v11 = v43;
    v9 = v44;
    v8 = v45;
    if (v47)
    {
      v19 = 65792;
    }

    else
    {
      v19 = 0;
    }

    v17 = v38 & 1;
    if (v22)
    {
      ++v19;
    }

    v20 = xmmword_1BE0C31B0;
    v10 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  *(a1 + 32) = v20;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v19;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
}

void sub_1BD22826C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228C3C();
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v6)
    {
      v36 = [*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) ineligibleDetailsForCriteria_];
    }

    else
    {
      v36 = 0;
    }

    swift_getKeyPath();
    *&v37[0] = v1;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    v15 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
    v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
    swift_getKeyPath();
    *&v37[0] = v2;
    v33 = v16;
    v35 = v16;
    sub_1BE04B594();

    v17 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
    v31 = v17 && [v17 code] == 40030;
    swift_getKeyPath();
    *&v37[0] = v2;
    sub_1BE04B594();

    v18 = *(v2 + v15);
    if (v18)
    {
      v19 = v18;
      if (([v19 isRedeemable] & 1) != 0 && objc_msgSend(v19, sel_isValid))
      {
        v20 = [v19 isPositive];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    swift_getKeyPath();
    *&v37[0] = v2;
    sub_1BE04B594();

    v21 = (*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2;
    swift_getKeyPath();
    *&v37[0] = v2;
    sub_1BE04B594();

    v22 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v22)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        v22 = 0;
        if (v6)
        {
LABEL_24:
          v24 = [v6 fallbackSelectedPaymentOfferForType_];
          if (v24)
          {
            v25 = v24;
            objc_opt_self();
            v6 = swift_dynamicCastObjCClass();
            if (!v6)
            {
            }
          }

          else
          {
            v6 = 0;
          }
        }

LABEL_30:
        sub_1BD6CE15C(v5, v36, v33, v31, v20, v21, v22, v6, v37);
        v32 = v37[1];
        v34 = v37[0];
        v29 = v37[3];
        v30 = v37[2];
        v27 = v37[5];
        v28 = v37[4];
        v26 = v37[6];
        v7 = v38;

        v14 = v26;
        v13 = v27;
        v12 = v28;
        v11 = v29;
        v10 = v30;
        v9 = v32;
        v8 = v34;
        goto LABEL_31;
      }

      v22 = [v23 rewardsRedemptionIntent];
    }

    if (v6)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_31:
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v14;
  *(a1 + 112) = v7;
}

void sub_1BD228650(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BD228AA4();
  if (v4 || (v4 = sub_1BD228C3C()) != 0)
  {

    v5 = sub_1BD228AA4();
    if (!v5 || (v6 = v5, v7 = [v5 suppressPayInFull], v6, (v7 & 1) == 0))
    {
      swift_getKeyPath();
      *&v18[0] = v2;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B594();

      if (!*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer))
      {
        sub_1BD227C90(v18);
        goto LABEL_13;
      }
    }
  }

  if (sub_1BD228864())
  {
    sub_1BD227E5C(v18);
LABEL_13:
    v13 = v18[1];
    v12 = v18[0];
    v15 = v18[3];
    v14 = v18[2];
    v17 = v18[5];
    v16 = v18[4];
    v9 = v19;
    v10 = v20;
    v11 = v21;
    goto LABEL_14;
  }

  swift_getKeyPath();
  *&v18[0] = v2;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (v8 && [v8 type] == 2)
  {
    sub_1BD22826C(v18);
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
LABEL_14:
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
}

uint64_t sub_1BD228864()
{
  v1 = v0;
  v2 = sub_1BD228AA4();
  if (!v2 && (v2 = sub_1BD228C3C()) == 0 || (v2, (v3 = sub_1BD228AA4()) != 0) && (v4 = v3, v5 = [v3 suppressPayInFull], v4, v5))
  {
    swift_getKeyPath();
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    if (!*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer))
    {
      return 1;
    }
  }

  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  result = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  if (result)
  {
    return [result type] == 1;
  }

  return result;
}

uint64_t sub_1BD2289E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD227B28();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 15;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    sub_1BD227B28();
  }

  else
  {
LABEL_9:

    return 0;
  }

  return v6;
}

uint64_t sub_1BD228AA4()
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_21:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v4 type] == 1)
        {
          break;
        }

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_14;
        }
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_14:
    }
  }

  return 0;
}

uint64_t sub_1BD228C3C()
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria);
  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_21:
      v2 = sub_1BE053704();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1BE048C84();
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v4 type] == 2)
        {
          break;
        }

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_14;
        }
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_14:
    }
  }

  return 0;
}

void *sub_1BD228DE8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1BD228EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1BD228F68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD228F98(v1);
}

void sub_1BD228F98(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD229120()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) != 0 || *v1 != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    aBlock[0] = v0;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  else
  {
    *(v1 + 8) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD22D060;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3CC8C0;
    aBlock[3] = &block_descriptor_55;
    v6 = _Block_copy(aBlock);

    [v4 cancelOfferRequestWithCompletion_];
    _Block_release(v6);
  }
}

void sub_1BD229304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = [v3 configuration];

      [v4 removeTransactionAmount];
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = &v5[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType];
    if (v5[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8] == 1)
    {
      *v6 = 0;
      v6[8] = 1;
    }

    else
    {
      v7 = v5;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v9);
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B584();
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1BD2294F8();
  }
}

void sub_1BD2294F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  v3 = &selRef_thumbnailWidth;
  if (v2)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass) uniqueID];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v2 paymentOfferCriteriaForPassUniqueID_];

    if (v6)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0);
      v7 = sub_1BE052744();

      v27 = MEMORY[0x1E69E7CC0];
      if (v7 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
      {
        v25 = v2;
        v26 = v1;
        v3 = 0;
        v1 = v7 & 0xC000000000000001;
        v2 = (v7 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v1)
          {
            v9 = MEMORY[0x1BFB40900](v3, v7);
          }

          else
          {
            if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v9 = *(v7 + 8 * v3 + 32);
          }

          v10 = v9;
          v11 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if ([v9 supportsInstorePrePurchase])
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++v3;
          if (v11 == i)
          {
            v6 = v27;
            v1 = v26;
            v2 = v25;
            v3 = 0x1E804D000;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

      v6 = MEMORY[0x1E69E7CC0];
LABEL_22:
    }

    v13 = [v2 selectedOfferDetails];
    v12 = [v13 selectedPaymentOffer];
  }

  else
  {
    v12 = 0;
    v6 = 0;
  }

  sub_1BD226ED0(v6);
  v14 = v12;
  sub_1BD227098(v12);
  if (v2)
  {
    v15 = [v2 consumingSelectedPaymentOffer];
    v16 = v15;
    v17 = (v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
    if (v15 != *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled))
    {
      goto LABEL_26;
    }

LABEL_31:
    *v17 = v16;
    if (v2)
    {
      goto LABEL_27;
    }

LABEL_32:
    v21 = 0;
    v22 = v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
    if ((*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8) & 1) == 0)
    {
LABEL_29:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v24);
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B584();

      return;
    }

    goto LABEL_33;
  }

  v16 = 0;
  v17 = (v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled);
  if ((*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v18 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B584();

  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_27:
  v20 = [*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass) *(v3 + 2192)];
  v21 = [v2 preconfiguredInstallmentOfferStateForPassUniqueID_];

  v22 = v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
  if ((*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState + 8) & 1) != 0 || *v22 != v21)
  {
    goto LABEL_29;
  }

LABEL_33:

  *v22 = v21;
  *(v22 + 8) = v2 == 0;
}

void sub_1BD2299B0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v73 - v5;
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v73 - v14;
  if ((PKHideCardBenefitRewards() & 1) == 0)
  {
    v16 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    if (v16)
    {
      v17 = v16;
      v86 = v1;
      v18 = sub_1BD228C3C();
      if (v18)
      {
        v19 = v18;
        v1 = v86;
        v20 = *(v86 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
        v21 = [v20 uniqueID];
        if (v21)
        {
          v82 = v6;
          v85 = v8;
          v22 = v21;
          v81 = sub_1BE052434();
          v24 = v23;
          v25 = [v20 secureElementPass];
          if (v25)
          {
            v83 = v24;
            v84 = v17;
            v26 = v25;
            v27 = [v25 devicePrimaryPaymentApplication];

            if (!v27)
            {

              __break(1u);
              return;
            }

            v28 = [v27 state];

            v29 = v85;
            if (v28 == 1)
            {
              v30 = v19;
              v31 = v84;
              v80 = [v84 ineligibleDetailsForCriteria_];
              if ([v80 isEligible])
              {
                swift_getKeyPath();
                v32 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel___observationRegistrar;
                v87 = v1;
                v79 = sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
                sub_1BE04B594();
                v33 = v86;

                v78 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
                if (!*(v33 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance) || (a1 & 1) != 0)
                {
                  v38 = [v30 identifier];

                  v39 = sub_1BE052434();
                  v76 = v40;
                  v77 = v39;

                  v41 = [v84 rewardsBalanceForPassUniqueID_];
                  sub_1BD227288(v41);
                  swift_getKeyPath();
                  v87 = v33;
                  v75 = v32;
                  sub_1BE04B594();

                  v42 = *(v33 + v78);
                  v43 = v82;
                  if (v42)
                  {
                    v44 = v42;
                    sub_1BE04D154();
                    v45 = v44;
                    v46 = sub_1BE04D204();
                    v47 = sub_1BE052C14();

                    if (os_log_type_enabled(v46, v47))
                    {
                      v48 = swift_slowAlloc();
                      v73 = swift_slowAlloc();
                      v87 = v73;
                      *v48 = 136315138;
                      v49 = [v45 identifier];
                      v74 = v45;
                      v50 = v49;
                      v51 = v47;
                      v52 = sub_1BE052434();
                      v54 = v53;

                      v55 = sub_1BD123690(v52, v54, &v87);

                      *(v48 + 4) = v55;
                      _os_log_impl(&dword_1BD026000, v46, v51, "Loaded redeemable payment rewards balance (%s) from DB", v48, 0xCu);
                      v56 = v73;
                      __swift_destroy_boxed_opaque_existential_0(v73);
                      MEMORY[0x1BFB45F20](v56, -1, -1);
                      v57 = v48;
                      v29 = v85;
                      MEMORY[0x1BFB45F20](v57, -1, -1);

                      v43 = v82;
                    }

                    else
                    {
                    }

                    (*(v29 + 8))(v15, v7);
                  }

                  sub_1BE04D154();
                  v59 = sub_1BE04D204();
                  v60 = sub_1BE052C14();
                  if (os_log_type_enabled(v59, v60))
                  {
                    v61 = swift_slowAlloc();
                    *v61 = 0;
                    _os_log_impl(&dword_1BD026000, v59, v60, "Fetching redeemable payment rewards balance from server", v61, 2u);
                    MEMORY[0x1BFB45F20](v61, -1, -1);
                  }

                  (*(v29 + 8))(v11, v7);
                  swift_getKeyPath();
                  v62 = v86;
                  v87 = v86;
                  sub_1BE04B594();

                  v63 = v83;
                  if (!*&v62[v78])
                  {
                    swift_getKeyPath();
                    v87 = v62;
                    sub_1BE04B594();
                    v62 = v86;

                    if (v62[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8] == 1)
                    {
                      KeyPath = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](KeyPath, v65);
                      *(&v73 - 4) = v62;
                      *(&v73 - 3) = 2;
                      *(&v73 - 16) = 0;
                      v87 = v62;
                      sub_1BE04B584();
                      v62 = v86;
                    }
                  }

                  v66 = sub_1BE0528D4();
                  (*(*(v66 - 8) + 56))(v43, 1, 1, v66);
                  sub_1BE0528A4();
                  v67 = v84;
                  v68 = v62;
                  v69 = sub_1BE052894();
                  v70 = swift_allocObject();
                  v71 = MEMORY[0x1E69E85E0];
                  v70[2] = v69;
                  v70[3] = v71;
                  v70[4] = v68;
                  v70[5] = v67;
                  v72 = v76;
                  v70[6] = v77;
                  v70[7] = v72;
                  v70[8] = v81;
                  v70[9] = v63;
                  sub_1BD122C00(0, 0, v43, &unk_1BE0C33B8, v70);
                }

                else
                {
                }
              }

              else
              {

                if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
                {
                  v36 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v36, v37);
                  *(&v73 - 2) = v1;
                  *(&v73 - 1) = 0;
                  v87 = v1;
                  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
                  sub_1BE04B584();
                }

                else
                {

                  v58 = v80;
                }
              }

              return;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        v1 = v86;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
  {
    v34 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v34, v35);
    *(&v73 - 2) = v1;
    *(&v73 - 1) = 0;
    v87 = v1;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD22A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v14;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_1BE04D214();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  sub_1BE0528A4();
  v8[36] = sub_1BE052894();
  v11 = sub_1BE052844();
  v8[37] = v11;
  v8[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD22A4C8, v11, v10);
}

uint64_t sub_1BD22A4C8()
{
  v1 = v0[24];
  v2 = *(v0[23] + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
  v3 = sub_1BE052404();
  v0[39] = v3;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_1BD22A610;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD22B1E0;
  v0[13] = &block_descriptor_31;
  v0[14] = v4;
  [v1 updateRewardsBalanceForPass:v2 criteriaIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD22A610()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_1BD22ABA8;
  }

  else
  {
    v5 = sub_1BD22A740;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD22A740()
{
  v38 = v0;
  v1 = v0[39];
  v3 = v0[23];
  v2 = v0[24];

  v4 = sub_1BE052404();
  v5 = [v2 rewardsBalanceForPassUniqueID_];

  sub_1BD227288(v5);
  swift_getKeyPath();
  v0[22] = v3;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v6 = *(v3 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (v6)
  {
    v7 = v6;
    sub_1BE04D154();
    v8 = v7;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C14();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[34];
    v13 = v0[29];
    v14 = v0[30];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v36 = v13;
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315138;
      v34 = v10;
      v17 = [v8 identifier];
      v35 = v12;
      v18 = sub_1BE052434();
      v20 = v19;

      v21 = sub_1BD123690(v18, v20, &v37);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1BD026000, v9, v34, "Fetched redeemable payment rewards balance (%s)", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);

      (*(v14 + 8))(v35, v36);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }
  }

  else
  {
    sub_1BE04D154();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C14();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[35];
    v26 = v0[29];
    v27 = v0[30];
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Fetched no redeemable payment rewards balance", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v27 + 8))(v25, v26);
  }

  v29 = v0[23];
  swift_getKeyPath();
  v0[18] = v29;
  sub_1BE04B594();

  if ((*(v29 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v29 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2)
  {
    v30 = v0[23];
    swift_getKeyPath();
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 1;
    v0[19] = v30;
    sub_1BE04B584();
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1BD22ABA8()
{
  v1 = v0[39];

  swift_willThrow();

  v2 = sub_1BE04A844();
  if ([v2 code] == 40030)
  {
    sub_1BE04D154();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C14();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Payment rewards balance opted-out", v5, 2u);
      MEMORY[0x1BFB45F20](v5, -1, -1);
    }

    v6 = v0[33];
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[23];

    v10 = *(v8 + 8);
    v10(v6, v7);
    v11 = v2;
    sub_1BD2276F8(v2);
    if (*(v9 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance))
    {
      v12 = v0[23];
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      v0[21] = v12;
      sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
      sub_1BE04B584();
    }

    v24 = v0[23];
    swift_getKeyPath();
    v0[20] = v24;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B594();

    v25 = *(v24 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
    if (v25 && [v25 type] == 2)
    {
      sub_1BE04D154();
      v26 = sub_1BE04D204();
      v27 = sub_1BE052C14();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1BD026000, v26, v27, "Switching to pay in full since rewards was selected", v28, 2u);
        MEMORY[0x1BFB45F20](v28, -1, -1);
      }

      v29 = v0[32];
      v30 = v0[29];
      v31 = v0[23];

      v10(v29, v30);
      v32 = *(v31 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      [v32 clearCurrentSelectedPaymentOfferDetails];
      if (v32)
      {
        v33 = [v32 configuration];
        [v33 removeTransactionAmount];
      }

      v34 = v0[40];
      [v32 removeCachedPaymentOffers];
      sub_1BD2294F8();

      v35 = v34;
    }

    else
    {
      v36 = v0[40];

      v35 = v36;
    }
  }

  else
  {
    v14 = v0[40];
    sub_1BE04D154();
    v15 = v14;
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[40];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1BD026000, v16, v17, "Could not refresh payment rewards balance, %@", v20, 0xCu);
      sub_1BD0DE53C(v21, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    else
    {
    }

    (*(v0[30] + 8))(v0[31], v0[29]);
  }

  v37 = v0[23];
  swift_getKeyPath();
  v0[18] = v37;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  if ((*(v37 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType + 8) & 1) == 0 && *(v37 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType) == 2)
  {
    v38 = v0[23];
    swift_getKeyPath();
    v39 = swift_task_alloc();
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 1;
    v0[19] = v38;
    sub_1BE04B584();
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_1BD22B1E0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_1BD22B2AC(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  v6 = 0uLL;
  if (!v5)
  {
    v14 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 1;
LABEL_13:
    *a1 = v5;
    *(a1 + 8) = v14;
    *(a1 + 16) = v6;
    *(a1 + 32) = v25;
    *(a1 + 40) = v24;
    *(a1 + 41) = v26;
    return;
  }

  swift_getKeyPath();
  v7 = v5;
  sub_1BE04B594();

  v8 = *(v2 + v4);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  if (![v9 isRedeemable] || (objc_msgSend(v9, sel_isValid) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = [v9 isPositive];

  if ((v10 & 1) == 0)
  {
LABEL_12:

    v5 = 0;
    v14 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 1;
    v6 = 0uLL;
    goto LABEL_13;
  }

  v11 = [v7 monetaryValue];
  v12 = [v11 amount];

  if (v12)
  {
    v5 = sub_1BE0533F4();
    v14 = v13;
    v16 = v15;

    v17 = [v7 value];
    if (v17)
    {
      v18 = v17;
      if ([v7 isQuantitative])
      {
        v19 = sub_1BE0533F4();
        v21 = v20;
        v23 = v22;

        v24 = 0;
LABEL_16:
        v26 = 0;
        *v27 = v16;
        *&v27[4] = v19;
        *&v27[12] = v21;
        *&v27[20] = v23;
        v6 = *v27;
        v25 = *&v27[16];
        goto LABEL_13;
      }
    }

    v19 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 1;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1BD22B534(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v48 = v1;
  sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
  sub_1BE04B594();

  v9 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  if (!v10)
  {
    goto LABEL_12;
  }

  v46 = v5;
  v11 = v10;
  v12 = sub_1BD228C3C();
  if (!v12)
  {
LABEL_11:

LABEL_12:
    [*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) clearCurrentSelectedPaymentOfferDetails];
    sub_1BD2294F8();
    return;
  }

  v13 = v12;
  v47 = v11;
  swift_getKeyPath();
  v48 = v1;
  sub_1BE04B594();

  v14 = *(v1 + v9);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (![v15 isRedeemable] || !objc_msgSend(v15, sel_isValid))
  {

    goto LABEL_10;
  }

  v16 = [v15 isPositive];

  if (!v16)
  {
LABEL_10:

    v11 = v47;
    goto LABEL_11;
  }

  v18 = *a1;
  v17 = a1[1];
  v19 = *(a1 + 4);
  v20 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB40440](v18, v17, v19, v20, v21, v22))
  {
LABEL_8:
    [*(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController) clearCurrentSelectedPaymentOfferDetails];
    sub_1BD2294F8();

    return;
  }

  v45 = *(a1 + 20);
  v23 = *(a1 + 28);
  v44 = *(a1 + 9);
  v24 = *(a1 + 40);
  v25 = MEMORY[0x1BFB403C0](0);
  if (v24)
  {
    v28 = v47;
    v29 = v47;
    v30 = sub_1BE053344();
    v31 = 0;
  }

  else
  {
    if (MEMORY[0x1BFB40440](v45, v23, v44, v25, v26, v27))
    {
      goto LABEL_8;
    }

    v28 = v47;
    v32 = v47;
    v30 = sub_1BE053344();
    v31 = sub_1BE053344();
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69B8CD0]) initWithRewardsBalance:v28 amount:v30 value:v31];

  v34 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);
  v35 = objc_allocWithZone(MEMORY[0x1E69B9208]);
  v36 = v33;
  v37 = v13;
  v38 = [v35 initWithPaymentPass_];
  sub_1BE04AFD4();
  sub_1BE04AF74();
  (*(v46 + 8))(v8, v4);
  v39 = objc_allocWithZone(MEMORY[0x1E69B9210]);
  v40 = sub_1BE052404();

  v41 = [v39 initWithRewardsRedemptionIntent:v36 criteria:v37 passDetails:v38 sessionIdentifier:v40];

  v42 = *(v2 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (v42)
  {
    [v42 updateCurrentSelectedPaymentOffer:v41 updateReason:3];
  }

  sub_1BD2294F8();
}

id sub_1BD22B994()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 fallbackSelectedPaymentOfferForType_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = v4, v6 = [v4 rewardsRedemptionIntent], v7 = objc_msgSend(v6, sel_monetaryValue), v6, !v7))
  {
    v17 = 0;
LABEL_11:

    return v17;
  }

  result = [v7 amount];
  if (result)
  {
    v9 = result;
    v10 = sub_1BE0533F4();
    v12 = v11;
    v14 = v13;

    v15 = [v5 rewardsRedemptionIntent];
    v16 = [v15 value];

    if (v16)
    {
      sub_1BE0533E4();
    }

    v18[0] = v10;
    v18[1] = v12;
    v19 = v14;
    v20 = 0uLL;
    v21 = 0;
    v22 = 1;
    sub_1BD22B534(v18);

    v17 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD22BB48()
{
  v1[26] = v0;
  sub_1BE0528A4();
  v1[27] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD22BBE0, v3, v2);
}

uint64_t sub_1BD22BBE0()
{
  v1 = sub_1BD228C3C();
  v0[30] = v1;
  if (!v1)
  {

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v2 = *(v0[26] + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
  v0[31] = v2;
  if (!v2)
  {
    v11 = v1;

    goto LABEL_9;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v3 identifier];
  v6 = v5;
  v7 = v5;
  if (!v5)
  {
    sub_1BE052434();
    v7 = sub_1BE052404();

    sub_1BE052434();
    v6 = sub_1BE052404();
  }

  v0[32] = v6;
  v8 = v5;
  v9 = [v4 dynamicContentPageForCriteriaIdentifier:v7 pageType:18];

  if (v9)
  {

    v10 = v9;
LABEL_10:
    v12 = v0[1];

    return v12(v10);
  }

  v14 = v0[26];
  v15 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  v0[33] = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  v16 = v14 + v15;
  if ((*(v16 + 8) & 1) != 0 || *v16 != 2)
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = 2;
    *(v17 + 32) = 0;
    v0[23] = v14;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  else
  {
    *(v16 + 8) = 0;
  }

  v0[34] = 0;
  v18 = [v3 identifier];

  if (!v18)
  {
    sub_1BE052434();
    v18 = sub_1BE052404();
  }

  v0[35] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B7020;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  sub_1BD112388(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  sub_1BD22CFF8();
  v20 = sub_1BE052A24();
  v0[36] = v20;

  v0[2] = v0;
  v0[7] = v0 + 38;
  v0[3] = sub_1BD22C04C;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD22B1E0;
  v0[13] = &block_descriptor_46;
  v0[14] = v21;
  [v4 updateDynamicContentPageForCriteriaIdentifier:v18 pageTypes:v20 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD22C04C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {

    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1BD22C320;
  }

  else
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = sub_1BD22C164;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD22C164()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 208);

  v7 = [v5 dynamicContentPageForCriteriaIdentifier:v3 pageType:18];
  if (*(v6 + v4 + 8))
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 208) + *(v0 + 264);

    *v9 = 0;
    *(v9 + 8) = 1;
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 248);
    v12 = *(v0 + 208);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v0 + 200) = v12;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  v14 = *(v0 + 8);

  return v14(v7);
}

uint64_t sub_1BD22C320()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[26];

  swift_willThrow();

  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[26];
  if (*(v4 + v3 + 8))
  {
    v8 = v0[37];
    v9 = v7 + v0[33];

    *v9 = 0;
    *(v9 + 8) = 1;
  }

  else
  {
    v10 = v0[37];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v7;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    v0[24] = v7;
    sub_1BD22CCA8(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel);
    sub_1BE04B584();
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t type metadata accessor for PaymentOfferSelectorModel()
{
  result = qword_1EBD3E4D8;
  if (!qword_1EBD3E4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD22C638()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD22C724()
{
  sub_1BE0528A4();
  *(v0 + 24) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD22C7B8, v2, v1);
}

uint64_t sub_1BD22C7B8()
{

  sub_1BD2294F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD22C944()
{
  sub_1BE0528A4();
  *(v0 + 24) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD22D474, v2, v1);
}

uint64_t sub_1BD22CA18(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1BE052434();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_1BD22D080(v10, v12, a5, a6);
}

uint64_t sub_1BD22CAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD22CCA8(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR___PKPaymentOfferInstallmentPlanSelectionModel__isLoading);
  return result;
}

void sub_1BD22CB84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer) = v2;
  v4 = v2;
}

void sub_1BD22CBC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1BD22CBE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError) = v2;
  v4 = v2;
}

void sub_1BD22CC24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance) = v2;
  v4 = v2;
}

uint64_t sub_1BD22CC64()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD22CCA8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD22CCF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel);
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel) = v2;
  v4 = v2;
}

void sub_1BD22CD30()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1BD22CD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD22A394(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1BD22CE54(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__criteria] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance] = 0;
  v9 = &v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__loadingPaymentOfferCriteriaType];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__preconfiguredInstallmentOfferState];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__paymentRewardsBalanceUpdateError] = 0;
  v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectorDisabled] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel] = 0;
  sub_1BE04B5C4();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController] = a1;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass] = a2;
  *&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection] = a3;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v11 = a2;
  v12 = a1;
  v13 = a3;
  v14 = objc_msgSendSuper2(&v23, sel_init);
  if (a1)
  {
    [v12 registerObserver_];
  }

  sub_1BD2294F8();
  v21 = v11;
  v22 = -96;
  v15 = v11;
  v16 = v12;
  v17 = sub_1BD228AA4();
  v18 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v19 = sub_1BD8D1EE0(&v21, a1, v17);

  sub_1BD228F98(v19);
  return v14;
}

unint64_t sub_1BD22CFF8()
{
  result = qword_1EBD3E5A8;
  if (!qword_1EBD3E5A8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3D270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5A8);
  }

  return result;
}

id sub_1BD22D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v23 - v11;
  result = [*&v4[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass] uniqueID];
  if (result)
  {
    v14 = result;
    v15 = sub_1BE052434();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
    }

    else
    {
      v19 = sub_1BE053B84();

      if ((v19 & 1) == 0)
      {
        return result;
      }
    }

    v20 = sub_1BE0528D4();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v4;
    v22 = v4;
    sub_1BD122C00(0, 0, v12, a4, v21);
  }

  return result;
}

uint64_t sub_1BD22D210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD22C924(a1, v4, v5, v6);
}

uint64_t sub_1BD22D2C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD22C924(a1, v4, v5, v6);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD22D3B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD22C704(a1, v4, v5, v6);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BD22D514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD22D55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD22D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5E0);
  MEMORY[0x1EEE9AC00](v31, v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E600);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5D0);
  MEMORY[0x1EEE9AC00](v30, v10);
  v12 = &v28 - v11;
  v13 = sub_1BE04F3D4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 152);
  v18 = *(a1 + 144);
  v34 = v18;
  if (v35 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v24 = sub_1BE050174();
    v29 = a1;
    v25 = v24;
    sub_1BE04CF84();

    a1 = v29;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v34, &qword_1EBD5C6E0);
    (*(v14 + 8))(v17, v13);
    if (v33 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E610);
    sub_1BD22DA4C(&v12[*(v26 + 44)]);
    v22 = &qword_1EBD3E5D0;
    sub_1BD0DE19C(v12, v9, &qword_1EBD3E5D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0);
    sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0);
    sub_1BE04F9A4();
    v23 = v12;
    return sub_1BD0DE53C(v23, v22);
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = *(a1 + 160);
  v20 = *(a1 + 168);
  *v5 = sub_1BE04F504();
  *(v5 + 1) = v19;
  v5[16] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E608);
  sub_1BD22E9FC(&v5[*(v21 + 44)]);
  v22 = &qword_1EBD3E5E0;
  sub_1BD0DE19C(v5, v9, &qword_1EBD3E5E0);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0);
  sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0);
  sub_1BE04F9A4();
  v23 = v5;
  return sub_1BD0DE53C(v23, v22);
}

uint64_t sub_1BD22DA4C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E618);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E620);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E628);
  sub_1BD22DC7C(&v17[*(v18 + 44)]);
  sub_1BD22E77C();
  sub_1BD0DE19C(v17, v13, &qword_1EBD3E620);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3E618);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3E620);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E630);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &qword_1EBD3E618);
  sub_1BD0DE53C(v9, &qword_1EBD3E618);
  sub_1BD0DE53C(v17, &qword_1EBD3E620);
  sub_1BD0DE53C(v5, &qword_1EBD3E618);
  return sub_1BD0DE53C(v13, &qword_1EBD3E620);
}

uint64_t sub_1BD22DC7C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v29 - v23;
  sub_1BD22DF80();
  sub_1BD22E158(v16);
  sub_1BD22E440(v8);
  sub_1BD0DE19C(v24, v20, &qword_1EBD38A98);
  sub_1BD0DE19C(v16, v12, &qword_1EBD3E660);
  v25 = v4;
  sub_1BD0DE19C(v8, v4, &unk_1EBD5BB60);
  v26 = v30;
  sub_1BD0DE19C(v20, v30, &qword_1EBD38A98);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E668);
  sub_1BD0DE19C(v12, v26 + *(v27 + 48), &qword_1EBD3E660);
  sub_1BD0DE19C(v25, v26 + *(v27 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v8, &unk_1EBD5BB60);
  sub_1BD0DE53C(v16, &qword_1EBD3E660);
  sub_1BD0DE53C(v24, &qword_1EBD38A98);
  sub_1BD0DE53C(v25, &unk_1EBD5BB60);
  sub_1BD0DE53C(v12, &qword_1EBD3E660);
  return sub_1BD0DE53C(v20, &qword_1EBD38A98);
}

uint64_t sub_1BD22DF80()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE050324();
  sub_1BE050384();
  sub_1BE0503F4();

  v5 = sub_1BE0505F4();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  sub_1BE051224();
  v10 = sub_1BE050564();
  v12 = v11;
  v14 = v13;

  sub_1BD0DDF10(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
  sub_1BD0EF0FC();
  sub_1BE050DE4();

  sub_1BD0DDF10(v10, v12, v14 & 1);
}

uint64_t sub_1BD22E158@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v3, v4);
  v9 = &v33 - v8;
  v10 = *(v1 + 136);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v37 = *(v1 + 128);
    v38 = v10;
    v35 = v6;
    v36 = v5;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    sub_1BE0502E4();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v34 = a1;
    v21 = v20;

    sub_1BD0DDF10(v12, v14, v16 & 1);

    sub_1BE051234();
    v22 = sub_1BE050564();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    v37 = v22;
    v38 = v24;
    v39 = v26 & 1;
    v40 = v28;
    v41 = KeyPath;
    v42 = 1;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
    sub_1BD0EF0FC();
    sub_1BE050DE4();

    sub_1BD0DDF10(v22, v24, v26 & 1);

    v30 = v34;
    sub_1BD0DE204(v9, v34, &qword_1EBD38A98);
    return (*(v35 + 56))(v30, 0, 1, v36);
  }

  else
  {
LABEL_6:
    v32 = *(v6 + 56);

    return v32(a1, 1, 1, v7);
  }
}

uint64_t sub_1BD22E440@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v33 - v5;
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  if (*(v1 + 32) & 1) == 0 && (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL) == 2 && (v9 = *v1, sub_1BD22F42C(), v10 = [v9 amount], v11 = objc_msgSend(objc_opt_self(), sel_zero), LOBYTE(v9) = sub_1BE053074(), v10, v11, (v9))
  {
    v12 = *(v36 + 56);

    return v12(a1, 1, 1, v3);
  }

  else
  {
    v37 = v7;
    v38 = v8;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    sub_1BE050324();
    sub_1BE050384();
    sub_1BE0503F4();
    v34 = v6;

    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;
    v35 = v3;

    sub_1BD0DDF10(v14, v16, v18 & 1);

    sub_1BE051224();
    v24 = sub_1BE050564();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    sub_1BD0DDF10(v19, v21, v23 & 1);

    v37 = v24;
    v38 = v26;
    v31 = v28 & 1;
    v39 = v28 & 1;
    v40 = v30;
    sub_1BE052434();
    v32 = v34;
    sub_1BE050DE4();

    sub_1BD0DDF10(v24, v26, v31);

    sub_1BD0DE204(v32, a1, &qword_1EBD452C0);
    return (*(v36 + 56))(a1, 0, 1, v35);
  }
}

uint64_t sub_1BD22E77C()
{
  v1 = sub_1BE04F6E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051574();
  v7 = sub_1BE0502D4();
  KeyPath = swift_getKeyPath();
  v9 = sub_1BE0511E4();
  v10 = swift_getKeyPath();
  v11 = *(v0 + 88);
  v12 = 0.0;
  if (v11)
  {
    v12 = 1.0;
  }

  v14[4] = v6;
  v14[5] = KeyPath;
  v14[2] = KeyPath;
  v14[6] = v7;
  v14[7] = v10;
  v14[8] = v9;
  *&v14[9] = v12;
  if (v11)
  {
    sub_1BE04F6B4();
  }

  else
  {
    v14[3] = MEMORY[0x1E69E7CC0];
    v14[1] = sub_1BD22F534(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
    sub_1BE053664();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E650);
  sub_1BD22F3A0();
  sub_1BE050DA4();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BD22E9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E618);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E670);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E678);
  sub_1BD22EC18(&v17[*(v18 + 44)]);
  sub_1BD22E77C();
  sub_1BD0DE19C(v17, v13, &qword_1EBD3E670);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3E618);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3E670);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E680);
  sub_1BD0DE19C(v5, a1 + *(v19 + 48), &qword_1EBD3E618);
  sub_1BD0DE53C(v9, &qword_1EBD3E618);
  sub_1BD0DE53C(v17, &qword_1EBD3E670);
  sub_1BD0DE53C(v5, &qword_1EBD3E618);
  return sub_1BD0DE53C(v13, &qword_1EBD3E670);
}

uint64_t sub_1BD22EC18@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E688);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E690);
  sub_1BD22EE48(&v17[*(v18 + 44)]);
  sub_1BD22E440(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD3E688);
  sub_1BD0DE19C(v9, v5, &unk_1EBD5BB60);
  sub_1BD0DE19C(v13, a1, &qword_1EBD3E688);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E698);
  v20 = a1 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BD0DE19C(v5, a1 + *(v19 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v9, &unk_1EBD5BB60);
  sub_1BD0DE53C(v17, &qword_1EBD3E688);
  sub_1BD0DE53C(v5, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v13, &qword_1EBD3E688);
}

uint64_t sub_1BD22EE48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD22DF80();
  sub_1BD22E158(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD38A98);
  sub_1BD0DE19C(v9, v5, &qword_1EBD3E660);
  sub_1BD0DE19C(v13, a1, &qword_1EBD38A98);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E6A0);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD3E660);
  sub_1BD0DE53C(v9, &qword_1EBD3E660);
  sub_1BD0DE53C(v17, &qword_1EBD38A98);
  sub_1BD0DE53C(v5, &qword_1EBD3E660);
  return sub_1BD0DE53C(v13, &qword_1EBD38A98);
}

uint64_t sub_1BD22F038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5B0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v13[-v3];
  v5 = v0[9];
  v19 = v0[8];
  v20[0] = v5;
  *(v20 + 9) = *(v0 + 153);
  v6 = v0[5];
  v15[4] = v0[4];
  v16 = v6;
  v7 = v0[7];
  v17 = v0[6];
  v18 = v7;
  v8 = v0[1];
  v15[0] = *v0;
  v15[1] = v8;
  v9 = v0[3];
  v15[2] = v0[2];
  v15[3] = v9;
  v14 = v15;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5B8);
  sub_1BD22F1DC();
  sub_1BE051704();
  v10 = BYTE8(v16);
  v11 = &v4[*(v1 + 36)];
  *v11 = 0;
  v11[8] = v10;
  sub_1BE052434();
  sub_1BD22F2BC();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v4, &qword_1EBD3E5B0);
}

unint64_t sub_1BD22F1DC()
{
  result = qword_1EBD3E5C0;
  if (!qword_1EBD3E5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5B8);
    sub_1BD0DE4F4(&qword_1EBD3E5C8, &qword_1EBD3E5D0);
    sub_1BD0DE4F4(&qword_1EBD3E5D8, &qword_1EBD3E5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5C0);
  }

  return result;
}

unint64_t sub_1BD22F2BC()
{
  result = qword_1EBD3E5E8;
  if (!qword_1EBD3E5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E5B0);
    sub_1BD0DE4F4(&qword_1EBD3E5F0, &qword_1EBD3E5F8);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E5E8);
  }

  return result;
}

unint64_t sub_1BD22F3A0()
{
  result = qword_1EBD3E658;
  if (!qword_1EBD3E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E650);
    sub_1BD0F1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E658);
  }

  return result;
}

unint64_t sub_1BD22F42C()
{
  result = qword_1EBD3E3F0;
  if (!qword_1EBD3E3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3E3F0);
  }

  return result;
}

unint64_t sub_1BD22F478()
{
  result = qword_1EBD3E6A8;
  if (!qword_1EBD3E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E6B0);
    sub_1BD22F2BC();
    sub_1BD22F534(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6A8);
  }

  return result;
}

uint64_t sub_1BD22F534(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD22F5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = (result + 32);
  if (!a1)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = (result + 32);
  while (*v8 != a1)
  {
    ++v7;
    v8 += 2;
    if (v5 == v7)
    {
      goto LABEL_13;
    }
  }

  v9 = __OFADD__(v7, 1);
  v10 = v7 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 >= v5)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v6 += 2 * v10;
LABEL_12:
    v11 = *v6;
    swift_unknownObjectRetain();
LABEL_14:

    return v11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BD22F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  v6 = *(result + 16);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = (result + 32);
  if (!a1)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = (result + 32);
  while (*v9 != a1)
  {
    ++v8;
    v9 += 2;
    if (v6 == v8)
    {
      goto LABEL_13;
    }
  }

  v10 = __OFADD__(v8, 1);
  v11 = v8 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= v6)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v7 += 2 * v11;
LABEL_12:
    v12 = *v7;
    swift_unknownObjectRetain();
LABEL_14:

    return v12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1BD22F7C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1BE052404();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_1EBD3E6B8 = v0;
}

void sub_1BD22F834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v75 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v72 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v81 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v74 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v72 - v27;
  v29 = type metadata accessor for SavingsFCCStepUpClosureViewController();
  v84.receiver = v1;
  v84.super_class = v29;
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v30 = [v1 explanationView];
  if (!v30)
  {
    goto LABEL_17;
  }

  v31 = v30;
  v73 = v13;
  v79 = v10;
  v80 = v9;
  v32 = objc_allocWithZone(type metadata accessor for BadgedHeroView());
  v33 = sub_1BD956838();
  [v31 setHeroView_];

  [v31 setTopMargin_];
  [v31 setTopLogoPadding_];
  v34 = *(v15 + 104);
  v77 = *MEMORY[0x1E69B80E0];
  v78 = v15 + 104;
  v83 = v34;
  (v34)(v28);
  v35 = PKPassKitBundle();
  if (!v35)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = v35;
  sub_1BE04B6F4();

  v37 = *(v15 + 8);
  v82 = v15 + 8;
  v76 = v37;
  v37(v28, v14);
  v38 = sub_1BE052404();

  [v31 setTitleText_];

  v39 = [*(*&v1[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account) savingsDetails];
  if (!v39 || (v40 = v39, v41 = [v39 fccStepUpDetails], v40, !v41))
  {
    (*(v79 + 56))(v8, 1, 1, v80);
    v47 = v77;
LABEL_10:
    sub_1BD0DE53C(v8, &unk_1EBD39970);
    goto LABEL_11;
  }

  v42 = [v41 neededBy];

  v43 = v79;
  if (v42)
  {
    v44 = v75;
    sub_1BE04AEE4();

    v45 = 0;
    v46 = v80;
    v47 = v77;
  }

  else
  {
    v45 = 1;
    v46 = v80;
    v47 = v77;
    v44 = v75;
  }

  (*(v43 + 56))(v44, v45, 1, v46);
  sub_1BD1CBBEC(v44, v8);
  if ((*(v43 + 48))(v8, 1, v46) == 1)
  {
    goto LABEL_10;
  }

  v60 = v73;
  (*(v43 + 32))(v73, v8, v46);
  sub_1BE04AEB4();
  if (v61 > 0.0)
  {
    if (qword_1EBD36B80 != -1)
    {
      swift_once();
    }

    v62 = qword_1EBD3E6B8;
    v63 = sub_1BE04AE64();
    v64 = [v62 stringFromDate_];

    v65 = sub_1BE052434();
    v67 = v66;

    v68 = v74;
    v83(v74, v47, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1BE0B69E0;
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = sub_1BD110550();
    *(v69 + 32) = v65;
    *(v69 + 40) = v67;
    sub_1BE04B714();

    v70 = v76;
    v76(v68, v14);
    v71 = sub_1BE052404();

    [v31 setBodyText_];

    v51 = v70;
    (*(v79 + 8))(v73, v80);
LABEL_13:
    v53 = v81;
    v54 = [v31 dockView];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 primaryButton];

      if (v56)
      {
        v83(v53, v47, v14);
        v57 = PKPassKitBundle();
        if (v57)
        {
          v58 = v57;
          sub_1BE04B6F4();

          v51(v53, v14);
          v59 = sub_1BE052404();

          [v56 setTitle:v59 forState:0];

          [v31 setDelegate_];
          [v31 setTitleAccessoriesEnabled_];

LABEL_17:
          [v1 setShowCloseButton_];
          [v1 setShowCancelButton_];
          [v1 setPrivacyLinkController_];
          [v1 setModalInPresentation_];
          return;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v43 + 8))(v60, v46);
LABEL_11:
  v83(v21, v47, v14);
  v48 = PKPassKitBundle();
  if (v48)
  {
    v49 = v48;
    sub_1BE04B6F4();

    v50 = v21;
    v51 = v76;
    v76(v50, v14);
    v52 = sub_1BE052404();

    [v31 setBodyText_];

    goto LABEL_13;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD230164(void *a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for FeatureError(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  [Strong showSpinner_];
  if (!a1)
  {
    if (!a2)
    {
LABEL_10:
      [v19 dismissViewControllerAnimated:1 completion:0];

      return;
    }

LABEL_8:
    v23 = *(*&v19[OBJC_IVAR____TtC9PassKitUI37SavingsFCCStepUpClosureViewController_stepUpController] + OBJC_IVAR____TtC9PassKitUI26SavingsFCCStepUpController_account);
    v24 = a2;
    v25 = [v23 feature];
    v26 = a2;
    FeatureError.init(feature:error:)(v25, a2, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_1BD0DE53C(v12, &qword_1EBD416C0);
      goto LABEL_10;
    }

    sub_1BD230930(v12, v17);
    v27 = sub_1BE04A844();
    v28 = PKTitleForDisplayableError();

    v29 = v5;
    if (v28)
    {
      v46 = sub_1BE052434();
      v31 = v30;
    }

    else
    {
      v46 = 0;
      v31 = 0;
    }

    v32 = sub_1BE04A844();
    v33 = MEMORY[0x1BFB42D10]();

    if (v33)
    {
      sub_1BE052434();
      v35 = v34;

      v36 = v29;
      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v35 = 0;
      v36 = v29;
      if (v31)
      {
LABEL_16:
        v37 = sub_1BE052404();

        if (v35)
        {
LABEL_17:
          v38 = sub_1BE052404();

          goto LABEL_21;
        }

LABEL_20:
        v38 = 0;
LABEL_21:
        v39 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

        (*(v36 + 104))(v8, *MEMORY[0x1E69B80E0], v4);
        v40 = PKPassKitBundle();
        if (v40)
        {
          v41 = v40;
          sub_1BE04B6F4();

          (*(v36 + 8))(v8, v4);
          v42 = sub_1BE052404();

          v43 = [objc_opt_self() actionWithTitle:v42 style:0 handler:0];

          [v39 addAction_];
          v44 = [v19 navigationController];
          if (v44)
          {
            v45 = v44;
            [v44 presentViewController:v39 animated:1 completion:0];

            sub_1BD230994(v17);
          }

          else
          {
            sub_1BD230994(v17);
          }
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v37 = 0;
    if (v35)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = a1;
  v21 = [v19 navigationController];
  if (v21)
  {
    v22 = v21;
    [v21 pushViewController:v20 animated:1];
  }
}

id sub_1BD23074C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SavingsFCCStepUpClosureViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD2307B4()
{
  [v0 showSpinner_];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  v2 = sub_1BD8BD4F8();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BD230928;
    *(v4 + 24) = v1;
    v6[4] = sub_1BD1B6B9C;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1BD14E1D8;
    v6[3] = &block_descriptor_32;
    v5 = _Block_copy(v6);
    sub_1BE048964();

    [v3 nextViewControllerWithCompletion_];

    _Block_release(v5);
  }

  else
  {
    sub_1BD230164(0, 0);
  }
}

uint64_t sub_1BD230930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD230994(uint64_t a1)
{
  v2 = type metadata accessor for FeatureError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI25PaymentAuthorizationModelC18BillingAddressInfoV6StatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BD230A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD230A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1BD230AD4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1BD230C68(v8, v9);
}

uint64_t sub_1BD230B30(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        if (sub_1BE053074())
        {
          if (a2)
          {
            if (a5)
            {
              sub_1BD0E5E8C(0, &qword_1EBD45E80);
              v8 = a5;
              v9 = a2;
              v10 = sub_1BE053074();

              if (v10)
              {
                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    return sub_1BE053074() & 1;
  }

  return 0;
}

BOOL sub_1BD230C68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v4 = *(a2 + 8);
    if (*(a1 + 16) == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }

      v5 = a1;
      v6 = *(a1 + 8);
      sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
      if ((sub_1BE053074() & 1) == 0)
      {
        return 0;
      }

      if (v6)
      {
        if (!v4)
        {
          return 0;
        }

        sub_1BD0E5E8C(0, &qword_1EBD45E80);
        v7 = v4;
        v8 = v6;
        v9 = sub_1BE053074();

        a1 = v5;
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        a1 = v5;
        if (v4)
        {
          return 0;
        }
      }
    }

    else if (v3 != 2 || *a2 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v11 = sub_1BE053074();
    a1 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    v16 = v14;
    v17 = v13;
    v18 = sub_1BE053074();

    a1 = v15;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = a1;
    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    v22 = v20;
    v23 = v19;
    v24 = sub_1BE053074();

    a1 = v21;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v25 = *(a1 + 40);
  v26 = *(a2 + 40);
  if ((v25 ^ v26))
  {
    return 0;
  }

  if (((v25 >> 8) & 1) != ((v26 >> 8) & 1))
  {
    return 0;
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 57);
  v29 = *(a1 + 58);
  v30 = *(a1 + 64);
  v31 = *(a1 + 72);
  v32 = *(a2 + 48);
  v33 = *(a2 + 56);
  v34 = *(a2 + 57);
  v35 = *(a2 + 58);
  v37 = *(a2 + 64);
  v36 = *(a2 + 72);
  if ((sub_1BD842760(*(a1 + 48), v32) & 1) == 0 || ((v27 ^ v33) & 1) != 0 || ((v28 ^ v34) & 1) != 0 || ((v29 ^ v35) & 1) != 0 || (sub_1BD842760(v30, v37) & 1) == 0)
  {
    return 0;
  }

  if (v31)
  {
    if (v36)
    {
      sub_1BD0E5E8C(0, &qword_1EBD3E6C8);
      v38 = v36;
      v39 = v31;
      v40 = sub_1BE053074();

      if (v40)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v36;
}

uint64_t sub_1BD230F5C@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LOWORD(v54) = 0;
  *(&v54 + 1) = MEMORY[0x1E69E7CD0];
  v56 = 0;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = a1;
  v5 = sub_1BD111A78(&unk_1F3B8CDD8);

  *(&v55 + 1) = v5;
  if (a2 >> 62)
  {
    result = sub_1BE053704();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_44:
    v56 = a3;
    v49 = v54;
    v50 = v55;
    v51 = a3;
    v52[0] = v54;
    v52[1] = v55;
    v53 = a3;
    v43 = a3;
    sub_1BD10D494(&v49, v48);
    result = sub_1BD10D558(v52);
    v44 = v50;
    *a4 = v49;
    *(a4 + 16) = v44;
    *(a4 + 32) = v51;
    return result;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v45 = *MEMORY[0x1E69BB7D8];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB40900](v8, a2);
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 domain];
      v12 = sub_1BE052434();
      v14 = v13;

      if (v12 == sub_1BE052434() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_1BE053B84();

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ([v10 code] == 2)
      {
        v18 = sub_1BE052434();
        v20 = v19;
        v21 = [v10 userInfo];
        v22 = sub_1BE052244();

        if (!*(v22 + 16))
        {

LABEL_25:

          goto LABEL_5;
        }

        v23 = sub_1BD148F70(v18, v20);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1BD038CD0(*(v22 + 56) + 32 * v23, v52);

        if (swift_dynamicCast())
        {
          v26 = sub_1BE052404();

          v27 = sub_1BE052434();
          v29 = v28;
          if (v27 == sub_1BE052434() && v29 == v30)
          {

LABEL_29:

            LOBYTE(v54) = 1;
            goto LABEL_6;
          }

          v31 = sub_1BE053B84();

          if (v31)
          {

            goto LABEL_29;
          }

          v32 = sub_1BE052434();
          v34 = v33;
          if (v32 == sub_1BE052434() && v34 == v35)
          {

LABEL_35:

            BYTE1(v54) = 1;
            goto LABEL_6;
          }

          v36 = sub_1BE053B84();

          if (v36)
          {

            goto LABEL_35;
          }

          v37 = sub_1BE052434();
          v39 = v38;
          if (v37 == sub_1BE052434() && v39 == v40)
          {

LABEL_40:
            v42 = sub_1BD34C030();
            if (v42 != 8)
            {
              sub_1BD2A5394(v52, v42);
            }
          }

          else
          {
            v41 = sub_1BE053B84();

            if (v41)
            {
              goto LABEL_40;
            }
          }
        }
      }

LABEL_5:

LABEL_6:
      if (v7 == ++v8)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1BD231458(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a2)
  {
    v39 = 0;
    v38 = 2;
    goto LABEL_17;
  }

  v10 = a2;
  v11 = [a1 errors];
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  v13 = sub_1BE052744();

  v14 = [a1 paymentContactFormatErrors];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BE052744();

    *&v40[0] = v13;
    sub_1BDA7A2D4(v16);
    v17 = sub_1BD3F00D4(v13);

    if (v17 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_6;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB40900](0, v17);
        goto LABEL_9;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v17 + 32);
LABEL_9:
        v39 = v18;

LABEL_10:
        v38 = 1;
LABEL_17:
        v22 = *(a4 + 48);
        v23 = *(a4 + 56);
        v24 = v23;
        v25 = v22;
        v26 = a3;
        v27 = [a3 paymentRequest];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 requiredBillingContactFields];

          type metadata accessor for PKContactField(0);
          sub_1BD231AF0();
          v30 = sub_1BE052A34();

          v31 = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v30);
          v32 = [a1 errors];
          if (v32)
          {
            v33 = v32;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
            v34 = sub_1BE052744();

            v35 = sub_1BD3F00D4(v34);

            v36 = [v26 contactFormatValidator];
            sub_1BD230F5C(v31 & 1, v35, v36, v40);

            *a5 = a2;
            *(a5 + 8) = v39;
            *(a5 + 16) = v38;
            *(a5 + 24) = v22;
            *(a5 + 32) = v23;
            v37 = v40[1];
            *(a5 + 40) = v40[0];
            *(a5 + 56) = v37;
            *(a5 + 72) = v41;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_23;
    }

    v19 = [v10 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
    v20 = sub_1BE052744();

    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

      if (v21)
      {
        v38 = [a1 isRejected];
        v39 = 0;
        goto LABEL_17;
      }

      v39 = 0;
      goto LABEL_10;
    }

LABEL_23:
    v21 = sub_1BE053704();
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD231800(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!a1)
  {

LABEL_6:
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    goto LABEL_7;
  }

  v7 = a1;
  if (([v7 requiresBillingAddress] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = v7;
  sub_1BD231458(v8, [v8 billingAddress], a2, a3, v19);
  v17 = v19[1];
  v18 = v19[0];
  v15 = v19[3];
  v16 = v19[2];
  v14 = v19[4];

  v10 = v14;
  v9 = v15;
  v12 = v16;
  v11 = v17;
  v13 = v18;
LABEL_7:
  *a4 = v13;
  a4[1] = v11;
  a4[2] = v12;
  a4[3] = v9;
  a4[4] = v10;
}

void sub_1BD2318FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 mode] == 2)
  {
    if ([a1 itemForType_])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      *v23 = 0u;
    }

    v20 = v22;
    v21 = *v23;
    if (*&v23[8])
    {
      v6 = &qword_1EBD3E6D8;
      goto LABEL_12;
    }

LABEL_15:
    sub_1BD14EC0C(&v20);
    v7 = 0;
    goto LABEL_16;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    *v23 = 0u;
  }

  v20 = v22;
  v21 = *v23;
  if (!*&v23[8])
  {
    goto LABEL_15;
  }

  v6 = &qword_1EBD3E6D0;
LABEL_12:
  sub_1BD0E5E8C(0, v6);
  if (swift_dynamicCast())
  {
    v7 = v19;
  }

  else
  {
    v7 = 0;
  }

LABEL_16:
  sub_1BD231800(v7, a1, a2, &v22);
  v8 = v26;
  if (v26)
  {
    v10 = v30;
    v9 = v31;
    v11 = *&v23[8];
    v12 = v22;
    v13 = v23[0];
    if (v25)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFFFELL | v24 & 1;
    v16 = 0x10000;
    if ((v29 & 1) == 0)
    {
      v16 = 0;
    }

    if (v28)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 & 0xFFFFFFFFFFFFFFFELL | v27 & 1 | v16;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v13 = 0;
    v15 = 0;
    v18 = 0;
    v12 = 0uLL;
    v11 = 0uLL;
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v11;
  *(a3 + 40) = v15;
  *(a3 + 48) = v8;
  *(a3 + 56) = v18;
  *(a3 + 64) = v10;
  *(a3 + 72) = v9;
}

unint64_t sub_1BD231AF0()
{
  result = qword_1EBD35EE0;
  if (!qword_1EBD35EE0)
  {
    type metadata accessor for PKContactField(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35EE0);
  }

  return result;
}

uint64_t sub_1BD231B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD231B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD231BD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1BD231BFC(unsigned __int8 a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B8ED0]) init];
  [v2 setType_];
  return v2;
}

unint64_t sub_1BD231C4C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v6 = 0xD000000000000019;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v6;
      }
    }

    else if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1BD231DF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1BD231C4C(*a1);
  v5 = v4;
  if (v3 == sub_1BD231C4C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE053B84();
  }

  return v8 & 1;
}

unint64_t sub_1BD231E7C()
{
  result = qword_1EBD3E6E0;
  if (!qword_1EBD3E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6E0);
  }

  return result;
}

uint64_t sub_1BD231ED0()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD231C4C(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD231F34()
{
  sub_1BD231C4C(*v0);
  sub_1BE052524();
}

uint64_t sub_1BD231F88()
{
  v1 = *v0;
  sub_1BE053D04();
  sub_1BD231C4C(v1);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD231FE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD233B10();
  *a1 = result;
  return result;
}

unint64_t sub_1BD232018@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BD231C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD232048()
{
  result = qword_1EBD3E6E8;
  if (!qword_1EBD3E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6E8);
  }

  return result;
}

unint64_t sub_1BD2320A0()
{
  result = qword_1EBD3E6F0;
  if (!qword_1EBD3E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6F0);
  }

  return result;
}

unint64_t sub_1BD2320F8()
{
  result = qword_1EBD3E6F8;
  if (!qword_1EBD3E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E6F8);
  }

  return result;
}

unint64_t sub_1BD232150()
{
  result = qword_1EBD3E700;
  if (!qword_1EBD3E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E700);
  }

  return result;
}

unint64_t sub_1BD2321A4()
{
  result = qword_1EBD3E708;
  if (!qword_1EBD3E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E708);
  }

  return result;
}

unint64_t sub_1BD2321FC()
{
  result = qword_1EBD3E710;
  if (!qword_1EBD3E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E710);
  }

  return result;
}

uint64_t sub_1BD232250()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAAEA8);
  __swift_project_value_buffer(v15, qword_1EBDAAEA8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD232570()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v87 = &v79 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v79 - v5;
  v6 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04A874();
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04A884();
  v98 = *(v18 - 8);
  v99 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E740);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF28);
  v21 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v94 = *(*(v20 - 8) + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE0BA770;
  v82 = v22;
  v96 = v20;
  v97 = v22 + v21;
  *(v22 + v21) = 0;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v91 = v10;
  v23 = __swift_project_value_buffer(v10, qword_1EBDAB400);
  v24 = *(v100 + 16);
  v100 += 16;
  v93 = v24;
  v25 = v13;
  v26 = v13;
  v27 = v23;
  v89 = v23;
  (v24)(v26);
  v86 = v9;
  sub_1BE04B0A4();
  v90 = v17;
  sub_1BE04A894();
  v92 = *(v98 + 56);
  v98 += 56;
  v28 = v85;
  v92(v85, 1, 1, v99);
  v101 = sub_1BE048BB4();
  v29 = *(v101 - 8);
  v88 = *(v29 + 56);
  v95 = v29 + 56;
  v30 = v87;
  v88(v87, 1, 1, v101);
  v31 = v97;
  sub_1BE048BD4();
  v83 = *(v96 + 48);
  *(v31 + v94) = 2;
  sub_1BE052354();
  v32 = v25;
  v33 = v25;
  v34 = v91;
  v93(v33, v27, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v35 = v92;
  v92(v28, 1, 1, v99);
  v88(v30, 1, 1, v101);
  sub_1BE048BD4();
  v83 = 2 * v94;
  v81 = *(v96 + 48);
  *(v97 + 2 * v94) = 3;
  sub_1BE052354();
  v36 = v32;
  v37 = v32;
  v38 = v89;
  v93(v37, v89, v34);
  sub_1BE04B0A4();
  v84 = v36;
  sub_1BE04A894();
  v35(v85, 1, 1, v99);
  v39 = v88;
  v88(v87, 1, 1, v101);
  sub_1BE048BD4();
  v40 = v94;
  v41 = v97;
  v81 = v97 + v83 + v94;
  v42 = v96;
  v83 = *(v96 + 48);
  *v81 = 1;
  sub_1BE052354();
  v93(v36, v38, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v43 = v85;
  v44 = v92;
  v92(v85, 1, 1, v99);
  v45 = v87;
  v39(v87, 1, 1, v101);
  sub_1BE048BD4();
  v83 = 4 * v40;
  v81 = *(v42 + 48);
  *(v41 + 4 * v40) = 4;
  sub_1BE052354();
  v46 = v84;
  v93(v84, v89, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v44(v43, 1, 1, v99);
  v47 = v88;
  v88(v45, 1, 1, v101);
  sub_1BE048BD4();
  v81 = v97 + v83 + v94;
  v83 = *(v96 + 48);
  *v81 = 5;
  sub_1BE052354();
  v48 = v89;
  v49 = v91;
  v93(v46, v89, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v50 = v99;
  v92(v43, 1, 1, v99);
  v47(v87, 1, 1, v101);
  sub_1BE048BD4();
  v81 = v97 + 6 * v94;
  v83 = *(v96 + 48);
  *v81 = 6;
  sub_1BE052354();
  v51 = v93;
  v93(v84, v48, v49);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v92(v43, 1, 1, v50);
  v52 = v101;
  v88(v87, 1, 1, v101);
  sub_1BE048BD4();
  v83 = 8 * v94;
  v53 = v97;
  v80 = (v97 + 7 * v94);
  v54 = v96;
  v81 = *(v96 + 48);
  *v80 = 7;
  sub_1BE052354();
  v55 = v84;
  v56 = v91;
  v51(v84, v89, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v57 = v99;
  v92(v85, 1, 1, v99);
  v58 = v87;
  v59 = v52;
  v60 = v88;
  v88(v87, 1, 1, v59);
  sub_1BE048BD4();
  v80 = (v53 + v83);
  v81 = *(v54 + 48);
  *v80 = 8;
  sub_1BE052354();
  v61 = v93;
  v93(v55, v89, v56);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v62 = v57;
  v92(v85, 1, 1, v57);
  v60(v58, 1, 1, v101);
  sub_1BE048BD4();
  v63 = v94;
  v64 = v97;
  v81 = v97 + v83 + v94;
  v65 = v96;
  v83 = *(v96 + 48);
  *v81 = 9;
  sub_1BE052354();
  v66 = v84;
  v67 = v89;
  v61(v84, v89, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v68 = v85;
  v69 = v92;
  v92(v85, 1, 1, v62);
  v70 = v87;
  v88(v87, 1, 1, v101);
  sub_1BE048BD4();
  v83 = *(v65 + 48);
  *(v64 + 10 * v63) = 10;
  sub_1BE052354();
  v71 = v93;
  v93(v66, v67, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v72 = v68;
  v69(v68, 1, 1, v99);
  v73 = v70;
  v74 = v70;
  v75 = v88;
  v88(v74, 1, 1, v101);
  sub_1BE048BD4();
  v76 = (v97 + 11 * v94);
  v94 = *(v96 + 48);
  *v76 = 11;
  sub_1BE052354();
  v71(v66, v89, v91);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v92(v72, 1, 1, v99);
  v75(v73, 1, 1, v101);
  sub_1BE048BD4();
  v77 = sub_1BD1AC2E4(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBDAAEC0 = v77;
  return result;
}

uint64_t sub_1BD233600@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE048E94();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAAEA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD2336F8()
{
  result = qword_1EBD56100;
  if (!qword_1EBD56100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56100);
  }

  return result;
}

uint64_t sub_1BD23374C(uint64_t a1)
{
  v2 = sub_1BD2336F8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1BD23379C()
{
  result = qword_1EBD3E718;
  if (!qword_1EBD3E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E718);
  }

  return result;
}

unint64_t sub_1BD2337F4()
{
  result = qword_1EBD3E720;
  if (!qword_1EBD3E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E720);
  }

  return result;
}

unint64_t sub_1BD23384C()
{
  result = qword_1EBD3E728;
  if (!qword_1EBD3E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E728);
  }

  return result;
}

uint64_t sub_1BD2338A0()
{
  if (qword_1EBD36B90 != -1)
  {
    swift_once();
  }

  return sub_1BE048C84();
}

uint64_t sub_1BD2338FC()
{
  sub_1BD2321FC();

  return sub_1BE048E14();
}

unint64_t sub_1BD23394C()
{
  result = qword_1EBD3E730;
  if (!qword_1EBD3E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionEntityTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionEntityTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD233B10()
{
  v0 = sub_1BE053A44();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

id sub_1BD233B90@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v86 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E748);
  MEMORY[0x1EEE9AC00](v85, v7);
  v84 = &v81 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  MEMORY[0x1EEE9AC00](v83, v9);
  v11 = &v81 - v10;
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v81 - v19;
  v22 = *MEMORY[0x1E69B8050];
  v23 = *(v13 + 104);
  v82 = v11;
  if (a1)
  {
    v23(v16, v22, v12, v20);
    result = PKPassKitBundle();
    if (result)
    {
      v25 = result;
      sub_1BE04B6F4();

      (*(v13 + 8))(v16, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BE0B69E0;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1BD110550();
      *(v26 + 32) = a2;
      *(v26 + 40) = a3;
      sub_1BE048C84();
      v27 = sub_1BE052454();
      v29 = v28;

      v87 = v27;
      v88 = v29;
      sub_1BD0DDEBC();
      v30 = sub_1BE0506C4();
      v32 = v31;
      v34 = v33;
      sub_1BE0502A4();
      v35 = sub_1BE0505F4();
      v37 = v36;
      v39 = v38;

      sub_1BD0DDF10(v30, v32, v34 & 1);

      sub_1BE050394();
      v40 = sub_1BE050544();
      v42 = v41;
      v44 = v43;
      sub_1BD0DDF10(v35, v37, v39 & 1);

      sub_1BE0513B4();
      v45 = sub_1BE050564();
      v47 = v46;
      LOBYTE(v35) = v48;
      v50 = v49;
      v81 = v49;

      sub_1BD0DDF10(v40, v42, v44 & 1);

      KeyPath = swift_getKeyPath();
      v87 = v45;
      v88 = v47;
      v89 = v35 & 1;
      v90 = v50;
      v91 = KeyPath;
      v92 = 1;
      sub_1BE052434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
      sub_1BD0EF0FC();
      v52 = v82;
      sub_1BE050DE4();

      sub_1BD0DDF10(v45, v47, v35 & 1);

LABEL_6:
      sub_1BD2342C4(v52, v84);
      swift_storeEnumTagMultiPayload();
      sub_1BD234334();
      sub_1BE04F9A4();
      return sub_1BD2343C0(v52);
    }

    __break(1u);
  }

  else
  {
    v23(&v81 - v19, v22, v12, v20);
    result = PKPassKitBundle();
    if (result)
    {
      v53 = result;
      sub_1BE04B6F4();

      (*(v13 + 8))(v21, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BE0B69E0;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_1BD110550();
      *(v54 + 32) = a2;
      *(v54 + 40) = a3;
      sub_1BE048C84();
      v55 = sub_1BE052454();
      v57 = v56;

      v87 = v55;
      v88 = v57;
      sub_1BD0DDEBC();
      v58 = sub_1BE0506C4();
      v60 = v59;
      v62 = v61;
      sub_1BE0502A4();
      v63 = sub_1BE0505F4();
      v65 = v64;
      v67 = v66;

      sub_1BD0DDF10(v58, v60, v62 & 1);

      sub_1BE050394();
      v68 = sub_1BE050544();
      v70 = v69;
      v72 = v71;
      sub_1BD0DDF10(v63, v65, v67 & 1);

      sub_1BE0513B4();
      v73 = sub_1BE050564();
      v75 = v74;
      v77 = v76;
      v79 = v78;

      sub_1BD0DDF10(v68, v70, v72 & 1);

      v80 = swift_getKeyPath();
      v87 = v73;
      v88 = v75;
      v89 = v77 & 1;
      v90 = v79;
      v91 = v80;
      v92 = 1;
      sub_1BE052434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0);
      sub_1BD0EF0FC();
      v52 = v82;
      sub_1BE050DE4();

      sub_1BD0DDF10(v73, v75, v77 & 1);

      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD2342C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD234334()
{
  result = qword_1EBD3E750;
  if (!qword_1EBD3E750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38A98);
    sub_1BD0EF0FC();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E750);
  }

  return result;
}

uint64_t sub_1BD2343C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD234428()
{
  result = qword_1EBD3E758;
  if (!qword_1EBD3E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E760);
    sub_1BD234334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E758);
  }

  return result;
}

double sub_1BD2344D8@<D0>(uint64_t a1@<X8>)
{
  sub_1BD234594(v11);
  v2 = sub_1BE0502A4();
  KeyPath = swift_getKeyPath();
  v4 = sub_1BE051234();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = v11[3];
  *(a1 + 32) = v11[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v11[4];
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = v2;
  *(a1 + 104) = v5;
  *(a1 + 112) = v4;
  *(a1 + 120) = v6;
  *(a1 + 128) = 2;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1BD234594@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051574();
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v14 & 1;
  *(a1 + 80) = v16;
  sub_1BE048964();
  sub_1BD0D7F18(v3, v5, v13);
  sub_1BE048C84();
  sub_1BD0D7F18(v10, v12, v15);
  sub_1BE048C84();
  sub_1BD0DDF10(v10, v12, v15);

  sub_1BD0DDF10(v3, v5, v18);
}

double sub_1BD234724@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F504();
  v19 = 1;
  sub_1BD2344D8(&v10);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v20 = v10;
  v21 = v11;
  v28[5] = v15;
  v28[6] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[0] = v10;
  v28[1] = v11;
  sub_1BD2348F8(&v20, &v9);
  sub_1BD234968(v28);
  *(&v18[6] + 7) = v26;
  *(&v18[5] + 7) = v25;
  *(&v18[2] + 7) = v22;
  *(&v18[1] + 7) = v21;
  *(&v18[7] + 7) = v27[0];
  v18[8] = *(v27 + 9);
  *(&v18[3] + 7) = v23;
  *(&v18[4] + 7) = v24;
  *(v18 + 7) = v20;
  v3 = v18[4];
  *(a1 + 97) = v18[5];
  v4 = v18[7];
  *(a1 + 113) = v18[6];
  *(a1 + 129) = v4;
  *(a1 + 145) = v18[8];
  v5 = v18[0];
  *(a1 + 33) = v18[1];
  result = *&v18[2];
  v7 = v18[3];
  *(a1 + 49) = v18[2];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1BD2348F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD234968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD2349D0()
{
  result = qword_1EBD3E770;
  if (!qword_1EBD3E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD3E778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E770);
  }

  return result;
}

void sub_1BD234A3C()
{
  _s8MerchantVMa(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD234B18(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  v11 = v7 + v9 > 0x30;
  v12 = 48;
  v13 = *(*(a3 + 16) - 8);
  if (v11)
  {
    v12 = v10;
  }

  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 64);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v12 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v15 + 1;
  if (v17 >= a2)
  {
    goto LABEL_31;
  }

  v19 = ((((v16 + (v18 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v17 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  if ((v14 & 0x80000000) != 0)
  {
    v29 = *(*(*(a3 + 16) - 8) + 48);

    return v29((a1 + v18) & ~v15);
  }

  else
  {
    v28 = *(a1 + 1);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_1BD234D38(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BE04AA64() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v12 = v9 + v11;
  if (v12 <= 0x30)
  {
    v13 = 48;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 64);
  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v13 + ((v10 & 0xF8 ^ 0x1F8u) & (v10 + 16)) + 1;
  v20 = ((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 >= a3)
  {
    v23 = 0;
    v24 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v18 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        if ((v15 & 0x80000000) != 0)
        {
          v27 = *(v14 + 56);

          v27((a1 + v19 + v16) & ~v16, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          if (v19 <= 3)
          {
            v28 = ~(-1 << (8 * v19));
          }

          else
          {
            v28 = 0x7FFFFFFF;
          }

          if (v19)
          {
            v29 = v28 & a2;
            if (v19 <= 3)
            {
              v30 = v19;
            }

            else
            {
              v30 = 4;
            }

            bzero(a1, v19);
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                *a1 = v29;
                *(a1 + 2) = BYTE2(v29);
              }

              else
              {
                *a1 = v29;
              }
            }

            else if (v30 == 1)
            {
              *a1 = v29;
            }

            else
            {
              *a1 = v29;
            }
          }
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }
  }

  if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if (((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v26 = ~v18 + a2;
    bzero(a1, ((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

uint64_t sub_1BD235064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v54 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
  v4 = *(a1 + 24);
  v34 = *(a1 + 16);
  v33 = v4;
  sub_1BE051854();
  sub_1BE04EBD4();
  v5 = sub_1BE04EBD4();
  v6 = sub_1BD238AEC();
  v31 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v53 = MEMORY[0x1E697EBF8];
  v7 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E5D8];
  v50 = v8;
  v51 = MEMORY[0x1E697E5D8];
  v32 = v7;
  v10 = swift_getWitnessTable();
  v44 = v3;
  v45 = MEMORY[0x1E6981E70];
  v46 = v5;
  v47 = v6;
  v48 = MEMORY[0x1E6981E60];
  v49 = v10;
  v56 = type metadata accessor for SheetSection();
  v57 = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  v42 = swift_getWitnessTable();
  v43 = v9;
  swift_getWitnessTable();
  sub_1BE04E2F4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v11 = sub_1BE051854();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39E20);
  v15 = sub_1BE04EBD4();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  sub_1BE04F7C4();
  v37 = v34;
  v38 = v33;
  v39 = v35;
  sub_1BE051844();
  v23 = sub_1BE051274();
  v24 = sub_1BE0501D4();
  v54 = v23;
  LOBYTE(v55) = v24;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8B0);
  v25 = swift_getWitnessTable();
  sub_1BD238BD8();
  sub_1BE050834();

  (*(v29 + 8))(v14, v11);
  v26 = sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20);
  v40 = v25;
  v41 = v26;
  swift_getWitnessTable();
  sub_1BD147308(v18);
  v27 = *(v30 + 8);
  v27(v18, v15);
  sub_1BD147308(v22);
  return (v27)(v22, v15);
}

uint64_t sub_1BD2355FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v33 = a4;
  v53 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
  sub_1BE051854();
  sub_1BE04EBD4();
  v6 = sub_1BE04EBD4();
  v7 = sub_1BD238AEC();
  WitnessTable = swift_getWitnessTable();
  v52 = MEMORY[0x1E697EBF8];
  v8 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable();
  v10 = MEMORY[0x1E697E5D8];
  v49 = v9;
  v50 = MEMORY[0x1E697E5D8];
  v30 = v8;
  v11 = swift_getWitnessTable();
  v43 = v5;
  v44 = MEMORY[0x1E6981E70];
  v45 = v6;
  v46 = v7;
  v47 = MEMORY[0x1E6981E60];
  v48 = v11;
  v55 = type metadata accessor for SheetSection();
  v56 = v54;
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  sub_1BE04EBD4();
  v41 = swift_getWitnessTable();
  v42 = v10;
  swift_getWitnessTable();
  v12 = sub_1BE04E2F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  v17 = sub_1BE04EBD4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v30 - v24;
  v34 = a2;
  v35 = v31;
  v36 = v32;
  sub_1BE0501B4();
  sub_1BD99A478();
  sub_1BE051CD4();
  v29 = swift_getWitnessTable();
  sub_1BE050F54();
  (*(v13 + 8))(v16, v12);
  v39 = v29;
  v40 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  sub_1BD147308(v21);
  v27 = *(v18 + 8);
  v27(v21, v17);
  (*(v18 + 16))(v21, v25, v17);
  v54 = v21;
  v43 = MEMORY[0x1E6981E70];
  v44 = v17;
  v37 = MEMORY[0x1E6981E60];
  v38 = v26;
  sub_1BD13A4C4(&v53, 2uLL, &v43);
  v27(v25, v17);
  return (v27)(v21, v17);
}

uint64_t sub_1BD235B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v50 = sub_1BE04F3D4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v7);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E880);
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
  sub_1BE051854();
  sub_1BE04EBD4();
  v11 = sub_1BE04EBD4();
  v12 = sub_1BD238AEC();
  WitnessTable = swift_getWitnessTable();
  v66 = MEMORY[0x1E697EBF8];
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E697E5D8];
  v13 = swift_getWitnessTable();
  v57 = v10;
  v58 = MEMORY[0x1E6981E70];
  v59 = v11;
  v60 = v12;
  v61 = MEMORY[0x1E6981E60];
  v62 = v13;
  v69 = type metadata accessor for SheetSection();
  v70 = v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E8A8);
  swift_getTupleTypeMetadata();
  sub_1BE051E34();
  swift_getWitnessTable();
  v14 = sub_1BE051854();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v44 - v16;
  v18 = sub_1BE04EBD4();
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  sub_1BE04F7B4();
  v52 = a2;
  v53 = a3;
  v54 = a1;
  sub_1BE051844();
  v26 = type metadata accessor for RecurringPaymentContent();
  v27 = *(v26 + 64);
  v46 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    v30 = v50;
    v31 = v49;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v32 = sub_1BE050174();
    sub_1BE04CF84();

    v33 = v45;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v29, 0);
    v31 = v49;
    v34 = v33;
    v30 = v50;
    (*(v49 + 8))(v34, v50);
    if (v67)
    {
      goto LABEL_7;
    }
  }

  v35 = v46 + *(v26 + 68);
  v36 = *v35;
  if (*(v35 + 8) != 1)
  {
    sub_1BE048964();
    v37 = v30;
    LODWORD(v50) = sub_1BE052C44();
    v38 = v31;
    v39 = sub_1BE050174();
    sub_1BE04CF84();

    v40 = v45;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v36, 0);
    (*(v38 + 8))(v40, v37);
  }

LABEL_7:
  v41 = swift_getWitnessTable();
  sub_1BE050FF4();
  (*(v47 + 8))(v17, v14);
  v55 = v41;
  v56 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308(v21);
  v42 = *(v48 + 8);
  v42(v21, v18);
  sub_1BD147308(v25);
  return (v42)(v25, v18);
}

uint64_t sub_1BD2361E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v83 = a2;
  v81 = a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A0);
  MEMORY[0x1EEE9AC00](v84, v5);
  v82 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v54 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E888);
  v80 = v10;
  sub_1BE051854();
  sub_1BE04EBD4();
  v11 = sub_1BE04EBD4();
  v12 = sub_1BD238AEC();
  v77 = v12;
  WitnessTable = swift_getWitnessTable();
  v138 = MEMORY[0x1E697EBF8];
  v135 = swift_getWitnessTable();
  v136 = MEMORY[0x1E697E5D8];
  v78 = v11;
  v75 = swift_getWitnessTable();
  *&v129 = v10;
  *(&v129 + 1) = MEMORY[0x1E6981E70];
  *&v130 = v11;
  *(&v130 + 1) = v12;
  *&v131 = MEMORY[0x1E6981E60];
  *(&v131 + 1) = v75;
  v13 = type metadata accessor for SheetSection();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for RecurringPaymentMerchantDetailsView();
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - v26;
  sub_1BD238C80(a1, &v53 - v26, _s8MerchantVMa);
  v27[v21[5]] = 3;
  v28 = &v27[v21[6]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v76 = v21;
  v29 = v21[7];
  v73 = v27;
  v30 = &v27[v29];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v83;
  v32 = v63;
  v33 = type metadata accessor for RecurringPaymentContent();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v68 = v139;
  v69 = v141;
  v70 = v144;
  v71 = v143;
  v162 = 1;
  v160 = v140;
  v158 = v142;
  sub_1BD236AB8(&v129);
  v100 = v129;
  LOBYTE(v101) = v130;
  *(&v101 + 1) = *(&v130 + 1);
  v85 = v31;
  v86 = v32;
  v87 = a1;
  sub_1BD7C944C(&v100, sub_1BD238C74, v80, v16);
  v34 = swift_getWitnessTable();
  v78 = v20;
  v72 = v34;
  sub_1BD147308(v16);
  v35 = v62;
  v36 = *(v62 + 8);
  v80 = v16;
  v77 = v13;
  v74 = v36;
  v75 = v62 + 8;
  v36(v16, v13);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v64 = v145;
  v65 = v147;
  v66 = v150;
  v67 = v149;
  v168 = 1;
  v166 = v146;
  v164 = v148;
  v37 = v84;
  v38 = v54;
  v39 = &v54[*(v84 + 84)];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v38 + v37[22];
  *v40 = swift_getKeyPath();
  *(v40 + 8) = 0;
  sub_1BD2370E8(a1, v83, v32, v38);
  v41 = v38 + v37[19];
  *v41 = 0x4020000000000000;
  *(v41 + 8) = 0;
  *(v38 + v37[20]) = 1;
  v42 = (a1 + *(v33 + 40));
  v43 = v42[1];
  if (v43)
  {
    v83 = *v42;
    sub_1BE048C84();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v63 = v151;
    v60 = v155;
    v61 = v153;
    LOBYTE(v129) = 1;
    LOBYTE(v100) = v152;
    LOBYTE(v117) = v154;
    v58 = 1;
    v59 = v156;
    v57 = v152;
    v56 = v154;
    v55 = 0x4030000000000000;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0;
    v56 = 0;
    v59 = 0;
    v83 = 0;
  }

  v44 = v73;
  v45 = v79;
  sub_1BD238C80(v73, v79, type metadata accessor for RecurringPaymentMerchantDetailsView);
  v117 = 0;
  v118 = v162;
  *v119 = *v161;
  *&v119[3] = *&v161[3];
  v120 = v68;
  v121 = v160;
  *v122 = *v159;
  *&v122[3] = *&v159[3];
  v123 = v69;
  v124 = v158;
  *v125 = *v157;
  *&v125[3] = *&v157[3];
  v126 = v71;
  v127 = v70;
  v128[0] = v45;
  v128[1] = &v117;
  v46 = *(v35 + 16);
  v47 = v80;
  v48 = v77;
  v49 = v78;
  v46(v80, v78, v77);
  v106 = 0;
  v107 = v168;
  *v108 = *v167;
  *&v108[3] = *&v167[3];
  v109 = v64;
  v110 = v166;
  *v111 = *v165;
  *&v111[3] = *&v165[3];
  v112 = v65;
  v113 = v164;
  *v114 = *v163;
  *&v114[3] = *&v163[3];
  v115 = v67;
  v116 = v66;
  v128[2] = v47;
  v128[3] = &v106;
  v50 = v82;
  sub_1BD055E84(v38, v82);
  *&v100 = 0;
  *(&v100 + 1) = v58;
  *&v101 = v63;
  *(&v101 + 1) = v57;
  *&v102 = v61;
  *(&v102 + 1) = v56;
  *&v103 = v60;
  *(&v103 + 1) = v59;
  *&v104 = v83;
  *(&v104 + 1) = v43;
  v105 = v55;
  v128[4] = v50;
  v128[5] = &v100;
  v94 = v76;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E880);
  v96 = v48;
  v97 = v95;
  v98 = v84;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8A8);
  v88 = sub_1BD238CE8();
  v89 = sub_1BD238D40();
  v90 = v72;
  v91 = v89;
  v92 = sub_1BD0DE4F4(&qword_1EBD3E8D0, &qword_1EBD3E8A0);
  v93 = sub_1BD238DC4();
  sub_1BD13A4C4(v128, 6uLL, &v94);
  sub_1BD055EF4(v38);
  v51 = v74;
  v74(v49, v48);
  sub_1BD238E74(v44);
  v131 = v102;
  v132 = v103;
  v133 = v104;
  v134 = v105;
  v129 = v100;
  v130 = v101;
  sub_1BD0DE53C(&v129, &qword_1EBD3E8A8);
  sub_1BD055EF4(v50);
  v51(v47, v48);
  return sub_1BD238E74(v45);
}

id sub_1BD236AB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8080], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD236C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[3] = a1;
  v31 = a4;
  v7 = sub_1BE051854();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  v11 = sub_1BE04EBD4();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v27 - v13;
  v15 = sub_1BE04EBD4();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v27 - v21;
  sub_1BE04F7C4();
  v27[1] = a2;
  v27[2] = a3;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  sub_1BE051844();
  sub_1BE051CE4();
  WitnessTable = swift_getWitnessTable();
  sub_1BE050F54();
  (*(v28 + 8))(v10, v7);
  sub_1BE050204();
  type metadata accessor for RecurringPaymentContent();
  v37 = WitnessTable;
  v38 = MEMORY[0x1E697EBF8];
  v23 = swift_getWitnessTable();
  sub_1BE051014();
  (*(v29 + 8))(v14, v11);
  v35 = v23;
  v36 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1BD147308(v18);
  v24 = *(v30 + 8);
  v24(v18, v15);
  sub_1BD147308(v22);
  return (v24)(v22, v15);
}

uint64_t sub_1BD236FF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecurringPaymentContent();
  sub_1BD147308(a1 + *(v7 + 36));
  sub_1BD147308(v6);
  return (*(v4 + 8))(v6, a2);
}

uint64_t sub_1BD2370E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[1] = a3;
  v42[0] = a2;
  v42[2] = a1;
  v44 = a4;
  v43 = sub_1BE04FF64();
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E8F8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E900);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E908);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v42 - v24;
  *v11 = sub_1BE04F7C4();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E910);
  sub_1BD23755C(&v11[*(v26 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v11, v16, &qword_1EBD3E8F0);
  v27 = &v16[*(v13 + 44)];
  v28 = v52;
  *(v27 + 4) = v51;
  *(v27 + 5) = v28;
  *(v27 + 6) = v53;
  v29 = v48;
  *v27 = v47;
  *(v27 + 1) = v29;
  v30 = v50;
  *(v27 + 2) = v49;
  *(v27 + 3) = v30;
  type metadata accessor for RecurringPaymentContent();
  LOBYTE(v11) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DE204(v16, v20, &qword_1EBD3E8F8);
  v39 = &v20[*(v17 + 36)];
  *v39 = v11;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_1BE04FF44();
  v40 = sub_1BD238ED0();
  sub_1BE050D14();
  (*(v4 + 8))(v7, v43);
  sub_1BD0DE53C(v20, &qword_1EBD3E900);
  sub_1BE052434();
  v45 = v17;
  v46 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();

  return (*(v22 + 8))(v25, v21);
}

id sub_1BD23755C@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E930);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v83 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v81 = &v76 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v86 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v87 = &v76 - v21;
  v22 = *(v8 + 104);
  v85 = *MEMORY[0x1E69B8068];
  v84 = v22;
  v22(v14, v20);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v28 = *(v8 + 8);
    v78 = v8 + 8;
    v77 = v28;
    v28(v14, v7);
    v88 = v25;
    v89 = v27;
    v76 = sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v31 = v30;
    LOBYTE(v25) = v32;
    sub_1BE050324();
    v79 = v7;
    v33 = sub_1BE0505F4();
    v35 = v34;
    v37 = v36;

    sub_1BD0DDF10(v29, v31, v25 & 1);

    sub_1BE051224();
    v38 = sub_1BE050564();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_1BD0DDF10(v33, v35, v37 & 1);

    KeyPath = swift_getKeyPath();
    v88 = v38;
    v89 = v40;
    v42 &= 1u;
    v90 = v42;
    v91 = v44;
    v92 = KeyPath;
    v93 = 1;
    v94 = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    sub_1BE050DE4();

    v46 = v40;
    v47 = v79;
    sub_1BD0DDF10(v38, v46, v42);

    v48 = v86;
    v84(v86, v85, v47);
    result = PKPassKitBundle();
    if (result)
    {
      v49 = result;
      v50 = sub_1BE04B6F4();
      v52 = v51;

      v77(v48, v47);
      v88 = v50;
      v89 = v52;
      v53 = sub_1BE0506C4();
      v55 = v54;
      LOBYTE(v52) = v56;
      sub_1BE050324();
      v57 = sub_1BE0505F4();
      v59 = v58;
      v61 = v60;

      sub_1BD0DDF10(v53, v55, v52 & 1);

      sub_1BE051234();
      v62 = sub_1BE050564();
      v64 = v63;
      v66 = v65;
      v68 = v67;

      sub_1BD0DDF10(v57, v59, v61 & 1);

      v69 = swift_getKeyPath();
      v88 = v62;
      v89 = v64;
      v66 &= 1u;
      v90 = v66;
      v91 = v68;
      v92 = v69;
      LOBYTE(v93) = 0;
      sub_1BE052434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391C0);
      sub_1BD0FF49C();
      v70 = v81;
      sub_1BE050DE4();

      sub_1BD0DDF10(v62, v64, v66);

      v71 = v87;
      v72 = v80;
      sub_1BD0DE19C(v87, v80, &qword_1EBD3C0E8);
      v73 = v83;
      sub_1BD0DE19C(v70, v83, &qword_1EBD3E930);
      v74 = v82;
      sub_1BD0DE19C(v72, v82, &qword_1EBD3C0E8);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E938);
      sub_1BD0DE19C(v73, v74 + *(v75 + 48), &qword_1EBD3E930);
      sub_1BD0DE53C(v70, &qword_1EBD3E930);
      sub_1BD0DE53C(v71, &qword_1EBD3C0E8);
      sub_1BD0DE53C(v73, &qword_1EBD3E930);
      return sub_1BD0DE53C(v72, &qword_1EBD3C0E8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD237C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1BD23835C(a1, a8);
  v15 = type metadata accessor for RecurringPaymentContent();
  (*(*(a7 - 8) + 32))(a8 + v15[9], a2, a7);
  v16 = (a8 + v15[10]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a8 + v15[11]);
  *v17 = a5;
  v17[1] = a6;
  *(a8 + v15[12]) = 0x4041800000000000;
  *(a8 + v15[13]) = 0x4041800000000000;
  *(a8 + v15[14]) = 0x4030000000000000;
  *(a8 + v15[15]) = 0x4030000000000000;
  v18 = a8 + v15[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a8 + v15[17];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  return result;
}

uint64_t sub_1BD237D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(v7 + 44));
  v9 = *v8;
  v10 = v8[1];
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  (*(v4 + 16))(v6);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 24);
  *(v12 + 16) = *(a1 + 16);
  *(v12 + 24) = v13;
  (*(v4 + 32))(v12 + v11, v6, a1);
  type metadata accessor for RecurringPaymentContent();
  sub_1BE048964();
  swift_getWitnessTable();
  sub_1BD5CFAF0(0, 0, v9, v10, v30, sub_1BD2382A8, v12, &v34);
  v14 = type metadata accessor for DetailNavigationView();
  swift_getWitnessTable();
  sub_1BD147308(&v34);
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v33 = v39;
  v32[0] = v34;
  v32[1] = v35;
  v15 = *(*(v14 - 8) + 8);
  v15(v32, v14);
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  sub_1BD147308(&v18);
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v34 = v18;
  v35 = v19;
  return v15(&v34, v14);
}

uint64_t sub_1BD237FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[1] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8MerchantVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a4;
  v15 = type metadata accessor for RecurringPaymentContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v27 - v22;
  sub_1BD238C80(a2, v14, _s8MerchantVMa);
  v24 = type metadata accessor for RecurringPaymentSheet();
  (*(v8 + 16))(v10, a2 + v24[9], a3);
  sub_1BD237C08(v14, v10, *(a2 + v24[10]), *(a2 + v24[10] + 8), *(a2 + v24[11]), *(a2 + v24[11] + 8), a3, v19);
  swift_getWitnessTable();
  sub_1BD147308(v19);
  v25 = *(v16 + 8);
  sub_1BE048C84();
  sub_1BE048964();
  v25(v19, v15);
  sub_1BD147308(v23);
  return (v25)(v23, v15);
}

uint64_t sub_1BD2382A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for RecurringPaymentSheet() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1BD237FF0(a1, v8, v5, v6, a2);
}

uint64_t sub_1BD23835C(uint64_t a1, uint64_t a2)
{
  v4 = _s8MerchantVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD2383C0()
{
  _s8MerchantVMa(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD2384EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  v11 = v7 + v9 > 0x30;
  v12 = 48;
  v13 = *(*(a3 + 16) - 8);
  if (v11)
  {
    v12 = v10;
  }

  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 64);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v12 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v15 + 1;
  if (v17 >= a2)
  {
    goto LABEL_32;
  }

  v19 = ((((((((((((((v16 + (v18 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = *&a1[v19];
      if (!v23)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v25 = (v23 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v26 = *a1;
    }

    else
    {
      v25 = 0;
      v26 = *a1;
    }

    return v17 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_28;
    }
  }

LABEL_32:
  if ((v14 & 0x80000000) != 0)
  {
    v28 = *(*(*(a3 + 16) - 8) + 48);

    return v28(&a1[v18] & ~v15);
  }

  else
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_1BD238744(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BE04AA64() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = (v9 + v10) & ~v10;
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v12 = v9 + v11;
  if (v12 <= 0x30)
  {
    v13 = 48;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 64);
  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v13 + ((v10 & 0xF8 ^ 0x1F8u) & (v10 + 16)) + 1;
  v20 = ((((((((((((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 >= a3)
  {
    v23 = 0;
    if (v18 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v18 >= a2)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v15 & 0x80000000) != 0)
      {
        v26 = *(v14 + 56);

        v26((a1 + v19 + v16) & ~v16, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        if (v19 <= 3)
        {
          v27 = ~(-1 << (8 * v19));
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

        if (v19)
        {
          v28 = v27 & a2;
          if (v19 <= 3)
          {
            v29 = v19;
          }

          else
          {
            v29 = 4;
          }

          bzero(a1, v19);
          if (v29 > 2)
          {
            if (v29 == 3)
            {
              *a1 = v28;
              *(a1 + 2) = BYTE2(v28);
            }

            else
            {
              *a1 = v28;
            }
          }

          else if (v29 == 1)
          {
            *a1 = v28;
          }

          else
          {
            *a1 = v28;
          }
        }
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return;
    }
  }

  v24 = ~v18 + a2;
  bzero(a1, ((((((((((((((v17 + ((v19 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_32:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}