uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12PhotosUICore30PXAvailableSizeReadingModifier33_3D7EADE60CC0AB39AFB17DCCF43BFE61LLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1A5248804();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1A4801F54()
{
  result = qword_1EB179038[0];
  if (!qword_1EB179038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179038);
  }

  return result;
}

uint64_t sub_1A4801FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B414();
  result = sub_1A52482B4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return result;
}

void *sub_1A4802030(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_1A4802090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = sub_1A524A064();
  v8 = sub_1A524BC74();
  v10 = v9;
  sub_1A48028C4(0, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  sub_1A4802658();
  v13 = a2 + *(v12 + 36);
  *v13 = sub_1A480329C;
  *(v13 + 8) = 0;
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10;
  v19 = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  *(v14 + 32) = *(v2 + 1);
  *(v14 + 48) = *(v2 + 32);
  sub_1A4802CEC();
  v16 = (a2 + *(v15 + 36));
  *v16 = sub_1A48032A0;
  v16[1] = v14;
  sub_1A3DB8180(&v19, &v18);
}

void sub_1A4802210()
{
  if (!qword_1EB142D08)
  {
    sub_1A48028C4(255, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
    sub_1A48022B0();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142D08);
    }
  }
}

void sub_1A48022B0()
{
  if (!qword_1EB142D10)
  {
    sub_1A4802344();
    sub_1A4802FB8(&qword_1EB142D40, sub_1A4802344);
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142D10);
    }
  }
}

void sub_1A4802344()
{
  if (!qword_1EB142D18)
  {
    sub_1A480284C(255, &qword_1EB142D20, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    sub_1A4802428();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142D18);
    }
  }
}

unint64_t sub_1A48023D4()
{
  result = qword_1EB1D5230[0];
  if (!qword_1EB1D5230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D5230);
  }

  return result;
}

unint64_t sub_1A4802428()
{
  result = qword_1EB142D30;
  if (!qword_1EB142D30)
  {
    sub_1A480284C(255, &qword_1EB142D20, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey);
    sub_1A48024D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D30);
  }

  return result;
}

unint64_t sub_1A48024D4()
{
  result = qword_1EB142D38;
  if (!qword_1EB142D38)
  {
    sub_1A48028C4(255, &qword_1EB142D28, sub_1A48023D4, &type metadata for PXAvailableSizeReadingModifier.PXAvailableSizeKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D38);
  }

  return result;
}

void sub_1A4802568()
{
  if (!qword_1EB142D48)
  {
    sub_1A4802210();
    sub_1A4802D78(255, &qword_1EB142D50, sub_1A48023D4);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142D48);
    }
  }
}

void sub_1A48025F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4802658()
{
  if (!qword_1EB1287C0)
  {
    sub_1A48028C4(255, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
    sub_1A48026F8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1287C0);
    }
  }
}

void sub_1A48026F8()
{
  if (!qword_1EB127FD0)
  {
    sub_1A480275C();
    sub_1A4802ABC();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127FD0);
    }
  }
}

void sub_1A480275C()
{
  if (!qword_1EB128748)
  {
    sub_1A48027BC();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128748);
    }
  }
}

void sub_1A48027BC()
{
  if (!qword_1EB1288F8)
  {
    sub_1A480284C(255, &qword_1EB1285F8, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    sub_1A4802980();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1288F8);
    }
  }
}

void sub_1A480284C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A48028C4(255, a3, a4, a5, MEMORY[0x1E6980750]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A48028C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A480292C()
{
  result = qword_1EB1790C8[0];
  if (!qword_1EB1790C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1790C8);
  }

  return result;
}

unint64_t sub_1A4802980()
{
  result = qword_1EB128600;
  if (!qword_1EB128600)
  {
    sub_1A480284C(255, &qword_1EB1285F8, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey);
    sub_1A4802A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128600);
  }

  return result;
}

unint64_t sub_1A4802A2C()
{
  result = qword_1EB127A60;
  if (!qword_1EB127A60)
  {
    sub_1A48028C4(255, &qword_1EB127A58, sub_1A480292C, &type metadata for PXAvailableSizeReadingModifierInfoHack.PXAvailableSizeKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127A60);
  }

  return result;
}

unint64_t sub_1A4802ABC()
{
  result = qword_1EB128750;
  if (!qword_1EB128750)
  {
    sub_1A480275C();
    sub_1A4802FB8(&qword_1EB128900, sub_1A48027BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128750);
  }

  return result;
}

uint64_t objectdestroyTm_79()
{

  return swift_deallocObject();
}

uint64_t sub_1A4802BAC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  v17 = v6;
  v11 = v6;
  v12 = v5;
  v13 = *(v1 + 32);
  v14 = *(v1 + 48);

  sub_1A3DB8180(&v17, &v8);
  sub_1A48025F4(0, &qword_1EB127318, sub_1A3E316EC, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v8);
  if (v10)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v4 & 1) != 0 || v8 != v2 || v9 != v3)
  {
LABEL_5:
    v11 = v6;
    v12 = v5;
    v13 = v15;
    v14 = v16;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    sub_1A524B904();
  }

LABEL_6:
  sub_1A3DB81DC(&v17);
}

void sub_1A4802CEC()
{
  if (!qword_1EB128448)
  {
    sub_1A4802658();
    sub_1A4802D78(255, &qword_1EB127A90, sub_1A480292C);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128448);
    }
  }
}

void sub_1A4802D78(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    sub_1A3EBA740();
    v4 = sub_1A5249D24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4802E04()
{
  result = qword_1EB142D58;
  if (!qword_1EB142D58)
  {
    sub_1A4802568();
    sub_1A4803140(&qword_1EB142D60, sub_1A4802210, sub_1A4802EF4, sub_1A4802F84);
    sub_1A4803000(&qword_1EB142D78, &qword_1EB142D50, sub_1A48023D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D58);
  }

  return result;
}

unint64_t sub_1A4802EF4()
{
  result = qword_1EB142D68;
  if (!qword_1EB142D68)
  {
    sub_1A48028C4(255, &qword_1EB142D00, sub_1A4801E90, &type metadata for PXAvailableSizeReadingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142D68);
  }

  return result;
}

uint64_t sub_1A4802FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4803000(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4802D78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4803050()
{
  result = qword_1EB128450;
  if (!qword_1EB128450)
  {
    sub_1A4802CEC();
    sub_1A4803140(&qword_1EB1287C8, sub_1A4802658, sub_1A48031CC, sub_1A480325C);
    sub_1A4803000(&qword_1EB127A98, &qword_1EB127A90, sub_1A480292C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128450);
  }

  return result;
}

uint64_t sub_1A4803140(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A48031CC()
{
  result = qword_1EB127C00;
  if (!qword_1EB127C00)
  {
    sub_1A48028C4(255, &qword_1EB127BF8, sub_1A4801F54, &type metadata for PXAvailableSizeReadingModifierInfoHack, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C00);
  }

  return result;
}

id StoryDefaultAutoCurationProducer.init(curationContext:)(uint64_t a1)
{
  v2 = v1;
  sub_1A3EBECA4(a1, &v19);
  if (!v20)
  {
    sub_1A3C35B00(a1);
    sub_1A3C35B00(&v19);
    goto LABEL_15;
  }

  sub_1A3C57128(&v19, v17);
  sub_1A3C2F0BC(v17, &v19);
  sub_1A4803628();
  if (!swift_dynamicCast())
  {
    if (qword_1EB1D52C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB1D52C8);
    sub_1A3C2F0BC(v17, &v19);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v11 = 136315138;
      sub_1A3C2F0BC(&v19, v18);
      sub_1A524C714();
      __swift_destroy_boxed_opaque_existential_0(&v19);
      sub_1A3C2EF94();
    }

    sub_1A3C35B00(a1);
    __swift_destroy_boxed_opaque_existential_0(&v19);
    __swift_destroy_boxed_opaque_existential_0(v17);
    goto LABEL_15;
  }

  v14 = v18[0];
  v4 = *&v18[0];
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5 || !v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
    goto LABEL_13;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v18, ObjectType, v6);
  sub_1A3C57128(v18, &v19);
  sub_1A3C2F0BC(&v19, v18);
  LOBYTE(v6) = sub_1A480531C(v18);
  sub_1A3C35B00(v18);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  __swift_destroy_boxed_opaque_existential_0(v17);
  if ((v6 & 1) == 0)
  {
LABEL_13:
    *&v2[OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext] = v14;
    v15.receiver = v2;
    v15.super_class = type metadata accessor for StoryDefaultAutoCurationProducer();
    v12 = objc_msgSendSuper2(&v15, sel_init);
    sub_1A3C35B00(a1);
    return v12;
  }

  sub_1A3C35B00(a1);
  swift_unknownObjectRelease();
LABEL_15:
  type metadata accessor for StoryDefaultAutoCurationProducer();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A4803628()
{
  result = qword_1EB12A0D8;
  if (!qword_1EB12A0D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12A0D8);
  }

  return result;
}

uint64_t sub_1A48036F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A480372C, 0, 0);
}

uint64_t sub_1A480372C()
{
  if ([*(v0 + 64) isCancelled])
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (qword_1EB1D52C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5246F24();
  *(v0 + 120) = __swift_project_value_buffer(v3, qword_1EB1D52C8);
  swift_unknownObjectRetain();
  v4 = sub_1A5246F04();
  v5 = sub_1A524D234();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = [v7 count];
    swift_unknownObjectRelease();
    *(v8 + 12) = 2080;
    *(v0 + 56) = v7;
    sub_1A40091D8();
    swift_unknownObjectRetain();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  v9 = sub_1A5246F04();
  v10 = sub_1A524D234();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 80);
  if (v11)
  {
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 134218242;
    *(v13 + 4) = [v12 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 2080;
    *(v0 + 48) = v12;
    sub_1A40091D8();
    swift_unknownObjectRetain();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  swift_unknownObjectRelease();

  v14 = *(v0 + 88);
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  *(v0 + 128) = v15;
  if (v15 && v14)
  {
    v16 = v15;
    *(v0 + 136) = swift_getObjectType();
    *(v0 + 194) = 5;
    *(v0 + 144) = *(v16 + 32);
    *(v0 + 152) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x3F65000000000000;
    swift_unknownObjectRetain();
    v18 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A4803D24, v18, v17);
  }

  else
  {
    swift_unknownObjectRetain();
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v26 = *(v0 + 88);
      v21 = swift_slowAlloc();
      swift_slowAlloc();
      *v21 = 136315138;
      *(v0 + 32) = v26;
      sub_1A4803628();
      swift_unknownObjectRetain();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    if ([*(v0 + 64) isCancelled])
    {
      goto LABEL_2;
    }

    v27 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 160) = ObjectType;
    v25 = (*(v27 + 16) + **(v27 + 16));
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_1A4803F54;
    v24 = *(v0 + 96);

    return v25(v0 + 192, ObjectType, v24);
  }
}

uint64_t sub_1A4803D24()
{
  v7 = v0;
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[10];
  v1(v0[9], v0 + 194, v2, v3);
  v6 = 6;
  v1(v4, &v6, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A4803DD8, 0, 0);
}

uint64_t sub_1A4803DD8()
{
  swift_unknownObjectRelease();
  if ([*(v0 + 64) isCancelled])
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v7 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 160) = ObjectType;
    v6 = (*(v7 + 16) + **(v7 + 16));
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1A4803F54;
    v5 = *(v0 + 96);

    return v6(v0 + 192, ObjectType, v5);
  }
}

uint64_t sub_1A4803F54()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4804050, 0, 0);
}

uint64_t sub_1A4804050()
{
  v16 = v0;
  v1 = *(v0 + 192);
  *(v0 + 195) = v1;
  swift_unknownObjectRetain();
  v2 = sub_1A5246F04();
  v3 = sub_1A524D234();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136315394;
    *(v0 + 193) = v1;
    sub_1A4805A94();
    sub_1A524EA44();
    sub_1A3C2EF94();
  }

  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  v14 = v1;
  sub_1A3C374C0(0, &qword_1EB138880, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = v1;
  sub_1A4804520(&v14, v7, v5, 0.5);

  if ([v6 isCancelled])
  {
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v13 = (*(*(v0 + 96) + 24) + **(*(v0 + 96) + 24));
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1A48043A0;
    v11 = *(v0 + 160);
    v12 = *(v0 + 96);

    return v13(v11, v12);
  }
}

uint64_t sub_1A48043A0(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A48044A0, 0, 0);
}

