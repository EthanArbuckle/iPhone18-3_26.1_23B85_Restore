unint64_t _getDatestamp()
{
  v0 = [MEMORY[0x1E695DF00] date];
  [v0 timeIntervalSince1970];
  v2 = v1 / 0x15180uLL;

  return v2;
}

void lookupBlockCreatingIfNotExists(void *a1, uint64_t a2, unsigned int a3, char a4, unsigned int a5, void *a6)
{
  v11 = a1;
  v12 = a6;
  if (!v11)
  {
    __assert_rtn("lookupBlockCreatingIfNotExists", "PETAggregateState.m", 172, "storage");
  }

  if (!a2)
  {
    __assert_rtn("lookupBlockCreatingIfNotExists", "PETAggregateState.m", 173, "key");
  }

  v13 = v12;
  if (!v12)
  {
    __assert_rtn("lookupBlockCreatingIfNotExists", "PETAggregateState.m", 176, "block");
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = a3 + a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __lookupBlockCreatingIfNotExists_block_invoke;
  v17[3] = &unk_1E86C2AA8;
  v21 = a2;
  v22 = a3;
  v15 = v11;
  v18 = v15;
  v24 = a4;
  v23 = a5;
  v16 = v13;
  v19 = v16;
  v20 = &v25;
  [v15 expand:v14 + 10 andRunWithLock:v17];
  if (*(v26 + 24) == 1)
  {
    [v15 reset];
  }

  _Block_object_dispose(&v25, 8);
}

void sub_1DF727968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __lookupBlockCreatingIfNotExists_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = 8997;
  v9 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v10 = *(a1 + 56);
    do
    {
      v11 = *v10++;
      v8 = 435 * (v8 ^ v11);
      --v9;
    }

    while (v9);
  }

  v12 = 4 * (v8 ^ HIBYTE(v8));
  BucketPtr = getBucketPtr(a2, a3, v12, *(a1 + 32));
  if (BucketPtr == -1)
  {
    LOWORD(v20) = *(a1 + 64);
LABEL_15:
    v21 = *(a1 + 68);
    v22 = *(a1 + 66);
    v23 = a2 + a4;
    *v23 = -28;
    *(v23 + 1) = v21;
    *(v23 + 2) = v22;
    *(v23 + 4) = v20;
    *(v23 + 6) = -1;
    memcpy((a2 + a4 + 10), *(a1 + 56), *(a1 + 64));
    v24 = *(a1 + 64);
    if (!(*(*(a1 + 40) + 16))())
    {
      setBucketPtr(a2, a3, v12, a4, *(a1 + 32));
      result = 1;
LABEL_21:
      v29 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_35:
    __assert_rtn("lookupBlockCreatingIfNotExists_block_invoke", "PETAggregateState.m", 226, "!keepNewAllocation");
  }

  v14 = BucketPtr;
  while (1)
  {
    v15 = v14;
    v16 = v14 + 10;
    if (v16 > a3)
    {
LABEL_17:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v36) = 0;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "Bounds overflow! Invalid data";
        v28 = 2;
LABEL_33:
        _os_log_error_impl(&dword_1DF726000, v26, OS_LOG_TYPE_ERROR, v27, &v36, v28);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v17 = (a2 + v14);
    v18 = *v17;
    if (v18 != 228)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = 67109376;
        v37 = 228;
        v38 = 1024;
        v39 = v18;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "Magic number not found: expected %i, got %i";
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    v14 = *(v17 + 6);
    v19 = *(v17 + 2);
    v20 = *(a1 + 64);
    if (v20 == v19)
    {
      if (v16 + v19 > a3)
      {
        goto LABEL_17;
      }

      if (!memcmp(*(a1 + 56), v17 + 10, *(v17 + 2)))
      {
        break;
      }
    }

    if (v15 >= v14)
    {
      [*(a1 + 32) saveCorruptState];
      [*(a1 + 32) resetLocked];
      __break(1u);
      goto LABEL_35;
    }

    if (v14 == -1)
    {
      v12 = v15 + 6;
      goto LABEL_15;
    }
  }

  v30 = v17[1];
  v31 = *(a1 + 68);
  if (v31 != v30)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 67109376;
      v37 = v31;
      v38 = 1024;
      v39 = v30;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "Block type mismatch: expected %i, got %i";
LABEL_32:
      v28 = 14;
      goto LABEL_33;
    }

LABEL_20:
    result = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_21;
  }

  v32 = *(v17 + 1);
  v33 = *(a1 + 66);
  if (v33 != v32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 67109376;
      v37 = v33;
      v38 = 1024;
      v39 = v32;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "Block length mismatch: expected %u, got %u";
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v34 = *(*(a1 + 40) + 16);
  v35 = *MEMORY[0x1E69E9840];

  return v34();
}

