uint64_t sub_1D8C938D8(char a1)
{
  sub_1D8C93BCC(a1);
  v2 = sub_1D8CD7AD4();

  v3 = MGCopyAnswer();

  if (v3 && (v22[2] = v3, swift_dynamicCast()))
  {
    v4 = v22[0];
    if (qword_1ED9C55C0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v5 = sub_1D8CD7A04();
    __swift_project_value_buffer(v5, qword_1ED9C55C8);
    v6 = sub_1D8CD79E4();
    v7 = sub_1D8CD7E14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315395;
      *(v8 + 4) = OUTLINED_FUNCTION_2_1(v9);
      *(v8 + 12) = 2085;
      v10 = sub_1D8C93BCC(a1);
      v12 = sub_1D8C9D088(v10, v11, v22);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_1D8C92000, v6, v7, "Got value of type %s for MGQuery with key %{sensitive}s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    if (qword_1ED9C55C0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v13 = sub_1D8CD7A04();
    __swift_project_value_buffer(v13, qword_1ED9C55C8);
    v14 = sub_1D8CD79E4();
    v15 = sub_1D8CD7E24();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315395;
      *(v16 + 4) = OUTLINED_FUNCTION_2_1(v17);
      *(v16 + 12) = 2085;
      v18 = sub_1D8C93BCC(a1);
      v20 = sub_1D8C9D088(v18, v19, v22);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1D8C92000, v14, v15, "Did not get value of type %s for MGQuery with key %{sensitive}s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_3_0();
    }

    return 0;
  }

  return v4;
}

unint64_t sub_1D8C93BCC(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_6()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x1DA727900);
}

void *OUTLINED_FUNCTION_0_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a14 = a17;
  a15 = a18;
  a13 = v20;

  return UserAgent.init(_:requestor:)(&a20, &a14, &a13);
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_17()
{
  v2 = *(v1 - 208);
  v3 = *(v0 + 40);
  *(v1 - 208) = *(v0 + 24);
  *(v1 - 192) = v3;
  result = *(v0 + 56);
  *(v1 - 176) = result;
  *(v1 - 160) = *(v0 + 72);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 41) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return MEMORY[0x1EEDC6A10](va, a2, a2, v4, v4);
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_22()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_1D8C94004()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ED9C55C8);
  __swift_project_value_buffer(v0, qword_1ED9C55C8);
  return sub_1D8CD79F4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_13()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v15 = a1[1];
  a10 = *a1;
  a11 = v15;
  v17 = a1[3];
  a12 = a1[2];
  v16 = a12;
  a13 = v17;
  *v13 = a10;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;

  return sub_1D8C969AC(&a10, &a2);
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_1D8CD7AC4();
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_1D8C980C0(v14, v12, a1, a2, a3, v10, v11, v13, a9, a10);
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1D8CD7524();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_1D8CD8154();
}

uint64_t NSURLSession.toDataSource(onSetup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for URLSessionDataSource();
  v8 = swift_allocObject();
  v9 = v3;
  result = sub_1D8C944C4(a1);
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  a3[3] = v7;
  a3[4] = &off_1F54541D8;
  *a3 = v8;
  return result;
}

uint64_t sub_1D8C94470()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E8, "Pg");
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D8C944C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8C94514@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  *a4 = *a3;
  *(a4 + 16) = v7;
}

uint64_t Client.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NSFileManager.parsecdAssetsDirectoryURL.getter()
{
  v1 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD7554();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-v14];
  v28[0] = 0;
  v16 = [v1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v28];
  v17 = v28[0];
  if (v16)
  {
    v18 = v16;
    sub_1D8CD74E4();
    v19 = v17;

    (*(v5 + 32))(v15, v13, v2);
    sub_1D8CD74B4();
    sub_1D8CD7464();
    v20 = *(v5 + 8);
    v20(v10, v2);
    v21 = (v20)(v15, v2);
    v22 = 0;
  }

  else
  {
    v23 = v28[0];
    v24 = sub_1D8CD7454();

    swift_willThrow();
    v22 = 1;
  }

  result = OUTLINED_FUNCTION_2_4(v21, v22);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_3_0()
{

  JUMPOUT(0x1DA727900);
}

BOOL OUTLINED_FUNCTION_3_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 OUTLINED_FUNCTION_3_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_1D8CD7904();
}

void OUTLINED_FUNCTION_3_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1D8C9D088(0x676E69727453, 0xE600000000000000, va);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __n128 a21, __int128 a22)
{
  *v22 = a19;
  v22[1] = a20;
  result = a21;
  v22[2] = a21;
  v22[3] = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_allocError();
}

double OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_1D8CB1E8C(&a14, v19, &a19);
}

void OUTLINED_FUNCTION_2_12(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(__int128 *a1@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v1[1] = *a1;
  v1[2] = v5;
  v1[3] = v4;
  v1[4] = v3;
  v7 = a1[1];
  v8 = a1[2];
  v1[5] = v6;
  v1[6] = v7;
  v9 = a1[3];
  v1[7] = v8;
  v1[8] = v9;

  return sub_1D8C969AC((v1 + 1), (v1 + 9));
}

__n128 OUTLINED_FUNCTION_2_15()
{
  v2 = *(v0 + 40);
  *(v1 - 144) = *(v0 + 24);
  *(v1 - 128) = v2;
  result = *(v0 + 56);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 72);
  v4 = *(v1 - 120);
  return result;
}

uint64_t NSFileManager.parsecdCustomFBDirectoryURL.getter()
{
  v0 = sub_1D8CD7484();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26[-v11];
  v13 = sub_1D8CD7554();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_37();
  v21 = v20 - v19;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v22 = sub_1D8C953A4(v12, &qword_1ECAAC668, &qword_1D8CD8FA0);
    v23 = 1;
  }

  else
  {
    strcpy(v26, "CustomFeedback");
    v26[15] = -18;
    (*(v3 + 104))(v8, *MEMORY[0x1E6968F58], v0);
    sub_1D8C94EC8();
    sub_1D8CD7534();
    (*(v3 + 8))(v8, v0);
    v24 = *(v16 + 8);
    v24(v12, v13);
    sub_1D8CD7464();
    v22 = (v24)(v21, v13);
    v23 = 0;
  }

  return OUTLINED_FUNCTION_2_4(v22, v23);
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_1D8CD8254();
}

unint64_t sub_1D8C94EC8()
{
  result = qword_1ED9C5580;
  if (!qword_1ED9C5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C5580);
  }

  return result;
}

uint64_t NSFileManager.parsecdSessionFBDirectoryURL.getter()
{
  v1 = v0;
  v2 = sub_1D8CD7484();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v10 = v9 - v8;
  v11 = sub_1D8CD7554();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37();
  v19 = v18 - v17;
  sub_1D8C950EC(v1);
  (*(v5 + 104))(v10, *MEMORY[0x1E6968F58], v2);
  sub_1D8C94EC8();
  sub_1D8CD7534();
  (*(v5 + 8))(v10, v2);
  v20 = (*(v14 + 8))(v19, v11);
  return OUTLINED_FUNCTION_2_4(v20, 0);
}

void sub_1D8C950EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = sub_1D8CD7484();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37();
  v15 = v14 - v13;
  v23 = a1;
  sub_1D8C95360();
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA98, &qword_1D8CDA918);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v21, &v24);
    v17 = v25;
    v18 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D8C953A4(v21, &qword_1ECAACAA0, &qword_1D8CDCEA0);
    if (qword_1ED9C4C18 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED9C4C20;
    os_unfair_lock_lock((qword_1ED9C4C20 + 32));
    sub_1D8C95404((v19 + 16), &v24);
    os_unfair_lock_unlock((v19 + 32));
    if (!v1)
    {
      (*(v10 + 104))(v15, *MEMORY[0x1E6968F58], v7);
      v20 = sub_1D8CD7554();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
      sub_1D8CD7524();
    }
  }
}

unint64_t sub_1D8C95360()
{
  result = qword_1ED9C4118;
  if (!qword_1ED9C4118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C4118);
  }

  return result;
}

uint64_t sub_1D8C953A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D8C95404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  if (v5)
  {
    *a2 = *a1;
    a2[1] = v5;
  }

  v7 = static PrimaryPersonaContainerPathLookup.path(for:)();
  if (!v2)
  {
    *a1 = v7;
    a1[1] = v8;
    *a2 = v7;
    a2[1] = v8;
  }

  if (qword_1ECAAC620 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = sub_1D8CD7A04();
  __swift_project_value_buffer(v9, qword_1ECAACC80);
  v10 = v2;
  v11 = sub_1D8CD79E4();
  v12 = sub_1D8CD7E24();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1D8C92000, v11, v12, "access failed with error: %{public}@", v13, 0xCu);
    sub_1D8CC06BC(v14);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  return swift_willThrow();
}

void SessionType.init(withClientIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    a1 = sub_1D8CD7B74();
    v6 = v5;

    OUTLINED_FUNCTION_4_7();
    v7 = sub_1D8C94EC8();
    if (OUTLINED_FUNCTION_0_18(v7, MEMORY[0x1E69E6158], v8, v9))
    {

      a1 = 0;
      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_7();
      if (OUTLINED_FUNCTION_0_18(v10, MEMORY[0x1E69E6158], v11, v12))
      {

        a1 = 0;
        v6 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_4_7();
        if (OUTLINED_FUNCTION_0_18(v13, MEMORY[0x1E69E6158], v14, v15))
        {

          a1 = 0;
          v6 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_4_7();
          if (OUTLINED_FUNCTION_0_18(v16, MEMORY[0x1E69E6158], v17, v18))
          {

            a1 = 0;
            v6 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_4_7();
            if (OUTLINED_FUNCTION_0_18(v19, MEMORY[0x1E69E6158], v20, v21))
            {

              a1 = 0;
              v6 = 5;
            }

            else
            {
              OUTLINED_FUNCTION_4_7();
              if (OUTLINED_FUNCTION_0_18(v22, MEMORY[0x1E69E6158], v23, v24))
              {

                a1 = 0;
                v6 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_4_7();
                v28 = OUTLINED_FUNCTION_0_18(v25, MEMORY[0x1E69E6158], v26, v27);
                if (v28)
                {

                  a1 = 0;
                  v6 = 8;
                }

                else if (OUTLINED_FUNCTION_0_18(v28, MEMORY[0x1E69E6158], v29, v30, a1, v6, 0xD000000000000010, 0x80000001D8CDD3D0) & 1) != 0 || (OUTLINED_FUNCTION_4_7(), (OUTLINED_FUNCTION_0_18(v31, MEMORY[0x1E69E6158], v32, v33)))
                {

                  a1 = 0;
                  v6 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_4_7();
                  if (OUTLINED_FUNCTION_0_18(v34, MEMORY[0x1E69E6158], v35, v36))
                  {

                    a1 = 0;
                    v6 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_4_7();
                    if (OUTLINED_FUNCTION_0_18(v37, MEMORY[0x1E69E6158], v38, v39))
                    {

                      a1 = 0;
                      v6 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_4_7();
                      v43 = OUTLINED_FUNCTION_0_18(v40, MEMORY[0x1E69E6158], v41, v42);
                      if (v43 & 1) != 0 || (v46 = OUTLINED_FUNCTION_0_18(v43, MEMORY[0x1E69E6158], v44, v45, a1, v6, 0xD000000000000012, 0x80000001D8CDD3A0), (v46))
                      {

                        a1 = 0;
                        v6 = 12;
                      }

                      else if (OUTLINED_FUNCTION_0_18(v46, MEMORY[0x1E69E6158], v47, v48, a1, v6, 0xD000000000000015, 0x80000001D8CDD3F0) & 1) != 0 || (OUTLINED_FUNCTION_4_7(), (OUTLINED_FUNCTION_0_18(v49, MEMORY[0x1E69E6158], v50, v51)))
                      {

                        a1 = 0;
                        v6 = 13;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_4_7();
                        if (OUTLINED_FUNCTION_0_18(v52, MEMORY[0x1E69E6158], v53, v54))
                        {

                          a1 = 0;
                          v6 = 15;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_4_7();
                          if (OUTLINED_FUNCTION_0_18(v55, MEMORY[0x1E69E6158], v56, v57))
                          {

                            a1 = 0;
                            v6 = 16;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_4_7();
                            if (OUTLINED_FUNCTION_0_18(v58, MEMORY[0x1E69E6158], v59, v60))
                            {

                              a1 = 0;
                              v6 = 14;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_4_7();
                              if (OUTLINED_FUNCTION_0_18(v61, MEMORY[0x1E69E6158], v62, v63))
                              {

                                a1 = 0;
                                v6 = 7;
                              }

                              else
                              {
                                if (qword_1ED9C4148 != -1)
                                {
                                  swift_once();
                                }

                                v64 = sub_1D8CD7A04();
                                __swift_project_value_buffer(v64, qword_1ED9C5650);

                                v65 = sub_1D8CD79E4();
                                v66 = sub_1D8CD7E24();

                                if (os_log_type_enabled(v65, v66))
                                {
                                  v67 = swift_slowAlloc();
                                  v68 = swift_slowAlloc();
                                  v69 = v68;
                                  *v67 = 136446210;
                                  *(v67 + 4) = sub_1D8C9D088(a1, v6, &v69);
                                  _os_log_impl(&dword_1D8C92000, v65, v66, "Failed to get session type for %{public}s", v67, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0Tm(v68);
                                  MEMORY[0x1DA727900](v68, -1, -1);
                                  MEMORY[0x1DA727900](v67, -1, -1);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = a1;
  a3[1] = v6;
}

void OUTLINED_FUNCTION_85(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 32) = a3;
  *(result + 40) = v3;
  *(result + 72) = a2;
  strcpy((result + 48), "invalid client");
  *(result + 63) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEDC6A10](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_1D8CD7484();
}

uint64_t OUTLINED_FUNCTION_4_9()
{
}

uint64_t sub_1D8C95CF4()
{
  v2 = *v0;
  sub_1D8CD8254();
  SessionType.hash(into:)();
  return sub_1D8CD8284();
}

uint64_t SessionType.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 1:
      v2 = 1;
      goto LABEL_18;
    case 2:
      v2 = 2;
      goto LABEL_18;
    case 3:
      v2 = 3;
      goto LABEL_18;
    case 4:
      v2 = 4;
      goto LABEL_18;
    case 5:
      v2 = 5;
      goto LABEL_18;
    case 6:
      v2 = 6;
      goto LABEL_18;
    case 7:
      v2 = 7;
      goto LABEL_18;
    case 8:
      v2 = 8;
      goto LABEL_18;
    case 9:
      v2 = 9;
      goto LABEL_18;
    case 10:
      v2 = 10;
      goto LABEL_18;
    case 11:
      v2 = 11;
      goto LABEL_18;
    case 12:
      v2 = 12;
      goto LABEL_18;
    case 13:
      v2 = 13;
      goto LABEL_18;
    case 14:
      v2 = 14;
      goto LABEL_18;
    case 15:
      v2 = 15;
      goto LABEL_18;
    case 16:
      v2 = 16;
LABEL_18:
      result = MEMORY[0x1DA7270D0](v2);
      break;
    default:
      v4 = *v0;
      MEMORY[0x1DA7270D0](0);
      if (v1)
      {
        sub_1D8CD8274();

        result = sub_1D8CD7BD4();
      }

      else
      {
        result = sub_1D8CD8274();
      }

      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration11SessionTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

uint64_t static SessionType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_37;
      }

      v6 = OUTLINED_FUNCTION_5_4(*a1, 1);
      sub_1D8C96324(v6, 1);
      return v5;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 2);
      v8 = 2;
      goto LABEL_34;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 3);
      v8 = 3;
      goto LABEL_34;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 4);
      v8 = 4;
      goto LABEL_34;
    case 5:
      if (v5 != 5)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 5);
      v8 = 5;
      goto LABEL_34;
    case 6:
      if (v5 != 6)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 6);
      v8 = 6;
      goto LABEL_34;
    case 7:
      if (v5 != 7)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 7);
      v8 = 7;
      goto LABEL_34;
    case 8:
      if (v5 != 8)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 8);
      v8 = 8;
      goto LABEL_34;
    case 9:
      if (v5 != 9)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 9);
      v8 = 9;
      goto LABEL_34;
    case 10:
      if (v5 != 10)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 10);
      v8 = 10;
      goto LABEL_34;
    case 11:
      if (v5 != 11)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 11);
      v8 = 11;
      goto LABEL_34;
    case 12:
      if (v5 != 12)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 12);
      v8 = 12;
      goto LABEL_34;
    case 13:
      if (v5 != 13)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 13);
      v8 = 13;
      goto LABEL_34;
    case 14:
      if (v5 != 14)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 14);
      v8 = 14;
      goto LABEL_34;
    case 15:
      if (v5 != 15)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 15);
      v8 = 15;
      goto LABEL_34;
    case 16:
      if (v5 != 16)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_5_4(*a1, 16);
      v8 = 16;
      goto LABEL_34;
    default:
      if ((v5 - 1) >= 0x10)
      {
        if (v3)
        {
          if (!v5)
          {
            sub_1D8C9E824(*a2, 0);
            v9 = v4;
            v10 = 0;
            goto LABEL_38;
          }

          v14 = *a1;
          if (v2 == v4 && v3 == v5)
          {
            OUTLINED_FUNCTION_6_6(v14, v3);
            v7 = v2;
            v8 = v3;
LABEL_34:
            sub_1D8C96324(v7, v8);
          }

          else
          {
            v16 = sub_1D8CD8154();
            v17 = OUTLINED_FUNCTION_3_4();
            sub_1D8C9E824(v17, v18);
            sub_1D8C9E824(v2, v3);
            v19 = OUTLINED_FUNCTION_5_4(v2, v3);
            sub_1D8C96324(v19, v5);
            if ((v16 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {
          v20 = a2[1];

          v21 = OUTLINED_FUNCTION_3_4();
          sub_1D8C9E824(v21, v22);
          sub_1D8C9E824(v2, 0);
          v23 = OUTLINED_FUNCTION_5_4(v2, 0);
          sub_1D8C96324(v23, v5);
          if (v5)
          {
            goto LABEL_39;
          }
        }

        return 1;
      }

LABEL_37:
      v9 = OUTLINED_FUNCTION_3_4();
LABEL_38:
      OUTLINED_FUNCTION_6_6(v9, v10);
LABEL_39:
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1D8C96324(v11, v12);
      return 0;
  }
}

uint64_t sub_1D8C96324(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x10)
  {
  }

  return result;
}

uint64_t sub_1D8C9633C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8C9639C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t UserAgent.client.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

BOOL Config.isDefault.getter()
{
  v0 = OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6, v7, v8, v9, v15, v17, v19, v20, v21);
  if (v10)
  {
    if (OUTLINED_FUNCTION_39())
    {
      v11 = v18;
      v12 = *v16 & 0xFFFFFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D8CADF40(v22, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v12 = 0;
  v11 = 0xE000000000000000;
LABEL_9:

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12;
  }

  return v13 == 0;
}

id OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, unsigned __int8 a11, unsigned __int8 a12)
{

  return sub_1D8CA03FC(a10, a11 | (a12 << 8));
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_1D8CD8154();
}

_OWORD *OUTLINED_FUNCTION_20_0()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1D8CAD7DC(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_dynamicCast();
}

uint64_t ConfigurationManager.configAccessProvider.getter()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  return swift_unknownObjectRetain();
}

