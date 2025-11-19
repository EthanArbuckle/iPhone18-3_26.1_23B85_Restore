uint64_t MessageDeviceCapabilityLookup.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MessageDeviceCapabilityLookup.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F085770(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22F085798, 0, 0);
}

uint64_t sub_22F085798()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22F08671C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_22F0834D8(v7, v5, v3, v2);
}

uint64_t sub_22F085848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_22F085874, 0, 0);
}

uint64_t sub_22F085874()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = String.trimToNil()();
  v0[7] = v3.value._object;
  if (v3.value._object)
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_22F086720;
    v5 = v0[6];
    v6 = v0[2];
    v7 = v0[3];

    return sub_22F0834D8(v6, v7, v3.value._countAndFlagsBits, v3.value._object);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEF60, 500);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22F085994(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v39 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v2, 0);
    v34 = v39;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_22F0D13FC();
    v6 = result;
    v7 = 0;
    v28 = v1 + 72;
    v29 = v2;
    v30 = v1 + 64;
    v31 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v7;
      v33 = *(v1 + 36);
      sub_22F003428(*(v1 + 48) + 40 * v6, v38);
      v37[3] = MEMORY[0x277D84030];
      v37[0] = swift_allocObject();
      sub_22F003428(v38, v37[0] + 16);
      sub_22F003598(v37, &v35);
      v35 = sub_22F0D0CFC();
      v36 = v10;
      sub_22F00901C();
      v11 = sub_22F0D137C();
      v13 = v12;

      v35 = v11;
      v36 = v13;
      v14 = sub_22F0D137C();
      v16 = v15;

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      result = sub_22F003484(v38);
      v17 = v34;
      v39 = v34;
      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22EFFC4E8((v18 > 1), v19 + 1, 1);
        v17 = v39;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v1 = v31;
      v8 = 1 << *(v31 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v4 = v30;
      v21 = *(v30 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v17;
      if (v33 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_22F0097CC(v6, v33, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_22F0097CC(v6, v33, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v8;
      if (v32 + 1 == v29)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_22F085D00(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  for (i = (a1 + 40); ; i += 2)
  {
    v38 = v3;
    v6 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v4;
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *a2;
    v11 = v40;
    *a2 = 0x8000000000000000;
    v12 = sub_22EFFDA80(v6, v7);
    v14 = *(v11 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (*(v11 + 24) < v17)
    {
      sub_22F07BF20(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_22EFFDA80(v6, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      v20 = v40;
      if (v18)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v23 = v12;
    sub_22F0611A8();
    v12 = v23;
    v20 = v40;
    if (v18)
    {
LABEL_10:
      v21 = v20[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v8;

      goto LABEL_14;
    }

LABEL_12:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v24 = (v20[6] + 16 * v12);
    *v24 = v6;
    v24[1] = v7;
    *(v20[7] + 8 * v12) = v8;
    v25 = v20[2];
    v16 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v20[2] = v26;
LABEL_14:
    *a2 = v20;
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v27 = sub_22F0D0A1C();
    __swift_project_value_buffer(v27, qword_27DAA1A28);
    sub_22F0CFF1C();
    v28 = v8;
    v29 = sub_22F0D09FC();
    v30 = sub_22F0D124C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315394;
      v33 = FAFamilyMember.displayNameWithFallback.getter();
      v35 = sub_22F00A560(v33, v34, &v40);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_22F00A560(v6, v7, &v40);
      _os_log_impl(&dword_22EFE1000, v29, v30, "Checking IDS for %s with registered %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v32, -1, -1);
      v36 = v31;
      v4 = a3;
      MEMORY[0x2318FE8B0](v36, -1, -1);
    }

    v3 = v38 - 1;
    if (v38 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F08602C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22F086074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookupProvider.buildIMessageCompatibilityList(people:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22F00CF60;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookupProvider.buildCompatibilityList(people:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22F00CF60;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookup.buildIMessageCompatibilityList(people:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F00CF60;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MessageDeviceCapabilityLookup.buildCompatibilityList(people:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22F00CD54;

  return v14(a1, a2, a3, a4);
}

void sub_22F086624(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *(v2 + v9 + 8);
  v14 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_22F084230(a1, a2, v2 + v6, v10, v11, v12, v13, v14);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

id sub_22F086724()
{
  result = sub_22F086850(0xD000000000000018, 0x800000022F0DF190, 407);
  qword_27DAACEC8 = result;
  return result;
}

id sub_22F086760()
{
  result = sub_22F086850(0xD00000000000002ALL, 0x800000022F0DF130, 502);
  qword_27DAACED0 = result;
  return result;
}

id sub_22F08679C()
{
  result = sub_22F086850(0xD000000000000027, 0x800000022F0DF160, 420);
  qword_27DAACED8 = result;
  return result;
}

id sub_22F0867D8()
{
  result = sub_22F086850(0xD00000000000002CLL, 0x800000022F0DF0E0, 420);
  qword_27DAACEE0 = result;
  return result;
}

id sub_22F086814()
{
  result = sub_22F086850(0xD000000000000020, 0x800000022F0DF1B0, 500);
  qword_27DAACEE8 = result;
  return result;
}

id sub_22F086850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC0, &qword_22F0D94F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  v6 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22F0D0CAC();
  *(inited + 40) = v7;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v19 = a2;
  v10 = sub_22F0D031C();
  v12 = v11;

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_22F07D584(inited);
  swift_setDeallocating();
  sub_22F086A04(inited + 32);
  sub_22F00DD94(v13);

  v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v15 = sub_22F0D0C7C();
  v16 = sub_22F0D0AEC();

  v17 = [v14 initWithDomain:v15 code:a3 userInfo:{v16, v19}];

  return v17;
}

uint64_t sub_22F086A04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC8, &qword_22F0D9500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL LocationItem.expired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocationItem(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v48 = &v43 - v18;
  sub_22F0D05AC();
  v45 = v2;
  v19 = *(v2 + 24);
  if (qword_27DAA0658 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27DAA2228);
  v20 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v9, v5);
  sub_22F0D054C();
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBDB50);
  v22 = v47;
  sub_22F08A2D4(v1, v47);
  v23 = v11[2];
  v24 = v46;
  v49 = v17;
  v23(v46, v17, v10);
  v25 = sub_22F0D09FC();
  v26 = sub_22F0D122C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v27 = 136315394;
    v28 = *(v45 + 24);
    sub_22F08A338(&qword_27DAA1670, MEMORY[0x277CC9578]);
    v29 = sub_22F0D183C();
    v31 = v30;
    sub_22F08A380(v22, type metadata accessor for LocationItem);
    v32 = sub_22F00A560(v29, v31, &v50);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = sub_22F0D183C();
    v35 = v34;
    v36 = v11[1];
    v36(v24, v10);
    v37 = sub_22F00A560(v33, v35, &v50);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_22EFE1000, v25, v26, "LocationItem from %s expires %s", v27, 0x16u);
    v38 = v44;
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v38, -1, -1);
    MEMORY[0x2318FE8B0](v27, -1, -1);
  }

  else
  {

    v36 = v11[1];
    v36(v24, v10);
    sub_22F08A380(v22, type metadata accessor for LocationItem);
  }

  sub_22F08A338(&qword_27DAA13D0, MEMORY[0x277CC9578]);
  v40 = v48;
  v39 = v49;
  v41 = sub_22F0D0BBC();
  v36(v39, v10);
  v36(v40, v10);
  return (v41 & 1) == 0;
}

uint64_t LocationItem.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22F0CFF1C();
  return v1;
}

id LocationItem.init(with:for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_22F0D01DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationItem(0);
  v14 = *(v13 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA0, &qword_22F0D4F80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22F0D6710;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  v28 = v14;
  *(a4 + v14) = v15;
  *a4 = a2;
  a4[1] = a3;
  if (a1[1])
  {
    v16 = *a1;
    v17 = a1[1];
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v29 = v16;
  v30 = v17;
  sub_22F0CFF1C();
  sub_22F0D01CC();
  sub_22F00901C();
  v18 = sub_22F0D136C();
  v20 = v19;
  (*(v9 + 8))(v12, v8);

  a4[2] = v18;
  a4[3] = v20;
  v21 = a4 + *(v13 + 24);
  sub_22F0D05AC();
  v22 = *(a1 + *(type metadata accessor for PeopleLocation() + 32));
  result = [v22 coordinate];
  if (*(v15 + 16))
  {
    *(v15 + 32) = v24;
    [v22 coordinate];
    v26 = v25;
    result = sub_22F08A380(a1, type metadata accessor for PeopleLocation);
    if (*(v15 + 16) >= 2uLL)
    {
      *(v15 + 40) = v26;
      *(a4 + v28) = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static LocationItem.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_22F0D188C(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_22F0D188C();
    }
  }

  return result;
}

uint64_t LocationItem.hasMoved(from:)(uint64_t a1)
{
  v3 = type metadata accessor for LocationItem(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v57 - v12);
  v14 = *(a1 + *(v11 + 28));
  v15 = *(v14 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v15 == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v14 + 32) longitude:*(v14 + 40)];
  [v16 coordinate];
  v18 = v17;

  if (v18 == 0.0)
  {
    goto LABEL_7;
  }

  v19 = *(v14 + 16);
  if (!v19)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v19 == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v14 + 32) longitude:*(v14 + 40)];
  [v20 coordinate];
  v18 = v21;

  if (v18 != 0.0)
  {
    v28 = *(v1 + *(v3 + 28));
    v29 = *(v28 + 16);
    if (v29)
    {
      if (v29 != 1)
      {
        v18 = *(v28 + 32);
        v30 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v18 longitude:*(v28 + 40)];
        v31 = *(v14 + 16);
        if (v31)
        {
          if (v31 != 1)
          {
            v32 = v30;
            v33 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v14 + 32) longitude:*(v14 + 40)];
            [v32 distanceFromLocation_];
            v18 = v34;

            if (qword_27DAA04D8 == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          swift_once();
LABEL_16:
          v35 = *(off_27DAA1450 + 9);
          v60 = v35 <= v18;
          if (qword_280CBDB48 != -1)
          {
            swift_once();
          }

          v36 = sub_22F0D0A1C();
          __swift_project_value_buffer(v36, qword_280CBDB50);
          sub_22F08A2D4(v1, v13);
          sub_22F08A2D4(v1, v10);
          sub_22F08A2D4(a1, v7);
          v37 = sub_22F0D09FC();
          v38 = sub_22F0D124C();
          if (!os_log_type_enabled(v37, v38))
          {

            sub_22F08A380(v13, type metadata accessor for LocationItem);
            sub_22F08A380(v7, type metadata accessor for LocationItem);
            sub_22F08A380(v10, type metadata accessor for LocationItem);
            return v60;
          }

          v59 = v38;
          v39 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v63 = v58;
          *v39 = 136316418;
          *(v39 + 4) = sub_22F00A560(0x6465766F4D736168, 0xEF293A6D6F726628, &v63);
          *(v39 + 12) = 2080;
          v40 = *v13;
          v41 = v13[1];
          sub_22F0CFF1C();
          sub_22F08A380(v13, type metadata accessor for LocationItem);
          v42 = sub_22F00A560(v40, v41, &v63);

          *(v39 + 14) = v42;
          *(v39 + 22) = 2080;
          v43 = *&v10[*(v3 + 28)];
          v44 = *(v43 + 16);
          if (v44)
          {
            v57 = v37;
            if (v44 != 1)
            {
              v45 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v43 + 32) longitude:*(v43 + 40)];
              v61 = 0;
              v62 = 0xE000000000000000;
              [v45 coordinate];
              sub_22F0D111C();
              MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
              [v45 &protocolRef_NSCopying];
              sub_22F0D111C();

              v46 = v61;
              v47 = v62;
              sub_22F08A380(v10, type metadata accessor for LocationItem);
              v48 = sub_22F00A560(v46, v47, &v63);

              *(v39 + 24) = v48;
              *(v39 + 32) = 2080;
              v49 = *&v7[*(v3 + 28)];
              v50 = *(v49 + 16);
              if (v50)
              {
                if (v50 != 1)
                {
                  v51 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v49 + 32) longitude:*(v49 + 40)];
                  v61 = 0;
                  v62 = 0xE000000000000000;
                  [v51 coordinate];
                  sub_22F0D111C();
                  MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
                  [v51 coordinate];
                  sub_22F0D111C();

                  v52 = v61;
                  v53 = v62;
                  sub_22F08A380(v7, type metadata accessor for LocationItem);
                  v54 = sub_22F00A560(v52, v53, &v63);

                  *(v39 + 34) = v54;
                  *(v39 + 42) = 2048;
                  *(v39 + 44) = v18;
                  *(v39 + 52) = 1024;
                  *(v39 + 54) = v35 <= v18;
                  v55 = v57;
                  _os_log_impl(&dword_22EFE1000, v57, v59, "%s %s [%s] vs [%s] is %f apart, moved: %{BOOL}d", v39, 0x3Au);
                  v56 = v58;
                  swift_arrayDestroy();
                  MEMORY[0x2318FE8B0](v56, -1, -1);
                  MEMORY[0x2318FE8B0](v39, -1, -1);

                  return v60;
                }

                goto LABEL_38;
              }

LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
              return result;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_7:
  if (qword_280CBDB48 != -1)
  {
LABEL_27:
    swift_once();
  }

  v22 = sub_22F0D0A1C();
  __swift_project_value_buffer(v22, qword_280CBDB50);
  v23 = sub_22F0D09FC();
  v24 = sub_22F0D124C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v61 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_22F00A560(0x6465766F4D736168, 0xEF293A6D6F726628, &v61);
    _os_log_impl(&dword_22EFE1000, v23, v24, "%s incoming coord is nullIsland, returning changed", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2318FE8B0](v26, -1, -1);
    MEMORY[0x2318FE8B0](v25, -1, -1);
  }

  return 1;
}

uint64_t sub_22F087A7C()
{
  v1 = 0x656C646E6168;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x676E6C74616C5FLL;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_22F087AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F08AA44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F087B14(uint64_t a1)
{
  v2 = sub_22F08A3E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F087B50(uint64_t a1)
{
  v2 = sub_22F08A3E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DD0, &qword_22F0D9510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F08A3E0();
  sub_22F0D19FC();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  sub_22F0D17CC();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v21 = 1;
    sub_22F0D17CC();
    v16 = type metadata accessor for LocationItem(0);
    v17 = *(v16 + 24);
    v20 = 2;
    sub_22F0D05BC();
    sub_22F08A338(&qword_280CBDC10, MEMORY[0x277CC9578]);
    sub_22F0D180C();
    v19 = *(v3 + *(v16 + 28));
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DE0, &qword_22F0D9518);
    sub_22F08A434(&qword_27DAA1DE8);
    sub_22F0D180C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LocationItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_22F0D05BC();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DF0, &qword_22F0D9520);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for LocationItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F08A3E0();
  v27 = v10;
  v16 = v28;
  sub_22F0D19EC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v25;
  v33 = 0;
  *v14 = sub_22F0D177C();
  v14[1] = v18;
  v28 = v18;
  v32 = 1;
  v14[2] = sub_22F0D177C();
  v14[3] = v19;
  v31 = 2;
  sub_22F08A338(&unk_280CBDC00, MEMORY[0x277CC9578]);
  v22 = 0;
  sub_22F0D17BC();
  (*(v24 + 32))(v14 + *(v11 + 24), v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DE0, &qword_22F0D9518);
  v30 = 3;
  sub_22F08A434(&qword_27DAA1DF8);
  sub_22F0D17BC();
  v20 = *(v11 + 28);
  (*(v17 + 8))(v27, v26);
  *(v14 + v20) = v29;
  sub_22F08A2D4(v14, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_22F08A380(v14, type metadata accessor for LocationItem);
}

uint64_t sub_22F0882AC(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_22F0D188C(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_22F0D188C();
    }
  }

  return result;
}

uint64_t sub_22F088334()
{
  v0 = type metadata accessor for LocalLocationCache(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_22F0885FC();
  qword_280CBD628 = v3;
  return result;
}

uint64_t static LocalLocationCache.shared.getter()
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_22F0CFFAC();
}

uint64_t static LocalLocationCache.shared.setter(uint64_t a1)
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CBD628 = a1;
  return sub_22F0D00CC();
}

uint64_t (*static LocalLocationCache.shared.modify())()
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F0884F4@<X0>(void *a1@<X8>)
{
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280CBD628;
  return sub_22F0CFFAC();
}

uint64_t sub_22F088574(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280CBD620;
  sub_22F0CFFAC();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CBD628 = v1;
  return sub_22F0D00CC();
}

uint64_t sub_22F0885FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v81 - v6;
  v7 = sub_22F0D043C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v81 - v11;
  v90 = v13;
  v91 = v12;
  v14 = *(v13 + 56);
  v92 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  v85 = v14;
  v86 = v13 + 56;
  (v14)(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, 1, 1);
  v15 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  v16 = sub_22F07DB98(MEMORY[0x277D84F90]);
  v93 = v15;
  *(v1 + v15) = v16;
  if (qword_280CBEF20 != -1)
  {
LABEL_38:
    swift_once();
  }

  v17 = [qword_280CBEF28 dictionaryRepresentation];
  v18 = sub_22F0D0AFC();

  v19 = 0;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v19;
    if (!v22)
    {
      break;
    }

LABEL_9:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = (*(v18 + 48) + ((v19 << 10) | (16 * v26)));
    v29 = *v27;
    v28 = v27[1];
    sub_22F0CFF1C();
    if (sub_22F088E74())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22EFFC4E8(0, *(v24 + 16) + 1, 1);
        v24 = v95[0];
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v83 = v32 + 1;
        v82 = v32;
        sub_22EFFC4E8((v31 > 1), v32 + 1, 1);
        v33 = v83;
        v32 = v82;
        v24 = v95[0];
      }

      *(v24 + 16) = v33;
      v34 = v24 + 16 * v32;
      *(v34 + 32) = v29;
      *(v34 + 40) = v28;
    }

    else
    {
    }
  }

  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v19 >= v23)
    {
      break;
    }

    v22 = *(v18 + 64 + 8 * v19);
    ++v25;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  sub_22F0D00CC();
  v35 = *(v24 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = (v24 + 40);
    while (v36 < *(v24 + 16))
    {
      ++v36;
      v39 = *(v37 - 1);
      v38 = *v37;
      v40 = qword_280CBEF28;
      sub_22F0CFF1C();
      v41 = v40;
      v42 = sub_22F0D0C7C();
      [v41 removeObjectForKey_];

      v37 += 2;
      if (v35 == v36)
      {
        sub_22F0D00CC();
        [qword_280CBEF28 synchronize];
        goto LABEL_22;
      }
    }

    goto LABEL_37;
  }

  sub_22F0D00CC();
LABEL_22:
  v43 = v89;
  static PeopleSharedDirectory.cacheFolder(create:)(1, v89);
  v44 = v90;
  v45 = v91;
  v46 = *(v90 + 48);
  if (v46(v43, 1, v91) == 1)
  {
    sub_22F003A4C(v43, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v47 = sub_22F0D0A1C();
    __swift_project_value_buffer(v47, qword_280CBEC40);
    v48 = sub_22F0D09FC();
    v49 = sub_22F0D123C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v95[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_22F00A560(0x292874696E69, 0xE600000000000000, v95);
      _os_log_impl(&dword_22EFE1000, v48, v49, "%s failed to create cache file", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x2318FE8B0](v51, -1, -1);
      v52 = v50;
      v45 = v91;
      MEMORY[0x2318FE8B0](v52, -1, -1);
    }
  }

  else
  {
    v53 = v87;
    (*(v44 + 32))(v87, v43, v45);
    v54 = v88;
    sub_22F0D03BC();
    v85(v54, 0, 1, v45);
    v55 = v92;
    swift_beginAccess();
    sub_22F08AD1C(v54, v1 + v55);
    swift_endAccess();
    v56 = sub_22F089400();
    (*(v44 + 8))(v53, v45);
    v57 = v93;
    swift_beginAccess();
    v58 = *(v1 + v57);
    *(v1 + v57) = v56;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v59 = sub_22F0D0A1C();
  __swift_project_value_buffer(v59, qword_280CBEC40);
  sub_22F0CFFAC();
  v60 = sub_22F0D09FC();
  v61 = sub_22F0D122C();
  sub_22F0D00CC();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v92;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v94 = v65;
    *v64 = 136315394;
    *(v64 + 4) = sub_22F00A560(0x292874696E69, 0xE600000000000000, &v94);
    *(v64 + 12) = 2080;
    swift_beginAccess();
    v66 = v46(v1 + v63, 1, v45);
    v67 = 0;
    v68 = v63;
    v69 = v45;
    v70 = 0;
    if (!v66)
    {
      v71 = v90;
      v72 = v84;
      (*(v90 + 16))(v84, v1 + v68, v69);
      v67 = sub_22F0D038C();
      v70 = v73;
      (*(v71 + 8))(v72, v69);
    }

    v95[0] = v67;
    v95[1] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D8, &unk_22F0D6A00);
    v74 = sub_22F0D0CFC();
    v76 = sub_22F00A560(v74, v75, &v94);

    *(v64 + 14) = v76;
    _os_log_impl(&dword_22EFE1000, v60, v61, "%s path %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v65, -1, -1);
    MEMORY[0x2318FE8B0](v64, -1, -1);
  }

  v77 = sub_22F089400();
  v78 = v93;
  swift_beginAccess();
  v79 = *(v1 + v78);
  *(v1 + v78) = v77;

  return v1;
}

uint64_t sub_22F088E74()
{
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v0 = sub_22F0D0D9C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_22F0D0D9C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_22F0D188C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_22F0D0D9C();
      v3 = v5;
    }

    while (v5);
  }

  sub_22F0D0D9C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_22F088FD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - v4;
  v6 = sub_22F0D043C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  swift_beginAccess();
  sub_22F036154(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22F003A4C(v5, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v12 = sub_22F0D0A1C();
    __swift_project_value_buffer(v12, qword_280CBEC40);
    v13 = sub_22F0D09FC();
    v14 = sub_22F0D123C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_22F00A560(0x292865766173, 0xE600000000000000, &v25);
      _os_log_impl(&dword_22EFE1000, v13, v14, "%s failed to get directory", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2318FE8B0](v16, -1, -1);
      MEMORY[0x2318FE8B0](v15, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v17 = sub_22F0D016C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_22F0D015C();
    v20 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
    swift_beginAccess();
    v24[1] = *(v1 + v20);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08AC60();
    v21 = sub_22F0D014C();
    v23 = v22;
    sub_22F0D00CC();

    sub_22F0D04AC();
    (*(v7 + 8))(v10, v6);
    sub_22F00AB5C(v21, v23);
  }
}

unint64_t sub_22F089400()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29[-v3];
  v5 = sub_22F0D043C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC6People18LocalLocationCache_cachePath;
  swift_beginAccess();
  sub_22F036154(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22F003A4C(v4, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_280CBEC40);
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D123C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_22F00A560(0x292864616F6CLL, 0xE600000000000000, &v30);
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s failed to get directory", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318FE8B0](v15, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    return sub_22F07DB98(MEMORY[0x277D84F90]);
  }

  (*(v6 + 32))(v9, v4, v5);
  v17 = sub_22F0D044C();
  v19 = v17;
  v20 = v18;
  v21 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v21 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v21)
  {
    if ((v18 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v22 = sub_22F0D013C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_22F0D012C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08ABA4();
    sub_22F0D011C();
    (*(v6 + 8))(v9, v5);
    sub_22F00AB5C(v19, v20);
    sub_22F0D00CC();
    return v30;
  }

  if (v17 != v17 >> 32)
  {
    goto LABEL_13;
  }

LABEL_15:
  v25 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DF260, 500);
  swift_willThrow();
  sub_22F00AB5C(v19, v20);
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v26 = sub_22F0D0A1C();
  __swift_project_value_buffer(v26, qword_280CBEC40);
  v27 = v25;
  Logger.ifError(_:message:)(v25);

  v28 = sub_22F07DB98(MEMORY[0x277D84F90]);
  (*(v6 + 8))(v9, v5);
  return v28;
}

void sub_22F0898A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocationItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = (&v38 - v10);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_15:
    sub_22F088FD0();
    return;
  }

  v12 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  while (1)
  {
    v39 = v11;
    v18 = v38;
    sub_22F08A2D4(v13, v38);
    v20 = *v18;
    v19 = v18[1];
    swift_beginAccess();
    v21 = v8;
    sub_22F08A4A0(v18, v8);
    sub_22F0CFF1C();
    v22 = *(v2 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v2 + v12);
    v24 = v40;
    v25 = v2;
    *(v2 + v12) = 0x8000000000000000;
    v26 = sub_22EFFDA80(v20, v19);
    v28 = v24[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v24[3] < v31)
    {
      sub_22F07BF34(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22EFFDA80(v20, v19);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v8 = v21;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v26;
    sub_22F0611BC();
    v26 = v37;
    v8 = v21;
    if (v32)
    {
LABEL_3:
      v15 = v26;

      v16 = v40;
      sub_22F08A504(v8, v40[7] + v15 * v14);
      goto LABEL_4;
    }

LABEL_11:
    v16 = v40;
    v40[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v16[6] + 16 * v26);
    *v34 = v20;
    v34[1] = v19;
    sub_22F08A4A0(v8, v16[7] + v26 * v14);
    v35 = v16[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v16[2] = v36;
LABEL_4:
    v2 = v25;
    v17 = *(v25 + v12);
    *(v25 + v12) = v16;

    swift_endAccess();
    v13 += v14;
    v11 = v39 - 1;
    if (v39 == 1)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F089B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22F0D01DC();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_22F0D05BC();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for LocationItem(0);
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  sub_22F0D10AC();
  v4[20] = sub_22F0D109C();
  v15 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F089D08, v15, v14);
}

id sub_22F089D08()
{
  v1 = v0[20];
  v2 = v0[10];
  sub_22F0D00CC();
  v3 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!*(v4 + 16))
  {
LABEL_5:
    v11 = v0[17];
    v35 = v11;
    v36 = v0[16];
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v37 = v0[11];
    v38 = v0[14];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    v18 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
    sub_22F0D04EC();
    v19 = *(v11 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA0, &qword_22F0D4F80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22F0D6710;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *&v17[v19] = v20;
    *v17 = v16;
    *(v17 + 1) = v15;
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_22F0CFF1C();
    sub_22F0D01CC();
    sub_22F00901C();
    v21 = sub_22F0D136C();
    v23 = v22;
    (*(v13 + 8))(v14, v37);
    *(v17 + 2) = v21;
    *(v17 + 3) = v23;
    (*(v12 + 16))(&v17[*(v35 + 24)], v36, v38);
    result = [v18 coordinate];
    if (*(v20 + 16))
    {
      v27 = v0[15];
      v26 = v0[16];
      v28 = v0[14];
      *(v20 + 32) = v25;
      [v18 coordinate];
      v30 = v29;

      result = (*(v27 + 8))(v26, v28);
      if (*(v20 + 16) >= 2uLL)
      {
        *(v20 + 40) = v30;
        *&v17[v19] = v20;
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v6 = v0[8];
  v5 = v0[9];
  sub_22F0CFF1C();
  v7 = sub_22EFFDA80(v6, v5);
  if ((v8 & 1) == 0)
  {

    goto LABEL_5;
  }

  v9 = v0[19];
  v10 = v0[7];
  sub_22F08A2D4(*(v4 + 56) + *(v0[18] + 72) * v7, v9);

  sub_22F08A4A0(v9, v10);
LABEL_8:
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[13];

  v34 = v0[1];

  return v34();
}

void sub_22F089FAC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E00, &unk_22F0D9530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC6People18LocalLocationCache_items;
    v10 = (a1 + 40);
    v28 = &v27 - v6;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      swift_beginAccess();
      v14 = *(v2 + v9);
      sub_22F0CFF1C();
      v15 = sub_22EFFDA80(v13, v12);
      if (v16)
      {
        v17 = v15;
        v18 = *(v2 + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v2 + v9);
        v29 = v20;
        *(v2 + v9) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22F0611BC();
          v20 = v29;
        }

        v21 = *(*(v20 + 48) + 16 * v17 + 8);

        v22 = *(v20 + 56);
        v23 = type metadata accessor for LocationItem(0);
        v24 = *(v23 - 8);
        v25 = v22 + *(v24 + 72) * v17;
        v7 = v28;
        sub_22F08A4A0(v25, v28);
        sub_22F05F634(v17, v20);
        v26 = *(v2 + v9);
        *(v2 + v9) = v20;

        (*(v24 + 56))(v7, 0, 1, v23);
      }

      else
      {
        v11 = type metadata accessor for LocationItem(0);
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      }

      sub_22F003A4C(v7, &qword_27DAA1E00, &unk_22F0D9530);
      swift_endAccess();

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  sub_22F088FD0();
}

uint64_t LocalLocationCache.deinit()
{
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, &qword_27DAA10F8, &qword_22F0D5320);
  v1 = *(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_items);

  return v0;
}

uint64_t LocalLocationCache.__deallocating_deinit()
{
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_cachePath, &qword_27DAA10F8, &qword_22F0D5320);
  v1 = *(v0 + OBJC_IVAR____TtC6People18LocalLocationCache_items);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F08A2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F08A338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F08A380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F08A3E0()
{
  result = qword_27DAA1DD8;
  if (!qword_27DAA1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1DD8);
  }

  return result;
}

uint64_t sub_22F08A434(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1DE0, &qword_22F0D9518);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F08A4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F08A504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F08A590()
{
  sub_22F0D05BC();
  if (v0 <= 0x3F)
  {
    sub_22F08A624();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F08A624()
{
  if (!qword_280CBD160)
  {
    v0 = sub_22F0D103C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBD160);
    }
  }
}

void sub_22F08A69C()
{
  sub_22F08A8D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LocalLocationCache.load(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22F00CD54;

  return v12(a1, a2, a3);
}

void sub_22F08A8D4()
{
  if (!qword_280CBDC18)
  {
    sub_22F0D043C();
    v0 = sub_22F0D132C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBDC18);
    }
  }
}

unint64_t sub_22F08A940()
{
  result = qword_27DAA1E08;
  if (!qword_27DAA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E08);
  }

  return result;
}

unint64_t sub_22F08A998()
{
  result = qword_27DAA1E10;
  if (!qword_27DAA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E10);
  }

  return result;
}

unint64_t sub_22F08A9F0()
{
  result = qword_27DAA1E18;
  if (!qword_27DAA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E18);
  }

  return result;
}

