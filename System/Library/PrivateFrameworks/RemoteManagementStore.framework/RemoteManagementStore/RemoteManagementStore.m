uint64_t sub_261E37D54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261E37D90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261E37DC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_261E37E20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261E37E68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_261E3C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261E3C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261E46704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261E47B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_261E4D028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261E505AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261E52CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_261E57D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t RMAdapterError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  v2 = v4[2];

  return v2;
}

unint64_t RMAdapterError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v12);
  v2 = v12[4];
  if (v12[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6198, &qword_261E754D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261E754C0;
    *(inited + 32) = sub_261E724D8();
    *(inited + 40) = v4;
    v5 = objc_opt_self();

    v6 = sub_261E724A8();

    v7 = sub_261E724A8();

    v8 = [v5 buildWithCode:v6 description:v7 details:v2];

    *(inited + 72) = sub_261E5E524(0, &qword_27FEF61A0, 0x277D46048);
    *(inited + 48) = v8;
    v9 = sub_261E5E344(inited);
    swift_setDeallocating();
    sub_261E5E4BC(inited + 32);

    return v9;
  }

  else
  {
    v11 = sub_261E5E344(MEMORY[0x277D84F90]);

    return v11;
  }
}

uint64_t RMAdapterError.underlyingErrorDescription(_:)(void *a1)
{
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  if (DynamicType == sub_261E5E524(0, &qword_27FEF61B0, 0x277CCA9B8))
  {
    v5 = sub_261E72418();
    v6 = [v5 localizedDescription];

    v7 = sub_261E724D8();
    return v7;
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6270, &qword_261E754E0);
    return sub_261E724E8();
  }
}

uint64_t sub_261E5DF70(uint64_t a1, id *a2)
{
  result = sub_261E724B8();
  *a2 = 0;
  return result;
}

uint64_t sub_261E5DFE8(uint64_t a1, id *a2)
{
  v3 = sub_261E724C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261E5E068@<X0>(uint64_t *a1@<X8>)
{
  sub_261E724D8();
  v2 = sub_261E724A8();

  *a1 = v2;
  return result;
}

uint64_t sub_261E5E0AC()
{
  v1 = *v0;
  v2 = sub_261E724D8();
  v3 = MEMORY[0x26671FF50](v2);

  return v3;
}

uint64_t sub_261E5E0E8()
{
  v1 = *v0;
  sub_261E724D8();
  sub_261E72518();
}

uint64_t sub_261E5E13C()
{
  v1 = *v0;
  sub_261E724D8();
  sub_261E72818();
  sub_261E72518();
  v2 = sub_261E72838();

  return v2;
}

uint64_t sub_261E5E1B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_261E724D8();
  v6 = v5;
  if (v4 == sub_261E724D8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261E727A8();
  }

  return v9 & 1;
}

uint64_t sub_261E5E238@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261E724A8();

  *a2 = v5;
  return result;
}

uint64_t sub_261E5E280@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_261E724D8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_261E5E2AC(uint64_t a1)
{
  v2 = sub_261E5E920(&qword_27FEF6300);
  v3 = sub_261E5E920(&unk_27FEF61E8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_261E5E344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6330, &qword_261E75530);
    v3 = sub_261E72788();
    v4 = a1 + 32;

    while (1)
    {
      sub_261E5E7CC(v4, &v13, &qword_27FEF61A8, &qword_261E754D8);
      v5 = v13;
      v6 = v14;
      result = sub_261E623B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261E5E7BC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_261E5E4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF61A8, &qword_261E754D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261E5E524(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_261E5E580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF61C0, &qword_261E75528);
    v3 = sub_261E72788();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_261E623B0(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261E5E694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6310, &qword_261E75810);
    v3 = sub_261E72788();
    v4 = a1 + 32;

    while (1)
    {
      sub_261E5E7CC(v4, &v11, &qword_27FEF61B8, &qword_261E75520);
      v5 = v11;
      result = sub_261E62428(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_261E5E7BC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_261E5E7BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_261E5E7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for RMStoreOptionKey()
{
  if (!qword_27FEF61C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FEF61C8);
    }
  }
}

uint64_t sub_261E5E920(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RMStoreOptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261E5E978()
{
  v1 = *v0;
  sub_261E72818();
  MEMORY[0x266720200](v1);
  return sub_261E72838();
}

uint64_t sub_261E5E9EC()
{
  v1 = *v0;
  sub_261E72818();
  MEMORY[0x266720200](v1);
  return sub_261E72838();
}

uint64_t sub_261E5EA40()
{
  v0 = sub_261E72468();
  __swift_allocate_value_buffer(v0, qword_27FEF68E0);
  __swift_project_value_buffer(v0, qword_27FEF68E0);
  return sub_261E72458();
}

uint64_t sub_261E5EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v29 = a8;
  v30 = a7;
  ObjectType = swift_getObjectType();
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = v27 - v18;
  v20 = sub_261E65188(a1);
  sub_261E655B4(v20, v32, v31);
  v27[0] = v31[1];
  v27[1] = v31[4];
  v28 = v31[0];

  v21 = sub_261E72628();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v9;
  *(v22 + 40) = a4;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6 & 1;
  *(v22 + 64) = v20;
  *(v22 + 72) = a2;
  v24 = v29;
  v23 = v30;
  *(v22 + 80) = a3;
  *(v22 + 88) = v23;
  *(v22 + 96) = v24;
  *(v22 + 104) = ObjectType;

  v25 = v9;
  sub_261E5F950(0, 0, v19, &unk_261E757D0, v22);
}

uint64_t sub_261E5EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 40) = v10;
  *(v8 + 24) = a6;
  *(v8 + 32) = a8;
  *(v8 + 153) = a7;
  *(v8 + 16) = a5;
  return MEMORY[0x2822009F8](sub_261E5EE24, 0, 0);
}

uint64_t sub_261E5EE24()
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v1 = sub_261E72468();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_27FEF68E0);
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Creating ErSSO store", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_261E5EF90;
  v6 = *(v0 + 153);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_261E677B0(v8, v7, v6);
}

uint64_t sub_261E5EF90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v3[16] = v1;
    v6 = swift_task_alloc();
    v3[17] = v6;
    *v6 = v5;
    v6[1] = sub_261E5F624;

    JUMPOUT(0x261E691C8);
  }

  return MEMORY[0x2822009F8](sub_261E5F120, 0, 0);
}

uint64_t sub_261E5F120()
{
  v16 = v0;
  v1 = *(v0 + 96);
  v2 = sub_261E6885C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  *(v0 + 104) = v2;
  sub_261E655B4(v2, (v0 + 152), &v15);
  if (v1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 152);

    sub_261E6BC0C();
    v5 = swift_allocError();
    *v6 = v4;

    *(v0 + 128) = v5;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_261E5F624;

    return sub_261E691C8();
  }

  else
  {
    v9 = *(v0 + 72);

    v10 = sub_261E72448();
    v11 = sub_261E72668();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261E36000, v10, v11, "Saving declarations to ErSSO store", v12, 2u);
      MEMORY[0x2667209A0](v12, -1, -1);
    }

    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_261E5F368;
    v14 = *(v0 + 88);

    return sub_261E68A04(v2, v14);
  }
}

uint64_t sub_261E5F368()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_261E5F56C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_261E5F484;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261E5F484()
{
  v1 = v0[9];
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Created ErSSO store", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];

  v7(0);
  v8 = v0[1];

  return v8();
}

uint64_t sub_261E5F56C()
{
  v1 = v0[13];
  v2 = v0[11];

  v0[16] = v0[15];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_261E5F624;

  return sub_261E691C8();
}

uint64_t sub_261E5F624()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_261E5F7C4;
  }

  else
  {
    v3 = sub_261E5F738;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E5F738()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261E5F7C4()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_261E72448();
  v5 = sub_261E72678();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_261E36000, v4, v5, "Failed to clean up ErSSO store: %@", v8, 0xCu);
    sub_261E6BFE8(v9, &qword_27FEF6298, &qword_261E75768);
    MEMORY[0x2667209A0](v9, -1, -1);
    MEMORY[0x2667209A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[16];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v12;
  v14(v12);

  v16 = v0[1];

  return v16();
}

uint64_t sub_261E5F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_261E614D4(a3, v26 - v10);
  v12 = sub_261E72628();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_261E6BFE8(v11, &qword_27FEF6260, &qword_261E756F0);
  }

  else
  {
    sub_261E72618();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_261E72608();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_261E724F8() + 32;
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

      sub_261E6BFE8(a3, &qword_27FEF6260, &qword_261E756F0);

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

  sub_261E6BFE8(a3, &qword_27FEF6260, &qword_261E756F0);
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

void sub_261E5FD64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_261E72418();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_261E5FDC8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_261E5FDEC, 0, 0);
}

uint64_t sub_261E5FDEC()
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v1 = sub_261E72468();
  *(v0 + 5) = __swift_project_value_buffer(v1, qword_27FEF68E0);
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Waiting for active and valid declarations in ErSSO store", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 6) = v5;
  *v5 = v0;
  v5[1] = sub_261E5FF50;
  v6 = v0[2];

  return sub_261E69AE8(v6);
}