BOOL sub_1D8C96630()
{
  v1 = *(*(v0 + 200) + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24) > 0 || *(v1 + 16) - 1 < 2;
  os_unfair_lock_unlock((v1 + 48));
  return v2;
}

uint64_t sub_1D8C966A8()
{
  v1 = *(v0 + 240);
  v2 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t UserAgent.fullString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D8C96738()
{
  OUTLINED_FUNCTION_19();
  sub_1D8C96A08(*(v0 + 288), (v0 + 96));
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 96);
    if (v2)
    {
      v3 = *(v0 + 104);
      v4 = *(*(v0 + 296) + 16);
      if (*(v0 + 336) == 1)
      {
        *(v0 + 224) = v2;
        *(v0 + 232) = v3;
        *(v0 + 240) = v1;
        *(v0 + 248) = *(v0 + 120);
        *(v0 + 264) = *(v0 + 136);
        *(v0 + 280) = *(v0 + 152);
        v5 = swift_task_alloc();
        *(v0 + 304) = v5;
        *v5 = v0;
        v5[1] = sub_1D8CB6B78;

        return sub_1D8CA15CC(v0 + 224);
      }

      else
      {
        *(v0 + 160) = v2;
        *(v0 + 168) = v3;
        *(v0 + 176) = v1;
        *(v0 + 184) = *(v0 + 120);
        *(v0 + 200) = *(v0 + 136);
        *(v0 + 216) = *(v0 + 152);
        v11 = swift_task_alloc();
        *(v0 + 320) = v11;
        *v11 = v0;
        v11[1] = sub_1D8C9B9EC;

        return sub_1D8C96AE4(v0 + 160);
      }
    }

    sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
  inited = swift_initStackObject();
  v8 = OUTLINED_FUNCTION_14_0(inited, xmmword_1D8CD8F40);
  OUTLINED_FUNCTION_4_2(v8, MEMORY[0x1E69E6158], v9);
  sub_1D8CD7A84();
  OUTLINED_FUNCTION_17_1(objc_allocWithZone(MEMORY[0x1E696ABC0]), 0x80000001D8CDDBE0);
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t ConfigurationManager.configuration(for:forceFetch:)(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D8C96738, 0, 0);
}

double sub_1D8C96A08@<D0>(unint64_t a1@<X0>, __int128 *a2@<X8>)
{
  switch(a1)
  {
    case 8uLL:
      goto LABEL_4;
    case 7uLL:
      if (qword_1ED9C40D0 != -1)
      {
        OUTLINED_FUNCTION_2_3();
      }

      v6 = unk_1ED9C40E8;
      v14 = xmmword_1ED9C40D8;
      v15 = unk_1ED9C40E8;
      v7 = xmmword_1ED9C40F8;
      v8 = unk_1ED9C4108;
      v16 = xmmword_1ED9C40F8;
      v17 = unk_1ED9C4108;
      *a2 = xmmword_1ED9C40D8;
      a2[1] = v6;
      a2[2] = v7;
      a2[3] = v8;
      sub_1D8C969AC(&v14, &v9);
      break;
    case 5uLL:
LABEL_4:
      Client.init(_:)(a1, &v9);
      v12 = v9;
      v13 = v10;
      v11 = 0;
      UserAgent.init(_:requestor:)(&v14, &v12, &v11);
      v3 = v15;
      *a2 = v14;
      a2[1] = v3;
      result = *&v16;
      v5 = v17;
      a2[2] = v16;
      a2[3] = v5;
      return result;
    default:
      result = 0.0;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      break;
  }

  return result;
}

uint64_t sub_1D8C96B14()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_87();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_57(v4, v5);
  OUTLINED_FUNCTION_35(v6, v7, v8, v9, v10, v11, v12, v13, v16);
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_79(v14);

  return sub_1D8C986F8();
}

void sub_1D8C96BF0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_task_create();
}

uint64_t type metadata accessor for ResourceAccessSpan()
{
  result = qword_1ED9C3D38;
  if (!qword_1ED9C3D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8C96CAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  *(v5 + qword_1ED9C3D48) = 0;
  *(v5 + qword_1ED9C5628) = 0;
  v11 = v5 + qword_1ED9C5620;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v5 + qword_1ED9C3D50) = 0;
  v12 = (v5 + qword_1ED9C5618);
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  *v11 = a4;
  *(v11 + 8) = a5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D8C96E60();
    *(inited + 32) = v9;
    *(inited + 40) = v10;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1D8CD8F50;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D8C96E60();
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    v16 = MEMORY[0x1E69E7738];
    *(v14 + 96) = MEMORY[0x1E69E76D8];
    *(v14 + 104) = v16;
    *(v14 + 64) = v15;
    *(v14 + 72) = a4;
  }

  sub_1D8C96EB4();
}

void OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1D8C96CAC(v2, 1, va, 0, 1);
}

unint64_t sub_1D8C96E60()
{
  result = qword_1ED9C3C20;
  if (!qword_1ED9C3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3C20);
  }

  return result;
}

void sub_1D8C96EB4()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v60 = v2;
  v61 = v3;
  v58 = v4;
  v59 = v5;
  v62 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v10 = OUTLINED_FUNCTION_36(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = sub_1D8CD7674();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_37();
  v27 = v26 - v25;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v63 = 0xD000000000000010;
  v64 = 0x80000001D8CDDBC0;
  v67 = 45;
  v68 = 0xE100000000000000;
  v65 = 95;
  v66 = 0xE100000000000000;
  v56 = sub_1D8C94EC8();
  OUTLINED_FUNCTION_24();
  sub_1D8CD7F44();
  *(v0 + 96) = sub_1D8CD7EC4();
  OUTLINED_FUNCTION_77();
  v29 = *(v28 + 136);
  v30 = sub_1D8CD7964();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_77();
  v35 = *(v34 + 152);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_60();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *(v36 + 16) = v37;
  *v37 = 0;
  *(v1 + v35) = v36;
  sub_1D8CD7664();
  OUTLINED_FUNCTION_77();
  v39 = v27;
  v40 = v62;
  (*(v22 + 32))(v1 + *(v38 + 144), v39, v19);
  swift_weakAssign();
  *(v1 + 80) = v40;
  v41 = *(v1 + 96);
  OUTLINED_FUNCTION_42();

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  OUTLINED_FUNCTION_77();
  v43 = *(v42 + 136);
  swift_beginAccess();
  sub_1D8C974F4(v18, v1 + v43);
  swift_endAccess();
  v63 = v1;

  v44 = sub_1D8CD7B64();
  v46 = v45;
  v47 = *(*(v8 + 32) + 16);
  os_unfair_lock_lock(v47);
  sub_1D8C97564(v8, v44, v46, v1, &off_1F5454760);

  os_unfair_lock_unlock(v47);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v48 + 8))(v1, &off_1F5454760, ObjectType, v48);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1D8C979F0(v1 + v43, v15, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v30) == 1)
  {
    __break(1u);
  }

  else
  {
    v50 = *(v1 + 96);
    v51 = sub_1D8CD7E64();
    v52 = sub_1D8C97B40(v40);
    LOBYTE(v56) = v58;
    sub_1D8C980C0(v51, v50, v52, v53, v54, v15, v59, v60, v56, v61);

    OUTLINED_FUNCTION_25(v30);
    (*(v55 + 8))(v15, v30);
    sub_1D8C983F4();

    OUTLINED_FUNCTION_68();
  }
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1D8CB4E28(v5, v4, a3, a4);
}

_OWORD *OUTLINED_FUNCTION_25_0()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1D8CAD7DC(v4, (v2 - 128));
}

uint64_t sub_1D8C97460(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D8C974F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C97564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_1D8CB1F48(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1D8C976E4();
  swift_beginAccess();
  v15 = *(a1 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 40);
  sub_1D8C97728(v14, a2, a3);
  *(a1 + 40) = v17;
  return swift_endAccess();
}

uint64_t sub_1D8C976E4()
{
  OUTLINED_FUNCTION_7_1();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8C97728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_24_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA48, &qword_1D8CDBA70);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    v14 = *v6;
    sub_1D8C9785C(v5, v3);
    OUTLINED_FUNCTION_29_0();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
    OUTLINED_FUNCTION_39_0();
  }

  else
  {
    sub_1D8C979A8(v12, v5, v3, v4, v17);
    OUTLINED_FUNCTION_39_0();
  }
}

unint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_1D8C9785C(a2, a3);
}

unint64_t sub_1D8C9785C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D8CD8254();
  sub_1D8CD7BD4();
  v6 = sub_1D8CD8284();

  return sub_1D8C978D4(a1, a2, v6);
}

unint64_t sub_1D8C978D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D8CD8154() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D8C979A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D8C979F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AE30](a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_8_4()
{
  v2 = *(v1 - 144);
  v3 = *(v1 - 136);
  v4 = *(v1 - 128);
  v5 = v0[10];
  v6 = *v0;
}

void OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, __int128 a14)
{
  a14 = *v14;

  SessionType.biomeStreamDescriptor.getter(&a13);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD8](v1, a1, 64, 7);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

const char *sub_1D8C97B40(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return "configuration";
    case 2:
      return "parsecdSearch";
    case 3:
      return "parsecdZeroKeyWord";
    case 4:
      return "parsecdLookup";
    case 5:
      return "parsecdFlight";
    case 6:
      return "parsecdMoreResults";
    case 7:
      return "parsecdCard";
    case 8:
      return "parsecdWarm";
    case 9:
      return "bagResourceDownload";
    case 10:
      return "pegasusKitVisualSearch";
    case 11:
      return "pegasusKitSiriPersonalization";
    case 12:
      return "pegasusKitHashtagImages";
    case 13:
      return "pegasusKitAssistant";
    case 14:
      return "pegasusKitBagFetchXPC";
    case 15:
      return "pegasusKitContextFetchXPC";
    case 16:
      return "pegasusKitLookup";
    case 17:
      return "pegasusKitSpotlightZKW";
    case 18:
      return "pegasusKitEngagementSearch";
    case 19:
      return "engagementCache";
    case 20:
      return "topicCache";
    case 21:
      return "pegasusKitIntelligencePlatform";
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      return "pegasusKitIntelligenceFlow";
    case 24:
      return "pegasusKitSafariAssistantPrefetch";
    case 25:
      return "pegasusKitSafariAssistantSummarize";
    case 26:
      return "pegasusKitEncryptedVisualSearch";
    case 27:
      return "pegasusKitSportsWatchFace";
    case 28:
      return "pegasusKitLookupSearch";
    case 29:
      return "pegasusKitEncryptedVisualSearchConfig";
    case 30:
      return "pegasusKitSafariSearch";
    case 31:
      return "pegasusKitCameraVisualSearch";
    case 32:
      return "pegasusKitEncryptedPQAGeo";
    case 33:
      return "pegasusKitEncryptedPQAGeoConfig";
    case 34:
      return "pegasusKitEncryptedVisualSearchSupportedUsecases";
    case 35:
      return "pegasusKitEncryptedPQAGeoSupportedUsecases";
    case 37:
      return "pegasusKitFlightUtilities";
    case 38:
      return "pegasusKitFlightUtilitiesSubscribe";
    case 39:
      return "pegasusKitDeviceExpertSearch";
    case 50:
      return "installedAppWhitelist";
    case 60:
      return "assetDeliveryPreloadAsset";
    case 61:
      return "assetDeliveryPrefilterPrefetch";
    case 62:
      return "assetDeliveryGetPreloadedData";
    case 63:
      return "assetDeliveryBloomFilter";
    case 65:
      return "assetDeliveryRetrieveAsset";
    case 66:
      return "assetDeliveryRedact";
    case 67:
      return "assetDeliveryFeatureSupported";
    case 100:
      return "contextFetchAMSTreatments";
    default:
      switch(a1)
      {
        case 200:
          return "feedbackEnumerator";
        case 201:
          return "feedbackFileCreation";
        case 202:
          return "simpleFeedbackEnumerator";
        case 300:
          return "aggregation";
        case 301:
          return "uploadaggregates";
        case 400:
          return "clientXPCConnection";
        case 401:
          return "clientSessionComplete";
        case 500:
          return "sbaPlugin";
        case 600:
          return "parsecdCloudConnectionSubscribe";
        case 601:
          return "parsecdCloudConnectionUnsubscribe";
        case 602:
          return "parsecdCloudConnectionFetchLatestPush";
      }

      if (a1 != 700)
      {
LABEL_90:
        sub_1D8CD81A4();
        __break(1u);
        JUMPOUT(0x1D8C97F2CLL);
      }

      return "parseKeys";
  }
}

void sub_1D8C980C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_9();
      sub_1D8CD7914();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_10(v25, xmmword_1D8CD8F40);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_10(v17, xmmword_1D8CD8F50);
      sub_1D8C98368(v18, v19);
      v15 = OUTLINED_FUNCTION_4_3();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_10(v20, xmmword_1D8CDB570);
      sub_1D8C98368(v21, v22);
      v23 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_10(v10, xmmword_1D8CD97E0);
      sub_1D8C98368(v11, v12);
      v13 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v13, v14);
      sub_1D8C98368(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_10(v26, xmmword_1D8CDB560);
      sub_1D8C98368(v27, v28);
      v29 = OUTLINED_FUNCTION_4_3();
      sub_1D8C98368(v29, v30);
      sub_1D8C98368(a10 + 112, &v26[7]);
      sub_1D8C98368(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1D8C98368(v15, v16);
      OUTLINED_FUNCTION_2_9();
      sub_1D8CD7914();

      break;
    default:
      return;
  }
}

uint64_t sub_1D8C98368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t sub_1D8C983F4()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_1F5454010;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_1D8C985A4(*v2))
  {
    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    MEMORY[0x1DA726A90](0x656372756F736572, 0xEE00737365636341);

    sub_1D8C97B40(v1);
    v3 = sub_1D8CD8024();
    MEMORY[0x1DA726A90](v3);

    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    sub_1D8C985C4(0xD000000000000010, 0x80000001D8CDDBC0, v0);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_1D8C985A4(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && a1 != 1);
  return (v2 & 1) == 0;
}

