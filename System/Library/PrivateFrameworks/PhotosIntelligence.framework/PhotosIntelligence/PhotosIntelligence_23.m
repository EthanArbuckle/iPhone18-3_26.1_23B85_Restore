uint64_t sub_1C710FF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C759F500 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C759F520 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000024 && 0x80000001C759F540 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C7110070(char a1)
{
  result = 0x6556616D65686373;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1C711011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C710FF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7110144(uint64_t a1)
{
  v2 = sub_1C7116AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7110180(uint64_t a1)
{
  v2 = sub_1C7116AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C71101BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116AE8();
  sub_1C7551FFC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = 1;
    sub_1C7551BFC();
    v13 = 2;
    sub_1C7551B9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B0);
    v11[15] = 0;
    sub_1C7116BF8();
    sub_1C7551BAC();
    if (!v12)
    {
      type metadata accessor for PromptSuggestionPersistedBundle(0);
      sub_1C708039C();
      sub_1C75504DC();
    }

    v11[14] = 3;
    v9 = COERCE_DOUBLE(sub_1C7551B8C());
    if (v10)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = v9;
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t sub_1C7110468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116AE8();
  sub_1C755200C();
  v17 = a3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179B0);
  sub_1C7116B3C();
  sub_1C7551D2C();
  if (!v4)
  {
    v15 = 1;
    sub_1C7551D0C();
    v14 = 2;
    sub_1C7551D0C();
    v13 = 3;
    sub_1C7551CEC();
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1C7110660(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C71101BC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1C71106B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144657461647075 && a2 == 0xEA00000000006574)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C711078C(char a1)
{
  if (a1)
  {
    return 0x6144657461647075;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1C71107D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116CF8();
  sub_1C755200C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
  sub_1C7116D4C(&unk_1EDD06B90);
  sub_1C7551D2C();
  if (!v2)
  {
    type metadata accessor for PromptSuggestionPersistedBundle(0);
    v10[6] = 1;
    sub_1C754DF6C();
    sub_1C7116CB4(&qword_1EDD0F9E8);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C71109EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1C754DF6C();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2179C0);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7116CF8();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
  v28 = 0;
  sub_1C7116D4C(&unk_1EDD0D030);
  v14 = v26;
  sub_1C7551C1C();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1C7116CB4(&unk_1EDD100B8);
  sub_1C7551C1C();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_1C71154C8();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1C7115520(v16, type metadata accessor for PromptSuggestionPersistedBundle);
}

uint64_t sub_1C7110D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71106B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7110DC0(uint64_t a1)
{
  v2 = sub_1C7116CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7110DFC(uint64_t a1)
{
  v2 = sub_1C7116CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7110E68()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder;
  if (*(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder);
  }

  else
  {
    v3 = v0;
    sub_1C754DBCC();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v2 = sub_1C754DBBC();
    sub_1C754DB9C();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C7110EEC()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_1C754DB8C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v2 = sub_1C754DB7C();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PromptSuggestionCache.__allocating_init(photoLibrary:)()
{
  v0 = swift_allocObject();
  PromptSuggestionCache.init(photoLibrary:)();
  return v0;
}

void PromptSuggestionCache.init(photoLibrary:)()
{
  OUTLINED_FUNCTION_124();
  v46 = v1;
  v2 = v0;
  v4 = v3;
  v47[1] = *MEMORY[0x1E69E9840];
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v43 = v6;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v42 = v8 - v7;
  v9 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  swift_defaultActor_initialize();
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  *(v0 + 112) = sub_1C755146C();
  *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___encoder) = 0;
  *(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache____lazy_storage___decoder) = 0;
  v47[0] = 0;
  v45 = v4;
  v22 = [v4 urlForApplicationDataFolderIdentifier:1 error:v47];
  v23 = v47[0];
  if (!v22)
  {
    v36 = v47[0];
    v37 = sub_1C754DBEC();

    v46 = v37;
    swift_willThrow();
    goto LABEL_8;
  }

  v24 = v22;
  sub_1C754DCCC();
  v25 = v23;

  sub_1C754DC9C();
  sub_1C754DC9C();
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_1C754DCEC();
  if ((sub_1C71153E8(v27, v28, v26) & 1) == 0)
  {
    v41 = v18;
    sub_1C754DCEC();
    v29 = sub_1C755065C();

    v47[0] = 0;
    v30 = [v26 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:v47];

    if (v30)
    {
      v31 = v47[0];
      v18 = v41;
      goto LABEL_5;
    }

    v38 = v47[0];
    v39 = sub_1C754DBEC();

    v46 = v39;
    swift_willThrow();

    v40 = *(v11 + 8);
    v40(v15, v9);
    v40(v41, v9);
    v40(v21, v9);
LABEL_8:

    type metadata accessor for PromptSuggestionCache(0);
    swift_defaultActor_destroy();

    OUTLINED_FUNCTION_90();
    swift_deallocPartialClassInstance();
    goto LABEL_9;
  }

LABEL_5:
  v32 = *(v11 + 16);
  v32(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_cacheFileURL, v18, v9);
  v32(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_analyticsFileURL, v15, v9);
  v33 = *(v2 + 112);
  v34 = v42;
  sub_1C754FF2C();

  v35 = *(v11 + 8);
  v35(v15, v9);
  v35(v18, v9);
  v35(v21, v9);
  (*(v43 + 32))(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_logger, v34, v44);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void sub_1C7111490()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = *v5;
  v14 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v15 = v14;
  PerformanceMeasure.init(name:log:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v13;
  *(inited + 40) = v3;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
  sub_1C708039C();
  sub_1C75504DC();
  sub_1C754DF5C();
  sub_1C7111644();
  (*(v8 + 8))(v12, v6);

  sub_1C6F85170();

  OUTLINED_FUNCTION_125();
}

void sub_1C7111644()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v66 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v65 = (v54 - v17);
  if (!v9[2] && (v5 & 1) == 0 && !v7)
  {
    v18 = sub_1C754FEEC();
    v19 = sub_1C75511BC();
    v20 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_96_0();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v22);
      _os_log_impl(&dword_1C6F5C000, v18, v19, "No changes to write", v5, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_27;
  }

  v23 = sub_1C7113C14();
  if (v1)
  {
LABEL_27:
    OUTLINED_FUNCTION_125();
    return;
  }

  v58 = v0;
  v59 = 0;
  v57 = v7;
  v56 = v5;
  v63 = v10;
  v64 = v3;
  v62 = v12;
  if (v24)
  {
    v55 = v23;
    v25 = v24;
  }

  else
  {
    sub_1C708039C();
    v25 = sub_1C75504DC();
    v55 = 0;
  }

  v26 = v9 + 8;
  OUTLINED_FUNCTION_11();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v32 = 0;
  v54[1] = v25;
  v60 = v9 + 8;
  v61 = v9;
  if (v29)
  {
LABEL_16:
    while (1)
    {
      v34 = __clz(__rbit64(v29)) | (v32 << 6);
      v35 = *(v9[6] + v34);
      v36 = *(v9[7] + 8 * v34);
      v37 = *(v63 + 20);
      sub_1C754DF6C();
      OUTLINED_FUNCTION_12();
      v39 = v65;
      (*(v38 + 16))(v65 + v37, v64);
      *v39 = v36;
      OUTLINED_FUNCTION_3_46();
      sub_1C71154C8();
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FCABE8(v35);
      OUTLINED_FUNCTION_13_2();
      if (__OFADD__(v43, v44))
      {
        break;
      }

      v45 = v41;
      v46 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8);
      if (sub_1C7551A2C())
      {
        v47 = sub_1C6FCABE8(v35);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_31;
        }

        v45 = v47;
      }

      if (v46)
      {
        OUTLINED_FUNCTION_66_12();
        sub_1C7115464(v66, v49);
        OUTLINED_FUNCTION_0_66();
        sub_1C7115520(v65, v50);
      }

      else
      {
        OUTLINED_FUNCTION_1_3(v25 + 8 * (v45 >> 6));
        *(*(v25 + 48) + v45) = v35;
        OUTLINED_FUNCTION_66_12();
        OUTLINED_FUNCTION_17_30();
        sub_1C7115578();
        sub_1C7115520(v65, isUniquelyReferenced_nonNull_native);
        v51 = *(v25 + 16);
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_30;
        }

        *(v25 + 16) = v53;
      }

      v29 &= v29 - 1;
      v26 = v60;
      v9 = v61;
      if (!v29)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        sub_1C7113F68();

        goto LABEL_27;
      }

      v29 = v26[v33];
      ++v32;
      if (v29)
      {
        v32 = v33;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7111A24()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v6);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C754DF6C();
  OUTLINED_FUNCTION_15_3();
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_15_3();
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7111B80, v0, 0);
}

void sub_1C7111B80()
{
  v1 = v0[2];
  v2 = *(v0[6] + 112);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v3 = v2;
  PerformanceMeasure.init(name:log:)();
  if (*(v1 + 16))
  {
    v63 = v0[11];
    v4 = v0[2];
    v7 = *(v4 + 64);
    v6 = v4 + 64;
    v5 = v7;
    v8 = -1;
    v9 = -1 << *(v0[2] + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5;
    v11 = (63 - v9) >> 6;
    v64 = (v0[9] + 32);
    v62 = v0[2];
    sub_1C75504FC();
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    if (v10)
    {
      while (1)
      {
LABEL_9:
        v16 = v0[7];
        v15 = v0[8];
        v17 = __clz(__rbit64(v10)) | (v12 << 6);
        v65 = *(*(v62 + 48) + v17);
        v18 = *(*(v62 + 56) + 8 * v17);
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v15);
        v21 = v0[7];
        v20 = v0[8];
        if (EnumTagSinglePayload == 1)
        {
          sub_1C75504FC();
          sub_1C754DF5C();
          if (__swift_getEnumTagSinglePayload(v21, 1, v20) != 1)
          {
            sub_1C6FD7FC8(v0[7], &unk_1EC219230);
          }
        }

        else
        {
          (*v64)(v0[10], v0[7], v0[8]);
          sub_1C75504FC();
        }

        v22 = v0[14];
        v23 = v0[10];
        v24 = v0[8];
        *v22 = v18;
        (*v64)(&v22[*(v63 + 20)], v23, v24);
        OUTLINED_FUNCTION_3_46();
        sub_1C71154C8();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FCABE8(v65);
        OUTLINED_FUNCTION_13_2();
        if (__OFADD__(v27, v28))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v29 = v25;
        v30 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8);
        if (sub_1C7551A2C())
        {
          v31 = sub_1C6FCABE8(v65);
          if ((v30 & 1) != (v32 & 1))
          {

            sub_1C7551E4C();
            return;
          }

          v29 = v31;
        }

        v33 = v0[14];
        if (v30)
        {
          OUTLINED_FUNCTION_65_10();
          sub_1C7115464(v34, v35);
          OUTLINED_FUNCTION_0_66();
          sub_1C7115520(v33, v36);
        }

        else
        {
          OUTLINED_FUNCTION_1_3(v13 + 8 * (v29 >> 6));
          *(*(v13 + 48) + v29) = v65;
          OUTLINED_FUNCTION_65_10();
          OUTLINED_FUNCTION_17_30();
          sub_1C7115578();
          sub_1C7115520(v33, v29);
          v37 = *(v13 + 16);
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_41;
          }

          *(v13 + 16) = v39;
        }

        v10 &= v10 - 1;
        if (!v10)
        {
          goto LABEL_5;
        }
      }
    }

    while (1)
    {
LABEL_5:
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
        goto LABEL_9;
      }
    }

    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    sub_1C75511BC();
    v41 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_29;
    }
  }

  else
  {
    sub_1C7113C14();
    v13 = v43;
    if (!v43)
    {
      sub_1C708039C();
      v13 = sub_1C75504DC();
    }

    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    sub_1C75511BC();
    v44 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v44, v45))
    {
LABEL_29:

      goto LABEL_30;
    }
  }

  v46 = swift_slowAlloc();
  *v46 = 134218240;
  v47 = sub_1C71121B8(v13, 1);
  *(v46 + 14) = OUTLINED_FUNCTION_51_10(v47);

  OUTLINED_FUNCTION_8_1();
  _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
LABEL_30:

  sub_1C7113F68();

  v53 = sub_1C754FEEC();
  sub_1C75511BC();
  v54 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  v61();
}

uint64_t sub_1C71121B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_61_1();
  if (*(a1 + 16) && (sub_1C6FCABE8(a2), (v12 & 1) != 0))
  {
    OUTLINED_FUNCTION_3_46();
    sub_1C71154C8();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v13, 1, v5);
  v14 = OUTLINED_FUNCTION_56_9();
  if (__swift_getEnumTagSinglePayload(v14, v15, v5))
  {
    sub_1C6FD7FC8(v2, &qword_1EC216D28);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_295();
    sub_1C71154C8();
    sub_1C6FD7FC8(v2, &qword_1EC216D28);
    v17 = *v9;
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_66();
    sub_1C7115520(v9, v18);
    v16 = *(v17 + 16);
  }

  return v16;
}

void sub_1C7112364()
{
  OUTLINED_FUNCTION_124();
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v37 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_15_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v16);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_1();
  sub_1C7112800(v2);
  if (v1)
  {
LABEL_18:
    OUTLINED_FUNCTION_125();
  }

  else
  {
    v19 = v18;
    v32 = v12;
    v33 = 0;
    v34 = v8;
    v35 = v0;
    v36 = v3;
    sub_1C6FD7FC8(v2, &unk_1EC219230);
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = *(v19 + 16);
    while (1)
    {
      if (v20 == v22)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217980);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C75604F0;
        *(inited + 32) = 1;
        *(inited + 40) = v21;
        *(inited + 48) = 2;
        *(inited + 56) = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
        sub_1C708039C();
        sub_1C75504DC();
        v29 = v34;
        sub_1C754DF5C();
        sub_1C7111644();
        (*(v37 + 8))(v29, v36);

        goto LABEL_18;
      }

      if (v20 >= *(v19 + 16))
      {
        break;
      }

      ++v20;
      OUTLINED_FUNCTION_20_25();
      sub_1C71154C8();
      if (v15[16] != 1)
      {
        goto LABEL_11;
      }

      v23 = 0;
      while (v23 != 3)
      {
        v24 = &unk_1F46A7CC8 + v23++;
        if (v24[32] == v15[72])
        {
          goto LABEL_11;
        }
      }

      if (!sub_1C705D108(*(v15 + 10), &unk_1F46A7CF0))
      {
        OUTLINED_FUNCTION_19_23();
        sub_1C7115578();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D568();
        }

        v26 = *(v21 + 16);
        v27 = v26 + 1;
        if (v26 >= *(v21 + 24) >> 1)
        {
          v30 = *(v21 + 16);
          v31 = v26 + 1;
          sub_1C716D568();
          v27 = v31;
        }

        *(v21 + 16) = v27;
        OUTLINED_FUNCTION_19_23();
        sub_1C7115578();
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_2_46();
        sub_1C7115520(v15, v25);
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C711271C()
{
  sub_1C7110E68();
  type metadata accessor for PromptSuggestionPersistedBundle(0);
  sub_1C708039C();
  sub_1C75504DC();
  sub_1C71155D0();
  v1 = sub_1C754DBAC();
  v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_52_11();
    return sub_1C6FC1640(v1, v3);
  }

  return result;
}

double sub_1C7112800(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - v7;
  v9 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v58 = (v12 - v11);
  v13 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v14 = v13;
  v59 = PerformanceMeasure.init(name:log:)();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  v17 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_96_0();
    v19 = swift_slowAlloc();
    *v19 = 0;
    OUTLINED_FUNCTION_46_0();
    _os_log_impl(v20, v21, v22, v23, v19, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v24 = sub_1C7113C14();
  if (v2)
  {
    sub_1C6F85170();

    return v3;
  }

  v28 = v25;
  if (!v25)
  {
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511BC();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_96_0();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v42);
      v41 = "No persistent container found. Returning default values";
      goto LABEL_13;
    }

LABEL_14:

    v43 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v43);
    sub_1C6F85170();

    return 1.0;
  }

  v16 = v27;
  v57[1] = v26;
  v57[2] = v24;
  v57[3] = 0;
  v29 = sub_1C754FEEC();
  sub_1C75511BC();
  v30 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_96_0();
    v32 = swift_slowAlloc();
    v57[0] = a1;
    OUTLINED_FUNCTION_61(v32);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    a1 = v57[0];
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C6FE126C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    sub_1C6FD7FC8(v8, &qword_1EC216D28);
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511BC();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_96_0();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_58_8(v40);
      v41 = "No Search persistent container found. Returning default values";
LABEL_13:
      _os_log_impl(&dword_1C6F5C000, v38, v39, v41, v16, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v3 = *&v16;
  OUTLINED_FUNCTION_18_19();
  v44 = v58;
  sub_1C7115578();
  v45 = *v44;
  swift_bridgeObjectRetain_n();
  v46 = sub_1C754FEEC();
  sub_1C75511BC();
  v47 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_13_3();
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = *(v45 + 16);

    OUTLINED_FUNCTION_46_0();
    _os_log_impl(v50, v51, v52, v53, v49, 0xCu);
    v54 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v54);
  }

  else
  {
  }

  sub_1C710FB00(v28, a1);
  OUTLINED_FUNCTION_0_66();
  sub_1C7115520(v44, v55);

  sub_1C6F85170();

  return v3;
}

uint64_t sub_1C7112C48()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  sub_1C7113C14();
  if (!v1)
  {
    if (v5)
    {
      sub_1C6FE126C();

      type metadata accessor for PromptSuggestionPersistedBundle(0);
      v6 = OUTLINED_FUNCTION_56_9();
      if (__swift_getEnumTagSinglePayload(v6, v7, v8) != 1)
      {
        v0 = *v2;
        sub_1C75504FC();
        OUTLINED_FUNCTION_0_66();
        sub_1C7115520(v2, v18);
        return v0;
      }

      sub_1C6FD7FC8(v2, &qword_1EC216D28);
    }

    else
    {
      v9 = sub_1C754FEEC();
      sub_1C75511BC();
      v10 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_96_0();
        v12 = swift_slowAlloc();
        *v12 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v13, v14, v15, v16, v12, 2u);
        v17 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v17);
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C7112DBC()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_15_3();
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28);
  OUTLINED_FUNCTION_76(v4);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  v1[10] = v5;
  OUTLINED_FUNCTION_76(v5);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7112EF4, v0, 0);
}

