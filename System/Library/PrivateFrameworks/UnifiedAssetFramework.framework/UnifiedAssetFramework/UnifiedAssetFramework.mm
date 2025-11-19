id UAFGetLogCategory(void **a1)
{
  if (UAFGetLogCategory_once != -1)
  {
    dispatch_once(&UAFGetLogCategory_once, &__block_literal_global_16);
  }

  v2 = *a1;

  return v2;
}

void __UAFGetLogCategory_block_invoke()
{
  v0 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "UAFAssetUtilities");
  v1 = UAFLogContextAssetUtilities;
  UAFLogContextAssetUtilities = v0;

  v2 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "Configuration");
  v3 = UAFLogContextConfiguration;
  UAFLogContextConfiguration = v2;

  v4 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "Client");
  v5 = UAFLogContextClient;
  UAFLogContextClient = v4;

  v6 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "Storage");
  v7 = UAFLogContextStorage;
  UAFLogContextStorage = v6;

  v8 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "XPCActivity");
  v9 = UAFLogContextXPCActivity;
  UAFLogContextXPCActivity = v8;

  v10 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "XPCService");
  v11 = UAFLogContextXPCService;
  UAFLogContextXPCService = v10;

  v12 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "UAFInstrumentation");
  v13 = UAFLogContextInstrumentation;
  UAFLogContextInstrumentation = v12;

  v14 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "UAFStagingLogManager");
  v15 = UAFLogContextStagingLogManager;
  UAFLogContextStagingLogManager = v14;

  v16 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "Subscription");
  v17 = UAFLogContextSubscription;
  UAFLogContextSubscription = v16;

  v18 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "LargeMessage");
  v19 = UAFLogContextLargeMessage;
  UAFLogContextLargeMessage = v18;

  v20 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "MAConfig");
  v21 = UAFLogContextMAConfig;
  UAFLogContextMAConfig = v20;

  v22 = os_log_create([@"com.apple.UnifiedAssetFramework" UTF8String], "UAFTool");
  v23 = UAFLogContextUAFTool;
  UAFLogContextUAFTool = v22;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BCF321E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BCF324AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
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
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_1E7FFD1D8;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BCF32A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF33978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF33EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF343F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BCF3460C()
{
  v0 = sub_1BCFA7D48();
  __swift_allocate_value_buffer(v0, qword_1EBD2B7D0);
  __swift_project_value_buffer(v0, qword_1EBD2B7D0);
  return sub_1BCFA7D38();
}

UAFAppleIntelligenceReporting __swiftcall UAFAppleIntelligenceReporting.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for UAFAppleIntelligenceReporting()
{
  result = qword_1EBD2B7F0;
  if (!qword_1EBD2B7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD2B7F0);
  }

  return result;
}

uint64_t sub_1BCF34828()
{
  type metadata accessor for UAFAIREventReporter();
  v0 = swift_allocObject();
  sub_1BCFA7CF8();
  result = sub_1BCFA7CE8();
  *(v0 + 16) = result;
  qword_1EBD2B800 = v0;
  return result;
}

uint64_t sub_1BCF349CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
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

