uint64_t sub_223775E28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_2237B5E2C();
  v10 = v9;
  sub_2237B5E2C();
  OUTLINED_FUNCTION_357();
  v11 = a1;
  v12 = OUTLINED_FUNCTION_358();
  a5(v12, v10, a4, v5);
}

uint64_t OUTLINED_FUNCTION_321()
{
}

void sub_223775EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v56 = v26;
  v54 = v27;
  OUTLINED_FUNCTION_214(v28, &a18);
  v29 = sub_2237B5C7C();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_31_0();
  v55 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_27_1();
  v39 = sub_223761B80();
  sub_2237B575C();
  v59 = v21;
  v60 = v20;
  v61 = v53;
  v62 = v54;
  v63 = v56;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  v57 = *(v21 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v40 = OUTLINED_FUNCTION_203();
  v39(v40, v23, v29);
  v41 = OUTLINED_FUNCTION_119();
  (v39)(v41);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v42 = OUTLINED_FUNCTION_221();
  v43 = OUTLINED_FUNCTION_46_0(v42);
  v23(v43);
  v44 = OUTLINED_FUNCTION_52_0();
  v23(v44);
  OUTLINED_FUNCTION_76((v32 + v42));
  OUTLINED_FUNCTION_84(v45);
  v46 = (v42 + v22);
  *v46 = sub_223777208;
  v46[1] = &v58;
  OUTLINED_FUNCTION_5_3();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_223761F8C;
  *(v47 + 24) = v42;
  v64[4] = sub_223761F78;
  v64[5] = v47;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v64[2] = v48;
  v64[3] = &block_descriptor_58;
  _Block_copy(v64);
  OUTLINED_FUNCTION_195();

  v49 = OUTLINED_FUNCTION_285();
  dispatch_sync(v49, v50);
  _Block_release(v55);
  v51 = OUTLINED_FUNCTION_160();
  v32(v51);
  v52 = OUTLINED_FUNCTION_202();
  v32(v52);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223776240(uint64_t a1)
{
  v3 = v2;
  v5 = sub_2237B412C();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v70 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v66 = &v62[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097340, &qword_2237B77F8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2();
  v65 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v67 = &v62[-v23];
  OUTLINED_FUNCTION_7();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v62[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v62[-v28];
  v30 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  v68 = v8[2];
  v68(v29, a1, v1);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v1);
  v31 = *(v15 + 56);
  v69 = v30;
  sub_22376D910(v3 + v30, v18);
  sub_22376D910(v29, &v18[v31]);
  OUTLINED_FUNCTION_3_1(v18);
  if (v32)
  {
    sub_2237692F0(v29, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_3_1(&v18[v31]);
    if (v32)
    {
      sub_2237692F0(v18, &qword_27D097A50, &unk_2237B7800);
LABEL_17:
      v48 = v67;
      __swift_storeEnumTagSinglePayload(v67, 1, 1, v1);
      v49 = v69;
      swift_beginAccess();
      sub_22376CE70(v48, v3 + v49);
      swift_endAccess();
      v50 = *(v3 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);
      *(v3 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = 0;

      return;
    }

    goto LABEL_9;
  }

  sub_22376D910(v18, v27);
  OUTLINED_FUNCTION_3_1(&v18[v31]);
  if (v32)
  {
    sub_2237692F0(v29, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_15();
    v33 = OUTLINED_FUNCTION_14();
    v34(v33);
LABEL_9:
    sub_2237692F0(v18, &unk_27D097340, &qword_2237B77F8);
    goto LABEL_10;
  }

  v43 = v8[4];
  v64 = a1;
  v44 = v66;
  v43(v66, &v18[v31], v1);
  OUTLINED_FUNCTION_6(&qword_28131B4D8);
  v63 = sub_2237B5E0C();
  v45 = v8[1];
  v46 = v44;
  a1 = v64;
  (v45)(v46, v1);
  sub_2237692F0(v29, &qword_27D097A50, &unk_2237B7800);
  v47 = OUTLINED_FUNCTION_14();
  v45(v47);
  sub_2237692F0(v18, &qword_27D097A50, &unk_2237B7800);
  if (v63)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (qword_28131A9F8 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v35 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v35, qword_28131B530);
  v36 = v68;
  v68(v70, a1, v1);

  v37 = sub_2237B5C8C();
  v38 = sub_2237B5FFC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v39 = 136315394;
    v40 = v65;
    sub_22376D910(v3 + v69, v65);
    if (__swift_getEnumTagSinglePayload(v40, 1, v1))
    {
      sub_2237692F0(v40, &qword_27D097A50, &unk_2237B7800);
      v41 = 0xE300000000000000;
      v42 = 7104878;
    }

    else
    {
      v36(v66, v40, v1);
      sub_2237692F0(v40, &qword_27D097A50, &unk_2237B7800);
      v42 = sub_2237B40FC();
      v41 = v51;
      OUTLINED_FUNCTION_15();
      v52 = OUTLINED_FUNCTION_16();
      v53(v52);
    }

    v54 = sub_223763694(v42, v41, v71);

    *(v39 + 4) = v54;
    *(v39 + 12) = 2080;
    OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
    v55 = sub_2237B627C();
    v57 = v56;
    v58 = v8[1];
    v59 = OUTLINED_FUNCTION_16();
    v60(v59);
    v61 = sub_223763694(v55, v57, v71);

    *(v39 + 14) = v61;
    _os_log_impl(&dword_22375F000, v37, v38, "currentSessionId: %s is not the same as sessionId: %s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (v8[1])(v70, v1);
  }
}

void OUTLINED_FUNCTION_200()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 176);
  v3 = *(v0 - 240);
  v4 = *(v0 - 232);
  v5 = *(v0 - 224);
}

uint64_t OUTLINED_FUNCTION_197()
{

  return sub_2237B60FC();
}

void OUTLINED_FUNCTION_71()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_71_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = *(v2 + a1);
  v4 = *(v1 + 16);
  result = *(v3 - 296);
  v6 = *(v3 - 272);
  return result;
}

BOOL OUTLINED_FUNCTION_261(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2237769B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_2237B63AC();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_4();
  v52 = v17;
  v57 = a2;
  v18 = *(*a2 + 16);
  result = OUTLINED_FUNCTION_17_0();
  if (v18 == *(*(v3 + 24) + 16))
  {
    return result;
  }

  v20 = OUTLINED_FUNCTION_19_2();
  sub_223776E00(v20, v21);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_223777F4C(v10);
  }

  v48 = v14;
  v22 = *(v14 + 32);
  v23 = OUTLINED_FUNCTION_19_2();
  v49 = v11;
  v24(v23);
  v59 = sub_2237B639C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097990, &qword_2237B8330);
  sub_2237B5E3C();
  OUTLINED_FUNCTION_17_0();
  v50 = v3;
  v25 = *(v3 + 48);

  v26 = OUTLINED_FUNCTION_19_2();
  v27 = sub_22376C774(v26);

  if (!v27)
  {
LABEL_20:
    v46 = v51;
    v47 = v52;
    sub_2237B637C();
    sub_2237769B4(v46, v57, v53);
    sub_223777F4C(v46);
    return (*(v48 + 8))(v47, v49);
  }

  v56 = *(v27 + 16);
  if (!v56)
  {
LABEL_19:

    goto LABEL_20;
  }

  v28 = 0;
  v54 = v27 + 32;
  v55 = v27;
  while (v28 < *(v27 + 16))
  {
    v58 = *(v54 + 16 * v28);
    v29 = *v57;
    swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_22();
    v30 = sub_2237B568C();
    v32 = v31;
    if (*(v29 + 16))
    {
      v33 = v30;
      v34 = *(v29 + 40);
      sub_2237B634C();
      sub_2237B5E6C();
      v35 = sub_2237B636C();
      v36 = ~(-1 << *(v29 + 32));
      while (1)
      {
        v37 = v35 & v36;
        if (((*(v29 + 56 + (((v35 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v36)) & 1) == 0)
        {
          break;
        }

        v38 = (*(v29 + 48) + 16 * v37);
        if (*v38 != v33 || v38[1] != v32)
        {
          v40 = sub_2237B629C();
          v35 = v37 + 1;
          if ((v40 & 1) == 0)
          {
            continue;
          }
        }

        result = swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    swift_unknownObjectRetain();
    v41 = v53;
    sub_223776E88();
    v42 = *(*v41 + 16);
    sub_22377702C(v42);
    v43 = *v41;
    *(v43 + 16) = v42 + 1;
    *(v43 + 16 * v42 + 32) = v58;
    *v41 = v43;
    OUTLINED_FUNCTION_22();
    v44 = sub_2237B568C();
    sub_22377708C(&v59, v44, v45);
    swift_unknownObjectRelease();

LABEL_18:
    ++v28;
    v27 = v55;
    if (v28 == v56)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223776E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_257(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_223776EA0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void *sub_223776EFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097970, &qword_2237B8310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223777044(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

BOOL sub_22377708C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2237B634C();
  sub_2237B5E6C();
  v9 = sub_2237B636C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2237B629C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_223777220(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2237771D8()
{
  v1 = OUTLINED_FUNCTION_273();
  v2 = *(v0 + 48);
  return v3(v1);
}

uint64_t sub_223777220(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2237775D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2237773A4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2237B634C();
      sub_2237B5E6C();
      result = sub_2237B636C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2237B629C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2237829E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2237B62BC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_242()
{
  v4 = *(v0 + 16);
  v5 = *(v1 + 16);
  result = v2;
  v7 = *(v3 - 192);
  return result;
}

uint64_t sub_2237773A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  result = sub_2237B611C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2237B634C();

        sub_2237B5E6C();
        result = sub_2237B636C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2237775D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  result = sub_2237B611C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22378297C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2237B634C();
    sub_2237B5E6C();
    result = sub_2237B636C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_223777834()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v1;
  v7 = v6;
  v83 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_168();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_113();
  v17 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_4();
  v21 = *(v1 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v22)
  {
    v23 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v5 + v23, v4, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v4, 1, v17);
    if (v24)
    {
      sub_2237710FC(v4, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v25 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v25, qword_28131B550);

      v26 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_318())
      {
        v27 = OUTLINED_FUNCTION_25_0();
        v85[0] = OUTLINED_FUNCTION_198();
        *v27 = 136315394;
        v28 = OUTLINED_FUNCTION_120();
        v31 = sub_223763694(v28, v29, v30);
        OUTLINED_FUNCTION_271(v31);
        *(v27 + 14) = sub_223763694(v83, v7, v85);
        OUTLINED_FUNCTION_157();
        _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_10();
      }

      goto LABEL_34;
    }

    v43 = sub_22376F978(v4, v2);
    v44 = *(v2 + *(v17 + 24));
    MEMORY[0x28223BE20](v43);
    if (v45 == 1)
    {
      v46 = objc_allocWithZone(sub_2237B48BC());
      OUTLINED_FUNCTION_34_0();
      v47 = sub_2237B48AC();
      if (!v47)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v48 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v48, qword_28131B550);

        v49 = sub_2237B5C8C();
        v50 = sub_2237B5FFC();

        if (!OUTLINED_FUNCTION_318())
        {
          goto LABEL_32;
        }

        v51 = OUTLINED_FUNCTION_20();
        v85[0] = OUTLINED_FUNCTION_19_0();
        *(v51 + 4) = OUTLINED_FUNCTION_359(4.8149e-34);
        v53 = "Failed to create RootRequestCompletedMessage for request Id: %s";
LABEL_31:
        OUTLINED_FUNCTION_239(&dword_22375F000, v52, v50, v53);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_13_1();
LABEL_32:

LABEL_33:

        sub_223771D44(v2);
        goto LABEL_34;
      }
    }

    else
    {
      v56 = objc_allocWithZone(sub_2237B450C());
      OUTLINED_FUNCTION_34_0();
      v47 = sub_2237B44FC();
      if (!v47)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v81 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v81, qword_28131B550);

        v49 = sub_2237B5C8C();
        v50 = sub_2237B5FFC();

        if (!OUTLINED_FUNCTION_318())
        {
          goto LABEL_32;
        }

        v82 = OUTLINED_FUNCTION_20();
        v85[0] = OUTLINED_FUNCTION_19_0();
        *(v82 + 4) = OUTLINED_FUNCTION_359(4.8149e-34);
        v53 = "Failed to create RequestCompletedMessage for request Id: %s";
        goto LABEL_31;
      }
    }

    v57 = v47;
    v58 = *(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v47);

    v59 = *(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    sub_22376F91C(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, v85, &qword_27D097C38, "&-");
    if (v86)
    {
      v60 = v87;
      __swift_project_boxed_opaque_existential_1(v85, v86);
      OUTLINED_FUNCTION_20_1();
      v62 = v61;
      v64 = *(v63 + 64);
      MEMORY[0x28223BE20](v65);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_299();
      (*(v62 + 16))(v58);
      sub_2237710FC(v85, &qword_27D097C38, "&-");
      v66 = *(v60 + 8);
      v67 = OUTLINED_FUNCTION_171();
      v68(v67);
      v69 = *(v62 + 8);
      v70 = OUTLINED_FUNCTION_193();
      v71(v70);
      sub_2237B551C();
      OUTLINED_FUNCTION_12_4();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
    }

    else
    {
      sub_2237710FC(v85, &qword_27D097C38, "&-");
      v76 = sub_2237B551C();
      OUTLINED_FUNCTION_2_1(v3, v77, v78, v76);
    }

    v79 = OUTLINED_FUNCTION_332();
    sub_223770A64(v79, v80, v7, 1);
    sub_2237710FC(v3, &unk_27D097A40, &unk_2237B8850);
    sub_22377831C();
    goto LABEL_33;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v37 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v37, qword_28131B550);

  v84 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_121();

  if (os_log_type_enabled(v84, v0))
  {
    v38 = OUTLINED_FUNCTION_20();
    v39 = OUTLINED_FUNCTION_19_0();
    v85[0] = v39;
    *v38 = 136315138;
    v40 = OUTLINED_FUNCTION_120();
    *(v38 + 4) = sub_223763694(v40, v41, v42);
    OUTLINED_FUNCTION_360(&dword_22375F000, v84, v0, "No active session for assistantId: %s cannot post RequestCompleted message");
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_34:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223777F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223777FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22376504C();
  OUTLINED_FUNCTION_5_7(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097978, &qword_2237B8318);
  if ((OUTLINED_FUNCTION_13_6() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_22376504C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_223766960(v14, a2, a3, a1, v19);
  }
}

void sub_2237780EC()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  OUTLINED_FUNCTION_187(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_122();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_113();
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 104))(v3, v19, v20);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  v2(v3);

  v25 = OUTLINED_FUNCTION_120();
  v5(v25);
  v26 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v27 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v27);
  (*(v28 + 16))(v1, v32 + v26, v27);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  v33(v1);

  v34(v35, v0);
  OUTLINED_FUNCTION_14_2();
}

void sub_22377831C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D597B8]) init];
  if (v8)
  {
    v37 = v8;
    [v8 setExists:1];
    v9 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 24);
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_14_3();
      v12 = sub_2237B583C();
      if (v12)
      {
        v13 = v12;
        [v10 setEnded_];
        [v13 setRequestContext_];
        [*(v1 + 16) emitMessage_];
        v14 = sub_2237B582C();
        if (v14)
        {
          v15 = v14;
          v16 = [v14 captureSnapshot];

          if (v16)
          {
            v17 = [objc_opt_self() context];
            if (v17)
            {
              v18 = v17;
              OUTLINED_FUNCTION_19_3();
              sub_2237B40EC();
              v19 = sub_2237B412C();
              v20 = 0;
              if (__swift_getEnumTagSinglePayload(v7, 1, v19) != 1)
              {
                v20 = sub_2237B410C();
                OUTLINED_FUNCTION_8_4(v19);
                (*(v21 + 8))(v7, v19);
              }

              [v16 logWithEventContext:v18 requestIdentifier:v20];
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_4();
        }

        v31 = sub_2237B5C9C();
        v32 = OUTLINED_FUNCTION_9_4(v31, qword_28131B550);
        v33 = sub_2237B5FFC();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = OUTLINED_FUNCTION_7_3();
          *v34 = 0;
          _os_log_impl(&dword_22375F000, v32, v33, "The Orchestration SELF event wrapper failed to build", v34, 2u);
          OUTLINED_FUNCTION_8();
        }
      }
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v26 = sub_2237B5C9C();
      v10 = OUTLINED_FUNCTION_9_4(v26, qword_28131B550);
      v27 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v27))
      {
        v28 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v28);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v29, v30, "Failed to create the RequestContext message for end of request");
        OUTLINED_FUNCTION_3_0();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v22 = sub_2237B5C9C();
    v37 = OUTLINED_FUNCTION_9_4(v22, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v37, v23))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_21_1(&dword_22375F000, v24, v25, "Failed to create the message for end of request");
      OUTLINED_FUNCTION_8();
    }
  }

  v35 = v37;
}