uint64_t sub_1D8C985C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = os_transaction_create();
    v5 = *(a3 + 72);
    *(a3 + 72) = v4;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8CD8004();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_36_0()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t sub_1D8C986F8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 288) = swift_task_alloc();
  v7 = v3[1];
  *(v1 + 16) = *v3;
  *(v1 + 32) = v7;
  v8 = v3[3];
  *(v1 + 48) = v3[2];
  *(v1 + 64) = v8;
  v9 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_1D8CD7BD4();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2)
{

  return sub_1D8CB9654(a1, a2);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1D8C98868()
{
  v49 = v0;
  v1 = *(*(v0 + 280) + 240);
  v2 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  *(v0 + 296) = v3;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v2);

  if (v3)
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);
    v6 = v4[1];
    v48[0] = *v4;
    v48[1] = v6;
    v7 = v4[3];
    v48[2] = v4[2];
    v48[3] = v7;
    v8 = sub_1D8C98C88(v3, v48);
    v11 = v8;
    *(v0 + 304) = v8;
    *(v0 + 312) = v9;
    *(v0 + 360) = v10;
    if ((v10 & 0x80) == 0)
    {
      if (v8 == 9)
      {
        v12 = *(*(v0 + 280) + 216);
        sub_1D8CA5B0C(sub_1D8CA757C);
        if (qword_1ED9C4000 != -1)
        {
          OUTLINED_FUNCTION_0();
          swift_once();
        }

        v13 = sub_1D8CD7A04();
        OUTLINED_FUNCTION_41(v13, qword_1ED9C4008);
        v14 = sub_1D8CD79E4();
        v15 = sub_1D8CD7E44();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = OUTLINED_FUNCTION_45();
          *v16 = 0;
          _os_log_impl(&dword_1D8C92000, v14, v15, "Configuration expired or expiring soon. Vending stale configuration and attempt to fetch new one in the background.", v16, 2u);
          OUTLINED_FUNCTION_11();
          MEMORY[0x1DA727900]();
        }

        v18 = *(v0 + 280);
        v17 = *(v0 + 288);

        sub_1D8CD7D64();
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
        OUTLINED_FUNCTION_60();
        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = v23;
        v25 = *(v0 + 32);
        *(v24 + 40) = *(v0 + 16);
        *(v24 + 56) = v25;
        v26 = *(v0 + 64);
        *(v24 + 72) = *(v0 + 48);
        *(v24 + 88) = v26;
        sub_1D8C969AC(v0 + 16, v0 + 208);
        OUTLINED_FUNCTION_58();
        sub_1D8CA36C0();

        sub_1D8CADF40(v17, &unk_1ECAAC790, &qword_1D8CD9550);
      }

      v27 = *(v0 + 288);

      OUTLINED_FUNCTION_31();

      return v28(v11, v3);
    }

    v41 = v9;
    v42 = v10;
    OUTLINED_FUNCTION_28(*(v0 + 280));
    v43 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v43;
    v44 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v44;
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v0 + 320) = v45;
    *v45 = v46;
    v45[1] = sub_1D8CA247C;
    v47 = *(v0 + 280);
    v37 = (v0 + 144);
    v40 = v42 & 0x7F;
    v38 = v11;
    v39 = v41;
  }

  else
  {
    v30 = *(v0 + 272);
    OUTLINED_FUNCTION_28(*(v0 + 280));
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[3];
    *(v0 + 112) = v30[2];
    *(v0 + 128) = v33;
    *(v0 + 80) = v31;
    *(v0 + 96) = v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v0 + 344) = v34;
    *v34 = v35;
    v34[1] = sub_1D8CA2618;
    v36 = *(v0 + 280);
    OUTLINED_FUNCTION_40();
    v40 = 2;
  }

  return sub_1D8CA1A5C(v37, v38, v39, v40, 1);
}

uint64_t sub_1D8C98BF8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0]();
}

uint64_t sub_1D8C98C2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D8C98C88(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v52 = sub_1D8CD72C4();
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - v11;
  v13 = sub_1D8CD7674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Throttle = type metadata accessor for ConfigFetchThrottle(0);
  v19 = *(*(Throttle - 8) + 64);
  MEMORY[0x1EEE9AC00](Throttle);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[1];
  v55 = *a2;
  v56 = v22;
  v23 = a2[3];
  v57 = a2[2];
  v58 = v23;
  if (sub_1D8C992E4(a1))
  {
    return 1;
  }

  v25 = swift_unknownObjectRetain();
  sub_1D8C99368(v25, v21);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v26 = *(v3 + 232);
  ObjectType = swift_getObjectType();
  (*(v26 + 24))(v54, ObjectType, v26);
  swift_unknownObjectRelease();
  v28 = v54[0];
  if (LOBYTE(v54[0]) == 3)
  {
    goto LABEL_14;
  }

  if (LOBYTE(v54[0]) == 4)
  {
LABEL_6:
    sub_1D8CD7664();
    sub_1D8CD75C4();
    v30 = v29;
    (*(v14 + 8))(v17, v13);
    if (v30 < *&v21[*(Throttle + 20)])
    {
      v28 = 0;
      goto LABEL_8;
    }

LABEL_14:
    if (sub_1D8C998B4())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v3 + 232);
        v41 = swift_getObjectType();
        v42 = (*(v40 + 40))(v41, v40);
        v44 = v43;
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = *(v3 + 24);
        v54[0] = v55;
        v54[1] = v56;
        v54[2] = v57;
        v54[3] = v58;
        sub_1D8CD5B60(0, 0, 0, v8);
        sub_1D8CD72B4();
        (*(v51 + 8))(v8, v52);
        v46 = sub_1D8CD7554();
        if (__swift_getEnumTagSinglePayload(v12, 1, v46) == 1)
        {
          sub_1D8CADF40(v12, &qword_1ECAAC668, &qword_1D8CD8FA0);
          v42 = 0;
          v44 = 0;
        }

        else
        {
          v42 = sub_1D8CD7494();
          v44 = v50;
          (*(*(v46 - 8) + 8))(v12, v46);
        }
      }

      v24 = sub_1D8C99A50(v42, v44);
      v48 = v47;

      if (v48 <= 0xFB)
      {
        sub_1D8C9A6EC(v21, type metadata accessor for ConfigFetchThrottle);
        return v24;
      }

      v49 = sub_1D8C9A4D8();
      sub_1D8C9A6EC(v21, type metadata accessor for ConfigFetchThrottle);
      if (v49)
      {
        return 9;
      }
    }

    else
    {
      sub_1D8C9A6EC(v21, type metadata accessor for ConfigFetchThrottle);
    }

    return 1;
  }

LABEL_8:
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v31 = sub_1D8CD7A04();
  __swift_project_value_buffer(v31, qword_1ED9C4008);
  v32 = sub_1D8CD79E4();
  v33 = sub_1D8CD7E14();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v54[0] = v35;
    *v34 = 136315138;
    v53 = v28;
    v36 = sub_1D8CD7B64();
    v38 = sub_1D8C9D088(v36, v37, v54);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D8C92000, v32, v33, "shouldThrottleConfigFetch: (%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1DA727900](v35, -1, -1);
    MEMORY[0x1DA727900](v34, -1, -1);
  }

  sub_1D8C9A6EC(v21, type metadata accessor for ConfigFetchThrottle);
  return 8;
}

uint64_t sub_1D8C992AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8C992E4(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1D8CA38CC() & 1;
  }

  v3 = *(v1 + 232);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1D8C99368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_9:
    sub_1D8CADF40(&v19, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v4 = sub_1D8CD7AD4();
  v5 = [a1 valueForKey_];

  swift_unknownObjectRelease();
  if (v5)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_1D8CD7614();
    goto LABEL_11;
  }

LABEL_10:
  sub_1D8CD75B4();
  if (!a1)
  {
    Throttle = type metadata accessor for ConfigFetchThrottle(0);
    *(a2 + Throttle[5]) = 0;
    v14 = (a2 + Throttle[7]);
    *v14 = 0;
    v14[1] = 0;
    v13 = 1;
    v12 = 0.0;
    goto LABEL_13;
  }

LABEL_11:
  swift_unknownObjectRetain();
  v6 = sub_1D8C99558();
  swift_unknownObjectRelease();
  Throttle = type metadata accessor for ConfigFetchThrottle(0);
  *(a2 + Throttle[5]) = v6;
  swift_unknownObjectRetain();
  v8 = sub_1D8C99624();
  v10 = v9;
  swift_unknownObjectRelease();
  v11 = (a2 + Throttle[7]);
  *v11 = v8;
  v11[1] = v10;
  swift_unknownObjectRetain();
  v12 = sub_1D8C996DC();
  swift_unknownObjectRelease_n();
  v13 = 0;
LABEL_13:
  result = type metadata accessor for ConfigFetchThrottle(0);
  v16 = a2 + Throttle[6];
  *v16 = v12;
  *(v16 + 8) = v13;
  return result;
}

double sub_1D8C99558()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v15, v16, v17);
  if (v10)
  {
    if (OUTLINED_FUNCTION_39())
    {
      return v14;
    }
  }

  else
  {
    sub_1D8CADF40(v18, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 144);
  return v2;
}

uint64_t sub_1D8C99624()
{
  v0 = OUTLINED_FUNCTION_65();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6, v7, v8, v9, v12, v14, v15, v16, v17);
  if (v10)
  {
    if (OUTLINED_FUNCTION_39())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8CADF40(v18, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return OUTLINED_FUNCTION_58();
  }
}

double sub_1D8C996DC()
{
  v0 = sub_1D8CD7AD4();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v15, v16, v17);
  if (v10)
  {
    if (OUTLINED_FUNCTION_39())
    {
      return v14;
    }
  }

  else
  {
    sub_1D8CADF40(v18, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

_BYTE *storeEnumTagSinglePayload for ShouldThrottleConfigFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1D8C9988CLL);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8C998B4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[29];
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 64))(ObjectType, v1);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  else
  {
    v5 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
    v6 = *(v5 + 40);
    v7 = OUTLINED_FUNCTION_42();
    if (v8(v7, v5))
    {
      return 1;
    }

    else
    {
      if (qword_1ED9C4020 != -1)
      {
        swift_once();
      }

      v9 = sub_1D8CD7A04();
      OUTLINED_FUNCTION_41(v9, qword_1ED9C5630);
      v10 = sub_1D8CD79E4();
      v11 = sub_1D8CD7E04();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_49(v12);
        OUTLINED_FUNCTION_85(&dword_1D8C92000, v13, v14, "Required context missing");
        OUTLINED_FUNCTION_11();
        MEMORY[0x1DA727900]();
      }

      return 0;
    }
  }
}

uint64_t parsecdUserAgent.getter()
{
  if (qword_1ED9C40D0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_1_6(&xmmword_1ED9C40D8, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D8C99A50(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (v2 + *(type metadata accessor for ConfigFetchThrottle(0) + 28));
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = *v5;
  v8 = v5[1];
  sub_1D8C99D74();
  if (v11 == -1)
  {
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8CD7A04();
    __swift_project_value_buffer(v23, qword_1ED9C4008);
    v24 = sub_1D8CD79E4();
    v25 = sub_1D8CD7E14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D8C92000, v24, v25, "Context not changed, no need to refresh config", v26, 2u);
      MEMORY[0x1DA727900](v26, -1, -1);
    }

    return 0;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v15 = sub_1D8CD7A04();
  __swift_project_value_buffer(v15, qword_1ED9C4008);
  sub_1D8CAD748(v12, v13, v14);

  v16 = sub_1D8CD79E4();
  v17 = sub_1D8CD7E14();
  sub_1D8CAD774(v12, v13, v14);

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136315650;
    v19 = sub_1D8CA4DAC(v12, v13, v14);
    log = v16;
    v21 = v7;
    v22 = sub_1D8C9D088(v19, v20, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D8C9D088(v21, v6, &v30);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_1D8C9D088(a1, a2, &v30);
    _os_log_impl(&dword_1D8C92000, log, v17, "Context has changed (%s) from %s to %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA727900](v29, -1, -1);
    MEMORY[0x1DA727900](v18, -1, -1);
  }

  else
  {
  }

  return v12;
}

void sub_1D8C99D74()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1D8CD7324();
  v9 = OUTLINED_FUNCTION_3(v8);
  v100 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v101 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7A8, &unk_1D8CD9590);
  v18 = OUTLINED_FUNCTION_36(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  v27 = sub_1D8CD73D4();
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v95 - v36;
  if (v7 == v3 && v5 == v1)
  {
    goto LABEL_34;
  }

  v99 = v35;
  if (sub_1D8CD8154())
  {
    goto LABEL_34;
  }

  sub_1D8CD73C4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    v39 = v26;
LABEL_11:
    sub_1D8CADF40(v39, &unk_1ECAAC7A8, &unk_1D8CD9590);
LABEL_34:
    OUTLINED_FUNCTION_68();
    return;
  }

  v98 = v8;
  v40 = v99;
  v41 = (v99 + 32);
  v42 = *(v99 + 32);
  v42(v37, v26, v27);
  sub_1D8CD73C4();
  if (__swift_getEnumTagSinglePayload(v23, 1, v27) == 1)
  {
    v43 = *(v40 + 8);
    v44 = OUTLINED_FUNCTION_33();
    v45(v44);
    v39 = v23;
    goto LABEL_11;
  }

  v42(v33, v23, v27);
  sub_1D8CD73B4();
  OUTLINED_FUNCTION_55();
  v46 = sub_1D8CD73B4();
  v48 = v47;
  if (v41)
  {
    if (!v47)
    {
      goto LABEL_32;
    }

    v49 = v26 == v46 && v41 == v47;
    v50 = v98;
    if (v49)
    {
    }

    else
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_71();

      if ((v26 & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v50 = v98;
    if (v47)
    {
      goto LABEL_32;
    }
  }

  sub_1D8CD7384();
  OUTLINED_FUNCTION_55();
  v51 = sub_1D8CD7384();
  v48 = v52;
  if (!v41)
  {
    if (!v52)
    {
      goto LABEL_36;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!v52)
  {
    goto LABEL_32;
  }

  if (v26 == v51 && v41 == v52)
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_71();

    if ((v26 & 1) == 0)
    {
LABEL_33:
      v54 = OUTLINED_FUNCTION_76();
      v48(v54);
      v55 = OUTLINED_FUNCTION_33();
      v48(v55);
      goto LABEL_34;
    }
  }

LABEL_36:
  v56 = sub_1D8CD73A4();
  v58 = v57;
  v48 = v33;
  v59 = sub_1D8CD73A4();
  if ((v58 & 1) == 0 && v56 != v59)
  {
    goto LABEL_33;
  }

  sub_1D8CD7394();
  OUTLINED_FUNCTION_55();
  v60 = sub_1D8CD7394();
  v48 = v61;
  if (v58 == v60 && v56 == v61)
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_71();

    if ((v58 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v48 = v37;
  v63 = sub_1D8CD7334();
  if (!v63)
  {
    goto LABEL_33;
  }

  v64 = v63;
  v48 = v33;
  v65 = sub_1D8CD7334();
  if (!v65)
  {
    goto LABEL_32;
  }

  v66 = v65;
  v67 = 0;
  v97 = *(v64 + 16);
  v98 = v100 + 16;
  v95 = v65;
  v96 = (v100 + 8);
  while (1)
  {
    if (v97 == v67)
    {

      goto LABEL_32;
    }

    if (v67 >= *(v64 + 16))
    {
      break;
    }

    v68 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v69 = *(v100 + 72) * v67;
    v48 = *(v100 + 16);
    (v48)(v102, v64 + v68 + v69, v50);
    v70 = *(v66 + 16);
    if (v67 == v70)
    {

      v84 = *v96;
      v85 = OUTLINED_FUNCTION_75();
      v86(v85);
      goto LABEL_33;
    }

    if (v67 >= v70)
    {
      goto LABEL_78;
    }

    (v48)(v101, v66 + v68 + v69, v50);
    v71 = sub_1D8CD7304();
    v73 = v72;
    if (v71 == sub_1D8CD7304() && v73 == v74)
    {
    }

    else
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_71();

      if ((v71 & 1) == 0)
      {

        sub_1D8CD7304();
        v87 = OUTLINED_FUNCTION_46();
        v73(v87);
        v88 = OUTLINED_FUNCTION_75();
        v73(v88);
        v89 = OUTLINED_FUNCTION_74();
        v73(v89);
        v90 = OUTLINED_FUNCTION_33();
        v73(v90);
        goto LABEL_34;
      }
    }

    v76 = sub_1D8CD7314();
    v78 = v77;
    v79 = sub_1D8CD7314();
    v81 = v80;
    v66 = v95;
    if (v78)
    {
      if (!v80)
      {

        goto LABEL_76;
      }

      if (v76 == v79 && v78 == v80)
      {
      }

      else
      {
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_71();

        if ((v76 & 1) == 0)
        {

          v78 = v64;
LABEL_76:

          sub_1D8CD7304();
          v91 = OUTLINED_FUNCTION_46();
          v78(v91);
          v92 = OUTLINED_FUNCTION_75();
          v78(v92);
          v93 = OUTLINED_FUNCTION_74();
          v78(v93);
          v94 = OUTLINED_FUNCTION_33();
          v78(v94);
          goto LABEL_34;
        }
      }
    }

    else if (v80)
    {

      v78 = v81;
      goto LABEL_76;
    }

    v48 = *v96;
    (*v96)(v101, v50);
    v83 = OUTLINED_FUNCTION_75();
    v48(v83);
    ++v67;
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1D8C9A4D8()
{
  v1 = sub_1D8CD7674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = v0 + *(type metadata accessor for ConfigFetchThrottle(0) + 24);
  if (*(v9 + 8))
  {
    v10 = 1;
  }

  else if (*v9 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    sub_1D8CD7614();
    sub_1D8CD75F4();
    v10 = sub_1D8CD75E4();
    v11 = *(v2 + 8);
    v11(v6, v1);
    if (v10)
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v12 = sub_1D8CD7A04();
      __swift_project_value_buffer(v12, qword_1ED9C4008);
      v13 = sub_1D8CD79E4();
      v14 = sub_1D8CD7E14();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1D8C92000, v13, v14, "Config is going to expire soon. Go fetch it.", v15, 2u);
        MEMORY[0x1DA727900](v15, -1, -1);
      }
    }

    v11(v8, v1);
  }

  return v10 & 1;
}

uint64_t sub_1D8C9A6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_OWORD *OUTLINED_FUNCTION_32_0(_OWORD *a1, uint64_t a2)
{

  return sub_1D8CB4A34(a1, a2, v2 | 0x8000000000000000);
}

uint64_t sub_1D8C9A75C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  OUTLINED_FUNCTION_61(v7, v8);
  v10 = *(v9 + 216);
  v11 = *v1;
  OUTLINED_FUNCTION_1();
  *v12 = v11;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8C9B450(v7, v6, v8, v5, a5);
}

void OUTLINED_FUNCTION_16_3(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(v3 - 160) = a3;
  *(v3 - 152) = a2;
  *(v3 - 168) = a1;
}

uint64_t sub_1D8C9A94C()
{
  if (*(v0 + 122) == 1)
  {
    *(*(v0 + 208) + qword_1ED9C3D50) = 1;
    v1 = *(v0 + 122);
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v2 = *(v0 + 96);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  *(*(v0 + 208) + qword_1ED9C3D48) = v6;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_62();
  v7 = sub_1D8CD7AD4();
  [v2 findConfigForUserAgent_];
  swift_unknownObjectRelease_n();

  sub_1D8C9AA78();

  sub_1D8C9B99C();
  v8 = *(v0 + 8);
  OUTLINED_FUNCTION_70();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_1D8C9AA78()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    if (*&v0[qword_1ED9C5628])
    {

      sub_1D8CAF0EC();
    }

    v2 = MEMORY[0x1E69E6158];
    if ((v0[qword_1ED9C3D50] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD98, &unk_1D8CDBBF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8CD8F50;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_1D8CC4F28();
      v4 = sub_1D8CD7A84();
      sub_1D8CA83C0(v4);
      v6 = v5;

      sub_1D8CCB66C(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v7 = OUTLINED_FUNCTION_1_0();
    *(v7 + 16) = xmmword_1D8CD8F40;
    v12 = v1[qword_1ED9C3D48];
    v8 = sub_1D8CD7B64();
    v10 = v9;
    *(v7 + 56) = v2;
    *(v7 + 64) = sub_1D8C96E60();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1D8C9AD8C("outcome=%{signpost.description:attribute,public}s", 49, 2, v7);

    v11 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v11);
    if ((v1[88] & 1) == 0)
    {
      sub_1D8C9AD94();
    }

    os_unfair_lock_unlock(v11);
  }
}

uint64_t sub_1D8C9ACE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  v11 = *(v4 + 56);
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1D8C9AD94()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_15();
  sub_1D8C9B12C(v41, v40, &qword_1ECAACE30, &qword_1D8CDC610);
  sub_1D8C9B190(v0, 0x656372756F736572, 0xEE00737365636341);
  if ((v41[17] & 1) == 0 && v42)
  {
    OUTLINED_FUNCTION_8_4();
    v9 = *(v8 + 136);
    OUTLINED_FUNCTION_7_4();
    sub_1D8C9B12C(v0 + v9, v1, &qword_1ECAAC7D8, &qword_1D8CD95B0);
    v10 = sub_1D8CD7964();
    result = __swift_getEnumTagSinglePayload(v1, 1, v10);
    if (result != 1)
    {
      v12 = *(v0 + 96);

      sub_1D8CD7E54();
      v13 = sub_1D8C97B40(v3);
      OUTLINED_FUNCTION_1_17(v13, v14, v15, v16, v17, v18, v19, v20, v38, v39);

      OUTLINED_FUNCTION_25(v10);
      (*(v21 + 8))(v1, v10);
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v22 = *(v0 + 80);
  v23 = *(*v4 + 136);
  OUTLINED_FUNCTION_7_4();
  sub_1D8C9B12C(v4 + v23, v2, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  v24 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v2, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v4 + 96);
  sub_1D8CD7E54();
  sub_1D8C97B40(v22);
  sub_1D8CD7924();
  OUTLINED_FUNCTION_25(v24);
  v26 = *(v25 + 8);
  v27 = OUTLINED_FUNCTION_9_3();
  v29(v27, v28);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v40[0] = v4;
    sub_1D8CD7B64();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_16_2(v32, v33, v34, v35, &off_1F5454760);

    os_unfair_lock_unlock(v12);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v31 + 24);
      ObjectType = swift_getObjectType();
      (*(v36 + 16))(v4, &off_1F5454760, ObjectType, v36);
      swift_unknownObjectRelease();
    }

    LOBYTE(v40[0]) = 1;

    sub_1D8C9B71C(v41, &qword_1ECAACE30, &qword_1D8CDC610);
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_15_2(MEMORY[0x1E69E7CC0]);
    *(v4 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1D8CC3FB0())
    {
      sub_1D8CD7E34();
      sub_1D8CD7904();
    }

    return sub_1D8C9B71C(v41, &qword_1ECAACE30, &qword_1D8CDC610);
  }
}

uint64_t sub_1D8C9B12C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D8C9B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8C9B338(a1);
  if (result)
  {
    v7 = *(v3 + 96);
    sub_1D8CD7E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D8CD8F50;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1D8C96E60();
    *(v8 + 64) = v10;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
    sub_1D8CC26E8();
    OUTLINED_FUNCTION_14_1();
    v11 = sub_1D8CD7A74();
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v11;
    *(v8 + 80) = v12;
    sub_1D8CD7904();

    MEMORY[0x1DA726A90](46, 0xE100000000000000);
    v13 = OUTLINED_FUNCTION_9_3();
    MEMORY[0x1DA726A90](v13);
    v14 = sub_1D8CD7AD4();

    OUTLINED_FUNCTION_14_1();
    v15 = sub_1D8CD7A54();
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_1D8C9B338(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    v5 = sub_1D8CD7F24();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v5, 1701869940, 0xE400000000000000);
    sub_1D8CC9F60();
    v6 = sub_1D8CD7DB4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8CB4574(v6, 0x6E6F697461727564, 0xE800000000000000);
    return v3;
  }

  return result;
}

uint64_t sub_1D8C9B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = sub_1D8C9785C(a2, a3);
  if (v12)
  {
    v13 = v11;
    v14 = *(a1 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + 40);
    v15 = v31[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA48, &qword_1D8CDBA70);
    sub_1D8CD8084();
    v16 = *(v31[6] + 16 * v13 + 8);

    v17 = *(v31[7] + 8 * v13);
    type metadata accessor for ActivityMonitor.WeakReference();
    sub_1D8CD8094();
    *(a1 + 40) = v31;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 40))(a4, a5, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = swift_getObjectType();
    v22 = (*(a5 + 32))(v21, a5);
    sub_1D8CD7E24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D8CD8F50;
    v24 = (*(a5 + 24))(v21, a5);
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1D8C96E60();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    (*(a5 + 40))(v21, a5);
    v29 = sub_1D8CD8024();
    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    sub_1D8CD7904();
  }
}