uint64_t sub_1BCF34A70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BCF34B3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1BCF37610(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BCF34B3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BCF34C48(a5, a6);
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
    result = sub_1BCFA7E18();
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

uint64_t sub_1BCF34C48(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BCF34C94(a1, a2);
  sub_1BCF34DC4(&unk_1F3B69E68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BCF34C94(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BCF34EB0(v5, 0);
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

  result = sub_1BCFA7E18();
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
        v10 = sub_1BCFA7D88();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BCF34EB0(v10, 0);
        result = sub_1BCFA7E08();
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

uint64_t sub_1BCF34DC4(uint64_t result)
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

  result = sub_1BCF34F24(result, v12, 1, v3);
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

void *sub_1BCF34EB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B568, &qword_1BCFAC400);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BCF34F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B568, &qword_1BCFAC400);
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

unint64_t sub_1BCF35018(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BCFA7DD8();

  return sub_1BCF3505C(a1, v5);
}

unint64_t sub_1BCF3505C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BCF37774(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB330B0](v9, a1);
      sub_1BCF375BC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BCF35124(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BCFA7E98();
  sub_1BCFA7D78();
  v6 = sub_1BCFA7EA8();

  return sub_1BCF3519C(a1, a2, v6);
}

unint64_t sub_1BCF3519C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BCFA7E88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BCF35254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B570, &qword_1BCFAC408);
    v3 = sub_1BCFA7E78();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BCF35124(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BCF35368(uint64_t a1)
{
  v2 = sub_1BCFA7C98();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  (MEMORY[0x1EEE9AC00])();
  v55 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BCFA7CC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x1EEE9AC00])();
  v56 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = v46 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v46[3] = v46 - v14;
  v47 = sub_1BCFA7BE8();
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v16 = sub_1BCFA7C88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD2B7C8 != -1)
  {
    swift_once();
  }

  v21 = sub_1BCFA7D48();
  v22 = __swift_project_value_buffer(v21, qword_1EBD2B7D0);
  v23 = *(v17 + 16);
  v51 = a1;
  v49 = v23;
  v23(v20, a1, v16);
  v54 = v22;
  v24 = sub_1BCFA7D28();
  v25 = sub_1BCFA7DA8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46[2] = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v46[1] = v6;
    v29 = v28;
    v57 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1BCF34A70(0xD00000000000001ELL, 0x80000001BCFAC8C0, &v57);
    *(v27 + 12) = 2080;
    sub_1BCFA7C58();
    v30 = sub_1BCFA7D68();
    v32 = v31;
    (*(v17 + 8))(v20, v16);
    v33 = sub_1BCF34A70(v30, v32, &v57);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_1BCF2C000, v24, v25, "[%s] Emitting event: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB33EA0](v29, -1, -1);
    MEMORY[0x1BFB33EA0](v27, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v55;
  if (qword_1EBD2B7E8 != -1)
  {
    swift_once();
  }

  if (*(qword_1EBD2B800 + 16))
  {
    v49(v34, v51, v16);
    v36 = v52;
    v35 = v53;
    (*(v52 + 104))(v34, *MEMORY[0x1E698C380], v53);

    sub_1BCFA7CD8();
    (*(v36 + 8))(v34, v35);
    v41 = sub_1BCFA7D28();
    v42 = sub_1BCFA7DA8();
    if (os_log_type_enabled(v41, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1BCF34A70(0xD00000000000001ELL, 0x80000001BCFAC8C0, &v57);
      _os_log_impl(&dword_1BCF2C000, v41, v42, "[%s] Successfully emitted event", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1BFB33EA0](v45, -1, -1);
      MEMORY[0x1BFB33EA0](v44, -1, -1);
    }
  }

  else
  {
    v37 = sub_1BCFA7D28();
    v38 = sub_1BCFA7DB8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1BCF34A70(0xD00000000000001ELL, 0x80000001BCFAC8C0, &v57);
      _os_log_impl(&dword_1BCF2C000, v37, v38, "[%s] No event reporter", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1BFB33EA0](v40, -1, -1);
      MEMORY[0x1BFB33EA0](v39, -1, -1);
    }
  }
}

