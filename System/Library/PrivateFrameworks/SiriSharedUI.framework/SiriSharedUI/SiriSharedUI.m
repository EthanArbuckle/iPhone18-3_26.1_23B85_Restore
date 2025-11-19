uint64_t sub_21E3EE024()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDE8();

  if (v2)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_shouldDelayDismissal);
  }
}

uint64_t sub_21E3EE148(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E3EE168(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21E3EE194(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E3EE1B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21E3EE1DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E3EE280()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3EE2B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3EE2F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21E3EE3AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3EE48C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E3EE534(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21E420B28(v1, v2);
}

uint64_t sub_21E3EE574(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21E3EE630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3EE6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4DE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E38);
  sub_21E4299EC();
  sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30);
  sub_21E429BEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E3EE7C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E4DC198();
  *a1 = result;
  return result;
}

uint64_t sub_21E3EE848@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E4DC1B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E3EE8AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E4DC138();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3EE92C()
{
  v1 = sub_21E4DC448();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E3EE9F4()
{
  sub_21E4DC418();
  sub_21E429560(&qword_27CEC50A0, MEMORY[0x277CDE278]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_So7CGPointVIegy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E3EEAB8()
{

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_21E3EEB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E4DC118();
  *a1 = result;
  return result;
}

uint64_t sub_21E3EEB8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E4DC178();
  *a1 = result;
  return result;
}

uint64_t sub_21E3EEC40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3EED70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3EEDE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E3EEF5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_21E3EEFCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isProvidingFeedback];
  *a2 = result;
  return result;
}

uint64_t sub_21E3EF014(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E4DB588();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21E3EF080(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E4DB588();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21E3EF0F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21E4DCDA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5410);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[15];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5418);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21E3EF280(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21E4DCDA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5410);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[15];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5418);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21E3EF414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E4DC058();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3EF46C@<X0>(void *a1@<X8>)
{
  result = sub_21E4DC078();
  *a1 = v3;
  return result;
}

id sub_21E3EF4C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aceObject];
  *a2 = result;
  return result;
}

uint64_t sub_21E3EF518@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E4DC098();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E3EF598@<X0>(void *a1@<X8>)
{
  result = sub_21E4DBF58();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E3EF5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21E4DB698();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21E3EF670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_21E4DB698();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E3EF790()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3EF810()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E3EF9B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3EFA48()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3EFA88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5BE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5BE0);
  sub_21E42D5A8(&qword_280C14360, &qword_27CEC5BE8);
  sub_21E42D5A8(&qword_27CEC5BF0, &qword_27CEC5BE0);
  return swift_getOpaqueTypeConformance2();
}

id sub_21E3EFB78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speech];
  *a2 = result;
  return result;
}

void sub_21E3EFBCC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_21E4DD078();
  [v2 setAsrAlternatives_];
}

id sub_21E3EFC70@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShow];
  *a2 = result;
  return result;
}

uint64_t sub_21E3EFDA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_21E3EFDFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3EFE34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3EFE98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3EFEE4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21E3EFF40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E46480C(v1);
}

uint64_t sub_21E3EFF70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E3F0018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_21E3F0058@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 previousConversation];
  *a2 = result;
  return result;
}

id sub_21E3F00A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 viewModelChangeObserver];
  *a2 = result;
  return result;
}

uint64_t sub_21E3F00F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E4DB698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E3F01B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E4DB698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E3F02C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E4DB698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E3F0380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E4DB698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E3F043C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21E3F0478(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_21E4DCF68();
  [v2 setSceneIdentifier_];
}

id sub_21E3F04DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_21E3F0530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E3F05A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E3F0654()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F068C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F06C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F0708()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F0768@<X0>(void *a1@<X8>)
{
  result = sub_21E4DC0D8();
  *a1 = v3;
  return result;
}

uint64_t sub_21E3F0924()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F095C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F09D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21E3F0B84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F0BBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F0BF4()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F0C48()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21E3F0E24()
{
  v1 = sub_21E4DB588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E3F0EE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F0F20()
{

  MEMORY[0x223D5BFD0](v0 + 32);

  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 56), v1);
  }

  v2 = *(v0 + 128);
  if (v2 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 120), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_21E3F0FC8()
{
  v1 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  MEMORY[0x223D5BFD0](v0 + 32);

  v4 = *(v0 + 64);
  if (v4 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 56), v4);
  }

  v5 = *(v0 + 128);
  if (v5 >> 60 != 15)
  {
    sub_21E424920(*(v0 + 120), v5);
  }

  v6 = (v2 + 144) & ~v2;

  v7 = sub_21E4DB698();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v6 + v3, v2 | 7);
}

uint64_t sub_21E3F1168()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F11A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F11E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F1220()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F12E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F1328()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F1360()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F13B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F1428()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21E3F1470()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3F14A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3F14F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3F1540()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3F1588()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F15C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F15F8()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21E3F1630@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textFieldHeight];
  *a2 = v4;
  return result;
}

id sub_21E3F1678@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userUtteranceViewHeight];
  *a2 = v4;
  return result;
}

id sub_21E3F16C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExternalKeyboardPresented];
  *a2 = result;
  return result;
}

id sub_21E3F1708@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldPreserveResultSpace];
  *a2 = result;
  return result;
}

id sub_21E3F1750@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_21E3F17A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inputType];
  *a2 = result;
  return result;
}

id sub_21E3F17E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsSensitiveUI];
  *a2 = result;
  return result;
}

id sub_21E3F1830@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bottomContentInset];
  *a2 = v4;
  return result;
}

id sub_21E3F1878@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFirstSnippet];
  *a2 = result;
  return result;
}

id sub_21E3F18C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isInVoiceLatency];
  *a2 = result;
  return result;
}

id sub_21E3F1908@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 resultEligibleForLightEffects];
  *a2 = result;
  return result;
}

uint64_t sub_21E3F1950()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F1998()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21E3F19F8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E3F1A3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F1AC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E3F1AFC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21E3F1B34()
{
  MEMORY[0x223D5BFD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_21E3F1B6C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_21E3F1BC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_backgroundInset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21E3F1C30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E3F1C88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_containerViewPosition;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_21E3F1D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUIDropletContainerView_hostingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21E3F1DA8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E3F1DE0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E3F1E20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E3F1E78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E3F1EB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__CFString *SiriSharedUIViewModelInputTypeGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"SiriSharedUIViewModelInputTypeNone";
  }

  else
  {
    return off_278354690[a1 - 1];
  }
}

void sub_21E3F50C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ViewStateGetDescription(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%d)", a1];
  }

  else
  {
    v2 = off_2783546F8[a1];
  }

  return v2;
}

void sub_21E3F8208(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E3F837C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SiriSharedUILanguageIsRTL()
{
  v0 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v0 assistantLanguageForceRTL])
  {
    v1 = 1;
  }

  else
  {
    v2 = MEMORY[0x277CBEAF8];
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 languageCode];
    v1 = [v2 characterDirectionForLanguage:v4] == 2;
  }

  return v1;
}

BOOL SiriSharedUIDeviceIsPhone()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

BOOL SiriSharedUIDeviceIsPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

uint64_t SiriSharedUICurrentDeviceType()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1;
}

BOOL SiriSharedUIDeviceIsLargeFormatPad()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  if (CGRectGetWidth(v10) < 1024.0)
  {
    return 0;
  }

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  return CGRectGetHeight(v11) >= 1366.0;
}

uint64_t SiriSharedUIDeviceHasSideButton()
{
  if (SiriSharedUIDeviceHasSideButton_onceToken != -1)
  {
    SiriSharedUIDeviceHasSideButton_cold_1();
  }

  return SiriSharedUIDeviceHasSideButton_hasSideButton;
}

uint64_t __SiriSharedUIDeviceHasSideButton_block_invoke()
{
  result = MGGetSInt32Answer();
  SiriSharedUIDeviceHasSideButton_hasSideButton = result == 2;
  return result;
}

BOOL SiriSharedUICompactSlideOverContentSpacingOnPad(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (SiriSharedUIDeviceHasSideButton_onceToken != -1)
  {
    SiriSharedUIDeviceHasSideButton_cold_1();
  }

  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ((a1 - 1) > 1)
  {
    CGRectGetWidth(*&v10);
  }

  else
  {
    CGRectGetHeight(*&v10);
  }

  return SiriSharedUIDeviceIsLargeFormatPad();
}

uint64_t SiriSharedUILanguageSemanticContentAttribute()
{
  if (SiriSharedUILanguageIsRTL())
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void SiriSharedUIRecursiveSetSemanticContentAttribute(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          SiriSharedUIRecursiveSetSemanticContentAttribute(v9, a2);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [v3 semanticContentAttribute] != a2)
  {
    [v3 setSemanticContentAttribute:a2];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = v3;
    if ([v10 textAlignment] == 4)
    {
      [v10 setTextAlignment:{2 * (objc_msgSend(v10, "semanticContentAttribute") != 3)}];
    }
  }
}

BOOL SiriSharedUIUserInterfaceStyleDarkForView(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  return v2;
}

void sub_21E3FA340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_21E4022D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SiriSharedUIPlatterKeyLineColor()
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.18];

  return v1;
}

double SiriSharedUIIntervalInterpolatorUIRubberBanding_block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = vabdd_f64(*a3, v5);
  v7 = -1;
  if (*a3 >= v5)
  {
    v7 = 1;
  }

  if (v6 < 2.22044605e-16)
  {
    v7 = 0;
  }

  if (v7 == -1)
  {
    v10 = *(a3 + 8);
    v8 = *a3;
    v11 = *(a3 + 24);
    v9 = *(a3 + 16);
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 16);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 24);
    v8 = *(a3 + 16);
    v11 = *(a3 + 8);
    v9 = *a3;
  }

  if ((v10 & 1) == 0)
  {
    v8 = v8 + 2.22044605e-16;
  }

  if ((v11 & 1) == 0)
  {
    v9 = v9 + -2.22044605e-16;
  }

LABEL_13:
  if (fabs(v9) < 2.22044605e-16)
  {
    return 0.0;
  }

  v13 = a1 - v8;
  if (v7 == -1)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    v3 = *(a3 + 16);
    v4 = *(a3 + 24);
LABEL_18:
    if ((v4 & 1) == 0)
    {
      v3 = v3 + 2.22044605e-16;
    }
  }

  return v3 + (1.0 - 1.0 / (v13 * 0.55 / v9 + 1.0)) * v9;
}

double SiriSharedUIConstrainValueWithRubberBand(uint64_t a1, double a2, double a3)
{
  memset(v6, 0, sizeof(v6));
  memset(v9, 0, sizeof(v9));
  v4 = 0;
  v5 = 1;
  v7 = a3;
  v8 = 1;
  return SiriSharedUIIntervalInterpolatorUIRubberBanding_block_invoke(a2, a1, &v4);
}

double SiriSharedUIProjectedTranslationWithVelocity(double a1, double a2)
{
  v2 = a1;
  if (a1 <= 0.0)
  {
    v3 = -((v2 * v2) / (*MEMORY[0x277D76EC0] * 10000.0 + *MEMORY[0x277D76EC0] * 10000.0));
  }

  else
  {
    v3 = (v2 * v2) / (*MEMORY[0x277D76EC0] * 10000.0 + *MEMORY[0x277D76EC0] * 10000.0);
  }

  return v3 / a2;
}

__CFString *SiriSharedUIPopAnimationTypeDescription(uint64_t a1)
{
  if (a1)
  {
    return @"SiriSharedUIPopAnimationTypeCollapse";
  }

  else
  {
    return @"SiriSharedUIPopAnimationTypeDefault";
  }
}

void sub_21E40957C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_21E409B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_21E40C3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E40C8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E411DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E4137DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E4173D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21E418A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E418F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E41B7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E41BA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id soft_SBUIGetUserAgent()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSBUIGetUserAgentSymbolLoc_ptr;
  v8 = getSBUIGetUserAgentSymbolLoc_ptr;
  if (!getSBUIGetUserAgentSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getSBUIGetUserAgentSymbolLoc_block_invoke;
    v4[3] = &unk_278354C88;
    v4[4] = &v5;
    __getSBUIGetUserAgentSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = soft_SBUIGetUserAgent_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = v0();

  return v1;
}

void *__getSBUIGetUserAgentSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278354CA8;
    v7 = 0;
    SpringBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardUILibraryCore_frameworkLibrary;
    if (SpringBoardUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUIGetUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIGetUserAgentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

__CFString *SiriSharedUIGestureEventDescription(uint64_t a1)
{
  if (a1)
  {
    return @"'tap'";
  }

  else
  {
    return @"'pan began'";
  }
}

__CFString *SiriSharedUIGestureEventRegionDescription(uint64_t a1)
{
  if (a1)
  {
    return @"'outside of Siri'";
  }

  else
  {
    return @"'within Siri'";
  }
}

uint64_t sub_21E41F5F0(double a1)
{
  *(v2 + 160) = v1;
  *(v2 + 152) = a1;
  return MEMORY[0x2822009F8](sub_21E41F614, 0, 0);
}

uint64_t sub_21E41F614()
{
  v1 = v0[19];
  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v3 = sub_21E4DCF68();
  v4 = [v2 initWithType_];
  *(v0 + 21) = v4;

  v5 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:20.0 scale:{20.0, v1}];
  *(v0 + 22) = v5;
  [v5 setGraphicVariant_];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_21E41F7C8;
  v6 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4950);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_21E41F990;
  *(v0 + 13) = &block_descriptor;
  *(v0 + 14) = v6;
  [v4 getImageForImageDescriptor:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21E41F7C8()
{

  return MEMORY[0x2822009F8](sub_21E41F8A8, 0, 0);
}

uint64_t sub_21E41F8A8()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) CGImage];
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    if (v2)
    {
      v5 = v2;
      v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      v7 = v6;
      goto LABEL_7;
    }
  }

  else
  {
    v1 = *(v0 + 168);
  }

  v7 = 0;
LABEL_7:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_21E41F990(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21E41F9F4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E41FA50(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21E41FAE8;

  return sub_21E41F5F0(a1);
}

uint64_t sub_21E41FAE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21E41FBE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4960);
  MEMORY[0x28223BE20]();
  v5 = v12 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_sashItem);
  if (([v6 isPlaceHolderImage] & 1) != 0 || (v7 = objc_msgSend(v6, sel_image)) == 0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, a1, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v11 = OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_imageContinuation;
    swift_beginAccess();
    sub_21E424C68(v5, a2 + v11, &qword_27CEC4960);
    return swift_endAccess();
  }

  else
  {
    v12[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
    return sub_21E4DD108();
  }
}

id sub_21E41FDD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E41FE94()
{
  sub_21E41FF30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E41FF30()
{
  if (!qword_27CEC4820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC4828);
    v0 = sub_21E4DD318();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEC4820);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21E420000()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4958);
  *v3 = v0;
  v3[1] = sub_21E420108;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000019, 0x800000021E4EB3D0, sub_21E42402C, v2, v4);
}

uint64_t sub_21E420108()
{

  return MEMORY[0x2822009F8](sub_21E425058, 0, 0);
}

uint64_t sub_21E420220(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4960);
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12SiriSharedUI19SiriDataImageLoader_imageContinuation;
  swift_beginAccess();
  sub_21E424C68(v7, a2 + v10, &qword_27CEC4960);
  swift_endAccess();
  v11 = sub_21E4DD158();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  sub_21E46011C(0, 0, v5, &unk_21E4E5250, v12);
}

uint64_t sub_21E420450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E42051C, 0, 0);
}

uint64_t sub_21E42051C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v5 = sub_21E4DB5A8();
  v6 = [v4 initWithData_];

  v7 = OBJC_IVAR____TtC12SiriSharedUI19SiriDataImageLoader_imageContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v7, 1, v1))
  {
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    (*(v9 + 16))(v8, v3 + v7, v10);
    v0[5] = v6;
    sub_21E4DD108();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_21E42066C()
{
  sub_21E424920(*(v0 + 16), *(v0 + 24));
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI19SiriDataImageLoader_imageContinuation, &qword_27CEC4960);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21E420710()
{
  sub_21E41FF30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21E4207D0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4958);
  *v1 = v0;
  v1[1] = sub_21E4208B8;
  v3 = *(v0 + 24);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000019, 0x800000021E4EB3D0, sub_21E424034, v3, v2);
}

