uint64_t type metadata accessor for SettingsZeroKeywordNavigationItemsProvider()
{
  result = qword_2812122A8;
  if (!qword_2812122A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CDE323C()
{
  result = sub_21CE6BB90();
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

uint64_t static SettingsEventCenter.default.getter()
{
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21CDE3384()
{
  type metadata accessor for SettingsEventCenter();
  v0 = swift_allocObject();
  result = sub_21CDE33C4(0);
  off_281212FB8 = v0;
  return result;
}

uint64_t sub_21CDE33C4(int a1)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBC8, &qword_21CE6EF28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBD0, &qword_21CE6EF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v61 - v6;
  v65 = sub_21CE6D140();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBD8, &qword_21CE6EF38);
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBE0, &qword_21CE6EF40);
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = v61 - v14;
  v74 = sub_21CE6CF80();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v74);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CE6CF60();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v21 = sub_21CE6CB40();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_21CDE40C8(0, &qword_281211A58, 0x277D85C78);
  v73 = "ubject";
  sub_21CE6CB30();
  v78[0] = MEMORY[0x277D84F90];
  sub_21CDE4110(&qword_281211A70, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3FBE8, &qword_21CE6EF48);
  sub_21CDE4158(&qword_281211AB0, &unk_27CE3FBE8, &qword_21CE6EF48);
  v24 = v75;
  sub_21CE6D1B0();
  (*(v15 + 104))(v18, *MEMORY[0x277D85260], v74);
  v74 = v23;
  *(v24 + 16) = sub_21CE6CFB0();
  *(v24 + 24) = sub_21CDE41A0(MEMORY[0x277D84F90]);
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FBF8, &qword_21CE6EF50);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_21CE6BE70();
  *(v24 + 56) = MEMORY[0x277D84FA0];
  *(v24 + 48) = v30;
  v31 = v76;
  *(v24 + 64) = v76;
  if (v31)
  {
    v78[0] = v30;
    swift_allocObject();
    swift_weakInit();
    sub_21CDE4158(&unk_281213258, &qword_27CE3FBF8, &qword_21CE6EF50);

    sub_21CE6BF10();
  }

  else
  {
    v32 = off_282E80568(&type metadata for DebugLoggingSettingsNavigationEventResponder, &off_282E80560);
    v34 = v33;
    v79 = &type metadata for DebugLoggingSettingsNavigationEventResponder;
    v80 = &off_282E80548;
    swift_beginAccess();
    sub_21CDE48B8(v78, v32, v34);
    swift_endAccess();
    v35 = off_282E80520(&type metadata for CrashAnnotationSettingsNavigationEventResponder, &off_282E80518);
    v37 = v36;
    v79 = &type metadata for CrashAnnotationSettingsNavigationEventResponder;
    v80 = &off_282E80500;
    swift_beginAccess();
    sub_21CDE48B8(v78, v35, v37);
    swift_endAccess();
    v38 = [objc_opt_self() mainBundle];
    v39 = [v38 bundleIdentifier];

    v73 = (v24 + 56);
    v61[1] = v27;
    if (v39)
    {
      v40 = sub_21CE6CC50();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    sub_21CDE4E58(v40, v42, v77);
    v43 = v77[0];
    v44 = v77[1];
    v45 = off_282E80168(&type metadata for SettingsAnalyticsNavigationEventResponder, &protocol witness table for SettingsAnalyticsNavigationEventResponder);
    v47 = v46;
    v79 = &type metadata for SettingsAnalyticsNavigationEventResponder;
    v80 = &protocol witness table for SettingsAnalyticsNavigationEventResponder;
    v78[0] = v43;
    v78[1] = v44;
    swift_beginAccess();
    sub_21CDE48B8(v78, v45, v47);
    swift_endAccess();
    v78[0] = *(v24 + 48);

    v48 = v62;
    sub_21CE6D130();
    v49 = [objc_opt_self() mainRunLoop];
    v77[2] = v49;
    v50 = sub_21CE6D120();
    v51 = v64;
    (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
    sub_21CDE40C8(0, &unk_2812117F0, 0x277CBEB88);
    sub_21CDE4158(&unk_281213258, &qword_27CE3FBF8, &qword_21CE6EF50);
    sub_21CDE50A8(&qword_281211800, &unk_2812117F0, 0x277CBEB88);
    v52 = v66;
    sub_21CE6BF00();
    sub_21CDE5494(v51, &qword_27CE3FBD0, &qword_21CE6EF30);

    (*(v63 + 8))(v48, v65);

    v78[0] = *(v24 + 16);
    v53 = v78[0];
    v54 = sub_21CE6CF70();
    v55 = v72;
    (*(*(v54 - 8) + 56))(v72, 1, 1, v54);
    sub_21CDE4158(&qword_281213278, &qword_27CE3FBD8, &qword_21CE6EF38);
    sub_21CDE50A8(&unk_281211A60, &qword_281211A58, 0x277D85C78);
    v56 = v53;
    v58 = v68;
    v57 = v69;
    sub_21CE6BEF0();
    sub_21CDE5494(v55, &qword_27CE3FBC8, &qword_21CE6EF28);

    (*(v67 + 8))(v52, v58);
    swift_allocObject();
    swift_weakInit();
    sub_21CDE4158(&qword_281213268, &qword_27CE3FBE0, &qword_21CE6EF40);
    v59 = v71;
    sub_21CE6BF10();

    (*(v70 + 8))(v57, v59);
  }

  swift_beginAccess();
  sub_21CE6BE20();
  swift_endAccess();

  return v24;
}

uint64_t sub_21CDE3ED8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for SettingsNavigationEventRecord()
{
  result = qword_281212858;
  if (!qword_281212858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CDE3F5C()
{
  sub_21CE6B960();
  if (v0 <= 0x3F)
  {
    sub_21CDE4020();
    if (v1 <= 0x3F)
    {
      sub_21CE6BA60();
      if (v2 <= 0x3F)
      {
        sub_21CDE4078();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CDE4020()
{
  if (!qword_281211AC8)
  {
    sub_21CE6B960();
    v0 = sub_21CE6CD90();
    if (!v1)
    {
      atomic_store(v0, &qword_281211AC8);
    }
  }
}

void sub_21CDE4078()
{
  if (!qword_281211AD0)
  {
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_281211AD0);
    }
  }
}

uint64_t sub_21CDE40C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_21CDE4110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDE4158(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21CDE41A0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_21CDE4378(v3, 0);
  v22 = v2;
  sub_21CDE47CC(0, v3, 0);
  if (!v3)
  {
    return v23;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    sub_21CDEF704(v5 + 56 * v4, v20);
    v7 = v20[0];
    v6 = v20[1];
    sub_21CDE4CD8(&v21, v19);
    v8 = v23;
    v9 = v24;
    v10 = *(v24 + 16);
    if (!v23)
    {
      break;
    }

    sub_21CDFBE4C(v7, v6, v9 + 32, v10, (v8 + 16));
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_21CDE4B60(v7, v6);
    sub_21CDE4CF4(v19, v18);
    v22 = v2;
    v17 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_21CDE47CC((v16 > 1), v17 + 1, 1);

      v2 = v22;
    }

    else
    {
    }

    ++v4;
    __swift_destroy_boxed_opaque_existential_1(v19);
    *(v2 + 16) = v17 + 1;
    sub_21CDE4CD8(v18, v2 + 40 * v17 + 32);
    if (v4 == v3)
    {
      return v23;
    }
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = (v24 + 40);
  while (1)
  {
    result = *(v14 - 1);
    if (result == v7 && *v14 == v6)
    {
      break;
    }

    result = sub_21CE6D400();
    if (result)
    {
      break;
    }

    v14 += 2;
    if (!--v10)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21CDE4378(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_21CDE4558(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x21CF19C80](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x21CF19C80](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x21CF19C80](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_21CDFBC4C(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_21CE6BC90();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

char *sub_21CDE4558(char *a1, int64_t a2, char a3)
{
  result = sub_21CDE4578(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CDE4578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDE4684(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40070, &qword_21CE712A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40078, &qword_21CE712A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDE47CC(void *a1, int64_t a2, char a3)
{
  result = sub_21CDE4684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21CDE4848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF20, qword_21CE70380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDE48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = *(v7 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_21CDFBE4C(a2, a3, v7 + 32, v9, (v8 + 16));
    v13 = v12;
    v15 = v14;

    sub_21CDE4848(a1, &v30);
    if (v13)
    {
      if (v31)
      {
LABEL_4:
        sub_21CDE4CD8(&v30, v29);
        sub_21CDE4B60(a2, a3);

        sub_21CDE4CF4(v29, v28);
        v18 = v3[2];
        v16 = v3 + 2;
        v17 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v16 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21CDE47CC(0, *(v17 + 16) + 1, 1);
          v17 = *v16;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21CDE47CC((v20 > 1), v21 + 1, 1);
        }

        sub_21CDE4D58(a1);
        __swift_destroy_boxed_opaque_existential_1(v29);
        v22 = *v16;
        *(v22 + 16) = v21 + 1;
        result = sub_21CDE4CD8(v28, v22 + 40 * v21 + 32);
        *v16 = v22;
        return result;
      }

LABEL_18:
      sub_21CDE4D58(a1);
    }
  }

  else
  {
    if (!v9)
    {
LABEL_17:
      sub_21CDE4848(a1, &v30);
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    v11 = 0;
    v24 = (v7 + 40);
    while (1)
    {
      v25 = *(v24 - 1) == a2 && *v24 == a3;
      if (v25 || (sub_21CE6D400() & 1) != 0)
      {
        break;
      }

      ++v11;
      v24 += 2;
      if (v9 == v11)
      {
        goto LABEL_17;
      }
    }

    sub_21CDE4848(a1, &v30);
    v15 = 0;
  }

  if (v31)
  {
    sub_21CDE4CD8(&v30, v29);
    v26 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_21CE12DFC(v26);
    }

    result = sub_21CDE4D58(a1);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < v26[2])
    {
      v27 = &v26[5 * v11];
      __swift_destroy_boxed_opaque_existential_1(v27 + 4);
      result = sub_21CDE4CD8(v29, (v27 + 4));
      v3[2] = v26;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_21CDFBF98(v11, v15);

    sub_21CDFC100(v11, v29);
    sub_21CDE4D58(a1);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return result;
}

uint64_t sub_21CDE4B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_21CDE4558(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_21CDE4558((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x21CF19C50](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_21CE6BC90();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_21CE6BC30();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_21CDFBBAC();
}

uint64_t sub_21CDE4CD8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CDE4CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CDE4D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF20, qword_21CE70380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_21CDE4E58(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_281216608);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_21CDF2CC8(a1, a2, &v11);
    _os_log_impl(&dword_21CDE1000, v7, v8, "Initializing Navigation analytics for bundleID %{private,mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_21CDE4FC4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21CE6BDA0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_21CE6BD90();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21CDE50A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21CDE40C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CDE5100(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21CE6B960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_21CE6BA60();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t SettingsEventCenter.addResponder<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(a3 + 8) + 8))(a2);
  v8 = v7;
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  swift_beginAccess();
  sub_21CDE48B8(v11, v6, v8);
  return swift_endAccess();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21CDE537C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7888;

  return sub_21CDE5D3C(a1, v4, v5, v6);
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

uint64_t sub_21CDE5494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - v8;
  v9 = sub_21CE6D050();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40088, &qword_21CE71308);
  v17 = *(v38 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v38);
  v20 = &v37 - v19;
  v21 = MEMORY[0x277D84F90];
  v3[4] = MEMORY[0x277D84F90];
  v3[5] = v21;
  v22 = MEMORY[0x277D84FA0];
  v3[6] = 0;
  v3[7] = v22;
  sub_21CE6BB80();
  v3[2] = a1;
  v3[3] = a2;
  v23 = [objc_opt_self() defaultCenter];
  gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshRecentsNotificationName(v24);
  v26 = **(v25 + 616);
  sub_21CE6D060();
  gotLoadHelper_x8__ATXSettingsActionsClientDidRefreshSuggestionsNotificationName(v27);
  v29 = **(v28 + 624);
  sub_21CE6D060();
  sub_21CDE5974(&unk_281211A38, MEMORY[0x277CC9DB0]);
  sub_21CE6BEE0();
  v30 = *(v10 + 8);
  v30(v14, v9);
  v30(v16, v9);
  swift_allocObject();
  swift_weakInit();
  sub_21CDE59BC();
  v31 = v38;
  sub_21CE6BF10();

  (*(v17 + 8))(v20, v31);
  swift_beginAccess();
  sub_21CE6BE20();
  swift_endAccess();

  v32 = v39;
  sub_21CE6CDF0();
  v33 = sub_21CE6CE20();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v34;
  sub_21CE0B338(0, 0, v32, &unk_21CE71318, v35);

  sub_21CDE5494(v32, &qword_27CE401F0, &qword_21CE71300);
  return v3;
}

uint64_t sub_21CDE5934()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDE5974(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CDE59BC()
{
  result = qword_281213270;
  if (!qword_281213270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40088, &qword_21CE71308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213270);
  }

  return result;
}

uint64_t sub_21CDE5A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDE5A90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CDE7888;

  return sub_21CDE5B48(a1, v5);
}

uint64_t sub_21CDE5B48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CDE8850;

  return v7(a1);
}

void *LinkMetadataIndexer.init(with:)(uint64_t a1)
{
  v1[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v3 = *MEMORY[0x277CCA1A0];
  v4 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v5 = v3;
  v6 = sub_21CE6CC20();
  v7 = [v4 initWithName:v6 protectionClass:v5];

  v1[3] = v7;
  v1[4] = a1;
  return v1;
}

uint64_t sub_21CDE5D5C()
{
  v1 = v0[176];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[177] = Strong;
  if (Strong)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A0, &qword_21CE71440);
    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 2, v0 + 173, sub_21CDE7AF4, v0 + 162);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_21CDE5E98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CDE7888;

  return sub_21CDE5F34(a1);
}

uint64_t sub_21CDE5F34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21CDE773C;

  return SettingsZeroKeywordNavigationItemsProvider.requestAndProcessRecents()();
}

uint64_t sub_21CDE5FE8(double a1)
{
  v2 = v1[19];
  gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(a1);
  v4 = [objc_allocWithZone(*(v3 + 2056)) init];
  v1[20] = v4;
  [v4 setLimit_];
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_21CE6CC20();
  [v4 setClientBundleID_];

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  v1[21] = __swift_project_value_buffer(v8, qword_281216608);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21CDE1000, v9, v10, "Requesting Recents", v11, 2u);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  v12 = v1[19];

  v14 = sub_21CDE62C4(v13);
  v1[22] = v14;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_21CDE6994;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40090, &qword_21CE71328);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CDE6724;
  v1[13] = &block_descriptor_0;
  v1[14] = v15;
  [v14 recentActionsWithRequest:v4 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21CDE6228(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21CDE7A00;

  return sub_21CDE6330(a1);
}

id sub_21CDE62C4(double a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 48);
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClient(a1);
    v5 = [objc_allocWithZone(*(v4 + 2048)) init];
    v6 = *(v1 + 48);
    *(v1 + 48) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_21CDE6330(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21CDE78B0;

  return SettingsZeroKeywordNavigationItemsProvider.requestAndProcessSuggestions()();
}

uint64_t sub_21CDE63C4(double a1)
{
  v2 = v1[19];
  gotLoadHelper_x8__OBJC_CLASS___ATXSettingsActionsClientRequest(a1);
  v4 = [objc_allocWithZone(*(v3 + 2056)) init];
  v1[20] = v4;
  [v4 setLimit_];
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_21CE6CC20();
  [v4 setClientBundleID_];

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  v1[21] = __swift_project_value_buffer(v8, qword_281216608);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21CDE1000, v9, v10, "Requesting Suggestions", v11, 2u);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  v12 = v1[19];

  v14 = sub_21CDE62C4(v13);
  v1[22] = v14;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_21CDE6C08;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40090, &qword_21CE71328);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CDE6724;
  v1[13] = &block_descriptor_14;
  v1[14] = v15;
  [v14 suggestedActionsWithRequest:v4 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CDE66C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CDE6724(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for SettingsPaneRecipe()
{
  result = qword_281213050;
  if (!qword_281213050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CDE6900()
{
  type metadata accessor for NSBundle.PluginLocation(319);
  if (v0 <= 0x3F)
  {
    sub_21CDE6F48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CDE6994()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_21CE0B250;
  }

  else
  {
    v3 = sub_21CDE6AA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CDE6AA4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v0[24] = v3;

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Processing Recents", v6, 2u);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  v7 = [v3 actions];
  gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(v8);
  sub_21CDE40C8(0, v10, (v9 + 2040));
  v11 = sub_21CE6CD40();
  v0[25] = v11;

  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_21CDE7468;
  v13 = v0[19];

  return sub_21CDE6F28(v11);
}

uint64_t sub_21CDE6C08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_21CE0C478;
  }

  else
  {
    v3 = sub_21CDE6D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CDE6D18(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CDE6D50()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v0[24] = v3;

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Processing Suggestions", v6, 2u);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  v7 = [v3 actions];
  gotLoadHelper_x2__OBJC_CLASS___ATXSettingsAction(v8);
  sub_21CDE40C8(0, v10, (v9 + 2040));
  v11 = sub_21CE6CD40();
  v0[25] = v11;

  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_21CDE7608;
  v13 = v0[19];

  return sub_21CDE6F28(v11);
}

uint64_t sub_21CDE6EB4()
{
  result = sub_21CE6BA60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CDE6F28(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_21CDE6F98, 0, 0);
}

void sub_21CDE6F48()
{
  if (!qword_2812117E0)
  {
    v0 = sub_21CE6D150();
    if (!v1)
    {
      atomic_store(v0, &qword_2812117E0);
    }
  }
}

uint64_t sub_21CDE6F98()
{
  v15 = v0;
  v1 = v0[7];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[7];
    }

    v2 = sub_21CE6D360();
    v0[9] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[7];
      v0[10] = MEMORY[0x277D84F90];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CF1B2A0](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x28210B540](v2, v3);
        }

        v4 = *(v3 + 32);
      }

      v0[11] = v4;
      v0[12] = 1;
      v5 = [v4 linkAction];
      v0[5] = sub_21CDE40C8(0, &qword_2812119C8, 0x277D23720);
      v0[2] = v5;
      v6 = *(MEMORY[0x277CB9C40] + 4);
      v7 = swift_task_alloc();
      v0[13] = v7;
      sub_21CDF3438();
      *v7 = v0;
      v7[1] = sub_21CE0B5E8;
      v2 = (v0 + 6);
      v3 = (v0 + 2);

      return MEMORY[0x28210B540](v2, v3);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[9] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = v0[8];
  v14 = MEMORY[0x277D84FA0];

  v10 = sub_21CDE71C0(MEMORY[0x277D84F90], &v14, v9);
  v11 = v0[8];

  v12 = v0[1];

  return v12(v10);
}

void *sub_21CDE71C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40098, &unk_21CE71410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v29 = type metadata accessor for SettingsNavigationEventRecord();
  v11 = *(*(v29 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = (a1 + 32);
  v25 = v14;
  v19 = (v14 + 48);
  v20 = MEMORY[0x277D84F90];
  v26 = a2;
  v27 = a3;
  while (1)
  {
    v30 = *v18;

    sub_21CE0B9D8(&v30, a2, a3, v10);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v29) == 1)
    {
      sub_21CDE5494(v10, &qword_27CE40098, &unk_21CE71410);
    }

    else
    {
      sub_21CE0C2E8(v10, v16);
      sub_21CE0C2E8(v16, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21CDF2368(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_21CDF2368(v21 > 1, v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_21CE0C2E8(v28, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22);
      a2 = v26;
      a3 = v27;
    }

    ++v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_21CDE7468(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_21CE0B2C8;
  }

  else
  {
    v8 = *(v4 + 200);

    *(v4 + 224) = a1;
    v7 = sub_21CDE7598;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21CDE7598()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 224);

  return v2(v3);
}

uint64_t sub_21CDE7608(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_21CE0C47C;
  }

  else
  {
    v8 = *(v4 + 200);

    *(v4 + 224) = a1;
    v7 = sub_21CDE7738;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21CDE773C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_21CDE79FC, 0, 0);
  }
}

uint64_t sub_21CDE78B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_21CDE788C, 0, 0);
  }
}

uint64_t sub_21CDE7A00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21CDE7AF4()
{
  v1[178] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 174, sub_21CE0AD64, v1 + 162);
  }

  else
  {
    v1[179] = v1[173];

    return MEMORY[0x282200930](v1 + 82, v1 + 174, sub_21CDE7BA8, v1 + 162);
  }
}

uint64_t sub_21CDE7BA8()
{
  *(v1 + 1440) = v0;
  if (v0)
  {
    v2 = sub_21CE0AFA4;
  }

  else
  {
    v2 = sub_21CDE7BDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CDE7BDC()
{
  v1 = v0[177];
  v0[181] = v0[174];
  swift_weakInit();
  sub_21CE6CDE0();

  v0[182] = sub_21CE6CDD0();
  v3 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CDE7C8C, v3, v2);
}

void sub_21CDE7C8C()
{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];

  sub_21CDE7D64();
  if (v3)
  {
  }

  else
  {
    v5 = v0[181];
    v6 = v0[179];
    swift_weakDestroy();

    MEMORY[0x2822009F8](sub_21CDE8774, 0, 0);
  }
}

uint64_t sub_21CDE7D64()
{
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_281216608);
  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CDE1000, v1, v2, "Updating current records", v3, 2u);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_21CDE7ED8(v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21CDE8620(v6);
  }

  return result;
}

uint64_t sub_21CDE7ED8(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_21CDE8048(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CDE8048(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6B960();
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v59 = type metadata accessor for SettingsNavigationEventRecord();
  v10 = *(*(v59 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v59);
  v64 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (!v16 || a1 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = a1 + v18;
  v55 = *(a1 + 16);
  v56 = a2 + v18;
  v62 = (v66 + 8);
  v63 = v66 + 16;
  v20 = *(v13 + 72);
  v58 = &v53 - v14;
  v53 = v20;
  v54 = a1 + v18;
  while (1)
  {
    v21 = v20 * v17;
    result = sub_21CDFB51C(v19 + v20 * v17, v15);
    if (v17 == v16)
    {
      break;
    }

    v23 = v56 + v21;
    v24 = v64;
    sub_21CDFB51C(v23, v64);
    v26 = *v15;
    v25 = *(v15 + 1);
    v27 = v15[16];
    v29 = *v24;
    v28 = *(v24 + 8);
    v30 = *(v24 + 16);
    v57 = v17;
    if (v27)
    {
      if ((v30 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v26 == v29 && v25 == v28)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v30)
      {
LABEL_36:
        sub_21CDEFF74();
        sub_21CDEFF74();
        sub_21CDEFF7C();
        sub_21CDEFF7C();
LABEL_37:
        sub_21CDFB580(v64);
        sub_21CDFB580(v58);
        return 0;
      }

      if (v26 == v29 && v25 == v28)
      {
LABEL_14:
        sub_21CDEFF74();
        sub_21CDEFF74();
        sub_21CDEFF7C();
        sub_21CDEFF7C();
        goto LABEL_16;
      }
    }

    v31 = sub_21CE6D400();
    sub_21CDEFF74();
    sub_21CDEFF74();
    sub_21CDEFF7C();
    sub_21CDEFF7C();
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_16:
    result = MEMORY[0x21CF19920](&v58[v59[5]], v64 + v59[5]);
    if ((result & 1) == 0)
    {
      goto LABEL_37;
    }

    v32 = v59[6];
    v33 = *&v58[v32];
    v34 = *(v64 + v32);
    v35 = *(v33 + 16);
    if (v35 != *(v34 + 16))
    {
      goto LABEL_37;
    }

    if (v35 && v33 != v34)
    {
      v36 = 0;
      v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v60 = v34 + v37;
      v61 = v33 + v37;
      while (v36 < *(v33 + 16))
      {
        v38 = *(v66 + 72) * v36;
        v39 = *(v66 + 16);
        result = v39(v9, v61 + v38, v4);
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_40;
        }

        v40 = v9;
        v41 = v65;
        v39(v65, v60 + v38, v4);
        sub_21CDE5974(&qword_2812132D0, MEMORY[0x277CC9130]);
        v42 = sub_21CE6CBA0();
        v43 = *v62;
        v44 = v41;
        v9 = v40;
        (*v62)(v44, v4);
        result = (v43)(v40, v4);
        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }

        if (v35 == ++v36)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_25:
    v45 = v59[7];
    if ((sub_21CE6B9E0() & 1) == 0)
    {
      goto LABEL_37;
    }

    v15 = v58;
    v46 = v59[8];
    v47 = &v58[v46];
    v48 = *&v58[v46 + 8];
    v49 = (v64 + v46);
    v50 = v49[1];
    v51 = v50 == 0;
    if (!v48)
    {
      goto LABEL_32;
    }

    if (!v50)
    {
      goto LABEL_37;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = sub_21CE6D400();
      v15 = v58;
LABEL_32:
      v16 = v55;
      v52 = v57;
      sub_21CDFB580(v64);
      sub_21CDFB580(v15);
      if ((v51 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

    sub_21CDFB580(v64);
    v15 = v58;
    sub_21CDFB580(v58);
    v16 = v55;
    v52 = v57;
LABEL_33:
    v17 = v52 + 1;
    result = 1;
    v20 = v53;
    v19 = v54;
    if (v17 == v16)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CDE8620(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_21CDE8048(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
    sub_21CE6BB60();
  }
}

uint64_t sub_21CDE87EC()
{
  v1 = *(v0 + 1416);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CDE8850()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.recents.getter()
{
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  v1 = *(v0 + 40);
}

uint64_t sub_21CDE8A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDE8AC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21CE6BA60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CDE8B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDE8BD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE8D74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CDE8C68()
{
  result = qword_2812131E0;
  if (!qword_2812131E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FFE8, &unk_21CE71030);
    sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131E0);
  }

  return result;
}

unint64_t sub_21CDE8D20()
{
  result = qword_281211F70;
  if (!qword_281211F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F70);
  }

  return result;
}

unint64_t sub_21CDE8D74()
{
  result = qword_281212580;
  if (!qword_281212580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212580);
  }

  return result;
}

uint64_t SettingsNavigationProxy.init(namespace:responder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2 & 1;
  return sub_21CDE8DE8(a3, a4);
}

uint64_t sub_21CDE8DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF30, &qword_21CE70520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t View.settingsNavigationProxy(_:)()
{
  swift_getKeyPath();
  sub_21CE6C7B0();
}

uint64_t get_enum_tag_for_layout_string_8Settings0A24NavigationProxyResponder_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t sub_21CDE8F48()
{
  result = qword_2812131B8;
  if (!qword_2812131B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FF28, &unk_21CE70480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131B8);
  }

  return result;
}

unint64_t sub_21CDE8FAC()
{
  result = qword_2812128C0;
  if (!qword_2812128C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812128C0);
  }

  return result;
}

unint64_t sub_21CDE9004()
{
  result = qword_2812128C8;
  if (!qword_2812128C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812128C8);
  }

  return result;
}

unint64_t sub_21CDE9098()
{
  result = qword_281212870;
  if (!qword_281212870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212870);
  }

  return result;
}

uint64_t sub_21CDE90F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_21CDE9220(&unk_281212888, a1);
}

uint64_t sub_21CDE9174()
{
  if (qword_2812128D8 != -1)
  {
    swift_once();
  }

  return sub_21CDE9220(&xmmword_2812128E0, &unk_281212888);
}

uint64_t sub_21CDE91D8()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  xmmword_2812128E0 = 0u;
  *algn_2812128F0 = 0u;
  xmmword_281212900 = 0u;
  byte_281212910 = 1;
  return sub_21CDE8DE8(v1, &xmmword_2812128E0);
}

uint64_t sub_21CDE9288(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21CDE92EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_21CDE9348(uint64_t a1)
{
  sub_21CDE9220(a1, v3);
  sub_21CDE9220(v3, &v2);
  sub_21CDE8FAC();
  sub_21CE6C2A0();
  return sub_21CDE93A8(v3);
}

uint64_t sub_21CDE93FC(uint64_t a1, uint64_t a2)
{
  sub_21CDE9220(a2, v5);
  v3 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_21CDE94B4(v5);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21CDE94B4(uint64_t a1)
{
  sub_21CDE9220(a1, v3);
  sub_21CDE9098();
  sub_21CE6BDB0();
  return sub_21CDE93A8(a1);
}

uint64_t sub_21CDE9520(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 40), *(a2 + 40));
  }
}

uint64_t static NSBundle.PluginLocation.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118F8);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CDE95C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v9, qword_2812118F8);
  v10 = __swift_project_value_buffer(v9, qword_2812118F8);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v11 = sub_21CE6BA60();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  result = sub_21CE6BA50();
  v13 = (v10 + *(v9 + 20));
  *v13 = 0x656C646E7562;
  v13[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_21CDE9794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  sub_21CE6B9C0();
  v12 = (a3 + *(type metadata accessor for NSBundle.PluginLocation(0) + 20));
  v13 = *v12;
  v14 = v12[1];
  sub_21CE6B9D0();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v21 = 0;
  v16 = [objc_opt_self() defaultManager];
  sub_21CE6BA10();
  v17 = sub_21CE6CC20();

  LOBYTE(a3) = [v16 fileExistsAtPath:v17 isDirectory:&v21];

  v15(v11, v4);
  v18 = *MEMORY[0x277D85DE8];
  return a3 & v21;
}

uint64_t static NSBundle.PluginLocation.appleInternalPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812118C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  v3 = __swift_project_value_buffer(v2, qword_2812118D0);
  return sub_21CDE9794(v3, a1, type metadata accessor for NSBundle.PluginLocation);
}