uint64_t sub_22F08AA44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F0D188C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_22F0D188C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F0D188C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6C74616C5FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F0D188C();

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

unint64_t sub_22F08ABA4()
{
  result = qword_27DAA1E28;
  if (!qword_27DAA1E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08A338(&qword_27DAA1E30, type metadata accessor for LocationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E28);
  }

  return result;
}

unint64_t sub_22F08AC60()
{
  result = qword_280CBD190;
  if (!qword_280CBD190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1E20, &qword_22F0D9718);
    sub_22F08A338(&qword_280CBD768, type metadata accessor for LocationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD190);
  }

  return result;
}

uint64_t sub_22F08AD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AMSBagHelper.isTrustedDomain(for:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_22F0D043C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D042C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22F003A4C(v7, &qword_27DAA10F8, &qword_22F0D5320);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v13 = sub_22F0D0A1C();
    __swift_project_value_buffer(v13, qword_27DAA1A28);
    sub_22F0CFF1C();
    v14 = sub_22F0D09FC();
    v15 = sub_22F0D123C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22F00A560(a1, a2, &v21);
      _os_log_impl(&dword_22EFE1000, v14, v15, "%s unable to be validated", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2318FE8B0](v17, -1, -1);
      MEMORY[0x2318FE8B0](v16, -1, -1);
    }

    v18 = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v18 = sub_22F08B03C(v12);
    (*(v9 + 8))(v12, v8);
  }

  return v18 & 1;
}

