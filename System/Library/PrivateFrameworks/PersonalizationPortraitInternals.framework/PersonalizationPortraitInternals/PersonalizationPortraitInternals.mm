id procNameForPid(int a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  *__error() = 0;
  v4 = proc_name(a1, buffer, 0x400u);
  if (a2)
  {
    *a2 = *__error();
  }

  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v4 encoding:4];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_23224D4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id blockNotifyQueue()
{
  if (blockNotifyQueue__pasOnceToken2 != -1)
  {
    dispatch_once(&blockNotifyQueue__pasOnceToken2, &__block_literal_global_78_14995);
  }

  v1 = blockNotifyQueue__pasExprOnceResult;

  return v1;
}

void sub_23224D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_0()
{
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_232401528();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return sub_232400D58();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23224E060(void *a1)
{
  v30 = 0;
  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_232278D48;
  *(v3 + 24) = v2;
  v28 = sub_232278D50;
  v29 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_232278638;
  v27 = &block_descriptor;
  v4 = _Block_copy(&aBlock);
  v5 = v1;

  OUTLINED_FUNCTION_0_8();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23224E560;
  *(v7 + 24) = v6;
  v28 = sub_23224E538;
  v29 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23224E4B4;
  v27 = &block_descriptor_15;
  v8 = _Block_copy(&aBlock);
  v9 = v5;

  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &v30;
  OUTLINED_FUNCTION_0_8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_232278D78;
  *(v11 + 24) = v10;
  v28 = sub_232278D80;
  v29 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_232278AE8;
  v27 = &block_descriptor_24;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [a1 accessCriteriaUsingBundleIdentifierBlock:v4 domainSelectionBlock:v8 uniqueIdentifiersBlock:v12];
  _Block_release(v8);
  _Block_release(v4);
  _Block_release(v12);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v17 = v30;
  v18 = objc_opt_self();
  v19 = v18;
  if (v17)
  {
    v20 = v17;
    v21 = sub_232400C08();

    v22 = [v19 failedWithError_];
  }

  else
  {
    v22 = [v18 successWithNumberOfExtractions_];
  }

  return v22;
}

uint64_t sub_23224E450()
{
  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_23224E4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_232401178();
  v8 = v7;
  v9 = a3;
  v5(v6, v8, v9);
}

uint64_t sub_23224E538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_23224E568(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v63 = *MEMORY[0x277D85DE8];
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v9 = sub_232401128();
  __swift_project_value_buffer(v9, qword_2814C8DC8);
  v10 = a3;

  v11 = sub_232401108();
  v12 = sub_232401368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v61 = v14;
    *v13 = 134218242;
    *(v13 + 4) = [v10 count];

    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_23224ED04(a1, a2, &v61);
    _os_log_impl(&dword_23224A000, v11, v12, "Consumer: beginning deletion from %ld group Ids from %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x2383841F0](v14, -1, -1);
    MEMORY[0x2383841F0](v13, -1, -1);
  }

  else
  {
  }

  v15 = *MEMORY[0x277D3A698];
  if (sub_232401178() == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = sub_232401528();

    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_232401438();
  v19 = sub_232401178();
  v21 = v20;

  v61 = v19;
  v62 = v21;
  MEMORY[0x238382770](0xD000000000000014, 0x8000000232419760);
  v22 = sub_232401168();

  v23 = [v10 containsDomain_];

  if (v23)
  {
    sub_232278168();
LABEL_32:
    v60 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_15:
  v24 = [v10 allDomains];
  v25 = sub_2324012F8();

  sub_23224EE94(v25);
  v26 = sub_23224F160();
  if (v26)
  {
    v27 = v26;
    v28 = sub_232401168();
    v29 = sub_232401248();
    v61 = 0;
    v30 = [v27 deleteAllTopicsFromSourcesWithBundleId:v28 groupIds:v29 deletedCount:0 error:&v61];

    v31 = v61;
    if (!v30)
    {
      goto LABEL_26;
    }

    v32 = v61;
  }

  v33 = sub_23224FDAC();
  if (!v33)
  {
    goto LABEL_21;
  }

  v34 = v33;
  v35 = sub_232401168();
  v36 = sub_232401248();
  v61 = 0;
  v37 = [v34 deleteAllNamedEntitiesFromSourcesWithBundleId:v35 groupIds:v36 deletedCount:0 error:&v61];

  v31 = v61;
  if (!v37)
  {
LABEL_26:
    v47 = v31;

    v48 = sub_232400C18();

    goto LABEL_29;
  }

  v38 = v61;
LABEL_21:
  v39 = sub_23224FDC0();
  if (!v39)
  {

    goto LABEL_32;
  }

  v40 = v39;
  v41 = sub_232401168();
  v42 = sub_232401248();

  v61 = 0;
  v43 = [v40 deleteAllLocationsFromSourcesWithBundleId:v41 groupIds:v42 deletedCount:0 error:&v61];

  v44 = v61;
  if ((v43 & 1) == 0)
  {
    v49 = v61;
    v48 = sub_232400C18();

LABEL_29:
    swift_willThrow();
    v50 = *a5;
    *a5 = v48;
    v51 = v48;

    v52 = v48;
    v53 = sub_232401108();
    v54 = sub_232401348();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61 = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_23224ED04(a1, a2, &v61);
      *(v55 + 12) = 2080;
      swift_getErrorValue();
      v57 = sub_232401588();
      v59 = sub_23224ED04(v57, v58, &v61);

      *(v55 + 14) = v59;
      _os_log_impl(&dword_23224A000, v53, v54, "Consumer: failed to delete data on request to delete by group IDs from %s. %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383841F0](v56, -1, -1);
      MEMORY[0x2383841F0](v55, -1, -1);
    }

    else
    {
    }

    goto LABEL_32;
  }

  v45 = *MEMORY[0x277D85DE8];

  v46 = v44;
}

unint64_t sub_23224EBCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2322632BC(a5, a6);
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
    result = sub_232401468();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23224ED04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_24();
  v9 = sub_23224EBCC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_23224EDEC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v10;
}

double OUTLINED_FUNCTION_24_1()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t sub_23224EDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *sub_23224EE94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23224EF24(*(a1 + 16), 0);
  sub_23224EFA4(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_23224F158();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_23224EF24(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915C0, &qword_232417E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_23224EFA4(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    OUTLINED_FUNCTION_18_0();
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id sub_23224F174(void *a1, uint64_t *a2)
{
  v3 = *(v2 + *a1);
  v4 = v3;
  if (!v3)
  {
    v5 = *a2;
    v4 = [objc_opt_self() defaultStore];
  }

  v6 = v3;
  return v4;
}

void sub_23224F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23224FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_2789792D0;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23225089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232250B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322510D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232251330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23225149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2322515B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_232251784()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232251820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = [a1 content];
  *(swift_allocObject() + 16) = a1;
  v8 = [a1 contentProtection];
  v9 = v7;
  v10 = a5();

  return v10;
}

uint64_t OUTLINED_FUNCTION_80_0@<X0>(uint64_t a1@<X8>)
{
  v1[30] = a1;
  v1[31] = v2;
  v1[32] = 0;
  v4 = v1[27];
  v5 = v1[12];
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_23224ED04(v0, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

id sub_2322519D0(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    if (qword_2814C7C08 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v6 = OUTLINED_FUNCTION_60();
    if (sub_23225375C(v6, v7, v8))
    {

      return 0;
    }

    else
    {
      v9 = [objc_opt_self() defaultPolicy];
      OUTLINED_FUNCTION_60();
      sub_232401168();
      OUTLINED_FUNCTION_9_3();

      v10 = OUTLINED_FUNCTION_7_3();
      v4 = [v10 v11];
    }
  }

  return v4;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v2 = *(v0 + 88);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t result)
{
  *(result + 8) = sub_23226984C;
  v2 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_232400D48();
}

uint64_t OUTLINED_FUNCTION_3_5@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = a2;

  return sub_2322533B0(a1, &a5);
}

id OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = 0;

  return [a1 (v14 + 1656)];
}

void sub_232251BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_36_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v213 = v27;
  v214 = v26;
  v29 = v28;
  v215 = v30;
  v209 = __PAIR64__(v32, v31);
  v34 = v33;
  ObjectType = swift_getObjectType();
  v35 = sub_232400CC8();
  v36 = OUTLINED_FUNCTION_5_2(v35, &a14);
  v206 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_6();
  v205 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v42 = OUTLINED_FUNCTION_70(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_1();
  v210 = v45;
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v46);
  v208 = &v200 - v47;
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v48);
  v50 = &v200 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v52 = OUTLINED_FUNCTION_70(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v218 = &v200 - v55;
  v216 = sub_232400C98();
  v56 = OUTLINED_FUNCTION_69_0(v216);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_6();
  v217 = v59;
  v211 = swift_getObjectType();
  v60 = &off_27897A000;
  if ((sub_232251970() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_232253174();
  v20 = v61;
  v62 = sub_2324011C8();

  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (HIDWORD(v62))
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v63 = sub_23227BE3C(v34);
  if (v64)
  {
    v65 = v63;
    v66 = v64;
    v203 = v29;
    v67 = [v34 respondsToSelector_];
    v204 = v25;
    v202 = v50;
    v201 = v65;
    if ((v67 & 1) == 0)
    {
      goto LABEL_8;
    }

    v68 = [v34 domainId];
    if (v68)
    {
      v69 = v68;
      v200 = sub_232401178();
      v20 = v70;
    }

    else
    {
LABEL_8:
      v200 = 0;
      v20 = 0;
    }

    v71 = OUTLINED_FUNCTION_6_2(objc_allocWithZone(MEMORY[0x277D3A4E0]), sel_initWithDwellTimeSeconds_lengthSeconds_lengthCharacters_donationCount_contactHandleCount_flags_);
    v72 = [v34 uniqueId];
    v73 = sub_232401178();
    v75 = v74;

    [v34 absoluteTimestamp];
    v76 = v217;
    sub_232400C28();
    v77 = v218;
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v216);
    v81 = sub_2322535EC();
    v83 = v82;
    v84 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    v85 = v76;
    v60 = &off_27897A000;
    sub_232253BEC(v201, v66, v200, v20, v73, v75, v85, v77, 0, v81, v83, v71, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, ObjectType, v213, v214, v215);
    v86 = v202;
    OUTLINED_FUNCTION_42_1();
    if (v87)
    {
      v21 = v87;
      v89 = v214;
      v88 = v215;
      if (((v215)() & 1) == 0)
      {
        v139 = [objc_opt_self() interrupted];
LABEL_38:
        v139;

LABEL_72:
        OUTLINED_FUNCTION_18_0();
        return;
      }

      v222 = MEMORY[0x277D84F90];
      v219[0] = v34;
      v62 = v34;
      v90 = sub_2322538EC(v219, v213, ObjectType, v211, &off_284754740);
      v92 = v91;

      if (v92)
      {
        v213 = v90;
        v218 = v92;
        LODWORD(v217) = BYTE4(v209);
        sub_232400D08();
        v93 = v86;
        OUTLINED_FUNCTION_8_1();
        v216 = v94;
        __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
        v220 = v62;
        v221 = &off_284754740;
        v98 = v62;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
        v100 = OUTLINED_FUNCTION_2_5();
        ObjectType = v99;
        v211 = v98;
        if (v100)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v219);
          v220 = v98;
          v221 = &off_284754740;
          v101 = v98;
          if (OUTLINED_FUNCTION_2_5())
          {
            OUTLINED_FUNCTION_50_0();
            v102 = v208;
            v103 = v88;
            v88 = v215;
            v104(0, v103, &off_284754740);
            v105 = v93;
            sub_232257C68(v93, &qword_27DD914C8, &unk_232417F50);
            __swift_destroy_boxed_opaque_existential_0Tm(v219);
            v106 = v216;
          }

          else
          {
            v105 = v93;
            sub_232257C68(v93, &qword_27DD914C8, &unk_232417F50);
            OUTLINED_FUNCTION_24_1();
            sub_232257C68(v219, &qword_27DD914E8, &qword_2324181A0);
            v102 = v208;
            OUTLINED_FUNCTION_8_1();
            v106 = v216;
            __swift_storeEnumTagSinglePayload(v155, v156, v157, v216);
          }

          sub_232277044(v102, v105);
          v154 = v210;
        }

        else
        {
          v105 = v93;
          v154 = v210;
          v106 = v216;
        }

        v158 = v217;
        if ((v217 | 2) == 2)
        {
          v159 = *&v71[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector];
          if (v159)
          {
            v160 = v159;
            v161 = sub_232401168();
            sub_232276FE4(v105, v154, &qword_27DD914C8, &unk_232417F50);
            if (__swift_getEnumTagSinglePayload(v154, 1, v106) == 1)
            {
              v162 = 0;
            }

            else
            {
              v216 = v160;
              v163 = v105;
              v164 = v106;
              v162 = sub_232400CE8();
              v165 = *(*(v164 - 8) + 8);
              v166 = v164;
              v105 = v163;
              v160 = v216;
              v165(v154, v166);
            }

            v167 = OUTLINED_FUNCTION_27_1(&a16);
            v169 = [v167 v168];

            sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
            v170 = sub_232401268();

            sub_232252D4C(v170);
            v88 = v215;
          }
        }

        if (v88())
        {
          if ((v158 - 1) < 2 && (v171 = *&v71[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector]) != 0)
          {
            v172 = objc_opt_self();
            v217 = v171;
            v173 = [v172 sharedInstance];
            v174 = [v21 bundleId];
            if (!v174)
            {
              sub_232401178();
              sub_232401168();
              OUTLINED_FUNCTION_38_1();
            }

            v175 = v21;
            sub_232263718(v21);
            if (v176)
            {
              v177 = sub_232401168();
            }

            else
            {
              v177 = 0;
            }

            v180 = v211;
            v181 = [v173 extractionAlgorithmsForBundleId:v174 sourceLanguage:v177 conservative:0 domain:0];

            sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
            sub_232253ABC();
            OUTLINED_FUNCTION_32_1();
            sub_2324012F8();

            v182 = [v172 sharedInstance];
            v183 = [v175 bundleId];
            if (!v183)
            {
              sub_232401178();
              v183 = sub_232401168();
            }

            sub_232263718(v175);
            if (v184)
            {
              v185 = sub_232401168();
            }

            else
            {
              v185 = 0;
            }

            v186 = [v182 extractionAlgorithmsForBundleId:v183 sourceLanguage:v185 conservative:0 domain:1];

            OUTLINED_FUNCTION_32_1();
            v73 = sub_2324012F8();

            v187 = sub_232401168();

            v220 = v180;
            v221 = &off_284754740;
            v188 = v180;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
            OUTLINED_FUNCTION_9_2();
            v189 = swift_dynamicCast();
            if (v189)
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v219);
            }

            sub_232263718(v175);
            if (!v190)
            {
              v191 = v205;
              sub_232400CB8();
              sub_232400CA8();
              (*(v206 + 8))(v191, v207);
            }

            v192 = sub_232401168();

            OUTLINED_FUNCTION_32_1();
            v193 = sub_2324012E8();

            OUTLINED_FUNCTION_32_1();
            v194 = sub_2324012E8();

            v195 = v217;
            v196 = [v217 topicsInText:v187 isPlainText:v189 source:v175 cloudSync:v209 & 1 language:v192 topicAlgorithms:v193 namedEntityAlgorithms:1.0 weight:v194];

            sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
            OUTLINED_FUNCTION_46_1();
            v197 = sub_232401268();

            sub_232252D4C(v197);
            v105 = v202;
            v21 = v175;
            OUTLINED_FUNCTION_42_1();
            v89 = v214;
            v88 = v215;
          }

          else
          {
          }

          if ((v88)(v179))
          {
            v198 = OUTLINED_FUNCTION_47();
            sub_23225764C(v198, v199, v89, v73);
            sub_232257C68(v105, &qword_27DD914C8, &unk_232417F50);

            goto LABEL_72;
          }

          v178 = [objc_opt_self() interrupted];
        }

        else
        {

          v178 = [objc_opt_self() interrupted];
        }

        v178;

        sub_232257C68(v105, &qword_27DD914C8, &unk_232417F50);
        goto LABEL_72;
      }

      if (qword_2814C7F68 == -1)
      {
LABEL_35:
        v144 = sub_232401128();
        __swift_project_value_buffer(v144, qword_2814C8DC8);
        v145 = v62;
        v146 = sub_232401108();
        v147 = sub_232401368();

        if (os_log_type_enabled(v146, v147))
        {
          v148 = OUTLINED_FUNCTION_97();
          v149 = OUTLINED_FUNCTION_26_0();
          v219[0] = v149;
          *v148 = 136315138;
          v150 = [v145 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v151 = OUTLINED_FUNCTION_23_1();

          *(v148 + 4) = v151;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v152, v153, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v149);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v139 = [objc_opt_self() ignored];
        goto LABEL_38;
      }

LABEL_77:
      OUTLINED_FUNCTION_0();
      goto LABEL_35;
    }
  }

LABEL_15:
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v107 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v107, qword_2814C8DC8);
  v108 = v34;
  v109 = sub_232401108();
  v110 = sub_232401368();

  if (!os_log_type_enabled(v109, v110))
  {
    goto LABEL_31;
  }

  swift_slowAlloc();
  v21 = OUTLINED_FUNCTION_34_1();
  v219[0] = v21;
  *v20 = 136315394;
  v111 = [v108 uniqueId];
  sub_232401178();
  OUTLINED_FUNCTION_30_1();

  OUTLINED_FUNCTION_23_1();

  OUTLINED_FUNCTION_25_1();
  v62 = v108;
  sub_232253174();
  sub_2324011C8();
  OUTLINED_FUNCTION_40_1();

  if ((v108 & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  if (HIDWORD(v108))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v112 = 0xEC00000044492065;
  v113 = sub_23227BE3C(v108);
  if (!v114)
  {
LABEL_29:
    v137 = 0x6C646E7542206F4ELL;
    goto LABEL_30;
  }

  v115 = v114;
  v213 = v113;
  v116 = [v108 respondsToSelector_];
  LODWORD(v215) = v110;
  v214 = v21;
  if ((v116 & 1) != 0 && (v117 = [v108 domainId]) != 0)
  {
    v118 = v117;
    ObjectType = sub_232401178();
    v211 = v119;
  }

  else
  {
    ObjectType = 0;
    v211 = 0;
  }

  v120 = OUTLINED_FUNCTION_6_2(objc_allocWithZone(MEMORY[0x277D3A4E0]), sel_initWithDwellTimeSeconds_lengthSeconds_lengthCharacters_donationCount_contactHandleCount_flags_);
  v121 = [v108 uniqueId];
  v122 = sub_232401178();
  v124 = v123;

  [v108 v60[249]];
  v125 = v217;
  sub_232400C28();
  v126 = v218;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v216);
  v130 = sub_2322535EC();
  v132 = v131;
  v133 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
  sub_232253BEC(v213, v115, ObjectType, v211, v122, v124, v125, v126, 0, v130, v132, v120, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, ObjectType, v213, v214, v215);
  if (!v134)
  {
    LOBYTE(v110) = v215;
    v112 = 0xEC00000044492065;
    goto LABEL_29;
  }

  v135 = v134;
  v136 = [v134 bundleId];

  v137 = sub_232401178();
  v112 = v138;

  LOBYTE(v110) = v215;
LABEL_30:
  sub_23224ED04(v137, v112, v219);
  OUTLINED_FUNCTION_40_1();

  *(v20 + 14) = v137;
  OUTLINED_FUNCTION_35_0(&dword_23224A000, v140, v110, "Consumer: ignoring ineligible item %s from %s.");
  swift_arrayDestroy();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_7_2();
LABEL_31:

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v143 = v141;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 16);
  return *(v2 + 48);
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x238382770);
}

