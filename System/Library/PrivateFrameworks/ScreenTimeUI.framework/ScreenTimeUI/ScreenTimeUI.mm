uint64_t sub_21DD950B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21DD968F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21DD96E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21DD98668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21DD98CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __categoryForBundleIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __categoryForBundleIdentifier_block_invoke_cold_1();
    }
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 56)];
}

void __categoryForWebpageURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v8 = +[STBlockingUILog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __categoryForWebpageURL_block_invoke_cold_1();
    }
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:*(a1 + 56)];
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_21DD9F578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA0124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA2A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA3198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA3480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA3F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *STStringFromPolicy(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown policy: %lu", a1];
  }

  else
  {
    v2 = off_2783390B8[a1];
  }

  return v2;
}

void sub_21DDA43A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA4794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *STStringFromLockoutState(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown state: %lu", a1];
  }

  else
  {
    v2 = off_2783390E8[a1];
  }

  return v2;
}

void sub_21DDA57D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA5CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA61FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDA8CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21DDAB1E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_21DDAC6E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_21DDACBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDAD2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDAD41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21DDAD520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21DDAD628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21DDAD72C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21DDAD834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_21DDAECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_21DDB08F4()
{
  v1 = *v0;
  sub_21DDBDCD0();
  MEMORY[0x223D47F00](v1);
  return sub_21DDBDCF0();
}

uint64_t sub_21DDB0968()
{
  v1 = *v0;
  sub_21DDBDCD0();
  MEMORY[0x223D47F00](v1);
  return sub_21DDBDCF0();
}

unint64_t sub_21DDB09AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21DDB7AEC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id CommunicationLimitsBlockingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  *a1 = sub_21DDBD7A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE902C0);
  sub_21DDB0AB8(v7, a1 + *(v3 + 44));
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE902C8) + 36));
  *v5 = sub_21DDB7B44;
  v5[1] = v4;
  v5[2] = 0;
  v5[3] = 0;

  return v7;
}

uint64_t sub_21DDB0AB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90540);
  v4 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90548);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  swift_getKeyPath();
  v22[1] = a1;
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  v13 = a1;
  sub_21DDBD5C0();

  v14 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  v15 = 1;
  if (*&v13[v14] == 2)
  {
    *v6 = sub_21DDBD760();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90558);
    sub_21DDB0DBC(v13, &v6[*(v16 + 44)]);
    sub_21DDB8EC0(v6, v12, &qword_27CE90540);
    v15 = 0;
  }

  (*(v4 + 56))(v12, v15, 1, v22[0]);
  sub_21DDB8B90(v12, v10, &qword_27CE90548);
  sub_21DDB8B90(v10, a2, &qword_27CE90548);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90550);
  v18 = a2 + v17[12];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a2 + v17[16]) = v13;
  v19 = a2 + v17[20];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a2 + v17[24]) = v13;
  v20 = v13;
  sub_21DDB9098(v12, &qword_27CE90548);

  return sub_21DDB9098(v10, &qword_27CE90548);
}

uint64_t sub_21DDB0DBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = sub_21DDBDA10();
  (MEMORY[0x28223BE20])();
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DDBDA00();
  v58 = *(v4 - 8);
  v59 = v4;
  (MEMORY[0x28223BE20])();
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90560);
  v6 = *(v49 - 8);
  (MEMORY[0x28223BE20])();
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90568) - 8;
  (MEMORY[0x28223BE20])();
  v11 = &v47 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90570);
  (MEMORY[0x28223BE20])();
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90578);
  v55 = *(v14 - 8);
  v56 = v14;
  (MEMORY[0x28223BE20])();
  v50 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90580) - 8;
  (MEMORY[0x28223BE20])();
  v51 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90588) - 8;
  v19 = (MEMORY[0x28223BE20])();
  v53 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  MEMORY[0x28223BE20](v21);
  v52 = &v47 - v24;
  *(swift_allocObject() + 16) = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90590);
  sub_21DDB8D50();
  sub_21DDBD9E0();
  sub_21DDBDA40();
  sub_21DDBD6B0();
  (*(v6 + 32))(v11, v8, v49);
  v26 = &v11[*(v9 + 44)];
  v27 = v67;
  *(v26 + 4) = v66;
  *(v26 + 5) = v27;
  *(v26 + 6) = v68;
  v28 = v63;
  *v26 = v62;
  *(v26 + 1) = v28;
  v29 = v65;
  *(v26 + 2) = v64;
  *(v26 + 3) = v29;
  v30 = &v13[*(v48 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
  v32 = *MEMORY[0x277CDF420];
  v33 = sub_21DDBD670();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  sub_21DDB8EC0(v11, v13, &qword_27CE90568);
  v34 = v54;
  sub_21DDBD9F0();
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_21DDBD770();
  v37 = v57;
  (*(*(v36 - 8) + 104))(v57, v35, v36);
  sub_21DDB8F28();
  sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
  v38 = v50;
  sub_21DDBD960();
  sub_21DDB82F8(v37);
  (*(v58 + 8))(v34, v59);
  sub_21DDB9098(v13, &qword_27CE90570);
  v39 = v51;
  v40 = &v51[*(v16 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90410);
  sub_21DDBD6C0();
  *v40 = swift_getKeyPath();
  (*(v55 + 32))(v39, v38, v56);
  LOBYTE(v40) = sub_21DDBD850();
  sub_21DDB8EC0(v39, v23, &qword_27CE90580);
  v41 = &v23[*(v18 + 44)];
  *v41 = v40;
  *(v41 + 8) = xmmword_21DDBFE30;
  *(v41 + 3) = 0;
  *(v41 + 4) = 0;
  v41[40] = 0;
  v42 = v52;
  sub_21DDB8EC0(v23, v52, &qword_27CE90588);
  v43 = v53;
  sub_21DDB8B90(v42, v53, &qword_27CE90588);
  v44 = v61;
  sub_21DDB8B90(v43, v61, &qword_27CE90588);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE905E8) + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_21DDB9098(v42, &qword_27CE90588);
  return sub_21DDB9098(v43, &qword_27CE90588);
}

uint64_t sub_21DDB1578@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904B0);
  MEMORY[0x28223BE20]();
  v3 = &v9 - v2;
  v4 = sub_21DDBD9C0();
  v5 = sub_21DDBD9A0();
  sub_21DDBD8A0();
  v6 = sub_21DDBD880();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_21DDBD8C0();
  sub_21DDB9098(v3, &qword_27CE904B0);
  result = swift_getKeyPath();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  a1[3] = v7;
  return result;
}