uint64_t sub_22F08B03C(uint64_t a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = sub_22F0D043C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v80 - v8;
  v87 = sub_22F0D01DC();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v87);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22F0D037C();
  v86 = *(v90 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D041C();
  if (!v16)
  {
    goto LABEL_31;
  }

  v88 = v7;
  v17 = sub_22F0D0D0C();
  v19 = v18;

  if (v17 == 0x7370747468 && v19 == 0xE500000000000000)
  {

    v20 = v10;
    v21 = v9;
    goto LABEL_6;
  }

  v22 = sub_22F0D188C();

  v20 = v10;
  v21 = v9;
  v7 = v88;
  if ((v22 & 1) == 0)
  {
LABEL_31:
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v58 = sub_22F0D0A1C();
    __swift_project_value_buffer(v58, qword_27DAA1A28);
    (*(v3 + 16))(v7, a1, v2);
    v59 = sub_22F0D09FC();
    v60 = sub_22F0D123C();
    if (!os_log_type_enabled(v59, v60))
    {

      (*(v3 + 8))(v7, v2);
LABEL_45:
      v47 = 0;
      goto LABEL_46;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v95 = v62;
    *v61 = 136315138;
    v63 = sub_22F0D038C();
    v65 = v64;
    (*(v3 + 8))(v7, v2);
    v66 = sub_22F00A560(v63, v65, &v95);

    *(v61 + 4) = v66;
    v67 = "%s bad scheme";
LABEL_40:
    _os_log_impl(&dword_22EFE1000, v59, v60, v67, v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x2318FE8B0](v62, -1, -1);
    MEMORY[0x2318FE8B0](v61, -1, -1);

    goto LABEL_45;
  }

LABEL_6:
  v88 = sub_22F0D03FC();
  if (!v23)
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v68 = sub_22F0D0A1C();
    __swift_project_value_buffer(v68, qword_27DAA1A28);
    (*(v3 + 16))(v21, a1, v2);
    v59 = sub_22F0D09FC();
    v60 = sub_22F0D123C();
    if (!os_log_type_enabled(v59, v60))
    {

      (*(v3 + 8))(v21, v2);
      goto LABEL_45;
    }

    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v95 = v62;
    *v61 = 136315138;
    v69 = sub_22F0D038C();
    v71 = v70;
    (*(v3 + 8))(v21, v2);
    v72 = sub_22F00A560(v69, v71, &v95);

    *(v61 + 4) = v72;
    v67 = "%s can't determine host";
    goto LABEL_40;
  }

  v24 = v23;
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v25 = sub_22F0D0A1C();
  __swift_project_value_buffer(v25, qword_27DAA1A28);
  sub_22F0CFF1C();
  v26 = sub_22F0D09FC();
  v27 = sub_22F0D124C();

  v28 = os_log_type_enabled(v26, v27);
  v83 = v20;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v95 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_22F00A560(v88, v24, &v95);
    _os_log_impl(&dword_22EFE1000, v26, v27, "Validating domain: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2318FE8B0](v30, -1, -1);
    MEMORY[0x2318FE8B0](v29, -1, -1);
  }

  v31 = sub_22F0D0C7C();
  v32 = sub_22F0D0C7C();
  v33 = sub_22F0D0C7C();
  v34 = [objc_opt_self() bagForProfile:v32 profileVersion:v33];

  v35 = [v34 arrayForKey_];
  *&v95 = 0;
  v84 = v35;
  v36 = [v35 valueWithError_];
  if (!v36)
  {
    v73 = v95;

    v74 = sub_22F0D033C();

    swift_willThrow();
    v75 = sub_22F0D09FC();
    v76 = sub_22F0D123C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22EFE1000, v75, v76, "can't unpack trusted domains", v77, 2u);
      MEMORY[0x2318FE8B0](v77, -1, -1);
    }

    goto LABEL_45;
  }

  v37 = v36;
  v81 = v34;
  v82 = v31;
  v38 = v95;
  v39 = v37;
  v40 = sub_22F0D09FC();
  v41 = sub_22F0D122C();

  v42 = os_log_type_enabled(v40, v41);
  v85 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v85;
    *v44 = v37;
    v45 = v85;
    _os_log_impl(&dword_22EFE1000, v40, v41, "Domains %@", v43, 0xCu);
    sub_22F003A4C(v44, &qword_27DAA1260, &qword_22F0D5F48);
    MEMORY[0x2318FE8B0](v44, -1, -1);
    MEMORY[0x2318FE8B0](v43, -1, -1);
  }

  v46 = v24;

  sub_22F0D12BC();
  sub_22F08BB38();
  sub_22F0D134C();
  if (v96)
  {
    v47 = 0;
    v48 = (v83 + 8);
    v49 = v87;
    while (1)
    {
      sub_22EFFFA24(&v95, v94);
      sub_22F003598(v94, v93);
      if (swift_dynamicCast())
      {
        v50 = v91;
        v51 = v92;
      }

      else
      {
        v50 = 0;
        v51 = 0xE000000000000000;
      }

      v93[0] = v50;
      v93[1] = v51;
      sub_22F0D01CC();
      sub_22F00901C();
      v52 = sub_22F0D136C();
      v54 = v53;
      (*v48)(v13, v49);

      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        if (sub_22F0D0DFC())
        {
          v56 = sub_22F0D0E0C();
LABEL_30:
          v57 = v56;

          __swift_destroy_boxed_opaque_existential_1Tm(v94);
          v47 |= v57;
          v49 = v87;
          goto LABEL_17;
        }

        if (v52 != v88 || v46 != v54)
        {
          v56 = sub_22F0D188C();
          goto LABEL_30;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        v47 = 1;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
      }

LABEL_17:
      sub_22F0D134C();
      if (!v96)
      {
        goto LABEL_48;
      }
    }
  }

  v47 = 0;
LABEL_48:
  (*(v86 + 8))(v89, v90);

LABEL_46:
  v78 = *MEMORY[0x277D85DE8];
  return v47 & 1;
}

unint64_t sub_22F08BB38()
{
  result = qword_27DAA1E38;
  if (!qword_27DAA1E38)
  {
    sub_22F0D037C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1E38);
  }

  return result;
}

id sub_22F08BB94()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x6C616E7265746E49, 0xEE00726F72726520, 500);
  qword_27DAA1E40 = result;
  return result;
}

id static PeopleErrors.internalError.getter()
{
  if (qword_27DAA05C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA1E40;

  return v1;
}

id sub_22F08BC34()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000016, 0x800000022F0DF2D0, 417);
  qword_27DAACEF0 = result;
  return result;
}

id sub_22F08BC70()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DF2F0, 418);
  qword_27DAACEF8 = result;
  return result;
}

id sub_22F08BCAC()
{
  result = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD00000000000001FLL, 0x800000022F0DF2B0, 419);
  qword_27DAACF00 = result;
  return result;
}

id _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DC0, &qword_22F0D94F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  v6 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22F0D0CAC();
  *(inited + 40) = v7;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v19 = a2;
  v10 = sub_22F0D031C();
  v12 = v11;

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_22F07D584(inited);
  swift_setDeallocating();
  sub_22F086A04(inited + 32);
  sub_22F00DD94(v13);

  v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v15 = sub_22F0D0C7C();
  v16 = sub_22F0D0AEC();

  v17 = [v14 initWithDomain:v15 code:a3 userInfo:{v16, v19}];

  return v17;
}

uint64_t static BiomeHelper.createWith(_:useFamilyCache:resolveAppBundleInfo:withContactFetcher:bundleResolver:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 97) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(*(type metadata accessor for MessageDetails() - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F08BF54, 0, 0);
}

uint64_t sub_22F08BF54()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 24);
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_22F08C190;
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = *(v0 + 97);

    return sub_22F06801C(v7, v4, v8, v9);
  }

  else
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(v0 + 24);
      swift_unknownObjectRetain();
      sub_22F0D152C();

      v14 = [v12 description];
      v15 = sub_22F0D0CAC();
      v17 = v16;

      MEMORY[0x2318FD2C0](v15, v17);

      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000021, 0x800000022F0DF340, 500);

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000016, 0x800000022F0DF320, 500);
      swift_willThrow();
    }

    swift_willThrow();
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_22F08C190()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22F08C500;
  }

  else
  {
    v3 = sub_22F08C2A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F08C2A4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_22F011BE8(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_22F08C35C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 96);
  v8 = *(v0 + 16);

  return sub_22F03F290(v5, v6, v8, v7);
}

uint64_t sub_22F08C35C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22F08C584;
  }

  else
  {
    v3 = sub_22F08C470;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F08C470()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  sub_22F012058(v3);
  sub_22F011BE8(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22F08C500()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_willThrow();
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F08C584()
{
  v1 = v0[11];
  v2 = v0[2];
  swift_willThrow();
  sub_22F012058(v2);
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22F08C60C(int a1, uint64_t a2)
{
  v5 = sub_22F0D126C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22F0D0A6C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22F0D127C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = a2;
  v26 = sub_22F033250();
  v27 = a2;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_22F0D152C();
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DD990);
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  HIDWORD(v24) = a1;
  sub_22F032B24(a1);
  MEMORY[0x2318FD2C0](0x722E65756575715FLL, 0xED00007265646165);
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_22F0D0A5C();
  v28[0] = MEMORY[0x277D84F90];
  sub_22F08E660(&qword_280CBEC78, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  v14 = v25;
  sub_22F08E6A8(&qword_280CBEC80, &qword_27DAA1E90, qword_22F0DA870);
  sub_22F0D13EC();
  *(v14 + 16) = sub_22F0D129C();
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v15 = sub_22F0D0A1C();
  __swift_project_value_buffer(v15, qword_280CBDBE0);
  v16 = sub_22F0D09FC();
  v17 = sub_22F0D124C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136315138;
    if (BYTE4(v24) > 4u)
    {
      if (BYTE4(v24) <= 6u)
      {
        if (BYTE4(v24) == 5)
        {
          v21 = 0x617453646C696863;
          v20 = 0xEA00000000006574;
        }

        else
        {
          v20 = 0xED00006567617373;
          v21 = 0x654D646165726E75;
        }
      }

      else if (BYTE4(v24) == 7)
      {
        v21 = 0x7373654D64616572;
        v20 = 0xEB00000000656761;
      }

      else if (BYTE4(v24) == 8)
      {
        v20 = 0xEA00000000006C6CLL;
        v21 = 0x614364657373696DLL;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x7261646E656C6163;
      }
    }

    else if (BYTE4(v24) <= 1u)
    {
      if (BYTE4(v24))
      {
        v20 = 0xEB00000000657461;
        v21 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v20 = 0xEF7974696C696261;
        v21 = 0x6C69617641646E64;
      }
    }

    else if (BYTE4(v24) == 2)
    {
      v20 = 0xE800000000000000;
      v21 = 0x6E6F697461636F6CLL;
    }

    else if (BYTE4(v24) == 3)
    {
      v20 = 0xEF74736575716552;
      v21 = 0x7975426F546B7361;
    }

    else
    {
      v20 = 0x800000022F0DC350;
      v21 = 0xD000000000000011;
    }

    v22 = sub_22F00A560(v21, v20, v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22EFE1000, v16, v17, "BiomeStreamReader for %s init", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2318FE8B0](v19, -1, -1);
    MEMORY[0x2318FE8B0](v18, -1, -1);
  }

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_22F08CB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E60, &qword_22F0D5A58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_22F08CCD4(a3, a4, sub_22F00CEE4, v13);
  return sub_22F0D00CC();
}

uint64_t sub_22F08CCD4(int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45[-v8];
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v45[-v16];
  sub_22F0D05AC();
  v18 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v9, v5);
  sub_22F0D055C();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v20 = *(v4 + 24);
  if (v20)
  {
    sub_22F0D04CC();
    v21 = [v20 publisherFromStartTime_];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    sub_22F08D204(v46, v22, v47, v48);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v23 = v46;
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v24 = sub_22F0D0A1C();
    __swift_project_value_buffer(v24, qword_280CBDBE0);
    v25 = sub_22F0D09FC();
    v26 = sub_22F0D123C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = 136315138;
      if (v23 > 4u)
      {
        v37 = 0x7373654D64616572;
        v38 = 0xEB00000000656761;
        v39 = 0xEA00000000006C6CLL;
        v40 = 0x614364657373696DLL;
        if (v23 != 8)
        {
          v40 = 0x7261646E656C6163;
          v39 = 0xE800000000000000;
        }

        if (v23 != 7)
        {
          v37 = v40;
          v38 = v39;
        }

        v41 = 0x617453646C696863;
        v42 = 0xEA00000000006574;
        if (v23 != 5)
        {
          v41 = 0x654D646165726E75;
          v42 = 0xED00006567617373;
        }

        if (v23 <= 6u)
        {
          v35 = v41;
        }

        else
        {
          v35 = v37;
        }

        if (v23 <= 6u)
        {
          v36 = v42;
        }

        else
        {
          v36 = v38;
        }
      }

      else
      {
        v29 = 0xEF7974696C696261;
        v30 = 0x6C69617641646E64;
        v31 = 0xE800000000000000;
        v32 = 0x6E6F697461636F6CLL;
        v33 = 0xEF74736575716552;
        v34 = 0x7975426F546B7361;
        if (v23 != 3)
        {
          v34 = 0xD000000000000011;
          v33 = 0x800000022F0DC350;
        }

        if (v23 != 2)
        {
          v32 = v34;
          v31 = v33;
        }

        if (v23)
        {
          v30 = 0x74536E6F69746F6DLL;
          v29 = 0xEB00000000657461;
        }

        if (v23 <= 1u)
        {
          v35 = v30;
        }

        else
        {
          v35 = v32;
        }

        if (v23 <= 1u)
        {
          v36 = v29;
        }

        else
        {
          v36 = v31;
        }
      }

      v43 = sub_22F00A560(v35, v36, &v49);

      *(v27 + 4) = v43;
      _os_log_impl(&dword_22EFE1000, v25, v26, "%s serious errors, missing reader string!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2318FE8B0](v28, -1, -1);
      MEMORY[0x2318FE8B0](v27, -1, -1);
    }

    v47(MEMORY[0x277D84F90]);
  }

  return (v19)(v17, v10);
}

void sub_22F08D204(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  LOBYTE(v18) = a1;
  v11 = _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(&v18);
  v12 = [a2 withBookmark_];
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v10;
  v22 = sub_22F08E618;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09A628;
  v21 = &block_descriptor_8;
  v14 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v5;
  *(v15 + 32) = v10;
  v22 = sub_22F08E640;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22F09B8A8;
  v21 = &block_descriptor_20;
  v16 = _Block_copy(&v18);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v17 = [v12 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);
  sub_22F0D00CC();
  sub_22F0D00CC();
}

uint64_t sub_22F08D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22F0D0A4C();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22F0D0A6C();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  aBlock[4] = sub_22F08E654;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F009868;
  aBlock[3] = &block_descriptor_32;
  v21 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D0A5C();
  v26 = MEMORY[0x277D84F90];
  sub_22F08E660(&qword_27DAA1E70, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
  sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
  sub_22F0D13EC();
  MEMORY[0x2318FD7C0](0, v18, v14, v21);
  _Block_release(v21);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
  return sub_22F0D00CC();
}

uint64_t sub_22F08D720(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_22F08F590();
  swift_beginAccess();
  v6 = *(a4 + 16);
  if (v6 >> 62)
  {
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    v7 = sub_22F0D16AC();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_22F0D189C();
    v7 = v6;
  }

  v8 = _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v7);

  a2(v8);
}