id OUTLINED_FUNCTION_6_2(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232252D0C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_232252D78(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_232252E64(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_232252E40(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_232401518();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_232252E64(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_232401518();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_232401458();
  *v1 = result;
  return result;
}

uint64_t sub_232252F04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232401518();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232252E38(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_23227C650(&qword_2814C7810, &qword_27DD915A8, &qword_232418218);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915A8, &qword_232418218);
          v9 = sub_23227BDB4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232253088(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_232401178();
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232253174()
{
  v1 = [v0 interaction];
  v2 = [v1 intent];

  v3 = sub_232253088(v2, &selRef_intentDescription);
  return OUTLINED_FUNCTION_2_4(v3, v4);
}

void OUTLINED_FUNCTION_10_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_dynamicCastObjCClass();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL isNontrivialString(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] != 0;

  return v2;
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

uint64_t sub_2322533B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id OUTLINED_FUNCTION_1_1(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  *(a1 + 8) = sub_232269540;
  v2 = *(v1 + 16);
  return *(v1 + 48);
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_232400D68();
}

void OUTLINED_FUNCTION_1_5()
{

  JUMPOUT(0x238382770);
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t sub_23225356C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;
  v3 = *(v1 + 88);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_once();
}

BOOL sub_23225375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2324015D8();
  sub_2324011B8();
  v7 = sub_232401608();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_232401528();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x2383841F0);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t result)
{
  if (!result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2322538EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[3] = a4;
  v23[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  sub_2322533B0(v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91528, &unk_232418180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
  if (OUTLINED_FUNCTION_1_9())
  {
    sub_23225356C(&v16, v20);
    v9 = v21;
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = (*(v10 + 16))(v9, v10);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_232278CE8(&v16, &unk_27DD91530, &unk_232418190);
    sub_2322533B0(v23, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
    if ((OUTLINED_FUNCTION_1_9() & 1) == 0)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_232278CE8(&v16, &qword_27DD914E8, &qword_2324181A0);
      v14 = 0;
      goto LABEL_7;
    }

    sub_23225356C(&v16, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = (*(v13 + 16))(a2, v12, v13);
  }

  v14 = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v14;
}

unint64_t sub_232253ABC()
{
  result = qword_2814C7758;
  if (!qword_2814C7758)
  {
    sub_232252D0C(255, &unk_2814C7760, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C7758);
  }

  return result;
}

void OUTLINED_FUNCTION_42(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_0@<X0>(uint64_t a1@<X8>)
{
  v1[39] = a1;
  v1[40] = v2;
  v1[41] = 0;
  v4 = v1[36];
  v5 = v1[9];
}

uint64_t OUTLINED_FUNCTION_46()
{
  result = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  return result;
}

void OUTLINED_FUNCTION_46_0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
}

BOOL OUTLINED_FUNCTION_37_1()
{

  return os_log_type_enabled(v0, v1);
}

void sub_232253BEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  OUTLINED_FUNCTION_81();
  v45 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_232401168();

  if (v34)
  {
    v36 = sub_232401168();
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_232401168();

  v38 = sub_232400C68();
  v39 = sub_232400C98();
  v40 = 0;
  if (__swift_getEnumTagSinglePayload(v30, 1, v39) != 1)
  {
    v40 = sub_232400C68();
    OUTLINED_FUNCTION_29(v39);
    (*(v41 + 8))(v30, v39);
  }

  if (a25)
  {
    v42 = sub_232401248();
  }

  else
  {
    v42 = 0;
  }

  if (a27)
  {
    v43 = sub_232401168();
  }

  else
  {
    v43 = 0;
  }

  [v45 initWithBundleId:v35 groupId:v36 documentId:v37 date:v38 relevanceDate:v40 contactHandles:v42 language:? metadata:?];

  OUTLINED_FUNCTION_29(v39);
  (*(v44 + 8))(v32, v39);
  OUTLINED_FUNCTION_82();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_77()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  *(a1 + 8) = sub_232268C58;
  v2 = *(v1 + 16);
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_dynamicCastObjCClass();
}

void sub_232254020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___makeDefaultGazetteer_block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

void sub_232254E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23225524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PPRankableSocialHighlightReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v85) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v85 & 0x7F) << v6;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_128;
      case 3u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 256) |= 0x40u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v85 & 0x7F) << v44;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_140:
        v75 = 168;
        goto LABEL_147;
      case 4u:
        *(a1 + 256) |= 0x10u;
        v85 = 0;
        v42 = [a2 position] + 8;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 40;
        goto LABEL_163;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_128;
      case 6u:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addApplicationIdentifiers:v33];
        }

        goto LABEL_65;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_128;
      case 8u:
        v33 = objc_alloc_init(PPSocialHighlightContact);
        objc_storeStrong((a1 + 224), v33);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !PPSocialHighlightContactReadFrom(v33, a2))
        {
          goto LABEL_166;
        }

        goto LABEL_64;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_128;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_128;
      case 0xBu:
        v33 = objc_alloc_init(PPSocialHighlightFeature);
        [a1 addCalculatedFeatures:v33];
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && PPSocialHighlightFeatureReadFrom(v33, a2))
        {
LABEL_64:
          PBReaderRecallMark();
LABEL_65:

LABEL_164:
          v4 = a2;
          continue;
        }

LABEL_166:

        return 0;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_128;
      case 0xDu:
        *(a1 + 256) |= 1u;
        v85 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 8;
        goto LABEL_163;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_128;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_128;
      case 0x11u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 256) |= 0x800u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v85 & 0x7F) << v36;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_136;
          }
        }

        v22 = (v38 != 0) & ~[a2 hasError];
LABEL_136:
        v74 = 251;
        goto LABEL_150;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_128;
      case 0x13u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 256) |= 0x80u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v85 & 0x7F) << v59;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_146;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v61;
        }

LABEL_146:
        v75 = 200;
LABEL_147:
        *(a1 + v75) = v50;
        goto LABEL_164;
      case 0x14u:
        *(a1 + 256) |= 8u;
        v85 = 0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 32;
        goto LABEL_163;
      case 0x15u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 256) |= 0x400u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v85 & 0x7F) << v16;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_132;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_132:
        v74 = 250;
        goto LABEL_150;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_128;
      case 0x17u:
        *(a1 + 256) |= 4u;
        v85 = 0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 24;
        goto LABEL_163;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_128;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_128;
      case 0x1Au:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 256) |= 0x1000u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v85 & 0x7F) << v25;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_134;
          }
        }

        v22 = (v27 != 0) & ~[a2 hasError];
LABEL_134:
        v74 = 252;
        goto LABEL_150;
      case 0x1Bu:
        *(a1 + 256) |= 0x20u;
        v85 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 48;
        goto LABEL_163;
      case 0x1Cu:
        *(a1 + 256) |= 2u;
        v85 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:&v85 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v77 = v85;
        v78 = 16;
LABEL_163:
        *(a1 + v78) = v77;
        goto LABEL_164;
      case 0x1Du:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 256) |= 0x200u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v85 & 0x7F) << v67;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_149;
          }
        }

        v22 = (v69 != 0) & ~[a2 hasError];
LABEL_149:
        v74 = 249;
        goto LABEL_150;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_128;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_128;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_128;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_128;
      case 0x22u:
        v14 = PBReaderReadData();
        v15 = 176;
        goto LABEL_128;
      case 0x23u:
        v14 = PBReaderReadData();
        v15 = 184;
        goto LABEL_128;
      case 0x24u:
        v14 = PBReaderReadData();
        v15 = 152;
LABEL_128:
        v73 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_164;
      case 0x25u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 256) |= 0x100u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v85 & 0x7F) << v53;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_142;
          }
        }

        v22 = (v55 != 0) & ~[a2 hasError];
LABEL_142:
        v74 = 248;
LABEL_150:
        *(a1 + v74) = v22;
        goto LABEL_164;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_164;
    }
  }
}

uint64_t PPSocialHighlightContactReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 5)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 != 2)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_44;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
        goto LABEL_45;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_46:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_42;
      }
    }

    v20 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
    v30 = 16;
LABEL_45:
    *(a1 + v30) = v20;
    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
}

id sub_232256EB8(void *a1)
{
  v1 = [a1 content];
  v2 = [v1 bundleId];
  v3 = sub_232401178();
  v5 = v4;

  v6 = *MEMORY[0x277D41E78];
  if (v3 == sub_232401178() && v5 == v7)
  {

    goto LABEL_17;
  }

  v9 = OUTLINED_FUNCTION_13_0();

  if (v9)
  {
LABEL_17:
    v29 = sub_232279AE0(v1);
    goto LABEL_18;
  }

  v10 = [v1 bundleId];
  v11 = sub_232401178();
  v13 = v12;

  v14 = *MEMORY[0x277D41E58];
  if (v11 == sub_232401178() && v13 == v15)
  {

    goto LABEL_20;
  }

  v17 = OUTLINED_FUNCTION_13_0();

  if (v17)
  {
LABEL_20:
    sub_23227A83C(v1);
    goto LABEL_18;
  }

  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = sub_232401128();
  __swift_project_value_buffer(v18, qword_2814C8DC8);
  v19 = v1;
  v20 = sub_232401108();
  v21 = sub_232401368();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_26_0();
    v32 = v23;
    *v22 = 136315138;
    v24 = [v19 bundleId];
    v25 = sub_232401178();
    v27 = v26;

    v28 = sub_23224ED04(v25, v27, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_23224A000, v20, v21, "StructuredConsumer: ignoring interaction from non-structured source %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  v29 = [objc_opt_self() ignored];
LABEL_18:
  v30 = v29;

  return v30;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[12];
  v6 = v0[14];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x2383841F0);
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x238382770);
}

void OUTLINED_FUNCTION_11_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x2383841F0);
}

uint64_t PPSocialHighlightFeatureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PPKeysToFetchPeople()
{
  if (PPKeysToFetchPeople__pasOnceToken16 != -1)
  {
    dispatch_once(&PPKeysToFetchPeople__pasOnceToken16, &__block_literal_global_28);
  }

  v1 = PPKeysToFetchPeople__pasExprOnceResult;

  return v1;
}