uint64_t sub_1A48044A0()
{
  v6 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v5 = *(v0 + 195);
  sub_1A4804520(&v5, v1, v2, 1.0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4804520(char *a1, uint64_t a2, void (*a3)(void), float a4)
{
  v25 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    sub_1A3F5F320();
    do
    {
      v11 = *v6++;
      v10 = v11;
      if ((sub_1A524C594() & 1) == 0)
      {
        *&v28 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A4805490(0, *(v7 + 16) + 1, 1);
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1A4805490((v8 > 1), v9 + 1, 1);
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + v9 + 32) = v10;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = Array<A>.memoryCurationLengths.getter(v7);
  v14 = v13;

  if (v14)
  {
    sub_1A4805970();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = v28;
    *(v15 + 72) = *&v31[16];
    *(v15 + 56) = *v31;
    *(v15 + 40) = v30;
    *(v15 + 24) = v29;
    *(v15 + 80) = 1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v16 = LemonadeCurationKind.memoryCurationLength.getter();
  if (v17)
  {
    sub_1A4805970();
    v18 = swift_allocError();
    *v19 = v25;
    *(v19 + 1) = v28;
    *(v19 + 17) = v29;
    *(v19 + 64) = *&v31[15];
    *(v19 + 49) = *v31;
    *(v19 + 33) = v30;
    *(v19 + 80) = 2;
    swift_willThrow();
    v20 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
    v21 = sub_1A5240B74();
    v22 = [v20 error_];
  }

  else
  {
    v21 = [objc_allocWithZone(PXStoryCurationLengthInfo) initWithAvailableLengths:v12 defaultLength:v16];
    v22 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  }

  *&v23 = a4;
  v24 = [v22 fractionCompleted_];
  a3();
}

id sub_1A48048E4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v14 = *a2;
  *(v13 + 56) = a2[1];
  v15 = a2[3];
  *(v13 + 72) = a2[2];
  *(v13 + 88) = v15;
  *(v13 + 104) = a2[4];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v4;
  *(v13 + 40) = v14;
  *(v13 + 120) = v11;
  *(v13 + 128) = a3;
  *(v13 + 136) = a4;
  v16 = v4;
  v17 = v11;

  sub_1A3D4D930(0, 0, v10, &unk_1A5364720, v13);

  return v17;
}

uint64_t sub_1A4804A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A4804A88, 0, 0);
}

uint64_t sub_1A4804A88()
{
  v22 = v0;
  v1 = *(*(v0 + 16) + OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext);
  *(v0 + 56) = v1;
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1A4805970();
    v4 = swift_allocError();
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 3;
    swift_willThrow();
LABEL_9:
    v12 = *(v0 + 40);
    v13 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
    v14 = sub_1A5240B74();
    v15 = [v13 error_];

    v12(v15);
LABEL_10:
    v16 = *(v0 + 8);

    return v16();
  }

  v6 = v2;
  v7 = **(v0 + 24);
  swift_unknownObjectRetain();
  PFStoryOverallDurationKind.lemonadeCurationKind.getter(v7, v21);
  v8 = v21[0];
  if (v21[0] == 6)
  {
    v9 = *(v0 + 24);
    sub_1A4805970();
    v4 = swift_allocError();
    v11 = v10;
    memmove(v10, v9, 0x50uLL);
    v11[80] = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ([*(v0 + 32) isCancelled])
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  *(v0 + 88) = v8;
  v20 = (*(v6 + 24) + **(v6 + 24));
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  v19[1] = sub_1A4804D88;

  return v20(v0 + 88, ObjectType, v6);
}

uint64_t sub_1A4804D88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1A4804F60;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1A4804EB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4804EB0()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  v1();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4804F60()
{
  swift_unknownObjectRelease();
  v1 = v0[9];
  v2 = v0[5];
  v3 = [objc_allocWithZone(PXStoryProducerResult) initWithObject_];
  v4 = sub_1A5240B74();
  v5 = [v3 error_];

  v2(v5);
  v6 = v0[1];

  return v6();
}

id StoryDefaultAutoCurationProducer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryDefaultAutoCurationProducer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryDefaultAutoCurationProducer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A480531C(uint64_t a1)
{
  sub_1A3EBECA4(a1, v6);
  if (!v7)
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  sub_1A3EBECA4(v6, v5);
  sub_1A4805AE8();
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (!v4)
      {
        v3[3] = swift_getObjectType();
        v3[0] = v3[4];
        v1 = sub_1A480531C(v3);
        sub_1A3C35B00(v3);
        __swift_destroy_boxed_opaque_existential_0(v5);
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v5);
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v5);
  v1 = 1;
LABEL_9:
  sub_1A3C35B00(v6);
  return v1 & 1;
}

uint64_t sub_1A4805418()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1D52C8);
  __swift_project_value_buffer(v0, qword_1EB1D52C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4805490(char *a1, int64_t a2, char a3)
{
  result = sub_1A48054B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A48054B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C374C0(0, &qword_1EB138880, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

id sub_1A48055BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v13 = OBJC_IVAR___PXStoryDefaultAutoCurationProducer_curationContext;
  v14 = sub_1A524CCB4();
  v15 = *(*(v14 - 8) + 56);
  v19 = *(v4 + v13);
  v15(v11, 1, 1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = v19;
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;
  v17 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1A3D4D930(0, 0, v11, &unk_1A53647B8, v16);

  return v17;
}

uint64_t sub_1A4805750()
{
  v2 = v0[4];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4804A60(v6, v7, v8, v2, (v0 + 5), v3, v4, v5);
}

uint64_t dispatch thunk of StoryDefaultAutoCurationProducer.requestCuratedAssets(options:targetOverallDurationInfo:resultHandler:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 9);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = *(a2 + 5);
  v10 = a2[3];
  v11 = *(a2 + 8);
  v12 = v3;
  return v4(a1, &v6);
}

uint64_t objectdestroyTm_80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1A4805970()
{
  result = qword_1EB1D52E0[0];
  if (!qword_1EB1D52E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D52E0);
  }

  return result;
}

uint64_t sub_1A48059C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A48036F8(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_1A4805A94()
{
  result = qword_1EB142DF8;
  if (!qword_1EB142DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142DF8);
  }

  return result;
}

unint64_t sub_1A4805AE8()
{
  result = qword_1EB1265E0;
  if (!qword_1EB1265E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1265E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore32StoryDefaultAutoCurationProducerC5Error33_E31FC85312AFA8AE77F8543AB71C7967LLO(uint64_t a1)
{
  if ((*(a1 + 80) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

uint64_t sub_1A4805B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A4805B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A4805BF4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

__n128 __swift_memcpy72_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4805C58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4805C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t PhotosItemListSelectionChangeDetails.changedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosItemListSelectionChangeDetails() + 24);
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PhotosItemListSelectionChangeDetails()
{
  result = qword_1EB1D5370;
  if (!qword_1EB1D5370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4805DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PhotosItemListSelectionChangeDetails() + 24);
  v7 = sub_1A52414C4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1A4805E60()
{
  result = type metadata accessor for PhotosItemListSelectionSnapshot();
  if (v1 <= 0x3F)
  {
    result = sub_1A52414C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PhotoStyleViewMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A4805FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245724();
}

void sub_1A48060B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.viewMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A48062C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A48063A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245724();
}

void sub_1A4806468()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A4806538()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void sub_1A4806620()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245724();
}

unint64_t sub_1A48066CC()
{
  result = qword_1EB142E10;
  if (!qword_1EB142E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E10);
  }

  return result;
}

void PhotoStyleViewModel.selectedCollection.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.selectedCollection.setter(void *a1)
{
  swift_beginAccess();
  v2 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48069A4(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245724();
}

void PhotoStyleViewModel.selectedCollection.modify(uint64_t *a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v5 + 32) = v2;
  *(v5 + 48) = sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245714();
}

void PhotoStyleViewModel.init(selectedCollectionIndex:styleCollections:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a2;
  v5[5] = a1;
  v2 = sub_1A480927C(0, &qword_1EB142E18);
  v5[2] = *(v2 - 8);
  v5[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5[1] = v5 - v3;
  v4 = sub_1A480927C(0, &qword_1EB142E20);
  MEMORY[0x1EEE9AC00](v4);
  v5[6] = 1;
  v5[7] = 0;
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);
  sub_1A5245754();
}

uint64_t sub_1A4807284(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_9;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v2 = *(a1 + 32);
        goto LABEL_6;
      }

      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_9:
      if (!sub_1A524E2B4())
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1A59097F0](0, a1);
LABEL_6:
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

void PhotoStyleViewModel.createMutator()()
{
  type metadata accessor for PhotoStyleViewModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4807720()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void PhotoStyleViewModel.Mutator.mostFocusedPageIndex.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.mostFocusedPageIndex.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void PhotoStyleViewModel.Mutator.targetFocusedPageIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void PhotoStyleViewModel.Mutator.viewMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4807BBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4807C3C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.viewMode.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.viewMode.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4807E00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4807E84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleViewModel.Mutator.selectedCollectionIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleViewModel.Mutator.deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__mostFocusedPageIndex;
  v2 = sub_1A4809380(0, &qword_1EB142E30);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__targetFocusedPageIndex, v2);
  v4 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__viewMode;
  v5 = sub_1A4809380(0, &qword_1EB142E38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__selectedCollectionIndex, v2);
  return v0;
}

uint64_t PhotoStyleViewModel.Mutator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__mostFocusedPageIndex;
  v2 = sub_1A4809380(0, &qword_1EB142E30);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__targetFocusedPageIndex, v2);
  v4 = OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__viewMode;
  v5 = sub_1A4809380(0, &qword_1EB142E38);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCC12PhotosUICore19PhotoStyleViewModel7Mutator__selectedCollectionIndex, v2);

  return swift_deallocClassInstance();
}

void sub_1A4808210(uint64_t a1)
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48082CC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4808370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A48083E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4808458(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4808510()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4808594()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4808600(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__mostFocusedPageIndex;
  v2 = sub_1A480927C(0, &qword_1EB142E20);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__targetFocusedPageIndex, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__viewMode;
  v5 = sub_1A480927C(0, &qword_1EB142E18);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__selectedCollectionIndex, v2);

  return v0;
}

uint64_t PhotoStyleViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__mostFocusedPageIndex;
  v2 = sub_1A480927C(0, &qword_1EB142E20);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__targetFocusedPageIndex, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__viewMode;
  v5 = sub_1A480927C(0, &qword_1EB142E18);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel__selectedCollectionIndex, v2);

  return swift_deallocClassInstance();
}

void sub_1A4808938()
{
  type metadata accessor for PhotoStyleViewModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4808A84()
{
  sub_1A4809338(&qword_1EB142E88, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245F44();
}

id sub_1A4808B08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore19PhotoStyleViewModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4808B20()
{
  sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);

  sub_1A5245C54();
}

uint64_t PhotoStyleViewModel.pagesInfo(in:)(uint64_t a1, uint64_t a2)
{
  v6 = (a1 + a2);
  if (__OFADD__(a1, a2))
  {
    goto LABEL_38;
  }

  v2 = a1;
  if (v6 < a1)
  {
    goto LABEL_39;
  }

  v4 = a2;
  swift_beginAccess();
  i = v3[2];
  v3 = (i >> 62);
  if (i >> 62)
  {
    goto LABEL_40;
  }

  if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) < v2)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (v2 < 0)
  {
    while (1)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v4 = sub_1A524E2B4();
      if (!v4)
      {
        break;
      }

LABEL_18:
      v14 = MEMORY[0x1E69E7CC0];
      v3 = &v14;
      sub_1A524E554();
      if (v4 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      for (i = 0; ; ++i)
      {
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1A59097F0](i, v2);
        }

        else
        {
          if (i >= *(v2 + 16))
          {
            goto LABEL_37;
          }

          v10 = *(v2 + 8 * i + 32);
        }

        v3 = v10;
        v11 = OBJC_IVAR___PXPhotoStyleCollection_elements;
        swift_beginAccess();
        v12 = *(v3 + v11);
        if (v12 >> 62)
        {
          if (!sub_1A524E2B4())
          {
            goto LABEL_35;
          }
        }

        else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v6 = *(v12 + 32);

        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v3 = &v14;
        sub_1A524E524();
        if (v9 == v4)
        {

          return v14;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      if (sub_1A524E2B4() >= v2)
      {
        goto LABEL_5;
      }

LABEL_41:
      __break(1u);
    }
  }

  else
  {
    if (v3)
    {
      v7 = sub_1A524E2B4();
    }

    else
    {
      v7 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 < v6)
    {
      goto LABEL_43;
    }

    if ((i & 0xC000000000000001) == 0 || v6 == v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v6 > v2)
    {
      type metadata accessor for PhotoStyleCollection(0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_47:
    __break(1u);
    __break(1u);
    swift_unknownObjectRelease();
    sub_1A48094E0(v4, i, v2, v3);
    v2 = v8;
    swift_unknownObjectRelease();
    if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
    {
      goto LABEL_44;
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      goto LABEL_18;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t PhotoStyleViewModel.collection(for:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return 0;
}

unint64_t sub_1A480918C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for PhotoStyleCollection(0);
    v8 = sub_1A524DBF4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1A480927C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for PhotoStyleViewModel(255);
    sub_1A4809338(&qword_1EB142E08, type metadata accessor for PhotoStyleViewModel);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A4809338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4809380(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for PhotoStyleViewModel.Mutator(255);
    sub_1A4809338(&qword_1EB142E28, type metadata accessor for PhotoStyleViewModel.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t PhotoStyleViewModel.numberOfPages.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1A480947C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    return sub_1A524E2B4();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1A48094E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for PhotoStyleCollection(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3CB8F68();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1A48095BC()
{
  result = qword_1EB142E40;
  if (!qword_1EB142E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E40);
  }

  return result;
}

unint64_t sub_1A4809614()
{
  result = qword_1EB142E48;
  if (!qword_1EB142E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E48);
  }

  return result;
}

unint64_t sub_1A480966C()
{
  result = qword_1EB142E50;
  if (!qword_1EB142E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E50);
  }

  return result;
}

unint64_t sub_1A48096C4()
{
  result = qword_1EB142E58;
  if (!qword_1EB142E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E58);
  }

  return result;
}

unint64_t sub_1A480971C()
{
  result = qword_1EB142E60;
  if (!qword_1EB142E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E60);
  }

  return result;
}

unint64_t sub_1A4809850()
{
  result = qword_1EB142E78;
  if (!qword_1EB142E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142E78);
  }

  return result;
}

uint64_t sub_1A4809914()
{
  result = sub_1A480927C(319, &qword_1EB142E20);
  if (v1 <= 0x3F)
  {
    result = sub_1A480927C(319, &qword_1EB142E18);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A4809A50()
{
  result = sub_1A4809380(319, &qword_1EB142E30);
  if (v1 <= 0x3F)
  {
    result = sub_1A4809380(319, &qword_1EB142E38);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A4809C50()
{
  if (!qword_1EB1400D8)
  {
    type metadata accessor for PhotoStyleElement(255);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1400D8);
    }
  }
}

id sub_1A4809CAC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager] = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_logger;
  v5 = sub_1A3C4A780();
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 16))(&v3[v4], v5, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
  *&v3[v7] = sub_1A480CB3C(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary] = a1;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1A4809E50()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager);
  }

  else
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager();
    v2 = sub_1A3C3A660(*(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary));
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1A4809ED0()
{
  v1 = v0;
  oslog = sub_1A5246F04();
  v2 = sub_1A524D264();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    swift_slowAlloc();
    *v3 = 136315138;
    swift_beginAccess();
    sub_1A52411C4();
    sub_1A480D0C0();
    sub_1A480D1B4(&unk_1EB12AFC0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A480A09C()
{
  v1[2] = v0;
  v2 = sub_1A52453A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A480A15C, 0, 0);
}

uint64_t sub_1A480A15C()
{
  v1 = [objc_opt_self() isMemoryCreationEnabled];
  if (v1 && (sub_1A3C56110(), v2 = [swift_getObjCClassFromMetadata() sharedInstance], v3 = objc_msgSend(v2, sel_shouldUseAvailabilityMonitor), v2, v3))
  {
    v4 = *(v0[2] + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1A480A2AC;
    v6 = v0[5];

    return static LemonadeMemoriesCreationAvailabilityUtils.requestMemoryCreationAvailability(photoLibrary:)(v6, v4);
  }

  else
  {

    v8 = v0[1];

    return v8(v1);
  }
}

uint64_t sub_1A480A2AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A480A3A8, 0, 0);
}