void sub_22F08D808(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22F0D0A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F0D0A6C();
  v49 = *(v13 - 8);
  isa = v49[8].isa;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17 && (v18 = [v17 eventBody]) != 0)
  {
    v19 = v18;
    v48 = *(a3 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = v19;
    aBlock[4] = sub_22F08E64C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F009868;
    aBlock[3] = &block_descriptor_26;
    v21 = _Block_copy(aBlock);
    sub_22F0CFFAC();
    v47 = v19;
    sub_22F0D0A5C();
    v51 = MEMORY[0x277D84F90];
    sub_22F08E660(&qword_27DAA1E70, MEMORY[0x277D85198]);
    v46 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1398, &qword_22F0D61C8);
    sub_22F08E6A8(&qword_27DAA1E80, &qword_27DAA1398, &qword_22F0D61C8);
    sub_22F0D13EC();
    MEMORY[0x2318FD7C0](0, v16, v12, v21);
    swift_unknownObjectRelease();
    _Block_release(v21);

    (*(v9 + 8))(v12, v8);
    (v49[1].isa)(v16, v46);
    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CBDBD8 != -1)
    {
      swift_once();
    }

    v22 = sub_22F0D0A1C();
    __swift_project_value_buffer(v22, qword_280CBDBE0);
    swift_unknownObjectRetain();
    v49 = sub_22F0D09FC();
    v23 = sub_22F0D123C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v49, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315394;
      if (a2 > 4u)
      {
        v35 = 0x7373654D64616572;
        v36 = 0xEB00000000656761;
        v37 = 0xEA00000000006C6CLL;
        v38 = 0x614364657373696DLL;
        if (a2 != 8)
        {
          v38 = 0x7261646E656C6163;
          v37 = 0xE800000000000000;
        }

        if (a2 != 7)
        {
          v35 = v38;
          v36 = v37;
        }

        v39 = 0x617453646C696863;
        v40 = 0xEA00000000006574;
        if (a2 != 5)
        {
          v39 = 0x654D646165726E75;
          v40 = 0xED00006567617373;
        }

        if (a2 <= 6u)
        {
          v32 = v39;
        }

        else
        {
          v32 = v35;
        }

        if (a2 <= 6u)
        {
          v33 = v40;
        }

        else
        {
          v33 = v36;
        }
      }

      else
      {
        v26 = 0xEF7974696C696261;
        v27 = 0x6C69617641646E64;
        v28 = 0xE800000000000000;
        v29 = 0x6E6F697461636F6CLL;
        v30 = 0xEF74736575716552;
        v31 = 0x7975426F546B7361;
        if (a2 != 3)
        {
          v31 = 0xD000000000000011;
          v30 = 0x800000022F0DC350;
        }

        if (a2 != 2)
        {
          v29 = v31;
          v28 = v30;
        }

        if (a2)
        {
          v27 = 0x74536E6F69746F6DLL;
          v26 = 0xEB00000000657461;
        }

        if (a2 <= 1u)
        {
          v32 = v27;
        }

        else
        {
          v32 = v29;
        }

        if (a2 <= 1u)
        {
          v33 = v26;
        }

        else
        {
          v33 = v28;
        }
      }

      v41 = sub_22F00A560(v32, v33, aBlock);

      *(v24 + 4) = v41;
      *(v24 + 12) = 2080;
      v51 = a1;
      swift_unknownObjectRetain();
      v42 = sub_22F0D0CFC();
      v44 = sub_22F00A560(v42, v43, aBlock);

      *(v24 + 14) = v44;
      _os_log_impl(&dword_22EFE1000, v49, v23, "%s event wrong: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v25, -1, -1);
      MEMORY[0x2318FE8B0](v24, -1, -1);
    }

    else
    {
      v34 = v49;
    }
  }
}

uint64_t sub_22F08DE5C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x2318FD450]();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F0D0F8C();
  }

  sub_22F0D0FEC();
  return swift_endAccess();
}

unint64_t sub_22F08DF04@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318FDAB0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F08DF80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_22F0D143C();
    a1 = v17;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = a1 & 0xC000000000000001;
  v18 = a1;
  v6 = a1 + 32;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v20)
    {
      v8 = MEMORY[0x2318FDAB0](v7 - 1, v18);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v5 >= *(v19 + 16))
      {
        goto LABEL_21;
      }

      v8 = *(v6 + 8 * v5);
    }

    v9 = v8;
    v10 = [v8 requestID];
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {

      return v5;
    }

    v15 = sub_22F0D188C();
  }

  while ((v15 & 1) == 0);
  return v5;
}

uint64_t sub_22F08E0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22F08E110, 0, 0);
}

uint64_t sub_22F08E110()
{
  v1 = v0[6];
  v2 = [objc_opt_self() screenTimeRequestStream];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1E50, &qword_22F0D97B8);
  swift_allocObject();
  v3 = sub_22F08C60C(4, v2);
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 4;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1150, &unk_22F0D59C0);
  *v6 = v0;
  v6[1] = sub_22F08E28C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x800000022F0DF370, sub_22F08E5E8, v4, v7);
}

uint64_t sub_22F08E28C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F08E3A4, 0, 0);
}

uint64_t sub_22F08E3A4()
{
  v19 = v0;
  v1 = v0[2];
  v18 = MEMORY[0x277D84F90];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  v2 = sub_22F0D143C();
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318FDAB0](v5, v1);
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v5;
      if (v3 == v2)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x2318FD450]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F0D0F8C();
    }

    sub_22F0D0FEC();
    v4 = v18;
  }

  while (v3 != v2);
LABEL_22:
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  v0[3] = v4;
  sub_22F0CFF1C();
  v11 = sub_22F08DF80(v4, v10, v9);
  v13 = v12;

  v14 = 0;
  *(swift_task_alloc() + 16) = v0 + 3;
  if ((v13 & 1) == 0)
  {
    v17 = v11;
    sub_22F08E5F8(&v17, &v18);
    v14 = v18;
  }

  sub_22F0D00CC();

  v15 = v0[1];

  return v15(v14);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F08E660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F08E6A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F08E71C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D70, &unk_22F0D9110);
    v2 = sub_22F0D171C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_22F0CFF1C();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {
      sub_22F0D00CC();
      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_22EFFFB40(*(a1 + 56) + 40 * v14, v30);
    *&v29 = v16;
    *(&v29 + 1) = v17;
    v26 = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v18 = v29;
    sub_22EFE6B9C(v27, v25);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EE0, &unk_22F0D9E60);
    sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_22EFFDA80(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }

  sub_22F0D00CC();

  sub_22F0D00CC();
}

unint64_t sub_22F08E9A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
    v2 = sub_22F0D171C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_22F0CFF1C();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {
      sub_22F0D00CC();
      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_22F003428(*(a1 + 48) + 40 * v15, v27);
        sub_22F003598(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_22F003428(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_22F003A4C(v24, &qword_27DAA1EE8, &unk_22F0D9E78);
          sub_22F0D00CC();
          goto LABEL_23;
        }

        sub_22F003598(v25 + 8, v23);
        sub_22F003A4C(v24, &qword_27DAA1EE8, &unk_22F0D9E78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_22EFFDA80(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      sub_22F0D00CC();

LABEL_23:
      sub_22F0D00CC();
      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t static PeopleAnalytics.logDefaultContact(_:)(char a1)
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v6 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0xD000000000000012;
  v3 = inited + 32;
  *(inited + 40) = 0x800000022F0DEF00;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;
  v4 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v3, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v6, v4);
}

People::AnalyticsType_optional __swiftcall AnalyticsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D18BC();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AnalyticsType.rawValue.getter()
{
  result = 0x65722E612E746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
    case 0xE:
      result = 0xD00000000000002ALL;
      break;
    case 3:
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    case 9:
    case 0xA:
      result = 0xD000000000000019;
      break;
    case 0xB:
      result = 0xD00000000000001DLL;
      break;
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
      result = 0xD000000000000021;
      break;
    case 0xF:
      result = 0xD000000000000024;
      break;
    case 0x10:
      result = 0xD000000000000021;
      break;
    case 0x11:
      result = 0xD000000000000034;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F08EFEC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AnalyticsType.rawValue.getter();
  v4 = v3;
  if (v2 == AnalyticsType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22F0D188C();
  }

  return v7 & 1;
}

uint64_t sub_22F08F088()
{
  v1 = *v0;
  sub_22F0D199C();
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F08F0F0()
{
  v2 = *v0;
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();
}

uint64_t sub_22F08F154()
{
  v1 = *v0;
  sub_22F0D199C();
  AnalyticsType.rawValue.getter();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

unint64_t sub_22F08F1C4@<X0>(unint64_t *a1@<X8>)
{
  result = AnalyticsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F08F1EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_22F0CFF1C();
    return a2;
  }

  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v9;
LABEL_15:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_22EFFFB40(*(a1 + 56) + 40 * v16, v36);
    *&v37 = v19;
    *(&v37 + 1) = v18;
    sub_22EFE6B9C(v36, &v38);
    sub_22F0CFF1C();
    v14 = v12;
LABEL_16:
    v41 = v37;
    v42[0] = v38;
    v42[1] = v39;
    v43 = v40;
    v20 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {
      sub_22F0D00CC();
      return a2;
    }

    v21 = v41;
    sub_22EFE6B9C(v42, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = a2;
    v23 = sub_22EFFDA80(v21, v20);
    v25 = a2[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (a2[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v34 = v23;
      sub_22F05F98C();
      v23 = v34;
      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_6:
      v10 = v23;

      a2 = *&v36[0];
      v11 = (*(*&v36[0] + 56) + 40 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      sub_22EFE6B9C(&v37, v11);
      v9 = v14;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_22F079828(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22EFFDA80(v21, v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v29)
      {
        goto LABEL_6;
      }

LABEL_23:
      a2 = *&v36[0];
      *(*&v36[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v31 = (a2[6] + 16 * v23);
      *v31 = v21;
      v31[1] = v20;
      sub_22EFE6B9C(&v37, a2[7] + 40 * v23);
      v32 = a2[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_34;
      }

      a2[2] = v33;
      v9 = v14;
      if (!v7)
      {
LABEL_8:
        if (v8 <= v9 + 1)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = v8;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            v7 = 0;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v12);
          ++v9;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F08F4B4()
{
  v1 = v0;
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  sub_22F0D04CC();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  *(v1 + 32) = v8;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_22F08F590()
{
  v1 = sub_22F0D05BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 56) == 1 && (*(v0 + 40) & 1) == 0)
  {
    v7 = *(v0 + 32);
    v8 = result;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v10 = v9;
    (*(v2 + 8))(v6, v8);
    v11 = v10 - v7;
    *(v0 + 48) = v11;
    *(v0 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v13 = inited + 32;
    v14 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v14;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v11;
    v15 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v13, &qword_27DAA14D0, &qword_22F0D8880);
    v16 = *(v0 + 24);
    v17 = sub_22F0CFF1C();
    v18 = sub_22F08F1EC(v17, v15);

    sub_22F08FCF8(&v20, v18);
  }

  return result;
}

uint64_t sub_22F08F7A8(uint64_t a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 56) == 1 && (*(a1 + 40) & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = result;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v11 = v10;
    (*(v3 + 8))(v7, v9);
    v12 = v11 - v8;
    *(a1 + 48) = v12;
    *(a1 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v21 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v14 = inited + 32;
    v15 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v15;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v12;
    v16 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v14, &qword_27DAA14D0, &qword_22F0D8880);
    v17 = *(a1 + 24);
    v18 = sub_22F0CFF1C();
    v19 = sub_22F08F1EC(v18, v16);

    sub_22F08FCF8(&v21, v19);
  }

  return result;
}

uint64_t PeopleAnalytics.StopWatch.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PeopleAnalytics.StopWatch.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F08FA2C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22F0D0AFC();
  type metadata accessor for RuntimeEnvironment();
  swift_initStackObject();
  v3 = RuntimeEnvironment.init(environment:)(v2);
  type metadata accessor for PeopleAnalytics();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  swift_beginAccess();
  v5 = *(v3 + 16);
  result = sub_22F0D00CC();
  if ((v5 & 1) == 0)
  {
    *(v4 + 16) = sub_22F08FB40;
    *(v4 + 24) = 0;
    result = sub_22F094D60(0);
  }

  qword_280CBE8B0 = v4;
  return result;
}

uint64_t sub_22F08FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22F0D0C7C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22F08FC00;
  v10[3] = &block_descriptor_9;
  v7 = _Block_copy(v10);
  sub_22F0CFFAC();
  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);
  sub_22F0D00CC();
  return v8;
}

id sub_22F08FC00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_22F0CFFAC();
  v4 = v1(v3);
  sub_22F0D00CC();
  if (v4)
  {
    sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
    v5 = sub_22F0D0AEC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static PeopleAnalytics.shared.getter()
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

void sub_22F08FCF8(char *a1, uint64_t a2)
{
  v3 = *a1;
  sub_22F08E71C(a2);
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = *(v2 + 24);
      v7 = v4;
      v8 = AnalyticsType.rawValue.getter();
      v10 = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      sub_22F0CFFAC();
      v5(v8, v10, sub_22F0952FC, v11);
      sub_22F094D60(v5);

      sub_22F0D00CC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v12 = sub_22F0D0A1C();
    __swift_project_value_buffer(v12, qword_280CBEC40);
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v13 = sub_22F0D123C();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22F00A560(0xD000000000000012, 0x800000022F0DF4C0, &v20);
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EE0, &unk_22F0D9E60);
      v16 = sub_22F0D0B0C();
      v18 = sub_22F00A560(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22EFE1000, oslog, v13, "%s, failed to cast payload %s as? [String: NSObject]", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v15, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t PeopleAnalytics.WidgetLocation.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263536B636F6CLL;
  }

  else
  {
    return 0x65726353656D6F68;
  }
}

uint64_t sub_22F08FFF0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657263536B636F6CLL;
  }

  else
  {
    v2 = 0x65726353656D6F68;
  }

  if (*a2)
  {
    v3 = 0x657263536B636F6CLL;
  }

  else
  {
    v3 = 0x65726353656D6F68;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22F0D188C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22F090084()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F090104()
{
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F090168()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0901F0(uint64_t *a1@<X8>)
{
  v2 = 0x65726353656D6F68;
  if (*v1)
  {
    v2 = 0x657263536B636F6CLL;
  }

  *a1 = v2;
  a1[1] = 0xEA00000000006E65;
}

uint64_t sub_22F09022C(char a1, uint64_t a2, unsigned __int8 *a3)
{
  v63 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0xD000000000000016;
  v6 = inited + 32;
  v7 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000022F0DF3D0;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1;
  v8 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v6, &qword_27DAA14D0, &qword_22F0D8880);
  v9 = *(a2 + 16);
  if (!v9)
  {
    v76 = MEMORY[0x277D837D0];
    v77 = &protocol witness table for String;
    *&v75 = 1701736270;
    *(&v75 + 1) = 0xE400000000000000;
    sub_22EFE6B9C(&v75, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v8;
    v47 = v74;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v49 = *(*(v47 - 8) + 64);
    MEMORY[0x28223BE20](v48);
    v51 = &v62[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v52 + 16))(v51);
    sub_22F093660(*v51, v51[1], 0x797469726F697270, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    v8 = v69;
LABEL_16:
    v53 = 0x65726353656D6F68;
    if (v63)
    {
      v53 = 0x657263536B636F6CLL;
    }

    v76 = MEMORY[0x277D837D0];
    v77 = &protocol witness table for String;
    *&v75 = v53;
    *(&v75 + 1) = 0xEA00000000006E65;
    sub_22EFE6B9C(&v75, v73);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v8;
    v55 = v74;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v57 = *(*(v55 - 8) + 64);
    MEMORY[0x28223BE20](v56);
    v59 = &v62[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v60 + 16))(v59);
    sub_22F093660(*v59, v59[1], 1684957547, 0xE400000000000000, v54, &v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    LOBYTE(v75) = 1;
    sub_22F08FCF8(&v75, v69);
    return sub_22F0D00CC();
  }

  v65 = -v9;
  v10 = (a2 + 40);
  v11 = 1;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    *&v75 = 0x797469726F697270;
    *(&v75 + 1) = 0xE800000000000000;
    v73[0] = v11;
    sub_22F0CFF1C();
    v15 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v15);

    v16 = v75;
    v76 = MEMORY[0x277D837D0];
    v77 = &protocol witness table for String;
    *&v75 = v14;
    *(&v75 + 1) = v13;
    sub_22EFE6B9C(&v75, v73);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v8;
    v18 = v74;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v19);
    v22 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v23 + 16))(v22);
    v24 = *v22;
    v25 = v22[1];
    v70 = MEMORY[0x277D837D0];
    v71 = &protocol witness table for String;
    *&v69 = v24;
    *(&v69 + 1) = v25;
    v26 = sub_22EFFDA80(v16, *(&v16 + 1));
    v28 = v8[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v8[3] < v31)
    {
      sub_22F079828(v31, v17);
      v26 = sub_22EFFDA80(v16, *(&v16 + 1));
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      v8 = v72;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (v17)
    {
      goto LABEL_10;
    }

    v45 = v26;
    sub_22F05F98C();
    v26 = v45;
    v8 = v72;
    if (v32)
    {
LABEL_3:
      v12 = (v8[7] + 40 * v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      sub_22EFE6B9C(&v69, v12);

      goto LABEL_4;
    }

LABEL_11:
    v64 = v62;
    v34 = v70;
    v35 = v26;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
    v37 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v36);
    v39 = &v62[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v40 + 16))(v39);
    v41 = *v39;
    v42 = v39[1];
    v67 = MEMORY[0x277D837D0];
    v68 = &protocol witness table for String;
    *&v66 = v41;
    *(&v66 + 1) = v42;
    v8[(v35 >> 6) + 8] |= 1 << v35;
    *(v8[6] + 16 * v35) = v16;
    sub_22EFE6B9C(&v66, v8[7] + 40 * v35);
    v43 = v8[2];
    v30 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v8[2] = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    ++v11;
    v10 += 2;
    if (v65 + v11 == 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F0908F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v8 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6E6F69746361;
  v3 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  if (v1 <= 1)
  {
    v4 = 0xE90000000000006CLL;
    v5 = 0x6C61436563696F76;
    if (v1)
    {
      v5 = 0x6C61436F65646976;
    }
  }

  else if (v1 == 2)
  {
    v4 = 0xE700000000000000;
    v5 = 0x6567617373656DLL;
  }

  else if (v1 == 3)
  {
    v4 = 0xE400000000000000;
    v5 = 1818845549;
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x6E6F697461636F6CLL;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  v6 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v3, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v8, v6);
}

uint64_t static PeopleAnalytics.eventReceived(foundContacts:statusType:)(char a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v4 = 0xEA00000000006574;
  v12 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 16) = xmmword_22F0D5A80;
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "eventReceived");
  *(inited + 62) = -4864;
  v7 = MEMORY[0x277D839B0];
  strcpy((inited + 88), "contactsFound");
  *(inited + 102) = -4864;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a1 & 1;
  v8 = MEMORY[0x277D83B88];
  *(inited + 144) = 0x756F43746E657665;
  *(inited + 152) = 0xEA0000000000746ELL;
  *(inited + 184) = v8;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = 1;
  *(inited + 200) = 1701869940;
  *(inited + 208) = 0xE400000000000000;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v9 = 0x617453646C696863;
      }

      else
      {
        v4 = 0xED00006567617373;
        v9 = 0x654D646165726E75;
      }
    }

    else if (v3 == 7)
    {
      v9 = 0x7373654D64616572;
      v4 = 0xEB00000000656761;
    }

    else if (v3 == 8)
    {
      v4 = 0xEA00000000006C6CLL;
      v9 = 0x614364657373696DLL;
    }

    else
    {
      v4 = 0xE800000000000000;
      v9 = 0x7261646E656C6163;
    }
  }

  else if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 0xEB00000000657461;
      v9 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v4 = 0xEF7974696C696261;
      v9 = 0x6C69617641646E64;
    }
  }

  else if (v3 == 2)
  {
    v4 = 0xE800000000000000;
    v9 = 0x6E6F697461636F6CLL;
  }

  else if (v3 == 3)
  {
    v4 = 0xEF74736575716552;
    v9 = 0x7975426F546B7361;
  }

  else
  {
    v4 = 0x800000022F0DC350;
    v9 = 0xD000000000000011;
  }

  *(inited + 240) = v6;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v9;
  *(inited + 224) = v4;
  v10 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v12, v10);
}