uint64_t sub_21CDE9A58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21CE6B970();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NSBundle.PluginLocation(0);
  __swift_allocate_value_buffer(v9, qword_2812118D0);
  v10 = __swift_project_value_buffer(v9, qword_2812118D0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  v11 = sub_21CE6BA60();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  result = sub_21CE6BA50();
  v13 = (v10 + *(v9 + 20));
  *v13 = 0x656C646E7562;
  v13[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_21CDE9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21CDE9C8C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21CDE9C8C()
{
  result = qword_281212B48[0];
  if (!qword_281212B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281212B48);
  }

  return result;
}

uint64_t sub_21CDE9D08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21CE6CC50();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21CDE9D34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDE9D6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21CE6B650();
  *a2 = result;
  return result;
}

double sub_21CDE9DA8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_21CE6B630();
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  return result;
}

uint64_t sub_21CDE9DF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_21CE6B5C0();
  *a2 = result;
  return result;
}

uint64_t sub_21CDE9E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21CE6B5A0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_21CDE9E74@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_21CE6B5A0();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21CDE9EDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_21CE6B5A0();
  *a2 = v5;
  return result;
}

double sub_21CDE9F44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_21CE6B5A0();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21CDEA004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_21CE6B5A0();
  *a2 = v5;
  return result;
}