void sub_23225764C(uint64_t a1, void *a2, id a3, unint64_t a4)
{
  v6 = v4;
  v10 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v70 = sub_232252E38(a1);
  if (v70)
  {
    v11 = *(v6 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_writebackDissector);
    if (v11)
    {
      v66 = a2;
      sub_23227C6FC(0, (v10 & 0xC000000000000001) == 0, v10);
      v68 = v11;
      v69 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_59;
      }

      v12 = *(v10 + 32);
      v13 = v11;
      v14 = v12;
LABEL_5:
      v15 = v14;
      v16 = [v14 source];

      v17 = [v16 bundleId];
      if (!v17)
      {
        sub_232401178();
        v17 = sub_232401168();
      }

      sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
      v18 = sub_232401248();
      v67 = a4;
      if (v69)
      {
        v19 = MEMORY[0x2383829D0](0, v10);
      }

      else
      {
        v19 = *(v10 + 32);
      }

      v23 = v19;
      v24 = [v19 source];

      v25 = [v24 documentId];
      if (!v25)
      {
        sub_232401178();
        v25 = sub_232401168();
      }

      aBlock[4] = v66;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2322782FC;
      aBlock[3] = &block_descriptor_27;
      v26 = _Block_copy(aBlock);

      v11 = v68;
      a3 = [v68 consumeContentFromBundleId:v17 extractions:v18 spotlightIdentifier:v25 fileProtectionType:v67 shouldContinueBlock:v26];
      _Block_release(v26);

      if (!a3)
      {
        if (qword_2814C7F68 != -1)
        {
          swift_once();
        }

        v57 = sub_232401128();
        __swift_project_value_buffer(v57, qword_2814C8DC8);
        v58 = sub_232401108();
        v59 = sub_232401328();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_23224A000, v58, v59, "Deferred donation due to interruption in writeback.", v60, 2u);
          MEMORY[0x2383841F0](v60, -1, -1);
        }

        [objc_opt_self() interrupted];
        goto LABEL_53;
      }
    }

    else
    {
      v69 = v10 & 0xC000000000000001;
    }

    a4 = 0;
    v68 = (v10 & 0xFFFFFFFFFFFFFF8);
    while (v70 != a4)
    {
      if (v69)
      {
        v27 = MEMORY[0x2383829D0](a4, v10);
      }

      else
      {
        if (a4 >= v68[2])
        {
          goto LABEL_55;
        }

        v27 = *(v10 + 8 * a4 + 32);
      }

      a3 = v27;
      if (__OFADD__(a4, 1))
      {
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
        v65 = v11;
        v14 = MEMORY[0x2383829D0](0, v10);
        goto LABEL_5;
      }

      v28 = sub_23224F160();
      v29 = sub_23224FDAC();
      v11 = v10;
      v30 = sub_23224FDC0();
      sub_232259674(v28, v29, v30);

      v10 = v11;
      ++a4;
      if (v5)
      {
        goto LABEL_50;
      }
    }

    v31 = sub_23224F160();
    a4 = 0x1FAA7C000;
    if (v31)
    {
      a3 = OUTLINED_FUNCTION_3_7(v31, v32, v33, v34, v35, v36, v37, v38, v66, v67, v68, v69, v70, aBlock[0]);

      v39 = aBlock[0];
      if (!a3)
      {
        goto LABEL_49;
      }

      v40 = aBlock[0];
    }

    v41 = v6;
    v42 = sub_23224FDAC();
    if (!v42)
    {
      goto LABEL_31;
    }

    v50 = OUTLINED_FUNCTION_3_7(v42, v43, v44, v45, v46, v47, v48, v49, v66, v67, v68, v69, v70, aBlock[0]);

    v39 = aBlock[0];
    if (v50)
    {
      v51 = aBlock[0];
LABEL_31:
      v6 = 0;
      v52 = 0;
      v11 = &selRef_trialWrapperReloadingIfNeeded;
      while (v70 != v6)
      {
        if (v69)
        {
          v53 = MEMORY[0x2383829D0](v6, v10);
        }

        else
        {
          if (v6 >= v68[2])
          {
            goto LABEL_57;
          }

          v53 = *(v10 + 8 * v6 + 32);
        }

        a4 = v53;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }

        v54 = [v53 numberOfExtractions];
        if (v54)
        {
          v55 = v54;
          a3 = [v54 unsignedIntegerValue];
        }

        else
        {
          a3 = 0;
        }

        ++v6;
        v56 = __CFADD__(v52, a3);
        v52 += a3;
        if (v56)
        {
          goto LABEL_58;
        }
      }

      v63 = objc_opt_self();
      v21 = sub_2324013C8();
      v22 = [v63 successWithNumberOfExtractions_];
      goto LABEL_52;
    }

LABEL_49:
    v61 = v39;
    sub_232400C18();

    swift_willThrow();
LABEL_50:
    v62 = *MEMORY[0x277D85DE8];
    return;
  }

  v20 = objc_opt_self();
  sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
  v21 = sub_232401398();
  v22 = [v20 successWithNumberOfExtractions_];
LABEL_52:
  v22;

LABEL_53:
  v64 = *MEMORY[0x277D85DE8];
}

uint64_t sub_232257C68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_69_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_232258160(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_232258194();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2322581CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232258208()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232258254()
{
  OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232258428()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232258464()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23225849C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_84_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2322584D0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_84_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232258544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_232258598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2322585F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232271B08();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_232258678()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2322586C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_232258710(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
    JUMPOUT(0x232258734);
  }

  return result;
}

id sub_232258888()
{
  type metadata accessor for RealTimeTextConsumer();
  result = sub_2322588AC();
  qword_2814C8DB8 = result;
  return result;
}

id sub_2322588AC()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for RealTimeTextConsumer());
  return sub_232258954(v0, v1, v2);
}

id sub_232258954(void *a1, void *a2, void *a3)
{
  v6 = sub_232400D88();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v44[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v44[-v13];
  v15 = objc_allocWithZone(PPSpotlightWritebackDissector);
  v50 = a3;
  v49 = a1;
  v48 = a2;
  v16 = [v15 init];
  v17 = [objc_opt_self() sharedInstance];
  v18 = [objc_opt_self() sharedInstance];
  v19 = sub_2322780EC(a1, a2, a3, v16, v17, v18);
  v20 = v7[13];
  v45 = *MEMORY[0x277D3A208];
  v20(v14);
  sub_232259464(&qword_2814C7FA0, MEMORY[0x277D3A228]);
  OUTLINED_FUNCTION_2();
  v21 = sub_232400DA8();
  v22 = v7[1];
  (v22)(v14, v6);
  v23 = &selRef_activityType;
  if (v21 & 1) != 0 && ((v20)(v47, *MEMORY[0x277D3A218], v6), OUTLINED_FUNCTION_2(), sub_232400DA8(), v24 = OUTLINED_FUNCTION_1(), v22(v24), (v14))
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_232401128();
    __swift_project_value_buffer(v25, qword_2814C8DC8);
    v26 = sub_232401108();
    v27 = sub_232401368();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      OUTLINED_FUNCTION_3(&dword_23224A000, v29, v30, "RealTimeTextConsumer: TextUnderstanding flags enabled, not registering for Messages, Reminders, or Safari.");
      v31 = v28;
      v23 = &selRef_activityType;
      MEMORY[0x2383841F0](v31, -1, -1);
    }
  }

  else
  {
    v32 = objc_opt_self();
    v33 = [v32 defaultCoordinator];
    OUTLINED_FUNCTION_4(v33, sel_registerMessagesConsumer_levelOfService_);

    v34 = [v32 defaultCoordinator];
    OUTLINED_FUNCTION_4(v34, sel_registerSafariConsumer_levelOfService_);

    v26 = [v32 defaultCoordinator];
    OUTLINED_FUNCTION_4(v26, sel_registerRemindersConsumer_levelOfService_);
  }

  (v20)(v46, v45, v6);
  OUTLINED_FUNCTION_2();
  sub_232400DA8();
  v35 = OUTLINED_FUNCTION_1();
  v22(v35);
  if (v26)
  {
    (v20)(v47, *MEMORY[0x277D3A210], v6);
    OUTLINED_FUNCTION_2();
    sub_232400DA8();
    v36 = OUTLINED_FUNCTION_1();
    v22(v36);
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v37 = sub_232401128();
    __swift_project_value_buffer(v37, qword_2814C8DC8);
    v38 = sub_232401108();
    v39 = sub_232401368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      OUTLINED_FUNCTION_3(&dword_23224A000, v41, v42, "RealTimeTextConsumer: TextUnderstanding flags enabled, not registering for interactions.");
      MEMORY[0x2383841F0](v40, -1, -1);
    }
  }

  else
  {
    v38 = [objc_opt_self() v23[426]];
    OUTLINED_FUNCTION_4(v38, sel_registerInteractionConsumer_levelOfService_);
  }

  return v19;
}

uint64_t sub_232258F18(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = [a1 content];
  *(swift_allocObject() + 16) = a1;
  v7 = [a1 contentProtection];
  v8 = v6;
  v9 = a4();

  return v9;
}

id sub_2322590E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RealTimeTextConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232259178(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2322591D4(uint64_t a1)
{
  sub_2324015D8();
  MEMORY[0x238382B70](a1);
  return sub_232401608();
}

uint64_t sub_23225921C()
{
  sub_2324015D8();
  sub_2324015F8();
  return sub_232401608();
}

uint64_t sub_23225928C()
{
  sub_2324015D8();
  sub_2324015F8();
  return sub_232401608();
}

uint64_t sub_2322592D0(uint64_t a1, uint64_t a2)
{
  sub_2324015D8();
  MEMORY[0x238382B70](a2);
  return sub_232401608();
}

uint64_t sub_23225933C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_232259374@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2322591C4(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_2322593A8@<X0>(_WORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_232259464(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_4(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_23225952C()
{
  v0 = sub_232401128();
  __swift_allocate_value_buffer(v0, qword_2814C8DC8);
  __swift_project_value_buffer(v0, qword_2814C8DC8);
  return sub_232401118();
}

uint64_t sub_2322595D0()
{
  sub_2324015D8();
  MEMORY[0x238382B70](0);
  return sub_232401608();
}

uint64_t sub_232259624()
{
  sub_2324015D8();
  MEMORY[0x238382B70](0);
  return sub_232401608();
}

void sub_232259674(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = [v3 topics];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
  v7 = sub_232401268();

  sub_232252E38(v7);
  OUTLINED_FUNCTION_0_0();
  if (v6 && a1)
  {
    v8 = [v3 topics];
    if (!v8)
    {
      sub_232401268();
      sub_232401248();
      OUTLINED_FUNCTION_0_0();
    }

    v9 = [v3 source];
    v10 = [v3 topicAlgorithm];
    v45 = [v3 cloudSync];
    [v3 sentimentScore];
    v12 = v11;
    v13 = [v3 topicsExactMatchesInSourceText];
    if (v13)
    {
      *&v50[0] = 0;
      sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
      sub_232401258();

      v13 = 0;
    }

    *&v50[0] = 0;
    v14 = [a1 donateTopics:v8 source:v9 algorithm:v10 cloudSync:v45 sentimentScore:v13 exactMatchesInSourceText:v50 error:v12];

    v15 = *&v50[0];
    if (!v14)
    {
      goto LABEL_30;
    }

    v16 = *&v50[0];
  }

  v17 = [v3 entities];
  v18 = sub_232401268();

  sub_232252E38(v18);
  OUTLINED_FUNCTION_0_0();
  if (v17 && a2)
  {
    v19 = [v3 entities];
    if (!v19)
    {
      sub_232401268();
      sub_232401248();
      OUTLINED_FUNCTION_0_0();
    }

    v20 = [v3 source];
    v21 = [v3 entityAlgorithm];
    v22 = [v3 cloudSync];
    [v3 sentimentScore];
    *&v50[0] = 0;
    LODWORD(v21) = [a2 donateNamedEntities:v19 source:v20 algorithm:v21 cloudSync:v22 sentimentScore:v50 error:?];

    v15 = *&v50[0];
    if (v21)
    {
      v23 = *&v50[0];
      goto LABEL_15;
    }

LABEL_30:
    v41 = v15;
    sub_232400C18();

LABEL_36:
    swift_willThrow();
    goto LABEL_37;
  }

LABEL_15:
  v24 = &selRef_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_highlights_;
  v25 = [v3 locations];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [v3 locations];
    v28 = [v27 allKeys];

    v29 = sub_232401268();
    v30 = 0;
    v31 = v29 + 32;
    v44 = *(v29 + 16);
    v46 = v29;
    while (1)
    {
      if (v44 == v30)
      {

        goto LABEL_37;
      }

      if (v30 >= *(v46 + 16))
      {
        __break(1u);
      }

      sub_23224EDEC(v31, v50);
      sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v32 = [v3 v24[352]];
      v33 = v48;
      v34 = [v32 objectForKeyedSubscript_];

      if (v34)
      {
        sub_2324013D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v50[0] = v48;
      v50[1] = v49;
      if (!*(&v49 + 1))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91220, &qword_2324174E0);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:
        sub_232259D5C();
        swift_allocError();
        goto LABEL_36;
      }

      v35 = [v33 unsignedShortValue];
      if (a3)
      {
        v36 = v35;
        sub_232252D0C(0, &qword_2814C77F0, 0x277D3A4A8);
        v37 = sub_232401248();

        v38 = [v3 source];
        v39 = [v3 cloudSync];
        *&v50[0] = 0;
        LODWORD(v36) = [a3 donateLocations:v37 source:v38 contextualNamedEntities:0 algorithm:v36 cloudSync:v39 error:v50];

        if (!v36)
        {
          v43 = *&v50[0];

          sub_232400C18();

          swift_willThrow();
          goto LABEL_37;
        }

        v40 = *&v50[0];
      }

      else
      {
      }

      v31 += 32;
      ++v30;
      v24 = &selRef_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_highlights_;
    }

    sub_232259DB0(v50);
    goto LABEL_35;
  }

LABEL_37:
  v42 = *MEMORY[0x277D85DE8];
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

unint64_t sub_232259D5C()
{
  result = qword_27DD91210;
  if (!qword_27DD91210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91210);
  }

  return result;
}

uint64_t sub_232259DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91218, &qword_2324174D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for HarvestingError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for HarvestingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_232259F8C()
{
  result = qword_27DD91228;
  if (!qword_27DD91228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91228);
  }

  return result;
}

uint64_t sub_232259FE4(uint64_t a1)
{
  result = sub_232401128();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 96);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_23225A0D4()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = qword_2814C8D90;
  v4 = sub_232401128();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(*v0 + 152)]);
  v5 = *&v0[*(*v0 + 160)];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23225A1C0()
{
  sub_23225A0D4();

  return MEMORY[0x282200960](v0);
}

void *sub_23225A210()
{
  OUTLINED_FUNCTION_71();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  sub_232401118();
  v2 = *(*v1 + 160);
  *(v1 + v2) = 0;
  *(v1 + *(*v1 + 152)) = v0;
  *(v1 + v2) = 0;
  return v1;
}

