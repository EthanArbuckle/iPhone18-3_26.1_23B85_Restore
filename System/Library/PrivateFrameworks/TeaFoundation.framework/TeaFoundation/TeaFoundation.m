uint64_t TFSetupCrashDetector()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];

  v2 = [v1 URLByAppendingPathComponent:@"CrashOnLaunch" isDirectory:0];
  v3 = detectedCrashOnLaunchURL;
  detectedCrashOnLaunchURL = v2;

  v4 = [v1 URLByAppendingPathComponent:@"WipeStateOnLaunch" isDirectory:0];
  v5 = wipeStateOnLaunchURL;
  wipeStateOnLaunchURL = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [detectedCrashOnLaunchURL path];
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8)
  {
    goto LABEL_5;
  }

  launchState = 1;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [wipeStateOnLaunchURL path];
  v11 = [v9 fileExistsAtPath:v10];

  if (!v11)
  {
    [wipeStateOnLaunchURL getFileSystemRepresentation:&wipeStateOnLaunchFile maxLength:1024];
LABEL_5:
    [detectedCrashOnLaunchURL getFileSystemRepresentation:&detectedCrashOnLaunchFile maxLength:1024];
    TFRegisterCrashCallbacks();
    v12 = 0;
    goto LABEL_6;
  }

  TFRemoveCrashFiles();
  v12 = 1;
LABEL_6:

  return v12;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{
  *(v3 - 128) = 0;

  return MEMORY[0x1EEDC6078](a1, v3 - 128, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v4;

  return MEMORY[0x1EEDC5E70](v5, v6, v3);
}

uint64_t OUTLINED_FUNCTION_26_8()
{
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_1BF027218(v1, v0);
}

void OUTLINED_FUNCTION_2_1()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 40);
  v3 = *(v1 + 32) + **(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_9()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x1BFB547B0);
}

uint64_t OUTLINED_FUNCTION_2_7(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_8()
{
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1BF0B64B4(v0);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 - 88) = *a1;
  *(v3 - 80) = v4;
  *(v3 - 72) = v5;
  v6 = *(v1 + 16);
  return v2;
}

void OUTLINED_FUNCTION_2_26(unint64_t a1@<X8>)
{

  sub_1BEFEBEAC(a1 > 1, v1, 1, v2);
}

void OUTLINED_FUNCTION_2_27()
{

  sub_1BF00DD60();
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 72) = a1;
  *(v3 - 64) = a2;
  *(v3 - 56) = a3;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1BF02832C(v8, va);
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_36()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1BF014DC0(v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_38()
{
  result = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

double OUTLINED_FUNCTION_2_40(uint64_t a1)
{
  *(v1 + 64) = a1;
  result = 0.0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

__n128 OUTLINED_FUNCTION_2_54()
{
  v2 = v0[1].n128_u64[0];
  result = *v0;
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  return result;
}

void OUTLINED_FUNCTION_2_57(uint64_t a1, unint64_t *a2)
{

  sub_1BF147080(0, a2, type metadata accessor for PoolObject);
}

uint64_t OUTLINED_FUNCTION_2_59()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_2_61()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_69()
{

  return sub_1BF004D14();
}

uint64_t OUTLINED_FUNCTION_2_71()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_18@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 24);
  *(a1 - 32) = *(v3 + 16);
  *(a1 - 24) = v1;
  *(a1 - 16) = v4;
  *(a1 - 8) = v2;
  return MEMORY[0x1E69E6328];
}

id OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1BEFE82CC(&a9, 0, 0);
}

void OUTLINED_FUNCTION_1_21(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1BFB53950);
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_1_32()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_1_33()
{
  *(v1 + 16) = v3;
  v6 = v1 + 16 * v4;
  *(v6 + 32) = v0;
  *(v6 + 40) = v2;

  return sub_1BF17A1BC();
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return sub_1BF046750(v2, v3, sub_1BF046804);
}

uint64_t OUTLINED_FUNCTION_1_36()
{

  return sub_1BF17B86C();
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return sub_1BF1797EC();
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_42(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t result)
{
  *v1 = v2;
  v1[3] = result;
  return result;
}

void OUTLINED_FUNCTION_1_45()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
  *(v2 - 128) = MEMORY[0x1E69E9820];
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1BEFEB1E0(0, 0, a3, a4, 0, a6, a7, v7);
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return sub_1BF17B41C();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_52@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1BEFECF40(v4, a1, v3, v2, a2);
}

uint64_t OUTLINED_FUNCTION_1_56()
{
  v5 = v0[3];
  result = v0[4];
  v4 = v0[5];
  v2 = v0[6];
  v3 = *(v0[2] - 8);
  return result;
}

void OUTLINED_FUNCTION_1_59()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
}

uint64_t OUTLINED_FUNCTION_1_61()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_62()
{

  return sub_1BF17B86C();
}

uint64_t OUTLINED_FUNCTION_1_66()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65()
{
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return v1;
}

uint64_t OUTLINED_FUNCTION_87()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_125()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v3 = *(v0 + 8 * v1 + 32);
}

__n128 OUTLINED_FUNCTION_3_16(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  result = a17;
  a1[2] = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_18()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_19()
{
  v5 = *(v3 - 104);
  v6 = *(v3 - 96);

  return sub_1BF0CA288(v3 - 88, v2, 1, v5, v6, v0, v1);
}

void OUTLINED_FUNCTION_3_20()
{
  v2 = *(v0 + 16) + 1;

  sub_1BEFEBEAC(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_1BF17A1FC();
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_1BF0CB03C(v8, v6, v5, v7, a5);
}

void OUTLINED_FUNCTION_3_43(uint64_t a1@<X8>)
{
  v2 = *(v1 - 304);
  *(a1 - 32) = *(v1 - 280);
  *(a1 - 24) = v2;
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_49@<X0>(void (*a1)(uint64_t, uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  return sub_1BF054138(a1, 0, v4, a2, a3, a4);
}

void OUTLINED_FUNCTION_3_50()
{

  JUMPOUT(0x1BFB52000);
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return sub_1BF17BB6C();
}

void TFRegisterCrashCallbacks()
{
  v0 = xmmword_1F3DB6380;
  sigaction(4, &v0, &lastSigIll);
  sigaction(11, &v0, &lastSigSegv);
  sigaction(8, &v0, &lastSigFpe);
  sigaction(10, &v0, &lastSigBus);
  NSSetUncaughtExceptionHandler(TFExceptionHandler);
}

void *sub_1BEFE4280(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  type metadata accessor for Observer();
  v2[3] = sub_1BF179CFC();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Observer();
  v2[4] = sub_1BF179CFC();
  (*(v8 + 16))(v13, a1, v6);
  v14 = a2(v13, v6);
  (*(v8 + 8))(a1, v6);
  v2[2] = v14;
  return v2;
}

uint64_t sub_1BEFE4460(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_1BF17B2EC();
  v4 = sub_1BF17B2DC();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void sub_1BEFE4510(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BEFE4560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t TFAmIBeingDebugged()
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  LODWORD(v4) = 0;
  *v34 = 0xE00000001;
  v35 = 1;
  v36 = getpid();
  v2 = 648;
  if (sysctl(v34, 4u, v3, &v2, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = (v4 >> 11) & 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void TFCompletedStartup(unsigned int a1)
{
  if ((atomic_fetch_or_explicit(TFCompletedStartup_startupCompletionState, a1, memory_order_relaxed) | a1) == 0xE)
  {
    TFUnregisterCrashCallbacks();
  }
}

uint64_t Optional.safelyUnwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = *(a1 + 16);
  v11 = 1;
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v10);
}

id FrameworkAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___TFTeaFoundationAssembly_assemblies;
  sub_1BEFE4958();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF182690;
  type metadata accessor for ManagerAssembly();
  v5 = OUTLINED_FUNCTION_0_83();
  *(v4 + 56) = v1;
  *(v4 + 64) = &off_1F3DBF830;
  *(v4 + 32) = v5;
  type metadata accessor for ProviderAssembly();
  v6 = OUTLINED_FUNCTION_0_83();
  *(v4 + 96) = v1;
  *(v4 + 104) = &off_1F3DC5B68;
  *(v4 + 72) = v6;
  type metadata accessor for ServiceAssembly();
  v7 = OUTLINED_FUNCTION_0_83();
  *(v4 + 136) = v1;
  *(v4 + 144) = &off_1F3DC72D0;
  *(v4 + 112) = v7;
  type metadata accessor for DiagnosticAssembly();
  v8 = OUTLINED_FUNCTION_0_83();
  *(v4 + 176) = v1;
  *(v4 + 184) = &off_1F3DBC438;
  *(v4 + 152) = v8;
  *&v0[v3] = v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BEFE4958()
{
  if (!qword_1ED8EF488)
  {
    sub_1BEFE53A4();
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF488);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_1BF17B86C();
}

uint64_t OUTLINED_FUNCTION_0_22(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_1BF17B84C();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return sub_1BF17B5FC();
}

unint64_t OUTLINED_FUNCTION_0_29(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_33@<X0>(uint64_t a1@<X8>)
{
  sub_1BEFE52DC(a1);
}

void OUTLINED_FUNCTION_0_34()
{

  sub_1BF0201A4();
}

uint64_t OUTLINED_FUNCTION_0_43()
{
  v3 = *(v0 + 16);

  return sub_1BEFEC888();
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return sub_1BF027218(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_64@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1BEFECF40(v3, a1, 0, v2, a2);
}

uint64_t OUTLINED_FUNCTION_0_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_82()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_83()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{

  return sub_1BEFF3270(&a17, &a9, v17, v18);
}

uint64_t sub_1BEFE52DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BEFE5310()
{
  result = os_variant_has_internal_content();
  byte_1ED8F0128 = result;
  return result;
}

unint64_t sub_1BEFE53A4()
{
  result = qword_1ED8EF7D0[0];
  if (!qword_1ED8EF7D0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED8EF7D0);
  }

  return result;
}

uint64_t SingletonPool.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

_BYTE *sub_1BEFE5440(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1BEFE545C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFE5494()
{
  result = sub_1BF1794FC();
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

uint64_t Container.init(bundleAssemblies:assemblies:singletonPool:environment:)()
{
  OUTLINED_FUNCTION_6_40();
  v4 = v3;
  v5 = *v1;
  v15 = *v6;
  sub_1BF1794EC();
  v7 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_environment) = 3;
  v8 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_definitions) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions) = v8;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations) = MEMORY[0x1E69E7CC0];
  type metadata accessor for ContainerStore();
  v9 = swift_allocObject();
  sub_1BF1794FC();
  sub_1BEFE5BB4();
  *(v9 + 16) = OUTLINED_FUNCTION_15_22();
  type metadata accessor for ContainerStoreWrapper();
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v10 = sub_1BEFE5F7C(v9);
  OUTLINED_FUNCTION_10_33(v10, OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
  type metadata accessor for Pool();
  swift_allocObject();

  v12 = sub_1BEFE63A8(v11);
  OUTLINED_FUNCTION_10_33(v12, OBJC_IVAR____TtC13TeaFoundation9Container_pool);
  type metadata accessor for CallbackStore();
  OUTLINED_FUNCTION_58();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v8;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore) = v13;
  OUTLINED_FUNCTION_1_61();
  *(v0 + v7) = v15;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_containerLock) = 0;
  sub_1BEFE652C(v4, v2);

  return v0;
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v2 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_6_9()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 136);

  return sub_1BF17B66C();
}

uint64_t OUTLINED_FUNCTION_6_15()
{
}

void OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13[(v16 >> 6) + 8] |= 1 << v16;
  v17 = (v13[6] + 24 * v16);
  *v17 = a12;
  v17[1] = v12;
  v17[2] = v14;
  *(v13[7] + 8 * v16) = v15;
  v18 = v13[2];
}

void OUTLINED_FUNCTION_6_22()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_35()
{
  v2 = *(v1 - 184);
  *(v1 - 112) = v0;
  *(v1 - 104) = v2;
  *(v1 - 144) = MEMORY[0x1E69E9820];
}

void OUTLINED_FUNCTION_6_36()
{
  v2 = *(v0 + 16) + 1;

  sub_1BF0A6578(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_6_37(uint64_t a1, unint64_t *a2)
{

  sub_1BF147080(a1, a2, type metadata accessor for WeakPoolObject);
}

uint64_t OUTLINED_FUNCTION_6_38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 36);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  return sub_1BF17B63C();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_41()
{
  v3 = *(v1 + 24);
  *(v1 + 24) = v0;

  return swift_retain_n();
}

void OUTLINED_FUNCTION_6_42()
{

  JUMPOUT(0x1BFB52000);
}

uint64_t OUTLINED_FUNCTION_6_44()
{
  v2 = *(v0 + 24);
  *(v0 + 24) = 0;
}

unint64_t sub_1BEFE5BB4()
{
  result = qword_1ED8F0138[0];
  if (!qword_1ED8F0138[0])
  {
    sub_1BF1794FC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8F0138);
  }

  return result;
}

void OUTLINED_FUNCTION_15_2()
{
  v2 = *(v0 - 336);

  JUMPOUT(0x1BFB547B0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_15_5(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6720];

  sub_1BF0B1D4C(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  return result;
}

void OUTLINED_FUNCTION_15_7()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_15_8()
{

  JUMPOUT(0x1BFB52000);
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_1BF17962C();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_1BF071E20(v3);
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_1BF179BBC();
}

void OUTLINED_FUNCTION_15_15()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  v2 = *(v0 + 128);
}

void *OUTLINED_FUNCTION_15_18(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_20(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_15_21()
{
  v2 = *(v0 + 96);

  return sub_1BF179EAC();
}

uint64_t OUTLINED_FUNCTION_15_22()
{

  return sub_1BF179DAC();
}

uint64_t OUTLINED_FUNCTION_15_24()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_1BF059F20(v13, a13);
}

uint64_t OUTLINED_FUNCTION_58_3()
{
}

uint64_t sub_1BEFE5F7C(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 16) = a1;
  swift_weakAssign();

  return v1;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_1BF17B43C();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1BEFF51F8(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1)
{
  *(a1 + 8) = sub_1BF0CE828;
  v2 = v1[21];
  result = v1[18];
  v4 = v1[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return sub_1BEFF6344();
}

void OUTLINED_FUNCTION_10_30()
{

  sub_1BF149F08(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_31(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v4 = a1;

  return sub_1BF088784(va, va1);
}

uint64_t OUTLINED_FUNCTION_10_32()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = *(v0[12] + 32);
  return v0[13];
}

uint64_t OUTLINED_FUNCTION_10_36()
{
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return sub_1BF179F3C();
}

uint64_t OUTLINED_FUNCTION_10_38()
{
  v2 = *(v0 - 152);
  *(v0 - 96) = *(v0 - 160);
  *(v0 - 88) = v2;

  return type metadata accessor for StateMachineError();
}

uint64_t sub_1BEFE63A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1794EC();
  v9 = sub_1BF1794BC();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *(v2 + 16) = v9;
  *(v2 + 24) = v11;
  v12 = MEMORY[0x1E69E7CC8];
  *(v2 + 32) = 0;
  *(v2 + 40) = v12;
  type metadata accessor for SingletonPool();
  *(swift_allocObject() + 16) = v12;
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v12;
  *(v2 + 56) = v13;
  *(v2 + 64) = v14;
  *(v2 + 72) = 1;
  *(v2 + 48) = a1;

  return v2;
}

uint64_t SingletonPool.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BEFE652C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v21 = result + 32;
    do
    {
      v4 = (v21 + 40 * v3);
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      v7 = (*(v6 + 8))(v5, v6);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          sub_1BEFE6A78(v9, v22);
          type metadata accessor for ProxyContainer();
          swift_allocObject();

          v11 = ProxyContainer.init(publicContainer:)(v10);
          v12 = v23;
          v13 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          (*(v13 + 8))(v11, v12, v13);

          __swift_destroy_boxed_opaque_existential_1(v22);
          v9 += 40;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 32);
    type metadata accessor for ProxyContainer();
    do
    {
      swift_allocObject();

      v17 = ProxyContainer.init(publicContainer:)(v16);
      v18 = v15[3];
      v19 = v15[4];
      __swift_project_boxed_opaque_existential_1(v15, v18);
      (*(v19 + 8))(v17, v18, v19);

      v15 += 5;
      --v14;
    }

    while (v14);
  }

  return result;
}

void *ProxyContainer.init(publicContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = Container.privateContainer()();
  type metadata accessor for RegistrationContainer();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v2[2] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v4;
  v2[3] = v6;
  v7 = *(a1 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
  v8 = type metadata accessor for CallbackRegistration();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();

  v2[4] = sub_1BEFE6DF8(v11, a1, v4);
  return v2;
}

uint64_t Container.privateContainer()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
  sub_1BEFE6ADC();
  v4 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_pool);
  v5 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
  v6 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  swift_beginAccess();
  v13 = *(v1 + v6);
  v7 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_containerLock);
  v8 = *(v2 + 48);
  v9 = *(v2 + 52);
  v10 = swift_allocObject();
  v11 = v7;

  sub_1BEFE6B38();
  return v10;
}

void sub_1BEFE68CC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BF1794FC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = *v0;
  sub_1BEFE7024();
  OUTLINED_FUNCTION_1_5(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  sub_1BEFE7510();
  if ((OUTLINED_FUNCTION_10_7() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v1;
  sub_1BEFE7024();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v1;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = v3;
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v28 = *(v7 + 16);
    v29 = OUTLINED_FUNCTION_40_1();
    v30(v29);
    sub_1BEFE7654(v19, v12, v3, v24);
    OUTLINED_FUNCTION_26_2();
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

uint64_t sub_1BEFE6A78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BEFE6ADC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:
    swift_retain_n();

    return v1;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFE6B38()
{
  OUTLINED_FUNCTION_6_40();
  v5 = *v4;
  v7 = *v6;
  sub_1BF1794EC();
  v8 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
  *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_environment) = 3;
  v9 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_definitions) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions) = v9;
  *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations) = MEMORY[0x1E69E7CC0];
  type metadata accessor for ContainerStoreWrapper();
  OUTLINED_FUNCTION_58();
  swift_allocObject();

  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore) = sub_1BEFE5F7C(0);
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_pool) = v3;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore) = v2;
  OUTLINED_FUNCTION_1_61();
  *(v0 + v8) = v5;
  *(v0 + OBJC_IVAR____TtC13TeaFoundation9Container_containerLock) = v7;

  sub_1BEFE6C74();

  return v0;
}

