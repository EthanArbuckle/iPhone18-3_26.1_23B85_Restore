uint64_t sub_20B53537C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5353DC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B535424()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53545C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5354D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B535508()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B535568()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5355A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B535634()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53566C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5356D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B535708()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5357B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5357EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B535898()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5358D8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B535960(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ShelfMetricAction();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20B535A0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ShelfMetricAction();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B535AB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B535AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B535BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B535C5C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B535E50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B535E88()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_20B535EFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B535F48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B535F84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B535FC4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B535FFC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B536130()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5361F0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B5362D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536330()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536404()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536444()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133594();
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

uint64_t sub_20B536550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C133594();
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

uint64_t sub_20B53660C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536644()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5366B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536700()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536750()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5367C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B536814()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B536864()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B53689C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B5368D4()
{
  v1 = sub_20C135D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_20B536984()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5369D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536A1C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B536AE0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536B1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B536B5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536B94()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B536BD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B536C0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B536C4C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B536CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20B536CF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20B536D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B536DC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B536E8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536EC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B536F10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B536F48()
{
  v1 = sub_20C133474();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SessionMusicTrack() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;

  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_20C137C24();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_20B5370D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B537120()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B537180()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5371CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B537218()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B537264()
{
  v1 = sub_20C134D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5372EC()
{
  v17 = sub_20C134684();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v16 = sub_20C137094();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_20C135174();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v15, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v14, v12 | 7);
}

uint64_t sub_20B537534()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53756C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5375A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B5375E0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B537634()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B537674()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5376AC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5376EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B537734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C132C14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20B53785C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20C132C14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B537974()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5379AC()
{
  v1 = sub_20C133E24();
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v31 = v1;
  v3 = *(v2 + 64);
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (((v30 + 72) & ~v30) + v3 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0) - 8);
  v29 = v8;
  v26 = *(v9 + 80);
  v23 = (v7 + v8 + v26) & ~v26;
  v25 = *(v9 + 64);
  v28 = sub_20C134EC4();
  v10 = *(v28 - 8);
  v11 = *(v10 + 80);
  v24 = *(v10 + 64);
  v27 = sub_20C135914();
  v12 = *(v27 - 8);
  v13 = *(v12 + 80);
  v21 = *(v12 + 64);

  (*(v2 + 8))(v0 + ((v30 + 72) & ~v30), v31);
  v32 = v4;
  v22 = *(v5 + 8);
  v22(v0 + v7, v4);
  v14 = sub_20C134734();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v23, 1, v14))
  {
    (*(v15 + 8))(v0 + v23, v14);
  }

  v16 = v30 | v6 | v11 | v26 | v13;
  v17 = (v23 + v25 + v11) & ~v11;
  v18 = (v24 + v6 + v17) & ~v6;
  v19 = (v18 + v29 + v13) & ~v13;
  (*(v10 + 8))(v0 + v17, v28);
  v22(v0 + v18, v32);
  (*(v12 + 8))(v0 + v19, v27);

  return MEMORY[0x2821FE8E8](v0, ((v21 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v16 | 7);
}

uint64_t sub_20B538000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C135C34();
  *a1 = result;
  return result;
}

uint64_t sub_20B5380D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_20C134F24();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_20C1352E4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[11];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[12]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_20B538334(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_20C134F24();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = sub_20C1352E4();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[10];
          }

          else
          {
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[12]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[11];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B5386E4()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B538EF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B538F34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B538F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5390B4()
{
  v1 = type metadata accessor for MarketingUserInterfaceConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_20C136354();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + v1[8];
  type metadata accessor for MarketingUserInterfaceResource();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_11;
      }

      v9 = sub_20C138894();
      (*(*(v9 - 8) + 8))(v7, v9);
      v10 = &unk_27C764260;
    }

    else
    {
      v12 = sub_20C132C14();
      (*(*(v12 - 8) + 8))(v7, v12);
      v10 = &unk_27C764258;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = sub_20C132C14();
    (*(*(v13 - 8) + 8))(v7, v13);
    v10 = &unk_27C767A30;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v11 = sub_20C132C14();
    (*(*(v11 - 8) + 8))(v7, v11);
  }

LABEL_11:
  v14 = v1[10];
  v15 = sub_20C139354();
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B53939C()
{
  v1 = *(sub_20C135E24() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v6 = sub_20C137654();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else if (EnumCaseMultiPayload == 2 || !EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B539C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C132C14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B539CEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132C14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B539D98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B539DD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B539E18()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B539E58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B539EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccountSettingLink();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20B539F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccountSettingLink();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20B53A02C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53A064()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53A198()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53A258()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B53A338()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53A398()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53A3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B53A458(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B53A4E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53A51C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53A558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B53A5EC()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B53AE2C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B53B678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53B6B0()
{
  sub_20B583F4C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B53B7BC()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 40) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B53C03C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C0B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C144()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C17C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C20C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C244()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C27C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C2BC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B53C2F4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B53C334()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B53C374()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C3AC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B53C3F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C49C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133D84();
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

uint64_t sub_20B53C590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C133D84();
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

uint64_t sub_20B53C648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53C73C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B53C79C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C924()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53C95C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53C99C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53C9DC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53CA14()
{
  v1 = *(type metadata accessor for DatePickerItem() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_20C133594();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B53CB08()
{

  sub_20B786774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B53CB58()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B53D368()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53D3A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53D414()
{
  v1 = sub_20C139144();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B53D4E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B53D590()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B53D610(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20C132EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20B53D6BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B53D760()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53D798()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53D7D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53D848()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53D880()
{
  v1 = sub_20C134514();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B53D9B8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53D9F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53DA30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DA68()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 3uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B53DAC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53DB14()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B53DB4C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DB84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DBBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53DC0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DC44()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DC94()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53DCCC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53DE00()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53DEC0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B53DFA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53E000()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53E04C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53E084()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53E0BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C137EA4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_20C13ABF4();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_20B53E1C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C137EA4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_20C13ABF4();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_20B53E2D8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53E310()
{
  v1 = sub_20C136864();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B53E3E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53E420()
{
  sub_20B7C3288(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B53E4AC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53E55C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C135524();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20C1365F4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20B53E6B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20C135524();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20C1365F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B53E7BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20C1365F4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_20B53E874(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_20C1365F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t *sub_20B53E91C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16) < 0;
  if (*(result + 16) < 0)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_20B53E93C()
{
  v1 = sub_20C1365F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53EA1C()
{
  v1 = (type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_20C135524();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = v1[8];
  v8 = sub_20C1365F4();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B53EB7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53EBB4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53EC14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B53ECBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53ECF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53ED34()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B53ED6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53EDB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53EDF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53EE74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53EEAC()
{
  v1 = sub_20C134EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B53EF70(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_20B53F02C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B53F0D8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F110()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53F150()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F188()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B53F1C4()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_20B53F214()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B53F268()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F2A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53F2D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53F318()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B53F358()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F390()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53F4C4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B53F584()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B53F664()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53F6C4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53F704()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F744()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53F77C()
{
  v1 = (type metadata accessor for ButtonAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ButtonAction.ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v13 = sub_20C134284();
        (*(*(v13 - 8) + 8))(v5, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);

        goto LABEL_44;
      }

      if (EnumCaseMultiPayload != 12)
      {
        if (EnumCaseMultiPayload != 13)
        {
          goto LABEL_44;
        }

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
        v9 = sub_20C132C14();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v26 = sub_20C1344C4();
        (*(*(v26 - 8) + 8))(v5, v26);
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v28 = *(v27 + 48);
      v29 = sub_20C135C54();
      v30 = *(v29 - 8);
      if (!(*(v30 + 48))(v5 + v28, 1, v29))
      {
        (*(v30 + 8))(v5 + v28, v29);
      }

      v8 = *(v27 + 64);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {

          goto LABEL_44;
        }

        v7 = sub_20C138B94();
        (*(*(v7 - 8) + 8))(v5, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
        v9 = sub_20C138894();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v21 = sub_20C1344C4();
        (*(*(v21 - 8) + 8))(v5, v21);
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v23 = *(v22 + 64);
      v24 = sub_20C135C54();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
        (*(v25 + 8))(v5 + v23, v24);
      }

      v8 = *(v22 + 80);
    }

    v9 = sub_20C137254();
LABEL_43:
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v12 = sub_20C134014();
        break;
      case 4:
        v12 = sub_20C133954();
        break;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_44;
    }

    (*(*(v12 - 8) + 8))(v5, v12);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_44;
      }

LABEL_14:

      goto LABEL_44;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v15 = *(v14 + 48);
    v16 = sub_20C138B94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }

    v18 = *(v14 + 64);
    v19 = sub_20C138894();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
    v10 = sub_20C135814();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5, 1, v10))
    {
      (*(v11 + 8))(v5, v10);
    }
  }

LABEL_44:

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20B53FE0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53FE60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53FE98()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B53FF08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B53FF40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53FF80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B53FFB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B540064()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5400A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5400E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540118()
{
  sub_20B7FC25C();
}

uint64_t sub_20B54017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C1352E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B540228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C1352E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B540364()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54039C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5403F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540430()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54047C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5404DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B540514()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B540570()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5405E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540620()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B540660()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5406A8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5406E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B540718()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5408C0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540904()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54093C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B540974()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5409B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5409E8()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C135C54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_20B540B50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540B88()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C135C54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_20B540CF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B540D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B540DE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540E20()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B540E58()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B540F8C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54104C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54112C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54118C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5411D4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54120C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B541340()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B541400()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B5414E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B541540()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B541588()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5415C0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5416F4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5417B4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B541894()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5418F4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54193C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20B541A78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20B541BB4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B541BEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B541C24()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B541C6C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B541CB4()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B541D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B541D44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B541D7C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B541DBC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B541DF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B541E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B541EE8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B541F28()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B542014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542078()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B5421B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B542224()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54225C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542298()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5422D0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B542404()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5424C4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B5425A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542604()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542650()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542688()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5427BC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54287C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54295C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5429BC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542A04()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542A3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B542AC0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542AF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542B34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B542B74()
{

  v1 = *(v0 + 64);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_20B542BE0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B542C28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542C60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542CA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542D08()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B542D7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542E14()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B542E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B542F00(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B542F90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B542FC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54303C()
{
  v1 = sub_20C1362B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B543144()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54317C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5431B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B5431EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B543224()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5432D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B543310()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B543348()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B543384(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_20B543500(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B543760()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5437D8()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v0;
    v27 = v2;
    v28 = (v2 + 48) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v46;
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v35);

  return MEMORY[0x2821FE8E8](v0, v35 + 40, v2 | 7);
}

uint64_t sub_20B54401C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B544054()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B544094()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5440CC()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 48) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_20B544920()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B544958()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B544998()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v46;
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v35 + 9, v2 | 7);
}

uint64_t sub_20B5451BC()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_20B5451FC()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B545A28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for NavigationRequest();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v64 = *(*(v5 - 8) + 64);

  v8 = v0 + v3;
  v9 = type metadata accessor for WorkoutSessionConfiguration();
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v10 = sub_20C1344C4();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = v9[5];
    v12 = sub_20C137254();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
    v13 = v9[7];
    sub_20C13A484();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_20C137EA4();
      (*(*(v14 - 8) + 8))(v8 + v13, v14);
    }

    else
    {
    }

    v15 = v9[9];
    v16 = sub_20C13BA24();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v8 + v15, 1, v16))
    {
      (*(v17 + 8))(v8 + v15, v16);
    }

    v18 = v9[10];
    v19 = sub_20C134A44();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v8 + v18, 1, v19))
    {
      (*(v20 + 8))(v8 + v18, v19);
    }

    if (*(v8 + v9[11] + 8) >= 0xCuLL)
    {
    }

    v21 = v9[12];
    v22 = sub_20C135C54();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v8 + v21, 1, v22))
    {
      (*(v23 + 8))(v8 + v21, v22);
    }
  }

  v24 = (v0 + v7);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_15;
    case 1u:
      v27 = sub_20C132C14();
      (*(*(v27 - 8) + 8))(v0 + v7, v27);
      v26 = &unk_27C763FC0;
      goto LABEL_30;
    case 2u:
      v28 = sub_20C138894();
      goto LABEL_24;
    case 3u:

      goto LABEL_15;
    case 4u:
      v34 = sub_20C1387E4();
      (*(*(v34 - 8) + 8))(v0 + v7, v34);
      v26 = &unk_27C7710E0;
      goto LABEL_30;
    case 5u:

      break;
    case 6u:
      v25 = sub_20C138894();
      (*(*(v25 - 8) + 8))(v0 + v7, v25);
      v26 = &unk_27C763FD0;
LABEL_30:
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v26) + 48);
      v36 = sub_20C1388F4();
      (*(*(v36 - 8) + 8))(v24 + v35, v36);
      break;
    case 9u:
      v28 = sub_20C132C14();
      goto LABEL_24;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_15;
    case 0xFu:
      v28 = sub_20C138204();
LABEL_24:
      (*(*(v28 - 8) + 8))(v0 + v7, v28);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = sub_20C1344C4();
        (*(*(v29 - 8) + 8))(v0 + v7, v29);
        v30 = v9[5];
        v31 = sub_20C137254();
        (*(*(v31 - 8) + 8))(v24 + v30, v31);
        v32 = v9[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = sub_20C137EA4();
          (*(*(v33 - 8) + 8))(v24 + v32, v33);
        }

        else
        {
        }

        v53 = v9[9];
        v54 = sub_20C13BA24();
        v55 = *(v54 - 8);
        if (!(*(v55 + 48))(v24 + v53, 1, v54))
        {
          (*(v55 + 8))(v24 + v53, v54);
        }

        v56 = v9[10];
        v57 = sub_20C134A44();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v24 + v56, 1, v57))
        {
          (*(v58 + 8))(v24 + v56, v57);
        }

        if (*(v24 + v9[11] + 8) >= 0xC)
        {
        }

        v59 = v9[12];
        v60 = sub_20C135C54();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(v24 + v59, 1, v60))
        {
          (*(v61 + 8))(v24 + v59, v60);
        }
      }