void sub_1BCF35C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v166 = a3;
  v162 = a2;
  v4 = sub_1BCFA7D18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v147 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_1BCFA7C28();
  v144 = *(v145 - 8);
  v7 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = sub_1BCFA7C38();
  v151 = *(v142 - 8);
  v9 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v124[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B530, &qword_1BCFAC3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v154 = &v124[-v13];
  v153 = sub_1BCFA7BB8();
  v152 = *(v153 - 8);
  v14 = *(v152 + 64);
  v15 = MEMORY[0x1EEE9AC00](v153);
  v141 = &v124[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v124[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B538, &qword_1BCFAC3D8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v155 = &v124[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B540, &qword_1BCFAC3E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1BCFA7BE8();
  v158 = *(v23 - 8);
  v159 = v23;
  v24 = *(v158 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v140 = &v124[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v124[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B548, &qword_1BCFAC3E8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v149 = &v124[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v124[-v33];
  v157 = sub_1BCFA7C68();
  v156 = *(v157 - 8);
  v35 = *(v156 + 64);
  v36 = MEMORY[0x1EEE9AC00](v157);
  v148 = &v124[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v124[-v38];
  v40 = sub_1BCFA7C88();
  v160 = *(v40 - 8);
  v161 = v40;
  v41 = *(v160 + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v139 = &v124[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v124[-v44];
  v46 = sub_1BCFA7CB8();
  v47 = *(v46 - 8);
  v164 = v46;
  v165 = v47;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v163 = &v124[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EBD2B7C8 != -1)
  {
    swift_once();
  }

  v50 = sub_1BCFA7D48();
  __swift_project_value_buffer(v50, qword_1EBD2B7D0);
  v51 = sub_1BCFA7D28();
  v52 = sub_1BCFA7DC8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v166;
    _os_log_impl(&dword_1BCF2C000, v51, v52, "Recording event of type: %ld", v53, 0xCu);
    MEMORY[0x1BFB33EA0](v53, -1, -1);
  }

  v167[0] = 0xD000000000000010;
  v167[1] = 0x80000001BCFAC820;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v54 = sub_1BCF35018(&v168), (v55 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_19;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v54, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v64 = sub_1BCFA7D28();
    v65 = sub_1BCFA7DC8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1BCF2C000, v64, v65, "Not emitting event: missing required parameter", v66, 2u);
      MEMORY[0x1BFB33EA0](v66, -1, -1);
    }

    return;
  }

  v56 = v167[1];
  v137 = v167[0];
  strcpy(v167, "subscriberName");
  HIBYTE(v167[1]) = -18;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v138 = v56, v57 = sub_1BCF35018(&v168), (v58 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_23;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v57, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_19;
  }

  v135 = v167[0];
  v136 = v167[1];
  strcpy(v167, "userIdentifier");
  HIBYTE(v167[1]) = -18;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v59 = sub_1BCF35018(&v168), (v60 & 1) == 0))
  {
    sub_1BCF375BC(&v168);

    goto LABEL_19;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v59, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v126 = LODWORD(v167[0]);
  v167[0] = 0xD000000000000011;
  v167[1] = 0x80000001BCFAC840;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v61 = sub_1BCF35018(&v168), (v62 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_27;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v61, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v132 = 0;
    v63 = 0xE000000000000000;
    goto LABEL_28;
  }

  v63 = v167[1];
  v132 = v167[0];
LABEL_28:
  v131 = v63;
  v169 = 1701080941;
  v170 = 0xE400000000000000;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v67 = sub_1BCF35018(&v168), (v68 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_33;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v67, &v169);
  sub_1BCF375BC(&v168);
  if (!swift_dynamicCast())
  {
LABEL_33:
    v69 = 3;
    goto LABEL_34;
  }

  v69 = LODWORD(v167[0]);
LABEL_34:
  v130 = v69;
  v167[0] = 0xD000000000000012;
  v167[1] = 0x80000001BCFAC860;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v70 = sub_1BCF35018(&v168), (v71 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_39;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v70, &v169);
  sub_1BCF375BC(&v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B550, &qword_1BCFAC3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v72 = v167[0];
LABEL_40:
  v134 = v72;
  v167[0] = 0xD000000000000013;
  v167[1] = 0x80000001BCFAC880;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v73 = sub_1BCF35018(&v168), (v74 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_45;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v73, &v169);
  sub_1BCF375BC(&v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B550, &qword_1BCFAC3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v75 = v167[0];
LABEL_46:
  v133 = v75;
  v167[0] = 0x656C61636F6CLL;
  v167[1] = 0xE600000000000000;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v76 = sub_1BCF35018(&v168), (v77 & 1) == 0))
  {
    sub_1BCF375BC(&v168);
    goto LABEL_51;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v76, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v129 = 0;
    v78 = 0xE000000000000000;
    goto LABEL_52;
  }

  v78 = v167[1];
  v129 = v167[0];
LABEL_52:
  v128 = v78;
  strcpy(v167, "countryCode");
  HIDWORD(v167[1]) = -352321536;
  sub_1BCFA7DF8();
  if (*(a1 + 16) && (v79 = sub_1BCF35018(&v168), (v80 & 1) != 0))
  {
    sub_1BCF37610(*(a1 + 56) + 32 * v79, &v169);
    sub_1BCF375BC(&v168);
    if (swift_dynamicCast())
    {
      v127 = v167[0];
      goto LABEL_58;
    }
  }

  else
  {
    sub_1BCF375BC(&v168);
  }

  v127 = 0;
LABEL_58:
  v169 = 0xD000000000000012;
  v170 = 0x80000001BCFAC8A0;
  sub_1BCFA7DF8();
  if (*(a1 + 16) && (v81 = sub_1BCF35018(&v168), (v82 & 1) != 0))
  {
    sub_1BCF37610(*(a1 + 56) + 32 * v81, &v169);
    sub_1BCF375BC(&v168);
    v83 = swift_dynamicCast();
    v84 = v163;
    if (v83)
    {
      v85 = v167[0];
    }

    else
    {
      v85 = 1;
    }

    v125 = v85;
  }

  else
  {
    sub_1BCF375BC(&v168);
    v125 = 1;
    v84 = v163;
  }

  sub_1BCF35254(MEMORY[0x1E69E7CC0]);
  LOBYTE(v168) = 0;
  sub_1BCFA7CA8();
  if (v166 != 1)
  {
    v86 = v162;
    if (!v166)
    {
      strcpy(v167, "downloadStatus");
      HIBYTE(v167[1]) = -18;
      sub_1BCFA7DF8();
      if (*(a1 + 16))
      {
        v87 = sub_1BCF35018(&v168);
        if (v88)
        {
          sub_1BCF37610(*(a1 + 56) + 32 * v87, &v169);
          sub_1BCF375BC(&v168);
          if (swift_dynamicCast())
          {
            LODWORD(v154) = v167[0];
            (*(v156 + 104))(v39, *MEMORY[0x1E698C378], v157);
            v90 = v164;
            v89 = v165;
            (*(v165 + 16))(v34, v84, v164);
            (*(v89 + 56))(v34, 0, 1, v90);
            v91 = *(v86 + 16);
            if (v91)
            {
              v168 = MEMORY[0x1E69E7CC0];
              sub_1BCFA7E48();
              v166 = sub_1BCFA7BD8();
              v92 = (v86 + 32);
              do
              {
                v93 = *v92++;
                v94 = v93;
                sub_1BCFA7BC8();
                sub_1BCFA7E28();
                v95 = *(v168 + 16);
                sub_1BCFA7E58();
                sub_1BCFA7E68();
                sub_1BCFA7E38();
                --v91;
              }

              while (v91);
              v84 = v163;
            }

            sub_1BCFA7C08();
            sub_1BCFA7BF8();
            sub_1BCFA7C18();
            (*(v158 + 104))(v28, *MEMORY[0x1E698C350], v159);

            LOBYTE(v168) = 0;
            sub_1BCFA7C78();
            sub_1BCF35368(v45);

            (*(v160 + 8))(v45, v161);
            goto LABEL_86;
          }

          goto LABEL_87;
        }
      }

LABEL_85:

      sub_1BCF375BC(&v168);
LABEL_86:
      (*(v165 + 8))(v84, v164);
      return;
    }

LABEL_87:
    (*(v165 + 8))(v84, v164);

    return;
  }

  strcpy(v167, "trigger");
  v167[1] = 0xE700000000000000;
  sub_1BCFA7DF8();
  if (!*(a1 + 16))
  {
    goto LABEL_85;
  }

  v96 = sub_1BCF35018(&v168);
  if ((v97 & 1) == 0)
  {
    goto LABEL_85;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v96, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_87;
  }

  v98 = v167[0];
  v167[0] = 0x6E6F69746361;
  v167[1] = 0xE600000000000000;
  sub_1BCFA7DF8();
  if (!*(a1 + 16))
  {
    goto LABEL_85;
  }

  v99 = sub_1BCF35018(&v168);
  if ((v100 & 1) == 0)
  {
    goto LABEL_85;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v99, &v169);
  sub_1BCF375BC(&v168);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v165 + 8))(v163, v164);

    return;
  }

  v101 = v167[0];
  v167[0] = 0x6564496863746162;
  v167[1] = 0xEF7265696669746ELL;
  sub_1BCFA7DF8();
  if (!*(a1 + 16) || (v102 = sub_1BCF35018(&v168), (v103 & 1) == 0))
  {

    sub_1BCF375BC(&v168);
    (*(v165 + 8))(v163, v164);
    (*(v152 + 56))(v154, 1, 1, v153);
    goto LABEL_91;
  }

  sub_1BCF37610(*(a1 + 56) + 32 * v102, &v169);
  sub_1BCF375BC(&v168);
  v104 = v154;
  v105 = v153;
  v106 = swift_dynamicCast();
  v107 = v152;
  (*(v152 + 56))(v104, v106 ^ 1u, 1, v105);
  if ((*(v107 + 48))(v104, 1, v105) == 1)
  {
    (*(v165 + 8))(v163, v164);

LABEL_91:
    sub_1BCF37710(v154, &qword_1EBD2B530, &qword_1BCFAC3D0);
    return;
  }

  (*(v152 + 32))(v150, v154, v153);
  (*(v156 + 104))(v148, *MEMORY[0x1E698C378], v157);
  v109 = v164;
  v108 = v165;
  v110 = v149;
  (*(v165 + 16))(v149, v163, v164);
  (*(v108 + 56))(v110, 0, 1, v109);
  v111 = *(v162 + 16);
  if (v111)
  {
    v168 = MEMORY[0x1E69E7CC0];
    sub_1BCFA7E48();
    sub_1BCFA7BD8();
    v112 = (v162 + 32);
    do
    {
      v113 = *v112++;
      v114 = v113;
      sub_1BCFA7BC8();
      sub_1BCFA7E28();
      v115 = *(v168 + 16);
      sub_1BCFA7E58();
      sub_1BCFA7E68();
      sub_1BCFA7E38();
      --v111;
    }

    while (v111);
  }

  v116 = *(v151 + 104);
  v151 += 104;
  if ((v98 - 1) > 2)
  {
    v117 = MEMORY[0x1E698C370];
  }

  else
  {
    v117 = qword_1E7FFCF60[v98 - 1];
  }

  v116(v143, *v117, v142);
  v118 = MEMORY[0x1E698C368];
  if (v101 != 1)
  {
    v118 = MEMORY[0x1E698C360];
  }

  (*(v144 + 104))(v146, *v118, v145);
  v119 = v152;
  v120 = v150;
  v121 = v153;
  (*(v152 + 16))(v141, v150, v153);
  sub_1BCFA7D08();
  v122 = v140;
  sub_1BCFA7C48();
  (*(v158 + 104))(v122, *MEMORY[0x1E698C358], v159);

  LOBYTE(v168) = 0;
  v123 = v139;
  sub_1BCFA7C78();
  sub_1BCF35368(v123);

  (*(v160 + 8))(v123, v161);
  (*(v119 + 8))(v120, v121);
  (*(v165 + 8))(v163, v164);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BCF37610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1BCF376B8()
{
  result = qword_1EBD2B558;
  if (!qword_1EBD2B558)
  {
    sub_1BCFA7CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2B558);
  }

  return result;
}

uint64_t sub_1BCF37710(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
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

void sub_1BCF37FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _AFPreferencesDidChangeCallback(uint64_t a1, void *a2)
{
  [a2 _assistantPreferencesUpdate];

  return [a2 _assistantLanguageUpdate];
}

id getkAFPreferencesDidChangeDarwinNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr;
  v8 = getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr;
  if (!getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary();
    v6[3] = dlsym(v1, "kAFPreferencesDidChangeDarwinNotification");
    getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFLanguageCodeDidChangeDarwinNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr;
  v8 = getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr;
  if (!getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary();
    v6[3] = dlsym(v1, "AFLanguageCodeDidChangeDarwinNotification");
    getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFSiriXAssetDidChangeDarwinNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr;
  v8 = getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr;
  if (!getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary();
    v6[3] = dlsym(v1, "AFSiriXAssetDidChangeDarwinNotification");
    getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1BCF3ACD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF3B094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF3B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "kAFPreferencesDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FFD1F8;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = AssistantServicesLibraryCore_frameworkLibrary;
    if (AssistantServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFLanguageCodeDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFSiriXAssetDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAFSettingsConnectionClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  result = objc_getClass("AFSettingsConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSettingsConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(UAFConfiguration *)v3 isValidValue:v4 key:v5 kind:v6 required:v7 error:v8, v9];
  }

  return result;
}

void UAFRegisterXPCActivities()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9C50];
  _RegisterPostUpgradeUAFActivity(*MEMORY[0x1E69E9C50], 0);
  _RegisterPeriodicUAFSubscriptionActivity(v0, 0);
  if (!+[UAFConfiguration subscriptionServiceEnabled])
  {
    v1 = +[UAFCommonUtilities isInexpensiveNetworkAvailable];
    v2 = +[UAFCommonUtilities isGameModeEnabled];
    v3 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!v1 || v2)
    {
      if (v4)
      {
        v6 = 136315650;
        v7 = "UAFRegisterXPCActivities";
        v8 = 1024;
        v9 = v1;
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Scheduling on-boot activity for next opportunity: Inexpensive network availability: %d, GameMode: %d", &v6, 0x18u);
      }

      [UAFXPCActivity registerOnBootUAFActivityWithLockAssertion:0];
    }

    else
    {
      if (v4)
      {
        v6 = 136315138;
        v7 = "UAFRegisterXPCActivities";
        _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Inexpensive network available and game mode disabled, skipping on-boot activity registration", &v6, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void _RegisterPostUpgradeUAFActivity(void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "_RegisterPostUpgradeUAFActivity";
    _os_log_debug_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEBUG, "%s XPC: Registering the Post-Upgrade UAF XPC Activity", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___RegisterPostUpgradeUAFActivity_block_invoke_2;
  v8[3] = &__block_descriptor_33_e42_v24__0__NSObject_OS_xpc_object__8___v___16l;
  v9 = a2;
  v5 = MEMORY[0x1BFB33950](v8);
  if (a2)
  {
    v6 = "com.apple.siri.xpc_activity.uaf-system-post-upgrade";
  }

  else
  {
    v6 = "com.apple.siri.xpc_activity.uaf-post-upgrade";
  }

  _RegisterXPCActivity(v6, v3, &__block_literal_global_310, v5);

  v7 = *MEMORY[0x1E69E9840];
}

void _RegisterPeriodicUAFSubscriptionActivity(void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "_RegisterPeriodicUAFSubscriptionActivity";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s XPC: Registering the Periodic UAF Subscription XPC Activity", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___RegisterPeriodicUAFSubscriptionActivity_block_invoke_2;
  v8[3] = &__block_descriptor_33_e42_v24__0__NSObject_OS_xpc_object__8___v___16l;
  v9 = a2;
  v5 = MEMORY[0x1BFB33950](v8);
  if (a2)
  {
    v6 = "com.apple.siri.xpc_activity.uaf-system-subscription-maintenance";
  }

  else
  {
    v6 = "com.apple.siri.xpc_activity.uaf-subscription-maintenance";
  }

  _RegisterXPCActivity(v6, v3, &__block_literal_global_319, v5);

  v7 = *MEMORY[0x1E69E9840];
}

void UAFRegisterSubscriptionXPCActivities()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9C50];
  _RegisterPeriodicUAFSubscriptionActivity(*MEMORY[0x1E69E9C50], 1);
  _RegisterPostUpgradeUAFActivity(v0, 1);
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v1 = +[UAFCommonUtilities isInexpensiveNetworkAvailable];
    v2 = +[UAFCommonUtilities isGameModeEnabled];
    v3 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!v1 || v2)
    {
      if (v4)
      {
        v10 = 136315650;
        v11 = "UAFRegisterSubscriptionXPCActivities";
        v12 = 1024;
        v13 = v1;
        v14 = 1024;
        v15 = v2;
        _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Scheduling on-boot activity for next opportunity: Inexpensive network availability: %d, GameMode: %d", &v10, 0x18u);
      }

      [UAFXPCActivity registerOnBootUAFActivityWithLockAssertion:0];
    }

    else
    {
      if (v4)
      {
        v10 = 136315138;
        v11 = "UAFRegisterSubscriptionXPCActivities";
        _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Inexpensive network available and game mode disabled, skipping on-boot activity registration", &v10, 0xCu);
      }
    }

    v5 = +[UAFUser isMultiUser];
    v6 = UAFGetLogCategory(&UAFLogContextXPCActivity);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v10 = 136315138;
        v11 = "UAFRegisterSubscriptionXPCActivities";
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Scheduling user cleanup task, device is multiuser", &v10, 0xCu);
      }

      v8 = UAFGetLogCategory(&UAFLogContextXPCActivity);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315138;
        v11 = "_RegisterUserCleanupUAFActivity";
        _os_log_debug_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEBUG, "%s XPC: Registering the UserCleanup UAF XPC Activity", &v10, 0xCu);
      }

      _RegisterXPCActivity("com.apple.siri.xpc_activity.uaf-usercleanup", v0, &__block_literal_global_324, &__block_literal_global_326);
    }

    else
    {
      if (v7)
      {
        v10 = 136315138;
        v11 = "UAFRegisterSubscriptionXPCActivities";
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Not scheduling user cleanup task, device is not multiuser", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void _RegisterXPCActivity(const char *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___RegisterXPCActivity_block_invoke;
    handler[3] = &unk_1E7FFD4C0;
    v14 = v9;
    v15 = v8;
    v13 = v10;
    v11 = v10;
    xpc_activity_register(a1, v7, handler);
  }

  else
  {
    xpc_activity_unregister(a1);
  }
}

void sub_1BCF419F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AFSiriXAssetDidChangeCallback(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 updateSiriAssetAvailabilityForObserver];
  }

  return result;
}