uint64_t sub_2237787CC()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223778814()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223778854()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22377889C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2237788D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2237B598C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_22377891C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2237B598C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

BOOL sub_22377896C()
{
  v0 = sub_2237B61CC();

  return v0 != 0;
}

uint64_t sub_2237789B8()
{
  v1 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_223778AE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223778AC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_223778BC4()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_223778D84()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_53_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_223778DB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_223778E18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_223778E80()
{
  v0 = sub_2237B61CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_223778EEC(char a1)
{
  sub_2237B634C();
  sub_22376AC64(a1);
  sub_2237B5E6C();

  return sub_2237B636C();
}

uint64_t sub_223778F50()
{
  sub_2237B634C();
  OUTLINED_FUNCTION_5_0();
  sub_2237B5E6C();
  return sub_2237B636C();
}

uint64_t sub_223778FB4(uint64_t a1, char a2)
{
  sub_22376AC64(a2);
  sub_2237B5E6C();
}

uint64_t sub_223779010(uint64_t a1, char a2)
{
  sub_2237B634C();
  sub_22376AC64(a2);
  sub_2237B5E6C();

  return sub_2237B636C();
}

uint64_t sub_223779070()
{
  sub_2237B634C();
  OUTLINED_FUNCTION_5_0();
  sub_2237B5E6C();
  return sub_2237B636C();
}

uint64_t sub_2237790B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223778E80();
  *a2 = result;
  return result;
}

unint64_t sub_2237790E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22376AC64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22377917C()
{
  v1 = sub_2237B5E1C();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_223766240(0, &unk_28131A7E8, 0x277D73B08);
  v3 = sub_2237B5F2C();

  return v3;
}

uint64_t sub_2237791F4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  result = sub_223766240(0, &qword_28131A7B0, 0x277D73660);
  a1[3] = result;
  a1[4] = &off_2836D18E8;
  *a1 = v2;
  return result;
}

uint64_t sub_22377926C()
{
  v1 = *(v0 + 24);

  sub_2237692F0(v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId, &qword_27D097A50, &unk_2237B7800);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetSetObserverProvider));
  return v0;
}

uint64_t sub_2237792D4()
{
  sub_22377926C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AssetInstrumentationLogger()
{
  result = qword_28131AE58;
  if (!qword_28131AE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223779380()
{
  sub_22377944C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22377944C()
{
  if (!qword_28131B4C8)
  {
    sub_2237B412C();
    v0 = sub_2237B60AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28131B4C8);
    }
  }
}

uint64_t sub_2237794A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2237A93E4(*a1, *v2);
  *a2 = result;
  return result;
}

unsigned __int8 *sub_223779500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_2237B5EDC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_223779A78(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2237B617C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_223779A78(uint64_t a1, unint64_t a2)
{
  v2 = sub_223779AE4(sub_223779AE0, 0, a1, a2);
  v6 = sub_223779B18(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_223779AE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_223779B18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2237B5E5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2237B60BC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_223767C18(v9, 0);
  v12 = sub_223779C78(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2237B5E5C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2237B617C();
LABEL_4:

  return sub_2237B5E5C();
}

unint64_t sub_223779C78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_223779E88(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2237B5EBC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2237B617C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_223779E88(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2237B5E9C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_223779E88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2237B5ECC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DEAB00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_223779F04(uint64_t a1, int64_t a2, char a3)
{
  result = sub_223779F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223779F24(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22377A078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223779F44(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097328, &qword_2237B77E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_2237A6C5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
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

uint64_t sub_22377A078(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097360, &qword_2237B7818);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_2237A6CA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097368, &unk_2237B7820);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TrialAssetNamespaces(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrialAssetNamespaces(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22377A30C()
{
  result = qword_27D097370;
  if (!qword_27D097370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097378, "f>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097370);
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

unint64_t sub_22377A3BC()
{
  result = qword_27D097380;
  if (!qword_27D097380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097380);
  }

  return result;
}

uint64_t sub_22377A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22377A554;

  return v11(a1, a2, a3);
}

uint64_t sub_22377A554(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22377A650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22377A798;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22377A798()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22377A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v83 = a7;
  v87 = a4;
  v88 = a5;
  v85 = a2;
  v86 = a3;
  v84 = a8;
  v89[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097700, &qword_2237B7A18);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  v82 = v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097708, &qword_2237B7A20);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  v81 = v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097710, &qword_2237B7A28);
  OUTLINED_FUNCTION_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v23);
  v25 = v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097718, &unk_2237B7A30);
  OUTLINED_FUNCTION_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v29);
  v31 = v73 - v30;
  v32 = [a6 location];
  if (!v32)
  {
LABEL_9:
    v79 = 0xF000000000000000;
    v80 = 0;
    goto LABEL_10;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v89[0] = 0;
  v35 = [v34 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:v89];
  v36 = v89[0];
  if (!v35)
  {
    v39 = v36;
    v40 = sub_2237B406C();

    swift_willThrow();
    if (qword_27D0972A0 != -1)
    {
      swift_once();
    }

    v41 = sub_2237B5C9C();
    __swift_project_value_buffer(v41, qword_27D0999E8);
    v42 = v40;
    v43 = sub_2237B5C8C();
    v44 = sub_2237B5FFC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v31;
      v47 = swift_slowAlloc();
      *v45 = 138412290;
      v48 = v40;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_22375F000, v43, v44, "IntelligenceFlowProxy: failed to encode location via keyed archiver with error %@", v45, 0xCu);
      sub_22377AE40(v47);
      v50 = v47;
      v31 = v46;
      MEMORY[0x223DEB690](v50, -1, -1);
      MEMORY[0x223DEB690](v45, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v37 = sub_2237B408C();
  v79 = v38;
  v80 = v37;

LABEL_10:
  v51 = sub_2237B40FC();
  v76 = v52;
  v77 = v51;
  v53 = sub_22377ADDC(a6);
  v74 = v54;
  v75 = v53;
  v73[1] = [a6 isEyesFree];
  v55 = [a6 isVoiceTriggerEnabled];
  v78 = a1;
  v73[0] = v55;
  [a6 isTextToSpeechEnabled];
  [a6 isTriggerlessFollowup];
  v56 = [a6 deviceRestrictions];
  sub_2237B5F2C();

  v57 = [a6 bargeInModes];
  sub_2237B5F2C();

  v58 = sub_2237B58FC();
  OUTLINED_FUNCTION_2_1(v31, v59, v60, v58);
  v61 = sub_2237B58EC();
  OUTLINED_FUNCTION_2_1(v25, v62, v63, v61);
  v64 = sub_2237B590C();
  OUTLINED_FUNCTION_2_1(v81, v65, v66, v64);
  v67 = sub_2237B58DC();
  OUTLINED_FUNCTION_2_1(v82, v68, v69, v67);
  sub_2237B591C();

  v70 = sub_2237B412C();
  result = (*(*(v70 - 8) + 8))(v78, v70);
  v72 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22377ADDC(void *a1)
{
  v1 = [a1 responseMode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2237B5E2C();

  return v3;
}

uint64_t sub_22377AE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097BE0, &qword_2237B88D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22377AEC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22377AF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22377AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097720, &qword_2237B7AF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_2237B420C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237B41FC();
  (*(v9 + 104))(v12, *MEMORY[0x277D1C6B8], v8);
  sub_2237B426C();
  v13 = sub_2237B592C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, a3, v13);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
  sub_2237B425C();
  return (*(v14 + 8))(a3, v13);
}

uint64_t sub_22377B140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22377B180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PrescribedActionDescriptor.toolID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_1_1();
}

uint64_t PrescribedActionDescriptor.toolID.setter()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PrescribedActionDescriptor.parametersData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v3, v4);
  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_22377B28C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22377B2A0(a1, a2);
  }

  return a1;
}

uint64_t sub_22377B2A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PrescribedActionDescriptor.parametersData.setter()
{
  OUTLINED_FUNCTION_11_0();
  result = sub_22377B32C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22377B32C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22377B340(a1, a2);
  }

  return a1;
}

uint64_t sub_22377B340(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PrescribedActionDescriptor.additionalContentData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v3, v4);
  return OUTLINED_FUNCTION_1_1();
}

uint64_t PrescribedActionDescriptor.additionalContentData.setter()
{
  OUTLINED_FUNCTION_11_0();
  result = sub_22377B32C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t PrescribedActionDescriptor.actionTraceID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_1_1();
}

uint64_t PrescribedActionDescriptor.actionTraceID.setter()
{
  OUTLINED_FUNCTION_11_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t PrescribedActionDescriptor.parameters.getter()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    sub_2237B5CBC();

    return sub_2237B5DBC();
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_2237B3FDC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16();
    sub_22377B2A0(v6, v7);
    sub_2237B3FCC();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097730, &unk_2237B7BA0);
    v9 = sub_22377B6F4();
    OUTLINED_FUNCTION_8_0(v9);
    if (v8)
    {

      if (qword_27D0972A0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v10 = sub_2237B5C9C();
      __swift_project_value_buffer(v10, qword_27D0999E8);
      v11 = v8;
      v12 = sub_2237B5C8C();
      v13 = sub_2237B5FEC();

      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_14_0();
        v14 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v8;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        OUTLINED_FUNCTION_19(&dword_22375F000, v18, v19, "JSON decoder failed to decode the parameters with error %@. Parameters will be passed as an empty collection to the tool and the tool is expected to properly generate a failing response.");
        sub_2237692F0(v15, &qword_27D097BE0, &qword_2237B88D0);
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x223DEB690]();
        OUTLINED_FUNCTION_7_0();
        MEMORY[0x223DEB690]();
      }

      sub_2237B5CBC();
      v20 = sub_2237B5DBC();

      v21 = OUTLINED_FUNCTION_16();
      sub_22377B32C(v21, v22);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_16();
      sub_22377B32C(v23, v24);

      return v25;
    }

    return v20;
  }
}