uint64_t sub_261E5FF50()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_261E60144;
  }

  else
  {
    v3 = sub_261E60064;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E60064()
{
  v1 = v0[5];
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "ErSSO store ready", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = v0[3];
  v6 = v0[4];

  v5(0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_261E60144()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261E6033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x2822009F8](sub_261E6035C, 0, 0);
}

uint64_t sub_261E6035C()
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v1 = sub_261E72468();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27FEF68E0);
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Fetching extensible SSO profile identifiers", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_261E604BC;

  return sub_261E6A8E8();
}

uint64_t sub_261E604BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_261E60748;
  }

  else
  {
    v5 = sub_261E605D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261E605D0()
{
  v15 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = sub_261E72448();
  v4 = sub_261E72668();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x26671FFB0](v5, MEMORY[0x277D837D0]);
    v10 = sub_261E61E08(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261E36000, v3, v4, "ErSSO store profile identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2667209A0](v7, -1, -1);
    MEMORY[0x2667209A0](v6, -1, -1);
  }

  v11 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_261E60748()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

void sub_261E60814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_261E725B8();
    if (a2)
    {
LABEL_3:
      v6 = sub_261E72418();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_261E608AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v10;
  v8[7] = v11;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  return MEMORY[0x2822009F8](sub_261E608DC, 0, 0);
}

uint64_t sub_261E608DC()
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v1 = sub_261E72468();
  __swift_project_value_buffer(v1, qword_27FEF68E0);
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Linking ErSSO store to MDM", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_261E60A44;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_261E6ADA4(v9, v8, v6, v7);
}

uint64_t sub_261E60A44()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_261E60BC0;
  }

  else
  {
    v3 = sub_261E60B58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E60B58()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261E60BC0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261E60DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x2822009F8](sub_261E60E10, 0, 0);
}

uint64_t sub_261E60E10()
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v1 = sub_261E72468();
  __swift_project_value_buffer(v1, qword_27FEF68E0);
  v2 = sub_261E72448();
  v3 = sub_261E72668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, v3, "Removing ErSSO store", v4, 2u);
    MEMORY[0x2667209A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_261E60F6C;

  return sub_261E691C8();
}

uint64_t sub_261E60F6C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_261E610E8;
  }

  else
  {
    v3 = sub_261E61080;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E61080()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261E610E8()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261E611B0(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_261E72628();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = v16;
  v18[7] = ObjectType;
  v19 = a1;
  sub_261E5F950(0, 0, v14, a7, v18);
}

RMErSSOStore __swiftcall RMErSSOStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_261E61400(uint64_t a1)
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
  v10[1] = sub_261E6C5E8;

  return sub_261E60DF0(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_261E614D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261E61558(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6270, &qword_261E754E0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_261E61604(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6270, &qword_261E754E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_261E616F0(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6270, &qword_261E754E0);
    v9 = swift_allocError();
    *v10 = a3;
    v11 = a3;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    sub_261E5E524(0, a4, a5);
    **(*(v8 + 64) + 40) = sub_261E725C8();

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_261E617EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261E618E4;

  return v7(a1);
}

uint64_t sub_261E618E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261E619DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261E6C5E8;

  return sub_261E617EC(a1, v5);
}

uint64_t sub_261E61A94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261E61B4C;

  return sub_261E617EC(a1, v5);
}

uint64_t sub_261E61B4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_261E61C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62B8, &qword_261E75790);
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

void *sub_261E61D84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62B8, &qword_261E75790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_261E61E08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261E61ED4(v11, 0, 0, 1, a1, a2);
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
    sub_261E697F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_261E61ED4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_261E61FE0(a5, a6);
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
    result = sub_261E72708();
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

uint64_t sub_261E61FE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_261E6202C(a1, a2);
  sub_261E6215C(&unk_287470258);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261E6202C(uint64_t a1, unint64_t a2)
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

  v6 = sub_261E62248(v5, 0);
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

  result = sub_261E72708();
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
        v10 = sub_261E72528();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261E62248(v10, 0);
        result = sub_261E726E8();
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

uint64_t sub_261E6215C(uint64_t result)
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

  result = sub_261E622BC(result, v12, 1, v3);
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

void *sub_261E62248(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62A0, &qword_261E75788);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_261E622BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62A0, &qword_261E75788);
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

unint64_t sub_261E623B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_261E72818();
  sub_261E72518();
  v6 = sub_261E72838();

  return sub_261E624BC(a1, a2, v6);
}

unint64_t sub_261E62428(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_261E724D8();
  sub_261E72818();
  sub_261E72518();
  v4 = sub_261E72838();

  return sub_261E62574(a1, v4);
}