LABEL_15:

      break;
    default:
      break;
  }

  v37 = v24 + *(v5 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v41 = sub_20C1344C4();
      v42 = *(v41 - 8);
      if (!(*(v42 + 48))(&v37[v40], 1, v41))
      {
        (*(v42 + 8))(&v37[v40], v41);
      }

      break;
    case 4:

      break;
    case 3:
      v39 = sub_20C139144();
      (*(*(v39 - 8) + 8))(v37, v39);
      break;
  }

  v43 = v24 + *(v5 + 24);
  type metadata accessor for NavigationSource();
  v44 = swift_getEnumCaseMultiPayload();
  if (v44 == 1)
  {
    v52 = sub_20C135024();
    (*(*(v52 - 8) + 8))(v43, v52);
  }

  else if (!v44)
  {
    v63 = v0;
    v45 = v6;
    v46 = v2;
    v47 = v7;
    v48 = sub_20C132C14();
    v49 = *(v48 - 8);
    v50 = *(v49 + 8);
    v50(v43, v48);
    v51 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v49 + 48))(&v43[v51], 1, v48))
    {
      v50(&v43[v51], v48);
    }

    v7 = v47;
    v2 = v46;
    v6 = v45;
    v0 = v63;
  }

  return MEMORY[0x2821FE8E8](v0, ((((v64 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_20B5465B4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5465F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54662C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54666C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B54670C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B546744()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B54677C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5467E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54682C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54686C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5468AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5468EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B546924()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5469EC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B546A38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B546A70()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B5472A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5472DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54731C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B547354()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B5473A4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B5473FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B547488()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  v46 = *(v2 + 80);
  v3 = (v46 + 56) & ~v46;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationRequest();
  v44 = *(*(v5 - 8) + 80);
  v43 = *(*(v5 - 8) + 64);

  swift_unknownObjectRelease();

  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v45 = (v3 + v4 + v44) & ~v44;
  v7 = (v0 + v45);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v6(v7, v1);
      v9 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      break;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v7, v17);
      v9 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v8 = sub_20C138894();
      (*(*(v8 - 8) + 8))(v7, v8);
      v9 = &unk_27C763FD0;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v9) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v7 + v18, v19);
      break;
    case 9u:
      v6(v7, v1);
      break;
    case 0xCu:

      break;
    case 0xEu:

      break;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v7, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v1;
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v7, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration();
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v7 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v7 + v15, v16);
        }

        else
        {
        }

        v32 = v12[9];
        v33 = sub_20C13BA24();
        v34 = *(v33 - 8);
        if (!(*(v34 + 48))(v7 + v32, 1, v33))
        {
          (*(v34 + 8))(v7 + v32, v33);
        }

        v35 = v12[10];
        v36 = sub_20C134A44();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v7 + v35, 1, v36))
        {
          (*(v37 + 8))(v7 + v35, v36);
        }

        if (*(v7 + v12[11] + 8) >= 0xC)
        {
        }

        v38 = v12[12];
        v39 = sub_20C135C54();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v7 + v38, 1, v39))
        {
          (*(v40 + 8))(v7 + v38, v39);
        }

        v1 = v42;
      }

      else
      {
LABEL_2:
      }

      break;
    default:
      break;
  }

  v20 = v6;
  v21 = v1;
  v22 = v7 + *(v5 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v26 = sub_20C1344C4();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v22[v25], 1, v26))
      {
        (*(v27 + 8))(&v22[v25], v26);
      }

      break;
    case 4:

      break;
    case 3:
      v24 = sub_20C139144();
      (*(*(v24 - 8) + 8))(v22, v24);
      break;
  }

  v28 = v7 + *(v5 + 24);
  type metadata accessor for NavigationSource();
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 == 1)
  {
    v31 = sub_20C135024();
    (*(*(v31 - 8) + 8))(v28, v31);
  }

  else if (!v29)
  {
    v20(v28, v21);
    v30 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v2 + 48))(&v28[v30], 1, v21))
    {
      v20(&v28[v30], v21);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v45 + v43, v46 | v44 | 7);
}