unint64_t sub_22377B6F4()
{
  result = qword_27D097738;
  if (!qword_27D097738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097730, &unk_2237B7BA0);
    sub_22377DAC4(&unk_27D097740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097738);
  }

  return result;
}

uint64_t PrescribedActionDescriptor.additionalContent.getter()
{
  if (*(v0 + 40) >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 32);
  v2 = sub_2237B3FDC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_16();
  sub_22377B2A0(v5, v6);
  sub_2237B3FCC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097750, &qword_2237B7BB0);
  v8 = sub_22377DB08(&qword_27D097758, &unk_27D097740);
  OUTLINED_FUNCTION_8_0(v8);
  if (v7)
  {

    if (qword_27D0972A0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v9 = sub_2237B5C9C();
    __swift_project_value_buffer(v9, qword_27D0999E8);
    v10 = v7;
    v11 = sub_2237B5C8C();
    v12 = sub_2237B5FEC();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_14_0();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      OUTLINED_FUNCTION_19(&dword_22375F000, v17, v18, "JSON decoder failed to decode additional content with error %@. No additional content will be passed to planner.");
      sub_2237692F0(v14, &qword_27D097BE0, &qword_2237B88D0);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
    }

    v19 = OUTLINED_FUNCTION_16();
    sub_22377B32C(v19, v20);

    return MEMORY[0x277D84F90];
  }

  v22 = OUTLINED_FUNCTION_16();
  sub_22377B32C(v22, v23);

  return v24;
}

uint64_t PrescribedActionDescriptor.init(toolID:parameters:additionalContent:actionTraceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v10 = sub_2237B400C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2237B3FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097730, &unk_2237B7BA0);
  v13 = sub_22377DA1C();
  v21 = OUTLINED_FUNCTION_12_1(v13, v14, v15, v16, v17, v18, v19, v20);
  if (v5)
  {

    if (qword_27D0972A0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v23 = sub_2237B5C9C();
    __swift_project_value_buffer(v23, qword_27D0999E8);
    v24 = v5;
    v25 = sub_2237B5C8C();
    v26 = sub_2237B5FFC();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_14_0();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v5;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      OUTLINED_FUNCTION_20_2(&dword_22375F000, v31, v32, "JSON encoder failed to encode the parameters with error %@. This is a critical error.");
      sub_2237692F0(v28, &qword_27D097BE0, &qword_2237B88D0);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x223DEB690]();
    }

    swift_willThrow();

    sub_22377B32C(0, 0xF000000000000000);
    v43 = OUTLINED_FUNCTION_6_0();
    return sub_22377B32C(v43, v44);
  }

  else
  {
    v53 = v22;
    v54 = v21;

    v33 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097750, &qword_2237B7BB0);
    v35 = sub_22377DB08(&qword_27D097770, &qword_27D097768);
    v46 = OUTLINED_FUNCTION_12_1(v35, v36, v37, v38, v39, v40, v41, v42);
    v48 = v47;

    v49 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v49, v50);
    v51 = a4;
    if (a4)
    {
      v52 = a3;
      result = a2;
    }

    else
    {

      v52 = a1;
      v51 = result;
    }

    *a5 = a1;
    a5[1] = result;
    a5[2] = v54;
    a5[3] = v53;
    a5[4] = v46;
    a5[5] = v48;
    a5[6] = v52;
    a5[7] = v51;
  }

  return result;
}

uint64_t sub_22377BD48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_2237B629C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEE00617461447372;
    if (v6 || (sub_2237B629C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000002237B9AC0 == a2;
      if (v7 || (sub_2237B629C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72546E6F69746361 && a2 == 0xED00004449656361)
      {

        return 3;
      }

      else
      {
        v9 = sub_2237B629C();

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

uint64_t sub_22377BEF4(unsigned __int8 a1)
{
  sub_2237B634C();
  MEMORY[0x223DEAFB0](a1);
  return sub_2237B636C();
}

unint64_t sub_22377BF48(char a1)
{
  result = 0x44496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x72546E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22377C000()
{
  v1 = *v0;
  sub_2237B634C();
  MEMORY[0x223DEAFB0](v1);
  return sub_2237B636C();
}

uint64_t sub_22377C04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22377BD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22377C094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22377BEB4();
  *a1 = result;
  return result;
}

uint64_t sub_22377C0BC(uint64_t a1)
{
  v2 = sub_22377DB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22377C0F8(uint64_t a1)
{
  v2 = sub_22377DB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrescribedActionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097778, &qword_2237B7BB8);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = *v1;
  v10 = v1[1];
  v26 = v1[3];
  v27 = v1[2];
  v24 = v1[5];
  v25 = v1[4];
  v22 = v1[6];
  v23 = v1[7];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22377DB90();
  sub_2237B63CC();
  sub_2237B625C();
  if (!v28)
  {
    sub_22377B28C(v27, v26);
    v12 = sub_22377DBE4();
    OUTLINED_FUNCTION_10_1(v12, v13, v14, MEMORY[0x277CC9318]);
    sub_22377B32C(v27, v26);
    v15 = sub_22377B28C(v25, v24);
    OUTLINED_FUNCTION_10_1(v15, v16, v17, MEMORY[0x277CC9318]);
    sub_22377B32C(v25, v24);
    sub_2237B625C();
  }

  v18 = *(v6 + 8);
  v19 = OUTLINED_FUNCTION_16();
  return v20(v19);
}

uint64_t PrescribedActionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097790, &qword_2237B7BC0);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v35 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_22377DB90();
  sub_2237B63BC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    OUTLINED_FUNCTION_16_0();
    sub_22377B32C(v15, a2);
    return sub_22377B32C(v13, v14);
  }

  else
  {
    LOBYTE(v44) = 0;
    v16 = sub_2237B620C();
    v39 = v17;
    LOBYTE(v40) = 1;
    sub_22377DC38();
    OUTLINED_FUNCTION_9_0(MEMORY[0x277CC9318]);
    v37 = a2;
    v38 = v44;
    v18 = v45;
    v19 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v19, v20);
    LOBYTE(v40) = 2;
    OUTLINED_FUNCTION_9_0(MEMORY[0x277CC9318]);
    v36 = v16;
    v21 = v44;
    v22 = v45;
    v23 = OUTLINED_FUNCTION_6_0();
    sub_22377B32C(v23, v24);
    v52 = 3;
    v25 = sub_2237B620C();
    v26 = v12;
    v28 = v27;
    (*(v8 + 8))(v26, v5);
    v29 = v37;
    v31 = v38;
    v30 = v39;
    *&v40 = v36;
    *(&v40 + 1) = v39;
    *&v41 = v38;
    *(&v41 + 1) = v18;
    *&v42 = v21;
    *(&v42 + 1) = v22;
    *&v43 = v25;
    *(&v43 + 1) = v28;
    v32 = v41;
    *v37 = v40;
    v29[1] = v32;
    v33 = v43;
    v29[2] = v42;
    v29[3] = v33;
    sub_22377DC8C(&v40, &v44);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v44 = v36;
    v45 = v30;
    v46 = v31;
    v47 = v18;
    v48 = v21;
    v49 = v22;
    v50 = v25;
    v51 = v28;
    return sub_22377DCC4(&v44);
  }
}

uint64_t sub_22377C638()
{
  OUTLINED_FUNCTION_17_2(OBJC_IVAR___SRDPrescribedActionDescriptor_toolID);

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_22377C6A8()
{
  OUTLINED_FUNCTION_17_2(OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData);
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

id sub_22377C718(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2237B407C();
    v5 = OUTLINED_FUNCTION_1_1();
    sub_22377B32C(v5, v6);
  }

  return v4;
}

uint64_t sub_22377C788()
{
  OUTLINED_FUNCTION_17_2(OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData);
  v0 = OUTLINED_FUNCTION_1_1();
  sub_22377B28C(v0, v1);
  return OUTLINED_FUNCTION_1_1();
}

void sub_22377C7D4(void *a1, uint64_t a2, void *a3, void (*a4)(void *, unint64_t))
{
  v5 = a3;
  if (a3)
  {
    v6 = a1;
    v7 = v5;
    v5 = sub_2237B408C();
    v9 = v8;
  }

  else
  {
    v10 = a1;
    v9 = 0xF000000000000000;
  }

  a4(v5, v9);
}

id sub_22377C888(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2237B5E1C();

  return v3;
}

uint64_t sub_22377C8D8()
{
  OUTLINED_FUNCTION_17_2(OBJC_IVAR___SRDPrescribedActionDescriptor_actionTraceID);

  return OUTLINED_FUNCTION_1_1();
}

void sub_22377C924(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_2237B5E2C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

unint64_t sub_22377C9B8(char a1)
{
  result = 0x44496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x72546E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

id sub_22377CA54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2;
  v14 = a1;
  v15 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData];
  *v15 = xmmword_2237B7B90;
  v16 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData];
  *&v8[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData] = xmmword_2237B7B90;
  v17 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_toolID];
  *v17 = a1;
  *(v17 + 1) = a2;
  v19 = *v15;
  v18 = *(v15 + 1);
  *v15 = a3;
  *(v15 + 1) = a4;

  sub_22377B28C(a3, a4);
  sub_22377B32C(v19, v18);
  v20 = *v16;
  v21 = v16[1];
  *v16 = a5;
  v16[1] = a6;
  sub_22377B28C(a5, a6);
  sub_22377B32C(v20, v21);
  if (a8)
  {

    v13 = a8;
    v14 = a7;
  }

  v22 = &v8[OBJC_IVAR___SRDPrescribedActionDescriptor_actionTraceID];
  *v22 = v14;
  *(v22 + 1) = v13;
  v27.receiver = v8;
  v27.super_class = SRDPrescribedActionDescriptor;
  v23 = objc_msgSendSuper2(&v27, sel_init, a7);
  sub_22377B32C(a5, a6);
  sub_22377B32C(a3, a4);
  return v23;
}

uint64_t sub_22377CC98()
{
  v1 = [v0 toolID];
  v2 = sub_2237B5E2C();
  v4 = v3;

  v5 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D837D0];
  v17 = v2;
  v18 = v4;
  sub_22377CE44(&v17);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v6 = sub_22377DD38(v0, &selRef_parametersData);
  if (v7 >> 60 == 15)
  {
    v6 = OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v8 = MEMORY[0x277CC9318];
  }

  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_22377CE44(&v17);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v9 = sub_22377DD38(v0, &selRef_additionalContentData);
  if (v10 >> 60 == 15)
  {
    v9 = OUTLINED_FUNCTION_18_0();
  }

  else
  {
    v11 = MEMORY[0x277CC9318];
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  sub_22377CE44(&v17);
  sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
  v12 = [v0 actionTraceID];
  v13 = sub_2237B5E2C();
  v15 = v14;

  v19 = v5;
  v17 = v13;
  v18 = v15;
  sub_22377CE44(&v17);
  return sub_2237692F0(&v17, &qword_27D097350, qword_2237B7EC0);
}

void sub_22377CE44(uint64_t a1)
{
  sub_223773DA0(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_2237B628C();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2237B5E1C();

  [v1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id SRDPrescribedActionDescriptor.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData];
  *&v2[OBJC_IVAR___SRDPrescribedActionDescriptor_parametersData] = xmmword_2237B7B90;
  v5 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData];
  *&v2[OBJC_IVAR___SRDPrescribedActionDescriptor_additionalContentData] = xmmword_2237B7B90;
  v6 = sub_22377D240();
  if (!v7)
  {

LABEL_6:
    sub_22377B32C(*v4, *(v4 + 1));
    sub_22377B32C(*v5, *(v5 + 1));
    type metadata accessor for SRDPrescribedActionDescriptor();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_22377D240();
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v10;
  v13 = v11;
  v14 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_toolID];
  *v14 = v8;
  v14[1] = v9;
  sub_22377D3AC(&v23);
  v15 = *v4;
  v16 = *(v4 + 1);
  *v4 = v23;
  sub_22377B32C(v15, v16);
  sub_22377D3AC(&v23);
  v17 = *v5;
  v18 = *(v5 + 1);
  *v5 = v23;
  sub_22377B32C(v17, v18);
  v19 = &v2[OBJC_IVAR___SRDPrescribedActionDescriptor_actionTraceID];
  *v19 = v12;
  v19[1] = v13;
  v22.receiver = v2;
  v22.super_class = SRDPrescribedActionDescriptor;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

uint64_t sub_22377D240()
{
  v1 = sub_2237B5E1C();

  v2 = [v0 decodeObjectForKey_];

  if (v2)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
    sub_223774DE4(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double sub_22377D3AC@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_2237B5E1C();

  v4 = [v1 decodeObjectForKey_];

  if (v4)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
    sub_223774DE4(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a1 = xmmword_2237B7B90;
  }

  return result;
}

id SRDPrescribedActionDescriptor.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t SRDPrescribedActionDescriptor.swiftDescriptor.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 toolID];
  v4 = sub_2237B5E2C();
  v6 = v5;

  v7 = sub_22377DD38(v1, &selRef_parametersData);
  v9 = v8;
  v10 = sub_22377DD38(v1, &selRef_additionalContentData);
  v12 = v11;
  v13 = [v1 actionTraceID];
  v14 = sub_2237B5E2C();
  v16 = v15;

  *a1 = v4;
  a1[1] = v6;
  v17 = OUTLINED_FUNCTION_6_0();
  sub_22377B32C(v17, v18);
  a1[2] = v7;
  a1[3] = v9;
  v19 = OUTLINED_FUNCTION_6_0();
  result = sub_22377B32C(v19, v20);
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v16;
  return result;
}