uint64_t getBucketPtr(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a3 + 4 > a2)
  {
    [v7 saveCorruptState];
    result = [v8 resetLocked];
    __break(1u);
  }

  else
  {
    v9 = *(a1 + a3);

    return v9;
  }

  return result;
}

uint64_t sub_1DF728420()
{
  v0 = sub_1DF74E914();
  __swift_allocate_value_buffer(v0, qword_1ECE53A58);
  __swift_project_value_buffer(v0, qword_1ECE53A58);
  return sub_1DF74E904();
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

uint64_t sub_1DF728528()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for EventTracker();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1ECE53858 = result;
  return result;
}

uint64_t static EventTracker.shared.getter()
{
  if (qword_1ECE53860 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECE53858;

  return MEMORY[0x1EEE6C0C0](v1);
}

void sub_1DF7285E0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  if (v6)
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = OUTLINED_FUNCTION_1();
    if (v10)
    {
      if (qword_1ECE53868 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v13 = sub_1DF74E914();
      __swift_project_value_buffer(v13, qword_1ECE53A58);

      oslog = sub_1DF74E8F4();
      v14 = sub_1DF74E944();

      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1DF728ABC(a2, a3, &v23);
        _os_log_impl(&dword_1DF726000, oslog, v14, "PET2 does not support required fields on %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();

        return;
      }
    }

    else
    {
      v17 = v11;
      v18 = v12;
      v19 = sub_1DF74E8D4();
      sub_1DF729078(v17, v18);
      v20 = sub_1DF74E924();
      if (a5)
      {
        v21 = sub_1DF74E924();
      }

      else
      {
        v21 = 0;
      }

      oslog = v21;
      [v6 logMessageData:v19 objcClassName:v20 subGroup:?];
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DF728838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF728860, 0, 0);
}

uint64_t sub_1DF728860()
{
  v26 = v0;
  v1 = *(v0[7] + 16);
  if (v1)
  {
    v2 = v0[2];
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v4 = OUTLINED_FUNCTION_1();
    if (v3)
    {
      if (qword_1ECE53868 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = v0[4];
      v7 = sub_1DF74E914();
      __swift_project_value_buffer(v7, qword_1ECE53A58);

      v8 = sub_1DF74E8F4();
      v9 = sub_1DF74E944();

      if (os_log_type_enabled(v8, v9))
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v25 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1DF728ABC(v11, v10, &v25);
        _os_log_impl(&dword_1DF726000, v8, v9, "PET2 does not support required fields on %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();
      }
    }

    else
    {
      v14 = v4;
      v15 = v5;
      v16 = v0[6];
      v18 = v0[3];
      v17 = v0[4];
      v8 = sub_1DF74E8D4();
      sub_1DF729078(v14, v15);
      v19 = sub_1DF74E924();
      if (v16)
      {
        v20 = v0[5];
        v21 = v0[6];
        v22 = sub_1DF74E924();
      }

      else
      {
        v22 = 0;
      }

      [v1 logMessageData:v8 objcClassName:v19 subGroup:v22];
    }
  }

  v23 = v0[1];

  return v23();
}

uint64_t EventTracker.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DF728ABC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF728B80(v11, 0, 0, 1, a1, a2);
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
    sub_1DF729374(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DF728B80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DF728C80(a5, a6);
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
    result = sub_1DF74E964();
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

uint64_t sub_1DF728C80(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF728CCC(a1, a2);
  sub_1DF728DE4(&unk_1F5AB0320);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DF728CCC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DF74E934())
  {
    result = sub_1DF728EC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DF74E954();
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
          result = sub_1DF74E964();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DF728DE4(uint64_t result)
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

    result = sub_1DF728F38(result, v8, 1, v3);
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

void *sub_1DF728EC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53870, &qword_1DF752160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DF728F38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53870, &qword_1DF752160);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DF729078(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t dispatch thunk of EventTracker.log(message:objcClassName:subGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 104);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DF729280;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF729280()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF729374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return MEMORY[0x1EEE158F8](0, v0, v1);
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x1E12DE080);
}

void sub_1DF72B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void parse(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 16) < *(a1 + 8))
  {
    while (1)
    {
      Varint = readVarint(a1);
      if (*(a1 + 40))
      {
        goto LABEL_27;
      }

      v8 = Varint;
      v9 = Varint & 7;
      v10 = Varint >> 3;
      v11 = *(a1 + 16);
      if (v9 <= 1)
      {
        break;
      }

      if (v9 != 2)
      {
        if (v9 != 5)
        {
          goto LABEL_26;
        }

        v12 = v11 + 4;
LABEL_10:
        if (v12 > *(a1 + 8))
        {
          goto LABEL_26;
        }

        *(a1 + 16) = v12;
        goto LABEL_13;
      }

      v13 = readVarint(a1);
      if (*(a1 + 40))
      {
        goto LABEL_27;
      }

      v14 = *(a1 + 16);
      if ((v14 + v13) > *(a1 + 8))
      {
LABEL_26:
        *(a1 + 40) = 1;
        goto LABEL_27;
      }

      *(a1 + 16) = v14 + v13;
      v23 = 0;
      if (!v5[2](v5, v10, &v23))
      {
        goto LABEL_23;
      }

      if (v23 != 1)
      {
        goto LABEL_14;
      }

      Mutable = CFDataCreateMutable(0, 0);
      v16 = *(a1 + 16);
      v22[0] = v14;
      v22[1] = v16;
      v22[2] = v14;
      v22[3] = v14;
      v22[4] = Mutable;
      v22[5] = 0;
      *(a1 + 24) = v16;
      parse(v22, v5, v6);
      writeVarint(*(a1 + 32), v8);
      Length = CFDataGetLength(Mutable);
      if (Length < 0)
      {
        *(a1 + 40) = 1;
        CFRelease(Mutable);
        goto LABEL_27;
      }

      writeVarint(*(a1 + 32), Length);
      v18 = *(a1 + 32);
      BytePtr = CFDataGetBytePtr(Mutable);
      v20 = CFDataGetLength(Mutable);
      CFDataAppendBytes(v18, BytePtr, v20);
      CFRelease(Mutable);
      if (v6)
      {
        v6[2](v6);
      }

      v21 = *(a1 + 16);
LABEL_24:
      if (v21 >= *(a1 + 8))
      {
        goto LABEL_27;
      }
    }

    if ((Varint & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_26;
      }

      v12 = v11 + 8;
      goto LABEL_10;
    }

    readVarint(a1);
    if (*(a1 + 40))
    {
      goto LABEL_27;
    }

LABEL_13:
    LOBYTE(v22[0]) = 0;
    if ((v5)[2](v5, v10, v22))
    {
LABEL_14:
      CFDataAppendBytes(*(a1 + 32), *(a1 + 24), *(a1 + 16) - *(a1 + 24));
    }

LABEL_23:
    v21 = *(a1 + 16);
    *(a1 + 24) = v21;
    goto LABEL_24;
  }

LABEL_27:
}

