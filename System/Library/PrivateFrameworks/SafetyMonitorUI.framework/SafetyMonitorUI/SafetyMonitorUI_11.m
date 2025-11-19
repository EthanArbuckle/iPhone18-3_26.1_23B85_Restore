uint64_t sub_26473727C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2647379A0;
  }

  else
  {
    v3 = sub_264737390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264737390()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_264738AF4(v1, 0);
  v3 = *(v0 + 56);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10(v3);
}

uint64_t sub_26473745C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_264737A64;
  }

  else
  {
    v3 = sub_264737570;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264737570()
{
  v63 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 216) + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = v1;
  *(v2 + 8) = 1;
  v5 = v1;
  sub_264738AF4(v3, v4);
  v6 = *(v0 + 64);
  if (v1)
  {
    v7 = *(v0 + 120);
    v8 = v5;
    sub_264783E04();
    v9 = v6;
    v10 = v8;
    v11 = sub_264783E14();
    v12 = sub_2647859F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v61;
      *v14 = 138740227;
      *(v14 + 4) = v13;
      *v15 = v13;
      *(v14 + 12) = 2080;
      v16 = v13;
      v17 = [v10 name];
      if (v17)
      {
        v18 = v17;
        v19 = sub_264785724();
        v21 = v20;
      }

      else
      {
        v21 = 0xE700000000000000;
        v19 = 0x656D616E206F6ELL;
      }

      v54 = *(v0 + 216);
      v55 = *(v0 + 208);
      v59 = *(v0 + 192);
      v60 = *(v0 + 200);
      v58 = *(v0 + 120);
      v56 = *(v0 + 152);
      v57 = *(v0 + 96);
      v45 = sub_2646DF234(v19, v21, &v62);

      *(v14 + 14) = v45;
      _os_log_impl(&dword_264605000, v11, v12, "#CachedGeocoder: storing placemark for %{sensitive}@, placemark name: %s", v14, 0x16u);
      sub_26460CD50(v15, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x266740650](v61, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);

      v59(v58, v57);
    }

    else
    {
      v34 = *(v0 + 208);
      v35 = *(v0 + 216);
      v37 = *(v0 + 192);
      v36 = *(v0 + 200);
      v38 = *(v0 + 120);
      v39 = *(v0 + 96);

      v37(v38, v39);
    }
  }

  else
  {
    v22 = *(v0 + 112);
    sub_264783E04();
    v23 = v6;
    v24 = sub_264783E14();
    v25 = sub_2647859F4();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    if (v26)
    {
      v29 = *(v0 + 152);
      v30 = *(v0 + 64);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138739971;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&dword_264605000, v24, v25, "#CachedGeocoder: found no placemark for %{sensitive}@", v31, 0xCu);
      sub_26460CD50(v32, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v32, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);
    }

    else
    {
      v40 = *(v0 + 208);

      v24 = *(v0 + 152);
    }

    v42 = *(v0 + 192);
    v41 = *(v0 + 200);
    v43 = *(v0 + 112);
    v44 = *(v0 + 96);

    v42(v43, v44);
  }

  v47 = *(v0 + 136);
  v46 = *(v0 + 144);
  v49 = *(v0 + 120);
  v48 = *(v0 + 128);
  v50 = *(v0 + 112);
  v51 = *(v0 + 88);

  v52 = *(v0 + 8);

  return v52(v1);
}

uint64_t sub_2647379A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_264738AF4(v1, 0);
  v3 = *(v0 + 184);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264737A64()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 232);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t CachedGeocoder.CacheKey.hash.getter()
{
  sub_264785FA4();
  v1 = *(v0 + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location);
  [v1 coordinate];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v2);
  [v1 coordinate];
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x26673FCA0](*&v4);
  return sub_264785F84();
}

BOOL CachedGeocoder.CacheKey.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_26460CCE8(a1, v15, &qword_27FF77FC8, &qword_26478F3A0);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location);
      [v3 coordinate];
      v5 = v4;
      v6 = OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location;
      [*&v14[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location] coordinate];
      if (v5 == v7)
      {
        [v3 coordinate];
        v9 = v8;
        v10 = *&v14[v6];
        [v10 coordinate];
        v12 = v11;

        return v9 == v12;
      }
    }
  }

  else
  {
    sub_26460CD50(v15, &qword_27FF77FC8, &qword_26478F3A0);
  }

  return 0;
}

id CachedGeocoder.GeocodeStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_264737EC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  type metadata accessor for CachedGeocoder();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27FF807E8 = result;
  return result;
}

uint64_t CachedGeocoder.__allocating_init(cache:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_264737F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v7[23] = a1;
  v8 = sub_264783E24();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26473801C, 0, 0);
}

uint64_t sub_26473801C()
{
  v2 = v0[24];
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_264738144;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BE0, &qword_2647911D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26473858C;
  v0[13] = &block_descriptor_17;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264738144()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_264738338;
  }

  else
  {
    v3 = sub_264738254;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264738254()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *(v0 + 168);
    }

    result = sub_264785C14();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v4 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26673FA30](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_11:
  v6 = *(v0 + 240);
  **(v0 + 184) = v4;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264738338()
{
  v32 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[25];
  swift_willThrow();
  sub_264783E04();
  v4 = v3;
  v5 = v2;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[31];
    v28 = v0[29];
    v29 = v0[28];
    v30 = v0[30];
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 138740227;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = v0[18];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v9;
    v17 = sub_264785EF4();
    v19 = sub_2646DF234(v17, v18, &v31);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_264605000, v6, v7, "#CachedGeocoder: encountered error reverse geocoding %{sensitive}@, error: %s", v10, 0x16u);
    sub_26460CD50(v11, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[28];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[30];
  v24 = v0[31];
  [*(v0[26] + 16) removeObjectForKey_];
  swift_willThrow();

  v25 = v0[1];
  v26 = v0[31];

  return v25();
}

uint64_t sub_26473858C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_264738C58();
    **(*(v4 + 64) + 40) = sub_2647857F4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_26473866C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26460CCE8(a3, v24 - v10, &qword_27FF76970, &qword_264789300);
  v12 = sub_2647858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26460CD50(v11, &qword_27FF76970, &qword_264789300);
  }

  else
  {
    sub_2647858D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264785874();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264785784() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26460CD50(a3, &qword_27FF76970, &qword_264789300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t CachedGeocoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2647389A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2647389FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26460F764;

  return sub_264737F54(a1, v4, v5, v6, v7, v9, v8);
}

void sub_264738AF4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_264738B00(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_264738B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264738BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_264738C58()
{
  result = qword_27FF77F50;
  if (!qword_27FF77F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF77F50);
  }

  return result;
}

void Date.roundedTime()()
{
  v0 = sub_264783A64();
  v1 = [v0 roundedTime];

  sub_264783AC4();
}

uint64_t sub_264738D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_264785BE4();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    sub_26474ED38(result, *(a1 + 36), a1, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
    sub_26465944C(v8, *(&v8 + 1));
    result = sub_264655264(v6, v7);
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t SMSessionState.badgeImageName.getter(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  v1 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v1 = 0;
  }

  if (((1 << a1) & 0x1004) != 0)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = v1;
  }

  if (((1 << a1) & 0x4380) != 0)
  {
    return 0x69662E6B636F6C63;
  }

  else
  {
    return v2;
  }
}

uint64_t SMSessionState.badgeImageColor.getter(uint64_t a1)
{
  if (a1 == 4)
  {

    return sub_264785164();
  }

  else if (a1 == 12)
  {

    return sub_264785184();
  }

  else
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }
  }
}

uint64_t sub_264738EDC()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264739004()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_26473912C()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264739250()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)(uint64_t a1, void (*a2)(char *, uint64_t (*)(void)))
{
  v3 = v2;
  v82 = a2;
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v76 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v76 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v80 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = sub_264785714();
  v22 = CUTWeakLinkSymbol();

  v81 = v22;
  if (!v22)
  {
    sub_264783DF4();
    v33 = sub_264783E14();
    v34 = sub_2647859B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83[0] = v36;
      *v35 = 136315394;
      v84 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v37 = sub_264785764();
      v39 = sub_2646DF234(v37, v38, v83);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v83);
      _os_log_impl(&dword_264605000, v33, v34, "%s, %s: IMCore framework or IMSPIGetGroupPhotosForChatsWithGroupIDsSymbol symbol not found", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v78 = a1;
  v76 = v16;
  sub_264783DF4();
  v23 = sub_264783E14();
  v24 = sub_2647859C4();
  v25 = os_log_type_enabled(v23, v24);
  v79 = v3;
  v77 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v83[0] = v27;
    *v26 = 136315394;
    v84 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, v83);

    *(v26 + 4) = v30;
    v31 = v5;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v83);
    _os_log_impl(&dword_264605000, v23, v24, "%s, %s: attempting to unsafeBitCast IMSPIGetGroupPhotosForChatsWithGroupIDs", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);

    v32 = *(v6 + 8);
  }

  else
  {

    v32 = *(v6 + 8);
    v31 = v5;
  }

  v32(v20, v31);
  v40 = v80;
  sub_264783DF4();
  v41 = v82;

  v42 = sub_264783E14();
  v43 = sub_2647859C4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v83[0] = v45;
    *v44 = 136315650;
    v84 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v46 = sub_264785764();
    v48 = v32;
    v49 = sub_2646DF234(v46, v47, v83);

    *(v44 + 4) = v49;
    v32 = v48;
    v41 = v82;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v83);
    *(v44 + 22) = 2080;
    v50 = v78;
    *(v44 + 24) = sub_2646DF234(v78, v41, v83);
    _os_log_impl(&dword_264605000, v42, v43, "%s, %s: calling IMSPIGetGroupPhotosForChatsWithGroupIDs, groupID, %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v45, -1, -1);
    MEMORY[0x266740650](v44, -1, -1);

    v32(v40, v31);
  }

  else
  {

    v32(v40, v31);
    v50 = v78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2647889E0;
  *(v51 + 32) = v50;
  *(v51 + 40) = v41;

  v52 = sub_2647857E4();

  v53 = v81(v52);

  v54 = sub_264785614();
  sub_264738D18(v54, v83);

  if (v83[1] >> 60 == 15)
  {
    v55 = v31;
    v56 = v77;
    sub_264783DF4();
    v57 = sub_264783E14();
    v58 = sub_2647859C4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v83[0] = v60;
      *v59 = 136315394;
      v84 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v61 = sub_264785764();
      v63 = sub_2646DF234(v61, v62, v83);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v83);
      _os_log_impl(&dword_264605000, v57, v58, "%s, %s: did not get groupPhoto", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v60, -1, -1);
      MEMORY[0x266740650](v59, -1, -1);
    }

    v32(v56, v55);
    return 0;
  }

  v82 = v32;
  v64 = v83[0];
  v65 = v76;
  sub_264783DF4();
  v66 = sub_264783E14();
  v67 = sub_2647859C4();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v83[0] = v69;
    *v68 = 136315394;
    v84 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v70 = sub_264785764();
    v81 = v31;
    v72 = sub_2646DF234(v70, v71, v83);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264799DC0, v83);
    _os_log_impl(&dword_264605000, v66, v67, "%s, %s: got groupPhoto", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v69, -1, -1);
    MEMORY[0x266740650](v68, -1, -1);

    v73 = v65;
    v74 = v81;
  }

  else
  {

    v73 = v65;
    v74 = v31;
  }

  v82(v73, v74);
  return v64;
}

id sub_264739D18()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v56[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v56[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79498, &qword_264791A38);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v56[-v18];
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = [result getActivePairedDeviceExcludingAltAccount];

  if (!v22)
  {
    sub_264783DF4();
    v35 = sub_264783E14();
    v36 = sub_2647859F4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64[0] = v38;
      *v37 = 136315394;
      v63[0] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v39 = sub_264785764();
      v41 = sub_2646DF234(v39, v40, v64);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v64);
      _os_log_impl(&dword_264605000, v35, v36, "%s,%s: NR activeDevice is nil", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v38, -1, -1);
      MEMORY[0x266740650](v37, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  if (![v22 valueForProperty_])
  {
    sub_264783DF4();
    v42 = sub_264783E14();
    v43 = sub_2647859F4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64[0] = v45;
      *v44 = 136315394;
      v63[0] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v46 = sub_264785764();
      v48 = sub_2646DF234(v46, v47, v64);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v64);
      _os_log_impl(&dword_264605000, v42, v43, "%s,%s: productVersionProperty is nil", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v45, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    return 0;
  }

  sub_264785BA4();
  swift_unknownObjectRelease();
  sub_264655DB8(v64, v63);
  if (!swift_dynamicCast())
  {
    sub_264783DF4();
    v49 = sub_264783E14();
    v50 = sub_2647859F4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63[0] = v52;
      *v51 = 136315394;
      v61 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v53 = sub_264785764();
      v55 = sub_2646DF234(v53, v54, v63);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v63);
      _os_log_impl(&dword_264605000, v49, v50, "%s,%s: productVersion is not a string", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v52, -1, -1);
      MEMORY[0x266740650](v51, -1, -1);
    }

    (*(v3 + 8))(v13, v2);
    __swift_destroy_boxed_opaque_existential_0(v64);
    return 0;
  }

  v59 = v2;
  v23 = v61;
  v24 = v62;
  v63[0] = v61;
  v63[1] = v62;
  v61 = 808333617;
  v62 = 0xE400000000000000;
  v25 = sub_264783B94();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  sub_264613FC4();
  v26 = sub_264785B94();
  sub_26460CD50(v19, &qword_27FF79498, &qword_264791A38);
  v60 = v26 < 2;
  sub_264783DF4();

  v27 = sub_264783E14();
  v28 = sub_2647859F4();

  if (os_log_type_enabled(v27, v28))
  {
    v57 = v26 < 2;
    v29 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63[0] = v58;
    *v29 = 136315906;
    v61 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v30 = sub_264785764();
    v32 = sub_2646DF234(v30, v31, v63);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479C8C0, v63);
    *(v29 + 22) = 2080;
    v33 = sub_2646DF234(v23, v24, v63);

    *(v29 + 24) = v33;
    *(v29 + 32) = 1024;
    *(v29 + 34) = v57;
    _os_log_impl(&dword_264605000, v27, v28, "%s,%s: productVersion,%s,supportsWorkouts,%{BOOL}d", v29, 0x26u);
    v34 = v58;
    swift_arrayDestroy();
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v29, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v15, v59);
  __swift_destroy_boxed_opaque_existential_0(v64);
  return v60;
}