unint64_t sub_261E624BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_261E727A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_261E62574(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_261E724D8();
      v9 = v8;
      if (v7 == sub_261E724D8() && v9 == v10)
      {
        break;
      }

      v12 = sub_261E727A8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unsigned __int8 *sub_261E62678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_261E72588();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261E63A68();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261E72708();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
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

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
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

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

double sub_261E62C04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261E623B0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261E63744();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_261E5E7BC((*(v12 + 56) + 32 * v9), a3);
    sub_261E63230(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_261E62CA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6330, &qword_261E75530);
  v36 = a2;
  result = sub_261E72778();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_261E5E7BC(v25, v37);
      }

      else
      {
        sub_261E697F8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_261E72818();
      sub_261E72518();
      result = sub_261E72838();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_261E5E7BC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261E62F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6310, &qword_261E75810);
  v37 = a2;
  result = sub_261E72778();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_261E5E7BC(v23, v38);
      }

      else
      {
        sub_261E697F8(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_261E724D8();
      sub_261E72818();
      sub_261E72518();
      v26 = sub_261E72838();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_261E5E7BC(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261E63230(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261E726B8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_261E72818();

      sub_261E72518();
      v14 = sub_261E72838();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_261E633E0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_261E623B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_261E63744();
      v11 = v19;
      goto LABEL_8;
    }

    sub_261E62CA8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_261E623B0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_261E727C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_261E5E7BC(a1, v23);
  }

  else
  {
    sub_261E63670(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_261E63530(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_261E62428(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_261E638E8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_261E62F60(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_261E62428(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for RMStoreOptionKey();
      result = sub_261E727C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_261E5E7BC(a1, v20);
  }

  else
  {
    sub_261E636DC(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_261E63670(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261E5E7BC(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_261E636DC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_261E5E7BC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_261E63744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6330, &qword_261E75530);
  v2 = *v0;
  v3 = sub_261E72768();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_261E697F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_261E5E7BC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_261E638E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6310, &qword_261E75810);
  v2 = *v0;
  v3 = sub_261E72768();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_261E697F8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_261E5E7BC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_261E63A68()
{
  v0 = sub_261E72598();
  v4 = sub_261E63AE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_261E63AE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_261E72508();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_261E72698();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_261E62248(v9, 0);
  v12 = sub_261E63C40(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_261E72508();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_261E72708();
LABEL_4:

  return sub_261E72508();
}

unint64_t sub_261E63C40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_261E63E60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261E72558();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261E72708();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_261E63E60(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261E72538();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_261E63E60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261E72568();
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
    v5 = MEMORY[0x26671FF20](15, a1 >> 16);
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

uint64_t sub_261E63EDC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_261E63F88(char *a1, int64_t a2, char a3)
{
  result = sub_261E63FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261E63FA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62B8, &qword_261E75790);
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

uint64_t sub_261E640B4(uint64_t *a1, uint64_t *a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_261E64314(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v34 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v35 = v3;
    while (1)
    {
      while (1)
      {
        v13 = *(v5 + 16);
        if (v9 == v13)
        {
          return v8;
        }

        if (v9 >= v13)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v14 = v5 + 32;
        v15 = (v5 + 32 + 16 * v9);
        v16 = *v3;
        if (*(*v3 + 16))
        {
          break;
        }

LABEL_21:
        if (v8 != v9)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v26 = *(v5 + 16);
          if (v8 >= v26)
          {
            goto LABEL_37;
          }

          if (v9 >= v26)
          {
            goto LABEL_38;
          }

          v27 = (v14 + 16 * v8);
          v29 = *v27;
          v28 = v27[1];
          v30 = *v15;
          v31 = v15[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_261E6501C(v5);
          }

          v32 = (v5 + 32 + 16 * v8);
          v33 = v32[1];
          *v32 = v30;
          v32[1] = v31;

          if (v9 >= *(v5 + 16))
          {
            goto LABEL_39;
          }

          v10 = (v5 + 32 + 16 * v9);
          v11 = v10[1];
          *v10 = v29;
          v10[1] = v28;

          *v34 = v5;
        }

        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_35;
        }

        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_34;
        }
      }

      v36 = v5 + 32;
      v37 = v5;
      v18 = *v15;
      v17 = v15[1];
      v19 = *(v16 + 40);
      sub_261E72818();

      sub_261E72518();
      v20 = sub_261E72838();
      v21 = -1 << *(v16 + 32);
      v22 = v20 & ~v21;
      if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
LABEL_20:

        v3 = v35;
        v14 = v36;
        v5 = v37;
        goto LABEL_21;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v16 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v17;
        if (v25 || (sub_261E727A8() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v3 = v35;
      v5 = v37;
      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261E64314(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v17 = a1 + 32;
  v16 = a2;
  while (1)
  {
    v4 = *a2;
    if (!*(*a2 + 16))
    {
      goto LABEL_4;
    }

    v5 = (v17 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v4 + 40);
    sub_261E72818();

    sub_261E72518();
    v9 = sub_261E72838();
    v10 = -1 << *(v4 + 32);
    v11 = v9 & ~v10;
    if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_3:

    a2 = v16;
LABEL_4:
    if (++v3 == v2)
    {
      return 0;
    }
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v4 + 48) + 16 * v11);
    v14 = *v13 == v7 && v13[1] == v6;
    if (v14 || (sub_261E727A8() & 1) != 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v3;
}

uint64_t sub_261E64494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_261E72818();
  sub_261E72518();
  v9 = sub_261E72838();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_261E727A8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_261E64844(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261E645E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62D0, &qword_261E757C0);
  result = sub_261E726D8();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_261E72818();
      sub_261E72518();
      result = sub_261E72838();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_261E64844(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_261E645E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261E649C4();
      goto LABEL_16;
    }

    sub_261E64B20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_261E72818();
  sub_261E72518();
  result = sub_261E72838();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_261E727A8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_261E727B8();
  __break(1u);
  return result;
}

void *sub_261E649C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62D0, &qword_261E757C0);
  v2 = *v0;
  v3 = sub_261E726C8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_261E64B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62D0, &qword_261E757C0);
  result = sub_261E726D8();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_261E72818();

      sub_261E72518();
      result = sub_261E72838();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_261E64D58(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_261E6A51C(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_261E64DF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62C0, &qword_261E75798);
  result = sub_261E72788();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = v18[1];
    v33 = *v18;
    v20 = *(v9 + 40);
    v21 = v17;

    result = sub_261E72688();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    v30 = (*(v9 + 56) + 16 * v25);
    *v30 = v33;
    v30[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_261E65030(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_261E65188(uint64_t a1)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = objc_opt_self();
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D84F70];
    while (1)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      sub_261E6C0F8(v7, *v4);
      v8 = sub_261E72438();
      v31[0] = 0;
      v9 = [v29 JSONObjectWithData:v8 options:0 error:v31];

      if (!v9)
      {
        break;
      }

      v10 = v31[0];
      sub_261E726A8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6318, &qword_261E75818);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      sub_261E5E524(0, &qword_27FEF62D8, 0x277D46018);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = v5;
      v13 = sub_261E72478();

      v31[0] = 0;
      v14 = [ObjCClassFromMetadata load:v13 serializationType:1 error:v31];

      if (!v14)
      {
        v24 = v31[0];
        v25 = sub_261E72428();

        swift_willThrow();

        if (qword_27FEF6190 != -1)
        {
          swift_once();
        }

        v26 = sub_261E72468();
        __swift_project_value_buffer(v26, qword_27FEF68E0);
        v20 = sub_261E72448();
        v21 = sub_261E72678();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          v23 = "Cannot deserialize declaration";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      v15 = v31[0];
      v16 = v14;
      MEMORY[0x26671FF80]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261E725E8();
      }

      v4 += 2;
      sub_261E725F8();
      sub_261E6C14C(v7, v6);

      v1 = v30;
      --v2;
      v5 = v12;
      if (!v2)
      {
        goto LABEL_21;
      }
    }

    v17 = v31[0];
    v18 = sub_261E72428();

    swift_willThrow();
LABEL_11:

    if (qword_27FEF6190 != -1)
    {
      swift_once();
    }

    v19 = sub_261E72468();
    __swift_project_value_buffer(v19, qword_27FEF68E0);
    v20 = sub_261E72448();
    v21 = sub_261E72678();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Cannot deserialize declaration data";
LABEL_19:
      _os_log_impl(&dword_261E36000, v20, v21, v23, v22, 2u);
      MEMORY[0x2667209A0](v22, -1, -1);
    }

LABEL_20:

    LOBYTE(v31[0]) = 0;
    sub_261E6BC0C();
    swift_willThrowTypedImpl();
    sub_261E6C14C(v7, v6);
    v1 = 0;
  }

LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_261E655B4(unint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v122 = a2;
  v3 = a1;
  v132 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  v131 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_136;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_49:
    if (qword_27FEF6190 != -1)
    {
      swift_once();
    }

    v35 = sub_261E72468();
    __swift_project_value_buffer(v35, qword_27FEF68E0);
    v36 = sub_261E72448();
    v37 = sub_261E72678();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261E36000, v36, v37, "Missing activation", v38, 2u);
      MEMORY[0x2667209A0](v38, -1, -1);
    }

    v34 = 1;
    LOBYTE(v129[0]) = 1;
    sub_261E6BC0C();
    swift_willThrowTypedImpl();
    goto LABEL_146;
  }

LABEL_3:
  v120 = a3;
  v6 = 0;
  v7 = 0;
  v127 = (v3 & 0xFFFFFFFFFFFFFF8);
  a3 = MEMORY[0x277D84F90];
  v121 = MEMORY[0x277D84F90];
  v123 = MEMORY[0x277D84F90];
  v126 = v5;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2667200D0](v6, v3);
    }

    else
    {
      if (v6 >= *(v127 + 2))
      {
        goto LABEL_129;
      }

      v10 = *(v3 + 8 * v6 + 32);
    }

    v11 = v10;
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v5 = sub_261E72758();
      if (!v5)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      if (v7)
      {

        if (qword_27FEF6190 != -1)
        {
          swift_once();
        }

        v28 = sub_261E72468();
        __swift_project_value_buffer(v28, qword_27FEF68E0);
        v29 = sub_261E72448();
        v30 = sub_261E72678();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v7;
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_261E36000, v29, v30, "Only one activation allowed", v32, 2u);
          v33 = v32;
          v7 = v31;
          MEMORY[0x2667209A0](v33, -1, -1);
        }

        v34 = 3;
        goto LABEL_78;
      }

      v7 = v13;
      goto LABEL_10;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      v128 = a3;
      if (v8)
      {
        v125 = v7;
        v9 = v11;
        MEMORY[0x26671FF80]();
        if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261E725E8();
        }

        sub_261E725F8();

        v123 = v130;
        v7 = v125;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v96 = v7;

          if (qword_27FEF6190 != -1)
          {
            swift_once();
          }

          v97 = sub_261E72468();
          __swift_project_value_buffer(v97, qword_27FEF68E0);
          v98 = v11;
          v99 = sub_261E72448();
          v100 = sub_261E72678();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v129[0] = v102;
            *v101 = 136315138;
            v103 = [v98 declarationType];
            v104 = sub_261E724D8();
            v106 = v105;

            v107 = sub_261E61E08(v104, v106, v129);

            *(v101 + 4) = v107;
            _os_log_impl(&dword_261E36000, v99, v100, "Invalid configuration type: %s", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v102);
            MEMORY[0x2667209A0](v102, -1, -1);
            MEMORY[0x2667209A0](v101, -1, -1);
          }

          v34 = 6;
          LOBYTE(v129[0]) = 6;
          sub_261E6BC0C();
          swift_willThrowTypedImpl();

          goto LABEL_146;
        }

        v17 = v11;
        MEMORY[0x26671FF80]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v125 = v7;
          sub_261E725E8();
          v7 = v125;
        }

        sub_261E725F8();

        v121 = v131;
      }

      a3 = v128;
      goto LABEL_9;
    }

    v15 = [v14 payloadManifestURL];
    if (v15)
    {
      break;
    }

    v16 = v11;
    MEMORY[0x26671FF80]();
    if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v125 = v7;
      sub_261E725E8();
      v7 = v125;
    }

    sub_261E725F8();

    a3 = v132;
LABEL_9:
    v5 = v126;