uint64_t sub_1BEFE6C74()
{
  swift_beginAccess();

  v1 = *(v0 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  sub_1BEFE68CC();
  *(v0 + 16) = v3;
  return swift_endAccess();
}

uint64_t type metadata accessor for CallbackRegistration()
{
  result = qword_1ED8EFF50;
  if (!qword_1ED8EFF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFE6D50()
{
  result = sub_1BF1794FC();
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

uint64_t sub_1BEFE6DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 16) = a1;
  swift_weakAssign();

  v6 = OBJC_IVAR____TtC13TeaFoundation9Container_identifier;
  v7 = OBJC_IVAR____TtC13TeaFoundation20CallbackRegistration_privateContainerIdentifier;
  v8 = sub_1BF1794FC();
  (*(*(v8 - 8) + 16))(v3 + v7, a3 + v6, v8);

  return v3;
}

uint64_t sub_1BEFE6EA8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_32_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  v4 = *(v0 + 56);
  v5 = *(v4 + 8 * v2);
  *(v4 + 8 * v2) = v1;
}

void OUTLINED_FUNCTION_32_7()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void sub_1BEFE7024()
{
  OUTLINED_FUNCTION_25_2();
  sub_1BF1794FC();
  sub_1BEFE7240(qword_1ED8F0138, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_77_0();
  sub_1BF179F1C();
  sub_1BEFE7398();
}

_OWORD *OUTLINED_FUNCTION_25()
{
  *(v0 + 16) = v1;

  return sub_1BEFF9A40((v3 - 128), (v0 + 32 * v2 + 32));
}

void OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v12 + 136);
  v14 = *(v12 + 120);
  v15 = *(v12 + 56);
  v16 = **(v12 + 112);
  v17 = *(a11 + 48);
  v18 = *v11;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_1BF17AE6C();
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(a1, 1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1BEFE7240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEFE7288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEFE72D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BF1794FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BEFE7314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_77_1()
{

  return swift_beginAccess();
}

void sub_1BEFE7398()
{
  OUTLINED_FUNCTION_32();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_1BEFE7240(v21, v22);
    v18 = sub_1BF17A05C();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_1BEFE7510()
{
  if (!qword_1ED8EFD50)
  {
    sub_1BF1794FC();
    type metadata accessor for Container(255);
    sub_1BEFE7240(qword_1ED8F0138, MEMORY[0x1E69695A8]);
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFD50);
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return sub_1BF096CA0();
}

void sub_1BEFE7654(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10 = sub_1BF1794FC();
  OUTLINED_FUNCTION_20(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_12_11();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t OUTLINED_FUNCTION_70()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return sub_1BF04F2C8();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_20_13()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_20_17()
{

  return sub_1BF17A5DC();
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1BF17B59C();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return sub_1BF17964C();
}

uint64_t OUTLINED_FUNCTION_12_17()
{
  v4 = *(*(v1 + 32) + 8);
  *(v3 - 176) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return sub_1BF17B0BC();
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  **(v0 + 16) = 1;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_12_21()
{

  JUMPOUT(0x1BFB52000);
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void *RegistrationContainer.register<A>(_:name:factory:)()
{
  OUTLINED_FUNCTION_0_60();
  return Container.register<A>(_:name:privateContainer:factory:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_60();
  return Container.register<A>(_:name:privateContainer:factory:)(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_63()
{
  v2 = *(v0 + 40);

  return sub_1BF17BB6C();
}

uint64_t sub_1BEFE7CB4()
{
  result = sub_1BF1794FC();
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

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_1BF17B86C();
}

uint64_t OUTLINED_FUNCTION_17_6()
{
  *(v2 - 120) = *(v0 + 16);
  result = v1;
  v4 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_8()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_1BF071E20(v3);
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v2 = *(v0 - 72);

  return sub_1BF17AD6C();
}

uint64_t OUTLINED_FUNCTION_17_17()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

unint64_t sub_1BEFE7F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[2];
        if (v14)
        {
          if (a3)
          {
            v15 = v13[1] == a2 && v14 == a3;
            if (v15 || (sub_1BF17B86C() & 1) != 0)
            {
              return v7;
            }
          }
        }

        else if (!a3)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1BEFE8034()
{
  result = qword_1ED8F0200;
  if (!qword_1ED8F0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0200);
  }

  return result;
}

unint64_t sub_1BEFE808C()
{
  result = qword_1ED8F01F8;
  if (!qword_1ED8F01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F01F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_1BF179EBC();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_1BF0F86D0(v0, v1 - 128);
}

unint64_t sub_1BEFE81F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63();
  MEMORY[0x1BFB53950](a1);
  if (a3)
  {
    OUTLINED_FUNCTION_30_1();
    sub_1BF179F3C();
  }

  sub_1BF17BB9C();
  v5 = OUTLINED_FUNCTION_17_2();

  return sub_1BEFE7F28(v5, v6, a3, v7);
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

id sub_1BEFE82CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1BF17B84C();
  if (a3)
  {
    v7 = sub_1BF17A07C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithAddressOfType:v6 name:v7];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void BridgedBundleAssembly.assemblies.getter()
{
  v1 = [*(v0 + 16) assemblies];
  sub_1BEFE861C();
  v2 = sub_1BF17A4DC();

  v3 = sub_1BEFE90AC(v2);
  if (v3)
  {
    v4 = v3;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BEFE8678(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v21;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB53020](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        v8 = type metadata accessor for BridgedAssembly();
        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        v19 = v8;
        v20 = &protocol witness table for BridgedAssembly;
        v18[0] = v9;
        v21 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BEFE8678(v10 > 1, v11 + 1, 1);
          v8 = v19;
          v12 = v20;
        }

        else
        {
          v12 = &protocol witness table for BridgedAssembly;
        }

        ++v5;
        v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
        v14 = *(*(v8 - 8) + 64);
        MEMORY[0x1EEE9AC00](v13);
        v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_1BEFE8714(v11, v16, &v21, v8, v12);
        __swift_destroy_boxed_opaque_existential_1(v18);
        v6 = v21;
      }

      while (v4 != v5);
    }
  }

  else
  {
  }
}

unint64_t sub_1BEFE861C()
{
  result = qword_1ED8EE520;
  if (!qword_1ED8EE520)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EE520);
  }

  return result;
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

uint64_t sub_1BEFE8714(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BEFE87AC(v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BEFE87B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BEFE8814()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_5_2(v3, v4);
  v8 = sub_1BEFE81F8(v5, v6, v7);
  OUTLINED_FUNCTION_1_5(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_52_0();
  sub_1BEFF2220();
  v11 = OUTLINED_FUNCTION_14_4();
  if (v11)
  {
    v16 = *v1;
    v17 = OUTLINED_FUNCTION_17_2();
    sub_1BEFE81F8(v17, v18, v0);
    OUTLINED_FUNCTION_11_2();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_54_1(v11, v12, v13, v14, v15, *v1);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_58_0();
    sub_1BEFEA160(v22);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t BridgedAssembly.load(in:)()
{
  [*(v0 + 16) loadInRegistry_];

  return swift_unknownObjectRelease();
}

id sub_1BEFE8970()
{
  v1 = v0[2];
  v2 = type metadata accessor for BridgedRegistrationContainer();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer] = v1;
  v16.receiver = v3;
  v16.super_class = v2;

  v4 = objc_msgSendSuper2(&v16, sel_init);
  v5 = v0[3];
  v6 = objc_allocWithZone(v2);
  *&v6[OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer] = v5;
  v15.receiver = v6;
  v15.super_class = v2;

  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = v0[4];
  v9 = type metadata accessor for BridgedCallbackRegistration();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC13TeaFoundation27BridgedCallbackRegistration_callback] = v8;
  v14.receiver = v10;
  v14.super_class = v9;

  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = objc_allocWithZone(type metadata accessor for BridgedProxyContainer());
  return sub_1BEFE8AE8(v4, v7, v11, v12);
}

id sub_1BEFE8AE8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC13TeaFoundation21BridgedProxyContainer_publicContainer] = a1;
  *&a4[OBJC_IVAR____TtC13TeaFoundation21BridgedProxyContainer_privateContainer] = a2;
  *&a4[OBJC_IVAR____TtC13TeaFoundation21BridgedProxyContainer_callback] = a3;
  v10.receiver = a4;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1BEFE8BF4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  v17 = sub_1BEFE8CB8(v15, a6, v14, a7, a8);

  return v17;
}

id sub_1BEFE8CB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer);
  sub_1BEFE8DAC();
  v11 = objc_allocWithZone(TFKey);
  v12 = a1;
  OUTLINED_FUNCTION_14();
  v16 = sub_1BEFE82CC(v13, v14, v15);
  [v16 address];

  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v10 + 16);
  v19 = *(v10 + 24);

  OUTLINED_FUNCTION_14();
  v23 = sub_1BEFE8DF0(v20, v21, v22, v19, a5, v17);

  return v23;
}

unint64_t sub_1BEFE8DAC()
{
  result = qword_1ED8EE510;
  if (!qword_1ED8EE510)
  {
    objc_lookUpClass("Protocol");
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EE510);
  }

  return result;
}

id sub_1BEFE8DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a5;
  v13 = sub_1BF1794FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE87C8();
  swift_endAccess();

  (*(v14 + 16))(v17, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v32;
  *(v18 + 24) = a6;
  sub_1BEFE9CD4(0, &qword_1ED8EF1E8, MEMORY[0x1E69E7C98] + 8, type metadata accessor for Definition);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v22 = sub_1BEFE87FC(a1, a2, a3, v17, sub_1BEFFCA60, v18);
  v23 = v22[2];
  v24 = v22[3];
  v25 = v22[4];
  v26 = OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions;
  swift_beginAccess();

  v27 = *(v7 + v26);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v7 + v26);
  sub_1BEFE8814();
  *(v7 + v26) = v34;
  swift_endAccess();
  v28 = type metadata accessor for BridgedDefinition();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC13TeaFoundation17BridgedDefinition_definition] = v22;
  v33.receiver = v29;
  v33.super_class = v28;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1BEFE9074()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BEFE90B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BF17B50C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1BEFE90D8(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(a4 + 16);
    if (v13 <= v16)
    {
      v17 = *(a4 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_1BF070FC8(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      v18[2] = v16;
      v18[3] = 2 * ((v19 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v16, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1BEFE6EA8(0, a6);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v14)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_14_2()
{

  sub_1BF07062C();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_1BF17B43C();
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_8(uint64_t result)
{
  *(v1 + 72) = result;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC2BB8](a1, a2, 0, 1, 0, 1, 0, 1);
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  *(v12 + 16) = 0x8000000000000000;
  return a12;
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1)
{
  *(v1 + 176) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1BF0DA974(v6, v9 - 128, (v5 + v8), v7, a5);
}

uint64_t OUTLINED_FUNCTION_14_15()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1BF014E18(v2, v3);
}

uint64_t OUTLINED_FUNCTION_14_17()
{
  v2 = *(v0 + 16);

  return type metadata accessor for Seal.Resolution();
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return sub_1BF17ABFC();
}

void *OUTLINED_FUNCTION_14_20(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_21@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = result;
  v4 = *(v3 - 152);
  *(v3 - 144) = v2;
  *(v3 - 136) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_22()
{

  return JSONPointer.rawValue.getter();
}

uint64_t sub_1BEFE948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_57();
  *(v6 + 40) = 1;
  v13(0);
  sub_1BEFE8034();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1BF179DAC();
  OUTLINED_FUNCTION_2_40(v15);
  *(v6 + qword_1ED8F52F8) = v14;
  *(v6 + 16) = v11;
  *(v6 + 24) = v10;
  *(v6 + 32) = v9;
  v16 = qword_1ED8F5300;
  v17 = sub_1BF1794FC();
  OUTLINED_FUNCTION_3_31(v17);
  (*(v18 + 32))(v6 + v16, v8);
  *(v6 + 48) = v7;
  *(v6 + 56) = a6;
  return v6;
}

void OUTLINED_FUNCTION_45_3()
{
  *(v1 + 8) = v0;
  v3 = v2[20];
  v4 = v2[18];
  v5 = v2[10];
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a17 + 24 * v17;
  result = *(v18 + 8);
  v20 = *(*(v18 + 16) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return type metadata accessor for UnfairLock();
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  v1 = *(v0 - 128);
  v2 = *(*(v0 - 136) + 8);
  return *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1BF17A2EC();
}

uint64_t OUTLINED_FUNCTION_5_19(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1)
{
  *(a1 + 32) = v1;
}

id OUTLINED_FUNCTION_5_32()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_5_36(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v6 = a1;

  return sub_1BF01A7AC(a4, v7, va);
}

uint64_t OUTLINED_FUNCTION_5_37@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_5_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1BF088784(&a9, &a10);
}

uint64_t OUTLINED_FUNCTION_5_43()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 80) + 96);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  type metadata accessor for ParentNetworkActivitySession.Error();

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return swift_beginAccess();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1BEFE9B94()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v9 = *v0;
  sub_1BEFE81F8(v10, v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    v19 = *v8;
    v14 = *(*v8 + 24);
    v15 = OUTLINED_FUNCTION_20_2();
    sub_1BEFE9FF8(v15, v7, v5, v16);
    sub_1BF17B43C();
    v17 = *(*(v19 + 48) + 24 * v1 + 16);

    v18 = *(*(v19 + 56) + 8 * v1);
    v3(0);
    sub_1BEFEA078();
    sub_1BF17B45C();
    *v8 = v19;
  }

  OUTLINED_FUNCTION_33();
}

void sub_1BEFE9C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7C98] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BEFE9CD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BEFE9D24()
{
  result = qword_1ED8EE988;
  if (!qword_1ED8EE988)
  {
    sub_1BEFE9C7C(255, &qword_1ED8EE980, MEMORY[0x1E69E6720]);
    sub_1BEFE6EA8(255, qword_1ED8F0A28);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ED8EE988);
  }

  return result;
}

void sub_1BEFE9DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  v11 = v10;
  v12 = *v10;
  v16 = sub_1BEFE81F8(v13, v14, v15);
  if (v17)
  {
    v18 = v16;
    v19 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_60_2();
    sub_1BEFF2220();
    OUTLINED_FUNCTION_81();
    v20 = *(*(a10 + 48) + 24 * v18 + 16);

    v21 = *(*(a10 + 56) + 8 * v18);
    sub_1BEFEC0B0(0, &qword_1ED8EF1E8, MEMORY[0x1E69E7C98] + 8, type metadata accessor for Definition);
    sub_1BEFEA078();
    OUTLINED_FUNCTION_77_0();
    sub_1BF17B45C();
    *v11 = a10;
  }

  OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1BEFE9EBC()
{
  OUTLINED_FUNCTION_80();
  v37 = v2;
  v38 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = OUTLINED_FUNCTION_6_4(v1, v12);
  v17 = sub_1BEFE81F8(v14, v15, v16);
  OUTLINED_FUNCTION_1_5(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v19;
  v23 = v20;
  v24 = OUTLINED_FUNCTION_20_2();
  sub_1BEFE9FF8(v24, v6, v4, v25);
  if ((sub_1BF17B43C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v26 = *v0;
  v27 = OUTLINED_FUNCTION_61();
  v29 = sub_1BEFE81F8(v27, v28, v9);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v22 = v29;
LABEL_5:
  v31 = *v7;
  if (v23)
  {
    v32 = *(v31 + 56);
    v33 = *(v32 + 8 * v22);
    *(v32 + 8 * v22) = v38;
    OUTLINED_FUNCTION_33();
  }

  else
  {
    v37(v22, v13, v11, v9, v38, v31);
    OUTLINED_FUNCTION_33();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BEFE9FF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1BF17B46C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1BEFEA078()
{
  result = qword_1ED8F0380;
  if (!qword_1ED8F0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0380);
  }

  return result;
}

unint64_t sub_1BEFEA0D0()
{
  result = qword_1ED8F0378;
  if (!qword_1ED8F0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0378);
  }

  return result;
}

void sub_1BEFEA124(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_3_14(a1, a6 + 8 * (a1 >> 6));
  OUTLINED_FUNCTION_15_6(v6, v7, v8, v9, v10, v11);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_16(v12, v13);
  }
}

uint64_t sub_1BEFEA168()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1BF17BB6C();
  Key.hash(into:)();
  return sub_1BF17BB9C();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t Key.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  result = MEMORY[0x1BFB53950](*v0);
  if (v2)
  {

    return sub_1BF179F3C();
  }

  return result;
}

uint64_t ProxyContainer.__deallocating_deinit()
{
  ProxyContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t RegistrationContainer.__deallocating_deinit()
{
  RegistrationContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *ProxyContainer.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t RegistrationContainer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BEFEA2F4()
{
  sub_1BEFEA34C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BEFEA34C()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();
  v2 = OBJC_IVAR____TtC13TeaFoundation20CallbackRegistration_privateContainerIdentifier;
  v3 = sub_1BF1794FC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_86_1()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;

  return swift_unownedRetainStrong();
}

uint64_t OUTLINED_FUNCTION_18()
{
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_1BF17909C();
}

uint64_t OUTLINED_FUNCTION_11_12()
{
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  *v0 = v2;
  v0[1] = v3;
  return v1;
}

void OUTLINED_FUNCTION_11_15()
{

  JUMPOUT(0x1BFB52B50);
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_23()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v0 + 8;
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  v2 = *(*(v0 + 32) + 8);

  return sub_1BF179F8C();
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return swift_allocError();
}

uint64_t static Key.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (sub_1BF17B86C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_30_5()
{
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  JUMPOUT(0x1BFB52170);
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_1BF179E9C();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_1BF17AE6C();
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_30_9()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

void *Container.register<A>(_:name:privateContainer:factory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = OUTLINED_FUNCTION_3_48(a1, a2, a3, a4, a5, a6, a7);
  v12 = toKey<A>(type:name:)(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_12_24(v12, v13, v14, v15, v16, v17, v18, v19, v26);
  OUTLINED_FUNCTION_11_24();
  v24 = sub_1BEFEAB10(v20, v21, v22, v23);

  return v24;
}

{
  OUTLINED_FUNCTION_3_48(a1, a2, a3, a4, a5, a6, a7);
  v11 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_12_24(v11, v12, v13, v14, v15, v16, v17, v18, v22);
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = v9;
  v19[4] = v8;

  v20 = sub_1BEFEAB10(&v22, v10, sub_1BEFF3F40, v19);

  return v20;
}

uint64_t toKey<A>(type:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  v14 = a4;
  MetatypeMetadata = swift_getMetatypeMetadata();
  sub_1BEFEAA34(v12, sub_1BEFEAD00, v13, MetatypeMetadata, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6810], MEMORY[0x1E69E7410], v9);
  *a5 = v12[1];
  a5[1] = a2;
  a5[2] = a3;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BEFEAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

void *sub_1BEFEAB10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v29 = a3;
  v8 = sub_1BF1794FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  swift_beginAccess();
  sub_1BEFE9DB4(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29);
  swift_endAccess();

  type metadata accessor for Definition();
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32 = v15;
  (*(v9 + 16))(v12, v28 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v21 = sub_1BEFEAD0C(&v31, v12, v29, a4);
  v22 = v21[2];
  v23 = v21[3];
  v24 = v21[4];
  v25 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v26 = *(v5 + v25);
  swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + v25);
  sub_1BEFE9E88();
  *(v5 + v25) = v30;
  swift_endAccess();
  return v21;
}

uint64_t sub_1BEFEAD0C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1BEFEAD74(a1, a2, a3, a4);
  return v11;
}

uint64_t *sub_1BEFEAD74(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v15 = *a1;
  v9 = *(a1 + 2);
  *(v4 + 40) = 1;
  v10 = *(v8 + 96);
  sub_1BF17AE6C();
  sub_1BEFE6EA8(255, qword_1ED8F0A28);
  OUTLINED_FUNCTION_2_34();
  swift_getFunctionTypeMetadata1();
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  sub_1BEFE8034();
  v4[8] = sub_1BF179DAC();
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  v4[13] = 0;
  *(v4 + qword_1ED8F52F8) = MEMORY[0x1E69E7CC0];
  *(v4 + 1) = v15;
  v4[4] = v9;
  v11 = qword_1ED8F5300;
  v12 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v12);
  (*(v13 + 32))(v4 + v11, a2);
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t sub_1BEFEAFAC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t toKey<A>(type:name:)()
{
  OUTLINED_FUNCTION_0_18();
  swift_getMetatypeMetadata();
  v1 = objc_allocWithZone(TFKey);
  v9 = OUTLINED_FUNCTION_1_17(v1, v2, v3, v4, v5, v6, v7, v8, v0);
  v12 = sub_1BEFE82CC(v9, v10, v11);
  [v12 address];

  OUTLINED_FUNCTION_2_15();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t ProxyContainer.callback.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  a1[3] = type metadata accessor for CallbackRegistration();
  a1[4] = &off_1F3DC7878;
  *a1 = v3;
}

uint64_t sub_1BEFEB0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  *(OUTLINED_FUNCTION_1_46(a1, a2, *(v5 + 24), sub_1BF00C58C, a5, qword_1ED8EEB10, &protocol descriptor for ApplicationStateManagerType) + 40) = 2;

  v8 = *(v5 + 16);
  *(OUTLINED_FUNCTION_1_46(v7, v9, *(v5 + 24), sub_1BF009A30, v10, &qword_1ED8EEBA8, &protocol descriptor for SceneStateManagerType) + 40) = 3;

  v12 = *(v5 + 16);
  *(OUTLINED_FUNCTION_1_46(v11, v13, *(v5 + 24), sub_1BF00E40C, v14, qword_1ED8EEBC0, &protocol descriptor for ScenePhaseManagerType) + 40) = 3;
}

uint64_t sub_1BEFEB1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_0_57();
  v19 = *MEMORY[0x1E69E9840];
  v15 = sub_1BEFE6EA8(0, v14);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v16 = a8(v15, v12, v11, v10, v9, v8);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void *sub_1BEFEB29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v12 = sub_1BF1794FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE9DB4(a1, a2, a3, v17, v18, v19, v20, v21, v32, v33);
  swift_endAccess();

  (*(v13 + 16))(v16, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v12);
  sub_1BEFEB4E4(0, &qword_1ED8EF1F0, qword_1ED8EEB10, &protocol descriptor for ApplicationStateManagerType, type metadata accessor for Definition);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFEB5D8(a1, a2, a3, v16, v33, a6, &unk_1ED8EEB08, &unk_1ED8EEB00, qword_1ED8EEB10, &protocol descriptor for ApplicationStateManagerType);
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v30 = *(v6 + v29);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + v29);
  sub_1BEFE9E88();
  *(v6 + v29) = v34;
  swift_endAccess();
  return v25;
}

void sub_1BEFEB4E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1BEFE6EA8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BEFEB54C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  result = *a2;
  if (!*a2)
  {
    sub_1BEFEB4E4(255, a3, a4, a5, MEMORY[0x1E69E6720]);
    sub_1BEFE6EA8(255, qword_1ED8F0A28);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BEFEB5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_0_57();
  *(v10 + 40) = 1;
  sub_1BEFEB54C(0, v17, v18, a9, a10);
  sub_1BEFE8034();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1BF179DAC();
  OUTLINED_FUNCTION_2_40(v20);
  *(v10 + qword_1ED8F52F8) = v19;
  *(v10 + 16) = v15;
  *(v10 + 24) = v14;
  *(v10 + 32) = v13;
  v21 = qword_1ED8F5300;
  v22 = sub_1BF1794FC();
  OUTLINED_FUNCTION_3_31(v22);
  (*(v23 + 32))(v10 + v21, v12);
  *(v10 + 48) = v11;
  *(v10 + 56) = a6;
  return v10;
}

void *sub_1BEFEB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v12 = sub_1BF1794FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE9DB4(a1, a2, a3, v17, v18, v19, v20, v21, v32, v33);
  swift_endAccess();

  (*(v13 + 16))(v16, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v12);
  sub_1BEFEB4E4(0, &qword_1ED8EF1F8, &qword_1ED8EEBA8, &protocol descriptor for SceneStateManagerType, type metadata accessor for Definition);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFEB5D8(a1, a2, a3, v16, v33, a6, &unk_1ED8EEBA0, &unk_1ED8EEB98, &qword_1ED8EEBA8, &protocol descriptor for SceneStateManagerType);
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v30 = *(v6 + v29);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + v29);
  sub_1BEFE9E88();
  *(v6 + v29) = v34;
  swift_endAccess();
  return v25;
}