uint64_t static PeopleAnalytics.eventsCollected(statusType:eventCount:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v4 = 0xEA00000000006574;
  v10 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D5A80;
  *(inited + 32) = 0x6E6F69746361;
  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6F4373746E657665;
  *(inited + 56) = 0xEF64657463656C6CLL;
  strcpy((inited + 88), "contactsFound");
  *(inited + 102) = -4864;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = 1;
  *(inited + 144) = 0x756F43746E657665;
  *(inited + 152) = 0xEA0000000000746ELL;
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a2;
  *(inited + 200) = 1701869940;
  *(inited + 208) = 0xE400000000000000;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v7 = 0x617453646C696863;
      }

      else
      {
        v4 = 0xED00006567617373;
        v7 = 0x654D646165726E75;
      }
    }

    else if (v3 == 7)
    {
      v7 = 0x7373654D64616572;
      v4 = 0xEB00000000656761;
    }

    else if (v3 == 8)
    {
      v4 = 0xEA00000000006C6CLL;
      v7 = 0x614364657373696DLL;
    }

    else
    {
      v4 = 0xE800000000000000;
      v7 = 0x7261646E656C6163;
    }
  }

  else if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 0xEB00000000657461;
      v7 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v4 = 0xEF7974696C696261;
      v7 = 0x6C69617641646E64;
    }
  }

  else if (v3 == 2)
  {
    v4 = 0xE800000000000000;
    v7 = 0x6E6F697461636F6CLL;
  }

  else if (v3 == 3)
  {
    v4 = 0xEF74736575716552;
    v7 = 0x7975426F546B7361;
  }

  else
  {
    v4 = 0x800000022F0DC350;
    v7 = 0xD000000000000011;
  }

  *(inited + 240) = v6;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v7;
  *(inited + 224) = v4;
  v8 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v10, v8);
}

uint64_t static PeopleAnalytics.logTimelineEntries(_:entries:contacts:widgetSize:)(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = *a4;
  if (*a1)
  {
    v7 = 0x656C7069746C756DLL;
  }

  else
  {
    v7 = 0x656C676E6973;
  }

  if (*a1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a1)
  {
    v9 = sub_22F0D188C();

    if ((v9 & 1) == 0 || a3 == 1)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (a3 == 1)
    {
      goto LABEL_17;
    }
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D123C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a3;
    _os_log_impl(&dword_22EFE1000, v11, v12, "Forced contacts count to 1 from %ld!", v13, 0xCu);
    MEMORY[0x2318FE8B0](v13, -1, -1);
  }

  a3 = 1;
LABEL_17:
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v21 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D5A80;
  *(inited + 32) = 0x73656972746E65;
  v15 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a2;
  *(inited + 88) = 0x73746361746E6F63;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = v15;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;
  *(inited + 144) = 1701869940;
  *(inited + 152) = 0xE400000000000000;
  v16 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v7;
  *(inited + 168) = v8;
  *(inited + 200) = 1702521203;
  *(inited + 208) = 0xE400000000000000;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v17 = 0xEB00000000656772;
      v18 = 0x614C6D6574737973;
    }

    else
    {
      v17 = 0x800000022F0DCAC0;
      v18 = 0xD000000000000010;
    }
  }

  else if (v6)
  {
    v17 = 0xEC0000006D756964;
    v18 = 0x654D6D6574737973;
  }

  else
  {
    v17 = 0xEB000000006C6C61;
    v18 = 0x6D536D6574737973;
  }

  *(inited + 240) = v16;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v18;
  *(inited + 224) = v17;
  v19 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v21, v19);
}

uint64_t PeopleAnalytics.WidgetType.description.getter()
{
  if (*v0)
  {
    result = 0x656C7069746C756DLL;
  }

  else
  {
    result = 0x656C676E6973;
  }

  *v0;
  return result;
}

unint64_t PeopleAnalytics.WidgetSize.description.getter()
{
  v1 = 0x6D536D6574737973;
  v2 = 0x614C6D6574737973;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x654D6D6574737973;
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

uint64_t static PeopleAnalytics.logTimelineStatus(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E88, &unk_22F0D5050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-1] - v4;
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v21 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x614E737574617473;
  *(inited + 40) = 0xEA0000000000656DLL;
  sub_22EFFFB40(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
  v7 = type metadata accessor for MotionPersonStatus(0);
  v8 = swift_dynamicCast();
  v9 = *(*(v7 - 8) + 56);
  if (v8)
  {
    v9(v5, 0, 1, v7);
    v10 = v5[*(v7 + 20)];
    sub_22F094984(v5);
    v11 = *&aRunning_1[8 * v10];
    v12 = qword_22F0D9EB8[v10];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
  }

  else
  {
    v9(v5, 1, 1, v7);
    sub_22F003A4C(v5, &qword_27DAA0E88, &unk_22F0D5050);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 40))(v20, v13, v14);
    if (LOBYTE(v20[0]) > 4u)
    {
      if (LOBYTE(v20[0]) <= 6u)
      {
        if (LOBYTE(v20[0]) == 5)
        {
          v15 = 0xEA00000000006574;
          v16 = 0x617453646C696863;
        }

        else
        {
          v15 = 0xED00006567617373;
          v16 = 0x654D646165726E75;
        }
      }

      else if (LOBYTE(v20[0]) == 7)
      {
        v16 = 0x7373654D64616572;
        v15 = 0xEB00000000656761;
      }

      else if (LOBYTE(v20[0]) == 8)
      {
        v15 = 0xEA00000000006C6CLL;
        v16 = 0x614364657373696DLL;
      }

      else
      {
        v15 = 0xE800000000000000;
        v16 = 0x7261646E656C6163;
      }
    }

    else if (LOBYTE(v20[0]) <= 1u)
    {
      if (LOBYTE(v20[0]))
      {
        v15 = 0xEB00000000657461;
        v16 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v15 = 0xEF7974696C696261;
        v16 = 0x6C69617641646E64;
      }
    }

    else if (LOBYTE(v20[0]) == 2)
    {
      v15 = 0xE800000000000000;
      v16 = 0x6E6F697461636F6CLL;
    }

    else if (LOBYTE(v20[0]) == 3)
    {
      v15 = 0xEF74736575716552;
      v16 = 0x7975426F546B7361;
    }

    else
    {
      v15 = 0x800000022F0DC350;
      v16 = 0xD000000000000011;
    }

    *(inited + 48) = v16;
    *(inited + 56) = v15;
  }

  v17 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v21, v17);
}

uint64_t static PeopleAnalytics.logContactWidgetUIRenderType(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_280CBE8A8 != -1)
  {
    swift_once();
  }

  v9 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D6710;
  *(inited + 32) = 0x7265566E776F6873;
  *(inited + 40) = 0xEF796C6C61636974;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000022F0DF3F0;
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = a2;
  *(inited + 112) = a3;
  sub_22F0CFF1C();
  v7 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  sub_22F08FCF8(&v9, v7);
}

uint64_t PeopleAnalytics.MessageRequestBubbleSource.rawValue.getter()
{
  if (*v0)
  {
    result = 21587;
  }

  else
  {
    result = 4346945;
  }

  *v0;
  return result;
}

uint64_t sub_22F091AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 21587;
  }

  else
  {
    v4 = 4346945;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 21587;
  }

  else
  {
    v6 = 4346945;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();
  }

  return v9 & 1;
}

