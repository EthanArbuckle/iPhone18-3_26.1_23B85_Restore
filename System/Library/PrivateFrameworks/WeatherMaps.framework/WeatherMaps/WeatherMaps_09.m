uint64_t sub_220EE0B50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationPickerViewModel.Row();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220EE0B94()
{
  result = qword_27CF9E7E8;
  if (!qword_27CF9E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E7E8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_220EE0BFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220EE0C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EE0CB8()
{
  result = sub_220FC1070();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EE0D38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 65))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220EE0D78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_220EE0E10()
{
  OUTLINED_FUNCTION_19();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E818);
  *v1 = v0;
  v1[1] = sub_220EE0EF4;

  return MEMORY[0x282200830](v0 + 16, &unk_220FD1778);
}

uint64_t sub_220EE0EF4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 40) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_220EE1068()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 40));
  sub_220EE2DCC((v1 + 16));

  os_unfair_lock_unlock((v1 + 40));
}

void sub_220EE10C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE37AC(v2);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_220EE1110()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE3540(v2);
  os_unfair_lock_unlock(v1 + 10);
}

void sub_220EE1160()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  v2 = OUTLINED_FUNCTION_7_13();
  sub_220EE3A00(v2);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_220EE11B0()
{
  v0 = sub_220FC37A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220EE11FC(char a1)
{
  if (!a1)
  {
    return 0x676E69646E6570;
  }

  if (a1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_220EE1280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EE11B0();
  *a1 = result;
  return result;
}

uint64_t sub_220EE12B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220EE11FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220EE12DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F90];
  v8 = *(a3 + 16);
  *(v3 + 136) = *a3;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 112) = v7;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  *(v3 + 152) = v8;
  *(v3 + 168) = *(a3 + 32);
  *(v3 + 184) = *(a3 + 48);
  return v3;
}

uint64_t sub_220EE134C(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 200) && *(v1 + 200) != 1)
  {

    goto LABEL_7;
  }

  v4 = sub_220FC3940();

  if (v4)
  {
LABEL_7:
    sub_220FC2A60();
    sub_220E6E95C();
    swift_allocError();
    sub_220FC2580();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
    return sub_220FC2A40();
  }

  if (*(v1 + 192))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
    return sub_220FC2A50();
  }

  else
  {
    sub_220E45248();
    v6 = *(*(v1 + 112) + 16);
    sub_220F095A8(v6);
    v7 = *(v1 + 112);
    *(v7 + 16) = v6 + 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
    result = (*(*(v8 - 8) + 16))(v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6, a1, v8);
    *(v2 + 112) = v7;
  }

  return result;
}

uint64_t sub_220EE151C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v15 - v4;
  if (*(v0 + 192))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    sub_220FC2B00();
  }

  *(v0 + 200) = 2;
  v6 = *(v0 + 112);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15[1] = *(v0 + 112);
    v16 = v0;
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v5, v11, v1);
      sub_220FC2A60();
      sub_220E6E95C();
      v13 = swift_allocError();
      sub_220FC2580();
      v17 = v13;
      sub_220FC2A40();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);

    v0 = v16;
  }

  *(v0 + 112) = MEMORY[0x277D84F90];

  *(v0 + 192) = 0;
}

uint64_t sub_220EE170C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v16 - v6;
  *(v1 + 192) = a1;

  *(v1 + 200) = 1;
  v8 = *(v1 + 112);
  v9 = *(v8 + 16);
  if (v9)
  {
    v16[1] = *(v1 + 112);
    v17 = v1;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);

    do
    {
      v11(v7, v13, v3);
      v18 = a1;

      sub_220FC2A50();
      (*(v10 - 8))(v7, v3);
      v13 += v14;
      --v9;
    }

    while (v9);

    v1 = v17;
  }

  *(v1 + 112) = MEMORY[0x277D84F90];
}

uint64_t sub_220EE189C()
{

  sub_220E92C8C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220EE18E8()
{
  v0 = sub_220EE189C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_220EE1910(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_220EE1930, 0, 0);
}

uint64_t sub_220EE1930()
{
  OUTLINED_FUNCTION_32();
  sub_220FC2B50();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E818);
  *v1 = v0;
  v1[1] = sub_220EE1A4C;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_220EE1A4C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_32_0();

    return v8();
  }
}

uint64_t sub_220EE1B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v17 - v11;
  result = sub_220FC2B40();
  if ((result & 1) == 0)
  {
    v14 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
    (*(v5 + 16))(v8, a1, v4);
    v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = a2;
    (*(v5 + 32))(&v16[v15], v8, v4);

    sub_220F9BB1C(0, 0, v12, &unk_220FD17A8, v16);
  }

  return result;
}

uint64_t sub_220EE1D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220EE1D7C, 0, 0);
}

uint64_t sub_220EE1D7C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_valueHolder);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_0_43(sub_220EE1DA4, v1);
}

uint64_t sub_220EE1DA4()
{
  OUTLINED_FUNCTION_19();
  sub_220EE134C(*(v0 + 24));
  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220EE1DFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_220F9BB1C(0, 0, v5, &unk_220FD1790, v7);
}

uint64_t sub_220EE1F04()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_valueHolder);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_43(sub_220EE1F2C, v1);
}

uint64_t sub_220EE1F2C()
{
  OUTLINED_FUNCTION_19();
  sub_220EE151C();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220EE1F8C()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_cancelBlock);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v2(v3, v4);

  OUTLINED_FUNCTION_32_0();

  return v5();
}

uint64_t sub_220EE201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = *a5;
  v16 = a5[1];
  v18 = *(a5 + 16);
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v19 = *(a3 + 16);
  *(v12 + 32) = *a3;
  *(v12 + 48) = v19;
  *(v12 + 64) = *(a3 + 32);
  *(v12 + 80) = *(a3 + 48);
  v20 = OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_source;
  v21 = sub_220FC0C00();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v12 + v20, a4, v21);
  v23 = v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose;
  *v23 = v17;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_options) = a6;
  sub_220EE36D4(a7, v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_networkActivity);
  v24 = (v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_runBlock);
  *v24 = a8;
  v24[1] = a9;
  v25 = (v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_cancelBlock);
  *v25 = a10;
  v25[1] = a11;
  type metadata accessor for WeatherMapOverlayServiceTask.ValueHolder();
  swift_allocObject();

  sub_220E92C30(a3, v32);
  v26 = sub_220EE12DC(a1, a2, a3);
  sub_220EE3744(a7);
  (*(v22 + 8))(a4, v21);
  *(v12 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_valueHolder) = v26;
  return v12;
}

uint64_t sub_220EE21F0(uint64_t a1, uint64_t a2, void (*a3)(void, void, char *, uint64_t, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;

  a3(0, 0, v9, a2, v11);
}

uint64_t sub_220EE22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_220EE22F8, 0, 0);
}

uint64_t sub_220EE22F8()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_runBlock);

  v3 = v2(v1);
  v0[4] = v3;

  if (v3)
  {
    v5 = v0[3];
    v6 = swift_task_alloc();
    v0[5] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_220EE2484;
    v8 = v0[2];

    return MEMORY[0x282200830](v8, &unk_220FD17C8);
  }

  else
  {
    OUTLINED_FUNCTION_32_0();

    return v9();
  }
}

void sub_220EE2484()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_33();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_220EE25AC()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220EE2608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_220EE2628, 0, 0);
}

uint64_t sub_220EE2628()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_valueHolder);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_0_43(sub_220EE2650, v1);
}

uint64_t sub_220EE2650()
{
  OUTLINED_FUNCTION_19();
  sub_220EE170C(*(v0 + 24));
  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220EE26AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);

  return sub_220FC2B00();
}

uint64_t sub_220EE2728()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_valueHolder);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_43(sub_220EE2750, v1);
}

uint64_t sub_220EE2750()
{
  OUTLINED_FUNCTION_19();
  sub_220EE151C();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220EE27B0()
{

  sub_220E92C8C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_source;
  v2 = sub_220FC0C00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_220E5AE5C(*(v0 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose), *(v0 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose + 8), *(v0 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_purpose + 16));

  sub_220EE3744(v0 + OBJC_IVAR____TtC11WeatherMaps28WeatherMapOverlayServiceTask_networkActivity);

  return v0;
}

uint64_t sub_220EE289C()
{
  sub_220EE27B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220EE2920()
{
  v1 = sub_220FC0E70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC0CA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812CA130 != -1)
  {
    swift_once();
  }

  if (sub_220FC0A50())
  {
    sub_220FC0AB0();
    sub_220FC0A90();
    if (qword_27CF9C128 != -1)
    {
      swift_once();
    }

    sub_220FC0A80();

    return v13[1];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    sub_220FC0F40();
    sub_220FC0C90();
    (*(v7 + 8))(v10, v6);
    v11 = sub_220FC0DF0();
    (*(v2 + 8))(v5, v1);
  }

  return v11;
}

uint64_t sub_220EE2B6C(void *a1, uint64_t a2, uint64_t a3)
{

  sub_220E45218();
  v6 = *(*a1 + 16);
  sub_220F09560(v6);
  v7 = *a1;
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *a1 = v7;

  swift_isUniquelyReferenced_nonNull_native();
  v10 = a1[1];
  sub_220E97DD8();
  a1[1] = v10;
  return sub_220EE2C40(a1);
}

uint64_t sub_220EE2C40(uint64_t result)
{
  if (*(*result + 16))
  {
    if ((v1 = result, sub_220EE2920() >= 1) && (v2 = *(*(v1 + 16) + 16), v2 < sub_220EE2920()) || (result = sub_220EE2920()) == 0)
    {

      return sub_220EE3000(v1);
    }
  }

  return result;
}

uint64_t sub_220EE2CC0(uint64_t a1)
{

  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(a1 + 16);
  result = sub_220E97DD8();
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220EE2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_220F62D4C(a2, a3, *(a1 + 16));
  sub_220E9706C(a2, a3, v9, v10, v11, v12, v13, v14, v16, v17);

  result = sub_220EE2C40(a1);
  *a4 = v8;
  return result;
}

uint64_t sub_220EE2DCC(void *a1)
{

  *a1 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E810);
  sub_220FC2610();
  v2 = a1[2];
  v4 = v2 + 64;
  v3 = *(v2 + 64);
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return sub_220FC2610();
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        sub_220EE21F0(&unk_283482828, &unk_220FD1760, sub_220F9BB1C);
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220EE2F54(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  result = sub_220EE37CC(a1, a2, a3);
  v7 = *(*a1 + 16);
  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    sub_220F42F68(result, v7);
    sub_220E9706C(a2, a3, v8, v9, v10, v11, v12, v13, v20, v22);

    sub_220E9706C(a2, a3, v14, v15, v16, v17, v18, v19, v21, v23);

    return sub_220EE2C40(a1);
  }

  return result;
}

uint64_t sub_220EE3000(uint64_t a1)
{
  v2 = sub_220EE3104();
  sub_220E9706C(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  if (v10)
  {
    sub_220EE21F0(&unk_2834828A0, &unk_220FD17B8, sub_220E861C4);

    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 16);
    sub_220E97DD8();

    *(a1 + 16) = v14;
  }

  else
  {
  }

  return result;
}

uint64_t sub_220EE3104()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_220F42F68(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayServiceTask.ValueHolder.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220EE3238()
{
  result = qword_27CF9E800;
  if (!qword_27CF9E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E800);
  }

  return result;
}

uint64_t sub_220EE328C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_38(v1);

  return sub_220EE2708(v3, v4, v5, v6);
}

uint64_t sub_220EE3318()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43(v3);
  *v4 = v5;
  v4[1] = sub_220E5B490;

  return sub_220EE1910(v2, v0);
}

uint64_t sub_220EE33B0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_38(v1);

  return sub_220EE1EE4(v3, v4, v5, v6);
}

uint64_t sub_220EE3444(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_43(v8);
  *v9 = v10;
  v9[1] = sub_220E5B0F0;

  return sub_220EE1D5C(a1, v5, v6, v7, v1 + v4);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220EE35A0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_38(v1);

  return sub_220EE22D8(v3, v4, v5, v6);
}

uint64_t sub_220EE362C()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43(v5);
  *v6 = v7;
  v6[1] = sub_220E5B490;

  return sub_220EE2608(v2, v4, v3);
}

uint64_t sub_220EE36D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EE3744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220EE37CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  result = sub_220EE395C(v7, a2, a3);
  v10 = result;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v10 = *(v7 + 16);
LABEL_21:

    return v10;
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = a1;
    for (i = 16 * result; ; i += 16)
    {
      v13 = *(v7 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v7 + i + 48);
      v15 = *(v7 + i + 56);
      if (v14 != a2 || v15 != a3)
      {
        result = sub_220FC3940();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v13)
            {
              goto LABEL_23;
            }

            v17 = (v7 + 32 + 16 * v10);
            v18 = v17[1];
            v23 = *v17;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_220E98978(v7);
              v7 = v21;
            }

            v19 = v7 + 16 * v10;
            *(v19 + 32) = v14;
            *(v19 + 40) = v15;

            if (v11 >= *(v7 + 16))
            {
              goto LABEL_24;
            }

            v20 = v7 + i;
            *(v20 + 48) = v23;
            *(v20 + 56) = v18;

            *v22 = v7;
          }

          ++v10;
        }
      }

      ++v11;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_220EE395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_220FC3940() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_220EE3A34()
{
  v1 = type metadata accessor for ScrubberStore.ViewModel(0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_27();
  sub_220EE60B8(v0 + v7, v6, v8);
  sub_220FC1980();
  OUTLINED_FUNCTION_0_44();
  return sub_220EE5CB0(v6, v9);
}

uint64_t sub_220EE3AE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  sub_220EE6118(a1, v1 + v3);
  swift_endAccess();
  sub_220EE3A34();
  OUTLINED_FUNCTION_0_44();
  return sub_220EE5CB0(a1, v4);
}

uint64_t sub_220EE3B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D560);
  sub_220EE617C();
  return sub_220FC19D0();
}

BOOL sub_220EE3BB8()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v7 = OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v10 = OUTLINED_FUNCTION_12_11();
  type metadata accessor for MapScrubberOverlayViewModel(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_11_8();
  v14 = type metadata accessor for ScrubberStore.ViewModel(v13);
  v15 = OUTLINED_FUNCTION_5_20(v14);
  sub_220EE60B8(v15, v3, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v3[1];
    if (v17)
    {
      sub_220E3B0C4(*v3, v17);
      return 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_7_14();
  sub_220EE5CB0(v3, v19);
  if (*v1 - 3 < 2)
  {
    return 0;
  }

  sub_220EE5BFC(&v1[*(v14 + 28)], v0, &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_220E3B2DC(v0, &unk_27CF9EB80);
    return 0;
  }

  v20 = OUTLINED_FUNCTION_63_0();
  sub_220EE5C4C(v20, v21);
  v22 = *(v2 + 200);
  OUTLINED_FUNCTION_1_39();
  sub_220EE5CB0(v2, v23);
  return (v22 - 5) < 0xFFFFFFFE;
}

void sub_220EE3D6C()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10, v11);
  v12 = OUTLINED_FUNCTION_12_11();
  v13 = type metadata accessor for MapScrubberOverlayViewModel(v12);
  v14 = OUTLINED_FUNCTION_8_0(v13);
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  if ((v8 - 3) < 2)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = *v6;
  if (v19 - 3) <= 1 && (v4)
  {
LABEL_6:
    v20 = type metadata accessor for ScrubberStore.ViewModel(0);
    sub_220E3B2DC(&v6[v20[7]], &unk_27CF9EB80);
    v21 = type metadata accessor for WeatherMapOverlay();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory), *(v2 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory + 24));
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
    sub_220E41EDC(v0, *&v6[v20[17]], v6[v20[17] + 8], v18);
    sub_220E3B2DC(v0, &unk_27CF9EB80);
    sub_220EE5D68(v18, &v6[v20[18]]);
LABEL_7:
    v19 = *v6;
  }

  if (v8 != 5)
  {
    if (v8 == 4)
    {
      if (v19 == 4)
      {
        goto LABEL_15;
      }
    }

    else if (v8 == 3)
    {
      if (v19 == 3)
      {
        goto LABEL_15;
      }
    }

    else if ((v19 - 6) <= 0xFFFFFFFC && v19 == v8)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v6 = v8;
    goto LABEL_15;
  }

  if (v19 != 5)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  v28 = sub_220E1B804();

  v29 = v28 & (v8 == 1);
  v30 = type metadata accessor for ScrubberStore.ViewModel(0);
  v6[*(v30 + 52)] = v29;
  v6[1] = sub_220EE3BB8();
  v6[*(v30 + 48)] = 0;
  OUTLINED_FUNCTION_22();
}