void *sub_1BEFEB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v12 = sub_1BF1794FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE9DB4(a1, a2, a3, v17, v18, v19, v20, v21, v32, v33);
  swift_endAccess();

  (*(v13 + 16))(v16, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v12);
  sub_1BEFEB4E4(0, &qword_1ED8EF200, qword_1ED8EEBC0, &protocol descriptor for ScenePhaseManagerType, type metadata accessor for Definition);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFEB5D8(a1, a2, a3, v16, v33, a6, &unk_1ED8EEBB8, &unk_1ED8EEBB0, qword_1ED8EEBC0, &protocol descriptor for ScenePhaseManagerType);
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v30 = *(v6 + v29);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + v29);
  sub_1BEFE9E88();
  *(v6 + v29) = v34;
  swift_endAccess();
  return v25;
}

void *sub_1BEFEBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ReferenceService();
  v17[3] = sub_1BEFEBD28();
  v17[0] = v10;
  v11 = objc_allocWithZone(TFKey);
  v12 = sub_1BEFE82CC(v17, 0, 0);
  v13 = [v12 address];

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v15 = sub_1BEFEF0C8(v13, a1, a2, a3, sub_1BEFFCA60, v14);

  return v15;
}

uint64_t sub_1BEFEBC90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEFEBCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  *(sub_1BEFEBB6C(0, 0, *(v1 + 24), sub_1BF026188, 0) + 40) = 2;
}

unint64_t sub_1BEFEBD28()
{
  result = qword_1ED8EEC78;
  if (!qword_1ED8EEC78)
  {
    type metadata accessor for ReferenceService();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ED8EEC78);
  }

  return result;
}

uint64_t sub_1BEFEBDCC()
{
  result = sub_1BF1794FC();
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

uint64_t OUTLINED_FUNCTION_89_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1[2] = a11;
  a1[3] = v11;
  a1[4] = v12;
}

uint64_t Definition.__deallocating_deinit()
{
  Definition.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *Definition.deinit()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 7);

  v3 = *(v0 + 8);

  sub_1BEFEBFA0((v0 + 72));
  v4 = qword_1ED8F5300;
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[qword_1ED8F52F8];

  return v0;
}

uint64_t sub_1BEFEBFA0(uint64_t a1)
{
  sub_1BEFECBDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_52_1(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6720];

  sub_1BF0035CC(0, a1, a2 + 8, v3);
}

uint64_t OUTLINED_FUNCTION_52_3()
{
  result = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *v1;
  return result;
}

void OUTLINED_FUNCTION_52_5()
{
  v2 = v0[2];
  *(v1 - 96) = v0[3];
  *(v1 - 88) = v2;
  v6 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
}

void sub_1BEFEC0B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t result)
{
  *(v3 - 104) = result;
  *(v3 - 96) = v1;
  *(v3 - 128) = v2;
  v4 = *(v1 + 24);
  v5 = *(v1 + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x1BFB53950);
}

uint64_t OUTLINED_FUNCTION_13_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(v2 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1BF0DA974(v7, v9 - 128, (v5 + v6), v8, a5);
}

uint64_t OUTLINED_FUNCTION_13_15@<X0>(char a1@<W1>, uint64_t a2@<X8>, int a3, __int16 a4, char a5, char a6, uint64_t a7)
{
  a7 = a2;
  a6 = a1;

  return sub_1BF088784(&a6, &a7);
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  *(v0 - 88) = type metadata accessor for Seal.Resolution();

  return sub_1BF17AE6C();
}

id OUTLINED_FUNCTION_13_19()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{

  return static JSON.== infix(_:_:)(&a10, &a9);
}