uint64_t sub_21E4208B8()
{

  return MEMORY[0x2822009F8](sub_21E4209B4, 0, 0);
}

uint64_t sub_21E4209CC()
{
  v1 = *v0;
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v1);
  return sub_21E4DD608();
}

uint64_t sub_21E420A40()
{
  v1 = *v0;
  sub_21E4DD5C8();
  MEMORY[0x223D5B280](v1);
  return sub_21E4DD608();
}

uint64_t *sub_21E420A84@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21E420AA8()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21E420B28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_21E4DD518() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }
}

uint64_t sub_21E420C58@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  *a1 = *(v1 + 32);
  return result;
}

unsigned __int8 *sub_21E420CD0(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  if (v3 == 3)
  {
    if (v2 != 3)
    {
LABEL_3:
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      sub_21E4242E0();
      sub_21E4DB708();
    }
  }

  else if (v3 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_21E420DC8()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + 33);
}

uint64_t sub_21E420E40()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  v1 = *(v0 + 40);
  sub_21E3F1E78(v1);
  return v1;
}

uint64_t sub_21E420EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_21E3F1E78(a2);
  return sub_21E3F1EB0(v3);
}

uint64_t sub_21E420F10()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + 56);
}

uint64_t sub_21E420F80(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E421060()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + 57);
}

uint64_t sub_21E4210D0(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E4211B0()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + 58);
}

uint64_t sub_21E421220(uint64_t result)
{
  if (*(v1 + 58) == (result & 1))
  {
    *(v1 + 58) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E421308()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + 59);
}

uint64_t sub_21E421378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_21E421418(uint64_t result)
{
  if (*(v1 + 59) == (result & 1))
  {
    *(v1 + 59) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E42151C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
  swift_beginAccess();
  sub_21E424848(v1 + v9, v8, &qword_27CEC4A40);
  v10 = sub_21E48B4C8(v8, a1);
  sub_21E424BC0(v8, &qword_27CEC4A40);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = a1;
    v16 = v1;
    sub_21E4242E0();
    sub_21E4DB708();
  }

  else
  {
    sub_21E424848(a1, v8, &qword_27CEC4A40);
    v12 = type metadata accessor for RealizedImage(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = v5;
    v16 = v1;
    sub_21E4242E0();
    sub_21E4DB708();

    sub_21E424BC0(v5, &qword_27CEC4A38);
    swift_beginAccess();
    sub_21E424C68(v8, v1 + v9, &qword_27CEC4A40);
    swift_endAccess();
  }

  return sub_21E424BC0(a1, &qword_27CEC4A40);
}

uint64_t sub_21E421844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-v8];
  sub_21E424848(a2, &v13[-v8], &qword_27CEC4A40);
  v10 = type metadata accessor for RealizedImage(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_getKeyPath();
  v14 = a1;
  v15 = v6;
  v16 = a1;
  sub_21E4242E0();
  sub_21E4DB708();

  sub_21E424BC0(v6, &qword_27CEC4A38);
  v11 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
  swift_beginAccess();
  sub_21E424C68(v9, a1 + v11, &qword_27CEC4A40);
  return swift_endAccess();
}

void sub_21E421A48()
{
  v1 = v0;
  sub_21E4DD3A8();

  v19 = 0xD000000000000016;
  v20 = 0x800000021E4EB550;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A58);
  v2 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v2);

  MEMORY[0x223D5ACB0](2108704, 0xE300000000000000);
  swift_getKeyPath();
  v17 = v0;
  sub_21E4242E0();
  sub_21E4DB718();

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  MEMORY[0x223D5ACB0](v3, v4);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD208();
  v19 = 0xD000000000000014;
  v20 = 0x800000021E4EB530;
  v7 = sub_21E45C20C(0);
  if (v8)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = (0x800000021E4EB550 >> 56) & 0xF;
  if ((0x800000021E4EB550 & 0x2000000000000000) == 0)
  {
    v9 = 22;
  }

  if (v9)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000016, 0x800000021E4EB550);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = v19;
  v10 = v20;
  v12 = sub_21E4DBCB8();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_21E426648(v11, v10, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223D5BF10](v14, -1, -1);
    MEMORY[0x223D5BF10](v13, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19 = v1;
    sub_21E4DB708();
  }
}

char *sub_21E421DE8@<X0>(const char **a1@<X0>, int *a2@<X1>, char **a3@<X8>)
{
  result = index(*a1, *a2);
  *a3 = result;
  return result;
}

void sub_21E421E18()
{
  v1 = v0;
  sub_21E4DD3A8();

  v19 = 0xD00000000000001DLL;
  v20 = 0x800000021E4EB510;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A58);
  v2 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v2);

  MEMORY[0x223D5ACB0](2108704, 0xE300000000000000);
  swift_getKeyPath();
  v17 = v0;
  sub_21E4242E0();
  sub_21E4DB718();

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  MEMORY[0x223D5ACB0](v3, v4);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD208();
  v19 = 0xD000000000000013;
  v20 = 0x800000021E4EB4F0;
  v7 = sub_21E45C20C(0);
  if (v8)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = (0x800000021E4EB510 >> 56) & 0xF;
  if ((0x800000021E4EB510 & 0x2000000000000000) == 0)
  {
    v9 = 29;
  }

  if (v9)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001DLL, 0x800000021E4EB510);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = v19;
  v10 = v20;
  v12 = sub_21E4DBCB8();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_21E426648(v11, v10, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223D5BF10](v14, -1, -1);
    MEMORY[0x223D5BF10](v13, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 57) == 1)
  {
    *(v1 + 57) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19 = v1;
    sub_21E4DB708();
  }
}

uint64_t sub_21E4221B8()
{
  swift_getKeyPath();
  v18 = v0;
  sub_21E4242E0();
  sub_21E4DB718();

  if (*(v0 + 32) != 2)
  {
    return 0;
  }

  swift_getKeyPath();
  v18 = v0;
  sub_21E4DB718();

  if (*(v0 + 58))
  {
    return 0;
  }

  sub_21E4DD3A8();

  v18 = 0xD000000000000027;
  v19 = 0x800000021E4EB480;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A58);
  v2 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v2);

  MEMORY[0x223D5ACB0](2108704, 0xE300000000000000);
  swift_getKeyPath();
  v16 = v0;
  sub_21E4DB718();

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x223D5ACB0](v4, v3);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD208();
  v18 = 0xD000000000000031;
  v19 = 0x800000021E4EB440;
  v7 = sub_21E45C20C(0);
  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = (0x800000021E4EB480 >> 56) & 0xF;
  if ((0x800000021E4EB480 & 0x2000000000000000) == 0)
  {
    v9 = 39;
  }

  if (v9)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000027, 0x800000021E4EB480);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = v18;
  v10 = v19;
  v12 = sub_21E4DBCB8();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    v15 = sub_21E426648(v11, v10, &v16);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223D5BF10](v14, -1, -1);
    MEMORY[0x223D5BF10](v13, -1, -1);
  }

  else
  {
  }

  return 1;
}

void sub_21E42253C(char a1)
{
  v2 = v1;
  sub_21E4DD3A8();

  v25 = 0xD000000000000014;
  v26 = 0x800000021E4EB4B0;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v4, v5);

  MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A58);
  v6 = sub_21E4DCFA8();
  MEMORY[0x223D5ACB0](v6);

  MEMORY[0x223D5ACB0](2108704, 0xE300000000000000);
  swift_getKeyPath();
  v23 = v1;
  sub_21E4242E0();
  sub_21E4DB718();

  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  MEMORY[0x223D5ACB0](v7, v8);

  v10 = v25;
  v9 = v26;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v11 = sub_21E4DBCC8();
  __swift_project_value_buffer(v11, qword_280C14558);
  v12 = sub_21E4DD208();
  v25 = 0xD000000000000018;
  v26 = 0x800000021E4EB4D0;
  v13 = sub_21E45C20C(0);
  if (v14)
  {
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v13);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v15 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v10, v9);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v17 = v25;
  v16 = v26;
  v18 = sub_21E4DBCB8();
  if (os_log_type_enabled(v18, v12))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    v21 = sub_21E426648(v17, v16, &v23);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_21E3EB000, v18, v12, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x223D5BF10](v20, -1, -1);
    MEMORY[0x223D5BF10](v19, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 59) == (a1 & 1))
  {
    *(v2 + 59) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v25 = v2;
    sub_21E4DB708();
  }
}

uint64_t sub_21E42292C(double a1)
{
  v2 = v1;
  v58 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v57 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel___observationRegistrar;
  v62 = v2;
  sub_21E4242E0();
  v59 = v16;
  sub_21E4DB718();

  v17 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
  swift_beginAccess();
  sub_21E424848(v2 + v17, v15, &qword_27CEC4A40);
  v18 = sub_21E4DBBB8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) != 1)
  {
    sub_21E424848(v15, v13, &qword_27CEC4A40);
    v20 = (*(v19 + 88))(v13, v18);
    if (v20 == *MEMORY[0x277D61228])
    {
      (*(v19 + 96))(v13, v18);
      v21 = *v13;
      v22 = v13[1];
      type metadata accessor for SiriDataImageLoader(0);
      v23 = swift_allocObject();
      v24 = OBJC_IVAR____TtC12SiriSharedUI19SiriDataImageLoader_imageContinuation;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
      (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      sub_21E4248CC(v21, v22);
      sub_21E424354(v23, v2, a1);
      sub_21E424920(v21, v22);

      return sub_21E424BC0(v15, &qword_27CEC4A40);
    }

    if (v20 == *MEMORY[0x277D61230])
    {
      (*(v19 + 96))(v13, v18);
      v26 = *v13;
      v27 = v13[1];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A48);
      sub_21E4247D8(v13 + *(v28 + 48), v6);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A50) + 48);
      *v9 = v26;
      v9[1] = v27;
      sub_21E424848(v6, v9 + v29, &unk_27CEC4930);
      v30 = type metadata accessor for RealizedImage(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v57 - 2) = v2;
      *(&v57 - 1) = v9;
      v61 = v2;
      sub_21E4DB708();

      sub_21E424BC0(v6, &unk_27CEC4930);
LABEL_6:
      sub_21E424BC0(v9, &qword_27CEC4A38);
      return sub_21E424BC0(v15, &qword_27CEC4A40);
    }

    if (v20 == *MEMORY[0x277D61238])
    {
      (*(v19 + 96))(v13, v18);
      if (*v13 == 0x6C7070612E6D6F63 && v13[1] == 0xEE00697269732E65 || (sub_21E4DD518() & 1) != 0)
      {
      }

      else
      {
        v43 = objc_allocWithZone(SiriSharedUISashItem);
        v44 = sub_21E4DCF68();

        v39 = [v43 initWithApplicationBundleIdentifier_];

        if (v39)
        {
LABEL_19:
          v45 = type metadata accessor for SiriSashImageLoader(0);
          v46 = objc_allocWithZone(v45);
          v47 = OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_imageContinuation;
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4828);
          (*(*(v48 - 8) + 56))(&v46[v47], 1, 1, v48);
          *&v46[OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_sashItem] = v39;
          v60.receiver = v46;
          v60.super_class = v45;
          v49 = v39;
          v50 = objc_msgSendSuper2(&v60, sel_init);
          v51 = OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_sashItem;
          [*&v50[OBJC_IVAR____TtC12SiriSharedUI19SiriSashImageLoader_sashItem] setDelegate_];
          if (([*&v50[v51] isPlaceHolderImage] & 1) != 0 || (v52 = objc_msgSend(*&v50[v51], sel_image)) == 0)
          {
            sub_21E4244D8(v50, v2, a1);

            return sub_21E424BC0(v15, &qword_27CEC4A40);
          }

          *v9 = v52;
          v53 = v52;
          v54 = type metadata accessor for RealizedImage(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v54 - 8) + 56))(v9, 0, 1, v54);
          v55 = swift_getKeyPath();
          v58 = &v57;
          MEMORY[0x28223BE20](v55);
          *(&v57 - 2) = v2;
          *(&v57 - 1) = v9;
          v61 = v2;
          v56 = v53;
          sub_21E4DB708();

          goto LABEL_6;
        }
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass_];
      v35 = sub_21E4DCF68();
      v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

      v37 = objc_allocWithZone(SiriSharedUISashItem);
      v38 = sub_21E4DCF68();
      v39 = [v37 initWithTitle:v38 image:v36];

      if (!v39)
      {
        return sub_21E424BC0(v15, &qword_27CEC4A40);
      }

      goto LABEL_19;
    }

    if (v20 == *MEMORY[0x277D61220])
    {
      (*(v19 + 96))(v13, v18);
      v40 = *v13;
      v41 = v13[1];
      type metadata accessor for SiriGraphicImageLoader();
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      *(v42 + 24) = v41;
      sub_21E424658(v42, v2, a1);
    }

    else
    {
      (*(v19 + 8))(v13, v18);
    }
  }

  return sub_21E424BC0(v15, &qword_27CEC4A40);
}

uint64_t sub_21E42327C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_21E4242E0();
  sub_21E4DB718();

  v7 = *a1;
  swift_beginAccess();
  return sub_21E424848(v9 + v7, a3, a2);
}

uint64_t sub_21E42332C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__uiImage;
  swift_beginAccess();
  sub_21E424CD0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21E423398()
{
  swift_getKeyPath();
  sub_21E4242E0();
  sub_21E4DB718();

  return *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected);
}

uint64_t sub_21E423410(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21E4242E0();
    sub_21E4DB708();
  }

  return result;
}

uint64_t sub_21E423508(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  *(v6 + 32) = a1;
  *(v6 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  *(v6 + 48) = swift_task_alloc();
  sub_21E4DD128();
  *(v6 + 56) = sub_21E4DD118();
  v8 = sub_21E4DD0F8();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x2822009F8](sub_21E4235E0, v8, v7);
}

uint64_t sub_21E4235E0()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_21E423708;
  v5.n128_u64[0] = v0[4];

  return v7(v2, v3, v5);
}

uint64_t sub_21E423708(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_21E423830, v4, v3);
}