uint64_t sub_1A480A3A8()
{
  v1 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)();
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1 & 1;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "fetchMemoryCreationButtonAvailability -> %{BOOL}d", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(v1 & 1);
}

uint64_t sub_1A480A640(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A480A6E8;

  return sub_1A480A09C();
}

uint64_t sub_1A480A6E8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

void sub_1A480A830(uint64_t a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  _Block_copy(a2);
  sub_1A52411B4();
  v14 = [objc_opt_self() isMemoryCreationEnabled];
  if (v14 && (sub_1A3C56110(), v15 = [swift_getObjCClassFromMetadata() sharedInstance], v27 = a3, v16 = v15, v17 = objc_msgSend(v15, sel_shouldUseAvailabilityMonitor), v16, a3 = v27, v17))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1A3DB5554;
    *(v18 + 24) = v13;
    v19 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + v19);
    *(a1 + v19) = 0x8000000000000000;
    sub_1A480C62C(sub_1A480D2D8, v18, v12, isUniquelyReferenced_nonNull_native);
    *(a1 + v19) = v28;
    swift_endAccess();
    sub_1A4809ED0();
    v21 = sub_1A524CCB4();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v23 = sub_1A524CC44();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    a3 = v27;

    sub_1A3D4D930(0, 0, v8, &unk_1A5365068, v24);
  }

  else
  {
    (a2)[2](a2, v14);
  }

  (*(v10 + 32))(a3, v12, v9);

  _Block_release(a2);
}

uint64_t sub_1A480AB98@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v13 = [objc_opt_self() isMemoryCreationEnabled];
  if (v13 && (v14 = a3, v15 = v13, sub_1A3C56110(), v16 = [swift_getObjCClassFromMetadata() sharedInstance], v17 = objc_msgSend(v16, sel_shouldUseAvailabilityMonitor), v16, v13 = v15, a3 = v14, (v17 & 1) != 0))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v3 + v19);
    *(v3 + v19) = 0x8000000000000000;
    sub_1A480C62C(sub_1A3EE12E0, v18, v12, isUniquelyReferenced_nonNull_native);
    *(v3 + v19) = v30;
    a3 = v14;
    swift_endAccess();
    sub_1A4809ED0();
    v21 = sub_1A524CCB4();
    v22 = v29;
    (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v24 = sub_1A524CC44();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;

    sub_1A3D4D930(0, 0, v22, &unk_1A5365010, v25);
  }

  else
  {
    a1(v13);
  }

  return (*(v10 + 32))(a3, v12, v9);
}

uint64_t sub_1A480AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1A480C62C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1A52411C4();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1A480BD3C(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1A480C8C8();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1A52411C4();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1A480C324(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1A52411C4();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_1A480B090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A52453A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A480B184, v7, v6);
}

uint64_t sub_1A480B184()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = *sub_1A4809E50();
    (*(v6 + 632))();

    sub_1A480BA2C();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_1A52415B4();

    (*(v4 + 8))(v3, v5);
  }

  v7 = v0[1];

  return v7();
}

void sub_1A480B420(uint64_t a1)
{
  v2 = sub_1A52411C4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  swift_beginAccess();
  sub_1A480AEC4(0, 0, v5);
  swift_endAccess();
  sub_1A4809ED0();
}

uint64_t sub_1A480B690()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A53650A8, v7);
}

uint64_t sub_1A480B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A52453A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A480B8F8, v7, v6);
}

uint64_t sub_1A480B8F8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    sub_1A480BA2C();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_1A52415B4();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A480BA2C()
{
  v1 = v0;
  v19 = sub_1A52453A4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A4809E50();
  (*(*v5 + 192))(v5);

  v6 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)();
  v7 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v8 + 56) + ((v15 << 10) | (16 * v16)));
    v20 = v6 & 1;

    v17(&v20);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      (*(v2 + 8))(v4, v19);
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_1A480BC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeMemoriesCreationButtonValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A480BD3C(uint64_t a1)
{
  sub_1A52411C4();
  sub_1A480D1B4(&unk_1EB12AFC0);
  v2 = sub_1A524C4A4();

  return sub_1A480BDC0(a1, v2);
}

unint64_t sub_1A480BDC0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A480D1B4(&unk_1EB12AFB0);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1A480BF6C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A52411C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A480D11C();
  v38 = a2;
  result = sub_1A524E774();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_1A480D1B4(&unk_1EB12AFC0);
      result = sub_1A524C4A4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1A480C324(int64_t a1, uint64_t a2)
{
  v38 = sub_1A52411C4();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1A524E244();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1A480D1B4(&unk_1EB12AFC0);
      v22 = sub_1A524C4A4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1A480C62C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1A52411C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A480BD3C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A480C8C8();
      goto LABEL_9;
    }

    sub_1A480BF6C(v18, a4 & 1);
    v21 = sub_1A480BD3C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1A480C808(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1A480C808(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1A52411C4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_1A480C8C8()
{
  v1 = v0;
  v31 = sub_1A52411C4();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A480D11C();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v21 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v18 *= 16;
        v23 = v32;
        v24 = *(v32 + 48);
        v25 = *(v19 + 32);
        v34 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v34;

        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_1A480CB3C(uint64_t a1)
{
  sub_1A480D1F8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A480D11C();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A480D268(v10, v6, sub_1A480D1F8);
      result = sub_1A480BD3C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A52411C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for LemonadeMemoriesCreationButtonValidation()
{
  result = qword_1EB15DD60;
  if (!qword_1EB15DD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A480CD5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A480B090(v3, v4, v5, v2);
}

uint64_t sub_1A480CDF8()
{
  result = sub_1A5246F24();
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

uint64_t sub_1A480CEAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A480A640(v2, v3);
}

uint64_t sub_1A480CF68()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A480B804(v3, v4, v5, v2);
}

uint64_t sub_1A480CFFC()
{
  v0 = sub_1A4809E50();
  (*(*v0 + 192))(v0);
}

uint64_t (*sub_1A480D064())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A480CF60;
}

unint64_t sub_1A480D0C0()
{
  result = qword_1EB142EA0;
  if (!qword_1EB142EA0)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB142EA0);
  }

  return result;
}

void sub_1A480D11C()
{
  if (!qword_1EB142EA8)
  {
    sub_1A52411C4();
    sub_1A480D0C0();
    sub_1A480D1B4(&unk_1EB12AFC0);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142EA8);
    }
  }
}

uint64_t sub_1A480D1B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A52411C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A480D1F8()
{
  if (!qword_1EB12AF90)
  {
    sub_1A52411C4();
    sub_1A3C3637C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12AF90);
    }
  }
}

uint64_t sub_1A480D268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void PhotosFullscreenPlaybackOverlayController.init()()
{
  v1 = v0;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  MEMORY[0x1EEE9AC00](v3);
  swift_unknownObjectWeakInit();
  type metadata accessor for FullscreenPlaybackOverlayModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  sub_1A5241604();
  *(v4 + 24) = 0;
  *(v4 + 26) = 0;
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 8);
  v7 = *(MEMORY[0x1E6960CC0] + 12);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  *(v4 + 28) = *MEMORY[0x1E6960CC0];
  *(v4 + 36) = v6;
  *(v4 + 40) = v7;
  *(v4 + 44) = v8;
  *(v4 + 52) = v5;
  *(v4 + 60) = v6;
  *(v4 + 64) = v7;
  *(v4 + 68) = v8;
  sub_1A480FE04();
  *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_model) = v4;
  swift_getKeyPath();
  sub_1A4810398();

  sub_1A52467D4();
}

void sub_1A480D5E4()
{
  if (!qword_1EB126B28)
  {
    sub_1A3C52C70(255, &qword_1EB126B30);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126B28);
    }
  }
}

id sub_1A480D66C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A480D710(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A480EDEC(v1);
}

uint64_t sub_1A480D740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A480D7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A480D848(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void sub_1A480D8A0()
{
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A480D9E0(void *a1)
{
  swift_beginAccess();
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  v2 = a1;
  sub_1A52467C4();
}

void sub_1A480DA90(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  sub_1A52467A4();
}

uint64_t sub_1A480DB60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

void sub_1A480DBF8()
{
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A480DD2C()
{
  swift_beginAccess();
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467C4();
}

void sub_1A480DDB4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

uint64_t sub_1A480DE78()
{
  sub_1A4810478(0, &qword_1EB129050, MEMORY[0x1E69C26A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1A4810B34(&unk_1EB17D638);
  v3 = qword_1EB176830;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1A52438A4();
  v5 = __swift_project_value_buffer(v4, qword_1EB1EAD70);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  return sub_1A52427B4();
}

void sub_1A480E118(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1A480E174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A480E1C0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A480E218(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

uint64_t PhotosFullscreenPlaybackOverlayController.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController);
  return v0;
}

uint64_t PhotosFullscreenPlaybackOverlayController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__storyViewModel;
  sub_1A4810478(0, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController__canBeVisible;
  sub_1A4810D54(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosFullscreenPlaybackOverlayController_containerViewController);

  return swift_deallocClassInstance();
}

uint64_t sub_1A480E544()
{
  v0 = sub_1A52438A4();
  __swift_allocate_value_buffer(v0, qword_1EB1EAD70);
  __swift_project_value_buffer(v0, qword_1EB1EAD70);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v1 scrubberKind];

  return sub_1A5243894();
}

void sub_1A480E5EC(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;

    sub_1A480FE04();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();
  }
}

uint64_t sub_1A480E70C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 25) == v2)
  {
    *(v1 + 25) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A480E81C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 26) == v2)
  {
    sub_1A480F3C0(v2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();
  }
}

uint64_t sub_1A480E930(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  swift_beginAccess();
  result = sub_1A524DAB4();
  if (result)
  {
    *(v3 + 28) = a1;
    *(v3 + 36) = v5;
    *(v3 + 40) = v7;
    *(v3 + 44) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A480EA74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  result = sub_1A524DAB4();
  if (result)
  {
    *(v3 + 52) = a1;
    *(v3 + 60) = v5;
    *(v3 + 64) = v7;
    *(v3 + 68) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A480EBA4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v4 = v1[2];
  if (v4)
  {
    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126B30);
      v5 = v4;
      v6 = a1;
      v7 = sub_1A524DBF4();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v8 = v2[2];
  if (v8)
  {
    swift_allocObject();
    swift_weakInit();
    v8;

    sub_1A524D1A4();
  }

  v2[10] = 0;
  v2[11] = 0;
  swift_unknownObjectRelease();
  sub_1A480FE04();
}

void *sub_1A480ED58()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A480EDEC(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126B30);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = a1;
  v8 = v5;
  sub_1A480EBA4(v9);
}

uint64_t sub_1A480EF90()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A480F06C()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 25);
}

uint64_t sub_1A480F10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

void (*sub_1A480F1DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F01C();
  return sub_1A480F300;
}

id sub_1A480F30C(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  swift_beginAccess();
  return [a1 setDesiredPlayState_];
}

void sub_1A480F3C0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 26) = a1;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v4 = *(v2 + 16);
  if (v4)
  {
    aBlock[4] = sub_1A4810DC4;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_57_3;
    v5 = _Block_copy(aBlock);
    v6 = v4;

    [v6 performChanges_];
    _Block_release(v5);
  }
}

void (*sub_1A480F514(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1A480F58C;
}

void sub_1A480F58C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_getKeyPath();
    *v3 = v4;
    sub_1A4810B34(&unk_1EB17D628);
    sub_1A52415D4();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v3[6];
      v3[4] = sub_1A4810C2C;
      v3[5] = v6;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1A3D59380;
      v3[3] = &block_descriptor_278;
      v7 = _Block_copy(v3);
      v8 = v5;

      [v8 performChanges_];
      _Block_release(v7);
    }
  }

  free(v3);
}

uint64_t sub_1A480F6E4()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 26);
}

uint64_t sub_1A480F784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

void (*sub_1A480F854(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F514(v4);
  return sub_1A480F978;
}

uint64_t sub_1A480F9D4()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 28);
}

double sub_1A480FA7C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 44);
  *a2 = *(v3 + 28);
  result = *(v3 + 36);
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

void (*sub_1A480FB68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A480F984();
  return sub_1A480FC8C;
}

uint64_t sub_1A480FC98()
{
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  return *(v0 + 52);
}

double sub_1A480FD2C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v4 = *(v3 + 68);
  *a2 = *(v3 + 52);
  result = *(v3 + 60);
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

void sub_1A480FE04()
{
  swift_getKeyPath();
  v11 = v0;
  sub_1A4810B34(&unk_1EB17D628);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 viewMode];
    v4 = v3 == 2 || v3 == 4;
    if (!v4 && (swift_getKeyPath(), v11 = v0, sub_1A52415D4(), , *(v0 + 24) == 1 && [v2 wantsChromeVisible]))
    {
      v5 = [v2 wantsRelatedOverlayVisible] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 desiredPlayState];
    [v2 currentPlaybackTime];
    [v2 playbackDuration];
    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    if (v5 != *(v0 + 25))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    if ((v6 == 1) != *(v0 + 26))
    {
      v8 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v8);
      sub_1A52415C4();
    }

    swift_getKeyPath();
    sub_1A52415D4();

    swift_beginAccess();
    sub_1A524DAC4();
    swift_getKeyPath();
    sub_1A52415D4();

    if (sub_1A524DAC4())
    {
      if (sub_1A524DAB4())
      {

        *(v0 + 52) = v11;
        *(v0 + 60) = v12;
        *(v0 + 64) = v13;
        *(v0 + 68) = v14;
      }

      else
      {
        v10 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v10);
        sub_1A52415C4();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v0 + 25))
    {
      v9 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v9);
      sub_1A52415C4();
    }

    else
    {
      *(v0 + 25) = 0;
    }
  }
}