id sub_21DDB16AC@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  *a1 = sub_21DDBD7A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE902C0);
  sub_21DDB0AB8(v7, a1 + *(v3 + 44));
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE902C8) + 36));
  *v5 = sub_21DDB92FC;
  v5[1] = v4;
  v5[2] = 0;
  v5[3] = 0;

  return v7;
}

uint64_t sub_21DDB1778@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904A8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v107 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v99 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904B8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v99 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904C0);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v99 - v19;
  MEMORY[0x28223BE20](v18);
  v117 = &v99 - v21;
  swift_getKeyPath();
  v105 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel___observationRegistrar;
  v122 = a1;
  v104 = sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v103 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  v109 = a1;
  v115 = sub_21DDBD9D0();
  v22 = sub_21DDBD880();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v114 = sub_21DDBD8C0();
  sub_21DDB9098(v9, &qword_27CE904B0);
  KeyPath = swift_getKeyPath();
  v23 = sub_21DDBD990();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904C8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21DDBFE40;
  sub_21DDBD990();
  v25 = sub_21DDBD9B0();

  *(v24 + 32) = v25;
  sub_21DDBD990();
  v26 = sub_21DDBD9B0();

  *(v24 + 40) = v26;
  MEMORY[0x223D47C50](v24);
  sub_21DDBDA60();
  sub_21DDBDA50();
  sub_21DDBD680();
  v27 = v138;
  v28 = &v13[*(v11 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904D0) + 28);
  sub_21DDBD7B0();
  v30 = sub_21DDBD7C0();
  v31 = *(*(v30 - 8) + 56);
  v111 = v140;
  v112 = v139;
  v31(v28 + v29, 0, 1, v30);
  *v28 = swift_getKeyPath();
  v33 = KeyPath;
  v32 = v114;
  *v13 = v115;
  *(v13 + 1) = v33;
  *(v13 + 2) = v32;
  *(v13 + 3) = v23;
  *(v13 + 4) = v27;
  v34 = v112;
  *(v13 + 56) = v111;
  *(v13 + 40) = v34;
  LOBYTE(v28) = sub_21DDBD860();
  sub_21DDBD660();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_21DDB8EC0(v13, v20, &qword_27CE904B8);
  v43 = v20 + *(v15 + 44);
  *v43 = v28;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  sub_21DDB8EC0(v20, v117, &qword_27CE904C0);
  v122 = sub_21DDB5AAC();
  v123 = v44;
  *&v112 = sub_21DDB84F8();
  v45 = sub_21DDBD920();
  v47 = v46;
  LOBYTE(v20) = v48;
  sub_21DDBD8D0();
  v49 = sub_21DDBD910();
  v51 = v50;
  LOBYTE(v27) = v52;

  sub_21DDB854C(v45, v47, v20 & 1);

  sub_21DDBD890();
  v53 = sub_21DDBD8F0();
  v55 = v54;
  LOBYTE(v26) = v56;
  sub_21DDB854C(v49, v51, v27 & 1);

  LODWORD(v122) = sub_21DDBD800();
  v57 = sub_21DDBD900();
  v114 = v58;
  v115 = v57;
  v101 = v59;
  v102 = v60;
  sub_21DDB854C(v53, v55, v26 & 1);

  KeyPath = swift_getKeyPath();
  v122 = sub_21DDB5E60();
  v123 = v61;
  v62 = sub_21DDBD920();
  v64 = v63;
  LOBYTE(v47) = v65;
  sub_21DDBD8D0();
  v66 = sub_21DDBD910();
  v68 = v67;
  LOBYTE(v20) = v69;

  sub_21DDB854C(v62, v64, v47 & 1);

  LODWORD(v122) = sub_21DDBD810();
  v70 = sub_21DDBD900();
  *&v111 = v71;
  LOBYTE(v62) = v72;
  *&v112 = v73;
  sub_21DDB854C(v66, v68, v20 & 1);

  v100 = swift_getKeyPath();
  v110 = sub_21DDBD860();
  v74 = v62 & 1;
  LOBYTE(v122) = v62 & 1;
  LOBYTE(v118) = 1;
  swift_getKeyPath();
  v75 = v109;
  v122 = v109;
  sub_21DDBD5C0();

  v76 = *(v75 + v103);
  v77 = 1;
  if (v76 != 4)
  {
    v122 = sub_21DDB652C();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904E0);
    sub_21DDB8A18();
    sub_21DDB8AC8();
    sub_21DDBDA20();
    v77 = 0;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90518);
  v79 = v108;
  (*(*(v78 - 8) + 56))(v108, v77, 1, v78);
  v80 = v116;
  sub_21DDB8B90(v117, v116, &qword_27CE904C0);
  v81 = v107;
  sub_21DDB8B90(v79, v107, &qword_27CE904A8);
  v82 = v80;
  v83 = v106;
  sub_21DDB8B90(v82, v106, &qword_27CE904C0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90520);
  v85 = v83 + v84[12];
  v86 = v114;
  v87 = v115;
  *v85 = v115;
  *(v85 + 8) = v86;
  v88 = v101 & 1;
  *(v85 + 16) = v88;
  LODWORD(v104) = v88;
  v89 = KeyPath;
  *(v85 + 24) = v102;
  *(v85 + 32) = v89;
  *(v85 + 40) = 1;
  v90 = (v83 + v84[16]);
  *&v118 = v70;
  *(&v118 + 1) = v111;
  LOBYTE(v119) = v74;
  *(&v119 + 1) = v137[0];
  DWORD1(v119) = *(v137 + 3);
  v105 = v70;
  LODWORD(v109) = v74;
  v91 = v100;
  *(&v119 + 1) = v112;
  *&v120 = v100;
  BYTE8(v120) = 1;
  HIDWORD(v120) = *&v136[3];
  *(&v120 + 9) = *v136;
  LOBYTE(v121[0]) = v110;
  DWORD1(v121[0]) = *&v135[3];
  *(v121 + 1) = *v135;
  *(&v121[1] + 8) = 0u;
  *(v121 + 8) = 0u;
  BYTE8(v121[2]) = 1;
  v92 = v119;
  *v90 = v118;
  v90[1] = v92;
  v93 = v120;
  v94 = v121[0];
  v95 = v121[1];
  *(v90 + 73) = *(&v121[1] + 9);
  v90[3] = v94;
  v90[4] = v95;
  v90[2] = v93;
  sub_21DDB8B90(v81, v83 + v84[20], &qword_27CE904A8);
  v96 = v87;
  v97 = v114;
  sub_21DDB8B80(v96, v114, v88);

  sub_21DDB8B90(&v118, &v122, &qword_27CE90528);
  sub_21DDB9098(v79, &qword_27CE904A8);
  sub_21DDB9098(v117, &qword_27CE904C0);
  sub_21DDB9098(v81, &qword_27CE904A8);
  v122 = v105;
  v123 = v111;
  v124 = v109;
  *v125 = v137[0];
  *&v125[3] = *(v137 + 3);
  v126 = v112;
  v127 = v91;
  v128 = 1;
  *v129 = *v136;
  *&v129[3] = *&v136[3];
  v130 = v110;
  *v131 = *v135;
  *&v131[3] = *&v135[3];
  v133 = 0u;
  v132 = 0u;
  v134 = 1;
  sub_21DDB9098(&v122, &qword_27CE90528);
  sub_21DDB854C(v115, v97, v104);

  return sub_21DDB9098(v116, &qword_27CE904C0);
}