uint64_t sub_23225A2C0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4 + qword_2814C8D90, v8);
  v13 = sub_232401108();
  v14 = sub_232401338();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = a3;
    v55 = v52;
    *v15 = 136315138;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v16 = sub_232401628();
    v18 = sub_23224ED04(v16, v17, &v55);
    v51 = v8;
    v19 = v4;
    v20 = a1;
    v21 = v18;

    *(v15 + 4) = v21;
    a1 = v20;
    v4 = v19;
    _os_log_impl(&dword_23224A000, v13, v14, "TextUnderstandingBuffer<%s>: adding", v15, 0xCu);
    v22 = v52;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    a3 = v53;
    MEMORY[0x2383841F0](v22, -1, -1);
    MEMORY[0x2383841F0](v15, -1, -1);

    (*(v9 + 8))(v12, v51);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v23 = *(v4 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v4 + 112);
  v24 = v54;
  *(v4 + 112) = 0x8000000000000000;
  v25 = sub_2322737E4(a2);
  if (__OFADD__(v24[2], (v26 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v25;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912B8, &qword_232417890);
  v29 = sub_2324014F8();
  v30 = v54;
  if (v29)
  {
    v31 = sub_2322737E4(a2);
    if ((v28 & 1) != (v32 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v27 = v31;
  }

  *(v4 + 112) = v30;
  if ((v28 & 1) == 0)
  {
    sub_2322636B0(v27, a2, MEMORY[0x277D84F98], v30);
    v33 = a2;
  }

  v34 = v30[7];
  v35 = *(v34 + 8 * v27);
  swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v34 + 8 * v27);
  v36 = v54;
  *(v34 + 8 * v27) = 0x8000000000000000;
  v37 = sub_2322770B8(a3);
  if (__OFADD__(v36[2], (v38 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v37;
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912C0, &qword_232417898);
  v41 = sub_2324014F8();
  v42 = v54;
  if (v41)
  {
    v43 = sub_2322770B8(a3);
    if ((v40 & 1) == (v44 & 1))
    {
      v39 = v43;
      goto LABEL_14;
    }

    type metadata accessor for PPNamedEntityAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  v45 = *(v34 + 8 * v27);
  *(v34 + 8 * v27) = v42;

  v46 = *(v34 + 8 * v27);
  if ((v40 & 1) == 0)
  {
    sub_2322636B0(v39, a3, MEMORY[0x277D84F90], *(v34 + 8 * v27));
  }

  v47 = (*(v46 + 56) + 8 * v39);
  v48 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4(*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_232401288();
  swift_endAccess();
  return sub_23225C57C();
}

uint64_t sub_23225A6DC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4 + qword_2814C8D90, v8);
  v13 = sub_232401108();
  v14 = sub_232401338();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = a3;
    v55 = v52;
    *v15 = 136315138;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v16 = sub_232401628();
    v18 = sub_23224ED04(v16, v17, &v55);
    v51 = v8;
    v19 = v4;
    v20 = a1;
    v21 = v18;

    *(v15 + 4) = v21;
    a1 = v20;
    v4 = v19;
    _os_log_impl(&dword_23224A000, v13, v14, "TextUnderstandingBuffer<%s>: adding", v15, 0xCu);
    v22 = v52;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    a3 = v53;
    MEMORY[0x2383841F0](v22, -1, -1);
    MEMORY[0x2383841F0](v15, -1, -1);

    (*(v9 + 8))(v12, v51);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v23 = *(v4 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v4 + 112);
  v24 = v54;
  *(v4 + 112) = 0x8000000000000000;
  v25 = sub_2322737E4(a2);
  if (__OFADD__(v24[2], (v26 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v25;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912A0, &qword_232417868);
  v29 = sub_2324014F8();
  v30 = v54;
  if (v29)
  {
    v31 = sub_2322737E4(a2);
    if ((v28 & 1) != (v32 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v27 = v31;
  }

  *(v4 + 112) = v30;
  if ((v28 & 1) == 0)
  {
    sub_2322636B0(v27, a2, MEMORY[0x277D84F98], v30);
    v33 = a2;
  }

  v34 = v30[7];
  v35 = *(v34 + 8 * v27);
  swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v34 + 8 * v27);
  v36 = v54;
  *(v34 + 8 * v27) = 0x8000000000000000;
  v37 = sub_2322770B8(a3);
  if (__OFADD__(v36[2], (v38 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v37;
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912A8, &qword_232417870);
  v41 = sub_2324014F8();
  v42 = v54;
  if (v41)
  {
    v43 = sub_2322770B8(a3);
    if ((v40 & 1) == (v44 & 1))
    {
      v39 = v43;
      goto LABEL_14;
    }

    type metadata accessor for PPTopicAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  v45 = *(v34 + 8 * v27);
  *(v34 + 8 * v27) = v42;

  v46 = *(v34 + 8 * v27);
  if ((v40 & 1) == 0)
  {
    sub_2322636B0(v39, a3, MEMORY[0x277D84F90], *(v34 + 8 * v27));
  }

  v47 = (*(v46 + 56) + 8 * v39);
  v48 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4(*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_232401288();
  swift_endAccess();
  return sub_23225C8A4();
}

uint64_t sub_23225AAF8(void *a1, void *a2, int a3)
{
  v4 = v3;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4 + qword_2814C8D90, v8);
  v13 = sub_232401108();
  v14 = sub_232401338();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54 = a3;
    v53 = v16;
    v56 = v16;
    *v15 = 136315138;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v17 = sub_232401628();
    v19 = sub_23224ED04(v17, v18, &v56);
    v52 = v8;
    v20 = v4;
    v21 = a1;
    v22 = v19;

    *(v15 + 4) = v22;
    a1 = v21;
    v4 = v20;
    _os_log_impl(&dword_23224A000, v13, v14, "TextUnderstandingBuffer<%s>: adding", v15, 0xCu);
    v23 = v53;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    LOWORD(a3) = v54;
    MEMORY[0x2383841F0](v23, -1, -1);
    MEMORY[0x2383841F0](v15, -1, -1);

    (*(v9 + 8))(v12, v52);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v24 = *(v4 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v4 + 112);
  v25 = v55;
  *(v4 + 112) = 0x8000000000000000;
  v26 = sub_2322737E4(a2);
  if (__OFADD__(v25[2], (v27 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = v26;
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91270, &qword_232417820);
  v30 = sub_2324014F8();
  v31 = v55;
  if (v30)
  {
    v32 = sub_2322737E4(a2);
    if ((v29 & 1) != (v33 & 1))
    {
LABEL_19:
      sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
      goto LABEL_21;
    }

    v28 = v32;
  }

  *(v4 + 112) = v31;
  if ((v29 & 1) == 0)
  {
    sub_2322636B0(v28, a2, MEMORY[0x277D84F98], v31);
    v34 = a2;
  }

  v35 = v31[7];
  v36 = *(v35 + 8 * v28);
  swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v35 + 8 * v28);
  v37 = v55;
  *(v35 + 8 * v28) = 0x8000000000000000;
  v38 = sub_232273904(a3);
  if (__OFADD__(v37[2], (v39 & 1) == 0))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v40 = v38;
  v41 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91278, &qword_232417828);
  v42 = sub_2324014F8();
  v43 = v55;
  if (v42)
  {
    v44 = sub_232273904(a3);
    if ((v41 & 1) == (v45 & 1))
    {
      v40 = v44;
      goto LABEL_14;
    }

    type metadata accessor for PPLocationAlgorithm(0);
LABEL_21:
    result = sub_232401548();
    __break(1u);
    return result;
  }

LABEL_14:
  v46 = *(v35 + 8 * v28);
  *(v35 + 8 * v28) = v43;

  v47 = *(v35 + 8 * v28);
  if ((v41 & 1) == 0)
  {
    sub_2322636D4(v40, a3, MEMORY[0x277D84F90], *(v35 + 8 * v28));
  }

  v48 = (*(v47 + 56) + 8 * v40);
  v49 = a1;
  MEMORY[0x2383827C0]();
  sub_23226E3F4(*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_232401288();
  swift_endAccess();
  return sub_23225CBCC();
}

uint64_t sub_23225AF18()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v76 = v0;
  v8(v7, v0 + qword_2814C8D90, v3);
  v9 = sub_232401108();
  v10 = sub_232401338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v81 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v82[0] = v13;
    *v12 = 136315138;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v14 = sub_232401628();
    v16 = sub_23224ED04(v14, v15, v82);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_23224A000, v9, v10, "TextUnderstandingBuffer<%s>: flushing", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2383841F0](v13, -1, -1);
    MEMORY[0x2383841F0](v12, -1, -1);

    (*(v4 + 8))(v7, v81);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v17 = v76;
  swift_beginAccess();
  v18 = v17[14];
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v74 = *(*v17 + 152);
  v23 = (v20 + 63) >> 6;
  v68 = v18;

  v25 = 0;
  v67 = v19;
  v66 = v23;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v69 = v26;
      v27 = (v26 << 9) | (8 * __clz(__rbit64(v22)));
      v28 = *(*(v68 + 48) + v27);
      v29 = *(*(v68 + 56) + v27);
      v70 = (v22 - 1) & v22;
      v30 = v29 + 64;
      v31 = 1 << *(v29 + 32);
      v32 = v31 < 64 ? ~(-1 << v31) : -1;
      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;
      v35 = v28;

      v36 = 0;
      v72 = v29 + 64;
      v73 = v29;
      v77 = v35;
      v71 = v34;
      if (v33)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v37);
        ++v36;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      v25 = v69;
      v22 = v70;
      v19 = v67;
      v23 = v66;
      if (!v70)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v37 = v36;
LABEL_20:
      v38 = v2;
      v39 = (v37 << 9) | (8 * __clz(__rbit64(v33)));
      v40 = *(*(v29 + 48) + v39);
      v41 = *(*(v29 + 56) + v39);
      v42 = *(v76 + v74);
      v79 = v40;
      v80 = v42;
      v43 = v41 >> 62 ? sub_232401518() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v78 = v33;
      if (v43)
      {
        v85 = MEMORY[0x277D84F90];
        v44 = v43 & ~(v43 >> 63);
        v81 = v43;

        v45 = v80;
        v46 = v41;
        result = sub_2322708F8(0, v44, 0);
        if (v81 < 0)
        {
          goto LABEL_44;
        }

        v75 = v38;
        v47 = 0;
        v48 = v85;
        v49 = v41;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x2383829D0](v47, v49);
          }

          else
          {
            v50 = *(v49 + 8 * v47 + 32);
          }

          v51 = v50;
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          v83 = v52;
          v84 = &off_284754968;
          v82[0] = v51;
          v85 = v48;
          v54 = *(v48 + 16);
          v53 = *(v48 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2322708F8(v53 > 1, v54 + 1, 1);
            v55 = v83;
            v56 = v84;
          }

          else
          {
            v55 = v52;
            v56 = &off_284754968;
          }

          ++v47;
          v57 = __swift_mutable_project_boxed_opaque_existential_1(v82, v55);
          v58 = *(*(v55 - 8) + 64);
          MEMORY[0x28223BE20](v57);
          v60 = &v65 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v61 + 16))(v60);
          sub_2322640F0(v54, v60, &v85, v55, v56);
          __swift_destroy_boxed_opaque_existential_0Tm(v82);
          v48 = v85;
          v49 = v46;
        }

        while (v81 != v47);

        v2 = v75;
        v30 = v72;
        v29 = v73;
        v35 = v77;
        v34 = v71;
        v62 = v80;
      }

      else
      {
        v62 = v80;
        v63 = v80;
        v35 = v77;
      }

      type metadata accessor for PPNamedEntityAlgorithm(0);
      v83 = v64;
      v84 = sub_232264348(&qword_27DD912D0, type metadata accessor for PPNamedEntityAlgorithm);
      v82[0] = v79;
      sub_2322773F0();
      if (v2)
      {
        break;
      }

      v33 = (v78 - 1) & v78;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v82);
      v36 = v37;
      if (!v33)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v82);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return sub_23225C340(&qword_27DD912C8, off_27896F9A0);
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225B5D0()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v76 = v0;
  v8(v7, v0 + qword_2814C8D90, v3);
  v9 = sub_232401108();
  v10 = sub_232401338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v81 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v82[0] = v13;
    *v12 = 136315138;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v14 = sub_232401628();
    v16 = sub_23224ED04(v14, v15, v82);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_23224A000, v9, v10, "TextUnderstandingBuffer<%s>: flushing", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2383841F0](v13, -1, -1);
    MEMORY[0x2383841F0](v12, -1, -1);

    (*(v4 + 8))(v7, v81);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v17 = v76;
  swift_beginAccess();
  v18 = v17[14];
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v74 = *(*v17 + 152);
  v23 = (v20 + 63) >> 6;
  v68 = v18;

  v25 = 0;
  v67 = v19;
  v66 = v23;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v69 = v26;
      v27 = (v26 << 9) | (8 * __clz(__rbit64(v22)));
      v28 = *(*(v68 + 48) + v27);
      v29 = *(*(v68 + 56) + v27);
      v70 = (v22 - 1) & v22;
      v30 = v29 + 64;
      v31 = 1 << *(v29 + 32);
      v32 = v31 < 64 ? ~(-1 << v31) : -1;
      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;
      v35 = v28;

      v36 = 0;
      v72 = v29 + 64;
      v73 = v29;
      v77 = v35;
      v71 = v34;
      if (v33)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v37);
        ++v36;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      v25 = v69;
      v22 = v70;
      v19 = v67;
      v23 = v66;
      if (!v70)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v37 = v36;