unint64_t sub_1A4810398()
{
  result = qword_1EB126B20;
  if (!qword_1EB126B20)
  {
    sub_1A480D5E4();
    sub_1A4810410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B20);
  }

  return result;
}

unint64_t sub_1A4810410()
{
  result = qword_1EB126B18;
  if (!qword_1EB126B18)
  {
    sub_1A3C52C70(255, &qword_1EB126B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126B18);
  }

  return result;
}

void sub_1A4810478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4810520()
{
  sub_1A4810478(319, &qword_1EB128C20, sub_1A480D5E4, off_1E7721260);
  if (v0 <= 0x3F)
  {
    sub_1A4810D54(319, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A481080C()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_0E853E2C700EA3B4244BBA71526175F930FullscreenPlaybackOverlayModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A48108C0()
{
  result = sub_1A5241614();
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

unint64_t sub_1A4810980()
{
  result = qword_1EB1291E0;
  if (!qword_1EB1291E0)
  {
    sub_1A52427C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1291E0);
  }

  return result;
}

void (*sub_1A48109DC(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480F1DC(v2);
  return sub_1A3E62A10;
}

void (*sub_1A4810A50(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480F854(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4810AC4(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A480FB68(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A4810B34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FullscreenPlaybackOverlayModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4810B90()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  result = swift_beginAccess();
  *(v1 + 28) = v2;
  *(v1 + 36) = v4;
  *(v1 + 44) = v3;
  return result;
}

void sub_1A4810C84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
  sub_1A480EBA4(v3);
}

uint64_t sub_1A4810CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 0x20000000A00ELL) != 0)
    {
      sub_1A480FE04();
    }
  }

  return result;
}

double sub_1A4810D38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 32);
  *(v1 + 52) = *(v0 + 24);
  *(v1 + 60) = result;
  *(v1 + 68) = v2;
  return result;
}

void sub_1A4810D54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double PHAsset.pixelSize.getter()
{
  v1 = [v0 pixelWidth];
  [v0 pixelHeight];
  return v1;
}

uint64_t sub_1A4810E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

double sub_1A4810F10()
{
  v1 = *v0;
  v2 = [*v0 pixelWidth];
  [v1 pixelHeight];
  return v2;
}

double PhotoKitItem<>.pixelSize.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 pixelWidth];
  [v1 pixelHeight];
  return v2;
}

uint64_t PhotoKitItem<>.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1A52410F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id PhotoKitItem.keyAsset.getter()
{
  v0 = PhotoKitItem.keyAssets.getter();
  v1 = [v0 firstObject];

  return v1;
}

id PhotoKitItem<>.count.getter()
{
  if ([*(v0 + 16) px_isMapVirtualCollection])
  {
    return 0;
  }

  result = PhotoKitItem.subcontents.getter();
  if (result)
  {
    v2 = result;
    v3 = [result count];

    return v3;
  }

  return result;
}

{
  v0 = PhotoKitItem.subcontents.getter();
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = [v0 count];

  return v2;
}

id sub_1A48111EC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 count];

  return v3;
}

uint64_t PhotoKitItem<>.keyAssets.getter()
{
  v0 = PhotoKitItem.keyAssets.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = [v0 fetchedObjects];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA34();

  return v3;
}

uint64_t PhotoKitItem<>.title.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v9 = [v1 localizedTitle];
    if (v9)
    {
      v4 = v9;
      v8 = sub_1A524C674();
      goto LABEL_7;
    }

    return 0;
  }

  v3 = v2;
  sub_1A5244D04();
  v11[3] = sub_1A3C52C70(0, &qword_1EB126AA0);
  v11[0] = v3;
  v4 = v1;
  v5 = sub_1A5244E84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v5 & 1) == 0)
  {
    v6 = [v3 dateDescription];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v6 = [v3 localizedSmartDescription];
  if (!v6)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  v7 = v6;
  v8 = sub_1A524C674();

LABEL_7:
  return v8;
}

{
  v1 = [*(v0 + 16) localizedTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

{
  v1 = *(v0 + 16);
  v2 = PhotoKitItem.people.getter();
  v3 = [v1 px:v2 titleFor:?];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t PhotoKitItem<>.subtitle.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
LABEL_6:
    v9 = [v1 localizedSubtitle];
    if (v9)
    {
      v4 = v9;
      v8 = sub_1A524C674();
      goto LABEL_8;
    }

    return 0;
  }

  v3 = v2;
  sub_1A5244D04();
  v11[3] = sub_1A3C52C70(0, &qword_1EB126AA0);
  v11[0] = v3;
  v4 = v1;
  v5 = sub_1A5244E84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v3 localizedDateDescription];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1A524C674();

LABEL_8:
  return v8;
}

{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v0 + 16) localizedSubtitle];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A524C674();
  }

  else
  {
    v15 = PhotoKitItem.keyAsset.getter();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 creationDate];

      if (v17)
      {
        sub_1A52410F4();

        (*(v8 + 56))(v3, 0, 1, v7);
      }

      else
      {
        (*(v8 + 56))(v3, 1, 1, v7);
      }

      sub_1A3E98DA0(v3, v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        v18 = objc_opt_self();
        v19 = sub_1A5241074();
        v20 = [v18 localizedStringFromDate:v19 dateStyle:2 timeStyle:0];

        v14 = sub_1A524C674();
        (*(v8 + 8))(v11, v7);
        return v14;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_1A3F637D4(v6);
    return 0;
  }

  return v14;
}

uint64_t PhotoKitItem<>.shortSubtitle.getter()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    sub_1A5244D04();
    v9[3] = sub_1A3C52C70(0, &qword_1EB126AA0);
    v9[0] = v3;
    v4 = v1;
    v5 = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v9);
    if ((v5 & 1) != 0 && (v6 = [v3 localizedShortDateDescription]) != 0)
    {
      v7 = v6;
      v8 = sub_1A524C674();

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t PhotoKitItem<>.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v38 - v21;
  v23 = *(v1 + 16);
  if ([v23 willFetchDatesIfNeeded])
  {
    v24 = sub_1A5240524();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }

  else
  {
    v27 = [v23 startDate];
    if (v27)
    {
      v39 = a1;
      v28 = v27;
      sub_1A52410F4();

      v29 = v18;
      v30 = v4[4];
      v30(v22, v29, v3);
      v31 = [v23 endDate];
      if (v31)
      {
        v32 = v31;
        sub_1A52410F4();

        v30(v15, v12, v3);
        v33 = v4[2];
        v33(v9, v22, v3);
        v33(v6, v15, v3);
        v34 = v39;
        sub_1A5240504();
        v35 = v4[1];
        v35(v15, v3);
        v35(v22, v3);
        v36 = sub_1A5240524();
        return (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
      }

      (v4[1])(v22, v3);
      a1 = v39;
    }

    v37 = sub_1A5240524();
    return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
  }
}

uint64_t PHCollection.collectionSymbolName.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    sub_1A52445A4();
    v13 = sub_1A3C52C70(0, &qword_1EB1265E0);
    v12[0] = v2;
    v3 = v0;
    LOBYTE(v2) = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v2)
    {
      return 0x7361636665697262;
    }

    else
    {
      return 0x736569726F6D656DLL;
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      sub_1A5244D04();
      v13 = sub_1A3C52C70(0, &qword_1EB126AA0);
      v12[0] = v6;
      v7 = v0;
      v8 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v12);
      if (v8)
      {
        return 0x7361636665697262;
      }

      else if ([v6 kind])
      {
        return 0x736569726F6D656DLL;
      }

      else
      {
        return 0x7261646E656C6163;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 0xD000000000000020;
      }

      else
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 px_symbolImageName];
          v11 = sub_1A524C674();

          return v11;
        }

        else if ([v0 canContainCollections])
        {
          return 0x7265646C6F66;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

id sub_1A4811E5C@<X0>(void *a1@<X8>)
{
  result = PhotoKitItem.keyAsset.getter();
  *a1 = result;
  return result;
}

void PhotoKitItem<>.fetchHighlight(completion:)(void (*a1)(void), uint64_t a2)
{
  v4 = PhotoKitItem.keyAsset.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() sharedInstance];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v10[4] = sub_1A3D78DD0;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3F287DC;
    v10[3] = &block_descriptor_279;
    v8 = _Block_copy(v10);
    v9 = v5;

    [v6 fetchSocialLayerHighlightForAsset:v9 completion:v8];
    _Block_release(v8);
  }

  else
  {
    a1();
  }
}

uint64_t sub_1A481238C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  PhotoKitItem<>.fetchHighlight(completion:)(sub_1A4813AB4, v4);
}

uint64_t sub_1A4812450@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t PhotoKitItem<>.accessoryType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if ([v3 px_containsPrivateContent])
  {
    v4 = MEMORY[0x1E69C2330];
    goto LABEL_16;
  }

  v5 = [v3 transientIdentifier];
  if (!v5)
  {
    sub_1A524C674();
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = sub_1A524C674();
  if (!v9)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v7 != v10 || v9 != v11)
  {
    v13 = sub_1A524EAB4();

    if (v13)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = MEMORY[0x1E69C2340];
    goto LABEL_16;
  }

LABEL_15:
  v4 = MEMORY[0x1E69C2338];
LABEL_16:
  v14 = *v4;
  v15 = sub_1A5242FD4();
  v18 = *(v15 - 8);
  (*(v18 + 104))(a1, v14, v15);
  v16 = *(v18 + 56);

  return v16(a1, 0, 1, v15);
}

uint64_t PhotoKitItem<>.shortTitle.getter()
{
  v1 = *(v0 + 16);
  if (([v1 px_isRecentlySavedCollection] & 1) != 0 || (objc_msgSend(v1, sel_px_isRecentlyEditedCollection) & 1) != 0 || (objc_msgSend(v1, sel_px_isRecentlySharedCollection) & 1) != 0 || (objc_msgSend(v1, sel_px_isRecentlyViewedCollection) & 1) != 0 || objc_msgSend(v1, sel_px_isRecentlyDeletedSmartAlbum))
  {
    return sub_1A3C38BD4();
  }

  else
  {
    return 0;
  }
}

id PHCollection.px_isFavorite.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 isFavorite];
  }

  else
  {
    return [v0 px_isFavoritesSmartAlbum];
  }
}

Swift::Void __swiftcall PHCollection.px_setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  v3 = v2;
  isa = undoManager.value.super.isa;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    sub_1A3C52C70(0, &qword_1EB126690);
    sub_1A3C4D548(0, &unk_1EB126170);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 56) = sub_1A3C52C70(0, &qword_1EB1265E0);
    *(v8 + 32) = v7;
    v16 = v3;
    v9 = MEMORY[0x1A5908EF0](v8);
    v10 = [objc_allocWithZone(PXFavoriteMemoriesAction) initWithMemories:v9 favorite:_];

    if (v10)
    {
      aBlock[4] = PXDisplayCollectionDetailedCountsMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_3_9;
      v11 = _Block_copy(aBlock);
      [v10 executeWithUndoManager:isa completionHandler:v11];

      _Block_release(v11);
    }

    else
    {
    }
  }

  else
  {
    sub_1A524E404();

    v12 = [v2 description];
    v13 = sub_1A524C674();
    v15 = v14;

    MEMORY[0x1A5907B60](v13, v15);

    sub_1A524E6E4();
    __break(1u);
  }
}

id sub_1A4812D2C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 isFavorite];
  }

  else
  {
    return [v0 px_isFavoritesSmartAlbum];
  }
}

void sub_1A4812DEC()
{
  swift_getWitnessTable();

    ;
  }
}

void sub_1A4812E40()
{
  swift_getWitnessTable();

    ;
  }
}

uint64_t PhotoKitItem.selectionIdentifier.getter()
{
  v1 = [*(v0 + 16) localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

id PHCollection.isContentPrivacyEnabled.getter()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result px_containsPrivateContent];
  }

  return result;
}

id sub_1A4813218()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result px_containsPrivateContent];
  }

  return result;
}