uint64_t sub_21E423830()
{
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    v4 = v0[5];
    v3 = v0[6];
    *v3 = v2;
    v5 = type metadata accessor for RealizedImage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v0[2] = v4;
    sub_21E4242E0();
    v7 = v2;
    sub_21E4DB708();

    sub_21E424BC0(v3, &qword_27CEC4A38);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_21E4239C8()
{

  sub_21E3F1EB0(v0[5]);
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image, &qword_27CEC4A40);
  sub_21E424BC0(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__uiImage, &qword_27CEC4A38);
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel___observationRegistrar;
  v2 = sub_21E4DB758();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_21E423ADC()
{
  sub_21E423C50(319, &unk_280C14540, MEMORY[0x277D61240]);
  if (v0 <= 0x3F)
  {
    sub_21E423C50(319, qword_280C15068, type metadata accessor for RealizedImage);
    if (v1 <= 0x3F)
    {
      sub_21E4DB758();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21E423C50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E4DD318();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21E423CC4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_21E423E00()
{
  sub_21E423E74();
  if (v0 <= 0x3F)
  {
    sub_21E423EC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_21E423E74()
{
  result = qword_280C14080;
  if (!qword_280C14080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C14080);
  }

  return result;
}

void sub_21E423EC0()
{
  if (!qword_280C14208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC4930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C14208);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21E423FB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E42403C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E4240F0;

  return sub_21E420450(a1, v4, v5, v6);
}

uint64_t sub_21E4240F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21E4241E4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 259;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v1 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
  v2 = sub_21E4DBBB8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__uiImage;
  v4 = type metadata accessor for RealizedImage(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) = 0;
  sub_21E4DB748();
  return v0;
}

unint64_t sub_21E4242E0()
{
  result = qword_27CEC4A30;
  if (!qword_27CEC4A30)
  {
    type metadata accessor for SiriSharedUISuggestionsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4A30);
  }

  return result;
}

uint64_t sub_21E424354(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v15[3] = type metadata accessor for SiriDataImageLoader(0);
  v15[4] = &off_282F80C38;
  v15[0] = a1;
  v9 = sub_21E4DD158();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21E424974(v15, v14);
  sub_21E4DD128();

  v10 = sub_21E4DD118();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_21E424A24(v14, v11 + 32);
  *(v11 + 72) = a3;
  *(v11 + 80) = a2;
  sub_21E46011C(0, 0, v8, &unk_21E4E52F8, v11);

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_21E4244D8(void *a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v16[3] = type metadata accessor for SiriSashImageLoader(0);
  v16[4] = &off_282F80C48;
  v16[0] = a1;
  v9 = sub_21E4DD158();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21E424974(v16, v15);
  sub_21E4DD128();
  v10 = a1;

  v11 = sub_21E4DD118();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_21E424A24(v15, v12 + 32);
  *(v12 + 72) = a3;
  *(v12 + 80) = a2;
  sub_21E46011C(0, 0, v8, &unk_21E4E5300, v12);

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_21E424658(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v15[3] = type metadata accessor for SiriGraphicImageLoader();
  v15[4] = &off_282F80C58;
  v15[0] = a1;
  v9 = sub_21E4DD158();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21E424974(v15, v14);
  sub_21E4DD128();

  v10 = sub_21E4DD118();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_21E424A24(v14, v11 + 32);
  *(v11 + 72) = a3;
  *(v11 + 80) = a2;
  sub_21E46011C(0, 0, v8, &unk_21E4E5308, v11);

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_21E4247D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC4930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E424848(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E4248CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21E424920(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21E424974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21E424A24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21E424A3C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[9];
  v7 = *(v1 + 10);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21E424FF4;

  return sub_21E423508(v6, a1, v4, v5, (v1 + 4), v7);
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t objectdestroy_128Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21E424BC0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E424C68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E424CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E424D40()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t getEnumTagSinglePayload for SiriSharedUISuggestion.SiriSharedUISuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSharedUISuggestion.SiriSharedUISuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E424F24()
{
  result = qword_27CEC4A68;
  if (!qword_27CEC4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4A68);
  }

  return result;
}

void sub_21E424F8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21E425078@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21E4250C0(uint64_t a1)
{
  v2 = sub_21E42524C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E4250FC(uint64_t a1)
{
  v2 = sub_21E42524C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualIntelligenceClientToHost.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4D80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21E42524C();
  sub_21E4DD618();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21E42524C()
{
  result = qword_27CEC4D88;
  if (!qword_27CEC4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4D88);
  }

  return result;
}

uint64_t sub_21E4252F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4D80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_21E42524C();
  sub_21E4DD618();
  return (*(v3 + 8))(v5, v2);
}

id static VisualIntelligenceActionClientToHost.requestAuthenticationAction(with:)(uint64_t a1)
{
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DBCC8();
  __swift_project_value_buffer(v2, qword_280C14558);
  v3 = sub_21E4DD1F8();
  v17 = 0xD000000000000022;
  v18 = 0x800000021E4EB6A0;
  v4 = sub_21E45C20C(0x100000000);
  if (v5)
  {
    v15 = 32;
    v16 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v4);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("ationAction(with:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v15 = 32;
    v16 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001DLL, 0x800000021E4EB6D0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = v17;
  v6 = v18;
  v8 = sub_21E4DBCB8();
  if (os_log_type_enabled(v8, v3))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_21E426648(v7, v6, &v15);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_21E3EB000, v8, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223D5BF10](v10, -1, -1);
    MEMORY[0x223D5BF10](v9, -1, -1);
  }

  else
  {
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  [v12 setFlag:1 forSetting:1];
  v13 = [objc_allocWithZone(type metadata accessor for VisualIntelligenceActionClientToHost()) initWithInfo:v12 responder:a1];

  return v13;
}

id VisualIntelligenceActionClientToHost.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

void sub_21E4256C8(void *a1)
{
  v2 = v1;
  sub_21E4DD3A8();

  v4 = [v1 debugDescription];
  v5 = sub_21E4DCF78();
  v7 = v6;

  MEMORY[0x223D5ACB0](v5, v7);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DBCC8();
  __swift_project_value_buffer(v8, qword_280C14558);
  v9 = sub_21E4DD1F8();
  v24 = 0xD000000000000022;
  v25 = 0x800000021E4EB6F0;
  v10 = sub_21E45C20C(0x100000000);
  if (v11)
  {
    v22 = 32;
    v23 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v10);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v12 = (0x800000021E4EB720 >> 56) & 0xF;
  if ((0x800000021E4EB720 & 0x2000000000000000) == 0)
  {
    v12 = 19;
  }

  if (v12)
  {
    v22 = 32;
    v23 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4EB720);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v14 = v24;
  v13 = v25;
  v15 = sub_21E4DBCB8();
  if (os_log_type_enabled(v15, v9))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = sub_21E426648(v14, v13, &v22);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_21E3EB000, v15, v9, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x223D5BF10](v17, -1, -1);
    MEMORY[0x223D5BF10](v16, -1, -1);
  }

  else
  {
  }

  v19 = [v2 info];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 flagForSetting_];

    if (v21 == 1)
    {

      sub_21E425A38(a1);
    }
  }
}

void sub_21E425A38(void *a1)
{
  if ([a1 delegate])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 && (v3 = [v2 delegate]) != 0)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v8[4] = sub_21E426DC8;
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_21E4A4148;
      v8[3] = &block_descriptor_14;
      v6 = _Block_copy(v8);
      v7 = v1;

      [v4 tamaleViewRequestsAuthenticationWithCompletion_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v6);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_21E425BA0(char a1, void *a2)
{
  sub_21E4DD3A8();

  v25 = 0x69746E6568747561;
  v26 = 0xEF203A6465746163;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223D5ACB0](v4, v5);

  v7 = v25;
  v6 = v26;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DBCC8();
  __swift_project_value_buffer(v8, qword_280C14558);
  v9 = sub_21E4DD1F8();
  v25 = 0xD000000000000021;
  v26 = 0x800000021E4EB7E0;
  v10 = sub_21E45C20C(0x100000000);
  if (v11)
  {
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v10);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((v6 & 0xF00000000000000) != 0)
  {
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7, v6);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v13 = v25;
  v12 = v26;
  v14 = sub_21E4DBCB8();
  if (os_log_type_enabled(v14, v9))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_21E426648(v13, v12, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21E3EB000, v14, v9, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5BF10](v16, -1, -1);
    MEMORY[0x223D5BF10](v15, -1, -1);
  }

  else
  {
  }

  if ([a2 isValid] && objc_msgSend(a2, sel_canSendResponse))
  {
    if (a1)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CF0B68]) init];
    }

    else
    {
      sub_21E426DD0();
      v19 = swift_allocError();
      *v20 = 0xD000000000000016;
      v20[1] = 0x800000021E4EB810;
      v21 = sub_21E4DB4D8();

      v18 = [objc_opt_self() responseForError_];
    }

    [a2 sendResponse_];
  }

  return [a2 invalidate];
}

id VisualIntelligenceActionClientToHost.init(info:responder:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id VisualIntelligenceActionClientToHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualIntelligenceActionClientToHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualIntelligenceActionClientToHost.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v2;
}

id VisualIntelligenceActionClientToHost.init(xpcDictionary:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id VisualIntelligenceActionClientToHost.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VisualIntelligenceActionClientToHost.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VisualIntelligenceActionClientToHost.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21E4263C4;
    v13[3] = &block_descriptor_0;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

void sub_21E4263C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id VisualIntelligenceActionClientToHost.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21E4263C4;
    v14[3] = &block_descriptor_3;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for VisualIntelligenceActionClientToHost();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v10, a5);
  sub_21E3F1EB0(a3);

  _Block_release(v10);
  return v12;
}

id VisualIntelligenceActionClientToHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceActionClientToHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E426648(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21E426714(v11, 0, 0, 1, a1, a2);
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
    sub_21E423FB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21E426714(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21E426820(a5, a6);
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
    result = sub_21E4DD3F8();
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

uint64_t sub_21E426820(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E42686C(a1, a2);
  sub_21E42699C(&unk_282F80878);
  return v3;
}

uint64_t sub_21E42686C(uint64_t a1, unint64_t a2)
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

  v6 = sub_21E426A88(v5, 0);
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

  result = sub_21E4DD3F8();
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
        v10 = sub_21E4DD018();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21E426A88(v10, 0);
        result = sub_21E4DD378();
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

uint64_t sub_21E42699C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21E426AFC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21E426A88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21E426AFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DA8);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for VisualIntelligenceClientToHost(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VisualIntelligenceClientToHost(_WORD *result, int a2, int a3)
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

unint64_t sub_21E426D14()
{
  result = qword_27CEC4D90;
  if (!qword_27CEC4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4D90);
  }

  return result;
}

unint64_t sub_21E426D6C()
{
  result = qword_27CEC4D98;
  if (!qword_27CEC4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4D98);
  }

  return result;
}

unint64_t sub_21E426DD0()
{
  result = qword_27CEC4DA0;
  if (!qword_27CEC4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4DA0);
  }

  return result;
}

uint64_t sub_21E426E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E426E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *SiriSharedUIVariableBlurView.init(maskImageName:)()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC12SiriSharedUI28SiriSharedUIVariableBlurView_backdropLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  v24.receiver = v0;
  v24.super_class = type metadata accessor for SiriSharedUIVariableBlurView();
  v2 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_21E4DCF68();

  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  if (v6)
  {
    v7 = OBJC_IVAR____TtC12SiriSharedUI28SiriSharedUIVariableBlurView_backdropLayer;
    [*&v2[OBJC_IVAR____TtC12SiriSharedUI28SiriSharedUIVariableBlurView_backdropLayer] setAllowsHitTesting_];
    v8 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v9 = [v6 CGImage];
    v10 = sub_21E4DCF68();
    [v8 setValue:v9 forKey:v10];

    v11 = sub_21E4DD1D8();
    [v8 setValue:v11 forKey:*MEMORY[0x277CDA4F0]];

    v12 = sub_21E4DD0E8();
    [v8 setValue:v12 forKey:*MEMORY[0x277CDA4C8]];

    v13 = sub_21E4DD0E8();
    [v8 setValue:v13 forKey:*MEMORY[0x277CDA448]];

    v14 = *&v2[v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21E4E57E0;
    *(v15 + 56) = sub_21E4272C0();
    *(v15 + 32) = v8;
    v16 = v14;
    v17 = v8;
    v18 = sub_21E4DD078();

    [v16 setFilters_];

    v19 = v2;
    v20 = [v19 layer];
    [v20 addSublayer_];

    v21 = [v19 layer];
    [v21 setAllowsHitTesting_];

    v22 = *&v2[v7];
    [v19 bounds];
    [v22 setFrame_];
  }

  else
  {

    return 0;
  }

  return v19;
}

unint64_t sub_21E4272C0()
{
  result = qword_280C14078;
  if (!qword_280C14078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C14078);
  }

  return result;
}

id SiriSharedUIVariableBlurView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SiriSharedUIVariableBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIVariableBlurView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E427570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21E42761C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21E420B28(v1, v2);
}

uint64_t sub_21E42765C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  *a2 = *(v3 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected);
  return result;
}

void sub_21E4277C4()
{
  type metadata accessor for SiriSharedUISuggestionsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21E4278E0();
    if (v1 <= 0x3F)
    {
      sub_21E427930();
      if (v2 <= 0x3F)
      {
        sub_21E427988(319, &qword_280C14510, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21E427988(319, &qword_280C142D0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21E4278E0()
{
  result = qword_280C14058;
  if (!qword_280C14058)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280C14058);
  }

  return result;
}

void sub_21E427930()
{
  if (!qword_280C14508)
  {
    sub_21E4DBE78();
    v0 = sub_21E4DBE88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C14508);
    }
  }
}

void sub_21E427988(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21E4279F4()
{
  v0 = sub_21E4DB4F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21E4DB508();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21E4DCEF8();
  sub_21E4DB6C8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  sub_21E4DB518();
  result = sub_21E4DCF98();
  qword_27CEC8820 = result;
  *algn_27CEC8828 = v8;
  return result;
}

uint64_t sub_21E427C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a2;
  v5 = sub_21E4DC448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_21E4DC418();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = v3[1];
  sub_21E4DC428();
  v18 = sub_21E4DC438() & 1;
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  (*(v6 + 32))(v15 + v14, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_21E429560(&qword_27CEC50A0, MEMORY[0x277CDE278]);

  sub_21E4DC858();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21E427E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = sub_21E4DC3F8();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v6 = *(v5 - 8);
  v57 = v5 - 8;
  v70 = v6;
  v72 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v52 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A40);
  MEMORY[0x28223BE20](v75);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DC8);
  v56 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v52 = &v52 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DD0);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v73 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DD8);
  v18 = *(v17 - 8);
  v63 = v17;
  v64 = v18;
  MEMORY[0x28223BE20](v17);
  v74 = &v52 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4DE0);
  MEMORY[0x28223BE20](v65);
  v60 = &v52 - v20;
  v79 = v1;
  type metadata accessor for SuggestionView(0);
  sub_21E429560(&qword_27CEC4DE8, type metadata accessor for SuggestionView);
  sub_21E4DCA48();
  v90 = *(v1 + 40);
  v61 = MEMORY[0x277CDF028];
  v21 = sub_21E42D5A8(&qword_27CEC4DF0, &qword_27CEC4DC0);
  v22 = sub_21E42950C();
  *(&v54 + 1) = v11;
  sub_21E4DC778();
  (*(v12 + 8))(v14, v11);
  v23 = *v1;
  swift_getKeyPath();
  *&v90 = v23;
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v24 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__image;
  swift_beginAccess();
  v25 = v55;
  sub_21E424848(v23 + v24, v55, &qword_27CEC4A40);
  v26 = v76;
  sub_21E42D13C(v2, v76, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v70 = *(v70 + 80);
  v27 = (v70 + 16) & ~v70;
  v28 = swift_allocObject();
  sub_21E42D0D4(v26, v28 + v27, type metadata accessor for SiriSharedUISuggestionsHostingView);
  *&v90 = *(&v54 + 1);
  *(&v90 + 1) = &type metadata for SuggestionsButtonConfiguration;
  *&v91 = v21;
  *(&v91 + 1) = v22;
  *&v54 = swift_getOpaqueTypeConformance2();
  *(&v54 + 1) = sub_21E4295CC();
  v29 = v71;
  v30 = v52;
  sub_21E4DC858();

  sub_21E424BC0(v25, &qword_27CEC4A40);
  (*(v56 + 8))(v30, v29);
  v31 = v2 + *(v57 + 48);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v80) = v32;
  *(&v80 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA28();
  v34 = v90;
  LODWORD(v57) = v91;
  v53 = v2;
  v35 = v76;
  sub_21E42D13C(v2, v76, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v36 = swift_allocObject();
  sub_21E42D0D4(v35, v36 + v27, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v37 = v58;
  sub_21E42D13C(v2, v58, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v38 = swift_allocObject();
  sub_21E42D0D4(v37, v38 + v27, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v80 = 0uLL;
  LOBYTE(v81) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E20);
  sub_21E4DC9F8();
  v89 = v91;
  v80 = v90;
  LOBYTE(v81) = v91;
  *(&v81 + 1) = *v88;
  DWORD1(v81) = *&v88[3];
  *(&v81 + 1) = *(&v91 + 1);
  v82 = xmmword_21E4E5840;
  *v83 = 0x4020000000000000;
  *&v83[8] = v34;
  v83[24] = v57;
  *&v83[25] = *v87;
  *&v83[28] = *&v87[3];
  *&v84 = sub_21E4297E4;
  *(&v84 + 1) = v36;
  *&v85 = sub_21E429848;
  *(&v85 + 1) = v38;
  v86 = 0x3FB999999999999ALL;
  *&v90 = v71;
  *(&v90 + 1) = v75;
  v91 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_21E4298D0();
  v41 = v73;
  v42 = v59;
  sub_21E4DC838();
  v94 = *&v83[16];
  v95 = v84;
  v96 = v85;
  v97 = v86;
  v90 = v80;
  v91 = v81;
  v92 = v82;
  v93 = *v83;
  sub_21E429924(&v90);
  (*(v62 + 8))(v41, v42);
  v43 = v53;
  v44 = v76;
  sub_21E42D13C(v53, v76, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v45 = swift_allocObject();
  sub_21E42D0D4(v44, v45 + v27, type metadata accessor for SiriSharedUISuggestionsHostingView);
  v46 = v66;
  sub_21E4DC3E8();
  *&v80 = v42;
  *(&v80 + 1) = &type metadata for SimultaneousLongPressGesture;
  *&v81 = OpaqueTypeConformance2;
  *(&v81 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v47 = v60;
  v48 = v46;
  v49 = v63;
  v50 = v74;
  sub_21E4DC808();

  (*(v67 + 8))(v48, v68);
  (*(v64 + 8))(v50, v49);
  v78 = v43;
  v77 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E38);
  sub_21E4299EC();
  sub_21E42D5A8(&unk_280C142B0, &qword_27CEC4E30);
  sub_21E429BEC();
  sub_21E4DC788();
  return sub_21E3EE48C(v47);
}

uint64_t sub_21E428974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for SuggestionView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
}

uint64_t sub_21E4289FC(uint64_t a1)
{
  v2 = sub_21E4DC1E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for SiriSharedUISuggestionsHostingView(0) + 36);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = *v6;
  }

  else
  {

    sub_21E4DD228();
    v9 = sub_21E4DC548();
    sub_21E4DBCA8();

    sub_21E4DC1D8();
    swift_getAtKeyPath();
    sub_21E4295A8(v7, 0);
    (*(v3 + 8))(v5, v2);
    v8 = *&v11[1];
  }

  return sub_21E42292C(v8);
}

uint64_t sub_21E428B6C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21E42D13C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SiriSharedUISuggestionsHostingView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21E42D0D4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SiriSharedUISuggestionsHostingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E50);
  sub_21E42D5A8(&qword_280C142A8, &qword_27CEC4E50);
  return sub_21E4DCA48();
}