uint64_t sub_21DDB22CC@<X0>(uint64_t a1@<X8>)
{
  sub_21DDB84F8();

  v2 = sub_21DDBD920();
  v4 = v3;
  v6 = v5;
  sub_21DDBD8D0();
  v7 = sub_21DDBD910();
  v9 = v8;
  v11 = v10;

  sub_21DDB854C(v2, v4, v6 & 1);

  sub_21DDBD810();
  v12 = sub_21DDBD900();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21DDB854C(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_21DDB2428@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_21DDBD7A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90498);
  sub_21DDB1778(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_21DDBD840();
  sub_21DDBD660();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE904A0);
  v14 = a1 + *(result + 36);
  *v14 = v3;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_21DDB24D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90370);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90378);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  *v15 = sub_21DDBD7A0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90380);
  sub_21DDB2720(a1, &v15[*(v16 + 44)]);
  *v9 = sub_21DDBD7A0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90388);
  sub_21DDB3CDC(a1, &v9[*(v17 + 44)]);
  sub_21DDB8B90(v15, v13, &qword_27CE90378);
  sub_21DDB8B90(v9, v7, &qword_27CE90370);
  sub_21DDB8B90(v13, a2, &qword_27CE90378);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90390);
  sub_21DDB8B90(v7, a2 + *(v18 + 48), &qword_27CE90370);
  sub_21DDB9098(v9, &qword_27CE90370);
  sub_21DDB9098(v15, &qword_27CE90378);
  sub_21DDB9098(v7, &qword_27CE90370);
  return sub_21DDB9098(v13, &qword_27CE90378);
}