uint64_t PHPerson.title.getter()
{
  v1 = [v0 px_localizedName];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A48132F4()
{
  v1 = [*v0 px_localizedName];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A4813378(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1A524C674();

  return v4;
}

uint64_t sub_1A4813424(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1A524C674();

  return v6;
}

void sub_1A4813488(uint64_t a1)
{
  sub_1A3C4D548(0, &qword_1EB126180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v1;
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v4 = v1;
  v5 = sub_1A524CA14();
  v6 = [v4 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();

    v9 = [v8 peopleFetchResultFromFastEnumeration:v5 photoLibrary:v7];

    type metadata accessor for PeopleChangeTypeActionPerformer();
    sub_1A4918C38(v9, a1, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4813AB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1A4813B0C()
{
  v1 = 0x6E696D6165727473;
  if (*v0 != 1)
  {
    v1 = 0x746F68506576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1A4813B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A48173B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A4813B9C(uint64_t a1)
{
  v2 = sub_1A48142E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813BD8(uint64_t a1)
{
  v2 = sub_1A48142E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813C14(uint64_t a1)
{
  v2 = sub_1A4814294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813C50(uint64_t a1)
{
  v2 = sub_1A4814294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813C8C(uint64_t a1)
{
  v2 = sub_1A48141EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813CC8(uint64_t a1)
{
  v2 = sub_1A48141EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813D04(uint64_t a1)
{
  v2 = sub_1A4814240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4813D40(uint64_t a1)
{
  v2 = sub_1A4814240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4813D7C(void *a1, int a2)
{
  v29 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1A481AD3C(0, &qword_1EB142F08, sub_1A48141EC, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.LivePhotoCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - v5;
  sub_1A481AD3C(0, &qword_1EB142F10, sub_1A4814240, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.StreamingVideoCodingKeys, v3);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  sub_1A481AD3C(0, &qword_1EB142F18, sub_1A4814294, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.ImageCodingKeys, v3);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1A481AD3C(0, &qword_1EB142F20, sub_1A48142E8, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A48142E8();
  v17 = v29;
  sub_1A524ED34();
  if (v17 == 2)
  {
    v33 = 1;
    sub_1A4814240();
    sub_1A524E944();
    (*(v22 + 8))(v8, v23);
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 == 3)
  {
    v34 = 2;
    sub_1A48141EC();
    v18 = v26;
    sub_1A524E944();
    (*(v27 + 8))(v18, v28);
    return (*(v14 + 8))(v16, v13);
  }

  v32 = 0;
  sub_1A4814294();
  sub_1A524E944();
  v30 = v17 & 0x101;
  v31 = BYTE2(v17) & 1;
  sub_1A481433C();
  v20 = v25;
  sub_1A524E9D4();
  (*(v24 + 8))(v11, v20);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1A48141EC()
{
  result = qword_1EB1D6210;
  if (!qword_1EB1D6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6210);
  }

  return result;
}

unint64_t sub_1A4814240()
{
  result = qword_1EB1D6218;
  if (!qword_1EB1D6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6218);
  }

  return result;
}

unint64_t sub_1A4814294()
{
  result = qword_1EB1D6220;
  if (!qword_1EB1D6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6220);
  }

  return result;
}

unint64_t sub_1A48142E8()
{
  result = qword_1EB1D6228;
  if (!qword_1EB1D6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6228);
  }

  return result;
}

unint64_t sub_1A481433C()
{
  result = qword_1EB142F28;
  if (!qword_1EB142F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F28);
  }

  return result;
}

uint64_t sub_1A4814390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A48174DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_1A48143E8(char a1, char a2, char a3)
{
  if (a2)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v3 & 0xFFFFFFFE | a1 & 1 | v4;
}

unint64_t sub_1A481440C()
{
  v1 = 0x6169746170537369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A481447C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4817EB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A48144A4(uint64_t a1)
{
  v2 = sub_1A4817DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A48144E0(uint64_t a1)
{
  v2 = sub_1A4817DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A481451C(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB142F30, sub_1A4817DB4, &type metadata for OneUpSharePlayAttachmentAssetMetadata.ImageContentMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817DB4();
  sub_1A524ED34();
  v12 = 0;
  sub_1A524E9A4();
  if (!v1)
  {
    v11 = 1;
    sub_1A524E9A4();
    v10 = 2;
    sub_1A524E9A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A48146C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A4817B90(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1A481474C()
{
  v1 = 0x54746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44497465737361;
  }
}

uint64_t sub_1A48147B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4817FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A48147DC(uint64_t a1)
{
  v2 = sub_1A4817E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4814818(uint64_t a1)
{
  v2 = sub_1A4817E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4814854(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB142F38, sub_1A4817E08, &type metadata for OneUpSharePlayAttachmentAssetMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817E08();
  sub_1A524ED34();
  v16 = 0;
  sub_1A524E994();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = *(v3 + 18);
    v13 = 1;
    sub_1A4817E5C();
    sub_1A524E9D4();
    v12 = 2;
    sub_1A524E954();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4814A30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 18) = BYTE2(a3);
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

double sub_1A4814A48@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4818108(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1A4814AA8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  sub_1A3D602A8(*a1, v2);
  v4 = *(v1 + 8);

  return v4(v3, v2);
}

uint64_t sub_1A4814B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A4814B40, 0, 0);
}

uint64_t sub_1A4814B40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = v1;
  v3[1] = v2;
  sub_1A3D602A8(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4814BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  return MEMORY[0x1A58FCFE0](v6, &unk_1A5365C70, 0, &unk_1A5365C78, 0, a1, a2);
}

unint64_t sub_1A4814C70()
{
  v1 = 0x72507265676E6966;
  v2 = 0x745373776F6C6C61;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A4814D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A48184FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A4814D2C(uint64_t a1)
{
  v2 = sub_1A481844C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4814D68(uint64_t a1)
{
  v2 = sub_1A481844C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4814DA4(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB142F48, sub_1A481844C, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemParameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A481844C();
  sub_1A524ED34();
  v12 = *v3;
  v13 = v12;
  v14 = 0;
  sub_1A48184A0(&v13, v11);
  sub_1A3DC4204();
  sub_1A524E9D4();
  if (v2)
  {
    sub_1A3C59280(v12, *(&v12 + 1));
  }

  else
  {
    sub_1A3C59280(v12, *(&v12 + 1));
    LOBYTE(v12) = 1;
    sub_1A524E954();
    LOBYTE(v12) = 2;
    sub_1A524E954();
    LOBYTE(v12) = 3;
    sub_1A524E9A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4814FC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double sub_1A4814FDC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A481867C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1A4815044()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657449616964656DLL;
  }
}

uint64_t sub_1A48150A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4818ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A48150CC(uint64_t a1)
{
  v2 = sub_1A4818ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815108(uint64_t a1)
{
  v2 = sub_1A4818ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4815144(uint64_t a1)
{
  v2 = sub_1A4818A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815180(uint64_t a1)
{
  v2 = sub_1A4818A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A48151BC(uint64_t a1)
{
  v2 = sub_1A48189C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A48151F8(uint64_t a1)
{
  v2 = sub_1A48189C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4815234(uint64_t a1)
{
  v2 = sub_1A4818A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4815270(uint64_t a1)
{
  v2 = sub_1A4818A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A48152AC(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1A481AD3C(0, &qword_1EB142F50, sub_1A48189C0, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UnavailableCodingKeys, MEMORY[0x1E69E6F58]);
  v40 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - v4;
  sub_1A481AD3C(0, &qword_1EB142F58, sub_1A4818A14, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UrlCodingKeys, v2);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - v6;
  v7 = sub_1A5240E64();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142F60, sub_1A4818A68, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemCodingKeys, v2);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142F68, sub_1A4818ABC, &type metadata for OneUpSharePlayStreamingVideoItem.Format.CodingKeys, v2);
  v16 = v15;
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818ABC();
  sub_1A524ED34();
  sub_1A48183C8(v45, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v41;
      v20 = v42;
      v22 = v37;
      (*(v41 + 32))(v37, v14, v42);
      LOBYTE(v47) = 1;
      sub_1A4818A14();
      v23 = v39;
      sub_1A524E944();
      sub_1A4818B64(&qword_1EB142F70, MEMORY[0x1E6968FB0]);
      v24 = v44;
      sub_1A524E9D4();
      (*(v43 + 8))(v23, v24);
      (*(v21 + 8))(v22, v20);
    }

    else
    {
      LOBYTE(v47) = 2;
      sub_1A48189C0();
      v32 = v36;
      sub_1A524E944();
      (*(v38 + 8))(v32, v40);
    }

    return (*(v46 + 8))(v18, v16);
  }

  else
  {
    v27 = *v14;
    v26 = *(v14 + 1);
    v28 = *(v14 + 3);
    v45 = *(v14 + 2);
    v29 = *(v14 + 5);
    v42 = *(v14 + 4);
    v30 = v14[48];
    LOBYTE(v47) = 0;
    sub_1A4818A68();
    sub_1A524E944();
    v43 = v26;
    v44 = v27;
    v47 = v27;
    v48 = v26;
    v49 = v45;
    v50 = v28;
    v45 = v28;
    v51 = v42;
    v52 = v29;
    v53 = v30;
    sub_1A4818B10();
    v31 = v35;
    sub_1A524E9D4();
    (*(v34 + 8))(v11, v31);
    (*(v46 + 8))(v18, v16);
    sub_1A3C59280(v44, v43);
  }
}

uint64_t sub_1A4815900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A481AD3C(0, &qword_1EB142F80, sub_1A48189C0, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UnavailableCodingKeys, MEMORY[0x1E69E6F48]);
  v55 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v49 - v5;
  sub_1A481AD3C(0, &qword_1EB142F88, sub_1A4818A14, &type metadata for OneUpSharePlayStreamingVideoItem.Format.UrlCodingKeys, v3);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v49 - v8;
  sub_1A481AD3C(0, &qword_1EB142F90, sub_1A4818A68, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemCodingKeys, v3);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v49 - v10;
  sub_1A481AD3C(0, &qword_1EB142F98, sub_1A4818ABC, &type metadata for OneUpSharePlayStreamingVideoItem.Format.CodingKeys, v3);
  v58 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A4818ABC();
  v24 = v64;
  sub_1A524ED14();
  if (!v24)
  {
    v49 = v19;
    v50 = v16;
    v26 = v59;
    v25 = v60;
    v64 = v22;
    v51 = v14;
    v27 = v61;
    v28 = v62;
    v29 = v58;
    v30 = sub_1A524E924();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v30 + 32);
      if (v31 == 1 && v32 != 3)
      {
        if (*(v30 + 32))
        {
          v37 = v29;
          if (v32 != 1)
          {
            LOBYTE(v65) = 2;
            sub_1A48189C0();
            sub_1A524E844();
            (*(v52 + 8))(v27, v55);
            (*(v63 + 8))(v13, v29);
            swift_unknownObjectRelease();
            v39 = v64;
            swift_storeEnumTagMultiPayload();
LABEL_16:
            sub_1A4818E10(v39, v28, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
            return __swift_destroy_boxed_opaque_existential_0(v69);
          }

          LOBYTE(v65) = 1;
          sub_1A4818A14();
          v38 = v25;
          sub_1A524E844();
          sub_1A5240E64();
          sub_1A4818B64(&qword_1EB142FA0, MEMORY[0x1E6968FB0]);
          v40 = v50;
          v41 = v56;
          sub_1A524E8E4();
          (*(v57 + 8))(v38, v41);
          (*(v63 + 8))(v13, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v40;
        }

        else
        {
          LOBYTE(v65) = 0;
          sub_1A4818A68();
          sub_1A524E844();
          sub_1A4818BAC();
          v43 = v54;
          sub_1A524E8E4();
          v44 = v63;
          (*(v53 + 8))(v26, v43);
          (*(v44 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v46 = v68;
          v47 = v66;
          v48 = v49;
          *v49 = v65;
          v48[1] = v47;
          v48[2] = v67;
          *(v48 + 48) = v46;
          swift_storeEnumTagMultiPayload();
          v45 = v48;
        }

        v39 = v64;
        sub_1A4818E10(v45, v64, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
        goto LABEL_16;
      }
    }

    v34 = sub_1A524E4C4();
    swift_allocError();
    v36 = v35;
    sub_1A3FA0828();
    *v36 = v51;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v63 + 8))(v13, v29);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_1A48161B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A481623C(uint64_t a1)
{
  v2 = sub_1A4818DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816278(uint64_t a1)
{
  v2 = sub_1A4818DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A48162E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142FE8, sub_1A4818DBC, &type metadata for OneUpSharePlayStreamingVideoItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818DBC();
  v12 = v20;
  sub_1A524ED14();
  if (!v12)
  {
    v13 = v18;
    sub_1A4818B64(&qword_1EB142FF0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    v14 = v19;
    sub_1A524E8E4();
    (*(v13 + 8))(v8, v6);
    sub_1A4818E10(v14, v11, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    sub_1A4818E10(v11, v17, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A481659C@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4818C00();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  sub_1A4818B64(&qword_1EB142FB8, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A4818B64(&qword_1EB142FC0, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A5241CD4();
  sub_1A5240454();
  sub_1A5240424();
  sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010]);
  sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70]);
  sub_1A5241D34();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A481681C(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB142FD8, sub_1A4818DBC, &type metadata for OneUpSharePlayStreamingVideoItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818DBC();
  sub_1A524ED34();
  type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  sub_1A4818B64(&qword_1EB142FE0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  sub_1A524E9D4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A48169C8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1A4816A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53ED260 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A4816AE4(uint64_t a1)
{
  v2 = sub_1A4818E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816B20(uint64_t a1)
{
  v2 = sub_1A4818E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4816B5C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a5;
  v15[1] = a4;
  sub_1A481AD3C(0, &qword_1EB142FF8, sub_1A4818E78, &type metadata for OneUpSharePlayLivePhotoItem.LivePhotoResource.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818E78();
  sub_1A524ED34();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_1A3D602A8(a2, a3);
  sub_1A3DC4204();
  v13 = v15[3];
  sub_1A524E9D4();
  sub_1A3C59280(v16, v17);
  if (!v13)
  {
    LOBYTE(v16) = 1;
    sub_1A524E954();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4816D30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A4818FF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1A4816D80()
{
  if (*v0)
  {
    return 0x7365526F65646976;
  }

  else
  {
    return 0x7365526F746F6870;
  }
}

uint64_t sub_1A4816DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365526F746F6870 && a2 == 0xED0000656372756FLL;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xED0000656372756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A4816EA4(uint64_t a1)
{
  v2 = sub_1A4819414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816EE0(uint64_t a1)
{
  v2 = sub_1A4819414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4816F1C(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB143018, sub_1A4819414, &type metadata for OneUpSharePlayLivePhotoItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4819414();
  sub_1A524ED34();
  v10 = v3[1];
  v19[0] = *v3;
  v19[1] = v10;
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v20 = 0;
  sub_1A4819468(v19, v15);
  sub_1A48194A0();
  sub_1A524E9D4();
  if (!v2)
  {
    sub_1A3C59280(v16, *(&v16 + 1));

    v12 = v3[3];
    v18[0] = v3[2];
    v18[1] = v12;
    v13 = v3[3];
    v16 = v3[2];
    v17 = v13;
    v20 = 1;
    sub_1A4819468(v18, v15);
    sub_1A524E9D4();
  }

  sub_1A3C59280(v16, *(&v16 + 1));

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4817134@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1A4817148@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4819248();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  sub_1A481936C();
  sub_1A48193C0();
  sub_1A5241CD4();
  sub_1A5240454();
  sub_1A5240424();
  sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010]);
  sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70]);
  sub_1A5241D34();
  return (*(v4 + 8))(v6, v3);
}

double sub_1A481735C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A48194F4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1A48173B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEE006F6564695667 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F68506576696CLL && a2 == 0xE90000000000006FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A48174DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1A481AD3C(0, &qword_1EB143080, sub_1A48141EC, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.LivePhotoCodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v3;
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v32 - v4;
  sub_1A481AD3C(0, &qword_1EB143088, sub_1A4814240, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.StreamingVideoCodingKeys, v2);
  v36 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - v6;
  sub_1A481AD3C(0, &qword_1EB143090, sub_1A4814294, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.ImageCodingKeys, v2);
  v8 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  sub_1A481AD3C(0, &qword_1EB143098, sub_1A48142E8, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.CodingKeys, v2);
  v12 = v11;
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1A48142E8();
  v15 = v41;
  sub_1A524ED14();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v8;
  v17 = v38;
  v16 = v39;
  v41 = a1;
  v18 = sub_1A524E924();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_1A524E4C4();
    swift_allocError();
    v24 = v23;
    sub_1A3FA0828();
    *v24 = &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v40 + 8))(v14, v12);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return a1;
  }

  if (*(v18 + 32))
  {
    if (v20 == 1)
    {
      v46 = 1;
      sub_1A4814240();
      sub_1A524E844();
      v25 = v40;
      (*(v33 + 8))(v17, v36);
      (*(v25 + 8))(v14, v12);
      swift_unknownObjectRelease();
      a1 = 2;
    }

    else
    {
      v47 = 2;
      sub_1A48141EC();
      sub_1A524E844();
      v27 = v40;
      (*(v35 + 8))(v16, v37);
      (*(v27 + 8))(v14, v12);
      swift_unknownObjectRelease();
      a1 = 3;
    }
  }

  else
  {
    v45 = 0;
    sub_1A4814294();
    sub_1A524E844();
    sub_1A481ADA4();
    v26 = v32;
    sub_1A524E8E4();
    (*(v34 + 8))(v10, v26);
    (*(v40 + 8))(v14, v12);
    swift_unknownObjectRelease();
    if (v43)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 | v42;
    if (v44)
    {
      v31 = 0x10000;
    }

    else
    {
      v31 = 0;
    }

    a1 = v30 | v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  return a1;
}

uint64_t sub_1A4817B90(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB143078, sub_1A4817DB4, &type metadata for OneUpSharePlayAttachmentAssetMetadata.ImageContentMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817DB4();
  sub_1A524ED14();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v8 = sub_1A524E8B4();
  v16 = 1;
  v9 = sub_1A524E8B4();
  v15 = 2;
  v11 = sub_1A524E874();
  (*(v5 + 8))(v7, v4);
  if (v11 == 2)
  {
    v11 = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v11)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v8 & 1 | v12;
}

unint64_t sub_1A4817DB4()
{
  result = qword_1EB1D6230;
  if (!qword_1EB1D6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6230);
  }

  return result;
}

unint64_t sub_1A4817E08()
{
  result = qword_1EB1D6238;
  if (!qword_1EB1D6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6238);
  }

  return result;
}

unint64_t sub_1A4817E5C()
{
  result = qword_1EB142F40;
  if (!qword_1EB142F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F40);
  }

  return result;
}

uint64_t sub_1A4817EB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A53ED220 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53ED240 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169746170537369 && a2 == 0xEF6F65726574536CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A524EAB4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A4817FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53ED260 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A4818108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1A481AD3C(0, &qword_1EB143068, sub_1A4817E08, &type metadata for OneUpSharePlayAttachmentAssetMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817E08();
  sub_1A524ED14();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_1A524E8A4();
    v17 = 1;
    sub_1A481ACE8();
    sub_1A524E8E4();
    LODWORD(v13) = v18;
    v16 = 2;
    v10 = sub_1A524E864();
    v11 = *(v6 + 8);
    v13 = v10;
    v11(v8, v5);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A48183C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A481844C()
{
  result = qword_1EB1D6240;
  if (!qword_1EB1D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6240);
  }

  return result;
}

uint64_t sub_1A48184FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001A53ED280 == a2;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72507265676E6966 && a2 == 0xEB00000000746E69 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A53ED2A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x745373776F6C6C61 && a2 == 0xEF676E696D616572)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A481867C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1A481AD3C(0, &qword_1EB143060, sub_1A481844C, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemParameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A481844C();
  sub_1A524ED14();
  if (!v2)
  {
    v19 = 0;
    sub_1A3DC4310();
    sub_1A524E8E4();
    v10 = v17;
    v15 = v18;
    LOBYTE(v17) = 1;
    v11 = sub_1A524E864();
    v14[3] = v12;
    v14[1] = v11;
    LOBYTE(v17) = 2;
    v14[0] = sub_1A524E864();
    v14[2] = v13;
    LOBYTE(v17) = 3;
    sub_1A524E8B4();
    (*(v6 + 8))(v8, v5);
    sub_1A3D602A8(v10, v15);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1A48189C0()
{
  result = qword_1EB1D6248;
  if (!qword_1EB1D6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6248);
  }

  return result;
}

unint64_t sub_1A4818A14()
{
  result = qword_1EB1D6250;
  if (!qword_1EB1D6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6250);
  }

  return result;
}

unint64_t sub_1A4818A68()
{
  result = qword_1EB1D6258;
  if (!qword_1EB1D6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6258);
  }

  return result;
}

unint64_t sub_1A4818ABC()
{
  result = qword_1EB1D6260;
  if (!qword_1EB1D6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6260);
  }

  return result;
}

unint64_t sub_1A4818B10()
{
  result = qword_1EB142F78;
  if (!qword_1EB142F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F78);
  }

  return result;
}

uint64_t sub_1A4818B64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4818BAC()
{
  result = qword_1EB142FA8;
  if (!qword_1EB142FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142FA8);
  }

  return result;
}

void sub_1A4818C00()
{
  if (!qword_1EB142FB0)
  {
    type metadata accessor for OneUpSharePlayStreamingVideoItem(255);
    sub_1A5240454();
    sub_1A5240424();
    sub_1A4818B64(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem);
    sub_1A4818B64(&qword_1EB142FB8, type metadata accessor for OneUpSharePlayStreamingVideoItem);
    sub_1A4818B64(&qword_1EB142FC0, type metadata accessor for OneUpSharePlayStreamingVideoItem);
    sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010]);
    sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70]);
    v0 = sub_1A5241CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142FB0);
    }
  }
}

unint64_t sub_1A4818DBC()
{
  result = qword_1EB1D6268;
  if (!qword_1EB1D6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6268);
  }

  return result;
}

uint64_t sub_1A4818E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4818E78()
{
  result = qword_1EB1D6270;
  if (!qword_1EB1D6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6270);
  }

  return result;
}

uint64_t sub_1A4818ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449616964656DLL && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A4818FF0(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB143058, sub_1A4818E78, &type metadata for OneUpSharePlayLivePhotoItem.LivePhotoResource.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1A4818E78();
  sub_1A524ED14();
  if (!v1)
  {
    v13 = 0;
    sub_1A3DC4310();
    sub_1A524E8E4();
    v10 = v12[0];
    v11 = v12[1];
    LOBYTE(v12[0]) = 1;
    sub_1A524E864();
    (*(v5 + 8))(v7, v4);
    sub_1A3D602A8(v10, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

void sub_1A4819248()
{
  if (!qword_1EB143000)
  {
    sub_1A5240454();
    sub_1A5240424();
    sub_1A435CB54();
    sub_1A481936C();
    sub_1A48193C0();
    sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010]);
    sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70]);
    v0 = sub_1A5241CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143000);
    }
  }
}

unint64_t sub_1A481936C()
{
  result = qword_1EB143008;
  if (!qword_1EB143008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143008);
  }

  return result;
}

unint64_t sub_1A48193C0()
{
  result = qword_1EB143010;
  if (!qword_1EB143010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143010);
  }

  return result;
}

unint64_t sub_1A4819414()
{
  result = qword_1EB1D6278[0];
  if (!qword_1EB1D6278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D6278);
  }

  return result;
}

unint64_t sub_1A48194A0()
{
  result = qword_1EB143020;
  if (!qword_1EB143020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143020);
  }

  return result;
}

uint64_t sub_1A48194F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  sub_1A481AD3C(0, &qword_1EB143048, sub_1A4819414, &type metadata for OneUpSharePlayLivePhotoItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4819414();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  LOBYTE(v23) = 0;
  sub_1A481AC5C();
  sub_1A524E8E4();
  v11 = v27;
  v10 = v28;
  v21 = v29;
  v35 = 1;
  sub_1A524E8E4();
  (*(v9 + 8))(v8, v5);
  v12 = *(&v33 + 1);
  v20 = v33;
  v13 = v34;
  *&v23 = v11;
  *(&v23 + 1) = v10;
  v14 = v21;
  v24 = v21;
  v25 = v33;
  v26 = v34;
  sub_1A481ACB0(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v27 = v11;
  v28 = v10;
  v29 = v14;
  v30 = v20;
  v31 = v12;
  v32 = v13;
  result = sub_1A435CBA8(&v27);
  v16 = v24;
  v17 = v22;
  *v22 = v23;
  v17[1] = v16;
  v18 = v26;
  v17[2] = v25;
  v17[3] = v18;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1A481995C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A48199A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A48199FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A4819A80()
{
  result = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4819AEC()
{
  result = sub_1A5240E64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4819B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A4819C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A4819CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A4819DB8()
{
  if (!qword_1EB143030)
  {
    sub_1A435C204();
    v0 = sub_1A5241C84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143030);
    }
  }
}

unint64_t sub_1A4819EF8()
{
  result = qword_1EB1D6F20[0];
  if (!qword_1EB1D6F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D6F20);
  }

  return result;
}

unint64_t sub_1A4819F50()
{
  result = qword_1EB1D7130[0];
  if (!qword_1EB1D7130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7130);
  }

  return result;
}

unint64_t sub_1A4819FA8()
{
  result = qword_1EB1D7340[0];
  if (!qword_1EB1D7340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7340);
  }

  return result;
}

unint64_t sub_1A481A000()
{
  result = qword_1EB1D7550[0];
  if (!qword_1EB1D7550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7550);
  }

  return result;
}

unint64_t sub_1A481A058()
{
  result = qword_1EB1D7760[0];
  if (!qword_1EB1D7760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7760);
  }

  return result;
}

unint64_t sub_1A481A0B0()
{
  result = qword_1EB1D7A70[0];
  if (!qword_1EB1D7A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7A70);
  }

  return result;
}

unint64_t sub_1A481A108()
{
  result = qword_1EB1D7C80[0];
  if (!qword_1EB1D7C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7C80);
  }

  return result;
}

unint64_t sub_1A481A160()
{
  result = qword_1EB1D7E90[0];
  if (!qword_1EB1D7E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7E90);
  }

  return result;
}

unint64_t sub_1A481A1B8()
{
  result = qword_1EB1D80A0[0];
  if (!qword_1EB1D80A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D80A0);
  }

  return result;
}

unint64_t sub_1A481A210()
{
  result = qword_1EB1D82B0[0];
  if (!qword_1EB1D82B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D82B0);
  }

  return result;
}

unint64_t sub_1A481A268()
{
  result = qword_1EB1D84C0[0];
  if (!qword_1EB1D84C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D84C0);
  }

  return result;
}

unint64_t sub_1A481A2C0()
{
  result = qword_1EB1D85D0;
  if (!qword_1EB1D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D85D0);
  }

  return result;
}

unint64_t sub_1A481A318()
{
  result = qword_1EB1D85D8[0];
  if (!qword_1EB1D85D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D85D8);
  }

  return result;
}

unint64_t sub_1A481A370()
{
  result = qword_1EB1D8660;
  if (!qword_1EB1D8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8660);
  }

  return result;
}