double SMLocation.coordinate.getter()
{
  [v0 latitude];
  v2 = v1;
  [v0 longitude];
  return v2;
}

uint64_t Date.absoluteTimeString(_:preposition:capitalized:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_264783A64();
  v7 = [v6 absoluteTimeString:a1 preposition:a2 capitalized:a3 & 1];

  v8 = sub_264785724();
  return v8;
}

void sub_26473A67C(unint64_t a1, SEL *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_264785C14())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  sub_26474DDE4(a1);

  v12 = sub_26474EA68(v4);
  sub_26473ACCC(&v12, a2);

  v5 = v12;
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v6 = sub_264785C14();
    if (v6)
    {
LABEL_8:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26673FA30](0, v5);
      }

      else
      {
        if (!*(v5 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v5 + 32);
      }

      v8 = v7;
      [v7 *a2];

      v9 = v6 - 1;
      if (!__OFSUB__(v6, 1))
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26673FA30](v9, v5);
LABEL_17:
          v11 = v10;

          [v11 *a2];

          return;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          if (v9 < *(v5 + 16))
          {
            v10 = *(v5 + 8 * v9 + 32);
            goto LABEL_17;
          }

LABEL_25:
          __break(1u);

          __break(1u);
          return;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v6 = *(v12 + 16);
    if (v6)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_26473A828(unint64_t a1, SEL *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_264785C14())
    {
      goto LABEL_20;
    }
  }

  else if (!*(a1 + 16))
  {
LABEL_20:
    *&result = 0.0;
    return result;
  }

  sub_26474DDE4(a1);

  v17 = sub_26474EA68(v4);
  sub_26473ACCC(&v17, a2);

  v5 = v17;
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v6 = *(v17 + 16);
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v6 = sub_264785C14();
  if (!v6)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26673FA30](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a2];
  v10 = v9;

  v11 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26673FA30](v11, v5);
LABEL_17:
    v13 = v12;

    [v13 *a2];
    v15 = v14;

    *&result = (v10 + v15) * 0.5;
    return result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v11 < *(v5 + 16))
  {
    v12 = *(v5 + 8 * v11 + 32);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);

  *&result = COERCE_DOUBLE();
  __break(1u);
  return result;
}

id MKMapItem.isAddressOnly.getter()
{
  result = [v0 _geoMapItem];
  if (result)
  {
    v2 = [result _placeType];
    swift_unknownObjectRelease();
    return ((v2 < 0x12) & (0x2D000u >> v2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26473AA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  return sub_264783DB4();
}

uint64_t static SafetyMonitorUIUtilities.doneButton(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2647845C4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77328, &unk_26478CA80);
  sub_2647467A4(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = sub_264784C44();
  sub_264783F54();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77338, &qword_26478CA90) + 36);
  *v15 = a2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a2) = sub_264784C84();
  sub_264783F54();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  v25 = a3 + *(result + 36);
  *v25 = a2;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

Swift::String __swiftcall Date.preciseFormattedTime()()
{
  v0 = sub_26473C108(&selRef_preciseFormattedTime);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall Double.hourMinuteShortTimeString(precision:)(Swift::Double precision)
{
  v2 = sub_26473BD9C(&selRef_hourMinuteShortTimeIntervalFormatter, precision, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_26473ACCC(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2646F4B30(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_26474DE94(v8, a2);
  return sub_264785D44();
}

uint64_t static SafetyMonitorUIUtilities.iconFor(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 != 4)
    {
      if (v3 != 2)
      {
        goto LABEL_12;
      }

      sub_264785274();
      sub_264785174();
      swift_getKeyPath();
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
      sub_264753D24();
      sub_264784874();
      goto LABEL_10;
    }

LABEL_8:
    sub_264785274();
    sub_264785164();
    swift_getKeyPath();
    goto LABEL_9;
  }

  if (!*a1)
  {
    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
    sub_264753D24();
    sub_264784874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79360, &qword_264791258);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79368, &qword_264791260);
    sub_264753DDC();
    sub_264757288(&qword_27FF79378, &qword_27FF79368, &qword_264791260, sub_264753D24);
    sub_264784874();
    goto LABEL_11;
  }

  sub_264785274();
  sub_2647851B4();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79350, &qword_264791248);
  sub_264753D24();
  sub_264784874();
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79360, &qword_264791258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79368, &qword_264791260);
  sub_264753DDC();
  sub_264757288(&qword_27FF79378, &qword_27FF79368, &qword_264791260, sub_264753D24);
  sub_264784874();

LABEL_11:
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  sub_264753EB0(v5, *(&v5 + 1), v6, v7, v8, sub_26466D2B4, sub_264753E60);
  return sub_264753EB0(v5, *(&v5 + 1), v6, v7, v8, sub_26466D3B0, sub_2646D6D84);
}

uint64_t static Color.receiverBackgroundColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_264745BBC;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26474DD7C;
  v4[3] = &block_descriptor_18;
  v1 = _Block_copy(v4);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  sub_264785134();
  v2 = sub_2647851F4();

  return v2;
}

uint64_t static SafetyMonitorUIUtilities.initiatorLiveActivityTitle(with:addTimeMode:shortStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v5 = MEMORY[0x26673D9F0](v7, a2, a3, 0);

  return v5;
}

uint64_t static SafetyMonitorUIUtilities.initiatorLiveActivityMessage(with:addTimeMode:shortStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v5 = MEMORY[0x26673DA10](v7, a2, 0, a3, 0);

  return v5;
}

uint64_t View.roundCornerLightWhiteBackground()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79380, &unk_2647912E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v18 - v2);
  v4 = sub_2647851C4();
  KeyPath = swift_getKeyPath();
  v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E8, &unk_26478FB80) + 36);
  sub_2647854A4();
  v7 = sub_264784C34();
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F0, &unk_2647912F0) + 36)] = v7;
  *v3 = KeyPath;
  v3[1] = v4;
  v3[2] = 0x3FA999999999999ALL;
  v8 = v3 + *(v0 + 36);
  v9 = *(sub_2647842B4() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_264784674();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #15.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  sub_264785504();
  sub_264754404();
  sub_264784E94();
  return sub_26460CD50(v3, &qword_27FF79380, &unk_2647912E0);
}

void sub_26473B968(int a1, void *a2, id a3)
{
  if (a2)
  {
    v4 = [a3 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [a2 drawViewHierarchyInRect:1 afterScreenUpdates:{v7, v9, v11, v13}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_26473BA24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_26473BA70()
{
  sub_264659B70(0, &qword_27FF794B8, 0x277D86200);
  result = sub_264785B24();
  qword_27FF78BE8 = result;
  return result;
}

uint64_t CLPlacemark.id.getter()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_264785724();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x26673F4D0](v4, v6);

  v7 = 45;
  v8 = 0xE100000000000000;
  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  v9 = [v1 location];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v7 = sub_264785724();
    v8 = v12;
  }

  MEMORY[0x26673F4D0](v7, v8);

  return 0;
}

uint64_t sub_26473BC30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CLPlacemark.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t MKMapItem.id.getter()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_264785724();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x26673F4D0](v4, v6);

  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  [v1 _coordinate];
  sub_264785934();
  MEMORY[0x26673F4D0](45, 0xE100000000000000);
  [v1 _coordinate];
  sub_264785934();
  return 0;
}

uint64_t sub_26473BD64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = MKMapItem.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

Swift::String_optional __swiftcall Double.hourMinuteTimeString(precision:)(Swift::Double precision)
{
  v2 = sub_26473BD9C(&selRef_hourMinuteTimeIntervalFormatter, precision, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_26473BD9C(SEL *a1, double a2, double a3)
{
  v6 = sub_264785E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() *a1];
  (*(v7 + 104))(v10, *MEMORY[0x277D84680], v6);
  v12 = sub_26473BF14(v10, a2, a3);
  (*(v7 + 8))(v10, v6);
  v13 = [v11 stringFromTimeInterval_];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_264785724();

  return v14;
}

double sub_26473BF14(uint64_t a1, double a2, double a3)
{
  v6 = sub_264785E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 / a2;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x277D84668])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_264785924();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 * a2;
}

Swift::String __swiftcall Date.relativeTimeString()()
{
  v0 = sub_26473C108(&selRef_relativeTimeString);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26473C108(SEL *a1)
{
  v2 = sub_264783A64();
  v3 = [v2 *a1];

  v4 = sub_264785724();
  return v4;
}

unint64_t SMReceiverSessionStatus.badgeImageName.getter()
{
  v1 = [v0 sessionState];
  v2 = 0xD000000000000015;
  if (v1 != 2)
  {
    v2 = 0;
  }

  if ((v1 - 3) < 3 || v1 == 9)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return v2;
  }
}

uint64_t SMReceiverSessionStatus.badgeImageColor.getter()
{
  v1 = [v0 sessionState];
  if (v1 > 9 || ((1 << v1) & 0x238) == 0)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }
  }

  else
  {

    return sub_264785164();
  }
}

uint64_t sub_26473C2BC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78BF0 = result;
  *algn_27FF78BF8 = v7;
  return result;
}

uint64_t sub_26473C490()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78C10 = result;
  *algn_27FF78C18 = v7;
  return result;
}

uint64_t sub_26473C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_264783B94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_264785704();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a4 = result;
  *a5 = v14;
  return result;
}

uint64_t sub_26473C9F4()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CA0 = result;
  *algn_27FF78CA8 = v7;
  return result;
}

uint64_t sub_26473CBB4()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78CC0 = result;
  *algn_27FF78CC8 = v7;
  return result;
}

uint64_t sub_26473CF70()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CD0 = result;
  *algn_27FF78CD8 = v7;
  return result;
}

uint64_t sub_26473D0E4()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CE0 = result;
  *algn_27FF78CE8 = v7;
  return result;
}

uint64_t sub_26473D258()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78CF0 = result;
  *algn_27FF78CF8 = v7;
  return result;
}

uint64_t sub_26473D3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794A8, &qword_264791A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  *(inited + 32) = 1;
  if (qword_27FF75088 != -1)
  {
    swift_once();
  }

  v1 = *algn_27FF78CD8;
  *(inited + 40) = qword_27FF78CD0;
  *(inited + 48) = v1;
  *(inited + 56) = 2;
  v2 = qword_27FF75090;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_27FF78CE8;
  *(inited + 64) = qword_27FF78CE0;
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = qword_27FF75098;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_27FF78CF8;
  *(inited + 88) = qword_27FF78CF0;
  *(inited + 96) = v5;
  v6 = sub_264655B98(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794B0, &unk_264791A50);
  result = swift_arrayDestroy();
  off_27FF78D00 = v6;
  return result;
}

uint64_t static SafetyMonitorUIConstants.destinationTypeMapToLocalizedString.getter()
{
  if (qword_27FF750A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26473D5C8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78D08 = result;
  unk_27FF78D10 = v7;
  return result;
}

uint64_t sub_26473D76C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D18 = result;
  unk_27FF78D20 = v7;
  return result;
}

uint64_t sub_26473D8E8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D28 = result;
  unk_27FF78D30 = v7;
  return result;
}

uint64_t sub_26473DA64()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D38 = result;
  unk_27FF78D40 = v7;
  return result;
}

uint64_t sub_26473DBE0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D48 = result;
  unk_27FF78D50 = v7;
  return result;
}

uint64_t sub_26473DD5C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D58 = result;
  unk_27FF78D60 = v7;
  return result;
}

uint64_t sub_26473DED8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D68 = result;
  unk_27FF78D70 = v7;
  return result;
}

uint64_t sub_26473E08C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D88 = result;
  unk_27FF78D90 = v7;
  return result;
}

uint64_t sub_26473E208()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78D98 = result;
  unk_27FF78DA0 = v7;
  return result;
}

uint64_t sub_26473E384()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DA8 = result;
  unk_27FF78DB0 = v7;
  return result;
}

uint64_t sub_26473E500()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DB8 = result;
  unk_27FF78DC0 = v7;
  return result;
}

uint64_t sub_26473E68C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  *a2 = result;
  *a3 = v12;
  return result;
}

uint64_t sub_26473E814()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DD8 = result;
  unk_27FF78DE0 = v7;
  return result;
}

uint64_t sub_26473E990()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DE8 = result;
  unk_27FF78DF0 = v7;
  return result;
}

uint64_t sub_26473EB0C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78DF8 = result;
  unk_27FF78E00 = v7;
  return result;
}

uint64_t sub_26473EC88()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E08 = result;
  unk_27FF78E10 = v7;
  return result;
}