uint64_t readVarint(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) + 1;
  while (1)
  {
    if (v5 > v4)
    {
LABEL_6:
      result = 0;
      *(a1 + 40) = 1;
      return result;
    }

    *(a1 + 16) = v5;
    if (*(a1 + 40))
    {
      return 0;
    }

    result |= (*(v5 - 1) & 0x7F) << v2;
    if ((*(v5 - 1) & 0x80) == 0)
    {
      return result;
    }

    v2 += 7;
    ++v5;
    if (v2 == 70)
    {
      goto LABEL_6;
    }
  }
}

void writeVarint(__CFData *a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 < 0x80)
  {
    LOBYTE(v3) = a2;
    v2 = bytes;
  }

  else
  {
    v2 = bytes;
    do
    {
      *v2++ = a2 | 0x80;
      v3 = a2 >> 7;
      v4 = a2 >> 14;
      a2 >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  CFDataAppendBytes(a1, bytes, v2 - bytes + 1);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t PETDistributionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 2u;
          v30 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___PETDistribution__mean;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          *(a1 + 40) |= 8u;
          v30 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___PETDistribution__variance;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 40) |= 4u;
          v30 = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___PETDistribution__min;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          *(a1 + 40) |= 1u;
          v30 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v30;
          v24 = &OBJC_IVAR___PETDistribution__max;
LABEL_44:
          *(a1 + *v24) = v23;
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id createBlankStorage()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:1024];
  memset([v0 mutableBytes], 255, 0x400uLL);

  return v0;
}

uint64_t PETAggregationKeyReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 36) |= 1u;
        v34[0] = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v34[0];
        goto LABEL_59;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(PETRawMessage);
      objc_storeStrong((a1 + 24), v21);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !PETRawMessageReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v34[0] & 0x7F) << v22;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }

LABEL_55:
      v30 = 32;
      goto LABEL_56;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v34[0] & 0x7F) << v14;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_51;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_51:
      v30 = 16;
LABEL_56:
      *(a1 + v30) = v20;
      goto LABEL_59;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PET1KeyReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF733F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF734104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PETUploadReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        switch(v13)
        {
          case 5:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_48;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 48) = v23;
            goto LABEL_49;
          case 6:
            v15 = PBReaderReadData();
            v16 = 16;
            goto LABEL_46;
          case 7:
            v15 = PBReaderReadData();
            v16 = 24;