unint64_t sub_1A481A3C8()
{
  result = qword_1EB1D8668[0];
  if (!qword_1EB1D8668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8668);
  }

  return result;
}

unint64_t sub_1A481A420()
{
  result = qword_1EB1D86F0;
  if (!qword_1EB1D86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D86F0);
  }

  return result;
}

unint64_t sub_1A481A478()
{
  result = qword_1EB1D86F8[0];
  if (!qword_1EB1D86F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D86F8);
  }

  return result;
}

unint64_t sub_1A481A4D0()
{
  result = qword_1EB1D8780;
  if (!qword_1EB1D8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8780);
  }

  return result;
}

unint64_t sub_1A481A528()
{
  result = qword_1EB1D8788[0];
  if (!qword_1EB1D8788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8788);
  }

  return result;
}

unint64_t sub_1A481A580()
{
  result = qword_1EB1D8810;
  if (!qword_1EB1D8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8810);
  }

  return result;
}

unint64_t sub_1A481A5D8()
{
  result = qword_1EB1D8818[0];
  if (!qword_1EB1D8818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8818);
  }

  return result;
}

unint64_t sub_1A481A630()
{
  result = qword_1EB1D88A0;
  if (!qword_1EB1D88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D88A0);
  }

  return result;
}

unint64_t sub_1A481A688()
{
  result = qword_1EB1D88A8[0];
  if (!qword_1EB1D88A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D88A8);
  }

  return result;
}

unint64_t sub_1A481A6E0()
{
  result = qword_1EB1D8930;
  if (!qword_1EB1D8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8930);
  }

  return result;
}

unint64_t sub_1A481A738()
{
  result = qword_1EB1D8938[0];
  if (!qword_1EB1D8938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8938);
  }

  return result;
}

unint64_t sub_1A481A790()
{
  result = qword_1EB1D89C0;
  if (!qword_1EB1D89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D89C0);
  }

  return result;
}

unint64_t sub_1A481A7E8()
{
  result = qword_1EB1D89C8[0];
  if (!qword_1EB1D89C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D89C8);
  }

  return result;
}

unint64_t sub_1A481A840()
{
  result = qword_1EB1D8A50;
  if (!qword_1EB1D8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8A50);
  }

  return result;
}

unint64_t sub_1A481A898()
{
  result = qword_1EB1D8A58[0];
  if (!qword_1EB1D8A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8A58);
  }

  return result;
}

unint64_t sub_1A481A8F0()
{
  result = qword_1EB1D8AE0;
  if (!qword_1EB1D8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8AE0);
  }

  return result;
}

unint64_t sub_1A481A948()
{
  result = qword_1EB1D8AE8[0];
  if (!qword_1EB1D8AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8AE8);
  }

  return result;
}