uint64_t sub_20B547CE0()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  v46 = *(v2 + 80);
  v3 = (v46 + 24) & ~v46;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationRequest();
  v44 = *(*(v5 - 8) + 80);
  v43 = *(*(v5 - 8) + 64);

  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v45 = (v3 + v4 + v44) & ~v44;
  v7 = (v0 + v45);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v6(v7, v1);
      v9 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      break;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v7, v17);
      v9 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v8 = sub_20C138894();
      (*(*(v8 - 8) + 8))(v7, v8);
      v9 = &unk_27C763FD0;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v9) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v7 + v18, v19);
      break;
    case 9u:
      v6(v7, v1);
      break;
    case 0xCu:

      break;
    case 0xEu:

      break;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v7, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v1;
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v7, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration();
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v7 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v7 + v15, v16);
        }

        else
        {
        }

        v32 = v12[9];
        v33 = sub_20C13BA24();
        v34 = *(v33 - 8);
        if (!(*(v34 + 48))(v7 + v32, 1, v33))
        {
          (*(v34 + 8))(v7 + v32, v33);
        }

        v35 = v12[10];
        v36 = sub_20C134A44();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v7 + v35, 1, v36))
        {
          (*(v37 + 8))(v7 + v35, v36);
        }

        if (*(v7 + v12[11] + 8) >= 0xC)
        {
        }

        v38 = v12[12];
        v39 = sub_20C135C54();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v7 + v38, 1, v39))
        {
          (*(v40 + 8))(v7 + v38, v39);
        }

        v1 = v42;
      }

      else
      {
LABEL_2:
      }

      break;
    default:
      break;
  }

  v20 = v6;
  v21 = v1;
  v22 = v7 + *(v5 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v26 = sub_20C1344C4();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v22[v25], 1, v26))
      {
        (*(v27 + 8))(&v22[v25], v26);
      }

      break;
    case 4:

      break;
    case 3:
      v24 = sub_20C139144();
      (*(*(v24 - 8) + 8))(v22, v24);
      break;
  }

  v28 = v7 + *(v5 + 24);
  type metadata accessor for NavigationSource();
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 == 1)
  {
    v31 = sub_20C135024();
    (*(*(v31 - 8) + 8))(v28, v31);
  }

  else if (!v29)
  {
    v20(v28, v21);
    v30 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v2 + 48))(&v28[v30], 1, v21))
    {
      v20(&v28[v30], v21);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v45 + v43, v46 | v44 | 7);
}