uint64_t sub_21CDEA044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_21CE6B5A0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CDEA0F4()
{
  v1 = sub_21CE6B960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  sub_21CDEFF7C();
  (*(v2 + 8))(v0 + v4, v1);
  v15 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21CDEA25C()
{
  v1 = sub_21CE6B960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_21CDEA3C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CE6C0D0();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEA42C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FF28, &unk_21CE70480);
  sub_21CE6C0D0();
  sub_21CDE8F48();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NSBundle.PluginLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CDEA550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSBundle.PluginLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEA600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_21CDEA60C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_21CDEA650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21CE6C090();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21CDEA740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21CE6C090();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21CDEA83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CDEA8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CDEA95C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE6C200();
  *a1 = result;
  return result;
}

uint64_t sub_21CDEA9B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C1A0();
  *a1 = result;
  return result;
}

uint64_t sub_21CDEA9DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CE6C1B0();
}

uint64_t sub_21CDEAA1C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21CDEAA5C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEAA94()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21CDEAB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_21CDEAC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_21CDEAD98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21CE6B960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_21CE6BA60();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21CDEAEC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEAEFC()
{
  v1 = *(v0 + 32);
  v2 = (sub_21CE6CA90() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CDEAFFC()
{
  v21 = *(v0 + 32);
  v1 = (sub_21CE6CA90() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v19 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_21CE6B960();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = (v19 + v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v18 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = (v0 + v3);
  v15 = *v14;

  v16 = *(v14 + 1);

  (*(*(v21 - 8) + 8))(&v14[v1[10]]);
  __swift_destroy_boxed_opaque_existential_1((v0 + v19));
  (*(v4 + 8))(v0 + v6, v20);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v18, v12 | 7);
}

uint64_t sub_21CDEB228()
{
  v1 = *(v0 + 16);
  v2 = (sub_21CE6CA90() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  v10 = v0 + v4;
  v11 = *(v0 + v4);

  v12 = *(v10 + 8);

  v13 = v2[10];
  v14 = *(v5 + 8);
  v14(v10 + v13, v1);
  v14(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_21CDEB40C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  return sub_21CE0D9E4(v3 + v4, a2);
}

uint64_t sub_21CDEB498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21CDEB4F4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_21CDEB554()
{
  v1 = (type metadata accessor for SettingsUndoAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_21CE6BA60();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_21CE6BAF0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDEB6C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEB770()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB7A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEB7F0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_21CE18AA8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21CDEB890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CDEB8D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEB928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40790, &qword_21CE72498);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21CDEB9BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_21CDEBA0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBA50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBA88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBACC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CE6BA60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21CE6BAF0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21CDEBBF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21CE6BA60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21CE6BAF0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CDEBD20()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21CDEBD58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEBDBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_21CDEBF28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21CDEBF94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21CE33908();
  *a2 = result;
  return result;
}

uint64_t sub_21CDEBFC0(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(*a2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = *a1;

  return sub_21CE35E20(v2);
}

uint64_t sub_21CDEC050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21CDEC0AC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_21CDEC138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_21CDEC248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21CDEC2B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21CDEC30C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21CDEC360()
{
  MEMORY[0x21CF1BE30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEC3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C18, qword_21CE73320);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21CDEC530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C18, qword_21CE73320);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CDEC670(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SettingsListAppearanceModifier();
  sub_21CE6C0D0();
  sub_21CE3B9B4(&unk_2812127B0, type metadata accessor for SettingsListAppearanceModifier);
  return swift_getWitnessTable();
}

uint64_t sub_21CDEC70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE8, &qword_21CE73240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CDEC774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEC7C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEC7FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CDEC844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21CDEC910(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CDEC9F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21CDEC9FC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21CDECA20@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE54EC0();
  result = sub_21CE6C290();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDECA70(char *a1)
{
  v2 = *a1;
  sub_21CE54EC0();
  return sub_21CE6C2A0();
}

uint64_t sub_21CDECABC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CE40DA0;
  return result;
}

uint64_t sub_21CDECB08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CE40DA0 = v1;
  return result;
}

uint64_t sub_21CDECB7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(255);
  sub_21CE6C0D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40E10, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_21CDECC68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = *a1;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier(255);
  sub_21CE6C0D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40E10, type metadata accessor for SettingsFeatureDescriptionNavigationTitleViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_21CDECD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E20, &unk_21CE73BE0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21CDECE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E20, &unk_21CE73BE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CDED040(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CE55EC0(v2, v3);
}

uint64_t sub_21CDED0FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDED134()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E70, &qword_21CE73CC0);
  sub_21CE6BF30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40E68, &qword_21CE73CB8);
  sub_21CE596D0();
  swift_getOpaqueTypeConformance2();
  sub_21CE59380(&qword_27CE40EE8, MEMORY[0x277CDF3E0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21CDED248@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE54E08();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDED298(char *a1)
{
  v2 = *a1;
  sub_21CE54E08();
  return sub_21CE6C2C0();
}

double sub_21CDED2E4@<D0>(_OWORD *a1@<X8>)
{
  sub_21CE5C2A4();
  sub_21CE6C2B0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21CDED370(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CDED380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_21CDED4A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_21CDED5C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FA0, &qword_21CE73FC8);
  sub_21CE6C0D0();
  sub_21CE5BF18(&qword_27CE40FA8, &qword_27CE40FA0, &qword_21CE73FC8);
  return swift_getWitnessTable();
}

uint64_t sub_21CDED664@<X0>(_BYTE *a1@<X8>)
{
  sub_21CE5D360();
  result = sub_21CE6C2B0();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDED6B4(char *a1)
{
  v2 = *a1;
  sub_21CE5D360();
  return sub_21CE6C2C0();
}

uint64_t sub_21CDED700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40FB8, &qword_21CE740D8);
  sub_21CE6C0D0();
  sub_21CDE4158(&qword_27CE40FC0, &qword_27CE40FB8, &qword_21CE740D8);
  return swift_getWitnessTable();
}

uint64_t sub_21CDED7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C230();
  *a1 = result;
  return result;
}

uint64_t sub_21CDED7F0(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CE6C240();
}

uint64_t sub_21CDED844()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDED890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
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

uint64_t sub_21CDED95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
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

uint64_t sub_21CDEDA28()
{
  v1 = type metadata accessor for SettingsButtonPlacardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CE6C4A0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
  v10 = v9[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40DC0, &unk_21CE73B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CE6C570();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
  }

  else
  {
    v12 = *&v5[v10];
  }

  v13 = *&v5[v9[10] + 8];

  v14 = *&v5[v9[11] + 8];

  v15 = *&v5[v9[12] + 8];

  v16 = &v5[v9[13]];
  if (*v16)
  {
    v17 = *(v16 + 1);
  }

  v18 = &v5[v9[14]];
  if (*v18)
  {
    v19 = *(v18 + 1);
  }

  v20 = *&v5[v9[15] + 8];

  v21 = *&v5[v9[16] + 8];

  v22 = *&v5[v9[17] + 8];

  v23 = *&v5[*(v1 + 20) + 8];

  v24 = *&v5[*(v1 + 24) + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CDEDCCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21CDEDD10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEDD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21CDEDE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C20, qword_21CE735F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40E18, qword_21CE73F70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CDEDF94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CE6C0D0();
  sub_21CE6C0D0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411A8, &qword_21CE749A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE411B0, &unk_21CE749B0);
  swift_getTupleTypeMetadata3();
  sub_21CE6CB00();
  swift_getWitnessTable();
  sub_21CE6CA30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40058, &qword_21CE70E60);
  sub_21CE6C0D0();
  sub_21CE6C0D0();
  swift_getWitnessTable();
  sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEE230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
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

uint64_t sub_21CDEE2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE41158, &qword_21CE74820);
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

uint64_t sub_21CDEE3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CDEE434(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CDEE4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE6BA60();
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

uint64_t sub_21CDEE564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CE6BA60();
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

uint64_t sub_21CDEE620()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CDEE678@<X0>(void *a1@<X8>)
{
  result = sub_21CE6C140();
  *a1 = v3;
  return result;
}

uint64_t sub_21CDEE6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE412F8, qword_21CE75238);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CDEE7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE412F8, qword_21CE75238);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEE880(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CE6C3F0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21CDEE92C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21CE6C3F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21CDEE9D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CE6C0D0();
  sub_21CE6B208();
  return swift_getWitnessTable();
}

uint64_t sub_21CDEEA58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CDEEA68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CDEEAB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CDFB5DC(a1);
  }

  return result;
}