LABEL_10:
    ++v6;
    if (v12 == v5)
    {
      if (!v7)
      {

        goto LABEL_49;
      }

      if (a3 >> 62)
      {
        if (sub_261E72758() < 1)
        {
LABEL_139:

          if (qword_27FEF6190 != -1)
          {
            swift_once();
          }

          v112 = sub_261E72468();
          __swift_project_value_buffer(v112, qword_27FEF68E0);
          v113 = sub_261E72448();
          v114 = sub_261E72678();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = v7;
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&dword_261E36000, v113, v114, "Missing configuration", v116, 2u);
            v117 = v116;
            v7 = v115;
            MEMORY[0x2667209A0](v117, -1, -1);
          }

          v34 = 4;
          goto LABEL_144;
        }
      }

      else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_139;
      }

      v119 = a3 >> 62;
      if (a3 >> 62)
      {
        v18 = sub_261E72758();
      }

      else
      {
        v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v128 = a3;
      v125 = v7;
      if (!v18)
      {
LABEL_54:
        if (v119)
        {
          v61 = v128;
          v39 = v128 & 0xFFFFFFFFFFFFFF8;
          a3 = sub_261E72758();
          v40 = v61 & 0xC000000000000001;
          if (a3)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v39 = v128 & 0xFFFFFFFFFFFFFF8;
          a3 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v40 = v128 & 0xC000000000000001;
          if (a3)
          {
LABEL_56:
            v41 = 0;
            v42 = MEMORY[0x277D84F90];
            v3 = &__block_descriptor_48_e8_32s40bs_e46_v32__0__NSArray_8__NSDictionary_16__NSError_24ls40l8s32l8;
            do
            {
              v43 = v41;
              while (1)
              {
                if (v40)
                {
                  v44 = MEMORY[0x2667200D0](v43, v128);
                  v41 = v43 + 1;
                  if (__OFADD__(v43, 1))
                  {
                    goto LABEL_130;
                  }
                }

                else
                {
                  if (v43 >= *(v39 + 16))
                  {
                    goto LABEL_131;
                  }

                  v44 = *(v128 + 8 * v43 + 32);
                  v41 = v43 + 1;
                  if (__OFADD__(v43, 1))
                  {
                    goto LABEL_130;
                  }
                }

                v45 = v44;
                v46 = [v45 payloadAppStoreID];
                if (v46)
                {
                  break;
                }

                ++v43;
                if (v41 == a3)
                {
                  goto LABEL_81;
                }
              }

              v47 = v46;
              v48 = sub_261E724D8();
              v127 = v49;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_261E61C78(0, *(v42 + 2) + 1, 1, v42);
              }

              v51 = *(v42 + 2);
              v50 = *(v42 + 3);
              if (v51 >= v50 >> 1)
              {
                v42 = sub_261E61C78((v50 > 1), v51 + 1, 1, v42);
              }

              *(v42 + 2) = v51 + 1;
              v52 = &v42[16 * v51];
              v53 = v127;
              *(v52 + 4) = v48;
              *(v52 + 5) = v53;
              v7 = v125;
            }

            while (v41 != a3);
LABEL_81:
            if (a3)
            {
              v62 = 0;
              v127 = MEMORY[0x277D84F90];
              v3 = &__block_descriptor_48_e8_32s40bs_e46_v32__0__NSArray_8__NSDictionary_16__NSError_24ls40l8s32l8;
              do
              {
                v63 = v62;
                while (1)
                {
                  if (v40)
                  {
                    v64 = MEMORY[0x2667200D0](v63, v128);
                    v62 = v63 + 1;
                    if (__OFADD__(v63, 1))
                    {
                      goto LABEL_132;
                    }
                  }

                  else
                  {
                    if (v63 >= *(v39 + 16))
                    {
                      goto LABEL_133;
                    }

                    v64 = *(v128 + 8 * v63 + 32);
                    v62 = v63 + 1;
                    if (__OFADD__(v63, 1))
                    {
                      goto LABEL_132;
                    }
                  }

                  v65 = v64;
                  v66 = [v65 payloadBundleID];
                  if (v66)
                  {
                    break;
                  }

                  ++v63;
                  if (v62 == a3)
                  {
                    goto LABEL_105;
                  }
                }

                v67 = v66;
                v68 = sub_261E724D8();
                v126 = v69;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v127 = sub_261E61C78(0, *(v127 + 2) + 1, 1, v127);
                }

                v71 = *(v127 + 2);
                v70 = *(v127 + 3);
                if (v71 >= v70 >> 1)
                {
                  v127 = sub_261E61C78((v70 > 1), v71 + 1, 1, v127);
                }

                v73 = v126;
                v72 = v127;
                *(v127 + 2) = v71 + 1;
                v74 = &v72[16 * v71];
                *(v74 + 4) = v68;
                *(v74 + 5) = v73;
                v7 = v125;
              }

              while (v62 != a3);
            }

            else
            {
              v127 = MEMORY[0x277D84F90];
            }

LABEL_105:
            if (v119)
            {
              v86 = sub_261E72758();
            }

            else
            {
              v86 = *(v39 + 16);
            }

            v87 = v123;
            v88 = *(v42 + 2);
            if (v86 <= 1)
            {
              if (v88)
              {
                v95 = *(v42 + 4);
                v88 = *(v42 + 5);
              }

              else
              {
                v95 = 0;
              }

              if (v87 >> 62)
              {
                v108 = sub_261E72758();
              }

              else
              {
LABEL_126:
                v108 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            else
            {

              if (v88)
              {

                if (qword_27FEF6190 != -1)
                {
                  swift_once();
                }

                v89 = sub_261E72468();
                __swift_project_value_buffer(v89, qword_27FEF68E0);
                v90 = sub_261E72448();
                v91 = sub_261E72678();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = v7;
                  v93 = swift_slowAlloc();
                  *v93 = 0;
                  _os_log_impl(&dword_261E36000, v90, v91, "Using AppStoreID requires only one configuration be present", v93, 2u);
                  v94 = v93;
                  v7 = v92;
                  MEMORY[0x2667209A0](v94, -1, -1);
                }

                v34 = 7;
LABEL_144:
                LOBYTE(v129[0]) = v34;
                sub_261E6BC0C();
                swift_willThrowTypedImpl();
                goto LABEL_145;
              }

              if (!(v87 >> 62))
              {
                v95 = 0;
                v88 = 0;
                goto LABEL_126;
              }

              v108 = sub_261E72758();
              v95 = 0;
              v88 = 0;
            }

            v109 = v120;
            v110 = v128;
            *v120 = v7;
            v109[1] = v110;
            v109[2] = v121;
            v109[3] = v95;
            v111 = v127;
            v109[4] = v88;
            v109[5] = v111;
            v109[6] = v108;
            return;
          }
        }

        v42 = MEMORY[0x277D84F90];
        goto LABEL_81;
      }

      a3 = 0;
      v126 = v128 & 0xFFFFFFFFFFFFFF8;
      v127 = (v128 & 0xC000000000000001);
      while (1)
      {
        if (v127)
        {
          v19 = MEMORY[0x2667200D0](a3, v128);
        }

        else
        {
          if (a3 >= *(v126 + 16))
          {
            goto LABEL_135;
          }

          v19 = *(v128 + 8 * a3 + 32);
        }

        v20 = v19;
        v21 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_134;
        }

        v22 = [v7 payloadStandardConfigurations];
        v23 = sub_261E725C8();

        v24 = [v20 declarationIdentifier];
        v3 = sub_261E724D8();
        v26 = v25;

        v129[0] = v3;
        v129[1] = v26;
        MEMORY[0x28223BE20]();
        v118[2] = v129;
        v27 = v124;
        LOBYTE(v24) = sub_261E63EDC(sub_261E6C0A0, v118, v23);
        v124 = v27;

        if ((v24 & 1) == 0)
        {

          if (qword_27FEF6190 != -1)
          {
            swift_once();
          }

          v75 = sub_261E72468();
          __swift_project_value_buffer(v75, qword_27FEF68E0);
          v76 = v20;
          v77 = sub_261E72448();
          v78 = sub_261E72678();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v129[0] = v80;
            *v79 = 136315138;
            v81 = [v76 declarationIdentifier];
            v82 = sub_261E724D8();
            v84 = v83;

            v85 = sub_261E61E08(v82, v84, v129);

            *(v79 + 4) = v85;
            _os_log_impl(&dword_261E36000, v77, v78, "Activation does not reference configuration: %s", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v80);
            MEMORY[0x2667209A0](v80, -1, -1);
            MEMORY[0x2667209A0](v79, -1, -1);
          }

          v34 = 2;
          LOBYTE(v129[0]) = 2;
          sub_261E6BC0C();
          swift_willThrowTypedImpl();

          goto LABEL_146;
        }

        ++a3;
        v7 = v125;
        if (v21 == v18)
        {
          goto LABEL_54;
        }
      }
    }
  }

  v54 = v15;

  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v55 = sub_261E72468();
  __swift_project_value_buffer(v55, qword_27FEF68E0);
  v56 = sub_261E72448();
  v57 = sub_261E72678();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v7;
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_261E36000, v56, v57, "Configuration can't use manifest", v59, 2u);
    v60 = v59;
    v7 = v58;
    MEMORY[0x2667209A0](v60, -1, -1);
  }

  v34 = 5;
LABEL_78:
  LOBYTE(v129[0]) = v34;
  sub_261E6BC0C();
  swift_willThrowTypedImpl();

LABEL_145:
LABEL_146:
  *v122 = v34;
}