id getAFSiriXAssetDidChangeDarwinNotification_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr_0;
  v8 = getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr_0;
  if (!getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr_0)
  {
    v1 = AssistantServicesLibrary_0();
    v6[3] = dlsym(v1, "AFSiriXAssetDidChangeDarwinNotification");
    getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1BCF47F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF48074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF494DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void *__getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFSiriXAssetDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFSiriXAssetDidChangeDarwinNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantServicesLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FFD988;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v1 = v4[0];
    v0 = AssistantServicesLibraryCore_frameworkLibrary_0;
    if (AssistantServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_0;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAFSettingsConnectionClass_block_invoke_0(uint64_t a1)
{
  AssistantServicesLibrary_0();
  result = objc_getClass("AFSettingsConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSettingsConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(UAFAssetSetMetadata *)v3 isValid:v4 error:v5, v6];
  }

  return result;
}

void sub_1BCF4C788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *UAFSubscriptionDownloadStatusDescription(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown status";
  }

  else
  {
    return off_1E7FFDA08[a1];
  }
}

id getGMAvailabilityWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED7D10E0;
  v7 = qword_1ED7D10E0;
  if (!qword_1ED7D10E0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGMAvailabilityWrapperClass_block_invoke;
    v3[3] = &unk_1E7FFD1D8;
    v3[4] = &v4;
    __getGMAvailabilityWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BCF4F1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_1();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return AssistantServicesLibrary_1();
  }

  return result;
}