void sub_1C7112EF4()
{
  v62 = v0;
  sub_1C7113C14();
  if (!v1)
  {
    v17 = sub_1C754FEEC();
    sub_1C755119C();
    v18 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_24;
  }

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[2];
  sub_1C6FE126C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    sub_1C6FD7FC8(v0[9], &qword_1EC216D28);
    OUTLINED_FUNCTION_20_25();
    sub_1C71154C8();
    v5 = sub_1C754FEEC();
    v6 = sub_1C755119C();
    v7 = OUTLINED_FUNCTION_72();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[5];
    if (v9)
    {
      OUTLINED_FUNCTION_13_3();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v12 = swift_slowAlloc();
      v61[0] = v12;
      *v11 = 136315138;
      v13 = *(v10 + 16);
      v14 = 0xE400000000000000;
      v15 = 1701736270;
      v16 = v12;
      switch(v13)
      {
        case 1:
          v14 = 0xE600000000000000;
          v15 = 0x636961736F4DLL;
          break;
        case 2:
          v14 = 0xE600000000000000;
          v15 = 0x686372616553;
          break;
        case 3:
          v14 = 0xE90000000000006CLL;
          v15 = 0x616369736D696857;
          break;
        case 4:
          v14 = 0xEA00000000006C61;
          v15 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_46();
      sub_1C7115520(v54, v55);
      v56 = sub_1C6F765A4(v15, v14, v61);

      *(v11 + 4) = v56;
      _os_log_impl(&dword_1C6F5C000, v5, v6, "No persisted suggestion bundle found for source %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v57 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v57);

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_46();
    v45 = v10;
LABEL_18:
    sub_1C7115520(v45, v44);
LABEL_23:

    goto LABEL_24;
  }

  v25 = v0[11];
  v26 = v0[2];
  OUTLINED_FUNCTION_18_19();
  sub_1C7115578();
  v27 = *v25;
  sub_1C75504FC();
  v28 = sub_1C710DF20(v26, v27);
  if (v29)
  {

    sub_1C71154C8();
    sub_1C71154C8();
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[11];
    v34 = v0[6];
    v35 = v0[7];
    if (v32)
    {
      v60 = v0[11];
      v36 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v36 = 136315395;
      v38 = *v35;
      v37 = v35[1];
      sub_1C75504FC();
      sub_1C7115520(v35, type metadata accessor for PromptSuggestion);
      v39 = sub_1C6F765A4(v38, v37, v61);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2081;
      v40 = *(v34 + 104);
      v41 = *(v34 + 112);
      sub_1C75504FC();
      sub_1C7115520(v34, type metadata accessor for PromptSuggestion);
      v42 = sub_1C6F765A4(v40, v41, v61);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Suggestion not found in cache: [%s] %{private}s", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v43 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v43);

      OUTLINED_FUNCTION_0_66();
      v45 = v60;
    }

    else
    {

      sub_1C7115520(v34, type metadata accessor for PromptSuggestion);
      sub_1C7115520(v35, type metadata accessor for PromptSuggestion);
      OUTLINED_FUNCTION_0_66();
      v45 = v33;
    }

    goto LABEL_18;
  }

  v46 = v28;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v46 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C70E42C0();
  v27 = v59;
  if ((v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if (v46 >= *(v27 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  v48 = v0[10];
  v47 = v0[11];
  v49 = v0[8];
  sub_1C7115624(v0[2], v27 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)) + *(v0[4] + 72) * v46);
  v50 = *(v48 + 20);
  v51 = *(v4 + 16);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v52 + 16))(v49 + v50, v47 + v50);
  *v49 = v27;
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
  sub_1C709B1F4(v49, v51);
  sub_1C7113F68();
  OUTLINED_FUNCTION_0_66();
  sub_1C7115520(v47, v53);

LABEL_24:

  OUTLINED_FUNCTION_43();

  v58();
}

void sub_1C7113550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v22 = sub_1C754FEEC();
  sub_1C75511BC();
  v23 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_96_0();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v25);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v31 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v32 = sub_1C755065C();

  v33 = [v31 fileExistsAtPath_];

  v34 = sub_1C754FEEC();
  LOBYTE(v32) = sub_1C75511BC();

  v35 = os_log_type_enabled(v34, v32);
  if (v33)
  {
    if (v35)
    {
      OUTLINED_FUNCTION_13_3();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v37 = swift_slowAlloc();
      a10 = v37;
      *v36 = 136315138;
      v38 = sub_1C754DCEC();
      v40 = sub_1C6F765A4(v38, v39, &a10);

      *(v36 + 4) = v40;
      OUTLINED_FUNCTION_68_10(&dword_1C6F5C000, v41, v42, "File exists at %s, try getting Data at path");
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C754DD6C();
  }

  else
  {
    if (v35)
    {
      OUTLINED_FUNCTION_13_3();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v44 = swift_slowAlloc();
      a10 = v44;
      *v43 = 136315138;
      v45 = sub_1C754DCEC();
      v47 = sub_1C6F765A4(v45, v46, &a10);

      *(v43 + 4) = v47;
      OUTLINED_FUNCTION_68_10(&dword_1C6F5C000, v48, v49, "No file found at %s");
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71137BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C7113550(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31);
  if (v8 >> 60 == 15)
  {
    return 1;
  }

  sub_1C7110EEC();
  sub_1C7115688();
  sub_1C754DB5C();

  v10 = v23 != 4;
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  v13 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109632;
    *(v16 + 4) = v23 != 4;
    *(v16 + 8) = 2048;

    *(v16 + 10) = v23;

    *(v16 + 18) = 2048;
    *(v16 + 20) = 4;
    _os_log_impl(&dword_1C6F5C000, v11, v12, "Should reset cache %{BOOL}d, persisted schema version %ld, expected %ld", v16, 0x1Cu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = OUTLINED_FUNCTION_295();
  sub_1C70B5C10(v17, v18);

  return v10;
}

uint64_t sub_1C7113A40@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C7113C14();
  if (!v1)
  {
    if (v4)
    {
      sub_1C710FB00(v4, a1);
    }

    else
    {
      sub_1C754DF6C();
      v5 = OUTLINED_FUNCTION_56_9();
      return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C7113AB4@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  result = sub_1C7113C14();
  if (!v1)
  {
    if (v7)
    {
      sub_1C6FE126C();

      v8 = type metadata accessor for PromptSuggestionPersistedBundle(0);
      v9 = OUTLINED_FUNCTION_56_9();
      if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
      {
        v14 = *(v8 + 20);
        v15 = sub_1C754DF6C();
        OUTLINED_FUNCTION_12();
        (*(v16 + 16))(a1, v2 + v14, v15);
        OUTLINED_FUNCTION_0_66();
        sub_1C7115520(v2, v17);
        v12 = a1;
        v13 = 0;
        v11 = v15;
        return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
      }

      sub_1C6FD7FC8(v2, &qword_1EC216D28);
    }

    v11 = sub_1C754DF6C();
    v12 = a1;
    v13 = 1;
    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  return result;
}

uint64_t sub_1C7113C14()
{
  v3 = v0;
  v4 = sub_1C754FEEC();
  sub_1C75511BC();
  v5 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_96_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v7);
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C7113550(v13, v14, v15, v16, v17, v18, v19, v20, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  if (!v1)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_1C754FEEC();
    v2 = sub_1C75511BC();
    v26 = OUTLINED_FUNCTION_72();
    v28 = os_log_type_enabled(v26, v27);
    if (v24 >> 60 == 15)
    {
      if (v28)
      {
        OUTLINED_FUNCTION_96_0();
        v29 = swift_slowAlloc();
        OUTLINED_FUNCTION_58_8(v29);
        OUTLINED_FUNCTION_63_10();
        _os_log_impl(v30, v31, v32, v33, v3, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      OUTLINED_FUNCTION_55_10();
    }

    else
    {
      if (v28)
      {
        OUTLINED_FUNCTION_96_0();
        v34 = swift_slowAlloc();
        *v34 = 0;
        OUTLINED_FUNCTION_63_10();
        _os_log_impl(v35, v36, v37, v38, v34, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C7110EEC();
      sub_1C7115688();
      sub_1C754DB5C();

      v2 = v49;
      v39 = sub_1C754FEEC();
      sub_1C75511BC();
      v40 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_96_0();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v42);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v43, v44, v45, v46, v23, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C70B5C10(v23, v24);
    }
  }

  return v2;
}

uint64_t sub_1C7113F68()
{
  sub_1C7110E68();
  sub_1C71155D0();
  v1 = sub_1C754DBAC();
  v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_52_11();
    return sub_1C6FC1640(v1, v3);
  }

  return result;
}

uint64_t sub_1C7114030()
{
  sub_1C7110E68();
  sub_1C71156DC();
  v1 = sub_1C754DBAC();
  v3 = v2;

  if (!v0)
  {
    v5 = sub_1C754FEEC();
    sub_1C75511BC();
    v6 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_96_0();
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_63_10();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v13, v14);
    }

    sub_1C754DE1C();
    return sub_1C6FC1640(v1, v3);
  }

  return result;
}

uint64_t sub_1C7114154@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 112);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v4 = v3;
  PerformanceMeasure.init(name:log:)();
  sub_1C711435C(v14);
  v5 = v14[0];
  v6 = v14[1];
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  v9 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_96_0();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Successfully loaded analytics", v11, 2u);
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  *a1 = v5;
  a1[1] = v6;
  sub_1C6F85170();
}

void sub_1C711435C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  v6 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_96_0();
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Start readAnalyticsFromDisk", v8, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v9 = [objc_opt_self() defaultManager];
  sub_1C754DCDC();
  v10 = sub_1C755065C();

  v11 = [v9 fileExistsAtPath_];

  v12 = sub_1C754FEEC();
  if (v11)
  {
    v13 = sub_1C75511BC();

    v52 = a1;
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_13_3();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v14 = 136315138;
      v15 = sub_1C754DCDC();
      v17 = sub_1C6F765A4(v15, v16, v51);

      *(v14 + 4) = v17;
      v2 = v1;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "Analytics file exists at %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v18 = sub_1C754DD6C();
    if (!v2)
    {
      v20 = v18;
      v21 = v19;

      v22 = sub_1C754FEEC();
      v23 = sub_1C75511BC();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_13_3();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v49 = swift_slowAlloc();
        v51[0] = v49;
        *v24 = 136315138;
        v25 = sub_1C754DCDC();
        v27 = v21;
        v28 = sub_1C6F765A4(v25, v26, v51);

        *(v24 + 4) = v28;
        v21 = v27;
        _os_log_impl(&dword_1C6F5C000, v22, v23, "Finished reading Data at %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v29 = v52;
      sub_1C7110EEC();
      sub_1C7116E40();
      sub_1C754DB5C();
      v37 = v20;
      v38 = v21;

      v39 = v51[0];
      v40 = v51[1];
      v41 = sub_1C754FEEC();
      sub_1C75511BC();
      v42 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_96_0();
        v44 = swift_slowAlloc();
        *v44 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v45, v46, v47, v48, v44, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FC1640(v37, v38);

      *v29 = v39;
      v29[1] = v40;
    }
  }

  else
  {
    v30 = sub_1C755119C();

    if (os_log_type_enabled(v12, v30))
    {
      OUTLINED_FUNCTION_13_3();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v32 = swift_slowAlloc();
      v51[0] = v32;
      *v31 = 136315138;
      v33 = sub_1C754DCEC();
      v35 = sub_1C6F765A4(v33, v34, v51);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1C6F5C000, v12, v30, "Failed to load analytics. File not found at %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v36 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v36);
    }

    sub_1C7116DEC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t PromptSuggestionCache.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_cacheFileURL;
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC18PhotosIntelligence21PromptSuggestionCache_analyticsFileURL, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PromptSuggestionCache.__deallocating_deinit()
{
  PromptSuggestionCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7114974(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114994, v3, 0);
}

uint64_t sub_1C7114994()
{
  OUTLINED_FUNCTION_49_0();
  v1.n128_f64[0] = sub_1C7112800(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C7114A38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114A58, v3, 0);
}

uint64_t sub_1C7114A58()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C7112C48();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C7114AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;

  return sub_1C7112DBC();
}

uint64_t sub_1C7114B68(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1C7114B8C, v4, 0);
}

uint64_t sub_1C7114B8C()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C7111490();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7114C04(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C7114C24, v3, 0);
}

uint64_t sub_1C7114C24()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C7113A40(*(v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7114C98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return sub_1C7111A24();
}

unint64_t sub_1C7114D58()
{
  result = qword_1EDD0D468;
  if (!qword_1EDD0D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D468);
  }

  return result;
}

unint64_t sub_1C7114DAC()
{
  result = qword_1EDD07898;
  if (!qword_1EDD07898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07898);
  }

  return result;
}

unint64_t sub_1C7114E00()
{
  result = qword_1EDD078A8[0];
  if (!qword_1EDD078A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD078A8);
  }

  return result;
}

unint64_t sub_1C7114E54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217970);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7114EC8()
{
  result = qword_1EDD07890;
  if (!qword_1EDD07890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07890);
  }

  return result;
}

unint64_t sub_1C7114F1C()
{
  result = qword_1EDD078A0;
  if (!qword_1EDD078A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD078A0);
  }

  return result;
}

uint64_t sub_1C7114FD0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C75504FC();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C7115020(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    type metadata accessor for PromptSuggestion(0);
    return sub_1C71154C8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C71150D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);
    sub_1C75504FC();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C711514C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  sub_1C6F78034(v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v37 = v44[5];
  v38 = v44[0];
  v9 = (v44[2] + 64) >> 6;
  sub_1C75504FC();

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v38 + 56) + 8 * v12);
      v43[0] = *v13;
      v43[1] = v14;
      v43[2] = v15;
      sub_1C75504FC();
      v16 = v15;
      v37(&v40, v43);

      v17 = v40;
      v18 = v41;
      v19 = v42;
      v20 = *v45;
      v21 = sub_1C6F78124(v40, v41);
      OUTLINED_FUNCTION_13_2();
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v25 = v22;
      if (v20[3] >= v23 + v24)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354B70();
        v26 = sub_1C6F78124(v17, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v45;
      if (v25)
      {

        v29 = v28[7];
        v30 = *(v29 + 8 * v21);
        *(v29 + 8 * v21) = v19;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v28[v21 >> 6]);
        v31 = (v28[6] + 16 * v21);
        *v31 = v17;
        v31[1] = v18;
        *(v28[7] + 8 * v21) = v19;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

id sub_1C71153E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  v5 = [a3 directoryExistsAtPath_];

  return v5;
}

uint64_t sub_1C7115464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71154C8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7115520(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7115578()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C71155D0()
{
  result = qword_1EDD08F88[0];
  if (!qword_1EDD08F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD08F88);
  }

  return result;
}

uint64_t sub_1C7115624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7115688()
{
  result = qword_1EDD0D8F0;
  if (!qword_1EDD0D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D8F0);
  }

  return result;
}

unint64_t sub_1C71156DC()
{
  result = qword_1EDD07888;
  if (!qword_1EDD07888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07888);
  }

  return result;
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.readSuggestionsWithMetadata()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t sub_1C7115830()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_47();
  v7 = *v0;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  v9 = *(v7 + 8);
  v10.n128_u64[0] = v4;

  return v9(v6, v2, v10);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.read(source:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_0(v5);

  return v9(v7);
}

uint64_t sub_1C7115A34()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.update(suggestion:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_0(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.updateAll(source:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_3();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41_1(v9);
  *v10 = v11;
  v10[1] = sub_1C6F739D4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.lastUpdateDate()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PromptSuggestionCachePersister.updateWithMetadata(suggestionsGroupedBySource:processingCode:lastUpdateDate:embeddingDistanceThresholdForRanking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  OUTLINED_FUNCTION_15_3();
  v18 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_41_1(v13);
  *v14 = v15;
  v14[1] = sub_1C6F739D4;
  v16.n128_f64[0] = a6;

  return v18(a1, a2, a3, a4, a5, v16);
}

uint64_t sub_1C7115FC8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = sub_1C754DD2C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of PromptSuggestionCache.updateWithMetadata(suggestionsGroupedBySource:processingCode:lastUpdateDate:embeddingDistanceThresholdForRanking:)(double a1)
{
  OUTLINED_FUNCTION_69_3();
  v9 = (*(v2 + 208) + **(v2 + 208));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);
  v7.n128_f64[0] = a1;

  return v9(v6, v7);
}

uint64_t dispatch thunk of PromptSuggestionCache.update(suggestion:)()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  OUTLINED_FUNCTION_69_3();
  v7 = (*(v2 + 248) + **(v2 + 248));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v4[1] = sub_1C6F739D4;

  return v7(v1);
}

void sub_1C71165F8()
{
  sub_1C711667C();
  if (v0 <= 0x3F)
  {
    sub_1C754DF6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C711667C()
{
  if (!qword_1EDD0D038)
  {
    type metadata accessor for PromptSuggestion(255);
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D038);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionAnalyticsPayload.SourcePayloadContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71167D4()
{
  result = qword_1EC217990;
  if (!qword_1EC217990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217990);
  }

  return result;
}

unint64_t sub_1C711682C()
{
  result = qword_1EC217998;
  if (!qword_1EC217998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217998);
  }

  return result;
}

unint64_t sub_1C7116884()
{
  result = qword_1EC2179A0;
  if (!qword_1EC2179A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2179A0);
  }

  return result;
}

unint64_t sub_1C71168DC()
{
  result = qword_1EDD0D458;
  if (!qword_1EDD0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D458);
  }

  return result;
}

unint64_t sub_1C7116934()
{
  result = qword_1EDD0D460;
  if (!qword_1EDD0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D460);
  }

  return result;
}

unint64_t sub_1C711698C()
{
  result = qword_1EDD0D488;
  if (!qword_1EDD0D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D488);
  }

  return result;
}

unint64_t sub_1C71169E4()
{
  result = qword_1EDD0D490;
  if (!qword_1EDD0D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D490);
  }

  return result;
}

unint64_t sub_1C7116A3C()
{
  result = qword_1EDD0D470;
  if (!qword_1EDD0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D470);
  }

  return result;
}

unint64_t sub_1C7116A94()
{
  result = qword_1EDD0D478;
  if (!qword_1EDD0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D478);
  }

  return result;
}

unint64_t sub_1C7116AE8()
{
  result = qword_1EDD0D908[0];
  if (!qword_1EDD0D908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0D908);
  }

  return result;
}

unint64_t sub_1C7116B3C()
{
  result = qword_1EDD06C88;
  if (!qword_1EDD06C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2179B0);
    sub_1C710EB44();
    sub_1C7116CB4(&unk_1EDD07BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C88);
  }

  return result;
}

unint64_t sub_1C7116BF8()
{
  result = qword_1EDD0D098;
  if (!qword_1EDD0D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2179B0);
    sub_1C710EDA8();
    sub_1C7116CB4(&unk_1EDD0D5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D098);
  }

  return result;
}

unint64_t sub_1C7116CB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7116CF8()
{
  result = qword_1EDD0D5E8[0];
  if (!qword_1EDD0D5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0D5E8);
  }

  return result;
}

unint64_t sub_1C7116D4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217988);
    sub_1C7116CB4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7116DEC()
{
  result = qword_1EDD07CE0;
  if (!qword_1EDD07CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07CE0);
  }

  return result;
}

unint64_t sub_1C7116E40()
{
  result = qword_1EDD07880;
  if (!qword_1EDD07880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07880);
  }

  return result;
}

_BYTE *sub_1C7116E94(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C7116F40(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionsContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71170FC()
{
  result = qword_1EC2179D8;
  if (!qword_1EC2179D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2179D8);
  }

  return result;
}

unint64_t sub_1C7117154()
{
  result = qword_1EC2179E0;
  if (!qword_1EC2179E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2179E0);
  }

  return result;
}

unint64_t sub_1C71171AC()
{
  result = qword_1EC2179E8;
  if (!qword_1EC2179E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2179E8);
  }

  return result;
}

unint64_t sub_1C7117204()
{
  result = qword_1EDD0D5D8;
  if (!qword_1EDD0D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D5D8);
  }

  return result;
}

unint64_t sub_1C711725C()
{
  result = qword_1EDD0D5E0;
  if (!qword_1EDD0D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D5E0);
  }

  return result;
}

unint64_t sub_1C71172B4()
{
  result = qword_1EDD0D8F8;
  if (!qword_1EDD0D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D8F8);
  }

  return result;
}

unint64_t sub_1C711730C()
{
  result = qword_1EDD0D900;
  if (!qword_1EDD0D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D900);
  }

  return result;
}

double OUTLINED_FUNCTION_50_11@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_68_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C7117424(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v32 = v2;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C716E46C(0, v4, 0);
    v6 = v44;
    result = sub_1C719D92C(v5);
    v10 = result;
    v11 = 0;
    v40 = v5 + 56;
    v36 = v5;
    v37 = a2 + 32;
    v33 = v5 + 64;
    v34 = a2;
    v35 = v4;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v40 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_29;
        }

        v13 = *(*(v5 + 48) + 8 * v10);
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v13 >= *(a2 + 16))
        {
          goto LABEL_31;
        }

        v39 = v9;
        v38 = v8;
        sub_1C6FB5E28(v37 + 40 * v13, v41);
        v44 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C716E46C(v14 > 1, v15 + 1, 1);
        }

        v17 = v42;
        v16 = v43;
        v18 = __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
        v19 = MEMORY[0x1EEE9AC00](v18);
        v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v21, v19);
        sub_1C71FCD88(v15, v21, &v44, v17, v16);
        result = __swift_destroy_boxed_opaque_existential_1(v41);
        if (v39)
        {
          goto LABEL_35;
        }

        v23 = v35;
        v5 = v36;
        v24 = 1 << *(v36 + 32);
        if (v10 >= v24)
        {
          goto LABEL_32;
        }

        v25 = *(v40 + 8 * v12);
        if ((v25 & (1 << v10)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v36 + 36) != v38)
        {
          goto LABEL_34;
        }

        v6 = v44;
        v26 = v25 & (-2 << (v10 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = v12 << 6;
          v28 = v12 + 1;
          v29 = (v33 + 8 * v12);
          while (v28 < (v24 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              result = sub_1C6F9ED50(v10, v38, 0);
              v24 = __clz(__rbit64(v30)) + v27;
              goto LABEL_21;
            }
          }

          result = sub_1C6F9ED50(v10, v38, 0);
        }

LABEL_21:
        ++v11;
        a2 = v34;
        if (v11 == v23)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v5 + 36);
        v10 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t TraitGenerator.Configuration.globalTraitGeneratorConfiguration.getter()
{
  memcpy(__dst, v0, 0x59uLL);
  v1 = OUTLINED_FUNCTION_90();
  memcpy(v1, v2, 0x59uLL);
  return sub_1C7117834(__dst, &v4);
}

void *TraitGenerator.Configuration.globalTraitGeneratorConfiguration.setter()
{
  memcpy(v4, v0, 0x59uLL);
  sub_1C71178DC(v4);
  v1 = OUTLINED_FUNCTION_66_2();
  return memcpy(v1, v2, 0x59uLL);
}

double TraitGenerator.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C754E15C();
  OUTLINED_FUNCTION_29();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = objc_opt_self();
  v12 = [v11 numberOfGlobalTraits];
  v13 = [v12 integerValue];

  v18 = [v11 useGlobalTraitsV3];
  sub_1C754E0AC();
  sub_1C754E04C();
  OUTLINED_FUNCTION_144();
  v14 = *(v4 + 8);
  v14(v7, v2);
  OUTLINED_FUNCTION_323();
  sub_1C754E03C();
  sub_1C719647C(v10);
  v15 = OUTLINED_FUNCTION_51();
  v14(v15, v2);
  *a1 = v13;
  *(a1 + 8) = xmmword_1C756D550;
  *(a1 + 24) = 0x3F847AE147AE147BLL;
  *(a1 + 32) = v7;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1C756D560;
  *(a1 + 64) = 500;
  *(a1 + 72) = sub_1C7196254;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(a1 + 112) = xmmword_1C756D570;
  *(a1 + 128) = xmmword_1C756D580;
  *(a1 + 144) = [v11 maximumNumberOfConsolidatedTraits];
  result = 1.45;
  *(a1 + 152) = xmmword_1C756D590;
  return result;
}