uint64_t sub_22F091B54()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F091BC4()
{
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F091C20()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F091C98(uint64_t *a1@<X8>)
{
  v2 = 4346945;
  if (*v1)
  {
    v2 = 21587;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22F091CC4(unsigned __int8 *a1, char a2, char a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6577656976657270;
  *(inited + 16) = xmmword_22F0D97C0;
  v7 = MEMORY[0x277D839B0];
  *(inited + 40) = 0xE900000000000064;
  *(inited + 72) = v7;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a2;
  *(inited + 88) = 0x697463416B6F6F74;
  *(inited + 96) = 0xEA00000000006E6FLL;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3;
  *(inited + 144) = 0x656372756F73;
  *(inited + 152) = 0xE600000000000000;
  v8 = 4346945;
  if (v5)
  {
    v8 = 21587;
  }

  v9 = 0xE300000000000000;
  if (v5)
  {
    v9 = 0xE200000000000000;
  }

  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  v10 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  v12 = 16;
  sub_22F08FCF8(&v12, v10);
}

People::PeopleAnalytics::IMessageSendRuleResult_optional __swiftcall PeopleAnalytics.IMessageSendRuleResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PeopleAnalytics.IMessageSendRuleResult.rawValue.getter()
{
  v1 = *v0;
  v2 = 1684956531;
  v3 = 0xD00000000000001CLL;
  v4 = 0x7041646E65536F6ELL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F091F40()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F092034()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F092114()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092210(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684956531;
  v5 = 0x800000022F0DCA00;
  v6 = 0xD00000000000001CLL;
  v7 = 0xEF737265766F7270;
  v8 = 0x7041646E65536F6ELL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F0DCA30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000022F0DC9E0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_22F0922D0(unsigned __int8 *a1, char a2, char a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D6710;
  *(inited + 32) = 0x746E65696C63;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a2;
  *(inited + 88) = 0x746E657665;
  *(inited + 96) = 0xE500000000000000;
  if (v5 <= 1)
  {
    v7 = 0xE400000000000000;
    v8 = 1684956531;
    if (v5)
    {
      v8 = 0xD000000000000017;
      v7 = 0x800000022F0DC9E0;
    }
  }

  else if (v5 == 2)
  {
    v7 = 0x800000022F0DCA00;
    v8 = 0xD00000000000001CLL;
  }

  else if (v5 == 3)
  {
    v7 = 0xEF737265766F7270;
    v8 = 0x7041646E65536F6ELL;
  }

  else
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F0DCA30;
  }

  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  v9 = sub_22F07D320(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  swift_arrayDestroy();
  v11 = a3;
  sub_22F08FCF8(&v11, v9);
}

uint64_t sub_22F092494(uint64_t a1, uint64_t a2)
{
  v7 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6C436E6F69746361;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEB00000000737361;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v5 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  sub_22F08FCF8(&v7, v5);
}

uint64_t static PeopleAnalytics.stopWatch(_:startNow:)(_BYTE *a1, char a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  type metadata accessor for PeopleAnalytics.StopWatch();
  result = swift_allocObject();
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (a2)
  {
    v10 = result;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    result = v10;
    *(v10 + 32) = v12;
    *(v10 + 40) = 0;
  }

  return result;
}

uint64_t static PeopleAnalytics.stopwatchBlock(_:extra:block:)(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_22F0D05BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for PeopleAnalytics.StopWatch();
  v12 = swift_allocObject();
  *(v12 + 40) = 1;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;
  *(v12 + 32) = 0;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0D05AC();
  sub_22F0D04CC();
  v14 = v13;
  v15 = (*(v7 + 8))(v10, v6);
  *(v12 + 32) = v14;
  *(v12 + 40) = 0;
  a3(v15);
  sub_22F08F7A8(v12);
  sub_22F0D00CC();
  return v12;
}

People::PeopleAnalytics::LookupAction_optional __swiftcall PeopleAnalytics.LookupAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PeopleAnalytics.LookupAction.rawValue.getter()
{
  v1 = 0x6120796C696D6166;
  v2 = 0x6D20796C696D6166;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746361746E6F63;
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

uint64_t sub_22F092924()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0929FC()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F092AC0()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092BA0(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6120796C696D6166;
  v4 = 0xED00007265626D65;
  v5 = 0x6D20796C696D6166;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000022F0DCA70;
  }

  if (*v1)
  {
    v3 = 0x746361746E6F63;
    v2 = 0xE700000000000000;
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

uint64_t sub_22F092C40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C7069746C756DLL;
  }

  else
  {
    v4 = 0x656C676E6973;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C7069746C756DLL;
  }

  else
  {
    v6 = 0x656C676E6973;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();
  }

  return v9 & 1;
}

uint64_t sub_22F092CE4()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F092D64()
{
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F092DD0()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F092E58(uint64_t *a1@<X8>)
{
  v2 = 0x656C676E6973;
  if (*v1)
  {
    v2 = 0x656C7069746C756DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

People::PeopleAnalytics::WidgetSize_optional __swiftcall PeopleAnalytics.WidgetSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F092EFC()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F092FDC()
{
  *v0;
  *v0;
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F0930A8()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F093190(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006C6C61;
  v3 = 0x6D536D6574737973;
  v4 = 0xEB00000000656772;
  v5 = 0x614C6D6574737973;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000022F0DCAC0;
  }

  if (*v1)
  {
    v3 = 0x654D6D6574737973;
    v2 = 0xEC0000006D756964;
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

uint64_t sub_22F093240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 32) = a3;
  v16 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 72) = v16;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v17 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v18 = swift_allocObject();
  *(v18 + 40) = 1;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 16) = a5;
  *(v18 + 24) = v17;
  *(v18 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  *(v18 + 32) = v20;
  *(v18 + 40) = 0;
  return v18;
}

uint64_t static PeopleAnalytics.trackAction(_:extensionBundleID:isNotification:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E98, &qword_22F0D97D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D97C0;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_22F0D0C7C();
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_22F0D0C7C();
  strcpy((inited + 80), "isNotification");
  *(inited + 95) = -18;
  sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
  *(inited + 96) = sub_22F0D12DC();
  sub_22F07DD80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EA0, &qword_22F0D97D8);
  swift_arrayDestroy();
  v7 = sub_22F0D0C7C();
  sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
  v8 = sub_22F0D0AEC();

  AnalyticsSendEvent();

  return 1;
}

uint64_t PeopleAnalytics.deinit()
{
  v1 = *(v0 + 24);
  sub_22F094D60(*(v0 + 16));
  return v0;
}

uint64_t PeopleAnalytics.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_22F094D60(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22F093660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = &protocol witness table for String;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_22EFFDA80(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      return sub_22EFE6B9C(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22F05F98C();
    goto LABEL_7;
  }

  sub_22F079828(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_22EFFDA80(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22F0D191C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_22F093A44(v13, a3, a4, *v28, v28[1], v19);
  sub_22F0CFF1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v31);
}

uint64_t sub_22F093850(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v26 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_22EFFDA80(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return sub_22EFE6B9C(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F05F98C();
    goto LABEL_7;
  }

  sub_22F079828(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_22EFFDA80(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22F0D191C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_22F0939B4(v11, a2, a3, *v23, v17);
  sub_22F0CFF1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v24);
}

uint64_t sub_22F0939B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22EFE6B9C(&v11, a5[7] + 40 * a1);
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

uint64_t sub_22F093A44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22EFE6B9C(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t _s6People0A9AnalyticsC22collectEventsStopwatchyAC9StopWatchCAA10StatusTypeOFZ_0(unsigned __int8 *a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x457463656C6C6F63;
  v9 = inited + 32;
  *(inited + 40) = 0xED000073746E6576;
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v11 = 0x617453646C696863;
        v10 = 0xEA00000000006574;
      }

      else
      {
        v10 = 0xED00006567617373;
        v11 = 0x654D646165726E75;
      }
    }

    else if (v7 == 7)
    {
      v11 = 0x7373654D64616572;
      v10 = 0xEB00000000656761;
    }

    else if (v7 == 8)
    {
      v10 = 0xEA00000000006C6CLL;
      v11 = 0x614364657373696DLL;
    }

    else
    {
      v10 = 0xE800000000000000;
      v11 = 0x7261646E656C6163;
    }
  }

  else if (v7 <= 1)
  {
    if (v7)
    {
      v10 = 0xEB00000000657461;
      v11 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v10 = 0xEF7974696C696261;
      v11 = 0x6C69617641646E64;
    }
  }

  else if (v7 == 2)
  {
    v10 = 0xE800000000000000;
    v11 = 0x6E6F697461636F6CLL;
  }

  else if (v7 == 3)
  {
    v10 = 0xEF74736575716552;
    v11 = 0x7975426F546B7361;
  }

  else
  {
    v10 = 0x800000022F0DC350;
    v11 = 0xD000000000000011;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  v12 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v9, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v13 = swift_allocObject();
  *(v13 + 40) = 1;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 16) = 8;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  *(v13 + 32) = v15;
  *(v13 + 40) = 0;
  return v13;
}

uint64_t _s6People0A9AnalyticsC21familyLookupStopwatchyAC9StopWatchCAC0D6ActionOFZ_0(unsigned __int8 *a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6E6F69746361;
  v9 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v10 = 0xED00007265626D65;
      v11 = 0x6D20796C696D6166;
    }

    else
    {
      v10 = 0x800000022F0DCA70;
      v11 = 0xD000000000000010;
    }
  }

  else if (v7)
  {
    v10 = 0xE700000000000000;
    v11 = 0x746361746E6F63;
  }

  else
  {
    v10 = 0xEA00000000006C6CLL;
    v11 = 0x6120796C696D6166;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  v12 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v9, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v13 = swift_allocObject();
  *(v13 + 40) = 1;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 16) = 11;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  *(v13 + 32) = v15;
  *(v13 + 40) = 0;
  return v13;
}

uint64_t _s6People0A9AnalyticsC17indexingStopwatchyAC9StopWatchCSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22F0CFF1C();
  v10 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(inited + 32, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v11 = swift_allocObject();
  *(v11 + 40) = 1;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 16) = 9;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  sub_22F0D05AC();
  sub_22F0D04CC();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  *(v11 + 32) = v13;
  *(v11 + 40) = 0;
  return v11;
}

uint64_t _s6People0A9AnalyticsC24statusCoalescerStopwatch_9typeNames12contactCountAC9StopWatchCSS_SaySSGSitFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v74 = sub_22F0D05BC();
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x277D837D0];
  v87 = &protocol witness table for String;
  *&v85 = a1;
  *(&v85 + 1) = a2;
  sub_22EFE6B9C(&v85, v83);
  sub_22F0CFF1C();
  v10 = MEMORY[0x277D84F98];
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  *&v79 = v10;
  v11 = v84;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_22F093660(*v15, v15[1], 0x656372756F73, 0xE600000000000000, a1, &v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v17 = v79;
  v86 = MEMORY[0x277D83B88];
  v87 = &protocol witness table for Int;
  *&v85 = a4;
  sub_22EFE6B9C(&v85, v83);
  LOBYTE(a4) = swift_isUniquelyReferenced_nonNull_native();
  *&v79 = v17;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  sub_22F093850(*v18, 0x73746361746E6F63, 0xE800000000000000, a4, &v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v19 = v79;
  v20 = a3[2];
  if (!v20)
  {
    v86 = MEMORY[0x277D837D0];
    v87 = &protocol witness table for String;
    *&v85 = 0x6E776F6E6B6E75;
    *(&v85 + 1) = 0xE700000000000000;
    sub_22EFE6B9C(&v85, v83);
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v19;
    v24 = v84;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    v26 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v28 = (&v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    sub_22F093660(*v28, v28[1], 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native, &v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    v19 = v79;
LABEL_6:
    type metadata accessor for PeopleAnalytics.StopWatch();
    v30 = swift_allocObject();
    *(v30 + 40) = 1;
    *(v30 + 48) = 0;
    *(v30 + 56) = 1;
    *(v30 + 16) = 6;
    *(v30 + 24) = v19;
    *(v30 + 32) = 0;
    v31 = v72;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v33 = v32;
    (*(v73 + 8))(v31, v74);
    *(v30 + 32) = v33;
    *(v30 + 40) = 0;
    return v30;
  }

  if (v20 == 1)
  {
    v21 = a3[4];
    v22 = a3[5];
    v86 = MEMORY[0x277D837D0];
    v87 = &protocol witness table for String;
    *&v85 = v21;
    *(&v85 + 1) = v22;
    sub_22EFE6B9C(&v85, v83);
    sub_22F0CFF1C();
    goto LABEL_5;
  }

  v75 = -v20;
  v35 = a3 + 5;
  v36 = 1;
  while (1)
  {
    v38 = *(v35 - 1);
    v39 = *v35;
    *&v85 = 1701869940;
    *(&v85 + 1) = 0xE400000000000000;
    v83[0] = v36;
    sub_22F0CFF1C();
    v40 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v40);

    v41 = v85;
    v42 = MEMORY[0x277D837D0];
    v86 = MEMORY[0x277D837D0];
    v87 = &protocol witness table for String;
    *&v85 = v38;
    *(&v85 + 1) = v39;
    sub_22EFE6B9C(&v85, v83);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v19;
    v44 = v84;
    v45 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    v46 = *(*(v44 - 8) + 64);
    MEMORY[0x28223BE20](v45);
    v48 = (&v72 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    v50 = *v48;
    v51 = v48[1];
    v80 = v42;
    v81 = &protocol witness table for String;
    *&v79 = v50;
    *(&v79 + 1) = v51;
    v52 = sub_22EFFDA80(v41, *(&v41 + 1));
    v54 = v19[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      break;
    }

    v58 = v53;
    if (v19[3] < v57)
    {
      sub_22F079828(v57, v43);
      v52 = sub_22EFFDA80(v41, *(&v41 + 1));
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_22;
      }

LABEL_15:
      v19 = v82;
      if (v58)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (v43)
    {
      goto LABEL_15;
    }

    v71 = v52;
    sub_22F05F98C();
    v52 = v71;
    v19 = v82;
    if (v58)
    {
LABEL_8:
      v37 = (v19[7] + 40 * v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      sub_22EFE6B9C(&v79, v37);

      goto LABEL_9;
    }

LABEL_16:
    v60 = v80;
    v61 = v52;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v79, v80);
    v63 = *(*(v60 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    v65 = (&v72 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = *v65;
    v68 = v65[1];
    v77 = MEMORY[0x277D837D0];
    v78 = &protocol witness table for String;
    *&v76 = v67;
    *(&v76 + 1) = v68;
    v19[(v61 >> 6) + 8] |= 1 << v61;
    *(v19[6] + 16 * v61) = v41;
    sub_22EFE6B9C(&v76, v19[7] + 40 * v61);
    v69 = v19[2];
    v56 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v56)
    {
      goto LABEL_21;
    }

    v19[2] = v70;
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    ++v36;
    v35 += 2;
    if (v75 + v36 == 1)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F094984(uint64_t a1)
{
  v2 = type metadata accessor for MotionPersonStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s6People0A9AnalyticsC25receiveInpuStopwatchBlock_5blockAC9StopWatchCAA10StatusTypeO_yyXEtFZ_0(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  *(inited + 32) = 0x4965766965636572;
  v11 = inited + 32;
  *(inited + 40) = 0xEC0000007475706ELL;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v13 = 0x617453646C696863;
        v12 = 0xEA00000000006574;
      }

      else
      {
        v12 = 0xED00006567617373;
        v13 = 0x654D646165726E75;
      }
    }

    else if (v9 == 7)
    {
      v13 = 0x7373654D64616572;
      v12 = 0xEB00000000656761;
    }

    else if (v9 == 8)
    {
      v12 = 0xEA00000000006C6CLL;
      v13 = 0x614364657373696DLL;
    }

    else
    {
      v12 = 0xE800000000000000;
      v13 = 0x7261646E656C6163;
    }
  }

  else if (v9 <= 1)
  {
    if (v9)
    {
      v12 = 0xEB00000000657461;
      v13 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v12 = 0xEF7974696C696261;
      v13 = 0x6C69617641646E64;
    }
  }

  else if (v9 == 2)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461636F6CLL;
  }

  else if (v9 == 3)
  {
    v12 = 0xEF74736575716552;
    v13 = 0x7975426F546B7361;
  }

  else
  {
    v12 = 0x800000022F0DC350;
    v13 = 0xD000000000000011;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  v14 = sub_22F07D320(inited);
  swift_setDeallocating();
  sub_22F003A4C(v11, &qword_27DAA14D0, &qword_22F0D8880);
  type metadata accessor for PeopleAnalytics.StopWatch();
  v15 = swift_allocObject();
  *(v15 + 40) = 1;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 16) = 8;
  *(v15 + 24) = v14;
  *(v15 + 32) = 0;
  sub_22F0CFFAC();
  sub_22F0D05AC();
  sub_22F0D04CC();
  v17 = v16;
  v18 = (*(v5 + 8))(v8, v4);
  *(v15 + 32) = v17;
  *(v15 + 40) = 0;
  a2(v18);
  sub_22F08F7A8(v15);
  sub_22F0D00CC();
  return v15;
}

uint64_t sub_22F094D60(uint64_t result)
{
  if (result)
  {
    return sub_22F0D00CC();
  }

  return result;
}

unint64_t sub_22F094D74()
{
  result = qword_27DAA1EA8;
  if (!qword_27DAA1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EA8);
  }

  return result;
}

unint64_t sub_22F094DCC()
{
  result = qword_27DAA1EB0;
  if (!qword_27DAA1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EB0);
  }

  return result;
}

unint64_t sub_22F094E24()
{
  result = qword_27DAA1EB8;
  if (!qword_27DAA1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EB8);
  }

  return result;
}

unint64_t sub_22F094E7C()
{
  result = qword_27DAA1EC0;
  if (!qword_27DAA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EC0);
  }

  return result;
}

unint64_t sub_22F094ED4()
{
  result = qword_27DAA1EC8;
  if (!qword_27DAA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1EC8);
  }

  return result;
}

unint64_t sub_22F094F2C()
{
  result = qword_27DAA1ED0;
  if (!qword_27DAA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1ED0);
  }

  return result;
}

unint64_t sub_22F094F84()
{
  result = qword_27DAA1ED8;
  if (!qword_27DAA1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1ED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

People::FetchContactsStatusMessage __swiftcall FetchContactsStatusMessage.init(contactIDs:types:)(Swift::OpaquePointer contactIDs, Swift::OpaquePointer types)
{
  v2->_rawValue = contactIDs._rawValue;
  v2[1]._rawValue = types._rawValue;
  result.types = types;
  result.contactIDs = contactIDs;
  return result;
}

uint64_t sub_22F09533C()
{
  if (*v0)
  {
    result = 0x7365707974;
  }

  else
  {
    result = 0x49746361746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_22F095378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007344;
  if (v6 || (sub_22F0D188C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();

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

uint64_t sub_22F095458(uint64_t a1)
{
  v2 = sub_22F0956FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095494(uint64_t a1)
{
  v2 = sub_22F0956FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchContactsStatusMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1EF0, &unk_22F0D9EF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0956FC();
  sub_22F0CFF1C();
  sub_22F0D19FC();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
  sub_22F095A28(&qword_27DAA1EF8);
  sub_22F0D180C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0990, &qword_22F0D9F00);
    sub_22F095A94(&qword_27DAA1F00, sub_22F095750);
    sub_22F0D180C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22F0956FC()
{
  result = qword_280CBD220[0];
  if (!qword_280CBD220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD220);
  }

  return result;
}

unint64_t sub_22F095750()
{
  result = qword_27DAA1F08;
  if (!qword_27DAA1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F08);
  }

  return result;
}

uint64_t FetchContactsStatusMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F10, &qword_22F0D9F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0956FC();
  sub_22F0D19EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
  v15 = 0;
  sub_22F095A28(&qword_280CBD168);
  sub_22F0D17BC();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0990, &qword_22F0D9F00);
  v15 = 1;
  sub_22F095A94(&qword_280CBD178, sub_22F095B0C);
  sub_22F0D17BC();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22F095A28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F095A94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA0990, &qword_22F0D9F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F095B0C()
{
  result = qword_280CBD8E8;
  if (!qword_280CBD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD8E8);
  }

  return result;
}

uint64_t sub_22F095BA0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_22F095BD0(uint64_t a1)
{
  v2 = sub_22F095D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095C0C(uint64_t a1)
{
  v2 = sub_22F095D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PingMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F18, &qword_22F0D9F10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F095D5C();
  sub_22F0D19FC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_22F095D5C()
{
  result = qword_27DAA1F20;
  if (!qword_27DAA1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F20);
  }

  return result;
}

uint64_t sub_22F095E00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F18, &qword_22F0D9F10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F095D5C();
  sub_22F0D19FC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22F095F14(uint64_t a1)
{
  v2 = sub_22F095FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F095F50(uint64_t a1)
{
  v2 = sub_22F095FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F095FD0()
{
  result = qword_27DAA1F30;
  if (!qword_27DAA1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F30);
  }

  return result;
}

uint64_t sub_22F0960D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000022F0DF520 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22F0D188C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22F096168(uint64_t a1)
{
  v2 = sub_22F096364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F0961A4(uint64_t a1)
{
  v2 = sub_22F096364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F096224(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_22F0D19FC();
  sub_22F0D17DC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22F096364()
{
  result = qword_27DAA1F48;
  if (!qword_27DAA1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F48);
  }

  return result;
}

uint64_t sub_22F0963FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F0D19EC();
  if (!v5)
  {
    v13 = v17;
    v14 = sub_22F0D178C();
    (*(v18 + 8))(v11, v8);
    *v13 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22F0965BC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_22F0D19FC();
  sub_22F0D17DC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t FamilyATBSendIMessage.requestID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0CFF1C();
  return v1;
}

unint64_t FamilyATBSendIMessage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v1, v2);
  return 0xD000000000000016;
}

People::FamilyATBSendIMessage __swiftcall FamilyATBSendIMessage.init(requestID:isCallerAskToProcess:)(People::FamilyATBSendIMessage requestID, Swift::Bool isCallerAskToProcess)
{
  *v2 = requestID.requestID;
  *(v2 + 16) = isCallerAskToProcess;
  requestID.isCallerAskToProcess = isCallerAskToProcess;
  return requestID;
}

unint64_t sub_22F0967BC()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x4974736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_22F096800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v6 || (sub_22F0D188C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F0DF520 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();

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

uint64_t sub_22F0968EC(uint64_t a1)
{
  v2 = sub_22F096AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F096928(uint64_t a1)
{
  v2 = sub_22F096AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyATBSendIMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F58, &qword_22F0D9F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F096AF8();
  sub_22F0D19FC();
  v16 = 0;
  v11 = v13[1];
  sub_22F0D17CC();
  if (!v11)
  {
    v15 = 1;
    sub_22F0D17DC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F096AF8()
{
  result = qword_27DAA1F60;
  if (!qword_27DAA1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F60);
  }

  return result;
}

uint64_t FamilyATBSendIMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1F68, &qword_22F0D9F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F096AF8();
  sub_22F0D19EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_22F0D177C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_22F0D178C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  sub_22F0CFF1C();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_22F096D30()
{
  result = qword_280CBD200;
  if (!qword_280CBD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD200);
  }

  return result;
}

unint64_t sub_22F096D88()
{
  result = qword_280CBD208;
  if (!qword_280CBD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD208);
  }

  return result;
}

unint64_t sub_22F096DE0()
{
  result = qword_27DAA1F70;
  if (!qword_27DAA1F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F78, &qword_22F0D9F48);
    sub_22F096E9C(&qword_27DAA1F80, sub_22F096F14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F70);
  }

  return result;
}

uint64_t sub_22F096E9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F88, &qword_22F0D9F50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F096F14()
{
  result = qword_27DAA1F90;
  if (!qword_27DAA1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F90);
  }

  return result;
}

unint64_t sub_22F096F6C()
{
  result = qword_280CBD188;
  if (!qword_280CBD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1F78, &qword_22F0D9F48);
    sub_22F096E9C(&qword_280CBD170, sub_22F097028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD188);
  }

  return result;
}

unint64_t sub_22F097028()
{
  result = qword_280CBD6C0;
  if (!qword_280CBD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD6C0);
  }

  return result;
}

unint64_t sub_22F097080()
{
  result = qword_280CBD770;
  if (!qword_280CBD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD770);
  }

  return result;
}

unint64_t sub_22F0970D8()
{
  result = qword_280CBD778[0];
  if (!qword_280CBD778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD778);
  }

  return result;
}

unint64_t sub_22F097148()
{
  result = qword_280CBD1E0;
  if (!qword_280CBD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1E0);
  }

  return result;
}

unint64_t sub_22F0971A0()
{
  result = qword_280CBD1E8;
  if (!qword_280CBD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1E8);
  }

  return result;
}