id PrescribedActionDescriptor.objcDescriptor.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = objc_allocWithZone(SRDPrescribedActionDescriptor);

  sub_22377B28C(v3, v4);
  sub_22377B28C(v5, v6);

  return sub_22377D7CC(v1, v2, v3, v4, v5, v6, v8, v7);
}

id sub_22377D7CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_2237B5E1C();

  if (a4 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2237B407C();
    sub_22377B32C(a3, a4);
  }

  if (a6 >> 60 != 15)
  {
    v16 = sub_2237B407C();
    sub_22377B32C(a5, a6);
    if (a8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  if (!a8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_2237B5E1C();

LABEL_9:
  v18 = [v8 initWithToolID:v14 parametersData:v15 additionalContentData:v16 actionTraceID:v17];

  return v18;
}

uint64_t sub_22377D8F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22377D93C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22377D99C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22377D9AC()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

unint64_t sub_22377DA1C()
{
  result = qword_27D097760;
  if (!qword_27D097760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097730, &unk_2237B7BA0);
    sub_22377DAC4(&qword_27D097768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097760);
  }

  return result;
}

uint64_t sub_22377DAC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2237B5CBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22377DB08(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D097750, &qword_2237B7BB0);
    sub_22377DAC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22377DB90()
{
  result = qword_27D097780;
  if (!qword_27D097780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097780);
  }

  return result;
}

unint64_t sub_22377DBE4()
{
  result = qword_27D097788;
  if (!qword_27D097788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097788);
  }

  return result;
}

unint64_t sub_22377DC38()
{
  result = qword_27D097798;
  if (!qword_27D097798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097798);
  }

  return result;
}

unint64_t type metadata accessor for SRDPrescribedActionDescriptor()
{
  result = qword_27D0977C0;
  if (!qword_27D0977C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0977C0);
  }

  return result;
}

uint64_t sub_22377DD38(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2237B408C();
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22377DDEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22377DE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrescribedActionDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrescribedActionDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22377DFF4()
{
  result = qword_27D0977C8;
  if (!qword_27D0977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977C8);
  }

  return result;
}

unint64_t sub_22377E04C()
{
  result = qword_27D0977D0;
  if (!qword_27D0977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977D0);
  }

  return result;
}

unint64_t sub_22377E0A4()
{
  result = qword_27D0977D8;
  if (!qword_27D0977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977D8);
  }

  return result;
}

uint64_t sub_22377E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22377A798;

  return v11(a1, a2, a3);
}

uint64_t sub_22377E220(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_2237B42AC();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = sub_2237B431C();
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377E348, v1, 0);
}

uint64_t sub_22377E348()
{
  v31 = v0;
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_2237B5C9C();
  __swift_project_value_buffer(v5, qword_27D0999E8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2237B5C8C();
  v8 = sub_2237B5FEC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2237B5E3C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_223763694(v15, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22375F000, v7, v8, "IntelligenceFlowOutputHandler: received message from IF: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x223DEB690](v29, -1, -1);
    MEMORY[0x223DEB690](v14, -1, -1);
  }

  else
  {
    v19 = v0[6];
    v20 = v0[7];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[8];
  v21 = v0[9];
  v24 = v0[4];
  v23 = v0[5];
  v25 = v0[2];
  v26 = v0[3];
  sub_2237B430C();
  (*(v24 + 88))(v23, v26);
  (*(v24 + 8))(v23, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_22377E5CC()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22377E628(uint64_t a1)
{
  result = sub_22377E650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22377E650()
{
  result = qword_27D0977E8;
  if (!qword_27D0977E8)
  {
    type metadata accessor for IntelligenceFlowOutputHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0977E8);
  }

  return result;
}

uint64_t sub_22377E6D0()
{
  result = sub_2237B56DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_22377E7A0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = sub_2237B5C9C();
  __swift_project_value_buffer(v3, qword_27D0999E8);
  v4 = sub_2237B5C8C();
  v5 = sub_2237B5FEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22375F000, v4, v5, "Ending the session with deinit", v6, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v1 + 15);
  v8 = *(v1 + 17);
  v9 = *(v1 + 18);
  v10 = swift_allocObject();
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  sub_2237B587C();

  swift_unknownObjectRelease();

  v11 = *(v1 + 14);
  swift_unknownObjectRelease();
  v12 = *(v1 + 15);
  swift_unknownObjectRelease();
  v13 = *(v1 + 16);
  swift_unknownObjectRelease();
  v14 = *(v1 + 17);

  v15 = *(v1 + 18);

  v16 = qword_27D0999D0;
  v17 = sub_2237B56DC();
  OUTLINED_FUNCTION_25(v17);
  (*(v18 + 8))(&v1[v16]);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22377E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[6] = AssociatedConformanceWitness;
  v6 = *(MEMORY[0x277D46B60] + 4);
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_22377EA9C;

  return MEMORY[0x2821A9F40](AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22377EA9C()
{
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_1();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v8 = *(v3 + 8);
  v10 = sub_2237B5F6C();

  return MEMORY[0x2822009F8](sub_22377EBE0, v10, v9);
}

uint64_t sub_22377EBE0()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  sub_2237B5A0C();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_22377EC44()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_2237B586C();
  if (v1)
  {
    v3 = *(v0 + 32);
    sub_2237B5FBC();
  }

  OUTLINED_FUNCTION_3_3();

  return v4();
}

uint64_t sub_22377ECC4()
{
  sub_22377E7A0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22377EDA8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22377EDF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_2237B56DC();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2237B5C9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  swift_defaultActor_initialize();
  sub_2237B589C();
  sub_2237B5F8C();
  v23 = sub_2237B5FAC();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  if (qword_27D0972A0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_27D0999E8);
  (*(v15 + 16))(v18, v24, v14);
  v5[17] = sub_2237B588C();
  v5[18] = 0;
  v26 = v38;
  v25 = v39;
  v5[14] = a1;
  v5[15] = v26;
  v5[16] = v25;
  swift_unknownObjectRetain();

  v27 = v40;
  v28 = [v40 sharedUserId];
  if (v28)
  {
    v29 = v28;
    sub_2237B5E2C();

    sub_2237B56AC();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    v31 = v41;
    v30 = v42;
    (*(v42 + 32))(v41, v10, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    v31 = v41;
    sub_2237B56CC();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
    v30 = v42;
    if (EnumTagSinglePayload != 1)
    {
      sub_223781CE0(v10, &qword_27D097900, &qword_2237B8860);
    }
  }

  (*(v30 + 32))(v5 + qword_27D0999D0, v31, v11);
  v33 = v5[17];
  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  *(v34 + 24) = v5;

  v35 = v27;

  sub_2237B587C();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_22377F230(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_2237B59CC();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_2237B56DC();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_2237B598C();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = sub_2237B412C();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377F440, 0, 0);
}

uint64_t sub_22377F440()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 120);
  v18 = *(v0 + 112);
  v19 = *(v0 + 152);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = *(v0 + 136);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_2237B411C();
  (*(v3 + 16))(v1, v2, v4);
  v10 = [v9 languageCode];
  sub_2237B5E2C();

  v11 = qword_27D0999D0;
  *(v0 + 192) = qword_27D0999D0;
  (*(v7 + 16))(v6, v8 + v11, v18);
  [v9 clientAuditToken];
  *(v0 + 256) = v23;
  *(v0 + 272) = v24;
  *(v0 + 288) = 0;
  sub_2237B597C();
  (*(v5 + 16))(v20, v19, v22);
  *(v0 + 200) = *(v8 + 120);
  *(v0 + 40) = v21;
  *(v0 + 48) = sub_22377EDA8(&qword_27D097910, type metadata accessor for IntelligenceFlowProxyConversationSessionInfo);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_223781874(v20, boxed_opaque_existential_1);
  *(v0 + 208) = sub_2237B59EC();
  OUTLINED_FUNCTION_1_3();
  sub_22377EDA8(v13, v14);
  v16 = sub_2237B5F6C();
  *(v0 + 216) = v16;
  *(v0 + 224) = v15;

  return MEMORY[0x2822009F8](sub_22377F664, v16, v15);
}

uint64_t sub_22377F664()
{
  OUTLINED_FUNCTION_6_1();
  v2 = v0[25];
  v1 = v0[26];
  OUTLINED_FUNCTION_1_3();
  v0[29] = sub_22377EDA8(v3, v4);
  sub_2237B5A1C();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[27];
  v6 = v0[28];

  return MEMORY[0x2822009F8](sub_22377F700, v5, v6);
}

uint64_t sub_22377F700()
{
  OUTLINED_FUNCTION_11_1();
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[11];
  v5 = v0[8] + v0[24];
  sub_2237B5A3C();
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_22377F7F0;
  v7 = v0[8];

  return sub_22377FD40();
}

uint64_t sub_22377F7F0()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = *(v2 + 240);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22377F8F0()
{
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  OUTLINED_FUNCTION_7_1();
  sub_22377EDA8(v7, v8);
  v9 = swift_allocError();
  (*(v5 + 32))(v10, v4, v6);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v5 + 32, v1);
  (*(v2 + 8))(v4, v6);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v11, qword_27D0999E8);
  v12 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v13 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v14);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v15, v16, "IntelligenceFlowProxy: Starting intelligence flow session failed with error %@");
    sub_223781CE0(v13, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v17();
}

uint64_t sub_22377FADC()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  sub_2237818D8(v0[13]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v7();
}

uint64_t sub_22377FBB0()
{
  v7 = *(v2 + 248);
  OUTLINED_FUNCTION_21();
  (*(v6 + 8))(v3, v4);
  (*(v5 + 8))(v0, v1);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v8, qword_27D0999E8);
  v9 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v11);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v12, v13, "IntelligenceFlowProxy: Starting intelligence flow session failed with error %@");
    sub_223781CE0(v10, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_3_3();

  return v14();
}

uint64_t sub_22377FD40()
{
  v1[17] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v3 = sub_2237B59CC();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22377FE38, v0, 0);
}

uint64_t sub_22377FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_30();
  a15 = v17;
  a16 = v18;
  OUTLINED_FUNCTION_12_2();
  a14 = v16;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = sub_2237B5C9C();
  __swift_project_value_buffer(v19, qword_27D0999E8);
  v20 = sub_2237B5C8C();
  v21 = sub_2237B5FEC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_20();
    v23 = swift_slowAlloc();
    a9 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_223763694(0xD000000000000013, 0x80000002237B9C00, &a9);
    _os_log_impl(&dword_22375F000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  v24 = v16[17];
  if (*(v24 + 144))
  {
    v25 = sub_2237B5C8C();
    v26 = sub_2237B5FEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22375F000, v25, v26, "Subscription task was already set up, ignoring the call.", v27, 2u);
      MEMORY[0x223DEB690](v27, -1, -1);
    }

    v28 = v16[21];
    v29 = v16[18];

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_26();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    v39 = *(v24 + 120);
    sub_2237B59EC();
    OUTLINED_FUNCTION_1_3();
    sub_22377EDA8(v40, v41);
    v42 = *(MEMORY[0x277D46B68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_15_0();
    v16[22] = v43;
    *v43 = v44;
    v43[1] = sub_2237800B4;
    v45 = v16[21];
    OUTLINED_FUNCTION_26();

    return MEMORY[0x2821A9F50](v46, v47, v48, v49, v50, v51, v52, v53);
  }
}

uint64_t sub_2237800B4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *(v4 + 176);
  *v6 = *v1;

  v8 = *(v4 + 136);
  if (!v0)
  {
    *(v5 + 184) = v3;
  }

  OUTLINED_FUNCTION_26();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2237801D8()
{
  OUTLINED_FUNCTION_11_1();
  v3 = v2[23];
  sub_2237B596C();

  v4 = OUTLINED_FUNCTION_19_1();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2[10] = swift_getAssociatedTypeWitness();
  v2[11] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 7);
  v7 = *(MEMORY[0x277D46B10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v2[24] = v8;
  *v8 = v9;
  v8[1] = sub_2237802EC;

  return MEMORY[0x2821A9F00](boxed_opaque_existential_1, v0, v1);
}

uint64_t sub_2237802EC()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2237805FC;
  }

  else
  {
    v6 = sub_2237804E4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_223780414()
{
  OUTLINED_FUNCTION_11_1();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  OUTLINED_FUNCTION_7_1();
  sub_22377EDA8(v4, v5);
  swift_allocError();
  (*(v2 + 32))(v6, v1, v3);
  v7 = v0[21];
  v8 = v0[18];

  OUTLINED_FUNCTION_5_1();

  return v9();
}

uint64_t sub_2237804E4()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v2 + 128);
  v4 = sub_2237B5FAC();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  sub_223781B5C(v0 + 56, v0 + 96);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  sub_2237709BC((v0 + 96), (v5 + 4));
  v5[9] = v3;

  v6 = sub_223780F04(0, 0, v1, &unk_2237B81B0, v5);
  v7 = *(v2 + 144);
  *(v2 + 144) = v6;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);

  OUTLINED_FUNCTION_3_3();

  return v10();
}