uint64_t sub_1C7117C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 24);
  v12 = *(a5 + 32);
  __swift_mutable_project_boxed_opaque_existential_0(a5, v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = *(a7 + 24);
  v20 = *(a7 + 32);
  __swift_mutable_project_boxed_opaque_existential_0(a7, v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = a8(a1, a2, a3, a4, v17, a6, v24, v31, v13, v19, v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v26;
}

uint64_t sub_1C7117E3C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 4200) = v0;
  *(v1 + 4152) = v30;
  *(v1 + 4104) = v29;
  *(v1 + 4056) = v28;
  *(v1 + 4008) = v27;
  *(v1 + 3960) = v8;
  *(v1 + 3912) = v9;
  *(v1 + 3864) = v10;
  *(v1 + 3816) = v11;
  *(v1 + 3768) = v12;
  v13 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 4248) = v14;
  *(v1 + 4296) = OUTLINED_FUNCTION_77();
  v15 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 4344) = v16;
  *(v1 + 4392) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754F2FC();
  *(v1 + 4440) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 4488) = v18;
  *(v1 + 4536) = OUTLINED_FUNCTION_81_0();
  *(v1 + 4584) = swift_task_alloc();
  *(v1 + 4632) = swift_task_alloc();
  *(v1 + 4680) = swift_task_alloc();
  *(v1 + 4728) = swift_task_alloc();
  *(v1 + 4736) = swift_task_alloc();
  v19 = sub_1C754F38C();
  *(v1 + 4744) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 4752) = v20;
  *(v1 + 4760) = OUTLINED_FUNCTION_77();
  memcpy((v1 + 3112), v7, 0x50uLL);
  v21 = v5[1];
  *(v1 + 4768) = *v5;
  *(v1 + 4784) = v21;
  *(v1 + 4800) = *v3;
  *(v1 + 3714) = *(v3 + 8);
  *(v1 + 3715) = *(v3 + 9);
  v22 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C7118070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v65 = v10;
  v11 = *(v10 + 3715);
  OUTLINED_FUNCTION_141_1(*(v10 + 4056), *(*(v10 + 4056) + 24));
  sub_1C754F1CC();
  if (v11 == 1)
  {
    v12 = sub_1C754FEEC();
    sub_1C75511BC();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v15);
      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v21 = *(v10 + 4760);
    v22 = *(v10 + 4752);
    v23 = *(v10 + 4744);
    v24 = *(v10 + 4488);
    v62 = *(v10 + 4440);
    v25 = *(v10 + 4104);
    v26 = *(v10 + 3768);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
    v27 = swift_allocObject();
    *(v27 + 24) = 0;
    *(v27 + 16) = MEMORY[0x1E69E7CC8];
    v28 = MEMORY[0x1E69E7CD0];
    *v26 = MEMORY[0x1E69E7CD0];
    v26[1] = v28;
    v26[2] = v28;
    v26[3] = v27;
    v29 = OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_18_0(v29, v30);
    sub_1C754F1AC();
    (*(v22 + 8))(v21, v23);
    (*(v24 + 8))(v25, v62);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_110_3();

    return v31();
  }

  else
  {
    sub_1C754F2CC();
    v34 = *(v10 + 4056);
    v60 = *(v10 + 4008);
    v59 = *(v10 + 3912);
    v57 = *(v10 + 4784);
    v58 = *(v10 + 4768);
    v35 = OUTLINED_FUNCTION_121();
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_1C754F15C();
    OUTLINED_FUNCTION_24_6(v34);
    sub_1C754F17C();
    sub_1C754F2BC();
    sub_1C754F2BC();
    sub_1C754F2BC();
    v37 = [objc_allocWithZone(PNTextEmbeddingService) init];
    *(v10 + 4808) = v37;
    v38 = swift_allocObject();
    *(v10 + 4816) = v38;
    *(v38 + 16) = v37;
    v39 = v37;
    swift_asyncLet_begin();
    sub_1C6FB5E28(v10 + 3432, v10 + 3352);
    v40 = swift_allocObject();
    *(v10 + 4824) = v40;
    sub_1C6F699F8((v10 + 3352), v40 + 16);
    swift_asyncLet_begin();
    v64[0] = v58;
    v64[1] = v57;
    sub_1C711EE04(v59, v64, v60);
    *(v10 + 4832) = v41;
    *(v10 + 4840) = 0;
    v42 = *(v10 + 3714);
    v43 = *(v10 + 4800);
    v44 = *(v43 + 16);
    *(v10 + 4848) = v44;
    v61 = *(v10 + 4784);
    v63 = *(v10 + 4768);
    *(v10 + 3716) = sub_1C711BCA0(v41, v44 != 0) & 1;
    OUTLINED_FUNCTION_161_2((v10 + 3032));
    *(v10 + 3544) = v63;
    *(v10 + 3560) = v61;
    *(v10 + 3704) = v43;
    *(v10 + 3712) = v42;
    *(v10 + 3713) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v10 + 4856) = v45;
    *v45 = v46;
    v45[1] = sub_1C71186F0;
    v47 = *(v10 + 4152);
    v66 = v10 + 3272;
    v67 = v47;
    OUTLINED_FUNCTION_110_3();

    return sub_1C711BE54(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
  }
}

uint64_t sub_1C71186F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 4864) = v0;

  if (v0)
  {
    v7 = sub_1C711A490;
  }

  else
  {
    v7 = sub_1C71187FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C71187FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_115_0();
  v11 = *(v10 + 4488);
  v12 = *(v10 + 3512);
  *(v10 + 4872) = v12;
  v13 = *(v10 + 3520);
  *(v10 + 4880) = v13;
  v14 = *(v10 + 3528);
  *(v10 + 4888) = v14;
  v15 = *(v10 + 3536);
  *(v10 + 4896) = v15;
  OUTLINED_FUNCTION_161_2((v10 + 2872));
  v16 = *(v10 + 4784);
  *(v10 + 3608) = *(v10 + 4768);
  *(v10 + 3624) = v16;
  *(v10 + 3576) = v12;
  *(v10 + 3584) = v13;
  *(v10 + 3592) = v14;
  *(v10 + 3600) = v15;
  *(v10 + 4904) = *(v11 + 32);
  *(v10 + 4912) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17 = OUTLINED_FUNCTION_0_11();
  v18(v17);
  v19 = swift_task_alloc();
  *(v10 + 4920) = v19;
  *v19 = v10;
  v19[1] = sub_1C711894C;
  OUTLINED_FUNCTION_61_3(*(v10 + 3816));
  OUTLINED_FUNCTION_44();

  return sub_1C711D710(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1C711894C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[616] = v3;
  v5[617] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C711A634, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[618] = v9;
    *v9 = v7;
    v9[1] = sub_1C7118AC0;

    return sub_1C7124E14();
  }
}

uint64_t sub_1C7118AC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 4952) = v5;
  *(v3 + 4960) = v0;

  if (v0)
  {

    v6 = sub_1C711A7E0;
  }

  else
  {
    v6 = sub_1C7118BD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7118BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v120 = v16;
  v17 = *(v16 + 4960);
  v18 = *(v16 + 4008);
  v19 = *(v16 + 4784);
  v118 = *(v16 + 4768);
  v119 = v19;
  v20 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v118, v18, v16 + 3272);
  *(v16 + 4968) = v17;
  if (v17)
  {
    OUTLINED_FUNCTION_71_5();

    v21 = OUTLINED_FUNCTION_15_28();

    return MEMORY[0x1EEE6DEB0](v21, v22, v23, v16 + 3392);
  }

  v24 = MEMORY[0x1E69E7CD0];
  v25 = &unk_1C755C000;
  v117 = v20;
  if (*(v16 + 3716) == 1)
  {
    if (*(*(v16 + 4200) + 56) == 1)
    {
      sub_1C75504FC();
    }

    v41 = sub_1C711F208(*(v16 + 4928));
    sub_1C706D154(v41);
    StoryAsset.Manager.collection(with:filter:eventRecorder:)(&v118);
    *(v16 + 4976) = 0;
    v85 = *(v16 + 4008);

    v86 = *(&v118 + 1);
    v36 = v118;
    v26 = *(&v119 + 1);
    v38 = v119;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    v87 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v118, v85, v16 + 3272);
    *(v16 + 4984) = 0;
    v37 = v86;
    v88 = v87;

    v116 = v88;
    *(v16 + 3720) = v88;
    v27 = sub_1C754FEEC();
    sub_1C75511BC();
    v89 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v89, v90))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_3();
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = *(v88 + 16);
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
LABEL_10:
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_11:
    v39 = v117;
    v40 = v38;
    v24 = v37;
    v25 = &unk_1C755C000;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2179F0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = MEMORY[0x1E69E7CC8];
  *(v16 + 3720) = v24;
  v27 = sub_1C754FEEC();
  sub_1C75511BC();
  v28 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v30);
    OUTLINED_FUNCTION_127_0();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    v36 = MEMORY[0x1E69E7CD0];
    v37 = MEMORY[0x1E69E7CD0];
    v38 = MEMORY[0x1E69E7CD0];
    v116 = MEMORY[0x1E69E7CD0];
    goto LABEL_10;
  }

  v36 = v24;
  v40 = v24;
  v116 = v24;
  v39 = v117;
LABEL_14:
  *(v16 + 5016) = v26;
  *(v16 + 5008) = v40;
  *(v16 + 5000) = v24;
  *(v16 + 4992) = v36;
  v42 = *(v16 + 4848);

  if (v42 || *(v39 + 16) || *(v116 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_retain_n();
    v43 = sub_1C754FEEC();
    sub_1C75511BC();
    v44 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v16 + 4848);
      v115 = v24;
      v47 = v40;
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v49 = swift_slowAlloc();
      *&v118 = v49;
      *v48 = 136315906;
      if (v46)
      {
        v50 = 6648417;
      }

      else
      {
        v50 = 0x746F6E20657261;
      }

      if (v46)
      {
        v51 = 0xE300000000000000;
      }

      else
      {
        v51 = 0xE700000000000000;
      }

      v52 = sub_1C6F765A4(v50, v51, &v118);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2048;
      v53 = *(v117 + 16);

      *(v48 + 14) = v53;

      *(v48 + 22) = 2048;
      v54 = v116;
      *(v48 + 24) = *(v116 + 16);
      *(v48 + 32) = 2048;
      v55 = *(v36 + 16);

      *(v48 + 34) = v55;

      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v56, v57, v58, v59, v60, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v39 = v117;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v40 = v47;
      v24 = v115;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_141_4();

      swift_bridgeObjectRelease_n();

      v54 = v116;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
  }

  else
  {
    v97 = *(v16 + 4008);
    OUTLINED_FUNCTION_161_2(&v118);
    sub_1C7027A20(v16 + 3112, v16 + 2952);
    sub_1C701104C();
    if (v98)
    {
      v99 = v98;
    }

    else
    {
      v99 = MEMORY[0x1E69E7CD0];
    }

    StoryAsset.Manager.collection(with:)(v99, &v118);

    v100 = v118;
    v101 = v119;
    v102 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v118, v97, v16 + 3272);
    *(v16 + 5024) = 0;
    v103 = v102;
    swift_beginAccess();
    *(v16 + 3720) = v103;

    v104 = sub_1C754FEEC();
    sub_1C75511BC();
    v105 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v105, v106))
    {
      OUTLINED_FUNCTION_13_3();
      v107 = swift_slowAlloc();
      *v107 = v25[397];
      *(v107 + 4) = *(v103 + 16);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
      v113 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v113);
    }

    v24 = v100 >> 64;
    v36 = v100;
    v26 = *(&v101 + 1);
    v40 = v101;
    v54 = v103;
    v39 = v117;
  }

  *(v16 + 5064) = v54;
  *(v16 + 5056) = v26;
  *(v16 + 5048) = v40;
  *(v16 + 5040) = v24;
  *(v16 + 5032) = v36;
  v61 = *(v54 + 16);
  v62 = sub_1C754FEEC();
  sub_1C75511BC();
  v63 = OUTLINED_FUNCTION_72();
  v65 = os_log_type_enabled(v63, v64);
  if (v61)
  {
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_127();
      *v66 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v67, v68, v69, v70, v66, 2u);
      v71 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v71);
    }

    sub_1C75504FC();
    v39 = sub_1C70738FC(v39, v54);
  }

  else
  {
    if (v65)
    {
      v72 = OUTLINED_FUNCTION_127();
      *v72 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v73, v74, v75, v76, v72, 2u);
      v77 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v77);
    }
  }

  *(v16 + 5072) = sub_1C71CD85C(v39);
  OUTLINED_FUNCTION_161_2((v16 + 3192));
  v78 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEC0](v78, v79, v80, v16 + 3776, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C7119544()
{
  OUTLINED_FUNCTION_123();
  v1[635] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = v1[613];
    memcpy(v1 + 327, v1 + 199, 0xD8uLL);
    memcpy(v1 + 295, v1 + 199, 0xD8uLL);
    v6 = OUTLINED_FUNCTION_90();
    v5(v6);
    sub_1C70592B4((v1 + 327), (v1 + 263));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v1[636] = v7;
    *v7 = v8;
    v7[1] = sub_1C71196A4;

    return sub_1C711F330();
  }
}

uint64_t sub_1C71196A4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v2[637] = v6;
  v2[638] = v0;

  if (v0)
  {
    memcpy(v2 + 231, v2 + 295, 0xD8uLL);
    sub_1C7059364((v2 + 231));
  }

  else
  {
    memcpy(v2 + 167, v2 + 295, 0xD8uLL);
    sub_1C7059364((v2 + 167));
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C711981C()
{
  OUTLINED_FUNCTION_123();
  __swift_project_boxed_opaque_existential_1((v0[525] + 248), *(v0[525] + 272));
  v4 = (OUTLINED_FUNCTION_99_1() + 72);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[639] = v1;
  *v1 = v0;
  v1[1] = sub_1C7119944;
  v2 = OUTLINED_FUNCTION_61_3(v0[637]);

  return v5(v2);
}

uint64_t sub_1C7119944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 5120) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7119A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = v16[519];
  if (v17)
  {
    v18 = *(*(v17 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24);
    v19 = MEMORY[0x1E69E7CC0];
    if (*(v16[616] + 16))
    {
      a11 = v16[519];
      a12 = v16[549];
      a13 = MEMORY[0x1E69E7CC0];
      a10 = *(*(v17 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 24);

      OUTLINED_FUNCTION_106_3();
      sub_1C6F7ED9C();
      v20 = a13;
      OUTLINED_FUNCTION_191();
      do
      {
        v21 = v16[549];
        OUTLINED_FUNCTION_2_47();
        v22 = OUTLINED_FUNCTION_140_4();
        sub_1C712A7D0(v22, v23, v24);
        OUTLINED_FUNCTION_152_1();
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v21, v25);
        OUTLINED_FUNCTION_134_3();
        if (v27)
        {
          OUTLINED_FUNCTION_15(v26);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C();
          v20 = a13;
        }

        OUTLINED_FUNCTION_111_3();
      }

      while (!v28);
      v19 = MEMORY[0x1E69E7CC0];
      v17 = a11;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v29 = v16[640];
    *(v18 + 16) = v20;

    v30 = *(v17 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    v31 = *(v30 + 24);
    if (*(v29 + 16))
    {
      a10 = *(v30 + 24);
      a11 = *(v17 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
      a12 = v16[537];
      a13 = v19;

      OUTLINED_FUNCTION_106_3();
      sub_1C6F7ED9C();
      v32 = v19;
      OUTLINED_FUNCTION_191();
      do
      {
        v33 = v16[537];
        OUTLINED_FUNCTION_9_32();
        v34 = OUTLINED_FUNCTION_140_4();
        sub_1C712A7D0(v34, v35, v36);
        OUTLINED_FUNCTION_152_1();
        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v33, v37);
        OUTLINED_FUNCTION_134_3();
        if (v27)
        {
          OUTLINED_FUNCTION_15(v38);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C();
          v32 = v19;
        }

        OUTLINED_FUNCTION_111_3();
      }

      while (!v28);
      v31 = a10;
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v39 = v16[619];
    *(v31 + 40) = v32;

    *(*(v30 + 24) + 32) = v39;
  }

  OUTLINED_FUNCTION_129();

  return MEMORY[0x1EEE6DEC0](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C7119C74()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 5128) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    (*(v1 + 4904))(*(v1 + 4536), *(v1 + 4680), *(v1 + 4440));
    v5 = swift_task_alloc();
    *(v1 + 5136) = v5;
    *v5 = v1;
    v5[1] = sub_1C7119D84;
    OUTLINED_FUNCTION_61_3(*(v1 + 4928));

    return sub_1C711FB34();
  }
}

uint64_t sub_1C7119D84()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 5144) = v6;
  *(v2 + 5152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7119ED4()
{
  v1 = *(v0 + 5152);
  if (*(v0 + 4152))
  {

    OUTLINED_FUNCTION_90();
    static PersonalTraitDiagnosticsGenerator.save(finalGlobalAndPersonalTraits:to:)();
    *(v0 + 5160) = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_126_5();
      v2 = *(v0 + 4872);

      sub_1C7129C34(v2);

      v3 = OUTLINED_FUNCTION_15_28();
      v6 = 4592;
      goto LABEL_10;
    }
  }

  sub_1C754F2EC();
  *(v0 + 5168) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_126_5();

    v7 = OUTLINED_FUNCTION_0_11();
    sub_1C7129C34(v7);

    v3 = OUTLINED_FUNCTION_15_28();
    v6 = 4400;
  }

  else
  {
    if (*(v0 + 4152))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C71618A4();
    }

    v8 = *(v0 + 4872);
    v9 = *(v0 + 3768);
    v11 = *(v0 + 5048);
    v12 = *(v0 + 5032);

    sub_1C7129C34(v8);

    *v9 = v12;
    v9[1] = v11;
    v3 = OUTLINED_FUNCTION_15_28();
    v6 = 4496;
  }

LABEL_10:

  return MEMORY[0x1EEE6DEB0](v3, v4, v5, v0 + v6);
}

uint64_t sub_1C711A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_54_13();
  v13 = *(v12 + 4056);

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_8_28(v13);
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_44();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C711A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_4_37();
  v17 = v16[591];
  v18 = v16[561];
  v19 = v16[555];
  OUTLINED_FUNCTION_68_11();
  v20 = v16[507];

  OUTLINED_FUNCTION_49_11();
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_323();
  v22(v23);
  (v22)(v17, v19);
  v24 = OUTLINED_FUNCTION_148_0();
  v22(v24);
  OUTLINED_FUNCTION_8_28(v20);
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_26_19();
  v26(v25);
  (v22)(a10, v19);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_4_37();
  v17 = v16[591];
  v18 = v16[561];
  v19 = v16[555];
  OUTLINED_FUNCTION_68_11();
  v20 = v16[507];

  OUTLINED_FUNCTION_49_11();
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_323();
  v22(v23);
  (v22)(v17, v19);
  v24 = OUTLINED_FUNCTION_148_0();
  v22(v24);
  OUTLINED_FUNCTION_8_28(v20);
  sub_1C754F1AC();
  v25 = OUTLINED_FUNCTION_26_19();
  v26(v25);
  (v22)(a10, v19);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711A634()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_71_5();
  v1 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2320);
}

uint64_t sub_1C711A7E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_71_5();
  v1 = OUTLINED_FUNCTION_15_28();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2832);
}

uint64_t sub_1C711AECC()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B0C4()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_7_31();
  v18 = v16[594];
  v19 = v16[585];
  v20 = v16[561];
  v21 = v16[555];
  OUTLINED_FUNCTION_68_11();

  OUTLINED_FUNCTION_49_11();
  v23 = *(v20 + 8);
  v23(v19, v21);
  v24 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_18_0(v24, v25);
  sub_1C754F1AC();
  (*(v18 + 8))(v17, a11);
  v23(a10, v21);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711B2DC()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_7_31();
  v18 = v16[594];
  v19 = v16[585];
  v20 = v16[561];
  v21 = v16[555];
  OUTLINED_FUNCTION_68_11();

  OUTLINED_FUNCTION_49_11();
  v23 = *(v20 + 8);
  v23(v19, v21);
  v24 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_18_0(v24, v25);
  sub_1C754F1AC();
  (*(v18 + 8))(v17, a11);
  v23(a10, v21);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C711B4F8()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_29();

  OUTLINED_FUNCTION_70_8();

  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEB0](v0, v1, v2, v3);
}