uint64_t AssistantServicesLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FFDAD0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v1 = v4[0];
    v0 = AssistantServicesLibraryCore_frameworkLibrary_1;
    if (AssistantServicesLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_1;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAFSiriCapabilitiesServiceClientClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_1();
  result = objc_getClass("AFSiriCapabilitiesServiceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSiriCapabilitiesServiceClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getAFDeviceSupportsSiriUODSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAFDeviceSupportsSiriUODSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFDeviceSupportsSiriUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDeviceSupportsSiriUODSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFShouldRunAsrOnServerForUODSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFShouldRunAsrOnServerForUOD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFShouldRunAsrOnServerForUODSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFUODStatusSupportedFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFUODStatusSupportedFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUODStatusSupportedFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFUODStatusSupportedHybridSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFUODStatusSupportedHybrid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUODStatusSupportedHybridSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFIsTop13LocaleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFIsTop13Locale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFIsTop13LocaleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFUODAttentionRequiredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFUODAttentionRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUODAttentionRequiredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getGMAvailabilityWrapperClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED7D10E8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __GenerativeModelsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7FFDAE8;
    v7 = 0;
    qword_1ED7D10E8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ED7D10E8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED7D10E0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GenerativeModelsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7D10E8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BCF5889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFLanguageCodeDidChangeDarwinNotification_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr_0;
  v8 = getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr_0;
  if (!getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr_0)
  {
    v1 = AssistantServicesLibrary_2();
    v6[3] = dlsym(v1, "AFLanguageCodeDidChangeDarwinNotification");
    getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkAFPreferencesDidChangeDarwinNotification_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr_0;
  v8 = getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr_0;
  if (!getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr_0)
  {
    v1 = AssistantServicesLibrary_2();
    v6[3] = dlsym(v1, "kAFPreferencesDidChangeDarwinNotification");
    getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1BCF59B34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void *__getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AssistantServicesLibrary_2();
  result = dlsym(v2, "AFLanguageCodeDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFLanguageCodeDidChangeDarwinNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantServicesLibrary_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FFDD98;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v1 = v4[0];
    v0 = AssistantServicesLibraryCore_frameworkLibrary_2;
    if (AssistantServicesLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_2;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AssistantServicesLibrary_2();
  result = dlsym(v2, "kAFPreferencesDidChangeDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAFPreferencesDidChangeDarwinNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BCF62DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF64D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke_0(uint64_t a1)
{
  AssistantServicesLibrary_3();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_7 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return AssistantServicesLibrary_3();
  }

  return result;
}

uint64_t AssistantServicesLibrary_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7FFDDE8;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v1 = v4[0];
    v0 = AssistantServicesLibraryCore_frameworkLibrary_3;
    if (AssistantServicesLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary_3;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAFOfflineDictationStatusHighQualityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_3();
  result = dlsym(v2, "AFOfflineDictationStatusHighQualityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7D1118 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFOfflineDictationStatusInstalledKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_3();
  result = dlsym(v2, "AFOfflineDictationStatusInstalledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7D1120 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BCF68D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF6D414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF6DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF6EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t upgradeBlocks_block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v25 = 0;
  v26 = 0;
  v3 = [UAFUser currentUserWithNode:&v26 error:&v25];
  v4 = v26;
  v5 = v25;
  v6 = UAFGetLogCategory(&UAFLogContextStorage);
  v7 = v6;
  if (!v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "upgradeBlocks_block_invoke_2";
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Could not determine user: %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "upgradeBlocks_block_invoke_2";
    v29 = 2114;
    v30 = @"DB Upgrade from 1 to 2";
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Performing %{public}@", buf, 0x16u);
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSince1970];
  v11 = v10;
  v12 = [MEMORY[0x1E695DF00] now];
  [v12 timeIntervalSince1970];
  v7 = [v8 stringWithFormat:@"            BEGIN EXCLUSIVE TRANSACTION             CREATE TABLE IF NOT EXISTS Subscriptions_v2 (k0 TEXT NOT NULL, k1 TEXT NOT NULL, k2 BLOB, k3 REAL, k4 TEXT NOT NULL, k5 REAL);             INSERT INTO Subscriptions_v2 (k0, k1, k2, k3, k4, k5) SELECT k0, k1, k2, k3, '%@', %f FROM Subscriptions;             DROP TABLE Subscriptions;             ALTER TABLE Subscriptions_v2 RENAME TO Subscriptions;             CREATE UNIQUE INDEX IF NOT EXISTS subscriptionIndex on Subscriptions (k0, k1, k4);             CREATE TABLE IF NOT EXISTS UserInformation (k0 TEXT PRIMARY KEY NOT NULL, k1 REAL, k2 TEXT NOT NULL);             INSERT OR REPLACE INTO UserInformation (k0, k1, k2) VALUES('%@', %f, '%@');             COMMIT;", v3, v11, v3, v13, v4];;

  v14 = [v2 executeSQL:{-[NSObject UTF8String](v7, "UTF8String")}];
  if (!v14)
  {
    v19 = 1;
    goto LABEL_18;
  }

  v15 = v14;
  v16 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v23 = sqlite3_errmsg([v2 _store]);
    v24 = sqlite3_extended_errcode([v2 _store]);
    *buf = 136316162;
    v28 = "upgradeBlocks_block_invoke_2";
    v29 = 2114;
    v30 = @"DB Upgrade from 1 to 2";
    v31 = 1024;
    v32 = v15;
    v33 = 2080;
    v34 = v23;
    v35 = 1024;
    v36 = v24;
    _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Error executing SQL statement during %{public}@, SQLite error: %d (%s, Extended: %d)", buf, 0x2Cu);
  }

  v17 = UAFGetLogCategory(&UAFLogContextStorage);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "upgradeBlocks_block_invoke_2";
    v29 = 2114;
    v30 = @"DB Upgrade from 1 to 2";
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Rolling back exclusive transaction of %{public}@", buf, 0x16u);
  }

  v18 = [v2 _rollbackDatabaseTransaction];
  v19 = 0;
  if (v15 != 101 && v18)
  {
    v20 = UAFGetLogCategory(&UAFLogContextStorage);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "upgradeBlocks_block_invoke_2";
      v29 = 2114;
      v30 = @"DB Upgrade from 1 to 2";
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s Rollback exclusive transaction of %{public}@ failed", buf, 0x16u);
    }

LABEL_16:
    v19 = 0;
  }

LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1BCF75594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF75AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF76030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF76550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF767CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF76B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF77740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF78224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BCF78734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF78B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF79C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7A2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7AF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7B940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7D714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7D958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF7F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF81244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF81DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF840AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1BCF864A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BCF88C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1BCF8B698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMorphunAssetsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED7D1208;
  v7 = qword_1ED7D1208;
  if (!qword_1ED7D1208)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMorphunAssetsClass_block_invoke;
    v3[3] = &unk_1E7FFD1D8;
    v3[4] = &v4;
    __getMorphunAssetsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BCF8D024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMorphunAssetsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED7D1210)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MorphunAssetsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7FFE920;
    v7 = 0;
    qword_1ED7D1210 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ED7D1210)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MorphunAssets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED7D1208 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MorphunAssetsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED7D1210 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BCFA4D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  objc_destroyWeak(&a68);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}