uint64_t sub_26473EE3C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E28 = result;
  unk_27FF78E30 = v7;
  return result;
}

uint64_t sub_26473EFB8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E38 = result;
  unk_27FF78E40 = v7;
  return result;
}

uint64_t sub_26473F134()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E48 = result;
  unk_27FF78E50 = v7;
  return result;
}

uint64_t sub_26473F2B0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E58 = result;
  unk_27FF78E60 = v7;
  return result;
}

uint64_t sub_26473F478()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E78 = result;
  unk_27FF78E80 = v7;
  return result;
}

uint64_t sub_26473F63C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78E98 = result;
  unk_27FF78EA0 = v7;
  return result;
}

uint64_t sub_26473F7B8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78EA8 = result;
  unk_27FF78EB0 = v7;
  return result;
}

uint64_t sub_26473F978()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF78EC8 = result;
  unk_27FF78ED0 = v7;
  return result;
}

uint64_t sub_26473FBE0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F08 = result;
  unk_27FF78F10 = v7;
  return result;
}

uint64_t sub_26473FD60()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F18 = result;
  unk_27FF78F20 = v7;
  return result;
}

uint64_t sub_26473FEE0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F28 = result;
  unk_27FF78F30 = v7;
  return result;
}

uint64_t sub_264740060()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F38 = result;
  unk_27FF78F40 = v7;
  return result;
}

uint64_t sub_2647401DC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F48 = result;
  unk_27FF78F50 = v7;
  return result;
}

uint64_t sub_264740358()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F58 = result;
  unk_27FF78F60 = v7;
  return result;
}

uint64_t sub_2647405BC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78F98 = result;
  unk_27FF78FA0 = v7;
  return result;
}

uint64_t sub_264740738()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FA8 = result;
  unk_27FF78FB0 = v7;
  return result;
}

uint64_t sub_26474090C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FC8 = result;
  unk_27FF78FD0 = v7;
  return result;
}

uint64_t sub_264740A88()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FD8 = result;
  unk_27FF78FE0 = v7;
  return result;
}

uint64_t sub_264740C04()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FE8 = result;
  unk_27FF78FF0 = v7;
  return result;
}

uint64_t sub_264740D80()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF78FF8 = result;
  unk_27FF79000 = v7;
  return result;
}

uint64_t sub_264740EFC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79008 = result;
  unk_27FF79010 = v7;
  return result;
}

uint64_t sub_264741150()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79048 = result;
  unk_27FF79050 = v7;
  return result;
}

uint64_t sub_264741320()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79068 = result;
  unk_27FF79070 = v7;
  return result;
}

uint64_t sub_2647414EC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79088 = result;
  unk_27FF79090 = v7;
  return result;
}

uint64_t sub_2647416AC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790A8 = result;
  unk_27FF790B0 = v7;
  return result;
}

uint64_t sub_264741828()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790B8 = result;
  unk_27FF790C0 = v7;
  return result;
}

uint64_t sub_2647419B0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF790C8 = result;
  unk_27FF790D0 = v7;
  return result;
}

uint64_t sub_264741B54()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790D8 = result;
  unk_27FF790E0 = v7;
  return result;
}

uint64_t sub_264741CDC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF790E8 = result;
  unk_27FF790F0 = v7;
  return result;
}

uint64_t sub_264741E74()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF790F8 = result;
  unk_27FF79100 = v7;
  return result;
}

uint64_t sub_264741FF4()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF79108 = result;
  unk_27FF79110 = v7;
  return result;
}

uint64_t sub_264742190()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79118 = result;
  unk_27FF79120 = v7;
  return result;
}

uint64_t sub_26474230C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79128 = result;
  unk_27FF79130 = v7;
  return result;
}

uint64_t sub_264742488()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79138 = result;
  unk_27FF79140 = v7;
  return result;
}

uint64_t sub_26474275C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79188 = result;
  unk_27FF79190 = v7;
  return result;
}

uint64_t sub_264742AC8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v11 = [objc_opt_self() hourMinuteTimeIntervalFormatter];
  (*(v5 + 104))(v8, *MEMORY[0x277D84680], v4);
  v12 = sub_26473BF14(v8, 60.0, 28800.0);
  (*(v5 + 8))(v8, v4);
  v13 = [v11 stringFromTimeInterval_];

  if (v13)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791A8 = result;
  unk_27FF791B0 = v17;
  return result;
}

uint64_t sub_264742E20()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785E64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v11 = [objc_opt_self() hourMinuteTimeIntervalFormatter];
  (*(v5 + 104))(v8, *MEMORY[0x277D84680], v4);
  v12 = sub_26473BF14(v8, 60.0, 28800.0);
  (*(v5 + 8))(v8, v4);
  v13 = [v11 stringFromTimeInterval_];

  if (v13)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791B8 = result;
  unk_27FF791C0 = v17;
  return result;
}

uint64_t sub_264743174()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791C8 = result;
  unk_27FF791D0 = v7;
  return result;
}

uint64_t sub_264743398()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF791E8 = result;
  unk_27FF791F0 = v7;
  return result;
}

uint64_t sub_26474356C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79208 = result;
  unk_27FF79210 = v7;
  return result;
}

uint64_t sub_2647436EC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79218 = result;
  unk_27FF79220 = v7;
  return result;
}

uint64_t sub_26474386C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79228 = result;
  unk_27FF79230 = v7;
  return result;
}

uint64_t sub_264743A08()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79238 = result;
  unk_27FF79240 = v7;
  return result;
}

uint64_t sub_264743B88()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79248 = result;
  unk_27FF79250 = v7;
  return result;
}

uint64_t sub_264743CFC()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79258 = result;
  unk_27FF79260 = v7;
  return result;
}

uint64_t sub_264743E78()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79268 = result;
  unk_27FF79270 = v7;
  return result;
}

uint64_t sub_264743FF0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79278 = result;
  unk_27FF79280 = v7;
  return result;
}

uint64_t sub_264744160()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF79288 = result;
  unk_27FF79290 = v7;
  return result;
}

uint64_t sub_2647442F8()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF79298 = result;
  unk_27FF792A0 = v7;
  return result;
}

uint64_t sub_26474446C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785744();
  qword_27FF792A8 = result;
  unk_27FF792B0 = v7;
  return result;
}

uint64_t sub_264744610()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF792B8 = result;
  unk_27FF792C0 = v7;
  return result;
}

uint64_t sub_264744790()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  result = sub_264785754();
  qword_27FF792C8 = result;
  unk_27FF792D0 = v7;
  return result;
}

uint64_t sub_2647449B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_264785F44();
  MEMORY[0x26673FC80](v3);
  result = sub_264785F94();
  *a1 = result;
  return result;
}

SafetyMonitorUI::MapAnnotationType_optional __swiftcall MapAnnotationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapAnnotationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x74616E6974736564;
  v3 = 0x6563655274736F6DLL;
  v4 = 0x6574756F726E65;
  if (v1 != 4)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6C6E557473616CLL;
  if (v1 != 1)
  {
    v5 = 0x636F4C7472617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264744B54()
{
  *v0;
  *v0;
  *v0;
  sub_264785794();
}

void sub_264744C78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x74616E6974736564;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x6563655274736F6DLL;
  v7 = 0x6574756F726E65;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6F6C6E557473616CLL;
  v9 = 0xEA00000000006B63;
  if (v2 != 1)
  {
    v8 = 0x636F4C7472617473;
    v9 = 0xED00006E6F697461;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_264744D68()
{
  v1 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264757764(v0, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v18 = (*(*(v17 - 8) + 48))(v16, 3, v17);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    return MEMORY[0x26673FC80](v19);
  }

  if (v18)
  {
    v19 = 0;
    return MEMORY[0x26673FC80](v19);
  }

  sub_26460E7E4(v16, v12, &qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x26673FC80](2);
  sub_2647577C8(v12, v10);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_264785F64();
  }

  else
  {
    sub_2646F5518(v10, v5);
    sub_264785F64();
    sub_2646E9AF0();
    sub_264757838(v5, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  return sub_26460CD50(v12, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26474500C()
{
  sub_264785F44();
  sub_264744D68();
  return sub_264785F94();
}

uint64_t sub_264745050()
{
  sub_264785F44();
  sub_264744D68();
  return sub_264785F94();
}

uint64_t static Color.transcriptBackgroundColor.getter()
{
  v0 = sub_264785154();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  sub_264785224();
  v4 = sub_2647851F4();

  return v4;
}

uint64_t sub_264745194()
{
  sub_2647851D4();
  v0 = sub_2647851F4();

  qword_27FF792D8 = v0;
  return result;
}

uint64_t sub_2647451FC()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792E0 = result;
  return result;
}

uint64_t sub_264745294()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792E8 = result;
  return result;
}

uint64_t sub_264745354()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3[4] = sub_264745DC4;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26474DD7C;
  v3[3] = &block_descriptor_152_0;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  result = sub_264785134();
  qword_27FF792F0 = result;
  return result;
}

uint64_t sub_264745468()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792F8 = result;
  return result;
}

uint64_t sub_264745528()
{
  if (qword_27FF753E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27FF79330;
  result = sub_264785134();
  qword_27FF79300 = result;
  return result;
}

uint64_t sub_2647455A8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_264745B0C;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26474DD7C;
  v4[3] = &block_descriptor_149_0;
  v1 = _Block_copy(v4);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  sub_264785134();
  v2 = sub_2647851F4();

  qword_27FF79308 = v2;
  return result;
}

uint64_t sub_2647456DC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

id sub_26474575C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v8[4] = a1;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26474DD7C;
  v8[3] = a2;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id sub_264745818()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.121568627 green:0.105882353 blue:0.0392156863 alpha:1.0];
  qword_27FF79310 = result;
  return result;
}

id sub_26474586C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.980392157 green:0.964705882 blue:0.858823529 alpha:1.0];
  qword_27FF79318 = result;
  return result;
}

id sub_2647458BC()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_27FF79320 = result;
  return result;
}

id sub_264745900()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.321568627 green:0.145098039 blue:0.0 alpha:1.0];
  qword_27FF79328 = result;
  return result;
}

id sub_26474594C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.321568627 green:0.145098039 blue:0.0 alpha:1.0];
  qword_27FF79330 = result;
  return result;
}

void sub_2647459BC()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27FF79338 = v1;
}

id sub_264745A4C()
{
  result = [objc_opt_self() clearColor];
  qword_27FF79340 = result;
  return result;
}

id sub_264745AAC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_264745B0C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    if (qword_27FF753C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79310;
  }

  else
  {
    if (qword_27FF753D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79318;
  }

  v2 = *v1;

  return v2;
}

Class sub_264745BBC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemFillColor];
  v4 = [v3 resolvedColorWithTraitCollection_];

  v5 = [v2 systemBackgroundColor];
  v6 = [v5 resolvedColorWithTraitCollection_];

  isa = UIColor.blending(with:)(v4).super.isa;
  return isa;
}

UIColor __swiftcall UIColor.blending(with:)(UIColor with)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = 0.0;
  v12[0] = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [v1 getRed:v12 green:&v11 blue:&v10 alpha:&v9];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  [(objc_class *)with.super.isa getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  result.super.isa = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v8 * v5 + v12[0] * v9 * (1.0 - v5) green:v5 * v7 + (1.0 - v5) * (v9 * v11) blue:v5 * v6 + (1.0 - v5) * (v9 * v10) alpha:v5 + v9 * (1.0 - v5)];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_264745DC4(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    if (qword_27FF753D8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79320;
  }

  else
  {
    if (qword_27FF753E0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79328;
  }

  v2 = *v1;

  return v2;
}

uint64_t static SafetyMonitorUIUtilities.batteryIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_2647851E4();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.connectivityIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_264785144();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.locationIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_2647851B4();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_2647467A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_264611394(a1);
  sub_264785334();
  v15 = v7[2];
  v15(v11, v13, v6);
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77330, &qword_264791A60);
  v15((a3 + *(v16 + 48)), v11, v6);
  v17 = v7[1];
  v17(v13, v6);
  return (v17)(v11, v6);
}