uint64_t sub_1C711B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v32 = *(v15 + 4816);
  v33 = *(v15 + 4824);
  OUTLINED_FUNCTION_54_13();
  OUTLINED_FUNCTION_109_7(v18);
  OUTLINED_FUNCTION_49_11();
  v19 = OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_18_0(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  (*(v14 + 8))(v17, v16);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v32 = *(v15 + 4816);
  v33 = *(v15 + 4824);
  OUTLINED_FUNCTION_54_13();
  OUTLINED_FUNCTION_109_7(v18);
  OUTLINED_FUNCTION_49_11();
  v19 = OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_18_0(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  (*(v14 + 8))(v17, v16);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_54_13();
  v13 = *(v12 + 4056);

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_8_28(v13);
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);

  OUTLINED_FUNCTION_3_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C711B988()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C711BA80;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1C72C079C;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 prewarmWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C711BA80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1C711BBA8;
  }

  else
  {
    v5 = sub_1C711BB84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C711BBA8()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C711BC0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C711BC2C, 0, 0);
}

uint64_t sub_1C711BC2C()
{
  OUTLINED_FUNCTION_49_0();
  static PersonalTraitGeneratorConfiguration.fromRemoteConfiguration(eventRecorder:)();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C711BCA0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v4 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v4, v5))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (!*(a1 + 16))
  {
    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v19 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v19, v20))
    {
LABEL_9:
      v21 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v21);
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v22, v23, v24, v25, v2, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

LABEL_10:

    return 0;
  }

  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136642819;
    v10 = MEMORY[0x1CCA5D090](v2, &type metadata for QueryToken);
    v12 = sub_1C6F765A4(v10, v11, &v26);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v13, v14, v15, v16, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v17 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v17);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return 1;
}

uint64_t sub_1C711BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *(v11 + 496) = a10;
  *(v11 + 504) = v10;
  *(v11 + 480) = v18;
  *(v11 + 488) = a9;
  *(v11 + 145) = v19;
  *(v11 + 464) = v16;
  *(v11 + 472) = v20;
  *(v11 + 448) = v21;
  *(v11 + 456) = v22;
  v23 = sub_1C754F38C();
  *(v11 + 512) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v11 + 520) = v24;
  *(v11 + 528) = OUTLINED_FUNCTION_77();
  memcpy((v11 + 152), v17, 0x50uLL);
  v25 = v15[1];
  *(v11 + 536) = *v15;
  *(v11 + 552) = v25;
  *(v11 + 568) = *v13;
  *(v11 + 146) = *(v13 + 8);
  *(v11 + 147) = *(v13 + 9);
  v26 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v26, v27, v28);
}

unint64_t sub_1C711BF48()
{
  v102 = v0;
  v1 = *(v0 + 145);
  v2 = OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_141_1(v2, v3);
  sub_1C754F1CC();
  if (v1 != 1)
  {
    v9 = sub_1C754FEEC();
    sub_1C75511BC();
    v10 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v10, v11))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  static StoryGenerationUtilities.queryTokenWhatsStrings(from:)();
  v5 = v4;
  *(v0 + 576) = v4;
  if (!*(v4 + 16))
  {

    v9 = sub_1C754FEEC();
    sub_1C755119C();
    v12 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v12, v13))
    {
LABEL_8:
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v19 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v19);
    }

LABEL_9:
    v20 = *(v0 + 560);
    v21 = *(v0 + 552);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v24 = *(v0 + 448);

    *v24 = v23;
    v24[1] = v22;
    v24[2] = v21;
    v24[3] = v20;
    v25 = OUTLINED_FUNCTION_121();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    goto LABEL_10;
  }

  v6 = *(v0 + 488);
  memcpy(__dst, *(v0 + 464), sizeof(__dst));
  sub_1C7027A20(v0 + 152, v0 + 232);
  sub_1C701104C();
  v8 = v7;
  *(v0 + 584) = v7;
  OUTLINED_FUNCTION_34_12(v6);
  sub_1C754F15C();
  if (v8)
  {
    *(v0 + 440) = *(v8 + 16);
    sub_1C7551D8C();
  }

  *(v0 + 592) = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  sub_1C75504FC();
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_11_3();
    v33 = swift_slowAlloc();
    *&__dst[0] = swift_slowAlloc();
    *v33 = 136643075;
    v34 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
    v36 = sub_1C6F765A4(v34, v35, __dst);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = OUTLINED_FUNCTION_154();
    v40 = sub_1C6F765A4(v37, v38, v39);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Starting scoping global traits asset expansion using what query(ies): %{sensitive}s with %s scoping assets", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v41 = *(v5 + 16);
  *(v0 + 600) = v41;
  if (v41)
  {
    *(v0 + 608) = objc_opt_self();
    *(v0 + 616) = objc_opt_self();
    result = sub_1C70DF0F4();
    *(v0 + 624) = result;
    *(v0 + 640) = MEMORY[0x1E69E7CC0];
    *(v0 + 632) = 0;
    v42 = *(v0 + 576);
    if (v42[2])
    {
      v43 = *(v0 + 608);
      *(v0 + 648) = v42[4];
      *(v0 + 656) = v42[5];
      *(v0 + 376) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
      *(v0 + 384) = &off_1F46ACFD0;
      sub_1C75504FC();
      v44 = [v43 currentUnifiedEmbeddingVersion];
      v45 = v44;
      if (v44)
      {
        v46 = [v44 integerValue];
      }

      else
      {
        v46 = 0;
      }

      v52 = *(v0 + 616);
      v53 = *(v0 + 584);
      v54 = *(v0 + 504);
      *(v0 + 352) = 0;
      *(v0 + 360) = v46;
      *(v0 + 368) = v45 == 0;
      v55 = [v52 globalTraitsScopingEmbeddingSearchRetrievalLimit];
      sub_1C6FB5E28(v0 + 352, v0 + 32);
      *(v0 + 16) = 2;
      *(v0 + 24) = 1;
      *(v0 + 88) = 1;
      *(v0 + 96) = v53;
      OUTLINED_FUNCTION_112_3(1, xmmword_1C756A560);
      *(v0 + 72) = v55;
      *(v0 + 80) = 0;
      v56 = v54[29];
      v57 = v54[30];
      __swift_project_boxed_opaque_existential_1(v54 + 26, v56);
      sub_1C75504FC();
      sub_1C75504FC();
      v58 = sub_1C7073450();
      *(v0 + 664) = v58;
      v96 = (*(v57 + 16) + **(v57 + 16));
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 672) = v59;
      *v59 = v60;
      v61 = OUTLINED_FUNCTION_59_8(v59);

      return v96(v61, v58, v0 + 16, v0 + 312, v56, v57);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v47 = *(v0 + 147);
  v48 = *(v0 + 146);
  v49 = *(v0 + 568);
  v93 = *(v0 + 552);
  v95 = *(v0 + 536);

  v92 = *(MEMORY[0x1E69E7CC0] + 16);
  *&__dst[0] = v49;
  BYTE8(__dst[0]) = v48;
  BYTE9(__dst[0]) = v47;
  v50 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(MEMORY[0x1E69E7CC0], __dst, (v0 + 312));
  StoryAsset.Manager.collection(with:)(v50, __dst);
  v100 = __dst[0];
  v101 = __dst[1];
  __dst[0] = v95;
  __dst[1] = v93;
  StoryAsset.Collection.union(with:)(__dst, v99);
  v51 = *(v0 + 584);
  v94 = v50;
  v62 = *(v0 + 480);
  v63 = v99[1];
  v97 = v99[0];
  v65 = v99[2];
  v64 = v99[3];
  if (!v51)
  {
    v51 = MEMORY[0x1E69E7CD0];
  }

  v89 = *(v0 + 552);
  v91 = *(v0 + 536);

  v66 = sub_1C71CD85C(v51);
  v67 = *(v66 + 16);
  __dst[0] = v91;
  __dst[1] = v89;
  v68 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v62, v0 + 312);
  v90 = v67;
  v69 = *(v0 + 480);
  *&__dst[0] = v97;
  *(&__dst[0] + 1) = v63;
  *&__dst[1] = v65;
  *(&__dst[1] + 1) = v64;
  v70 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v69, v0 + 312);
  sub_1C75504FC();
  sub_1C75504FC();
  v71 = sub_1C754FEEC();
  sub_1C75511BC();
  v72 = OUTLINED_FUNCTION_72();
  v88 = v70;
  if (os_log_type_enabled(v72, v73))
  {
    OUTLINED_FUNCTION_98();
    v74 = swift_slowAlloc();
    v75 = v70;
    v76 = v74;
    *v74 = 134218496;
    *(v74 + 4) = *(v75 + 16);

    *(v76 + 12) = 2048;
    *(v76 + 14) = v67;
    *(v76 + 22) = 2048;
    v77 = *(v68 + 16);

    *(v76 + 24) = v77;

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v78, v79, v80, v81, v76, 0x20u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v82 = v97;

  v83 = *(v0 + 496);
  if (v83)
  {

    v84 = sub_1C7164AD8(v66, 0xD000000000000024, 0x80000001C759F8D0, 0, 0);

    sub_1C75504FC();
    sub_1C75504FC();
    if (sub_1C71656D8())
    {
      v85 = (v83 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock((v83 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
      sub_1C711D5C0(&v85[2], v90, v92, v94, v88);
      os_unfair_lock_unlock(v85);
    }

    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1(v0 + 312);
    v82 = v97;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  }

  v86 = *(v0 + 488);
  v87 = *(v0 + 448);
  *v87 = v82;
  v87[1] = v63;
  v87[2] = v65;
  v87[3] = v64;
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  OUTLINED_FUNCTION_138();
LABEL_10:
  sub_1C754F1AC();
  v27 = OUTLINED_FUNCTION_115_6();
  v28(v27);

  OUTLINED_FUNCTION_43();

  return v29();
}

uint64_t sub_1C711CA68()
{
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 680) = v0;

  v5 = *(v2 + 664);
  if (v0)
  {

    v6 = sub_1C711D4F0;
  }

  else
  {

    v6 = sub_1C711CBC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C711CBC8()
{
  v99 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  *(v0 + 416) = *(v0 + 392);
  *(v0 + 424) = v1;
  *(v0 + 432) = v2;
  v3 = FreeformStoryFetching.Result.uuids.getter();

  swift_unknownObjectRelease();
  v4 = sub_1C75504FC();
  sub_1C706D154(v4);
  OUTLINED_FUNCTION_99_1();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 640);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB20F8();
    v6 = v82;
  }

  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_15(v7);
    OUTLINED_FUNCTION_177();
    sub_1C6FB20F8();
    v6 = v83;
  }

  *(v6 + 16) = v8 + 1;
  *(v6 + 8 * v8 + 32) = v0 + 416;
  sub_1C75504FC();
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 656);
  if (v11)
  {
    v13 = *(v0 + 648);
    OUTLINED_FUNCTION_11_3();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v15 = swift_slowAlloc();
    *&v97 = v15;
    *v14 = 134218243;
    v16 = *(v3 + 16);

    *(v14 + 4) = v16;

    OUTLINED_FUNCTION_146_2();
    v17 = sub_1C6F765A4(v13, v12, &v97);

    *(v14 + 14) = v17;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v23 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v23);
  }

  else
  {
    OUTLINED_FUNCTION_160_2();
  }

  sub_1C70DF138(v0 + 16);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  v25 = *(v0 + 632) + 1;
  if (v25 == *(v0 + 600))
  {
    v26 = *(v0 + 680);
    v27 = *(v0 + 147);
    v28 = *(v0 + 146);
    v29 = *(v0 + 568);
    v90 = *(v0 + 552);
    v91 = *(v0 + 536);

    v88 = *(v6 + 16);
    *&v97 = v29;
    BYTE8(v97) = v28;
    BYTE9(v97) = v27;
    v30 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(v6, &v97, (v0 + 312));
    StoryAsset.Manager.collection(with:)(v30, &v97);
    v95 = v97;
    v96 = v98;
    v97 = v91;
    v98 = v90;
    StoryAsset.Collection.union(with:)(&v97, v94);
    v31 = *(v0 + 584);
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 312);

      OUTLINED_FUNCTION_38_6(*(v0 + 488));
      v45 = OUTLINED_FUNCTION_457();
      v46(v45);

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v92 = v30;
      v38 = *(v0 + 480);
      v39 = v94[0];
      v40 = v94[1];
      v41 = v94[2];
      v42 = v94[3];
      if (!v31)
      {
        v31 = MEMORY[0x1E69E7CD0];
      }

      v84 = *(v0 + 552);
      v86 = *(v0 + 536);

      v43 = sub_1C71CD85C(v31);
      v44 = *(v43 + 16);
      v97 = v86;
      v98 = v84;
      v58 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v97, v38, v0 + 312);
      v87 = v44;
      v59 = *(v0 + 480);
      *&v97 = v39;
      *(&v97 + 1) = v40;
      *&v98 = v41;
      *(&v98 + 1) = v42;
      v60 = v41;
      v61 = v42;
      v62 = v43;
      v85 = v40;
      v89 = v61;
      v63 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v97, v59, v0 + 312);
      sub_1C75504FC();
      sub_1C75504FC();
      v64 = sub_1C754FEEC();
      sub_1C75511BC();
      v65 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_98();
        v67 = swift_slowAlloc();
        *v67 = 134218496;
        *(v67 + 4) = *(v63 + 16);
        v68 = v63;

        *(v67 + 12) = 2048;
        *(v67 + 14) = v87;
        *(v67 + 22) = 2048;
        v69 = v60;
        v70 = *(v58 + 16);

        *(v67 + 24) = v70;
        v60 = v69;

        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v71, v72, v73, v74, v67, 0x20u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
        OUTLINED_FUNCTION_160_2();
        v68 = v63;
      }

      v75 = *(v0 + 496);
      if (v75)
      {

        v76 = sub_1C7164AD8(v62, 0xD000000000000024, 0x80000001C759F8D0, 0, 0);

        sub_1C75504FC();
        sub_1C75504FC();
        if (sub_1C71656D8())
        {
          v77 = (v75 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
          os_unfair_lock_lock((v75 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
          sub_1C711D5C0(&v77[2], v87, v88, v92, v68);
          os_unfair_lock_unlock(v77);
        }

        OUTLINED_FUNCTION_160_2();
        swift_bridgeObjectRelease_n();
        __swift_destroy_boxed_opaque_existential_1(v0 + 312);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 312);
      }

      v78 = *(v0 + 488);
      v79 = *(v0 + 448);
      *v79 = v39;
      v79[1] = v85;
      v79[2] = v60;
      v79[3] = v89;
      __swift_project_boxed_opaque_existential_1(v78, v78[3]);
      OUTLINED_FUNCTION_138();
      sub_1C754F1AC();
      v80 = OUTLINED_FUNCTION_115_6();
      v81(v80);

      OUTLINED_FUNCTION_43();
    }

    return v47();
  }

  else
  {
    *(v0 + 640) = v6;
    *(v0 + 632) = v25;
    v32 = *(v0 + 576);
    if (v25 >= *(v32 + 16))
    {
      __break(1u);
    }

    else
    {
      v33 = *(v0 + 608);
      v34 = v32 + 16 * v25;
      *(v0 + 648) = *(v34 + 32);
      *(v0 + 656) = *(v34 + 40);
      *(v0 + 376) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
      *(v0 + 384) = &off_1F46ACFD0;
      sub_1C75504FC();
      v35 = [v33 currentUnifiedEmbeddingVersion];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 integerValue];
      }

      else
      {
        v37 = 0;
      }

      v48 = *(v0 + 616);
      v49 = *(v0 + 584);
      v50 = *(v0 + 504);
      *(v0 + 352) = 0;
      *(v0 + 360) = v37;
      *(v0 + 368) = v36 == 0;
      v51 = [v48 globalTraitsScopingEmbeddingSearchRetrievalLimit];
      sub_1C6FB5E28(v0 + 352, v0 + 32);
      *(v0 + 16) = 2;
      *(v0 + 24) = 1;
      *(v0 + 88) = 1;
      *(v0 + 96) = v49;
      OUTLINED_FUNCTION_112_3(1, xmmword_1C756A560);
      *(v0 + 72) = v51;
      *(v0 + 80) = 0;
      v52 = v50[29];
      v53 = v50[30];
      __swift_project_boxed_opaque_existential_1(v50 + 26, v52);
      sub_1C75504FC();
      sub_1C75504FC();
      v54 = sub_1C7073450();
      *(v0 + 664) = v54;
      v93 = (*(v53 + 16) + **(v53 + 16));
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 672) = v55;
      *v55 = v56;
      v57 = OUTLINED_FUNCTION_59_8();

      return v93(v57, v54, v0 + 16, v0 + 312, v52, v53);
    }
  }

  return result;
}

uint64_t sub_1C711D4F0()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C70DF138(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  OUTLINED_FUNCTION_34_12(*(v0 + 488));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

void sub_1C711D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6FB0C38();
  v10 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v11 = *(a1 + 48);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 32 * v10;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = a2;
  *(v12 + 56) = 4;
  *(a1 + 48) = v11;
  sub_1C6FB0C38();
  v13 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v14 = *(a1 + 48);
  *(v14 + 16) = v13 + 1;
  v15 = v14 + 32 * v13;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 32) = a3;
  *(v15 + 56) = 5;
  *(a1 + 48) = v14;
  v16 = *(a4 + 16);
  sub_1C6FB0C38();
  v17 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v18 = *(a1 + 48);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 32 * v17;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  *(v19 + 32) = v16;
  *(v19 + 56) = 6;
  *(a1 + 48) = v18;
  v20 = *(a5 + 16);
  sub_1C6FB0C38();
  v21 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v22 = *(a1 + 48);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 32 * v21;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 32) = v20;
  *(v23 + 56) = 7;
  *(a1 + 48) = v22;
}

uint64_t sub_1C711D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *(v11 + 912) = v10;
  *(v11 + 904) = a10;
  *(v11 + 896) = a9;
  *(v11 + 888) = v18;
  *(v11 + 880) = v19;
  *(v11 + 872) = v20;
  *(v11 + 864) = v16;
  *(v11 + 856) = v21;
  *(v11 + 848) = v22;
  v23 = sub_1C754F2FC();
  *(v11 + 920) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v11 + 928) = v24;
  *(v11 + 936) = OUTLINED_FUNCTION_81_0();
  *(v11 + 944) = swift_task_alloc();
  *(v11 + 952) = swift_task_alloc();
  *(v11 + 960) = swift_task_alloc();
  *(v11 + 968) = swift_task_alloc();
  *(v11 + 976) = swift_task_alloc();
  v25 = sub_1C754F38C();
  *(v11 + 984) = v25;
  OUTLINED_FUNCTION_18(v25);
  *(v11 + 992) = v26;
  *(v11 + 1000) = OUTLINED_FUNCTION_77();
  memcpy((v11 + 304), v17, 0x50uLL);
  v27 = v15[1];
  *(v11 + 1008) = *v15;
  *(v11 + 1024) = v27;
  v28 = v13[1];
  *(v11 + 1040) = *v13;
  *(v11 + 1056) = v28;
  v29 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v29, v30, v31);
}

uint64_t sub_1C711D88C()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v1)
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 920);
    v7 = *(v0 + 896);
    OUTLINED_FUNCTION_18_0(*(v0 + 888), *(v2 + 24));
    sub_1C754F1AC();
    v8 = OUTLINED_FUNCTION_15_1();
    v9(v8);
    (*(v5 + 8))(v7, v6);
    OUTLINED_FUNCTION_50_12();

    OUTLINED_FUNCTION_43();

    return v20();
  }

  else
  {
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1064);
    v31 = *(v0 + 1040);
    v32 = *(v0 + 1048);
    v10 = *(v0 + 912);
    v11 = *(v0 + 888);
    v12 = *(v0 + 872);
    sub_1C754F2BC();
    sub_1C754F2BC();
    sub_1C754F2BC();
    OUTLINED_FUNCTION_34_12(v11);
    sub_1C754F15C();
    memcpy((v0 + 16), (v10 + 16), 0x59uLL);
    memcpy((v0 + 112), (v10 + 16), 0x59uLL);
    v13 = *(v10 + 184);
    v14 = *(v10 + 192);
    v15 = *(v10 + 200);
    *(v0 + 808) = v13;
    *(v0 + 816) = v14;
    *(v0 + 824) = v15;
    sub_1C6FB5E28(v10 + 208, v0 + 664);
    sub_1C6FB5E28(v10 + 248, v0 + 704);
    v16 = *(v10 + 304);
    type metadata accessor for GlobalTraitGenerator(0);
    swift_allocObject();
    sub_1C7117834(v0 + 16, v0 + 208);
    v17 = v13;

    *(v0 + 1072) = GlobalTraitGenerator.init(configuration:storyPhotoLibraryContext:storyAssetsFetcher:safetyController:storyAssetManager:)((v0 + 112), v0 + 808, v0 + 664, v0 + 704, v16);
    v18 = swift_task_alloc();
    v18[2] = v10;
    v18[3] = v12;
    v18[4] = v0 + 624;
    v19 = sub_1C727381C(sub_1C712A750, v18, v31, v32, v33, v34);
    *(v0 + 1080) = v19;
    v22 = v19;
    v23 = *(v0 + 928);
    v24 = *(v0 + 864);

    memcpy((v0 + 384), v24, 0x50uLL);
    *(v0 + 1088) = *(v23 + 32);
    *(v0 + 1096) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25 = OUTLINED_FUNCTION_0_11();
    v26(v25);
    v27 = swift_task_alloc();
    *(v0 + 1104) = v27;
    *v27 = v0;
    v27[1] = sub_1C711DD3C;
    v28 = *(v0 + 952);
    v29 = *(v0 + 904);
    v30 = *(v0 + 888);

    return sub_1C7125154(v22, (v0 + 384), v30, v28, v29);
  }
}