LABEL_20:
      v38 = v2;
      v39 = (v37 << 9) | (8 * __clz(__rbit64(v33)));
      v40 = *(*(v29 + 48) + v39);
      v41 = *(*(v29 + 56) + v39);
      v42 = *(v76 + v74);
      v79 = v40;
      v80 = v42;
      v43 = v41 >> 62 ? sub_232401518() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v78 = v33;
      if (v43)
      {
        v85 = MEMORY[0x277D84F90];
        v44 = v43 & ~(v43 >> 63);
        v81 = v43;

        v45 = v80;
        v46 = v41;
        result = sub_2322708F8(0, v44, 0);
        if (v81 < 0)
        {
          goto LABEL_44;
        }

        v75 = v38;
        v47 = 0;
        v48 = v85;
        v49 = v41;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x2383829D0](v47, v49);
          }

          else
          {
            v50 = *(v49 + 8 * v47 + 32);
          }

          v51 = v50;
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          v83 = v52;
          v84 = &off_284754968;
          v82[0] = v51;
          v85 = v48;
          v54 = *(v48 + 16);
          v53 = *(v48 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2322708F8(v53 > 1, v54 + 1, 1);
            v55 = v83;
            v56 = v84;
          }

          else
          {
            v55 = v52;
            v56 = &off_284754968;
          }

          ++v47;
          v57 = __swift_mutable_project_boxed_opaque_existential_1(v82, v55);
          v58 = *(*(v55 - 8) + 64);
          MEMORY[0x28223BE20](v57);
          v60 = &v65 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v61 + 16))(v60);
          sub_2322640F0(v54, v60, &v85, v55, v56);
          __swift_destroy_boxed_opaque_existential_0Tm(v82);
          v48 = v85;
          v49 = v46;
        }

        while (v81 != v47);

        v2 = v75;
        v30 = v72;
        v29 = v73;
        v35 = v77;
        v34 = v71;
        v62 = v80;
      }

      else
      {
        v62 = v80;
        v63 = v80;
        v35 = v77;
      }

      type metadata accessor for PPTopicAlgorithm(0);
      v83 = v64;
      v84 = sub_232264348(&qword_27DD912B0, type metadata accessor for PPTopicAlgorithm);
      v82[0] = v79;
      sub_2322777B0();
      if (v2)
      {
        break;
      }

      v33 = (v78 - 1) & v78;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v82);
      v36 = v37;
      if (!v33)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v82);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return sub_23225C340(&unk_2814C77C8, off_27896F9C8);
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225BC88()
{
  v2 = v1;
  v3 = sub_232401128();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v75 = v0;
  v8(v7, v0 + qword_2814C8D90, v3);
  v9 = sub_232401108();
  v10 = sub_232401338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v80 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v81[0] = v13;
    *v12 = 136315138;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v14 = sub_232401628();
    v16 = sub_23224ED04(v14, v15, v81);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_23224A000, v9, v10, "TextUnderstandingBuffer<%s>: flushing", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2383841F0](v13, -1, -1);
    MEMORY[0x2383841F0](v12, -1, -1);

    (*(v4 + 8))(v7, v80);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v17 = v75;
  swift_beginAccess();
  v18 = v17[14];
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v73 = *(*v17 + 152);
  v23 = (v20 + 63) >> 6;
  v67 = v18;

  v25 = 0;
  v66 = v19;
  v65 = v23;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v68 = v26;
      v27 = (v26 << 9) | (8 * __clz(__rbit64(v22)));
      v28 = *(*(v67 + 48) + v27);
      v29 = *(*(v67 + 56) + v27);
      v69 = (v22 - 1) & v22;
      v30 = v29 + 64;
      v31 = 1 << *(v29 + 32);
      v32 = v31 < 64 ? ~(-1 << v31) : -1;
      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;
      v35 = v28;
      v76 = v29;

      v36 = 0;
      v71 = v35;
      v72 = v29 + 64;
      v70 = v34;
      if (v33)
      {
        break;
      }

      while (1)
      {
LABEL_17:
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v37);
        ++v36;
        if (v33)
        {
          goto LABEL_20;
        }
      }

      v25 = v68;
      v22 = v69;
      v19 = v66;
      v23 = v65;
      if (!v69)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v37 = v36;
LABEL_20:
      v38 = v2;
      v39 = __clz(__rbit64(v33)) | (v37 << 6);
      v40 = *(v76 + 56);
      v78 = *(*(v76 + 48) + 2 * v39);
      v41 = *(v40 + 8 * v39);
      v79 = *(v75 + v73);
      v42 = v41 >> 62 ? sub_232401518() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v33;
      if (v42)
      {
        v84 = MEMORY[0x277D84F90];
        v43 = v42 & ~(v42 >> 63);
        v80 = v42;

        v44 = v79;
        v45 = v41;
        result = sub_2322708F8(0, v43, 0);
        if (v80 < 0)
        {
          goto LABEL_44;
        }

        v74 = v38;
        v46 = 0;
        v47 = v84;
        v48 = v41;
        do
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x2383829D0](v46, v48);
          }

          else
          {
            v49 = *(v48 + 8 * v46 + 32);
          }

          v50 = v49;
          v51 = sub_232252D0C(0, &qword_2814C77F0, 0x277D3A4A8);
          v82 = v51;
          v83 = &off_284754970;
          v81[0] = v50;
          v84 = v47;
          v53 = *(v47 + 16);
          v52 = *(v47 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2322708F8(v52 > 1, v53 + 1, 1);
            v54 = v82;
            v55 = v83;
          }

          else
          {
            v54 = v51;
            v55 = &off_284754970;
          }

          ++v46;
          v56 = __swift_mutable_project_boxed_opaque_existential_1(v81, v54);
          v57 = *(*(v54 - 8) + 64);
          MEMORY[0x28223BE20](v56);
          v59 = &v64 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v60 + 16))(v59);
          sub_2322640F0(v53, v59, &v84, v54, v55);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          v47 = v84;
          v48 = v45;
        }

        while (v80 != v46);

        v2 = v74;
        v35 = v71;
        v30 = v72;
        v34 = v70;
        v61 = v79;
      }

      else
      {
        v61 = v79;
        v62 = v79;
      }

      type metadata accessor for PPLocationAlgorithm(0);
      v82 = v63;
      v83 = sub_232264348(&qword_27DD91298, type metadata accessor for PPLocationAlgorithm);
      LOWORD(v81[0]) = v78;
      sub_232277948();
      if (v2)
      {
        break;
      }

      v33 = (v77 - 1) & v77;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v81);
      v36 = v37;
      if (!v33)
      {
        goto LABEL_17;
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  else
  {
LABEL_9:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return sub_23225C340(&qword_2814C7798, off_27896F998);
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        goto LABEL_12;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_23225C340(unint64_t *a1, uint64_t *a2)
{
  v5 = sub_232401128();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  (*(v8 + 16))(v2, v2 + qword_2814C8D90, v5);
  v11 = sub_232401108();
  v12 = sub_232401338();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_43();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    sub_232252D0C(0, a1, a2);
    v15 = sub_232401628();
    v17 = sub_23224ED04(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_23224A000, v11, v12, "TextUnderstandingBuffer<%s>: resetting", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v8 + 8))(v2, v5);
  swift_beginAccess();
  v18 = v2[14];
  v2[14] = MEMORY[0x277D84F98];

  v19 = *(*v2 + 160);
  if (*(v2 + v19))
  {
    v20 = *(v2 + v19);

    sub_2324012C8();

    v21 = *(v2 + v19);
  }

  *(v2 + v19) = 0;
}

uint64_t sub_23225C57C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 160);
  if (!*(v1 + v14))
  {
    (*(v9 + 16))(v13, v1 + qword_2814C8D90, v8);
    v15 = sub_232401108();
    v16 = sub_232401338();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v17;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v17 = 136315138;
      sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
      v18 = sub_232401628();
      v20 = sub_23224ED04(v18, v19, &v36);
      v33 = v15;
      v21 = v16;
      v22 = v3;
      v23 = v20;

      v25 = v33;
      v24 = v34;
      *(v34 + 1) = v23;
      v3 = v22;
      v26 = v24;
      _os_log_impl(&dword_23224A000, v25, v21, "TextUnderstandingBuffer<%s>: starting timer", v24, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x2383841F0](v27, -1, -1);
      MEMORY[0x2383841F0](v26, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v13, v8);
    v28 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v29;
    v30[5] = v3;
    v31 = sub_23225EA40(0, 0, v7, &unk_2324178A8, v30);
    v32 = *(v1 + v14);
    *(v1 + v14) = v31;
  }

  return result;
}

uint64_t sub_23225C8A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 160);
  if (!*(v1 + v14))
  {
    (*(v9 + 16))(v13, v1 + qword_2814C8D90, v8);
    v15 = sub_232401108();
    v16 = sub_232401338();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v17;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v17 = 136315138;
      sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
      v18 = sub_232401628();
      v20 = sub_23224ED04(v18, v19, &v36);
      v33 = v15;
      v21 = v16;
      v22 = v3;
      v23 = v20;

      v25 = v33;
      v24 = v34;
      *(v34 + 1) = v23;
      v3 = v22;
      v26 = v24;
      _os_log_impl(&dword_23224A000, v25, v21, "TextUnderstandingBuffer<%s>: starting timer", v24, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x2383841F0](v27, -1, -1);
      MEMORY[0x2383841F0](v26, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v13, v8);
    v28 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v29;
    v30[5] = v3;
    v31 = sub_23225EA40(0, 0, v7, &unk_232417880, v30);
    v32 = *(v1 + v14);
    *(v1 + v14) = v31;
  }

  return result;
}

uint64_t sub_23225CBCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_232401128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 160);
  if (!*(v1 + v14))
  {
    (*(v9 + 16))(v13, v1 + qword_2814C8D90, v8);
    v15 = sub_232401108();
    v16 = sub_232401338();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v17;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v17 = 136315138;
      sub_232252D0C(0, &qword_2814C7798, off_27896F998);
      v18 = sub_232401628();
      v20 = sub_23224ED04(v18, v19, &v36);
      v33 = v15;
      v21 = v16;
      v22 = v3;
      v23 = v20;

      v25 = v33;
      v24 = v34;
      *(v34 + 1) = v23;
      v3 = v22;
      v26 = v24;
      _os_log_impl(&dword_23224A000, v25, v21, "TextUnderstandingBuffer<%s>: starting timer", v24, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x2383841F0](v27, -1, -1);
      MEMORY[0x2383841F0](v26, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v13, v8);
    v28 = sub_2324012B8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v29;
    v30[5] = v3;
    v31 = sub_23225EA40(0, 0, v7, &unk_232417840, v30);
    v32 = *(v1 + v14);
    *(v1 + v14) = v31;
  }

  return result;
}

uint64_t sub_23225CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2324014D8();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225D010);
}

uint64_t sub_23225D010()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[17];
  v0[18] = os_transaction_create();
  sub_232401578();
  v2 = OUTLINED_FUNCTION_50(&unk_232417AC8);
  v0[19] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_4_0(v2);

  return v4(v3);
}

uint64_t sub_23225D0B0()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_23225D20C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v3);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_23225D2C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225D394()
{
  OUTLINED_FUNCTION_22();
  v2 = v0[20];
  v1 = v0[21];
  sub_23225AF18();
  v0[22] = v2;
  v3 = v0[21];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_23225D41C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_23225D480()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225D54C()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23225D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &qword_27DD912C8, off_27896F9A0);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {
    v38 = *(v24 + 104);
    v37 = *(v24 + 112);
    v39 = *(v24 + 96);

    v40 = *(v38 + 8);
    v41 = OUTLINED_FUNCTION_47();
    v42(v41);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v44);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225D7B8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 200);
  sub_23225C340(&qword_27DD912C8, off_27896F9A0);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_23225D82C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_23225D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2324014D8();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225D9B4);
}

uint64_t sub_23225D9B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[17];
  v0[18] = os_transaction_create();
  sub_232401578();
  v2 = OUTLINED_FUNCTION_50(&unk_232417AC8);
  v0[19] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_4_0(v2);

  return v4(v3);
}

uint64_t sub_23225DA54()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_23225DBB0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v3);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_23225DC6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_35();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225DD38()
{
  OUTLINED_FUNCTION_22();
  v2 = v0[20];
  v1 = v0[21];
  sub_23225B5D0();
  v0[22] = v2;
  v3 = v0[21];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_23225DDC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_35();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_7();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225DE8C()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23225DF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {
    v38 = *(v24 + 104);
    v37 = *(v24 + 112);
    v39 = *(v24 + 96);

    v40 = *(v38 + 8);
    v41 = OUTLINED_FUNCTION_47();
    v42(v41);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v44);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225E0F8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 200);
  sub_23225C340(&unk_2814C77C8, off_27896F9C8);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_23225E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_232401128();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2324014D8();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23225E288);
}

uint64_t sub_23225E288()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[17];
  v0[18] = os_transaction_create();
  sub_232401578();
  v2 = OUTLINED_FUNCTION_50(&unk_232417AC8);
  v0[19] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_4_0(v2);

  return v4(v3);
}

uint64_t sub_23225E328()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = v2[19];
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_23225E484()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_66();

    return MEMORY[0x2822009F8](v3);
  }

  else
  {
    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_23225E540()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 160));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_34();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225E60C()
{
  OUTLINED_FUNCTION_22();
  v2 = v0[20];
  v1 = v0[21];
  sub_23225BC88();
  v0[22] = v2;
  v3 = v0[21];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_23225E694()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(*(v0 + 176));
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_34();
LABEL_5:

    return MEMORY[0x2822009F8](v2);
  }

  OUTLINED_FUNCTION_3_0();
  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_23225E760()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_65();
  (*(v2 + 16))(v1, v0 + qword_2814C8D90);

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23225E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_83();
  a21 = v26;
  a22 = v27;
  a20 = v24;
  OUTLINED_FUNCTION_72();
  v28 = sub_232401108();
  v29 = sub_232401348();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_32();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v25 = 136315394;
    sub_232252D0C(0, &qword_2814C7798, off_27896F998);
    v32 = sub_232401628();
    sub_23224ED04(v32, v33, &a11);

    OUTLINED_FUNCTION_52();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v34;
    *v30 = v34;
    OUTLINED_FUNCTION_51(&dword_23224A000, v35, v36, "TextUnderstandingBuffer<%s>: error: %@");
    sub_232264094(v30, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    (*(v23 + 8))(a10, a9);
  }

  else
  {
    v38 = *(v24 + 104);
    v37 = *(v24 + 112);
    v39 = *(v24 + 96);

    v40 = *(v38 + 8);
    v41 = OUTLINED_FUNCTION_47();
    v42(v41);
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_weakLoadStrong();
  *(v24 + 200) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v44);
  }

  else
  {

    OUTLINED_FUNCTION_53();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_45();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23225E9CC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 200);
  sub_23225C340(&qword_2814C7798, off_27896F998);

  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_23225EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_232263F90(a3, v26 - v11);
  v13 = sub_2324012B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_232264094(v12, &qword_27DD91288, &qword_232417830);
  }

  else
  {
    sub_2324012A8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_232401298();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_232401198() + 32;
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

      sub_232264094(a3, &qword_27DD91288, &qword_232417830);

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

  sub_232264094(a3, &qword_27DD91288, &qword_232417830);
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

void sub_23225ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v11 = sub_232401128();
  v12 = OUTLINED_FUNCTION_40(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v25 = v17;
  (*(v14 + 16))(v7, v7 + qword_2814C8D90);
  v18 = sub_232401108();
  v19 = sub_232401338();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_43();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27();
    v20 = swift_slowAlloc();
    v30 = v20;
    *a7 = 136315138;
    sub_232252D0C(0, a5, a6);
    v21 = sub_232401628();
    v23 = sub_23224ED04(v21, v22, &v30);

    *(a7 + 4) = v23;
    _os_log_impl(&dword_23224A000, v18, v19, "TextUnderstandingBuffer<%s>: deleting", a7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v14 + 8))(v7, v25);
  v24 = *(v7 + *(*v7 + 152));
  (a7)(a1, a2, a3, a4);
}

uint64_t sub_23225EF24()
{
  v0 = sub_232401128();
  __swift_allocate_value_buffer(v0, qword_2814C8D78);
  __swift_project_value_buffer(v0, qword_2814C8D78);
  return sub_232401118();
}