uint64_t (*sub_264746980(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_2647469B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF75180 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  v7 = sub_264784E14();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26460ECC4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.receiverDetailTitleText(for:displayName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v78 = a3;
  v79 = sub_264783E24();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v76 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v76 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v76 - v17;
  v19 = sub_264783B94();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_264785704();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_2647856E4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  if (!a1)
  {
    sub_264783DE4();
    v33 = sub_264783E14();
    v34 = sub_2647859D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v6;
      v38 = swift_slowAlloc();
      v80[0] = v38;
      *v35 = 136315650;
      v81 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v39 = sub_264785764();
      v41 = sub_2646DF234(v39, v40, v80);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v80);
      *(v35 + 22) = 2112;
      *(v35 + 24) = 0;
      *v36 = 0;
      _os_log_impl(&dword_264605000, v33, v34, "%s,%s: Invalid Session Status, %@", v35, 0x20u);
      sub_26460CD50(v36, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v36, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v38, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);

      (*(v37 + 8))(v10, v79);
    }

    else
    {

      (*(v6 + 8))(v10, v79);
    }

    return 0;
  }

  v76[0] = v6;
  v76[1] = v22;
  v27 = [a1 sessionType];
  v28 = [a1 sessionState];
  v29 = [a1 triggerType];
  v30 = [a1 isSOSTrigger];
  if ((v28 - 3) >= 3 && v28 != 9)
  {
    if (v28 == 2)
    {
      if (v27 != 4 && v27 != 2 && v27 != 1)
      {
        sub_264783DE4();
        v63 = sub_264783E14();
        v64 = sub_2647859D4();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v80[0] = v66;
          *v65 = 136315650;
          v81 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v67 = sub_264785764();
          v69 = sub_2646DF234(v67, v68, v80);

          *(v65 + 4) = v69;
          *(v65 + 12) = 2080;
          *(v65 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v80);
          *(v65 + 22) = 2080;
          v70 = [objc_opt_self() sessionTypeToString_];
          v71 = sub_264785724();
          v73 = v72;

          v74 = sub_2646DF234(v71, v73, v80);

          *(v65 + 24) = v74;
          _os_log_impl(&dword_264605000, v63, v64, "%s,%s: Unknown session type, %s", v65, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v66, -1, -1);
          MEMORY[0x266740650](v65, -1, -1);
        }

        (*(v76[0] + 8))(v18, v79);
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();
        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v32 = [objc_opt_self() bundleForClass_];
        goto LABEL_34;
      }

      goto LABEL_8;
    }

    sub_264783DE4();
    v43 = sub_264783E14();
    v44 = sub_2647859D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v80[0] = v46;
      *v45 = 136315650;
      v81 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v47 = sub_264785764();
      v49 = sub_2646DF234(v47, v48, v80);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v80);
      *(v45 + 22) = 2048;
      *(v45 + 24) = v28;
      _os_log_impl(&dword_264605000, v43, v44, "%s,%s: Unknown session state, %ld", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v45, -1, -1);
    }

    (*(v76[0] + 8))(v13, v79);
    return 0;
  }

  if ((v29 - 10) <= 4 || v30)
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v42 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    goto LABEL_34;
  }

  if (v27 == 4 || v27 == 2 || v27 == 1)
  {
LABEL_8:
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v31 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
LABEL_34:
    v32;
    sub_264783B84();
    return sub_264785754();
  }

  sub_264783DE4();
  v51 = sub_264783E14();
  v52 = sub_2647859D4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v80[0] = v54;
    *v53 = 136315650;
    v81 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v55 = sub_264785764();
    v57 = sub_2646DF234(v55, v56, v80);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v80);
    *(v53 + 22) = 2080;
    v58 = [objc_opt_self() sessionTypeToString_];
    v59 = sub_264785724();
    v61 = v60;

    v62 = sub_2646DF234(v59, v61, v80);

    *(v53 + 24) = v62;
    _os_log_impl(&dword_264605000, v51, v52, "%s,%s: Unknown session type, %s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v54, -1, -1);
    MEMORY[0x266740650](v53, -1, -1);
  }

  (*(v76[0] + 8))(v16, v79);
  v80[0] = v77;
  v80[1] = v78;

  MEMORY[0x26673F4D0](0x636F4C20739980E2, 0xAD00006E6F697461);
  return v80[0];
}