void sub_220EE3FCC()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for ScrubberStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v28 - v22;
  v24 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_27();
  sub_220EE60B8(v5 + v24, v23, v25);
  if (v23[1] == 1)
  {
    v23[1] = 0;
    if (v23[*(v14 + 48)] == 1 && (v3 & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager), *(v1 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager + 24));
      sub_220FC0670();
      sub_220E70408(v13);
      (*(v8 + 8))(v13, v6);
    }

    goto LABEL_7;
  }

  if (sub_220EE3BB8())
  {
    v23[1] = 1;
LABEL_7:
    *&v23[*(v14 + 60)] = 0;
  }

  OUTLINED_FUNCTION_3_27();
  sub_220EE60B8(v23, v19, v26);
  sub_220EE3AE8(v19);
  OUTLINED_FUNCTION_0_44();
  sub_220EE5CB0(v23, v27);

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EE41AC(void (*a1)(char *))
{
  v3 = type metadata accessor for ScrubberStore.ViewModel(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  swift_beginAccess();
  sub_220EE60B8(v1 + v13, v12, type metadata accessor for ScrubberStore.ViewModel);
  a1(v12);
  sub_220EE60B8(v12, v8, type metadata accessor for ScrubberStore.ViewModel);
  sub_220EE3AE8(v8);
  OUTLINED_FUNCTION_0_44();
  return sub_220EE5CB0(v12, v14);
}

uint64_t sub_220EE42C0(uint64_t a1, char a2, char a3, unsigned __int8 a4)
{
  v9 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_8_0(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22[-v13];
  v23 = a1;
  v24 = v4;
  v25 = a3;
  v26 = a2;
  result = sub_220EE41AC(sub_220EE5D08);
  if (v9 != 2)
  {
    sub_220FC02B0();
    OUTLINED_FUNCTION_42();
    v20 = __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    MEMORY[0x28223BE20](v20, v21);
    v22[-16] = a4;
    *&v22[-8] = v14;
    sub_220EE41AC(sub_220EE61E0);
    return sub_220E3B2DC(v14, &qword_27CF9EBC0);
  }

  return result;
}

void sub_220EE43FC()
{
  OUTLINED_FUNCTION_29_2();
  v38 = v0;
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for WeatherMapOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v37 = v17 - v16;
  v18 = type metadata accessor for MapScrubberOverlayViewModel(0);
  v19 = OUTLINED_FUNCTION_8_0(v18);
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_3();
  v23 = (v22 - v21);
  v24 = type metadata accessor for ScrubberStore.ViewModel(0);
  v25 = v24[7];
  sub_220EE5D18(v5, v7 + v25, &unk_27CF9EB80);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory), *(v3 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory + 24));
  v26 = v24[16];
  sub_220E41EDC(v7 + v25, *(v7 + v24[17]), *(v7 + v24[17] + 8), v23);
  sub_220EE5D68(v23, v7 + v24[18]);
  if ((v38 & 1) != 0 && sub_220EE3BB8())
  {
    *(v7 + 1) = 1;
  }

  v27 = v39;
  if (v39 != 3)
  {
    sub_220EE5BFC(v7 + v25, v12, &unk_27CF9EB80);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_220E3B2DC(v12, &unk_27CF9EB80);
    }

    else
    {
      v28 = v12;
      v29 = v37;
      sub_220EE5C4C(v28, v37);
      *(v7 + v26) = v27;
      if (qword_2812C7508 != -1)
      {
        OUTLINED_FUNCTION_8_17();
      }

      v30 = sub_220E1B804();

      if (v30)
      {
        v31 = *(v29 + 200);

        v32 = sub_220E1B804();

        OUTLINED_FUNCTION_1_39();
        sub_220EE5CB0(v29, v33);
        *(v7 + v24[13]) = v32 & (v31 == 1);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager), *(v3 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager + 24));
        sub_220EE5DCC();
        v35 = v34;
        OUTLINED_FUNCTION_1_39();
        sub_220EE5CB0(v29, v36);
        *(v7 + v24[12]) = v35 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EE46C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_11_8();
  sub_220FC02B0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_220EE41AC(sub_220EE61E0);
  return sub_220E3B2DC(v0, &qword_27CF9EBC0);
}

uint64_t sub_220EE4790(uint64_t a1, char a2)
{
  v4 = OUTLINED_FUNCTION_63_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14[-v8];
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  (*(v12 + 16))(v9, a1, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v14[16] = v10;
  v15 = v9;
  sub_220EE41AC(sub_220EE59EC);
  return sub_220E3B2DC(v9, &qword_27CF9EBC0);
}

uint64_t sub_220EE48B0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v124 = a3;
  v5 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E860);
  MEMORY[0x28223BE20](v116, v6);
  v118 = &v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v115 = &v107 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v114 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v117 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v122 = &v107 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v119 = &v107 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v107 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v107 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = &v107 - v37;
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v107 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v107 - v44;
  v46 = sub_220FC02B0();
  v121 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46, v47);
  v110 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v113 = &v107 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v111 = &v107 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v120 = &v107 - v58;
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v107 - v60;
  if (v5 != 2)
  {
    *(a1 + *(type metadata accessor for ScrubberStore.ViewModel(0) + 40)) = a2 & 1;
  }

  sub_220EE5BFC(v124, v45, &qword_27CF9EBC0);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    sub_220E3B2DC(v45, &qword_27CF9EBC0);
  }

  else
  {
    v62 = *(v121 + 32);
    v62(v61, v45, v46);
    v63 = *(type metadata accessor for ScrubberStore.ViewModel(0) + 32);
    sub_220E3B2DC(a1 + v63, &qword_27CF9EBC0);
    v62((a1 + v63), v61, v46);
    __swift_storeEnumTagSinglePayload(a1 + v63, 0, 1, v46);
  }

  v64 = v46;
  v65 = type metadata accessor for ScrubberStore.ViewModel(0);
  v66 = v65[14];
  sub_220EE5BFC(a1 + v66, v42, &qword_27CF9EBC0);
  v123 = v64;
  LODWORD(v64) = __swift_getEnumTagSinglePayload(v42, 1, v64);
  sub_220E3B2DC(v42, &qword_27CF9EBC0);
  if (v64 == 1 && *(a1 + v65[10]) == 1)
  {
    sub_220E5C230(v38);
    sub_220EE5B8C(v38, a1 + v65[9]);
    sub_220E5C230(v38);
    sub_220EE5B8C(v38, a1 + v66);
  }

  sub_220EE5BFC(a1 + v66, v34, &qword_27CF9EBC0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v123);
  sub_220E3B2DC(v34, &qword_27CF9EBC0);
  v68 = v122;
  if (EnumTagSinglePayload == 1)
  {
    if (*(a1 + v65[10]))
    {
      sub_220E5C230(v38);
      sub_220EE5B8C(v38, a1 + v65[9]);
      sub_220E5C230(v38);
      sub_220EE5B8C(v38, a1 + v66);
      return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
    }

LABEL_19:
    sub_220EE5BFC(a1 + v66, v30, &qword_27CF9EBC0);
    v80 = __swift_getEnumTagSinglePayload(v30, 1, v123);
    sub_220E3B2DC(v30, &qword_27CF9EBC0);
    if (v80 != 1)
    {
      sub_220E3B2DC(a1 + v66, &qword_27CF9EBC0);
      __swift_storeEnumTagSinglePayload(a1 + v66, 1, 1, v123);
    }

    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  if ((*(a1 + v65[10]) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(a1 + 1) != 1 || !sub_220EE5540())
  {
    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  v69 = v119;
  sub_220EE5BFC(a1 + v65[9], v119, &qword_27CF9EBC0);
  v70 = v123;
  if (__swift_getEnumTagSinglePayload(v69, 1, v123) == 1)
  {
    goto LABEL_27;
  }

  v72 = v120;
  v71 = v121;
  v73 = *(v121 + 32);
  v119 = v121 + 32;
  v107 = v73;
  v73(v120, v69, v70);
  v108 = v65[8];
  sub_220EE5BFC(a1 + v108, v68, &qword_27CF9EBC0);
  v74 = v117;
  (*(v71 + 16))(v117, v72, v70);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v70);
  v75 = *(v116 + 48);
  v76 = v68;
  v77 = v68;
  v78 = v118;
  sub_220EE5BFC(v76, v118, &qword_27CF9EBC0);
  sub_220EE5BFC(v74, v78 + v75, &qword_27CF9EBC0);
  v79 = __swift_getEnumTagSinglePayload(v78, 1, v70);
  v109 = v65;
  if (v79 == 1)
  {
    sub_220E3B2DC(v74, &qword_27CF9EBC0);
    v78 = v118;
    sub_220E3B2DC(v77, &qword_27CF9EBC0);
    if (__swift_getEnumTagSinglePayload(v78 + v75, 1, v70) == 1)
    {
      sub_220E3B2DC(v78, &qword_27CF9EBC0);
      (*(v121 + 8))(v120, v123);
LABEL_33:
      v65 = v109;
      return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
    }

    goto LABEL_24;
  }

  v82 = v114;
  sub_220EE5BFC(v78, v114, &qword_27CF9EBC0);
  if (__swift_getEnumTagSinglePayload(v78 + v75, 1, v70) == 1)
  {
    sub_220E3B2DC(v117, &qword_27CF9EBC0);
    sub_220E3B2DC(v122, &qword_27CF9EBC0);
    (*(v121 + 8))(v82, v70);
LABEL_24:
    sub_220E3B2DC(v78, &qword_27CF9E860);
    v83 = v120;
    goto LABEL_25;
  }

  v92 = v111;
  v107(v111, v78 + v75, v70);
  sub_220EE5B48(&qword_27CF9D1E0);
  v93 = sub_220FC26B0();
  v94 = *(v121 + 8);
  v94(v92, v70);
  sub_220E3B2DC(v117, &qword_27CF9EBC0);
  sub_220E3B2DC(v122, &qword_27CF9EBC0);
  v94(v82, v70);
  v83 = v120;
  sub_220E3B2DC(v118, &qword_27CF9EBC0);
  if (v93)
  {
    v94(v83, v123);
    goto LABEL_33;
  }

LABEL_25:
  v69 = v115;
  sub_220EE5BFC(a1 + v108, v115, &qword_27CF9EBC0);
  v84 = v123;
  v85 = __swift_getEnumTagSinglePayload(v69, 1, v123);
  v65 = v109;
  if (v85 == 1)
  {
    (*(v121 + 8))(v83, v84);
LABEL_27:
    v86 = v69;
LABEL_28:
    sub_220E3B2DC(v86, &qword_27CF9EBC0);
    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  v87 = v113;
  v88 = v69;
  v89 = v107;
  v107(v113, v88, v84);
  v90 = v112;
  sub_220EE5BFC(a1 + v66, v112, &qword_27CF9EBC0);
  if (__swift_getEnumTagSinglePayload(v90, 1, v84) == 1)
  {
    v91 = *(v121 + 8);
    v91(v87, v84);
    v91(v83, v84);
    v86 = v90;
    goto LABEL_28;
  }

  v95 = v110;
  v89(v110, v90, v84);
  if (sub_220FC01F0() & 1) == 0 || (sub_220EE5B48(&qword_2812CA290), (sub_220FC2680()))
  {
    v96 = *(v121 + 8);
    v96(v95, v84);
    v96(v87, v84);
    v96(v83, v84);
    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  v97 = v65[15];
  v98 = *(a1 + v97);
  if (v98 == 2)
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v99 = sub_220FC17A0();
    __swift_project_value_buffer(v99, qword_2812C5ED0);
    v100 = sub_220FC1780();
    v101 = sub_220FC2E30();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_220E15000, v100, v101, "Two loops passed, hide controls", v102, 2u);
      MEMORY[0x223D9DDF0](v102, -1, -1);
    }

    v103 = *(v121 + 8);
    v104 = v123;
    v103(v95, v123);
    v103(v87, v104);
    v103(v83, v104);
    if ((*(a1 + v65[21]) & 1) == 0)
    {
      *(a1 + 1) = 256;
    }

    *(a1 + v65[12]) = 0;
    *(a1 + v97) = 0;
    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  v105 = *(v121 + 8);
  v106 = v123;
  v105(v95, v123);
  v105(v87, v106);
  result = (v105)(v83, v106);
  if (!__OFADD__(v98, 1))
  {
    *(a1 + v97) = v98 + 1;
    return sub_220EE5D18(v124, a1 + v65[9], &qword_27CF9EBC0);
  }

  __break(1u);
  return result;
}

BOOL sub_220EE5540()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  v6 = OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_12_11();
  v10 = type metadata accessor for ScrubberStore.ViewModel(v9);
  sub_220EE5BFC(v1 + *(v10 + 28), v0, &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) == 1)
  {
    sub_220E3B2DC(v0, &unk_27CF9EB80);
    return 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_63_0();
    sub_220EE5C4C(v12, v13);
    v14 = *(v2 + 200);
    OUTLINED_FUNCTION_1_39();
    sub_220EE5CB0(v2, v15);
    return v14 != 5;
  }
}

uint64_t sub_220EE5658()
{
  OUTLINED_FUNCTION_0_44();
  sub_220EE5CB0(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager);
  return v0;
}