uint64_t SettingsEventCenter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 56);
    }

    sub_21CE6D1E0();
    sub_21CE6BE40();
    sub_21CDE4110(&qword_27CE3FA98, MEMORY[0x277CBCDA8]);
    result = sub_21CE6CEB0();
    v2 = v29;
    v5 = v30;
    v6 = v31;
    v7 = v32;
    v8 = v33;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 56);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_21CDEEAA0();
      v18 = *(v1 + 56);
      *(v1 + 56) = MEMORY[0x277D84FA0];

      swift_beginAccess();
      v19 = MEMORY[0x277D84F90];
      v21 = *(v1 + 24);
      v20 = *(v1 + 32);
      *(v1 + 24) = 0;
      *(v1 + 32) = v19;
      v22 = *(v1 + 40);
      *(v1 + 40) = v19;

      v23 = *(v1 + 24);
      v24 = *(v1 + 32);
      v25 = *(v1 + 40);

      v26 = *(v1 + 48);

      v27 = *(v1 + 56);

      return v1;
    }

    while (1)
    {
      sub_21CE6BE30();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_21CE6D1F0())
      {
        sub_21CE6BE40();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsEventCenter.__deallocating_deinit()
{
  SettingsEventCenter.deinit();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CDEEE38(uint64_t a1, int a2)
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

uint64_t sub_21CDEEE58(uint64_t result, int a2, int a3)
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

uint64_t sub_21CDEEE94(uint64_t a1, id *a2)
{
  result = sub_21CE6CC30();
  *a2 = 0;
  return result;
}

uint64_t sub_21CDEEF0C(uint64_t a1, id *a2)
{
  v3 = sub_21CE6CC40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21CDEEF8C@<X0>(uint64_t *a1@<X8>)
{
  sub_21CE6CC50();
  v2 = sub_21CE6CC20();

  *a1 = v2;
  return result;
}

uint64_t sub_21CDEEFE4(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FB48, type metadata accessor for _EXSceneRole);
  v3 = sub_21CDE4110(&qword_27CE3FB50, type metadata accessor for _EXSceneRole);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF0A0(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FB58, type metadata accessor for FileProtectionType);
  v3 = sub_21CDE4110(&qword_27CE3FB60, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF1EC(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_281211A00, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_21CDE4110(&qword_27CE3FC50, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF2A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CE6CC20();

  *a2 = v5;
  return result;
}

uint64_t sub_21CDEF2F0(uint64_t a1)
{
  v2 = sub_21CDE4110(&qword_27CE3FC58, type metadata accessor for Key);
  v3 = sub_21CDE4110(&unk_27CE3FC60, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21CDEF3AC()
{
  v1 = *v0;
  v2 = sub_21CE6CC50();
  v3 = MEMORY[0x21CF1ACE0](v2);

  return v3;
}

uint64_t sub_21CDEF3E8()
{
  v1 = *v0;
  sub_21CE6CC50();
  sub_21CE6CCA0();
}

uint64_t sub_21CDEF43C()
{
  v1 = *v0;
  sub_21CE6CC50();
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v2 = sub_21CE6D4E0();

  return v2;
}

uint64_t sub_21CDEF4B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21CE6CC50();
  v6 = v5;
  if (v4 == sub_21CE6CC50() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CE6D400();
  }

  return v9 & 1;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21CDEF704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE3FC00, &qword_21CE6EF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21CDEF79C(uint64_t a1, unint64_t *a2)
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

unint64_t SettingsEventImage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_21CE6D290();

    v4 = 0xD000000000000026;
  }

  else
  {
    sub_21CE6D290();

    v4 = 0xD000000000000022;
  }

  MEMORY[0x21CF1ACB0](v1, v2);
  MEMORY[0x21CF1ACB0](32032, 0xE200000000000000);
  return v4;
}

uint64_t SettingsEventImage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CF1B4A0](*(v0 + 16));

  return sub_21CE6CCA0();
}

uint64_t SettingsEventImage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v3);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CDEFB54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v3);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t sub_21CDEFBB8()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CF1B4A0](*(v0 + 16));

  return sub_21CE6CCA0();
}