LABEL_46:
            v24 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(PETMetadata);
            objc_storeStrong((a1 + 32), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !PETMetadataReadFrom(v14, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_44;
          case 2:
            v14 = objc_alloc_init(PETAggregatedMessage);
            [a1 addAggregatedMessages:v14];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !PETAggregatedMessageReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          case 3:
            v14 = objc_alloc_init(PETRawMessage);
            [a1 addUnaggregatedMessages:v14];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !PETRawMessageReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

LABEL_44:
            PBReaderRecallMark();

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PETMetadataReadFrom(uint64_t a1, void *a2)
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
        v83 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v83 & 0x7F) << v5;
        if ((v83 & 0x80) == 0)
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
        break;
      }

      switch((v12 >> 3))
      {
        case 2u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 100) |= 1u;
          while (1)
          {
            v84 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v84 & 0x7F) << v13;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_137:
              *(a1 + 8) = v19;
              goto LABEL_147;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_137;
        case 3u:
          v34 = PBReaderReadString();
          v35 = 64;
          goto LABEL_118;
        case 4u:
          v34 = PBReaderReadString();
          v35 = 40;
          goto LABEL_118;
        case 5u:
          v34 = PBReaderReadString();
          v35 = 16;
          goto LABEL_118;
        case 6u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 100) |= 0x20u;
          while (1)
          {
            v91 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v91 & 0x7F) << v36;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_126;
            }
          }

          v33 = (v38 != 0) & ~[a2 hasError];
LABEL_126:
          v81 = 94;
          goto LABEL_146;
        case 7u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 100) |= 0x80u;
          while (1)
          {
            v90 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v90 & 0x7F) << v54;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_139;
            }
          }

          v33 = (v56 != 0) & ~[a2 hasError];
LABEL_139:
          v81 = 96;
          goto LABEL_146;
        case 8u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 100) |= 0x10u;
          while (1)
          {
            v89 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v89 & 0x7F) << v66;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v11 = v67++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_143;
            }
          }

          v33 = (v68 != 0) & ~[a2 hasError];
LABEL_143:
          v81 = 93;
          goto LABEL_146;
        case 9u:
          v34 = PBReaderReadString();
          v35 = 32;
          goto LABEL_118;
        case 0xAu:
          v34 = PBReaderReadString();
          v35 = 48;
          goto LABEL_118;
        case 0xBu:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 100) |= 2u;
          while (1)
          {
            v92 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v92 & 0x7F) << v48;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_132;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v50;
          }

LABEL_132:
          v80 = 24;
          goto LABEL_133;
        case 0xCu:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 100) |= 0x100u;
          while (1)
          {
            v88 = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v88 & 0x7F) << v73;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_145;
            }
          }

          v33 = (v75 != 0) & ~[a2 hasError];
LABEL_145:
          v81 = 97;
          goto LABEL_146;
        case 0xDu:
          v34 = PBReaderReadString();
          v35 = 72;
          goto LABEL_118;
        case 0xEu:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 100) |= 0x200u;
          while (1)
          {
            v87 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v87 & 0x7F) << v42;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_128;
            }
          }

          v33 = (v44 != 0) & ~[a2 hasError];
LABEL_128:
          v81 = 98;
          goto LABEL_146;
        case 0xFu:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 100) |= 0x40u;
          while (1)
          {
            v86 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v86 & 0x7F) << v60;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_141;
            }
          }

          v33 = (v62 != 0) & ~[a2 hasError];
LABEL_141:
          v81 = 95;
          goto LABEL_146;
        case 0x10u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 100) |= 8u;
          while (1)
          {
            v85 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v85 & 0x7F) << v27;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_124;
            }
          }

          v33 = (v29 != 0) & ~[a2 hasError];
LABEL_124:
          v81 = 92;
LABEL_146:
          *(a1 + v81) = v33;
          goto LABEL_147;
        case 0x11u:
          v34 = PBReaderReadString();
          v35 = 56;
          goto LABEL_118;
        case 0x12u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 100) |= 4u;
          break;
        case 0x13u:
          v34 = PBReaderReadString();
          v35 = 80;
LABEL_118:
          v79 = *(a1 + v35);
          *(a1 + v35) = v34;

          goto LABEL_147;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_147;
      }

      while (1)
      {
        v93 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v93 & 0x7F) << v20;
        if ((v93 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_122;
        }
      }

      v26 = [a2 hasError] ? 0 : v22;
LABEL_122:
      v80 = 88;
LABEL_133:
      *(a1 + v80) = v26;
LABEL_147:
      v82 = [a2 position];
    }

    while (v82 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF738980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id displayStringForKey(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  v4 = a2;
  do
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:v4 encoding:qword_1DF752230[v3]];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 3;
    }

    ++v3;
  }

  while (!v6);

  return v5;
}