uint64_t sub_220EE56B4()
{
  sub_220EE5658();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220EE5734()
{
  result = type metadata accessor for ScrubberStore.ViewModel(319);
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

void sub_220EE5824()
{
  sub_220E18D74(319, &qword_2812CA010, type metadata accessor for WeatherMapOverlay);
  if (v0 <= 0x3F)
  {
    sub_220E18D74(319, &qword_2812CA280, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_220EE599C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MapScrubberOverlayViewModel(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UIUserInterfaceStyle(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_220EE599C()
{
  if (!qword_27CF9D198)
  {
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9D198);
    }
  }
}

BOOL sub_220EE59F8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v5 = OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (*(v1 + 1) != 1)
  {
    return 0;
  }

  v11 = type metadata accessor for ScrubberStore.ViewModel(0);
  if (*(v1 + v11[10]) & 1) != 0 || (*(v1 + v11[11]) & 1) != 0 || (*(v1 + v11[21]))
  {
    return 0;
  }

  sub_220EE5BFC(v1 + v11[7], v0, &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_220E3B2DC(v0, &unk_27CF9EB80);
    return 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_63_0();
    sub_220EE5C4C(v13, v14);
    v15 = *(v10 + 200);
    OUTLINED_FUNCTION_1_39();
    sub_220EE5CB0(v10, v16);
    return v15 != 5;
  }
}

uint64_t sub_220EE5B48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220FC02B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220EE5B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EE5BFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_74(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_220EE5C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EE5CB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220EE5D18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_74(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 24))(v3, v4);
  return v3;
}

uint64_t sub_220EE5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220EE5DCC()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v4 = v3;
  v5 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_8();
  Appearance = type metadata accessor for NextAppearance();
  v11 = OUTLINED_FUNCTION_8_0(Appearance);
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_4();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v33[-1] - v18;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v34 = type metadata accessor for ScrubberForecastHintManager();
  v35 = &off_28347DE18;
  v33[0] = v4;
  v25 = type metadata accessor for ScrubberStore.ViewModel(0);
  v26 = OUTLINED_FUNCTION_5_20(v25);
  sub_220EE60B8(v26, v24, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  OUTLINED_FUNCTION_7_14();
  sub_220EE5CB0(v24, v29);
  if (EnumCaseMultiPayload != 1 && (v2[1] & 1) != 0 && *v2 == 1)
  {
    if (v2[*(v25 + 64)] && v2[*(v25 + 64)] != 1)
    {
    }

    else
    {
      v30 = sub_220FC3940();

      if ((v30 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v33, v34);
        sub_220FC0670();
        sub_220E700E8(v0, v19);
        (*(v7 + 8))(v0, v5);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D408);
        __swift_storeEnumTagSinglePayload(v15, 1, 2, v31);
        sub_220E6F830(v19, v15);
        sub_220EE5CB0(v15, type metadata accessor for NextAppearance);
        sub_220EE5CB0(v19, type metadata accessor for NextAppearance);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EE60B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220EE6118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberStore.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_220EE617C()
{
  result = qword_27CF9E868;
  if (!qword_27CF9E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E868);
  }

  return result;
}

uint64_t sub_220EE62BC()
{
  result = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EE6380()
{
  result = sub_220FC02B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EE641C()
{
  result = sub_220FC02B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220EE6498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - v15;
  type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  if (__swift_getEnumTagSinglePayload(a1, 1, v22) == 1)
  {
    sub_220E3B2DC(a1, &qword_27CF9D040);
    sub_220E96E5C(a2, a3, a4, a5, v23, v24, v25, v26, v28, v29);

    return sub_220E3B2DC(v16, &qword_27CF9D040);
  }

  else
  {
    sub_220EE88D8(a1, v21, type metadata accessor for SnapshotManager.Options);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v6;
    sub_220E97A34(v21, a2, a3, a4, a5);

    *v6 = v29;
  }

  return result;
}

void sub_220EE6644(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E890);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_220E3B2DC(a1, &qword_27CF9E890);
    sub_220E97124(a2, v15, v16, v17, v18, v19, v20, v21, v22, v23);

    sub_220E3B2DC(v9, &qword_27CF9E890);
  }

  else
  {
    sub_220EE88D8(a1, v13, type metadata accessor for WeatherMapAnnotationViewModel);
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_220E97EE4();

    *v3 = v23;
  }
}

uint64_t sub_220EE67C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_220E1E72C(a1, v17);
    __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    OUTLINED_FUNCTION_1_4();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_3();
    v10 = (v9 - v8);
    (*(v11 + 16))(v9 - v8);
    sub_220EE8BD8(*v10, a2, a3, v3);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v12 = OUTLINED_FUNCTION_48_3();
    return sub_220E5E3BC(v12, v13);
  }

  else
  {
    sub_220E3B2DC(a1, &unk_27CF9ED60);
    OUTLINED_FUNCTION_48_3();
    sub_220E97264();
    v15 = OUTLINED_FUNCTION_48_3();
    sub_220E5E3BC(v15, v16);
    return sub_220E3B2DC(v17, &unk_27CF9ED60);
  }
}

void sub_220EE695C(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E890);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v11 = sub_220FC23C0();
  OUTLINED_FUNCTION_1_4();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  sub_220E1AAEC();
  *v18 = sub_220FC2FC0();
  (*(v13 + 104))(v18, *MEMORY[0x277D85200], v11);
  v19 = sub_220FC23E0();
  (*(v13 + 8))(v18, v11);
  if (v19)
  {
    OUTLINED_FUNCTION_1_3();
    sub_220EE7998(a2, v10, v20);
    v21 = type metadata accessor for WeatherMapAnnotationViewModel();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v21);
    swift_beginAccess();
    sub_220EE6644(v10, a1);
    swift_endAccess();
    sub_220EE6B30(a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_220EE6B30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E890);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  v79 = &v78 - v7;
  v8 = type metadata accessor for WeatherMapAnnotationViewModel();
  v81 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v80 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E898);
  v16 = OUTLINED_FUNCTION_8_0(v15);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v86 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v88 = (&v78 - v21);
  v22 = sub_220FC23C0();
  OUTLINED_FUNCTION_1_4();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_3();
  v29 = (v28 - v27);
  sub_220E1AAEC();
  *v29 = sub_220FC2FC0();
  (*(v24 + 104))(v29, *MEMORY[0x277D85200], v22);
  v30 = sub_220FC23E0();
  (*(v24 + 8))(v29, v22);
  if (v30)
  {
    swift_beginAccess();
    v31 = *(v2 + 24);
    v34 = *(v31 + 64);
    v33 = v31 + 64;
    v32 = v34;
    v35 = 1 << *(*(v2 + 24) + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v32;
    v83 = *(v2 + 24);

    swift_beginAccess();
    v38 = 0;
    v39 = (v35 + 63) >> 6;
    LODWORD(v78) = a1;
    HIDWORD(v78) = a1 & 1;
    v82 = v12;
    v40 = v88;
    v84 = v39;
    v85 = v33;
    v87 = v2;
    while (1)
    {
      v41 = v86;
      if (!v37)
      {
        while (1)
        {
          v44 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v44 >= v39)
          {
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8A0);
            __swift_storeEnumTagSinglePayload(v41, 1, 1, v66);
            v37 = 0;
            goto LABEL_13;
          }

          v37 = *(v33 + 8 * v44);
          ++v38;
          if (v37)
          {
            v42 = v12;
            v43 = a1;
            v38 = v44;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v42 = v12;
      v43 = a1;
      v44 = v38;
LABEL_12:
      v45 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v46 = *(*(v83 + 48) + 8 * (v45 | (v44 << 6)));
      v47 = v80;
      OUTLINED_FUNCTION_1_3();
      sub_220EE7998(v48, v47, v49);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8A0);
      *v41 = v46;
      OUTLINED_FUNCTION_2_30();
      sub_220EE88D8(v47, v41 + v51, v52);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v50);
      v53 = v46;
      a1 = v43;
      v12 = v42;
      v2 = v87;
      v40 = v88;
LABEL_13:
      sub_220EE791C(v41, v40);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8A0);
      if (__swift_getEnumTagSinglePayload(v40, 1, v54) == 1)
      {

        return;
      }

      v55 = *v40;
      OUTLINED_FUNCTION_2_30();
      sub_220EE88D8(v40 + v56, v12, v57);
      v58 = *(v2 + 16);
      if ((v58 & 0xC000000000000001) != 0)
      {

        v59 = v55;
        v60 = sub_220FC3500();

        v12 = v82;
        if (v60)
        {
LABEL_22:
          sub_220EE7AAC(v12, type metadata accessor for WeatherMapAnnotationViewModel);

          goto LABEL_26;
        }
      }

      else if (*(v58 + 16))
      {
        type metadata accessor for WeatherMapAnnotationView();

        v61 = sub_220FC3240();
        v62 = ~(-1 << *(v58 + 32));
        while (1)
        {
          v63 = v61 & v62;
          if (((*(v58 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
          {
            break;
          }

          v64 = *(*(v58 + 48) + 8 * v63);
          v65 = sub_220FC3250();

          v61 = v63 + 1;
          if (v65)
          {

            v2 = v87;
            v40 = v88;
            a1 = v78;
            v12 = v82;
            goto LABEL_22;
          }
        }

        v2 = v87;
        v40 = v88;
        a1 = v78;
        v12 = v82;
      }

      swift_beginAccess();
      v67 = v79;
      sub_220E97124(v55, v68, v69, v70, v71, v72, v73, v74, v78, v79);
      swift_endAccess();
      sub_220E3B2DC(v67, &qword_27CF9E890);
      swift_beginAccess();
      v75 = v55;
      sub_220E4A1DC(&v89, v75);
      swift_endAccess();

      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      *(v76 + 24) = v75;
      *(v76 + 32) = BYTE4(v78);
      v77 = v75;

      sub_220EE732C(v77, v12, a1 & 1, sub_220EE798C, v76);

      sub_220EE7AAC(v12, type metadata accessor for WeatherMapAnnotationViewModel);
LABEL_26:
      v39 = v84;
      v33 = v85;
    }
  }

  __break(1u);
}

uint64_t sub_220EE71C8(uint64_t a1, void *a2, char a3)
{
  v5 = sub_220FC23C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220E1AAEC();
  *v9 = sub_220FC2FC0();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10 = sub_220FC23E0();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    swift_beginAccess();
    v12 = sub_220EE8048(a2);
    swift_endAccess();

    return sub_220EE6B30(a3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220EE732C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a3;
  v7 = type metadata accessor for WeatherMapAnnotationViewModel();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36 - v15;
  v17 = sub_220FC23C0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220E1AAEC();
  *v21 = sub_220FC2FC0();
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v22 = sub_220FC23E0();
  result = (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v24 = sub_220F860C0();
  v25 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel;
  swift_beginAccess();
  v26 = v16;
  sub_220EE7998(v24 + v25, v16, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);

  v27 = v38;
  sub_220F86200(*(a2 + 27), v38);
  if ((v37 & 1) == 0 || *(v26 + *(v10 + 28)) == *(v27 + *(v10 + 28)))
  {
    v28 = objc_opt_self();
    sub_220EE7998(a2, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMapAnnotationViewModel);
    v29 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    sub_220EE88D8(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for WeatherMapAnnotationViewModel);
    v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v39;
    v32 = v40;
    *v31 = v39;
    v31[1] = v32;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_220EE7A00;
    *(a2 + 24) = v30;
    aBlock[4] = sub_220E451F0;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220EE6934;
    aBlock[3] = &block_descriptor_11;
    v34 = _Block_copy(aBlock);
    v35 = a1;
    sub_220E1AADC(v33);

    [v28 performWithoutAnimation_];
    _Block_release(v34);
    sub_220EE7AAC(v27, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
    sub_220EE7AAC(v26, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  type metadata accessor for AnnotationViewTransitionAnimator();
  sub_220F06CB0(a1, a2, v39, v40);
  sub_220EE7AAC(v27, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  return sub_220EE7AAC(v26, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
}

uint64_t sub_220EE77DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220EE7998(a2, v8, type metadata accessor for WeatherMapAnnotationViewModel);
  result = sub_220F86050(v8);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_220EE789C()
{

  return v0;
}

uint64_t sub_220EE78C4()
{
  sub_220EE789C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220EE791C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EE7998(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220EE7A00()
{
  v1 = *(type metadata accessor for WeatherMapAnnotationViewModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220EE77DC(v3, v0 + v2, v4);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220EE7AAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220EE7B04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFF0);
    OUTLINED_FUNCTION_48_3();
    v2 = sub_220FC3580();
    v14 = v2;
    sub_220FC3480();
    while (1)
    {
      if (!sub_220FC34F0())
      {

        return v2;
      }

      type metadata accessor for WeatherMapAnnotationView();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_220E4AD14();
      }

      v2 = v14;
      result = sub_220FC3240();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_220EE7CBC(uint64_t a1, uint64_t a2)
{
  sub_220FC3240();
  result = sub_220FC3460();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_220EE7D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_220FC3A40();
  sub_220EB33C0(v24);
  result = sub_220FC3A90();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  v9 = 0uLL;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    while (1)
    {
      v11 = *(v5 + 48) + 48 * v8;
      result = *(v11 + 16);
      v12 = *v11 == *a1 && *(v11 + 8) == *(a1 + 8);
      v13 = v12 && result == *(a1 + 16);
      v14 = v13 && *(v11 + 24) == *(a1 + 24);
      if (v14 && *(v11 + 32) == *(a1 + 32) && *(v11 + 40) == *(a1 + 40))
      {
        break;
      }

      v8 = (v8 + 1) & v10;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v24[0] = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_220E4BAC4();
      v20 = v24[0];
    }

    v21 = *(v20 + 48) + 48 * v8;
    v15 = *(v21 + 16);
    v16 = *(v21 + 24);
    v22 = *(v21 + 32);
    v23 = *v21;
    result = sub_220EE82FC(v8);
    v18 = v22;
    v9 = v23;
    v17 = 0;
    *v2 = v24[0];
  }

  else
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_220EE7ECC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v9 = *v4;
  sub_220FC3A40();
  sub_220EEBB30(v22, a1, a2, a3);
  v10 = sub_220FC3A90();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(v9 + 48) + 32 * v12;
    v15 = *v14 == a1 && *(v14 + 8) == a2;
    v16 = v15 && *(v14 + 16) == a3;
    if (v16 && *(v14 + 24) == a4)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v22[0] = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_220E4B9EC();
    v20 = v22[0];
  }

  v18 = *(*(v20 + 48) + 32 * v12);
  sub_220EE8550(v12);
  *v4 = v22[0];
  return v18;
}

uint64_t sub_220EE8048(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for WeatherMapAnnotationView();
    v8 = sub_220FC3240();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      v12 = sub_220FC3250();

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_220E4BBB0();
          v14 = v16;
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_220EE8744(v10);
        *v2 = v16;
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_220FC3500();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_220EE81B8();

  return v7;
}

uint64_t sub_220EE81B8()
{
  v1 = v0;

  v2 = sub_220FC34C0();
  v3 = swift_unknownObjectRetain();
  v4 = sub_220EE7B04(v3, v2);
  v12 = v4;

  v5 = sub_220FC3240();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for WeatherMapAnnotationView();
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_220FC3250();

    if (v9)
    {

      v10 = *(*(v4 + 48) + 8 * v7);
      sub_220EE8744(v7);
      if (sub_220FC3250())
      {
        *v1 = v12;
        return v10;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_220EE82FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_220FC3450();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v34 = v4;
      do
      {
        v10 = v3;
        v11 = *(v3 + 48) + 48 * v6;
        v12 = v7;
        v13 = *v11;
        v14 = *(v11 + 8);
        v15 = *(v11 + 16);
        v16 = *(v11 + 32);
        v17 = *(v11 + 40);
        v18 = v9;
        sub_220FC3A40();
        MEMORY[0x223D9CFA0](v13);
        v19 = v14;
        v7 = v12;
        MEMORY[0x223D9CFA0](v19);
        MEMORY[0x223D9CFA0](v15);
        sub_220FC3A70();
        MEMORY[0x223D9CFA0](v16);
        if (v17 == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v17;
        }

        MEMORY[0x223D9CFD0](*&v20);
        v21 = sub_220FC3A90();
        v9 = v18;
        v22 = v21 & v12;
        if (v2 >= v18)
        {
          if (v22 >= v18 && v2 >= v22)
          {
LABEL_12:
            v3 = v10;
            v24 = *(v10 + 48);
            v25 = (v24 + 48 * v2);
            v26 = (v24 + 48 * v6);
            v27 = v2 != v6 || v25 >= v26 + 3;
            v4 = v34;
            if (v27)
            {
              v28 = *v26;
              v29 = v26[2];
              v25[1] = v26[1];
              v25[2] = v29;
              *v25 = v28;
              v2 = v6;
            }

            goto LABEL_24;
          }
        }

        else if (v22 >= v18 || v2 >= v22)
        {
          goto LABEL_12;
        }

        v4 = v34;
        v3 = v10;
LABEL_24:
        v6 = (v6 + 1) & v12;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v31 = *(v3 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v33;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_220EE8550(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_220FC3450();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 32 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = v10[2];
        sub_220FC3A40();
        MEMORY[0x223D9CFA0](v11);
        MEMORY[0x223D9CFA0](v12);
        MEMORY[0x223D9CFA0](v13);
        sub_220FC3A70();
        v14 = sub_220FC3A90() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 32 * v2);
            v19 = (v17 + 32 * v6);
            v20 = 32 * v2 != 32 * v6 || v18 >= v19 + 2;
            v2 = v6;
            if (v20)
            {
              v21 = v19[1];
              *v18 = *v19;
              v18[1] = v21;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_220EE8744(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_220FC3450();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_220FC3240();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_220EE88D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220EE8938(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = type metadata accessor for OverlayTileLoader();
  v17 = &off_28347D778;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_220E1E72C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_220EE89E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for OverlayTileLoader();
  v27 = v9;
  v28 = &off_28347D778;
  *&v26 = a1;
  v10 = *a5;
  v11 = sub_220F19704(a2, a3);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D940);
  if ((sub_220FC3710() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_220F19704(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a5;
  if (v14)
  {
    v18 = v17[7] + 40 * v13;
    __swift_destroy_boxed_opaque_existential_0(v18);
    return sub_220E1E72C(&v26, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v9);
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    sub_220EE8938(v13, a2, a3, *v23, v17);
    sub_220EE8D08(a2, a3);
    return __swift_destroy_boxed_opaque_existential_0(&v26);
  }
}

uint64_t sub_220EE8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17 = type metadata accessor for OverlayTileLoader();
  v18 = &off_28347D778;
  v16[0] = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a4;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v10 = MEMORY[0x28223BE20](v9, v9);
  v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  sub_220EE89E8(*v12, a2, a3, isUniquelyReferenced_nonNull_native, &v15);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  *a4 = v15;
  return result;
}

uint64_t sub_220EE8D08(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) >= 5)
  {
    return sub_220EA10E4(a1, a2);
  }

  return a1;
}

id sub_220EE8D2C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_220FC3920();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t sub_220EE8DAC(double a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223D9CFA0](a3);
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  return MEMORY[0x223D9CFD0](*&v4);
}

uint64_t sub_220EE8DF4(uint64_t a1, double a2)
{
  sub_220FC3A40();
  sub_220EE8DAC(a2, v5, a1);
  return sub_220FC3A90();
}

uint64_t sub_220EE8E80()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_220FC3A40();
  sub_220EE8DAC(v2, v4, v1);
  return sub_220FC3A90();
}

uint64_t sub_220EE8ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 0;
  v12 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
  v13 = sub_220FC02B0();
  __swift_storeEnumTagSinglePayload(v6 + v12, 1, 1, v13);
  *(v6 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_timeIntervalSinceLastFrameUpdate) = 0;
  *(v6 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_stopAtEnd) = 0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v14 = INFINITY;
  if (a4 >= 1)
  {
    v14 = 1.0 / a4;
  }

  *(v6 + 56) = v14;
  sub_220EE9E94(a3, v6 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_framesMetadata);
  *(v6 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_stopAtEnd) = a5 & 1;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 24);
  swift_unknownObjectRetain();
  v17 = v16(ObjectType, a2);
  v19 = v18;
  swift_unknownObjectRelease();
  sub_220EE9EF8(a3);
  v20 = (v6 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition);
  *v20 = v17;
  v20[1] = v19;
  return v6;
}

uint64_t sub_220EE901C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 48) = 0;

  sub_220E22990(v0 + 16);
  swift_unknownObjectRelease();

  sub_220EE9EF8(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_framesMetadata);
  sub_220EE9DE8(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate);
  return v0;
}

uint64_t sub_220EE9094()
{
  sub_220EE901C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapOverlayAnimation()
{
  result = qword_27CF9E8B8;
  if (!qword_27CF9E8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220EE9140(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - v10;
  v12 = sub_220FC02B0();
  v13 = *(v12 - 8);
  *&v15 = MEMORY[0x28223BE20](v12, v14).n128_u64[0];
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  [a1 timestamp];
  v18 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_timeIntervalSinceLastFrameUpdate;
  v20 = fmin((v19 - *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_timeIntervalSinceLastFrameUpdate)) / *(v2 + 56), 1.0);
  v21 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition;
  v22 = *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition);
  *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition + 8) = v20;
  v23 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_framesMetadata;
  sub_220EEDB54(v22, v11, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_220EE9DE8(v11);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    v24 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
    swift_beginAccess();
    sub_220EE5B8C(v7, v2 + v24);
    result = swift_endAccess();
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    (*(v13 + 16))(v7, v17, v12);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    v26 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
    swift_beginAccess();
    sub_220EE5B8C(v7, v2 + v26);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220F6B310(v2, v17);
      swift_unknownObjectRelease();
    }

    result = (*(v13 + 8))(v17, v12);
  }

  if (v20 >= 1.0)
  {
    v27 = *v21 + 1;
    if (__OFADD__(*v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v27 >= *(*(v23 + *(type metadata accessor for WeatherMapOverlayFramesMetadata() + 20)) + 16))
    {
      if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_stopAtEnd) == 1)
      {
        *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_stopAtEnd) = 0;
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          sub_220F6B468();
          return swift_unknownObjectRelease();
        }

        return result;
      }

      v28 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      (*(v28 + 16))(ObjectType, v28);
      v27 = 0;
    }

    [v34 timestamp];
    *(v2 + v18) = v30;
    v31 = v20 + -1.0;
    *v21 = v27;
    *(v21 + 8) = v31;
    v32 = *(v2 + 40);
    v33 = swift_getObjectType();
    return (*(v32 + 8))(v27, v33, v32, v31);
  }

  return result;
}

void sub_220EE9554()
{
  type metadata accessor for WeatherMapOverlayFramesMetadata();
  if (v0 <= 0x3F)
  {
    sub_220EE9660();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220EE9660()
{
  if (!qword_2812CA280)
  {
    sub_220FC02B0();
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA280);
    }
  }
}

unint64_t sub_220EE96DC()
{
  result = qword_27CF9E8C8;
  if (!qword_27CF9E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E8C8);
  }

  return result;
}

void sub_220EE9730(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v51 - v16;
  v18 = sub_220FC02B0();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v26 = &v51 - v25;
  if (!*(v2 + 48))
  {
    v27 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_framesMetadata;
    v53 = v24;
    v28 = *(v27 + *(type metadata accessor for WeatherMapOverlayFramesMetadata() + 20));
    if (*(v28 + 16) >= 2uLL)
    {
      v29 = *(v3 + 56);
      if (v29 != INFINITY)
      {
        sub_220EEDB54(a1, v17, a2);
        if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
        {
          sub_220EE9DE8(v17);
          v30 = *(v3 + 40);
          ObjectType = swift_getObjectType();
          (*(v30 + 8))(0, ObjectType, v30, 0.0);
          if (!*(v28 + 16))
          {
            __break(1u);
            return;
          }

          (*(v53 + 16))(v13, v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v18);
          OUTLINED_FUNCTION_1_40();
          v32 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
          OUTLINED_FUNCTION_0_46();
          sub_220EE5B8C(v13, v3 + v32);
          swift_endAccess();
          a1 = (*(v30 + 24))(ObjectType, v30);
        }

        else
        {
          v52 = *(v53 + 32);
          v52(v26, v17, v18);
          v30 = *(v3 + 40);
          v34 = swift_getObjectType();
          (*(v30 + 8))(a1, v34, v30, a2);
          v52(v13, v26, v18);
          OUTLINED_FUNCTION_1_40();
          v35 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
          OUTLINED_FUNCTION_0_46();
          sub_220EE5B8C(v13, v3 + v35);
          swift_endAccess();
          v33 = a2;
        }

        v36 = (v3 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition);
        *v36 = a1;
        *(v36 + 1) = v33;
        *(v3 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_timeIntervalSinceLastFrameUpdate) = CACurrentMediaTime() - v29 * a2;
        v37 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentDate;
        swift_beginAccess();
        sub_220E70720(v3 + v37, v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
        {
          sub_220EE9DE8(v9);
        }

        else
        {
          (*(v53 + 32))(v21, v9, v18);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_220F6B310(v3, v21);
            swift_unknownObjectRelease();
          }

          (*(v53 + 8))(v21, v18);
        }

        sub_220EE9E50();
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8D8);
        v39 = objc_allocWithZone(v38);

        v40 = sub_220FC15C0();
        v54[3] = v38;
        v54[0] = v40;
        v41 = sub_220EE8D2C(v54, sel_tick_);
        v42 = [objc_opt_self() mainScreen];
        v43 = [v42 maximumFramesPerSecond];

        IsSlow = DeviceIsSlow();
        v45 = 60;
        if (IsSlow)
        {
          v45 = 30;
        }

        if (v45 >= v43)
        {
          v46 = v43;
        }

        else
        {
          v46 = v45;
        }

        [v41 setPreferredFramesPerSecond_];
        v47 = [objc_opt_self() currentRunLoop];
        [v41 addToRunLoop:v47 forMode:*MEMORY[0x277CBE738]];

        v48 = *(v3 + 48);
        *(v3 + 48) = v41;
        v49 = v41;

        v50 = swift_getObjectType();
        (*(v30 + 56))(1, v50, v30);
      }
    }
  }
}

void sub_220EE9CB0()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  (*(v1 + 56))(0, ObjectType, v1);
  v3 = *(v0 + 48);
  if (v3)
  {
    [v3 invalidate];
    v3 = *(v0 + 48);
  }

  *(v0 + 48) = 0;
}

uint64_t sub_220EE9D34(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_220EE9D94()
{
  result = qword_27CF9E8D0;
  if (!qword_27CF9E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E8D0);
  }

  return result;
}

uint64_t sub_220EE9DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220EE9E50()
{
  result = qword_27CF9E6A8;
  if (!qword_27CF9E6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9E6A8);
  }

  return result;
}

uint64_t sub_220EE9E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EE9EF8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220EE9F54@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, size_t *a3@<X8>)
{
  v42[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = OUTLINED_FUNCTION_1_41();
      sub_220E567FC(v16, v17);
      v14 = sub_220FBFEB0();
      if (!v14)
      {
        goto LABEL_14;
      }

      v18 = sub_220FBFED0();
      if (__OFSUB__(a1, v18))
      {
LABEL_29:
        __break(1u);
      }

      v14 += a1 - v18;
LABEL_14:
      sub_220FBFEC0();
      if (!v14)
      {
LABEL_22:
        sub_220EEB724();
        OUTLINED_FUNCTION_53();
        v27 = 1;
        goto LABEL_23;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_47();
      v9 = v14;
LABEL_16:
      v19 = CGDataProviderCreateWithData(0, v9, v7, v8);
      if (!v19)
      {
        sub_220EEB724();
        OUTLINED_FUNCTION_53();
        v27 = 2;
LABEL_23:
        *v26 = v27;
        swift_willThrow();
        goto LABEL_24;
      }

      v20 = v19;
      v21 = CGImageCreateWithPNGDataProvider(v19, 0, 0, kCGRenderingIntentDefault);
      if (!v21)
      {
        sub_220EEB724();
        OUTLINED_FUNCTION_53();
        *v28 = 2;
        swift_willThrow();

        goto LABEL_24;
      }

      v22 = v21;
      Height = CGImageGetHeight(v21);
      Width = CGImageGetWidth(v22);
      BytesPerRow = CGImageGetBytesPerRow(v22);
      v25 = sub_220EEA284(v22);
      if (v3)
      {

LABEL_24:
        v29 = OUTLINED_FUNCTION_1_41();
        sub_220E565AC(v29, v30);
        v31 = OUTLINED_FUNCTION_1_41();
        return sub_220E565AC(v31, v32);
      }

      v34 = v25;

      v35 = OUTLINED_FUNCTION_1_41();
      sub_220E565AC(v35, v36);
      v37 = OUTLINED_FUNCTION_1_41();
      sub_220E567FC(v37, v38);
      v39 = OUTLINED_FUNCTION_1_41();
      result = sub_220E565AC(v39, v40);
      *a3 = Width;
      a3[1] = Height;
      a3[2] = v34;
      a3[3] = BytesPerRow;
      a3[4] = a1;
      a3[5] = a2;
      return result;
    case 2uLL:
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = OUTLINED_FUNCTION_1_41();
      sub_220E567FC(v12, v13);
      v14 = sub_220FBFEB0();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = sub_220FBFED0();
      if (__OFSUB__(v10, v15))
      {
        goto LABEL_28;
      }

      v14 += v10 - v15;
LABEL_6:
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_27;
      }

      sub_220FBFEC0();
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    case 3uLL:
      memset(v42, 0, 14);
      OUTLINED_FUNCTION_0_47();
      v9 = v42;
      v7 = 0;
      goto LABEL_16;
    default:
      v42[0] = a1;
      LOWORD(v42[1]) = a2;
      BYTE2(v42[1]) = BYTE2(a2);
      BYTE3(v42[1]) = BYTE3(a2);
      BYTE4(v42[1]) = BYTE4(a2);
      BYTE5(v42[1]) = BYTE5(a2);
      OUTLINED_FUNCTION_0_47();
      v9 = v42;
      goto LABEL_16;
  }
}

uint64_t sub_220EEA284(CGImage *a1)
{
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  switch(BitsPerPixel)
  {
    case 8uLL:
      v4 = CGImageGetColorSpace(a1);
      if (v4)
      {

        if (CGImageGetAlphaInfo(a1) == kCGImageAlphaOnly)
        {
          return 1;
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 1;
      }

    case 0x10uLL:
      return 20;
    case 0x20uLL:
      CGImageGetAlphaInfo(a1);
      return 70;
    default:
      sub_220EEB724();
      swift_allocError();
      *v3 = 2;
      return swift_willThrow();
  }
}

uint64_t sub_220EEA37C(void *a1)
{
  if ([a1 pixelFormat] == *(v1 + 16))
  {
    MTLRegionMake2D(*v1, *(v1 + 8), v9);
    swift_unknownObjectRetain();
    sub_220EEB778(v1, &v8);
    v2 = OUTLINED_FUNCTION_2_31();
    return sub_220EEAB08(v2, v3, v4, v5);
  }

  else
  {
    sub_220EEB724();
    OUTLINED_FUNCTION_53();
    *v7 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_220EEA424(void *a1, uint64_t a2, id a3, uint64_t a4)
{
  if (v4[2] != a2)
  {
    sub_220EEB724();
    OUTLINED_FUNCTION_53();
    v14 = 2;
LABEL_8:
    *v13 = v14;
    return swift_willThrow();
  }

  if ([a1 pixelFormat] != a3)
  {
LABEL_7:
    sub_220EEB724();
    OUTLINED_FUNCTION_53();
    v14 = 3;
    goto LABEL_8;
  }

  if (a3 == 253)
  {
    if ([a1 pixelFormat] == 253)
    {
      MTLRegionMake2D(*v4, v4[1], v20);
      swift_unknownObjectRetain();
      sub_220EEB778(v4, v19);
      v8 = OUTLINED_FUNCTION_2_31();
      return sub_220EEA560(v8, v9, v10, v11, a4);
    }

    goto LABEL_7;
  }

  MTLRegionMake2D(*v4, v4[1], v21);
  swift_unknownObjectRetain();
  sub_220EEB778(v4, v19);
  v15 = OUTLINED_FUNCTION_2_31();
  return sub_220EEAB08(v15, v16, v17, v18);
}

uint64_t sub_220EEA560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  swift_unknownObjectRetain();
  sub_220EEB778(a4, v45);
  swift_unknownObjectRetain();
  sub_220EEB778(a4, v45);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  switch(v12 >> 62)
  {
    case 1uLL:
      v42 = v5;
      v26 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v43 = &v41;
      v27 = v11;
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      v16 = sub_220FBFEB0();
      if (!v16)
      {
        goto LABEL_19;
      }

      v28 = sub_220FBFED0();
      if (__OFSUB__(v27, v28))
      {
LABEL_41:
        __break(1u);
      }

      v16 += v27 - v28;
LABEL_19:
      v29 = sub_220FBFEC0();
      if (v16)
      {
        if (v29 >= v26 - v27)
        {
          v21 = v26 - v27;
        }

        else
        {
          v21 = v29;
        }

LABEL_23:
        swift_unknownObjectRetain();
        sub_220EEB778(a4, v45);
        v30 = CGDataProviderCreateWithData(0, v16, v21, j_nullsub_1_0);
        if (v30)
        {
          v31 = v30;
          v32 = CGImageCreateWithPNGDataProvider(v30, 0, 0, kCGRenderingIntentDefault);
          if (v32)
          {
            v33 = v32;
            v34 = v42;
            sub_220EEB1BC(v32, a2, a3, a4, a5);
            if (!v34)
            {
              swift_unknownObjectRelease();

              sub_220EEB7B0(a4);
              swift_unknownObjectRelease();
              sub_220EEB7B0(a4);
              swift_unknownObjectRelease();
              sub_220EEB7B0(a4);
              swift_unknownObjectRelease();
              sub_220EEB7B0(a4);
              goto LABEL_36;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            sub_220EEB724();
            swift_allocError();
            *v39 = 2;
            swift_willThrow();
            swift_unknownObjectRelease();
          }

          sub_220EEB7B0(a4);
        }

        else
        {
          sub_220EEB724();
          swift_allocError();
          *v38 = 2;
          swift_willThrow();
          swift_unknownObjectRelease();
          sub_220EEB7B0(a4);
        }
      }

      else
      {
LABEL_28:
        sub_220EEB724();
        swift_allocError();
        *v36 = 1;
        swift_willThrow();
      }

LABEL_34:
      swift_unknownObjectRelease();
LABEL_35:
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
LABEL_36:
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      return sub_220EEB7B0(a4);
    case 2uLL:
      v42 = v5;
      v43 = &v41;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      v16 = sub_220FBFEB0();
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = sub_220FBFED0();
      if (__OFSUB__(v14, v17))
      {
        goto LABEL_40;
      }

      v16 += v14 - v17;
LABEL_6:
      v18 = __OFSUB__(v15, v14);
      v19 = v15 - v14;
      if (v18)
      {
        goto LABEL_39;
      }

      v20 = sub_220FBFEC0();
      if (!v16)
      {
        goto LABEL_28;
      }

      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      goto LABEL_23;
    case 3uLL:
      memset(data, 0, 14);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      v13 = 0;
      goto LABEL_12;
    default:
      data[0] = *(a1 + 32);
      LODWORD(data[1]) = v12;
      WORD2(data[1]) = WORD2(v12);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v45);
      v13 = BYTE6(v12);
LABEL_12:
      v22 = CGDataProviderCreateWithData(0, data, v13, j_nullsub_1_0);
      if (!v22)
      {
        sub_220EEB724();
        swift_allocError();
        *v35 = 2;
        swift_willThrow();
        goto LABEL_34;
      }

      v23 = v22;
      v24 = CGImageCreateWithPNGDataProvider(v22, 0, 0, kCGRenderingIntentDefault);
      if (v24)
      {
        v25 = v24;
        sub_220EEB1BC(v24, a2, a3, a4, a5);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_220EEB724();
        swift_allocError();
        *v37 = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
      }

      goto LABEL_35;
  }
}

uint64_t sub_220EEAB08(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  swift_unknownObjectRetain();
  sub_220EEB778(a4, v34);
  swift_unknownObjectRetain();
  sub_220EEB778(a4, v34);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  switch(v10 >> 62)
  {
    case 1uLL:
      v22 = v9 >> 32;
      if (v9 >> 32 < v9)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v32 = &v32;
      v23 = v9;
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      v24 = sub_220FBFEB0();
      if (!v24)
      {
        goto LABEL_21;
      }

      v25 = sub_220FBFED0();
      if (__OFSUB__(v23, v25))
      {
LABEL_36:
        __break(1u);
      }

      v24 += v23 - v25;
LABEL_21:
      v26 = v22 - v23;
      v27 = sub_220FBFEC0();
      if (v27 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      v29 = &v24[v28];
      if (v24)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      sub_220EEAF38(v24, v30, a2, a3, a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      if (v4)
      {
LABEL_28:
        swift_unknownObjectRelease();
LABEL_29:
        sub_220EEB7B0(a4);
      }

      else
      {
LABEL_32:
        swift_unknownObjectRelease();
        sub_220EEB7B0(a4);
      }

      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      return sub_220EEB7B0(a4);
    case 2uLL:
      v32 = &v32;
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      v14 = sub_220FBFEB0();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = sub_220FBFED0();
      if (__OFSUB__(v12, v15))
      {
        goto LABEL_35;
      }

      v14 += v12 - v15;
LABEL_6:
      v16 = __OFSUB__(v13, v12);
      v17 = v13 - v12;
      if (v16)
      {
        goto LABEL_34;
      }

      v18 = sub_220FBFEC0();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = &v14[v19];
      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      sub_220EEAF38(v14, v21, a2, a3, a4);
      if (v4)
      {
        swift_unknownObjectRelease();
        sub_220EEB7B0(a4);
        swift_unknownObjectRelease();
        sub_220EEB7B0(a4);
        goto LABEL_28;
      }

      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      goto LABEL_32;
    case 3uLL:
      memset(data, 0, 14);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      v11 = data;
      goto LABEL_16;
    default:
      data[0] = *(a1 + 32);
      LODWORD(data[1]) = v10;
      WORD2(data[1]) = WORD2(v10);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      swift_unknownObjectRetain();
      sub_220EEB778(a4, v34);
      v11 = data + BYTE6(v10);
LABEL_16:
      sub_220EEAF38(data, v11, a2, a3, a4);
      swift_unknownObjectRelease();
      sub_220EEB7B0(a4);
      swift_unknownObjectRelease();
      goto LABEL_29;
  }
}

uint64_t sub_220EEAF38(void *data, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  if (!data)
  {
    sub_220EEB724();
    swift_allocError();
    v13 = 1;
LABEL_7:
    *v12 = v13;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_220EEB7B0(a5);
  }

  v8 = CGDataProviderCreateWithData(0, data, a2 - data, j_nullsub_1_0);
  if (!v8)
  {
    sub_220EEB724();
    swift_allocError();
    v13 = 2;
    goto LABEL_7;
  }

  v9 = v8;
  v10 = CGImageCreateWithPNGDataProvider(v8, 0, 0, kCGRenderingIntentDefault);
  if (v10)
  {
    v11 = v10;
    sub_220EEB098(v10, a3, a4, a5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_220EEB724();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return sub_220EEB7B0(a5);
}

void sub_220EEB098(CGImage *a1, void *a2, __int128 *a3, uint64_t a4)
{
  v16 = a3[1];
  v17 = *a3;
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  v8 = CGImageGetDataProvider(a1);
  if (v8)
  {
    v9 = v8;
    v10 = CGDataProviderCopyData(v8);
    if (v10)
    {
      v11 = v10;
      v12 = [(__CFData *)v10 bytes];
      v13 = *(a4 + 24);
      v18[0] = v17;
      v18[1] = v16;
      v19 = v6;
      v20 = v7;
      [a2 replaceRegion:v18 mipmapLevel:0 withBytes:v12 bytesPerRow:v13];
    }

    else
    {
      sub_220EEB724();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_220EEB724();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

void sub_220EEB1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a5;
  v50 = a2;
  v10 = sub_220FBFB20();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8E8);
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v36 - v19;
  v21 = a1;
  sub_220FC3090();
  if (v47 == 1)
  {
    sub_220EEB724();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    return;
  }

  v38 = a3;
  v44 = v48;
  v45 = v49;
  v42 = v46;
  v43 = v47;
  sub_220FBFB30();
  v23 = v21;
  sub_220FBFAF0();
  if (!v5)
  {
    sub_220FBFAC0();
    sub_220FBFB10();
    sub_220FBFAE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E8F8);
    v37 = 0;
    v24 = *(v17 + 72);
    v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220FC9880;
    v27 = v26 + v25;
    v36 = a4;
    v28 = *(v17 + 16);
    v28(v27, v20, v16);
    v28(v27 + v24, v20, v16);
    v28(v27 + 2 * v24, v20, v16);
    v28(v27 + 3 * v24, v20, v16);
    sub_220FBFB00();

    MEMORY[0x28223BE20](v29, v30);
    v32 = v37;
    v31 = v38;
    *(&v36 - 4) = v50;
    *(&v36 - 3) = v31;
    v33 = v39;
    *(&v36 - 2) = v36;
    *(&v36 - 1) = v33;
    v34 = v41;
    sub_220FBFAD0();
    (*(v40 + 8))(v15, v34);
    (*(v17 + 8))(v20, v16);
    if (!v32)
    {
      return;
    }

    v6 = v32;
  }

  sub_220EEB724();
  swift_allocError();
  *v35 = 1;
  swift_willThrow();
}

id sub_220EEB5F4(id result, int a2, id a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    if ((*(a5 + 24) * a6) >> 64 == (*(a5 + 24) * a6) >> 63)
    {
      v6 = a4[1];
      v7 = a4[2];
      v9[0] = *a4;
      v9[1] = v6;
      v9[2] = v7;
      return [a3 replaceRegion:v9 mipmapLevel:0 withBytes:result bytesPerRow:?];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_220EEB724();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_220EEB724()
{
  result = qword_27CF9E8E0;
  if (!qword_27CF9E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E8E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PNGError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220EEB8DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 48))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_220EEB928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_220EEB998()
{
  result = qword_27CF9E900;
  if (!qword_27CF9E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E900);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_220EEBA00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EEBA20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_220EEBA60()
{
  v3 = OUTLINED_FUNCTION_0_48();
  MEMORY[0x223D9BD60](45, 0xE100000000000000);
  v0 = OUTLINED_FUNCTION_0_48();
  MEMORY[0x223D9BD60](v0);

  MEMORY[0x223D9BD60](45, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_0_48();
  MEMORY[0x223D9BD60](v1);

  return v3;
}

uint64_t sub_220EEBB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  MEMORY[0x223D9CFA0](a4);
  return sub_220FC3A70();
}

uint64_t sub_220EEBB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC3A40();
  sub_220EEBB30(v7, a1, a2, a3);
  return sub_220FC3A90();
}

uint64_t sub_220EEBC4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_220FC3A40();
  sub_220EEBB30(v5, v1, v2, v3);
  return sub_220FC3A90();
}

uint64_t sub_220EEBCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9880;
  v11 = MEMORY[0x277D83B88];
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = a1;
  *(inited + 72) = v11;
  *(inited + 80) = 121;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = a2;
  *(inited + 120) = v11;
  *(inited + 128) = 122;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = a3;
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000220FDFCF0;
  *(inited + 216) = MEMORY[0x277D83A90];
  *(inited + 192) = a5;
  sub_220FC2600();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E918);
  a4[4] = sub_220EEBED0();
  __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_220FC12A0();
}

unint64_t sub_220EEBE24()
{
  result = qword_27CF9E908;
  if (!qword_27CF9E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E908);
  }

  return result;
}

unint64_t sub_220EEBE7C()
{
  result = qword_27CF9E910;
  if (!qword_27CF9E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E910);
  }

  return result;
}

unint64_t sub_220EEBED0()
{
  result = qword_27CF9E920;
  if (!qword_27CF9E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E920);
  }

  return result;
}

uint64_t type metadata accessor for WeatherMapOverlayFramesMetadata()
{
  result = qword_2812C8880;
  if (!qword_2812C8880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220EEBFA8()
{
  sub_220FC02B0();
  if (v0 <= 0x3F)
  {
    sub_220EEC034();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220EEC034()
{
  if (!qword_27CF9E928)
  {
    sub_220FC02B0();
    v0 = sub_220FC2A10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9E928);
    }
  }
}

uint64_t sub_220EEC08C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  *(inited + 32) = 0x746E6572727563;
  *(inited + 40) = 0xE700000000000000;
  v5 = sub_220FC02B0();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v2, v5);
  *(inited + 80) = 0x746144656D617266;
  *(inited + 88) = 0xEA00000000007365;
  v7 = *(v2 + *(type metadata accessor for WeatherMapOverlayFramesMetadata() + 20));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E938);
  *(inited + 96) = v7;
  *(inited + 120) = v8;
  *(inited + 128) = 0x756F43656D617266;
  *(inited + 136) = 0xEA0000000000746ELL;
  v9 = *(v7 + 16);
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v9;

  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E940);
  a1[4] = sub_220EEC2DC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220EEC250()
{
  sub_220EEC340(&qword_27CF9E950);

  return sub_220FC1290();
}

unint64_t sub_220EEC2DC()
{
  result = qword_27CF9E948;
  if (!qword_27CF9E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E948);
  }

  return result;
}

uint64_t sub_220EEC340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherMapOverlayFramesMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220EEC384(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_220FC02B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x28223BE20](v21, v22).n128_u64[0];
  v25 = &v39 - v24;
  if (*(v2 + 16) != v3)
  {
    if (*(v2 + 16))
    {
      v26 = *(v2 + 48);
      if (v26)
      {
        v27 = [v26 fireDate];
        sub_220FC0250();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      __swift_storeEnumTagSinglePayload(v25, v28, 1, v4);
      v30 = OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_pausedTimerNextFireDate;
      swift_beginAccess();
      sub_220EE5B8C(v25, v2 + v30);
      swift_endAccess();
      v31 = *(v2 + 48);
      if (v31)
      {
        [v31 invalidate];
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_didExperienceSignificantTimeChangeWhilePaused) == 1)
    {
      *(v2 + OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_didExperienceSignificantTimeChangeWhilePaused) = 0;

      sub_220EEC76C();
    }

    else
    {
      v29 = OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_pausedTimerNextFireDate;
      swift_beginAccess();
      sub_220E70720(v2 + v29, v20);
      if (__swift_getEnumTagSinglePayload(v20, 1, v4) == 1)
      {
        sub_220EE9DE8(v20);
      }

      else
      {
        (*(v5 + 32))(v16, v20, v4);
        sub_220FC0670();
        sub_220E3AFE8();
        v32 = sub_220FC2680();
        v33 = *(v5 + 8);
        v33(v12, v4);
        if ((v32 & 1) == 0)
        {
          sub_220EEC76C();
          v33(v16, v4);
          return;
        }

        v33(v16, v4);
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2 + v29, 1, v4);
      if (EnumTagSinglePayload)
      {
        v35 = 0;
      }

      else
      {
        (*(v5 + 16))(v12, v2 + v29, v4);
        sub_220FC0670();
        sub_220FC01B0();
        v37 = v36;
        v38 = *(v5 + 8);
        v38(v8, v4);
        v38(v12, v4);
        v35 = v37;
      }

      sub_220EEC7BC(v35, EnumTagSinglePayload != 0);
    }
  }
}

uint64_t sub_220EEC76C()
{
  sub_220EEC7BC(0, 1);
  v1 = *(v0 + 32);

  v1(v2);
}

id sub_220EEC7BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = *&a1;
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_220EECC94;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_220E7F8F4;
  v12[3] = &block_descriptor_12;
  v7 = _Block_copy(v12);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:v3];
  _Block_release(v7);
  v9 = *(v2 + 48);
  *(v2 + 48) = v8;

  result = *(v2 + 48);
  if (result)
  {
    v11 = v3 * 0.1;
    if (v3 * 0.1 > 30.0)
    {
      v11 = 30.0;
    }

    return [result setTolerance_];
  }

  return result;
}

void sub_220EEC91C(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_220EEC384(v2);
}

uint64_t sub_220EEC92C(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  *(v3 + 48) = 0;
  v7 = OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_pausedTimerNextFireDate;
  v8 = sub_220FC02B0();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_didExperienceSignificantTimeChangeWhilePaused) = 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  sub_220EEC7BC(0, 1);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v3 selector:sel_notifiedSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];

  return v3;
}