uint64_t static SafetyMonitorUIUtilities.receiverDetailBodyText(for:displayName:isMainSourceWatch:)(void *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v83 = a2;
  v4 = sub_2647856E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v78 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  v20 = sub_264783B94();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_264785704();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v79 = v7;
    v80 = v6;
    v81 = v27;
    v82 = v23;
    v28 = [a1 sessionType];
    v29 = [a1 sessionState];
    v30 = [a1 triggerType];
    v31 = [a1 isSOSTrigger];
    if ((v29 - 3) >= 3 && v29 != 9)
    {
      if (v29 == 2)
      {
        if (v28 == 4 || v28 == 2 || v28 == 1)
        {
          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v61 = [objc_opt_self() bundleForClass_];
          goto LABEL_33;
        }

        sub_264783DE4();
        v64 = sub_264783E14();
        v65 = sub_2647859D4();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 136315650;
          v86 = v85;
          v87 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v68 = sub_264785764();
          v70 = sub_2646DF234(v68, v69, &v87);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          *(v66 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v87);
          *(v66 + 22) = 2080;
          v71 = [objc_opt_self() sessionTypeToString_];
          v72 = sub_264785724();
          v74 = v73;

          v75 = sub_2646DF234(v72, v74, &v87);

          *(v66 + 24) = v75;
          _os_log_impl(&dword_264605000, v64, v65, "%s,%s: Unknown session type, %s", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v67, -1, -1);
          MEMORY[0x266740650](v66, -1, -1);
        }

        (*(v79 + 8))(v19, v80);
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();
        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v76 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        return sub_264785754();
      }

      sub_264783DE4();
      v43 = sub_264783E14();
      v44 = sub_2647859D4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 136315650;
        v86 = v85;
        v87 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
        v47 = sub_264785764();
        v49 = sub_2646DF234(v47, v48, &v87);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v87);
        *(v45 + 22) = 2048;
        *(v45 + 24) = v29;
        _os_log_impl(&dword_264605000, v43, v44, "%s,%s: Unknown session state, %ld", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v46, -1, -1);
        MEMORY[0x266740650](v45, -1, -1);
      }

      (*(v79 + 8))(v14, v80);
      return 0;
    }

    result = 0;
    if (v30 <= 11)
    {
      if (v30 == 10)
      {
        return result;
      }

      if (v30 != 11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v30 == 12)
      {
        return result;
      }

      if (v30 != 13)
      {
        if (v30 == 14)
        {
          return result;
        }

LABEL_24:
        v52 = v80;
        if (!v31)
        {
          if (v28 == 2)
          {
            sub_2647856D4();
            sub_2647856C4();
            sub_2647856B4();
            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v60 = swift_getObjCClassFromMetadata();
            v61 = [objc_opt_self() bundleForClass_];
LABEL_33:
            v63 = v61;
            sub_264783B84();
            return sub_264785754();
          }

          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();
          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v77 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_264783B84();
          return sub_264785754();
        }

        sub_264783DE4();
        v53 = sub_264783E14();
        v54 = sub_2647859D4();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 136315650;
          v86 = v85;
          v87 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v57 = sub_264785764();
          v59 = sub_2646DF234(v57, v58, &v87);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v87);
          *(v55 + 22) = 2048;
          *(v55 + 24) = v30;
          _os_log_impl(&dword_264605000, v53, v54, "%s,%s: Unknown SOS trigger type, %lu", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v56, -1, -1);
          MEMORY[0x266740650](v55, -1, -1);
        }

        (*(v79 + 8))(v17, v52);
        return 0;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v50 = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  sub_264783DE4();
  v33 = sub_264783E14();
  v34 = sub_2647859D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v7;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v36 = 136315650;
    v86 = v85;
    v87 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v39 = sub_264785764();
    v41 = v6;
    v42 = sub_2646DF234(v39, v40, &v87);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v87);
    *(v36 + 22) = 2112;
    *(v36 + 24) = 0;
    *v37 = 0;
    _os_log_impl(&dword_264605000, v33, v34, "%s,%s: Invalid Session Status, %@", v36, 0x20u);
    sub_26460CD50(v37, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v38, -1, -1);
    MEMORY[0x266740650](v36, -1, -1);

    (*(v35 + 8))(v11, v41);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.receiverCacheDetailTitleText(for:displayName:)(uint64_t a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = sub_264783B94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_264785704();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(*(sub_2647856E4() - 8) + 64);
  v15 = MEMORY[0x28223BE20](a1);
  if (v15)
  {
    v16 = [v15 sessionType];
    if (v16 == 4 || v16 == 2 || v16 == 1)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785754();
    }

    sub_264783DE4();
    v23 = sub_264783E14();
    v24 = sub_2647859D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_264605000, v23, v24, "Invalid session type when determining receiver cache detail title text!", v25, 2u);
      MEMORY[0x266740650](v25, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_264783DE4();
    v17 = sub_264783E14();
    v18 = sub_2647859D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_264605000, v17, v18, "Missing session type when determining receiver cache detail title text!", v19, 2u);
      MEMORY[0x266740650](v19, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.receiverCacheDetailBodyText(for:displayName:)(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647856E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_264783B94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_264785704();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (a1)
  {
    v13 = [a1 sessionType];
    if (v13 == 4 || v13 == 2)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

    if (v13 == 1)
    {
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v14 = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];
LABEL_7:
      v17 = v15;
      sub_264783B84();
      return sub_264785754();
    }

    v19 = [a1 sessionType];
    sub_264783DE4();
    v20 = sub_264783E14();
    v21 = sub_2647859D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v19;
      _os_log_impl(&dword_264605000, v20, v21, "Unsupported session type: %lu", v22, 0xCu);
      MEMORY[0x266740650](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.initiatorSessionInfoTitleString(with:)()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v185 = v0;
  v186 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v165[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v177 = &v165[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v181 = &v165[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v174 = &v165[-v11];
  MEMORY[0x28223BE20](v10);
  v173 = &v165[-v12];
  v13 = sub_2647856E4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v176 = &v165[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v165[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v175 = &v165[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v172 = &v165[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v179 = &v165[-v25];
  v180 = sub_264783AF4();
  v183 = *(v180 - 8);
  v26 = *(v183 + 64);
  v27 = MEMORY[0x28223BE20](v180);
  v29 = &v165[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v165[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v182 = &v165[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v170 = &v165[-v36];
  MEMORY[0x28223BE20](v35);
  v171 = &v165[-v37];
  v38 = sub_264783B94();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v165[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_264785704();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v165[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v46 = v188[0];
  if (!v188[0])
  {
    goto LABEL_6;
  }

  v47 = [v188[0] configuration];
  if (!v47)
  {

LABEL_6:
    sub_264783DF4();

    v53 = sub_264783E14();
    v54 = sub_2647859D4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = 7104878;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136315907;
      v187 = v184;
      v188[0] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v58 = sub_264785764();
      v60 = sub_2646DF234(v58, v59, v188);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v188);
      *(v56 + 22) = 2085;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v61 = v187;
      if (v187)
      {
        v62 = [v187 debugDescription];

        v63 = sub_264785724();
        v65 = v64;

        v55 = 7104878;
      }

      else
      {
        v65 = 0xE300000000000000;
        v63 = 7104878;
      }

      v97 = sub_2646DF234(v63, v65, v188);

      *(v56 + 24) = v97;
      *(v56 + 32) = 2085;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v98 = v187;
      if (v187 && (v99 = [v187 configuration], v98, v99))
      {
        v100 = [v99 debugDescription];

        v55 = sub_264785724();
        v102 = v101;
      }

      else
      {
        v102 = 0xE300000000000000;
      }

      v103 = sub_2646DF234(v55, v102, v188);

      *(v56 + 34) = v103;
      _os_log_impl(&dword_264605000, v53, v54, "%s,%s: Invalid Session State, sessionState, %{sensitive}s, activeConfig, %{sensitive}s", v56, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v57, -1, -1);
      MEMORY[0x266740650](v56, -1, -1);
    }

    (*(v186 + 8))(v5, v185);
    return 0;
  }

  v167 = v45;
  v168 = v41;
  v48 = v47;
  v49 = v46;
  v50 = [v46 configuration];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 conversation];

    v166 = [v52 isGroup];
  }

  else
  {
    v166 = 0;
  }

  v66 = [v49 configuration];
  v169 = v48;
  if (v66)
  {
    v67 = v66;
    v68 = [v66 conversation];
  }

  else
  {
    v68 = 0;
  }

  sub_264783D04();
  MEMORY[0x26673DA20](v68);
  v70 = v69;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v71 = v188[0];
  if (!v188[0])
  {
    goto LABEL_17;
  }

  if (![v188[0] unsupportedDeviceSeparationState])
  {

LABEL_17:
    v75 = [v49 sessionState];
    if (v75 > 0xE)
    {
      goto LABEL_59;
    }

    if (((1 << v75) & 0x4380) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v76 = v188[0];
      v77 = v169;
      if (v188[0])
      {
        v78 = [v188[0] cacheReleaseDate];

        sub_264783AC4();
        v79 = v182;
        v80 = v183;
        v81 = v32;
        v82 = v180;
        (*(v183 + 32))(v182, v81, v180);
        sub_264783AD4();
        v83 = sub_264783A74();
        v86 = *(v80 + 8);
        v84 = v80 + 8;
        v85 = v86;
        v86(v29, v82);
        if (v83)
        {
          v87 = v79;
          v88 = sub_264783A64();
          v89 = [v88 relativeTimeString];

          sub_264785724();
          if (v166)
          {
            sub_2647856D4();
            if (v70)
            {
              sub_2647856C4();
              sub_2647856B4();
            }

            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v91 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
            v74 = sub_264785744();

            v85(v182, v82);
          }

          else
          {
            sub_2647856D4();
            v183 = v84;
            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v124 = swift_getObjCClassFromMetadata();
            v125 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
            v74 = sub_264785744();

            v85(v87, v82);
          }

          return v74;
        }

        v85(v79, v82);
        v77 = v169;
      }

      v109 = v181;
      sub_264783DF4();
      v110 = sub_264783E14();
      v111 = sub_2647859D4();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v188[0] = v113;
        *v112 = 136315138;
        *(v112 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v188);
        _os_log_impl(&dword_264605000, v110, v111, "%s: Unexpected anomaly without valid cache release date", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x266740650](v113, -1, -1);
        MEMORY[0x266740650](v112, -1, -1);
      }

      (*(v186 + 8))(v109, v185);
      if (v166)
      {
        if (v70)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v114 = swift_getObjCClassFromMetadata();
        v115 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v116 = swift_getObjCClassFromMetadata();
        v117 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v74 = sub_264785744();

      goto LABEL_73;
    }

    if (((1 << v75) & 0x1010) != 0)
    {
      v92 = [v49 monitorContext];
      if (v92)
      {
        v93 = v92;
        v94 = [v92 triggerCategory];

        if ((v94 - 10) <= 4)
        {

          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v95 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_264783B84();
LABEL_29:
          v96 = sub_264785754();
LABEL_30:
          v74 = v96;

LABEL_73:
          return v74;
        }
      }

      v106 = v169;
      if (v166)
      {
        if (v70)
        {
          goto LABEL_45;
        }

        goto LABEL_91;
      }

LABEL_70:
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v126 = swift_getObjCClassFromMetadata();
      v127 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      goto LABEL_72;
    }

    if (v75 != 2)
    {
LABEL_59:

      v118 = v177;
      sub_264783DF4();
      v119 = v49;
      v120 = sub_264783E14();
      v121 = sub_2647859D4();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v188[0] = v123;
        *v122 = 136315394;
        *(v122 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v188);
        *(v122 + 12) = 2048;
        *(v122 + 14) = [v119 sessionState];

        _os_log_impl(&dword_264605000, v120, v121, "%s: Invalid state, %lu", v122, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v123);
        MEMORY[0x266740650](v123, -1, -1);
        MEMORY[0x266740650](v122, -1, -1);
      }

      else
      {
      }

      (*(v186 + 8))(v118, v185);

      return 0;
    }

    v105 = [v169 sessionType];
    if (v105 <= 2)
    {
      if (v105 == 1)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v139 = v188[0];
        if (v188[0])
        {
          v140 = [v188[0] configuration];

          if (v140)
          {
            v141 = [v140 time];

            if (v141)
            {
              v142 = [v141 timeBound];

              v143 = v170;
              sub_264783AC4();

              v144 = v183;
              v145 = v171;
              v146 = v180;
              (*(v183 + 32))(v171, v143, v180);
              sub_2647856D4();
              sub_2647856C4();
              v147 = sub_264783A64();
              v148 = [v147 absoluteTimeString:0 preposition:2 capitalized:0];

              sub_264785724();
              sub_2647856B4();

              sub_2647856C4();
              sub_2647856F4();
              sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
              v149 = swift_getObjCClassFromMetadata();
              v150 = [objc_opt_self() bundleForClass_];
              sub_264783B84();
              v74 = sub_264785754();

              (*(v144 + 8))(v145, v146);
              return v74;
            }
          }
        }

        v151 = v173;
        sub_264783DF4();
        v152 = sub_264783E14();
        v153 = sub_2647859D4();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *v154 = 136315394;
          v187 = v184;
          v188[0] = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v156 = sub_264785764();
          v158 = sub_2646DF234(v156, v157, v188);

          *(v154 + 4) = v158;
          *(v154 + 12) = 2080;
          *(v154 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v188);
          _os_log_impl(&dword_264605000, v152, v153, "%s,%s: missing duration end date", v154, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v155, -1, -1);
          MEMORY[0x266740650](v154, -1, -1);
        }

        (*(v186 + 8))(v151, v185);
        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v159 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_29;
      }

      if (v105 == 2)
      {
        if (v166)
        {
          v106 = v169;
          if (v70)
          {
LABEL_45:
            sub_2647856D4();
            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
LABEL_46:
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v107 = swift_getObjCClassFromMetadata();
            v108 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
LABEL_72:
            v74 = sub_264785744();

            goto LABEL_73;
          }

LABEL_91:
          sub_264785694();
          goto LABEL_46;
        }

LABEL_89:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v160 = swift_getObjCClassFromMetadata();
        v161 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v96 = sub_264785744();
        goto LABEL_30;
      }

      goto LABEL_76;
    }

    if (v105 == 3)
    {
      if (!v166)
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v162 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_29;
      }

      v106 = v169;
      if (v70)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v105 != 4)
      {
LABEL_76:

        v128 = v174;
        sub_264783DF4();
        v129 = v169;
        v130 = sub_264783E14();
        v131 = sub_2647859D4();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v188[0] = v133;
          *v132 = 136315394;
          *(v132 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v188);
          *(v132 + 12) = 2080;
          v134 = [objc_opt_self() sessionTypeToString_];
          v135 = sub_264785724();
          v137 = v136;

          v138 = sub_2646DF234(v135, v137, v188);

          *(v132 + 14) = v138;
          _os_log_impl(&dword_264605000, v130, v131, "%s: Unknown session type, %s", v132, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v133, -1, -1);
          MEMORY[0x266740650](v132, -1, -1);
        }

        (*(v186 + 8))(v128, v185);
        return 0;
      }

      if (!v166)
      {
        goto LABEL_89;
      }

      v106 = v169;
      if (v70)
      {
        goto LABEL_70;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v163 = swift_getObjCClassFromMetadata();
    v164 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_72;
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v72 = swift_getObjCClassFromMetadata();
  v73 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v74 = sub_264785754();

  return v74;
}

uint64_t static SafetyMonitorUIUtilities.initiatorActiveSessionDetailMessage(with:)()
{
  v1 = v0;
  v2 = sub_264783E24();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v86[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v86[-v8];
  MEMORY[0x28223BE20](v7);
  v90 = &v86[-v10];
  v11 = sub_264783B94();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_264785704();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v91 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2647856E4();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v22 = v97;
  if (!v97)
  {
    goto LABEL_6;
  }

  v23 = [v97 configuration];
  if (!v23)
  {

LABEL_6:
    sub_264783DF4();

    v27 = sub_264783E14();
    v28 = sub_2647859D4();

    if (os_log_type_enabled(v27, v28))
    {
      LODWORD(v92) = v28;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96 = v1;
      v97 = v93;
      *v29 = 136315907;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v31 = sub_264785764();
      v33 = sub_2646DF234(v31, v32, &v97);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v97);
      *(v29 + 22) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v34 = v96;
      *(v29 + 24) = v96;
      *v30 = v34;
      *(v29 + 32) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v35 = v96;
      if (v96)
      {
        v36 = [v96 configuration];

        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *(v29 + 34) = v36;
      v30[1] = v37;
      _os_log_impl(&dword_264605000, v27, v92, "%s,%s: Invalid Session State, sessionState, %{sensitive}@, activeConfig, %{sensitive}@", v29, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      v50 = v93;
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);
    }

    (*(v94 + 8))(v6, v95);
    return 0;
  }

  v89 = v23;
  v24 = [v22 configuration];
  v93 = v22;
  if (v24)
  {
    v25 = v24;
    v26 = [v24 conversation];

    v87 = [v26 isGroup];
    v22 = v93;
  }

  else
  {
    v87 = 0;
  }

  v38 = [v22 configuration];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 conversation];
  }

  else
  {
    v40 = 0;
  }

  sub_264783D04();
  v88 = MEMORY[0x26673DA20](v40);
  v42 = v41;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v43 = v97;
  if (v97)
  {
    if ([v97 unsupportedDeviceSeparationState])
    {
      if (v87)
      {
        v44 = v93;
        if (v42)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v46 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v47 = sub_264785744();
        }

        else
        {
          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v70 = swift_getObjCClassFromMetadata();
          v71 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v47 = sub_264785754();
        }

        v60 = v47;

        goto LABEL_60;
      }

      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v58 = swift_getObjCClassFromMetadata();
      v59 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v60 = sub_264785754();

LABEL_43:
      return v60;
    }
  }

  v48 = [v93 sessionState];
  if (v48 <= 6)
  {
    if (v48 != 2)
    {
      if (v48 == 4)
      {

        v52 = v93;
        v53 = [v93 monitorContext];
        if (v53)
        {
          v54 = v53;
          [v53 triggerCategory];
        }

        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v74 = swift_getObjCClassFromMetadata();
        v75 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v60 = sub_264785744();

        return v60;
      }

LABEL_35:

      sub_264783DF4();
      v61 = v93;
      v62 = sub_264783E14();
      v63 = sub_2647859D4();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v97 = v65;
        *v64 = 136315394;
        *(v64 + 4) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v97);
        *(v64 + 12) = 2048;
        *(v64 + 14) = [v61 sessionState];

        _os_log_impl(&dword_264605000, v62, v63, "%s: Invalid state, %lu", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x266740650](v65, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);
      }

      else
      {
      }

      (*(v94 + 8))(v9, v95);
      return 0;
    }

    v66 = [v89 sessionType];
    if (v66 > 2)
    {
      v67 = v90;
      if (v66 != 3)
      {
        if (v66 != 4)
        {
          goto LABEL_63;
        }

        v72 = v89;
LABEL_56:

        return 0;
      }
    }

    else
    {
      v67 = v90;
      if (v66 == 1)
      {
        if (v87)
        {
          v44 = v93;
          if (v42)
          {
            goto LABEL_33;
          }

          goto LABEL_58;
        }

LABEL_41:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v68 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_42;
      }

      if (v66 != 2)
      {
LABEL_63:

        sub_264783DF4();
        v76 = v89;
        v77 = sub_264783E14();
        v78 = sub_2647859D4();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v97 = v80;
          *v79 = 136315394;
          *(v79 + 4) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v97);
          *(v79 + 12) = 2080;
          v81 = [objc_opt_self() sessionTypeToString_];
          v82 = sub_264785724();
          v84 = v83;

          v85 = sub_2646DF234(v82, v84, &v97);

          *(v79 + 14) = v85;
          _os_log_impl(&dword_264605000, v77, v78, "%s: Unknown session type, %s", v79, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v80, -1, -1);
          MEMORY[0x266740650](v79, -1, -1);
        }

        else
        {
        }

        (*(v94 + 8))(v67, v95);
        return 0;
      }
    }

    v72 = v93;
    goto LABEL_56;
  }

  if ((v48 - 7) < 2)
  {
    if (v87)
    {
      v44 = v93;
      if (v42)
      {
LABEL_33:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v55 = swift_getObjCClassFromMetadata();
        v56 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v57 = sub_264785744();
LABEL_59:
        v60 = v57;

LABEL_60:
        return v60;
      }

LABEL_58:
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v73 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v57 = sub_264785754();
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  if (v48 != 9)
  {
    if (v48 == 14)
    {

      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v49 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass_];
      sub_264783B84();
LABEL_42:
      v60 = sub_264785754();

      goto LABEL_43;
    }

    goto LABEL_35;
  }

  if (qword_27FF75268 != -1)
  {
    swift_once();
  }

  v69 = qword_27FF79088;

  return v69;
}

uint64_t static SafetyMonitorUIUtilities.ETAIconFor(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B0, &qword_264791358);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v10 = v22;
  if (v22 && (v11 = [v22 sessionType], v10, v11 == 2))
  {
    v12 = sub_264785274();
    v13 = sub_264784CC4();
    KeyPath = swift_getKeyPath();
    v22 = v12;
    v23 = KeyPath;
    v24 = v13;
    sub_264784D14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    v21 = a1;
    sub_26466D5C8();
    sub_264784EA4();

    v15 = swift_getKeyPath();
    v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D0, &unk_2647913B0) + 36)];
    *v16 = v15;
    v16[8] = 1;
    v17 = sub_2647851D4();
    v18 = swift_getKeyPath();
    v19 = &v9[*(v6 + 36)];
    *v19 = v18;
    v19[1] = v17;
    sub_264756C94(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_264756A8C();
    sub_264784874();
    return sub_264756D04(v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_264756A8C();
    return sub_264784874();
  }
}

uint64_t static SafetyMonitorUIUtilities.ETAForExpandedView(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  *&v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  *&v81 = &v76 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v13 = sub_264783AF4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v21 = v93;
  if (v93)
  {
    v22 = [v93 estimatedEndDate];

    v82 = v20;
    v78 = v18;
    if (v22)
    {
      sub_264783AC4();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v14[7];
    v24(v10, v23, 1, v13);
    sub_26460E7E4(v10, v12, &qword_27FF756B8, &qword_26478AC90);
    v25 = v14[6];
    if (v25(v12, 1, v13) == 1)
    {
      goto LABEL_7;
    }

    v77 = v14;
    v76 = v14[4];
    v76(v82, v12, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v33 = v93;
    v79 = v13;
    if (v93)
    {
      v34 = [v93 coarseEstimatedEndDate];

      if (v34)
      {
        v35 = v80;
        sub_264783AC4();

        v36 = 0;
        v37 = v81;
      }

      else
      {
        v36 = 1;
        v37 = v81;
        v35 = v80;
      }

      v38 = v79;
      v24(v35, v36, 1, v79);
      sub_26460E7E4(v35, v37, &qword_27FF756B8, &qword_26478AC90);
      if (v25(v37, 1, v38) != 1)
      {
        v76(v78, v37, v79);
        *&v81 = sub_2647845C4();
        *&v93 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
        *(&v93 + 1) = v57;
        sub_264613FC4();
        v58 = sub_264784E44();
        v60 = v59;
        v62 = v61;
        sub_264784CC4();
        v63 = sub_264784E24();
        v65 = v64;
        v67 = v66;

        sub_26460ECC4(v58, v60, v62 & 1);

        sub_264785214();
        v68 = sub_264784DE4();
        v70 = v69;
        v72 = v71;
        v74 = v73;

        sub_26460ECC4(v63, v65, v67 & 1);

        v103 = 1;
        v101 = v72 & 1;
        v99 = 0;
        v83 = v81;
        v84 = 0;
        v85 = 1;
        *v86 = *v102;
        *&v86[3] = *&v102[3];
        v87 = v68;
        v88 = v70;
        v89 = v72 & 1;
        *v90 = *v100;
        *&v90[3] = *&v100[3];
        v91 = v74;
        v92 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D8, &unk_264791428);
        sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428);
        sub_264784874();
        v80 = v94;
        v81 = v93;
        v27 = v95;
        v28 = v96;
        v29 = v97;
        v75 = v77[1];
        v31 = v98;
        v75(v78, v79);
        result = (v75)(v82, v79);
        goto LABEL_16;
      }
    }

    else
    {
      v37 = v81;
      v24(v81, 1, 1, v13);
    }

    sub_26460CD50(v37, &qword_27FF756B8, &qword_26478AC90);
    *&v81 = sub_2647845C4();
    *&v93 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    *(&v93 + 1) = v39;
    sub_264613FC4();
    v40 = sub_264784E44();
    v42 = v41;
    v44 = v43;
    sub_264784CC4();
    v45 = sub_264784E24();
    v47 = v46;
    v49 = v48;

    sub_26460ECC4(v40, v42, v44 & 1);

    sub_264785214();
    v50 = sub_264784DE4();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    sub_26460ECC4(v45, v47, v49 & 1);

    v103 = 1;
    v101 = v54 & 1;
    v99 = 1;
    v83 = v81;
    v84 = 0;
    v85 = 1;
    *v86 = *v102;
    *&v86[3] = *&v102[3];
    v87 = v50;
    v88 = v52;
    v89 = v54 & 1;
    *v90 = *v100;
    *&v90[3] = *&v100[3];
    v91 = v56;
    v92 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D8, &unk_264791428);
    sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428);
    sub_264784874();
    v80 = v94;
    v81 = v93;
    v27 = v95;
    v28 = v96;
    v29 = v97;
    v31 = v98;
    result = (v77[1])(v82, v79);