void enumerateChain(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E69E9C10];
  while (v10 != 0xFFFFFFFF)
  {
    v15 = v10 + 10;
    if (v10 + 10 > a2 || (v16 = a1 + v10, *(a1 + v10) != 228) || (v17 = *(v16 + 4), v18 = v15 + v17, v15 + v17 + *(v16 + 2) > a2))
    {
LABEL_21:
      [v13 saveCorruptState];
      [v13 resetLocked];
      __break(1u);
      break;
    }

    v19 = *(v16 + 1);
    v20 = *(v16 + 6);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        visitDistribution(a1, a2, v16 + 10, v17, v18, v12, v13);
        goto LABEL_19;
      }

      if (v19 != 3 || !os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v25) = 0;
      v21 = &v25;
      v22 = v14;
      v23 = "Can not have distribution-tail node inside value node";
      goto LABEL_17;
    }

    if (*(v16 + 1))
    {
      if (v19 == 1 && v11)
      {
        v11[2](v11, v16 + 10, *(v16 + 4), *(a1 + v18));
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = buf;
      v22 = v14;
      v23 = "Can not have value node inside value node";
LABEL_17:
      _os_log_error_impl(&dword_1DF726000, v22, OS_LOG_TYPE_ERROR, v23, v21, 2u);
    }

LABEL_19:
    v24 = v10 >= v20;
    v10 = v20;
    if (v24)
    {
      goto LABEL_21;
    }
  }
}

void visitDistribution(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, void *a6, void *a7)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (!v13)
  {
    goto LABEL_21;
  }

  v16 = (a1 + a5);
  if (*(v16 + 11) != 1167568894)
  {
LABEL_23:
    [v15 saveCorruptState];
    [v15 resetLocked];
    __break(1u);
  }

  v36 = a3;
  v37 = a4;
  v38 = v14;
  v35 = *v16;
  v17 = *(v16 + 1);
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  v21 = *(v16 + 4);
  v22 = *(v16 + 10);
  v23 = v16[1];
  MEMORY[0x1EEE9AC00]();
  bzero(v34, 0x83FuLL);
  MEMORY[0x1EEE9AC00]();
  bzero(v33, 0x20FuLL);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __visitDistribution_block_invoke;
  v39[3] = &__block_descriptor_64_e5_v8__0l;
  v39[4] = v34;
  v39[5] = 1;
  v39[6] = v33;
  v39[7] = 1;
  v24 = MEMORY[0x1E12DDDC0](v39);
  v34[0] = v16 + 24;
  if (v23 >= 0xFA)
  {
    v26 = 250;
  }

  else
  {
    v26 = v23;
  }

  LOWORD(v33[0]) = v26;
  if (v22 != 0xFFFFFFFF)
  {
    v28 = v23 - v26;
    v27 = 1;
    while (v22 + 2048 <= a2)
    {
      v29 = (a1 + v22);
      if (*(a1 + v22 + 4) != -461418838)
      {
        break;
      }

      v30 = *v29;
      v34[v27] = v29 + 2;
      v31 = v28;
      if (v28 >= 0xFFu)
      {
        v31 = 255;
      }

      *(v33 + v27) = v31;
      if (v22 >= v30)
      {
        break;
      }

      ++v27;
      v28 -= v31;
      v22 = v30;
      if (v30 == 0xFFFFFFFF)
      {
        goto LABEL_15;
      }
    }

    v15 = v38;
    [v38 saveCorruptState];
    [v15 resetLocked];
    __break(1u);
    goto LABEL_23;
  }

  v27 = 1;
LABEL_15:
  if (v17 <= 1)
  {
    v25.n128_u64[0] = 0x7FF8000000000000;
  }

  else
  {
    v25.n128_f64[0] = v19 / (v17 - 1);
  }

  (*(v13 + 2))(v13, v36, v37, v35, v17, v27, v34, v33, v18, v25, v20, v21);
  if (v24)
  {
    v24[2](v24);
  }

  v15 = v38;
LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1DF7393EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void __visitDistribution_block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    free(*(a1 + 32));
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 48);

    free(v2);
  }
}

void callWithHashableBytesOfString(void *a1, void *a2)
{
  theString = a1;
  v3 = a2;
  CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  if (CStringPtr)
  {
    goto LABEL_2;
  }

  CharactersPtr = CFStringGetCharactersPtr(theString);
  if (CharactersPtr)
  {
    v3[2](v3, CharactersPtr, 2 * ([(__CFString *)theString length]& 0x7FFF));
  }

  else
  {
    if ([(__CFString *)theString canBeConvertedToEncoding:1])
    {
      v6 = theString;
      CStringPtr = [(__CFString *)theString UTF8String];
LABEL_2:
      v3[2](v3, CStringPtr, [(__CFString *)theString length]);
      goto LABEL_5;
    }

    v7 = malloc_type_malloc(2 * [(__CFString *)theString length], 0x1000040BDFB0063uLL);
    [(__CFString *)theString getCharacters:v7];
    v3[2](v3, v7, 2 * ([(__CFString *)theString length]& 0x7FFF));
    free(v7);
  }

LABEL_5:
}

void setBucketPtr(uint64_t a1, unint64_t a2, unsigned int a3, int a4, void *a5)
{
  v9 = a5;
  if (a3 + 4 <= a2 && *(a1 + a3) == -1)
  {
    *(a1 + a3) = a4;
  }

  else
  {
    v10 = v9;
    [v9 saveCorruptState];
    [v10 resetLocked];
    __break(1u);
  }
}