void sub_23225EFA4()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v4 = [v2 documentId];
  v5 = sub_232401178();
  v7 = v6;

  swift_beginAccess();
  v8 = *(v1 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v10 = sub_232273828(v5, v7);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912D8, &qword_2324178B0);
  if (sub_2324014F8())
  {
    v14 = sub_232273828(v5, v7);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    sub_232401548();
    __break(1u);
    return;
  }

LABEL_5:
  *(v1 + 112) = v9;
  if (v13)
  {
  }

  else
  {
    sub_232263668(v12, v5, v7, MEMORY[0x277D84F90], v9);
  }

  v16 = (v9[7] + 8 * v12);
  v3;
  MEMORY[0x2383827C0]();
  sub_23226E3F4(*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_232401288();
  swift_endAccess();
  OUTLINED_FUNCTION_82();
}

void sub_23225F12C()
{
  OUTLINED_FUNCTION_81();
  v1 = sub_2324010E8();
  v3 = v2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v4 = *(v0 + 112);

  v5 = sub_232271804(v1, v3, v4);

  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = sub_232252E38(v5);
  if (!v6)
  {
LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_82();
    return;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2383829D0](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = sub_232273BBC(v9);
    v14 = v13;
    v15 = sub_2324010D8();
    if (v14)
    {
      if (v16)
      {
        if (v12 == v15 && v14 == v16)
        {
        }

        else
        {
          v18 = sub_232401528();

          if ((v18 & 1) == 0)
          {
LABEL_25:

            goto LABEL_26;
          }
        }

LABEL_20:
        v19 = [v10 bundleId];
        v20 = sub_232401178();
        v22 = v21;

        if (v20 == sub_2324010C8() && v22 == v23)
        {

          goto LABEL_27;
        }

        v25 = sub_232401528();

        if (v25)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else if (!v16)
    {
      goto LABEL_20;
    }

LABEL_26:
    ++v8;
    if (v11 == v7)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_23225F358()
{
  v1 = sub_232401128();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_26();
  if (qword_2814C7AA0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v7 = __swift_project_value_buffer(v1, qword_2814C8D78);
  (*(v4 + 16))(v0, v7, v1);
  v8 = sub_232401108();
  v9 = sub_232401338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23224A000, v8, v9, "SourceBuffer: resetting", v10, 2u);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
  }

  (*(v4 + 8))(v0, v1);
  swift_beginAccess();
  v11 = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x277D84F98];
}

uint64_t sub_23225F4EC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t TextUnderstandingImporter.__allocating_init(database:)()
{
  OUTLINED_FUNCTION_71();
  v1 = swift_allocObject();
  TextUnderstandingImporter.init(database:)(v0);
  return v1;
}

void *TextUnderstandingImporter.init(database:)(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  type metadata accessor for TextUnderstandingImporter.SourceBuffer();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x277D84F98];
  v2[14] = v4;
  v2[15] = a1;
  sub_232252D0C(0, &qword_2814C77F8, off_27896FF10);
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = objc_opt_self();
  v9 = v6;
  v10 = sub_23225F83C(v7, v9, [v8 sharedTrialClient]);
  sub_232252D0C(0, &unk_2814C77C8, off_27896F9C8);
  v11 = [objc_allocWithZone(PPTopicStorage) initWithDatabase_];
  v12 = v10;
  v13 = sub_23225F8A4(v11, v12);
  [objc_allocWithZone(PPNamedEntityStorage) initWithDatabase_];
  v14 = objc_allocWithZone(PPLocalNamedEntityStore);
  v15 = v12;
  v16 = v13;
  OUTLINED_FUNCTION_37();
  sub_232262FA0(v17, v18, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91230, &qword_2324176C0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v2[16] = sub_23225A210();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91238, &qword_2324176C8);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v16;
  v2[17] = sub_23225A210();
  sub_232252D0C(0, &qword_2814C7798, off_27896F998);
  v27 = [objc_allocWithZone(PPLocationStorage) initWithDatabase_];
  v28 = v15;
  sub_23225F8A4(v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91240, &qword_2324176D0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_23225A210();

  v2[18] = v32;
  return v2;
}

id sub_23225F83C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettings:a1 database:a2 trialClient:a3];

  return v6;
}

id sub_23225F8A4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStorage:a1 trialWrapper:a2];

  return v4;
}

uint64_t sub_23225F900()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  OUTLINED_FUNCTION_70(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_62();
  v6 = sub_2324010B8();
  v1[5] = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_61();
  v1[8] = swift_task_alloc();
  v10 = sub_232401128();
  v1[9] = v10;
  OUTLINED_FUNCTION_2_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_61();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_23225FA40()
{
  v61 = v0;
  if (qword_2814C7AA0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];
  v7 = __swift_project_value_buffer(v0[9], qword_2814C8D78);
  v57 = *(v2 + 16);
  v58 = v7;
  v57(v1);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v9 = sub_232401108();
  v10 = sub_232401368();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[10];
  v59 = v0[9];
  v14 = v0[8];
  if (v11)
  {
    log = v9;
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    OUTLINED_FUNCTION_43();
    v56 = v12;
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v18 = 136315138;
    v8(v16, v14, v17);
    v19 = sub_232401188();
    v20 = v10;
    v22 = v21;
    (*(v15 + 8))(v14, v17);
    sub_23224ED04(v19, v22, &v60);
    OUTLINED_FUNCTION_71();

    *(v18 + 4) = v17;
    _os_log_impl(&dword_23224A000, log, v20, "PPTextUnderstandingImporter: document deletion received: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    v23 = *(v13 + 8);
    v23(v56, v59);
  }

  else
  {
    v25 = v0[5];
    v24 = v0[6];

    v26 = *(v24 + 8);
    v27 = OUTLINED_FUNCTION_69();
    v28(v27);
    v23 = *(v13 + 8);
    v23(v12, v59);
  }

  v29 = v0[4];
  OUTLINED_FUNCTION_54_0();
  sub_232401078();
  v30 = sub_232400C98();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  sub_232264094(v29, &qword_27DD91248, &qword_2324176E0);
  if (EnumTagSinglePayload != 1)
  {
    (v57)(v0[12], v58, v0[9]);
    v32 = sub_232401108();
    v33 = sub_232401368();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23224A000, v32, v33, "PPTextUnderstandingImporter: deletions using documentsReceivedAfter are not supported. Ignoring date.", v34, 2u);
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
    }

    v35 = v0[12];
    v36 = v0[9];
    v37 = v0[10];

    v38 = OUTLINED_FUNCTION_47();
    (v23)(v38);
  }

  v39 = v0[2];
  v40 = *(sub_2324010A8() + 16);

  if (v40)
  {
    v41 = v0[2];
    v42 = *(sub_232401098() + 16);

    if (v42)
    {
      (v57)(v0[11], v58, v0[9]);
      v43 = sub_232401108();
      v44 = sub_232401368();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23224A000, v43, v44, "PPTextUnderstandingImporter: deletions that combine domain and unique ids are not supported. Falling back to uniqueId deletion.", v45, 2u);
        OUTLINED_FUNCTION_13();
        MEMORY[0x2383841F0]();
      }

      v47 = v0[10];
      v46 = v0[11];
      v48 = v0[9];

      v49 = OUTLINED_FUNCTION_47();
      (v23)(v49);
    }
  }

  v50 = v0[2];
  v0[14] = *(v0[3] + 128);

  v0[15] = sub_232401088();
  v0[16] = v51;
  v0[17] = sub_232401098();
  v0[18] = sub_2324010A8();
  v52 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v52);
}

uint64_t sub_23225FE78()
{
  OUTLINED_FUNCTION_79();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v6, v7, v8, v9, v10, v11, v12);
  v0[19] = 0;

  v13 = v0[3];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_23225FFA0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v0[20] = *(v0[3] + 136);

  v0[21] = sub_232401088();
  v0[22] = v2;
  v0[23] = sub_232401098();
  v0[24] = sub_2324010A8();
  v3 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_232260020()
{
  OUTLINED_FUNCTION_79();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v7, v8, v9, v10, v11, v12, v13);
  v0[25] = v6;

  if (v6)
  {
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_75();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[3];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_232260144()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v0[26] = *(v0[3] + 144);

  v0[27] = sub_232401088();
  v0[28] = v2;
  v0[29] = sub_232401098();
  v0[30] = sub_2324010A8();
  v3 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3);
}

void sub_2322601C4()
{
  OUTLINED_FUNCTION_79();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  OUTLINED_FUNCTION_41();
  sub_23225ED14(v7, v8, v9, v10, v11, v12, v13);

  OUTLINED_FUNCTION_49();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_75();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2322602B4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  OUTLINED_FUNCTION_70(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_62();
  v6 = sub_232400C98();
  OUTLINED_FUNCTION_70(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_62();
  v9 = sub_2324010F8();
  v1[6] = v9;
  OUTLINED_FUNCTION_2_0(v9);
  v1[7] = v10;
  v12 = *(v11 + 64);
  v1[8] = OUTLINED_FUNCTION_61();
  v13 = swift_task_alloc();
  v1[10] = OUTLINED_FUNCTION_87(v13);
  v14 = sub_232400EE8();
  v1[11] = v14;
  OUTLINED_FUNCTION_2_0(v14);
  v1[12] = v15;
  v17 = *(v16 + 64);
  v1[13] = OUTLINED_FUNCTION_61();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v18 = sub_232401128();
  v1[16] = v18;
  OUTLINED_FUNCTION_2_0(v18);
  v1[17] = v19;
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_61();
  v1[19] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v22);
}

uint64_t sub_232260470()
{
  if (qword_2814C7AA0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v1 = v0[19];
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[15];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[2];
    v8 = __swift_project_value_buffer(v2, qword_2814C8D78);
    v0[20] = v8;
    v9 = *(v3 + 16);
    v0[21] = v9;
    v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v1, v8, v2);
    v10 = *(v6 + 16);
    v0[23] = v10;
    v0[24] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11 = OUTLINED_FUNCTION_44();
    v10(v11);
    v12 = sub_232401108();
    v13 = sub_232401338();
    v14 = OUTLINED_FUNCTION_56(v13);
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[15];
    if (v14)
    {
      log = v12;
      v18 = v0[14];
      v72 = v0[19];
      v20 = v0[11];
      v19 = v0[12];
      OUTLINED_FUNCTION_43();
      swift_slowAlloc();
      OUTLINED_FUNCTION_27();
      v75 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_20(4.8149e-34);
      v10(v21);
      OUTLINED_FUNCTION_55();
      sub_232401188();
      v22 = *(v19 + 8);
      v22(v17, v20);
      v23 = OUTLINED_FUNCTION_69();
      sub_23224ED04(v23, v24, v25);
      OUTLINED_FUNCTION_88();
      *(v16 + 4) = v17;
      _os_log_impl(&dword_23224A000, log, v1, "PPTextUnderstandingImporter: document observation received: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();

      v26 = *(v15 + 8);
      v26(v72, v16);
    }

    else
    {
      v28 = v0[11];
      v27 = v0[12];

      v22 = *(v27 + 8);
      v22(v17, v28);
      v26 = *(v15 + 8);
      v29 = OUTLINED_FUNCTION_44();
      v26(v29, v30);
    }

    v0[25] = v26;
    v0[26] = v22;
    v31 = v0[2];
    v32 = COERCE_DOUBLE(sub_232400ED8());
    v34 = (v33 & 1) != 0 ? 0.0 : v32;
    if ((v33 & 1) != 0 || (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      break;
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_0_1();
  }

  if (v34 <= -1.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v34 >= 4294967300.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = v0[2];
  v32 = COERCE_DOUBLE(sub_232400EB8());
  if (v36)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v32;
  }

  if ((*&v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (HIDWORD(*&v37))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v0[2];
  v32 = COERCE_DOUBLE(sub_232400EB8());
  if (v39)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v32;
  }

  if ((*&v40 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (HIDWORD(*&v40))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = v0[2];
  v32 = COERCE_DOUBLE(sub_232400E88());
  if (v42)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = v32;
  }

  if ((*&v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if (*&v43 >> 16)
  {
LABEL_39:
    __break(1u);
    return MEMORY[0x2822009F8](*&v32);
  }

  v45 = v0[9];
  v44 = v0[10];
  v46 = v0[7];
  v63 = v0[6];
  v68 = v0[8];
  loga = v0[5];
  v71 = v0[4];
  v73 = v0[3];
  v47 = v0[2];
  v48 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:v34 lengthSeconds:*&v37 lengthCharacters:*&v40 donationCount:LOWORD(v43) contactHandleCount:0 flags:sub_232400E98() & 1];
  v0[27] = v48;
  sub_232400E68();
  v49 = sub_2324010C8();
  v66 = v50;
  v67 = v49;
  v51 = *(v46 + 8);
  v51(v44, v63);
  sub_232400E68();
  v52 = sub_2324010D8();
  v64 = v53;
  v65 = v52;
  v51(v45, v63);
  sub_232400E68();
  LODWORD(v45) = sub_2324010E8();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_47();
  (v51)(v56);
  sub_232400E78();
  sub_232400EA8();
  v57 = sub_232400EC8();
  v59 = v58;
  objc_allocWithZone(MEMORY[0x277D3A4D8]);
  v60 = v48;
  sub_232253BEC(v67, v66, v65, v64, v45, v55, loga, v71, 0, v57, v59, v48, v63, v64, v65, v66, v67, v68, loga, v71, v73, v75, v76, v77, v78, v79, v80, v81);
  v0[28] = v61;
  v0[29] = *(v74 + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](*&v32);
}

uint64_t sub_2322608FC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[3];
  sub_23225EFA4();

  v4 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_232260964()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 16);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
  v2(v4, v6, v5);
  v7 = sub_232401108();
  v8 = sub_232401338();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v46 = *(v0 + 216);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  if (v9)
  {
    v44 = *(v0 + 136);
    v45 = *(v0 + 128);
    v18 = *(v0 + 80);
    v19 = *(v0 + 48);
    OUTLINED_FUNCTION_43();
    v42 = v20;
    v43 = v12;
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_32();
    v47 = swift_slowAlloc();
    *v21 = 136315138;
    sub_232400E68();
    OUTLINED_FUNCTION_55();
    sub_232401188();
    v22 = OUTLINED_FUNCTION_80();
    v23(v22);
    v24 = OUTLINED_FUNCTION_55();
    v27 = sub_23224ED04(v24, v25, v26);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_23224A000, v7, v8, "PPTextUnderstandingImporter: document %s buffered", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();
    OUTLINED_FUNCTION_13();
    MEMORY[0x2383841F0]();

    v11(v43, v45);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_80();
    v29(v28);
    v11(v12, v14);
  }

  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v34 = *(v0 + 104);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v37 = *(v0 + 64);
  v39 = *(v0 + 32);
  v38 = *(v0 + 40);

  OUTLINED_FUNCTION_15();

  return v40();
}

uint64_t sub_232260BE4()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_66();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_232260C10()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 24) = *(*(v0 + 16) + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_232260C80()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 24);
  sub_23225F358();

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_232260CE0()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_61();
  v1[7] = swift_task_alloc();
  v7 = sub_232401128();
  v1[8] = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_232260DDC()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 88) = *(*(v0 + 24) + 112);

  OUTLINED_FUNCTION_37();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_232260E4C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  sub_23225F12C();
  v0[12] = v4;

  v5 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_232260EB8()
{
  if (!v0[12])
  {
    if (qword_2814C7AA0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[7];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    __swift_project_value_buffer(v0[8], qword_2814C8D78);
    v8 = OUTLINED_FUNCTION_21();
    v9(v8);
    v10 = *(v5 + 16);
    v10(v3, v7, v6);
    v10(v4, v7, v6);
    v11 = sub_232401108();
    v12 = sub_232401358();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v20 = v0[4];
    if (v13)
    {
      v38 = v12;
      v21 = swift_slowAlloc();
      swift_slowAlloc();
      *v21 = 136380931;
      sub_2324010C8();
      v22 = *(v18 + 8);
      v22(v16, v20);
      v23 = OUTLINED_FUNCTION_47();
      v26 = sub_23224ED04(v23, v24, v25);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2081;
      sub_2324010E8();
      v22(v19, v20);
      v27 = OUTLINED_FUNCTION_60();
      v30 = sub_23224ED04(v27, v28, v29);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_23224A000, v11, v38, "TextUnderstandingImporter: source buffer did not have a match for %{private}s : %{private}s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
      OUTLINED_FUNCTION_13();
      MEMORY[0x2383841F0]();
    }

    else
    {

      v31 = *(v18 + 8);
      v31(v19, v20);
      v31(v16, v20);
    }

    (*(v15 + 8))(v14, v17);
  }

  v32 = v0[10];
  v33 = v0[6];
  v34 = v0[7];

  v35 = v0[1];
  v36 = v0[12];

  return v35(v36);
}

uint64_t sub_23226118C()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v7 = sub_232401068();
  v1[7] = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_61();
  v1[10] = OUTLINED_FUNCTION_87(v11);
  v12 = sub_232401128();
  v1[11] = v12;
  OUTLINED_FUNCTION_2_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_2322614C4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v4 = v3[14];
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[3];
  v9 = *v0;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  *(v12 + 120) = v11;

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  v16 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_232261618()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[2];
    v0[16] = *(v0[3] + 128);

    v3 = sub_232401038();
    v5 = v4;
    v6 = sub_232401048();
    v8 = sub_232265450(v6, v7);
    sub_232263718(v1);
    v9 = objc_allocWithZone(MEMORY[0x277D3A420]);
    v10 = sub_232263014(v3, v5, v8, 0, 0);
    v0[17] = [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v10 score:1.0];

    v11 = sub_232401058();
    v0[18] = sub_232277D9C(v11, v12);
    v13 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v13);
  }

  else
  {
    OUTLINED_FUNCTION_73();

    OUTLINED_FUNCTION_15();

    return v14();
  }
}