uint64_t sub_21E428CF4(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v19 = v1;
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = qword_280C14550;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_21E4DBCC8();
    __swift_project_value_buffer(v5, qword_280C14558);
    v6 = sub_21E4DD1F8();
    v19 = 0xD000000000000010;
    v20 = 0x800000021E4EB990;
    v7 = sub_21E45C20C(0);
    if (v8)
    {
      v17 = 32;
      v18 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v7);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("reportFeedback()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v17 = 32;
      v18 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD00000000000002CLL, 0x800000021E4EB9B0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v10 = v19;
    v9 = v20;
    v11 = sub_21E4DBCB8();
    if (os_log_type_enabled(v11, v6))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v13 = v17;
      *v12 = 136315138;
      v14 = sub_21E426648(v10, v9, &v17);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_21E3EB000, v11, v6, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223D5BF10](v13, -1, -1);
      MEMORY[0x223D5BF10](v12, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    v19 = v1;
    sub_21E4DB718();

    v15 = sub_21E4DCF68();

    v3(v15);

    result = sub_21E3F1EB0(v3);
  }

  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19 = v1;
    sub_21E4DB708();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) = 0;
  }

  return result;
}

__n128 sub_21E4290B4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21E4DC218();
  sub_21E429118(&v6);
  v3 = v7;
  result = v6;
  v5 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_21E429118@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CEC4700 != -1)
  {
    swift_once();
  }

  sub_21E42C090();

  v2 = sub_21E4DC688();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_21E4DC978();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_21E42C0E4(v2, v4, v6);

  sub_21E42C0F4(v2, v4, v6);
}

double sub_21E429220@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for SuggestionView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;

  LOBYTE(v3) = sub_21E4DC598();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E38) + 36);
  *v5 = v3;
  result = 6.0;
  *(v5 + 8) = xmmword_21E4E5850;
  *(v5 + 24) = xmmword_21E4E5850;
  v5[40] = 0;
  return result;
}

uint64_t sub_21E4292D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E4DC1E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SuggestionView(0);
  sub_21E424848(v1 + *(v10 + 20), v9, &qword_27CEC4E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E4DBE78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21E4DD228();
    v13 = sub_21E4DC548();
    sub_21E4DBCA8();

    sub_21E4DC1D8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_21E42950C()
{
  result = qword_27CEC4DF8;
  if (!qword_27CEC4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4DF8);
  }

  return result;
}

uint64_t sub_21E429560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E4295A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_21E4295CC()
{
  result = qword_27CEC4E08;
  if (!qword_27CEC4E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4A40);
    sub_21E429560(&qword_27CEC4E10, MEMORY[0x277D61240]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4E08);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SiriSharedUISuggestionsHostingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21E4DBE78();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21E4295A8(*(v5 + *(v1 + 36)), *(v5 + *(v1 + 36) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E429848(char a1)
{
  v3 = *(type metadata accessor for SiriSharedUISuggestionsHostingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = 24;
  if (a1)
  {
    v5 = 8;
  }

  return (*(v4 + v5))();
}

unint64_t sub_21E4298D0()
{
  result = qword_27CEC4E28;
  if (!qword_27CEC4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4E28);
  }

  return result;
}

unint64_t sub_21E4299EC()
{
  result = qword_27CEC4E40;
  if (!qword_27CEC4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4DC0);
    sub_21E42D5A8(&qword_27CEC4DF0, &qword_27CEC4DC0);
    sub_21E42950C();
    swift_getOpaqueTypeConformance2();
    sub_21E4295CC();
    swift_getOpaqueTypeConformance2();
    sub_21E4298D0();
    swift_getOpaqueTypeConformance2();
    sub_21E429560(&unk_280C14300, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4E40);
  }

  return result;
}

unint64_t sub_21E429BEC()
{
  result = qword_27CEC4E48;
  if (!qword_27CEC4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E38);
    sub_21E429560(&qword_27CEC4DE8, type metadata accessor for SuggestionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4E48);
  }

  return result;
}

uint64_t sub_21E429CA8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E70);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E78);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E80);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if ([objc_opt_self() isEnhancedMaterialEnabled])
  {
    v14 = sub_21E4DC208();
  }

  else
  {
    v14 = sub_21E4DC1F8();
  }

  *v4 = v14;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E88);
  sub_21E42A0E0(v1, &v4[*(v15 + 44)]);
  v16 = sub_21E4DC5C8();
  KeyPath = swift_getKeyPath();
  sub_21E42D214(v4, v7, &qword_27CEC4E68);
  v18 = &v7[*(v5 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = *v1;
  swift_getKeyPath();
  v30 = v19;
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v20 = 1.0;
  if (v19[32] != 2)
  {
    swift_getKeyPath();
    v30 = v19;
    sub_21E4DB718();

    if (v19[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected])
    {
      v20 = 0.8;
    }

    else
    {
      v20 = 1.0;
    }
  }

  sub_21E42D214(v7, v10, &qword_27CEC4E70);
  *&v10[*(v8 + 36)] = v20;
  swift_getKeyPath();
  v30 = v19;
  sub_21E4DB718();

  if (v19[33] == 1)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 5.0;
  }

  sub_21E42D214(v10, v13, &qword_27CEC4E78);
  v22 = &v13[*(v11 + 36)];
  *v22 = v21;
  v22[8] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E90);
  v24 = v29;
  v25 = v29 + *(v23 + 36);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_21E4DC248();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E98) + 36)) = 0;
  return sub_21E42D214(v13, v24, &qword_27CEC4E80);
}

uint64_t sub_21E42A0E0@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EA0);
  MEMORY[0x28223BE20](v135);
  v137 = (&v118 - v3);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EA8);
  MEMORY[0x28223BE20](v136);
  v134 = &v118 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v139 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v138 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EB8);
  MEMORY[0x28223BE20](v9 - 8);
  v123 = &v118 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EC0);
  MEMORY[0x28223BE20](v130);
  v131 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EC8);
  MEMORY[0x28223BE20](v12 - 8);
  v125 = &v118 - v13;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4ED0);
  MEMORY[0x28223BE20](KeyPath);
  v126 = &v118 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4ED8);
  v15 = MEMORY[0x28223BE20](v129);
  v127 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v128 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A38);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v118 - v19;
  v21 = type metadata accessor for RealizedImage(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = &v118 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EE0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v132 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v143 = &v118 - v31;
  v133 = a1;
  v32 = *a1;
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel___observationRegistrar;
  *&v184 = v32;
  v34 = sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  v142 = v33;
  v35 = v34;
  sub_21E4DB718();

  v36 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__uiImage;
  swift_beginAccess();
  sub_21E424848(&v32[v36], v20, &qword_27CEC4A38);
  v37 = (*(v22 + 48))(v20, 1, v21);
  v141 = v35;
  if (v37 == 1)
  {
    sub_21E424BC0(v20, &qword_27CEC4A38);
    LODWORD(v184) = sub_21E4DC3B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EE8);
    sub_21E42C2F4();
    v38 = v125;
    sub_21E4DC828();
    swift_getKeyPath();
    *&v184 = v32;
    sub_21E4DB718();

    if (v32[33] == 1)
    {
      v39 = 20.0;
    }

    else
    {
      v39 = 2.0;
    }

    v40 = 0;
    v41 = 0;
    v42 = v39;
    CGRectGetWidth(*(&v39 - 2));
    swift_getKeyPath();
    *&v184 = v32;
    sub_21E4DB718();

    if (v32[33] == 1)
    {
      v43 = 20.0;
    }

    else
    {
      v43 = 2.0;
    }

    v44 = 0;
    v45 = 0;
    v46 = v43;
    CGRectGetHeight(*(&v43 - 2));
    sub_21E4DCB08();
    sub_21E4DBF18();
    v47 = v38;
    v48 = v126;
    sub_21E42D214(v47, v126, &qword_27CEC4EC8);
    v49 = (v48 + *(KeyPath + 36));
    v50 = v148[0];
    *v49 = v147;
    v49[1] = v50;
    v49[2] = v148[1];
    swift_getKeyPath();
    *&v184 = v32;
    sub_21E4DB718();

    v51 = v32[33] == 1;
    v52 = sub_21E4DC598();
    v53 = v48;
    v54 = v127;
    sub_21E42D214(v53, v127, &qword_27CEC4ED0);
    v55 = &v54[*(v129 + 36)];
    *v55 = v52;
    v56 = vdup_n_s32(v51);
    v57.i64[0] = v56.u32[0];
    v57.i64[1] = v56.u32[1];
    v58 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v57, 0x3FuLL)), xmmword_21E4E5870, xmmword_21E4E5860);
    *(v55 + 8) = vdupq_lane_s64(v58.i64[0], 0);
    *(v55 + 24) = v58;
    v55[40] = 0;
    v59 = v128;
    sub_21E42D214(v54, v128, &qword_27CEC4ED8);
    sub_21E424848(v59, v131, &qword_27CEC4ED8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F10);
    sub_21E42C400();
    sub_21E42C99C();
    v60 = v143;
    sub_21E4DC398();
    sub_21E424BC0(v59, &qword_27CEC4ED8);
    v61 = v138;
    v62 = v60;
  }

  else
  {
    sub_21E42D0D4(v20, v27, type metadata accessor for RealizedImage);
    v128 = v27;
    sub_21E42D13C(v27, v25, type metadata accessor for RealizedImage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v127 = v25;
      sub_21E4DC9A8();
      v63 = *MEMORY[0x277CE1020];
      v64 = sub_21E4DC9B8();
      v65 = *(v64 - 8);
      v66 = v123;
      (*(v65 + 104))(v123, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v126 = sub_21E4DC998();

      sub_21E424BC0(v66, &qword_27CEC4EB8);
      v125 = sub_21E4DC918();
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      if (v32[33] == 1)
      {
        v67 = 20.0;
      }

      else
      {
        v67 = 2.0;
      }

      v68 = 0;
      v69 = 0;
      v70 = v67;
      CGRectGetWidth(*(&v67 - 2));
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      if (v32[33] == 1)
      {
        v71 = 20.0;
      }

      else
      {
        v71 = 2.0;
      }

      v72 = 0;
      v73 = 0;
      v74 = v71;
      CGRectGetHeight(*(&v71 - 2));
      sub_21E4DCB08();
      sub_21E4DBF18();
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v75 = v32[33];
      LODWORD(v122) = sub_21E4DC598();
      v144 = v155;
      v145 = v156;
      v146 = v157;
      if (v75 == 1)
      {
        v76 = 0x402E000000000000;
      }

      else
      {
        v76 = 0x4038000000000000;
      }

      v77 = 0x4033000000000000;
      if (v75 == 1)
      {
        v77 = 0x4024000000000000;
      }

      v121 = v77;
      LOBYTE(v176[0]) = 0;
      v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4A50) + 48);
      v78 = v176[0];
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v79 = v32[32];
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v80 = v32[33];
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      if (v79 == 2)
      {
        if (v80 == 1)
        {
          v81 = 1.0;
        }

        else
        {
          v81 = 0.0;
        }
      }

      else if ((v80 != 1) | v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected] & 1)
      {
        v81 = 0.0;
      }

      else
      {
        v81 = 1.0;
      }

      v90 = v131;
      sub_21E4DC8C8();
      v91 = sub_21E4DC908();

      *(v148 + 8) = v144;
      *&v147 = v126;
      *(&v147 + 1) = KeyPath;
      *&v148[0] = v125;
      *(&v148[1] + 8) = v145;
      *(&v148[2] + 8) = v146;
      BYTE8(v148[3]) = v122;
      *&v149 = v76;
      *(&v149 + 1) = v76;
      *&v150 = v76;
      *(&v150 + 1) = v121;
      LOBYTE(v151) = v78;
      *(&v151 + 1) = v81;
      *&v152 = v91;
      *(&v152 + 1) = 0x4014000000000000;
      v153 = 0uLL;
      sub_21E42D20C(&v147);
      v192 = v152;
      v193 = v153;
      v188 = v148[3];
      v189 = v149;
      v194 = v154;
      v190 = v150;
      v191 = v151;
      v184 = v147;
      v185 = v148[0];
      v186 = v148[1];
      v187 = v148[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F88);
      sub_21E42C48C();
      sub_21E42C774();
      sub_21E4DC398();
      sub_21E424BC0(v127 + v123, &unk_27CEC4930);
      v192 = v173;
      v193 = v174;
      v194 = v175;
      v188 = v169;
      v189 = v170;
      v190 = v171;
      v191 = v172;
      v184 = v165;
      v185 = v166;
      v186 = v167;
      v187 = v168;
    }

    else
    {
      v127 = *v25;
      sub_21E4DC958();
      sub_21E42B530(v32, v176);

      KeyPath = v176[1];
      v125 = v176[0];
      v82 = v177;
      v83 = v179;
      v122 = v180;
      v123 = v178;
      v121 = v181;
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v84 = v32[33];
      v120 = sub_21E4DC598();
      if (v84 == 1)
      {
        v85 = 0x402E000000000000;
      }

      else
      {
        v85 = 0x4038000000000000;
      }

      v86 = 0x4033000000000000;
      LODWORD(v126) = v82;
      v195 = v82;
      if (v84 == 1)
      {
        v86 = 0x4024000000000000;
      }

      v119 = v86;
      v183 = v83;
      v182 = 0;
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v87 = v32[32];
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      v88 = v32[33];
      swift_getKeyPath();
      *&v184 = v32;
      sub_21E4DB718();

      if (v87 == 2)
      {
        if (v88 == 1)
        {
          v89 = 1.0;
        }

        else
        {
          v89 = 0.0;
        }
      }

      else if ((v88 != 1) | v32[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected] & 1)
      {
        v89 = 0.0;
      }

      else
      {
        v89 = 1.0;
      }

      sub_21E4DC8C8();
      v92 = sub_21E4DC908();

      *&v155 = v125;
      *(&v155 + 1) = KeyPath;
      LOBYTE(v156) = v126;
      *(&v156 + 1) = v123;
      LOBYTE(v157) = v83;
      *(&v157 + 1) = v122;
      *&v158 = v121;
      BYTE8(v158) = v120;
      *&v159 = v85;
      *(&v159 + 1) = v85;
      *&v160 = v85;
      *(&v160 + 1) = v119;
      LOBYTE(v161) = 0;
      *(&v161 + 1) = v89;
      *&v162 = v92;
      *(&v162 + 1) = 0x4014000000000000;
      v164 = 0;
      v163 = 0;
      v165 = v155;
      v166 = v156;
      v172 = v162;
      v173 = 0u;
      v170 = v160;
      v171 = v161;
      v168 = v158;
      v169 = v159;
      v167 = v157;
      sub_21E42D1A4(&v165);
      v192 = v173;
      v193 = v174;
      v194 = v175;
      v188 = v169;
      v189 = v170;
      v190 = v171;
      v191 = v172;
      v184 = v165;
      v185 = v166;
      v186 = v167;
      v187 = v168;
      sub_21E424848(&v155, &v147, &qword_27CEC4F88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F88);
      sub_21E42C48C();
      sub_21E42C774();
      sub_21E4DC398();

      sub_21E424BC0(&v155, &qword_27CEC4F88);
      v192 = v152;
      v193 = v153;
      v188 = v148[3];
      v189 = v149;
      v194 = v154;
      v190 = v150;
      v191 = v151;
      v184 = v147;
      v185 = v148[0];
      v186 = v148[1];
      v187 = v148[2];
      v90 = v131;
    }

    v93 = v193;
    *(v90 + 128) = v192;
    *(v90 + 144) = v93;
    *(v90 + 160) = v194;
    v94 = v189;
    *(v90 + 64) = v188;
    *(v90 + 80) = v94;
    v95 = v191;
    *(v90 + 96) = v190;
    *(v90 + 112) = v95;
    v96 = v185;
    *v90 = v184;
    *(v90 + 16) = v96;
    v97 = v187;
    *(v90 + 32) = v186;
    *(v90 + 48) = v97;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4F10);
    sub_21E42C400();
    sub_21E42C99C();
    v62 = v143;
    sub_21E4DC398();
    sub_21E42D1B0(v128);
    v61 = v138;
  }

  sub_21E4DCB08();
  sub_21E4DBF18();
  v138 = v165;
  v130 = v167;
  v131 = v166;
  v129 = *(&v167 + 1);
  LOBYTE(v155) = 1;
  LOBYTE(v176[0]) = BYTE8(v165);
  v195 = BYTE8(v166);
  swift_getKeyPath();
  *&v184 = v32;
  sub_21E4DB718();

  if (v32[32] == 2 && (swift_getKeyPath(), *&v184 = v32, sub_21E4DB718(), , v32[59] == 1))
  {
    sub_21E42B798(v134);
    sub_21E42CBC4();
    v98 = sub_21E4DCA78();
    sub_21E450274(v98, &v184, 8.0, 25.0);
    v99 = v191;
    v100 = v137;
    v137[6] = v190;
    v100[7] = v99;
    v101 = v193;
    v100[8] = v192;
    v100[9] = v101;
    v102 = v187;
    v100[2] = v186;
    v100[3] = v102;
    v103 = v189;
    v100[4] = v188;
    v100[5] = v103;
    v104 = v185;
    *v100 = v184;
    v100[1] = v104;
    swift_storeEnumTagMultiPayload();
    sub_21E42CB70();
    sub_21E4DC398();
  }

  else
  {
    v105 = v134;
    sub_21E42B798(v134);
    sub_21E424848(v105, v137, &qword_27CEC4EA8);
    swift_storeEnumTagMultiPayload();
    sub_21E42CB70();
    sub_21E42CBC4();
    sub_21E4DC398();
    sub_21E424BC0(v105, &qword_27CEC4EA8);
  }

  v106 = v132;
  sub_21E424848(v62, v132, &qword_27CEC4EE0);
  v107 = v155;
  v108 = v176[0];
  v109 = v195;
  v110 = v139;
  sub_21E424848(v61, v139, &qword_27CEC4EB0);
  v111 = v61;
  v112 = v140;
  sub_21E424848(v106, v140, &qword_27CEC4EE0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5090);
  v114 = v112 + *(v113 + 48);
  *v114 = 0;
  *(v114 + 8) = v107;
  *(v114 + 16) = v138;
  *(v114 + 24) = v108;
  v115 = v130;
  *(v114 + 32) = v131;
  *(v114 + 40) = v109;
  v116 = v129;
  *(v114 + 48) = v115;
  *(v114 + 56) = v116;
  sub_21E424848(v110, v112 + *(v113 + 64), &qword_27CEC4EB0);
  sub_21E424BC0(v111, &qword_27CEC4EB0);
  sub_21E424BC0(v143, &qword_27CEC4EE0);
  sub_21E424BC0(v110, &qword_27CEC4EB0);
  return sub_21E424BC0(v106, &qword_27CEC4EE0);
}