uint64_t sub_21DDB2720@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90430);
  MEMORY[0x28223BE20](v115);
  v116 = &v92 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90438);
  MEMORY[0x28223BE20](v93);
  v94 = &v92 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90440);
  MEMORY[0x28223BE20](v114);
  v95 = &v92 - v5;
  v106 = sub_21DDBDA10();
  MEMORY[0x28223BE20](v106);
  v108 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDBDA00();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90448);
  MEMORY[0x28223BE20](v99);
  v98 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90450);
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = &v92 - v11;
  v97 = sub_21DDBD830();
  v12 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903B0);
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v17 = &v92 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90458);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v92 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90460);
  MEMORY[0x28223BE20](v111);
  v113 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90468);
  v117 = *(v20 - 8);
  v118 = v20;
  MEMORY[0x28223BE20](v20);
  v112 = &v92 - v21;
  swift_getKeyPath();
  v122 = a1;
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v22 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  if (((*&a1[v22] - 3) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    swift_getKeyPath();
    v120 = a1;
    sub_21DDBD5C0();

    if (*&a1[v22] == 4)
    {
      *(swift_allocObject() + 16) = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903D0);
      sub_21DDB80FC();
      sub_21DDBD9E0();
      sub_21DDBD820();
      sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
      sub_21DDB85A8(&qword_27CE90470, MEMORY[0x277CDE400]);
      v24 = v100;
      v25 = v96;
      v26 = v97;
      sub_21DDBD950();
      (*(v12 + 8))(v14, v26);
      (*(v15 + 8))(v17, v25);
      v27 = v99;
      v28 = v98;
      v29 = &v98[*(v99 + 36)];
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
      v31 = *MEMORY[0x277CDF420];
      v32 = sub_21DDBD670();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      v33 = v102;
      v34 = v24;
      v35 = v103;
      (*(v102 + 16))(v28, v24, v103);
      v36 = sub_21DDB85F0();
      v37 = v101;
      sub_21DDBD980();
      sub_21DDB9098(v28, &qword_27CE90448);
      v38 = v107;
      sub_21DDBD9F0();
      v39 = *MEMORY[0x277CE0118];
      v40 = sub_21DDBD770();
      v41 = v108;
      (*(*(v40 - 8) + 104))(v108, v39, v40);
      v120 = v27;
      v121 = v36;
      swift_getOpaqueTypeConformance2();
      sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
      v42 = v113;
      v43 = v105;
      sub_21DDBD960();
      sub_21DDB82F8(v41);
      (*(v109 + 8))(v38, v110);
      (*(v104 + 8))(v37, v43);
      v44 = (v42 + *(v111 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90410);
      sub_21DDBD6D0();
      (*(v33 + 8))(v34, v35);
      *v44 = swift_getKeyPath();
      sub_21DDB8B90(v42, v94, &qword_27CE90460);
    }

    else
    {
      swift_getKeyPath();
      v120 = a1;
      sub_21DDBD5C0();

      v47 = (v12 + 8);
      v48 = (v15 + 8);
      if (a1[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged] != 1)
      {
        *(swift_allocObject() + 16) = a1;
        v71 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903D0);
        sub_21DDB80FC();
        sub_21DDBD9E0();
        sub_21DDBD820();
        sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
        sub_21DDB85A8(&qword_27CE90470, MEMORY[0x277CDE400]);
        v72 = v100;
        v73 = v96;
        v74 = v97;
        sub_21DDBD950();
        (*v47)(v14, v74);
        (*v48)(v17, v73);
        v75 = v99;
        v76 = v98;
        v77 = &v98[*(v99 + 36)];
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
        v79 = *MEMORY[0x277CDF420];
        v80 = sub_21DDBD670();
        (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
        *v77 = swift_getKeyPath();
        v81 = v102;
        v82 = v103;
        (*(v102 + 16))(v76, v72, v103);
        v83 = sub_21DDB85F0();
        v84 = v101;
        sub_21DDBD980();
        sub_21DDB9098(v76, &qword_27CE90448);
        v85 = v107;
        sub_21DDBD9F0();
        v86 = *MEMORY[0x277CE0118];
        v87 = sub_21DDBD770();
        v88 = v108;
        (*(*(v87 - 8) + 104))(v108, v86, v87);
        v120 = v75;
        v121 = v83;
        swift_getOpaqueTypeConformance2();
        sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
        v42 = v113;
        v89 = v105;
        sub_21DDBD960();
        sub_21DDB82F8(v88);
        (*(v109 + 8))(v85, v110);
        (*(v104 + 8))(v84, v89);
        v90 = (v42 + *(v111 + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90410);
        sub_21DDBD6D0();
        (*(v81 + 8))(v72, v82);
        *v90 = swift_getKeyPath();
        sub_21DDB8B90(v42, v116, &qword_27CE90460);
        swift_storeEnumTagMultiPayload();
        sub_21DDB8768();
        sub_21DDB87EC();
        v70 = v112;
        sub_21DDBD7F0();
        goto LABEL_9;
      }

      *(swift_allocObject() + 16) = a1;
      v49 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903D0);
      sub_21DDB80FC();
      sub_21DDBD9E0();
      sub_21DDBD820();
      sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
      sub_21DDB85A8(&qword_27CE90470, MEMORY[0x277CDE400]);
      v50 = v100;
      v51 = v96;
      v52 = v97;
      sub_21DDBD950();
      (*v47)(v14, v52);
      (*v48)(v17, v51);
      v53 = v99;
      v54 = v98;
      v55 = &v98[*(v99 + 36)];
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
      v57 = *MEMORY[0x277CDF420];
      v58 = sub_21DDBD670();
      (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
      *v55 = swift_getKeyPath();
      v59 = v102;
      v60 = v103;
      (*(v102 + 16))(v54, v50, v103);
      v61 = sub_21DDB85F0();
      v62 = v101;
      sub_21DDBD980();
      sub_21DDB9098(v54, &qword_27CE90448);
      v63 = v107;
      sub_21DDBD9F0();
      v64 = *MEMORY[0x277CE0118];
      v65 = sub_21DDBD770();
      v66 = v108;
      (*(*(v65 - 8) + 104))(v108, v64, v65);
      v120 = v53;
      v121 = v61;
      swift_getOpaqueTypeConformance2();
      sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
      v42 = v113;
      v67 = v105;
      sub_21DDBD960();
      sub_21DDB82F8(v66);
      (*(v109 + 8))(v63, v110);
      (*(v104 + 8))(v62, v67);
      v68 = (v42 + *(v111 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90410);
      sub_21DDBD6D0();
      (*(v59 + 8))(v50, v60);
      *v68 = swift_getKeyPath();
      sub_21DDB8B90(v42, v94, &qword_27CE90460);
    }

    swift_storeEnumTagMultiPayload();
    sub_21DDB87EC();
    v69 = v95;
    sub_21DDBD7F0();
    sub_21DDB8B90(v69, v116, &qword_27CE90440);
    swift_storeEnumTagMultiPayload();
    sub_21DDB8768();
    v70 = v112;
    sub_21DDBD7F0();
    sub_21DDB9098(v69, &qword_27CE90440);
LABEL_9:
    sub_21DDB9098(v42, &qword_27CE90460);
    v46 = v119;
    sub_21DDB8EC0(v70, v119, &qword_27CE90468);
    v45 = 0;
    return (*(v117 + 56))(v46, v45, 1, v118);
  }

  v45 = 1;
  v46 = v119;
  return (*(v117 + 56))(v46, v45, 1, v118);
}

void *sub_21DDB3AB0(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21DDB3B84(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_askToController];
  v3 = sub_21DDBDB50();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_21DDB8998;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21DDB6BAC;
  v7[3] = &block_descriptor;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 sendCommLimitsQuestionForHandles:v3 withReply:v5];
  _Block_release(v5);
}

uint64_t sub_21DDB3CDC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90398);
  MEMORY[0x28223BE20](v71);
  v70 = &v54 - v3;
  v69 = sub_21DDBDA10();
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DDBDA00();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903A0);
  MEMORY[0x28223BE20](v56);
  v57 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903A8);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - v9;
  v10 = sub_21DDBD790();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903B0);
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903B8);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v73 = &v54 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903C0);
  MEMORY[0x28223BE20](v61);
  v59 = &v54 - v17;
  swift_getKeyPath();
  v76 = a1;
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v18 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  if (*&a1[v18] == 1)
  {
    *(swift_allocObject() + 16) = a1;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903D0);
    sub_21DDB80FC();
    sub_21DDBD9E0();
    sub_21DDBD780();
    sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
    sub_21DDB85A8(&qword_27CE903E8, MEMORY[0x277CDDEE0]);
    v20 = v73;
    sub_21DDBD950();
    (*(v55 + 8))(v12, v10);
    (*(v54 + 8))(v15, v13);
    v21 = v56;
    v22 = v57;
    v23 = &v57[*(v56 + 36)];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
    v25 = *MEMORY[0x277CDF420];
    v26 = sub_21DDBD670();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    v27 = v58;
    v28 = v60;
    (*(v58 + 16))(v22, v20, v60);
    v29 = sub_21DDB8180();
    v30 = v62;
    sub_21DDBD980();
    sub_21DDB9098(v22, &qword_27CE903A0);
    v31 = v65;
    sub_21DDBD9F0();
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_21DDBD770();
    v34 = v68;
    (*(*(v33 - 8) + 104))(v68, v32, v33);
    v74 = v21;
    v75 = v29;
    swift_getOpaqueTypeConformance2();
    v35 = v72;
    v36 = v30;
  }

  else
  {
    swift_getKeyPath();
    v74 = a1;
    sub_21DDBD5C0();

    if (*&a1[v18] != 2)
    {
      v51 = 1;
      v35 = v72;
      goto LABEL_7;
    }

    *(swift_allocObject() + 16) = a1;
    v37 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903D0);
    sub_21DDB80FC();
    sub_21DDBD9E0();
    sub_21DDBD780();
    sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
    sub_21DDB85A8(&qword_27CE903E8, MEMORY[0x277CDDEE0]);
    v38 = v73;
    sub_21DDBD950();
    (*(v55 + 8))(v12, v10);
    (*(v54 + 8))(v15, v13);
    v39 = v56;
    v40 = v57;
    v41 = &v57[*(v56 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903F0) + 28);
    v43 = *MEMORY[0x277CDF420];
    v44 = sub_21DDBD670();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v27 = v58;
    v28 = v60;
    (*(v58 + 16))(v40, v38, v60);
    v45 = sub_21DDB8180();
    v36 = v62;
    sub_21DDBD980();
    sub_21DDB9098(v40, &qword_27CE903A0);
    v31 = v65;
    sub_21DDBD9F0();
    v46 = *MEMORY[0x277CE0118];
    v47 = sub_21DDBD770();
    v34 = v68;
    (*(*(v47 - 8) + 104))(v68, v46, v47);
    v74 = v39;
    v75 = v45;
    swift_getOpaqueTypeConformance2();
    v35 = v72;
  }

  sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
  v48 = v59;
  v49 = v64;
  sub_21DDBD960();
  sub_21DDB82F8(v34);
  (*(v66 + 8))(v31, v67);
  (*(v63 + 8))(v36, v49);
  v50 = (v48 + *(v61 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90410);
  sub_21DDBD6D0();
  (*(v27 + 8))(v73, v28);
  *v50 = swift_getKeyPath();
  sub_21DDB8B90(v48, v70, &qword_27CE903C0);
  swift_storeEnumTagMultiPayload();
  sub_21DDB8354();
  sub_21DDBD7F0();
  sub_21DDB9098(v48, &qword_27CE903C0);
  v51 = 0;
LABEL_7:
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE903C8);
  return (*(*(v52 - 8) + 56))(v35, v51, 1, v52);
}