uint64_t sub_1C711DD3C()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[139] = v7;
  v3[140] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C711E594, 0, 0);
  }

  else
  {
    v8 = v3[136];
    v9 = v3[121];
    v10 = v3[118];
    v11 = v3[115];

    memcpy(v3 + 58, v3 + 38, 0x50uLL);
    v8(v10, v9, v11);
    v12 = swift_task_alloc();
    v3[141] = v12;
    *v12 = v5;
    v12[1] = sub_1C711DF28;
    OUTLINED_FUNCTION_61_3(v3[106]);

    return GlobalTraitGenerator.generatePromptBindings(about:extendedTokens:assetCaptions:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C711DF28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1136) = v5;
  *(v3 + 1144) = v0;

  if (v0)
  {
    v6 = sub_1C711E6C4;
  }

  else
  {
    v6 = sub_1C711E040;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C711E040()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 1088);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 832) = MEMORY[0x1E69E7CC0];
  *(v0 + 840) = v2;
  memcpy((v0 + 544), (v0 + 304), 0x50uLL);
  v3 = *(v0 + 1024);
  *(v0 + 744) = *(v0 + 1008);
  *(v0 + 760) = v3;
  *(v0 + 776) = *(v0 + 1040);
  *(v0 + 792) = *(v0 + 1056);
  v4 = OUTLINED_FUNCTION_154();
  v1(v4);

  v5 = swift_task_alloc();
  *(v0 + 1152) = v5;
  *v5 = v0;
  v5[1] = sub_1C711E1B0;
  OUTLINED_FUNCTION_61_3(*(v0 + 1136));
  OUTLINED_FUNCTION_17_1();

  __asm { BR              X8 }
}

uint64_t sub_1C711E1B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1160) = v0;

  if (v0)
  {
    v7 = sub_1C711E7D8;
  }

  else
  {
    v7 = sub_1C711E2BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C711E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = v16[145];
  if (v16[113])
  {
    v18 = v16[105];

    v19 = OUTLINED_FUNCTION_457();
    static GlobalTraitDiagnosticsGenerator.save(globalTraits:rejectedGlobalTraits:in:)(v19, v20);
    if (v17)
    {

      v21 = v17;
      v22 = sub_1C754FEEC();
      v23 = sub_1C755119C();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_104_5();
        v24 = swift_slowAlloc();
        *v18 = 138412290;
        v25 = v17;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v26;
        *v24 = v26;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_1C6FB5FC8(v24, &qword_1EC215190);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v32 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v32);
      }

      else
      {
      }

      v17 = 0;
    }

    else
    {
    }
  }

  sub_1C754F2EC();
  OUTLINED_FUNCTION_103_5();
  if (v17)
  {

    __swift_destroy_boxed_opaque_existential_1((v16 + 78));
    OUTLINED_FUNCTION_22_26();
    v33 = OUTLINED_FUNCTION_457();
    v34(v33);
    OUTLINED_FUNCTION_50_12();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_129();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v54 = v16[119];
    v55 = v16[118];
    v56 = v16[117];

    v57 = v16[104];

    __swift_destroy_boxed_opaque_existential_1((v16 + 78));
    OUTLINED_FUNCTION_22_26();
    v44 = OUTLINED_FUNCTION_457();
    v45(v44);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_129();

    return v48(v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, a13, a14, a15, a16);
  }
}

uint64_t sub_1C711E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  v17 = v15[121];
  v18 = v15[116];
  v19 = v15[115];
  v32 = v15[112];
  v33 = v15[123];
  v20 = v15[111];

  __swift_destroy_boxed_opaque_existential_1((v15 + 78));
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_15_1();
  v21(v22);
  (v21)(v17, v19);
  OUTLINED_FUNCTION_0_22(v20, v20[3]);
  sub_1C754F1AC();
  (*(v16 + 8))(v14, v33);
  (v21)(v32, v19);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  v17 = v15[116];
  v18 = v15[115];
  v32 = v15[112];
  v33 = v15[123];

  __swift_destroy_boxed_opaque_existential_1((v15 + 78));
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_57_3();
  v19(v20);
  v21 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v21, v22);
  sub_1C754F1AC();
  (*(v16 + 8))(v14, v33);
  (v19)(v32, v18);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C711E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 888);

  __swift_destroy_boxed_opaque_existential_1(v12 + 624);
  OUTLINED_FUNCTION_24_6(v13);
  OUTLINED_FUNCTION_101_5();
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_117_0();
  v17(v16);
  OUTLINED_FUNCTION_45_13();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C711E8E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v10, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C711E948()
{
  OUTLINED_FUNCTION_42();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AC8);
  OUTLINED_FUNCTION_76(v5);
  v0[8] = OUTLINED_FUNCTION_77();
  v6 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_81_0();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AD0);
  v0[13] = v8;
  OUTLINED_FUNCTION_76(v8);
  v0[14] = OUTLINED_FUNCTION_77();
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C711EA60()
{
  OUTLINED_FUNCTION_115_0();
  v49 = v0;
  sub_1C712A774(v0[4], v0[14], &qword_1EC217AD0);
  OUTLINED_FUNCTION_66_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v0[2] = *v2;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    type metadata accessor for GlobalTraitGenerator.Error(0);
    v5 = swift_dynamicCast();
    v6 = v0[8];
    if (v5)
    {
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
      OUTLINED_FUNCTION_140_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = v0[12];
        v13 = v0[9];
        v12 = v0[10];
        v14 = v0[6];
        sub_1C7129CC4(v0[8], v12, type metadata accessor for GlobalTrait);
        OUTLINED_FUNCTION_2_47();
        v15 = OUTLINED_FUNCTION_117_0();
        sub_1C712A7D0(v15, v16, v17);
        sub_1C6FB0848();
        v18 = *(*v14 + 16);
        sub_1C6FB10D4();
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v12, v19);
        v20 = *v14;
        *(v20 + 16) = v18 + 1;
        sub_1C7129CC4(v11, v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, type metadata accessor for GlobalTrait);
      }

      else
      {
        sub_1C712A82C(v0[8], type metadata accessor for GlobalTraitGenerator.Error);
      }
    }

    else
    {
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
      sub_1C6FB5FC8(v6, &qword_1EC217AC8);
    }

    v35 = v3;
    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_13_3();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136642819;
      v0[3] = v3;
      v40 = v3;
      v41 = sub_1C75506EC();
      v43 = sub_1C6F765A4(v41, v42, &v48);

      *(v38 + 4) = v43;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v44, v45, "Generating global trait failed with error '%{sensitive}s'");
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  else
  {
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[9];
    v24 = v0[5];
    sub_1C7129CC4(v2, v21, type metadata accessor for GlobalTrait);
    OUTLINED_FUNCTION_2_47();
    v25 = OUTLINED_FUNCTION_57_0();
    sub_1C712A7D0(v25, v26, v27);
    sub_1C6FB0848();
    v28 = *(*v24 + 16);
    sub_1C6FB10D4();
    OUTLINED_FUNCTION_1_51();
    sub_1C712A82C(v21, v29);
    v30 = *v24;
    *(v30 + 16) = v28 + 1;
    sub_1C7129CC4(v22, v30 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v28, type metadata accessor for GlobalTrait);
  }

  OUTLINED_FUNCTION_43();

  return v46();
}