double sub_21E42B530@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E4DC988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_21E4DC9D8();
  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  v22 = a1;
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  if (*(a1 + 33) == 1)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 2.0;
  }

  v10 = 0;
  v11 = 0;
  v12 = v9;
  CGRectGetWidth(*(&v9 - 2));
  swift_getKeyPath();
  v22 = a1;
  sub_21E4DB718();

  if (*(a1 + 33) == 1)
  {
    v13 = 20.0;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = 0;
  v15 = 0;
  v16 = v13;
  CGRectGetHeight(*(&v13 - 2));
  sub_21E4DCB08();
  sub_21E4DBF18();
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  *a2 = v8;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  result = *&v26;
  *(a2 + 40) = v26;
  return result;
}

uint64_t sub_21E42B798@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_21E4DBE78();
  v67 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - v5;
  v65 = sub_21E4DCB78();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5020);
  MEMORY[0x28223BE20](v58);
  v9 = &v49 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5010);
  MEMORY[0x28223BE20](v59);
  v66 = &v49 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5000);
  MEMORY[0x28223BE20](v64);
  v69 = &v49 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4FF0);
  MEMORY[0x28223BE20](v68);
  v70 = &v49 - v12;
  v62 = v1;
  v13 = *v1;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel___observationRegistrar;
  v72 = v13;
  sub_21E429560(&qword_27CEC4A30, type metadata accessor for SiriSharedUISuggestionsViewModel);
  sub_21E4DB718();

  v15 = *(v13 + 24);
  v72 = *(v13 + 16);
  v73 = v15;
  sub_21E42C090();

  v56 = sub_21E4DC688();
  v55 = v16;
  v18 = v17;
  v54 = v19;
  swift_getKeyPath();
  v72 = v13;
  sub_21E4DB718();
  v20 = v14;

  v21 = *(v13 + 32);
  KeyPath = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v51 = v18 & 1;
  v75 = v18 & 1;
  v74 = 0;
  swift_getKeyPath();
  v72 = v13;
  sub_21E4DB718();

  v22 = *(v13 + 32);
  v57 = v20;
  if (v22 == 2 || (swift_getKeyPath(), v72 = v13, sub_21E4DB718(), , *(v13 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISuggestionsViewModel__selected) != 1))
  {
    v23 = sub_21E4DC928();
  }

  else
  {
    v23 = sub_21E4DC918();
  }

  v50 = v23;
  if (v21 == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  sub_21E4292D8(v6);
  v25 = v67;
  v26 = v61;
  (*(v67 + 104))(v61, *MEMORY[0x277CDF3D0], v2);
  v27 = sub_21E4DBE68();
  v28 = *(v25 + 8);
  v28(v26, v2);
  v28(v6, v2);
  v29 = v63;
  v30 = MEMORY[0x277CE13B0];
  if ((v27 & 1) == 0)
  {
    v30 = MEMORY[0x277CE13B8];
  }

  v31 = v60;
  v32 = v65;
  (*(v63 + 104))(v60, *v30, v65);
  (*(v29 + 32))(&v9[*(v58 + 36)], v31, v32);
  v33 = v55;
  *v9 = v56;
  *(v9 + 1) = v33;
  v9[16] = v51;
  v34 = KeyPath;
  *(v9 + 3) = v54;
  *(v9 + 4) = v34;
  *(v9 + 5) = v24;
  v9[48] = 0;
  *(v9 + 7) = v52;
  v9[64] = 1;
  *(v9 + 9) = v50;
  LOBYTE(v32) = sub_21E4DC598();
  v35 = v66;
  sub_21E42D214(v9, v66, &qword_27CEC5020);
  v36 = v35 + *(v59 + 36);
  *v36 = v32;
  *(v36 + 8) = xmmword_21E4E5880;
  *(v36 + 24) = xmmword_21E4E5890;
  *(v36 + 40) = 0;
  swift_getKeyPath();
  v72 = v13;
  sub_21E4DB718();

  if (*(v13 + 33) == 1)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = v69;
  sub_21E42D214(v35, v69, &qword_27CEC5010);
  *(v38 + *(v64 + 36)) = v37;
  swift_getKeyPath();
  v72 = v13;
  sub_21E4DB718();

  v39 = qword_21E4E5E40[*(v13 + 33)];
  v40 = v70;
  sub_21E42D214(v38, v70, &qword_27CEC5000);
  v41 = (v40 + *(v68 + 36));
  *v41 = 0;
  v41[1] = v39;
  v42 = swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4EA8);
  v44 = v71;
  v45 = (v71 + *(v43 + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5088) + 28);
  v47 = sub_21E4DCAF8();
  (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
  *v45 = v42;
  return sub_21E42D214(v40, v44, &qword_27CEC4FF0);
}

uint64_t sub_21E42BF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5098);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21E424848(a1, &v5 - v3, &qword_27CEC5098);
  return sub_21E4DC168();
}

uint64_t sub_21E42C01C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SiriSharedUISuggestionsHostingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21E42C090()
{
  result = qword_280C14230;
  if (!qword_280C14230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14230);
  }

  return result;
}

uint64_t sub_21E42C0E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21E42C0F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21E42C124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21E42C16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21E42C1E0()
{
  type metadata accessor for SiriSharedUISuggestionsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21E427930();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21E42C29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E4DC198();
  *a1 = result;
  return result;
}

unint64_t sub_21E42C2F4()
{
  result = qword_27CEC4EF0;
  if (!qword_27CEC4EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4EE8);
    sub_21E42C3AC();
    sub_21E42D5A8(&qword_27CEC4F00, &qword_27CEC4F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4EF0);
  }

  return result;
}

unint64_t sub_21E42C3AC()
{
  result = qword_27CEC4EF8;
  if (!qword_27CEC4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4EF8);
  }

  return result;
}

unint64_t sub_21E42C400()
{
  result = qword_27CEC4F18;
  if (!qword_27CEC4F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F10);
    sub_21E42C48C();
    sub_21E42C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F18);
  }

  return result;
}

unint64_t sub_21E42C48C()
{
  result = qword_27CEC4F20;
  if (!qword_27CEC4F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F28);
    sub_21E42C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F20);
  }

  return result;
}

unint64_t sub_21E42C518()
{
  result = qword_27CEC4F30;
  if (!qword_27CEC4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F38);
    sub_21E42C5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F30);
  }

  return result;
}

unint64_t sub_21E42C5A4()
{
  result = qword_27CEC4F40;
  if (!qword_27CEC4F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F48);
    sub_21E42C630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F40);
  }

  return result;
}

unint64_t sub_21E42C630()
{
  result = qword_27CEC4F50;
  if (!qword_27CEC4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F58);
    sub_21E42C6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F50);
  }

  return result;
}

unint64_t sub_21E42C6BC()
{
  result = qword_27CEC4F60;
  if (!qword_27CEC4F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F68);
    sub_21E42D5A8(&qword_27CEC4F70, &qword_27CEC4F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F60);
  }

  return result;
}

unint64_t sub_21E42C774()
{
  result = qword_27CEC4F80;
  if (!qword_27CEC4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F88);
    sub_21E42C800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F80);
  }

  return result;
}

unint64_t sub_21E42C800()
{
  result = qword_27CEC4F90;
  if (!qword_27CEC4F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4F98);
    sub_21E42C88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4F90);
  }

  return result;
}

unint64_t sub_21E42C88C()
{
  result = qword_27CEC4FA0;
  if (!qword_27CEC4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4FA8);
    sub_21E42C918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FA0);
  }

  return result;
}

unint64_t sub_21E42C918()
{
  result = qword_27CEC4FB0;
  if (!qword_27CEC4FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FB0);
  }

  return result;
}

unint64_t sub_21E42C99C()
{
  result = qword_27CEC4FC0;
  if (!qword_27CEC4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4ED8);
    sub_21E42CA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FC0);
  }

  return result;
}

unint64_t sub_21E42CA28()
{
  result = qword_27CEC4FC8;
  if (!qword_27CEC4FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4ED0);
    sub_21E42CAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FC8);
  }

  return result;
}

unint64_t sub_21E42CAB4()
{
  result = qword_27CEC4FD0;
  if (!qword_27CEC4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4EC8);
    sub_21E42C2F4();
    sub_21E429560(&unk_280C14300, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FD0);
  }

  return result;
}

unint64_t sub_21E42CB70()
{
  result = qword_27CEC4FD8;
  if (!qword_27CEC4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FD8);
  }

  return result;
}

unint64_t sub_21E42CBC4()
{
  result = qword_27CEC4FE0;
  if (!qword_27CEC4FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4EA8);
    sub_21E42CC7C();
    sub_21E42D5A8(&qword_27CEC5080, &qword_27CEC5088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FE0);
  }

  return result;
}

unint64_t sub_21E42CC7C()
{
  result = qword_27CEC4FE8;
  if (!qword_27CEC4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4FF0);
    sub_21E42CD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FE8);
  }

  return result;
}

unint64_t sub_21E42CD08()
{
  result = qword_27CEC4FF8;
  if (!qword_27CEC4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5000);
    sub_21E42CD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC4FF8);
  }

  return result;
}

unint64_t sub_21E42CD94()
{
  result = qword_27CEC5008;
  if (!qword_27CEC5008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5010);
    sub_21E42CE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5008);
  }

  return result;
}

unint64_t sub_21E42CE20()
{
  result = qword_27CEC5018;
  if (!qword_27CEC5018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5020);
    sub_21E42CEAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5018);
  }

  return result;
}

unint64_t sub_21E42CEAC()
{
  result = qword_27CEC5028;
  if (!qword_27CEC5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5030);
    sub_21E42CF64();
    sub_21E42D5A8(&qword_27CEC5070, &qword_27CEC5078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5028);
  }

  return result;
}

unint64_t sub_21E42CF64()
{
  result = qword_27CEC5038;
  if (!qword_27CEC5038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5040);
    sub_21E42D01C();
    sub_21E42D5A8(&unk_280C14320, &qword_27CEC5068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5038);
  }

  return result;
}

unint64_t sub_21E42D01C()
{
  result = qword_27CEC5048;
  if (!qword_27CEC5048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5050);
    sub_21E42D5A8(&qword_27CEC5058, &qword_27CEC5060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5048);
  }

  return result;
}

uint64_t sub_21E42D0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E42D13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E42D1B0(uint64_t a1)
{
  v2 = type metadata accessor for RealizedImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E42D214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E42D27C()
{
  sub_21E4DC448();
  v1 = *(v0 + 16);
  v2 = sub_21E4DC438();
  return v1(v2 & 1);
}

unint64_t sub_21E42D2F4()
{
  result = qword_27CEC50A8;
  if (!qword_27CEC50A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E90);
    sub_21E42D3AC();
    sub_21E42D5A8(&unk_27CEC50D8, &qword_27CEC4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC50A8);
  }

  return result;
}