LABEL_16:
    v30 = v81;
    v32 = v80;
    goto LABEL_17;
  }

  (v14[7])(v12, 1, 1, v13);
LABEL_7:
  result = sub_26460CD50(v12, &qword_27FF756B8, &qword_26478AC90);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0uLL;
  v31 = -1;
  v32 = 0uLL;
LABEL_17:
  *a1 = v30;
  *(a1 + 16) = v32;
  *(a1 + 32) = v27;
  *(a1 + 40) = v28;
  *(a1 + 48) = v29;
  *(a1 + 56) = v31;
  return result;
}

SafetyMonitorUI::CheckInControllerDismissalReason_optional __swiftcall CheckInControllerDismissalReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CheckInControllerDismissalReason.rawValue.getter()
{
  v1 = 0x69446C61756E616DLL;
  v2 = 0x5364657472617473;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D7369446F747561;
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

uint64_t sub_26474DA2C()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_26474DB14()
{
  *v0;
  *v0;
  *v0;
  sub_264785794();
}

uint64_t sub_26474DBE8()
{
  v1 = *v0;
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_26474DCD8(unint64_t *a1@<X8>)
{
  v2 = 0xED00007373696D73;
  v3 = 0x69446C61756E616DLL;
  v4 = 0xEE006E6F69737365;
  v5 = 0x5364657472617473;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000264793170;
  }

  if (*v1)
  {
    v3 = 0x6D7369446F747561;
    v2 = 0xEB00000000737369;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_26474DD7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void *sub_26474DDE4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_264785C14();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2646A1DB8(v2, 0);

    v1 = sub_2646C5C70(&v5, v3 + 4, v2, v1);
    sub_26467A824();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_26474DE94(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_264785E34();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        v8 = sub_264785834();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_26474E0B0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_26474DFB4(0, v4, 1, a1, a2);
  }
}

void sub_26474DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v13 = *v12;
      v14 = v10;
      v15 = v13;
      [v14 *a5];
      v17 = v16;
      [v15 *a5];
      v19 = v18;

      if (v19 >= v17)
      {
LABEL_4:
        ++v6;
        v8 += 8;
        --v9;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v20 = *v12;
      v10 = *(v12 + 8);
      *v12 = v10;
      *(v12 + 8) = v20;
      v12 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_26474E0B0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v10 = sub_2646F47DC(v10);
    }

    v101 = v7;
    v102 = *(v10 + 2);
    if (v102 >= 2)
    {
      while (*a3)
      {
        v7 = v102 - 1;
        v103 = *&v10[16 * v102];
        v104 = *&v10[16 * v102 + 24];
        sub_26474E730((*a3 + 8 * v103), (*a3 + 8 * *&v10[16 * v102 + 16]), (*a3 + 8 * v104), v11, a5);
        if (v101)
        {
          goto LABEL_98;
        }

        if (v104 < v103)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2646F47DC(v10);
        }

        if (v102 - 2 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v105 = &v10[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        sub_2646F4750(v102 - 1);
        v102 = *(v10 + 2);
        if (v102 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v107 = v7;
      v13 = *(*a3 + 8 * v12);
      v7 = 8 * v9;
      v14 = v9;
      v15 = (*a3 + 8 * v9);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      [v18 *a5];
      v21 = v20;
      [v19 *a5];
      v23 = v22;

      v24 = v14 + 2;
      while (v8 != v24)
      {
        v25 = *(v16 - 1);
        v26 = *v16;
        v27 = v25;
        [v26 *a5];
        v29 = v28;
        [v27 *a5];
        v31 = v30;

        ++v24;
        ++v16;
        if (v23 < v21 == v31 >= v29)
        {
          v8 = (v24 - 1);
          break;
        }
      }

      v11 = v14;
      if (v23 < v21)
      {
        if (v8 < v14)
        {
          goto LABEL_118;
        }

        if (v14 < v8)
        {
          v32 = 8 * v8 - 8;
          v33 = v8;
          v34 = v14;
          do
          {
            if (v34 != --v33)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v35 = *(v36 + v7);
              *(v36 + v7) = *(v36 + v32);
              *(v36 + v32) = v35;
            }

            v34 = (v34 + 1);
            v32 -= 8;
            v7 += 8;
          }

          while (v34 < v33);
        }
      }

      v12 = v8;
      v7 = v107;
    }

    v37 = a3[1];
    if (v12 < v37)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = (v11 + a4);
        }

        if (v38 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v38)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2646F48D4(0, *(v10 + 2) + 1, 1, v10);
    }

    v56 = *(v10 + 2);
    v55 = *(v10 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v10 = sub_2646F48D4((v55 > 1), v56 + 1, 1, v10);
    }

    *(v10 + 2) = v57;
    v58 = &v10[16 * v56];
    *(v58 + 4) = v11;
    *(v58 + 5) = v12;
    v59 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v113 = v12;
    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v10 + 4);
          v62 = *(v10 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_57:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v10[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v10[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v87 = &v10[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_71:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v10[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_78:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v99 = *&v10[16 * v98 + 32];
        v11 = *&v10[16 * v60 + 40];
        sub_26474E730((*a3 + 8 * v99), (*a3 + 8 * *&v10[16 * v60 + 32]), (*a3 + 8 * v11), v59, a5);
        if (v7)
        {
          goto LABEL_98;
        }

        if (v11 < v99)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2646F47DC(v10);
        }

        if (v98 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v100 = &v10[16 * v98];
        *(v100 + 4) = v99;
        *(v100 + 5) = v11;
        sub_2646F4750(v60);
        v57 = *(v10 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v10[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v10[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v10[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = v113;
    v8 = a3[1];
    if (v113 >= v8)
    {
      goto LABEL_88;
    }
  }

  v108 = v7;
  v39 = v11;
  v40 = *a3;
  v41 = *a3 + 8 * v12 - 8;
  v109 = v39;
  v42 = v39 - v12;
  v111 = v38;
LABEL_30:
  v112 = v12;
  v43 = *(v40 + 8 * v12);
  v44 = v42;
  v45 = v41;
  while (1)
  {
    v46 = *v45;
    v47 = v43;
    v48 = v46;
    [v47 *a5];
    v50 = v49;
    [v48 *a5];
    v52 = v51;

    if (v52 >= v50)
    {
LABEL_29:
      v12 = v112 + 1;
      v41 += 8;
      --v42;
      if ((v112 + 1) != v111)
      {
        goto LABEL_30;
      }

      v12 = v111;
      v7 = v108;
      v11 = v109;
      goto LABEL_37;
    }

    if (!v40)
    {
      break;
    }

    v53 = *v45;
    v43 = *(v45 + 8);
    *v45 = v43;
    *(v45 + 8) = v53;
    v45 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_26474E730(void **__dst, id *__src, char *a3, void **a4, SEL *a5)
{
  v5 = a4;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      v26 = a3;
      memmove(a4, __src, 8 * v13);
      a3 = v26;
    }

    v15 = &v5[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v43 = v7;
      v44 = v5;
LABEL_26:
      v27 = v6 - 1;
      v28 = (a3 - 8);
      v29 = v15;
      v30 = v15;
      do
      {
        v31 = v28;
        v32 = v28 + 1;
        v33 = *--v30;
        v34 = v27;
        v35 = *v27;
        v36 = v33;
        v37 = v35;
        [v36 *a5];
        v39 = v38;
        [v37 *a5];
        v41 = v40;

        if (v41 < v39)
        {
          a3 = v31;
          if (v32 != v6)
          {
            *v31 = *v34;
          }

          v5 = v44;
          v15 = v29;
          if (v29 <= v44 || (v6 = v34, v34 <= v43))
          {
            v6 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v32 != v29)
        {
          *v31 = *v30;
        }

        v28 = v31 - 1;
        v29 = v30;
        v5 = v44;
        v27 = v34;
      }

      while (v30 > v44);
      v15 = v30;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      v14 = a3;
      memmove(a4, __dst, 8 * v10);
      a3 = v14;
    }

    v15 = &v5[v10];
    if (v8 >= 8 && v6 < a3)
    {
      while (1)
      {
        v16 = a3;
        v17 = *v5;
        v18 = *v6;
        v19 = v17;
        [v18 *a5];
        v21 = v20;
        [v19 *a5];
        v23 = v22;

        if (v23 >= v21)
        {
          break;
        }

        v24 = v6;
        v25 = v7 == v6++;
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
        if (v5 < v15)
        {
          a3 = v16;
          if (v6 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v24 = v5;
      v25 = v7 == v5++;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v5 || v6 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v5, 8 * (v15 - v5));
  }

  return 1;
}

uint64_t sub_26474EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264784484();
  *a1 = result;
  return result;
}

uint64_t sub_26474EA68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_264785C14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2646A1DB8(v3, 0);
  sub_26474EAFC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26474EAFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_264785C14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_264785C14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26460CDF0(&qword_27FF794C8, &qword_27FF794C0, &qword_264791A68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794C0, &qword_264791A68);
            v9 = sub_26474ECB0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26474ECB0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26673FA30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26474ED30;
  }

  __break(1u);
  return result;
}

uint64_t sub_26474ED38@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 56) + 16 * result);
    *a4 = v4;
    return sub_26465944C(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26474ED94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794A0, &qword_264791A40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_264757764(a1, &v33 - v22);
  sub_264757764(a2, &v23[v24]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v26 = *(*(v25 - 8) + 48);
  v27 = v26(v23, 3, v25);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      if (v26(&v23[v24], 3, v25) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v26(&v23[v24], 3, v25) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_264757838(v23, type metadata accessor for SafetyMonitorUINavigationPathItem);
    return 1;
  }

  if (v27)
  {
    if (v26(&v23[v24], 3, v25) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_264757764(v23, v18);
  if (!v26(&v23[v24], 3, v25))
  {
    v29 = *(v11 + 48);
    sub_26460E7E4(v18, v14, &qword_27FF766A8, &unk_26478AA80);
    sub_26460E7E4(&v23[v24], &v14[v29], &qword_27FF766A8, &unk_26478AA80);
    v30 = *(v34 + 48);
    if (v30(v14, 1, v4) == 1)
    {
      if (v30(&v14[v29], 1, v4) == 1)
      {
        sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
        goto LABEL_11;
      }
    }

    else
    {
      sub_2647577C8(v14, v10);
      if (v30(&v14[v29], 1, v4) != 1)
      {
        v31 = v33;
        sub_2646F5518(&v14[v29], v33);
        v32 = sub_2646F526C(v10, v31);
        sub_264757838(v31, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_264757838(v10, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
        if (v32)
        {
          goto LABEL_11;
        }

LABEL_20:
        sub_264757838(v23, type metadata accessor for SafetyMonitorUINavigationPathItem);
        return 0;
      }

      sub_264757838(v10, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v14, &qword_27FF77FD0, &qword_26478F3A8);
    goto LABEL_20;
  }

  sub_26460CD50(v18, &qword_27FF766A8, &unk_26478AA80);
LABEL_12:
  sub_26460CD50(v23, &qword_27FF794A0, &qword_264791A40);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC35initiatorRemoveExtraTimeButtonTitle4withSSSd_tFZ_0(double a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2647856E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v13 = [objc_opt_self() hourMinuteShortTimeIntervalFormatter];
  (*(v7 + 104))(v10, *MEMORY[0x277D84680], v6);
  v14 = sub_26473BF14(v10, 60.0, a1);
  (*(v7 + 8))(v10, v6);
  v15 = [v13 stringFromTimeInterval_];

  if (v15)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t sub_26474F59C()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2647856E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_26462B210();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isGroup];
  }

  else
  {
    v8 = 0;
  }

  sub_264783D04();
  v9 = sub_26462B210();
  MEMORY[0x26673DA20]();
  v11 = v10;

  if (!v8)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_264785694();
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
LABEL_7:
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  if (!a1)
  {
    sub_264783DF4();
    v27 = sub_264783E14();
    v28 = sub_2647859B4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v53);
      *(v29 + 12) = 2112;
      *(v29 + 14) = 0;
      *v30 = 0;
      _os_log_impl(&dword_264605000, v27, v28, "%s, Map Item not available, %@", v29, 0x16u);
      sub_26460CD50(v30, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);
    }

    v32 = *(v3 + 8);
    v33 = v7;
    goto LABEL_18;
  }

  v16 = a1;
  v17 = [v16 _geoMapItem];
  if (!v17)
  {
    sub_264783DF4();
    v34 = v16;
    v35 = sub_264783E14();
    v36 = sub_2647859B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v53);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v38 = a1;
      v40 = v34;
      _os_log_impl(&dword_264605000, v35, v36, "%s, geoMapItem not available for Map Item, %@", v37, 0x16u);
      sub_26460CD50(v38, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v37, -1, -1);
    }

    else
    {
    }

    v32 = *(v3 + 8);
    v33 = v10;
    goto LABEL_18;
  }

  v18 = [v17 addressObject];
  if (!v18)
  {
LABEL_15:
    sub_264783DF4();
    v41 = v16;
    v42 = sub_264783E14();
    v43 = sub_2647859B4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v2;
      v46 = v45;
      v47 = swift_slowAlloc();
      v53 = v47;
      *v44 = 136315394;
      *(v44 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v53);
      *(v44 + 12) = 2112;
      *(v44 + 14) = v41;
      *v46 = a1;
      v48 = v41;
      _os_log_impl(&dword_264605000, v42, v43, "%s, city not available for Map Item, %@", v44, 0x16u);
      sub_26460CD50(v46, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v13, v52);
      return 0;
    }

    swift_unknownObjectRelease();
    v32 = *(v3 + 8);
    v33 = v13;
LABEL_18:
    v32(v33, v2);
    return 0;
  }

  v19 = v18;
  v20 = [v18 cityDisplayNameWithFallback_];
  if (!v20)
  {

    goto LABEL_15;
  }

  v21 = v20;
  v51 = sub_264785724();

  sub_264783DF4();
  v22 = sub_264783E14();
  v23 = sub_2647859B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v53);
    _os_log_impl(&dword_264605000, v22, v23, "%s, city available", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v52);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v2);
  }

  return v51;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v66 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  if (!a1)
  {
    sub_264783DF4();
    v34 = sub_264783E14();
    v35 = sub_2647859B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v69);
      *(v36 + 12) = 2112;
      *(v36 + 14) = 0;
      *v37 = 0;
      _os_log_impl(&dword_264605000, v34, v35, "%s, Map Item not available, %@", v36, 0x16u);
      sub_26460CD50(v37, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x266740650](v38, -1, -1);
      MEMORY[0x266740650](v36, -1, -1);
    }

    v39 = *(v3 + 8);
    v40 = v7;
    goto LABEL_26;
  }

  v19 = a1;
  v20 = [v19 _geoMapItem];
  if (!v20)
  {
    sub_264783DF4();
    v41 = v19;
    v42 = sub_264783E14();
    v43 = sub_2647859B4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69 = v46;
      *v44 = 136315394;
      *(v44 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v69);
      *(v44 + 12) = 2112;
      *(v44 + 14) = v41;
      *v45 = a1;
      v47 = v41;
      _os_log_impl(&dword_264605000, v42, v43, "%s, geoMapItem not available for Map Item, %@", v44, 0x16u);
      sub_26460CD50(v45, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);
    }

    else
    {
    }

    v39 = *(v3 + 8);
    v40 = v10;
    goto LABEL_26;
  }

  v21 = v20;
  v22 = [v20 geoAddress];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 structuredAddress];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 fullThoroughfare];
      if (v26)
      {
        v68 = v2;
        v27 = v26;
        v28 = sub_264785724();
        v66 = v29;
        v67 = v28;

        sub_264783DF4();
        v30 = sub_264783E14();
        v31 = sub_2647859B4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v69 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v69);
          _os_log_impl(&dword_264605000, v30, v31, "%s, fullThoroughfare available", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x266740650](v33, -1, -1);
          MEMORY[0x266740650](v32, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v3 + 8))(v18, v68);
        return v67;
      }
    }

    else
    {
      v25 = v23;
    }
  }

  v48 = [v21 addressObject];
  if (!v48)
  {
LABEL_23:
    sub_264783DF4();
    v57 = v19;
    v58 = sub_264783E14();
    v59 = sub_2647859B4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v68 = v2;
      v62 = v61;
      v63 = swift_slowAlloc();
      v69 = v63;
      *v60 = 136315394;
      *(v60 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v69);
      *(v60 + 12) = 2112;
      *(v60 + 14) = v57;
      *v62 = a1;
      v64 = v57;
      _os_log_impl(&dword_264605000, v58, v59, "%s, fullThoroughfare and short address not available for Map Item, %@", v60, 0x16u);
      sub_26460CD50(v62, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x266740650](v63, -1, -1);
      MEMORY[0x266740650](v60, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v13, v68);
      return 0;
    }

    swift_unknownObjectRelease();
    v39 = *(v3 + 8);
    v40 = v13;