unint64_t sub_22F097210()
{
  result = qword_280CBD1F0;
  if (!qword_280CBD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1F0);
  }

  return result;
}

unint64_t sub_22F097268()
{
  result = qword_280CBD1F8;
  if (!qword_280CBD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1F8);
  }

  return result;
}

unint64_t sub_22F0972C0()
{
  result = qword_280CBD360;
  if (!qword_280CBD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD360);
  }

  return result;
}

unint64_t sub_22F097318()
{
  result = qword_280CBD368[0];
  if (!qword_280CBD368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBD368);
  }

  return result;
}

unint64_t sub_22F09736C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](v1, v2);
  return 0xD000000000000016;
}

uint64_t sub_22F097448(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F09750C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22F097554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F0975F8()
{
  result = qword_27DAA1F98;
  if (!qword_27DAA1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1F98);
  }

  return result;
}

unint64_t sub_22F097650()
{
  result = qword_27DAA1FA0;
  if (!qword_27DAA1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FA0);
  }

  return result;
}

unint64_t sub_22F0976A8()
{
  result = qword_27DAA1FA8;
  if (!qword_27DAA1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FA8);
  }

  return result;
}

unint64_t sub_22F097700()
{
  result = qword_27DAA1FB0;
  if (!qword_27DAA1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FB0);
  }

  return result;
}

unint64_t sub_22F097758()
{
  result = qword_27DAA1FB8;
  if (!qword_27DAA1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FB8);
  }

  return result;
}

unint64_t sub_22F0977B0()
{
  result = qword_27DAA1FC0;
  if (!qword_27DAA1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FC0);
  }

  return result;
}

unint64_t sub_22F097808()
{
  result = qword_27DAA1FC8;
  if (!qword_27DAA1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FC8);
  }

  return result;
}

unint64_t sub_22F097860()
{
  result = qword_27DAA1FD0;
  if (!qword_27DAA1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FD0);
  }

  return result;
}

unint64_t sub_22F0978B8()
{
  result = qword_27DAA1FD8;
  if (!qword_27DAA1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FD8);
  }

  return result;
}

unint64_t sub_22F097910()
{
  result = qword_27DAA1FE0;
  if (!qword_27DAA1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FE0);
  }

  return result;
}

unint64_t sub_22F097968()
{
  result = qword_27DAA1FE8;
  if (!qword_27DAA1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FE8);
  }

  return result;
}

unint64_t sub_22F0979C0()
{
  result = qword_27DAA1FF0;
  if (!qword_27DAA1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1FF0);
  }

  return result;
}

unint64_t sub_22F097A18()
{
  result = qword_280CBD210;
  if (!qword_280CBD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD210);
  }

  return result;
}

unint64_t sub_22F097A70()
{
  result = qword_280CBD218;
  if (!qword_280CBD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD218);
  }

  return result;
}

uint64_t sub_22F097AE0(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v2[18] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for ResolvedFamily();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v7 = *(v6 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v9 = type metadata accessor for MessageDetails();
  v2[31] = v9;
  v10 = *(v9 - 8);
  v2[32] = v10;
  v11 = *(v10 + 64) + 15;
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F097CC4, 0, 0);
}

uint64_t sub_22F097CC4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  sub_22F040184(*(v0 + 136), v1, type metadata accessor for MessageDetails);
  v6 = *(v3 + 48);
  *(v0 + 352) = v6;
  sub_22F049FF4(v1 + v6, v2, &qword_27DAA1448, &unk_22F0D6640);
  v7 = *(v5 + 48);
  *(v0 + 272) = v7;
  *(v0 + 280) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v7(v2, 1, v4);
  sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
  if (v1 == 1)
  {
    v8 = *(v0 + 248);
    v9 = *(v0 + 136);
    v10 = v9 + *(v8 + 36);
    *(v0 + 288) = *v10;
    if (*(v10 + 8))
    {
      if (qword_280CBEC28 != -1)
      {
        swift_once();
      }

      v11 = qword_280CBEC30;
      *(v0 + 40) = type metadata accessor for ContactFetcher();
      *(v0 + 48) = &protocol witness table for ContactFetcher;
      *(v0 + 16) = v11;
      sub_22F0CFFAC();
      v12 = swift_task_alloc();
      *(v0 + 328) = v12;
      *v12 = v0;
      v12[1] = sub_22F098AC4;
      v13 = *(v0 + 208);

      return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v13, v0 + 16);
    }

    else
    {
      v21 = v9 + *(v8 + 40);
      *(v0 + 296) = *v21;
      *(v0 + 356) = *(v21 + 8);
      if (qword_280CBEC28 != -1)
      {
        swift_once();
      }

      v22 = qword_280CBEC30;
      *(v0 + 80) = type metadata accessor for ContactFetcher();
      *(v0 + 88) = &protocol witness table for ContactFetcher;
      *(v0 + 56) = v22;
      v23 = qword_27DAA0688;
      sub_22F0CFFAC();
      if (v23 != -1)
      {
        swift_once();
      }

      *(v0 + 304) = qword_27DAA2360;

      return MEMORY[0x2822009F8](sub_22F098050);
    }
  }

  else
  {
    v15 = *(v0 + 264);
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *(v16 + 16) = v15;
    v17 = *(MEMORY[0x277D859E0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 344) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v18 = v0;
    v18[1] = sub_22F098F64;
    v20 = *(v0 + 128);

    return MEMORY[0x2822007B8](v20, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v16, v19);
  }
}

uint64_t sub_22F098050()
{
  v1 = v0[38];
  sub_22F0B301C(v0[36], v0[28]);

  return MEMORY[0x2822009F8](sub_22F0980C0, 0, 0);
}

uint64_t sub_22F0980C0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  if ((*(v0 + 272))(v2, 1, *(v0 + 168)) == 1)
  {
    v3 = *(v0 + 356);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    v6 = swift_task_alloc();
    *(v0 + 312) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3;
    *(v6 + 40) = v0 + 56;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 320) = v8;
    *v8 = v0;
    v8[1] = sub_22F098388;
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = sub_22F040104;
    v12 = 0xD000000000000043;
    v13 = 0x800000022F0DE1C0;
    v14 = v6;
  }

  else
  {
    sub_22F01DE40(v2, *(v0 + 232), type metadata accessor for ResolvedFamily);
    v15 = *(v0 + 352);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v21 = *(v20 + 56);
    v21(v17, 0, 1, v19);
    sub_22F01DE40(v17, v18, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v16 + v15, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DE40(v18, v16 + v15, type metadata accessor for ResolvedFamily);
    v21(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
    v22 = *(v0 + 264);
    v23 = swift_task_alloc();
    *(v0 + 336) = v23;
    *(v23 + 16) = v22;
    v24 = *(MEMORY[0x277D859E0] + 4);
    v25 = swift_task_alloc();
    *(v0 + 344) = v25;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v25 = v0;
    v25[1] = sub_22F098F64;
    v9 = *(v0 + 128);
    v11 = sub_22F01DF0C;
    v13 = 0x800000022F0DD4E0;
    v12 = 0xD000000000000028;
    v14 = v23;
  }

  return MEMORY[0x2822007B8](v9, 0, 0, v12, v13, v11, v14, v10);
}

uint64_t sub_22F098388()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F0984A0, 0, 0);
}

uint64_t sub_22F0984A0()
{
  v1 = v0[18];
  sub_22F049FF4(v0[20], v0[19], &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[19];
    v3 = v0[20];
    v4 = *v2;
    v0[15] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v3, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v5 = v0[29];
    (*(v0[22] + 56))(v5, 1, 1, v0[21]);
    v6 = v0[33];
    sub_22F003A4C(v5, &qword_27DAA1448, &unk_22F0D6640);
    v7 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000022, 0x800000022F0DF560, 500);
    swift_willThrow();
    sub_22F012058(v6);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[16];
    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_27DAA1A28);
    v12 = v7;
    Logger.ifError(_:message:)(v7);

    (*(v9 + 56))(v10, 1, 1, v8);
    v13 = v0[33];
    v14 = v0[29];
    v15 = v0[30];
    v17 = v0[27];
    v16 = v0[28];
    v19 = v0[25];
    v18 = v0[26];
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[20];
    v26 = v0[19];

    v23 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v24 = v0[38];
  sub_22F01DE40(v0[19], v0[24], type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F0987A4, v24, 0);
}

uint64_t sub_22F0987A4()
{
  v1 = [**(v0 + 192) dsid];
  if (v1)
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v7 = v1;
    v8 = [v1 integerValue];
    sub_22F040184(v4, v3, type metadata accessor for ResolvedFamily);
    (*(v6 + 56))(v3, 0, 1, v5);
    swift_beginAccess();
    sub_22F046214(v3, v8);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F0988D0, 0, 0);
}

uint64_t sub_22F0988D0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  sub_22F003A4C(*(v0 + 160), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F01DE40(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 352);
  v4 = *(v0 + 264);
  v5 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v9 = *(v8 + 56);
  v9(v5, 0, 1, v7);
  sub_22F01DE40(v5, v6, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F01DE40(v6, v4 + v3, type metadata accessor for ResolvedFamily);
  v9(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
  v10 = *(v0 + 264);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  *(v11 + 16) = v10;
  v12 = *(MEMORY[0x277D859E0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *v13 = v0;
  v13[1] = sub_22F098F64;
  v15 = *(v0 + 128);

  return MEMORY[0x2822007B8](v15, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v11, v14);
}

uint64_t sub_22F098AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v5 = sub_22F09916C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v5 = sub_22F098BF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F098BF8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  if ((*(v0 + 272))(v2, 1, *(v0 + 168)) == 1)
  {
    v3 = *(v0 + 264);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    v4 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
    swift_willThrow();
    sub_22F012058(v3);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = *(v0 + 128);
    v8 = sub_22F0D0A1C();
    __swift_project_value_buffer(v8, qword_27DAA1A28);
    v9 = v4;
    Logger.ifError(_:message:)(v4);

    (*(v6 + 56))(v7, 1, 1, v5);
    v10 = *(v0 + 264);
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 160);
    v32 = *(v0 + 152);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 264);
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    sub_22F01DE40(v2, v24, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v23 + v22, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DE40(v24, v23 + v22, type metadata accessor for ResolvedFamily);
    (*(v25 + 56))(*(v0 + 264) + *(v0 + 352), 0, 1, *(v0 + 168));
    v26 = *(v0 + 264);
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *(v27 + 16) = v26;
    v28 = *(MEMORY[0x277D859E0] + 4);
    v29 = swift_task_alloc();
    *(v0 + 344) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
    *v29 = v0;
    v29[1] = sub_22F098F64;
    v31 = *(v0 + 128);

    return MEMORY[0x2822007B8](v31, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v27, v30);
  }
}

uint64_t sub_22F098F64()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F09907C, 0, 0);
}

uint64_t sub_22F09907C()
{
  sub_22F012058(v0[33]);
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[20];
  v13 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22F09916C()
{
  v1 = v0[26];
  (*(v0[22] + 56))(v1, 1, 1, v0[21]);
  v2 = v0[33];
  sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
  v3 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
  swift_willThrow();
  sub_22F012058(v2);
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[16];
  v7 = sub_22F0D0A1C();
  __swift_project_value_buffer(v7, qword_27DAA1A28);
  v8 = v3;
  Logger.ifError(_:message:)(v3);

  (*(v5 + 56))(v6, 1, 1, v4);
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[20];
  v21 = v0[19];

  v19 = v0[1];

  return v19();
}

uint64_t static AskToBuySupport.getDetailsWithDetails(withDetails:forId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[6] = v7;
  v8 = type metadata accessor for MessageDetails();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[11] = v11;
  *v11 = v4;
  v11[1] = sub_22F0994C4;

  return sub_22F097AE0(v7, a2);
}

uint64_t sub_22F0994C4()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F0995C0, 0, 0);
}