void sub_1DF739FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t COMAPPLEPETCOMMONPETMetadataReadFrom(uint64_t a1, void *a2)
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
        v89 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89 & 0x7F) << v5;
        if ((v89 & 0x80) == 0)
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
        break;
      }

      switch((v12 >> 3))
      {
        case 2u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 116) |= 1u;
          while (1)
          {
            v90 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v90 & 0x7F) << v13;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_144:
              *(a1 + 8) = v19;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_144;
        case 3u:
          v46 = PBReaderReadString();
          v47 = 72;
          goto LABEL_119;
        case 4u:
          v46 = PBReaderReadString();
          v47 = 40;
          goto LABEL_119;
        case 5u:
          v46 = PBReaderReadString();
          v47 = 16;
          goto LABEL_119;
        case 6u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            v97 = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v97 & 0x7F) << v67;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_150;
            }
          }

          v33 = (v69 != 0) & ~[a2 hasError];
LABEL_150:
          v87 = 110;
          goto LABEL_151;
        case 7u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 116) |= 0x100u;
          while (1)
          {
            v96 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v96 & 0x7F) << v48;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_140;
            }
          }

          v33 = (v50 != 0) & ~[a2 hasError];
LABEL_140:
          v87 = 112;
          goto LABEL_151;
        case 8u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 116) |= 0x20u;
          while (1)
          {
            v95 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v95 & 0x7F) << v55;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_146;
            }
          }

          v33 = (v57 != 0) & ~[a2 hasError];
LABEL_146:
          v87 = 109;
          goto LABEL_151;
        case 9u:
          v46 = PBReaderReadString();
          v47 = 32;
          goto LABEL_119;
        case 0xAu:
          v46 = PBReaderReadString();
          v47 = 48;
          goto LABEL_119;
        case 0xBu:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 116) |= 2u;
          while (1)
          {
            v99 = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v99 & 0x7F) << v73;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v75;
          }

LABEL_155:
          v86 = 24;
          goto LABEL_160;
        case 0xCu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 116) |= 0x200u;
          while (1)
          {
            v94 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v94 & 0x7F) << v34;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_136;
            }
          }

          v33 = (v36 != 0) & ~[a2 hasError];
LABEL_136:
          v87 = 113;
          goto LABEL_151;
        case 0xDu:
          v46 = PBReaderReadString();
          v47 = 80;
          goto LABEL_119;
        case 0xEu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 116) |= 0x400u;
          while (1)
          {
            v93 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v93 & 0x7F) << v40;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_138;
            }
          }

          v33 = (v42 != 0) & ~[a2 hasError];
LABEL_138:
          v87 = 114;
          goto LABEL_151;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 116) |= 0x80u;
          while (1)
          {
            v92 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v92 & 0x7F) << v27;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_134;
            }
          }

          v33 = (v29 != 0) & ~[a2 hasError];
LABEL_134:
          v87 = 111;
          goto LABEL_151;
        case 0x10u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            v91 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v91 & 0x7F) << v61;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_148;
            }
          }

          v33 = (v63 != 0) & ~[a2 hasError];
LABEL_148:
          v87 = 108;
LABEL_151:
          *(a1 + v87) = v33;
          goto LABEL_161;
        case 0x11u:
          v46 = PBReaderReadString();
          v47 = 56;
          goto LABEL_119;
        case 0x12u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            v100 = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              v85 = [a2 data];
              [v85 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v100 & 0x7F) << v80;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v11 = v81++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v82;
          }

LABEL_159:
          v86 = 104;
          goto LABEL_160;
        case 0x13u:
          v46 = PBReaderReadString();
          v47 = 96;
          goto LABEL_119;
        case 0x14u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 116) |= 4u;
          break;
        case 0x16u:
          v46 = PBReaderReadString();
          v47 = 64;
LABEL_119:
          v79 = *(a1 + v47);
          *(a1 + v47) = v46;

          goto LABEL_161;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_161;
      }

      while (1)
      {
        v98 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v98 & 0x7F) << v20;
        if ((v98 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_132;
        }
      }

      v26 = [a2 hasError] ? 0 : v22;
LABEL_132:
      v86 = 88;
LABEL_160:
      *(a1 + v86) = v26;
LABEL_161:
      v88 = [a2 position];
    }

    while (v88 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PETAggregatedMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24 & 0x7F) << v15;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 8) = v21;
        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(PETAggregationKey);
        objc_storeStrong((a1 + 24), v14);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !PETAggregationKeyReadFrom(v14, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PETDistribution);
    objc_storeStrong((a1 + 16), v14);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !PETDistributionReadFrom(v14, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PETRawMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t chunkCompareByOffset(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t COMAPPLEPROACTIVEGMSGMSAssetEventReadFrom(uint64_t a1, void *a2)
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
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v56 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v56 & 0x7F) << v30;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_81:
        v50 = 36;
LABEL_90:
        *(a1 + v50) = v20;
        goto LABEL_98;
      }

      if (v13 == 5)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v59 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v59 & 0x7F) << v43;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v45;
        }