LABEL_26:
    v39(v40, v2);
    return 0;
  }

  v49 = v48;
  v50 = [v48 shortAddress];
  if (!v50)
  {

    goto LABEL_23;
  }

  v51 = v50;
  v67 = sub_264785724();

  sub_264783DF4();
  v52 = sub_264783E14();
  v53 = sub_2647859B4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v68 = v2;
    v55 = v54;
    v56 = swift_slowAlloc();
    v69 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v69);
    _os_log_impl(&dword_264605000, v52, v53, "%s, fullThoroughfare not available, short address available", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x266740650](v56, -1, -1);
    MEMORY[0x266740650](v55, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v16, v68);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v16, v2);
  }

  return v67;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783B94();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_264785704();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2647856E4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  LOBYTE(a4) = *a4;
  if (a1 == 3 || a1 == 2 || a1 == 1)
  {
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  else
  {
    sub_264783DF4();

    v21 = sub_264783E14();
    v22 = sub_2647859D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315650;
      *(v23 + 4) = sub_2646DF234(0xD000000000000042, 0x800000026479F600, &v27);
      *(v23 + 12) = 2048;
      *(v23 + 14) = a1;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_2646DF234(a2, a3, &v27);
      _os_log_impl(&dword_264605000, v21, v22, "%s, Invalid destination type, %lu, with address, %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v24, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0()
{
  v0 = sub_264783B94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_264785704();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264783AF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v11 = sub_264783A64();
  v12 = [v11 roundedTime];

  sub_264783AC4();
  v13 = sub_264783A64();
  v14 = [v13 absoluteTimeString:0 preposition:1 capitalized:1];

  sub_264785724();
  (*(v5 + 8))(v8, v4);
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  if (!a1)
  {
    sub_264783DF4();
    v27 = sub_264783E14();
    v28 = sub_2647859B4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v53);
      *(v29 + 12) = 2112;
      *(v29 + 14) = 0;
      *v30 = 0;
      _os_log_impl(&dword_264605000, v27, v28, "%s, Map Item not available, %@", v29, 0x16u);
      sub_26460CD50(v30, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);
    }

    v32 = *(v3 + 8);
    v33 = v7;
    goto LABEL_18;
  }

  v16 = a1;
  v17 = [v16 _geoMapItem];
  if (!v17)
  {
    sub_264783DF4();
    v34 = v16;
    v35 = sub_264783E14();
    v36 = sub_2647859B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v53);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v38 = a1;
      v40 = v34;
      _os_log_impl(&dword_264605000, v35, v36, "%s, geoMapItem not available for Map Item, %@", v37, 0x16u);
      sub_26460CD50(v38, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v37, -1, -1);
    }

    else
    {
    }

    v32 = *(v3 + 8);
    v33 = v10;
    goto LABEL_18;
  }

  v18 = [v17 addressObject];
  if (!v18)
  {
LABEL_15:
    sub_264783DF4();
    v41 = v16;
    v42 = sub_264783E14();
    v43 = sub_2647859B4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v2;
      v46 = v45;
      v47 = swift_slowAlloc();
      v53 = v47;
      *v44 = 136315394;
      *(v44 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v53);
      *(v44 + 12) = 2112;
      *(v44 + 14) = v41;
      *v46 = a1;
      v48 = v41;
      _os_log_impl(&dword_264605000, v42, v43, "%s, fullAddressWithMultiline not available for Map Item, %@", v44, 0x16u);
      sub_26460CD50(v46, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v13, v52);
      return 0;
    }

    swift_unknownObjectRelease();
    v32 = *(v3 + 8);
    v33 = v13;
LABEL_18:
    v32(v33, v2);
    return 0;
  }

  v19 = v18;
  v20 = [v18 fullAddressNoCurrentCountryWithMultiline_];
  if (!v20)
  {

    goto LABEL_15;
  }

  v21 = v20;
  v51 = sub_264785724();

  sub_264783DF4();
  v22 = sub_264783E14();
  v23 = sub_2647859B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v53);
    _os_log_impl(&dword_264605000, v22, v23, "%s, fullAddressWithMultiline available", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v52);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v2);
  }

  return v51;
}

void _s15SafetyMonitorUI0aB11UIUtilitiesC18shortAddressFormat3forSSSgAA31LocationSearchRowCompletionItemVSg_tFZ_0(uint64_t a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v82 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v82 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v82 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v22 = *(a1 + 24);
  if (!v22)
  {
    sub_264783DF4();
    v41 = sub_264783E14();
    v42 = sub_2647859B4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v2;
      v44 = v3;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v89 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
      _os_log_impl(&dword_264605000, v41, v42, "%s, completionItem not available", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v45, -1, -1);

      (*(v44 + 8))(v7, v43);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return;
  }

  v88 = v2;
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  if (v24)
  {
    v26 = v24;
    v27 = v25;
    v28 = v26;
    v87 = v27;
    sub_264757908(v23, v24, v27, v22);
    v29 = [v28 _geoMapItem];
    if (v29)
    {
      v30 = [v29 addressObject];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 shortAddress];
        if (v32)
        {
          v86 = v3;
          v33 = v32;
          v85 = sub_264785724();
          v35 = v34;

          sub_264783DF4();

          v36 = sub_264783E14();
          v37 = sub_2647859B4();
          v84 = v35;

          v83 = v36;
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v89 = v82;
            *v38 = 136315394;
            *(v38 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
            *(v38 + 12) = 2080;
            *(v38 + 14) = sub_2646DF234(v85, v84, &v89);
            v39 = v83;
            _os_log_impl(&dword_264605000, v83, v37, "%s, short address, %s", v38, 0x16u);
            v40 = v82;
            swift_arrayDestroy();
            MEMORY[0x266740650](v40, -1, -1);
            MEMORY[0x266740650](v38, -1, -1);
            swift_unknownObjectRelease();

            sub_2646A2318(v23, v24, v87, v22);
          }

          else
          {

            swift_unknownObjectRelease();
            sub_2646A2318(v23, v24, v87, v22);
          }

          (*(v86 + 8))(v21, v88);
          return;
        }
      }

      swift_unknownObjectRelease();

      sub_264783DF4();
      v76 = sub_264783E14();
      v77 = sub_2647859B4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v3;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v89 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
        _os_log_impl(&dword_264605000, v76, v77, "%s, short address not available for completionItem", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x266740650](v80, -1, -1);
        MEMORY[0x266740650](v79, -1, -1);

        sub_2646A2318(v23, v24, v87, v22);
        (*(v78 + 8))(v10, v88);
        return;
      }

      sub_2646A2318(v23, v24, v87, v22);

      v74 = *(v3 + 8);
      v75 = v10;
    }

    else
    {
      sub_264783DF4();
      v61 = v28;
      v62 = sub_264783E14();
      v63 = sub_2647859B4();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v86 = v3;
        v66 = v65;
        v67 = swift_slowAlloc();
        v89 = v67;
        *v64 = 136315394;
        *(v64 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
        *(v64 + 12) = 2112;
        *(v64 + 14) = v61;
        *v66 = v24;
        v68 = v61;
        _os_log_impl(&dword_264605000, v62, v63, "%s, geoMapItem not available for Map Item, %@", v64, 0x16u);
        sub_26460CD50(v66, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v66, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x266740650](v67, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);

        sub_2646A2318(v23, v24, v87, v22);
        (*(v86 + 8))(v19, v88);
        return;
      }

      sub_2646A2318(v23, v24, v87, v22);

      v74 = *(v3 + 8);
      v75 = v19;
    }