unsigned __int8 *sub_261E665B4(uint64_t a1)
{
  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v3 = sub_261E72468();
  __swift_project_value_buffer(v3, qword_27FEF68E0);
  v4 = sub_261E72448();
  v5 = sub_261E72668();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261E36000, v4, v5, "Load ErSSO app details", v6, 2u);
    MEMORY[0x2667209A0](v6, -1, -1);
  }

  v7 = sub_261E65188(a1);
  v8 = v7;
  if (v1)
  {
    sub_261E6BC0C();
    swift_allocError();
    *v9 = v8;
    return v5;
  }

  sub_261E655B4(v7, &v124, &v117);
  v12 = *(&v117 + 1);
  v11 = v117;
  v13 = v118;
  v113 = v119;
  v14 = v120;
  v15 = v121;
  v111 = v122;

  v16 = v11;

  v17 = sub_261E72448();
  v18 = sub_261E72658();

  v112 = v14;
  if (!os_log_type_enabled(v17, v18))
  {

    goto LABEL_45;
  }

  v114 = v13;
  v123 = v18;
  log = v17;
  v19 = swift_slowAlloc();
  v106 = swift_slowAlloc();
  *&v117 = v106;
  *v19 = 136316418;
  v20 = [v16 declarationIdentifier];
  v21 = sub_261E724D8();
  v23 = v22;

  v24 = sub_261E61E08(v21, v23, &v117);

  *(v19 + 4) = v24;
  v110 = v19;
  *(v19 + 12) = 2080;
  if (v12 >> 62)
  {
    v25 = sub_261E72758();
  }

  else
  {
    v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  v109 = v16;
  v108 = v15;
  if (v25)
  {
    *&v115[0] = MEMORY[0x277D84F90];
    v27 = v115;
    sub_261E63F88(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      goto LABEL_122;
    }

    v15 = 0;
    v28 = *&v115[0];
    v29 = v12;
    v30 = v25;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2667200D0](v15, v29);
      }

      else
      {
        v31 = *(v29 + 8 * v15 + 32);
      }

      v32 = v31;
      v33 = [v32 declarationIdentifier];
      v23 = sub_261E724D8();
      v35 = v34;

      *&v115[0] = v28;
      v16 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v16 >= v36 >> 1)
      {
        sub_261E63F88((v36 > 1), v16 + 1, 1);
        v28 = *&v115[0];
      }

      ++v15;
      *(v28 + 16) = v16 + 1;
      v37 = v28 + 16 * v16;
      *(v37 + 32) = v23;
      *(v37 + 40) = v35;
      v29 = v12;
    }

    while (v30 != v15);

    v26 = MEMORY[0x277D84F90];
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *&v115[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6320, &unk_261E75820);
  sub_261E6C1A0();
  v38 = sub_261E72498();
  v40 = v39;

  v41 = sub_261E61E08(v38, v40, &v117);

  *(v110 + 14) = v41;
  *(v110 + 22) = 2080;
  v42 = v114;
  if (v114 >> 62)
  {
    v43 = sub_261E72758();
    v42 = v114;
    if (v43)
    {
LABEL_26:
      v44 = v42;
      *&v115[0] = v26;
      v27 = v115;
      sub_261E63F88(0, v43 & ~(v43 >> 63), 0);
      if ((v43 & 0x8000000000000000) == 0)
      {
        v45 = 0;
        v46 = *&v115[0];
        v47 = v44;
        v48 = v44 & 0xC000000000000001;
        do
        {
          if (v48)
          {
            v49 = MEMORY[0x2667200D0](v45, v47);
          }

          else
          {
            v49 = *(v47 + 8 * v45 + 32);
          }

          v50 = v49;
          v51 = [v50 declarationIdentifier];
          v52 = sub_261E724D8();
          v54 = v53;

          *&v115[0] = v46;
          v56 = *(v46 + 16);
          v55 = *(v46 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_261E63F88((v55 > 1), v56 + 1, 1);
            v46 = *&v115[0];
          }

          ++v45;
          *(v46 + 16) = v56 + 1;
          v57 = v46 + 16 * v56;
          *(v57 + 32) = v52;
          *(v57 + 40) = v54;
          v47 = v114;
        }

        while (v43 != v45);

        goto LABEL_38;
      }

LABEL_122:
      __break(1u);
      goto LABEL_123;
    }
  }

  else
  {
    v43 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_26;
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_38:
  *&v115[0] = v46;
  v58 = sub_261E72498();
  v60 = v59;

  v61 = sub_261E61E08(v58, v60, &v117);

  *(v110 + 24) = v61;
  *(v110 + 32) = 2080;
  if (v112)
  {
    v62 = v113;
  }

  else
  {
    v62 = 45;
  }

  if (v112)
  {
    v63 = v112;
  }

  else
  {
    v63 = 0xE100000000000000;
  }

  v64 = sub_261E61E08(v62, v63, &v117);

  *(v110 + 34) = v64;
  *(v110 + 42) = 2080;
  v14 = v112;
  v15 = v108;
  *&v115[0] = v108;
  v65 = sub_261E72498();
  v67 = sub_261E61E08(v65, v66, &v117);

  *(v110 + 44) = v67;
  *(v110 + 52) = 2048;
  *(v110 + 54) = v111;
  _os_log_impl(&dword_261E36000, log, v123, "ErSSO declarations:\n    Activation: %s\n    Configurations: %s\n    Assets: %s\n    AppStoreID: %s\n    BundleIDs: %s\n    Profiles: %ld", v110, 0x3Eu);
  swift_arrayDestroy();
  MEMORY[0x2667209A0](v106, -1, -1);
  MEMORY[0x2667209A0](v110, -1, -1);

  v16 = v109;
LABEL_45:
  v68 = sub_261E5E344(MEMORY[0x277D84F90]);
  v116 = v68;
  if (!v14)
  {
    goto LABEL_112;
  }

  v27 = v68;
  v23 = v15;
  v69 = *MEMORY[0x277D03210];
  v12 = sub_261E724D8();
  v15 = v70;
  v71 = HIBYTE(v14) & 0xF;
  result = v113;
  v72 = v113 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v73 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v73 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {

    goto LABEL_109;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v75 = sub_261E62678(v113, v14, 10);
    v93 = v105;
LABEL_108:

    if ((v93 & 1) == 0)
    {
      v119 = MEMORY[0x277D83B88];
      *&v117 = v75;
      sub_261E5E7BC(&v117, v115);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_261E633E0(v115, v12, v15, isUniquelyReferenced_nonNull_native);

      v116 = v27;
      goto LABEL_111;
    }

LABEL_109:
    sub_261E62C04(v12, v15, &v117);

    sub_261E6BFE8(&v117, &qword_27FEF6280, &qword_261E75748);
LABEL_111:
    v15 = v23;
LABEL_112:
    if (*(v15 + 16))
    {
      v95 = *MEMORY[0x277D03218];
      v96 = sub_261E724D8();
      v98 = v97;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6320, &unk_261E75820);
      *&v117 = v15;
      sub_261E5E7BC(&v117, v115);
      v99 = v116;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      sub_261E633E0(v115, v96, v98, v100);

      v5 = v99;
      if (*(v99 + 16))
      {
LABEL_114:

        return v5;
      }
    }

    else
    {

      v5 = v116;
      if (*(v116 + 2))
      {
        goto LABEL_114;
      }
    }

    v101 = sub_261E72448();
    v102 = sub_261E72678();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_261E36000, v101, v102, "Configurations do not specify a usable app", v103, 2u);
      MEMORY[0x2667209A0](v103, -1, -1);
    }

    sub_261E6BC0C();
    v5 = swift_allocError();
    *v104 = 5;
    swift_willThrow();

    return v5;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((v113 & 0x1000000000000000) != 0)
    {
      result = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_54:
      v74 = *result;
      if (v74 == 43)
      {
        if (v72 >= 1)
        {
          v71 = v72 - 1;
          if (v72 != 1)
          {
            v75 = 0;
            if (result)
            {
              v82 = result + 1;
              while (1)
              {
                v83 = *v82 - 48;
                if (v83 > 9)
                {
                  goto LABEL_106;
                }

                v84 = 10 * v75;
                if ((v75 * 10) >> 64 != (10 * v75) >> 63)
                {
                  goto LABEL_106;
                }

                v75 = v84 + v83;
                if (__OFADD__(v84, v83))
                {
                  goto LABEL_106;
                }

                ++v82;
                if (!--v71)
                {
                  goto LABEL_107;
                }
              }
            }

            goto LABEL_98;
          }

          goto LABEL_106;
        }

        goto LABEL_126;
      }

      if (v74 != 45)
      {
        if (v72)
        {
          v75 = 0;
          if (result)
          {
            while (1)
            {
              v88 = *result - 48;
              if (v88 > 9)
              {
                goto LABEL_106;
              }

              v89 = 10 * v75;
              if ((v75 * 10) >> 64 != (10 * v75) >> 63)
              {
                goto LABEL_106;
              }

              v75 = v89 + v88;
              if (__OFADD__(v89, v88))
              {
                goto LABEL_106;
              }

              ++result;
              if (!--v72)
              {
                goto LABEL_98;
              }
            }
          }

          goto LABEL_98;
        }

LABEL_106:
        v75 = 0;
        LOBYTE(v71) = 1;
        goto LABEL_107;
      }

      if (v72 >= 1)
      {
        v71 = v72 - 1;
        if (v72 != 1)
        {
          v75 = 0;
          if (result)
          {
            v76 = result + 1;
            while (1)
            {
              v77 = *v76 - 48;
              if (v77 > 9)
              {
                goto LABEL_106;
              }

              v78 = 10 * v75;
              if ((v75 * 10) >> 64 != (10 * v75) >> 63)
              {
                goto LABEL_106;
              }

              v75 = v78 - v77;
              if (__OFSUB__(v78, v77))
              {
                goto LABEL_106;
              }

              ++v76;
              if (!--v71)
              {
                goto LABEL_107;
              }
            }
          }

LABEL_98:
          LOBYTE(v71) = 0;
LABEL_107:
          LOBYTE(v115[0]) = v71;
          v93 = v71;
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

LABEL_123:
    result = sub_261E72708();
    goto LABEL_54;
  }

  *&v117 = v113;
  *(&v117 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
  if (v113 != 43)
  {
    if (v113 != 45)
    {
      if (v71)
      {
        v75 = 0;
        v90 = &v117;
        while (1)
        {
          v91 = *v90 - 48;
          if (v91 > 9)
          {
            break;
          }

          v92 = 10 * v75;
          if ((v75 * 10) >> 64 != (10 * v75) >> 63)
          {
            break;
          }

          v75 = v92 + v91;
          if (__OFADD__(v92, v91))
          {
            break;
          }

          ++v90;
          if (!--v71)
          {
            goto LABEL_107;
          }
        }
      }

      goto LABEL_106;
    }

    if (v71)
    {
      if (--v71)
      {
        v75 = 0;
        v79 = &v117 + 1;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v75;
          if ((v75 * 10) >> 64 != (10 * v75) >> 63)
          {
            break;
          }

          v75 = v81 - v80;
          if (__OFSUB__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v71)
          {
            goto LABEL_107;
          }
        }
      }

      goto LABEL_106;
    }

    goto LABEL_125;
  }

  if (v71)
  {
    if (--v71)
    {
      v75 = 0;
      v85 = &v117 + 1;
      while (1)
      {
        v86 = *v85 - 48;
        if (v86 > 9)
        {
          break;
        }

        v87 = 10 * v75;
        if ((v75 * 10) >> 64 != (10 * v75) >> 63)
        {
          break;
        }

        v75 = v87 + v86;
        if (__OFADD__(v87, v86))
        {
          break;
        }

        ++v85;
        if (!--v71)
        {
          goto LABEL_107;
        }
      }
    }

    goto LABEL_106;
  }

LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_261E671B4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261E67240, 0, 0);
}