uint64_t sub_1D8C9B6BC()
{
  sub_1D8C9B6F4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D8C9B71C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D8C9B778(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D8C9B798()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1D8C9AA78();
  }

  v1 = sub_1D8C9B790();
  v2 = *(v1 + qword_1ED9C5628);

  v3 = *(v1 + qword_1ED9C5618 + 16);

  return v1;
}

uint64_t sub_1D8C9B7F0()
{
  v0 = sub_1D8C9B798();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8C9B844()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4();
  sub_1D8C9B71C(v0 + *(v5 + 136), &qword_1ECAAC7D8, &qword_1D8CD95B0);
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 144);
  v8 = sub_1D8CD7674();
  OUTLINED_FUNCTION_25(v8);
  (*(v9 + 8))(v0 + v7);
  OUTLINED_FUNCTION_4();
  v11 = *(v0 + *(v10 + 152));

  return v0;
}

uint64_t sub_1D8C9B95C()
{
  MEMORY[0x1DA727900](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1D8C9B99C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;

    os_unfair_lock_unlock((v1 + 48));
  }
}

uint64_t sub_1D8C9B9EC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB6D2C, 0, 0);
  }

  else
  {
    sub_1D8C9B71C(v3 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
    v9 = OUTLINED_FUNCTION_18_1();

    return v10(v9);
  }
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_13_1()
{
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  sub_1D8CAD7DC((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void SessionType.biomeStreamDescriptor.getter(char *a1@<X8>)
{
  v3 = 2;
  switch(*(v1 + 8))
  {
    case 1:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = 1;
      }

      break;
    case 2:
      break;
    case 3:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 3;
      goto LABEL_51;
    case 4:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 4;
      goto LABEL_51;
    case 5:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 5;
      goto LABEL_51;
    case 6:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 6;
      goto LABEL_51;
    case 7:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 7;
      goto LABEL_51;
    case 8:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 8;
      goto LABEL_51;
    case 9:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 9;
      goto LABEL_51;
    case 0xALL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 10;
      goto LABEL_51;
    case 0xBLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 11;
      goto LABEL_51;
    case 0xCLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 12;
      goto LABEL_51;
    case 0xDLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 13;
      goto LABEL_51;
    case 0xELL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 14;
      goto LABEL_51;
    case 0xFLL:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      v5 = 15;
LABEL_51:
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = v5;
      }

      break;
    case 0x10:
      if (qword_1ECAAC4B8 != -1)
      {
        OUTLINED_FUNCTION_0_19();
      }

      OUTLINED_FUNCTION_2_17();
      if (v4)
      {
        v3 = 17;
      }

      else
      {
        v3 = 16;
      }

      break;
    default:
      v3 = 17;
      break;
  }

  *a1 = v3;
}

uint64_t getEnumTagSinglePayload for FeedbackStreamDescriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

PegasusConfiguration::FeedbackStoreConfig __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackStoreConfig.init(fileManager:streams:)(NSFileManager fileManager, Swift::OpaquePointer streams)
{
  v4 = v3;
  v29 = v2;
  sub_1D8C9C284();
  v6 = sub_1D8CD7A84();
  v7 = 0;
  v32 = *(streams._rawValue + 2);
  for (i = streams._rawValue; ; streams._rawValue = i)
  {
    if (v32 == v7)
    {

      *v29 = v6;
      return result;
    }

    if (v7 >= *(streams._rawValue + 2))
    {
      break;
    }

    v8 = *(streams._rawValue + v7 + 32);
    LOBYTE(v38) = *(streams._rawValue + v7 + 32);
    v9 = fileManager.super.isa;
    BiomeStreamConfig.init(fileManager:descriptor:)(v9, &v38, v37);
    if (v4)
    {
    }

    v33 = v7;
    v11 = v37[0];
    v10 = v37[1];
    v12 = v37[2];
    v34 = v37[3];
    v35 = v37[4];
    v36 = v37[5];
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v6;
    v13 = sub_1D8C9D3E8(v8);
    if (__OFADD__(v6[2], (v14 & 1) == 0))
    {
      goto LABEL_17;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACCA8, &qword_1D8CDB2E0);
    if (sub_1D8CD8084())
    {
      v17 = sub_1D8C9D3E8(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v15 = v17;
    }

    v6 = v38;
    if (v16)
    {
      v19 = (v38[7] + 48 * v15);
      v20 = v19[1];
      v21 = v19[3];
      v22 = v19[4];
      v23 = v19[5];
      *v19 = v11;
      v19[1] = v10;
      v19[2] = v12;
      v19[3] = v34;
      v19[4] = v35;
      v19[5] = v36;
    }

    else
    {
      v38[(v15 >> 6) + 8] |= 1 << v15;
      *(v6[6] + v15) = v8;
      v24 = (v6[7] + 48 * v15);
      *v24 = v11;
      v24[1] = v10;
      v24[2] = v12;
      v24[3] = v34;
      v24[4] = v35;
      v24[5] = v36;
      v25 = v6[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v6[2] = v27;
    }

    v4 = 0;
    v7 = v33 + 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result.streamConfigs._rawValue = sub_1D8CD81D4();
  __break(1u);
  return result;
}

unint64_t sub_1D8C9C284()
{
  result = qword_1ED9C4140;
  if (!qword_1ED9C4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C4140);
  }

  return result;
}

void BiomeStreamConfig.init(fileManager:descriptor:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D8CD7554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a2;
  v12 = v34;
  v13 = FeedbackStreamDescriptor.tableName.getter();
  v15 = v14;
  v16 = "PegasusConfiguration";
  if (!v12)
  {
    v16 = "dback.v2.FeedbackPayload";
  }

  v30 = v13;
  v31 = v16 | 0x8000000000000000;
  v33 = v12;
  NSFileManager.biomeStreamURL(for:)(&v33, v11);
  if (v3)
  {
  }

  else
  {
    v27 = 0xD000000000000028;
    v28 = sub_1D8C9D318();
    v17 = sub_1D8CD74F4();
    v29 = v15;
    v19 = v18;
    (*(v8 + 8))(v11, v7);
    if (v12)
    {
      v20 = v27;
    }

    else
    {
      v20 = 0xD000000000000026;
    }

    if (v12)
    {
      v21 = 0x200000;
    }

    else
    {
      v21 = 0x20000;
    }

    v22 = sub_1D8C9D35C(v17, v19, v21, 3);
    v32 = v12;
    FeedbackStreamDescriptor.rawValue.getter();
    v23 = sub_1D8CD7AD4();

    v24 = v29;
    *a3 = v30;
    a3[1] = v24;
    v25 = v31;
    a3[2] = v20;
    a3[3] = v25;
    a3[4] = v22;
    a3[5] = v23;
  }
}

uint64_t FeedbackStreamDescriptor.tableName.getter()
{
  if (!*v0)
  {
    return 0x5F6E6F6973736573;
  }

  v7 = *v0;
  FeedbackStreamDescriptor.rawValue.getter();
  sub_1D8C94EC8();
  v1 = sub_1D8CD7F34();

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 16 + 16 * v3);
    v6 = *v4;
    v5 = v4[1];

    MEMORY[0x1DA726A90](0x6569765F7366735FLL, 0xE900000000000077);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t FeedbackStreamDescriptor.rawValue.getter()
{
  result = 0x6E6F6973736573;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 6:
    case 0xB:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xF:
      v2 = 5;
      goto LABEL_14;
    case 9:
    case 0xA:
      v2 = 9;
LABEL_14:
      result = v2 | 0xD000000000000010;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NSFileManager.biomeStreamURL(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_1D8CD7484();
  v5 = OUTLINED_FUNCTION_3(v4);
  v52 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_1D8CD7554();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v25 = *a1;
  sub_1D8C9CC40();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D8C953A4(v13, &qword_1ECAAC668, &qword_1D8CD8FA0);
    sub_1D8CC082C();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v50 = v25;
    v47 = *(v17 + 32);
    v48 = v17 + 32;
    v47(v24, v13, v14);
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8CD7A04();
    __swift_project_value_buffer(v28, qword_1ED9C5668);
    (*(v17 + 16))(v22, v24, v14);
    v29 = sub_1D8CD79E4();
    v30 = sub_1D8CD7E04();
    v31 = os_log_type_enabled(v29, v30);
    v49 = v17;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v46 = v2;
      v33 = v32;
      v44 = swift_slowAlloc();
      v45 = v4;
      v53[0] = v44;
      *v33 = 136315138;
      sub_1D8C9D2C0();
      v34 = sub_1D8CD8124();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_2_11();
      (v17)(v37);
      v38 = sub_1D8C9D088(v34, v36, v53);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D8C92000, v29, v30, "Container URL: %s", v33, 0xCu);
      v39 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      v4 = v45;
      MEMORY[0x1DA727900](v39, -1, -1);
      MEMORY[0x1DA727900](v33, -1, -1);
    }

    else
    {

      v40 = OUTLINED_FUNCTION_2_11();
      (v17)(v40);
    }

    if (v50)
    {
      v53[0] = 0x6B63616264656566;
      v53[1] = 0xE800000000000000;
      v42 = v51;
      v41 = v52;
      (*(v52 + 104))(v51, *MEMORY[0x1E6968F58], v4);
      sub_1D8C94EC8();
      sub_1D8CD7544();
      (*(v41 + 8))(v42, v4);
      return (v17)(v24, v14);
    }

    else
    {
      return (v47)(v54, v24, v14);
    }
  }
}

void sub_1D8C9CC40()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v5 = OUTLINED_FUNCTION_36(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = sub_1D8CD7554();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  sub_1D8C950EC(v1);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v22 = *(v13 + 32);
  v22(v21, v9, v10);
  if (qword_1ED9C4150 != -1)
  {
    OUTLINED_FUNCTION_32();
  }

  v23 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v23, qword_1ED9C5668);
  v24 = *(v13 + 16);
  v25 = OUTLINED_FUNCTION_62();
  v26(v25);
  v27 = sub_1D8CD79E4();
  v28 = sub_1D8CD7E04();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_47();
    v29 = swift_slowAlloc();
    v40 = v3;
    v30 = v29;
    OUTLINED_FUNCTION_78();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v30 = 136315138;
    OUTLINED_FUNCTION_2_0();
    sub_1D8C9D040(v31, v32);
    v33 = sub_1D8CD8124();
    v39 = v22;
    v35 = v34;
    (*(v13 + 8))(v18, v10);
    v36 = sub_1D8C9D088(v33, v35, &v41);
    v22 = v39;

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1D8C92000, v27, v28, "PegasusConfiguration container URL: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    v3 = v40;
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  v22(v3, v21, v10);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  OUTLINED_FUNCTION_68();
}

id OUTLINED_FUNCTION_73(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1D8C9D040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8C9D088(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8C9D14C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D8C9D24C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1D8C9D14C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D8CB0A88(a5, a6);
    *a1 = v9;
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
    result = sub_1D8CD8044();
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

uint64_t sub_1D8C9D24C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D8C9D2C0()
{
  result = qword_1ED9C4158[0];
  if (!qword_1ED9C4158[0])
  {
    sub_1D8CD7554();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9C4158);
  }

  return result;
}

unint64_t sub_1D8C9D318()
{
  result = qword_1ED9C4120;
  if (!qword_1ED9C4120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9C4120);
  }

  return result;
}

id sub_1D8C9D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D8CD7AD4();

  v8 = [v6 initWithStoreBasePath:v7 segmentSize:a3 protectionClass:a4];

  return v8;
}