LABEL_31:
    v74(v75, v88);
    return;
  }

  if (!v23)
  {

    sub_264783DF4();
    v69 = sub_264783E14();
    v70 = sub_2647859E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v3;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v89 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
      _os_log_impl(&dword_264605000, v69, v70, "%s, searchCompletion not available", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x266740650](v73, -1, -1);
      MEMORY[0x266740650](v72, -1, -1);

      sub_2646A2318(0, 0, v25, v22);
      (*(v71 + 8))(v13, v88);
      return;
    }

    sub_2646A2318(0, 0, v25, v22);

    v74 = *(v3 + 8);
    v75 = v13;
    goto LABEL_31;
  }

  sub_264757908(v23, 0, v25, v22);
  v47 = v23;
  v48 = [v47 mapItem];
  if (!v48)
  {
    __break(1u);
    goto LABEL_36;
  }

  v49 = v48;
  v50 = [v48 _geoMapItem];

  if (!v50)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v51 = [v50 addressObject];
  swift_unknownObjectRelease();
  if (!v51)
  {
LABEL_33:
    v81 = [v47 subtitle];
    sub_264785724();

    sub_2646A2318(v23, 0, v25, v22);
    return;
  }

  v52 = [v51 shortAddress];
  if (!v52)
  {

    goto LABEL_33;
  }

  v86 = v3;
  v87 = v25;
  v53 = v52;
  v85 = sub_264785724();
  v55 = v54;

  sub_264783DF4();

  v56 = sub_264783E14();
  v57 = sub_2647859B4();
  v58 = v55;

  if (os_log_type_enabled(v56, v57))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v89 = v60;
    *v59 = 136315394;
    *(v59 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v89);
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_2646DF234(v85, v58, &v89);
    _os_log_impl(&dword_264605000, v56, v57, "%s, short address, %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v60, -1, -1);
    MEMORY[0x266740650](v59, -1, -1);

    sub_2646A2318(v23, 0, v87, v22);
  }

  else
  {
    sub_2646A2318(v23, 0, v87, v22);
  }

  (*(v86 + 8))(v16, v88);
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC23transcriptStartedString8userTypeSSAA04UserI0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC30transcriptOfflinePrimaryString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC37transcriptCacheReleaseSecondaryString8userTypeSSAA04UserK0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC33transcriptSOSTriggerPrimaryString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC38transcriptDestinationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC35transcriptDurationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34transcriptWorkoutTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC49formatSafeArrivalTranscriptTextForDestinationType011destinationL07address04userL0SSSo09SMSessionkL0V_SSSgAA04UserL0OtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = sub_2647856E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264783B94();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264785704();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = *a4;
  if (a1 <= 2)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (a1 == 3)
  {
LABEL_13:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  if (a1 != 4)
  {
LABEL_9:
    v39 = a2;
    v40 = v21;
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v18;
      v27 = v26;
      v28 = swift_slowAlloc();
      v37 = a3;
      v29 = v28;
      v41 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_2646DF234(0xD000000000000054, 0x800000026479EAE0, &v41);
      *(v27 + 12) = 2048;
      *(v27 + 14) = a1;
      _os_log_impl(&dword_264605000, v24, v25, "%s, Invalid destination type, %lu", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v30 = v29;
      a3 = v37;
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_12:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v31 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

LABEL_8:
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v22 = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC21transcriptEndedString8userTypeSSAA04UserI0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutEndedString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

unint64_t sub_264753D24()
{
  result = qword_27FF79358;
  if (!qword_27FF79358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79350, &qword_264791248);
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79358);
  }

  return result;
}

unint64_t sub_264753DDC()
{
  result = qword_27FF79370;
  if (!qword_27FF79370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79360, &qword_264791258);
    sub_264753D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79370);
  }

  return result;
}

uint64_t sub_264753E60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_264753EB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a4 & 1;
  if (a5)
  {
    return a7(a1, a2, a3, v7);
  }

  else
  {
    return a6(a1, a2, a3, v7);
  }
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC20descriptionStringFor_12originDeviceSSAA17MapAnnotationTypeO_SSSgtFZ_0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783B94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_264785704();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2647856E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  if (*a1 > 2u)
  {
    if (*a1 - 4 < 2)
    {
      return 0;
    }

    if (a3)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_264783DE4();
      v22 = sub_264783E14();
      v23 = sub_2647859D4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_264605000, v22, v23, "Missing origin device for most recent annotation", v24, 2u);
        MEMORY[0x266740650](v24, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v25 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
    }
  }

  else
  {
    if (!*a1)
    {
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785744();
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
  }

  v26 = v17;
  sub_264783B84();
  return sub_264785754();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264754404()
{
  result = qword_27FF79388;
  if (!qword_27FF79388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79380, &unk_2647912E0);
    sub_2647544BC();
    sub_26460CDF0(&qword_27FF76B10, &qword_27FF75948, &qword_26478B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79388);
  }

  return result;
}

unint64_t sub_2647544BC()
{
  result = qword_27FF79390;
  if (!qword_27FF79390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782E8, &unk_26478FB80);
    sub_264754574();
    sub_26460CDF0(&qword_27FF793A8, &qword_27FF782F0, &unk_2647912F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79390);
  }

  return result;
}

unint64_t sub_264754574()
{
  result = qword_27FF79398;
  if (!qword_27FF79398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793A0, &qword_264791300);
    sub_264706360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79398);
  }

  return result;
}

uint64_t sub_264754600()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264754658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC37initiatorCancelConfirmationAlertTitle4withSSAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75028 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78C10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75030 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C20;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x800000026479CD00, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC032initiatorCancelConfirmationAlertF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75018 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78BF0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75058 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C70;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD000000000000038, 0x800000026479CCC0, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC036initiatorCancelConfirmationAlertDontF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75020 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78C00;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75060 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C80;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD00000000000003CLL, 0x800000026479CC80, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorCancelConfirmationMessage4withSSAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2647856E4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v14 = v41;
  if (v41)
  {
    v15 = [v41 configuration];
    if (v15)
    {

      v16 = [v14 configuration];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 conversation];

        v39 = [v18 isGroup];
      }

      else
      {
        v39 = 0;
      }

      v24 = [v14 configuration];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 conversation];
      }

      else
      {
        v26 = 0;
      }

      sub_264783D04();
      MEMORY[0x26673DA20](v26);
      v28 = v27;

      if (v39)
      {
        if (v28)
        {

          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();

        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v30 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v31 = sub_264785744();
      if ([v14 sessionState] != 4)
      {

        return v31;
      }

      if (v39)
      {
        if (v28)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v32 = swift_getObjCClassFromMetadata();
          v33 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v34 = sub_264785744();
LABEL_27:
          v37 = v34;

          return v37;
        }

        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v36 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v35 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v34 = sub_264785754();
      goto LABEL_27;
    }
  }

  sub_264783DF4();
  v19 = sub_264783E14();
  v20 = sub_2647859D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2646DF234(0xD000000000000029, 0x800000026479CB10, &v41);
    _os_log_impl(&dword_264605000, v19, v20, "Invalid Session State in %s!", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266740650](v22, -1, -1);
    MEMORY[0x266740650](v21, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC24initiatorDisclosureLabel4withSSAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v12 = v33;
  if (v33)
  {
    v13 = [v33 configuration];
    if (v13)
    {

      v14 = [v12 configuration];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 conversation];

        v17 = [v16 isGroup];
      }

      else
      {
        v17 = 0;
      }

      v23 = [v12 configuration];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 conversation];
      }

      else
      {
        v25 = 0;
      }

      sub_264783D04();
      v26 = MEMORY[0x26673DA20](v25);
      v28 = v27;

      if (v17)
      {
        if (v28)
        {
          sub_2647856D4();
          sub_2647856C4();
          v33 = v26;
          v34 = v28;
          sub_264613FC4();
          sub_264785B64();

          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        if (v28)
        {
          v33 = v26;
          v34 = v28;
          sub_264613FC4();
          sub_264785B64();
        }

        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v30 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v31 = sub_264785754();

      return v31;
    }
  }

  sub_264783DF4();
  v18 = sub_264783E14();
  v19 = sub_2647859D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x800000026479C9C0, &v33);
    _os_log_impl(&dword_264605000, v18, v19, "Invalid Session State in %s!", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x266740650](v21, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC31initiatorEndSessionButtonString4withSSAA0G9ViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v21;
  if (v21)
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass_];
    sub_264783B84();
    v13 = sub_264785754();
    if ([v9 sessionState] == 4)
    {

      sub_264785694();
      v14 = [v11 bundleForClass_];
      sub_264783B84();
      v13 = sub_264785754();
    }
  }

  else
  {
    sub_264783DF4();
    v15 = sub_264783E14();
    v16 = sub_2647859D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479C970, &v21);
      _os_log_impl(&dword_264605000, v15, v16, "Invalid Session State in %s!", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266740650](v18, -1, -1);
      MEMORY[0x266740650](v17, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v13;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorExtendSessionButtonString4withSSAA0G9ViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_264785704();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v25;
  if (!v25)
  {
    goto LABEL_10;
  }

  v10 = [v25 configuration];
  if (!v10)
  {

LABEL_10:
    sub_264783DF4();
    v14 = sub_264783E14();
    v15 = sub_2647859D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2646DF234(0xD000000000000029, 0x800000026479C920, &v25);
      _os_log_impl(&dword_264605000, v14, v15, "Invalid Session State in %s!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266740650](v17, -1, -1);
      MEMORY[0x266740650](v16, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  v11 = v10;
  v12 = [v10 sessionType];
  if (v12 == 1)
  {
    if (qword_27FF75250 != -1)
    {
      swift_once();
    }

    v13 = &qword_27FF79058;
    goto LABEL_19;
  }

  if (v12 == 2)
  {
    if (qword_27FF75248 != -1)
    {
      swift_once();
    }

    v13 = &qword_27FF79048;
    goto LABEL_19;
  }

  if (v12 == 4)
  {
    if (qword_27FF75258 != -1)
    {
      swift_once();
    }

    v13 = &qword_27FF79068;
LABEL_19:
    v20 = *v13;
    v19 = v13[1];

    return v20;
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v23 = sub_264785754();

  return v23;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC32initiatorWarningFooterTextString4withSSSgAA16SessionViewModelC_tFZ_0()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v5 = v19;
  if (v19)
  {
    if ([v19 userDisabledConnectivity])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v6 = v19;
      if (v19)
      {
        v7 = [v19 isMonitoringState];

        if (v7)
        {
          goto LABEL_7;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v8 = v19;
      if (v19)
      {
        v9 = [v19 isAnomalyState];

        if (v9)
        {
LABEL_7:
          if (SessionViewModel.sessionType.getter() == 2)
          {
            if (qword_27FF75328 != -1)
            {
              swift_once();
            }

            v10 = &qword_27FF79208;
          }

          else
          {
            if (qword_27FF75330 != -1)
            {
              swift_once();
            }

            v10 = &qword_27FF79218;
          }

LABEL_23:
          v15 = *v10;
          v16 = v10[1];

          return v15;
        }
      }
    }

    if ([v5 separatedLPMConnectivityWarningState])
    {
      if (qword_27FF75338 != -1)
      {
        swift_once();
      }

      v10 = &qword_27FF79228;
      goto LABEL_23;
    }
  }

  else
  {
    sub_264783DF4();
    v11 = sub_264783E14();
    v12 = sub_2647859D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2646DF234(0xD000000000000027, 0x800000026479C8F0, &v19);
      _os_log_impl(&dword_264605000, v11, v12, "Invalid Session State in %s!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

unint64_t sub_264756A8C()
{
  result = qword_27FF793C0;
  if (!qword_27FF793C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793B8, &qword_264791360);
    sub_264756B44();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793C0);
  }

  return result;
}

unint64_t sub_264756B44()
{
  result = qword_27FF793C8;
  if (!qword_27FF793C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793D0, &unk_2647913B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77D70, &qword_27FF77D78, &unk_264792F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793C8);
  }

  return result;
}

uint64_t sub_264756C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264784484();
  *a1 = result;
  return result;
}

uint64_t sub_264756C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264756D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264756D70()
{
  result = qword_27FF793E8;
  if (!qword_27FF793E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793E8);
  }

  return result;
}

unint64_t sub_264756DD4()
{
  result = qword_27FF793F0;
  if (!qword_27FF793F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793F0);
  }

  return result;
}

unint64_t sub_264756E70()
{
  result = qword_27FF79408;
  if (!qword_27FF79408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79408);
  }

  return result;
}

uint64_t sub_264757008(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79410, &qword_264791938);
  sub_264784264();
  sub_26460CDF0(&qword_27FF79418, &qword_27FF79410, &qword_264791938);
  return swift_getWitnessTable();
}

unint64_t sub_2647570BC()
{
  result = qword_27FF79420;
  if (!qword_27FF79420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77320, &qword_264791240);
    sub_264757148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79420);
  }

  return result;
}

unint64_t sub_264757148()
{
  result = qword_27FF79428;
  if (!qword_27FF79428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77338, &qword_26478CA90);
    sub_26460CDF0(&qword_27FF79430, &qword_27FF79438, &unk_264791940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79428);
  }

  return result;
}

uint64_t sub_264757288(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264757310()
{
  result = qword_27FF79450;
  if (!qword_27FF79450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79458, &qword_264791958);
    sub_264757394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79450);
  }

  return result;
}

unint64_t sub_264757394()
{
  result = qword_27FF79460;
  if (!qword_27FF79460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79468, &unk_264791960);
    sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79460);
  }

  return result;
}

uint64_t sub_264757458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
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

uint64_t sub_2647574E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for SafetyMonitorUINavigationPathItem()
{
  result = qword_27FF79470;
  if (!qword_27FF79470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2647575C0()
{
  sub_264757618();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_264757618()
{
  if (!qword_27FF79480)
  {
    sub_264757660();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF79480);
    }
  }
}

void sub_264757660()
{
  if (!qword_27FF79488)
  {
    type metadata accessor for SafetyCacheMapView.Annotation(255);
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF79488);
    }
  }
}

uint64_t sub_264757720(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafetyMonitorUINavigationPathItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264757764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647577C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264757838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264757898()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647578D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

id sub_264757908(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = result;
    v4 = a2;

    return v5;
  }

  return result;
}

uint64_t ExampleDataList.init(isInSettings:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ExampleDataList();
  v5 = a2 + *(v4 + 20);
  result = sub_2647852E4();
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_264757A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26460CCE8(v2, &v17 - v11, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264783F74();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}