uint64_t OUTLINED_FUNCTION_13_21()
{
  result = v0 - 8;
  v2 = *(v0 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_1BEFEC3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_1BEFE81F8(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v4);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v3 = *(*(v0 + 48) + 8 * v1);

  return swift_getMetatypeMetadata();
}

void OUTLINED_FUNCTION_24_10()
{

  JUMPOUT(0x1BFB547B0);
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  result = v0;
  v3 = *(v1 - 288);
  v4 = *(v1 - 224);
  return result;
}

void sub_1BEFEC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_140();
  if (v11)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v12 = v9;
  }

  v15 = *(v6 + 2);
  if (v12 <= v15)
  {
    v16 = *(v6 + 2);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_1BEFEC638(0, v10, a6, MEMORY[0x1E69E6F90]);
    v17 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_22_3();
    *(v17 + 2) = v15;
    *(v17 + 3) = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = v17 + 32;
  v20 = v6 + 32;
  if (v7)
  {
    if (v17 != v6 || &v20[8 * v15] <= v19)
    {
      memmove(v19, v20, 8 * v15);
    }

    *(v6 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BEFEC638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_22()
{

  sub_1BF07062C();
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v3);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{
  *(v3 + 72) = a1;
  v5 = *(v3 + 48);
  v6 = *(v3 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v5;
  *(a1 + 40) = v1;
  *(a1 + 48) = v6;

  return sub_1BF17A65C();
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return sub_1BF0F86D0(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_22_11()
{
  v2 = *(v0 - 104);

  return sub_1BF178C2C();
}

uint64_t sub_1BEFEC888()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  v8 = OUTLINED_FUNCTION_5_2(v6, v7);
  v11 = sub_1BEFE81F8(v8, v9, v10);
  OUTLINED_FUNCTION_1_5(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_52_0();
  sub_1BEFEC96C();
  v14 = OUTLINED_FUNCTION_14_4();
  if (v14)
  {
    v19 = *v2;
    v20 = OUTLINED_FUNCTION_17_2();
    sub_1BEFE81F8(v20, v21, v0);
    OUTLINED_FUNCTION_11_2();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_54_1(v14, v15, v16, v17, v18, *v2);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_58_0();
    sub_1BEFEA124(v25, v26, v5, v0, v1, v27);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BEFEC96C()
{
  if (!qword_1ED8EFBB0)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EFBE8, &type metadata for CallbackStore.CallbackDefinitionContainer, MEMORY[0x1E69E62F8]);
    sub_1BEFEA078();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFBB0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  v2 = *(*(v0 - 256) + *(v0 - 264));

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 112) = v3;
  *(v4 - 104) = a2;
  *(v4 - 96) = a3;
}

void OUTLINED_FUNCTION_23_7(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v16;
  v18 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v18);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{
}

void sub_1BEFECBDC()
{
  if (!qword_1ED8F0388)
  {
    sub_1BEFE6EA8(255, qword_1ED8F0390);
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8F0388);
    }
  }
}

uint64_t sub_1BEFECC44(uint64_t a1, uint64_t a2)
{
  sub_1BEFECBDC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 56);
  result = *(v8 + 8 * v7);
  *(v8 + 8 * v7) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return sub_1BF04F2C8();
}

void OUTLINED_FUNCTION_54_4()
{
  v2 = v0[3];
  *(v1 - 88) = v0[2];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t Container.Environment.description.getter()
{
  if (*v0 == 3)
  {
    return 0x6C616D726F6ELL;
  }

  OUTLINED_FUNCTION_5_44();
  v6 = v5 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  v7 = 0x6974616D6F747561;
  if (!v8)
  {
    v7 = 1869440356;
    v6 = 0xE400000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1BFB52000](v9, v10);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0x20676E6974736574;
}

uint64_t static Capabilities.isInternalBuild()()
{
  if (qword_1ED8F0120 != -1)
  {
    swift_once();
  }

  return byte_1ED8F0128;
}

uint64_t ProxyResolver.resolve<A>(_:)()
{
  OUTLINED_FUNCTION_2_49();
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_0_64(v9, &v14);

  return v14;
}

id sub_1BEFECF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v52 = a1;
  v11 = sub_1BF17AE6C();
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_16();
  v46 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_16();
  v45 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  v25 = *a2;
  v49 = a2[1];
  v50 = v25;
  v51 = a2[2];
  v26 = *(v5 + 48);
  if (v26)
  {
    [v26 lock];
  }

  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      v43 = v19;
      v44 = a5;
      v27 = sub_1BEFED384(a3);
      v53 = v50;
      v54 = v49;
      v55 = v51;
      if (!v27)
      {
        v29 = *(v5 + 40);
      }

      sub_1BEFED4D4();

      if (__swift_getEnumTagSinglePayload(v18, 1, a4) == 1)
      {
        v30 = *(v48 + 8);
        v31 = v18;
        v32 = v47;
        v48 += 8;
        v42 = v30;
        v30(v31, v47);
        v53 = v50;
        v54 = v49;
        v55 = v51;
        if (!v27)
        {
          v33 = *(v5 + 40);
        }

        v34 = v46;
        sub_1BEFED4D4();

        if (__swift_getEnumTagSinglePayload(v34, 1, a4) == 1)
        {
          v42(v34, v32);
          v35 = v44;
          v36 = 1;
          goto LABEL_21;
        }

        v39 = *(v43 + 32);
        v40 = v45;
        v39(v45, v34, a4);
        v41 = v44;
        v39(v44, v40, a4);
        v35 = v41;
      }

      else
      {

        v37 = *(v43 + 32);
        v37(v24, v18, a4);
        v38 = v44;
        v37(v44, v24, a4);
        v35 = v38;
      }

      v36 = 0;
LABEL_21:
      __swift_storeEnumTagSinglePayload(v35, v36, 1, a4);
      result = *(v6 + 48);
      if (!result)
      {
        return result;
      }

      return [result unlock];
    }
  }

  __swift_storeEnumTagSinglePayload(a5, 1, 1, a4);
  result = *(v5 + 48);
  if (!result)
  {
    return result;
  }

  return [result unlock];
}

uint64_t sub_1BEFED384(void (*a1)(uint64_t *))
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    type metadata accessor for CallbackStore();
    v5 = swift_allocObject();
    v7 = MEMORY[0x1E69E7CC8];
    *(v5 + 16) = MEMORY[0x1E69E7CC8];
    *(v5 + 24) = v7;
  }

  v8 = type metadata accessor for Context();
  swift_allocObject();
  sub_1BF009984(a1);

  v12[3] = v8;
  v12[4] = &off_1F3DC40F8;
  v12[0] = sub_1BF009DD4(v5);

  a1(v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = *(v2 + 40);

  v6 = sub_1BF009E34(v10);

  sub_1BEFE52DC(a1);
  return v6;
}

void sub_1BEFED4D4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v37 = v10;
  v11 = type metadata accessor for Container.LazyRegistration(0);
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v35 = v9[1];
  v36 = *v9;
  v34 = v9[2];
  v20 = OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v31 = v7;
    v32 = v5;
    v33 = v3;
    *(v1 + v20) = MEMORY[0x1E69E7CC0];
    v23 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
    v24 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v25 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_2_62();
      sub_1BEFF1CA4(v24, v19, v26);
      sub_1BEFE6ADC();
      v27 = *(v11 + 20);
      v28 = sub_1BEFEEDF0();

      if (v28)
      {
        v29 = *(v19 + 8);
        (*v19)(v1, v28);
      }

      OUTLINED_FUNCTION_1_63();
      sub_1BEFF4B24(v19, v30);
      v24 += v25;
      --v22;
    }

    while (v22);

    v5 = v32;
    v3 = v33;
    v7 = v31;
  }

  v38[0] = v36;
  v38[1] = v35;
  v38[2] = v34;
  sub_1BEFED69C(v38, v7, v5, v3, v37);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFED69C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  if (a3)
  {
    v25 = v15;
    v26 = v14;
    v27 = v16;
    sub_1BF009F38();
    if (__swift_getEnumTagSinglePayload(v13, 1, a4) != 1)
    {
      v17 = v24;
      (*(*(a4 - 8) + 32))(v24, v13, a4);
      v18 = v17;
      v19 = 0;
      return __swift_storeEnumTagSinglePayload(v18, v19, 1, a4);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v23 - v12, 1, 1, a4);
  }

  (*(v10 + 8))(v13, v9);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v21 = v23[1];
    v23[-8] = a4;
    v23[-7] = v21;
    v23[-6] = v15;
    v23[-5] = v14;
    v23[-4] = v16;
    v23[-3] = a2;
    v23[-2] = a3;
    sub_1BEFF3A54(sub_1BEFED8B0);
  }

  v18 = v24;
  v19 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, a4);
}

uint64_t sub_1BEFED8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v128 = a8;
  v129 = a7;
  v122 = a2;
  v15 = a10;
  v126 = *(a10 - 8);
  v127 = a1;
  v16 = *(v126 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v117 - v20;
  v22 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();
  v23 = sub_1BEFEEDE8(a4, a5, a6, *(a3 + v22));
  v125 = a6;
  if (v23)
  {
    v124 = a4;
    v24 = v21;
    swift_endAccess();
    v121 = a10;
    type metadata accessor for Definition();
    v25 = swift_dynamicCastClassUnconditional();
    v26 = *(a3 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
    sub_1BEFE6ADC();
    v27 = sub_1BEFEEDF0();

    if (v27)
    {
      v28 = sub_1BEFF3AB8(v27, v128);
      v29 = *(v25 + 40);
      v30 = v28;
      v120 = v27;
      v123 = a9;
      switch(v29)
      {
        case 1:
          v130 = v124;
          v131 = a5;
          v69 = a5;
          v132 = v125;
          if (!sub_1BEFF3BF4(&v130, 0))
          {
            goto LABEL_44;
          }

          v15 = v121;
          type metadata accessor for PoolObject();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
            goto LABEL_22;
          }

          sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
          v56 = swift_dynamicCastClass();
          if (!v56)
          {

            v69 = a5;
LABEL_44:
            v118 = v30;
            v106 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
            swift_beginAccess();
            LOBYTE(v135) = *(a3 + v106);
            v133 = type metadata accessor for ProxyResolver();
            v134 = &protocol witness table for ProxyResolver;
            v130 = v30;

            sub_1BEFF3CC4(&v135, &v130);
            __swift_destroy_boxed_opaque_existential_1(&v130);
            v107 = qword_1ED8F52F8;
            v108 = swift_beginAccess();
            v109 = *(v25 + v107);
            MEMORY[0x1EEE9AC00](v108);
            v119 = v69;
            v61 = v121;
            v113 = v121;
            v114 = a3;
            v115 = v24;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            sub_1BEFF3F7C(sub_1BF157AB8, (&v117 - 6), v109);

            v135 = v124;
            v136 = v69;
            v62 = v125;
            v137 = v125;
            type metadata accessor for PoolObject();
            v117 = *(v126 + 16);
            v117(v19, v24, v61);
            sub_1BEFF1AC4();
            v63 = 0;
            goto LABEL_45;
          }

          goto LABEL_37;
        case 2:
          v130 = v124;
          v131 = a5;
          v54 = a5;
          v132 = v125;
          if (!sub_1BEFF3BF4(&v130, 1))
          {
            goto LABEL_14;
          }

          v15 = v121;
          type metadata accessor for PoolObject();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
            goto LABEL_22;
          }

          sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            goto LABEL_37;
          }

          v54 = a5;
LABEL_14:
          v118 = v30;
          v57 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
          swift_beginAccess();
          LOBYTE(v135) = *(a3 + v57);
          v133 = type metadata accessor for ProxyResolver();
          v134 = &protocol witness table for ProxyResolver;
          v130 = v30;

          sub_1BEFF3CC4(&v135, &v130);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          v58 = qword_1ED8F52F8;
          v59 = swift_beginAccess();
          v60 = *(v25 + v58);
          MEMORY[0x1EEE9AC00](v59);
          v119 = v54;
          v61 = v121;
          v113 = v121;
          v114 = a3;
          v115 = v24;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v60);

          v135 = v124;
          v136 = v54;
          v62 = v125;
          v137 = v125;
          type metadata accessor for PoolObject();
          v117 = *(v126 + 16);
          v117(v19, v24, v61);
          sub_1BEFF1AC4();
          v63 = 1;
          goto LABEL_45;
        case 3:
          v130 = v124;
          v131 = a5;
          v64 = a5;
          v132 = v125;
          if (!sub_1BEFF3BF4(&v130, 2))
          {
            goto LABEL_19;
          }

          v15 = v121;
          type metadata accessor for PoolObject();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
LABEL_22:
            v70 = v55;

            v71 = v70 + *(*v70 + 112);
            v72 = v123;
            (*(v126 + 16))(v123, v71, v15);

            v73 = v72;
            v74 = 0;
            return __swift_storeEnumTagSinglePayload(v73, v74, 1, v15);
          }

          sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
          v56 = swift_dynamicCastClass();
          if (v56)
          {
LABEL_37:
            v92 = v56;

            v93 = *(v92 + 16);
            swift_unknownObjectRetain();

            v130 = v93;
            v94 = v121;
            swift_dynamicCast();
            v95 = v126;
            v96 = v123;
            (*(v126 + 16))(v123, v24, v94);
            __swift_storeEnumTagSinglePayload(v96, 0, 1, v94);
            result = (*(v95 + 8))(v24, v94);
          }

          else
          {

            v64 = a5;
LABEL_19:
            v118 = v30;
            v65 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
            swift_beginAccess();
            LOBYTE(v135) = *(a3 + v65);
            v133 = type metadata accessor for ProxyResolver();
            v134 = &protocol witness table for ProxyResolver;
            v130 = v30;

            sub_1BEFF3CC4(&v135, &v130);
            __swift_destroy_boxed_opaque_existential_1(&v130);
            v66 = qword_1ED8F52F8;
            v67 = swift_beginAccess();
            v68 = *(v25 + v66);
            MEMORY[0x1EEE9AC00](v67);
            v119 = v64;
            v61 = v121;
            v113 = v121;
            v114 = a3;
            v115 = v24;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v68);

            v135 = v124;
            v136 = v64;
            v62 = v125;
            v137 = v125;
            type metadata accessor for PoolObject();
            v117 = *(v126 + 16);
            v117(v19, v24, v61);
            sub_1BEFF1AC4();
            v63 = 2;
LABEL_45:
            v110 = v127;
            sub_1BEFF1B04(&v135, v63);

            sub_1BEFF6378(v25, v24, v118, v110, v122, a3, v124, v119, v62, v129, v128);

            v111 = v123;
            v117(v123, v24, v61);
            __swift_storeEnumTagSinglePayload(v111, 0, 1, v61);
            result = (*(v126 + 8))(v24, v61);
          }

          break;
        default:
          v31 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
          swift_beginAccess();
          LOBYTE(v135) = *(a3 + v31);
          v133 = type metadata accessor for ProxyResolver();
          v134 = &protocol witness table for ProxyResolver;
          v130 = v30;

          sub_1BEFF3CC4(&v135, &v130);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          v32 = qword_1ED8F52F8;
          v33 = swift_beginAccess();
          v34 = *(v25 + v32);
          MEMORY[0x1EEE9AC00](v33);
          v35 = v121;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v34);

          sub_1BEFF6378(v25, v24, v30, v127, v122, a3, v124, a5, v125, v129, v128);

          v36 = v126;
          v37 = v123;
          (*(v126 + 16))(v123, v24, v35);
          __swift_storeEnumTagSinglePayload(v37, 0, 1, v35);
          return (*(v36 + 8))(v24, v35);
      }

      return result;
    }

    LODWORD(v116) = 0;
    v112 = 402;
LABEL_49:
    v115 = v112;
    sub_1BF17B49C();
    __break(1u);
    JUMPOUT(0x1BEFEED7CLL);
  }

  swift_endAccess();
  v39 = OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions;
  swift_beginAccess();
  v40 = sub_1BEFEEDE8(a4, a5, a6, *(a3 + v39));
  if (!v40)
  {
    swift_endAccess();
    v73 = a9;
    v74 = 1;
    return __swift_storeEnumTagSinglePayload(v73, v74, 1, v15);
  }

  v41 = v40;
  swift_endAccess();
  v42 = *(a3 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
  sub_1BEFE6ADC();
  v43 = sub_1BEFEEDF0();

  if (!v43)
  {
    LODWORD(v116) = 0;
    v112 = 482;
    goto LABEL_49;
  }

  v121 = v43;
  v44 = sub_1BEFF3AB8(v43, v128);
  v45 = *(v41 + 40);
  v46 = v44;
  v123 = a9;
  switch(v45)
  {
    case 1:
      v130 = a4;
      v131 = a5;
      v132 = a6;
      if (sub_1BEFF3BF4(&v130, 0))
      {
        sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
        v75 = swift_dynamicCastClass();
        if (v75)
        {
          goto LABEL_35;
        }
      }

      v97 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      LOBYTE(v97) = *(a3 + v97);

      v98 = sub_1BEFF8D98(v97, v46);
      v120 = v46;
      v99 = v98;

      v138 = v99;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v100 = qword_1ED8F52F8;
      v101 = swift_beginAccess();
      v102 = *(v41 + v100);
      MEMORY[0x1EEE9AC00](v101);
      v113 = a10;
      v114 = a3;
      v115 = v21;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v102);

      v135 = a4;
      v136 = a5;
      v82 = v125;
      v137 = v125;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      *(swift_allocObject() + 16) = v99;
      swift_unknownObjectRetain();
      v83 = 0;
      goto LABEL_40;
    case 2:
      v130 = a4;
      v131 = a5;
      v132 = a6;
      if (!sub_1BEFF3BF4(&v130, 1))
      {
        goto LABEL_28;
      }

      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      v75 = swift_dynamicCastClass();
      if (v75)
      {
        goto LABEL_35;
      }

LABEL_28:
      v76 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      LOBYTE(v76) = *(a3 + v76);

      v77 = sub_1BEFF8D98(v76, v46);
      v120 = v46;
      v78 = v77;

      v138 = v78;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v79 = qword_1ED8F52F8;
      v80 = swift_beginAccess();
      v81 = *(v41 + v79);
      MEMORY[0x1EEE9AC00](v80);
      v113 = a10;
      v114 = a3;
      v115 = v21;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v81);

      v135 = a4;
      v136 = a5;
      v82 = v125;
      v137 = v125;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      *(swift_allocObject() + 16) = v78;
      swift_unknownObjectRetain();
      v83 = 1;
      goto LABEL_40;
    case 3:
      v130 = a4;
      v131 = a5;
      v132 = a6;
      if (!sub_1BEFF3BF4(&v130, 2))
      {
        goto LABEL_32;
      }

      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      v75 = swift_dynamicCastClass();
      if (v75)
      {
LABEL_35:
        v90 = v75;

        v91 = *(v90 + 16);
        swift_unknownObjectRetain();

        v130 = v91;
        swift_dynamicCast();
      }

      else
      {

LABEL_32:
        v84 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
        swift_beginAccess();
        LOBYTE(v84) = *(a3 + v84);

        v85 = sub_1BEFF8D98(v84, v46);
        v120 = v46;
        v86 = v85;

        v138 = v86;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v87 = qword_1ED8F52F8;
        v88 = swift_beginAccess();
        v89 = *(v41 + v87);
        MEMORY[0x1EEE9AC00](v88);
        v113 = a10;
        v114 = a3;
        v115 = v21;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v89);

        v135 = a4;
        v136 = a5;
        v82 = v125;
        v137 = v125;
        sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
        *(swift_allocObject() + 16) = v86;
        swift_unknownObjectRetain();
        v83 = 2;