uint64_t sub_220EECA14()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    [v1 invalidate];
  }

  sub_220EE9DE8(v0 + OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_pausedTimerNextFireDate);
  return v0;
}

uint64_t sub_220EECA60()
{
  sub_220EECA14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InteractiveRefreshTimer()
{
  result = qword_27CF9E968;
  if (!qword_27CF9E968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220EECB0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220EEC76C();
  }

  return result;
}

uint64_t sub_220EECB64()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return sub_220EEC76C();
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps23InteractiveRefreshTimer_didExperienceSignificantTimeChangeWhilePaused) = 1;
  return result;
}

void sub_220EECBD4()
{
  sub_220EE9660();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220EECCB4(unsigned int a1)
{
  if (a1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return sub_220FC2700();
  }
}

uint64_t sub_220EECCF4(uint64_t result, float a2, float a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      result = sub_220FC29E0();
      *(result + 16) = v3;
      v6 = 32;
      do
      {
        v7 = (result + v6);
        *v7 = a2;
        v7[1] = a3;
        v6 += 8;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_220EECD68(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E978);
      v4 = sub_220FC29E0();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_220EECE00(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_220FC29E0();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void sub_220EECE70(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = sub_220EC0AB8(a2);
  if (v4 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_31;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = v4;
  if (v4 < 0)
  {
LABEL_27:
    v24 = 1;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    goto LABEL_28;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_34;
  }

  if (v7 >= v2[17])
  {
    goto LABEL_27;
  }

  v8 = v5;
  if (v5 < 0)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >= v2[18])
  {
    goto LABEL_27;
  }

  v10 = v2[20];
  v11 = *(v10 + 16);
  if (v11 <= v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v10 + 32;
  v13 = *(v10 + 32 + 8 * v6);
  v14 = *(v13 + 16);
  if (v14 <= v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v9 >= v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v7 >= v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = *(v12 + 8 * v7);
  v16 = *(v15 + 16);
  if (v16 <= v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 >= v16)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = v2[21];
  v18 = *(v17 + 16);
  if (v18 <= v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v19 = v17 + 32;
  v20 = *(v19 + 8 * v6);
  v21 = *(v20 + 16);
  if (v21 <= v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v9 >= v21)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v7 >= v18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = *(v19 + 8 * v7);
  v23 = *(v22 + 16);
  if (v23 <= v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9 < v23)
  {
    v24 = 0;
    v25 = v13 + 32;
    *&v27 = *(v25 + 8 * v8);
    *&v28 = *(v25 + 8 * v9);
    *&v29 = *(v15 + 32 + 8 * v8);
    *&v30 = *(v15 + 32 + 8 * v9);
    v26 = v20 + 32;
    *(&v27 + 1) = *(v26 + 8 * v8);
    *(&v28 + 1) = *(v26 + 8 * v9);
    *(&v29 + 1) = *(v22 + 32 + 8 * v8);
    *(&v30 + 1) = *(v22 + 32 + 8 * v9);
LABEL_28:
    *a1 = v27;
    *(a1 + 16) = v28;
    *(a1 + 32) = v29;
    *(a1 + 48) = v30;
    *(a1 + 64) = v24;
    return;
  }

LABEL_48:
  __break(1u);
}

void sub_220EED084(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  *(v2 + 160) = MEMORY[0x277D84F90];
  *(v2 + 168) = v4;
  sub_220EC0508(a1);
  v6 = v5[17];
  if (v6 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v7 = v5;
  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v7[18];
      if (v10 < 0)
      {
        break;
      }

      if (v10)
      {
        sub_220F36CD8();
        v11 = v8;
        v13 = v12;
        v14 = 0;
        v15 = *(v12 + 16);
        do
        {
          v16 = v7[19];
          if (v15 >= *(v13 + 24) >> 1)
          {
            sub_220F36CD8();
            v11 = v8;
            v13 = v18;
          }

          v17.f32[0] = v11;
          v17.f32[1] = v14;
          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15++ + 32) = vmul_f32(v16, v17);
          ++v14;
        }

        while (v10 != v14);
      }

      else
      {
        v13 = v9;
      }

      v19 = v7[20];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7[20] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220F36DB4();
        v19 = v22;
        v7[20] = v22;
      }

      v21 = *(v19 + 16);
      if (v21 >= *(v19 + 24) >> 1)
      {
        sub_220F36DB4();
        v19 = v23;
      }

      ++v8;
      *(v19 + 16) = v21 + 1;
      *(v19 + 8 * v21 + 32) = v13;
      v7[20] = v19;
      if (v8 == v6)
      {
        goto LABEL_17;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_17:
  v24 = v7[18];

  v25 = sub_220EECCF4(v24, 0.0, 0.0);
  v26 = v7[17];

  v7[21] = sub_220EECD68(v25, v26);

  v50.origin.x = OUTLINED_FUNCTION_0_0();
  MinX = CGRectGetMinX(v50);
  v28 = MinX;
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v51.origin.x = OUTLINED_FUNCTION_0_0();
  MaxX = CGRectGetMaxX(v51);
  if ((*&MaxX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (MaxX <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (MaxX >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = v28;
  v31 = MaxX;
  if (MaxX >= v28)
  {
    if (v30 == v31)
    {
LABEL_51:

      return;
    }

    v49 = MaxX;
    while (v30 < v31)
    {
      v52.origin.x = OUTLINED_FUNCTION_0_0();
      MinY = CGRectGetMinY(v52);
      v33 = MinY;
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_55;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_56;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_57;
      }

      v53.origin.x = OUTLINED_FUNCTION_0_0();
      MaxY = CGRectGetMaxY(v53);
      if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_58;
      }

      if (MaxY <= -9.22337204e18)
      {
        goto LABEL_59;
      }

      if (MaxY >= 9.22337204e18)
      {
        goto LABEL_60;
      }

      v35 = v33;
      v36 = MaxY;
      if (MaxY < v33)
      {
        goto LABEL_61;
      }

      if (v35 != v36)
      {
        if (v35 >= v36)
        {
          goto LABEL_62;
        }

        v37 = *(a1 + 112);
        v39 = *(a1 + 96);
        v38 = *(a1 + 104);
        v40 = __OFSUB__(v30, v38);
        v41 = v30 - v38;
        v42 = v41 < 0 == v40;
        v43 = v40 && v42;
        if (v41 < 0 != v40)
        {
          v44 = v30;
        }

        else
        {
          v44 = v41;
        }

        while (!v43)
        {
          if (*(a2 + 16))
          {
            v45 = sub_220F19244(v44, v35, v39, v37);
            if (v46)
            {
              v47 = *(*(a2 + 56) + 8 * v45);

              sub_220EED4A0(v44, v35, v47);
            }
          }

          if (v36 == ++v35)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      ++v30;
      v31 = v49;
      if (v30 == v49)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_54;
  }

LABEL_70:
  __break(1u);
}

void sub_220EED4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 13);
  if (v4 < 0)
  {
    goto LABEL_60;
  }

  if (!v4)
  {
    return;
  }

  v6 = 0;
  v7 = v3[9];
  v8 = v3[10];
  v9 = v3[11];
  v10 = v3[12];
  v30 = a3 + 32;
  v31 = *(a3 + 16);
  while (2)
  {
    if (v6 == v31)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v11 = 0;
    v32 = v6 + 1;
    v34 = *(v30 + 8 * v6);
    do
    {
      v35.origin.x = v7;
      v35.origin.y = v8;
      v35.size.width = v9;
      v35.size.height = v10;
      MinX = CGRectGetMinX(v35);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (MinX <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      v13 = a1;
      if (MinX > a1)
      {
        v14 = *(v3 + 15);
        v13 = a1 + v14;
        if (__OFADD__(a1, v14))
        {
          goto LABEL_58;
        }
      }

      v36.origin.x = v7;
      v36.origin.y = v8;
      v36.size.width = v9;
      v36.size.height = v10;
      v15 = CGRectGetMinX(v36);
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }

      if (v15 <= -9.22337204e18)
      {
        goto LABEL_42;
      }

      if (v15 >= 9.22337204e18)
      {
        goto LABEL_43;
      }

      v16 = v13 - v15;
      if (__OFSUB__(v13, v15))
      {
        goto LABEL_44;
      }

      v17 = v16 * v4;
      if ((v16 * v4) >> 64 != (v16 * v4) >> 63)
      {
        goto LABEL_45;
      }

      v18 = v17 + v6;
      if (__OFADD__(v17, v6))
      {
        goto LABEL_46;
      }

      v37.origin.x = v7;
      v37.origin.y = v8;
      v37.size.width = v9;
      v37.size.height = v10;
      MinY = CGRectGetMinY(v37);
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_48;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_49;
      }

      v20 = a2 - MinY;
      if (__OFSUB__(a2, MinY))
      {
        goto LABEL_50;
      }

      v21 = v20 * v4;
      if ((v20 * v4) >> 64 != (v20 * v4) >> 63)
      {
        goto LABEL_51;
      }

      v22 = v21 + v11;
      if (__OFADD__(v21, v11))
      {
        goto LABEL_52;
      }

      if (v11 >= *(v34 + 16))
      {
        goto LABEL_53;
      }

      v23 = *(v34 + 32 + 8 * v11);
      v24 = *(v3 + 21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 21) = v24;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_220E987F0();
        v24 = v28;
        *(v3 + 21) = v28;
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }
      }

      if (v18 >= *(v24 + 16))
      {
        goto LABEL_55;
      }

      v26 = *(v24 + 32 + 8 * v18);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 32 + 8 * v18) = v26;
      if (v27)
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        sub_220E987DC();
        v26 = v29;
        *(v24 + 32 + 8 * v18) = v29;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }
      }

      if (v22 >= *(v26 + 16))
      {
        goto LABEL_57;
      }

      ++v11;
      *(v26 + 8 * v22 + 32) = v23;
      *(v3 + 21) = v24;
    }

    while (v4 != v11);
    ++v6;
    if (v32 != v4)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_220EED798()
{
}

uint64_t sub_220EED7C8()
{

  return v0;
}

uint64_t sub_220EED7F0()
{
  sub_220EED7C8();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_220EED848(uint64_t a1)
{
  v49 = a1;
  sub_220FC02B0();
  OUTLINED_FUNCTION_28();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v48 = &v42 - v15;
  result = type metadata accessor for WeatherMapOverlayFramesMetadata();
  v17 = *(v2 + *(result + 20));
  v18 = *(v17 + 16);
  if (v18 >= 2)
  {
    v42 = v8;
    v43 = v12;
    v20 = 0;
    v47 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = v4 + 16;
    v45 = v17;
    v46 = v4 + 8;
    v44 = v18;
    v22 = v18;
    while (v20 < v22)
    {
      v23 = *(v4 + 72);
      v24 = v48;
      v25 = v47 + v23 * v20;
      v26 = *(v4 + 16);
      v27 = v21;
      v28 = v20;
      v26(v48, v25, v1);
      v29 = sub_220FC01E0();
      v30 = v4;
      v31 = *(v4 + 8);
      v32 = v24;
      v33 = v1;
      result = v31(v32, v1);
      if ((v29 & 1) == 0 || (v22 = *(v45 + 16), v28 >= (v22 - 1)))
      {
        if (!v28)
        {
          return 0;
        }

        v34 = *(v45 + 16);
        if (v34 == v28)
        {
          return v34 - 1;
        }

        v19 = v28 - 1;
        v48 = v28;
        if (v28 - 1 < v34)
        {
          v35 = v33;
          result = (v26)(v43, v47 + v23 * v19, v33);
          if (v48 < v34)
          {
            v36 = v42;
            v26(v42, v25, v33);
            v37 = v43;
            sub_220FC01B0();
            v39 = v38;
            sub_220FC01B0();
            v41 = v40;
            v31(v36, v35);
            v31(v37, v35);
            if (v41 >= v39)
            {
              if (*(v45 + 16) - 1 >= v28)
              {
                return v28;
              }

              else
              {
                return *(v45 + 16) - 1;
              }
            }

            return v19;
          }

LABEL_21:
          __break(1u);
          return result;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v20 = v28 + 1;
      v21 = v27;
      v4 = v30;
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_220EEDB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_28();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for WeatherMapOverlayFramesMetadata();
  v15 = *(v4 + *(result + 20));
  if (*(v15 + 16) <= a1)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 16))(v13, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v3);
    if (a3 <= 0.0)
    {
      (*(v9 + 32))(a2, v13, v3);
    }

    else
    {
      sub_220FC01C0();
      (*(v9 + 8))(v13, v3);
    }

    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
  }

  return result;
}

uint64_t sub_220EEDD10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtC11WeatherMaps8Particle_bucket;
  v12 = *(a1 + OBJC_IVAR____TtC11WeatherMaps8Particle_bucket);
  if (v12)
  {
    sub_220EE5BFC(v12 + OBJC_IVAR____TtC11WeatherMaps6Bucket_range, v6, &qword_27CF9E9A0);
    sub_220EEECFC(v6, v10, &qword_27CF9E9A0);
    OUTLINED_FUNCTION_4_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
    sub_220FBFC80();
    v14 = v13;
    swift_endAccess();
    sub_220FBFC80();
    if (v15 > v14)
    {
      OUTLINED_FUNCTION_4_26();
      sub_220FBFC80();
      v17 = v16;
      swift_endAccess();
      sub_220FBFC80();
      if (v17 >= v18)
      {
        sub_220EEEAB8(v10);
        v19 = *(a1 + v11);

        return v19;
      }
    }

    v19 = sub_220EEE844();
    sub_220EEEAB8(v10);
    *(a1 + v11) = v19;
  }

  else
  {
    v19 = sub_220EEE844();
    *(a1 + v11) = v19;
  }

  return v19;
}

uint64_t sub_220EEDF04()
{
  sub_220EEEAB8(v0 + OBJC_IVAR____TtC11WeatherMaps6Bucket_range);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_220EEDF90()
{
  sub_220EEE02C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220EEE02C()
{
  if (!qword_27CF9E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D048);
    sub_220E453D4(&qword_27CF9E998, &qword_27CF9D048);
    v0 = sub_220FC2D30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9E990);
    }
  }
}

uint64_t sub_220EEE0D0(size_t a1)
{
  v2 = v1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4();
  v81 = v6 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v84 = &v70 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11, v12);
  v82 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  OUTLINED_FUNCTION_6();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v70 - v19;
  type metadata accessor for ParticleBucketConfiguration(0);
  OUTLINED_FUNCTION_6();
  v86 = v21;
  v87 = v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27, v28);
  v71 = (&v70 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9C8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  OUTLINED_FUNCTION_4();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = (&v70 - v37);
  v70 = v2;
  *(v2 + 16) = MEMORY[0x277D84F90];
  v92[0] = a1;

  sub_220EEEB48(v92);

  v39 = 0;
  v89 = (v16 + 16);
  v77 = (v16 + 32);
  v76 = (v16 + 8);
  v88 = v92[0];
  v40 = *(v92[0] + 16);
  v41 = v14;
  v75 = v40;
  v79 = v34;
  v80 = v26;
  v78 = v38;
  v74 = (v2 + 16);
  v73 = v25;
  v72 = v20;
  while (1)
  {
    if (v39 == v40)
    {
      v42 = 1;
      v91 = v40;
      v43 = v88;
    }

    else
    {
      v43 = v88;
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v39 >= *(v88 + 16))
      {
        goto LABEL_19;
      }

      v44 = v39 + 1;
      v45 = v88 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v39;
      v46 = *(v26 + 48);
      v47 = v71;
      *v71 = v39;
      sub_220EEEBF0(v45, v47 + v46);
      sub_220EEECFC(v47, v34, &qword_27CF9E9C0);
      v42 = 0;
      v91 = v44;
    }

    __swift_storeEnumTagSinglePayload(v34, v42, 1, v26);
    sub_220EEECFC(v34, v38, &qword_27CF9E9C8);
    if (__swift_getEnumTagSinglePayload(v38, 1, v26) == 1)
    {

      return v70;
    }

    v48 = *v38;
    sub_220EEEC54(v38 + *(v26 + 48), v25);
    v49 = *(v43 + 16);
    if (v48 >= (v49 - 1))
    {
      v50 = [objc_opt_self() metersPerSecond];
      sub_220EEECB8();
      sub_220FBFC70();
    }

    else
    {
      if (v48 + 1 >= v49)
      {
        goto LABEL_20;
      }

      (*v89)(v20, v43 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * (v48 + 1), v41);
    }

    v51 = v86;
    sub_220FC2D40();
    v90 = v52;
    v53 = *&v25[*(v51 + 24)];
    v54 = *&v25[*(v51 + 28)];
    sub_220E453D4(&qword_27CF9E998, &qword_27CF9D048);
    if ((sub_220FC26A0() & 1) == 0)
    {
      break;
    }

    v55 = *v89;
    v56 = v20;
    v57 = v84;
    (*v89)(v84, v25, v41);
    v58 = v85;
    v55((v57 + *(v85 + 48)), v56, v41);
    v59 = v81;
    sub_220EE5BFC(v57, v81, &qword_27CF9E9B8);
    v60 = *(v58 + 48);
    v61 = v41;
    v62 = *v77;
    v63 = v82;
    (*v77)(v82, v59, v61);
    v64 = *v76;
    (*v76)(v59 + v60, v61);
    sub_220EEECFC(v57, v59, &qword_27CF9E9B8);
    v62((v63 + *(v83 + 36)), v59 + *(v58 + 48), v61);
    v65 = v59;
    v66 = v74;
    v64(v65, v61);
    type metadata accessor for Bucket(0);
    v67 = swift_allocObject();
    sub_220EEECFC(v63, v67 + OBJC_IVAR____TtC11WeatherMaps6Bucket_range, &qword_27CF9E9A0);
    *(v67 + 16) = v90;
    *(v67 + 32) = v53;
    *(v67 + 36) = v54;
    swift_beginAccess();

    MEMORY[0x223D9BEA0](v68);
    if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_220FC29C0();
    }

    sub_220FC29F0();
    swift_endAccess();

    v20 = v72;
    v64(v72, v61);
    v25 = v73;
    sub_220EEED4C(v73);
    v34 = v79;
    v26 = v80;
    v38 = v78;
    v41 = v61;
    v40 = v75;
    v39 = v91;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220EEE844()
{
  v1 = v0;
  swift_beginAccess();
  v6 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9A8);
  sub_220E453D4(&qword_27CF9E9B0, &qword_27CF9E9A8);
  v2 = &v6;
  sub_220FC2CB0();

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = (v5 - 1) & ~((v5 - 1) >> 63);
  swift_beginAccess();
  v1 = *(v1 + 16);
  sub_220F227B4(v2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_6:
    v3 = MEMORY[0x223D9CB30](v2, v1);
    goto LABEL_4;
  }

  v3 = *(v1 + 8 * v2 + 32);

LABEL_4:
  swift_endAccess();
  return v3;
}

BOOL sub_220EEE994()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  sub_220FBFC80();
  v1 = v0;
  swift_endAccess();
  sub_220FBFC80();
  return v2 < v1;
}

uint64_t sub_220EEEA38()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy24_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_220EEEAB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220EEEB48(size_t *a1)
{
  v2 = *(type metadata accessor for ParticleBucketConfiguration(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_220E6447C(v3);
  }

  v4 = *(v3 + 16);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_220EEEDA8(v5);
  *a1 = v3;
}

uint64_t sub_220EEEBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticleBucketConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EEEC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticleBucketConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220EEECB8()
{
  result = qword_2812C5D00;
  if (!qword_2812C5D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5D00);
  }

  return result;
}

uint64_t sub_220EEECFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_74(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_220EEED4C(uint64_t a1)
{
  v2 = type metadata accessor for ParticleBucketConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220EEEDA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_220FC38E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ParticleBucketConfiguration(0);
        v6 = sub_220FC29E0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ParticleBucketConfiguration(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220EEF0D8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_220EEEED8(0, v2, 1, a1);
  }
}

void sub_220EEEED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for ParticleBucketConfiguration(0);
  MEMORY[0x28223BE20](v35, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v19 = &v28 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v29 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v33 = v22;
      v34 = a3;
      v31 = v25;
      v32 = v24;
      do
      {
        sub_220EEEBF0(v25, v19);
        sub_220EEEBF0(v22, v14);
        sub_220EEECB8();
        v26 = sub_220FBFC50();
        sub_220EEED4C(v14);
        sub_220EEED4C(v19);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v20)
        {
          __break(1u);
          return;
        }

        sub_220EEEC54(v25, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_220EEEC54(v10, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v34 + 1;
      v22 = v33 + v29;
      v24 = v32 - 1;
      v25 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_220EEF0D8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v110 = a1;
  v122 = type metadata accessor for ParticleBucketConfiguration(0);
  v116 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v7);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v121 = &v106 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v106 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v106 - v18;
  v119 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_99:
    v4 = *v110;
    if (!*v110)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v98 = (v22 + 16);
      for (i = *(v22 + 16); i >= 2; *v98 = i)
      {
        if (!*v119)
        {
          goto LABEL_136;
        }

        v100 = (v22 + 16 * i);
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        v104 = v120;
        sub_220EEF900(*v119 + *(v116 + 72) * *v100, *v119 + *(v116 + 72) * *v102, *v119 + *(v116 + 72) * v103, v4);
        v120 = v104;
        if (v104)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_124;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_125;
        }

        *v100 = v101;
        v100[1] = v103;
        v105 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_126;
        }

        i = *v98 - 1;
        sub_220E64350(v102 + 16, v105, v102);
      }

LABEL_97:

      return;
    }

LABEL_133:
    v22 = sub_220E6433C(v22);
    goto LABEL_101;
  }

  v108 = a4;
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v114 = &v106 - v18;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v21 + 1 < v20)
    {
      v25 = *v119;
      v26 = *(v116 + 72);
      v4 = *v119 + v26 * v24;
      v117 = v20;
      sub_220EEEBF0(v4, v19);
      sub_220EEEBF0(v25 + v26 * v23, v15);
      sub_220EEECB8();
      LODWORD(v115) = sub_220FBFC50();
      sub_220EEED4C(v15);
      sub_220EEED4C(v19);
      v27 = v117;
      v109 = v23;
      v28 = v23 + 2;
      v118 = v26;
      v29 = v25 + v26 * (v23 + 2);
      while (1)
      {
        v30 = v28;
        v31 = v24 + 1;
        if (v31 >= v27)
        {
          break;
        }

        sub_220EEEBF0(v29, v19);
        sub_220EEEBF0(v4, v15);
        v32 = v31;
        v33 = sub_220FBFC50() & 1;
        sub_220EEED4C(v15);
        sub_220EEED4C(v19);
        v29 += v118;
        v4 += v118;
        v28 = v30 + 1;
        v34 = (v115 & 1) == v33;
        v27 = v117;
        v24 = v32;
        if (!v34)
        {
          goto LABEL_9;
        }
      }

      v24 = v27;
LABEL_9:
      if ((v115 & 1) == 0)
      {
        goto LABEL_29;
      }

      v23 = v109;
      if (v24 < v109)
      {
        goto LABEL_130;
      }

      if (v109 < v24)
      {
        v107 = v22;
        if (v27 >= v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v27;
        }

        v36 = v118 * (v35 - 1);
        v4 = v118 * v35;
        v37 = v109;
        v38 = v109 * v118;
        v39 = v24;
        v117 = v24;
        do
        {
          if (v37 != --v39)
          {
            v40 = *v119;
            if (!*v119)
            {
              goto LABEL_137;
            }

            sub_220EEEC54(v40 + v38, v113);
            v41 = v38 < v36 || v40 + v38 >= v40 + v4;
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_220EEEC54(v113, v40 + v36);
            v24 = v117;
          }

          ++v37;
          v36 -= v118;
          v4 -= v118;
          v38 += v118;
        }

        while (v37 < v39);
        v22 = v107;
LABEL_29:
        v23 = v109;
      }
    }

    v42 = v119[1];
    if (v24 < v42)
    {
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_129;
      }

      if (v24 - v23 < v108)
      {
        break;
      }
    }