unint64_t sub_21E42D3AC()
{
  result = qword_27CEC50B0;
  if (!qword_27CEC50B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E80);
    sub_21E42D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC50B0);
  }

  return result;
}

unint64_t sub_21E42D438()
{
  result = qword_27CEC50B8;
  if (!qword_27CEC50B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E78);
    sub_21E42D4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC50B8);
  }

  return result;
}

unint64_t sub_21E42D4C4()
{
  result = qword_27CEC50C0;
  if (!qword_27CEC50C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC4E70);
    sub_21E42D5A8(&qword_27CEC50C8, &qword_27CEC4E68);
    sub_21E42D5A8(&qword_280C14330, &qword_27CEC50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC50C0);
  }

  return result;
}

uint64_t sub_21E42D5A8(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_21E42D5FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v57 = sub_21E4DCBF8();
  v56 = *(v57 - 1);
  MEMORY[0x28223BE20](v57);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21E4DCC18();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21E4DCC38();
  v51 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = sub_21E4DC3A8();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21E4DC878();
  v48 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result > 2)
  {
    if ((result - 3) < 3)
    {
      v61 = *(v3 + 56);
      LOBYTE(v62) = *(v3 + 72);
      LOBYTE(aBlock) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50E8);
      sub_21E4DCA88();
      v24 = *(v3 + 16);
      v61 = *v3;
      v62 = v24;
      aBlock = 0uLL;
      LOBYTE(v64) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F0);
      sub_21E4DCA18();
      v25 = [a1 state] == 3;
      sub_21E42E2C0();
      v26 = sub_21E4DD278();
      sub_21E4DCC28();
      sub_21E4DCC88();
      v51 = *(v51 + 8);
      v27 = v52;
      (v51)(v10, v52);
      v28 = swift_allocObject();
      v29 = *(v3 + 80);
      *(v28 + 80) = *(v3 + 64);
      *(v28 + 96) = v29;
      *(v28 + 112) = *(v3 + 96);
      *(v28 + 128) = *(v3 + 112);
      v30 = *(v3 + 16);
      *(v28 + 16) = *v3;
      *(v28 + 32) = v30;
      v31 = *(v3 + 48);
      *(v28 + 48) = *(v3 + 32);
      *(v28 + 64) = v31;
      *(v28 + 136) = v25;
      v65 = sub_21E42E30C;
      v66 = v28;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v64 = sub_21E46C644;
      *(&v64 + 1) = &block_descriptor_1;
      v32 = _Block_copy(&aBlock);
      sub_21E42E358(v3, &v61);

      sub_21E4DCC08();
      *&v61 = MEMORY[0x277D84F90];
      sub_21E42E390();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
      sub_21E42E3E8();
      v33 = v54;
      v34 = v57;
      sub_21E4DD358();
      MEMORY[0x223D5AF00](v12, v7, v33, v32);
      _Block_release(v32);

      (*(v56 + 8))(v33, v34);
      (*(v53 + 8))(v7, v55);
      return (v51)(v12, v27);
    }

    goto LABEL_9;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v57 = a1;
      v20 = *(v3 + 16);
      v61 = *v3;
      v62 = v20;
      v21 = *(v3 + 16);
      aBlock = *v3;
      v64 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F0);
      sub_21E4DCA08();
      v22 = v58;
      v23 = v59;
      if (v60)
      {
        aBlock = *(v3 + 56);
        LOBYTE(v64) = *(v3 + 72);
        LOBYTE(v58) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50E8);
        sub_21E4DCA88();
        aBlock = v61;
        v64 = v62;
        v58 = v22;
        v59 = v23;
        v60 = 1;
        sub_21E4DCA18();
        return [v57 setState_];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F8);
        sub_21E4DC538();
        sub_21E4DC408();
        sub_21E4DC868();
        v43 = v42;
        v45 = v44;
        (*(v49 + 8))(v15, v13);
        result = (*(v48 + 8))(v18, v16);
        v46 = v57;
        if (sqrt((v22 - v43) * (v22 - v43) + (v23 - v45) * (v23 - v45)) >= *(v3 + 48))
        {
          aBlock = *(v3 + 56);
          LOBYTE(v64) = *(v3 + 72);
          LOBYTE(v58) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50E8);
          sub_21E4DCA88();
          aBlock = v61;
          v64 = v62;
          v59 = 0.0;
          v58 = 0.0;
          v60 = 1;
          sub_21E4DCA18();
          return [v46 setState_];
        }
      }

      return result;
    }

LABEL_9:
    v61 = *(v3 + 56);
    LOBYTE(v62) = *(v3 + 72);
    LOBYTE(aBlock) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50E8);
    sub_21E4DCA88();
    v35 = *(v3 + 16);
    v61 = *v3;
    v62 = v35;
    aBlock = 0uLL;
    LOBYTE(v64) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F0);
    return sub_21E4DCA18();
  }

  v61 = *(v3 + 56);
  LOBYTE(v62) = *(v3 + 72);
  LOBYTE(aBlock) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50E8);
  sub_21E4DCA88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F8);
  sub_21E4DC538();
  sub_21E4DC408();
  sub_21E4DC868();
  v37 = v36;
  v39 = v38;
  (*(v49 + 8))(v15, v13);
  (*(v48 + 8))(v18, v16);
  v40 = *(v3 + 16);
  v61 = *v3;
  v62 = v40;
  *&aBlock = v37;
  *(&aBlock + 1) = v39;
  LOBYTE(v64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F0);
  result = sub_21E4DCA18();
  v41 = *(v3 + 80);
  if (v41)
  {
    return v41(result, v37, v39);
  }

  return result;
}

id sub_21E42E018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimultaneousLongPressGesture.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21E42E09C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E42E0E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21E42E154@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for SimultaneousLongPressGesture.Coordinator()) init];
  *a1 = result;
  return result;
}

id sub_21E42E18C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC50F8);
  sub_21E4DC528();
  [v0 setDelegate_];

  return v0;
}

id sub_21E42E214(void *a1)
{
  v3 = *(v1 + 40);
  [a1 setMinimumPressDuration_];

  return [a1 setAllowableMovement_];
}

unint64_t sub_21E42E2C0()
{
  result = qword_280C14150;
  if (!qword_280C14150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C14150);
  }

  return result;
}

uint64_t sub_21E42E30C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    return v1(*(v0 + 136));
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E42E390()
{
  result = qword_280C14250;
  if (!qword_280C14250)
  {
    sub_21E4DCBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14250);
  }

  return result;
}

unint64_t sub_21E42E3E8()
{
  result = qword_280C141F0;
  if (!qword_280C141F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC6660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C141F0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21E42E470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E42E4B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E42E53C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5108);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5110);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5118);
  v11 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  *v10 = sub_21E4DC218();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5120);
  sub_21E42E96C(a1, &v10[*(v16 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  v37[12] = v37[0];
  v37[13] = v37[1];
  v17 = swift_allocObject();
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  v19 = a1[5];
  v17[5] = a1[4];
  v17[6] = v19;
  v20 = a1[1];
  v17[1] = *a1;
  v17[2] = v20;
  sub_21E430954(a1, v37);
  sub_21E42D5A8(&qword_27CEC5128, &qword_27CEC5110);
  v32 = v15;
  sub_21E4DC848();

  sub_21E424BC0(v10, &qword_27CEC5110);
  v21 = v7;
  *v7 = sub_21E4DC218();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5130);
  sub_21E42F2C0(a1, &v7[*(v22 + 44)]);
  v23 = v11;
  v24 = *(v11 + 16);
  v26 = v33;
  v25 = v34;
  v24(v33, v15, v34);
  v27 = v35;
  sub_21E424848(v21, v35, &qword_27CEC5108);
  v28 = v36;
  v24(v36, v26, v25);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5138);
  sub_21E424848(v27, &v28[*(v29 + 48)], &qword_27CEC5108);
  sub_21E424BC0(v21, &qword_27CEC5108);
  v30 = *(v23 + 8);
  v30(v32, v25);
  sub_21E424BC0(v27, &qword_27CEC5108);
  return (v30)(v26, v25);
}

uint64_t sub_21E42E96C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5200) - 8;
  v2 = MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  sub_21E42C090();
  v6 = sub_21E4DC688();
  v8 = v7;
  v10 = v9;
  *&v54 = sub_21E4DC8E8();
  v11 = sub_21E4DC648();
  v13 = v12;
  v15 = v14;
  sub_21E42C0F4(v6, v8, v10 & 1);

  sub_21E4DC608();
  v16 = sub_21E4DC668();
  v46 = v17;
  v19 = v18;
  v45 = v20;

  sub_21E42C0F4(v11, v13, v15 & 1);

  LOBYTE(v6) = sub_21E4DC598();
  v21 = v19 & 1;
  LOBYTE(v52) = v19 & 1;
  LOBYTE(v51) = 1;
  sub_21E4DCB08();
  sub_21E4DBF18();
  *&v53[7] = v54;
  *&v53[23] = v55;
  *&v53[39] = v56;
  v22 = v47;
  v23 = *(v47 + 80);
  v24 = sub_21E4DC598();
  v25 = *(v22 + 88) * 0.5;
  v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5208) + 36)];
  v27 = *(sub_21E4DC038() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_21E4DC248();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = v25;
  v26[1] = v25;
  *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51C8) + 36)) = 256;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  v30 = *&v53[16];
  *(v5 + 73) = *v53;
  v31 = v46;
  *v5 = v16;
  *(v5 + 1) = v31;
  v5[16] = v21;
  *(v5 + 3) = v45;
  v5[32] = v6;
  v5[72] = 1;
  *(v5 + 89) = v30;
  *(v5 + 105) = *&v53[32];
  *(v5 + 15) = *&v53[47];
  *(v5 + 16) = v23;
  v5[136] = v24;
  v52 = *(v22 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51F8);
  sub_21E4DCA08();
  v32 = v51;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5210) + 36)] = v32;
  KeyPath = swift_getKeyPath();
  v34 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5218) + 36)];
  *v34 = KeyPath;
  v34[8] = 1;
  v35 = sub_21E4DCB68();
  v52 = *(v22 + 40);
  sub_21E4DCA08();
  v36 = v51;
  v37 = &v5[*(v49 + 44)];
  *v37 = v35;
  v37[1] = v36;
  v38 = v48;
  sub_21E424848(v5, v48, &qword_27CEC5200);
  v39 = v50;
  *v50 = 0;
  *(v39 + 8) = 1;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5220);
  sub_21E424848(v38, v40 + *(v41 + 48), &qword_27CEC5200);
  v42 = v40 + *(v41 + 64);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_21E424BC0(v5, &qword_27CEC5200);
  return sub_21E424BC0(v38, &qword_27CEC5200);
}

uint64_t sub_21E42EE44()
{
  v23 = sub_21E4DCC38();
  v1 = *(v23 - 8);
  v2 = MEMORY[0x28223BE20](v23);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = sub_21E4DCBF8();
  MEMORY[0x28223BE20](v7);
  v8 = *(v0 + 56);
  v28 = *(v0 + 64);
  v29[0] = v8;
  v22 = v8;
  v24 = v8;
  v21 = v28;
  v25 = v28;
  sub_21E424848(v29, aBlock, &qword_27CEC51E0);
  sub_21E424848(&v28, aBlock, &qword_27CEC51E8);
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51F0);
  v9 = sub_21E4DCA08();
  if (aBlock[0])
  {
    sub_21E4DCC58();
  }

  MEMORY[0x28223BE20](v9);
  v20[-2] = v0;
  sub_21E4DCB58();
  sub_21E4DBF78();

  v10 = swift_allocObject();
  v11 = *(v0 + 48);
  v10[3] = *(v0 + 32);
  v10[4] = v11;
  v12 = *(v0 + 80);
  v10[5] = *(v0 + 64);
  v10[6] = v12;
  v13 = *(v0 + 16);
  v10[1] = *v0;
  v10[2] = v13;
  aBlock[4] = sub_21E430E50;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E46C644;
  aBlock[3] = &block_descriptor_2;
  _Block_copy(aBlock);
  v26 = MEMORY[0x277D84F90];
  sub_21E430954(v0, &v24);
  sub_21E431174(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42D5A8(&qword_280C141F0, &unk_27CEC6660);
  sub_21E4DD358();
  sub_21E4DCC68();
  swift_allocObject();
  v14 = sub_21E4DCC48();

  sub_21E42E2C0();
  v15 = sub_21E4DD278();
  sub_21E4DCC28();
  sub_21E4DCC88();
  v16 = *(v1 + 8);
  v17 = v4;
  v18 = v23;
  v16(v17, v23);
  sub_21E4DD268();

  v16(v6, v18);
  v24 = v22;
  v25 = v21;
  aBlock[0] = v14;
  sub_21E4DCA18();
  sub_21E424BC0(v29, &qword_27CEC51E0);
  return sub_21E424BC0(&v28, &qword_27CEC51E8);
}

uint64_t sub_21E42F2C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5140);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5148);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5150);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  sub_21E4DCB08();
  v25 = 1;
  sub_21E4DBF18();
  v43 = v52;
  v44 = v50;
  v41 = v55;
  v42 = v54;
  v58 = 1;
  v57 = v51;
  v56 = v53;
  *v24 = sub_21E4DC278();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5158);
  sub_21E42F7CC(a1, &v24[*(v26 + 44)]);
  v49 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  if (v48 == 1)
  {
    *v22 = sub_21E4DC278();
    *(v22 + 1) = 0;
    v22[16] = 1;
    sub_21E42FC44(a1, &v22[*(v26 + 44)]);
    *v19 = sub_21E4DC278();
    *(v19 + 1) = 0;
    v19[16] = 1;
    sub_21E430098(a1, &v19[*(v26 + 44)]);
    sub_21E424848(v22, v16, &qword_27CEC5150);
    v27 = v39;
    sub_21E424848(v19, v39, &qword_27CEC5150);
    v28 = v40;
    sub_21E424848(v16, v40, &qword_27CEC5150);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5168);
    sub_21E424848(v27, v28 + *(v29 + 48), &qword_27CEC5150);
    sub_21E424BC0(v19, &qword_27CEC5150);
    sub_21E424BC0(v22, &qword_27CEC5150);
    sub_21E424BC0(v27, &qword_27CEC5150);
    sub_21E424BC0(v16, &qword_27CEC5150);
    sub_21E43098C(v28, v10);
    v25 = 0;
  }

  (*(v45 + 56))(v10, v25, 1, v46);
  v30 = v58;
  v31 = v57;
  v32 = v10;
  v33 = v56;
  sub_21E424848(v24, v22, &qword_27CEC5150);
  v34 = v47;
  sub_21E424848(v32, v47, &qword_27CEC5148);
  *a2 = 0;
  *(a2 + 8) = v30;
  v35 = v43;
  *(a2 + 16) = v44;
  *(a2 + 24) = v31;
  *(a2 + 32) = v35;
  *(a2 + 40) = v33;
  v36 = v41;
  *(a2 + 48) = v42;
  *(a2 + 56) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5160);
  sub_21E424848(v22, a2 + *(v37 + 48), &qword_27CEC5150);
  sub_21E424848(v34, a2 + *(v37 + 64), &qword_27CEC5148);
  sub_21E424BC0(v32, &qword_27CEC5148);
  sub_21E424BC0(v24, &qword_27CEC5150);
  sub_21E424BC0(v34, &qword_27CEC5148);
  return sub_21E424BC0(v22, &qword_27CEC5150);
}