unint64_t sub_1D8C9D3E8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1D8C9D498(*(v1 + 40), a1);

  return sub_1D8C9D4B0(v2, v3);
}

uint64_t sub_1D8C9D42C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1D8CD8254();
  a3(v4);
  sub_1D8CD7BD4();

  return sub_1D8CD8284();
}

unint64_t sub_1D8C9D4B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E6F6973736573;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x697269732E65;
          goto LABEL_18;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD610;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x80000001D8CDD630;
          break;
        case 6:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x7377656E2E65;
          goto LABEL_18;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000001D8CDD660;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x80000001D8CDD680;
          break;
        case 9:
          v8 = 0xD000000000000019;
          v7 = 0x80000001D8CDD6A0;
          break;
        case 0xA:
          v8 = 0xD000000000000019;
          v7 = 0x80000001D8CDD6C0;
          break;
        case 0xB:
          v8 = 0x6C7070612E6D6F63;
          v9 = 0x6C69616D2E65;
LABEL_18:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000001D8CDD6F0;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x80000001D8CDD710;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x80000001D8CDD730;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x80000001D8CDD750;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      v10 = 0xE700000000000000;
      v11 = 0x6E6F6973736573;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD5C0;
          break;
        case 2:
          v11 = 0xD000000000000013;
          v10 = 0x80000001D8CDD5E0;
          break;
        case 3:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x697269732E65;
          goto LABEL_36;
        case 4:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD610;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD630;
          break;
        case 6:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x7377656E2E65;
          goto LABEL_36;
        case 7:
          v11 = 0xD000000000000011;
          v10 = 0x80000001D8CDD660;
          break;
        case 8:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD680;
          break;
        case 9:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6A0;
          break;
        case 10:
          v11 = 0xD000000000000019;
          v10 = 0x80000001D8CDD6C0;
          break;
        case 11:
          v11 = 0x6C7070612E6D6F63;
          v12 = 0x6C69616D2E65;
LABEL_36:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 12:
          v11 = 0xD000000000000018;
          v10 = 0x80000001D8CDD6F0;
          break;
        case 13:
          v11 = 0xD000000000000014;
          v10 = 0x80000001D8CDD710;
          break;
        case 14:
          v11 = 0xD000000000000012;
          v10 = 0x80000001D8CDD730;
          break;
        case 15:
          v11 = 0xD000000000000015;
          v10 = 0x80000001D8CDD750;
          break;
        case 16:
          v11 = 0xD000000000000010;
          v10 = 0x80000001D8CDD770;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1D8CD8154();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id FeedbackStoreConfig.getConfig(forStream:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*(v5 + 16) && (v6 = sub_1D8C9D3E8(*a1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 48 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    *a2 = *v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;

    v14 = v12;
    return v13;
  }

  else
  {
    sub_1D8CD8014();

    v16 = FeedbackStreamDescriptor.rawValue.getter();
    MEMORY[0x1DA726A90](v16);

    sub_1D8CC082C();
    swift_allocError();
    *v17 = 0xD000000000000013;
    v17[1] = 0x80000001D8CDEA20;
    return swift_willThrow();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t SessionType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 - 1) >= 0x10)
  {
    if (v2)
    {
    }

    else
    {
      sub_1D8C96324(v1, 0);
      return 0x6E776F6E6B6E753CLL;
    }
  }

  else
  {
    v5 = v1;
    v6 = v2;
    SessionType.biomeStreamDescriptor.getter(&v4);
    if (v4 == 17)
    {
      return 0x6E776F6E6B6E753CLL;
    }

    else
    {
      return FeedbackStreamDescriptor.rawValue.getter();
    }
  }

  return v1;
}

uint64_t SessionType.clientType.getter()
{
  v1 = v0[1];
  if ((v1 - 1) < 0x10)
  {
    return qword_1D8CDCD98[v1 - 1];
  }

  v3 = *v0;

  Client.init(_:)(v1, &v5);
  v2 = v5;

  return v2;
}

uint64_t Client.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1D8CD7B74();
    v5 = v4;

    OUTLINED_FUNCTION_6();
    v101 = v6;
    v7 = sub_1D8C94EC8();
    if (OUTLINED_FUNCTION_0_18(v7, MEMORY[0x1E69E6158], v8, v9, v3, v5, 0xD000000000000017, v101))
    {

      v10 = 24;
      v11 = 21;
    }

    else
    {
      OUTLINED_FUNCTION_2_16();
      if (OUTLINED_FUNCTION_0_18(v14, MEMORY[0x1E69E6158], v15, v16))
      {

        v11 = 1;
        v10 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_2_16();
        if (OUTLINED_FUNCTION_0_18(v17, MEMORY[0x1E69E6158], v18, v19))
        {

          v11 = 2;
          v10 = 2;
        }

        else
        {
          OUTLINED_FUNCTION_2_16();
          if (OUTLINED_FUNCTION_0_18(v20, MEMORY[0x1E69E6158], v21, v22))
          {

            v11 = 3;
            v10 = 3;
          }

          else
          {
            v23 = sub_1D8CD7B74();
            v27 = OUTLINED_FUNCTION_0_18(v23, MEMORY[0x1E69E6158], v25, v26, v3, v5, v23, v24);

            if (v27)
            {

              v10 = 26;
              v11 = 23;
            }

            else
            {
              OUTLINED_FUNCTION_2_16();
              if (OUTLINED_FUNCTION_0_18(v28, MEMORY[0x1E69E6158], v29, v30))
              {

                v11 = 4;
                v10 = 4;
              }

              else
              {
                OUTLINED_FUNCTION_2_16();
                if (OUTLINED_FUNCTION_0_18(v31, MEMORY[0x1E69E6158], v32, v33))
                {

                  v11 = 5;
                  v10 = 5;
                }

                else
                {
                  OUTLINED_FUNCTION_2_16();
                  if (OUTLINED_FUNCTION_0_18(v34, MEMORY[0x1E69E6158], v35, v36))
                  {

                    v11 = 6;
                    v10 = 6;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_2_16();
                    if (OUTLINED_FUNCTION_0_18(v37, MEMORY[0x1E69E6158], v38, v39))
                    {

                      v11 = 8;
                      v10 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_2_16();
                      if (OUTLINED_FUNCTION_0_18(v40, MEMORY[0x1E69E6158], v41, v42))
                      {

                        v11 = 9;
                        v10 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_2_16();
                        if (OUTLINED_FUNCTION_0_18(v43, MEMORY[0x1E69E6158], v44, v45))
                        {

                          v11 = 10;
                          v10 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_2_16();
                          if (OUTLINED_FUNCTION_0_18(v46, MEMORY[0x1E69E6158], v47, v48))
                          {

                            v11 = 12;
                            v10 = 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_6();
                            if (OUTLINED_FUNCTION_0_18(v49, MEMORY[0x1E69E6158], v50, v51, v3, v5, 0xD000000000000012, v52))
                            {

                              v11 = 13;
                              v10 = 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_2_16();
                              if (OUTLINED_FUNCTION_0_18(v53, MEMORY[0x1E69E6158], v54, v55))
                              {

                                v10 = 15;
                                v11 = 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_2_16();
                                if (OUTLINED_FUNCTION_0_18(v56, MEMORY[0x1E69E6158], v57, v58))
                                {

                                  v10 = 14;
                                  v11 = 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_2_16();
                                  if (OUTLINED_FUNCTION_0_18(v59, MEMORY[0x1E69E6158], v60, v61))
                                  {

                                    v10 = 20;
                                    v11 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_2_16();
                                    if (OUTLINED_FUNCTION_0_18(v62, MEMORY[0x1E69E6158], v63, v64))
                                    {

                                      v10 = 21;
                                      v11 = 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_6();
                                      if (OUTLINED_FUNCTION_0_18(v65, MEMORY[0x1E69E6158], v66, v67, v3, v5, 0xD000000000000015, v68))
                                      {

                                        v10 = 27;
                                        v11 = 24;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_6();
                                        if (OUTLINED_FUNCTION_0_18(v69, MEMORY[0x1E69E6158], v70, v71, v3, v5, 0xD000000000000015, v72))
                                        {

                                          v10 = 28;
                                          v11 = 25;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6();
                                          if (OUTLINED_FUNCTION_0_18(v73, MEMORY[0x1E69E6158], v74, v75, v3, v5, 0xD000000000000012, v76))
                                          {

                                            v10 = 29;
                                            v11 = 26;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_2_16();
                                            v80 = OUTLINED_FUNCTION_0_18(v77, MEMORY[0x1E69E6158], v78, v79);
                                            if (v80)
                                            {

                                              v10 = 31;
                                              v11 = 29;
                                            }

                                            else
                                            {
                                              v100 = v3;
                                              v101 = v5;
                                              v87 = OUTLINED_FUNCTION_4_6(v80, MEMORY[0x1E69E6158], v81, v82, v83, v84, v85, v86, 0x64636573726170);
                                              if (v87)
                                              {

                                                v11 = 7;
                                                v10 = 7;
                                              }

                                              else
                                              {
                                                v100 = v3;
                                                v101 = v5;
                                                if (OUTLINED_FUNCTION_4_6(v87, MEMORY[0x1E69E6158], v88, v89, v90, v91, v92, v93, 0x6B73757361676570))
                                                {

                                                  v10 = 19;
                                                  v11 = 16;
                                                }

                                                else
                                                {
                                                  if (qword_1ED9C4148 != -1)
                                                  {
                                                    swift_once();
                                                  }

                                                  v94 = sub_1D8CD7A04();
                                                  __swift_project_value_buffer(v94, qword_1ED9C5650);

                                                  v95 = sub_1D8CD79E4();
                                                  v96 = sub_1D8CD7E24();

                                                  if (os_log_type_enabled(v95, v96))
                                                  {
                                                    v97 = swift_slowAlloc();
                                                    v98 = swift_slowAlloc();
                                                    v100 = v98;
                                                    *v97 = 136315138;
                                                    v99 = sub_1D8C9D088(v3, v5, &v100);

                                                    *(v97 + 4) = v99;
                                                    _os_log_impl(&dword_1D8C92000, v95, v96, "Failed to get client type for %s", v97, 0xCu);
                                                    __swift_destroy_boxed_opaque_existential_0Tm(v98);
                                                    MEMORY[0x1DA727900](v98, -1, -1);
                                                    MEMORY[0x1DA727900](v97, -1, -1);
                                                  }

                                                  else
                                                  {
                                                  }

                                                  v11 = 0;
                                                  v10 = 0;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    LOBYTE(v100) = v10;
    result = PegasusClientName.rawValue.getter();
  }

  else
  {
    v11 = 0;
    v12 = 0xE700000000000000;
    result = 0x6E776F6E6B6E55;
  }

  *a2 = v11;
  a2[1] = result;
  a2[2] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1D8CD7BD4();
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2)
{
  sub_1D8C9E824(a1, a2);
  sub_1D8C9E824(v2, v3);

  return sub_1D8C96324(v2, v3);
}

uint64_t PegasusClientName.rawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x697261666173;
      break;
    case 2:
      result = 0x6867696C746F7073;
      break;
    case 3:
      result = 1769105779;
      break;
    case 4:
      result = 0x70756B6F6F6CLL;
      break;
    case 5:
      result = 0x736567617373656DLL;
      break;
    case 6:
      result = 1937204590;
      break;
    case 7:
      result = 0x64636573726170;
      break;
    case 8:
      result = 0x745F636573726170;
      break;
    case 9:
      v2 = 1701998435;
      goto LABEL_9;
    case 0xA:
      result = 0x7475746867696C66;
      break;
    case 0xB:
      v2 = 1936744813;
LABEL_9:
      result = v2 | 0x6767757300000000;
      break;
    case 0xC:
      result = 1818845549;
      break;
    case 0xD:
    case 0x1D:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x6F72657473797274;
      break;
    case 0xF:
      result = 0x6570786574657564;
      break;
    case 0x10:
    case 0x17:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0x616E61616964656DLL;
      break;
    case 0x12:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0x6B73757361676570;
      break;
    case 0x14:
      result = 0x736F746F6870;
      break;
    case 0x15:
      result = 0x6369706F746F6870;
      break;
    case 0x16:
      result = 0xD000000000000014;
      break;
    case 0x18:
      result = 0xD000000000000017;
      break;
    case 0x19:
      result = 0x6361666B636F6C63;
      break;
    case 0x1A:
      result = 0x657370756B6F6F6CLL;
      break;
    case 0x1B:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    case 0x1E:
      result = 0x6574707972636E65;
      break;
    case 0x1F:
      result = 1936746868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8C9E824(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x10)
  {
  }

  return result;
}

uint64_t sub_1D8C9EAC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1D8C9EB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = OUTLINED_FUNCTION_63();

  return __swift_storeEnumTagSinglePayload(v3, v4, a2, v5);
}

uint64_t sub_1D8C9EB90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8C9EBA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1D8C9EBE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8C9EC1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  sub_1D8CAD730(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1D8C9EC78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1D8C9ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7674();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D8C9ED74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7674();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_63();

    return __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D8C9EEF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8C9EF28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_1D8CD72C4();
  OUTLINED_FUNCTION_3(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  v18 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1D8C9F0A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D8C9F0D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[9];

  v4 = v0[12];

  v5 = v0[14];

  if (v0[15])
  {
    v6 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1D8C9F13C()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1D8C9F6A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8C9F6DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D8C9F854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD76C4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1D8CD7674();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D8C9F8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D8CD76C4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1D8CD7674();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D8C9F9E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8CD7554();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D8C9FA6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8CD7554();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8C9FAEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D8C9FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7554();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D8C9FE94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7554();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8C9FF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8CD7554();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D8CA0010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8CD7554();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_1D8CA00C0(void *a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (!v2)
  {
    return 7;
  }

  if (v2 != 1)
  {
    return qword_1D8CD97A0[a1];
  }

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  v4 = OUTLINED_FUNCTION_67();
  if (v4)
  {
    v5 = v10;
  }

  else
  {
    v5 = 6;
  }

  if (v4)
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v12 | ~v4;
  v8 = sub_1D8CA00C0(v5, v6 | ((v12 & 1 | ((v4 & 1) == 0)) << 8));
  sub_1D8CAD9C0(v5, v6, v7 & 1);
  return v8;
}

uint64_t sub_1D8CA0190(void *a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v11;
      }

      else
      {
        v5 = 6;
      }

      if (v4)
      {
        v6 = v12;
      }

      else
      {
        v6 = 0;
      }

      v7 = v13 | ~v4;
      v8 = sub_1D8CA0190(v5, v6 | ((v13 & 1 | ((v4 & 1) == 0)) << 8));
      sub_1D8CAD9C0(v5, v6, v7 & 1);
    }

    else
    {
      v8 = 0x65524C5255206F4ELL;
      switch(a1)
      {
        case 1uLL:
          v8 = 0x20747865746E6F43;
          break;
        case 2uLL:
        case 3uLL:
          v8 = 0xD000000000000014;
          break;
        case 4uLL:
        case 7uLL:
          v8 = 0x2064696C61766E69;
          break;
        case 5uLL:
          v8 = 0xD00000000000001CLL;
          break;
        case 6uLL:
          v8 = 0x726520726568744FLL;
          break;
        default:
          return v8;
      }
    }
  }

  else
  {
    v9 = sub_1D8CD8124();
    MEMORY[0x1DA726A90](v9);

    return 0x6F43737574617473;
  }

  return v8;
}

unint64_t sub_1D8CA03B8(char a1, unsigned int a2)
{
  v2 = (a2 >> 7) & 3;
  if (!v2)
  {
    return 19;
  }

  if (v2 == 1)
  {
    return a2 & 0x7F;
  }

  return 0x211815201F1E1D19uLL >> (8 * a1);
}

id sub_1D8CA03FC(id a1, unsigned int a2)
{
  v2 = a1;
  if (((a2 >> 7) & 3) != 1)
  {
    v4 = a2 | (((a2 & 0x100) != 0) << 8);
    v5 = sub_1D8CA00C0(a1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F40;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    v7 = sub_1D8CA0190(v2, v4);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    v9 = sub_1D8CD7A84();
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    return sub_1D8CB7074(0xD000000000000018, 0x80000001D8CDDBE0, v5, v9);
  }

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  if (!OUTLINED_FUNCTION_67())
  {
    return sub_1D8CD7444();
  }

  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_86();
  return v2;
}

uint64_t ShouldThrottleConfigFetchResultReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](v1);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CA0610()
{
  v1 = *v0;
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](v1);
  return sub_1D8CD8284();
}

BOOL static ShouldThrottleConfigFetchResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
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

uint64_t LocalCachePaths.init(standard:legacy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8CADBEC(a1, a3, &qword_1ECAAC668, &qword_1D8CD8FA0);
  v5 = type metadata accessor for LocalCachePaths(0);
  return sub_1D8CADBEC(a2, a3 + *(v5 + 20), &qword_1ECAAC668, &qword_1D8CD8FA0);
}

void static LocalCachePaths.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D8CD7554();
  v5 = OUTLINED_FUNCTION_3(v4);
  v54 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v51 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v12 = OUTLINED_FUNCTION_36(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7();
  v50 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC670, &qword_1D8CD8FA8);
  v21 = OUTLINED_FUNCTION_8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - v29;
  v31 = *(v28 + 48);
  v52 = v3;
  sub_1D8C979F0(v3, &v49 - v29, &qword_1ECAAC668, &qword_1D8CD8FA0);
  v53 = v1;
  sub_1D8C979F0(v1, &v30[v31], &qword_1ECAAC668, &qword_1D8CD8FA0);
  OUTLINED_FUNCTION_14(v30);
  if (!v32)
  {
    sub_1D8C979F0(v30, v19, &qword_1ECAAC668, &qword_1D8CD8FA0);
    OUTLINED_FUNCTION_14(&v30[v31]);
    if (!v32)
    {
      v34 = v54;
      (*(v54 + 32))(v51, &v30[v31], v4);
      OUTLINED_FUNCTION_2_0();
      sub_1D8C9D040(v35, v36);
      v37 = sub_1D8CD7AC4();
      v38 = *(v34 + 8);
      v39 = OUTLINED_FUNCTION_38();
      v38(v39);
      (v38)(v19, v4);
      sub_1D8CADF40(v30, &qword_1ECAAC668, &qword_1D8CD8FA0);
      if ((v37 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    (*(v54 + 8))(v19, v4);
LABEL_9:
    v33 = v30;
LABEL_20:
    sub_1D8CADF40(v33, &qword_1ECAAC670, &qword_1D8CD8FA8);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14(&v30[v31]);
  if (!v32)
  {
    goto LABEL_9;
  }

  sub_1D8CADF40(v30, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_11:
  v40 = *(type metadata accessor for LocalCachePaths(0) + 20);
  v41 = *(v20 + 48);
  sub_1D8C979F0(v52 + v40, v26, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8C979F0(v53 + v40, v26 + v41, &qword_1ECAAC668, &qword_1D8CD8FA0);
  OUTLINED_FUNCTION_14(v26);
  if (!v32)
  {
    v42 = v50;
    sub_1D8C979F0(v26, v50, &qword_1ECAAC668, &qword_1D8CD8FA0);
    OUTLINED_FUNCTION_14(v26 + v41);
    if (!v43)
    {
      v44 = v54;
      (*(v54 + 32))(v51, v26 + v41, v4);
      OUTLINED_FUNCTION_2_0();
      sub_1D8C9D040(v45, v46);
      sub_1D8CD7AC4();
      v47 = *(v44 + 8);
      v48 = OUTLINED_FUNCTION_38();
      v47(v48);
      (v47)(v42, v4);
      sub_1D8CADF40(v26, &qword_1ECAAC668, &qword_1D8CD8FA0);
      goto LABEL_21;
    }

    (*(v54 + 8))(v42, v4);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14(v26 + v41);
  if (!v32)
  {
LABEL_19:
    v33 = v26;
    goto LABEL_20;
  }

  sub_1D8CADF40(v26, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_21:
  OUTLINED_FUNCTION_68();
}

uint64_t sub_1D8CA0C68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = OUTLINED_FUNCTION_38();
    sub_1D8CA12F8(v5, v6);
  }

  return result;
}

uint64_t sub_1D8CA0CD4()
{
  if (!swift_unknownObjectWeakLoadStrong() || (v1 = *(v0 + 232), ObjectType = swift_getObjectType(), LOBYTE(v1) = (*(v1 + 16))(ObjectType, v1), result = swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    v4 = *(v0 + 208);
    OUTLINED_FUNCTION_60();
    v5 = swift_allocObject();
    swift_weakInit();

    sub_1D8CA66FC(&unk_1D8CD9670, v5);
  }

  return result;
}

uint64_t sub_1D8CA0DB0()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1D8CA0E5C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  OUTLINED_FUNCTION_31();

  return v5(v2, v4);
}

uint64_t sub_1D8CA0E5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for LocalCachePaths(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8CD7554();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CA2BAC();
  sub_1D8C979F0(v9, v5, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8C9A6EC(v9, type metadata accessor for LocalCachePaths);
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_1D8CADF40(v5, &qword_1ECAAC668, &qword_1D8CD8FA0);
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v15 = sub_1D8CD7A04();
    __swift_project_value_buffer(v15, qword_1ED9C4008);
    v16 = sub_1D8CD79E4();
    v17 = sub_1D8CD7E14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8C92000, v16, v17, "ConfigDebug: pathToCache=nil", v18, 2u);
      MEMORY[0x1DA727900](v18, -1, -1);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v5, v10);
    v19 = *(v0 + 128);
    v20 = sub_1D8CD74A4();
    v21 = *(v1 + 168);
    v22 = *(v1 + 176);
    v23 = sub_1D8CD7AD4();
    v24 = [v19 loadWithUrl:v20 userAgent:v23 userDefaults:0];

    if (v24 || sub_1D8CA2DC0())
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v25 = sub_1D8CD7A04();
      __swift_project_value_buffer(v25, qword_1ED9C4008);
      v26 = sub_1D8CD79E4();
      v27 = sub_1D8CD7E04();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D8C92000, v26, v27, "Loaded config from disk cache", v28, 2u);
        MEMORY[0x1DA727900](v28, -1, -1);
      }
    }

    else
    {
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v30 = sub_1D8CD7A04();
      __swift_project_value_buffer(v30, qword_1ED9C4008);
      v26 = sub_1D8CD79E4();
      v31 = sub_1D8CD7E14();
      if (os_log_type_enabled(v26, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D8C92000, v26, v31, "ConfigDebug: cachedConfig=nil", v32, 2u);
        MEMORY[0x1DA727900](v32, -1, -1);
      }
    }

    (*(v11 + 8))(v14, v10);
  }

  return 0;
}

uint64_t sub_1D8CA12F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v7 = OUTLINED_FUNCTION_36(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v12 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v12, qword_1ED9C4008);
  v13 = sub_1D8CD79E4();
  v14 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v14))
  {
    v15 = OUTLINED_FUNCTION_45();
    *v15 = 0;
    _os_log_impl(&dword_1D8C92000, v13, v14, "Configuration changed", v15, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v3 + 232);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(a1, a2, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8CD7D64();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v24 = OUTLINED_FUNCTION_58();
    sub_1D8CB5318(v24, v25, v11, v26, v27);
  }
}

uint64_t sub_1D8CA14F0()
{
  OUTLINED_FUNCTION_10();
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1ECAAC608 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  [v0 postNotificationName:qword_1ECAACA50 object:0 userInfo:0];

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1D8CA15F0()
{
  OUTLINED_FUNCTION_43();
  v1 = OUTLINED_FUNCTION_87();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_57(v4, v5);
  OUTLINED_FUNCTION_35(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_79(v14);

  return sub_1D8CA1A5C(v15, 2, 0, 2, 0);
}

uint64_t sub_1D8CA16D0()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  OUTLINED_FUNCTION_61(v7, v8);
  v10 = *(v9 + 216);
  v11 = *v1;
  OUTLINED_FUNCTION_1();
  *v12 = v11;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D8CA17D8()
{
  v2 = *(v0 + 224);
  *(v0 + 128) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  OUTLINED_FUNCTION_38();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 121);
    v7 = OUTLINED_FUNCTION_63();
    v9 = sub_1D8CA03B8(v7, v8);
    if (v9 == 1)
    {
      *(*(v0 + 208) + qword_1ED9C3D50) = 1;
    }

    *(*(v0 + 208) + qword_1ED9C3D48) = v9;
    v10 = OUTLINED_FUNCTION_63();
    sub_1D8CA03FC(v10, v11);
    swift_willThrow();
    sub_1D8CAD9C0(v4, v5, v6);

    sub_1D8C9AA78();
  }

  else
  {
    v12 = *(v0 + 208);

    *(v12 + qword_1ED9C3D48) = 24;
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v13 = *(v0 + 224);
    v14 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v14, qword_1ED9C4008);
    v15 = v13;
    v16 = sub_1D8CD79E4();
    v17 = sub_1D8CD7E04();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 224);
      OUTLINED_FUNCTION_47();
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_66();
      *v1 = 138412290;
      v20 = v18;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D8C92000, v16, v17, "Unexpected error type. Error: %@", v1, 0xCu);
      sub_1D8CADF40(v19, &unk_1ECAACEE0, &qword_1D8CD9C30);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    swift_willThrow();
    sub_1D8C9AA78();

    v24 = *(v0 + 224);
  }

  v25 = *(v0 + 200);
  sub_1D8C9B99C();
  OUTLINED_FUNCTION_13();

  return v26();
}

uint64_t sub_1D8CA1A5C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 168) = a3;
  *(v6 + 176) = v5;
  *(v6 + 257) = a5;
  *(v6 + 256) = a4;
  *(v6 + 160) = a2;
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  v8 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA1A98, 0, 0);
}

uint64_t sub_1D8CA1A98()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0[22] + 200);
  v0[23] = v1;
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 48));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 48));
  if (v3 == 2)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v4 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v4, qword_1ED9C4008);
    v5 = sub_1D8CD79E4();
    v6 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v6))
    {
      v7 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v7);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    sub_1D8CADB98();
    OUTLINED_FUNCTION_23();
    v13 = swift_allocError();
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v14 = v13;
    OUTLINED_FUNCTION_29(v14, 129);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v15();
  }

  else
  {
    v0[24] = *(v0[22] + 208);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_1D8CA1C5C;

    return sub_1D8CA64A8();
  }
}