uint64_t sub_2237805FC()
{
  OUTLINED_FUNCTION_6_1();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];

  OUTLINED_FUNCTION_5_1();

  return v4();
}

uint64_t sub_223780674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2237B431C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097930, &unk_2237B81D0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22378076C, 0, 0);
}

uint64_t sub_22378076C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_20_1();
  v6 = v5;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v6 + 16))(v9, v4, v2);
  v10 = *(v3 + 8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2237B5FCC();

  v11 = OUTLINED_FUNCTION_19_1();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  v13 = *(MEMORY[0x277D856D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v0[14] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_4_2(v14);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x282200310](v16);
}

uint64_t sub_2237808D8()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2237809D4()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0[13];
  v2 = v0[10];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v4 = v0[12];
    v3 = v0[13];

    OUTLINED_FUNCTION_5_1();

    return v5();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v1, v2);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_223780C1C;
    v8 = v0[12];
    v9 = v0[9];

    return sub_22377E220(v8);
  }
}

uint64_t sub_223780AE8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v2, qword_27D0999E8);
  v3 = sub_2237B5C8C();
  sub_2237B5FEC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v4 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v5);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v6, v7, "IntelligenceFlowProxy: Subscription exited abnormally with error %@");
    sub_223781CE0(v4, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v9 = v0[12];
  v8 = v0[13];

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_26();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_223780C1C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v3 = *(v2 + 120);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_223780D1C()
{
  OUTLINED_FUNCTION_11_1();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = OUTLINED_FUNCTION_19_1();
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v3 = *(MEMORY[0x277D856D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v0[14] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2();

  return MEMORY[0x282200310](v6);
}

uint64_t sub_223780DB8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_24(v2, qword_27D0999E8);
  v3 = sub_2237B5C8C();
  sub_2237B5FEC();
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_20();
    v4 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_27(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_23(v5);
    OUTLINED_FUNCTION_8_1(&dword_22375F000, v6, v7, "IntelligenceFlowProxy: Subscription exited abnormally with error %@");
    sub_223781CE0(v4, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v9 = v0[12];
  v8 = v0[13];

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_26();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_223780F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_223781C70(a3, v26 - v11);
  v13 = sub_2237B5FAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_223781CE0(v12, &qword_27D097908, &qword_2237B8180);
  }

  else
  {
    sub_2237B5F9C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2237B5F6C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2237B5E4C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_223781CE0(a3, &qword_27D097908, &qword_2237B8180);

      return v24;
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

  sub_223781CE0(a3, &qword_27D097908, &qword_2237B8180);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2237811D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2237B598C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_223781240(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_2237B5C9C();
  OUTLINED_FUNCTION_20_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978E0, &qword_2237B8168);
  OUTLINED_FUNCTION_20_1();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  if (qword_27D0972A0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = __swift_project_value_buffer(v2, qword_27D0999E8);
  v22 = *(v4 + 16);
  v22(v9, v21, v2);
  sub_2237B59BC();
  v31 = v2;
  sub_22377EDA8(&qword_27D0978E8, MEMORY[0x277D46B28]);
  sub_2237B59FC();
  sub_2237B5A6C();
  sub_2237B5A5C();
  sub_2237B59EC();
  v32 = v20;
  (*(v12 + 16))(v18, v20, v10);
  v22(v9, v21, v31);
  sub_22378161C();

  v23 = sub_2237B59DC();
  type metadata accessor for IntelligenceFlowOutputHandler();
  v24 = swift_allocObject();
  v25 = v33;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v24 + 112) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0978F8, &unk_2237B8170);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_22377EDF0(v25, v23, v24, v34);

  (*(v12 + 8))(v32, v10);
  return v29;
}

uint64_t sub_22378156C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_223781FD8;
  OUTLINED_FUNCTION_26();

  return sub_22377E98C(v8, v9, v10);
}

unint64_t sub_22378161C()
{
  result = qword_27D0978F0;
  if (!qword_27D0978F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0978E0, &qword_2237B8168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0978F0);
  }

  return result;
}

uint64_t sub_223781680()
{
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_223781714;

  return sub_22377F230(v2, v3);
}

uint64_t sub_223781714()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return v5();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_223781874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2237818D8(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowProxyConversationSessionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223781934(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223781A2C;

  return v7(a1);
}

uint64_t sub_223781A2C()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3_3();

  return v5();
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DEB690);
  }

  return result;
}

uint64_t sub_223781B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223781BC0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_12_2();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_223781714;
  OUTLINED_FUNCTION_26();

  return sub_223780674(v7, v8, v9, v10, v11);
}

uint64_t sub_223781C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097908, &qword_2237B8180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223781CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_223781D34()
{
  OUTLINED_FUNCTION_11_1();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v7(v6);
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

uint64_t sub_223781E74()
{
  result = sub_2237B598C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_223781F08()
{
  result = sub_223781F7C();
  if (v1 <= 0x3F)
  {
    result = sub_2237B59CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_223781F7C()
{
  result = qword_27D097968;
  if (!qword_27D097968)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D097968);
  }

  return result;
}

uint64_t sub_223781FF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
  *(v1 + 24) = sub_2237B5DBC();
  *(v1 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A0, qword_2237B8340);
  *(v1 + 40) = OUTLINED_FUNCTION_24_0();
  *(v1 + 48) = OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = a1;
  return v1;
}

void sub_223782098()
{
  if (*(v0 + 32) == 1)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v1 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v1, qword_28131B550);
    oslog = sub_2237B5C8C();
    v2 = sub_2237B601C();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_22375F000, oslog, v2, "MessageBus was already started before", v3, 2u);
      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    v4 = v0;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v5 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v5, qword_28131B550);
    v6 = sub_2237B5C8C();
    v7 = sub_2237B601C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22375F000, v6, v7, "MessageBus was started", v8, 2u);
      OUTLINED_FUNCTION_8();
    }

    *(v4 + 32) = 1;
  }
}

uint64_t sub_223782228(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    if (qword_28131AA10 != -1)
    {
LABEL_36:
      OUTLINED_FUNCTION_0_4();
    }

    v3 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v3, qword_28131B550);
    v4 = sub_2237B5C8C();
    v5 = sub_2237B5FFC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22375F000, v4, v5, "Cannot register bridge after message bus was started", v6, 2u);
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  v7 = v2;
  swift_getObjectType();
  sub_2237B568C();
  OUTLINED_FUNCTION_17_0();
  v10 = *(v2 + 24);

  v11 = OUTLINED_FUNCTION_19_2();
  v13 = sub_2237725B0(v11, v12, v10);

  if (v13)
  {
    swift_unknownObjectRelease();
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v14 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v14, qword_28131B550);
    swift_unknownObjectRetain();
    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v73[0] = v18;
      *v17 = 136315138;
      OUTLINED_FUNCTION_6_2();
      v19 = sub_2237B568C();
      v21 = sub_223763694(v19, v20, v73);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22375F000, v15, v16, "Bridge: %s is already register message types, ignore this register", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  OUTLINED_FUNCTION_6_2();
  v23 = sub_2237B565C();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v24 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v24, qword_28131B550);
  swift_unknownObjectRetain();

  v25 = sub_2237B5C8C();
  v26 = sub_2237B5FEC();
  swift_unknownObjectRelease();

  v68 = v23;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v7;
    v28 = OUTLINED_FUNCTION_25_0();
    v73[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
    v30 = MEMORY[0x223DEAB90](v68, v29);
    v32 = sub_223763694(v30, v31, v73);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    OUTLINED_FUNCTION_6_2();
    v33 = sub_2237B568C();
    v35 = sub_223763694(v33, v34, v73);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_22375F000, v25, v26, "registering messages %s to consume by bridge %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v7 = v27;
    v23 = v68;
    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_6_2();
  sub_2237B568C();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v36 = *(v7 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v7 + 24);
  v67 = a1;
  sub_2237B282C();
  *(v7 + 24) = v71;

  swift_endAccess();
  v37 = *(v23 + 16);
  if (!v37)
  {
LABEL_33:

    return 1;
  }

  v66 = a2;
  OUTLINED_FUNCTION_17_0();
  v38 = 32;
  while (1)
  {
    v72 = *(v23 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
    v39 = sub_2237B5E3C();
    v41 = v40;
    v42 = *(v7 + 48);
    v43 = *(v42 + 16);

    v69 = v41;
    if (v43 && (OUTLINED_FUNCTION_22(), v44 = sub_22376504C(), (v45 & 1) != 0))
    {
      v46 = *(*(v42 + 56) + 8 * v44);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097970, &qword_2237B8310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2237B82B0;
    *(inited + 32) = v67;
    *(inited + 40) = v66;
    swift_unknownObjectRetain();
    sub_223782B38(inited);
    v48 = v46;
    swift_beginAccess();
    v49 = *(v7 + 48);
    swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v7 + 48);
    v70 = v50;
    v51 = v7;
    *(v7 + 48) = 0x8000000000000000;
    v52 = v39;
    v53 = sub_22376504C();
    if (__OFADD__(v50[2], (v54 & 1) == 0))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v55 = v53;
    v56 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097978, &qword_2237B8318);
    if (sub_2237B618C())
    {
      break;
    }

    v57 = v69;
LABEL_28:
    if (v56)
    {
      v60 = v50[7];
      v61 = *(v60 + 8 * v55);
      *(v60 + 8 * v55) = v48;
    }

    else
    {
      v50[(v55 >> 6) + 8] |= 1 << v55;
      v62 = (v50[6] + 16 * v55);
      *v62 = v52;
      v62[1] = v57;
      *(v50[7] + 8 * v55) = v48;
      v63 = v50[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_35;
      }

      v50[2] = v65;
    }

    v7 = v51;
    *(v51 + 48) = v70;
    swift_endAccess();
    v38 += 8;
    --v37;
    v23 = v68;
    if (!v37)
    {
      goto LABEL_33;
    }
  }

  v57 = v69;
  v58 = sub_22376504C();
  if ((v56 & 1) == (v59 & 1))
  {
    v55 = v58;
    goto LABEL_28;
  }

  result = sub_2237B62CC();
  __break(1u);
  return result;
}

uint64_t sub_2237828B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t sub_2237828E8()
{
  sub_2237828B0();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_223782940(void (*a1)(void))
{
  a1();

  return sub_2237B63FC();
}

uint64_t sub_22378297C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2237B82C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2237829E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097998, &qword_2237B8338);
  v2 = *v0;
  v3 = sub_2237B610C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223782B38(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2237A6CF0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t sub_223782C28()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E8, &qword_2237B8530);
  OUTLINED_FUNCTION_10_2();
  return v3;
}

uint64_t sub_223782CA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  sub_2237B2C14();
  v7 = v6;

  *a2 = v7;
  return result;
}

void sub_223782D48()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B56DC();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_2();
  v12 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  (*(v9 + 16))(v1, v3, v6);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v5;
  (*(v9 + 32))(v14 + v13, v1, v6);
  OUTLINED_FUNCTION_5_3();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2237850A0;
  *(v15 + 24) = v14;
  v18[4] = sub_2237750B8;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v18[2] = v16;
  v18[3] = &block_descriptor_39;
  v17 = _Block_copy(v18);

  dispatch_sync(v12, v17);
  _Block_release(v17);
  LOBYTE(v5) = OUTLINED_FUNCTION_9_3();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223782F3C()
{
  swift_beginAccess();
  sub_2237B303C();
  return swift_endAccess();
}

uint64_t sub_223782FA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979F0, &qword_2237B8538);
  OUTLINED_FUNCTION_10_2();
  return v3;
}

uint64_t sub_22378301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_2237B38BC(a2, v7);

  *a3 = v8;
  return result;
}

uint64_t sub_2237830BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E8, &qword_2237B8530);
  OUTLINED_FUNCTION_10_2();
  return v3;
}

uint64_t sub_223783130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  sub_2237B39EC();
  v7 = v6;

  *a2 = v7;
  return result;
}