LABEL_94:
        v49 = 16;
        goto LABEL_95;
      }

      if (v13 != 6)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_98;
      }

      *(a1 + 44) |= 1u;
      v53 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v51 = [a2 data];
        [v51 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v53;
LABEL_98:
      v52 = [a2 position];
      if (v52 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v55 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v55 & 0x7F) << v23;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_77:
        v49 = 24;
LABEL_95:
        *(a1 + v49) = v29;
        goto LABEL_98;
      case 2:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v58 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v58 & 0x7F) << v37;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v39;
        }

LABEL_89:
        v50 = 40;
        break;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v57 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v57 & 0x7F) << v14;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_85:
        v50 = 32;
        break;
      default:
        goto LABEL_54;
    }

    goto LABEL_90;
  }

  return [a2 hasError] ^ 1;
}

uint64_t COMAPPLEPROACTIVEGMSGMSUberEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v40) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v40 & 0x7F) << v5;
      if ((v40 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 144) |= 4u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v40 & 0x7F) << v13;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_79:
            *(a1 + 72) = v19;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_79;
      case 2u:
        v28 = PBReaderReadString();
        v29 = 32;
        goto LABEL_59;
      case 3u:
        v28 = PBReaderReadString();
        v29 = 104;
        goto LABEL_59;
      case 4u:
        v28 = PBReaderReadString();
        v29 = 112;
        goto LABEL_59;
      case 5u:
        v28 = PBReaderReadString();
        v29 = 96;
        goto LABEL_59;
      case 6u:
        v28 = PBReaderReadString();
        v29 = 136;
        goto LABEL_59;
      case 7u:
        v28 = PBReaderReadString();
        v29 = 40;
        goto LABEL_59;
      case 8u:
        v20 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSInferenceEvent);
        objc_storeStrong((a1 + 88), v20);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !COMAPPLEPROACTIVEGMSGMSInferenceEventReadFrom(v20, a2))
        {
          goto LABEL_87;
        }

        goto LABEL_62;
      case 9u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 144) |= 2u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40 & 0x7F) << v31;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v33;
        }

LABEL_83:
        v37 = 16;
        goto LABEL_84;
      case 0xAu:
        v28 = PBReaderReadString();
        v29 = 128;
        goto LABEL_59;
      case 0xBu:
        v20 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSAssetEvent);
        objc_storeStrong((a1 + 24), v20);
        v40 = 0;
        v41 = 0;
        if (PBReaderPlaceMark() && COMAPPLEPROACTIVEGMSGMSAssetEventReadFrom(v20, a2))
        {
          goto LABEL_62;
        }

        goto LABEL_87;
      case 0xCu:
        v20 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent);
        objc_storeStrong((a1 + 80), v20);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEventReadFrom(v20, a2))
        {
          goto LABEL_87;
        }

        goto LABEL_62;
      case 0xDu:
        v28 = PBReaderReadString();
        v29 = 48;
        goto LABEL_59;
      case 0xEu:
        v28 = PBReaderReadString();
        v29 = 56;
LABEL_59:
        v30 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_85;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 144) |= 1u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_75:
        v37 = 8;
LABEL_84:
        *(a1 + v37) = v27;
        goto LABEL_85;
      case 0x10u:
        v20 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSError);
        objc_storeStrong((a1 + 64), v20);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !COMAPPLEPROACTIVEGMSGMSErrorReadFrom(v20, a2))
        {
          goto LABEL_87;
        }

        goto LABEL_62;
      case 0x11u:
        v20 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSPrewarmEvent);
        objc_storeStrong((a1 + 120), v20);
        v40 = 0;
        v41 = 0;
        if (PBReaderPlaceMark() && COMAPPLEPROACTIVEGMSGMSPrewarmEventReadFrom(v20, a2))
        {
LABEL_62:
          PBReaderRecallMark();

LABEL_85:
          v38 = [a2 position];
          if (v38 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_87:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
    }
  }
}

uint64_t COMAPPLEPROACTIVEGMSGMSPETUploadEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(COMAPPLEPETCOMMONPETMetadata);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !COMAPPLEPETCOMMONPETMetadataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(COMAPPLEPROACTIVEGMSGMSUberEvent);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !COMAPPLEPROACTIVEGMSGMSUberEventReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v40 & 0x7F) << v20;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_55:
          *(a1 + 40) = v26;
        }

        else
        {
          if (v13 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_42;
            }

            v16 = PBReaderReadString();
            v17 = 56;
          }

          v32 = *(a1 + v17);
          *(a1 + v17) = v16;
        }
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            *(a1 + 64) |= 1u;
            v40 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v40;
            v35 = 8;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_42:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_65;
            }

            *(a1 + 64) |= 4u;
            v40 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v40;
            v35 = 24;
          }
        }

        else if (v13 == 4)
        {
          *(a1 + 64) |= 8u;
          v40 = 0;
          v28 = [a2 position] + 8;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v40;
          v35 = 32;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_42;
          }

          *(a1 + 64) |= 2u;
          v40 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v40;
          v35 = 16;
        }

        *(a1 + v35) = v34;
      }