__n128 sub_21DDB4940@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21DDBD5A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21DDBDAF0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21DDBDA80();
  v4 = [objc_opt_self() bundle];
  sub_21DDBD590();
  *&v19 = sub_21DDBDB20();
  *(&v19 + 1) = v5;
  sub_21DDB84F8();
  v6 = sub_21DDBD920();
  v8 = v7;
  v10 = v9;
  sub_21DDBD870();
  sub_21DDBD8B0();
  sub_21DDBD8E0();

  v11 = sub_21DDBD910();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21DDB854C(v6, v8, v10 & 1);

  sub_21DDBDA40();
  sub_21DDBD6B0();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 96) = v23;
  *(a1 + 112) = v24;
  *(a1 + 128) = v25;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  return result;
}

__n128 sub_21DDB4B8C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21DDBD5A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21DDBDAF0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21DDBDA80();
  v4 = [objc_opt_self() bundle];
  sub_21DDBD590();
  *&v19 = sub_21DDBDB20();
  *(&v19 + 1) = v5;
  sub_21DDB84F8();
  v6 = sub_21DDBD920();
  v8 = v7;
  v10 = v9;
  sub_21DDBD870();
  sub_21DDBD8B0();
  sub_21DDBD8E0();

  v11 = sub_21DDBD910();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21DDB854C(v6, v8, v10 & 1);

  sub_21DDBDA40();
  sub_21DDBD6B0();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 96) = v23;
  *(a1 + 112) = v24;
  *(a1 + 128) = v25;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  return result;
}

double sub_21DDB4DE0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_21DDBD7A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90360);
  sub_21DDB24D8(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_21DDBD840();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90368) + 36);
  *v5 = v3;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_21DDB4E78()
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21DDB4F24@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_21DDB4FD8()
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5B0();
}

uint64_t sub_21DDB5130(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  return *(v2 + *a2);
}

uint64_t sub_21DDB51E4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21DDB52E8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
    sub_21DDBD5B0();
  }

  return result;
}

int64_t -[CommunicationLimitsBlockingViewModel _blockingViewType](_TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel *self, SEL a2)
{
  v3 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

void -[CommunicationLimitsBlockingViewModel set_blockingViewType:](_TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel *self, SEL a2, int64_t a3)
{
  v5 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

uint64_t sub_21DDB55C4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v1 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21DDB56D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
    sub_21DDBD5B0();
  }

  return result;
}

uint64_t sub_21DDB57F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v4 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_21DDB58E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_21DDBD5E0();

  v4[7] = sub_21DDB5488();
  return sub_21DDB5A18;
}

void sub_21DDB5A18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21DDBD5D0();

  free(v1);
}