LABEL_40:
        v103 = v127;
        sub_1BEFF1B04(&v135, v83);

        sub_1BEFFD78C(v41, v21, v120, v103, v122, a3, a4, a5, v82, v129, v128, a10);

        swift_unknownObjectRelease();
      }

      v104 = v126;
      v105 = v123;
      (*(v126 + 16))(v123, v21, a10);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, a10);
      result = (*(v104 + 8))(v21, a10);
      break;
    default:
      v47 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v138 = sub_1BEFF8D98(*(a3 + v47), v46);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v48 = qword_1ED8F52F8;
      v49 = swift_beginAccess();
      v124 = a4;
      v119 = a5;
      v50 = v46;
      v51 = *(v41 + v48);
      MEMORY[0x1EEE9AC00](v49);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BEFF3F7C(sub_1BF157AD8, (&v117 - 6), v51);

      sub_1BEFFD78C(v41, v21, v50, v127, v122, a3, v124, v119, a6, v129, v128, a10);

      swift_unknownObjectRelease();

      v52 = v126;
      v53 = v123;
      (*(v126 + 16))(v123, v21, a10);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, a10);
      return (*(v52 + 8))(v21, a10);
  }

  return result;
}

uint64_t sub_1BEFEED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_1BEFE81F8(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v4);
}

uint64_t sub_1BEFEEDF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (sub_1BEFE7024(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_1BF17B43C();
}

void sub_1BEFEEEE0(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_136();
    v6(v5);
    v7 = OUTLINED_FUNCTION_75();
    v8 = v4(v7);
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

uint64_t sub_1BEFEEF38(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1BF17AE6C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Definition.thenConfigure<A>(as:configuration:)()
{
  v1 = *(*v0 + 96);
  type metadata accessor for DefinitionConfiguration();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_6_24();

  sub_1BEFECC44(v3, v0 + 72);
  swift_endAccess();
}

void *sub_1BEFEF0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v12 = sub_1BF1794FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE9DB4(a1, a2, a3, v17, v18, v19, v20, v21, v32, v33);
  swift_endAccess();

  (*(v13 + 16))(v16, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v12);
  sub_1BEFEF308(0, &unk_1ED8EF208, type metadata accessor for Definition);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFE948C(a1, a2, a3, v16, v33, a6);
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v30 = *(v6 + v29);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + v29);
  sub_1BEFE9E88();
  *(v6 + v29) = v34;
  swift_endAccess();
  return v25;
}

uint64_t sub_1BEFEF2F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1BEFEF308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ReferenceService();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 16))();
}

{
  return (*(a7 + 8))();
}

unint64_t sub_1BEFEF3D0()
{
  result = qword_1ED8EEC88[0];
  if (!qword_1ED8EEC88[0])
  {
    sub_1BEFEF308(255, &qword_1ED8EEC80, MEMORY[0x1E69E6720]);
    sub_1BEFE6EA8(255, qword_1ED8F0A28);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, qword_1ED8EEC88);
  }

  return result;
}

uint64_t sub_1BEFEF478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return sub_1BEFEB1E0(a1, a2, a3, a4, a5, &qword_1ED8EE608, &protocol descriptor for DiagnosticAttachmentResolverType, sub_1BEFF0390);
}

uint64_t Definition.whenTesting(_:_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = (a1 + 32);
    swift_beginAccess();
    v5 = *(v3 + 96);
    sub_1BF17AE6C();
    sub_1BEFE6EA8(255, qword_1ED8F0A28);
    OUTLINED_FUNCTION_2_34();
    swift_getFunctionTypeMetadata1();
    sub_1BEFE8034();
    sub_1BF179E9C();
    do
    {
      v6 = *v4++;

      sub_1BF179EBC();
      --v2;
    }

    while (v2);
    swift_endAccess();
  }
}

uint64_t sub_1BEFEF8DC()
{
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_10_37();

  return sub_1BF17BB9C();
}

uint64_t sub_1BEFEF990()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation13CallbackScopeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void OUTLINED_FUNCTION_16_3()
{
  v2 = *(*(v0 + 16) + 16);

  os_unfair_lock_assert_owner(v2);
}

void OUTLINED_FUNCTION_16_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  result = v2;
  v6 = *(v4 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_1BEFEFDD8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_16_13()
{
  v3 = *(v0 + 104);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

void OUTLINED_FUNCTION_16_15(uint64_t a1, unint64_t *a2, uint64_t a3)
{

  sub_1BF032E20(0, a2, a3, type metadata accessor for Promise);
}

uint64_t OUTLINED_FUNCTION_16_22()
{

  return sub_1BF17BA5C();
}

uint64_t Container.resolver.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = Container.privateContainer()();
  v4 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_pool);
  v8 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_containerLock);
  v5 = type metadata accessor for ProxyResolver();
  swift_allocObject();
  v6 = v8;

  result = sub_1BEFF06BC(v1, v3, v4, &v8);
  a1[3] = v5;
  a1[4] = &protocol witness table for ProxyResolver;
  *a1 = result;
  return result;
}

uint64_t sub_1BEFEFCE0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000065636ELL;
  v3 = 0x616D726F66726570;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6974616D6F747561;
    }

    else
    {
      v5 = 1869440356;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0x616D726F66726570;
    v6 = 0xEB0000000065636ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6974616D6F747561;
    }

    else
    {
      v3 = 1869440356;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000006E6FLL;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF17B86C();
  }

  return v8 & 1;
}

uint64_t sub_1BEFEFDD8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 16))();
}

{
  return (*(a4 + 8))();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_120(uint64_t a1, ...)
{
  va_start(va, a1);

  return UnfairLock.init(options:)(va);
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_1BEFFFF04();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  v1 = *(*(v0 - 104) + 8);
  result = *(v0 - 88);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  *(v3 - 128) = 0;
  *(v3 - 120) = 0xE000000000000000;
  return sub_1BF0CA1E4(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  *(v4 - 104) = *(v4 - 176);
  *(v4 - 88) = v0;
  *(v4 - 128) = v3;
  *(v4 - 120) = v1;
  *(v4 - 112) = v2;
  sub_1BF0DA424(v3, v1, v2);
  v5 = *(v4 - 152);
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1BF028EE0(va, sub_1BF028F38);
}

void *OUTLINED_FUNCTION_4_29(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  result[5] = v4;
  return result;
}

void OUTLINED_FUNCTION_4_32()
{

  sub_1BF0A6578(v0 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  v6 = v0[3];
  v4 = v0[5];
  v5 = v0[4];
  v2 = v0[6];
  result = v0[7];
  v3 = *(v0[2] - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return sub_1BF17A41C();
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return sub_1BF17AE6C();
}

void OUTLINED_FUNCTION_4_43()
{

  JUMPOUT(0x1BFB52000);
}

void OUTLINED_FUNCTION_4_44()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t UnfairLock.init(options:)(int *a1)
{
  v2 = *a1;
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *v3 = 0;
  *(v1 + 24) = (v2 & 1) << 16;
  return v1;
}

uint64_t sub_1BEFF0338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1BEFF07BC(a1, a2, a3);
  return v9;
}

void *sub_1BEFF0390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v12 = sub_1BF1794FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFE9DB4(a1, a2, a3, v17, v18, v19, v20, v21, v32, v33);
  swift_endAccess();

  (*(v13 + 16))(v16, a4 + OBJC_IVAR____TtC13TeaFoundation9Container_identifier, v12);
  sub_1BEFEB4E4(0, &qword_1ED8EE918, &qword_1ED8EE608, &protocol descriptor for DiagnosticAttachmentResolverType, type metadata accessor for Definition);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFEB5D8(a1, a2, a3, v16, v33, a6, &unk_1ED8EE600, &unk_1ED8EE5F8, &qword_1ED8EE608, &protocol descriptor for DiagnosticAttachmentResolverType);
  v26 = v25[2];
  v27 = v25[3];
  v28 = v25[4];
  v29 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();

  v30 = *(v6 + v29);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v6 + v29);
  sub_1BEFE9E88();
  *(v6 + v29) = v34;
  swift_endAccess();
  return v25;
}

uint64_t Definition.thenConfigure(_:)()
{
  v1 = *(*v0 + 96);
  type metadata accessor for DefinitionConfiguration();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_6_24();

  sub_1BEFECC44(v3, v0 + 72);
  swift_endAccess();
}

uint64_t sub_1BEFF06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  swift_weakInit();
  swift_weakInit();
  swift_weakInit();
  *(v4 + 40) = 0;
  swift_weakAssign();

  swift_weakAssign();

  swift_weakAssign();

  *(v4 + 48) = v5;
  return v4;
}

uint64_t sub_1BEFF0764(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  sub_1BEFEF478(0, 0, *(v1 + 24), sub_1BF03859C, 0);
}

uint64_t sub_1BEFF07BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = qword_1ED8F52F0;
  v8 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v8);
  (*(v9 + 32))(v3 + v7, a1);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t Definition.whenTesting(_:_:)(char *a1)
{
  v2 = *v1;
  v5 = *a1;
  swift_beginAccess();
  v3 = *(v2 + 96);
  sub_1BF17AE6C();
  sub_1BEFE6EA8(255, qword_1ED8F0A28);
  OUTLINED_FUNCTION_2_34();
  swift_getFunctionTypeMetadata1();
  sub_1BEFE8034();
  sub_1BF179E9C();

  sub_1BF179EBC();
  swift_endAccess();
}

uint64_t sub_1BEFF0920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *__return_ptr, uint64_t, void, void, uint64_t))
{
  v31 = a7;
  v32 = a8;
  v9 = v8;
  v15 = sub_1BF1794FC();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v29 = a2[1];
  v30 = v23;
  HIDWORD(v28) = *(a2 + 16);
  type metadata accessor for CallbackDefinition();
  (*(v18 + 16))(v22, v9 + OBJC_IVAR____TtC13TeaFoundation20CallbackRegistration_privateContainerIdentifier, v15);
  v24 = swift_allocObject();
  v24[2] = a5;
  v24[3] = a3;
  v24[4] = a4;
  v25 = sub_1BEFF0338(v22, v31, v24);
  v26 = *(v9 + 16);

  v32(&v37, a1, 0, 0, a5);
  v35 = v37;
  v36 = v38;
  v33[0] = v30;
  v33[1] = v29;
  v34 = BYTE4(v28);
  sub_1BEFEF4F4(a1, &v35, v33, v25);
}

unint64_t sub_1BEFF0AF4()
{
  result = sub_1BEFF0B78();
  if (v1 <= 0x3F)
  {
    result = sub_1BF1794FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BEFF0B78()
{
  result = qword_1ED8F01C0;
  if (!qword_1ED8F01C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED8F01C0);
  }

  return result;
}

uint64_t sub_1BEFF0C14()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BEFF0C64()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Container.LazyRegistration(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  v15 = OBJC_IVAR____TtC13TeaFoundation9Container_identifier;
  v16 = *(v9 + 28);
  v17 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v17);
  (*(v18 + 16))(&v14[v16], v7 + v15);
  *v14 = v5;
  *(v14 + 1) = v3;
  v19 = OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations;
  swift_beginAccess();

  sub_1BEFF0EAC();
  v20 = *(*(v1 + v19) + 16);
  sub_1BEFF12A0(v20);
  v21 = *(v1 + v19);
  *(v21 + 16) = v20 + 1;
  sub_1BEFF123C(v14, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20);
  *(v1 + v19) = v21;
  swift_endAccess();
  OUTLINED_FUNCTION_26_2();
}

uint64_t RegistrationContainer.lazy(block:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1BEFF0C64();
}

uint64_t sub_1BEFF0E74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEFF0EC4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

void sub_1BEFF0F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void))
{
  OUTLINED_FUNCTION_140();
  if (v13)
  {
    OUTLINED_FUNCTION_2();
    if (v15 != v16)
    {
      OUTLINED_FUNCTION_8_0();
      if (v15)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = *(v7 + 16);
  v18 = v12(v17, v14);
  v19 = *(a6(0) - 8);
  if (v8)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    sub_1BEFFA724(v7 + v20, v17, v18 + v20, a7);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1BEFF1084(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BEFF11E8(0, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BEFF1184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BEFF11E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17B70C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BEFF123C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Container.LazyRegistration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEFF12B8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_1BEFF131C()
{
  result = qword_1ED8F0C80[0];
  if (!qword_1ED8F0C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8F0C80);
  }

  return result;
}

unint64_t sub_1BEFF1374()
{
  result = qword_1ED8F0C78;
  if (!qword_1ED8F0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0C78);
  }

  return result;
}

BOOL sub_1BEFF13EC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void *Lazy.init(options:loadBlock:)()
{
  OUTLINED_FUNCTION_29_10();
  v4 = *v3;
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 96);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_4_0();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  *(v0 + v13) = sub_1BF179CFC();
  OUTLINED_FUNCTION_4_0();
  v15 = *(v14 + 112);
  v20 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v15) = UnfairLock.init(options:)(&v20);
  v0[2] = v2;
  v0[3] = v1;
  v16 = qword_1ED8F01C8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = byte_1ED8F52C8;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v4;
  }

  *(v0 + *(*v0 + 120)) = v18;
  return v0;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v4 = *(v2 - 104);

  return MEMORY[0x1EEDC55C8](v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t a1)
{
  result = v2[13];
  v5 = v2[10];
  v2[2] = a1;
  v6 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_29_7()
{

  sub_1BF071C70();
}

void OUTLINED_FUNCTION_29_8(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = a1 + *(v3 + 72) * v2;
  v5 = *(v3 + 16);
}

uint64_t OUTLINED_FUNCTION_90_0(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v1;
}

void sub_1BEFF16D4()
{
  v0 = sub_1BF17A07C();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1ED8F52C8 = v2;
}

unint64_t sub_1BEFF173C()
{
  result = qword_1ED8EF9C0;
  if (!qword_1ED8EF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF9C0);
  }

  return result;
}

unint64_t sub_1BEFF1794()
{
  result = qword_1ED8EF9B8;
  if (!qword_1ED8EF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF9B8);
  }

  return result;
}

void *PromiseDeduper.init(options:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = v3[10];
  v6 = v3[11];
  type metadata accessor for Promise();
  v7 = v3[12];
  v2[2] = sub_1BF179CEC();
  v11 = 0;
  v8 = type metadata accessor for UnfairLock();
  swift_allocObject();
  v9 = UnfairLock.init(options:)(&v11);
  v2[6] = v8;
  v2[7] = &protocol witness table for UnfairLock;
  v2[3] = v9;
  v2[8] = v4;
  return v2;
}

unint64_t sub_1BEFF1988()
{
  result = qword_1ED8EFFF0[0];
  if (!qword_1ED8EFFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EFFF0);
  }

  return result;
}

unint64_t sub_1BEFF19E0()
{
  result = qword_1ED8EFFE8;
  if (!qword_1ED8EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EFFE8);
  }

  return result;
}