uint64_t sub_2237831D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  OUTLINED_FUNCTION_5_3();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_223784B60;
  *(v9 + 24) = v8;
  v12[4] = sub_2237750B8;
  v12[5] = v9;
  OUTLINED_FUNCTION_2_3();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v12[2] = v10;
  v12[3] = &block_descriptor_29;
  _Block_copy(v12);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v7, v3);
  _Block_release(v3);
  LOBYTE(v7) = OUTLINED_FUNCTION_9_3();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22378330C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  swift_beginAccess();

  v10 = sub_223784B6C(v7, v8, a2, a3);
  swift_endAccess();
  v11 = &unk_28131B000;
  v12 = 0x28131A000uLL;
  v13 = &off_2237B7000;
  if (v10)
  {
    sub_223785014(v10);
    if (qword_28131AA10 != -1)
    {
LABEL_22:
      swift_once();
    }

    v14 = sub_2237B5C9C();
    __swift_project_value_buffer(v14, qword_28131B550);

    v15 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = a2;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46[0] = v19;
      *v18 = *(v13 + 225);
      *(v18 + 4) = sub_223763694(v17, a3, v46);
      _os_log_impl(&dword_22375F000, v15, v16, "Overwrote snapshot %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x223DEB690](v19, -1, -1);
      a2 = v17;
      v12 = 0x28131A000uLL;
      MEMORY[0x223DEB690](v18, -1, -1);
    }

    v20 = v11[180];
    swift_beginAccess();

    result = sub_223784CB0((a1 + v20), a2, a3);
    v22 = *(*(a1 + v20) + 16);
    if (v22 < result)
    {
      __break(1u);
      return result;
    }

    sub_223784EE4(result, v22);
    swift_endAccess();
  }

  v11 = v11[180];
  swift_beginAccess();

  sub_2237A685C();
  v23 = *(*(v11 + a1) + 16);
  sub_2237A6874(v23);
  v24 = *(v11 + a1);
  *(v24 + 16) = v23 + 1;
  v25 = v24 + 16 * v23;
  v26 = a2;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;
  *(v11 + a1) = v24;
  result = swift_endAccess();
  v44 = *(v13 + 225);
  while (*(*(v11 + a1) + 16) >= 6uLL)
  {
    if (*(v12 + 2576) != -1)
    {
      swift_once();
    }

    v27 = sub_2237B5C9C();
    __swift_project_value_buffer(v27, qword_28131B550);

    v28 = sub_2237B5C8C();
    v13 = sub_2237B5FEC();

    if (os_log_type_enabled(v28, v13))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = v44;
      *(v29 + 4) = sub_223763694(v26, a3, v46);
      _os_log_impl(&dword_22375F000, v28, v13, "Reached max count, removing snapshot %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223DEB690](v30, -1, -1);
      MEMORY[0x223DEB690](v29, -1, -1);
    }

    swift_beginAccess();
    v12 = *(v11 + a1);
    a2 = *(v12 + 16);
    if (!a2)
    {
      __break(1u);
      goto LABEL_22;
    }

    v31 = *(v12 + 32);
    v32 = *(v12 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + a1) = v12;
    if (!isUniquelyReferenced_nonNull_native || (a2 - 1) > *(v12 + 24) >> 1)
    {
      v12 = sub_2237A68B0(isUniquelyReferenced_nonNull_native, a2, 1, v12);
      *(v11 + a1) = v12;
    }

    sub_223784FC0(v12 + 32);
    v34 = *(v12 + 16);
    memmove((v12 + 32), (v12 + 48), 16 * v34 - 16);
    *(v12 + 16) = v34 - 1;
    *(v11 + a1) = v12;
    swift_endAccess();
    swift_beginAccess();
    v35 = *(a1 + v9);
    v36 = sub_22376504C();
    LOBYTE(v35) = v37;

    if (v35)
    {
      v38 = *(a1 + v9);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a1 + v9);
      *(a1 + v9) = 0x8000000000000000;
      v39 = v45[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E0, &qword_2237B8528);
      sub_2237B618C();
      v40 = *(v45[6] + 16 * v36 + 8);

      v41 = (v45[7] + 16 * v36);
      v43 = *v41;
      v42 = v41[1];

      sub_2237B619C();
      *(a1 + v9) = v45;
    }

    result = swift_endAccess();
    v12 = 0x28131A000;
  }

  return result;
}

uint64_t sub_22378385C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  OUTLINED_FUNCTION_5_3();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_223784B54;
  *(v9 + 24) = v8;
  v12[4] = sub_223761F48;
  v12[5] = v9;
  OUTLINED_FUNCTION_2_3();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v12[2] = v10;
  v12[3] = &block_descriptor_1;
  _Block_copy(v12);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v7, v3);
  _Block_release(v3);
  LOBYTE(v7) = OUTLINED_FUNCTION_9_3();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_223783998(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_2237B1EE8(a2, a3, v7);
  v10 = v9;

  if (v8)
  {
    if (qword_28131AA10 != -1)
    {
      swift_once();
    }

    v11 = sub_2237B5C9C();
    __swift_project_value_buffer(v11, qword_28131B550);

    v12 = sub_2237B5C8C();
    v13 = sub_2237B5FEC();

    if (os_log_type_enabled(v12, v13))
    {
      v33 = v10;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_223763694(a2, a3, v34);
      _os_log_impl(&dword_22375F000, v12, v13, "Restoring to snapshot %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223DEB690](v15, -1, -1);
      v16 = v14;
      v10 = v33;
      MEMORY[0x223DEB690](v16, -1, -1);
    }

    v17 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];
    *v17 = v8;
    v17[1] = v10;

    v20 = sub_2237B5C8C();
    v21 = sub_2237B5FEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22375F000, v20, v21, "Clearing all existing snapshots.", v22, 2u);
      MEMORY[0x223DEB690](v22, -1, -1);
    }

    v23 = MEMORY[0x277D84F90];
    v24 = sub_2237B5DBC();
    v25 = *(a1 + v6);
    *(a1 + v6) = v24;

    v26 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds;
    swift_beginAccess();
    v27 = *(a1 + v26);
    *(a1 + v26) = v23;
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      swift_once();
    }

    v28 = sub_2237B5C9C();
    __swift_project_value_buffer(v28, qword_28131B550);

    v29 = sub_2237B5C8C();
    v30 = sub_2237B5FFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_223763694(a2, a3, v34);
      _os_log_impl(&dword_22375F000, v29, v30, "Cannot restore. There is no snapshot %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x223DEB690](v32, -1, -1);
      MEMORY[0x223DEB690](v31, -1, -1);
    }
  }
}

uint64_t sub_223783D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979D8, &qword_2237B8520);
  return sub_2237B606C();
}

uint64_t sub_223783DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v4 = sub_2237B5C9C();
  __swift_project_value_buffer(v4, qword_28131B550);
  v5 = sub_2237B5C8C();
  v6 = sub_2237B5FEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22375F000, v5, v6, "Creating an immutable snapshot of ConversationSession", v7, 2u);
    MEMORY[0x223DEB690](v7, -1, -1);
  }

  v8 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = type metadata accessor for ImmutableConversationSession();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  a2[3] = v11;
  a2[4] = sub_223766698(qword_28131AC50, v13, type metadata accessor for ImmutableConversationSession);
  *a2 = v12;
}

uint64_t sub_223783F60()
{
  result = sub_2237B412C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2237B563C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223784070()
{
  v1 = (*v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_2237841B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2237B2C14();
}

double sub_2237841C4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (sub_223774D10(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_22376AEC8(v6, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_223784228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2237B39EC();
}

uint64_t sub_223784230(void *a1)
{
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979D0, &qword_2237B8518);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v25 - v11;
  v13 = objc_opt_self();
  v14 = *(v1 + 24);
  v26 = *(v1 + 16);
  v27 = v14;

  v15 = sub_2237B62AC();
  v26 = 0;
  v16 = [v13 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v26];
  swift_unknownObjectRelease();
  v17 = v26;
  if (v16)
  {
    v18 = sub_2237B408C();
    v25 = v3;
    v20 = v19;

    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_223784A90();
    sub_2237B63CC();
    v26 = v18;
    v27 = v20;
    sub_22377DBE4();
    sub_2237B626C();
    (*(v8 + 8))(v12, v5);
    result = sub_22377B340(v18, v20);
  }

  else
  {
    v23 = v17;
    sub_2237B406C();

    result = swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223784454(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_3();
  v2 = swift_allocObject();
  sub_2237844A0(a1);
  return v2;
}

uint64_t sub_2237844A0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979B0, &unk_2237B8508);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223784A90();
  sub_2237B63BC();
  if (!v2)
  {
    sub_22377DC38();
    sub_2237B621C();
    sub_223766240(0, &qword_27D0979C0, 0x277CCAAC8);
    OUTLINED_FUNCTION_13_3();
    sub_2237B602C();
    if (v20[3])
    {
      if (swift_dynamicCast())
      {
        v12 = OUTLINED_FUNCTION_13_3();
        sub_22377B340(v12, v13);
        v14 = OUTLINED_FUNCTION_6_3();
        v15(v14);
        *(v1 + 16) = v19;
        goto LABEL_4;
      }
    }

    else
    {
      sub_223774CA8(v20);
    }

    sub_223784AE4();
    swift_allocError();
    *v16 = 0xD000000000000023;
    v16[1] = 0x80000002237B9DF0;
    swift_willThrow();
    v17 = OUTLINED_FUNCTION_13_3();
    sub_22377B340(v17, v18);
    v9 = OUTLINED_FUNCTION_6_3();
    v10(v9);
  }

  type metadata accessor for ImmutableConversationSession();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

BOOL sub_223784748@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22377896C();
  *a2 = result;
  return result;
}

uint64_t sub_22378477C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223784718();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2237847A8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_22377896C();
  *a1 = result;
  return result;
}

uint64_t sub_2237847F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22377C9B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22378481C(uint64_t a1)
{
  v2 = sub_223784A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223784858(uint64_t a1)
{
  v2 = sub_223784A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223784894()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_2237849B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_223784454(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_223784A90()
{
  result = qword_27D0979B8;
  if (!qword_27D0979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979B8);
  }

  return result;
}

unint64_t sub_223784AE4()
{
  result = qword_27D0979C8;
  if (!qword_27D0979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979C8);
  }

  return result;
}

uint64_t sub_223784B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  v10 = sub_22376504C();
  if (__OFADD__(v19[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979E0, &qword_2237B8528);
  if (sub_2237B618C())
  {
    v14 = sub_22376504C();
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v13)
  {
    v16 = (v19[7] + 16 * v12);
    result = *v16;
    v18 = v16[1];
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_2237B2A8C(v12, a3, a4, a1, a2, v19);

    result = 0;
  }

  *v4 = v19;
  return result;
}

uint64_t sub_223784CB0(char **a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  result = sub_223784E40(v7, a2, a3);
  v10 = result;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v10 = *(v7 + 2);
LABEL_21:

    return v10;
  }

  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v25 = a1;
    for (i = 16 * result; ; i += 16)
    {
      v13 = *(v7 + 2);
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

      v14 = *&v7[i + 48];
      v15 = *&v7[i + 56];
      if (v14 != a2 || v15 != a3)
      {
        v17 = *&v7[i + 48];
        v18 = *&v7[i + 56];
        result = sub_2237B629C();
        if ((result & 1) == 0)
        {
          if (v11 != v10)
          {
            if (v10 >= v13)
            {
              goto LABEL_23;
            }

            v19 = &v7[16 * v10 + 32];
            v20 = *(v19 + 1);
            v26 = *v19;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_223785054(v7);
            }

            v21 = &v7[16 * v10];
            v22 = *(v21 + 5);
            *(v21 + 4) = v14;
            *(v21 + 5) = v15;

            if (v11 >= *(v7 + 2))
            {
              goto LABEL_24;
            }

            v23 = &v7[i];
            v24 = *&v7[i + 56];
            *(v23 + 6) = v26;
            *(v23 + 7) = v20;

            *v25 = v7;
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

uint64_t sub_223784E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_2237B629C() & 1) != 0)
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

uint64_t sub_223784EE4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2237A6D08(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2237A6C84((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_223785014(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2237850A0()
{
  v1 = sub_2237B56DC();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_223782F3C();
}

uint64_t sub_223785100@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_223782CA0(v1[2], a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22378512C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22378516C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImmutableConversationSession.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ImmutableConversationSession.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2237852C4()
{
  result = qword_27D0979F8;
  if (!qword_27D0979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0979F8);
  }

  return result;
}

unint64_t sub_22378531C()
{
  result = qword_27D097A00;
  if (!qword_27D097A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A00);
  }

  return result;
}

unint64_t sub_223785374()
{
  result = qword_27D097A08;
  if (!qword_27D097A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A08);
  }

  return result;
}

uint64_t sub_2237853F4(uint64_t a1, SEL *a2)
{
  v4 = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_2237B413C();
    [v6 *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_223785488(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v4 = sub_2237B415C();
  v36 = *(v4 - 8);
  v5 = v36;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v41 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A28, &unk_2237B8768);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v40 = sub_2237B42FC();
  v38 = *(v40 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v37 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___SRDIntelligenceFlowAssetsStatusProvider_assetsClient] = 0;
  swift_unknownObjectWeakAssign();
  v42.receiver = v2;
  v42.super_class = SRDIntelligenceFlowAssetsStatusProvider;
  v23 = objc_msgSendSuper2(&v42, sel_init);
  sub_2237B42EC();
  v24 = *(v5 + 16);
  v34 = v4;
  v35 = a2;
  v24(v13, a2, v4);
  v24(v11, a2, v4);
  v24(v41, a2, v4);
  sub_2237B41DC();
  v25 = sub_2237B41EC();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
  sub_2237B42DC();
  sub_2237859BC();
  v26 = v38;
  v27 = v40;
  (*(v38 + 16))(v37, v22, v40);
  v28 = sub_2237B41BC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_2237B41CC();
  swift_unknownObjectRelease();
  (*(v36 + 8))(v35, v34);
  (*(v26 + 8))(v22, v27);
  v32 = *&v23[OBJC_IVAR___SRDIntelligenceFlowAssetsStatusProvider_assetsClient];
  *&v23[OBJC_IVAR___SRDIntelligenceFlowAssetsStatusProvider_assetsClient] = v31;

  return v23;
}

void __swiftcall SRDIntelligenceFlowAssetsStatusProvider.init()(SRDIntelligenceFlowAssetsStatusProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SRDIntelligenceFlowAssetsStatusProvider()
{
  result = qword_27D097A20;
  if (!qword_27D097A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D097A20);
  }

  return result;
}

unint64_t sub_2237859BC()
{
  result = qword_27D097A30;
  if (!qword_27D097A30)
  {
    type metadata accessor for SRDIntelligenceFlowAssetsStatusProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A30);
  }

  return result;
}

uint64_t sub_223785A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_223785D1C();
  result = sub_2237B609C();
  *a4 = result;
  return result;
}

uint64_t sub_223785AF0()
{
  sub_223785D1C();
  result = sub_2237B609C();
  qword_27D0999D8 = result;
  return result;
}

uint64_t sub_223785B58()
{
  sub_223785D1C();
  result = sub_2237B609C();
  qword_27D0999E0 = result;
  return result;
}

uint64_t sub_223785C70(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_2237B5C9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_2237B5CAC();
}

unint64_t sub_223785D1C()
{
  result = qword_28131A7B8;
  if (!qword_28131A7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131A7B8);
  }

  return result;
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

uint64_t sub_223786160()
{
  type metadata accessor for MessageBusInstrumentationUtil();
  swift_allocObject();
  result = sub_22378619C();
  qword_28131B5E0 = result;
  return result;
}

uint64_t sub_22378619C()
{
  *(v0 + 16) = [objc_opt_self() sharedStream];
  v1 = sub_2237B585C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_2237B584C();
  return v0;
}

void sub_22378623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, SEL *a6, const char *a7)
{
  v10 = v7;
  v11 = [objc_allocWithZone(*a5) init];
  if (v11)
  {
    v25 = v11;
    [v11 setExists:1];
    v12 = *(v7 + 24);
    v13 = sub_2237B583C();
    if (v13)
    {
      v14 = v13;
      [v13 *a6];
      [*(v10 + 16) emitMessage_];

      v15 = v14;
      goto LABEL_14;
    }

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v19 = sub_2237B5C9C();
    v20 = OUTLINED_FUNCTION_9_4(v19, qword_28131B550);
    v21 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v21))
    {
      v22 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v22);
      OUTLINED_FUNCTION_2_4(&dword_22375F000, v23, v24, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v16 = sub_2237B5C9C();
    v25 = OUTLINED_FUNCTION_9_4(v16, qword_28131B550);
    v17 = sub_2237B5FFC();
    if (os_log_type_enabled(v25, v17))
    {
      v18 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v18);
      OUTLINED_FUNCTION_10_3(&dword_22375F000, v25, v17, a7);
      OUTLINED_FUNCTION_3_0();
    }
  }

  v15 = v25;
LABEL_14:
}

void sub_223786408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D597A8]) init];
  if (!v8)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v22 = sub_2237B5C9C();
    v34 = OUTLINED_FUNCTION_9_4(v22, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v34, v23))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_21_1(&dword_22375F000, v24, v25, "The request canclled event wasn't created");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_21;
  }

  v34 = v8;
  [v8 setReason:2];
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  v10 = sub_2237B583C();
  if (!v10)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v27 = sub_2237B5C9C();
    v28 = OUTLINED_FUNCTION_9_4(v27, qword_28131B550);
    v29 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v29))
    {
      v30 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v30);
      OUTLINED_FUNCTION_2_4(&dword_22375F000, v31, v32, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_3_0();
    }