uint64_t sub_21CDEFC0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v3);
  sub_21CE6CCA0();
  return sub_21CE6D4E0();
}

uint64_t _s8Settings0A10EventImageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_21CDEFF74();
    sub_21CDEFF74();
    sub_21CDEFF7C();
    sub_21CDEFF7C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_21CE6D400();
    sub_21CDEFF74();
    sub_21CDEFF74();
    sub_21CDEFF7C();
    sub_21CDEFF7C();
    return v14 & 1;
  }

LABEL_15:
  sub_21CDEFF74();
  sub_21CDEFF74();
  sub_21CDEFF7C();
  sub_21CDEFF7C();
  return 1;
}

unint64_t sub_21CDEFE54()
{
  result = qword_27CE3FCD0;
  if (!qword_27CE3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FCD0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CDEFEC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21CDEFF10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_21CDEFFDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD08, &qword_21CE6F4C8);
    v2 = sub_21CE6D390();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_21CE66850(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

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
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_21CDF01BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21CDF0AEC();
    v5 = sub_21CE6CB50();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21CDF0258(uint64_t a1, char *a2, uint64_t a3)
{
  v73 = sub_21CE6CC10();
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21CE6B960();
  v9 = *(v70 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v70);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v13;
  v14 = *v3;
  v65 = v3[1];
  v15 = *(a3 + 16);
  if (v15)
  {
    v62 = a2;
    v64 = v14;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v15, 0);
    v16 = aBlock[0];
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v69 = v18;
    v19 = (a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64)));
    v67 = *(v17 + 56);
    v66 = v17;
    v63 = v6;
    v20 = (v6 + 16);
    v21 = (v17 - 8);
    v61 = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    do
    {
      v23 = v70;
      v22 = v71;
      v24 = v69;
      v69(v71, v19, v70);
      v24(v68, v22, v23);
      if (qword_2812132E8 != -1)
      {
        swift_once();
      }

      v25 = v73;
      v26 = __swift_project_value_buffer(v73, qword_2812132F0);
      (*v20)(v72, v26, v25);
      v27 = sub_21CE6CC60();
      v29 = v28;
      (*v21)(v22, v23);
      aBlock[0] = v16;
      v31 = *(v16 + 2);
      v30 = *(v16 + 3);
      if (v31 >= v30 >> 1)
      {
        sub_21CDE4558((v30 > 1), v31 + 1, 1);
        v16 = aBlock[0];
      }

      *(v16 + 2) = v31 + 1;
      v32 = &v16[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
      v19 += v67;
      --v15;
    }

    while (v15);
    v6 = v63;
    v69(v71, v62, v70);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    (*(v9 + 16))(v71, a2, v70);
  }

  if (qword_2812132E8 != -1)
  {
    swift_once();
  }

  v33 = v73;
  v34 = __swift_project_value_buffer(v73, qword_2812132F0);
  (*(v6 + 16))(v72, v34, v33);
  v35 = sub_21CE6CC60();
  v37 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_21CDF2150(0, *(v16 + 2) + 1, 1, v16);
  }

  v39 = *(v16 + 2);
  v38 = *(v16 + 3);
  if (v39 >= v38 >> 1)
  {
    v16 = sub_21CDF2150((v38 > 1), v39 + 1, 1, v16);
  }

  *(v16 + 2) = v39 + 1;
  v40 = &v16[16 * v39];
  *(v40 + 4) = v35;
  *(v40 + 5) = v37;
  aBlock[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v41 = sub_21CE6CB90();
  v43 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FCF8, &qword_21CE6F4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE6F420;
  *(inited + 32) = 1752457584;
  *(inited + 40) = 0xE400000000000000;
  v45 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v46 = sub_21CE6CC20();
  v47 = [v45 initWithString_];

  *(inited + 48) = v47;
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  v48 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v49 = sub_21CE6CC20();
  v50 = [v48 initWithString_];

  *(inited + 72) = v50;
  v51 = sub_21CDF9620(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD00, &qword_21CE6F4C0);
  swift_arrayDestroy();
  v52 = sub_21CE6CC20();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  aBlock[4] = sub_21CDF0AE4;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CDF01BC;
  aBlock[3] = &block_descriptor;
  v54 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v54);

  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v55 = sub_21CE6BDA0();
  __swift_project_value_buffer(v55, qword_281216608);

  v56 = sub_21CE6BD80();
  v57 = sub_21CE6CF00();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 141558275;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    v60 = sub_21CDF2CC8(v41, v43, aBlock);

    *(v58 + 14) = v60;
    _os_log_impl(&dword_21CDE1000, v56, v57, "Navigation analytics for %{private,mask.hash}s", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x21CF1BD50](v59, -1, -1);
    MEMORY[0x21CF1BD50](v58, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CDF09FC(uint64_t a1, int a2)
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

uint64_t sub_21CDF0A44(uint64_t result, int a2, int a3)
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

unint64_t sub_21CDF0A80()
{
  result = qword_281211AB8;
  if (!qword_281211AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AB8);
  }

  return result;
}

unint64_t sub_21CDF0AEC()
{
  result = qword_281211808[0];
  if (!qword_281211808[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281211808);
  }

  return result;
}

uint64_t sub_21CDF0B38()
{
  v0 = sub_21CE6B850();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21CE6B840();
  qword_281211F58 = result;
  return result;
}