uint64_t sub_21E42F7CC@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5170);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_21E4DC8E8();
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  v39 = 0x6C69662E79616C70;
  v40 = 0xE90000000000006CLL;
  v41 = a1;
  v42 = v14;
  sub_21E430954(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5178);
  sub_21E430A30();
  sub_21E4DCA48();

  v19 = sub_21E4DC8E8();
  v20 = swift_allocObject();
  v21 = a1[3];
  v20[3] = a1[2];
  v20[4] = v21;
  v22 = a1[5];
  v20[5] = a1[4];
  v20[6] = v22;
  v23 = a1[1];
  v20[1] = *a1;
  v20[2] = v23;
  v35 = 0xD000000000000017;
  v36 = 0x800000021E4EBB10;
  v37 = a1;
  v38 = v19;
  sub_21E430954(a1, v43);
  sub_21E4DCA48();

  v24 = *(v4 + 16);
  v25 = v32;
  v24(v32, v13, v3);
  v26 = v33;
  v24(v33, v11, v3);
  v27 = v34;
  v24(v34, v25, v3);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51D0);
  v24(&v27[*(v28 + 48)], v26, v3);
  v29 = *(v4 + 8);
  v29(v11, v3);
  v29(v13, v3);
  v29(v26, v3);
  return (v29)(v25, v3);
}

uint64_t sub_21E42FB80(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2[1] = *(a1 + 24);
  v4 = *(&v3 + 1);
  sub_21E424848(&v4, v2, &qword_27CEC51D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  v2[0] = v3;
  sub_21E4DCA18();
  return sub_21E424BC0(&v3, &qword_27CEC4E18);
}

uint64_t sub_21E42FC44@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5170);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v32 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v34 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  if (v46[0])
  {
    v12 = 0x662E657261757173;
  }

  else
  {
    v12 = 0x662E656C63726963;
  }

  v13 = sub_21E4DC898();
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v16 = a1[5];
  v14[5] = a1[4];
  v14[6] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v42 = v12;
  v43 = 0xEB000000006C6C69;
  v44 = a1;
  v45 = v13;
  sub_21E430954(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5178);
  sub_21E430A30();
  sub_21E4DCA48();

  v18 = sub_21E4DC8E8();
  v19 = swift_allocObject();
  v20 = a1[3];
  v19[3] = a1[2];
  v19[4] = v20;
  v21 = a1[5];
  v19[5] = a1[4];
  v19[6] = v21;
  v22 = a1[1];
  v19[1] = *a1;
  v19[2] = v22;
  v38 = 0xD000000000000016;
  v39 = 0x800000021E4EBAF0;
  v40 = a1;
  v41 = v18;
  sub_21E430954(a1, v46);
  v23 = v34;
  sub_21E4DCA48();

  v24 = *(v4 + 16);
  v25 = v35;
  v26 = v33;
  v24(v35, v33, v3);
  v27 = v36;
  v24(v36, v23, v3);
  v28 = v37;
  v24(v37, v25, v3);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51D0);
  v24(&v28[*(v29 + 48)], v27, v3);
  v30 = *(v4 + 8);
  v30(v23, v3);
  v30(v26, v3);
  v30(v27, v3);
  return (v30)(v25, v3);
}

uint64_t sub_21E430098@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5170);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_21E4DC8E8();
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  v39 = 0x69662E6873617274;
  v40 = 0xEA00000000006C6CLL;
  v41 = a1;
  v42 = v14;
  sub_21E430954(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5178);
  sub_21E430A30();
  sub_21E4DCA48();

  v19 = sub_21E4DC8E8();
  v20 = swift_allocObject();
  v21 = a1[3];
  v20[3] = a1[2];
  v20[4] = v21;
  v22 = a1[5];
  v20[5] = a1[4];
  v20[6] = v22;
  v23 = a1[1];
  v20[1] = *a1;
  v20[2] = v23;
  v35 = 0xD000000000000014;
  v36 = 0x800000021E4EBAD0;
  v37 = a1;
  v38 = v19;
  sub_21E430954(a1, v43);
  sub_21E4DCA48();

  v24 = *(v4 + 16);
  v25 = v32;
  v24(v32, v13, v3);
  v26 = v33;
  v24(v33, v11, v3);
  v27 = v34;
  v24(v34, v25, v3);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51D0);
  v24(&v27[*(v28 + 48)], v26, v3);
  v29 = *(v4 + 8);
  v29(v11, v3);
  v29(v13, v3);
  v29(v26, v3);
  return (v29)(v25, v3);
}

uint64_t sub_21E43044C(void *a1)
{
  v2 = sub_21E4DB588();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_21E4AEA10();
    sub_21E4AF8B4();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21E430520@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  v25 = sub_21E4DC978();
  v6 = *(a1 + 88);
  sub_21E4DCB08();
  sub_21E4DBF18();
  KeyPath = swift_getKeyPath();
  v8 = *(a1 + 72);

  v9 = sub_21E4DC598();
  v10 = v6 * 0.5;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5190) + 36));
  v12 = *(sub_21E4DC038() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_21E4DC248();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = v10;
  v11[1] = v10;
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51C8) + 36)) = 256;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v27;
  *(a3 + 24) = v28;
  *(a3 + 32) = v29;
  *(a3 + 40) = v30;
  *(a3 + 48) = v31;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = a2;
  *(a3 + 72) = v8;
  *(a3 + 80) = v9;

  LOBYTE(a2) = sub_21E4DC598();
  sub_21E4DBE28();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5178);
  v24 = a3 + *(result + 36);
  *v24 = a2;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_21E430730()
{
  sub_21E4DCB58();
  sub_21E4DBF78();
}

uint64_t sub_21E43079C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v4 = v1[5];
  v8[4] = v1[4];
  v8[5] = v4;
  v5 = v1[1];
  v8[0] = *v1;
  v8[1] = v5;
  *a1 = sub_21E4DC288();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5100);
  return sub_21E42E53C(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_21E430810@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E430890()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E430914(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *a2 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    return sub_21E42EE44();
  }

  return result;
}

uint64_t sub_21E43098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E4309FC()
{
  if (*(v0 + 16))
  {
    sub_21E4AF380();
  }
}

unint64_t sub_21E430A30()
{
  result = qword_27CEC5180;
  if (!qword_27CEC5180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5178);
    sub_21E430ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5180);
  }

  return result;
}

unint64_t sub_21E430ABC()
{
  result = qword_27CEC5188;
  if (!qword_27CEC5188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5190);
    sub_21E430B74();
    sub_21E42D5A8(&unk_280C144F0, &qword_27CEC51C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5188);
  }

  return result;
}

unint64_t sub_21E430B74()
{
  result = qword_27CEC5198;
  if (!qword_27CEC5198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC51A0);
    sub_21E430C2C();
    sub_21E42D5A8(&qword_27CEC51B8, &qword_27CEC51C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5198);
  }

  return result;
}

unint64_t sub_21E430C2C()
{
  result = qword_27CEC51A8;
  if (!qword_27CEC51A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC51B0);
    sub_21E42C918();
    sub_21E42D5A8(&qword_27CEC4F70, &qword_27CEC4F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC51A8);
  }

  return result;
}

uint64_t sub_21E430CEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E4DC118();
  *a1 = result;
  return result;
}

uint64_t sub_21E430D44()
{
  if (*(v0 + 16))
  {
    return sub_21E4AF1EC();
  }

  return result;
}

void sub_21E430D6C()
{
  if (*(v0 + 16))
  {
    sub_21E4AEE5C();
  }
}

void sub_21E430D94()
{
  if (*(v0 + 16))
  {
    sub_21E4AED80();
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E430EEC@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v26 = a1;
  v5 = sub_21E4DC888();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReplayViewModel();
  sub_21E431174(&qword_27CEC5228, type metadata accessor for ReplayViewModel);
  v9 = sub_21E4DBF98();
  v24 = v10;
  v25 = v9;
  LOBYTE(v27) = a2;
  sub_21E4DC9F8();
  v22 = v28;
  v23 = v29;
  v27 = 0;
  sub_21E4DC9F8();
  v11 = v28;
  v21 = v29;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51E0);
  sub_21E4DC9F8();
  v12 = v28;
  v13 = v29;
  v14 = *MEMORY[0x277CE0EE0];
  v15 = *(v6 + 104);
  v15(v8, v14, v5);
  sub_21E4DC938();
  v16 = sub_21E4DC908();

  v15(v8, v14, v5);
  sub_21E4DC938();
  v17 = sub_21E4DC908();

  v19 = v25;
  *a3 = v26;
  *(a3 + 8) = v19;
  *(a3 + 16) = v24;
  *(a3 + 24) = v22;
  *(a3 + 25) = v28;
  *(a3 + 28) = *(&v28 + 3);
  *(a3 + 32) = v23;
  *(a3 + 40) = v11;
  *(a3 + 48) = v21;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  *(a3 + 72) = v16;
  *(a3 + 80) = v17;
  *(a3 + 88) = 0x4043000000000000;
  return result;
}

uint64_t sub_21E431174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Move(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Move(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E431310@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E431394(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_21E431340()
{
  result = qword_27CEC5240;
  if (!qword_27CEC5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5240);
  }

  return result;
}

unint64_t sub_21E431394(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21E4313C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21E431410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E431464()
{
  result = qword_280C152F0;
  if (!qword_280C152F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C152F0);
  }

  return result;
}

id sub_21E4314CC(int a1, int a2, int a3, int a4, id a5)
{
  v6 = *(v5 + 8);
  result = [a5 view];
  if (result)
  {
    v8 = result;
    [result sizeThatFits_];
    v10 = v9;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E43155C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E4317E8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21E4315C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E4317E8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21E431624()
{
  sub_21E4317E8();
  sub_21E4DC4C8();
  __break(1u);
}

uint64_t sub_21E4316A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E43183C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E431704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E43183C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E431768()
{
  sub_21E43183C();
  sub_21E4DC368();
  __break(1u);
}

unint64_t sub_21E431794()
{
  result = qword_280C152D8;
  if (!qword_280C152D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C152D8);
  }

  return result;
}

unint64_t sub_21E4317E8()
{
  result = qword_280C152F8[0];
  if (!qword_280C152F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C152F8);
  }

  return result;
}

unint64_t sub_21E43183C()
{
  result = qword_280C152D0;
  if (!qword_280C152D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C152D0);
  }

  return result;
}

uint64_t sub_21E431890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E43EB64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E431930(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E43EB50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E431A18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E43EABC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E431AB8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E43EA84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E431BA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E43EB64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21E3F1E78(v4);
}

uint64_t sub_21E431C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21E43EB50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21E3F1E78(v3);
  return sub_21E3F1EB0(v8);
}

uint64_t sub_21E431D28(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21E431D90(char a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = v4;
  *(v5 + 817) = a3;
  *(v5 + 208) = a2;
  *(v5 + 816) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  *(v5 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  *(v5 + 240) = swift_task_alloc();
  v6 = sub_21E4DBB38();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  *(v5 + 280) = swift_task_alloc();
  v7 = sub_21E4DB698();
  *(v5 + 288) = v7;
  *(v5 + 296) = *(v7 - 8);
  *(v5 + 304) = swift_task_alloc();
  v8 = sub_21E4DBB28();
  *(v5 + 312) = v8;
  *(v5 + 320) = *(v8 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  v9 = sub_21E4DBAD8();
  *(v5 + 344) = v9;
  v10 = *(v9 - 8);
  *(v5 + 352) = v10;
  *(v5 + 360) = *(v10 + 64);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  v11 = sub_21E4DBAF8();
  *(v5 + 384) = v11;
  *(v5 + 392) = *(v11 - 8);
  *(v5 + 400) = swift_task_alloc();
  v12 = sub_21E4DB908();
  *(v5 + 408) = v12;
  v13 = *(v12 - 8);
  *(v5 + 416) = v13;
  *(v5 + 424) = *(v13 + 64);
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  *(v5 + 448) = v14;
  *(v5 + 456) = *(v14 + 64);
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  *(v5 + 488) = swift_task_alloc();
  v15 = sub_21E4DBA28();
  *(v5 + 496) = v15;
  *(v5 + 504) = *(v15 - 8);
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5280);
  *(v5 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5288);
  *(v5 + 536) = swift_task_alloc();
  v16 = sub_21E4DBA98();
  *(v5 + 544) = v16;
  *(v5 + 552) = *(v16 - 8);
  *(v5 + 560) = swift_task_alloc();
  *(v5 + 568) = swift_task_alloc();
  v17 = sub_21E4DB7A8();
  *(v5 + 576) = v17;
  *(v5 + 584) = *(v17 - 8);
  *(v5 + 592) = swift_task_alloc();
  v18 = sub_21E4DBA58();
  *(v5 + 600) = v18;
  *(v5 + 608) = *(v18 - 8);
  *(v5 + 616) = swift_task_alloc();
  v19 = sub_21E4DB6D8();
  *(v5 + 624) = v19;
  *(v5 + 632) = *(v19 - 8);
  *(v5 + 640) = swift_task_alloc();
  *(v5 + 648) = swift_task_alloc();
  v20 = sub_21E4DB7D8();
  *(v5 + 656) = v20;
  *(v5 + 664) = *(v20 - 8);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  sub_21E4DBB98();
  *(v5 + 688) = swift_task_alloc();
  v21 = sub_21E4DBB58();
  *(v5 + 696) = v21;
  *(v5 + 704) = *(v21 - 8);
  *(v5 + 712) = swift_task_alloc();
  v22 = sub_21E4DBA68();
  *(v5 + 720) = v22;
  *(v5 + 728) = *(v22 - 8);
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E432584, 0, 0);
}

uint64_t sub_21E432584()
{
  v103 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v1 = sub_21E4DBCC8();
  *(v0 + 752) = __swift_project_value_buffer(v1, qword_280C14558);
  v2 = sub_21E4DD1F8();
  v3 = sub_21E45C20C(0);
  if (v4)
  {
    v102[0] = 32;
    v102[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v3);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("nceOSInstalled:turnId:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v102[0] = 32;
    v102[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000004BLL, 0x800000021E4EBBB0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = sub_21E4DBCB8();
  if (os_log_type_enabled(v5, v2))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v102[0] = v7;
    *v6 = 136315138;
    v8 = sub_21E426648(0xD000000000000077, 0x800000021E4EBB30, v102);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_21E3EB000, v5, v2, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223D5BF10](v7, -1, -1);
    MEMORY[0x223D5BF10](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 224);
  v13 = *(v0 + 816);
  *(v0 + 184) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback;
  *(v0 + 760) = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback;
  v15 = (v12 + v14);
  swift_beginAccess();
  v16 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_21E3F1EB0(v16);
  v17 = (v12 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback);
  swift_beginAccess();
  v18 = *v17;
  *v17 = 0;
  v17[1] = 0;
  sub_21E3F1EB0(v18);
  v19 = MEMORY[0x277D60BE0];
  if (!v13)
  {
    v19 = MEMORY[0x277D60BE8];
  }

  (*(v10 + 104))(v9, *v19, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5290);
  v20 = sub_21E4DBB48();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21E4E57E0;
  v24 = SiriSharedUICurrentDeviceType();
  if ((v24 - 1) > 5)
  {
    v25 = MEMORY[0x277D609A8];
  }

  else
  {
    v25 = qword_278354E00[v24 - 1];
  }

  v26 = *(v0 + 680);
  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  (*(v21 + 104))(v23 + v22, *v25, v20);
  sub_21E4DB798();
  sub_21E4DB788();
  sub_21E4DB778();

  sub_21E4DB7E8();
  (*(v28 + 104))(v27, *MEMORY[0x277D61DE0], v29);
  sub_21E4DB7C8();
  v30 = *(v28 + 8);
  v30(v27, v29);
  v30(v26, v29);
  sub_21E4DB7B8();
  sub_21E4DBB88();

  v31 = objc_opt_self();
  v32 = [v31 sharedPreferences];
  v33 = [v32 languageCode];

  if (v33 || (v34 = [v31 sharedPreferences], v33 = objc_msgSend(v34, sel_bestSupportedLanguageCodeForLanguageCode_, 0), v34, v33))
  {
    v40 = *(v0 + 616);
    v41 = *(v0 + 608);
    v42 = *(v0 + 600);
    v99 = *(v0 + 208);
    sub_21E4DCF78();

    sub_21E4DB6A8();
    (*(v41 + 104))(v40, *MEMORY[0x277D60830], v42);
    sub_21E4DBA38();
    v102[0] = 0;
    v102[1] = 0xE000000000000000;
    sub_21E4DD3A8();
    v43 = v102[1];
    *(v0 + 152) = v102[0];
    *(v0 + 160) = v43;
    MEMORY[0x223D5ACB0](0xD000000000000034, 0x800000021E4EBC40);
    *(v0 + 192) = v99;
    type metadata accessor for SiriSharedUISuggestionsInputOrigin(0);
    sub_21E4DD458();
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);
    v46 = sub_21E4DD1F8();
    v47 = sub_21E45C20C(0);
    if (v48)
    {
      v102[0] = 32;
      v102[1] = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v47);

      MEMORY[0x223D5ACB0](v102[0], v102[1]);
    }

    v49 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v49 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v102[0] = 32;
      v102[1] = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v45, v44);
      MEMORY[0x223D5ACB0](v102[0], v102[1]);
    }

    v50 = sub_21E4DBCB8();
    if (os_log_type_enabled(v50, v46))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v102[0] = v52;
      *v51 = 136315138;
      v53 = sub_21E426648(0xD000000000000033, 0x800000021E4EBC00, v102);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_21E3EB000, v50, v46, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x223D5BF10](v52, -1, -1);
      MEMORY[0x223D5BF10](v51, -1, -1);
    }

    else
    {
    }

    v93 = *(v0 + 736);
    v95 = *(v0 + 720);
    v54 = *(v0 + 640);
    v55 = *(v0 + 632);
    v85 = *(v0 + 744);
    v86 = *(v0 + 624);
    v56 = *(v0 + 592);
    v57 = *(v0 + 584);
    v58 = *(v0 + 576);
    v84 = *(v0 + 568);
    v89 = *(v0 + 728);
    v90 = *(v0 + 560);
    v59 = *(v0 + 552);
    v60 = *(v0 + 536);
    v61 = *(v0 + 528);
    v91 = *(v0 + 544);
    v92 = *(v0 + 512);
    v87 = *(v0 + 520);
    v88 = *(v0 + 504);
    v94 = *(v0 + 496);
    v96 = *(v0 + 488);
    v98 = *(v0 + 480);
    v100 = *(v0 + 448);
    v101 = *(v0 + 224);
    v97 = *(v0 + 216);
    v62 = *(v0 + 208);
    v63 = MEMORY[0x277D61C48];
    if (v62 != 2)
    {
      v63 = MEMORY[0x277D61C70];
    }

    v64 = v62 == 3;
    v65 = MEMORY[0x277D61C80];
    if (!v64)
    {
      v65 = v63;
    }

    (*(v57 + 104))(v56, *v65, v58);
    (*(v57 + 16))(v60, v56, v58);
    (*(v57 + 56))(v60, 0, 1, v58);
    v66 = *MEMORY[0x277D60DB8];
    v67 = sub_21E4DBB68();
    v68 = *(v67 - 8);
    (*(v68 + 104))(v61, v66, v67);
    (*(v68 + 56))(v61, 0, 1, v67);
    sub_21E4DBA78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5298);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E4E57E0;
    *(inited + 32) = 0x656C61636F6CLL;
    *(inited + 40) = 0xE600000000000000;
    sub_21E4DBA48();
    v70 = sub_21E4DB6B8();
    v72 = v71;
    (*(v55 + 8))(v54, v86);
    v73 = MEMORY[0x277D837D8];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v73;
    *(inited + 48) = v70;
    *(inited + 56) = v72;
    sub_21E43B824(inited);
    swift_setDeallocating();
    sub_21E424BC0(inited + 32, &qword_27CEC52A0);
    sub_21E4DBA18();
    (*(v89 + 16))(v93, v85, v95);
    (*(v59 + 16))(v90, v84, v91);
    (*(v88 + 16))(v92, v87, v94);
    sub_21E4DB8C8();
    memset(v102, 0, 40);
    swift_allocObject();
    v74 = sub_21E4DB8B8();
    *(v0 + 768) = v74;
    v75 = sub_21E4DD158();
    v76 = *(*(v75 - 8) + 56);
    v76(v96, 1, 1, v75);
    sub_21E424848(v97, v98, &qword_27CEC5278);
    v77 = (*(v100 + 80) + 48) & ~*(v100 + 80);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v74;
    v78[5] = v101;
    sub_21E42D214(v98, v78 + v77, &qword_27CEC5278);

    v79 = v101;
    v80 = sub_21E435680(0, 0, v96, &unk_21E4E65B0, v78, MEMORY[0x277D604C8]);
    *(v0 + 776) = v80;
    v76(v96, 1, 1, v75);
    v81 = swift_allocObject();
    v81[2] = 0;
    v81[3] = 0;
    v81[4] = v80;

    *(v0 + 784) = sub_21E4353D4(0, 0, v96, &unk_21E4E65C0, v81);
    v82 = swift_task_alloc();
    *(v0 + 792) = v82;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
    *(v0 + 800) = v38;
    *v82 = v0;
    v82[1] = sub_21E433258;
    v35 = *(v0 + 440);
    v37 = *(v0 + 408);
    v39 = MEMORY[0x277D84950];
    v36 = v80;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200430](v35, v36, v37, v38, v39);
}