uint64_t sub_22F0995C0()
{
  v31 = v0;
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    sub_22F003A4C(v1, qword_27DAA11D0, &qword_22F0D5D88);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v2 = v0[5];
    v3 = sub_22F0D0A1C();
    __swift_project_value_buffer(v3, qword_27DAA1A28);
    sub_22F0CFF1C();
    v4 = sub_22F0D09FC();
    v5 = sub_22F0D124C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22F00A560(v7, v6, &v30);
      _os_log_impl(&dword_22EFE1000, v4, v5, "%s looking at spotlight for backing store", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2318FE8B0](v9, -1, -1);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_22F0999BC;
    v11 = v0[2];
    v12 = v0[3];

    return static SpotlightHelper.fillinDetailsFromSpotlight(withDetails:)(v11, v12);
  }

  else
  {
    sub_22F01DE40(v1, v0[10], type metadata accessor for MessageDetails);
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v14 = v0[9];
    v15 = v0[3];
    v16 = sub_22F0D0A1C();
    __swift_project_value_buffer(v16, qword_27DAA1A28);
    sub_22F040184(v15, v14, type metadata accessor for MessageDetails);
    v17 = sub_22F0D09FC();
    v18 = sub_22F0D122C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      v23 = *v20;
      v24 = v20[1];
      sub_22F0CFF1C();
      sub_22F012058(v20);
      v25 = sub_22F00A560(v23, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22EFE1000, v17, v18, "Fetched details from ask cache for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2318FE8B0](v22, -1, -1);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }

    else
    {

      sub_22F012058(v20);
    }

    sub_22F01DE40(v0[10], v0[2], type metadata accessor for MessageDetails);
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_22F0999BC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v8 = *v0;

  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[6];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t BiomeStreamReader.__allocating_init(statusType:readerStream:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BiomeStreamReader.init(statusType:readerStream:)(a1, a2);
  return v4;
}

uint64_t sub_22F099B6C(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return MEMORY[0x2821F96F8]();
}

void sub_22F099B78()
{
  v1 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBEC40);
  sub_22F0CFFAC();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  sub_22F0D00CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 16);
    if (v7 > 4)
    {
      v16 = 0x7373654D64616572;
      v17 = 0xEB00000000656761;
      v18 = 0xEA00000000006C6CLL;
      v19 = 0x614364657373696DLL;
      if (v7 != 8)
      {
        v19 = 0x7261646E656C6163;
        v18 = 0xE800000000000000;
      }

      if (v7 != 7)
      {
        v16 = v19;
        v17 = v18;
      }

      v20 = 0x617453646C696863;
      v21 = 0xEA00000000006574;
      if (v7 != 5)
      {
        v20 = 0x654D646165726E75;
        v21 = 0xED00006567617373;
      }

      if (*(v1 + 16) <= 6u)
      {
        v14 = v20;
      }

      else
      {
        v14 = v16;
      }

      if (*(v1 + 16) <= 6u)
      {
        v15 = v21;
      }

      else
      {
        v15 = v17;
      }
    }

    else
    {
      v8 = 0xEF7974696C696261;
      v9 = 0x6C69617641646E64;
      v10 = 0xE800000000000000;
      v11 = 0x6E6F697461636F6CLL;
      v12 = 0xEF74736575716552;
      v13 = 0x7975426F546B7361;
      if (v7 != 3)
      {
        v13 = 0xD000000000000011;
        v12 = 0x800000022F0DC350;
      }

      if (v7 != 2)
      {
        v11 = v13;
        v10 = v12;
      }

      if (*(v1 + 16))
      {
        v9 = 0x74536E6F69746F6DLL;
        v8 = 0xEB00000000657461;
      }

      if (*(v1 + 16) <= 1u)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }

      if (*(v1 + 16) <= 1u)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10;
      }
    }

    v22 = sub_22F00A560(v14, v15, &v24);

    *(v5 + 4) = v22;
    _os_log_impl(&dword_22EFE1000, v3, v4, "BiomeStream cancel %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  [*(v1 + 24) cancel];
  v23 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t BiomeStreamListener.__allocating_init(statusType:biomePublisher:eventHandler:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *BiomeStreamListener.init(statusType:biomePublisher:eventHandler:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = *a1;
  v4[3] = 0;
  *(v4 + 16) = v10;
  v11 = v9;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v12 = sub_22F0D0A1C();
  __swift_project_value_buffer(v12, qword_280CBEC40);
  v13 = sub_22F0D09FC();
  v14 = sub_22F0D124C();
  if (os_log_type_enabled(v13, v14))
  {
    v39 = v11;
    v40 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136315138;
    if (v10 > 4)
    {
      v25 = 0x7373654D64616572;
      v26 = 0xEB00000000656761;
      v27 = 0xEA00000000006C6CLL;
      v28 = 0x614364657373696DLL;
      if (v10 != 8)
      {
        v28 = 0x7261646E656C6163;
        v27 = 0xE800000000000000;
      }

      if (v10 != 7)
      {
        v25 = v28;
        v26 = v27;
      }

      v29 = 0x617453646C696863;
      v30 = 0xEA00000000006574;
      if (v10 != 5)
      {
        v29 = 0x654D646165726E75;
        v30 = 0xED00006567617373;
      }

      if (v10 <= 6)
      {
        v23 = v29;
      }

      else
      {
        v23 = v25;
      }

      if (v10 <= 6)
      {
        v24 = v30;
      }

      else
      {
        v24 = v26;
      }
    }

    else
    {
      v17 = 0xEF7974696C696261;
      v18 = 0x6C69617641646E64;
      v19 = 0xE800000000000000;
      v20 = 0x6E6F697461636F6CLL;
      v21 = 0xEF74736575716552;
      v22 = 0x7975426F546B7361;
      if (v10 != 3)
      {
        v22 = 0xD000000000000011;
        v21 = 0x800000022F0DC350;
      }

      if (v10 != 2)
      {
        v20 = v22;
        v19 = v21;
      }

      if (v10)
      {
        v18 = 0x74536E6F69746F6DLL;
        v17 = 0xEB00000000657461;
      }

      if (v10 <= 1)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      if (v10 <= 1)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }
    }

    v31 = sub_22F00A560(v23, v24, &aBlock);

    *(v15 + 4) = v31;
    _os_log_impl(&dword_22EFE1000, v13, v14, "BiomeStreamListener create for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);

    v11 = v39;
    a3 = v40;
  }

  else
  {
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v10;
  v45 = sub_22F09D598;
  v46 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22F09A628;
  v44 = &block_descriptor_10;
  v33 = _Block_copy(&aBlock);
  sub_22F0D00CC();
  v34 = swift_allocObject();
  *(v34 + 16) = *(v11 + 80);
  *(v34 + 24) = v10;
  *(v34 + 32) = a3;
  *(v34 + 40) = a4;
  v45 = sub_22F09D5B8;
  v46 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22F09B8A8;
  v44 = &block_descriptor_6;
  v35 = _Block_copy(&aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v36 = [a2 sinkWithCompletion:v33 receiveInput:v35];

  sub_22F0D00CC();
  _Block_release(v35);
  _Block_release(v33);
  v37 = v5[3];
  v5[3] = v36;

  return v5;
}

void sub_22F09A35C(uint64_t a1, unsigned __int8 a2)
{
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBDBE0);
  oslog = sub_22F0D09FC();
  v4 = sub_22F0D124C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    if (a2 > 4u)
    {
      v15 = 0x7373654D64616572;
      v16 = 0xEB00000000656761;
      v17 = 0xEA00000000006C6CLL;
      v18 = 0x614364657373696DLL;
      if (a2 != 8)
      {
        v18 = 0x7261646E656C6163;
        v17 = 0xE800000000000000;
      }

      if (a2 != 7)
      {
        v15 = v18;
        v16 = v17;
      }

      v19 = 0x617453646C696863;
      v20 = 0xEA00000000006574;
      if (a2 != 5)
      {
        v19 = 0x654D646165726E75;
        v20 = 0xED00006567617373;
      }

      if (a2 <= 6u)
      {
        v13 = v19;
      }

      else
      {
        v13 = v15;
      }

      if (a2 <= 6u)
      {
        v14 = v20;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xEF7974696C696261;
      v8 = 0x6C69617641646E64;
      v9 = 0xE800000000000000;
      v10 = 0x6E6F697461636F6CLL;
      v11 = 0xEF74736575716552;
      v12 = 0x7975426F546B7361;
      if (a2 != 3)
      {
        v12 = 0xD000000000000011;
        v11 = 0x800000022F0DC350;
      }

      if (a2 != 2)
      {
        v10 = v12;
        v9 = v11;
      }

      if (a2)
      {
        v8 = 0x74536E6F69746F6DLL;
        v7 = 0xEB00000000657461;
      }

      if (a2 <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v10;
      }

      if (a2 <= 1u)
      {
        v14 = v7;
      }

      else
      {
        v14 = v9;
      }
    }

    v21 = sub_22F00A560(v13, v14, &v23);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_22EFE1000, oslog, v4, "Biome stream sunk: %s it's all over now", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }
}

void sub_22F09A628(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22F0CFFAC();
  v5 = a2;
  v4();
  sub_22F0D00CC();
}

uint64_t sub_22F09A690(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_22F0D093C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22F0D091C();
  v8 = a2;
  _s6People0A9AnalyticsC25receiveInpuStopwatchBlock_5blockAC9StopWatchCAA10StatusTypeO_yyXEtFZ_0(&v8, sub_22F09D924);
  v6 = sub_22F0D00CC();
  MEMORY[0x2318FCE60](v6);
  return sub_22F0D00CC();
}

void sub_22F09A74C(int a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v80 = a4;
  v81 = a3;
  v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v83 = *(v5 - 8);
  v6 = *(v83 + 8);
  MEMORY[0x28223BE20](v5);
  v82 = &v76 - v7;
  v8 = sub_22F0D0A8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v76 - v14);
  if (qword_280CBDBD8 != -1)
  {
    swift_once();
  }

  v79 = sub_22F0D0A1C();
  __swift_project_value_buffer(v79, qword_280CBDBE0);
  v16 = sub_22F0D09FC();
  v17 = sub_22F0D124C();
  if (os_log_type_enabled(v16, v17))
  {
    v84 = v15;
    v77 = v9;
    v78 = v8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v87 = v19;
    *v18 = 136315138;
    if (v85 > 4u)
    {
      v28 = 0x7373654D64616572;
      v29 = 0xEB00000000656761;
      v30 = 0x614364657373696DLL;
      v31 = 0xEA00000000006C6CLL;
      if (v85 != 8)
      {
        v30 = 0x7261646E656C6163;
        v31 = 0xE800000000000000;
      }

      if (v85 != 7)
      {
        v28 = v30;
        v29 = v31;
      }

      v32 = 0x617453646C696863;
      v33 = 0xEA00000000006574;
      if (v85 != 5)
      {
        v32 = 0x654D646165726E75;
        v33 = 0xED00006567617373;
      }

      if (v85 <= 6u)
      {
        v26 = v32;
      }

      else
      {
        v26 = v28;
      }

      if (v85 <= 6u)
      {
        v27 = v33;
      }

      else
      {
        v27 = v29;
      }
    }

    else
    {
      v20 = 0x6C69617641646E64;
      v21 = 0xEF7974696C696261;
      v22 = 0xE800000000000000;
      v23 = 0x6E6F697461636F6CLL;
      v24 = 0x7975426F546B7361;
      v25 = 0xEF74736575716552;
      if (v85 != 3)
      {
        v24 = 0xD000000000000011;
        v25 = 0x800000022F0DC350;
      }

      if (v85 != 2)
      {
        v23 = v24;
        v22 = v25;
      }

      if (v85)
      {
        v20 = 0x74536E6F69746F6DLL;
        v21 = 0xEB00000000657461;
      }

      if (v85 <= 1u)
      {
        v26 = v20;
      }

      else
      {
        v26 = v23;
      }

      if (v85 <= 1u)
      {
        v27 = v21;
      }

      else
      {
        v27 = v22;
      }
    }

    v34 = sub_22F00A560(v26, v27, &v87);

    *(v18 + 4) = v34;
    _os_log_impl(&dword_22EFE1000, v16, v17, "%s event consume...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2318FE8B0](v19, -1, -1);
    MEMORY[0x2318FE8B0](v18, -1, -1);

    v9 = v77;
    v8 = v78;
    v15 = v84;
  }

  else
  {
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = [v35 eventBody];
    swift_unknownObjectRelease();
    if (v36)
    {
      v37 = dispatch_group_create();
      dispatch_group_enter(v37);
      v78 = v36;
      v81(v36);
      v38 = swift_allocObject();
      *(v38 + 16) = v85;
      *(v38 + 24) = v37;
      v39 = v37;
      sub_22F0D094C();
      sub_22F0D00CC();
      sub_22F0D00CC();
      sub_22F0D0A7C();
      if (qword_280CBD948 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_280CBD950);
      v40 = [objc_opt_self() seconds];
      v41 = v82;
      sub_22F0D019C();

      sub_22F0D018C();
      (*(v83 + 1))(v41, v5);
      sub_22F0D0A9C();
      v42 = *(v9 + 8);
      v42(v13, v8);
      sub_22F0D125C();
      if (sub_22F0D0A3C())
      {
        v43 = sub_22F0D09FC();
        v44 = sub_22F0D124C();
        if (os_log_type_enabled(v43, v44))
        {
          v84 = v15;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136315138;
          v83 = v42;
          if (v85 > 4u)
          {
            if (v85 <= 6u)
            {
              if (v85 == 5)
              {
                v47 = 0x617453646C696863;
                v48 = 0xEA00000000006574;
              }

              else
              {
                v47 = 0x654D646165726E75;
                v48 = 0xED00006567617373;
              }
            }

            else if (v85 == 7)
            {
              v47 = 0x7373654D64616572;
              v48 = 0xEB00000000656761;
            }

            else if (v85 == 8)
            {
              v47 = 0x614364657373696DLL;
              v48 = 0xEA00000000006C6CLL;
            }

            else
            {
              v48 = 0xE800000000000000;
              v47 = 0x7261646E656C6163;
            }
          }

          else if (v85 <= 1u)
          {
            if (v85)
            {
              v47 = 0x74536E6F69746F6DLL;
              v48 = 0xEB00000000657461;
            }

            else
            {
              v47 = 0x6C69617641646E64;
              v48 = 0xEF7974696C696261;
            }
          }

          else if (v85 == 2)
          {
            v48 = 0xE800000000000000;
            v47 = 0x6E6F697461636F6CLL;
          }

          else if (v85 == 3)
          {
            v47 = 0x7975426F546B7361;
            v48 = 0xEF74736575716552;
          }

          else
          {
            v47 = 0xD000000000000011;
            v48 = 0x800000022F0DC350;
          }

          v74 = sub_22F00A560(v47, v48, &v87);

          *(v45 + 4) = v74;
          _os_log_impl(&dword_22EFE1000, v43, v44, "receiveInput: %s eventHandler complete", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
LABEL_112:
          MEMORY[0x2318FE8B0](v46, -1, -1);
          MEMORY[0x2318FE8B0](v45, -1, -1);

          swift_unknownObjectRelease();
          v83(v84, v8);
          return;
        }
      }

      else
      {
        if (qword_280CBDB90 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v79, qword_280CBDB98);
        v43 = sub_22F0D09FC();
        v61 = sub_22F0D123C();
        if (os_log_type_enabled(v43, v61))
        {
          v83 = v42;
          v84 = v15;
          v62 = 0xD000000000000011;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136315394;
          *(v45 + 4) = sub_22F00A560(0xD00000000000002DLL, 0x800000022F0DF5F0, &v87);
          *(v45 + 12) = 2080;
          if (v85 > 4u)
          {
            if (v85 <= 6u)
            {
              if (v85 == 5)
              {
                v62 = 0x617453646C696863;
                v63 = 0xEA00000000006574;
              }

              else
              {
                v62 = 0x654D646165726E75;
                v63 = 0xED00006567617373;
              }
            }

            else if (v85 == 7)
            {
              v62 = 0x7373654D64616572;
              v63 = 0xEB00000000656761;
            }

            else if (v85 == 8)
            {
              v62 = 0x614364657373696DLL;
              v63 = 0xEA00000000006C6CLL;
            }

            else
            {
              v63 = 0xE800000000000000;
              v62 = 0x7261646E656C6163;
            }
          }

          else if (v85 <= 1u)
          {
            if (v85)
            {
              v62 = 0x74536E6F69746F6DLL;
              v63 = 0xEB00000000657461;
            }

            else
            {
              v62 = 0x6C69617641646E64;
              v63 = 0xEF7974696C696261;
            }
          }

          else if (v85 == 2)
          {
            v63 = 0xE800000000000000;
            v62 = 0x6E6F697461636F6CLL;
          }

          else if (v85 == 3)
          {
            v62 = 0x7975426F546B7361;
            v63 = 0xEF74736575716552;
          }

          else
          {
            v63 = 0x800000022F0DC350;
          }

          v75 = sub_22F00A560(v62, v63, &v87);

          *(v45 + 14) = v75;
          _os_log_impl(&dword_22EFE1000, v43, v61, "%s timeout exceeded for %s", v45, 0x16u);
          swift_arrayDestroy();
          goto LABEL_112;
        }
      }

      swift_unknownObjectRelease();
      v42(v15, v8);
      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v84 = sub_22F0D09FC();
  v49 = sub_22F0D123C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v84, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v87 = v51;
    *v50 = 136315394;
    if (v85 > 4u)
    {
      v64 = 0x7373654D64616572;
      v65 = 0xEB00000000656761;
      v66 = 0x614364657373696DLL;
      v67 = 0xEA00000000006C6CLL;
      if (v85 != 8)
      {
        v66 = 0x7261646E656C6163;
        v67 = 0xE800000000000000;
      }

      if (v85 != 7)
      {
        v64 = v66;
        v65 = v67;
      }

      v68 = 0x617453646C696863;
      v69 = 0xEA00000000006574;
      if (v85 != 5)
      {
        v68 = 0x654D646165726E75;
        v69 = 0xED00006567617373;
      }

      if (v85 <= 6u)
      {
        v58 = v68;
      }

      else
      {
        v58 = v64;
      }

      if (v85 <= 6u)
      {
        v59 = v69;
      }

      else
      {
        v59 = v65;
      }
    }

    else
    {
      v52 = 0x6C69617641646E64;
      v53 = 0xEF7974696C696261;
      v54 = 0xE800000000000000;
      v55 = 0x6E6F697461636F6CLL;
      v56 = 0x7975426F546B7361;
      v57 = 0xEF74736575716552;
      if (v85 != 3)
      {
        v56 = 0xD000000000000011;
        v57 = 0x800000022F0DC350;
      }

      if (v85 != 2)
      {
        v55 = v56;
        v54 = v57;
      }

      if (v85)
      {
        v52 = 0x74536E6F69746F6DLL;
        v53 = 0xEB00000000657461;
      }

      if (v85 <= 1u)
      {
        v58 = v52;
      }

      else
      {
        v58 = v55;
      }

      if (v85 <= 1u)
      {
        v59 = v53;
      }

      else
      {
        v59 = v54;
      }
    }

    v70 = sub_22F00A560(v58, v59, &v87);

    *(v50 + 4) = v70;
    *(v50 + 12) = 2080;
    v86 = a2;
    swift_unknownObjectRetain();
    v71 = sub_22F0D0CFC();
    v73 = sub_22F00A560(v71, v72, &v87);

    *(v50 + 14) = v73;
    _os_log_impl(&dword_22EFE1000, v84, v49, "%s the wrong type: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v51, -1, -1);
    MEMORY[0x2318FE8B0](v50, -1, -1);
  }

  else
  {
    v60 = v84;
  }
}