LABEL_46:
    if (v24 < v23)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F370E4();
      v22 = v96;
    }

    v52 = *(v22 + 16);
    v4 = v52 + 1;
    if (v52 >= *(v22 + 24) >> 1)
    {
      sub_220F370E4();
      v22 = v97;
    }

    *(v22 + 16) = v4;
    v53 = v22 + 32;
    v54 = (v22 + 32 + 16 * v52);
    *v54 = v23;
    v54[1] = v24;
    v118 = *v110;
    if (!v118)
    {
      goto LABEL_138;
    }

    v117 = v24;
    if (v52)
    {
      while (1)
      {
        v55 = v4 - 1;
        v56 = (v53 + 16 * (v4 - 1));
        v57 = (v22 + 16 * v4);
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v58 = *(v22 + 32);
          v59 = *(v22 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_66:
          if (v61)
          {
            goto LABEL_115;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_118;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_123;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v4 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v4 < 2)
        {
          goto LABEL_117;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_81:
        if (v76)
        {
          goto LABEL_120;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v83 < v75)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v55 - 1 >= v4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v87 = v15;
        v88 = v22;
        v89 = (v53 + 16 * (v55 - 1));
        v4 = *v89;
        v90 = v55;
        v91 = v53 + 16 * v55;
        v22 = *(v91 + 8);
        v92 = v120;
        sub_220EEF900(*v119 + *(v116 + 72) * *v89, *v119 + *(v116 + 72) * *v91, *v119 + *(v116 + 72) * v22, v118);
        v120 = v92;
        if (v92)
        {
          goto LABEL_97;
        }

        if (v22 < v4)
        {
          goto LABEL_110;
        }

        v93 = v53;
        v94 = *(v88 + 16);
        if (v90 > v94)
        {
          goto LABEL_111;
        }

        *v89 = v4;
        v89[1] = v22;
        if (v90 >= v94)
        {
          goto LABEL_112;
        }

        v4 = v94 - 1;
        sub_220E64350((v91 + 16), v94 - 1 - v90, v91);
        v22 = v88;
        *(v88 + 16) = v94 - 1;
        v95 = v94 > 2;
        v53 = v93;
        v15 = v87;
        v19 = v114;
        if (!v95)
        {
          goto LABEL_95;
        }
      }

      v62 = v53 + 16 * v4;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_113;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_114;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_116;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_119;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_127;
        }

        if (v60 < v86)
        {
          v55 = v4 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v20 = v119[1];
    v21 = v117;
    if (v117 >= v20)
    {
      goto LABEL_99;
    }
  }

  v43 = v23 + v108;
  if (__OFADD__(v23, v108))
  {
    goto LABEL_131;
  }

  if (v43 >= v42)
  {
    v43 = v119[1];
  }

  if (v43 < v23)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v24 == v43)
  {
    goto LABEL_46;
  }

  v107 = v22;
  v44 = *v119;
  v45 = *(v116 + 72);
  v4 = *v119 + v45 * (v24 - 1);
  v46 = -v45;
  v109 = v23;
  v47 = v23 - v24;
  v117 = v24;
  v111 = v45;
  v112 = v43;
  v48 = v44 + v24 * v45;
LABEL_39:
  v49 = v48;
  v115 = v47;
  v118 = v4;
  while (1)
  {
    sub_220EEEBF0(v49, v19);
    sub_220EEEBF0(v4, v15);
    sub_220EEECB8();
    v50 = sub_220FBFC50();
    sub_220EEED4C(v15);
    sub_220EEED4C(v19);
    if ((v50 & 1) == 0)
    {
LABEL_44:
      v4 = v118 + v111;
      v47 = v115 - 1;
      v48 += v111;
      if (++v117 == v112)
      {
        v24 = v112;
        v22 = v107;
        v23 = v109;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v44)
    {
      break;
    }

    v51 = v121;
    sub_220EEEC54(v49, v121);
    swift_arrayInitWithTakeFrontToBack();
    sub_220EEEC54(v51, v4);
    v4 += v46;
    v49 += v46;
    v41 = __CFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_220EEF900(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for ParticleBucketConfiguration(0);
  MEMORY[0x28223BE20](v56, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v47 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_61;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v49 = v4;
  v22 = v18 / v17;
  v59 = a1;
  v58 = a4;
  v23 = v20 / v17;
  if (v18 / v17 >= v20 / v17)
  {
    sub_220F0AE44(a2, v20 / v17, a4);
    v29 = a4 + v23 * v17;
    v30 = -v17;
    v31 = v29;
    v32 = a3;
    v51 = a1;
    v52 = a4;
    v55 = -v17;
LABEL_37:
    v53 = a2;
    v54 = a2 + v30;
    v33 = v32;
    v34 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v34;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v34;
      v35 = v33 + v30;
      v36 = v29 + v30;
      v37 = v29;
      v38 = v33;
      sub_220EEEBF0(v29 + v30, v15);
      sub_220EEEBF0(v54, v11);
      sub_220EEECB8();
      v39 = sub_220FBFC50();
      v40 = v11;
      v41 = v39;
      v42 = v40;
      sub_220EEED4C(v40);
      sub_220EEED4C(v15);
      if (v41)
      {
        v48 = v37;
        v44 = v38 < v53 || v35 >= v53;
        v32 = v35;
        if (v44)
        {
          v45 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          a1 = v51;
          v11 = v42;
          a2 = v45;
          a4 = v52;
          v30 = v55;
          v29 = v48;
        }

        else
        {
          a1 = v51;
          v31 = v50;
          v19 = v38 == v53;
          v46 = v54;
          v30 = v55;
          v11 = v42;
          a2 = v54;
          a4 = v52;
          v29 = v48;
          if (!v19)
          {
            v31 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v48;
            v30 = v55;
            a2 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v38 < v37 || v35 >= v37)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v34 = v36;
        v11 = v42;
        a4 = v52;
        a2 = v53;
        v30 = v55;
        a1 = v51;
      }

      else
      {
        v34 = v36;
        v19 = v37 == v38;
        v33 = v35;
        v29 = v36;
        v11 = v42;
        a4 = v52;
        a2 = v53;
        v30 = v55;
        a1 = v51;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v55;
          v33 = v35;
          v29 = v36;
          v34 = v36;
        }
      }
    }

    v59 = a2;
    v57 = v31;
  }

  else
  {
    sub_220F0AE44(a1, v18 / v17, a4);
    v24 = a4 + v22 * v17;
    v57 = v24;
    while (a4 < v24 && a2 < a3)
    {
      sub_220EEEBF0(a2, v15);
      sub_220EEEBF0(a4, v11);
      sub_220EEECB8();
      v26 = sub_220FBFC50();
      sub_220EEED4C(v11);
      sub_220EEED4C(v15);
      if (v26)
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v59 = a1;
    }
  }

LABEL_59:
  sub_220EEFD60(&v59, &v58, &v57);
}

uint64_t sub_220EEFD60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ParticleBucketConfiguration(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_220EEFE68()
{
  sub_220ED6840();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGColor(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_220EEFF20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EEFF40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_220EEFF7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v19[-v8 - 8];
  v10 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *a1;
  sub_220EF0204(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_220EF0274(v9);
    *a3 = 0x6576697463616E69;
    *(a3 + 1) = 0xE800000000000000;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *(a3 + 16) = 2;
    *(a3 + 5) = 0;
    *(a3 + 6) = 0;
    *(a3 + 7) = MEMORY[0x277D84F90];
    *(a3 + 8) = 0;
    a3[72] = 0;
    *(a3 + 5) = xmmword_220FC8E20;
    a3[96] = v14;
  }

  else
  {
    sub_220EE5C4C(v9, v13);
    if (v13[200] == 3 && *(v13 + 1) != 1 && (sub_220FC0C10() & 1) != 0)
    {
      if (qword_2812C78D8 != -1)
      {
        swift_once();
      }

      v17 = qword_2812CE540;
      v16 = *algn_2812CE548;
      *a3 = 0x616C696176616E75;
      *(a3 + 1) = 0xEB00000000656C62;
      *(a3 + 2) = 0;
      *(a3 + 3) = 0;
      *(a3 + 16) = 2;
      *(a3 + 5) = v17;
      *(a3 + 6) = v16;
      *(a3 + 7) = MEMORY[0x277D84F90];
      *(a3 + 8) = 0;
      a3[72] = 0;
      *(a3 + 5) = xmmword_220FC8E20;
      a3[96] = v14;
    }

    else
    {
      memcpy(v20, v13 + 16, sizeof(v20));
      sub_220F1505C(v19);
      memcpy(a3, v19, 0x60uLL);
      a3[96] = v14;
    }

    return sub_220EF02DC(v13);
  }

  return result;
}

uint64_t sub_220EF0204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EF0274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220EF02DC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220EF0338(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for WeatherMapOverlayServiceDataResponse(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220EF03D0, 0, 0);
}

uint64_t sub_220EF03D0()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
LABEL_10:

    v6 = OUTLINED_FUNCTION_1_42();

    return v7(v6);
  }

  v3 = sub_220EF0A68();
  v5 = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_2812CA210 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  if ((*(v0 + 104) & 1) == 0 && v5 >> 60 != 15)
  {
    type metadata accessor for WeatherMapOverlayCoverageDataSource();
    swift_allocObject();
    sub_220FBA0FC(v3, v5);
    goto LABEL_10;
  }

  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v9 = sub_220FC17A0();
  *(v0 + 72) = __swift_project_value_buffer(v9, qword_2812C5EB0);
  v10 = sub_220FC1780();
  v11 = sub_220FC2E30();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_220E15000, v10, v11, "Fetching radar coverage data from service...", v12, 2u);
    OUTLINED_FUNCTION_15();
  }

  v13 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  sub_220E88674();
  v15 = v14;
  *(v0 + 80) = v14;
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  *v16 = v0;
  v16[1] = sub_220EF0690;
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v18, v15, v19, v17, v20);
}