uint64_t sub_20B548528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5485C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B548618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54868C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B5486C4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B548704()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54873C()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B548784()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548810()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548848()
{
  swift_unknownObjectRelease();

  sub_20B8A9304(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_20B54889C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B5488DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548918()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B548998()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B548A78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548AB0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B548AF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B548B44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548B90()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548C48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B548CD8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B548D30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548D68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548DA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548DE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548E24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548ED4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B548F14()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B548F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B549018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B5490D4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5491F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54922C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54926C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5492A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5492DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549314()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54934C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B54938C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5493DC()
{

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t sub_20B549428()
{
  v1 = sub_20C134314();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B549534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54956C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5495A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549618()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B549690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5496DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B549738()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549770()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5498A4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B549964()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B549A44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B549AA4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B549AE4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B549B24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549B5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B549BAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B549BFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549C34()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B549CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_20C13BDF4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20B549D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_20C13BDF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20B549E5C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B549E94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B549ED4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B549F30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B549FD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54A010()
{
  v1 = type metadata accessor for NavigationSharingURLInfo();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v9 = *(*(v1 - 8) + 64);

  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = *(v1 + 20);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v9, v2 | 7);
}

uint64_t sub_20B54A18C()
{
  v1 = type metadata accessor for NavigationSharingURLInfo();
  v52 = *(*(v1 - 8) + 80);
  v2 = (v52 + 16) & ~v52;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for NavigationRequest();
  v51 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v51) & ~v51;
  v50 = *(*(v4 - 8) + 64);
  v6 = v0 + v2;
  v7 = sub_20C132C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = *(v1 + 20);
  v48 = *(v8 + 48);
  if (!v48(v6 + v10, 1, v7))
  {
    v9(v6 + v10, v7);
  }

  v11 = (v0 + v5);
  type metadata accessor for NavigationResource();
  v49 = v9;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_4;
    case 1u:
      v9(v0 + v5, v7);
      v13 = &unk_27C763FC0;
      goto LABEL_19;
    case 2u:
      v14 = sub_20C138894();
      goto LABEL_13;
    case 3u:

      break;
    case 4u:
      v21 = sub_20C1387E4();
      (*(*(v21 - 8) + 8))(v0 + v5, v21);
      v13 = &unk_27C7710E0;
      goto LABEL_19;
    case 5u:

      break;
    case 6u:
      v12 = sub_20C138894();
      (*(*(v12 - 8) + 8))(v0 + v5, v12);
      v13 = &unk_27C763FD0;
LABEL_19:
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v13) + 48);
      v23 = sub_20C1388F4();
      (*(*(v23 - 8) + 8))(v11 + v22, v23);
      break;
    case 9u:
      v9(v0 + v5, v7);
      break;
    case 0xCu:

      break;
    case 0xEu:

      break;
    case 0xFu:
      v14 = sub_20C138204();
LABEL_13:
      (*(*(v14 - 8) + 8))(v0 + v5, v14);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_20C1344C4();
        (*(*(v15 - 8) + 8))(v0 + v5, v15);
        v16 = type metadata accessor for WorkoutSessionConfiguration();
        v17 = v16[5];
        v18 = sub_20C137254();
        (*(*(v18 - 8) + 8))(v11 + v17, v18);
        v19 = v16[7];
        sub_20C13A484();
        v47 = v5;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v20 = sub_20C137EA4();
          (*(*(v20 - 8) + 8))(v11 + v19, v20);
        }

        else
        {
        }

        v37 = v16[9];
        v38 = sub_20C13BA24();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v11 + v37, 1, v38))
        {
          (*(v39 + 8))(v11 + v37, v38);
        }

        v40 = v16[10];
        v41 = sub_20C134A44();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v11 + v40, 1, v41))
        {
          (*(v42 + 8))(v11 + v40, v41);
        }

        if (*(v11 + v16[11] + 8) >= 0xC)
        {
        }

        v43 = v16[12];
        v44 = sub_20C135C54();
        v45 = *(v44 - 8);
        if (!(*(v45 + 48))(v11 + v43, 1, v44))
        {
          (*(v45 + 8))(v11 + v43, v44);
        }

        v5 = v47;
      }

      else
      {
LABEL_4:
      }

      break;
    default:
      break;
  }

  v24 = v7;
  v25 = v11 + *(v4 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v5;
  v28 = v1;
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v31 = sub_20C1344C4();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(&v25[v30], 1, v31))
      {
        (*(v32 + 8))(&v25[v30], v31);
      }

      break;
    case 4:

      break;
    case 3:
      v29 = sub_20C139144();
      (*(*(v29 - 8) + 8))(v25, v29);
      break;
  }

  v33 = v11 + *(v4 + 24);
  type metadata accessor for NavigationSource();
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 == 1)
  {
    v36 = sub_20C135024();
    (*(*(v36 - 8) + 8))(v33, v36);
  }

  else if (!v34)
  {
    v49(v33, v24);
    v35 = *(v28 + 20);
    if (!v48(&v33[v35], 1, v24))
    {
      v49(&v33[v35], v24);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v27 + v50, v52 | v51 | 7);
}