uint64_t sub_232261798()
{
  OUTLINED_FUNCTION_22();
  v1 = OUTLINED_FUNCTION_78();
  sub_23225A2C0(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_232261808()
{
  OUTLINED_FUNCTION_22();

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_232261884()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v7 = sub_232400E58();
  v1[7] = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_61();
  v1[10] = OUTLINED_FUNCTION_87(v11);
  v12 = sub_232401128();
  v1[11] = v12;
  OUTLINED_FUNCTION_2_0(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_232261BBC()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v4 = v3[14];
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[3];
  v9 = *v0;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  *(v12 + 120) = v11;

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  v16 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_232261D10()
{
  OUTLINED_FUNCTION_22();
  if (v0[15])
  {
    v1 = v0[2];
    v0[16] = *(v0[3] + 136);
    sub_232252D0C(0, &qword_27DD91250, 0x277D3A530);

    sub_232400E28();
    v2 = sub_232261EAC();
    v0[17] = [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v2 score:1.0];

    v3 = sub_232400E48();
    v0[18] = sub_232277ED0(v3, v4);
    v5 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v5);
  }

  else
  {
    OUTLINED_FUNCTION_73();

    OUTLINED_FUNCTION_15();

    return v6();
  }
}

uint64_t sub_232261E3C()
{
  OUTLINED_FUNCTION_22();
  v1 = OUTLINED_FUNCTION_78();
  sub_23225A6DC(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v4);
}

id sub_232261EAC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232401168();

  v2 = [v0 initWithTopicIdentifier_];

  return v2;
}

uint64_t sub_232261F20()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91258, &qword_232417718);
  OUTLINED_FUNCTION_70(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_61();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[10] = OUTLINED_FUNCTION_87(v6);
  v1[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91260, &qword_232417720);
  OUTLINED_FUNCTION_70(v7);
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = sub_2324010F8();
  v1[16] = v10;
  OUTLINED_FUNCTION_2_0(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_62();
  v14 = sub_232401018();
  v1[19] = v14;
  OUTLINED_FUNCTION_2_0(v14);
  v1[20] = v15;
  v17 = *(v16 + 64);
  v1[21] = OUTLINED_FUNCTION_61();
  v1[22] = swift_task_alloc();
  v18 = sub_232401128();
  v1[23] = v18;
  OUTLINED_FUNCTION_2_0(v18);
  v1[24] = v19;
  v21 = *(v20 + 64);
  v1[25] = OUTLINED_FUNCTION_62();
  v22 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v22);
}

uint64_t sub_232262334()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v4 = v3[26];
  v5 = v3[18];
  v6 = v3[17];
  v7 = v3[16];
  v8 = v3[3];
  v9 = *v0;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  *(v12 + 216) = v11;

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  v16 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_232262488()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 120);
    OUTLINED_FUNCTION_86();
    v2 = sub_232400F18();
    v3 = OUTLINED_FUNCTION_58();
    sub_232264094(v1, &qword_27DD91260, &qword_232417720);
    v4 = 0;
    if (v3 != 1)
    {
      v5 = *(v0 + 112);
      OUTLINED_FUNCTION_86();
      if (OUTLINED_FUNCTION_58() == 1)
      {
        sub_232264094(*(v0 + 112), &qword_27DD91260, &qword_232417720);
        v6 = 0.0;
      }

      else
      {
        sub_232400EF8();
        v6 = v9;
        OUTLINED_FUNCTION_29(v2);
        v11 = *(v10 + 8);
        v12 = OUTLINED_FUNCTION_60();
        v13(v12);
      }

      v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    v109 = v4;
    v14 = *(v0 + 104);
    OUTLINED_FUNCTION_86();
    v15 = OUTLINED_FUNCTION_58();
    sub_232264094(v14, &qword_27DD91260, &qword_232417720);
    if (v15 == 1)
    {
      v107 = 0;
    }

    else
    {
      v16 = *(v0 + 96);
      OUTLINED_FUNCTION_86();
      if (OUTLINED_FUNCTION_58() == 1)
      {
        sub_232264094(*(v0 + 96), &qword_27DD91260, &qword_232417720);
        v17 = 0.0;
      }

      else
      {
        sub_232400F08();
        v17 = v18;
        OUTLINED_FUNCTION_29(v2);
        v20 = *(v19 + 8);
        v21 = OUTLINED_FUNCTION_60();
        v22(v21);
      }

      v107 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    v23 = *(v0 + 88);
    v24 = *(v0 + 16);
    sub_232400F48();
    v105 = sub_232401168();

    sub_232400FE8();
    v25 = sub_232400FD8();
    v26 = OUTLINED_FUNCTION_39();
    v27 = *(v0 + 88);
    if (v26 == 1)
    {
      sub_232264094(*(v0 + 88), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v28 = *(v0 + 88);
      sub_232400FB8();
      OUTLINED_FUNCTION_1_0();
      v30 = *(v29 + 8);
      v31 = OUTLINED_FUNCTION_57();
      v32(v31);
      if (v27)
      {
        v103 = OUTLINED_FUNCTION_76();

        goto LABEL_21;
      }
    }

    v103 = 0;
LABEL_21:
    v33 = *(v0 + 80);
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v34 = OUTLINED_FUNCTION_39();
    v35 = *(v0 + 80);
    if (v34 == 1)
    {
      sub_232264094(*(v0 + 80), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v36 = *(v0 + 80);
      sub_232400FA8();
      OUTLINED_FUNCTION_1_0();
      v38 = *(v37 + 8);
      v39 = OUTLINED_FUNCTION_57();
      v40(v39);
      if (v35)
      {
        v101 = OUTLINED_FUNCTION_76();

        goto LABEL_26;
      }
    }

    v101 = 0;
LABEL_26:
    v41 = *(v0 + 72);
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v42 = OUTLINED_FUNCTION_39();
    v43 = *(v0 + 72);
    if (v42 == 1)
    {
      sub_232264094(*(v0 + 72), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v44 = *(v0 + 72);
      sub_232400F78();
      OUTLINED_FUNCTION_1_0();
      v46 = *(v45 + 8);
      v47 = OUTLINED_FUNCTION_57();
      v48(v47);
      if (v43)
      {
        v49 = OUTLINED_FUNCTION_76();

        goto LABEL_31;
      }
    }

    v49 = 0;
LABEL_31:
    v50 = *(v0 + 64);
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v51 = OUTLINED_FUNCTION_39();
    v52 = *(v0 + 64);
    if (v51 == 1)
    {
      sub_232264094(*(v0 + 64), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v53 = *(v0 + 64);
      sub_232400F88();
      OUTLINED_FUNCTION_1_0();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_57();
      v57(v56);
      if (v52)
      {
        v58 = OUTLINED_FUNCTION_76();

        goto LABEL_36;
      }
    }

    v58 = 0;
LABEL_36:
    v59 = *(v0 + 56);
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v60 = OUTLINED_FUNCTION_39();
    v61 = *(v0 + 56);
    if (v60 == 1)
    {
      sub_232264094(*(v0 + 56), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v62 = *(v0 + 56);
      sub_232400F98();
      OUTLINED_FUNCTION_1_0();
      v64 = *(v63 + 8);
      v65 = OUTLINED_FUNCTION_57();
      v66(v65);
      if (v61)
      {
        v67 = OUTLINED_FUNCTION_76();

        goto LABEL_41;
      }
    }

    v67 = 0;
LABEL_41:
    v68 = *(v0 + 48);
    OUTLINED_FUNCTION_54_0();
    sub_232400FE8();
    v69 = OUTLINED_FUNCTION_39();
    v70 = *(v0 + 48);
    if (v69 == 1)
    {
      sub_232264094(*(v0 + 48), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v71 = *(v0 + 48);
      sub_232400F58();
      OUTLINED_FUNCTION_1_0();
      v73 = *(v72 + 8);
      v74 = OUTLINED_FUNCTION_57();
      v75(v74);
      if (v70)
      {
        sub_232401168();
        OUTLINED_FUNCTION_71();

        goto LABEL_46;
      }
    }

    v70 = 0;
LABEL_46:
    v76 = *(v0 + 40);
    v77 = *(v0 + 16);
    sub_232400FE8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v25);
    v79 = *(v0 + 40);
    if (EnumTagSinglePayload == 1)
    {
      sub_232264094(*(v0 + 40), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v80 = *(v0 + 40);
      sub_232400F68();
      OUTLINED_FUNCTION_1_0();
      (*(v81 + 8))(v79, v25);
      if (v79)
      {
        v82 = sub_232401168();

        goto LABEL_51;
      }
    }

    v82 = 0;
LABEL_51:
    v83 = *(v0 + 32);
    v84 = *(v0 + 16);
    sub_232400FE8();
    v85 = __swift_getEnumTagSinglePayload(v83, 1, v25);
    v86 = *(v0 + 32);
    if (v85 == 1)
    {
      sub_232264094(*(v0 + 32), &qword_27DD91258, &qword_232417718);
    }

    else
    {
      v87 = *(v0 + 32);
      sub_232400FC8();
      OUTLINED_FUNCTION_1_0();
      (*(v88 + 8))(v86, v25);
      if (v86)
      {
        v89 = sub_232401168();

LABEL_56:
        v99 = *(v0 + 24);
        v100 = *(v0 + 16);
        v98 = [objc_opt_self() placemarkWithLatitudeDegrees:v109 longitudeDegrees:v107 name:v105 thoroughfare:v103 subthoroughFare:0 locality:v101 subLocality:v49 administrativeArea:v58 subAdministrativeArea:v67 postalCode:v70 countryCode:v82 country:v89 inlandWater:0 ocean:0 areasOfInterest:0];
        *(v0 + 224) = v98;

        *(v0 + 232) = *(v99 + 144);
        sub_232252D0C(0, &qword_27DD91268, 0x277D3A3D8);

        v90 = v98;
        v91 = sub_232400FF8();
        v93 = sub_2322658E0(v91, v92);
        v94 = sub_232262EC8(v90, v93, 0);
        *(v0 + 240) = [objc_allocWithZone(MEMORY[0x277D3A4A8]) initWithLocation:v94 score:1.0 sentimentScore:0.0];

        v95 = sub_232401008();
        *(v0 + 248) = sub_232277FB0(v95, v96);
        v97 = OUTLINED_FUNCTION_9();

        return MEMORY[0x2822009F8](v97);
      }
    }

    v89 = 0;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_46();
  v102 = *(v0 + 56);
  v104 = *(v0 + 48);
  v106 = *(v0 + 40);
  v108 = *(v0 + 32);

  OUTLINED_FUNCTION_15();

  return v7();
}

uint64_t sub_232262D34()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 240);
  v2 = *(v0 + 24);
  sub_23225AAF8(v1, *(v0 + 216), *(v0 + 248));

  v3 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_232262DB4()
{
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_46();
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_15();

  return v2();
}

id sub_232262EC8(void *a1, unsigned __int16 a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPlacemark:a1 category:a2 mostRelevantRecord:a3];

  return v5;
}

uint64_t TextUnderstandingImporter.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TextUnderstandingImporter.__deallocating_deinit()
{
  TextUnderstandingImporter.deinit();

  return MEMORY[0x282200960](v0);
}

id sub_232262FA0(void *a1, void *a2, void *a3, void *a4)
{
  v9 = [v4 initWithStorage:a1 topicStoreForNamedEntityMapping:a2 lazyContactStoreForMapsFeedback:a3 trialWrapper:a4];

  return v9;
}

id sub_232263014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_232401168();

  if (a5)
  {
    v9 = sub_232401168();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_232401168();

  v11 = [v5 initWithName:v8 category:a3 dynamicCategory:v9 language:v10];

  return v11;
}

uint64_t sub_2322630E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2322631D8;

  return v7(a1);
}

uint64_t sub_2322631D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_2322632BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_232263308(a1, a2);
  sub_232263420(&unk_284753DA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_232263308(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2324011F8())
  {
    result = sub_232263504(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232401428();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_232401468();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232263420(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_232263574(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_232263504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912E0, &qword_2324178B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_232263574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD912E0, &qword_2324178B8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_232263668(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2322636B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_63(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

unint64_t sub_2322636D4(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_232263718(void *a1)
{
  v1 = [a1 language];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(deletion:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v8 = *(v0 + 256) + **(v0 + 256);
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10(v3);

  return v6(v5);
}

uint64_t sub_2322638D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(document:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v8 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10(v3);

  return v6(v5);
}

uint64_t dispatch thunk of TextUnderstandingImporter.documentBatchCompleted()()
{
  OUTLINED_FUNCTION_22();
  v1 = *(*v0 + 272);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_36(v3);
  *v4 = v5;
  v4[1] = sub_232264398;

  return v7();
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(namedEntity:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v8 = *(v0 + 288) + **(v0 + 288);
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10(v3);

  return v6(v5);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(topic:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v8 = *(v0 + 296) + **(v0 + 296);
  v1 = *(*(v0 + 296) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10(v3);

  return v6(v5);
}

uint64_t dispatch thunk of TextUnderstandingImporter.handle(location:)()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();
  v8 = *(v0 + 304) + **(v0 + 304);
  v1 = *(*(v0 + 304) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10(v3);

  return v6(v5);
}

uint64_t sub_232263EF8()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225E16C(v3, v4, v5, v6);
}

uint64_t sub_232263F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232264000()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_25(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_48(v4);

  return v7(v6);
}

uint64_t sub_232264094(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_29(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2322640F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_23225356C(&v12, v10 + 40 * a1 + 32);
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

uint64_t sub_2322641D8()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225D898(v3, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2322642B0()
{
  OUTLINED_FUNCTION_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_25(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_23225CEF4(v3, v4, v5, v6);
}

uint64_t sub_232264348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return 50000000000000000;
}

uint64_t OUTLINED_FUNCTION_15()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_49()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
}

uint64_t OUTLINED_FUNCTION_50@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_51(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_52()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_53()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];

  return swift_unknownObjectRelease();
}

BOOL OUTLINED_FUNCTION_56(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_63(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{
  v1 = v0[24];
  v3 = v0[13];
  result = v0[14];
  v4 = v0[12];
  return result;
}

void OUTLINED_FUNCTION_68()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

id OUTLINED_FUNCTION_72()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 184);

  return v3;
}

uint64_t OUTLINED_FUNCTION_73()
{
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_232401168();
}

uint64_t OUTLINED_FUNCTION_78()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[3];
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_86()
{
  v2 = *(v0 + 16);

  return MEMORY[0x28217C708]();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{
  *(v1 + 72) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_88()
{
}

id sub_23226487C()
{
  type metadata accessor for BackgroundTextConsumer();
  result = sub_2322648A0();
  qword_2814C8DB0 = result;
  return result;
}

id sub_2322648A0()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for BackgroundTextConsumer());
  return sub_232264948(v0, v1, v2);
}

id sub_232264948(void *a1, void *a2, void *a3)
{
  v6 = sub_232400D88();
  v7 = OUTLINED_FUNCTION_40(v6);
  v40 = v8;
  v41 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232400D98();
  v13 = OUTLINED_FUNCTION_40(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(PPSpotlightWritebackDissector);
  v44 = a3;
  v43 = a1;
  v42 = a2;
  v21 = [v20 init];
  v22 = [objc_opt_self() sharedInstance];
  v23 = [objc_opt_self() sharedInstance];
  v24 = sub_2322780EC(a1, a2, a3, v21, v22, v23);
  (*(v15 + 104))(v19, *MEMORY[0x277D3A230], v12);
  sub_2322653F0(&qword_2814C7F98, MEMORY[0x277D3A240]);
  v25 = sub_232400DA8();
  (*(v15 + 8))(v19, v12);
  if (v25 & 1) != 0 && (v26 = v39, v27 = v40, v28 = v41, (*(v40 + 104))(v39, *MEMORY[0x277D3A218], v41), sub_2322653F0(&qword_2814C7FA0, MEMORY[0x277D3A228]), v29 = sub_232400DA8(), (*(v27 + 8))(v26, v28), (v29))
  {
    if (qword_2814C7F68 != -1)
    {
      swift_once();
    }

    v30 = sub_232401128();
    __swift_project_value_buffer(v30, qword_2814C8DC8);
    v31 = sub_232401108();
    v32 = sub_232401368();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23224A000, v31, v32, "BackgroundTextConsumer: TextUnderstanding flags enabled, not registering for Mail, News, Notes, Safari, or TPA.", v33, 2u);
      MEMORY[0x2383841F0](v33, -1, -1);
    }
  }

  else
  {
    v34 = [objc_opt_self() defaultCoordinator];
    OUTLINED_FUNCTION_1_1(v34, sel_registerNewsConsumer_levelOfService_);

    v35 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v35, sel_registerNotesConsumer_levelOfService_);

    v36 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v36, sel_registerSafariConsumer_levelOfService_);

    v37 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v37, sel_registerThirdPartyAppConsumer_levelOfService_);

    v31 = OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_1(v31, sel_registerMailConsumer_levelOfService_);
  }

  return v24;
}

uint64_t sub_232264DB4(void *a1)
{
  v2 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  v4 = [v3 contentProtection];
  v5 = [v3 htmlParser];
  v6 = v2;
  v7 = sub_232276E2C();

  return v7;
}

uint64_t sub_232265034(void *a1)
{
  v2 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  *(swift_allocObject() + 16) = a1;
  v3 = [a1 contentProtection];
  v4 = v2;
  v5 = sub_2322751FC();

  return v5;
}

uint64_t sub_232265190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = [a1 content];
  OUTLINED_FUNCTION_3_1();
  *(swift_allocObject() + 16) = a1;
  v8 = [a1 contentProtection];
  v9 = v7;
  v10 = a5();

  return v10;
}

id sub_232265394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundTextConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2322653F0(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_4_1()
{

  return [v0 (v1 + 1596)];
}

uint64_t sub_232265450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v7 = v4 && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v9 = a1 == OUTLINED_FUNCTION_2_1() && a2 == 0xEA0000000000746ELL;
        if (v9 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
        {

          return 4;
        }

        else
        {
          v10 = a1 == 0x616964656DLL && a2 == 0xE500000000000000;
          if (v10 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
          {

            return 6;
          }

          else
          {
            v11 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
            {

              return 7;
            }

            else
            {
              v12 = a1 == 0x6441746565727473 && a2 == 0xED00007373657264;
              if (v12 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
              {

                return 8;
              }

              else
              {
                v13 = a1 == 2037672291 && a2 == 0xE400000000000000;
                if (v13 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                {

                  return 9;
                }

                else
                {
                  v14 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
                  if (v14 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                  {

                    return 10;
                  }

                  else
                  {
                    v15 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                    if (v15 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                    {

                      return 11;
                    }

                    else
                    {
                      v16 = a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365;
                      if (v16 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                      {

                        return 12;
                      }

                      else
                      {
                        v17 = a1 == 0xD000000000000011 && 0x8000000232418EF0 == a2;
                        if (v17 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                        {

                          return 13;
                        }

                        else
                        {
                          v18 = a1 == 0x746954746E657665 && a2 == 0xEA0000000000656CLL;
                          if (v18 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                          {

                            return 14;
                          }

                          else
                          {
                            v19 = a1 == 0x65547374726F7073 && a2 == 0xEA00000000006D61;
                            if (v19 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                            {

                              return 15;
                            }

                            else
                            {
                              v20 = a1 == 0xD000000000000013 && 0x8000000232418F10 == a2;
                              if (v20 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                              {

                                return 16;
                              }

                              else
                              {
                                v21 = a1 == 0x6E6169636973756DLL && a2 == 0xE800000000000000;
                                if (v21 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                                {

                                  return 17;
                                }

                                else
                                {
                                  v22 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
                                  if (v22 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                                  {

                                    return 18;
                                  }

                                  else
                                  {
                                    v23 = a1 == 0x69636974696C6F70 && a2 == 0xEA00000000006E61;
                                    if (v23 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
                                    {

                                      return 20;
                                    }

                                    else if (a1 == 0x69736976656C6574 && a2 == 0xEE00776F68536E6FLL)
                                    {

                                      return 21;
                                    }

                                    else
                                    {
                                      v25 = OUTLINED_FUNCTION_0_3();

                                      if (v25)
                                      {
                                        return 21;
                                      }

                                      else
                                      {
                                        return 0;
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

uint64_t sub_2322658E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
    {

      return 7;
    }

    else
    {
      OUTLINED_FUNCTION_1_2();
      v8 = v4 && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
      {

        return 1;
      }

      else
      {
        v10 = a1 == OUTLINED_FUNCTION_2_1() && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
        {

          return 2;
        }

        else
        {
          v11 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
          if (v11 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
          {

            return 3;
          }

          else
          {
            v12 = a1 == 0xD000000000000011 && 0x8000000232418EF0 == a2;
            if (v12 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
            {

              return 4;
            }

            else
            {
              v13 = a1 == 1701670760 && a2 == 0xE400000000000000;
              if (v13 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
              {

                return 5;
              }

              else if (a1 == 1802661751 && a2 == 0xE400000000000000)
              {

                return 6;
              }

              else
              {
                v15 = OUTLINED_FUNCTION_0_3();

                if (v15)
                {
                  return 6;
                }

                else
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232265B1C()
{
  v0 = sub_232400D98();
  v1 = OUTLINED_FUNCTION_40(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67();
  v8 = v7 - v6;
  v9 = sub_232400D88();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_68_0();
  v28 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = *MEMORY[0x277D3A208];
  v27 = *(v12 + 104);
  v27(&v27 - v18, v20, v9);
  sub_23226E3A0(&qword_2814C7FA0, MEMORY[0x277D3A228]);
  v21 = sub_232400DA8();
  v22 = *(v12 + 8);
  v22(v19, v9);
  if (v21 & 1) != 0 || ((*(v3 + 104))(v8, *MEMORY[0x277D3A230], v0), sub_23226E3A0(&qword_2814C7F98, MEMORY[0x277D3A240]), v23 = sub_232400DA8(), (*(v3 + 8))(v8, v0), (v23))
  {
    v24 = 1;
  }

  else
  {
    v25 = v28;
    v27(v28, *MEMORY[0x277D3A218], v9);
    v24 = sub_232400DA8();
    v22(v25, v9);
  }

  return v24 & 1;
}

uint64_t sub_232265DCC()
{
  sub_232400D38();
  result = sub_232400D28();
  qword_2814C8D40 = result;
  return result;
}

uint64_t static TextUnderstandingObservationSystem.start()()
{
  v2 = v0;
  v3 = sub_232401128();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_68_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_232265B1C();
  if (v15)
  {
    if (qword_2814C7830 != -1)
    {
      v15 = OUTLINED_FUNCTION_48_0();
    }

    OUTLINED_FUNCTION_28_0(v15, qword_2814C8D28);
    (*(v6 + 16))(v14);
    v16 = sub_232401108();
    v17 = sub_232401368();
    if (OUTLINED_FUNCTION_59_0(v17))
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_58_0(&dword_23224A000, v18, v19, "PPTextUnderstandingObservationSystem: starting");
      OUTLINED_FUNCTION_52_0();
    }

    (*(v6 + 8))(v14, v3);
    if (qword_2814C7838 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for TextUnderstandingObserver();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();

    sub_232266BE4(v24);
    qword_2814C8D20 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    v26 = sub_232266254(0xD000000000000037, 0x8000000232418F30, &unk_2324178F8, v25);

    qword_2814C8D50 = v26;

    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    v28 = sub_232266254(0xD000000000000038, 0x8000000232418F70, &unk_232417908, v27);

    qword_2814C8D48 = v28;
  }

  else
  {
    if (qword_2814C7830 != -1)
    {
      v15 = OUTLINED_FUNCTION_48_0();
    }

    OUTLINED_FUNCTION_28_0(v15, qword_2814C8D28);
    (*(v6 + 16))(v11);
    v30 = sub_232401108();
    v31 = sub_232401368();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v32);
      _os_log_impl(&dword_23224A000, v30, v31, "PPTextUnderstandingObservationSystem: disabled", v1, 2u);
      OUTLINED_FUNCTION_30();
    }

    return (*(v6 + 8))(v11, v3);
  }
}

uint64_t sub_232266188()
{
  OUTLINED_FUNCTION_12();
  v1 = qword_2814C8D20;
  *(v0 + 16) = qword_2814C8D20;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_63_0(v2);

    return sub_232266C50();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_232266254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_232401378();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67();
  v17 = v16 - v15;
  v18 = sub_232401168();
  v19 = [objc_opt_self() defaultCenter];
  sub_232401388();

  OUTLINED_FUNCTION_84_0();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v20[4] = a2;
  OUTLINED_FUNCTION_84_0();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = v5;
  sub_23226E3A0(&unk_2814C77A0, MEMORY[0x277CC9DB0]);

  v22 = sub_232401138();

  (*(v12 + 8))(v17, v9);
  return v22;
}

uint64_t sub_23226646C()
{
  OUTLINED_FUNCTION_12();
  v1 = qword_2814C8D20;
  *(v0 + 16) = qword_2814C8D20;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_63_0(v2);

    return sub_2322699A8();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return v4();
  }
}

uint64_t sub_232266538()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_19();
  *v5 = v4;

  OUTLINED_FUNCTION_15();

  return v6();
}

uint64_t sub_23226665C(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_232401128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  if (*a1 == 1)
  {
    if (qword_2814C7830 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_2814C8D28);
    (*(v8 + 16))(v14, v15, v7);

    v16 = sub_232401108();
    v17 = sub_232401368();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_23224ED04(a3, a4, &v29);
      _os_log_impl(&dword_23224A000, v16, v17, "PPTextUnderstandingObserver: %s publisher finished", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x2383841F0](v19, -1, -1);
      MEMORY[0x2383841F0](v18, -1, -1);
    }

    return (*(v8 + 8))(v14, v7);
  }

  else
  {
    if (qword_2814C7830 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_2814C8D28);
    (*(v8 + 16))(v12, v21, v7);

    v22 = sub_232401108();
    v23 = sub_232401348();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_23224ED04(a3, a4, &v29);
      *(v24 + 12) = 2112;
      swift_allocError();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v27;
      *v25 = v27;
      _os_log_impl(&dword_23224A000, v22, v23, "PPTextUnderstandingObserver: %s publisher failed: %@", v24, 0x16u);
      sub_232257C68(v25, &qword_27DD91290, &qword_232417860);
      MEMORY[0x2383841F0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x2383841F0](v26, -1, -1);
      MEMORY[0x2383841F0](v24, -1, -1);
    }

    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_232266A20()
{
  if (qword_2814C7838 != -1)
  {
    swift_once();
  }

  return sub_232400D18();
}

id TextUnderstandingObservationSystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextUnderstandingObservationSystem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextUnderstandingObservationSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232266B68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_232401128();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_232401118();
}

uint64_t sub_232266BE4(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_232400C48();
  sub_232400C48();
  *(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_232266C50()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_232400C98();
  v1[10] = v2;
  OUTLINED_FUNCTION_2_0(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v6 = sub_232401128();
  v1[14] = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_61();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10);
}