uint64_t sub_1D8CA1C5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D8CA1D40()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 257);
  v5 = *(v0 + 160);
  v6 = *(v0 + 256);
  OUTLINED_FUNCTION_60();
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  swift_weakInit();
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v9;
  v10 = *(v0 + 64);
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 80) = v10;
  *(v8 + 96) = v5;
  *(v8 + 104) = v3;
  *(v8 + 112) = v6;

  sub_1D8C969AC(v0 + 16, v0 + 80);
  sub_1D8CAD75C(v5, v3, v6);
  v11 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D8CA1E44()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = sub_1D8CA5C8C(&unk_1D8CD95E0, *(v0 + 216));
  v5 = v4;
  v6 = v4 & 1;

  *(v0 + 224) = v3;
  *(v0 + 258) = v6;
  if (v5)
  {
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_1D8CA1FA8;
    v8 = *(v0 + 184);
    OUTLINED_FUNCTION_70();

    return sub_1D8CBDB9C();
  }

  else
  {
    v11 = *(MEMORY[0x1E69E86A8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    *v12 = v0;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DA10](v13);
  }
}

uint64_t sub_1D8CA1FA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 259) = v5;

  v6 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8CA2094()
{
  OUTLINED_FUNCTION_22();
  if (*(v0 + 259))
  {
    v1 = *(MEMORY[0x1E69E86A8] + 4);
    v2 = swift_task_alloc();
    *(v0 + 240) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    *v2 = v0;
    OUTLINED_FUNCTION_21();

    return MEMORY[0x1EEE6DA10](v0 + 144);
  }

  else
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v3 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v3, qword_1ED9C4008);
    v4 = sub_1D8CD79E4();
    v5 = sub_1D8CD7E04();
    if (OUTLINED_FUNCTION_48(v5))
    {
      v6 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v6);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v12 = *(v0 + 224);

    sub_1D8CADB98();
    OUTLINED_FUNCTION_23();
    v13 = swift_allocError();
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v14 = v13;
    OUTLINED_FUNCTION_29(v14, 129);
    swift_willThrow();

    OUTLINED_FUNCTION_13();

    return v15();
  }
}

uint64_t sub_1D8CA225C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8CA2358()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 258);
  v2 = *(v0 + 224);

  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  OUTLINED_FUNCTION_31();

  return v5();
}

uint64_t sub_1D8CA23C8()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  if (*(v0 + 258) == 1)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v3 = v1;
    OUTLINED_FUNCTION_29(v3, 129);
    swift_willThrow();
  }

  else
  {
    swift_willThrow();

    v4 = *(v0 + 248);
  }

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_1D8CA247C()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v10 = *(v9 + 320);
  v11 = *v1;
  OUTLINED_FUNCTION_1();
  *v12 = v11;
  *(v7 + 328) = v0;

  if (v0)
  {
    sub_1D8CAD720(*(v7 + 304), *(v7 + 312), *(v7 + 360));
  }

  else
  {
    v13 = *(v7 + 304);
    v14 = *(v7 + 312);
    *(v7 + 336) = v3;
    *(v7 + 361) = v5;
    sub_1D8CAD720(v13, v14, *(v7 + 360));
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D8CA25A4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 296);
  swift_unknownObjectRelease();
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);
  v4 = *(v0 + 361);

  OUTLINED_FUNCTION_31();

  return v5(v4, v2);
}

uint64_t sub_1D8CA2618()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = *(v3 + 288);

    v14 = *(v7 + 8);
    OUTLINED_FUNCTION_70();

    return v18(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1D8CA275C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CA27B8()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[37];
  swift_unknownObjectRelease();
  v2 = v0[41];
  v3 = v0[36];

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CA281C(uint64_t a1, void *a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for LocalCachePaths(0);
  v8 = OUTLINED_FUNCTION_36(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37();
  v13 = v12 - v11;
  v30 = v3[15];
  v14 = v3[2];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v3[29];
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 16))(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 1;
  }

  sub_1D8CA2BAC();
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v18 = sub_1D8CD7A04();
  __swift_project_value_buffer(v18, qword_1ED9C4008);

  v19 = sub_1D8CD79E4();
  v20 = sub_1D8CD7E04();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_47();
    v29 = v17;
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_78();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v21 = 136315138;
    v22 = sub_1D8CD7A74();
    v24 = sub_1D8C9D088(v22, v23, &v31);

    *(v21 + 4) = v24;
    _os_log_impl(&dword_1D8C92000, v19, v20, "saving config: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    v17 = v29;
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  sub_1D8CA8D80(a1, v30, a2, a3, v14, v17 & 1, v13);
  if (v25 >> 60 == 15)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v26, 4);
    swift_willThrow();
  }

  sub_1D8C9A6EC(v13, type metadata accessor for LocalCachePaths);
  return OUTLINED_FUNCTION_80();
}

BOOL sub_1D8CA2AE0(uint64_t a1)
{
  v3 = *(v1 + 152);
  v18[0] = *(v1 + 136);
  v18[1] = v3;
  v4 = *(v1 + 184);
  v18[2] = *(v1 + 168);
  v18[3] = v4;
  v5 = *(v1 + 152);
  v14 = *(v1 + 136);
  v15 = v5;
  v6 = *(v1 + 184);
  v16 = *(v1 + 168);
  v17 = v6;
  sub_1D8C969AC(v18, v19);
  v7 = sub_1D8C98C88(a1, &v14);
  v9 = v8;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_1D8CAD6CC(v19);
  if ((v9 & 0x80) == 0)
  {
    return v7 != 1;
  }

  v11 = OUTLINED_FUNCTION_38();
  sub_1D8CAD720(v11, v12, v13);
  return 1;
}

uint64_t sub_1D8CA2BAC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 232);
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 120);
    return sub_1D8CA2C3C();
  }
}

uint64_t sub_1D8CA2C3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v1 = OUTLINED_FUNCTION_36(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1D8C9CC40();
  v10 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_1D8CADF40(v6, &qword_1ECAAC668, &qword_1D8CD8FA0);
    v11 = 1;
  }

  else
  {
    sub_1D8CD74B4();
    OUTLINED_FUNCTION_25(v10);
    (*(v12 + 8))(v6, v10);
    v11 = 0;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v13 = *(type metadata accessor for LocalCachePaths(0) + 20);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  v17 = OUTLINED_FUNCTION_33();
  return sub_1D8CADBEC(v17, v18, v19, v20);
}

id sub_1D8CA2DC0()
{
  v1 = v0;
  v2 = sub_1D8CD7554();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v8 = v0[13];
  v9 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v8);
  (*(v9 + 8))(v8, v9);
  if (v10)
  {
    v11 = sub_1D8CD7B84();
    v13 = v12;

    if (v11 == 20035 && v13 == 0xE200000000000000)
    {

      v15 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_80();
      v15 = sub_1D8CD8154();
    }
  }

  else
  {
    v15 = 0;
  }

  type metadata accessor for PegasusConfigController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  if (v15)
  {
    v18 = 0x64656C6261736964;
  }

  else
  {
    v18 = 0x746C7561666564;
  }

  if (v15)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  v20 = sub_1D8CAD130(v18, v19, 0x7473696C70, 0xE500000000000000, v17);

  if (!v20)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v34 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v34, qword_1ED9C4008);
    v35 = sub_1D8CD79E4();
    v36 = sub_1D8CD7E24();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v37);
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v38, v39, "Bundle is missing config.plist");
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    return 0;
  }

  sub_1D8CD74E4();

  v21 = v1[16];
  v22 = sub_1D8CD74A4();
  v23 = v1[21];
  v24 = v1[22];
  v25 = sub_1D8CD7AD4();
  v26 = [v21 loadWithUrl:v22 userAgent:v25 userDefaults:0];

  if (!v26)
  {
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v40 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v40, qword_1ED9C4008);
    v41 = sub_1D8CD79E4();
    v42 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_53(v42))
    {
      v43 = OUTLINED_FUNCTION_45();
      *v43 = 0;
      _os_log_impl(&dword_1D8C92000, v41, v42, "Bundled config is not in plist format", v43, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v44 = *(v5 + 8);
    v45 = OUTLINED_FUNCTION_33();
    v46(v45);
    return 0;
  }

  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v27 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v27, qword_1ED9C4008);
  v28 = sub_1D8CD79E4();
  v29 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v29))
  {
    v30 = OUTLINED_FUNCTION_45();
    *v30 = 0;
    _os_log_impl(&dword_1D8C92000, v28, v29, "Bundled config load complete", v30, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v31 = *(v5 + 8);
  v32 = OUTLINED_FUNCTION_33();
  v33(v32);
  return v26;
}

uint64_t sub_1D8CA31B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));

  v3 = *(v0 + 128);
  swift_unknownObjectRelease();
  v4 = *(v0 + 152);
  v5 = *(v0 + 176);
  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  v9 = *(v0 + 216);

  sub_1D8C9B6F4(v0 + 224);
  v10 = *(v0 + 240);

  return v0;
}