uint64_t sub_1BEFF1AC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BEFF4AB8();
  return v3;
}

uint64_t sub_1BEFF1B04(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = v2[6];
    }

    else
    {
      v9 = v2[7];
    }

    v11[0] = *a1;
    v11[1] = v3;
    v11[2] = v5;

    SingletonPool.store(for:value:)(v11);
  }

  else
  {
    swift_beginAccess();

    v7 = v2[5];
    swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[5];
    sub_1BEFF6344();
    v2[5] = v10;
    return swift_endAccess();
  }
}

uint64_t SingletonPool.store(for:value:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();

  v5 = *(v1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  sub_1BEFF6344();
  *(v1 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1BEFF1CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1BEFF1D04(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  type metadata accessor for CallbackDefinition();
  sub_1BF179CFC();
  v61 = v3;
  if (!v5)
  {
LABEL_18:
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_10_9();
    v32 = *(v2 + 16);
    if (*(v32 + 16) && (v33 = sub_1BEFE81F8(v61, v4, v5), (v34 & 1) != 0))
    {
      v35 = *(*(v32 + 56) + 8 * v33);
      swift_endAccess();
      v36 = *(v35 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v37 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      while (v36 != v37)
      {
        if (v37 >= *(v35 + 16))
        {
          goto LABEL_36;
        }

        if ((*(v35 + 8 * v37 + 32) & 0x8000000000000000) != 0)
        {
          OUTLINED_FUNCTION_11_10();
        }

        else
        {
          OUTLINED_FUNCTION_22_6();
        }

        v40 = *(v39 + 80);

        if (v40(v41))
        {

          ++v37;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = *(v38 + 16);
            v43 = OUTLINED_FUNCTION_9_17();
            sub_1BEFF5138(v43, v44, v45);
          }

          v47 = *(v38 + 16);
          v46 = *(v38 + 24);
          if (v47 >= v46 >> 1)
          {
            v48 = OUTLINED_FUNCTION_8_17(v46);
            sub_1BEFF5138(v48, v47 + 1, 1);
          }

          OUTLINED_FUNCTION_28_6();
        }
      }

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_7_2();

      v49 = *(v2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_17_6();
      sub_1BEFEC888();
      *(v2 + 16) = v62;
      v50 = swift_endAccess();
      v51 = MEMORY[0x1EEE9AC00](v50);
      OUTLINED_FUNCTION_10_18(v51, &qword_1ED8EFBE8, &type metadata for CallbackStore.CallbackDefinitionContainer);
      sub_1BEFF5E60();
      v52 = OUTLINED_FUNCTION_15_10();
      sub_1BEFF5EDC(v52, v53, v54, v55, v56, v57, v58, v59);

      sub_1BF17A65C();
      OUTLINED_FUNCTION_7_0();
      swift_getWitnessTable();
      sub_1BF17A5CC();
    }

    else
    {
      swift_endAccess();
    }

    return;
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_10_9();
  v6 = sub_1BEFEC3C0(v3, 0, 0, *(v2 + 16));
  if (!v6)
  {
    swift_endAccess();

    goto LABEL_18;
  }

  v7 = v6;
  v60 = v5;
  swift_endAccess();
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_7_2();

      v21 = *(v2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_17_6();
      sub_1BEFEC888();
      *(v2 + 16) = v62;

      v22 = swift_endAccess();
      v23 = MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_10_18(v23, &qword_1ED8EFBE8, &type metadata for CallbackStore.CallbackDefinitionContainer);
      sub_1BEFF5E60();
      v24 = OUTLINED_FUNCTION_15_10();
      sub_1BEFF5EDC(v24, v25, v26, v27, v28, v29, v30, v31);

      sub_1BF17A65C();
      OUTLINED_FUNCTION_7_0();
      swift_getWitnessTable();
      sub_1BF17A5CC();
      v5 = v60;
      goto LABEL_18;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    if ((*(v7 + 8 * v8 + 32) & 0x8000000000000000) != 0)
    {
      OUTLINED_FUNCTION_11_10();
    }

    else
    {
      OUTLINED_FUNCTION_22_6();
    }

    v12 = *(v11 + 80);

    if (v12(v13))
    {

      ++v8;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v10 + 16);
        v15 = OUTLINED_FUNCTION_9_17();
        sub_1BEFF5138(v15, v16, v17);
      }

      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = OUTLINED_FUNCTION_8_17(v18);
        sub_1BEFF5138(v20, v19 + 1, 1);
      }

      OUTLINED_FUNCTION_28_6();
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1BEFF2220()
{
  if (!qword_1ED8EE500)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EF1E8, MEMORY[0x1E69E7C98] + 8, type metadata accessor for Definition);
    sub_1BEFEA078();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE500);
    }
  }
}

id sub_1BEFF23C4(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    v15 = sub_1BF17A0AC();
    a4 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = a3;
  v19 = a1;
  v20 = sub_1BEFF24C0(v18, v15, a4, a7, v17, a8, a9);

  return v20;
}

id sub_1BEFF24C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer);
  sub_1BEFE8DAC();
  v15 = objc_allocWithZone(TFKey);
  v16 = a1;
  OUTLINED_FUNCTION_14();
  v20 = sub_1BEFE82CC(v17, v18, v19);
  v21 = [v20 address];

  OUTLINED_FUNCTION_58();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = *(v14 + 16);
  v24 = *(v14 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = sub_1BEFE8DF0(v21, a2, a3, v24, a7, v22);

  return v25;
}

id sub_1BEFF261C(unint64_t a1)
{
  v2 = a1;
  if (a1 >= 4)
  {
    type metadata accessor for TFDefinitionScope();
    result = sub_1BF17BA4C();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13TeaFoundation17BridgedDefinition_definition);
    ObjectType = swift_getObjectType();
    *(v3 + 40) = v2;
    v5 = objc_allocWithZone(ObjectType);
    *&v5[OBJC_IVAR____TtC13TeaFoundation17BridgedDefinition_definition] = v3;
    v7.receiver = v5;
    v7.super_class = ObjectType;

    return objc_msgSendSuper2(&v7, sel_init);
  }

  return result;
}

id sub_1BEFF27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer);
  swift_getMetatypeMetadata();
  v12 = objc_allocWithZone(TFKey);
  OUTLINED_FUNCTION_14();
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  OUTLINED_FUNCTION_58();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = *(v11 + 16);
  v20 = *(v11 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v21 = sub_1BEFE8DF0(v17, a2, a3, v20, sub_1BEFFD15C, v18);

  return v21;
}

uint64_t sub_1BEFF2990()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1BEFF29C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC13TeaFoundation17BridgedDefinition_definition);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_1BEFF2B1C(sub_1BF021C48, v7);

  v9 = objc_allocWithZone(ObjectType);
  *&v9[OBJC_IVAR____TtC13TeaFoundation17BridgedDefinition_definition] = v8;
  v11.receiver = v9;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BEFF2A8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BEFF2AC4()
{
  if (!qword_1ED8EE610)
  {
    v0 = type metadata accessor for DefinitionConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE610);
    }
  }
}

uint64_t sub_1BEFF2B1C(uint64_t a1, uint64_t a2)
{
  sub_1BEFF2AC4();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[3] = v6;
  v9[4] = &off_1F3DC7868;
  v9[0] = v7;
  swift_beginAccess();

  sub_1BEFECC44(v9, v2 + 72);
  swift_endAccess();
}

uint64_t sub_1BEFF2C60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1BEFF2C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC13TeaFoundation28BridgedRegistrationContainer_registrationContainer);
  swift_getMetatypeMetadata();
  v8 = objc_allocWithZone(TFKey);
  OUTLINED_FUNCTION_14();
  v12 = sub_1BEFE82CC(v9, v10, v11);
  [v12 address];

  OUTLINED_FUNCTION_58();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *(v7 + 16);
  v15 = *(v7 + 24);

  OUTLINED_FUNCTION_14();
  v20 = sub_1BEFE8DF0(v16, v17, v18, v15, v19, v13);

  return v20;
}

TFCallbackScope *TFCallbackScopeName(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [TFCallbackScope alloc];
  v7[0] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v4 = [(TFCallbackScope *)v2 initWithScope:1 names:v3];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t sub_1BEFF2F54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEFF2F90()
{
  OUTLINED_FUNCTION_2_67();
  v5 = *(v0 + OBJC_IVAR____TtC13TeaFoundation27BridgedCallbackRegistration_callback);
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v41 = v4;
  v6 = objc_allocWithZone(TFKey);
  v7 = sub_1BEFE82CC(&v41, 0, 0);
  v8 = [v7 address];

  v42 = 0;
  v41 = v8;
  sub_1BEFF30C8(v3, &v38);
  OUTLINED_FUNCTION_1_67(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30, v33, v36, v38);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v1;

  OUTLINED_FUNCTION_0_88(v18, v19, v20, v21, v22, v23, v24, v25, v28, v31, v34, v37, v38, *(&v38 + 1), v39, v40, v41);

  sub_1BEFF3798(v29, v32, v35);
}

uint64_t sub_1BEFF3090()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BEFF30C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 scope];
  if (v4 == 2)
  {
    v9 = sub_1BEFF3210(a1);

    v6 = 0;
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = 1;
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    v5 = sub_1BEFF3210(a1);
    if (v5)
    {
      if (v5[2])
      {
        v7 = v5[4];
        v6 = v5[5];
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        v8 = 0;
LABEL_14:
        *a2 = v7;
        *(a2 + 8) = v6;
        *(a2 + 16) = v8;
        return;
      }
    }

    v7 = 0;
    v8 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_14;
  }

  if (!v4)
  {

    v7 = 0;
    v6 = 0;
    v8 = 2;
    goto LABEL_14;
  }

  sub_1BF17B49C();
  __break(1u);
}

uint64_t sub_1BEFF3210(void *a1)
{
  v1 = [a1 names];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF17A4DC();

  return v3;
}

uint64_t sub_1BEFF3270(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BF1794FC();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v17 = *(a1 + 2);
  v18 = *a2;
  v19 = a2[1];
  v28 = *(a2 + 16);
  (*(v12 + 16))(v16, v4 + OBJC_IVAR____TtC13TeaFoundation20CallbackRegistration_privateContainerIdentifier, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_1BEFF3454();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  (*(v12 + 32))(v24 + qword_1ED8F52F0, v16, v9);
  *(v24 + 16) = sub_1BF03BBBC;
  *(v24 + 24) = v20;
  v25 = *(v4 + 16);
  v32 = v29;
  v33 = v17;
  v30[0] = v18;
  v30[1] = v19;
  v31 = v28;

  sub_1BEFF34A8(&v32, v30, v24);
}

uint64_t sub_1BEFF341C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BEFF3454()
{
  if (!qword_1ED8EE0E0[0])
  {
    v0 = type metadata accessor for CallbackDefinition();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8EE0E0);
    }
  }
}

uint64_t sub_1BEFF3798(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

TFCallbackScope *TFCallbackScopeAny()
{
  v0 = [[TFCallbackScope alloc] initWithScope:0 names:0];

  return v0;
}

uint64_t sub_1BEFF38BC()
{
  OUTLINED_FUNCTION_2_67();
  v5 = *(v0 + OBJC_IVAR____TtC13TeaFoundation27BridgedCallbackRegistration_callback);
  v44 = sub_1BEFE8DAC();
  *&v42 = v4;
  v6 = objc_allocWithZone(TFKey);
  v7 = v4;
  v8 = sub_1BEFE82CC(&v42, 0, 0);
  v9 = [v8 address];

  v43 = 0;
  v42 = v9;
  sub_1BEFF30C8(v3, &v39);
  OUTLINED_FUNCTION_1_67(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, v34, v37, v39);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v1;

  OUTLINED_FUNCTION_0_88(v19, v20, v21, v22, v23, v24, v25, v26, v29, v32, v35, v38, v39, *(&v39 + 1), v40, v41, v42);

  sub_1BEFF3798(v30, v33, v36);
}

uint64_t BridgedAssembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BEFF3A00(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void (*sub_1BEFF3A54(void (*result)(uint64_t, _UNKNOWN **)))(uint64_t, _UNKNOWN **)
{
  v2 = *(v1 + 32);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v4;
    result(v1, &off_1F3DC8930);

    return sub_1BEFF562C(v1);
  }

  return result;
}

uint64_t sub_1BEFF3AB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v15 = v3[6];
      v11 = swift_allocObject();
      v12 = v15;

      sub_1BEFF06BC(v8, a1, v10, &v15);
      v13 = *(v11 + 40);
      *(v11 + 40) = a2;

      return v11;
    }

    __break(1u);
  }

  result = sub_1BF17B49C();
  __break(1u);
  return result;
}

uint64_t sub_1BEFF3BF4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (a2)
  {
    if (a2 == 1)
    {
      v6 = v2[6];
    }

    else
    {
      v11 = v2[7];
    }

    v13[0] = *a1;
    v13[1] = v4;
    v13[2] = v5;

    v10 = SingletonPool.lookup(for:)(v13);
  }

  else
  {
    swift_beginAccess();
    v7 = v2[5];
    if (*(v7 + 16) && (v8 = sub_1BEFE81F8(v3, v4, v5), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }

    swift_endAccess();
  }

  return v10;
}

uint64_t sub_1BEFF3CC4(char *a1, uint64_t a2)
{
  v5 = *a1;
  v3 = sub_1BEFF3DC0(&v5);
  (v3)(a2);
}

uint64_t SingletonPool.lookup(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16) && (v6 = sub_1BEFE81F8(v2, v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t (*sub_1BEFF3DC0(_BYTE *a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 3)
  {
    goto LABEL_5;
  }

  v2 = *v1;
  swift_beginAccess();
  v3 = v1[8];
  v4 = *(v2 + 96);
  sub_1BF17AE6C();
  sub_1BEFE6EA8(255, qword_1ED8F0A28);
  OUTLINED_FUNCTION_2_34();
  swift_getFunctionTypeMetadata1();
  sub_1BEFE8034();
  sub_1BF179EAC();
  if (!v9)
  {
    swift_endAccess();
LABEL_5:
    v6 = v1[6];
    v7 = v1[7];

    return v6;
  }

  swift_endAccess();
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  v5[2] = v9;
  v5[3] = v10;
  v5[4] = v1;

  return sub_1BEFFA284;
}

uint64_t sub_1BEFF3F04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BEFF3F40@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1BEFF3F7C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

unint64_t sub_1BEFF3FD4()
{
  result = qword_1ED8EDB90;
  if (!qword_1ED8EDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDB90);
  }

  return result;
}

unint64_t sub_1BEFF4028()
{
  result = qword_1ED8EDC30;
  if (!qword_1ED8EDC30)
  {
    sub_1BEFE6EA8(255, &unk_1ED8EDC40);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED8EDC30);
  }

  return result;
}

unint64_t sub_1BEFF4080()
{
  result = qword_1ED8EDB00[0];
  if (!qword_1ED8EDB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EDB00);
  }

  return result;
}

void sub_1BEFF40D4(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_136();
    sub_1BEFF3A00(v5, v6);
    v7 = OUTLINED_FUNCTION_75();
    v8 = v4(v7);
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return sub_1BF179DAC();
}

void OUTLINED_FUNCTION_55_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[7];
  v4 = v0[8];
}

uint64_t StartupTaskManager.init()()
{
  OUTLINED_FUNCTION_47_2();
  sub_1BEFF40D4(0, v1);
  sub_1BEFF4378();
  *(v0 + 16) = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_46_2();
  sub_1BEFEEEE0(0, v2);
  sub_1BEFF4080();
  *(v0 + 24) = sub_1BF179DAC();
  OUTLINED_FUNCTION_0_14();
  v3 = OUTLINED_FUNCTION_131();
  sub_1BEFEC638(v3, v4, v5, v6);
  *(v0 + 32) = OUTLINED_FUNCTION_55_2();
  *(v0 + 40) = OUTLINED_FUNCTION_55_2();
  *(v0 + 48) = OUTLINED_FUNCTION_55_2();
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  return v0;
}

unint64_t sub_1BEFF4378()
{
  result = qword_1ED8EDBA0[0];
  if (!qword_1ED8EDBA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EDBA0);
  }

  return result;
}