uint64_t sub_21DDB5AAC()
{
  v1 = v0;
  v2 = sub_21DDBD5A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21DDBDAF0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_21DDBDAD0();
  MEMORY[0x28223BE20](v4 - 8);
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v5 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (v7)
  {
    if (v8 >= 2)
    {
      return 0x656C646E61686E55;
    }

    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_21DDBD5C0();

  if ((*(v1 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged) & 1) == 0)
  {
    swift_getKeyPath();
    sub_21DDBD5C0();

    if (*(v1 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserPasscodeRestricted) != 1)
    {
LABEL_7:
      sub_21DDBDA80();
      v9 = [objc_opt_self() bundle];
      goto LABEL_8;
    }
  }

  sub_21DDBDAC0();
  sub_21DDBDAB0();
  sub_21DDBDA90();
  sub_21DDBDAB0();
  sub_21DDBDAE0();
  v9 = [objc_opt_self() bundle];
LABEL_8:
  v11 = v9;
  sub_21DDBD590();
  return sub_21DDBDB20();
}

unint64_t sub_21DDB5E60()
{
  v1 = v0;
  v2 = sub_21DDBD5A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21DDBDAF0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_21DDBDAD0();
  MEMORY[0x28223BE20](v4 - 8);
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  sub_21DDBD5C0();

  v5 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    swift_getKeyPath();
    sub_21DDBD5C0();

    if ((*(v1 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged) & 1) == 0)
    {
      swift_getKeyPath();
      sub_21DDBD5C0();
    }

    sub_21DDBDAC0();
    sub_21DDBDAB0();
    sub_21DDBDA90();
    sub_21DDBDAB0();
    sub_21DDBDAE0();
    v9 = [objc_opt_self() bundle];
    goto LABEL_17;
  }

  if (v8 >= 2)
  {
    return 0xD000000000000011;
  }

  v10 = sub_21DDB652C();
  v11 = *(v10 + 16);
  if (v11 <= 1)
  {
    sub_21DDBDAC0();
    result = sub_21DDBDAB0();
    if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 == 2)
  {
    sub_21DDBDAC0();
    result = sub_21DDBDAB0();
    if (*(v10 + 16))
    {

      sub_21DDBDAA0();

      result = sub_21DDBDAB0();
      if (*(v10 + 16) >= 2uLL)
      {
LABEL_10:

        sub_21DDBDAA0();

        sub_21DDBDAB0();
        sub_21DDBDAE0();
        v9 = [objc_opt_self() bundle];
LABEL_17:
        v13 = v9;
        sub_21DDBD590();
        return sub_21DDBDB20();
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_21DDBDAC0();
  result = sub_21DDBDAB0();
  if (!*(v10 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_21DDBDAA0();

  result = sub_21DDBDAB0();
  if (*(v10 + 16) >= 2uLL)
  {

    sub_21DDBDAA0();

    sub_21DDBDAB0();
    sub_21DDBDA90();
    sub_21DDBDAB0();
    sub_21DDBDAE0();
    v9 = [objc_opt_self() bundle];
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_21DDB652C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_handles);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_21DDB77CC(0, v2, 0);
  v5 = 0;
  v3 = v16;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v7 = *v6;
    v14[0] = *(v6 - 1);
    v14[1] = v7;

    sub_21DDB664C(v14, v13, v15);

    v8 = v15[0];
    v9 = v15[1];
    v16 = v3;
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_21DDB77CC((v10 > 1), v11 + 1, 1);
      v3 = v16;
    }

    ++v5;
    *(v3 + 16) = v11 + 1;
    v12 = v3 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    v6 += 2;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

void sub_21DDB664C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_contactNameByHandle);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = sub_21DDB769C(*a1, v4);
      if (v8)
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v11 = *v9;
        v10 = v9[1];

        v12 = sub_21DDBDB00();
        v13 = [v12 destinationIdIsPhoneNumber];

        if ((v13 & 1) == 0)
        {
          v14 = sub_21DDBDB00();
          v15 = [v14 destinationIdIsEmailAddress];

          if ((v15 & 1) == 0)
          {
            *a3 = v11;
            a3[1] = v10;
            return;
          }
        }
      }
    }
  }

  v16 = sub_21DDBDB00();
  v17 = [v16 destinationIdIsPhoneNumber];

  if (!v17)
  {
    v26 = sub_21DDBDB00();
    [v26 destinationIdIsEmailAddress];

LABEL_13:
    *a3 = v5;
    a3[1] = v4;

    return;
  }

  v18 = TUNetworkCountryCode();
  if (!v18)
  {
    v18 = TUHomeCountryCode();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  v19 = v18;
  sub_21DDBDB10();

  v20 = sub_21DDBDB00();
  v21 = sub_21DDBDB00();
  v22 = TUFormattedPhoneNumber();

  if (v22)
  {

    v23 = sub_21DDBDB10();
    v25 = v24;

    *a3 = v23;
    a3[1] = v25;
  }

  else
  {
    __break(1u);
  }
}

id sub_21DDB6824()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_managementState);
  v2 = [v1 isLocalUserManaged];
  if (v2 == *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged))
  {
    *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
    sub_21DDBD5B0();
  }

  result = [v1 isRestrictionsPasscodeSet];
  if (result == *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserPasscodeRestricted))
  {
    *(v0 + OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserPasscodeRestricted) = result;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
    sub_21DDBD5B0();
  }

  return result;
}

void sub_21DDB6A50(void *a1)
{
  v2 = a1;
  oslog = sub_21DDBD610();
  v3 = sub_21DDBDB70();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_21DDBDCC0();
    v8 = sub_21DDB6E0C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21DD93000, oslog, v3, "Finished call to Contacts to send Communication Limits question to AskTo. Error: %{public}s)", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x223D487D0](v5, -1, -1);
    MEMORY[0x223D487D0](v4, -1, -1);
  }

  else
  {
  }
}

void sub_21DDB6BAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id CommunicationLimitsBlockingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommunicationLimitsBlockingViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationLimitsBlockingViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21DDB6E0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DDB6ED8(v11, 0, 0, 1, a1, a2);
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
    sub_21DDB89B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_21DDB6ED8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21DDB6FE4(a5, a6);
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
    result = sub_21DDBDC90();
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