uint64_t sub_261E67240()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_261E673A0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6278, &qword_261E75740);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_261E61544;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 storesWithScope:1 completionHandler:v0 + 10];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_261E673A0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_261E67718;
  }

  else
  {
    v3 = sub_261E674DC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E674DC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 144);
  v2 = *(v0 + 144);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261E72758())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2667200D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = sub_261E724A8();
      *v1 = 0;
      v9 = [v6 metadataValueForKey:v8 error:v1];

      v10 = *v1;
      if (v9)
      {

        sub_261E726A8();
        swift_unknownObjectRelease();
        sub_261E6BFE8((v1 - 8), &qword_27FEF6280, &qword_261E75748);
        goto LABEL_17;
      }

      v11 = v10;
      v12 = sub_261E72428();

      swift_willThrow();
      *(v1 - 4) = 0u;
      *(v1 - 3) = 0u;
      sub_261E6BFE8((v1 - 8), &qword_27FEF6280, &qword_261E75748);
      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v6 = 0;
LABEL_17:
  v13 = *(v16 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13(v6);
}

uint64_t sub_261E67718()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);
  v4 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_261E677B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 480) = a3;
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;
  v4 = swift_task_alloc();
  *(v3 + 432) = v4;
  *v4 = v3;
  v4[1] = sub_261E67858;

  return sub_261E671B4();
}

uint64_t sub_261E67858(uint64_t a1)
{
  v3 = *(*v2 + 432);
  v4 = *v2;
  *(v4 + 440) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261E6798C, 0, 0);
}

uint64_t sub_261E6798C()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    v2 = qword_27FEF6190;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_261E72468();
    __swift_project_value_buffer(v4, qword_27FEF68E0);
    v5 = sub_261E72448();
    v6 = sub_261E72678();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261E36000, v5, v6, "ErSSO store exists - removing it", v7, 2u);
      MEMORY[0x2667209A0](v7, -1, -1);
    }

    v8 = [v3 identifier];
    if (!v8)
    {
      sub_261E724D8();
      v8 = sub_261E724A8();
    }

    *(v0 + 448) = v8;
    v9 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_261E67E5C;
    v10 = swift_continuation_init();
    *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
    *(v0 + 280) = MEMORY[0x277D85DD0];
    *(v0 + 288) = 1107296256;
    *(v0 + 296) = sub_261E61558;
    *(v0 + 304) = &block_descriptor_95;
    *(v0 + 312) = v10;
    [v9 removeStoreWithIdentifier:v8 scope:1 completionHandler:v0 + 280];
    v11 = v0 + 80;
  }

  else
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 424);
    v14 = [objc_opt_self() currentManagedDevice];
    v15 = [v14 isSupervised];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62E0, &qword_261E757E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261E754C0;
    *(inited + 32) = @"rmstore.meta.data";
    v17 = @"rmstore.meta.data";
    v18 = sub_261E5E580(&unk_287470280);
    sub_261E6BFE8(&unk_2874702A0, &qword_27FEF62E8, &qword_261E757F0);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF62F0, &unk_261E757F8);
    *(inited + 40) = v18;
    sub_261E5E694(inited);
    swift_setDeallocating();
    sub_261E6BFE8(inited + 32, &qword_27FEF61B8, &qword_261E75520);
    if (v13)
    {
      v19 = *(v0 + 416);
      v20 = *(v0 + 424);
      *(v0 + 368) = MEMORY[0x277D837D0];
      *(v0 + 344) = v19;
      *(v0 + 352) = v20;
      sub_261E5E7BC((v0 + 344), (v0 + 376));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_261E63530((v0 + 376), @"rmstore.persona.identifier", isUniquelyReferenced_nonNull_native);
    }

    v22 = v13 != 0;
    if (v15)
    {
      v23 = 3;
    }

    else
    {
      v23 = v12 ^ 1u;
    }

    v24 = objc_opt_self();
    type metadata accessor for RMStoreOptionKey();
    sub_261E6C048();
    v25 = sub_261E72478();
    *(v0 + 464) = v25;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 408;
    *(v0 + 24) = sub_261E68278;
    v26 = swift_continuation_init();
    *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6308, &qword_261E75808);
    *(v0 + 216) = MEMORY[0x277D85DD0];
    *(v0 + 224) = 1107296256;
    *(v0 + 232) = sub_261E61604;
    *(v0 + 240) = &block_descriptor_91;
    *(v0 + 248) = v26;
    [v24 createStoreWithType:v23 scope:1 defaultToInteractive:0 dataSeparated:v22 options:v25 completionHandler:v0 + 216];
    v11 = v0 + 16;
  }

  return MEMORY[0x282200938](v11);
}

uint64_t sub_261E67E5C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 456) = v3;
  if (v3)
  {

    v4 = sub_261E683FC;
  }

  else
  {
    v4 = sub_261E67F74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261E67F74()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 480);
  v3 = *(v0 + 424);
  v4 = [objc_opt_self() currentManagedDevice];
  v5 = [v4 isSupervised];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62E0, &qword_261E757E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261E754C0;
  *(inited + 32) = @"rmstore.meta.data";
  v7 = @"rmstore.meta.data";
  v8 = sub_261E5E580(&unk_287470280);
  sub_261E6BFE8(&unk_2874702A0, &qword_27FEF62E8, &qword_261E757F0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF62F0, &unk_261E757F8);
  *(inited + 40) = v8;
  sub_261E5E694(inited);
  swift_setDeallocating();
  sub_261E6BFE8(inited + 32, &qword_27FEF61B8, &qword_261E75520);
  if (v3)
  {
    v9 = *(v0 + 416);
    v10 = *(v0 + 424);
    *(v0 + 368) = MEMORY[0x277D837D0];
    *(v0 + 344) = v9;
    *(v0 + 352) = v10;
    sub_261E5E7BC((v0 + 344), (v0 + 376));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_261E63530((v0 + 376), @"rmstore.persona.identifier", isUniquelyReferenced_nonNull_native);
  }

  v12 = v3 != 0;
  if (v5)
  {
    v13 = 3;
  }

  else
  {
    v13 = v2 ^ 1u;
  }

  v14 = objc_opt_self();
  type metadata accessor for RMStoreOptionKey();
  sub_261E6C048();
  v15 = sub_261E72478();
  *(v0 + 464) = v15;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 408;
  *(v0 + 24) = sub_261E68278;
  v16 = swift_continuation_init();
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6308, &qword_261E75808);
  *(v0 + 216) = MEMORY[0x277D85DD0];
  *(v0 + 224) = 1107296256;
  *(v0 + 232) = sub_261E61604;
  *(v0 + 240) = &block_descriptor_91;
  *(v0 + 248) = v16;
  [v14 createStoreWithType:v13 scope:1 defaultToInteractive:0 dataSeparated:v12 options:v15 completionHandler:v0 + 216];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_261E68278()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 472) = v2;
  if (v2)
  {
    v3 = sub_261E68474;
  }

  else
  {
    v3 = sub_261E68388;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E68388()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 408);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_261E683FC()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  swift_willThrow();

  v4 = v0[57];
  v5 = v0[1];

  return v5();
}