void sub_1C711EE04(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v10 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  static StoryGenerationUtilities.querySortOrder(in:)();
  v39 = LOBYTE(__dst[0]);
  v16 = a2[1];
  v44[0] = *a2;
  v44[1] = v16;
  sub_1C754F41C();
  __dst[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
  __dst[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(__dst);
  MEMORY[0x1CCA5B6D0]();
  v17 = v46;
  v18 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v44, a3, __dst);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v17)
  {
    return;
  }

  if (v39)
  {
    v19 = sub_1C7551DBC();

    if ((v19 & 1) == 0)
    {
      v36 = *(v18 + 16);

      v20 = a1;
      if (v36)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v20 = a1;
LABEL_7:
  v21 = 0;
  v38 = v20 + 32;
  v40 = *(v20 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  while (v21 != v40)
  {
    if (v21 >= v40)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v22 = (v38 + 120 * v21);
    memcpy(__dst, v22, 0x78uLL);
    v23 = __OFADD__(v21, 1);
    v24 = v21 + 1;
    if (v23)
    {
      goto LABEL_27;
    }

    v46 = v24;
    memcpy(v44, v22, 0x78uLL);
    sub_1C6FCA6E4(__dst, &v43);
    static StoryGenerationUtilities.shouldUseHighPrecisionEmbeddingSearchThreshold(_:)();
    v42 = v25;
    v26 = 0;
    v27 = __dst[10];
    v28 = *(__dst[10] + 16);
    do
    {
      if (v28 == v26)
      {
        goto LABEL_16;
      }

      if (v26 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_191();
      sub_1C712A7D0(v27 + v29 + *(v12 + 72) * v26++, v15, type metadata accessor for QueryTokenSuggestion);
      swift_storeEnumTagMultiPayload();
      v30 = static QueryTokenCategoryType.== infix(_:_:)(v15, v8);
      sub_1C712A82C(v8, type metadata accessor for QueryTokenCategoryType);
      sub_1C712A82C(v15, type metadata accessor for QueryTokenSuggestion);
    }

    while ((v30 & 1) == 0);
    if (v42)
    {
LABEL_16:
      sub_1C6FDD548(__dst);
      v21 = v46;
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB3514();
      v37 = v34;
    }

    v31 = v37;
    v33 = *(v37 + 16);
    v32 = *(v37 + 24);
    if (v33 >= v32 >> 1)
    {
      OUTLINED_FUNCTION_15(v32);
      sub_1C6FB3514();
      v31 = v35;
    }

    *(v31 + 16) = v33 + 1;
    v37 = v31;
    memcpy((v31 + 120 * v33 + 32), __dst, 0x78uLL);
    v21 = v46;
  }
}

uint64_t sub_1C711F208(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_2_47();
      v9 = OUTLINED_FUNCTION_0_11();
      sub_1C712A7D0(v9, v10, v11);
      v12 = sub_1C75504FC();
      sub_1C73978C4(v12);
      OUTLINED_FUNCTION_1_51();
      sub_1C712A82C(v5, v13);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  sub_1C703FD7C();
  v15 = v14;

  return v15;
}

uint64_t sub_1C711F330()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[74] = v0;
  v1[73] = v4;
  v1[72] = v5;
  v1[71] = v6;
  v1[70] = v7;
  v1[69] = v8;
  v9 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_18(v9);
  v1[75] = v10;
  v1[76] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F38C();
  v1[77] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[78] = v12;
  v1[79] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v3, 0xD8uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C711F444()
{
  v15 = v0;
  v1 = *(v0 + 584);
  OUTLINED_FUNCTION_141_1(*(v0 + 568), *(*(v0 + 568) + 24));
  sub_1C754F1CC();
  if (v1)
  {
    __dst[0] = 8;
    StoryGenerationDiagnosticContext.generationStage.setter(__dst);
  }

  v2 = *(v0 + 592);
  v3 = *(v0 + 552);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = *(v2 + 192);
  v6 = *(v2 + 200);
  v12 = *(v2 + 184);
  v4 = v12;
  v13 = v5;
  v14 = v6;
  type metadata accessor for PersonalTraitGenerator();
  swift_allocObject();
  *(v0 + 640) = PersonalTraitGenerator.init(configuration:storyPhotoLibraryContext:)(__dst, &v12);
  memcpy((v0 + 448), v3, 0x50uLL);
  sub_1C70592B4(v0 + 16, v0 + 232);
  v7 = v4;

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 648) = v8;
  *v8 = v9;
  v8[1] = sub_1C711F5D4;

  return PersonalTraitGenerator.generate(from:assetUUIDs:eventRecorder:progressReporter:)();
}

uint64_t sub_1C711F5D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 656) = v0;

  if (v0)
  {
    v7 = sub_1C711FA84;
  }

  else
  {
    v7 = sub_1C711F6D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C711F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[66];
  v30 = v26[67];
  if (v26[73])
  {
    v31 = v26[82];
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C7161818(v32, v29, v30);
    a13 = v29;
    sub_1C75504FC();
    sub_1C71274B0(&a13);
    if (v31)
    {

      OUTLINED_FUNCTION_94_1();
    }

    v47 = *(a13 + 16);
    if (v47)
    {
      a11 = v30;
      a12 = v29;
      v48 = v26[76];
      v49 = v26[75];
      a10 = a13;
      v50 = a13 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v51 = *(v49 + 72);
      do
      {
        v52 = v26[76];
        OUTLINED_FUNCTION_9_32();
        sub_1C712A7D0(v50, v52, v53);
        a13 = 0;
        a14 = 0xE000000000000000;
        sub_1C755180C();

        a13 = 0xD000000000000015;
        a14 = 0x80000001C759F870;
        MEMORY[0x1CCA5CD70](*v52, *(v48 + 8));
        MEMORY[0x1CCA5CD70](2629671, 0xE300000000000000);
        v26[68] = *(*(v48 + 16) + 16);
        v54 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v54);

        MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
        sub_1C7161CDC(a13, a14);

        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v52, v55);
        v50 += v51;
        --v47;
      }

      while (v47);

      v30 = a11;
    }

    else
    {
    }

    a13 = v29;
    a14 = v30;
    static PersonalTraitDiagnosticsGenerator.save(selectionResult:to:)();
  }

  v35 = v26[79];
  v36 = v26[78];
  v37 = v26[77];
  v38 = v26[71];

  OUTLINED_FUNCTION_24_6(v38);
  sub_1C754F1AC();
  (*(v36 + 8))(v35, v37);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_94_1();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C711FA84()
{
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_22_26();
  v0 = OUTLINED_FUNCTION_57_0();
  v1(v0);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C711FB34()
{
  OUTLINED_FUNCTION_42();
  v1[57] = v2;
  v1[58] = v0;
  v1[55] = v3;
  v1[56] = v4;
  v1[53] = v5;
  v1[54] = v6;
  v7 = sub_1C754F2FC();
  v1[59] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[60] = v8;
  v1[61] = OUTLINED_FUNCTION_81_0();
  v1[62] = swift_task_alloc();
  v9 = type metadata accessor for PersonalTrait();
  v1[63] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[64] = v10;
  v1[65] = OUTLINED_FUNCTION_81_0();
  v1[66] = swift_task_alloc();
  v11 = type metadata accessor for GlobalTrait();
  v1[67] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[68] = v12;
  v1[69] = OUTLINED_FUNCTION_81_0();
  v1[70] = swift_task_alloc();
  v13 = sub_1C754F38C();
  v1[71] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[72] = v14;
  v1[73] = OUTLINED_FUNCTION_77();
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C711FCE8()
{
  v203 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v2)
  {
    v5 = *(v0 + 480);
    v196 = *(v0 + 472);
    v6 = *(v0 + 456);
    OUTLINED_FUNCTION_18_0(*(v0 + 448), *(v1 + 24));
    sub_1C754F1AC();
    v7 = OUTLINED_FUNCTION_15_1();
    v8(v7);
    (*(v5 + 8))(v6, v196);
    OUTLINED_FUNCTION_108_5();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_1();

    __asm { BRAA            X1, X16 }
  }

  sub_1C754F2DC();
  *(v0 + 592) = OBJC_IVAR____TtC18PhotosIntelligence14TraitGenerator_logger;
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  sub_1C75511BC();
  v12 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v12, v13))
  {
    v186 = v11;
    v14 = *(v0 + 424);
    v15 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *v15 = 134218755;
    v16 = *(v14 + 16);
    *(v15 + 4) = v16;

    *(v15 + 12) = 2085;
    v17 = MEMORY[0x1E69E7CC0];
    v190 = v15;
    if (v16)
    {
      v18 = *(v0 + 560);
      v19 = *(v0 + 544);
      v197 = *(v0 + 536);
      v20 = *(v0 + 424);
      v200 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v17 = v200;
      OUTLINED_FUNCTION_191();
      v22 = v20 + v21;
      v192 = *(v19 + 72);
      v195 = "PersonalTraitGeneration";
      do
      {
        v23 = *(v0 + 560);
        OUTLINED_FUNCTION_2_47();
        sub_1C712A7D0(v22, v23, v24);
        OUTLINED_FUNCTION_153_0();
        v25 = v202;
        *(v0 + 352) = v201;
        *(v0 + 360) = v25;
        OUTLINED_FUNCTION_35_10();
        MEMORY[0x1CCA5CD70](*v23, v18[1]);
        v26 = OUTLINED_FUNCTION_132_0();
        MEMORY[0x1CCA5CD70](v26);
        *(v0 + 400) = *(*(v23 + *(v197 + 32)) + 16);
        v27 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v27);

        MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C759F720);
        MEMORY[0x1CCA5CD70](v18[2], v18[3]);
        OUTLINED_FUNCTION_79_7();
        *(v0 + 641) = *(v23 + *(v197 + 28));
        sub_1C75519EC();
        v28 = *(v0 + 352);
        v29 = *(v0 + 360);
        OUTLINED_FUNCTION_1_51();
        sub_1C712A82C(v23, v30);
        v32 = *(v200 + 16);
        v31 = *(v200 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_15(v31);
          sub_1C6F7ED9C();
        }

        *(v200 + 16) = v32 + 1;
        v33 = v200 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v29;
        v22 += v192;
        --v16;
      }

      while (v16);
      v15 = v190;
    }

    v34 = *(v0 + 432);
    *(v0 + 408) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v35 = sub_1C703328C();
    OUTLINED_FUNCTION_158_2();
    OUTLINED_FUNCTION_98_6();

    v36 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v36, v37, v38);
    OUTLINED_FUNCTION_24_2();

    *(v15 + 14) = v0 + 408;
    *(v15 + 22) = 2048;
    v39 = *(v34 + 16);

    *(v15 + 24) = v39;

    *(v15 + 32) = 2085;
    v40 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v195 = v35;
      v41 = *(v0 + 512);
      v42 = *(v0 + 432);
      v201 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      sub_1C6F7ED9C();
      v40 = v201;
      OUTLINED_FUNCTION_191();
      v44 = v42 + v43;
      v45 = *(v41 + 72);
      do
      {
        v46 = *(v0 + 528);
        OUTLINED_FUNCTION_9_32();
        sub_1C712A7D0(v44, v46, v47);
        PersonalTrait.description.getter();
        OUTLINED_FUNCTION_144();
        OUTLINED_FUNCTION_5_38();
        sub_1C712A82C(v46, v48);
        v201 = v40;
        v49 = *(v40 + 16);
        if (v49 >= *(v40 + 24) >> 1)
        {
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C();
          v40 = v201;
        }

        *(v40 + 16) = v49 + 1;
        v50 = v40 + 16 * v49;
        *(v50 + 32) = v35;
        *(v50 + 40) = 2085;
        v44 += v45;
        --v39;
      }

      while (v39);
      v15 = v190;
    }

    *(v0 + 416) = v40;
    OUTLINED_FUNCTION_158_2();
    OUTLINED_FUNCTION_98_6();

    v51 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v51, v52, v53);
    OUTLINED_FUNCTION_24_2();

    *(v15 + 34) = v0 + 416;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v54, v55, v56, v57, v58, 0x2Au);
    v11 = v184;
    swift_arrayDestroy();
    v59 = OUTLINED_FUNCTION_27_20();
    MEMORY[0x1CCA5F8E0](v59);
    v60 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v60);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1C71BABB8();
  OUTLINED_FUNCTION_98_5();
  sub_1C71BAD20();
  v201 = v11;
  sub_1C6FD339C();
  v61 = v11;
  *(v0 + 600) = v11;
  v62 = objc_opt_self();
  *(v0 + 608) = v62;
  if ([v62 enableTraitDeduping])
  {
    sub_1C754F2BC();
    v63 = OUTLINED_FUNCTION_154();
    v64(v63);
    v65 = swift_task_alloc();
    *(v0 + 616) = v65;
    *v65 = v0;
    v65[1] = sub_1C7120E84;
    OUTLINED_FUNCTION_128_1();

    return sub_1C7121DE4(v66, v67, v68, v69);
  }

  v72 = sub_1C754FEEC();
  sub_1C75511BC();
  v73 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v73, v74))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v75, v76, v77, v78, v79, 2u);
    v80 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v80);
  }

  v81 = *(v0 + 608);
  sub_1C75504FC();
  v82 = &unk_1C756D000;
  if (![v81 enableFinalTraitLimit])
  {

    goto LABEL_42;
  }

  v83 = *(v0 + 464);
  v84 = v11[2];

  if (*(v83 + 160) >= v84)
  {
LABEL_42:

    v107 = sub_1C754FEEC();
    sub_1C75511BC();
    v108 = OUTLINED_FUNCTION_72();
    v110 = os_log_type_enabled(v108, v109);
    v111 = *(v0 + 464);
    if (v110)
    {
      OUTLINED_FUNCTION_13_3();
      v112 = swift_slowAlloc();
      *v112 = 134217984;
      *(v112 + 4) = *(v111 + 160);

      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v113, v114, v115, v116, v112, 0xCu);
      v117 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v117);
    }

    else
    {
    }

    goto LABEL_46;
  }

  v85 = 0;
  v86 = *(v61 + 16);
  v87 = MEMORY[0x1E69E7CC0];
  v88 = v61 + 32;
  v89 = &qword_1EC217A10;
  v90 = v61 + 32;
  v195 = v86;
  v198 = v61;
  v193 = v61 + 32;
  while (1)
  {
    if (v86 == v85)
    {
      sub_1C71BAE88();

      v138 = 0;
      v139 = MEMORY[0x1E69E7CC0];
      v140 = &qword_1EC217A10;
      while (v86 != v138)
      {
        if (v138 >= *(v61 + 16))
        {
          goto LABEL_81;
        }

        sub_1C6FB5E28(v88, v0 + 136);
        sub_1C6FB5E28(v0 + 136, v0 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(v140);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_1_51();
          sub_1C712A82C(v141, v142);
          sub_1C6F699F8((v0 + 136), v0 + 216);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v201 = v139;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v144 = OUTLINED_FUNCTION_99();
            sub_1C716E46C(v144, v145, v146);
            v139 = v201;
          }

          v147 = v140;
          v149 = *(v139 + 16);
          v148 = *(v139 + 24);
          if (v149 >= v148 >> 1)
          {
            v156 = OUTLINED_FUNCTION_15(v148);
            sub_1C716E46C(v156, v149 + 1, 1);
          }

          v151 = *(v0 + 240);
          v150 = *(v0 + 248);
          v152 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 216, v151);
          OUTLINED_FUNCTION_29();
          v154 = v153;
          v155 = OUTLINED_FUNCTION_77();
          (*(v154 + 16))(v155, v152, v151);
          sub_1C71FCD88(v149, v155, &v201, v151, v150);
          __swift_destroy_boxed_opaque_existential_1(v0 + 216);

          v139 = v201;
          v86 = v195;
          v61 = v198;
          v140 = v147;
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v0 + 136);
        }

        v88 += 40;
        ++v138;
      }

      sub_1C71BAEC8();

      v157 = OUTLINED_FUNCTION_15_1();
      v61 = sub_1C7122EE4(v157, v158);

      sub_1C75504FC();
      v167 = sub_1C754FEEC();
      v168 = sub_1C75511BC();
      if (os_log_type_enabled(v167, v168))
      {
        OUTLINED_FUNCTION_11_3();
        v170 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v195 = swift_slowAlloc();
        v82 = &unk_1C756D000;
        *v170 = 134218243;
        *(v170 + 4) = *(v61 + 16);

        OUTLINED_FUNCTION_146_2();
        v171 = MEMORY[0x1E69E7CC0];
        if (*(v61 + 16))
        {
          v194 = v167;
          v201 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_36_12();
          sub_1C6F7ED9C();
          v171 = v201;
          v199 = v61;
          v172 = v61 + 32;
          do
          {
            sub_1C6FB5E28(v172, v0 + 256);
            v173 = *(v0 + 288);
            __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
            v174 = OUTLINED_FUNCTION_24_2();
            v175(v174, v173);
            __swift_destroy_boxed_opaque_existential_1(v0 + 256);
            v201 = v171;
            v176 = *(v171 + 24);
            if (*(v171 + 16) >= v176 >> 1)
            {
              OUTLINED_FUNCTION_15(v176);
              OUTLINED_FUNCTION_177();
              sub_1C6F7ED9C();
              v171 = v201;
            }

            OUTLINED_FUNCTION_119_6();
          }

          while (!v177);
          v61 = v199;
          v82 = &unk_1C756D000;
          v167 = v194;
        }

        *(v0 + 384) = v171;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_98_6();

        v178 = OUTLINED_FUNCTION_66_2();
        sub_1C6F765A4(v178, v179, v180);
        OUTLINED_FUNCTION_24_2();

        *(v170 + 14) = v0 + 384;
        OUTLINED_FUNCTION_156_1(&dword_1C6F5C000, v181, v182, "%ld random weighted sampled traits:\n%{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1(v195);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v183 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v183);
      }

      else
      {

        v82 = &unk_1C756D000;
      }

LABEL_46:
      sub_1C754F2EC();
      OUTLINED_FUNCTION_159_2();
      sub_1C75504FC();
      v118 = sub_1C754FEEC();
      v119 = sub_1C75511BC();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = *(v0 + 424);
        OUTLINED_FUNCTION_11_3();
        v121 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v188 = swift_slowAlloc();
        *v121 = v82[180];
        *(v121 + 4) = *(v61 + 16);

        buf = v121;
        *(v121 + 12) = 2085;
        v122 = *(v120 + 16);
        v123 = MEMORY[0x1E69E7CC0];
        if (v122)
        {
          v185 = v119;
          v187 = v118;
          v124 = *(v0 + 560);
          OUTLINED_FUNCTION_133_4();
          OUTLINED_FUNCTION_36_12();
          sub_1C6F7ED9C();
          OUTLINED_FUNCTION_191();
          v126 = v118 + v125;
          v191 = *(v121 + 72);
          do
          {
            v127 = *(v0 + 560);
            OUTLINED_FUNCTION_2_47();
            sub_1C712A7D0(v126, v127, v128);
            OUTLINED_FUNCTION_153_0();
            v129 = v202;
            *(v0 + 336) = v201;
            *(v0 + 344) = v129;
            OUTLINED_FUNCTION_35_10();
            MEMORY[0x1CCA5CD70](*v127, v124[1]);
            v130 = OUTLINED_FUNCTION_132_0();
            MEMORY[0x1CCA5CD70](v130);
            *(v0 + 368) = *(*(v127 + *(v195 + 8)) + 16);
            v131 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v131);

            OUTLINED_FUNCTION_154_1();
            MEMORY[0x1CCA5CD70](v124[2], v124[3]);
            OUTLINED_FUNCTION_79_7();
            *(v0 + 640) = *(v127 + *(v195 + 7));
            sub_1C75519EC();
            v132 = *(v0 + 336);
            v133 = *(v0 + 344);
            OUTLINED_FUNCTION_1_51();
            sub_1C712A82C(v127, v134);
            v136 = *(v123 + 16);
            v135 = *(v123 + 24);
            if (v136 >= v135 >> 1)
            {
              OUTLINED_FUNCTION_15(v135);
              OUTLINED_FUNCTION_336();
              sub_1C6F7ED9C();
            }

            *(v123 + 16) = v136 + 1;
            v137 = v123 + 16 * v136;
            *(v137 + 32) = v132;
            *(v137 + 40) = v133;
            v126 += v191;
            --v122;
          }

          while (v122);
          v118 = v187;
          v119 = v185;
        }

        *(v0 + 376) = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        OUTLINED_FUNCTION_38_12();
        sub_1C75505FC();
        OUTLINED_FUNCTION_98_6();

        v159 = OUTLINED_FUNCTION_66_2();
        sub_1C6F765A4(v159, v160, v161);
        OUTLINED_FUNCTION_24_2();

        *(buf + 14) = v0 + 376;
        _os_log_impl(&dword_1C6F5C000, v118, v119, "%ld consolidated traits:\n%{sensitive}s", buf, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v188);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v162 = OUTLINED_FUNCTION_27_20();
        MEMORY[0x1CCA5F8E0](v162);
      }

      else
      {
      }

      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_0_22(*(v0 + 448), *(*(v0 + 448) + 24));
      sub_1C754F1AC();
      v163 = OUTLINED_FUNCTION_57_0();
      v164(v163);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_128_1();

      __asm { BRAA            X2, X16 }
    }

    if (v85 >= *(v61 + 16))
    {
      break;
    }

    sub_1C6FB5E28(v90, v0 + 16);
    sub_1C6FB5E28(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(v89);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_38();
      sub_1C712A82C(v91, v92);
      sub_1C6F699F8((v0 + 16), v0 + 96);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v201 = v87;
      if ((v93 & 1) == 0)
      {
        v94 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v94, v95, v96);
        v87 = v201;
      }

      v97 = v89;
      v99 = *(v87 + 16);
      v98 = *(v87 + 24);
      if (v99 >= v98 >> 1)
      {
        v106 = OUTLINED_FUNCTION_15(v98);
        sub_1C716E46C(v106, v99 + 1, 1);
      }

      v100 = *(v0 + 120);
      v101 = *(v0 + 128);
      v102 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v100);
      OUTLINED_FUNCTION_29();
      v104 = v103;
      v105 = OUTLINED_FUNCTION_77();
      (*(v104 + 16))(v105, v102, v100);
      sub_1C71FCD88(v99, v105, &v201, v100, v101);
      __swift_destroy_boxed_opaque_existential_1(v0 + 96);

      v87 = v201;
      v86 = v195;
      v61 = v198;
      v89 = v97;
      v88 = v193;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    v90 += 40;
    ++v85;
  }

  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1C7120E84()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v7 + 624) = v6;
  *(v7 + 632) = v0;

  if (v0)
  {
    v8 = sub_1C7121CEC;
  }

  else
  {
    v8 = sub_1C7120FB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C7120FB4()
{
  v147 = v0;
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  v5 = &unk_1C756D000;
  if (v3)
  {
    OUTLINED_FUNCTION_11_3();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v7 = swift_slowAlloc();
    v146 = v7;
    *v6 = 134218243;
    *(v6 + 4) = *(v4 + 16);

    OUTLINED_FUNCTION_146_2();
    v8 = *(v4 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v137 = v7;
      v139 = v2;
      v142 = v1;
      v10 = *(v0 + 624);
      v144 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v9 = v144;
      v11 = v10 + 32;
      do
      {
        sub_1C6FB5E28(v11, v0 + 296);
        v12 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v13 = OUTLINED_FUNCTION_99_1();
        v15 = v14(v13, v12);
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1(v0 + 296);
        v144 = v9;
        v5 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v5 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_15(v18);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C();
          v9 = v144;
        }

        *(v9 + 16) = v5 + 1;
        v19 = v9 + 16 * v5;
        *(v19 + 32) = v15;
        *(v19 + 40) = v17;
        v11 += 40;
        --v8;
      }

      while (v8);
      v1 = v142;
      v2 = v139;
      v7 = v137;
    }

    *(v0 + 392) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v20 = sub_1C75505FC();
    v22 = v21;

    sub_1C6F765A4(v20, v22, &v146);
    OUTLINED_FUNCTION_99_1();

    *(v6 + 14) = v20;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "%ld deduped traits:\n%{sensitive}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v23 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v23);
  }

  else
  {
  }

  v24 = *(v0 + 624);
  v25 = *(v0 + 632);
  v26 = *(v0 + 608);
  sub_1C75504FC();
  if (![v26 enableFinalTraitLimit])
  {

    goto LABEL_24;
  }

  v27 = *(v0 + 464);
  v5 = *(v24 + 16);

  if (*(v27 + 160) >= v5)
  {
LABEL_24:

    v50 = sub_1C754FEEC();
    v51 = sub_1C75511BC();
    v52 = OUTLINED_FUNCTION_72();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 464);
    if (v54)
    {
      OUTLINED_FUNCTION_13_3();
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v55 + 160);

      _os_log_impl(&dword_1C6F5C000, v50, v51, "Final trait limit is disabled or there are less than %ld traits", v5, 0xCu);
      v56 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v56);
    }

    else
    {
    }

    goto LABEL_28;
  }

  v135 = v25;
  v29 = 0;
  v142 = *(v24 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = v24 + 32;
  v32 = &qword_1EC217A10;
  v33 = v24 + 32;
  v138 = v24 + 32;
  v140 = v24;
  while (v142 != v29)
  {
    if (v29 >= *(v24 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      return result;
    }

    sub_1C6FB5E28(v33, v0 + 16);
    sub_1C6FB5E28(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(v32);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_38();
      sub_1C712A82C(v34, v35);
      sub_1C6F699F8((v0 + 16), v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v144 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v37, v38, v39);
        v30 = v144;
      }

      v40 = v32;
      v42 = *(v30 + 16);
      v41 = *(v30 + 24);
      if (v42 >= v41 >> 1)
      {
        v49 = OUTLINED_FUNCTION_15(v41);
        sub_1C716E46C(v49, v42 + 1, 1);
      }

      v43 = *(v0 + 120);
      v44 = *(v0 + 128);
      v45 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 96, v43);
      OUTLINED_FUNCTION_29();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_77();
      (*(v47 + 16))(v48, v45, v43);
      sub_1C71FCD88(v42, v48, &v144, v43, v44);
      __swift_destroy_boxed_opaque_existential_1(v0 + 96);

      v30 = v144;
      v32 = v40;
      v31 = v138;
      v24 = v140;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    v33 += 40;
    v29 = (v29 + 1);
  }

  sub_1C71BAE88();

  v81 = 0;
  v82 = MEMORY[0x1E69E7CC0];
  while (v142 != v81)
  {
    if (v81 >= *(v24 + 16))
    {
      goto LABEL_70;
    }

    sub_1C6FB5E28(v31, v0 + 136);
    sub_1C6FB5E28(v0 + 136, v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_1_51();
      sub_1C712A82C(v83, v84);
      sub_1C6F699F8((v0 + 136), v0 + 216);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v144 = v82;
      if ((v85 & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_99();
        sub_1C716E46C(v86, v87, v88);
        v82 = v144;
      }

      v90 = *(v82 + 16);
      v89 = *(v82 + 24);
      if (v90 >= v89 >> 1)
      {
        v98 = OUTLINED_FUNCTION_15(v89);
        sub_1C716E46C(v98, v90 + 1, 1);
      }

      v92 = *(v0 + 240);
      v91 = *(v0 + 248);
      __swift_mutable_project_boxed_opaque_existential_0(v0 + 216, v92);
      OUTLINED_FUNCTION_29();
      v94 = v93;
      OUTLINED_FUNCTION_77();
      (*(v94 + 16))();
      v95 = OUTLINED_FUNCTION_121();
      sub_1C71FCD88(v95, v96, v97, v92, v91);
      __swift_destroy_boxed_opaque_existential_1(v0 + 216);

      v82 = v144;
      v24 = v140;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    }

    v31 += 40;
    v81 = (v81 + 1);
  }

  sub_1C71BAEC8();

  v99 = OUTLINED_FUNCTION_117_0();
  v101 = sub_1C7122EE4(v99, v100);
  if (v135)
  {
    v102 = *(v0 + 480);
    v143 = *(v0 + 472);
    v103 = *(v0 + 456);

    v104 = OUTLINED_FUNCTION_57_3();
    OUTLINED_FUNCTION_0_22(v104, v105);
    sub_1C754F1AC();
    v106 = OUTLINED_FUNCTION_101_5();
    v107(v106);
    v59 = *(v102 + 8);
    v57 = v103;
    v58 = v143;
    goto LABEL_50;
  }

  v24 = v101;
  v5 = *(v0 + 464);

  sub_1C75504FC();
  v115 = sub_1C754FEEC();
  v116 = sub_1C75511BC();
  if (os_log_type_enabled(v115, v116))
  {
    OUTLINED_FUNCTION_11_3();
    v117 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v118 = swift_slowAlloc();
    v146 = v118;
    *v117 = 134218243;
    *(v117 + 4) = *(v24 + 16);

    OUTLINED_FUNCTION_146_2();
    v119 = MEMORY[0x1E69E7CC0];
    if (*(v24 + 16))
    {
      v142 = v115;
      v144 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_36_12();
      sub_1C6F7ED9C();
      v119 = v144;
      do
      {
        sub_1C6FB5E28(v24 + 32, v0 + 256);
        v120 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
        v121 = OUTLINED_FUNCTION_24_2();
        v122(v121, v120);
        __swift_destroy_boxed_opaque_existential_1(v0 + 256);
        v144 = v119;
        v123 = *(v119 + 24);
        if (*(v119 + 16) >= v123 >> 1)
        {
          OUTLINED_FUNCTION_15(v123);
          OUTLINED_FUNCTION_177();
          sub_1C6F7ED9C();
          v119 = v144;
        }

        OUTLINED_FUNCTION_119_6();
      }

      while (!v124);
      v115 = v142;
    }

    *(v0 + 384) = v119;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_38_12();
    sub_1C75505FC();
    OUTLINED_FUNCTION_98_6();

    v125 = OUTLINED_FUNCTION_66_2();
    sub_1C6F765A4(v125, v126, v127);
    OUTLINED_FUNCTION_24_2();

    *(v117 + 14) = v0 + 384;
    OUTLINED_FUNCTION_156_1(&dword_1C6F5C000, v128, v129, "%ld random weighted sampled traits:\n%{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v118);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v130 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v130);
  }

  else
  {
  }

  v25 = 0;
LABEL_28:
  sub_1C754F2EC();
  if (v25)
  {

    OUTLINED_FUNCTION_22_26();
    v57 = OUTLINED_FUNCTION_457();
LABEL_50:
    v59(v57, v58);
    OUTLINED_FUNCTION_108_5();

    OUTLINED_FUNCTION_6_0();

    return v108();
  }

  else
  {
    OUTLINED_FUNCTION_159_2();
    sub_1C75504FC();
    v60 = sub_1C754FEEC();
    v61 = sub_1C75511BC();

    v141 = v24;
    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v0 + 424);
      OUTLINED_FUNCTION_11_3();
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v64 = swift_slowAlloc();
      *v63 = 134218243;
      *(v63 + 4) = *(v24 + 16);

      *(v63 + 12) = 2085;
      v65 = *(v62 + 16);
      v66 = MEMORY[0x1E69E7CC0];
      if (v65)
      {
        v131 = v64;
        v132 = v63;
        v133 = v61;
        v134 = v60;
        v67 = *(v0 + 560);
        OUTLINED_FUNCTION_133_4();
        v146 = v66;
        OUTLINED_FUNCTION_36_12();
        sub_1C6F7ED9C();
        v66 = v146;
        OUTLINED_FUNCTION_191();
        v69 = v60 + v68;
        v136 = *(v5 + 72);
        do
        {
          v70 = *(v0 + 560);
          OUTLINED_FUNCTION_2_47();
          sub_1C712A7D0(v69, v70, v71);
          v144 = 0;
          v145 = 0xE000000000000000;
          sub_1C755180C();
          v72 = v145;
          *(v0 + 336) = v144;
          *(v0 + 344) = v72;
          OUTLINED_FUNCTION_35_10();
          MEMORY[0x1CCA5CD70](*v70, v67[1]);
          v73 = OUTLINED_FUNCTION_132_0();
          MEMORY[0x1CCA5CD70](v73);
          *(v0 + 368) = *(*(v70 + SLODWORD(v142[4].isa)) + 16);
          v74 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v74);

          OUTLINED_FUNCTION_154_1();
          MEMORY[0x1CCA5CD70](v67[2], v67[3]);
          OUTLINED_FUNCTION_79_7();
          *(v0 + 640) = *(v70 + SHIDWORD(v142[3].isa));
          sub_1C75519EC();
          v75 = *(v0 + 336);
          v76 = *(v0 + 344);
          OUTLINED_FUNCTION_1_51();
          sub_1C712A82C(v70, v77);
          v146 = v66;
          v79 = *(v66 + 16);
          v78 = *(v66 + 24);
          if (v79 >= v78 >> 1)
          {
            OUTLINED_FUNCTION_15(v78);
            OUTLINED_FUNCTION_89_5();
            sub_1C6F7ED9C();
            v66 = v146;
          }

          *(v66 + 16) = v79 + 1;
          v80 = v66 + 16 * v79;
          *(v80 + 32) = v75;
          *(v80 + 40) = v76;
          v69 += v136;
          --v65;
        }

        while (v65);
        v60 = v134;
        v61 = v133;
        v64 = v131;
        v63 = v132;
      }

      *(v0 + 376) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_38_12();
      sub_1C75505FC();
      OUTLINED_FUNCTION_98_6();

      v109 = OUTLINED_FUNCTION_66_2();
      sub_1C6F765A4(v109, v110, v111);
      OUTLINED_FUNCTION_24_2();

      *(v63 + 14) = v0 + 376;
      _os_log_impl(&dword_1C6F5C000, v60, v61, "%ld consolidated traits:\n%{sensitive}s", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_81_7();
    OUTLINED_FUNCTION_0_22(*(v0 + 448), *(*(v0 + 448) + 24));
    sub_1C754F1AC();
    v112 = OUTLINED_FUNCTION_57_0();
    v113(v112);

    OUTLINED_FUNCTION_116();

    return v114(v141);
  }
}

uint64_t sub_1C7121CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_6(*(v12 + 448));
  OUTLINED_FUNCTION_101_5();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_57_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_117_0();
  v16(v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7121DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C7121E04);
}