LABEL_65:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t COMAPPLEPROACTIVEGMSGMSInferenceEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v110) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v110 & 0x7F) << v5;
        if ((v110 & 0x80) == 0)
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
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 172) |= 0x100000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v110 & 0x7F) << v13;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_156:
              *(a1 + 168) = v19;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_156;
        case 2u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 172) |= 8u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v110 & 0x7F) << v57;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v59;
          }

LABEL_160:
          v94 = 32;
          goto LABEL_173;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 172) |= 0x10u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v110 & 0x7F) << v45;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

LABEL_152:
          v94 = 40;
          goto LABEL_173;
        case 4u:
          *(a1 + 172) |= 0x40000u;
          v110 = 0;
          v53 = [a2 position] + 8;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 152;
          goto LABEL_198;
        case 5u:
          *(a1 + 172) |= 0x10000u;
          v110 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 136;
          goto LABEL_198;
        case 6u:
          *(a1 + 172) |= 0x20000u;
          v110 = 0;
          v71 = [a2 position] + 8;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 8, v72 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 144;
          goto LABEL_198;
        case 7u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 172) |= 0x80000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v110 & 0x7F) << v76;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v78;
          }

LABEL_168:
          v94 = 160;
          goto LABEL_173;
        case 8u:
          *(a1 + 172) |= 4u;
          v110 = 0;
          v55 = [a2 position] + 8;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 24;
          goto LABEL_198;
        case 9u:
          *(a1 + 172) |= 2u;
          v110 = 0;
          v90 = [a2 position] + 8;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 8, v91 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 16;
          goto LABEL_198;
        case 0xAu:
          *(a1 + 172) |= 1u;
          v110 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 8;
          goto LABEL_198;
        case 0xBu:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 172) |= 0x1000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              v89 = [a2 data];
              [v89 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v110 & 0x7F) << v84;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v11 = v85++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v86;
          }

LABEL_172:
          v94 = 104;
          goto LABEL_173;
        case 0xCu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 172) |= 0x20u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v110 & 0x7F) << v29;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v31;
          }

LABEL_144:
          v94 = 48;
          goto LABEL_173;
        case 0xDu:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 172) |= 0x400u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v110 & 0x7F) << v37;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_148;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v39;
          }

LABEL_148:
          v94 = 88;
          goto LABEL_173;
        case 0xEu:
          *(a1 + 172) |= 0x100u;
          v110 = 0;
          v74 = [a2 position] + 8;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 8, v75 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 72;
          goto LABEL_198;
        case 0xFu:
          *(a1 + 172) |= 0x4000u;
          v110 = 0;
          v27 = [a2 position] + 8;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 120;
          goto LABEL_198;
        case 0x10u:
          *(a1 + 172) |= 0x200u;
          v110 = 0;
          v51 = [a2 position] + 8;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 80;
          goto LABEL_198;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 172) |= 0x80u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v110 & 0x7F) << v20;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_140:
          v94 = 64;
          goto LABEL_173;
        case 0x12u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 172) |= 0x8000u;
          break;
        case 0x13u:
          *(a1 + 172) |= 0x2000u;
          v110 = 0;
          v82 = [a2 position] + 8;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 8, v83 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 112;
          goto LABEL_198;
        case 0x14u:
          *(a1 + 172) |= 0x40u;
          v110 = 0;
          v92 = [a2 position] + 8;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 8, v93 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 56;
          goto LABEL_198;
        case 0x15u:
          *(a1 + 172) |= 0x800u;
          v110 = 0;
          v69 = [a2 position] + 8;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 8, v70 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v96 = v110;
          v97 = 96;
LABEL_198:
          *(a1 + v97) = v96;
          goto LABEL_199;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_199;
      }

      while (1)
      {
        LOBYTE(v110) = 0;
        v66 = [a2 position] + 1;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
        {
          v68 = [a2 data];
          [v68 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v65 |= (v110 & 0x7F) << v63;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v63 += 7;
        v11 = v64++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_164;
        }
      }

      v26 = [a2 hasError] ? 0 : v65;
LABEL_164:
      v94 = 128;
LABEL_173:
      *(a1 + v94) = v26;
LABEL_199:
      v109 = [a2 position];
    }

    while (v109 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t COMAPPLEPROACTIVEGMSGMSPrewarmEventReadFrom(uint64_t a1, void *a2)
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 28) |= 1u;
        v33 = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v33;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v36 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v36 & 0x7F) << v21;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_46:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v35 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v35 & 0x7F) << v14;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_50:
        *(a1 + 16) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t COMAPPLEPROACTIVEGMSGMSErrorReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}