uint64_t sub_20B54AA5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54AAF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54AB6C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B54ABE8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54AC20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54AC58()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54AC90()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54ADC4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54AE84()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54AF64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54AFC4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54B004()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54B044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B54B110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B54B1CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B204()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B54B23C()
{
  v1 = sub_20C137724();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54B300()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54B33C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B54B374()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B3AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54B3EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54B4B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B4F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B588()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54B5C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54B628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B6B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B6EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54B72C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 15);
}

uint64_t sub_20B54B764()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B79C()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54B824()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54B85C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54B990()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54BA50()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54BB30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54BB90()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54BBD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54BC10()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B54BC60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54BC98()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B54BCE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B54BD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B54BD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B54BE0C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54BEEC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B54BF30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54BF68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54BFAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54BFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B54C090()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54C0C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54C108()
{
  v1 = sub_20C138204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54C1CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B54C208()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54C258()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54C2C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20B54C308()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView) image];

  return v1;
}

uint64_t sub_20B54C348()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C390()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C3C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C400()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54C440()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C478()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B54C4E0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B54C520()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B54C558()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_20B54C5A8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B54C680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54C6C0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54C6F8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54C82C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54C8EC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54C9CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54CA2C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54CA74()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54CAAC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54CBE0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54CCA0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54CD80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54CDE0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54CE28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54CE60()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B54CE98()
{
  v1 = sub_20C139684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54CF5C()
{
  v1 = sub_20C139684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54D03C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D07C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D0BC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B54D0F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54D13C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D18C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D1CC()
{
  v1 = sub_20C132FD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54D298()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_20B54D398()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54D3D0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54D504()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54D5C4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54D6A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D704()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D744()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D788()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54D7C8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54D800()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54D934()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54D9F4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B54DAD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54DB34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54DB7C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54DCA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54DCE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54DD84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54DDBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B54DE68()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54DEA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54DEE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54DF1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54DF54()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for NavigationSource() - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = v0 + v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_20C135024();
    (*(*(v12 - 8) + 8))(v0 + v8, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v9(v0 + v8, v1);
    v14 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v2 + 48))(v10 + v14, 1, v1))
    {
      v9(v10 + v14, v1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v15 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_20B54E180()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for NavigationSource() - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = v0 + v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_20C135024();
    (*(*(v12 - 8) + 8))(v0 + v8, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v9(v0 + v8, v1);
    v14 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v2 + 48))(v10 + v14, 1, v1))
    {
      v9(v10 + v14, v1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v15, v3 | v7 | 7);
}

uint64_t sub_20B54E38C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54E3D8()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B54EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1357B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B54EC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1357B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B54ECC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B54ED10()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B54ED58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134EC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B54EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134EC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B54EE34()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54EE6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54EEA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54EF14()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54EF4C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B54EFA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B54EFE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54F318@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20B54F6AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54F7AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54F7E4()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B54F8AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_20B54F8FC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B54F97C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54F9B4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_20C133A64();
  *a1 = result;
  return result;
}