uint64_t sub_1D8CA3254()
{
  sub_1D8CA31B4();

  return MEMORY[0x1EEE6BDC0](v0, 248, 7);
}

uint64_t sub_1D8CA3290(__int128 *a1)
{
  v3 = *(v1 + 240);
  v4 = *(*(v3 + 24) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  result = sub_1D8C98C88(v5, v11);
  if (v10 < 0)
  {
    sub_1D8CAD720(result, v9, v10);
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    switch(result)
    {
      case 1:
      case 8:
        result = result;
        break;
      default:
        goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1D8CA3374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA3394, 0, 0);
}

uint64_t sub_1D8CA3394()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
LABEL_6:
    OUTLINED_FUNCTION_13();

    return v5();
  }

  v3 = *(*(Strong + 200) + 16);
  os_unfair_lock_lock((v3 + 48));
  if (*(v3 + 24) > 0)
  {
    os_unfair_lock_unlock((v3 + 48));
LABEL_5:

    goto LABEL_6;
  }

  v4 = *(v3 + 16) - 1;
  os_unfair_lock_unlock((v3 + 48));
  if (v4 < 2)
  {
    goto LABEL_5;
  }

  v7 = *(v0 + 112);
  v8 = v7[3];
  v10 = *v7;
  v9 = v7[1];
  *(v0 + 48) = v7[2];
  *(v0 + 64) = v8;
  *(v0 + 16) = v10;
  *(v0 + 32) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 128) = v11;
  *v11 = v12;
  v11[1] = sub_1D8CA34F0;

  return sub_1D8CA1A5C((v0 + 16), 1, 0, 2, 1);
}

uint64_t sub_1D8CA34F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8CA35F8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CA3654()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 136);

  return v2();
}

void sub_1D8CA36C0()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v7 = OUTLINED_FUNCTION_36(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  sub_1D8C979F0(v3, v22 - v10, &unk_1ECAAC790, &qword_1D8CD9550);
  v12 = sub_1D8CD7D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8CADF40(v11, &unk_1ECAAC790, &qword_1D8CD9550);
  }

  else
  {
    sub_1D8CD7D54();
    OUTLINED_FUNCTION_25(v12);
    (*(v14 + 8))(v11, v12);
  }

  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D8CD7D14();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      OUTLINED_FUNCTION_62();
      v20 = sub_1D8CD7B94() + 32;

      if (v19 | v17)
      {
        v23[0] = 0;
        v23[1] = 0;
        v21 = v23;
        v23[2] = v17;
        v23[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v22[1] = 7;
      v22[2] = v21;
      v22[3] = v20;
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_42();

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v17;
    v23[7] = v19;
  }

  OUTLINED_FUNCTION_83();
LABEL_14:
  OUTLINED_FUNCTION_68();
}

id sub_1D8CA38CC()
{
  v0 = OUTLINED_FUNCTION_82();
  v1 = OUTLINED_FUNCTION_73(v0, sel_valueForKey_);

  if (v1)
  {
    OUTLINED_FUNCTION_72();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v16, v17, v18);
  if (!v10)
  {
    sub_1D8CADF40(v19, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }

  sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  if ((OUTLINED_FUNCTION_39() & 1) == 0)
  {
    return 0;
  }

  v11 = [v15 BOOLValue];

  return v11;
}

uint64_t sub_1D8CA39B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 169) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  *(v6 + 168) = a2;
  *(v6 + 104) = a1;
  *(v6 + 112) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA39E0, 0, 0);
}

uint64_t sub_1D8CA39E0()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if ((*(v0 + 168) & 1) != 0 && (v4 = sub_1D8CA3290(*(v0 + 112)), v5))
    {
      v6 = v4;
      v7 = v5;

      OUTLINED_FUNCTION_31();

      return v8(v6, v7);
    }

    else
    {
      v10 = *(v0 + 112);
      v11 = *(v3 + 200);

      sub_1D8CBDB44();

      v12 = *v10;
      v13 = v10[1];
      v14 = v10[3];
      *(v0 + 48) = v10[2];
      *(v0 + 64) = v14;
      *(v0 + 16) = v12;
      *(v0 + 32) = v13;
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v0 + 144) = v15;
      *v15 = v16;
      v15[1] = sub_1D8CA3B90;
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
      v19 = *(v0 + 169);

      return sub_1D8CA3D7C(v0 + 16, v17, v18, v19);
    }
  }

  else
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v20, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v21();
  }
}

uint64_t sub_1D8CA3B90()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v10 = *(v9 + 144);
  v11 = *v1;
  OUTLINED_FUNCTION_1();
  *v12 = v11;
  *(v7 + 152) = v0;

  if (!v0)
  {
    *(v7 + 160) = v3;
    *(v7 + 170) = v5;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_70();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D8CA3CA4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*(v0 + 136) + 200);
  sub_1D8CBE864();

  v2 = *(v0 + 160);
  OUTLINED_FUNCTION_31();
  v4 = *(v0 + 170);

  return v3(v4);
}

uint64_t sub_1D8CA3D14()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*(v0 + 136) + 200);
  sub_1D8CBE864();

  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CA3D7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 280) = a4;
  *(v5 + 64) = a2;
  v7 = sub_1D8CD72C4();
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7F0, &qword_1D8CD95F0) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = *a1;
  *(v5 + 184) = *(a1 + 16);
  *(v5 + 192) = *(a1 + 24);
  *(v5 + 208) = *(a1 + 40);
  *(v5 + 40) = *(a1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D8CA3F1C, 0, 0);
}

uint64_t sub_1D8CA3F1C()
{
  v111 = v0;
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_1D8CD7A04();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_1ED9C4008);
  v2 = sub_1D8CD79E4();
  v3 = sub_1D8CD7E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_45();
    *v4 = 0;
    _os_log_impl(&dword_1D8C92000, v2, v3, "fetching config", v4, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v5 = *(v0 + 80);

  if ((sub_1D8C998B4() & 1) == 0)
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v13, 1);
    swift_willThrow();
LABEL_19:
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_13();

    return v59();
  }

  v6 = *(v0 + 80);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 160);
    v8 = *(v6 + 232);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(ObjectType, v8);
    v10 = (*(v8 + 40))(ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v14 = *(v0 + 208);
  v15 = *(v0 + 184);
  v16 = *(v0 + 152);
  v17 = *(*(v0 + 80) + 24);
  v106 = *(v0 + 168);
  v107 = v15;
  v108 = *(v0 + 192);
  v109 = v14;
  v110 = *(v0 + 40);
  OUTLINED_FUNCTION_24();
  sub_1D8CD5B60(v18, v19, 1, v20);
  v22 = *(v0 + 152);
  v21 = *(v0 + 160);
  v23 = *(v0 + 144);
  v24 = *(v0 + 88);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  sub_1D8CADBEC(v22, v21, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  v25 = OUTLINED_FUNCTION_80();
  sub_1D8C979F0(v25, v26, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    v27 = &qword_1ECAAC7F0;
    v28 = &qword_1D8CD95F0;
    v29 = *(v0 + 144);
LABEL_13:
    sub_1D8CADF40(v29, v27, v28);
    v10 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v30 = *(v0 + 128);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  sub_1D8CD72B4();
  v33 = *(v32 + 8);
  v34 = OUTLINED_FUNCTION_80();
  v35(v34);
  v36 = sub_1D8CD7554();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v36);
  v38 = *(v0 + 128);
  if (EnumTagSinglePayload == 1)
  {
    v27 = &qword_1ECAAC668;
    v28 = &qword_1D8CD8FA0;
    v29 = *(v0 + 128);
    goto LABEL_13;
  }

  v39 = *(v0 + 128);
  v10 = sub_1D8CD7494();
  v12 = v40;
  OUTLINED_FUNCTION_25(v36);
  v42 = *(v41 + 8);
  v43 = OUTLINED_FUNCTION_62();
  v44(v43);
LABEL_15:
  *(v0 + 224) = v10;
  *(v0 + 232) = v12;
  v45 = *(v0 + 136);
  v46 = *(v0 + 88);
  sub_1D8C979F0(*(v0 + 160), v45, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  v47 = __swift_getEnumTagSinglePayload(v45, 1, v46);
  v48 = *(v0 + 136);
  if (v47 == 1)
  {

    sub_1D8CADF40(v48, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    v49 = sub_1D8CD79E4();
    v50 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v50))
    {
      v51 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v51);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v57 = *(v0 + 160);

    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    *v58 = 0;
    OUTLINED_FUNCTION_29(v58, 256);
    swift_willThrow();
    sub_1D8CADF40(v57, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    goto LABEL_19;
  }

  v105 = v6;
  v61 = *(v0 + 120);
  v62 = *(v0 + 96);
  v103 = *(v0 + 104);
  v63 = *(v0 + 80);
  v64 = *(v0 + 88);
  v66 = *(v0 + 64);
  v65 = *(v0 + 72);
  v67 = *(v0 + 280);
  (*(v62 + 32))(v61, v48, v64);
  v68 = *(v63 + 200);
  sub_1D8CD7254();
  sub_1D8CBDDA0();
  v69 = *(v62 + 16);
  v70 = OUTLINED_FUNCTION_62();
  v69(v70);
  (v69)(v103, v61, v64);
  sub_1D8CAD75C(v66, v65, v67);
  v71 = sub_1D8CD79E4();
  v72 = sub_1D8CD7E14();
  sub_1D8CAD730(v66, v65, v67);
  v73 = os_log_type_enabled(v71, v72);
  v75 = *(v0 + 104);
  v74 = *(v0 + 112);
  v77 = *(v0 + 88);
  v76 = *(v0 + 96);
  if (v73)
  {
    v102 = *(v0 + 72);
    v100 = *(v0 + 64);
    v101 = *(v0 + 280);
    OUTLINED_FUNCTION_78();
    v104 = v72;
    v78 = swift_slowAlloc();
    *&v106 = swift_slowAlloc();
    *v78 = 136315650;
    v79 = sub_1D8CD7264();
    v81 = v80;
    v82 = *(v76 + 8);
    v82(v74, v77);
    v83 = sub_1D8C9D088(v79, v81, &v106);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2080;
    *(v0 + 56) = sub_1D8CD7284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7F8, &qword_1D8CD9600);
    v84 = sub_1D8CD7B64();
    v86 = v85;
    v82(v75, v77);
    v87 = sub_1D8C9D088(v84, v86, &v106);

    *(v78 + 14) = v87;
    *(v78 + 22) = 2080;
    v88 = sub_1D8CA4DAC(v100, v102, v101);
    v90 = sub_1D8C9D088(v88, v89, &v106);

    *(v78 + 24) = v90;
    _os_log_impl(&dword_1D8C92000, v71, v104, "config request: %s, header: %s, reason: %s", v78, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  else
  {

    v82 = *(v76 + 8);
    v82(v75, v77);
    v82(v74, v77);
  }

  *(v0 + 240) = v82;
  v92 = *(v0 + 176);
  v91 = *(v0 + 184);
  v93 = *(v0 + 168);
  v94 = *(v0 + 80);
  sub_1D8CA4ED4(*(v0 + 64), *(v0 + 72), *(v0 + 280));
  v95 = *(v94 + 16);
  *(v0 + 16) = v93;
  *(v0 + 24) = v92;
  *(v0 + 32) = v91;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 248) = Strong;
  v97 = *(v105 + 232);

  v98 = swift_task_alloc();
  *(v0 + 256) = v98;
  *v98 = v0;
  v98[1] = sub_1D8CA4708;
  v99 = *(v0 + 120);

  return sub_1D8CA50C8(v95, v99, v94 + 40, v0 + 16, Strong, v97);
}

uint64_t sub_1D8CA4708()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  v3[33] = v7;
  v3[34] = v0;

  if (v0)
  {
    v8 = v3[31];
    v9 = v3[29];
    v10 = v3[4];

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v3[31];
    v12 = v3[4];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D8CA4844()
{
  v72 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);

  v3 = sub_1D8CD79E4();
  v4 = sub_1D8CD7E04();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    OUTLINED_FUNCTION_47();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_78();
    v7 = swift_slowAlloc();
    v71 = v7;
    *v6 = 136315138;
    v8 = sub_1D8CD7A74();
    v10 = sub_1D8C9D088(v8, v9, &v71);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  if (!*(v0 + 232))
  {
    v26 = *(v0 + 264);
    v27 = *(v0 + 216);

    v28 = sub_1D8CD79E4();
    v29 = sub_1D8CD7E24();
    if (OUTLINED_FUNCTION_48(v29))
    {
      v30 = OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_49(v30);
      OUTLINED_FUNCTION_18();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v36 = *(v0 + 240);
    v22 = *(v0 + 160);
    v37 = *(v0 + 120);
    v38 = *(v0 + 88);
    v39 = *(v0 + 96);

    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v40, 4);
    swift_willThrow();
    v36(v37, v38);
    goto LABEL_9;
  }

  v16 = *(v0 + 272);
  v17 = *(v0 + 80);
  v18 = sub_1D8CA281C(*(v0 + 264), *(v0 + 224), *(v0 + 232));
  v20 = *(v0 + 264);
  if (v16)
  {
    v21 = *(v0 + 240);
    v22 = *(v0 + 160);
    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);

    v21(v23, v24);
LABEL_9:
    sub_1D8CADF40(v22, &qword_1ECAAC7F0, &qword_1D8CD95F0);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_13();

    return v41();
  }

  v43 = v18;
  v44 = v19;
  v45 = *(v0 + 208);
  v46 = *(v0 + 216);
  v47 = *(v0 + 200);
  v48 = *(v0 + 80);

  v49 = *(v48 + 128);
  v68 = v44;
  v69 = v43;
  v50 = sub_1D8CD7584();
  OUTLINED_FUNCTION_38();
  v51 = sub_1D8CD7AD4();
  v70 = [v49 loadWithData:v50 userAgent:v51 userDefaults:0];

  v52 = *(v48 + 216);
  sub_1D8CA5B0C(sub_1D8CA7094);
  v53 = sub_1D8CD79E4();
  v54 = sub_1D8CD7E14();
  if (OUTLINED_FUNCTION_53(v54))
  {
    v55 = OUTLINED_FUNCTION_45();
    *v55 = 0;
    _os_log_impl(&dword_1D8C92000, v53, v54, "Setting fetched config value in completion", v55, 2u);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v56 = *(v0 + 240);
  v58 = *(v0 + 152);
  v57 = *(v0 + 160);
  v60 = *(v0 + 136);
  v59 = *(v0 + 144);
  v61 = *(v0 + 120);
  v65 = *(v0 + 128);
  v66 = *(v0 + 112);
  v67 = *(v0 + 104);
  v63 = *(v0 + 88);
  v62 = *(v0 + 96);
  sub_1D8CADC38(v69, v68);

  v56(v61, v63);
  sub_1D8CADF40(v57, &qword_1ECAAC7F0, &qword_1D8CD95F0);

  OUTLINED_FUNCTION_31();

  return v64(2, v70);
}

uint64_t sub_1D8CA4CC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96) + 8;
  (*(v0 + 240))(*(v0 + 120), *(v0 + 88));
  sub_1D8CADF40(v1, &qword_1ECAAC7F0, &qword_1D8CD95F0);
  v3 = *(v0 + 272);
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_13();

  return v4();
}

unint64_t sub_1D8CA4DAC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v4 = 0x64612E6D61726170;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = 0x68632E6D61726170;
LABEL_5:
    v6 = v4;
    MEMORY[0x1DA726A90](a1);
    return v6;
  }

  result = 0x64657269707865;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x434C525565736162;
      break;
    case 4:
      result = 0x676E6168436C7275;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D8CA4ED4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D8CD7964();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD7E74();
  if (qword_1ED9C3D90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8CD8F50;
  v12 = sub_1D8CA4DAC(a1, a2, a3);
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D8C96E60();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = sub_1D8CABD80();
  v16 = MEMORY[0x1E69E65A8];
  *(v11 + 96) = MEMORY[0x1E69E6530];
  *(v11 + 104) = v16;
  *(v11 + 72) = v15;
  sub_1D8CD7954();
  sub_1D8CD7914();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D8CA50C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 128) = a2;
  *(v6 + 136) = a3;
  *(v6 + 120) = a1;
  *(v6 + 160) = *a4;
  *(v6 + 176) = *(a4 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D8CA5100, 0, 0);
}