unint64_t sub_1A481A9A0()
{
  result = qword_1EB1D8B70;
  if (!qword_1EB1D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8B70);
  }

  return result;
}

unint64_t sub_1A481A9F8()
{
  result = qword_1EB1D8B78;
  if (!qword_1EB1D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8B78);
  }

  return result;
}

unint64_t sub_1A481AA50()
{
  result = qword_1EB1D8C00;
  if (!qword_1EB1D8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8C00);
  }

  return result;
}

unint64_t sub_1A481AAA8()
{
  result = qword_1EB1D8C08[0];
  if (!qword_1EB1D8C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8C08);
  }

  return result;
}

unint64_t sub_1A481AB00()
{
  result = qword_1EB1D8C90;
  if (!qword_1EB1D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8C90);
  }

  return result;
}

unint64_t sub_1A481AB58()
{
  result = qword_1EB1D8C98[0];
  if (!qword_1EB1D8C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8C98);
  }

  return result;
}

unint64_t sub_1A481ABB0()
{
  result = qword_1EB1D8D20;
  if (!qword_1EB1D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8D20);
  }

  return result;
}

unint64_t sub_1A481AC08()
{
  result = qword_1EB1D8D28[0];
  if (!qword_1EB1D8D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8D28);
  }

  return result;
}

unint64_t sub_1A481AC5C()
{
  result = qword_1EB143050;
  if (!qword_1EB143050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143050);
  }

  return result;
}

unint64_t sub_1A481ACE8()
{
  result = qword_1EB143070;
  if (!qword_1EB143070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143070);
  }

  return result;
}

void sub_1A481AD3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A481ADA4()
{
  result = qword_1EB1430A0;
  if (!qword_1EB1430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1430A0);
  }

  return result;
}