unint64_t sub_1BEFF43D0()
{
  result = qword_1ED8EDAF0;
  if (!qword_1ED8EDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDAF0);
  }

  return result;
}

void StartupTaskManager.onStartup(run:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_73_1();
  v6(v5);
  if (*(v1 + LOBYTE(v31[0]) + 56))
  {
    v7 = sub_1BF17ACBC();
    OUTLINED_FUNCTION_8_5(v7, &qword_1ED8EE998);
    OUTLINED_FUNCTION_69();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BF17DEF0;
    OUTLINED_FUNCTION_126_0(v8, &unk_1ED8EDC40);
    sub_1BF17B40C();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1BF071CD8();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1BF071C2C();
    v9 = sub_1BF17AE3C();
    sub_1BF1797CC();
  }

  else
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_73_1();
    v13(v12);
    swift_beginAccess();
    v14 = sub_1BEFF4878(v33, v34, *(v1 + 16));

    if (v14)
    {
      swift_endAccess();
      sub_1BEFE6A78(a1, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v14 + 16);
        sub_1BEFF6D48();
        v14 = v29;
      }

      v15 = *(v14 + 16);
      if (v15 >= *(v14 + 24) >> 1)
      {
        sub_1BEFF6D48();
        v14 = v30;
      }

      *(v14 + 16) = v15 + 1;
      sub_1BEFE87B0(v31, v14 + 40 * v15 + 32);
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = *(v16 + 8);
      v18 = OUTLINED_FUNCTION_60_0();
      v19(v18);
      OUTLINED_FUNCTION_145();
      v20 = *(v1 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_41_0();
      sub_1BEFF48E0();
      *(v1 + 16) = v32;
    }

    else
    {
      swift_endAccess();
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v22 = *(v21 + 8);
      v23 = OUTLINED_FUNCTION_73_1();
      v25 = v24(v23);
      OUTLINED_FUNCTION_8_5(v25, &unk_1ED8ED718);
      OUTLINED_FUNCTION_69();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BF17DEF0;
      sub_1BEFE6A78(a1, v26 + 32);
      OUTLINED_FUNCTION_145();
      v27 = *(v1 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_128_0();
      sub_1BEFF48E0();
      *(v1 + 16) = v32;
    }

    swift_endAccess();
  }
}

__n128 OUTLINED_FUNCTION_73()
{
  result = *(v0 - 304);
  v2 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_0()
{
}

uint64_t sub_1BEFF4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = a4();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v4);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BEFF48E0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v1, v2);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5(v3, v4);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v7 = v5;
  sub_1BEFE9FF8(0, &unk_1ED8ED738, sub_1BEFF4A40, sub_1BEFF4378);
  v8 = OUTLINED_FUNCTION_10_7();
  if (v8)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_8_2();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_22_2(v8, v9, v10, v11, *v0);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF4AA8(v15);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t OUTLINED_FUNCTION_145()
{

  return swift_beginAccess();
}

void sub_1BEFF4A40()
{
  if (!qword_1ED8ED770)
  {
    sub_1BEFE6EA8(255, &unk_1ED8EDC40);
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED770);
    }
  }
}

uint64_t sub_1BEFF4AB8()
{
  OUTLINED_FUNCTION_1_37();
  (*(*(*(v2 + 104) - 8) + 32))(v0 + *(v1 + 112));
  return v0;
}

uint64_t sub_1BEFF4B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  v1 = v0[15];
  v2 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_1BF17B18C();
}

void OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  sub_1BF0C9F7C(a1, 61, 2, v1);
}