uint64_t sub_220EF0690()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_220EF08FC;
  }

  else
  {
    v2 = sub_220EF07A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220EF07A4()
{
  v1 = sub_220FC1780();
  v2 = sub_220FC2E30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_220E15000, v1, v2, "Received radar coverage from service", v3, 2u);
    OUTLINED_FUNCTION_15();
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  sub_220EF18A8(v6);
  sub_220E56854(v5, v4);

  v8 = *v6;
  v7 = v6[1];
  sub_220E567FC(*v6, v7);
  sub_220EF2A30(v6, type metadata accessor for WeatherMapOverlayServiceDataResponse);
  type metadata accessor for WeatherMapOverlayCoverageDataSource();
  swift_allocObject();
  sub_220FBA0FC(v8, v7);

  v9 = OUTLINED_FUNCTION_1_42();

  return v10(v9);
}

uint64_t sub_220EF08FC()
{
  v1 = v0[12];

  v2 = v1;
  v3 = sub_220FC1780();
  v4 = sub_220FC2E10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_220E15000, v3, v4, "Unable to fetch coverage data: %@", v6, 0xCu);
    sub_220E3B2DC(v7, &qword_27CF9EF80);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  v10 = v0[12];
  v12 = v0[7];
  v11 = v0[8];

  sub_220EF227C();
  sub_220E56854(v12, v11);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_220EF0A68()
{
  v139 = *MEMORY[0x277D85DE8];
  v125 = sub_220FC02B0();
  v128 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v0);
  v124 = &v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v122 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v121 = &v116 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v116 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v126 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v116 - v21;
  v23 = sub_220FC0090();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v116 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v116 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v116 - v38;
  v120 = objc_opt_self();
  v40 = [v120 defaultManager];
  sub_220F9A350(v22);

  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_220E3B2DC(v22, &qword_27CF9D288);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v41 = sub_220FC17A0();
    __swift_project_value_buffer(v41, qword_2812C5EB0);
    v42 = sub_220FC1780();
    v43 = sub_220FC2E10();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_220E15000, v42, v43, "No cache folder available to retrieve metadata storage for", v44, 2u);
      MEMORY[0x223D9DDF0](v44, -1, -1);
    }

    return 0;
  }

  v119 = v24;
  (*(v24 + 32))(v39, v22, v23);
  sub_220FC0060();
  v133 = v31;
  sub_220FC0060();
  sub_220FC0060();
  v123 = v35;
  v45 = sub_220FC00C0();
  v46 = v27;
  v48 = v47;
  v131 = v45;
  v49 = sub_220FC00C0();
  v51 = v50;
  v52 = sub_220FC00C0();
  v54 = v53;
  v130 = v52;
  v129 = v39;
  v127 = v23;
  if (v48 >> 60 == 15 || v51 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v137 = v49;
  v138 = v51;
  if (v53 >> 60 == 15)
  {
    sub_220E567FC(v49, v51);
    sub_220E565AC(v49, v51);
LABEL_12:
    v58 = v48;
    v59 = v49;
    v60 = v131;
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v61 = sub_220FC17A0();
    __swift_project_value_buffer(v61, qword_2812C5EB0);
    v62 = sub_220FC1780();
    v63 = sub_220FC2E30();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v119;
    if (v64)
    {
      v66 = v51;
      v67 = v46;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_220E15000, v62, v63, "No cached radar coverage available.", v68, 2u);
      v69 = v68;
      v46 = v67;
      v51 = v66;
      MEMORY[0x223D9DDF0](v69, -1, -1);
    }

    sub_220EF227C();
    sub_220E56854(v130, v54);
    sub_220E56854(v59, v51);
    sub_220E56854(v60, v58);
    v70 = *(v65 + 8);
    v71 = v127;
    v70(v46, v127);
    v72 = v133;
LABEL_17:
    v70(v72, v71);
    v70(v123, v71);
    v70(v129, v71);
    return 0;
  }

  v55 = v130;
  v135 = v130;
  v136 = v53;
  sub_220E567E8(v49, v51);
  sub_220E567E8(v131, v48);
  sub_220E567E8(v55, v54);
  v56 = sub_220FC2790();
  v118 = v49;
  if (v56 == 0x312E302E30 && v57 == 0xE500000000000000)
  {

    v75 = v129;
  }

  else
  {
    v117 = sub_220FC3940();

    v75 = v129;
    if ((v117 & 1) == 0)
    {
      sub_220E56854(v131, v48);
      sub_220E565AC(v135, v136);
      sub_220E565AC(v137, v138);
      v49 = v118;
      goto LABEL_12;
    }
  }

  sub_220FC0160();
  v71 = v127;
  sub_220E56854(v131, v48);
  v76 = v125;
  (*(v128 + 32))(v15, v5, v125);
  v77 = v15;
  v78 = v126;
  sub_220EF29CC(v77, v126);
  v79 = v124;
  sub_220FC02A0();
  sub_220EE5B48(&qword_2812CA290);
  v80 = sub_220FC2680();
  (*(v128 + 8))(v79, v76);
  if ((v80 & 1) == 0)
  {
    v132 = v51;
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v95 = sub_220FC17A0();
    __swift_project_value_buffer(v95, qword_2812C5EB0);
    v96 = v121;
    sub_220EF296C(v78, v121, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    v97 = sub_220FC1780();
    v98 = sub_220FC2E30();
    v99 = os_log_type_enabled(v97, v98);
    v116 = v46;
    if (v99)
    {
      v100 = v54;
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v134 = v102;
      *v101 = 136446210;
      sub_220EE5B48(&qword_2812CA288);
      v103 = sub_220FC38F0();
      v105 = v104;
      sub_220EF2A30(v96, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
      v106 = sub_220E20FF8(v103, v105, &v134);
      v78 = v126;

      *(v101 + 4) = v106;
      _os_log_impl(&dword_220E15000, v97, v98, "Cached radar coverage is expired, expiryDate=%{public}s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x223D9DDF0](v102, -1, -1);
      v107 = v101;
      v54 = v100;
      MEMORY[0x223D9DDF0](v107, -1, -1);
    }

    else
    {

      sub_220EF2A30(v96, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    }

    v108 = v119;
    v109 = [v120 defaultManager];
    v110 = sub_220FC0050();
    v134 = 0;
    v111 = [v109 removeItemAtURL:v110 error:&v134];

    if (v111)
    {
      v112 = v134;
      sub_220E56854(v131, v48);
    }

    else
    {
      v113 = v134;
      v114 = sub_220FBFFE0();

      swift_willThrow();
      sub_220E56854(v131, v48);
    }

    v115 = v133;
    sub_220E56854(v130, v54);
    sub_220E56854(v118, v132);
    sub_220EF2A30(v78, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    sub_220E565AC(v135, v136);
    sub_220E565AC(v137, v138);
    v70 = *(v108 + 8);
    v70(v116, v71);
    v72 = v115;
    goto LABEL_17;
  }

  v132 = v54;
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v81 = sub_220FC17A0();
  __swift_project_value_buffer(v81, qword_2812C5EB0);
  v82 = v122;
  sub_220EF296C(v78, v122, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
  v83 = sub_220FC1780();
  v84 = sub_220FC2E30();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v116 = v46;
    v86 = v85;
    v128 = swift_slowAlloc();
    v134 = v128;
    *v86 = 136446210;
    sub_220EE5B48(&qword_2812CA288);
    v87 = sub_220FC38F0();
    v88 = v82;
    v89 = v87;
    v91 = v90;
    sub_220EF2A30(v88, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    v92 = sub_220E20FF8(v89, v91, &v134);

    *(v86 + 4) = v92;
    _os_log_impl(&dword_220E15000, v83, v84, "Found cached radar coverage data, expiryDate=%{public}s", v86, 0xCu);
    v93 = v128;
    __swift_destroy_boxed_opaque_existential_0(v128);
    MEMORY[0x223D9DDF0](v93, -1, -1);
    MEMORY[0x223D9DDF0](v86, -1, -1);

    sub_220E56854(v130, v132);
    sub_220E56854(v118, v51);
    sub_220EF2A30(v126, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    sub_220E565AC(v135, v136);
    sub_220E565AC(v137, v138);
    v94 = *(v119 + 8);
    v94(v116, v71);
  }

  else
  {

    sub_220E56854(v130, v132);
    sub_220E56854(v118, v51);
    sub_220EF2A30(v82, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    sub_220EF2A30(v78, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
    sub_220E565AC(v135, v136);
    sub_220E565AC(v137, v138);
    v94 = *(v119 + 8);
    v94(v46, v71);
  }

  v94(v133, v71);
  v94(v123, v71);
  v94(v75, v71);
  return v131;
}

void sub_220EF18A8(uint64_t a1)
{
  v75 = a1;
  v1 = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220FC02B0();
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for WeatherMapOverlayServiceDataResponse(0);
  MEMORY[0x28223BE20](v73, v7);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v63 - v15;
  v17 = sub_220FC0090();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v63 - v32;
  v34 = [objc_opt_self() defaultManager];
  sub_220F9A350(v16);

  v76 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_220E3B2DC(v16, &qword_27CF9D288);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v35 = sub_220FC17A0();
    __swift_project_value_buffer(v35, qword_2812C5EB0);
    v36 = sub_220FC1780();
    v37 = sub_220FC2E10();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_220E15000, v36, v37, "No caches folder available", v38, 2u);
      MEMORY[0x223D9DDF0](v38, -1, -1);
    }
  }

  else
  {
    v66 = v4;
    (*(v18 + 32))(v33, v16, v76);
    v78 = xmmword_220FCA3A0;
    v79 = xmmword_220FCA3A0;
    sub_220FC0060();
    sub_220FC0060();
    v69 = v21;
    sub_220FC0060();
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v39 = sub_220FC17A0();
    v40 = __swift_project_value_buffer(v39, qword_2812C5EB0);
    sub_220EF296C(v75, v12, type metadata accessor for WeatherMapOverlayServiceDataResponse);
    v65 = v40;
    v41 = sub_220FC1780();
    v42 = sub_220FC2E30();
    v43 = os_log_type_enabled(v41, v42);
    v67 = v29;
    v68 = v25;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v63 = v44;
      v64 = swift_slowAlloc();
      v77 = v64;
      *v44 = 136446210;
      v45 = v70;
      sub_220EF296C(&v12[*(v73 + 20)], v70, type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage);
      v46 = v71;
      v47 = v72;
      v48 = v45;
      v49 = v33;
      v50 = v18;
      v51 = v66;
      (*(v72 + 32))(v71, v48, v66);
      sub_220EE5B48(&qword_2812CA288);
      v52 = sub_220FC38F0();
      v54 = v53;
      v55 = v51;
      v18 = v50;
      v33 = v49;
      (*(v47 + 8))(v46, v55);
      sub_220EF2A30(v12, type metadata accessor for WeatherMapOverlayServiceDataResponse);
      v56 = sub_220E20FF8(v52, v54, &v77);
      v25 = v68;

      v57 = v63;
      *(v63 + 1) = v56;
      v58 = v57;
      _os_log_impl(&dword_220E15000, v41, v42, "Caching radar coverage to disk, expiryDate=%{public}s", v57, 0xCu);
      v59 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      v29 = v67;
      MEMORY[0x223D9DDF0](v59, -1, -1);
      MEMORY[0x223D9DDF0](v58, -1, -1);
    }

    else
    {

      sub_220EF2A30(v12, type metadata accessor for WeatherMapOverlayServiceDataResponse);
    }

    sub_220FC0130();
    v60 = v69;
    sub_220FC0170();
    sub_220FC0130();
    sub_220FC27A0();
    sub_220FC0130();
    v61 = *(v18 + 8);
    v62 = v76;
    v61(v60, v76);
    v61(v25, v62);
    v61(v29, v62);
    v61(v33, v62);
    sub_220E565AC(v78, *(&v78 + 1));
    sub_220E565AC(v79, *(&v79 + 1));
  }
}

void sub_220EF227C()
{
  v60[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v57 - v2;
  v4 = sub_220FC0090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v57 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  sub_220F9A350(v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_220E3B2DC(v3, &qword_27CF9D288);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_220FC17A0();
    __swift_project_value_buffer(v23, qword_2812C5EB0);
    v24 = sub_220FC1780();
    v25 = sub_220FC2E10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_220E15000, v24, v25, "No cache folder available to clear radar coverage storage for", v26, 2u);
      MEMORY[0x223D9DDF0](v26, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v20, v3, v4);
    sub_220FC0060();
    sub_220FC0060();
    v58 = v8;
    sub_220FC0060();
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v59 = v12;
    v27 = sub_220FC17A0();
    __swift_project_value_buffer(v27, qword_2812C5EB0);
    v28 = sub_220FC1780();
    v29 = sub_220FC2E30();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_220E15000, v28, v29, "Clearing radar coverage storage...", v30, 2u);
      MEMORY[0x223D9DDF0](v30, -1, -1);
    }

    v31 = [v21 defaultManager];
    v57 = v16;
    v32 = sub_220FC0050();
    v60[0] = 0;
    v33 = [v31 removeItemAtURL:v32 error:v60];

    v34 = v60[0];
    if (v33 && (v35 = v60[0], v36 = [v21 defaultManager], v37 = sub_220FC0050(), v60[0] = 0, v38 = objc_msgSend(v36, sel_removeItemAtURL_error_, v37, v60), v36, v37, v34 = v60[0], v38))
    {
      v39 = v60[0];
      v40 = [v21 defaultManager];
      v41 = v58;
      v42 = sub_220FC0050();
      v60[0] = 0;
      v43 = [v40 removeItemAtURL:v42 error:v60];

      if (v43)
      {
        v44 = *(v5 + 8);
        v45 = v60[0];
        v44(v41, v4);
        v44(v59, v4);
        v44(v57, v4);
        v44(v20, v4);
        return;
      }

      v46 = v60[0];
    }

    else
    {
      v46 = v34;
    }

    v47 = sub_220FBFFE0();

    swift_willThrow();
    v48 = v47;
    v49 = sub_220FC1780();
    v50 = sub_220FC2E10();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60[0] = v52;
      *v51 = 136446210;
      swift_getErrorValue();
      v53 = sub_220FC39D0();
      v55 = sub_220E20FF8(v53, v54, v60);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_220E15000, v49, v50, "Error while clearing metadata storage, error=%{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x223D9DDF0](v52, -1, -1);
      MEMORY[0x223D9DDF0](v51, -1, -1);
    }

    v56 = *(v5 + 8);
    v56(v58, v4);
    v56(v59, v4);
    v56(v57, v4);
    v56(v20, v4);
  }
}

uint64_t sub_220EF296C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220EF29CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220EF2A30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_220EF2A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = OUTLINED_FUNCTION_1_43();
  v8(v7);
  v9 = __swift_project_boxed_opaque_existential_1(v56, v57);
  v53 = OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_device;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_device) = *(*v9 + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v56);
  OUTLINED_FUNCTION_9_13();
  v10 = OUTLINED_FUNCTION_1_43();
  v11(v10);
  __swift_project_boxed_opaque_existential_1(v56, v57);
  swift_unknownObjectRetain();
  v12 = sub_220FC26C0();
  v13 = OUTLINED_FUNCTION_7_15();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v56);
  OUTLINED_FUNCTION_9_13();
  v14 = OUTLINED_FUNCTION_1_43();
  v15(v14);
  __swift_project_boxed_opaque_existential_1(v56, v57);
  swift_unknownObjectRetain();
  v16 = sub_220FC26C0();
  v17 = OUTLINED_FUNCTION_7_15();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v56);
  OUTLINED_FUNCTION_9_13();
  v18 = OUTLINED_FUNCTION_1_43();
  v19(v18);
  __swift_project_boxed_opaque_existential_1(v56, v57);
  swift_unknownObjectRetain();
  v20 = sub_220FC26C0();
  v54 = OUTLINED_FUNCTION_7_15();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v56);
  v21 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD000000000000011, 0x8000000220FE1670, v21);
  [v21 setVertexFunction_];
  [v21 setFragmentFunction_];
  v22 = [v21 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v23 setPixelFormat_];

  v24 = a1[3];
  v25 = a1[4];
  OUTLINED_FUNCTION_9_13();
  if ((*(v25 + 48))(v24, v25))
  {
    v26 = [v21 colorAttachments];
    v27 = [v26 objectAtIndexedSubscript_];

    if (!v27)
    {
      __break(1u);
      return;
    }

    [v27 setPixelFormat_];
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD000000000000017, 0x8000000220FE1690, v28);
  [v28 setVertexFunction_];
  [v28 setFragmentFunction_];
  v29 = [v28 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_20:
    __break(1u);
  }

  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  [v30 setPixelFormat_];

  v33 = *(v5 + v53);
  v56[0] = 0;
  v34 = [v33 newRenderPipelineStateWithDescriptor:v21 error:v56];
  v35 = v56[0];
  v49 = v34;
  if (v34 && (*(v5 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_mixPipelineState) = v34, v36 = *(v5 + v53), v56[0] = 0, v37 = v35, v38 = [v36 newRenderPipelineStateWithDescriptor:v28 error:v56], v35 = v56[0], v38))
  {
    *(v5 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_intensityPipelineState) = v38;
    v39 = a1[3];
    v40 = a1[4];
    OUTLINED_FUNCTION_9_13();
    v47 = v5;
    v41 = *(v40 + 32);
    v42 = v35;
    v41(v56, v39, v40);
    v43 = sub_220EF31D8(v56);
    if (!v48)
    {
      v46 = v43;
      sub_220E3B2DC(v56, &qword_27CF9F3B0);
      *(v47 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_colorMap) = v46;
      sub_220E1E30C(a1, v56);
      sub_220E1E30C(a2, v55);
      sub_220F5AA64(v56, v55, a3, a4);
      __swift_destroy_boxed_opaque_existential_0(a2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(a1);
      return;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_220E3FCD0(a4);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(a2);
    sub_220E3B2DC(v56, &qword_27CF9F3B0);
    v44 = 1;
  }

  else
  {
    v45 = v35;
    sub_220E3FCD0(a4);
    sub_220FBFFE0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(a2);
    v44 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  swift_unknownObjectRelease();
  if (v49)
  {
    swift_unknownObjectRelease();
  }

  if (v44)
  {
    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
}

uint64_t sub_220EF31D8(uint64_t a1)
{
  sub_220ED6038(a1, &v4, &qword_27CF9F3B0);
  if (v5[24] == 255)
  {
    sub_220E3B2DC(&v4, &qword_27CF9F3B0);
    sub_220EF5140();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  else
  {
    v6 = v4;
    v7[0] = *v5;
    *(v7 + 9) = *&v5[9];
    sub_220EF5194(&v6, &v4);
    if (v5[24] == 1)
    {
      sub_220E3FF0C(&v6);
      return v4;
    }

    else
    {
      sub_220E3FF0C(&v4);
      sub_220EF5140();
      swift_allocError();
      *v3 = 1;
      swift_willThrow();
      return sub_220E3FF0C(&v6);
    }
  }
}

void sub_220EF32E8()
{
  OUTLINED_FUNCTION_13_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v43[5] = *MEMORY[0x277D85DE8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v37 - v16;
  v18 = v12[2];
  if (v18)
  {
    swift_unknownObjectRetain();
    v19 = sub_220EF3714();
    if (!v19)
    {
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    sub_220EF37F4(v2, v19);
    if (v20)
    {
      v38 = v20;
      v21 = [v18 renderCommandEncoderWithDescriptor_];
      if (v21)
      {
        v22 = v21;
        [v21 setRenderPipelineState_];
        v41 = v6;
        v40[0] = sub_220F87FCC(512);
        v40[1] = v23;
        v39 = v4 & 1;
        v24 = OUTLINED_FUNCTION_10_12();
        [v24 v25];
        v26 = OUTLINED_FUNCTION_10_12();
        [v26 v27];
        [v22 setFragmentBytes:&v41 length:4 atIndex:0];
        [v22 setFragmentBytes:v40 length:16 atIndex:3];
        [v22 setFragmentBytes:&v39 length:1 atIndex:5];
        v28 = v12[6];
        v29 = v12[7];
        __swift_project_boxed_opaque_existential_1(v12 + 3, v28);
        (*(v29 + 8))(v43, v28, v29);
        __swift_project_boxed_opaque_existential_1(v43, v43[3]);
        v42[3] = &type metadata for MainOverlayRenderContext.Primitives;
        v42[4] = &off_283481C90;
        v42[0] = swift_allocObject();
        OUTLINED_FUNCTION_4_27(v42[0]);
        v30 = *__swift_project_boxed_opaque_existential_1(v42, &type metadata for MainOverlayRenderContext.Primitives);
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_8_18([v22 setVertexBuffer:v30 offset:0 atIndex:0], sel_drawPrimitives_vertexStart_vertexCount_instanceCount_);
        __swift_destroy_boxed_opaque_existential_0(v42);
        __swift_destroy_boxed_opaque_existential_0(v43);
        [v22 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_15;
      }
    }

    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39();
    }

    v31 = __swift_project_value_buffer(v13, qword_27CF9CBE0);
    sub_220ED6038(v31, v17, &qword_27CF9CF70);
    v32 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v17, 1, v32) == 1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_220E3B2DC(v17, &qword_27CF9CF70);
    }

    else
    {
      v33 = sub_220FC1780();
      v34 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_21_0(v34))
      {
        v35 = OUTLINED_FUNCTION_20_0();
        *v35 = 0;
        _os_log_impl(&dword_220E15000, v33, v34, "[Wind] could not create intensity encoder", v35, 2u);
        OUTLINED_FUNCTION_15();
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_12();
      (*(v36 + 8))(v17, v32);
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_14();
}

id sub_220EF3714()
{
  result = [objc_opt_self() texture2DDescriptorWithPixelFormat:30 width:512 height:512 mipmapped:1];
  v2 = result;
  if (qword_27CF9C0D0 != -1)
  {
    result = swift_once();
  }

  if (__OFADD__(qword_27CFAF530, 1))
  {
    __break(1u);
  }

  else
  {
    [v2 setMipmapLevelCount_];
    [v2 setUsage_];
    v3 = [*(v0 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_device) newTextureWithDescriptor_];

    return v3;
  }

  return result;
}

void sub_220EF37F4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v5 = [v4 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v6 setTexture_];

  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v8 setLoadAction_];

  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v10 setStoreAction_];

  if (!a1)
  {
    return;
  }

  v11 = [v4 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
    goto LABEL_13;
  }

  [v12 setTexture_];

  v13 = [v4 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v14 setLoadAction_];

  v15 = [v4 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v16 setStoreAction_];
}

uint64_t sub_220EF3A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - v7;
  if (*(a1 + 16))
  {
    v9 = [swift_unknownObjectRetain() blitCommandEncoder];
    if (v9)
    {
      v10 = v9;
      [v9 generateMipmapsForTexture_];
      [v10 endEncoding];
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v12 = __swift_project_value_buffer(v4, qword_27CF9CBE0);
  sub_220ED6038(v12, v8, &qword_27CF9CF70);
  v13 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    return sub_220E3B2DC(v8, &qword_27CF9CF70);
  }

  v14 = sub_220FC1780();
  v15 = sub_220FC2E30();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_20_0();
    *v16 = 0;
    _os_log_impl(&dword_220E15000, v14, v15, "[Wind] could not create mipmap encoder", v16, 2u);
    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_12();
  return (*(v17 + 8))(v8, v13);
}

uint64_t sub_220EF3C68(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v39 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - v13;
  v15 = a1[6];
  v16 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v15);
  OUTLINED_FUNCTION_11_9();
  v17(v15, v16);
  v18 = __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_220F745D0(*v18, 0, a4, a5 & 1);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(v41);
  if (a1[2])
  {
    v21 = [swift_unknownObjectRetain() renderCommandEncoderWithDescriptor_];
    if (v21)
    {
      v22 = v21;
      [v21 setRenderPipelineState_];
      v23 = OUTLINED_FUNCTION_10_12();
      [v23 v24];
      v25 = OUTLINED_FUNCTION_10_12();
      [v25 v26];
      v27 = a1[6];
      v28 = a1[7];
      __swift_project_boxed_opaque_existential_1(a1 + 3, v27);
      OUTLINED_FUNCTION_11_9();
      v29(v27, v28);
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v40[3] = &type metadata for MainOverlayRenderContext.Primitives;
      v40[4] = &off_283481C90;
      v40[0] = swift_allocObject();
      OUTLINED_FUNCTION_4_27(v40[0]);
      v30 = *__swift_project_boxed_opaque_existential_1(v40, &type metadata for MainOverlayRenderContext.Primitives);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_8_18([v22 setVertexBuffer:v30 offset:0 atIndex:0], sel_drawPrimitives_vertexStart_vertexCount_instanceCount_);
      __swift_destroy_boxed_opaque_existential_0(v40);
      __swift_destroy_boxed_opaque_existential_0(v41);
      [v22 endEncoding];

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v32 = __swift_project_value_buffer(v10, qword_27CF9CBE0);
  sub_220ED6038(v32, v14, &qword_27CF9CF70);
  v33 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v14, 1, v33) == 1)
  {

    return sub_220E3B2DC(v14, &qword_27CF9CF70);
  }

  else
  {
    v34 = sub_220FC1780();
    v35 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v35))
    {
      v36 = OUTLINED_FUNCTION_20_0();
      *v36 = 0;
      _os_log_impl(&dword_220E15000, v34, v35, "[Wind] could not create intensity encoder", v36, 2u);
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_12();
    return (*(v37 + 8))(v14, v33);
  }
}

void sub_220EF3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 *a31)
{
  OUTLINED_FUNCTION_13_8();
  v32 = v31;
  v95 = v33;
  v94 = v34;
  v91 = v35;
  v92 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v96 = a30;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v89 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v90 = &v89 - v55;
  v56 = *a31;
  v57 = *(a31 + 16);
  v59 = (v38 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path);
  v60 = *(v38 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 16);
  if (v60 < v40)
  {
    v61 = *v59;
    v62 = v59[1];
    v89 = *a31;
    sub_220E2F868(v48, v46, v40, v61, v62, v60);
    v56 = v89;
  }

  v101 = v56;
  LOBYTE(v102) = v57;
  sub_220F5C978();
  if (v99[257] == 255)
  {
    sub_220E3B2DC(v99, &unk_27CF9EA30);
    v63 = sub_220FC1710();
    v64 = sub_220FC3050();
    if (sub_220FC3360())
    {
      v65 = OUTLINED_FUNCTION_20_0();
      *v65 = 0;
      v66 = sub_220FC16E0();
      _os_signpost_emit_with_name_impl(&dword_220E15000, v63, v64, v66, "clearTile", "", v65, 2u);
      OUTLINED_FUNCTION_15();
    }

    goto LABEL_30;
  }

  memcpy(v100, v99, 0x102uLL);
  *&v101 = v48;
  *(&v101 + 1) = v46;
  *&v102 = v40;
  v58 = v44;
  *(&v102 + 2) = v58;
  *&v103 = a29;
  *(&v103 + 1) = v42;
  v67 = v32[5];
  v68 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v67);
  (*(v68 + 16))(v67, v68);
  sub_220F5CF88();

  if (sub_220EF4724(v99))
  {
    v69 = v42;
    v98 = v69;
    v97 = 0x3F80000000000000;
    sub_220EF51F0();
    sub_220FC2630();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_220EF32E8();
    v71 = v70;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v71)
    {
      sub_220EF3C68(a27, v71, *(v32 + OBJC_IVAR____TtC11WeatherMaps28WindIntensityOverlayRenderer_colorMap), v92, v91 & 1);
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (sub_220EDF92C(&v101))
        {
          sub_220EF3A4C(a27, v71);
          v72 = swift_allocObject();
          swift_weakInit();
          v73 = swift_allocObject();
          *(v73 + 16) = v72;
          v74 = v102;
          *(v73 + 24) = v101;
          *(v73 + 40) = v74;
          *(v73 + 56) = v103;
          *(v73 + 72) = v71;

          swift_unknownObjectRetain();
          sub_220FA339C(sub_220EF5244, v73);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_220E3FE4C(v99);
          sub_220E3FEB8(v100);

          goto LABEL_30;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_220E3FE4C(v99);
      sub_220E3FEB8(v100);
      goto LABEL_30;
    }

    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39();
    }

    v78 = __swift_project_value_buffer(v93, qword_27CF9CBE0);
    v79 = v90;
    sub_220ED6038(v78, v90, &qword_27CF9CF70);
    v80 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) == 1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_220E3FE4C(v99);
      sub_220E3FEB8(v100);
      v77 = v79;
      goto LABEL_20;
    }

    v85 = sub_220FC1780();
    v86 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v86))
    {
      v87 = OUTLINED_FUNCTION_20_0();
      *v87 = 0;
      _os_log_impl(&dword_220E15000, v85, v86, "[Wind] could not create mixTexture", v87, 2u);
      OUTLINED_FUNCTION_15();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_220E3FE4C(v99);
    sub_220E3FEB8(v100);
    OUTLINED_FUNCTION_12();
    (*(v88 + 8))(v79, v80);
  }

  else
  {
    if (qword_27CF9C000 != -1)
    {
      OUTLINED_FUNCTION_0_39();
    }

    v75 = __swift_project_value_buffer(v93, qword_27CF9CBE0);
    sub_220ED6038(v75, v52, &qword_27CF9CF70);
    v76 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v52, 1, v76) == 1)
    {
      sub_220E3FE4C(v99);
      sub_220E3FEB8(v100);
      v77 = v52;
LABEL_20:
      sub_220E3B2DC(v77, &qword_27CF9CF70);
      goto LABEL_30;
    }

    v81 = sub_220FC1780();
    v82 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v82))
    {
      v83 = OUTLINED_FUNCTION_20_0();
      *v83 = 0;
      _os_log_impl(&dword_220E15000, v81, v82, "[Wind] could not create source textures", v83, 2u);
      OUTLINED_FUNCTION_15();
    }

    sub_220E3FE4C(v99);
    sub_220E3FEB8(v100);
    OUTLINED_FUNCTION_12();
    (*(v84 + 8))(v52, v76);
  }