uint64_t IntentDonationSettingsNavigationEventResponder.settingsHostApplicationBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void IntentDonationSettingsNavigationEventResponder.processNavigationEvent(icon:associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = a6;
  v153 = a5;
  *(&v129 + 1) = a3;
  *&v129 = a2;
  v8 = sub_21CE6B6E0();
  v137 = *(v8 - 8);
  v9 = *(v137 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CE6B740();
  v136 = *(v12 - 8);
  v13 = *(v136 + 64);
  MEMORY[0x28223BE20](v12);
  v135 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_21CE6B6F0();
  v132 = *(v134 - 8);
  v15 = *(v132 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v131 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v128 = &v111 - v24;
  v25 = sub_21CE6B960();
  v138 = *(v25 - 8);
  v26 = *(v138 + 64);
  MEMORY[0x28223BE20](v25);
  v127 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_21CE6BA60();
  v143 = *(v144 - 8);
  v28 = *(v143 + 64);
  v29 = MEMORY[0x28223BE20](v144);
  v119 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v32 = MEMORY[0x28223BE20](v31);
  v126 = &v111 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v125 = &v111 - v35;
  MEMORY[0x28223BE20](v34);
  v140 = &v111 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD20, &unk_21CE6F4F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v151 = &v111 - v39;
  v155 = sub_21CE6B560();
  v152 = *(v155 - 8);
  v40 = *(v152 + 64);
  v41 = MEMORY[0x28223BE20](v155);
  v124 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v123 = &v111 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v141 = &v111 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v154 = &v111 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v111 - v49;
  v51 = a1[1];
  v139 = *a1;
  v122 = v51;
  v52 = *(a1 + 16);
  v53 = v6[1];
  v121 = *v6;
  v120 = v53;
  if (qword_281211F50 != -1)
  {
    swift_once();
  }

  v54 = qword_281211F58;
  v55 = sub_21CDF32A0(&unk_2812132D8, MEMORY[0x277CC9130]);
  v56 = 0;
  v57 = sub_21CE6B830();
  v149 = v55;
  v150 = v54;
  v113 = v52;
  v114 = v11;
  v115 = v12;
  v116 = v8;
  v117 = v57;
  v118 = v58;
  v59 = *(v153 + 16);
  if (v59)
  {
    v148 = (v152 + 16);
    v147 = v152 + 8;
    v146 = v152 + 32;
    v60 = v153 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v145 = *(v138 + 72);
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      v62 = sub_21CE6B830();
      if (v56)
      {
        break;
      }

      v64 = v62;
      v65 = v63;
      v153 = 0;
      v66 = v25;
      sub_21CDF333C(v62, v63);
      v67 = sub_21CE6BA80();
      *&v156 = 0x6E6F736A2ELL;
      *(&v156 + 1) = 0xE500000000000000;
      *&v159 = v67;
      *(&v159 + 1) = v68;
      *&v159 = sub_21CE6CD10();
      *(&v159 + 1) = v69;
      sub_21CE6CCC0();
      v70 = sub_21CE6BD60();
      (*(*(v70 - 8) + 56))(v151, 1, 1, v70);
      sub_21CE6B550();
      (*v148)(v154, v50, v155);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_21CDF24C4(0, v61[2] + 1, 1, v61, &qword_27CE3FDC8, &qword_21CE6F638, MEMORY[0x277CB9C50]);
      }

      v72 = v61[2];
      v71 = v61[3];
      if (v72 >= v71 >> 1)
      {
        v61 = sub_21CDF24C4(v71 > 1, v72 + 1, 1, v61, &qword_27CE3FDC8, &qword_21CE6F638, MEMORY[0x277CB9C50]);
      }

      sub_21CDF32E8(v64, v65);
      v73 = v152;
      v74 = v155;
      (*(v152 + 8))(v50, v155);
      v61[2] = v72 + 1;
      (*(v73 + 32))(v61 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v72, v154, v74);
      v60 += v145;
      --v59;
      v25 = v66;
      v56 = v153;
      if (!v59)
      {
        goto LABEL_13;
      }
    }

    if (qword_2812132A0 != -1)
    {
      swift_once();
    }

    v95 = sub_21CE6BDA0();
    __swift_project_value_buffer(v95, qword_281216608);
    v96 = v143;
    v97 = v119;
    v98 = v144;
    (*(v143 + 16))(v119, v142, v144);
    v99 = v56;
    v100 = sub_21CE6BD80();
    v101 = sub_21CE6CF10();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v156 = v103;
      *v102 = 141558531;
      *(v102 + 4) = 1752392040;
      *(v102 + 12) = 2081;
      sub_21CDF32A0(&qword_2812132B0, MEMORY[0x277CC9260]);
      v104 = sub_21CE6D3E0();
      v106 = v105;
      (*(v96 + 8))(v97, v98);
      v107 = sub_21CDF2CC8(v104, v106, &v156);

      *(v102 + 14) = v107;
      *(v102 + 22) = 2080;
      swift_getErrorValue();
      v108 = sub_21CE6D450();
      v110 = sub_21CDF2CC8(v108, v109, &v156);

      *(v102 + 24) = v110;
      _os_log_impl(&dword_21CDE1000, v100, v101, "Failed to encode navigation component for navigation event (url: '%{private,mask.hash}s', error: '%s')", v102, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v103, -1, -1);
      MEMORY[0x21CF1BD50](v102, -1, -1);
      sub_21CDF32E8(v117, v118);
    }

    else
    {
      sub_21CDF32E8(v117, v118);

      (*(v96 + 8))(v97, v98);
    }
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
LABEL_13:
    v112 = v25;
    v75 = sub_21CE6BD60();
    (*(*(v75 - 8) + 56))(v151, 1, 1, v75);
    v76 = v120;

    v77 = v122;
    v78 = v113;
    sub_21CDEFF74();
    sub_21CDF333C(v117, v118);
    sub_21CE6B550();
    v149 = *(v143 + 16);
    v149(v140, v142, v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
    sub_21CE6B920();
    v148 = sub_21CE6B610();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
    sub_21CE6B920();
    sub_21CDF3390();
    v147 = sub_21CE6B5E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
    sub_21CE6B920();
    v154 = sub_21CE6B5F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
    sub_21CE6B920();
    v153 = sub_21CE6B5F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
    sub_21CE6B920();
    v151 = sub_21CE6B600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
    sub_21CE6B920();
    v150 = sub_21CE6B610();
    *&v156 = v121;
    *(&v156 + 1) = v76;
    sub_21CE6B5B0();
    *&v156 = v139;
    *(&v156 + 1) = v77;
    LOBYTE(v157) = v78;
    SettingsNavigationLocationIconEntity.init(image:)(&v156, &v159);
    v156 = v159;
    sub_21CE6B5B0();
    v79 = v152;
    v80 = *(v152 + 16);
    v81 = v123;
    v82 = v155;
    v80(v123, v141, v155);
    v80(v124, v81, v82);
    sub_21CE6B5B0();
    v152 = *(v79 + 8);
    (v152)(v81, v82);
    *&v156 = v61;
    sub_21CE6B5B0();
    v83 = v125;
    v84 = v140;
    v85 = v144;
    v86 = v149;
    v149(v125, v140, v144);
    v86(v126, v83, v85);
    sub_21CE6B5B0();
    v87 = *(v143 + 8);
    v87(v83, v85);
    v156 = v129;

    sub_21CE6B5B0();
    v87(v84, v85);
    (v152)(v141, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
    v88 = v148;

    v89 = v147;

    sub_21CE6B920();
    (*(v138 + 56))(v128, 1, 1, v112);
    v90 = sub_21CE6B580();
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v91 = *(*(v90 - 8) + 56);
    v91(v130, 1, 1, v90);
    v91(v131, 1, 1, v90);
    (*(v132 + 104))(v133, *MEMORY[0x277CBA308], v134);
    sub_21CDF33E4();
    v92 = sub_21CE6B660();
    *&v156 = v88;
    *(&v156 + 1) = v89;
    *&v157 = v154;
    *(&v157 + 1) = v153;
    *&v158 = v151;
    *(&v158 + 1) = v150;
    sub_21CE6B640();
    v93 = v114;
    sub_21CE6B6D0();
    *&v156 = v92;
    sub_21CDF3438();
    v94 = v135;
    sub_21CE6B6C0();

    sub_21CDF32E8(v117, v118);
    (*(v137 + 8))(v93, v116);
    (*(v136 + 8))(v94, v115);
  }
}

uint64_t sub_21CDF20DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_21CDF2150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CDF225C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21CDF2390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB0, &unk_21CE6F620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21CDF24C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_21CDF26A0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD70, &qword_21CE6F5D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21CDF2890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD88, &unk_21CE71910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21CDF29B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD60, &qword_21CE6F5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD68, &qword_21CE6F5C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21CDF2B10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21CDF2C6C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21CDF2CC8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_21CDF2CC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CDF2D94(v11, 0, 0, 1, a1, a2);
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
    sub_21CDE66C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21CDF2D94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21CDF2EA0(a5, a6);
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
    result = sub_21CE6D2E0();
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

uint64_t sub_21CDF2EA0(uint64_t a1, unint64_t a2)
{
  v4 = sub_21CDF2EEC(a1, a2);
  sub_21CDF301C(&unk_282E7FDB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21CDF2EEC(uint64_t a1, unint64_t a2)
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

  v6 = sub_21CDF3108(v5, 0);
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

  result = sub_21CE6D2E0();
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
        v10 = sub_21CE6CCE0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21CDF3108(v10, 0);
        result = sub_21CE6D270();
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

uint64_t sub_21CDF301C(uint64_t result)
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

  result = sub_21CDF317C(result, v12, 1, v3);
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

void *sub_21CDF3108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDD0, &unk_21CE6F640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21CDF317C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDD0, &unk_21CE6F640);
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

_BYTE **sub_21CDF3270(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_21CDF3280(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21CDF32A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CDF32E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21CDF333C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21CDF3390()
{
  result = qword_281212410;
  if (!qword_281212410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212410);
  }

  return result;
}

unint64_t sub_21CDF33E4()
{
  result = qword_2812125C0;
  if (!qword_2812125C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125C0);
  }

  return result;
}

unint64_t sub_21CDF3438()
{
  result = qword_2812122D0;
  if (!qword_2812122D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122D0);
  }

  return result;
}

uint64_t SettingsNavigationEventDonationIntent.init(target:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v29 = sub_21CE6B6F0();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = sub_21CE6B960();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
  sub_21CE6B920();
  v21 = *(v19 + 56);
  v22 = *a1;
  v27 = a1[1];
  v28 = v22;
  v26 = a1[2];
  v21(v17, 1, 1, v18);
  v23 = sub_21CE6B580();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = *(*(v23 - 8) + 56);
  v24(v13, 1, 1, v23);
  v24(v11, 1, 1, v23);
  (*(v3 + 104))(v6, *MEMORY[0x277CBA308], v29);
  sub_21CDF33E4();
  *v30 = sub_21CE6B660();
  v31 = v28;
  v32 = v27;
  v33 = v26;
  return sub_21CE6B640();
}

uint64_t sub_21CDF37C8()
{
  v0 = sub_21CE6B960();
  __swift_allocate_value_buffer(v0, qword_27CE3FDD8);
  __swift_project_value_buffer(v0, qword_27CE3FDD8);
  return sub_21CE6B920();
}

uint64_t static SettingsNavigationEventDonationIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SettingsNavigationEventDonationIntent.title.setter(uint64_t a1)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SettingsNavigationEventDonationIntent.title.modify())()
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6B960();
  __swift_project_value_buffer(v0, qword_27CE3FDD8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF3A78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_21CDF3B38(uint64_t a1)
{
  if (qword_27CE3F998 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B960();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FDD8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_21CDF3C24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];

  sub_21CE6B640();
}

uint64_t SettingsNavigationEventDonationIntent.target.setter(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  return sub_21CE6B640();
}

uint64_t (*SettingsNavigationEventDonationIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_21CE6B620();
  return sub_21CDF4F44;
}

uint64_t static SettingsNavigationEventDonationIntent.predictionConfiguration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDF0, &qword_21CE6F658);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  swift_getKeyPath();
  sub_21CDF3438();
  sub_21CE6B670();
  v8 = sub_21CDF419C();
  MEMORY[0x21CF19740](v5, &type metadata for SettingsNavigationEventDonationIntent, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  MEMORY[0x21CF19730](v7, &type metadata for SettingsNavigationEventDonationIntent, v0, v8);
  return (v9)(v7, v0);
}

uint64_t sub_21CDF3F20(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = sub_21CE6B960();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_21CE6CBE0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_21CE6CBD0();
  sub_21CE6CBC0();
  v15 = a1[1];
  v18[0] = *a1;
  v18[1] = v15;
  v18[2] = a1[2];
  sub_21CDF4EF0();
  sub_21CE6CBB0();
  sub_21CE6CBC0();
  sub_21CE6B930();
  (*(v11 + 56))(v9, 1, 1, v10);
  v16 = sub_21CE6B690();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  return sub_21CE6B6A0();
}

unint64_t sub_21CDF419C()
{
  result = qword_281213310;
  if (!qword_281213310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE3FDF0, &qword_21CE6F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213310);
  }

  return result;
}

uint64_t SettingsNavigationEventDonationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v22 = sub_21CE6B6F0();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD10, &unk_21CE6F4E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_21CE6B960();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD58, &qword_21CE6F650);
  sub_21CE6B920();
  (*(v17 + 56))(v15, 1, 1, v16);
  v19 = sub_21CE6B580();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v22);
  sub_21CDF33E4();
  result = sub_21CE6B660();
  *v23 = result;
  return result;
}

uint64_t sub_21CDF4528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDF0, &qword_21CE6F658);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  swift_getKeyPath();
  sub_21CDF3438();
  sub_21CE6B670();
  v10 = sub_21CDF419C();
  MEMORY[0x21CF19740](v7, a1, v2, v10);
  v11 = *(v3 + 8);
  v11(v7, v2);
  MEMORY[0x21CF19730](v9, a1, v2, v10);
  return (v11)(v9, v2);
}

unint64_t sub_21CDF46B0()
{
  result = qword_2812122E0;
  if (!qword_2812122E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122E0);
  }

  return result;
}

unint64_t sub_21CDF4708()
{
  result = qword_2812125C8;
  if (!qword_2812125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125C8);
  }

  return result;
}

uint64_t sub_21CDF4780(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  return sub_21CE6B640();
}

uint64_t (*sub_21CDF47C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_21CE6B620();
  return sub_21CDF4834;
}

void sub_21CDF4838(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_21CDF4884()
{
  result = qword_27CE3FDF8;
  if (!qword_27CE3FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FDF8);
  }

  return result;
}

uint64_t sub_21CDF48D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CDF4DF4();
  v5 = sub_21CDF4E9C();

  return MEMORY[0x28210C2E8](a1, v4, a2, v5);
}