uint64_t sub_21E433258()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_21E434330;
  }

  else
  {
    v2 = sub_21E43336C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E43336C()
{
  v160 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  sub_21E4DD178();
  sub_21E4DB8D8();
  v4 = sub_21E4DBAE8();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = *(v4 + 16);

  if (v6)
  {
    v7 = v0[50];
    v8 = v0[48];
    sub_21E4DB8D8();
    v9 = sub_21E4DBAE8();
    v5(v7, v8);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v0[44];
      v12 = *(v11 + 16);
      v11 += 16;
      v152 = v12;
      v13 = *(v11 + 64);
      v14 = v9 + ((v13 + 32) & ~v13);
      v116 = (v0[40] + 8);
      v117 = ~v13;
      v15 = v0[37];
      v118 = (v15 + 32);
      v114 = (v11 + 40);
      v115 = (v15 + 48);
      v16 = v0[32];
      v112 = (v16 + 88);
      v113 = (v16 + 32);
      v103 = (v16 + 8);
      v110 = v0[53] + v13;
      v111 = v0[52];
      v109 = (v11 + 16);
      v108 = (v11 - 8);
      v107 = *(v11 + 56);
      v106 = *MEMORY[0x277D608F0];
      v104 = *MEMORY[0x277D60900];
      v105 = *MEMORY[0x277D608F8];
      do
      {
        v144 = v14;
        v148 = v10;
        v17 = v0[58];
        v18 = v0[59];
        v19 = v0[42];
        v20 = v0[41];
        v21 = v0[39];
        v124 = v0[36];
        v152(v0[47]);
        sub_21E4DBAB8();
        sub_21E4DB638();

        sub_21E4DBAA8();
        v22 = sub_21E4DBB08();
        v136 = v23;
        v140 = v22;
        v24 = *v116;
        (*v116)(v19, v21);
        sub_21E4DBAA8();
        v25 = sub_21E4DBB08();
        v128 = v26;
        v132 = v25;
        v24(v20, v21);
        sub_21E424848(v18, v17, &qword_27CEC5278);
        v27 = *v115;
        v28 = (*v115)(v17, 1, v124);
        v29 = v0[58];
        v30 = v0[36];
        if (v28 == 1)
        {
          sub_21E4DB688();
          if (v27(v29, 1, v30) != 1)
          {
            sub_21E424BC0(v0[58], &qword_27CEC5278);
          }
        }

        else
        {
          (*v118)(v0[38], v0[58], v0[36]);
        }

        v31 = v0[43];
        v33 = v0[34];
        v32 = v0[35];
        v34 = v0[33];
        v35 = v0[31];
        (v152)(v32, v0[47], v31);
        (*v114)(v32, 0, 1, v31);
        sub_21E4DBAC8();
        (*v113)(v34, v33, v35);
        v36 = (*v112)(v34, v35);
        if (v36 == v106)
        {
          v125 = 1;
        }

        else if (v36 == v105)
        {
          v125 = 2;
        }

        else if (v36 == v104)
        {
          v125 = 3;
        }

        else
        {
          (*v103)(v0[33], v0[31]);
          v125 = 0;
        }

        v38 = v0[54];
        v37 = v0[55];
        v39 = v0[51];
        v41 = v0[46];
        v40 = v0[47];
        v42 = v0[43];
        v119 = v0[36];
        v120 = v0[38];
        v43 = v0[29];
        v44 = v0[30];
        v122 = v0[35];
        v45 = sub_21E4DB978();
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        v46 = sub_21E4DCBD8();
        (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
        (*(v111 + 16))(v38, v37, v39);
        (v152)(v41, v40, v42);
        v47 = (*(v111 + 80) + 16) & ~*(v111 + 80);
        v48 = swift_allocObject();
        (*(v111 + 32))(v48 + v47, v38, v39);
        (*v109)(v48 + ((v110 + v47) & v117), v41, v42);
        type metadata accessor for SiriSharedUISuggestion();
        v49 = swift_allocObject();
        v50 = &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
        *v50 = 0;
        *(v50 + 1) = 0;
        v51 = &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
        strcpy(&v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier], "com.apple.siri");
        v51[15] = -18;
        *(v49 + 2) = v140;
        *(v49 + 3) = v136;
        *(v49 + 4) = v132;
        *(v49 + 5) = v128;
        (*v118)(&v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v120, v119);
        v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 1;
        sub_21E42D214(v122, &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
        *&v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = v125;
        sub_21E42D214(v44, &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
        sub_21E42D214(v43, &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
        v52 = &v49[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
        *v52 = sub_21E43C694;
        v52[1] = v48;

        MEMORY[0x223D5AD10](v53);
        if (*((v0[23] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[23] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
        }

        v54 = v0[59];
        v55 = v0[47];
        v56 = v0[43];
        sub_21E4DD0D8();

        sub_21E424BC0(v54, &qword_27CEC5278);
        (*v108)(v55, v56);
        v14 = v144 + v107;
        v10 = v148 - 1;
      }

      while (v148 != 1);
      v156 = v0[23];
    }

    else
    {

      v156 = MEMORY[0x277D84F90];
    }

    v64 = v0[91];
    v149 = v0[90];
    v153 = v0[93];
    v65 = v0[73];
    v141 = v0[72];
    v145 = v0[74];
    v66 = v0[69];
    v126 = v0[68];
    v129 = v0[71];
    v67 = v0[63];
    v121 = v0[62];
    v123 = v0[65];
    v68 = v0[55];
    v69 = (v0[28] + v0[95]);
    v71 = v0[51];
    v70 = v0[52];
    v72 = sub_21E4DB8E8();
    v133 = v73;
    v137 = v72;

    (*(v70 + 8))(v68, v71);
    (*(v67 + 8))(v123, v121);
    (*(v66 + 8))(v129, v126);
    (*(v65 + 8))(v145, v141);
    (*(v64 + 8))(v153, v149);
    v74 = *v69;
    *v69 = v137;
    v69[1] = v133;
    sub_21E3F1EB0(v74);
  }

  else
  {
    v57 = sub_21E4DD1F8();
    v58 = sub_21E45C20C(0);
    if (v59)
    {
      v158 = 32;
      v159 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v58);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("rom SiriSuggestions: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v158 = 32;
      v159 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000031, 0x800000021E4EBCD0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v60 = sub_21E4DBCB8();
    if (os_log_type_enabled(v60, v57))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v158 = v62;
      *v61 = 136315138;
      v63 = sub_21E426648(0xD000000000000077, 0x800000021E4EBB30, &v158);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_21E3EB000, v60, v57, "%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x223D5BF10](v62, -1, -1);
      MEMORY[0x223D5BF10](v61, -1, -1);
    }

    else
    {
    }

    v75 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v76 = sub_21E4DCF68();
    v77 = [v75 initWithSuiteName_];

    if (v77 && (v78 = sub_21E4DCF68(), v79 = [v77 BOOLForKey_], v78, v77, v79))
    {
      v80 = sub_21E4DD1F8();
      v81 = sub_21E45C20C(0);
      if (v82)
      {
        v158 = 32;
        v159 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v81);

        MEMORY[0x223D5ACB0](v158, v159);
      }

      if (("onsListAssistantEngine" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v158 = 32;
        v159 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD000000000000042, 0x800000021E4EBD60);
        MEMORY[0x223D5ACB0](v158, v159);
      }

      v83 = sub_21E4DBCB8();
      if (os_log_type_enabled(v83, v80))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v158 = v85;
        *v84 = 136315138;
        v86 = sub_21E426648(0xD000000000000077, 0x800000021E4EBB30, &v158);

        *(v84 + 4) = v86;
        _os_log_impl(&dword_21E3EB000, v83, v80, "%s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x223D5BF10](v85, -1, -1);
        MEMORY[0x223D5BF10](v84, -1, -1);
      }

      else
      {
      }

      v94 = v0[91];
      v151 = v0[90];
      v155 = v0[93];
      v95 = v0[73];
      v143 = v0[72];
      v147 = v0[74];
      v96 = v0[69];
      v135 = v0[68];
      v139 = v0[71];
      v97 = v0[63];
      v127 = v0[62];
      v131 = v0[65];
      v98 = v0[55];
      v100 = v0[51];
      v99 = v0[52];
      v156 = sub_21E43BB1C();

      (*(v99 + 8))(v98, v100);
      (*(v97 + 8))(v131, v127);
      (*(v96 + 8))(v139, v135);
      (*(v95 + 8))(v147, v143);
      (*(v94 + 8))(v155, v151);
    }

    else
    {
      v87 = v0[91];
      v154 = v0[90];
      v157 = v0[93];
      v88 = v0[73];
      v146 = v0[72];
      v150 = v0[74];
      v89 = v0[69];
      v138 = v0[68];
      v142 = v0[71];
      v90 = v0[63];
      v130 = v0[62];
      v134 = v0[65];
      v91 = v0[55];
      v93 = v0[51];
      v92 = v0[52];

      (*(v92 + 8))(v91, v93);
      (*(v90 + 8))(v134, v130);
      (*(v89 + 8))(v142, v138);
      (*(v88 + 8))(v150, v146);
      (*(v87 + 8))(v157, v154);
      v156 = MEMORY[0x277D84F90];
    }
  }

  v101 = v0[1];

  return v101(v156);
}

uint64_t sub_21E434330()
{
  v31 = v0;
  v1 = v0[101];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_21E4DD3A8();
  v0[21] = 0;
  v0[22] = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD000000000000045, 0x800000021E4EBC80);
  v0[25] = v1;
  sub_21E4DD458();
  v2 = v0[21];
  v3 = v0[22];
  v4 = sub_21E4DD218();
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = sub_21E4DBCB8();
  v9 = os_log_type_enabled(v8, v4);
  v10 = v0[101];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(0xD000000000000077, 0x800000021E4EBB30, &v29);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v8, v4, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[91];
  v27 = v0[90];
  v28 = v0[93];
  v15 = v0[73];
  v25 = v0[72];
  v26 = v0[74];
  v16 = v0[71];
  v17 = v0[69];
  v18 = v0[68];
  v19 = v0[65];
  v21 = v0[62];
  v20 = v0[63];

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v26, v25);
  (*(v14 + 8))(v28, v27);

  v22 = v0[1];
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_21E434808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v6[9] = swift_task_alloc();
  v7 = sub_21E4DB698();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E434910, 0, 0);
}

uint64_t sub_21E434910()
{
  sub_21E4DBA08();
  sub_21E4DB8C8();

  v0[14] = sub_21E4DB9D8();
  v0[15] = 0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  v0[16] = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_21E4DB648();
  v9 = v8;
  v0[19] = v8;
  v10 = *(v3 + 8);
  v0[20] = v10;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_21E434B00;
  v12 = v0[5];

  return MEMORY[0x2821C6030](v12, v7, v9);
}