void sub_1A481AE10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  sub_1A481D2B4(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1A481B060@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A481B184(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A481B2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1A3D96DF8();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t sub_1A481B320()
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A481B380(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A481B3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A481B450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A481B4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A481B524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A481B58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A481B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1A3D96DF8();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1A481B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A481B748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

void sub_1A481B980()
{
  swift_beginAccess();
  type metadata accessor for HighlightsBodyLayout.PreInvalidatableEntities();
  swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

void sub_1A481BA6C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1A524DF24();
  v18[10] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v25 = v18 - v5;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v6);
  v18[15] = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v18[14] = v18 - v9;
  v30 = v3;
  v18[5] = *(*((v2 & v3) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = v18 - v11;
  v29 = sub_1A52413E4();
  v21 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4();
  v23 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v27 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A52414C4();
  v18[8] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v22 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18[7] = v18 - v17;
  sub_1A5245E94();
}

id sub_1A481C9B4()
{
  v1 = v0;
  do
  {
    v2 = v1;
    v1 = [v1 superlayout];

    if (!v1)
    {
      break;
    }

    objc_opt_self();
  }

  while (!swift_dynamicCastObjCClass());
  return v1;
}

double sub_1A481CA2C(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  v8 = sub_1A481D7D4(a2);

  return v8;
}

void sub_1A481CAA0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1A481D834(a4);
}

id sub_1A481CB04()
{
  sub_1A3D9B420(&v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(&v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A481CC34(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A481DE1C();
}

id sub_1A481CD44()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HighlightsBodyLayout();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_1A481CDBC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);
  (*(*(*((v4 & v3) + 0x60) - 8) + 8))(&a1[*((*v2 & *a1) + 0x88)], *((v4 & v3) + 0x60));

  v5 = *((*v2 & *a1) + 0xA8);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  return swift_unknownObjectRelease();
}

id sub_1A481D060()
{
  v1 = sub_1A481D128();
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_cachedLayoutGenerator;
  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_cachedLayoutGenerator];
  if (v3)
  {
    v4 = v3;
    [v4 setMetrics_];
    v5 = v4;
  }

  else
  {
    v6 = [objc_allocWithZone(off_1E7721740) initWithMetrics_];
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  [v5 setItemCount_];

  return v5;
}

id sub_1A481D128()
{
  [v0 referenceSize];
  v2 = (v1 + -20.0 + -20.0 + 10.0) / *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_numberOfColumns] + -10.0;
  v3 = [objc_allocWithZone(off_1E7721748) init];
  [v0 referenceSize];
  [v3 setReferenceSize_];

  [v3 setAxis_];
  [v3 setContentInsets_];
  [v3 setItemSize_];
  [v3 setInterItemSpacing_];
  return v3;
}

id sub_1A481D270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridSublayoutComposition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A481D2B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v12 = *v8;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40] & *v8;
  v16 = &v8[*(v15 + 0xA0)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  v17 = *((*v13 & *v8) + 0xA8);
  v24 = a3 & 1;
  v18 = a5 & 1;
  v19 = *(v15 + 96);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v8[v17], 1, 1, AssociatedTypeWitness);
  v21 = &v8[*((*v13 & *v8) + 0xB0)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v8[*((*v13 & *v8) + 0x70)] = a1;
  (*(*(*((v14 & v12) + 0x58) - 8) + 16))(&v8[*((*v13 & *v8) + 0x78)], a2, *((v14 & v12) + 0x58));
  v8[*((*v13 & *v8) + 0x80)] = v24;
  (*(*(v19 - 8) + 16))(&v8[*((*v13 & *v8) + 0x88)], a4, v19);
  v22 = &v8[*((*v13 & *v8) + 0x90)];
  *v22 = v18;
  *(v22 + 1) = a6;
  *(v22 + 2) = a7;
  *(v22 + 3) = a8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A481D834(uint64_t a1)
{
  v16[8] = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v16[4] = *((*MEMORY[0x1E69E7D40] & v2) + 0x68);
  v16[6] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  v16[1] = *(v6 - 8);
  v16[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16[7] = v16 - v7;
  v16[5] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v16[3] = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v18 = v16 - v11;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v17 = *((v3 & v2) + 0x58);
  v16[9] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16[0] = v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  sub_1A5245904();
}

uint64_t sub_1A481DEEC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1A524DF24();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A481E080()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A481E0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A481E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v17 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v18 = *(v17 + 32);
  v19 = *MEMORY[0x1E697E7D0];
  v20 = sub_1A5248714();
  v21 = *(v20 - 8);
  (*(v21 + 104))(&a9[v18], v19, v20);
  v22 = *(v17 + 36);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  result = (*(v21 + 40))(&a9[v18], a11, v20);
  *&a9[v22] = a10;
  return result;
}

uint64_t sub_1A481E278@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697E7D0];
  v3 = sub_1A5248714();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A481E2EC(uint64_t a1, uint64_t a2)
{
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A481E380(uint64_t a1)
{
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A481E40C()
{
  v0 = sub_1A5248714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_1EB1EBF88);
  v5 = __swift_project_value_buffer(v4, qword_1EB1EBF88);
  v6 = *MEMORY[0x1E697E7D0];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v8 = *(v4 + 32);
  v7((v5 + v8), v6, v0);
  v9 = *(v4 + 36);
  *(v5 + v9) = 0x3FF0000000000000;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;

  *(v5 + 48) = 0;
  *(v5 + 56) = 0;

  result = (*(v1 + 40))(v5 + v8, v3, v0);
  *(v5 + v9) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1A481E58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A481E5F0()
{
  if (v0[1])
  {
    sub_1A524ECB4();
    sub_1A524C794();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524ECB4();
    if (v0[3])
    {
LABEL_3:
      sub_1A524ECB4();
      sub_1A524C794();
      if (v0[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1A524ECB4();
      if (v0[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1A524ECB4();
  if (!v0[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A524ECB4();
  sub_1A524C794();
  if (v0[7])
  {
LABEL_5:
    sub_1A524ECB4();
    sub_1A524C794();
    goto LABEL_10;
  }

LABEL_9:
  sub_1A524ECB4();
LABEL_10:
  v1 = type metadata accessor for ShareParticipantImageConfiguration(0);
  sub_1A5248714();
  sub_1A4822070(&qword_1EB13EF20, MEMORY[0x1E697E7E0]);
  sub_1A524C4B4();
  v2 = *(v0 + *(v1 + 36));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v2);
}

void sub_1A481E794()
{
  if (!*(v0 + 8))
  {
    if (*(v0 + 40))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A481E80C()
{
  sub_1A524EC94();
  sub_1A481E5F0();
  return sub_1A524ECE4();
}

uint64_t sub_1A481E850()
{
  sub_1A524EC94();
  sub_1A481E5F0();
  return sub_1A524ECE4();
}

void sub_1A481E890()
{
  sub_1A4821B14();
  type metadata accessor for ShareParticipantImageConfiguration(0);
  sub_1A4822070(&qword_1EB143158, type metadata accessor for ShareParticipantImageConfiguration);
  sub_1A3DBB130();
  sub_1A3DBB140();
}

uint64_t sub_1A481E92C@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB1D9138 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    swift_once();
    a1 = v8;
    a5 = v12;
    a6 = v11;
    a2 = v9;
    a3 = v10;
  }

  result = sub_1A3DBB330(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

void sub_1A481E9C8()
{
  if (qword_1EB1D9138 != -1)
  {
    swift_once();
  }

  sub_1A3DBB71C();
}

void sub_1A481EA30()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A481EAAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A481EB4C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 176))(v4);
  }

  v1[2] = 0;
}

void (*sub_1A481EC74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore42ShareParticipantImageConfigurationsFetcher___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4822070(&unk_1EB1430C0, type metadata accessor for ShareParticipantImageConfigurationsFetcher);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A481EDB0;
}

void sub_1A481EDB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A481EE44(void *a1)
{
  v2 = swift_allocObject();
  sub_1A481EE84(a1);
  return v2;
}

uint64_t sub_1A481EE84(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  sub_1A5241604();
  *(v2 + 24) = a1;
  v10 = qword_1EB1D9148;
  v17 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB1D9150;
  aBlock[4] = sub_1A48217D4;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_280;
  v12 = _Block_copy(aBlock);
  v13 = v11;

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A4822070(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A48217D8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AF4C(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v12);
  _Block_release(v12);

  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);

  return v2;
}

uint64_t sub_1A481F1B8()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4822070(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A48217D8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AF4C(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1D9150 = result;
  return result;
}

void sub_1A481F43C()
{
  v2 = sub_1A524BEE4();
  v236 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v234 = &v225 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1A524BF64();
  v233 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v232 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v252 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v225 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v253 = &v225 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v251 = &v225 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v256 = &v225 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v255 = &v225 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v245 = &v225 - v22;
  v259 = sub_1A5248714();
  v248 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v242 = (&v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v257 = &v225 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v247 = &v225 - v27;
  v260 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v254 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v29 = &v225 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v225 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v225 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v246 = &v225 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v258 = &v225 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v229 = &v225 - v41;
  v263 = MEMORY[0x1E69E7CC0];
  v231 = v0;
  v42 = *(v0 + 24);
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v45 = v42;
    v227 = [v44 objectID];
    if (v227)
    {
      v226 = v45;
      v46 = [v44 cloudOwnerEmail];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1A524C674();
        v256 = v49;
        v257 = v48;
      }

      else
      {
        v256 = 0;
        v257 = 0;
      }

      v78 = [v44 cloudOwnerPhone];
      if (v78)
      {
        v79 = v78;
        v255 = sub_1A524C674();
        v253 = v80;
      }

      else
      {
        v255 = 0;
        v253 = 0;
      }

      v228 = v2;
      v81 = [v44 cloudOwnerFirstName];
      if (v81)
      {
        v82 = v81;
        v83 = sub_1A524C674();
        v251 = v84;
        v252 = v83;
      }

      else
      {
        v251 = 0;
        v252 = 0;
      }

      v85 = [v44 cloudOwnerLastName];
      if (v85)
      {
        v86 = v85;
        v250 = sub_1A524C674();
        v249 = v87;
      }

      else
      {
        v250 = 0;
        v249 = 0;
      }

      v1 = *MEMORY[0x1E697E7D0];
      v88 = v248;
      v18 = v248 + 104;
      v89 = *(v248 + 104);
      v90 = v247;
      v91 = v259;
      v89(v247, v1, v259);
      v92 = v260;
      v93 = *(v260 + 32);
      v35 = v229;
      LODWORD(v245) = v1;
      v244 = v18;
      v243 = v89;
      v89(&v229[v93], v1, v91);
      v94 = *(v92 + 36);
      v95 = v256;
      *v35 = v257;
      *(v35 + 1) = v95;
      v97 = v252;
      v96 = v253;
      *(v35 + 2) = v255;
      *(v35 + 3) = v96;
      v98 = v251;
      *(v35 + 4) = v97;
      *(v35 + 5) = v98;
      v99 = v249;
      *(v35 + 6) = v250;
      *(v35 + 7) = v99;
      v100 = *(v88 + 40);
      v248 = v88 + 40;
      v242 = v100;
      v100(&v35[v93], v90, v91);
      *&v35[v94] = 0x3FF0000000000000;
      sub_1A481E58C(v35, v258);
      v101 = MEMORY[0x1E69E7CC0];
      v9 = sub_1A422E4F8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v103 = *(v9 + 16);
      v102 = *(v9 + 24);
      v104 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        goto LABEL_122;
      }

      while (1)
      {
        v2 = v228;
        *(v9 + 16) = v104;
        v241 = ((*(v254 + 80) + 32) & ~*(v254 + 80));
        v240 = *(v254 + 72);
        sub_1A422EBBC(v258, v241 + v9 + v240 * v103);
        v263 = v9;
        v105 = [v44 photoLibrary];
        v104 = v226;

        if (!v105)
        {
          break;
        }

        v106 = [v105 managedObjectContextForCurrentQueueQoS];

        v59 = v227;
        v225 = v106;
        v107 = PXSharedAlbumsParticipantsForAlbumWithObjectID(v227, 0, v106);
        if (!v107)
        {
          goto LABEL_126;
        }

        v108 = v107;
        sub_1A3C52C70(0, &qword_1EB12C1B0);
        v109 = sub_1A524CA34();

        v110 = v109;
        if (v109 >> 62)
        {
          v217 = v109;
          v29 = sub_1A524E2B4();
          v110 = v217;
          if (!v29)
          {
LABEL_124:

            v44 = MEMORY[0x1E69E7CC0];
LABEL_125:
            sub_1A4820E5C(v44);
            v2 = v228;
LABEL_126:

            sub_1A48220B8(v229, type metadata accessor for ShareParticipantImageConfiguration);
            goto LABEL_127;
          }
        }

        else
        {
          v29 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v29)
          {
            goto LABEL_124;
          }
        }

        v9 = v110;
        aBlock[0] = v101;
        v58 = aBlock;
        sub_1A4821174(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          __break(1u);
          goto LABEL_131;
        }

        v101 = 0;
        v44 = aBlock[0];
        v111 = v9;
        v239 = (v9 & 0xC000000000000001);
        v230 = v9 & 0xFFFFFFFFFFFFFF8;
        v238 = v9;
        v237 = v29;
        v102 = &v266;
        v35 = v247;
        v112 = v259;
        while (1)
        {
          v103 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            break;
          }

          if (v239)
          {
            v113 = MEMORY[0x1A59097F0](v101, v111);
          }

          else
          {
            v102 = *(v230 + 16);
            if (v101 >= v102)
            {
              goto LABEL_121;
            }

            v113 = v111[v101 + 4];
          }

          v114 = v113;
          v115 = [v113 emailAddressString];
          if (v115)
          {
            v116 = v115;
            v117 = sub_1A524C674();
            v253 = v118;
            v254 = v117;
          }

          else
          {
            v253 = 0;
            v254 = 0;
          }

          v119 = [v114 phoneNumberString];
          if (v119)
          {
            v120 = v119;
            v121 = sub_1A524C674();
            v251 = v122;
            v252 = v121;
          }

          else
          {
            v251 = 0;
            v252 = 0;
          }

          v123 = [v114 firstName];
          if (v123)
          {
            v124 = v123;
            v250 = sub_1A524C674();
            v249 = v125;
          }

          else
          {
            v250 = 0;
            v249 = 0;
          }

          v126 = [v114 lastName];
          v257 = v44;
          v258 = v101;
          v255 = v114;
          v256 = (v101 + 1);
          if (v126)
          {
            v127 = v126;
            v128 = sub_1A524C674();
            v130 = v129;
          }

          else
          {
            v128 = 0;
            v130 = 0;
          }

          v131 = v245;
          v1 = v244;
          v132 = v243;
          v243(v35, v245, v112);
          v133 = v260;
          v18 = *(v260 + 32);
          v134 = v246;
          v132(&v246[v18], v131, v112);
          v135 = *(v133 + 36);
          v136 = v253;
          *v134 = v254;
          *(v134 + 1) = v136;
          v137 = v251;
          *(v134 + 2) = v252;
          *(v134 + 3) = v137;
          v138 = v249;
          *(v134 + 4) = v250;
          *(v134 + 5) = v138;
          *(v134 + 6) = v128;
          *(v134 + 7) = v130;
          v242(&v134[v18], v35, v112);

          *&v134[v135] = 0x3FF0000000000000;
          v44 = v257;
          aBlock[0] = v257;
          v104 = *(v257 + 2);
          v139 = *(v257 + 3);
          v9 = v104 + 1;
          if (v104 >= v139 >> 1)
          {
            sub_1A4821174(v139 > 1, v104 + 1, 1);
            v134 = v246;
            v44 = aBlock[0];
          }

          v44[2] = v9;
          sub_1A422EBBC(v134, v241 + v44 + v104 * v240);
          v101 = v258 + 1;
          v102 = &v262;
          v111 = v238;
          if (v256 == v237)
          {

            v104 = v226;
            v59 = v227;
            goto LABEL_125;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        v9 = sub_1A422E4F8(v102 > 1, v104, 1, v9);
      }

      __break(1u);
      goto LABEL_135;
    }
  }

  v262 = &unk_1F1B0E9A0;
  v50 = swift_dynamicCastObjCProtocolConditional();
  if (!v50)
  {
    sub_1A48217D8(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
    v65 = (*(v254 + 80) + 32) & ~*(v254 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1A52F8E10;
    if (qword_1EB1D9130 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v260, qword_1EB1EBF88);
    swift_beginAccess();
    sub_1A481E58C(v67, v66 + v65);
    v263 = v66;
LABEL_127:
    sub_1A3C52C70(0, &qword_1EB12B180);
    v218 = sub_1A524D474();
    v219 = v263;
    v220 = swift_allocObject();
    *(v220 + 16) = v231;
    *(v220 + 24) = v219;
    aBlock[4] = sub_1A4821AC0;
    aBlock[5] = v220;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_14_7;
    v221 = _Block_copy(aBlock);

    v222 = v232;
    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4822070(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v223 = MEMORY[0x1E69E7F60];
    sub_1A48217D8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AF4C(&qword_1EB12B1B0, &qword_1EB12B1C0, v223);
    v224 = v234;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v222, v224, v221);
    _Block_release(v221);

    (*(v236 + 8))(v224, v2);
    (*(v233 + 8))(v222, v235);
    return;
  }

  v51 = v50;
  v240 = v42;
  v52 = [v240 photoLibrary];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 librarySpecificFetchOptions];

    v55 = v54;
    v56 = [objc_opt_self() fetchParticipantsInShare:v51 options:v54];
    v57 = [v56 fetchedObjects];
    if (v57)
    {
      v58 = v57;
      v238 = v56;
      v239 = v55;
      sub_1A3C52C70(0, &qword_1EB1209C8);
      v59 = sub_1A524CA34();

      aBlock[0] = MEMORY[0x1E69E7CC0];
      if (v59 >> 62)
      {
        v60 = sub_1A524E2B4();
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v249 = v9;
      v258 = v29;
      v247 = v32;
      if (!v60)
      {

        v241 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v18 = MEMORY[0x1E69E7CC0];
        v59 = v253;
        goto LABEL_88;
      }

      v246 = v35;
      v61 = &v265;
      v244 = v18;
      if (v60 >= 1)
      {
        v62 = 0;
        v1 = 0;
        v9 = v59 & 0xC000000000000001;
        v18 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v9)
          {
            v63 = MEMORY[0x1A59097F0](v1, v59);
          }

          else
          {
            v63 = *(v59 + 8 * v1 + 32);
          }

          v58 = v63;
          if ([v63 role] == 1)
          {

            v62 = v58;
          }

          else
          {
            v64 = v58;
            v58 = aBlock;
            MEMORY[0x1A5907D70]();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
              v29 = v258;
            }

            sub_1A524CAE4();

            v18 = aBlock[0];
          }

          ++v1;
        }

        while (v60 != v1);

        if (!v62)
        {
          v241 = 0;
          v35 = MEMORY[0x1E69E7CC0];
          v59 = v253;
          goto LABEL_88;
        }

        v68 = *MEMORY[0x1E697E7D0];
        v69 = *(v248 + 104);
        v70 = v259;
        v69(v257, v68, v259);
        v71 = *(v260 + 32);
        v72 = v246;
        v69(v71 + v246, v68, v70);
        v241 = v62;
        v73 = [v241 emailAddress];
        if (v73)
        {
          v74 = v73;
          v75 = sub_1A524C674();
          v77 = v76;
        }

        else
        {
          v75 = 0;
          v77 = 0;
        }

        *v72 = v75;
        v72[1] = v77;
        v140 = [v241 phoneNumber];
        if (v140)
        {
          v141 = v140;
          v142 = sub_1A524C674();
          v144 = v143;
        }

        else
        {
          v142 = 0;
          v144 = 0;
        }

        v72[2] = v142;
        v72[3] = v144;
        v145 = [v241 nameComponents];
        v250 = v18;
        v243 = v71;
        if (v145)
        {
          v146 = v255;
          v147 = v145;
          sub_1A5240A14();

          v148 = 0;
        }

        else
        {
          v148 = 1;
          v146 = v255;
        }

        v149 = sub_1A5240A24();
        v150 = *(v149 - 8);
        v151 = *(v150 + 56);
        v151(v146, v148, 1, v149);
        v152 = v245;
        sub_1A481E2EC(v146, v245);
        v153 = *(v150 + 48);
        if (v153(v152, 1, v149) == 1)
        {
          sub_1A481E380(v152);
          v154 = 0;
          v155 = 0;
        }

        else
        {
          v154 = sub_1A52409D4();
          v155 = v156;
          (*(v150 + 8))(v152, v149);
        }

        v157 = v246;
        *(v246 + 4) = v154;
        *(v157 + 5) = v155;
        v158 = [v241 nameComponents];
        if (v158)
        {
          v159 = v256;
          v160 = v158;
          sub_1A5240A14();

          v161 = 0;
        }

        else
        {
          v161 = 1;
          v159 = v256;
        }

        v151(v159, v161, 1, v149);
        v162 = v244;
        sub_1A481E2EC(v159, v244);
        if (v153(v162, 1, v149) == 1)
        {

          sub_1A481E380(v162);
          v163 = 0;
          v164 = 0;
        }

        else
        {
          v163 = sub_1A52409E4();
          v164 = v165;

          (*(v150 + 8))(v162, v149);
        }

        v59 = v253;
        v166 = v257;
        v29 = v258;
        v18 = v250;
        v1 = v246;
        v167 = v243;
        v168 = v259;
        v169 = *(v260 + 36);
        *(v246 + 6) = v163;
        *(v1 + 56) = v164;
        (*(v248 + 40))(v167 + v1, v166, v168);
        *(v1 + v169) = 0x3FF0000000000000;
        v35 = sub_1A422E4F8(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v9 = *(v35 + 2);
        v61 = *(v35 + 3);
        v58 = (v9 + 1);
        if (v9 < v61 >> 1)
        {
          goto LABEL_87;
        }

        goto LABEL_133;
      }

LABEL_131:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_133:
        v35 = sub_1A422E4F8(v61 > 1, v58, 1, v35);
LABEL_87:

        *(v35 + 2) = v58;
        sub_1A422EBBC(v1, &v35[((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v9]);
        v263 = v35;
LABEL_88:
        v228 = v2;
        v170 = v18 >> 62 ? sub_1A524E2B4() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61 = &v264;
        v2 = v242;
        if (!v170)
        {
          break;
        }

        if (v170 >= 1)
        {
          v171 = 0;
          v245 = v18 & 0xC000000000000001;
          LODWORD(v244) = *MEMORY[0x1E697E7D0];
          v243 = (v248 + 104);
          v248 += 40;
          v250 = v18;
          v246 = v170;
          do
          {
            v256 = v171;
            if (v245)
            {
              v172 = MEMORY[0x1A59097F0](v171, v18);
            }

            else
            {
              v172 = *(v18 + 8 * v171 + 32);
            }

            v173 = v172;
            v257 = v35;
            v174 = *v243;
            v175 = v244;
            v176 = v259;
            (*v243)(v2, v244, v259);
            v255 = *(v260 + 32);
            v174(v29 + v255, v175, v176);
            v177 = v173;
            v178 = [v177 emailAddress];
            if (v178)
            {
              v179 = v178;
              v180 = sub_1A524C674();
              v182 = v181;
            }

            else
            {
              v180 = 0;
              v182 = 0;
            }

            *v29 = v180;
            *(v29 + 8) = v182;
            v183 = [v177 phoneNumber];
            if (v183)
            {
              v184 = v183;
              v185 = sub_1A524C674();
              v187 = v186;
            }

            else
            {
              v185 = 0;
              v187 = 0;
            }

            *(v29 + 16) = v185;
            *(v29 + 24) = v187;
            v188 = [v177 nameComponents];
            if (v188)
            {
              v189 = v188;
              sub_1A5240A14();

              v190 = 0;
            }

            else
            {
              v190 = 1;
            }

            v191 = sub_1A5240A24();
            v192 = *(v191 - 8);
            v193 = *(v192 + 56);
            v193(v59, v190, 1, v191);
            v194 = v251;
            sub_1A481E2EC(v59, v251);
            v195 = *(v192 + 48);
            if (v195(v194, 1, v191) == 1)
            {
              sub_1A481E380(v194);
              v196 = 0;
              v197 = 0;
            }

            else
            {
              v198 = v194;
              v196 = sub_1A52409D4();
              v197 = v199;
              v200 = v198;
              v2 = v242;
              (*(v192 + 8))(v200, v191);
            }

            v201 = v258;
            *(v258 + 32) = v196;
            *(v201 + 40) = v197;
            v202 = [v177 nameComponents];
            if (v202)
            {
              v203 = v252;
              v204 = v202;
              sub_1A5240A14();

              v205 = 0;
            }

            else
            {
              v205 = 1;
              v203 = v252;
            }

            v193(v203, v205, 1, v191);
            v206 = v249;
            sub_1A481E2EC(v203, v249);
            if (v195(v206, 1, v191) == 1)
            {

              sub_1A481E380(v206);
              v207 = 0;
              v208 = 0;
            }

            else
            {
              v207 = sub_1A52409E4();
              v208 = v209;

              (*(v192 + 8))(v206, v191);
            }

            v59 = v253;
            v210 = v247;
            v211 = v255;
            v212 = v259;
            v213 = *(v260 + 36);
            v29 = v258;
            *(v258 + 48) = v207;
            *(v29 + 56) = v208;
            (*v248)(v29 + v211, v2, v212);
            *(v29 + v213) = 0x3FF0000000000000;
            sub_1A422EBBC(v29, v210);
            v35 = v257;
            v214 = v2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1A422E4F8(0, *(v35 + 2) + 1, 1, v35);
            }

            v18 = v250;
            v216 = *(v35 + 2);
            v215 = *(v35 + 3);
            if (v216 >= v215 >> 1)
            {
              v35 = sub_1A422E4F8(v215 > 1, v216 + 1, 1, v35);
            }

            v171 = v256 + 1;

            *(v35 + 2) = v216 + 1;
            sub_1A422EBBC(v210, &v35[((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v216]);
            v263 = v35;
            v2 = v214;
          }

          while (v246 != v171);
          break;
        }
      }

      v2 = v228;
    }

    else
    {
    }

    goto LABEL_127;
  }

LABEL_135:
  __break(1u);
}