uint64_t sub_1D8CA5100()
{
  v30 = v0;
  v23 = *(v0 + 168);
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(v0 + 176);
  v3 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC800, &qword_1D8CD9608);
  swift_allocObject();
  v4 = sub_1D8CACBA8(0);
  *(v0 + 56) = 0u;
  *(v0 + 184) = v4;
  *(v0 + 72) = 0u;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v23;
  v7[6] = v26;
  v24 = *(v6 + 8);

  v24(sub_1D8CADC90, v7, v5, v6);

  if (v25)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    (*(v9 + 72))(&v28, v10, ObjectType, v9);
    sub_1D8CADF40(v0 + 56, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CADF40(v0 + 56, &qword_1ECAAC680, &qword_1D8CD8FB0);
    v28 = 0u;
    v29 = 0u;
  }

  v12 = v29;
  *(v0 + 56) = v28;
  *(v0 + 72) = v12;
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  v15 = *MEMORY[0x1E696A9C0];
  v16 = *(v14 + 8);
  v27 = (v16 + *v16);
  v17 = v16[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 192) = v18;
  *v18 = v19;
  v18[1] = sub_1D8CA53E0;
  v20 = *(v0 + 128);
  v21.n128_u32[0] = v15;

  return v27(v0 + 88, v20, v13, v14, v21);
}

uint64_t sub_1D8CA53E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8CA54DC()
{
  v64 = v0;
  v1 = v0[25];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[13];
  v4 = v0[14];
  v60 = v3;
  v61 = v2;
  v62 = v5;
  v63 = v4;
  v6 = OUTLINED_FUNCTION_27();
  sub_1D8CADCA0(v6, v7);
  v8 = v5;

  sub_1D8CA7C80(&v60);
  v9 = v1;
  v10 = v62;
  sub_1D8CADC38(v60, v61);

  if (v1)
  {
    v11 = OUTLINED_FUNCTION_27();
    sub_1D8CADC38(v11, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_1ED9C4000 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_1D8CD7A04();
    OUTLINED_FUNCTION_41(v15, qword_1ED9C4008);
    v16 = v1;
    v17 = sub_1D8CD79E4();
    v18 = sub_1D8CD7E24();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_47();
      swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_66();
      *v4 = 138412290;
      v20 = v9;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v21;
      *v19 = v21;
      OUTLINED_FUNCTION_52();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      sub_1D8CADF40(v19, &unk_1ECAACEE0, &qword_1D8CD9C30);
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
      OUTLINED_FUNCTION_11();
      MEMORY[0x1DA727900]();
    }

    v27 = v0[18];

    v28 = sub_1D8CA824C(v9);
    if (v27)
    {
      v29 = v0[18];
      v30 = v0[19];
      swift_getObjectType();
      v31 = OUTLINED_FUNCTION_51();
      v32(v31);
    }

    v33 = v0[23];
    if (sub_1D8CA82C8())
    {
      v34 = OUTLINED_FUNCTION_42();
      sub_1D8CAC0F4(v34);
    }

    v35 = v0[23];
    swift_willThrow();

    sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
    if (sub_1D8CA82C8())
    {
      sub_1D8CAF0EC();
    }

    v36 = v0[23];

    OUTLINED_FUNCTION_13();

    return v37();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_27();
    sub_1D8CADCA0(v13, v14);
    OUTLINED_FUNCTION_27();
    v39 = sub_1D8CA8060();
    v40 = v0[18];
    v41 = OUTLINED_FUNCTION_27();
    sub_1D8CADC38(v41, v42);
    if (v40)
    {
      v59 = v39;
      v43 = v0[18];
      v44 = v0[19];
      ObjectType = swift_getObjectType();
      v60 = v3;
      v61 = v2;
      v62 = v5;
      v63 = v4;
      v45 = *(v44 + 80);
      v46 = OUTLINED_FUNCTION_27();
      sub_1D8CADCA0(v46, v47);
      v48 = v8;

      v49 = v44;
      v39 = v59;
      v45(&v60, v0 + 7, ObjectType, v49);
      v50 = OUTLINED_FUNCTION_27();
      sub_1D8CADC38(v50, v51);

      v52 = v62;
      sub_1D8CADC38(v60, v61);

      sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
    }

    else
    {
      sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
      v53 = OUTLINED_FUNCTION_27();
      sub_1D8CADC38(v53, v54);
    }

    v55 = v0[23];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (sub_1D8CA82C8())
    {
      sub_1D8CAF0EC();
    }

    v56 = v0[23];

    v57 = v0[1];

    return v57(v39);
  }
}

uint64_t sub_1D8CA58D8()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v2 = v0[25];
  v3 = sub_1D8CD7444();
  v4 = sub_1D8CC6978();

  LOBYTE(v3) = v4 | 0x80;
  sub_1D8CAD678();
  OUTLINED_FUNCTION_23();
  v5 = swift_allocError();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_1ED9C4000 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v7 = sub_1D8CD7A04();
  OUTLINED_FUNCTION_41(v7, qword_1ED9C4008);
  v8 = v5;
  v9 = sub_1D8CD79E4();
  v10 = sub_1D8CD7E24();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_47();
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_66();
    *v1 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_52();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_1D8CADF40(v11, &unk_1ECAACEE0, &qword_1D8CD9C30);
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
    OUTLINED_FUNCTION_11();
    MEMORY[0x1DA727900]();
  }

  v19 = v0[18];

  v20 = sub_1D8CA824C(v5);
  if (v19)
  {
    v21 = v0[18];
    v22 = v0[19];
    swift_getObjectType();
    v23 = OUTLINED_FUNCTION_51();
    v24(v23);
  }

  v25 = v0[23];
  if (sub_1D8CA82C8())
  {
    v26 = OUTLINED_FUNCTION_42();
    sub_1D8CAC0F4(v26);
  }

  v27 = v0[23];
  swift_willThrow();

  sub_1D8CADF40((v0 + 7), &qword_1ECAAC680, &qword_1D8CD8FB0);
  if (sub_1D8CA82C8())
  {
    sub_1D8CAF0EC();
  }

  v28 = v0[23];

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_70();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36);
}

void sub_1D8CA5B0C(void (*a1)(os_unfair_lock_s *))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  a1(v3 + 4);

  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1D8CA5B6C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 112) = a1;
  return v1;
}

void *sub_1D8CA5BA4()
{
  if (v0[15])
  {
    v1 = v0[15];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
    sub_1D8CD7D84();
  }

  if (v0[16])
  {
    v2 = v0[16];

    sub_1D8CD7D84();
  }

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D8CA5C64()
{
  v0 = sub_1D8CA5BA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8CA5C8C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  if (*(v2 + 120))
  {
    v9 = *(v2 + 120);
  }

  else
  {
    v10 = sub_1D8CD7D64();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v12[5] = a1;
    v12[6] = a2;

    sub_1D8CA36C0();
    v9 = v13;
    sub_1D8CADF40(v8, &unk_1ECAAC790, &qword_1D8CD9550);
    v14 = *(v2 + 120);
    *(v2 + 120) = v9;
  }

  return v9;
}

uint64_t sub_1D8CA5E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8CA5E38, 0, 0);
}

uint64_t sub_1D8CA5E38()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[12];
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[13];

    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1D8CA5FA4;
    v5 = v0[14];

    return v9();
  }

  else
  {
    sub_1D8CAD678();
    OUTLINED_FUNCTION_23();
    swift_allocError();
    OUTLINED_FUNCTION_5(v7, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v8();
  }
}

uint64_t sub_1D8CA5FA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 160) = v6;
  *(v2 + 128) = v7;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D8CA60AC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA6170, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 88);
    *v4 = *(v0 + 160);
    *(v4 + 8) = v3;
    OUTLINED_FUNCTION_13();

    return v5();
  }
}

uint64_t sub_1D8CA6170()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 144);
  sub_1D8CA63A4(*(v0 + 160), *(v0 + 128));

  v2 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8CA61DC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *v2 = *(v0 + 160);
  *(v2 + 8) = v1;
  OUTLINED_FUNCTION_13();
  return v3();
}

uint64_t sub_1D8CA6214()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[12];
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA62D8, Strong, 0);
  }

  else
  {
    v3 = v0[17];
    swift_willThrow();
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_1D8CA62D8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 152);
  v2 = OUTLINED_FUNCTION_58();
  sub_1D8CA63A4(v2, v3);

  v4 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8CA6340()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 136);
  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CA63A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = *(v2 + 112);
    v6 = swift_unknownObjectRetain();
    sub_1D8CA63FC(v6);
  }

  v7 = *(v3 + 120);
  *(v3 + 120) = 0;

  *(v3 + 136) = a2 != 0;
  return result;
}

uint64_t sub_1D8CA63FC(uint64_t a1)
{
  v8 = a1;
  v3 = *(v1[3] + 16);
  os_unfair_lock_lock(v3);
  v7 = v1[2];
  v1[2] = a1;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v3);
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[5];

    v4(&v7, &v8);
    sub_1D8C9EB90(v4);
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8CA64C8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0[2] + 128);
  v0[3] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86C0] + 4);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1D8CA65AC;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_1D8CA65AC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8CA66A4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CA66FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1D8CD7D44();
  v8 = sub_1D8CD7D64();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;

  sub_1D8CB5318(0, 0, v7, &unk_1D8CD9560, v10);
}

uint64_t sub_1D8CA6824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8CA68C4, 0, 0);
}

uint64_t sub_1D8CA68C4()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[5];
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CA6978, Strong, 0);
  }

  else
  {
    v3 = v0[8];

    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_1D8CA6978()
{
  v1 = *(v0 + 72);
  *(v0 + 88) = *(v1 + 137);
  *(v1 + 137) = 1;
  return OUTLINED_FUNCTION_4_0();
}

uint64_t sub_1D8CA699C()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 72);
  if (*(v0 + 88))
  {
    v2 = *(v0 + 72);

    v3 = *(v0 + 64);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_70();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    sub_1D8CD7D64();
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v14;
    v20[6] = v1;

    v21 = OUTLINED_FUNCTION_58();
    *(v0 + 80) = sub_1D8CB5318(v21, v22, v13, v23, v20);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_70();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1D8CA6AC0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 72);
  sub_1D8CA6E98(*(v0 + 80));
  v2 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8CA6B1C()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[8];

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CA6B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1D8CA6C70;

  return v10();
}

uint64_t sub_1D8CA6C70()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_1();
  *v12 = v11;

  if (v0)
  {

    v5 = 0;
    v3 = 0;
  }

  v7[4] = v5;
  v7[5] = v3;
  v13 = v7[2];
  OUTLINED_FUNCTION_70();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D8CA6D80()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[2];
  sub_1D8CA6E38(v0[4], v0[5]);
  v2 = OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8CA6DE0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CA6E38(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 128);
  *(v2 + 128) = 0;

  *(v2 + 137) = 0;
  if ((*(v2 + 136) & 1) == 0)
  {
    if (a2)
    {
      v6 = *(v2 + 112);
      v7 = swift_unknownObjectRetain();
      return sub_1D8CA63FC(v7);
    }
  }

  return result;
}

BOOL sub_1D8CA6E84()
{
  v1 = *(v0 + 137);
  *(v0 + 137) = 1;
  return (v1 & 1) == 0;
}

uint64_t sub_1D8CA6E98(uint64_t result)
{
  if (*(v1 + 137) == 1 && !*(v1 + 128))
  {
    *(v1 + 128) = result;
  }

  return result;
}

uint64_t sub_1D8CA6EC8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1D8CD7ED4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 96));

  v5 = (v0 + *(*v0 + 104));
  v6 = v5[1];
  sub_1D8C9EB90(*v5);
  return v0;
}

uint64_t sub_1D8CA6F88()
{
  v0 = sub_1D8CA6EC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8CA6FDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1D8CA7004()
{
  v0 = sub_1D8CA6FDC();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

double sub_1D8CA7034()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_1D8CA7044()
{
  sub_1D8CA5B0C(sub_1D8CA7094);
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D8CA7094(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8CD7994();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = sub_1D8CD7964();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = *a1;
  if (*(*a1 + 16))
  {
    v46 = v10;
    v18[2] = 0;
    v19 = v18[4];
    if (qword_1ED9C3FE0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D8CD7984();
    __swift_project_value_buffer(v20, qword_1ED9C3FE8);
    v21 = sub_1D8CD7974();
    sub_1D8CD79A4();
    v45 = sub_1D8CD7E54();
    if (sub_1D8CD7EA4())
    {
      v44 = v19;

      sub_1D8CD79D4();

      v23 = v49;
      v22 = v50;
      v24 = (*(v49 + 88))(v9, v50);
      v25 = *MEMORY[0x1E69E93E8];
      v47 = v1;
      if (v24 == v25)
      {
        v26 = 0;
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v9, v22);
        v27 = "BagRequests=%{public}lu";
        v26 = 1;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      *(v28 + 1) = v26;
      *(v28 + 2) = 2050;
      *(v28 + 4) = v44;
      v29 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v21, v45, v29, "bagExpiredSpan", v27, v28, 0xCu);
      MEMORY[0x1DA727900](v28, -1, -1);
      v2 = v47;
    }

    v10 = v46;
    result = (*(v51 + 8))(v17, v46);
  }

  v18[4] = 0;
  if (v18[3])
  {
    v18[3] = 0;
    v46 = v18[5];
    if (qword_1ED9C3FE0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8CD7984();
    __swift_project_value_buffer(v30, qword_1ED9C3FE8);
    v31 = sub_1D8CD7974();
    sub_1D8CD79A4();
    v32 = sub_1D8CD7E54();
    v33 = sub_1D8CD7EA4();
    v34 = v48;
    if (v33)
    {
      v47 = v2;

      sub_1D8CD79D4();

      v36 = v49;
      v35 = v50;
      if ((*(v49 + 88))(v34, v50) == *MEMORY[0x1E69E93E8])
      {
        v37 = v10;
        v38 = 0;
        v39 = "[Error] Interval already ended";
      }

      else
      {
        v40 = v34;
        v37 = v10;
        (*(v36 + 8))(v40, v35);
        v39 = "BagRequests=%{public}lu";
        v38 = 1;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      *(v41 + 1) = v38;
      *(v41 + 2) = 2050;
      *(v41 + 4) = v46;
      v42 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v31, v32, v42, "bagInvalidSpan", v39, v41, 0xCu);
      MEMORY[0x1DA727900](v41, -1, -1);
      v10 = v37;
    }

    result = (*(v51 + 8))(v14, v10);
  }

  v18[5] = 0;
  return result;
}

uint64_t sub_1D8CA757C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D8CD7964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v13 = *a1;
  if (*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v32 = *(v13 + 32);
  if (qword_1ED9C3FE0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = sub_1D8CD7984();
    __swift_project_value_buffer(v14, qword_1ED9C3FE8);
    sub_1D8CD7954();
    v15 = sub_1D8CD7974();
    v16 = sub_1D8CD7E64();
    if (sub_1D8CD7EA4())
    {
      v17 = swift_slowAlloc();
      v31 = v2;
      v18 = v17;
      *v17 = 134349056;
      *(v17 + 4) = v32;
      v19 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v15, v16, v19, "bagExpiredSpan", "BagRequests=%{public}lu", v18, 0xCu);
      v20 = v18;
      v2 = v31;
      MEMORY[0x1DA727900](v20, -1, -1);
    }

    (*(v5 + 16))(v9, v12, v4);
    v21 = sub_1D8CD79C4();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1D8CD79B4();
    v25 = *(v5 + 8);
    v5 += 8;
    v25(v12, v4);
    v26 = *(v13 + 16);
    *(v13 + 16) = v24;

LABEL_6:
    v27 = *(v13 + 32);
    v28 = __CFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  *(v13 + 32) = v29;
  return result;
}

uint64_t sub_1D8CA77DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8CD7964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v13 = *a1;
  if (*(*a1 + 24))
  {
    goto LABEL_6;
  }

  v32 = v13[4];
  if (qword_1ED9C3FE0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = sub_1D8CD7984();
    __swift_project_value_buffer(v14, qword_1ED9C3FE8);
    sub_1D8CD7954();
    v15 = sub_1D8CD7974();
    v16 = sub_1D8CD7E64();
    if (sub_1D8CD7EA4())
    {
      v17 = swift_slowAlloc();
      v31 = v2;
      v18 = v17;
      *v17 = 134349056;
      *(v17 + 4) = v32;
      v19 = sub_1D8CD7944();
      _os_signpost_emit_with_name_impl(&dword_1D8C92000, v15, v16, v19, "bagExpiredSpan", "BagRequests=%{public}lu", v18, 0xCu);
      v20 = v18;
      v2 = v31;
      MEMORY[0x1DA727900](v20, -1, -1);
    }

    (*(v5 + 16))(v9, v12, v4);
    v21 = sub_1D8CD79C4();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1D8CD79B4();
    v25 = *(v5 + 8);
    v5 += 8;
    v25(v12, v4);
    v26 = v13[3];
    v13[3] = v24;

LABEL_6:
    v27 = v13[5];
    v28 = __CFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v13[5] = v29;
  return result;
}

void sub_1D8CA7A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v11 = nw_activity_create();
  v12 = type metadata accessor for ResourceAccessNetworkSpan();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v15 + qword_1ED9C5610;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v15 + qword_1ED9C5608);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8CD8F50;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D8C96E60();
  *(inited + 32) = a5;
  *(inited + 40) = a6;
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  *(inited + 64) = v20;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v15 + *(*v15 + 472)) = 0;
  v21 = *(*v15 + 480);
  *(v15 + v21) = 0;
  v22 = (v15 + *(*v15 + 464));
  *v22 = a1;
  v22[1] = &off_1F5453830;
  v23 = a1;

  v24 = v23;

  [v24 set:v11 nw:? activity:?];
  v25 = *(v15 + v21);
  *(v15 + v21) = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v26 = sub_1D8CAC614(a3, 1, "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s", 99, 2, inited);

  swift_unknownObjectRelease();
  sub_1D8CA7C2C(v26);
}