uint64_t sub_21DDB6FE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21DDB7030(a1, a2);
  sub_21DDB7160(&unk_282F1DE08);
  return v3;
}

uint64_t sub_21DDB7030(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DDB724C(v5, 0);
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

  result = sub_21DDBDC90();
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
        v10 = sub_21DDBDB40();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DDB724C(v10, 0);
        result = sub_21DDBDC80();
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

uint64_t sub_21DDB7160(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21DDB72C0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21DDB724C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DDB72C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90490);
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

uint64_t sub_21DDB7454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_21DDB7524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DDBD740();
  *a1 = result;
  return result;
}

uint64_t sub_21DDB75A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90530);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21DDB8B90(a1, &v5 - v3, &qword_27CE90530);
  return sub_21DDBD710();
}

uint64_t sub_21DDB7648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DDBD720();
  *a1 = result;
  return result;
}

unint64_t sub_21DDB769C(uint64_t a1, uint64_t a2)
{
  sub_21DDBDCD0();
  sub_21DDBDB30();
  v4 = sub_21DDBDCF0();

  return sub_21DDB7714(a1, a2, v4);
}

unint64_t sub_21DDB7714(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21DDBDCB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_21DDB77CC(char *a1, int64_t a2, char a3)
{
  result = sub_21DDB77EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DDB77EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90538);
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

id sub_21DDB78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBDA30]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D4BA08]) &selRef_addObserver_selector_name_object_];
  v20 = &type metadata for STTelephonyUtilites;
  v21 = &off_282F1E0D0;
  v9 = type metadata accessor for CommunicationLimitsBlockingViewModel();
  v10 = objc_allocWithZone(v9);
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for STTelephonyUtilites);
  v17 = &type metadata for STTelephonyUtilites;
  v18 = &off_282F1E0D0;
  v11 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__delegate;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_21DDBD620();
  v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserManaged] = 0;
  v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__isLocalUserPasscodeRestricted] = 0;
  sub_21DDBD5F0();
  *&v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_askToController] = v7;
  *&v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType] = a1;
  v12 = v7;
  sub_21DDB8C28(&v10[v11]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *&v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_contactNameByHandle] = a2;
  *&v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_handles] = a4;
  *&v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_managementState] = v8;
  sub_21DDB8CEC(v16, &v10[OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel_telephonyUtilities]);
  v15.receiver = v10;
  v15.super_class = v9;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return v13;
}

unint64_t sub_21DDB7AEC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for CommunicationLimitsBlockingViewModel()
{
  result = qword_27CE90338;
  if (!qword_27CE90338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DDB7BB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

unint64_t sub_21DDB7C10()
{
  result = qword_27CE902E8;
  if (!qword_27CE902E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE902E8);
  }

  return result;
}

uint64_t sub_21DDB7C9C(uint64_t *a1, int a2)
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

uint64_t sub_21DDB7CE4(uint64_t result, int a2, int a3)
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

uint64_t sub_21DDB7D38()
{
  result = sub_21DDBD630();
  if (v1 <= 0x3F)
  {
    result = sub_21DDBD600();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_21DDB7F80()
{
  result = qword_27CE90348;
  if (!qword_27CE90348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE902C8);
    sub_21DDB9278(&qword_27CE90350, &qword_27CE90358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90348);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21DDB80FC()
{
  result = qword_27CE903D8;
  if (!qword_27CE903D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE903D8);
  }

  return result;
}

unint64_t sub_21DDB8180()
{
  result = qword_27CE903F8;
  if (!qword_27CE903F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903B0);
    sub_21DDBD790();
    sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
    sub_21DDB85A8(&qword_27CE903E8, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_21DDB9278(&qword_27CE90400, &qword_27CE903F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE903F8);
  }

  return result;
}

uint64_t sub_21DDB82F8(uint64_t a1)
{
  v2 = sub_21DDBDA10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DDB8354()
{
  result = qword_27CE90418;
  if (!qword_27CE90418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903A8);
    sub_21DDBDA10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903A0);
    sub_21DDB8180();
    swift_getOpaqueTypeConformance2();
    sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    sub_21DDB9278(&qword_27CE90420, &qword_27CE90410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90418);
  }

  return result;
}

unint64_t sub_21DDB84F8()
{
  result = qword_27CE90428;
  if (!qword_27CE90428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90428);
  }

  return result;
}

uint64_t sub_21DDB854C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21DDB85A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DDB85F0()
{
  result = qword_27CE90478;
  if (!qword_27CE90478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE903B0);
    sub_21DDBD830();
    sub_21DDB9278(&qword_27CE903E0, &qword_27CE903B0);
    sub_21DDB85A8(&qword_27CE90470, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_21DDB9278(&qword_27CE90400, &qword_27CE903F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90478);
  }

  return result;
}

unint64_t sub_21DDB8768()
{
  result = qword_27CE90480;
  if (!qword_27CE90480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90440);
    sub_21DDB87EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90480);
  }

  return result;
}

unint64_t sub_21DDB87EC()
{
  result = qword_27CE90488;
  if (!qword_27CE90488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90450);
    sub_21DDBDA10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90448);
    sub_21DDB85F0();
    swift_getOpaqueTypeConformance2();
    sub_21DDB85A8(&qword_27CE90408, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    sub_21DDB9278(&qword_27CE90420, &qword_27CE90410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90488);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DDB89B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21DDB8A18()
{
  result = qword_27CE904E8;
  if (!qword_27CE904E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE904D8);
    sub_21DDB9278(&qword_27CE904F0, &qword_27CE904F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE904E8);
  }

  return result;
}

unint64_t sub_21DDB8AC8()
{
  result = qword_27CE90500;
  if (!qword_27CE90500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE904E0);
    sub_21DDB9278(&qword_27CE90508, &qword_27CE90510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90500);
  }

  return result;
}

uint64_t sub_21DDB8B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21DDB8B90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
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

uint64_t sub_21DDB8CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21DDB8D50()
{
  result = qword_27CE90598;
  if (!qword_27CE90598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90590);
    sub_21DDB8E08();
    sub_21DDB9278(&qword_27CE905C0, &qword_27CE905C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90598);
  }

  return result;
}