uint64_t sub_1C7121E04()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_36_12();
    sub_1C6F7ED9C();
    v4 = v35;
    v5 = v1 + 32;
    v6 = v1 + 32;
    v7 = v2;
    do
    {
      sub_1C6FB5E28(v6, v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      OUTLINED_FUNCTION_113_5();
      v11 = v10(v8, v9);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v14 = *(v4 + 16);
      v15 = v4;
      if (v14 >= *(v4 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v15 = v4;
      }

      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v6 += 40;
      --v7;
      v4 = v15;
    }

    while (v7);
    v36 = MEMORY[0x1E69E7CC0];
    v17 = OUTLINED_FUNCTION_36_12();
    sub_1C716E23C(v17, v18, v19);
    v3 = v36;
    do
    {
      sub_1C6FB5E28(v5, v0 + 56);
      v20 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v21 = OUTLINED_FUNCTION_51();
      v23 = v22(v21, v20);
      v24 = sub_1C706D154(v23);
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      v26 = *(v36 + 16);
      v25 = *(v36 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_15(v25);
        OUTLINED_FUNCTION_186();
        sub_1C716E23C(v27, v28, v29);
      }

      *(v36 + 16) = v26 + 1;
      *(v36 + 8 * v26 + 32) = v24;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  v30 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
  v31 = swift_task_alloc();
  *(v0 + 208) = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v4;
  v32 = swift_task_alloc();
  *(v0 + 216) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A48);
  *v32 = v0;
  v32[1] = sub_1C71220B0;
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE2A6A0]();
}

uint64_t sub_1C71220B0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_107_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71221EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = v22[28];
  v26 = v22[17];
  sub_1C754F2CC();
  v28 = v22[24];
  v27 = v22[25];
  if (v25)
  {
    v29 = v22[21];

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v30 + 8))(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v32 = v22[21];
    v31 = v22[22];
    v33 = swift_task_alloc();
    v33[2] = v32;
    v33[3] = v26;
    v33[4] = v28;
    v33[5] = v31;
    v33[6] = v27;
    sub_1C75504FC();
    sub_1C6FD9DD4();
    OUTLINED_FUNCTION_160_2();

    sub_1C754F2EC();
    sub_1C703FE30();
    v44 = v43;

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v22[18];
      a10 = MEMORY[0x1E69E7CC0];
      v47 = OUTLINED_FUNCTION_106_3();
      result = sub_1C716E46C(v47, v48, v49);
      v50 = a10;
      a9 = v46 + 32;
      v51 = 32;
      while (1)
      {
        v52 = *(v44 + v51);
        if (v52 >= v22[23])
        {
          break;
        }

        sub_1C6FB5E28(a9 + 40 * v52, (v22 + 12));
        a10 = v50;
        v54 = *(v50 + 16);
        v53 = *(v50 + 24);
        if (v54 >= v53 >> 1)
        {
          v61 = OUTLINED_FUNCTION_15(v53);
          sub_1C716E46C(v61, v54 + 1, 1);
        }

        v55 = v22[15];
        v56 = v22[16];
        v57 = __swift_mutable_project_boxed_opaque_existential_0((v22 + 12), v55);
        OUTLINED_FUNCTION_29();
        v59 = v58;
        v60 = OUTLINED_FUNCTION_77();
        (*(v59 + 16))(v60, v57, v55);
        sub_1C71FCD88(v54, v60, &a10, v55, v56);
        __swift_destroy_boxed_opaque_existential_1((v22 + 12));

        v50 = a10;
        v51 += 8;
        if (!--v45)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_17_1();

      return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_1C71224EC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 168);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7122570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7122594, 0, 0);
}

uint64_t sub_1C7122594()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[20];
  v2 = sub_1C7550B3C();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C71226B4;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0);
  OUTLINED_FUNCTION_62(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 requestTextEmbeddings:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C71226B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1C7122914;
  }

  else
  {
    v5 = sub_1C71227B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C71227B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);
  v14 = sub_1C6FB6304();
  if (v14)
  {
    v15 = v14;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C716E518();
    if (v15 < 0)
    {
      __break(1u);
      return;
    }

    v16 = 0;
    v17 = v30;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v16, v13);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v18 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease();
      a9 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        OUTLINED_FUNCTION_89_5();
        sub_1C716E518();
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      *(v17 + 8 * v20 + 32) = v18;
    }

    while (v15 != v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v12 + 152);

  *v21 = v17;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1C7122914()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C712297C(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (__OFADD__(*a2, 1))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v65 = a7;
  v13 = a2[1];
  v14 = *(a4 + 16);
  result = sub_1C754F2DC();
  if (v7)
  {
    return result;
  }

  v68 = v14;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v71 = *(a5 + 16);
  if (v8 >= v71)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v67 = v13;
  v63[1] = a1;
  v64 = v8;
  v69 = a5 + 32;
  v16 = *(a5 + 32 + 8 * v8);
  v17 = *a1;
  v20 = *(*a1 + 56);
  v19 = *a1 + 56;
  v18 = v20;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v66 = a4 + 32;
  sub_1C75504FC();
  v72 = v17;
  sub_1C75504FC();
  v25 = 0;
  v70 = a6;
  do
  {
    do
    {
      if (v23)
      {
        goto LABEL_13;
      }

      do
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v26 >= v24)
        {

          return sub_1C70F428C(v76, v64);
        }

        v23 = *(v19 + 8 * v26);
        ++v25;
      }

      while (!v23);
      v25 = v26;
LABEL_13:
      v27 = *(*(v72 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v23)))));
      if (v27 >= v71)
      {
        goto LABEL_35;
      }

      v73 = 0;
      v74 = v27;
      v28 = *(v69 + 8 * v27);
      v29 = *(v16 + 32);
      v30 = v29 & 0x3F;
      v31 = ((1 << v29) + 63) >> 6;
      swift_bridgeObjectRetain_n();
      isStackAllocationSafe = swift_bridgeObjectRetain_n();
      if (v30 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        v33 = v63;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v34 = v63 - ((8 * v31 + 15) & 0x3FFFFFFFFFFFFFF0);
        sub_1C71FAC38(0, v31, v34);
        v35 = v73;
        sub_1C70A9104(v34, v31, v16, v28);
        v37 = v35;
        if (!v35)
        {
          v38 = v36;

          swift_bridgeObjectRelease_n();
          goto LABEL_17;
        }

        swift_willThrow();

        __break(1u);
LABEL_43:

        result = MEMORY[0x1CCA5F8E0](v33, -1, -1);
        __break(1u);
        return result;
      }

      v33 = swift_slowAlloc();

      v44 = v73;
      v45 = sub_1C70A9074(v33, v31, v16, v28);
      v37 = v44;
      if (v44)
      {
        goto LABEL_43;
      }

      v38 = v45;

      MEMORY[0x1CCA5F8E0](v33, -1, -1);
LABEL_17:

      v23 &= v23 - 1;
      v39 = v38[2];

      v40 = *(v16 + 16);
      if (!v40)
      {
        v41 = v70;
        break;
      }

      v41 = v70;
    }

    while (*(v70 + 112) >= v39 / v40);
    v76[0] = v67;
    if (v74 >= v68)
    {
      goto LABEL_37;
    }

    v75 = *(v66 + 8 * v74);
    sub_1C75504FC();
    static PairwiseMetrics.cosineSimilarity(_:_:)(v76, &v75);
    v43 = v42;
  }

  while (*(v41 + 120) >= v43);

  v46 = v65;
  sub_1C75504FC();
  v47 = sub_1C754FEEC();
  v48 = sub_1C755117C();

  if (os_log_type_enabled(v47, v48))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v76[0] = v51;
    *v50 = 136643075;
    v52 = *(v46 + 16);
    if (v64 < v52)
    {
      v53 = v51;
      v54 = v46 + 32;
      v55 = (v54 + 16 * v64);
      v56 = *v55;
      v57 = v55[1];
      sub_1C75504FC();
      v58 = sub_1C6F765A4(v56, v57, v76);

      *(v50 + 4) = v58;
      *(v50 + 12) = 2085;
      if (v74 < v52)
      {
        v59 = (v54 + 16 * v74);
        v60 = *v59;
        v61 = v59[1];
        sub_1C75504FC();
        v62 = sub_1C6F765A4(v60, v61, v76);

        *(v50 + 14) = v62;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "Trait %{sensitive}s is too similar to other trait %{sensitive}s, dropping it", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v53, -1, -1);
        MEMORY[0x1CCA5F8E0](v50, -1, -1);
      }

LABEL_41:
      __break(1u);
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }
}

uint64_t sub_1C7122EE4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for PersonalTrait();
  v7 = OUTLINED_FUNCTION_18(v6);
  v205 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v207 = (v10 - v9);
  v206 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_29();
  v204 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v203 = sub_1C754DFFC();
  OUTLINED_FUNCTION_29();
  v208 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v197 - v24;
  v26 = *(v2 + 168);
  v212 = v2;
  v27 = *(v2 + 160);
  v210 = a2;
  sub_1C71BABB8();
  v29 = v28;
  *&v211 = a1;
  sub_1C71BAD20();
  v215[0] = v29;
  sub_1C6FD339C();
  if (v27 >= *(v215[0] + 16))
  {
    return v215[0];
  }

  v201 = *(v215[0] + 16);
  v202 = v27;
  v213 = v215[0];
  v209 = v3;
  v30 = [objc_opt_self() globalAndPersonalTraitsSeed];
  v31 = &unk_1EDD0B000;
  if (v30)
  {
    v32 = v30;
    sub_1C755103C();
    v33 = sub_1C755104C();
    v34 = sub_1C7551FCC();

    v220 = &type metadata for Random.Arc4Random;
    v221 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v34, v219);
    v35 = v32;
    OUTLINED_FUNCTION_100();
    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_98();
      swift_slowAlloc();
      OUTLINED_FUNCTION_104_5();
      v38 = swift_slowAlloc();
      *v19 = 134218498;
      *(v19 + 4) = v26;
      *(v19 + 6) = 2048;
      *(v19 + 14) = v202;
      *(v19 + 11) = 2112;
      *(v19 + 3) = v35;
      *v38 = v32;
      v39 = v35;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v40, v41, v42, v43, v44, 0x20u);
      sub_1C6FB5FC8(v38, &qword_1EC215190);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v45 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v45);
    }

    else
    {
    }
  }

  else
  {
    sub_1C754DFEC();
    v47 = *(v208 + 16);
    v48 = v203;
    v47(v22, v25, v203);
    v220 = &type metadata for Random.Arc4Random;
    v31 = &unk_1EDD0B000;
    v221 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v22, v219);
    v47(v19, v25, v48);
    OUTLINED_FUNCTION_100();
    v49 = sub_1C754FEEC();
    v50 = sub_1C75511BC();
    v51 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_98();
      v53 = swift_slowAlloc();
      v199 = v50;
      v54 = v53;
      OUTLINED_FUNCTION_98();
      v200 = swift_slowAlloc();
      v215[0] = v200;
      *v54 = 134218498;
      *(v54 + 4) = v26;
      *(v54 + 12) = 2048;
      *(v54 + 14) = v202;
      *(v54 + 22) = 2080;
      sub_1C712A6F8();
      v198 = v49;
      v197 = sub_1C7551D8C();
      v56 = v55;
      v57 = *(v208 + 8);
      v57(v19, v48);
      v58 = sub_1C6F765A4(v197, v56, v215);

      *(v54 + 24) = v58;
      OUTLINED_FUNCTION_143();
      v59 = v198;
      _os_log_impl(v60, v198, v61, v62, v54, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v200);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v63 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v63);

      v57(v25, v48);
    }

    else
    {

      v64 = *(v208 + 8);
      v64(v19, v48);
      v64(v25, v48);
    }
  }

  v65 = v210;
  v66 = *(v210 + 16);
  v67 = MEMORY[0x1E69E7CC0];
  if (v66)
  {
    v215[0] = MEMORY[0x1E69E7CC0];
    sub_1C716DA70();
    OUTLINED_FUNCTION_100();
    v69 = *(v68 + 176);
    v67 = v215[0];
    OUTLINED_FUNCTION_191();
    v71 = v65 + v70;
    v73 = *(v72 + 72);
    v74 = v206;
    do
    {
      OUTLINED_FUNCTION_2_47();
      sub_1C712A7D0(v71, v15, v75);
      v76 = *(*(v15 + *(v74 + 32)) + 16);
      OUTLINED_FUNCTION_1_51();
      sub_1C712A82C(v15, v77);
      v215[0] = v67;
      v79 = *(v67 + 16);
      v78 = *(v67 + 24);
      if (v79 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_15(v78);
        sub_1C716DA70();
        v74 = v206;
        v67 = v215[0];
      }

      *(v67 + 16) = v79 + 1;
      *(v67 + 8 * v79 + 32) = v69 * v76;
      v71 += v73;
      --v66;
    }

    while (v66);
    v31 = &unk_1EDD0B000;
  }

  v80 = v211;
  v81 = *(v211 + 16);
  v82 = MEMORY[0x1E69E7CC0];
  if (v81)
  {
    v215[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_105();
    sub_1C716DA70();
    v82 = v215[0];
    OUTLINED_FUNCTION_191();
    v84 = v80 + v83;
    v86 = *(v85 + 72);
    v87 = v207;
    do
    {
      OUTLINED_FUNCTION_9_32();
      v88 = OUTLINED_FUNCTION_140_4();
      sub_1C712A7D0(v88, v89, v90);
      v91 = *(*(v87 + 16) + 16);
      OUTLINED_FUNCTION_5_38();
      sub_1C712A82C(v87, v92);
      v215[0] = v82;
      v94 = *(v82 + 16);
      v93 = *(v82 + 24);
      if (v94 >= v93 >> 1)
      {
        OUTLINED_FUNCTION_15(v93);
        OUTLINED_FUNCTION_186();
        sub_1C716DA70();
        v87 = v207;
        v82 = v215[0];
      }

      *(v82 + 16) = v94 + 1;
      *(v82 + 8 * v94 + 32) = v91;
      v84 += v86;
      --v81;
    }

    while (v81);
    v31 = &unk_1EDD0B000;
  }

  v215[0] = v67;
  sub_1C6FD3300(v82);
  v95 = v209;
  v46 = static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(v215[0], v26);
  v96 = v95;

  v97 = v213;
  if (v95)
  {
LABEL_35:

    __swift_destroy_boxed_opaque_existential_1(v219);
    return v46;
  }

  v98 = v31[495];
  sub_1C75504FC();
  sub_1C75504FC();
  OUTLINED_FUNCTION_100();
  v99 = sub_1C754FEEC();
  v100 = sub_1C75511BC();

  if (os_log_type_enabled(v99, v100))
  {
    OUTLINED_FUNCTION_13_3();
    v101 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v102 = swift_slowAlloc();
    v222 = v102;
    *v101 = 136642819;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74BB2E0(v97, v46);
    v215[0] = v103;
    sub_1C7127558(v215);
    v206 = v102;
    v207 = v101;
    LODWORD(v208) = v100;
    v209 = 0;

    v104 = v215[0];
    v105 = *(v215[0] + 16);
    if (v105)
    {
      v204 = v99;
      v205 = v46;
      v210 = v98;
      v218 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v106 = v218;
      v203 = v104;
      v98 = v104 + 32;
      v96 = &unk_1C75711D0;
      v211 = xmmword_1C75604F0;
      do
      {
        sub_1C712A774(v98, v215, &qword_1EC217AC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v107 = swift_allocObject();
        *(v107 + 16) = v211;
        v108 = v216;
        v109 = v217;
        __swift_project_boxed_opaque_existential_1(v215, v216);
        OUTLINED_FUNCTION_113_5();
        v111 = v110(v108, v109);
        v113 = v112;
        *(v107 + 56) = MEMORY[0x1E69E6158];
        *(v107 + 64) = sub_1C6F6D524();
        *(v107 + 32) = v111;
        *(v107 + 40) = v113;
        sub_1C712A774(v215, v214, &qword_1EC217AC0);
        v114 = v214[5];
        *(v107 + 96) = MEMORY[0x1E69E63B0];
        *(v107 + 104) = MEMORY[0x1E69E6438];
        *(v107 + 72) = v114;
        __swift_destroy_boxed_opaque_existential_1(v214);
        v115 = sub_1C75506BC();
        v117 = v116;
        sub_1C6FB5FC8(v215, &qword_1EC217AC0);
        v218 = v106;
        v119 = *(v106 + 16);
        v118 = *(v106 + 24);
        if (v119 >= v118 >> 1)
        {
          OUTLINED_FUNCTION_15(v118);
          sub_1C6F7ED9C();
          v106 = v218;
        }

        *(v106 + 16) = v119 + 1;
        v120 = v106 + 16 * v119;
        *(v120 + 32) = v115;
        *(v120 + 40) = v117;
        v98 += 48;
        --v105;
      }

      while (v105);

      OUTLINED_FUNCTION_150_2();
      v46 = v205;
      v99 = v204;
    }

    else
    {

      v106 = MEMORY[0x1E69E7CC0];
    }

    v215[0] = v106;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_132_0();
    sub_1C75505FC();
    OUTLINED_FUNCTION_131_2();
    v122 = OUTLINED_FUNCTION_90();
    sub_1C6F765A4(v122, v123, v124);
    OUTLINED_FUNCTION_98_5();

    v125 = v207;
    *(v207 + 1) = v121;
    OUTLINED_FUNCTION_143();
    _os_log_impl(v126, v99, v127, v128, v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v206);
    v129 = OUTLINED_FUNCTION_27_20();
    MEMORY[0x1CCA5F8E0](v129);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    OUTLINED_FUNCTION_147_1();
    v97 = v213;
  }

  else
  {
  }

  v130 = v202;
  v131 = sub_1C71CD888(0, v201);
  v132 = v220;
  v133 = v221;
  v134 = __swift_mutable_project_boxed_opaque_existential_0(v219, v220);
  v135 = static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(v131, v46, v130, v134, MEMORY[0x1E69E6530], v132, v133);

  if (v96)
  {

    goto LABEL_35;
  }

  v137 = *(v135 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  v210 = v98;
  if (!v137)
  {
LABEL_45:
    v155 = sub_1C706E520(v131);
    v156 = sub_1C706E520(v135);
    sub_1C723883C(v156, v155);
    OUTLINED_FUNCTION_98_5();

    sub_1C75504FC();
    v157 = sub_1C7117424(v155, v97);

    sub_1C75504FC();
    OUTLINED_FUNCTION_100();
    v159 = v158 + v98;
    v160 = sub_1C754FEEC();
    sub_1C75511BC();
    v161 = OUTLINED_FUNCTION_23();
    v163 = os_log_type_enabled(v161, v162);
    v209 = v96;
    if (v163)
    {
      LODWORD(v208) = v159;
      *&v211 = v160;
      OUTLINED_FUNCTION_11_3();
      v164 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v165 = swift_slowAlloc();
      v214[0] = v165;
      *v164 = 134218243;
      *(v164 + 4) = *(v46 + 16);

      *(v164 + 12) = 2085;
      v166 = MEMORY[0x1E69E7CC0];
      if (*(v46 + 16))
      {
        v206 = v165;
        v207 = v164;
        v213 = v157;
        v222 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_73_7();
        sub_1C6F7ED9C();
        v166 = v222;
        do
        {
          sub_1C6FB5E28(v46 + 32, v215);
          v167 = v217;
          __swift_project_boxed_opaque_existential_1(v215, v216);
          v168 = OUTLINED_FUNCTION_24_2();
          v169(v168, v167);
          __swift_destroy_boxed_opaque_existential_1(v215);
          OUTLINED_FUNCTION_135_4();
          if (v171)
          {
            OUTLINED_FUNCTION_15(v170);
            sub_1C6F7ED9C();
            v166 = v222;
          }

          OUTLINED_FUNCTION_116_6();
        }

        while (!v172);
        v157 = v213;
        v164 = v207;
        v165 = v206;
      }

      v215[0] = v166;
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_38_12();
      sub_1C75505FC();
      OUTLINED_FUNCTION_131_2();
      v174 = OUTLINED_FUNCTION_90();
      sub_1C6F765A4(v174, v175, v176);
      OUTLINED_FUNCTION_98_5();

      *(v164 + 14) = v173;
      OUTLINED_FUNCTION_143();
      v177 = v211;
      _os_log_impl(v178, v211, v179, v180, v164, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v165);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_150_2();
    }

    else
    {
    }

    sub_1C75504FC();
    OUTLINED_FUNCTION_100();
    v181 = sub_1C754FEEC();
    v182 = sub_1C75511BC();
    if (os_log_type_enabled(v181, v182))
    {
      LODWORD(v212) = v182;
      OUTLINED_FUNCTION_11_3();
      v183 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      *&v211 = swift_slowAlloc();
      v214[0] = v211;
      *v183 = 134218243;
      *(v183 + 4) = *(v157 + 16);

      *(v183 + 12) = 2085;
      if (*(v157 + 16))
      {
        v208 = v183;
        v210 = v181;
        v222 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_73_7();
        sub_1C6F7ED9C();
        v184 = v222;
        v213 = v157;
        v181 = (v157 + 32);
        do
        {
          sub_1C6FB5E28(v157 + 32, v215);
          v185 = v217;
          __swift_project_boxed_opaque_existential_1(v215, v216);
          v186 = OUTLINED_FUNCTION_24_2();
          v187(v186, v185);
          __swift_destroy_boxed_opaque_existential_1(v215);
          OUTLINED_FUNCTION_135_4();
          if (v171)
          {
            OUTLINED_FUNCTION_15(v188);
            sub_1C6F7ED9C();
            v184 = v222;
          }

          OUTLINED_FUNCTION_116_6();
        }

        while (!v172);

        OUTLINED_FUNCTION_150_2();
        v183 = v208;
      }

      else
      {

        v184 = MEMORY[0x1E69E7CC0];
      }

      v215[0] = v184;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      OUTLINED_FUNCTION_38_12();
      sub_1C75505FC();
      OUTLINED_FUNCTION_131_2();
      v190 = OUTLINED_FUNCTION_90();
      sub_1C6F765A4(v190, v191, v192);
      OUTLINED_FUNCTION_98_5();

      *(v183 + 14) = v189;
      OUTLINED_FUNCTION_143();
      _os_log_impl(v193, v181, v194, v195, v183, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v211);
      v196 = OUTLINED_FUNCTION_27_20();
      MEMORY[0x1CCA5F8E0](v196);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      OUTLINED_FUNCTION_147_1();
    }

    else
    {

      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRelease_n();
    }

    __swift_destroy_boxed_opaque_existential_1(v219);
    return v46;
  }

  *&v211 = v131;
  v209 = 0;
  v214[0] = MEMORY[0x1E69E7CC0];
  v138 = OUTLINED_FUNCTION_105();
  sub_1C716E46C(v138, v139, v140);
  v46 = v214[0];
  v208 = v135;
  v141 = (v135 + 32);
  while (1)
  {
    v143 = *v141++;
    v142 = v143;
    if ((v143 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v142 >= *(v213 + 16))
    {
      goto LABEL_68;
    }

    sub_1C6FB5E28(v97 + 32 + 40 * v142, v215);
    v214[0] = v46;
    v96 = *(v46 + 16);
    v144 = *(v46 + 24);
    if (v96 >= v144 >> 1)
    {
      v154 = OUTLINED_FUNCTION_15(v144);
      sub_1C716E46C(v154, v96 + 1, 1);
    }

    v145 = v216;
    v146 = v217;
    __swift_mutable_project_boxed_opaque_existential_0(v215, v216);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v147);
    OUTLINED_FUNCTION_14_0();
    LODWORD(v98) = v149 - v148;
    (*(v150 + 16))(v149 - v148);
    v151 = OUTLINED_FUNCTION_98_1();
    sub_1C71FCD88(v151, v152, v153, v145, v146);
    __swift_destroy_boxed_opaque_existential_1(v215);
    v46 = v214[0];
    if (!--v137)
    {
      OUTLINED_FUNCTION_147_1();
      v97 = v213;
      OUTLINED_FUNCTION_150_2();
      v131 = v211;
      v135 = v208;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C7124084()
{
  OUTLINED_FUNCTION_42();
  v1[77] = v0;
  v1[76] = v2;
  v1[75] = v3;
  v1[74] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18);
  OUTLINED_FUNCTION_76(v5);
  v1[78] = OUTLINED_FUNCTION_77();
  v6 = type metadata accessor for PersonalTrait();
  v1[79] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[80] = v7;
  v1[81] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A20);
  OUTLINED_FUNCTION_76(v8);
  v1[82] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for GlobalTrait();
  v1[83] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[84] = v10;
  v1[85] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F38C();
  v1[86] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[87] = v12;
  v1[88] = OUTLINED_FUNCTION_77();
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C7124224()
{
  v127 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2CC();
  if (v1)
  {
    v5 = *(v0 + 608);
    OUTLINED_FUNCTION_18_0(*(v0 + 600), *(v2 + 24));
    sub_1C754F1AC();
    v6 = OUTLINED_FUNCTION_15_1();
    v7(v6);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v5);
LABEL_41:

    OUTLINED_FUNCTION_6_0();

    return v113();
  }

  v124 = v2;
  v9 = *(v0 + 592);
  v10 = *(v9 + 16);
  v121 = v10;
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v9 + 32;
    do
    {
      v13 = *(v0 + 664);
      v14 = *(v0 + 656);
      sub_1C6FB5E28(v12, v0 + 352);
      sub_1C6F699F8((v0 + 352), v0 + 392);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
      v15 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v15 ^ 1u, 1, v13);
      if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
      {
        sub_1C6FB5FC8(*(v0 + 656), &unk_1EC217A20);
      }

      else
      {
        OUTLINED_FUNCTION_69_4();
        sub_1C7129CC4(v16, v17, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D60(v24, v25, v26, v11);
          v11 = v27;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_15(v19);
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB1D60(v28, v29, v30, v31);
          v11 = v32;
        }

        *(v11 + 16) = v20 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_69_4();
        sub_1C7129CC4(v21, v22, v23);
      }

      v12 += 40;
      --v10;
    }

    while (v10);
  }

  sub_1C71BABB8();
  v34 = v33;

  TraitGenerator.Configuration.init()(__src);
  memcpy((v0 + 16), __src, 0xA8uLL);
  sub_1C7129C94(v0 + 16);
  v35 = sub_1C7124B50(v34, *(v0 + 128));

  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C755117C();

  v123 = v35;
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_13_3();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v39 = swift_slowAlloc();
    v40 = v39;
    v126 = v39;
    *v38 = 136642819;
    v41 = *(v35 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v116 = v39;
      v117 = v37;
      __src[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_73_7();
      sub_1C6F7ED9C();
      v42 = __src[0];
      v43 = v35 + 32;
      do
      {
        sub_1C6FB5E28(v43, v0 + 552);
        __swift_project_boxed_opaque_existential_1((v0 + 552), *(v0 + 576));
        OUTLINED_FUNCTION_113_5();
        v44 = OUTLINED_FUNCTION_98_1();
        v46 = v45(v44);
        v48 = v47;
        __swift_destroy_boxed_opaque_existential_1(v0 + 552);
        __src[0] = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_15(v49);
          sub_1C6F7ED9C();
          v42 = __src[0];
        }

        *(v42 + 16) = v50 + 1;
        v51 = v42 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v43 += 40;
        --v41;
      }

      while (v41);
      v37 = v117;
      v40 = v116;
    }

    v52 = MEMORY[0x1CCA5D090](v42, MEMORY[0x1E69E6158]);

    v53 = OUTLINED_FUNCTION_57_3();
    sub_1C6F765A4(v53, v54, v55);
    OUTLINED_FUNCTION_51();

    *(v38 + 4) = v52;
    _os_log_impl(&dword_1C6F5C000, v36, v37, "Randomly selected the following global traits: %{sensitive}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v56 = v121;
  if (v121)
  {
    v57 = *(v0 + 592) + 32;
    v58 = MEMORY[0x1E69E7CC0];
    do
    {
      v59 = *(v0 + 632);
      v60 = *(v0 + 624);
      sub_1C6FB5E28(v57, v0 + 432);
      sub_1C6F699F8((v0 + 432), v0 + 472);
      v61 = OUTLINED_FUNCTION_98_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v61);
      swift_dynamicCast();
      OUTLINED_FUNCTION_90_9();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      if (__swift_getEnumTagSinglePayload(v60, 1, v59) == 1)
      {
        sub_1C6FB5FC8(*(v0 + 624), &qword_1EC217A18);
      }

      else
      {
        OUTLINED_FUNCTION_66_0();
        sub_1C7129CC4(v66, v67, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB1D20(v74, v75, v76, v58);
          v58 = v77;
        }

        v70 = *(v58 + 16);
        v69 = *(v58 + 24);
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_15(v69);
          OUTLINED_FUNCTION_177();
          sub_1C6FB1D20(v78, v79, v80, v58);
          v58 = v81;
        }

        *(v58 + 16) = v70 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_66_0();
        sub_1C7129CC4(v71, v72, v73);
      }

      v57 += 40;
      --v56;
    }

    while (v56);
  }

  sub_1C71BAD20();
  v83 = v82;

  TraitGenerator.Configuration.init()(v0 + 184);
  sub_1C7129C94(v0 + 184);
  v84 = sub_1C7124B50(v83, *(v0 + 296));

  sub_1C75504FC();
  v85 = sub_1C754FEEC();
  v86 = sub_1C755117C();

  if (os_log_type_enabled(v85, v86))
  {
    OUTLINED_FUNCTION_13_3();
    v87 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v88 = swift_slowAlloc();
    v89 = v88;
    v126 = v88;
    *v87 = 136642819;
    v90 = *(v84 + 16);
    v91 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      v118 = v88;
      v119 = v87;
      v120 = v86;
      v122 = v85;
      __src[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_73_7();
      sub_1C6F7ED9C();
      v91 = __src[0];
      v92 = v84 + 32;
      do
      {
        sub_1C6FB5E28(v92, v0 + 512);
        v93 = *(v0 + 544);
        __swift_project_boxed_opaque_existential_1((v0 + 512), *(v0 + 536));
        v94 = OUTLINED_FUNCTION_51();
        v96 = v95(v94, v93);
        v98 = v97;
        __swift_destroy_boxed_opaque_existential_1(v0 + 512);
        __src[0] = v91;
        v100 = *(v91 + 16);
        v99 = *(v91 + 24);
        if (v100 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_15(v99);
          sub_1C6F7ED9C();
          v91 = __src[0];
        }

        *(v91 + 16) = v100 + 1;
        v101 = v91 + 16 * v100;
        *(v101 + 32) = v96;
        *(v101 + 40) = v98;
        v92 += 40;
        --v90;
      }

      while (v90);
      v85 = v122;
      v86 = v120;
      v89 = v118;
      v87 = v119;
    }

    v102 = MEMORY[0x1CCA5D090](v91, MEMORY[0x1E69E6158]);

    v103 = OUTLINED_FUNCTION_57_3();
    sub_1C6F765A4(v103, v104, v105);
    OUTLINED_FUNCTION_51();

    *(v87 + 4) = v102;
    _os_log_impl(&dword_1C6F5C000, v85, v86, "Randomly selected the following personal traits: %{sensitive}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v106 = *(v0 + 608);
  __src[0] = v123;
  sub_1C6FD339C();
  v107 = __src[0];
  OUTLINED_FUNCTION_137_3();
  sub_1C754F2EC();
  v108 = *(v0 + 704);
  v109 = *(v0 + 696);
  v110 = *(v0 + 688);
  if (v106)
  {

    v111 = OUTLINED_FUNCTION_57_3();
    __swift_project_boxed_opaque_existential_1(v111, v112);
    OUTLINED_FUNCTION_117_0();
    sub_1C754F1AC();
    (*(v109 + 8))(v108, v110);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 600), *(v124 + 24));
  sub_1C754F1AC();
  (*(v109 + 8))(v108, v110);

  OUTLINED_FUNCTION_116();

  return v115(v107);
}

unint64_t sub_1C7124B50(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    if (a2 < 0)
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v4;
    }

LABEL_24:
    v22 = sub_1C754FEEC();
    sub_1C755117C();
    v23 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_13_3();
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v5;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      v31 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v31);
    }

    sub_1C75504FC();
    return v4;
  }

  if ((a2 & 0x8000000000000000) == 0 && v5 <= a2)
  {
    goto LABEL_24;
  }

  v34 = MEMORY[0x1E69E7CD0];
  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v6 = *(v2 + 288);
  v32 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = [v6 nextUnsignedIntegerLessThan_];
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = result;
    if (result >= v5)
    {
      v13 = sub_1C754FEEC();
      v14 = sub_1C755119C();
      v15 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_127();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v13, v14, "Random index out of range!", v17, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
      v9 = v34;
      if (*(v34 + 16))
      {
        v10 = sub_1C7551F2C();
        v11 = ~(-1 << *(v9 + 32));
        while (1)
        {
          v12 = v10 & v11;
          if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
          {
            break;
          }

          v10 = v12 + 1;
          if (*(*(v9 + 48) + 8 * v12) == v8)
          {
            goto LABEL_21;
          }
        }
      }

      sub_1C70F428C(v33, v8);
      sub_1C6FB5E28(v32 + 40 * v8, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3688();
        v4 = v20;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15(v18);
        sub_1C6FB3688();
        v4 = v21;
      }

      *(v4 + 16) = v19 + 1;
      sub_1C6F699F8(v33, v4 + 40 * v19 + 32);
    }