unint64_t sub_21CDF4944()
{
  result = qword_2812122C8;
  if (!qword_2812122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122C8);
  }

  return result;
}

unint64_t sub_21CDF499C()
{
  result = qword_2812122D8;
  if (!qword_2812122D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812122D8);
  }

  return result;
}

uint64_t sub_21CDF4A40(uint64_t a1)
{
  v2 = sub_21CDF4DF4();

  return MEMORY[0x28210B5F8](a1, v2);
}

uint64_t sub_21CDF4A90(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA360] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_21CDF4DF4();
  v8 = sub_21CDF4E48();
  v9 = sub_21CDF4E9C();
  *v6 = v2;
  v6[1] = sub_21CDF4B64;

  return MEMORY[0x28210C2F0](a1, a2, v7, v8, v9);
}

uint64_t sub_21CDF4B64()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_21CDF4C70(uint64_t a1)
{
  v2 = sub_21CDF3438();

  return MEMORY[0x28210B538](a1, v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SettingsNavigationEventDonationIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsNavigationEventDonationIntent(uint64_t result, int a2, int a3)
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

unint64_t sub_21CDF4DF4()
{
  result = qword_2812122E8[0];
  if (!qword_2812122E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812122E8);
  }

  return result;
}

unint64_t sub_21CDF4E48()
{
  result = qword_27CE3FE00;
  if (!qword_27CE3FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE00);
  }

  return result;
}

unint64_t sub_21CDF4E9C()
{
  result = qword_27CE3FE08;
  if (!qword_27CE3FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE08);
  }

  return result;
}

unint64_t sub_21CDF4EF0()
{
  result = qword_281212590;
  if (!qword_281212590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212590);
  }

  return result;
}

uint64_t SettingsNavigationLocationEntity.init(settingsHostApplicationBundleIdentifier:image:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *&v52 = a7;
  *(&v52 + 1) = a8;
  v50 = a5;
  v51 = a6;
  *(&v44 + 1) = a2;
  v45 = a4;
  *&v44 = a1;
  v11 = sub_21CE6BA60();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v15;
  v43 = sub_21CE6B560();
  v16 = *(v43 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = sub_21CE6B960();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = a3[1];
  v41 = *a3;
  v40 = v24;
  v39 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  *a9 = sub_21CE6B610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
  sub_21CE6B920();
  sub_21CDF3390();
  a9[1] = sub_21CE6B5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
  sub_21CE6B920();
  a9[2] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
  sub_21CE6B920();
  a9[3] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
  sub_21CE6B920();
  v38 = sub_21CE6B600();
  a9[4] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
  sub_21CE6B920();
  v37 = sub_21CE6B610();
  a9[5] = v37;
  v53 = v44;
  sub_21CE6B5B0();
  *&v53 = v41;
  *(&v53 + 1) = v40;
  v54 = v39;
  SettingsNavigationLocationIconEntity.init(image:)(&v53, &v55);
  v53 = v55;
  sub_21CE6B5B0();
  v25 = v16;
  v26 = *(v16 + 16);
  v27 = v45;
  v28 = v43;
  v26(v21, v45, v43);
  v26(v42, v21, v28);
  sub_21CE6B5B0();
  v29 = *(v25 + 8);
  *(&v44 + 1) = v25 + 8;
  v29(v21, v28);
  *&v53 = v50;
  sub_21CE6B5B0();
  v31 = v48;
  v30 = v49;
  v32 = *(v48 + 16);
  v33 = v46;
  v34 = v51;
  v32(v46, v51, v49);
  v32(v47, v33, v30);
  sub_21CE6B5B0();
  v35 = *(v31 + 8);
  v35(v33, v30);
  v53 = v52;
  sub_21CE6B5B0();
  v35(v34, v30);
  return (v29)(v27, v28);
}

uint64_t sub_21CDF5490()
{
  v0 = sub_21CE6B820();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21CE6B810();
  qword_281211F68 = result;
  return result;
}

uint64_t static SettingsNavigationLocationEntity.urlRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE30, &qword_21CE6F900);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_21CDF33E4();
  sub_21CE6B7A0();
  sub_21CE6B790();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE38, &unk_21CE6F930);
  sub_21CE6B780();

  sub_21CE6B790();
  return sub_21CE6B7B0();
}

uint64_t sub_21CDF5614()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE18);
  __swift_project_value_buffer(v0, qword_27CE3FE18);
  return sub_21CE6B7C0();
}

uint64_t static SettingsNavigationLocationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SettingsNavigationLocationEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SettingsNavigationLocationEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6B7D0();
  __swift_project_value_buffer(v0, qword_27CE3FE18);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF58C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_21CDF5980(uint64_t a1)
{
  if (qword_27CE3F9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6B7D0();
  v3 = __swift_project_value_buffer(v2, qword_27CE3FE18);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SettingsNavigationLocationEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21CE6B920();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_21CE6B690();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_21CE6B6A0();
}

uint64_t SettingsNavigationLocationEntity.settingsHostApplicationBundleIdentifier.getter()
{
  v1 = *v0;
  sub_21CE6B5A0();
  return v3;
}

uint64_t sub_21CDF5C54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.settingsHostApplicationBundleIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF5DF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];

  sub_21CE6B5B0();
}

uint64_t SettingsNavigationLocationEntity.icon.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF5FB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CE6B560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = *(v5 + 16);
  v12(v20 - v10, a1, v4);
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v20[0] = v15;
  v20[1] = v17;
  v12(v9, v11, v4);

  sub_21CE6B5B0();
  (*(v5 + 8))(v11, v4);
}

uint64_t SettingsNavigationLocationEntity.title.setter(uint64_t a1)
{
  v3 = sub_21CE6B560();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 16);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_21CE6B5B0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*SettingsNavigationLocationEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t SettingsNavigationLocationEntity.navigationPathComponents.getter()
{
  v1 = *(v0 + 24);
  sub_21CE6B5A0();
  return v3;
}

uint64_t sub_21CDF6328(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.navigationPathComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t sub_21CDF64CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CE6BA60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *(v5 + 16);
  v12(v19 - v10, a1, v4);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  v19[1] = a2[2];
  v19[2] = v15;
  v19[3] = v13;
  v17 = a2[4];
  v16 = a2[5];
  v12(v9, v11, v4);

  sub_21CE6B5B0();
  (*(v5 + 8))(v11, v4);
}

uint64_t SettingsNavigationLocationEntity.navigationLink.setter(uint64_t a1)
{
  v3 = sub_21CE6BA60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 32);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_21CE6B5B0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*SettingsNavigationLocationEntity.navigationLink.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4834;
}

uint64_t SettingsNavigationLocationEntity.associatedApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + 40);
  sub_21CE6B5A0();
  return v3;
}

uint64_t sub_21CDF6828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = *a1;
  v10 = a1[1];

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationEntity.associatedApplicationBundleIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t SettingsNavigationLocationEntity.localizedTitle.getter()
{
  v1 = sub_21CE6B560();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (qword_281211F60 != -1)
  {
    swift_once();
  }

  sub_21CE6B960();
  sub_21CE6B5A0();
  v7 = sub_21CE6B540();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  sub_21CDF79A0(&qword_2812132C8, MEMORY[0x277CC9130]);
  sub_21CE6B800();
  return sub_21CDF32E8(v7, v9);
}

void *SettingsNavigationLocationEntity.localizedNavigationPathComponents.getter()
{
  v2 = v1;
  v3 = sub_21CE6B960();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  v11 = sub_21CE6B560();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v39 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 24);
  sub_21CE6B5A0();
  result = v42;
  v38 = v42[2];
  if (v38)
  {
    v17 = 0;
    v35 = (v12 + 8);
    v36 = v12 + 16;
    v30[2] = v4 + 8;
    v31 = (v4 + 16);
    v30[1] = v4 + 32;
    v41 = MEMORY[0x277D84F90];
    v33 = v8;
    v34 = v4;
    v37 = v42;
    v32 = v12;
    while (v17 < result[2])
    {
      v40 = v2;
      v18 = v39;
      (*(v12 + 16))(v39, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v11);
      v19 = v11;
      if (qword_281211F60 != -1)
      {
        swift_once();
      }

      v20 = sub_21CE6B540();
      v22 = v21;
      v23 = v19;
      (*v35)(v18, v19);
      sub_21CDF79A0(&qword_2812132C8, MEMORY[0x277CC9130]);
      v24 = v40;
      sub_21CE6B800();
      v2 = v24;
      if (v24)
      {
        sub_21CDF32E8(v20, v22);

        goto LABEL_15;
      }

      sub_21CDF32E8(v20, v22);
      v25 = v33;
      (*v31)(v33, v10, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_21CDF2128(0, v41[2] + 1, 1, v41);
      }

      v26 = v34;
      v28 = v41[2];
      v27 = v41[3];
      if (v28 >= v27 >> 1)
      {
        v41 = sub_21CDF2128(v27 > 1, v28 + 1, 1, v41);
      }

      ++v17;
      (*(v26 + 8))(v10, v3);
      v29 = v41;
      v41[2] = v28 + 1;
      (*(v26 + 32))(v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, v25, v3);
      result = v37;
      v11 = v23;
      v12 = v32;
      if (v38 == v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
LABEL_15:

    return v41;
  }

  return result;
}

uint64_t SettingsNavigationLocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  *a1 = sub_21CE6B610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD30, &unk_21CE6F500);
  sub_21CE6B920();
  sub_21CDF3390();
  a1[1] = sub_21CE6B5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD38, &unk_21CE6F8E0);
  sub_21CE6B920();
  a1[2] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD40, &unk_21CE6F510);
  sub_21CE6B920();
  a1[3] = sub_21CE6B5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD48, &unk_21CE6F8F0);
  sub_21CE6B920();
  a1[4] = sub_21CE6B600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD50, &unk_21CE6F520);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[5] = result;
  return result;
}

uint64_t sub_21CDF7154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE30, &qword_21CE6F900);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_21CDF33E4();
  sub_21CE6B7A0();
  sub_21CE6B790();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE38, &unk_21CE6F930);
  sub_21CE6B780();

  sub_21CE6B790();
  return sub_21CE6B7B0();
}

uint64_t sub_21CDF7270(uint64_t a1)
{
  v2 = sub_21CDF7AE8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_21CDF72BC()
{
  sub_21CDF4E9C();
  v1 = sub_21CE6B700();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21CDF7328()
{
  sub_21CDF7AE8();

  return sub_21CE6B4A0();
}

uint64_t sub_21CDF7374(uint64_t a1)
{
  v2 = sub_21CDF33E4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21CDF73C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21CE6B920();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_21CE6B690();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CDE7A00;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_21CDF765C(uint64_t a1)
{
  v2 = sub_21CDF7904();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_21CDF76AC()
{
  result = qword_27CE3FE40;
  if (!qword_27CE3FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FE40);
  }

  return result;
}

unint64_t sub_21CDF7704()
{
  result = qword_2812125B0;
  if (!qword_2812125B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125B0);
  }

  return result;
}

unint64_t sub_21CDF775C()
{
  result = qword_281212588;
  if (!qword_281212588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212588);
  }

  return result;
}

unint64_t sub_21CDF7804()
{
  result = qword_2812125A8;
  if (!qword_2812125A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125A8);
  }

  return result;
}