LABEL_21:
    v26 = v34;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
  v13 = v12;
  v33 = v12;
  if (v12)
  {
    [v12 setCancelled:v34];
    v13 = v33;
  }

  [v11 setRequestContext_];
  [*(v1 + 16) emitMessage_];
  v14 = sub_2237B582C();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 captureSnapshot];

    if (v16)
    {
      v17 = [objc_opt_self() context];
      if (v17)
      {
        v18 = v17;
        OUTLINED_FUNCTION_19_3();
        sub_2237B40EC();
        v19 = sub_2237B412C();
        v20 = 0;
        if (__swift_getEnumTagSinglePayload(v7, 1, v19) != 1)
        {
          v20 = sub_2237B410C();
          OUTLINED_FUNCTION_8_4(v19);
          (*(v21 + 8))(v7, v19);
        }

        [v16 logWithEventContext:v18 requestIdentifier:v20];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v26 = v33;
LABEL_22:
}

uint64_t sub_22378675C()
{
  v1 = v0;
  v2 = sub_2237B561C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D5D230])
  {
    return 1;
  }

  if (v11 == *MEMORY[0x277D5D238])
  {
    return 2;
  }

  (*(v5 + 8))(v10, v2);
  return 0;
}

uint64_t sub_22378687C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2237868A4()
{
  sub_22378687C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22378692C(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x5265747563657865;
  }
}

uint64_t sub_223786974()
{
  v0 = sub_2237B5C9C();
  __swift_allocate_value_buffer(v0, qword_27D097A58);
  v1 = __swift_project_value_buffer(v0, qword_27D097A58);
  if (qword_27D0972A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D099A00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_223786A3C()
{
  v2 = *v0;
  sub_2237B5C4C();
  v3 = sub_2237B5C3C();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
  }

  return v0;
}

uint64_t sub_223786AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[4] = a1;
  v56 = a2;
  v2 = sub_2237B412C();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46[5] = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2237B5BEC();
  v50 = *(v52 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v49 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v53 = v46 - v11;
  MEMORY[0x28223BE20](v10);
  v46[3] = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A80, &unk_2237B88D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v46 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v46 - v33;
  v35 = sub_2237B5BAC();
  v57 = *(v35 - 8);
  v36 = *(v57 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v2);
  v55 = sub_2237B5C6C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v55);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v2);
  v48 = v2;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v2);
  sub_2237B5DBC();
  sub_2237B5BCC();
  v39 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v39);
  v40 = sub_2237B5BFC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v40);
  v41 = v57;
  sub_2237B5A8C();
  (*(v41 + 104))(v38, *MEMORY[0x277CEDFC0], v35);
  if (*(v54 + 16))
  {
    v42 = *(v54 + 16);

    v43 = v56;
    sub_2237B5C1C();
    (*(v41 + 8))(v38, v35);

    v44 = 0;
  }

  else
  {
    (*(v41 + 8))(v38, v35);
    v44 = 1;
    v43 = v56;
  }

  return __swift_storeEnumTagSinglePayload(v43, v44, 1, v55);
}

uint64_t sub_2237873F4(uint64_t a1, char *a2)
{
  v113 = a2;
  v3 = sub_2237B412C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v108 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v101 = v8 - v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v99 = v98 - v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_2237B5BEC();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v104 = v14;
  v105 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v102 = v17 - v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13_4();
  v103 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_13_4();
  v106 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v100 = v98 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A80, &unk_2237B88D8);
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v112 = v98 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v98 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v41 = MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v41);
  v42 = sub_2237B5BAC();
  v43 = OUTLINED_FUNCTION_0_2(v42);
  v115 = v44;
  v116 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  v51 = OUTLINED_FUNCTION_1(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3();
  v98[2] = v54 - v55;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13_4();
  v109 = v57;
  OUTLINED_FUNCTION_7();
  v59 = MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v59);
  v61 = v98 - v60;
  v107 = a1;
  sub_223786AD0(a1, v98 - v60);
  v110 = "com.apple.siri.assistant";
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v3);
  sub_2237B5C6C();
  OUTLINED_FUNCTION_11_4();
  v98[1] = v65;
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v3);
  OUTLINED_FUNCTION_11_4();
  v114 = v3;
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v3);
  v75 = sub_223787F98(v113);
  sub_223788134(v75);

  sub_2237B5DBC();
  OUTLINED_FUNCTION_6_4();
  sub_2237B5BCC();
  v76 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v76);
  sub_2237B5BFC();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  v81 = v115;
  sub_2237B5A8C();
  (*(v81 + 104))(v49, *MEMORY[0x277CEDFC0], v116);
  if (*(v111 + 16))
  {
    v82 = *(v111 + 16);

    sub_2237B5C0C();

    (*(v81 + 8))(v49, v116);
    v96 = v61;
  }

  else
  {
    v83 = v99;
    v113 = v61;
    if (qword_27D0972B8 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    v84 = sub_2237B5C9C();
    __swift_project_value_buffer(v84, qword_27D097A58);
    v85 = v108;
    v86 = v114;
    (*(v108 + 16))(v83, v107, v114);
    v87 = sub_2237B5C8C();
    v88 = sub_2237B5FFC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v117 = v90;
      *v89 = 136315138;
      v91 = sub_2237B40FC();
      v92 = v83;
      v94 = v93;
      (*(v85 + 8))(v92, v86);
      v95 = sub_223763694(v91, v94, &v117);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_22375F000, v87, v88, "eventReporter is nil, NOT emitting AIR events for request start/end. requestID : %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {

      (*(v85 + 8))(v83, v86);
    }

    (*(v81 + 8))(v49, v116);
    v96 = v113;
  }

  return sub_2237692F0(v96, &qword_27D097A88, &qword_2237B88E8);
}

char *sub_223787F98(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_2237A69B8(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v2 + 3);
  if (*(v2 + 2) >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_5_4(v3);
  }

  OUTLINED_FUNCTION_14_4();
  *(v4 + 32) = 0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_4_5();
    }

    OUTLINED_FUNCTION_9_5();
    if (v6)
    {
      v2 = OUTLINED_FUNCTION_5_4(v5);
    }

    OUTLINED_FUNCTION_14_4();
    *(v7 + 32) = 1;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_4_5();
    }

    OUTLINED_FUNCTION_9_5();
    if (v6)
    {
      v2 = OUTLINED_FUNCTION_5_4(v8);
    }

    OUTLINED_FUNCTION_14_4();
    *(v9 + 32) = 2;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        return v2;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_4_5();
  }

  OUTLINED_FUNCTION_9_5();
  if (v6)
  {
    v2 = OUTLINED_FUNCTION_5_4(v10);
  }

  OUTLINED_FUNCTION_14_4();
  *(v11 + 32) = 3;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_4_5();
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_2237A69B8((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v2[v13 + 32] = 4;
  }

  return v2;
}