LABEL_21:
    if (*(v4 + 16) >= a2)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7124E14()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_1C754F38C();
  v1[10] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7124EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v26 = v22[8];
  v25 = v22[9];
  OUTLINED_FUNCTION_141_1(v26, v26[3]);
  sub_1C754F1CC();
  sub_1C71BABB8();
  v28 = sub_1C7124B50(v27, *(v25 + 136));

  v29 = *(v28 + 16);
  if (v29)
  {
    a10 = v26;
    a11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_129_5();
    v30 = a11;
    v31 = v28 + 32;
    do
    {
      sub_1C6FB5E28(v31, (v22 + 2));
      v32 = v22[5];
      v33 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v32);
      OUTLINED_FUNCTION_113_5();
      v34 = OUTLINED_FUNCTION_323();
      v35(v34);
      OUTLINED_FUNCTION_144();
      __swift_destroy_boxed_opaque_existential_1((v22 + 2));
      a11 = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_15(v36);
        OUTLINED_FUNCTION_336();
        sub_1C6F7ED9C();
        v30 = a11;
      }

      *(v30 + 16) = v37 + 1;
      v38 = v30 + 16 * v37;
      *(v38 + 32) = v32;
      *(v38 + 40) = v33;
      v31 += 40;
      --v29;
    }

    while (v29);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  sub_1C75504FC();
  v39 = sub_1C754FEEC();
  v40 = sub_1C755117C();

  if (os_log_type_enabled(v39, v40))
  {
    OUTLINED_FUNCTION_13_3();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v42 = swift_slowAlloc();
    a11 = v42;
    *v41 = 136642819;
    v43 = MEMORY[0x1CCA5D090](v30, MEMORY[0x1E69E6158]);
    v45 = sub_1C6F765A4(v43, v44, &a11);

    *(v41 + 4) = v45;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v46, v47, "[FedStats] Randomly selected the following global traits: %{sensitive}s)");
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_8_28(v22[8]);
  sub_1C754F1AC();
  v48 = OUTLINED_FUNCTION_15_1();
  v49(v48);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7125154(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 432) = a5;
  *(v6 + 440) = v5;
  *(v6 + 416) = a3;
  *(v6 + 424) = a4;
  *(v6 + 408) = a1;
  *(v6 + 448) = *a2;
  return OUTLINED_FUNCTION_0_67(sub_1C712517C);
}

void sub_1C712517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  v19 = objc_opt_self();
  if (![v19 useGlobalTraitsV3])
  {
    goto LABEL_63;
  }

  if (![v19 useGlobalTraitsV3Captions])
  {
    goto LABEL_63;
  }

  v20 = *(v18 + 408);
  if (!v20)
  {
    goto LABEL_63;
  }

  sub_1C7125BE0(v20);
  *(v18 + 464) = v21;
  v22 = v21;
  v23 = 0;
  v24 = *(v21 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (v24 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v26 = *(v22 + 8 * v23 + 32);
    v27 = *(v26 + 16);
    v28 = *(v25 + 16);
    if (__OFADD__(v28, v27))
    {
      goto LABEL_67;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v25 + 24) >> 1)
    {
      sub_1C6FB1814();
      v25 = v29;
    }

    if (*(v26 + 16))
    {
      if ((*(v25 + 24) >> 1) - *(v25 + 16) < v27)
      {
        goto LABEL_69;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v30 = *(v25 + 16);
        v31 = __OFADD__(v30, v27);
        v32 = v30 + v27;
        if (v31)
        {
          goto LABEL_72;
        }

        *(v25 + 16) = v32;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_68;
      }
    }

    ++v23;
  }

  v33 = *(v18 + 440);
  v34 = objc_autoreleasePoolPush();
  v35 = *(v33 + 192);
  v36 = *(v33 + 184);

  v37 = [v36 librarySpecificFetchOptions];
  [v37 setSharingFilter_];

  v38 = objc_opt_self();
  v39 = v37;
  v40 = sub_1C6FCA158(v25, v37, v38);
  *(v18 + 472) = v40;

  objc_autoreleasePoolPop(v34);
  if (!v40)
  {

    sub_1C75504FC();
    v59 = sub_1C754FEEC();
    v60 = sub_1C755119C();

    if (os_log_type_enabled(v59, v60))
    {
      OUTLINED_FUNCTION_13_3();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      a14 = swift_slowAlloc();
      *v61 = 136315138;
      MEMORY[0x1CCA5D090](v25, MEMORY[0x1E69E6158]);

      v62 = OUTLINED_FUNCTION_98_1();
      v65 = sub_1C6F765A4(v62, v63, v64);

      *(v61 + 4) = v65;
      OUTLINED_FUNCTION_127_0();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a14);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

LABEL_63:
    v99 = *(v18 + 424);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v100 + 8))(v99);
    OUTLINED_FUNCTION_94_1();

    v104(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    return;
  }

  v41 = *(v18 + 448);
  v40;

  v42 = 0;
  v43 = *(v41 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v46 = (v41 + 32 + 72 * v42);
  while (v43 != v42)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_70;
    }

    memcpy((v18 + 264), v46, 0x41uLL);
    if ((*(v18 + 288) & 1) == 0 && !*(v18 + 280))
    {
      sub_1C7025F3C(v18 + 264, v18 + 336);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D97C();
      }

      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_15(v47);
        OUTLINED_FUNCTION_186();
        sub_1C716D97C();
      }

      ++v42;
      *(v45 + 16) = v48 + 1;
      memcpy((v45 + 72 * v48 + 32), (v18 + 264), 0x41uLL);
      goto LABEL_20;
    }

    v46 += 72;
    ++v42;
  }

  v49 = *(v45 + 16);
  v110 = v18;
  if (v49)
  {
    v111 = v44;
    OUTLINED_FUNCTION_129_5();
    v50 = 0;
    v51 = v111;
    v52 = *(v111 + 16);
    v53 = 16 * v52;
    do
    {
      v54 = v45;
      v56 = *(v45 + v50 + 64);
      v55 = *(v45 + v50 + 72);
      v57 = *(v111 + 24);
      sub_1C75504FC();
      if (v52 >= v57 >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C6F7ED9C();
      }

      *(v111 + 16) = v52 + 1;
      v58 = v111 + v53;
      *(v58 + 32) = v56;
      *(v58 + 40) = v55;
      v53 += 16;
      v50 += 72;
      ++v52;
      --v49;
      v45 = v54;
    }

    while (v49);

    v18 = v110;
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  v71 = 0;
  v72 = *(v18 + 456);
  v73 = *(v72 + 16);
  v74 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v75 = (v72 + 32 + 72 * v71);
  while (v73 != v71)
  {
    if (v71 >= *(v72 + 16))
    {
      goto LABEL_71;
    }

    memcpy((v18 + 120), v75, 0x42uLL);
    if ((*(v18 + 144) & 1) == 0 && !*(v18 + 136))
    {
      sub_1C7025FF8(v18 + 120, v18 + 192);
      v112 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D940();
      }

      v76 = v74;
      v77 = *(v74 + 16);
      v78 = *(v76 + 24);
      if (v77 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_15(v78);
        OUTLINED_FUNCTION_186();
        sub_1C716D940();
        v76 = v112;
      }

      ++v71;
      *(v76 + 16) = v77 + 1;
      memcpy((v76 + 72 * v77 + 32), (v18 + 120), 0x42uLL);
      v74 = v76;
      goto LABEL_41;
    }

    v75 += 72;
    ++v71;
  }

  v79 = *(v74 + 16);
  if (v79)
  {
    v109 = v51;
    v113 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_129_5();
    v80 = 0;
    v81 = v113;
    v82 = *(v113 + 16);
    v83 = 16 * v82;
    do
    {
      v84 = v74;
      v85 = v74 + v80;
      v86 = *(v74 + v80 + 64);
      v87 = *(v85 + 72);
      v88 = *(v113 + 24);
      sub_1C75504FC();
      if (v82 >= v88 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v113 + 16) = v82 + 1;
      v89 = v113 + v83;
      *(v89 + 32) = v86;
      *(v89 + 40) = v87;
      v83 += 16;
      v80 += 72;
      ++v82;
      --v79;
      v74 = v84;
    }

    while (v79);

    v51 = v109;
    v18 = v110;
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6FD2568(v81);
  *(v18 + 480) = v51;
  *(v18 + 112) = 0;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 16) = 0u;
  v90 = swift_task_alloc();
  *(v18 + 488) = v90;
  *v90 = v18;
  v90[1] = sub_1C7125980;
  OUTLINED_FUNCTION_94_1();

  sub_1C74B075C(v91, v92, v93, v94, v95, v96, v97);
}