uint64_t sub_20B54FA20()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B54FA58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54FA90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54FAD0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_20C136354();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for MarketingUserInterfaceResource();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_20C139354();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_20B54FC3C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_20C136354();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MarketingUserInterfaceResource();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_20C139354();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20B54FDA8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B54FE08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54FE40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54FE78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B54FEE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B54FF34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B54FFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B55002C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550064()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B550198()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B550258()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B550338()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B550398()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5503E0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B550448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B550488()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5504C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5504F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B550544()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B550600()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B550688()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5506D0()
{
  v1 = (type metadata accessor for WorkoutPlanScheduleMetadata() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_20C132E94();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5507C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5507F8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B550838()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B550878()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5508C0()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5509A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5509DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550A14()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B550A5C()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B550B20()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550B98()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550BD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B550C64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550C9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B550D2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B550D88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B550DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B550E64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B550F18()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B550F50()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B550F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B551064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B551120()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551158()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551190()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5511C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B551208()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5512AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551300()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551338()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B5513E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551430()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551484()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5514BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B551524(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137374();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B551590(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137374();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B551600()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551678()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5516B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5516F0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B5517A4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5517DC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B551910()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5519D0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B551AB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551B10()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551B58()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551B90()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B551BC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551C00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551C9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B551CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C133A54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20B551D0C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551D50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551DB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551E18()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B551E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B551EC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B551F54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B551F8C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B551FEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B552040()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B552080()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5520C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B552104()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B552140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B55219C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B552214()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B552268()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5522A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B553090()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5530C8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5531FC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5532BC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55339C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5533FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B553444(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NavigationResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for NavigationIntent();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for NavigationSource();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7]);
        if (v16 >= 3)
        {
          return v16 - 2;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20B553594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for NavigationResource();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for NavigationIntent();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for NavigationSource();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B5536E4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B553728()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5537B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B553804()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B553848()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B553888()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5538C0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B5538F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20C132EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20B5539A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B553A68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B553AA0()
{
  v1 = (type metadata accessor for ButtonAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ButtonAction.ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v13 = sub_20C134284();
        (*(*(v13 - 8) + 8))(v5, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);

        goto LABEL_44;
      }

      if (EnumCaseMultiPayload != 12)
      {
        if (EnumCaseMultiPayload != 13)
        {
          goto LABEL_44;
        }

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
        v9 = sub_20C132C14();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v26 = sub_20C1344C4();
        (*(*(v26 - 8) + 8))(v5, v26);
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v28 = *(v27 + 48);
      v29 = sub_20C135C54();
      v30 = *(v29 - 8);
      if (!(*(v30 + 48))(v5 + v28, 1, v29))
      {
        (*(v30 + 8))(v5 + v28, v29);
      }

      v8 = *(v27 + 64);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {

          goto LABEL_44;
        }

        v7 = sub_20C138B94();
        (*(*(v7 - 8) + 8))(v5, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
        v9 = sub_20C138894();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v21 = sub_20C1344C4();
        (*(*(v21 - 8) + 8))(v5, v21);
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v23 = *(v22 + 64);
      v24 = sub_20C135C54();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
        (*(v25 + 8))(v5 + v23, v24);
      }

      v8 = *(v22 + 80);
    }

    v9 = sub_20C137254();
LABEL_43:
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v12 = sub_20C134014();
        break;
      case 4:
        v12 = sub_20C133954();
        break;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_44;
    }

    (*(*(v12 - 8) + 8))(v5, v12);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_44;
      }

LABEL_14:

      goto LABEL_44;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v15 = *(v14 + 48);
    v16 = sub_20C138B94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }

    v18 = *(v14 + 64);
    v19 = sub_20C138894();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
    v10 = sub_20C135814();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5, 1, v10))
    {
      (*(v11 + 8))(v5, v10);
    }
  }

LABEL_44:

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}