LABEL_30:
  OUTLINED_FUNCTION_14();
}

uint64_t sub_220EF4724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v44 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v44 - v12;
  sub_220E3FDF0(a1, &v54);
  if (v57 != 1)
  {
    if (qword_27CF9C000 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v2, qword_27CF9CBE0);
    sub_220ED6038(v23, v5, &qword_27CF9CF70);
    v24 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v24) == 1)
    {
      sub_220E3B2DC(v5, &qword_27CF9CF70);
    }

    else
    {
      v25 = sub_220FC1780();
      v26 = sub_220FC2E30();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_220E15000, v25, v26, "[Wind] invalid pipeline texture resources", v27, 2u);
        MEMORY[0x223D9DDF0](v27, -1, -1);
      }

      (*(*(v24 - 8) + 8))(v5, v24);
    }

    sub_220E3FE4C(&v54);
    return 0;
  }

  v52 = v54;
  v53[0] = v55[0];
  *(v53 + 9) = *(v55 + 9);
  v50 = v55[2];
  v51[0] = v56[0];
  *(v51 + 9) = *(v56 + 9);
  v14 = sub_220FC1710();
  v15 = sub_220FC3050();
  if (sub_220FC3360())
  {
    v16 = v9;
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v14, v15, v18, "receivedSecondaryRenderResource", "", v17, 2u);
    v19 = v17;
    v9 = v16;
    MEMORY[0x223D9DDF0](v19, -1, -1);
  }

  sub_220EF5194(&v52, &v46);
  if (v49 == 4)
  {
    v20 = vorrq_s8(v47, v48);
    if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v46))
    {
      sub_220E3FF0C(&v46);
      sub_220EF5194(&v50, &v46);
      if (v49 == 4)
      {
        v21 = vorrq_s8(v47, v48);
        if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v46))
        {
          sub_220E3FF0C(&v46);
          v40 = sub_220FC1710();
          v41 = sub_220FC3050();
          if (sub_220FC3360())
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = sub_220FC16E0();
            _os_signpost_emit_with_name_impl(&dword_220E15000, v40, v41, v43, "clearTile", "", v42, 2u);
            MEMORY[0x223D9DDF0](v42, -1, -1);
          }

          sub_220E3FF0C(&v50);
          v35 = &v52;
          goto LABEL_34;
        }
      }
    }
  }

  sub_220E3FF0C(&v46);
  sub_220EF5194(&v52, &v46);
  if (v49 == 1)
  {
    v22 = v46;
    goto LABEL_27;
  }

  if (qword_27CF9C000 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v2, qword_27CF9CBE0);
  sub_220ED6038(v28, v13, &qword_27CF9CF70);
  v29 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
  {
    sub_220E3B2DC(v13, &qword_27CF9CF70);
  }

  else
  {
    v30 = sub_220FC1780();
    v31 = sub_220FC2E30();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_220E15000, v30, v31, "[Wind] could not retreive first source texture, using second texture", v32, 2u);
      MEMORY[0x223D9DDF0](v32, -1, -1);
    }

    (*(*(v29 - 8) + 8))(v13, v29);
  }

  sub_220EF5194(&v50, v44);
  if (v45 != 1)
  {
    sub_220E3FF0C(&v50);
    sub_220E3FF0C(&v52);
    sub_220E3FF0C(v44);
    v35 = &v46;
LABEL_34:
    sub_220E3FF0C(v35);
    return 0;
  }

  v22 = v44[0];
  sub_220E3FF0C(&v46);
LABEL_27:
  sub_220EF5194(&v50, &v46);
  if (v49 == 1)
  {
    sub_220E3FF0C(&v50);
    sub_220E3FF0C(&v52);
  }

  else
  {
    if (qword_27CF9C000 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v2, qword_27CF9CBE0);
    sub_220ED6038(v33, v9, &qword_27CF9CF70);
    v34 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v34) == 1)
    {
      sub_220E3FF0C(&v50);
      sub_220E3FF0C(&v52);
      sub_220E3B2DC(v9, &qword_27CF9CF70);
    }

    else
    {
      v36 = sub_220FC1780();
      v37 = sub_220FC2E30();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_220E15000, v36, v37, "[Wind] could not retreive second source texture, using first texture", v38, 2u);
        MEMORY[0x223D9DDF0](v38, -1, -1);
      }

      sub_220E3FF0C(&v50);
      sub_220E3FF0C(&v52);
      (*(*(v34 - 8) + 8))(v9, v34);
    }

    swift_unknownObjectRetain();
    sub_220E3FF0C(&v46);
  }

  return v22;
}