uint64_t sub_261E68474()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[55];
  swift_willThrow();

  v4 = v0[59];
  v5 = v0[1];

  return v5();
}

uint64_t sub_261E684EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = a1;
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261E72758())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v38 = v5 & 0xFFFFFFFFFFFFFF8;
    v33 = v5 & 0xC000000000000001;
    v34 = v5;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x2667200D0](v7, v5);
      }

      else
      {
        if (v7 >= *(v38 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = v12;
        v17 = [v15 payloadAppStoreID];
        if (v17)
        {
          v9 = v17;
        }

        else
        {
          v18 = [v15 payloadBundleID];
          if (!v18)
          {
            goto LABEL_21;
          }

          v19 = v18;
          v20 = i;
          v21 = sub_261E724D8();
          v23 = v22;

          if (v21 == a2 && v23 == a3)
          {

            i = v20;
            v8 = v33;
            v5 = v34;
          }

          else
          {
            v27 = sub_261E727A8();

            i = v20;
            v8 = v33;
            v5 = v34;
            if ((v27 & 1) == 0)
            {
LABEL_21:
              v28 = [v15 declarationIdentifier];
              v29 = sub_261E724D8();
              v31 = v30;

              sub_261E64494(&v39, v29, v31);

              goto LABEL_6;
            }
          }
        }
      }

      else
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = *a5;
          *a5 = v24;
          v26 = v12;
        }
      }

      sub_261E72718();
      v10 = *(v40 + 16);
      sub_261E72738();
      sub_261E72748();
      sub_261E72728();
LABEL_6:
      ++v7;
      if (v13 == i)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_261E6879C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_261E6885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = MEMORY[0x277D84FA0];

  v6 = sub_261E684EC(v5, a2, a3, &v20, &v19);

  if (!v19)
  {
    goto LABEL_14;
  }

  if (!*(v20 + 16))
  {

LABEL_14:

    return v6;
  }

  v7 = v19;
  v8 = [v7 payloadStandardConfigurations];
  v9 = sub_261E725C8();

  v18 = v9;
  result = sub_261E640B4(&v18, &v20);
  v11 = v18;
  v12 = *(v18 + 2);
  if (result > v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  if (!__OFADD__(v12, result - v12))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 > *(v11 + 24) >> 1)
    {
      if (v12 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      v18 = sub_261E61C78(isUniquelyReferenced_nonNull_native, v16, 1, v11);
    }

    sub_261E6879C(v13, v12, 0);
    v17 = sub_261E725B8();

    [v7 setPayloadStandardConfigurations_];

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261E68A04(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x2822009F8](sub_261E68A24, 0, 0);
}

uint64_t sub_261E68A24()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[26];
    }

    v2 = sub_261E72758();
    v0[28] = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = v0[27];
    v0[10] = v0;
    v0[11] = sub_261E68FC0;
    v10 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_261E61558;
    v0[21] = &block_descriptor_85;
    v0[22] = v10;
    [v9 applyChangesWithCompletionHandler_];
    v2 = (v0 + 10);
    goto LABEL_11;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[28] = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[26];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2667200D0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x282200938](v2);
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;
  v0[29] = v4;
  v0[30] = 1;
  v6 = v0[27];
  v0[2] = v0;
  v0[3] = sub_261E68C70;
  v7 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_261E61558;
  v0[21] = &block_descriptor_82;
  v0[22] = v7;
  [v6 saveDeclaration:v5 completionHandler:v0 + 18];
  v2 = (v0 + 2);
LABEL_11:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_261E68C70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_261E690E8;
  }

  else
  {
    v3 = sub_261E68D80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E68D80()
{
  v1 = v0[30];
  v2 = v0[28];

  if (v1 == v2)
  {
    v4 = v0[27];
    v0[10] = v0;
    v0[11] = sub_261E68FC0;
    v5 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_261E61558;
    v0[21] = &block_descriptor_85;
    v0[22] = v5;
    [v4 applyChangesWithCompletionHandler_];
    v3 = v0 + 10;
    goto LABEL_8;
  }

  v6 = v0[30];
  v7 = v0[26];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2667200D0](v0[30]);
  }

  else
  {
    if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      __break(1u);
      return MEMORY[0x282200938](v3);
    }

    v3 = *(v7 + 8 * v6 + 32);
  }

  v8 = v3;
  v0[29] = v3;
  v0[30] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[27];
  v0[2] = v0;
  v0[3] = sub_261E68C70;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_261E61558;
  v0[21] = &block_descriptor_82;
  v0[22] = v10;
  [v9 saveDeclaration:v8 completionHandler:v0 + 18];
  v3 = v0 + 2;
LABEL_8:

  return MEMORY[0x282200938](v3);
}

uint64_t sub_261E68FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_261E6915C;
  }

  else
  {
    v3 = sub_261E690D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E690E8()
{
  v1 = v0[31];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

uint64_t sub_261E6915C()
{
  v1 = *(v0 + 256);
  swift_willThrow();
  v2 = *(v0 + 256);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261E691C8()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_261E69268;

  return sub_261E671B4();
}

uint64_t sub_261E69268(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  *(v4 + 152) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261E6939C, 0, 0);
}

uint64_t sub_261E6939C()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      sub_261E724D8();
      v2 = sub_261E724A8();
    }

    v0[20] = v2;
    v3 = objc_opt_self();
    v0[2] = v0;
    v0[3] = sub_261E695F8;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_261E61558;
    v0[13] = &block_descriptor;
    v0[14] = v4;
    [v3 removeStoreWithIdentifier:v2 scope:1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27FEF6190 != -1)
    {
      swift_once();
    }

    v5 = sub_261E72468();
    __swift_project_value_buffer(v5, qword_27FEF68E0);
    v6 = sub_261E72448();
    v7 = sub_261E72678();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261E36000, v6, v7, "ErSSO store does not exist - ignoring", v8, 2u);
      MEMORY[0x2667209A0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_261E695F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_261E69770;
  }

  else
  {
    v3 = sub_261E69708;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E69708()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261E69770()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[21];
  v5 = v0[1];

  return v5();
}

uint64_t sub_261E697F8(uint64_t a1, uint64_t a2)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_261E69950(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_261E6C5E8;

  return sub_261E608AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_261E69A50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266720020](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_261E64494(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261E69AE8(double a1)
{
  *(v1 + 280) = a1;
  v2 = swift_task_alloc();
  *(v1 + 288) = v2;
  *v2 = v1;
  v2[1] = sub_261E69B8C;

  return sub_261E671B4();
}

uint64_t sub_261E69B8C(uint64_t a1)
{
  v3 = *(*v2 + 288);
  v4 = *v2;
  *(v4 + 296) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261E69CC0, 0, 0);
}

uint64_t sub_261E69CC0()
{
  v1 = v0[37];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_261E69F00;
    v2 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF62C8, &qword_261E757B8);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_261E616DC;
    v0[21] = &block_descriptor_64;
    v0[22] = v2;
    [v1 declarationsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27FEF6190 != -1)
    {
      swift_once();
    }

    v3 = sub_261E72468();
    __swift_project_value_buffer(v3, qword_27FEF68E0);
    v4 = sub_261E72448();
    v5 = sub_261E72678();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261E36000, v4, v5, "ErSSO store does not exist", v6, 2u);
      MEMORY[0x2667209A0](v6, -1, -1);
    }

    sub_261E6BC0C();
    swift_allocError();
    *v7 = 8;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_261E69F00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_261E6A434;
  }

  else
  {
    v3 = sub_261E6A010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E6A010()
{
  v1 = v0[34];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[34];
    }

    v2 = sub_261E72758();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  v3 = sub_261E63F88(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  v4 = 0;
  v5 = v21;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2667200D0](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v7 declarationIdentifier];
    v9 = sub_261E724D8();
    v11 = v10;

    v13 = *(v21 + 16);
    v12 = *(v21 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_261E63F88((v12 > 1), v13 + 1, 1);
    }

    ++v4;
    *(v21 + 16) = v13 + 1;
    v14 = v21 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
  }

  while (v2 != v4);

LABEL_16:
  v16 = v0[37];
  v17 = *(v0 + 35);
  sub_261E69A50(v5);

  v18 = sub_261E72638();
  v0[39] = v18;

  v0[10] = v0;
  v0[11] = sub_261E6A2B8;
  v19 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_261E61558;
  v0[29] = &block_descriptor_67;
  v0[30] = v19;
  [v16 waitForActiveAndValidDeclarations:v18 timeout:v0 + 26 completionHandler:v17];
  v3 = (v0 + 10);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_261E6A2B8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_261E6A4A4;
  }

  else
  {
    v3 = sub_261E6A3C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E6A3C8()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261E6A434()
{
  v1 = v0[37];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[38];
  v4 = v0[1];

  return v4();
}

uint64_t sub_261E6A4A4()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  swift_willThrow();

  v4 = v0[40];
  v5 = v0[1];

  return v5();
}

uint64_t sub_261E6A51C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v26 = result;
  v27 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v28 = (v6 + 63) >> 6;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v32 = (v8 - 1) & v8;