unint64_t sub_21DDB8E08()
{
  result = qword_27CE905A0;
  if (!qword_27CE905A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE905A8);
    sub_21DDB9278(&qword_27CE905B0, &qword_27CE905B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE905A0);
  }

  return result;
}

uint64_t sub_21DDB8EC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21DDB8F28()
{
  result = qword_27CE905D0;
  if (!qword_27CE905D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90570);
    sub_21DDB8FE0();
    sub_21DDB9278(&qword_27CE90400, &qword_27CE903F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE905D0);
  }

  return result;
}

unint64_t sub_21DDB8FE0()
{
  result = qword_27CE905D8;
  if (!qword_27CE905D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90568);
    sub_21DDB9278(&qword_27CE905E0, &qword_27CE90560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE905D8);
  }

  return result;
}

uint64_t sub_21DDB9098(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21DDB9108()
{
  result = qword_27CE905F0;
  if (!qword_27CE905F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE90368);
    sub_21DDB9278(&qword_27CE905F8, &qword_27CE90600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE905F0);
  }

  return result;
}

unint64_t sub_21DDB91C0()
{
  result = qword_27CE90608;
  if (!qword_27CE90608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE904A0);
    sub_21DDB9278(&qword_27CE90610, &qword_27CE90618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE90608);
  }

  return result;
}

uint64_t sub_21DDB9278(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DDB9304(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for STCommunicationLimitsBlockingViewController());
  *&v2[qword_27CE90620] = a1;
  v3 = a1;
  return sub_21DDBD7E0();
}

uint64_t type metadata accessor for STCommunicationLimitsBlockingViewController()
{
  result = qword_27CE90630;
  if (!qword_27CE90630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21DDB9410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 1) >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  type metadata accessor for CommunicationLimitsBlockingViewModel();
  swift_getObjectType();

  swift_unknownObjectRetain();

  return sub_21DDB78F8(v7, a2, a3, a4);
}

id STCommunicationLimitsBlockingViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STCommunicationLimitsBlockingViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationLimitsBlockingViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_21DDB969C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for STCommunicationLimitsBlockingViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  sub_21DDBD6A0();
  sub_21DDBD7D0();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90628);
    if (swift_dynamicCastClass())
    {
      sub_21DDBD6A0();
      sub_21DDBD690();
    }
  }
}

void sub_21DDB9738(void *a1)
{
  v1 = a1;
  sub_21DDB969C();
}

id sub_21DDB980C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void static NaturalBlockingUIStyling.applyPrimaryLabelStyle(_:)(void *a1)
{
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v2 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = v2;

    v5 = v3;
  }

  v4 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
  [a1 setFont_];
}

void static NaturalBlockingUIStyling.applySecondaryLabelStyle(_:)(void *a1)
{
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];
  [a1 setFont_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [a1 setTextColor_];
}

uint64_t static NaturalBlockingUIStyling.primaryButtonConfiguration.getter()
{
  v0 = sub_21DDBDBA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DDBDC00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    sub_21DDBDBC0();
  }

  else
  {
    sub_21DDBDC40();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D75020], v4);
  sub_21DDBDB90();
  (*(v1 + 104))(v3, *MEMORY[0x277D74FD8], v0);
  return sub_21DDBDBB0();
}

uint64_t static NaturalBlockingUIStyling.applySecondaryButtonStyle(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90640);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = sub_21DDBDC50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NaturalBlockingUIStyling.secondaryButtonConfiguration.getter();
  sub_21DDBDC60();
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    sub_21DDBDC20();
  }

  sub_21DDBAC04(v5);
  sub_21DDBDC30();
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_21DDBDC70();
  return (*(v7 + 8))(v9, v6);
}

uint64_t static NaturalBlockingUIStyling.secondaryButtonConfiguration.getter()
{
  v0 = sub_21DDBDBA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DDBDC00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    sub_21DDBDC10();
  }

  else
  {
    sub_21DDBDC40();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D75020], v4);
  sub_21DDBDB90();
  (*(v1 + 104))(v3, *MEMORY[0x277D74FD8], v0);
  sub_21DDBDBB0();
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  sub_21DDBDBF0();
  v10 = [v8 systemGray6Color];
  return sub_21DDBDBE0();
}

uint64_t static NaturalBlockingUIStyling.applyButtonGroupStyle(_:)()
{
  result = _UISolariumEnabled();
  if (result)
  {
    v1[3] = sub_21DDBD650();
    v1[4] = MEMORY[0x277D74A50];
    __swift_allocate_boxed_opaque_existential_1(v1);
    sub_21DDBD640();
    return sub_21DDBDB80();
  }

  return result;
}

id NaturalBlockingUIStyling.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NaturalBlockingUIStyling.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NaturalBlockingUIStyling();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NaturalBlockingUIStyling.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NaturalBlockingUIStyling();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12ScreenTimeUI24NaturalBlockingUIStylingC23applyPrimaryButtonStyleyySo8UIButtonCFZ_0(uint64_t a1)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90640);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v23 = sub_21DDBDBA0();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DDBDC00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDBDC50();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  if (_UISolariumEnabled())
  {
    sub_21DDBDBC0();
  }

  else
  {
    sub_21DDBDC40();
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D75020], v9);
  sub_21DDBDB90();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v23);
  sub_21DDBDBB0();
  (*(v14 + 32))(v19, v17, v13);
  sub_21DDBDC60();
  if (!(*(v14 + 48))(v5, 1, v13))
  {
    sub_21DDBDC20();
  }

  sub_21DDBAC04(v5);
  sub_21DDBDC30();
  v20 = v24;
  (*(v14 + 16))(v24, v19, v13);
  (*(v14 + 56))(v20, 0, 1, v13);
  sub_21DDBDC70();
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_21DDBAC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void __categoryForBundleIdentifier_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_21DD93000, v0, v1, "Failed to fetch category for %{public}@ %{public}@");
}

void __categoryForWebpageURL_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_21DD93000, v0, v1, "Failed to fetch category for %{public}@: %{public}@");
}