uint64_t OUTLINED_FUNCTION_28_13()
{
  v2 = *(v0 - 96);

  return sub_1BF17A05C();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void OUTLINED_FUNCTION_60_3()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

uint64_t OUTLINED_FUNCTION_9_9(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{
  *(a1 + 8) = sub_1BF0480B4;
  v2 = v1[23];
  v3 = v1[21];
  return v1[19];
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_1BF17B40C();
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_9_28(_BYTE *a1)
{
  *a1 = *v1;

  JUMPOUT(0x1BFB547B0);
}

uint64_t OUTLINED_FUNCTION_9_29(uint64_t a1)
{
  *(v2 - 80) = v1;
  *(v2 - 72) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BEFF5020(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1BEFE4510(0, &qword_1ED8EFBA8, &type metadata for CallbackStore.CallbackDefinitionContainer, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1BEFFB240((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFF5138(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BEFF5020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BEFF5158(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BEFF51A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BEFF51F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_5(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t result)
{
  *(result + 8) = sub_1BF0AFC1C;
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void OUTLINED_FUNCTION_7_16(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E6969AE8];

  sub_1BF0C6DB4(0, a2, v3);
}

void OUTLINED_FUNCTION_7_18()
{

  sub_1BF00DD60();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_1BF17A5DC();
}

uint64_t OUTLINED_FUNCTION_7_24()
{
  v2 = *(v0 - 104);

  return sub_1BF17AD9C();
}

void OUTLINED_FUNCTION_7_28()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x1E69E9820];
}

void OUTLINED_FUNCTION_7_29()
{

  JUMPOUT(0x1BFB52000);
}

void OUTLINED_FUNCTION_7_30()
{
  v1 = v0[4];
  v3 = v0[3];
  v2 = *(v0[2] - 8);
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_36(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1BEFF5600(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

uint64_t sub_1BEFF562C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != 1)
  {
    if (v2)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    *(v1 + 64) = v4;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = (v3 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;

        v8(v9);

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    v3 = *(v1 + 64);
  }

  while (*(v3 + 16));
  if (*(v1 + 72) == 1)
  {
    swift_beginAccess();
    v10 = *(v1 + 40);
    *(v1 + 40) = MEMORY[0x1E69E7CC8];
  }

LABEL_11:
  v11 = *(v1 + 32);
  v12 = v11 != 0;
  v13 = v11 - 1;
  if (v12)
  {
    *(v1 + 32) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEFF5734(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 96);

  return MEMORY[0x1EEE6AD70](a1, a2, v4, a1);
}

void OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2)
{

  sub_1BEFF40D4(0, a2);
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t result)
{
  *(result + 8) = sub_1BF0AF7A8;
  v2 = *(v1 + 56);
  v3 = *(v1 + 40);
  return result;
}

void OUTLINED_FUNCTION_8_14()
{

  JUMPOUT(0x1BFB53020);
}

void OUTLINED_FUNCTION_8_15(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E6969BC0];

  sub_1BF0C6DB4(0, a2, v3);
}

void OUTLINED_FUNCTION_8_18()
{

  sub_1BF00DD60();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_1BF178F3C();
}

uint64_t OUTLINED_FUNCTION_8_21()
{
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  v3 = *v0;
  v4 = v0[1];

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return sub_1BF17B0BC();
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return sub_1BF17AE6C();
}

uint64_t OUTLINED_FUNCTION_8_27(uint64_t a1)
{
  *(a1 + 8) = sub_1BF1018A0;
  v2 = v1[30];
  v3 = v1[28];
  return v1[24];
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return sub_1BF17B86C();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return sub_1BF17B95C();
}

uint64_t OUTLINED_FUNCTION_8_33()
{
  *(v0 + 194) = v1 & 1;
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_8_37()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  v3 = *(v1 + 24);
  *(v1 + 24) = v0;
}

uint64_t ProxyResolver.deinit()
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + 40);

  return v0;
}

uint64_t ProxyResolver.resolve<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_49();
  v8 = toKey<A>(type:name:)(v4, v5, v6, a1, v7);
  OUTLINED_FUNCTION_3_36(v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v18, v19, v20);
  v18 = v21;
  OUTLINED_FUNCTION_0_64(v17, a2);
}

uint64_t sub_1BEFF5DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_65_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a2;
  *(result + 56) = -1;
  return result;
}

unint64_t sub_1BEFF5E60()
{
  result = qword_1ED8EF738[0];
  if (!qword_1ED8EF738[0])
  {
    sub_1BEFF51F8(255, &qword_1ED8EFBE8, &type metadata for CallbackStore.CallbackDefinitionContainer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EF738);
  }

  return result;
}

uint64_t sub_1BEFF5EDC(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v55 = a1;
  v56 = a2;
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_2();
  v57 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v59 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_59();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_2();
  v53 = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v47 = v29;
  v48 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = sub_1BF17AA2C();
  if (!v35)
  {
    return sub_1BF17A56C();
  }

  v58 = v35;
  v62 = sub_1BF17B39C();
  v49 = sub_1BF17B3AC();
  sub_1BF17B34C();
  result = sub_1BF17A9EC();
  if ((v58 & 0x8000000000000000) == 0)
  {
    v44 = v12;
    v45 = a5;
    v37 = 0;
    v50 = (v59 + 16);
    v51 = v59 + 8;
    v52 = v8;
    while (!__OFADD__(v37, 1))
    {
      v59 = v37 + 1;
      v38 = sub_1BF17ABFC();
      (*v50)(v25);
      v38(v61, 0);
      v39 = v60;
      v55(v25, v57);
      if (v39)
      {
        v42 = OUTLINED_FUNCTION_8_4();
        v43(v42);
        (*(v47 + 8))(v34, v48);

        return (*(v44 + 32))(v46, v57, v45);
      }

      v60 = 0;
      v40 = OUTLINED_FUNCTION_8_4();
      v41(v40);
      sub_1BF17B38C();
      result = sub_1BF17AAAC();
      ++v37;
      if (v59 == v58)
      {
        (*(v47 + 8))(v34, v48);
        return v62;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFF62A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    result = sub_1BF0D9CE8(a2, a3);
    v5 = result;
  }

  else
  {
    type metadata accessor for CallbackDefinition();
    v5 = swift_dynamicCastClassUnconditional();
  }

  *a4 = v5;
  return result;
}

uint64_t sub_1BEFF6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a8;
  v36 = a3;
  v39 = a11;
  v14 = a1 + 72;
  v15 = *(*a1 + 96);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v32 - v18;
  swift_beginAccess();
  sub_1BEFF1CA4(v14, &v40, sub_1BEFECBDC);
  if (v41)
  {
    sub_1BEFE87B0(&v40, v42);
    sub_1BEFE6A78(v42, &v40);
    (*(v16 + 16))(v19, a2, v15);
    v20 = (*(v16 + 80) + 64) & ~*(v16 + 80);
    v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = a10;
    v35 = a4;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = v19;
    v33 = a9;
    v24 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v15;
    sub_1BEFE87B0(&v40, v25 + 24);
    (*(v16 + 32))(v25 + v20, v32, v15);
    v26 = v37;
    *(v25 + v21) = v36;
    *(v25 + v22) = a6;
    v27 = (v25 + v23);
    v29 = v38;
    v28 = v39;
    *v27 = v26;
    v27[1] = v29;
    v30 = v34;
    v27[2] = v33;
    *(v25 + v24) = v30;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFF9DB8(sub_1BF005FA0, v25);

    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    sub_1BEFF4B24(&v40, sub_1BEFECBDC);
    return sub_1BEFF6618(a2, a6, v37, v38, a9, a10, v39);
  }
}

uint64_t sub_1BEFF6618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a2 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
  v39 = a3;
  v40 = a4;
  v41 = a5;
  sub_1BEFF1D04(&v39);
  v10 = v9;
  type metadata accessor for CallbackDefinition();
  v44 = sub_1BF17A4EC();
  v11 = OBJC_IVAR____TtC13TeaFoundation9Container_containerStore;
  while (1)
  {
    v12 = sub_1BF17A5AC();
    v13 = v44;
    if (v44 == v12)
    {
      break;
    }

    v14 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v14)
    {
      v15 = *(v10 + 32 + 8 * v13);
    }

    else
    {
      v15 = sub_1BF17B23C();
    }

    sub_1BF17A62C();
    v16 = *(a2 + v11);
    sub_1BEFE6ADC();
    v17 = sub_1BEFEEDF0();

    if (!v17)
    {
LABEL_18:
      result = sub_1BF17B49C();
      __break(1u);
      return result;
    }

    v18 = sub_1BEFF3AB8(v17, a7);
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    v42 = type metadata accessor for ProxyResolver();
    v43 = &protocol witness table for ProxyResolver;
    v39 = v18;

    v20(a1, &v39);

    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  if (a7)
  {
    v22 = *(a7 + 16);
    v39 = a3;
    v40 = a4;
    v41 = a5;

    sub_1BEFF1D04(&v39);
    v24 = v23;
    v44 = sub_1BF17A4EC();
    while (1)
    {
      v25 = sub_1BF17A5AC();
      v26 = v44;
      if (v44 == v25)
      {
        break;
      }

      v27 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v27)
      {
        v28 = *(v24 + 32 + 8 * v26);
      }

      else
      {
        v28 = sub_1BF17B23C();
      }

      sub_1BF17A62C();
      v29 = *(a2 + v11);
      sub_1BEFE6ADC();
      v30 = sub_1BEFEEDF0();

      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = sub_1BEFF3AB8(v30, a7);

      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      v42 = type metadata accessor for ProxyResolver();
      v43 = &protocol witness table for ProxyResolver;
      v39 = v31;

      v33(a1, &v39);

      __swift_destroy_boxed_opaque_existential_1(&v39);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  v2 = v1[10];
  v3 = v1[8];
  result = v1[2];
  v5 = v1[3];
  v6 = *(v0 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_1BF17B43C();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_18_8()
{

  return sub_1BEFF6E88();
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t ProxyResolver.__deallocating_deinit()
{
  ProxyResolver.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void OUTLINED_FUNCTION_83_1()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];
}

void sub_1BEFF6B90()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_30_1();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_41_0();
  sub_1BEFF6C48();
}

uint64_t OUTLINED_FUNCTION_68_1()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

void sub_1BEFF6C48()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_76();
  v3 = ~(-1 << *(v1 + 32));
  for (i = v4 & v3; ((1 << i) & *(v1 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = (*(v1 + 48) + 16 * i);
    v7 = *v6 == v2 && v6[1] == v0;
    if (v7 || (sub_1BF17B86C() & 1) != 0)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_55();
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return swift_beginAccess();
}

void sub_1BEFF6D1C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v6, v11);
  }
}

void sub_1BEFF6D48()
{
  OUTLINED_FUNCTION_18_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v3;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_1BEFF40D4(0, v4);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_110_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BEFF3A00(0, v1);
    OUTLINED_FUNCTION_110_0();
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1BEFF6E88()
{
  result = qword_1ED8F0BD8;
  if (!qword_1ED8F0BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8F0BD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_146()
{
}

void sub_1BEFF6F10()
{
  OUTLINED_FUNCTION_57_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_61_1();
  v7 = v6;
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  if ((*(v0 + 24) & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_64_1();
    sub_1BEFEC638(v10, v11, v12, v13);
    OUTLINED_FUNCTION_58();
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v1;
    OUTLINED_FUNCTION_38();

    MEMORY[0x1BFB52290](v15);
    v16 = OUTLINED_FUNCTION_107_0();
    v5(v16);
    OUTLINED_FUNCTION_17_2();
    sub_1BF17A59C();
    swift_endAccess();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4();
  if (*(v0 + 48) != 255)
  {
    v8 = *(v0 + 40);
    v9 = OUTLINED_FUNCTION_36();
    v3(v9);
LABEL_5:
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1BEFF7020()
{
  OUTLINED_FUNCTION_124();
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t OUTLINED_FUNCTION_119_0(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[3];

  return sub_1BF07AB8C(v10);
}

uint64_t OUTLINED_FUNCTION_19_5()
{
}

unint64_t OUTLINED_FUNCTION_19_8()
{
  result = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_1BF17AD1C();
}

void OUTLINED_FUNCTION_19_12()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_1BF17AD6C();
}

uint64_t OUTLINED_FUNCTION_19_16()
{
  v1 = *(v0 + 193);
  result = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(*(v0 + 160) + 8);
  return result;
}

void OUTLINED_FUNCTION_19_17(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  sub_1BF037594(0, a2, a3);
}

void sub_1BEFF7270()
{
  OUTLINED_FUNCTION_32();
  v16 = sub_1BF17AD4C();
  v1 = OUTLINED_FUNCTION_1(v16);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_19_10();
  v5 = OUTLINED_FUNCTION_13_16(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_15_14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_18_8();
  sub_1BF179B8C();
  OUTLINED_FUNCTION_3_30();
  sub_1BEFF74A0(v10, v0);
  v11 = OUTLINED_FUNCTION_14_16();
  sub_1BEFF74E8(v11, v12, v0);
  sub_1BEFF753C(&qword_1ED8F0BE8, qword_1ED8F0BF0, v0);
  OUTLINED_FUNCTION_8_23();
  v13 = *MEMORY[0x1E69E8090];
  v14 = OUTLINED_FUNCTION_16_13();
  v15(v14);
  off_1ED8F0218 = OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFF7410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEFF7458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEFF74A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BEFF74E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17A65C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BEFF753C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BEFF74E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_36_1(void *a1)
{
  a1[2] = v5;
  a1[3] = v1;
  *(v6 - 128) = v1;
  *(v6 - 120) = v3;
  a1[4] = v4;
  a1[5] = v3;
  v8 = *(v6 - 104);
  v9 = *(v6 - 96);
  a1[6] = v2;
  a1[7] = v8;
  a1[8] = v9;

  return v5;
}

id sub_1BEFF779C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_1BEFF77B0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF00042C(a1, a2);
  }
}

id sub_1BEFF77C4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1BEFF779C(result, a2);
  }

  return result;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1BFB547B0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 28, 7);
}

uint64_t sub_1BEFF78A4(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Seal.Resolution();
  result = sub_1BF17AE6C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BEFF7970(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1BEFF79E8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BEFF79E8()
{
  result = qword_1ED8EFD30;
  if (!qword_1ED8EFD30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EFD30);
  }

  return result;
}

uint64_t sub_1BEFF7A44()
{
  OUTLINED_FUNCTION_1_37();
  (*(*(*(v2 + 104) - 8) + 8))(v0 + *(v1 + 112));
  return v0;
}

uint64_t sub_1BEFF7AAC()
{
  sub_1BEFF7A44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_1BF17B43C();
}

void OUTLINED_FUNCTION_21_5()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

void OUTLINED_FUNCTION_21_6()
{

  JUMPOUT(0x1BFB547B0);
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_1BF17A65C();
}

uint64_t OUTLINED_FUNCTION_21_16(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;

  return swift_retain_n();
}

id ProxyResolver.bridgedResolver.getter()
{
  v1 = type metadata accessor for BridgedResolver();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

_OWORD *sub_1BEFF7D3C@<X0>(void *(*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  result = a1(&v4);
  if (v5)
  {
    return sub_1BEFF9A40(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFF7D88(uint64_t *a1, void (*a2)(uint64_t *))
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(v2 + 48);
  if (v8)
  {
    [v8 lock];
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_8;
  }

  if (!swift_weakLoadStrong())
  {

LABEL_8:
    v10 = 0;
    goto LABEL_16;
  }

  v9 = sub_1BEFED384(a2);
  if (!v9)
  {
    v11 = *(v2 + 40);
  }

  sub_1BEFF7F1C();
  v10 = v12;

  if (v10)
  {
  }

  else
  {
    if (!v9)
    {
      v13 = *(v3 + 40);
    }

    sub_1BEFF7F1C();
    v10 = v14;
  }

LABEL_16:
  v15 = *(v3 + 48);
  if (v15)
  {
    [v15 unlock];
  }

  return v10;
}

void sub_1BEFF7F1C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Container.LazyRegistration(0);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = *v7;
  v32 = v7[2];
  v33 = v7[1];
  v18 = OBJC_IVAR____TtC13TeaFoundation9Container_lazyRegistrations;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v29 = v17;
    v30 = v5;
    v31 = v3;
    *(v1 + v18) = MEMORY[0x1E69E7CC0];
    v21 = *(v1 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
    v22 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_2_62();
      sub_1BEFF1CA4(v22, v16, v24);
      sub_1BEFE6ADC();
      v25 = *(v8 + 20);
      v26 = sub_1BEFEEDF0();

      if (v26)
      {
        v27 = *(v16 + 8);
        (*v16)(v1, v26);
      }

      OUTLINED_FUNCTION_1_63();
      sub_1BEFF4B24(v16, v28);
      v22 += v23;
      --v20;
    }

    while (v20);

    v5 = v30;
    v3 = v31;
    v17 = v29;
  }

  v34[0] = v17;
  v34[1] = v33;
  v34[2] = v32;
  sub_1BEFF8214(v34, v5, v3);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFF8168(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  swift_getMetatypeMetadata();
  v4 = objc_allocWithZone(TFKey);
  v12 = OUTLINED_FUNCTION_1_17(v4, v5, v6, v7, v8, v9, v10, v11, a1);
  v15 = sub_1BEFE82CC(v12, v13, v14);
  v16 = [v15 address];

  v25 = OUTLINED_FUNCTION_1_17(v17, v18, v19, v20, v21, v22, v23, v24, v16);
  sub_1BEFF7D88(v25, v26);
  OUTLINED_FUNCTION_8_21();
  if (v3)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BEFF8214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  if (a3)
  {
    v22[0] = *a1;
    v22[1] = v8;
    v22[2] = v9;
    v10 = sub_1BF046D24(v22);
    if (v10)
    {
      return v10;
    }
  }

  v11 = OBJC_IVAR____TtC13TeaFoundation9Container_definitions;
  swift_beginAccess();
  v12 = sub_1BEFEEDE8(v7, v8, v9, *(v4 + v11));
  if (v12)
  {
    v13 = v12;
    v14 = swift_endAccess();
    v15 = (*(*v13 + 80))(v14);

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = OBJC_IVAR____TtC13TeaFoundation9Container_erasedDefinitions;
  swift_beginAccess();
  v15 = sub_1BEFEEDE8(v7, v8, v9, *(v4 + v16));
  swift_endAccess();
  if (!v15)
  {
    return 0;
  }

LABEL_8:
  result = swift_weakLoadStrong();
  if (!result)
  {

    return 0;
  }

  v18 = result;
  v19 = *(result + 32);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(result + 32) = v21;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFFBCD8(v4, v15, a2, a3, v7, v8, v22, v9);
    sub_1BEFF562C(v18);

    v10 = v22[0];

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFF8424(uint64_t a1, uint64_t a2)
{
  sub_1BEFECBDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEFF8488(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 40) = 1;
  sub_1BEFE9D24();
  sub_1BEFE8034();
  v15 = MEMORY[0x1E69E7CC0];
  *(v10 + 64) = sub_1BF179DAC();
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0;
  v16 = qword_1ED8F52F8;
  *(v10 + qword_1ED8F52F8) = v15;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  swift_beginAccess();
  *(v10 + v16) = a6;
  v17 = qword_1ED8F5300;
  v18 = sub_1BF1794FC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10 + v17, a7, v18);
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;

  v20 = sub_1BEFF8AE0(a10);

  (*(v19 + 8))(a7, v18);
  sub_1BEFEBFA0(a5);
  swift_beginAccess();
  v21 = *(v10 + 64);
  *(v10 + 64) = v20;

  return v10;
}

uint64_t sub_1BEFF8640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1BEFF8F50(a1, v2[2], a2);
}

void sub_1BEFF8670()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = sub_1BF1794FC();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = v0[2];
  v24 = v0[3];
  v12 = v0[4];
  v23 = *(v0 + 40);
  swift_beginAccess();
  sub_1BEFF8424((v0 + 9), v25);
  v13 = qword_1ED8F52F8;
  swift_beginAccess();
  v14 = *(v0 + v13);
  (*(v5 + 16))(v10, v0 + qword_1ED8F5300, v2);
  v15 = v0[6];
  v16 = v0[7];
  OUTLINED_FUNCTION_14_0();
  v17 = swift_allocObject();
  v17[2] = *(v1 + 96);
  v17[3] = v15;
  v17[4] = v16;
  swift_beginAccess();
  v18 = v0[8];
  sub_1BF17AE6C();
  sub_1BEFE6EA8(255, qword_1ED8F0A28);
  OUTLINED_FUNCTION_2_34();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF8934();
  sub_1BEFE8034();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v19 = Dictionary.mapKeysAndValues<A, B>(_:)();

  sub_1BEFE9C7C(0, &qword_1ED8EF1E8, type metadata accessor for Definition);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1BEFF8488(v11, v24, v12, v23, v25, v14, v10, sub_1BEFF8640, v17, v19);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFF8900()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_1BEFF8934()
{
  result = qword_1ED8ED6E8;
  if (!qword_1ED8ED6E8)
  {
    sub_1BEFE6EA8(255, qword_1ED8F0A28);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ED8ED6E8);
  }

  return result;
}

uint64_t sub_1BEFF89D4()
{
  sub_1BF179CEC();
  sub_1BF179E9C();
  OUTLINED_FUNCTION_17_7();
  sub_1BF179E9C();
  swift_getWitnessTable();
  result = sub_1BF17A3EC();
  if (!v1)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BEFF8AE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BF0DAAB0();
    v2 = sub_1BF17B52C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v21 = *(*(a1 + 48) + v11);
    v23 = *(*(a1 + 56) + 16 * v11);
    sub_1BEFF8934();
    sub_1BEFE9D24();

    swift_dynamicCast();
    v12 = *(v2 + 40);
    sub_1BF17BB6C();
    sub_1BF179F3C();

    result = sub_1BF17BB9C();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(*(v2 + 48) + v16) = v21;
    *(*(v2 + 56) + 16 * v16) = v22;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BEFF8D98(char a1, uint64_t a2)
{
  v8[3] = type metadata accessor for ProxyResolver();
  v8[4] = &protocol witness table for ProxyResolver;
  v8[0] = a2;

  v4 = sub_1BEFF8E28(a1);
  (v4)(&v7, v8);

  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t (*sub_1BEFF8E28(char a1))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = v1;
  if (a1 == 3)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v4 = *(v1 + 64);
  if (!*(v4 + 16) || (v5 = sub_1BF082104(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
LABEL_6:
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);

    return v8;
  }

  v11 = *(*(v4 + 56) + 16 * v5);
  swift_endAccess();
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v2;

  return sub_1BF157A88;
}

uint64_t sub_1BEFF8F10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEFF8F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  v11 = sub_1BF17B84C();
  result = (*(v5 + 8))(v9, a2);
  *a3 = v11;
  return result;
}

void sub_1BEFF9030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BEFF9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_0();
  v13 = v12;
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  if (!v17)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_10_9();
  v18 = sub_1BEFEC3C0(v15, 0, 0, *(v12 + 16));
  if (!v18)
  {
    swift_endAccess();

LABEL_26:
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_10_9();
    v41 = *(v13 + 16);
    if (*(v41 + 16) && (v42 = sub_1BEFE81F8(v15, v16, v17), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);
      swift_endAccess();
      v45 = *(v44 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v46 = 0;
      v47 = MEMORY[0x1E69E7CC0];
      while (v45 != v46)
      {
        if (v46 >= *(v44 + 16))
        {
          goto LABEL_53;
        }

        v48 = *(v44 + 8 * v46 + 32);
        if (v48 < 0)
        {
          OUTLINED_FUNCTION_11_10();
        }

        else
        {
          OUTLINED_FUNCTION_22_6();
        }

        v50 = *(v49 + 80);

        if (v50(v51))
        {

          ++v46;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = *(v47 + 16);
            v53 = OUTLINED_FUNCTION_9_17();
            sub_1BEFF5138(v53, v54, v55);
          }

          v57 = *(v47 + 16);
          v56 = *(v47 + 24);
          if (v57 >= v56 >> 1)
          {
            v58 = OUTLINED_FUNCTION_8_17(v56);
            sub_1BEFF5138(v58, v57 + 1, 1);
          }

          ++v46;
          *(v47 + 16) = v57 + 1;
          *(v47 + 8 * v57 + 32) = v48;
        }
      }

      OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_7_2();

      v59 = *(v13 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_16_7();
      sub_1BEFEC888();
      *(v13 + 16) = a12;
      swift_endAccess();
      v60 = *(v47 + 16);
      if (v60)
      {
        v69 = MEMORY[0x1E69E7CC0];
        v61 = sub_1BF17B35C();
        v62 = 32;
        do
        {
          v63 = *(v47 + v62);
          if (v63 < 0)
          {
          }

          else
          {
            (*(*v63 + 88))(v61);
          }

          sub_1BF17B32C();
          v64 = *(v69 + 16);
          sub_1BF17B36C();
          sub_1BF17B37C();
          v61 = sub_1BF17B33C();
          v62 += 8;
          --v60;
        }

        while (v60);

        v65 = v69;
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
      }

      sub_1BEFFD3B8(v65);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_94();
    return;
  }

  v19 = v18;
  v66 = v17;
  v67 = v16;
  swift_endAccess();
  v20 = 0;
  v21 = *(v19 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v21 == v20)
    {

      OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_7_2();

      v34 = *(v12 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_16_7();
      sub_1BEFEC888();
      *(v12 + 16) = a12;

      swift_endAccess();
      v35 = *(v22 + 16);
      if (v35)
      {
        v68 = MEMORY[0x1E69E7CC0];
        v36 = sub_1BF17B35C();
        v37 = 32;
        do
        {
          v38 = *(v22 + v37);
          if (v38 < 0)
          {
          }

          else
          {
            (*(*v38 + 88))(v36);
          }

          sub_1BF17B32C();
          v39 = *(v68 + 16);
          sub_1BF17B36C();
          sub_1BF17B37C();
          v36 = sub_1BF17B33C();
          v37 += 8;
          --v35;
        }

        while (v35);

        v40 = v68;
      }

      else
      {

        v40 = MEMORY[0x1E69E7CC0];
      }

      sub_1BEFFD3B8(v40);
      v17 = v66;
      v16 = v67;
      goto LABEL_26;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    v23 = *(v19 + 8 * v20 + 32);
    if (v23 < 0)
    {
      OUTLINED_FUNCTION_11_10();
    }

    else
    {
      OUTLINED_FUNCTION_22_6();
    }

    v25 = *(v24 + 80);

    if (v25(v26))
    {

      ++v20;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v22 + 16);
        v28 = OUTLINED_FUNCTION_9_17();
        sub_1BEFF5138(v28, v29, v30);
      }

      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        v33 = OUTLINED_FUNCTION_8_17(v31);
        sub_1BEFF5138(v33, v32 + 1, 1);
      }

      ++v20;
      *(v22 + 16) = v32 + 1;
      *(v22 + 8 * v32 + 32) = v23;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1BEFF9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
  v49 = a3;
  v50 = a4;
  v51 = a5;
  sub_1BEFF9080(&v49, a2, a3, a4, a5, a6, a7, a8, v39, v41, a3, a4);
  v11 = v10;
  v12 = sub_1BEFE90AC(v10);
  v13 = 0;
  v46 = OBJC_IVAR____TtC13TeaFoundation9Container_containerStore;
  while (v12 != v13)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB53020](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_1BF17B49C();
      __break(1u);
      return result;
    }

    v15 = *(a2 + v46);
    sub_1BEFE6ADC();
    v16 = sub_1BEFEEDF0();

    if (!v16)
    {
      goto LABEL_26;
    }

    v17 = sub_1BEFF3AB8(v16, a7);
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v54 = a1;
    v52 = type metadata accessor for ProxyResolver();
    v53 = &protocol witness table for ProxyResolver;
    v49 = v17;

    v19(&v54, &v49);

    __swift_destroy_boxed_opaque_existential_1(&v49);
    ++v13;
  }

  if (a7)
  {
    v21 = *(a7 + 16);
    v49 = v43;
    v50 = v44;
    v51 = a5;

    sub_1BEFF9080(&v49, v22, v23, v24, v25, v26, v27, v28, v40, v42, v43, v44);
    v30 = v29;
    v31 = sub_1BEFE90AC(v29);
    for (i = 0; v31 != i; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1BFB53020](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v34 = *(a2 + v46);
      sub_1BEFE6ADC();
      v35 = sub_1BEFEEDF0();

      if (!v35)
      {
        goto LABEL_26;
      }

      v36 = sub_1BEFF3AB8(v35, a7);

      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      v54 = a1;
      v52 = type metadata accessor for ProxyResolver();
      v53 = &protocol witness table for ProxyResolver;
      v49 = v36;

      v38(&v54, &v49);

      __swift_destroy_boxed_opaque_existential_1(&v49);
    }
  }

  return result;
}