LABEL_11:
    v29 = v9 | (v4 << 6);
    v12 = *(*(a3 + 56) + 16 * v29 + 8);
    v13 = *(*(a3 + 48) + 8 * v29);

    v14 = [v13 storeIdentifier];
    v15 = sub_261E724D8();
    v17 = v16;

    v18 = [a4 identifier];
    v19 = sub_261E724D8();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {

      v8 = v32;
LABEL_18:
      *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_261E64DF0(v26, v25, v27, a3);
      }
    }

    else
    {
      v23 = sub_261E727A8();

      v8 = v32;
      if (v23)
      {
        goto LABEL_18;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v28)
    {
      return sub_261E64DF0(v26, v25, v27, a3);
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261E6A73C(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v10 = sub_261E64D58(v13, v6, a1, v14);
      MEMORY[0x2667209A0](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20]();
  bzero(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v9 = v8;
  v10 = sub_261E6A51C(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a1, v9);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_261E6A8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261E6A988;

  return sub_261E671B4();
}

uint64_t sub_261E6A988(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  v4[3] = a1;
  v4[4] = v1;

  if (v1)
  {
    v5 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261E6AABC, 0, 0);
}

uint64_t sub_261E6AABC()
{
  v22 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = objc_opt_self();
    v4 = @"com.apple.RemoteManagement.LegacyProfilesExtension";
    v5 = [v3 newProfileControllerWithPrefix:v4 scope:{objc_msgSend(v1, sel_scope)}];

    v6 = [v5 installedProfileIdentifierByDeclarationKey];
    sub_261E5E524(0, &qword_27FEF62A8, off_279B04E38);
    sub_261E6BD88();
    v7 = sub_261E72488();

    v8 = v1;
    v9 = sub_261E6A73C(v7, v8);

    v10 = *(v9 + 16);
    if (!v10)
    {

      v11 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }

    v11 = sub_261E61D84(*(v9 + 16), 0);
    v12 = sub_261E65030(&v21, v11 + 4, v10, v9);
    sub_261E6BDF0();
    if (v12 == v10)
    {

LABEL_12:
      v20 = v0[1];

      return v20(v11);
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_27FEF6190 != -1)
  {
LABEL_16:
    swift_once();
  }

  v13 = sub_261E72468();
  __swift_project_value_buffer(v13, qword_27FEF68E0);
  v14 = sub_261E72448();
  v15 = sub_261E72678();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_261E36000, v14, v15, "ErSSO store does not exist", v16, 2u);
    MEMORY[0x2667209A0](v16, -1, -1);
  }

  sub_261E6BC0C();
  swift_allocError();
  *v17 = 8;
  swift_willThrow();
  v18 = v0[1];

  return v18();
}

uint64_t sub_261E6ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = swift_task_alloc();
  v4[39] = v5;
  *v5 = v4;
  v5[1] = sub_261E6AE78;
  v6 = *MEMORY[0x277D85DE8];

  return sub_261E671B4();
}

uint64_t sub_261E6AE78(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 312);
  v4 = *v2;
  *(v4 + 320) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277D85DE8];

    __asm { BRAA            X1, X16 }
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261E6AFF0, 0, 0);
}

uint64_t sub_261E6AFF0()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[38];
    v4 = v0[35];
    v3 = v0[36];
    v5 = v1;
    v6 = sub_261E724A8();
    v0[41] = v6;
    if (v2)
    {
      v7 = v0[37];
      v8 = v0[38];
      v2 = sub_261E724A8();
    }

    v0[42] = v2;
    v0[2] = v0;
    v0[3] = sub_261E6B2BC;
    v9 = swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6268, &unk_261E75730);
    v0[43] = v10;
    v0[25] = v10;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_261E61558;
    v0[21] = &block_descriptor_36;
    v0[22] = v9;
    [v5 linkStoreToProfileIdentifier:v6 accountIdentifier:v2 completionHandler:v0 + 18];
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27FEF6190 != -1)
    {
      swift_once();
    }

    v12 = sub_261E72468();
    __swift_project_value_buffer(v12, qword_27FEF68E0);
    v13 = sub_261E72448();
    v14 = sub_261E72678();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261E36000, v13, v14, "ErSSO store does not exist", v15, 2u);
      MEMORY[0x2667209A0](v15, -1, -1);
    }

    sub_261E6BC0C();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
    v17 = v0[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }
}

uint64_t sub_261E6B2BC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_261E6B87C;
  }

  else
  {
    v3 = sub_261E6B3F8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E6B3F8()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  v3 = sub_261E724A8();
  v4 = sub_261E724A8();
  *(v0 + 272) = 0;
  v5 = [v2 setMetadataValue:v3 forKey:v4 error:v0 + 272];

  v6 = *(v0 + 272);
  if (v5)
  {
    v7 = *(v0 + 320);
    v8 = v6;

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x277D85DE8];

    return v9();
  }

  else
  {
    v12 = v6;
    v13 = sub_261E72428();

    swift_willThrow();
    *(v0 + 360) = v13;
    v14 = [*(v0 + 320) identifier];
    if (!v14)
    {
      sub_261E724D8();
      v14 = sub_261E724A8();
    }

    *(v0 + 368) = v14;
    v15 = *(v0 + 344);
    v16 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_261E6B694;
    v17 = swift_continuation_init();
    *(v0 + 264) = v15;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_261E61558;
    *(v0 + 232) = &block_descriptor_39;
    *(v0 + 240) = v17;
    [v16 removeStoreWithIdentifier:v14 scope:1 completionHandler:v0 + 208];
    v18 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_261E6B694()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_261E6BA18;
  }

  else
  {
    v3 = sub_261E6B7D0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261E6B7D0()
{
  v7 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 360);
  v2 = *(v0 + 320);
  swift_willThrow();

  v3 = *(v0 + 360);
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_261E6B87C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  swift_willThrow();

  *(v0 + 360) = *(v0 + 352);
  v4 = [*(v0 + 320) identifier];
  if (!v4)
  {
    sub_261E724D8();
    v4 = sub_261E724A8();
  }

  *(v0 + 368) = v4;
  v5 = *(v0 + 344);
  v6 = objc_opt_self();
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_261E6B694;
  v7 = swift_continuation_init();
  *(v0 + 264) = v5;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_261E61558;
  *(v0 + 232) = &block_descriptor_39;
  *(v0 + 240) = v7;
  [v6 removeStoreWithIdentifier:v4 scope:1 completionHandler:v0 + 208];
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_261E6BA18()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = v0[47];
  swift_willThrow();

  if (qword_27FEF6190 != -1)
  {
    swift_once();
  }

  v3 = v0[47];
  v4 = sub_261E72468();
  __swift_project_value_buffer(v4, qword_27FEF68E0);
  v5 = v3;
  v6 = sub_261E72448();
  v7 = sub_261E72678();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[47];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_261E36000, v6, v7, "Failed to clean up ErSSO store: %@", v10, 0xCu);
    sub_261E6BFE8(v11, &qword_27FEF6298, &qword_261E75768);
    MEMORY[0x2667209A0](v11, -1, -1);
    MEMORY[0x2667209A0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[45];
  v15 = v0[40];
  swift_willThrow();

  v16 = v0[45];
  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

unint64_t sub_261E6BC0C()
{
  result = qword_27FEF6290;
  if (!qword_27FEF6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF6290);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261E6BCB0(uint64_t a1)
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
  v10[1] = sub_261E6C5E8;

  return sub_261E6033C(a1, v4, v5, v6, v7, v9);
}

unint64_t sub_261E6BD88()
{
  result = qword_27FEF62B0;
  if (!qword_27FEF62B0)
  {
    sub_261E5E524(255, &qword_27FEF62A8, off_279B04E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF62B0);
  }

  return result;
}

uint64_t sub_261E6BDF8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_261E61B4C;

  return sub_261E5FDC8(v7, a1, v4, v5, v6, v8, v9);
}

uint64_t sub_261E6BED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_261E6C5E8;

  return sub_261E5EDE8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_261E6BFE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_261E6C048()
{
  result = qword_27FEF6300;
  if (!qword_27FEF6300)
  {
    type metadata accessor for RMStoreOptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF6300);
  }

  return result;
}

uint64_t sub_261E6C0A0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_261E727A8() & 1;
  }
}

uint64_t sub_261E6C0F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_261E6C14C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_261E6C1A0()
{
  result = qword_27FEF6328;
  if (!qword_27FEF6328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF6320, &unk_261E75820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF6328);
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

uint64_t sub_261E6C24C(void *a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = sub_261E724A8();
  v12[0] = 0;
  v3 = [a1 metadataValueForKey:v2 error:v12];

  if (!v3)
  {
    v6 = v12[0];
    v7 = sub_261E72428();

    swift_willThrow();
    goto LABEL_7;
  }

  v4 = v12[0];
  sub_261E726A8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (v10 == 0x6F726E652D657250 && v11 == 0xEE00746E656D6C6CLL)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_261E727A8();
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t getEnumTagSinglePayload for ErSSOError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErSSOError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261E6C54C()
{
  result = qword_27FEF6338;
  if (!qword_27FEF6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF6338);
  }

  return result;
}