unint64_t sub_21CDF7858()
{
  result = qword_2812125A0;
  if (!qword_2812125A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125A0);
  }

  return result;
}

unint64_t sub_21CDF78AC()
{
  result = qword_2812125B8;
  if (!qword_2812125B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812125B8);
  }

  return result;
}

unint64_t sub_21CDF7904()
{
  result = qword_281212598;
  if (!qword_281212598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212598);
  }

  return result;
}

uint64_t sub_21CDF79A0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21CDF7A44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CDF7A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CDF7AE8()
{
  result = qword_2812125D0[0];
  if (!qword_2812125D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812125D0);
  }

  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init(image:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);

  sub_21CE6B920();
  sub_21CDF855C();
  v9 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  v10 = sub_21CE6B610();
  sub_21CE6B5B0();
  sub_21CE6B5B0();
  result = sub_21CDEFF7C();
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_21CDF7CE4()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE58);
  __swift_project_value_buffer(v0, qword_27CE3FE58);
  return sub_21CE6B7C0();
}

uint64_t (*static SettingsNavigationLocationIconEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27CE3F9B0 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6B7D0();
  __swift_project_value_buffer(v0, qword_27CE3FE58);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SettingsNavigationLocationIconEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21CE6B920();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_21CE6B690();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF8020(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;

  sub_21CE6B5B0();
}

uint64_t SettingsNavigationLocationIconEntity.iconType.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationIconEntity.iconType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4F44;
}

uint64_t SettingsNavigationLocationIconEntity.iconIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21CE6B5A0();
  return v3;
}

uint64_t sub_21CDF817C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  v6 = a1[1];

  sub_21CE6B5B0();
}

uint64_t (*SettingsNavigationLocationIconEntity.iconIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_21CE6B590();
  return sub_21CDF4834;
}

uint64_t SettingsNavigationLocationIconEntity.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *v1;
  sub_21CE6B5A0();
  result = sub_21CE6B5A0();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a1 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[1] = result;
  return result;
}

uint64_t SettingsNavigationLocationIconEntity.init(iconType:iconIdentifier:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a2 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  a2[1] = sub_21CE6B610();
  sub_21CE6B5B0();
  return sub_21CE6B5B0();
}

unint64_t sub_21CDF855C()
{
  result = qword_281212570;
  if (!qword_281212570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212570);
  }

  return result;
}

uint64_t sub_21CDF85B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CE6B960();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE88, &unk_21CE6FC90);
  sub_21CE6B920();
  sub_21CDF855C();
  *a1 = sub_21CE6B5D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD28, &unk_21CE6F8D0);
  sub_21CE6B920();
  result = sub_21CE6B610();
  a1[1] = result;
  return result;
}

uint64_t sub_21CDF86B8(uint64_t a1)
{
  v2 = sub_21CDFA220();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_21CDF8704()
{
  sub_21CDFA220();

  return sub_21CE6B4A0();
}

uint64_t sub_21CDF8774(uint64_t a1)
{
  v2 = sub_21CDF3390();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_21CDF87C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE10, &unk_21CE6FCA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD18, &qword_21CE6F940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21CE6B920();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_21CE6B690();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_21CE6B6A0();
}

uint64_t sub_21CDF8998(uint64_t a1)
{
  v2 = sub_21CDF9A70();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_21CDF89E4()
{
  v0 = sub_21CE6B7D0();
  __swift_allocate_value_buffer(v0, qword_27CE3FE70);
  __swift_project_value_buffer(v0, qword_27CE3FE70);
  return sub_21CE6B7C0();
}

uint64_t sub_21CDF8A70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6B7D0();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_21CDF8B3C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6B7D0();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static SettingsNavigationLocationIconType.typeDisplayRepresentation.modify())()
{
  if (qword_27CE3F9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6B7D0();
  __swift_project_value_buffer(v0, qword_27CE3FE70);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDF8CB0@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6B7D0();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_21CDF8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6B7D0();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

unint64_t static SettingsNavigationLocationIconType.caseDisplayRepresentations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE90, &qword_21CE6FCB0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CE6F420;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_21CE6B680();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_21CE6B680();
  v7 = sub_21CDF9634(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

Settings::SettingsNavigationLocationIconType_optional __swiftcall SettingsNavigationLocationIconType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CE6D3B0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SettingsNavigationLocationIconType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746163696C707061;
  }

  else
  {
    result = 0x4963696870617267;
  }

  *v0;
  return result;
}

uint64_t sub_21CDF902C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746163696C707061;
  }

  else
  {
    v4 = 0x4963696870617267;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F63;
  }

  else
  {
    v5 = 0xEF6E6F63496E6F69;
  }

  if (*a2)
  {
    v6 = 0x746163696C707061;
  }

  else
  {
    v6 = 0x4963696870617267;
  }

  if (*a2)
  {
    v7 = 0xEF6E6F63496E6F69;
  }

  else
  {
    v7 = 0xEB000000006E6F63;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CE6D400();
  }

  return v9 & 1;
}

uint64_t sub_21CDF90E8()
{
  v1 = *v0;
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  return sub_21CE6D4E0();
}

uint64_t sub_21CDF9180()
{
  *v0;
  sub_21CE6CCA0();
}

uint64_t sub_21CDF9204()
{
  v1 = *v0;
  sub_21CE6D4B0();
  sub_21CE6CCA0();

  return sub_21CE6D4E0();
}

uint64_t sub_21CDF9298@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CE6D3B0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21CDF92F8(uint64_t *a1@<X8>)
{
  v2 = 0x4963696870617267;
  if (*v1)
  {
    v2 = 0x746163696C707061;
  }

  v3 = 0xEB000000006E6F63;
  if (*v1)
  {
    v3 = 0xEF6E6F63496E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21CDF9370@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6B7D0();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_21CDF941C(uint64_t a1)
{
  v2 = sub_21CDF855C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_21CDF9468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE90, &qword_21CE6FCB0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CE6F420;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_21CE6B680();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_21CE6B680();
  v7 = sub_21CDF9634(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_21CDF95C4(uint64_t a1)
{
  v2 = sub_21CDF9E2C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_21CDF9634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FE98, &qword_21CE6FCB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF10, &qword_21CE70298);
    v8 = sub_21CE6D390();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21CDFAA5C(v10, v6, &qword_27CE3FE98, &qword_21CE6FCB8);
      result = sub_21CE668C8(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_21CE6B6B0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDF9824()
{
  result = qword_281212418;
  if (!qword_281212418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212418);
  }

  return result;
}

unint64_t sub_21CDF987C()
{
  result = qword_281212400;
  if (!qword_281212400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212400);
  }

  return result;
}

unint64_t sub_21CDF98D4()
{
  result = qword_2812123D8;
  if (!qword_2812123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123D8);
  }

  return result;
}

unint64_t sub_21CDF9970()
{
  result = qword_2812123F8;
  if (!qword_2812123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123F8);
  }

  return result;
}

unint64_t sub_21CDF99C4()
{
  result = qword_2812123F0;
  if (!qword_2812123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123F0);
  }

  return result;
}

unint64_t sub_21CDF9A18()
{
  result = qword_281212408;
  if (!qword_281212408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212408);
  }

  return result;
}

unint64_t sub_21CDF9A70()
{
  result = qword_2812123E8;
  if (!qword_2812123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123E8);
  }

  return result;
}

unint64_t sub_21CDF9AC8()
{
  result = qword_2812132A8;
  if (!qword_2812132A8)
  {
    sub_21CE6BAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812132A8);
  }

  return result;
}

unint64_t sub_21CDF9B68()
{
  result = qword_2812123E0;
  if (!qword_2812123E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812123E0);
  }

  return result;
}

unint64_t sub_21CDF9BC0()
{
  result = qword_281212530;
  if (!qword_281212530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212530);
  }

  return result;
}

unint64_t sub_21CDF9C18()
{
  result = qword_281212568;
  if (!qword_281212568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212568);
  }

  return result;
}

unint64_t sub_21CDF9C70()
{
  result = qword_281212548;
  if (!qword_281212548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212548);
  }

  return result;
}

unint64_t sub_21CDF9CC8()
{
  result = qword_281212528;
  if (!qword_281212528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212528);
  }

  return result;
}

unint64_t sub_21CDF9D2C()
{
  result = qword_281212550;
  if (!qword_281212550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212550);
  }

  return result;
}

unint64_t sub_21CDF9D80()
{
  result = qword_281212578;
  if (!qword_281212578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212578);
  }

  return result;
}

unint64_t sub_21CDF9DD4()
{
  result = qword_281212560;
  if (!qword_281212560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212560);
  }

  return result;
}

unint64_t sub_21CDF9E2C()
{
  result = qword_281212558;
  if (!qword_281212558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212558);
  }

  return result;
}

unint64_t sub_21CDF9ED4()
{
  result = qword_281212540;
  if (!qword_281212540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212540);
  }

  return result;
}

unint64_t sub_21CDF9F2C()
{
  result = qword_281212520;
  if (!qword_281212520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212520);
  }

  return result;
}

unint64_t sub_21CDF9F84()
{
  result = qword_281212538;
  if (!qword_281212538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212538);
  }

  return result;
}

uint64_t sub_21CDFA01C(uint64_t *a1, int a2)
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

uint64_t sub_21CDFA064(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SettingsNavigationLocationIconType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsNavigationLocationIconType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21CDFA220()
{
  result = qword_281212420[0];
  if (!qword_281212420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281212420);
  }

  return result;
}

unint64_t sub_21CDFA274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF00, &qword_21CE70288);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
    v8 = sub_21CE6D390();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21CDFAA5C(v10, v6, &qword_27CE3FF00, &qword_21CE70288);
      result = sub_21CE66984(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SettingsPaneRecipe();
      result = sub_21CDFA9F8(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *(v6 + v9);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CDFA444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
    v3 = sub_21CE6D390();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CE66850(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21CDFA548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
    v3 = sub_21CE6D390();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CDFAA5C(v4, &v13, &qword_27CE3FED0, &qword_21CE70248);
      v5 = v13;
      v6 = v14;
      result = sub_21CE66850(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CDFA678(&v15, (v3[7] + 32 * result));
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