uint64_t sub_223788134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_223779F24(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_223779F24(v7 > 1, v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for SiriCapabilityError;
      v12 = sub_223788D2C();
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_2237709BC(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22378821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7)
{
  v122 = a6;
  v114 = a7;
  LODWORD(v123) = a5;
  v119 = a3;
  v120 = a4;
  v117 = a1;
  v118 = a2;
  v110 = sub_2237B5BEC();
  v7 = OUTLINED_FUNCTION_0_2(v110);
  v109 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v108 = v11 - v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_4();
  v111 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_4();
  v112 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v107[1] = v107 - v18;
  OUTLINED_FUNCTION_12();
  v19 = sub_2237B5BAC();
  v124 = OUTLINED_FUNCTION_0_2(v19);
  v125 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_1_0();
  v128 = v24 - v23;
  OUTLINED_FUNCTION_12();
  v25 = sub_2237B5A9C();
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v115 = v27;
  v116 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A70, &qword_2237B88C8);
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = v107 - v37;
  v39 = sub_2237B5B0C();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v47 = v46 - v45;
  v48 = sub_2237B5B2C();
  v49 = OUTLINED_FUNCTION_0_2(v48);
  v126 = v50;
  v127 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v130 = v54 - v53;
  OUTLINED_FUNCTION_12();
  v131 = sub_2237B5AFC();
  v55 = OUTLINED_FUNCTION_0_2(v131);
  v129 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v132 = (v60 - v59);
  OUTLINED_FUNCTION_12();
  v61 = sub_2237B5ABC();
  v62 = OUTLINED_FUNCTION_1(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v67 = v66 - v65;
  v68 = sub_2237B5ADC();
  v69 = OUTLINED_FUNCTION_0_2(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_3();
  v76 = v74 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = v107 - v78;
  if (v123)
  {
    v80 = MEMORY[0x277CEDF30];
  }

  else
  {
    if (v114 < 0)
    {
      goto LABEL_20;
    }

    sub_2237B5AAC();
    sub_2237B5ACC();
    v80 = MEMORY[0x277CEDF28];
  }

  (*(v71 + 104))(v79, *v80, v68);
  v114 = v71;
  v81 = *(v71 + 16);
  v113 = v79;
  v123 = v68;
  v81(v76, v79, v68);
  v79 = v132;
  sub_2237B5AEC();
  v82 = *(v42 + 104);
  v42 += 104;
  v82(v47, *MEMORY[0x277CEDF78], v39);
  sub_2237B5DBC();
  v67 = v125;
  if (HIDWORD(v122))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    OUTLINED_FUNCTION_1_5();
    v89 = sub_2237B5C9C();
    __swift_project_value_buffer(v89, qword_27D097A58);
    v90 = v42;
    v91 = *(v42 + 16);
    v92 = v108;
    v91(v108, v68, v79);
    v93 = sub_2237B5C8C();
    LODWORD(v122) = sub_2237B5FFC();
    if (os_log_type_enabled(v93, v122))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138412290;
      sub_223788C64();
      swift_allocError();
      v91(v96, v92, v79);
      v97 = _swift_stdlib_bridgeErrorToNSError();
      v98 = *(v90 + 8);
      v98(v92, v79);
      *(v94 + 4) = v97;
      *v95 = v97;
      v67 = v125;
      _os_log_impl(&dword_22375F000, v93, v122, "Failed to emit availability reporting event with error %@", v94, 0xCu);
      sub_2237692F0(v95, &qword_27D097BE0, &qword_2237B88D0);
      v32 = v124;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      v98(v111, v79);
    }

    else
    {

      v105 = *(v90 + 8);
      v105(v92, v79);
      v105(v68, v79);
    }

    v85 = v127;
    v87 = v128;
    v86 = v126;
    goto LABEL_17;
  }

  v134 = 0;
  OUTLINED_FUNCTION_6_4();
  sub_2237B5BBC();
  v83 = sub_2237B5BDC();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v83);
  (*(v129 + 16))(v32, v79, v131);
  (*(v115 + 104))(v32, *MEMORY[0x277CEDF10], v116);
  v133 = 1;
  v84 = v130;
  sub_2237B5B1C();
  v86 = v126;
  v85 = v127;
  v87 = v128;
  (*(v126 + 16))(v128, v84, v127);
  v32 = v124;
  (*(v67 + 104))(v87, *MEMORY[0x277CEDFB0], v124);
  if (*(v121 + 16))
  {
    v88 = *(v121 + 16);

    sub_2237B5C2C();

LABEL_17:
    v103 = v132;
    goto LABEL_18;
  }

  if (qword_27D0972B8 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v99 = sub_2237B5C9C();
  __swift_project_value_buffer(v99, qword_27D097A58);
  v100 = sub_2237B5C8C();
  v101 = sub_2237B5FFC();
  v102 = os_log_type_enabled(v100, v101);
  v103 = v132;
  if (v102)
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_22375F000, v100, v101, "eventReporter is nil, NOT emitting AIR availability event", v104, 2u);
    OUTLINED_FUNCTION_8();
  }

LABEL_18:
  (*(v67 + 8))(v87, v32);
  (*(v86 + 8))(v130, v85);
  (*(v129 + 8))(v103, v131);
  return (*(v114 + 8))(v113, v123);
}

uint64_t sub_223788C08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_223788C64()
{
  result = qword_27D097A78;
  if (!qword_27D097A78)
  {
    sub_2237B5BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A78);
  }

  return result;
}

uint64_t sub_223788CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A88, &qword_2237B88E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_223788D2C()
{
  result = qword_27D097A90;
  if (!qword_27D097A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097A90);
  }

  return result;
}

uint64_t sub_223788D80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002237BA130 == a2;
  if (v3 || (sub_2237B629C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E676E697373696DLL && a2 == 0xEF7374657373414CLL;
    if (v6 || (sub_2237B629C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000002237BA150 == a2;
      if (v7 || (sub_2237B629C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000002237BA170 == a2;
        if (v8 || (sub_2237B629C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x80000002237BA190 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_2237B629C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_223788F34(char a1)
{
  result = 0x4E676E697373696DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_22378900C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223788D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223789034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223788F2C();
  *a1 = result;
  return result;
}

uint64_t sub_22378905C(uint64_t a1)
{
  v2 = sub_223789784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789098(uint64_t a1)
{
  v2 = sub_223789784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237890D8(uint64_t a1)
{
  v2 = sub_22378982C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789114(uint64_t a1)
{
  v2 = sub_22378982C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223789150(uint64_t a1)
{
  v2 = sub_223789880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22378918C(uint64_t a1)
{
  v2 = sub_223789880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237891C8(uint64_t a1)
{
  v2 = sub_2237898D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223789204(uint64_t a1)
{
  v2 = sub_2237898D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223789240(uint64_t a1)
{
  v2 = sub_2237897D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22378927C(uint64_t a1)
{
  v2 = sub_2237897D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2237892B8(uint64_t a1)
{
  v2 = sub_223789928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2237892F4(uint64_t a1)
{
  v2 = sub_223789928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriCapabilityError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A98, &qword_2237B88F0);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_6();
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AA0, &qword_2237B88F8);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_6();
  v63 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AA8, &qword_2237B8900);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_6();
  v60 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AB0, &qword_2237B8908);
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v58 = v26;
  v59 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_6();
  v57 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AB8, &qword_2237B8910);
  v32 = OUTLINED_FUNCTION_0_2(v31);
  v55 = v33;
  v56 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v54 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097AC0, &qword_2237B8918);
  OUTLINED_FUNCTION_0_2(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v54 - v45;
  v47 = *v1;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223789784();
  sub_2237B63CC();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      v70 = 1;
      sub_2237898D4();
      v50 = v57;
      OUTLINED_FUNCTION_3_5();
      v52 = v58;
      v51 = v59;
      goto LABEL_7;
    case 2:
      v71 = 2;
      sub_223789880();
      v50 = v60;
      OUTLINED_FUNCTION_3_5();
      v52 = v61;
      v51 = v62;
      goto LABEL_7;
    case 3:
      v72 = 3;
      sub_22378982C();
      v50 = v63;
      OUTLINED_FUNCTION_3_5();
      v52 = v64;
      v51 = v65;
      goto LABEL_7;
    case 4:
      v73 = 4;
      sub_2237897D8();
      v50 = v66;
      OUTLINED_FUNCTION_3_5();
      v52 = v67;
      v51 = v68;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      v69 = 0;
      sub_223789928();
      sub_2237B623C();
      (*(v55 + 8))(v38, v56);
      break;
  }

  return (*v49)(v46, v39);
}

unint64_t sub_223789784()
{
  result = qword_27D097AC8;
  if (!qword_27D097AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AC8);
  }

  return result;
}

unint64_t sub_2237897D8()
{
  result = qword_27D097AD0;
  if (!qword_27D097AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AD0);
  }

  return result;
}

unint64_t sub_22378982C()
{
  result = qword_27D097AD8;
  if (!qword_27D097AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AD8);
  }

  return result;
}

unint64_t sub_223789880()
{
  result = qword_27D097AE0;
  if (!qword_27D097AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AE0);
  }

  return result;
}

unint64_t sub_2237898D4()
{
  result = qword_27D097AE8;
  if (!qword_27D097AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AE8);
  }

  return result;
}

unint64_t sub_223789928()
{
  result = qword_27D097AF0;
  if (!qword_27D097AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AF0);
  }

  return result;
}

uint64_t SiriCapabilityError.hashValue.getter()
{
  v2 = *v0;
  sub_2237B634C();
  sub_22378A10C();
  sub_2237B5DEC();
  return sub_2237B636C();
}

uint64_t SiriCapabilityError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B00, &qword_2237B8920);
  v81 = OUTLINED_FUNCTION_0_2(v3);
  v82 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v87 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B08, &qword_2237B8928);
  v79 = OUTLINED_FUNCTION_0_2(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v86 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B10, &qword_2237B8930);
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_6();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B18, &qword_2237B8938);
  v23 = OUTLINED_FUNCTION_0_2(v22);
  v75 = v24;
  v76 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B20, &qword_2237B8940);
  OUTLINED_FUNCTION_0_2(v30);
  v74 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v69 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B28, &qword_2237B8948);
  OUTLINED_FUNCTION_0_2(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223789784();
  v45 = v88;
  sub_2237B63BC();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v72 = v30;
  v73 = v36;
  v88 = v29;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = sub_2237B622C();
  result = sub_22378A5EC(v49, 0);
  if (v52 == v53 >> 1)
  {
    v54 = v85;
LABEL_9:
    v63 = sub_2237B616C();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B30, &qword_2237B8950) + 48);
    *v65 = &type metadata for SiriCapabilityError;
    sub_2237B61EC();
    sub_2237B615C();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v48, v37);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
  }

  else
  {
    v70 = *(v51 + v52);
    v55 = sub_22378A634(v52 + 1, v53 >> 1, result, v51, v52, v53);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 != v59 >> 1)
    {
      v54 = v85;
      v48 = v43;
      goto LABEL_9;
    }

    v60 = v84;
    v61 = v85;
    switch(v70)
    {
      case 1:
        v90 = 1;
        sub_2237898D4();
        v46 = v88;
        OUTLINED_FUNCTION_1_6();
        swift_unknownObjectRelease();
        v68 = v75;
        v67 = v76;
        goto LABEL_15;
      case 2:
        v91 = 2;
        sub_223789880();
        v46 = v83;
        OUTLINED_FUNCTION_1_6();
        swift_unknownObjectRelease();
        v68 = v77;
        v67 = v78;
        goto LABEL_15;
      case 3:
        v92 = 3;
        sub_22378982C();
        OUTLINED_FUNCTION_1_6();
        swift_unknownObjectRelease();
        v67 = v79;
        v68 = v80;
LABEL_15:
        (*(v68 + 8))(v46, v67);
        break;
      case 4:
        v93 = 4;
        sub_2237897D8();
        v55 = v43;
        sub_2237B61DC();
        swift_unknownObjectRelease();
        (*(v82 + 8))(v47, v81);
        break;
      default:
        v89 = 0;
        sub_223789928();
        v62 = v73;
        OUTLINED_FUNCTION_1_6();
        swift_unknownObjectRelease();
        (*(v74 + 8))(v62, v72);
        break;
    }

    (*(v61 + 8))(v55, v37);
    *v60 = v70;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return result;
}

uint64_t sub_22378A060(uint64_t a1, uint64_t a2)
{
  v4 = sub_223788D2C();

  return MEMORY[0x282140208](a1, a2, v4);
}

uint64_t sub_22378A0AC()
{
  v2 = *v0;
  sub_2237B634C();
  sub_2237B5DEC();
  return sub_2237B636C();
}

unint64_t sub_22378A10C()
{
  result = qword_27D097AF8;
  if (!qword_27D097AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097AF8);
  }

  return result;
}

uint64_t sub_22378A160(uint64_t a1)
{
  v2 = sub_22378A7E4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22378A19C(uint64_t a1)
{
  v2 = sub_22378A7E4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t SiriCapabilityError.descriptionWithoutUnderlying.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriCapabilityError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDEE0];
  v3 = sub_2237B5A7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22378A360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223788D2C();

  return MEMORY[0x282140200](a1, a2, a3, v6);
}

uint64_t SiriCapabilityError.description.getter()
{
  v1 = *v0;
  sub_22378A5C8(MEMORY[0x277D84F90], v13);
  sub_22378A6B0(v13, &v11);
  if (v12)
  {
    sub_2237709BC(&v11, v10);
    v2 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v3 = *(v2 + 24);
    v4 = sub_2237B627C();
    MEMORY[0x223DEAAD0](v4);

    v6 = 14906;
    v5 = 0xE200000000000000;
    sub_22378A720(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    sub_22378A720(v13);
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = "Siri NL assets are missing.";
  v8 = 0xD00000000000001FLL;
  switch(v1)
  {
    case 1:
      v7 = "ets are missing.";
      v8 = 0xD00000000000001BLL;
      break;
    case 2:
      v7 = "ssets are missing.";
      v8 = 0xD000000000000020;
      break;
    case 3:
      v7 = "sets are missing.";
      v8 = 0xD000000000000022;
      break;
    case 4:
      v7 = "f keys found, expected one.";
      v8 = 0xD000000000000021;
      break;
    default:
      break;
  }

  v13[0] = v8;
  v13[1] = v7 | 0x8000000000000000;

  MEMORY[0x223DEAAD0](v6, v5);

  return v13[0];
}

void sub_22378A540()
{
  sub_223788D2C();

  JUMPOUT(0x223DEA7B0);
}

double sub_22378A5C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_223781B5C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22378A5EC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_22378A634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22378A6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B38, &qword_2237B8958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22378A720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097B38, &qword_2237B8958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22378A78C()
{
  result = qword_27D097B40;
  if (!qword_27D097B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B40);
  }

  return result;
}

unint64_t sub_22378A7E4()
{
  result = qword_27D097B48;
  if (!qword_27D097B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B48);
  }

  return result;
}

unint64_t sub_22378A83C()
{
  result = qword_27D097B50;
  if (!qword_27D097B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B50);
  }

  return result;
}

unint64_t sub_22378A894()
{
  result = qword_27D097B58;
  if (!qword_27D097B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B58);
  }

  return result;
}

unint64_t sub_22378A8E8()
{
  result = qword_27D097B60;
  if (!qword_27D097B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B60);
  }

  return result;
}

uint64_t sub_22378A94C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}