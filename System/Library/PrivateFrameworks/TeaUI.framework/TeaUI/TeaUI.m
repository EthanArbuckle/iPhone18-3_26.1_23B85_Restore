unint64_t sub_1D7E01E74()
{
  result = qword_1EDBBE068;
  if (!qword_1EDBBE068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBE068);
  }

  return result;
}

id FrameworkAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___TUAssembly_assemblies;
  sub_1D7E021A8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D81B7370;
  type metadata accessor for AppAssembly();
  v5 = OUTLINED_FUNCTION_0_218();
  *(v4 + 56) = v1;
  *(v4 + 64) = sub_1D7E04220(qword_1EDBBDF88, type metadata accessor for AppAssembly);
  *(v4 + 32) = v5;
  type metadata accessor for DebugAssembly();
  v6 = OUTLINED_FUNCTION_0_218();
  *(v4 + 96) = v1;
  *(v4 + 104) = sub_1D7E04220(qword_1EDBBDCD8, type metadata accessor for DebugAssembly);
  *(v4 + 72) = v6;
  type metadata accessor for CommandAssembly();
  v7 = OUTLINED_FUNCTION_0_218();
  *(v4 + 136) = v1;
  *(v4 + 144) = sub_1D7E04220(&qword_1EDBBDC28, type metadata accessor for CommandAssembly);
  *(v4 + 112) = v7;
  type metadata accessor for ManagerAssembly();
  v8 = OUTLINED_FUNCTION_0_218();
  *(v4 + 176) = v1;
  *(v4 + 184) = sub_1D7E04220(qword_1EDBBDAA8, type metadata accessor for ManagerAssembly);
  *(v4 + 152) = v8;
  type metadata accessor for SettingsAssembly();
  v9 = OUTLINED_FUNCTION_0_218();
  *(v4 + 216) = v1;
  *(v4 + 224) = sub_1D7E04220(qword_1EDBBD850, type metadata accessor for SettingsAssembly);
  *(v4 + 192) = v9;
  type metadata accessor for OverlayAlertAssembly();
  v10 = OUTLINED_FUNCTION_0_218();
  *(v4 + 256) = v1;
  *(v4 + 264) = sub_1D7E04220(&qword_1EDBBD628, type metadata accessor for OverlayAlertAssembly);
  *(v4 + 232) = v10;
  type metadata accessor for RendererAssembly();
  v11 = OUTLINED_FUNCTION_0_218();
  *(v4 + 296) = v1;
  *(v4 + 304) = sub_1D7E04220(qword_1EDBBD8F0, type metadata accessor for RendererAssembly);
  *(v4 + 272) = v11;
  *&v0[v3] = v4;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1D7E021A8()
{
  if (!qword_1EDBBD188)
  {
    sub_1D7E01E74();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBD188);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_1D8191484();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

id OUTLINED_FUNCTION_4(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_31()
{

  sub_1D7EE4E58();
}

void OUTLINED_FUNCTION_0_33(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69D6EA8];

  sub_1D7F27728(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_0_42(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v13, &a13, 0);
}

id OUTLINED_FUNCTION_3_2(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return sub_1D7F42184(v0);
}

unint64_t OUTLINED_FUNCTION_0_52(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

id OUTLINED_FUNCTION_0_54()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 40) = v2;
  *(a1 + 48) = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return sub_1D8192634();
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_0_65(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

id OUTLINED_FUNCTION_0_66@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, double a25)
{
  a22 = v31;
  a23 = v30;
  a24 = a3;
  a25 = a2;
  a14 = v29;
  a15 = v28;
  a16 = v27;
  a17 = v26;
  a18 = v25;
  a19 = a1;

  return sub_1D7F85040(&a20, &a14);
}

id OUTLINED_FUNCTION_0_67(double a1)
{

  return [v1 (v2 + 2424)];
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_75(__n128 a1, __n128 a2)
{
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return sub_1D7FA1B74(a1, a2);
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return sub_1D81923A4();
}

void OUTLINED_FUNCTION_0_85(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69D6A88];

  sub_1D7E2C278(0, a2, v3);
}

id OUTLINED_FUNCTION_0_88()
{
  v3 = *(v1 + 336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_0_91()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_100()
{
  sub_1D7E38808(v1);
  sub_1D7E38808(v3);
  sub_1D7E38808(v5);

  sub_1D7FE8894(v0, v1, v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_0_103()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_106()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_107()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return sub_1D8192634();
}

void OUTLINED_FUNCTION_0_111(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E62F8];

  sub_1D7E0E81C(0, a2, v3);
}

id OUTLINED_FUNCTION_0_112()
{

  return [v0 (v1 + 906)];
}

uint64_t OUTLINED_FUNCTION_0_116(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 - 40) = v13 & 0x1FFFFFFFFFFFFFFFLL;
  v16 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v16);
}

void OUTLINED_FUNCTION_0_119(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6720];

  sub_1D7E1AD50(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_0_123@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

BOOL OUTLINED_FUNCTION_0_124(double a1, double a2, double a3, double a4)
{
  v9 = a1;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  return CGRectEqualToRect(*&v13, *&v9);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1@<X8>)
{
  *(a1 - 48) = *v1;
  *(a1 - 38) = 1717987684;
  *(a1 - 34) = 32;
  *(a1 - 25) = 32;
  *(a1 - 33) = *(v1 + 15);
  strcpy((a1 - 16), "n ");
  *(a1 - 24) = v1[3];
}

uint64_t OUTLINED_FUNCTION_0_126()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_130()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_133()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_134()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_136(uint64_t a1, unint64_t *a2)
{

  sub_1D7E31954(0, a2, type metadata accessor for BlueprintCollectionViewLayoutTransition.State);
}

void OUTLINED_FUNCTION_0_137()
{

  sub_1D7EE508C();
}

void *OUTLINED_FUNCTION_0_143()
{

  return memcpy(&STACK[0x258], &STACK[0x2F0], 0x94uLL);
}

uint64_t OUTLINED_FUNCTION_0_144()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_146()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_153()
{
  v2 = *(v0 + 240);

  return sub_1D80618A0(v2, type metadata accessor for CollectionViewSupplementaryKind.Source);
}

void OUTLINED_FUNCTION_0_154()
{

  JUMPOUT(0x1DA713260);
}

id OUTLINED_FUNCTION_3_6(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_0_157()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_162()
{

  return swift_once();
}

double OUTLINED_FUNCTION_0_166()
{
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = v1;

  return CGRectGetWidth(*&v5);
}

uint64_t OUTLINED_FUNCTION_0_168()
{

  return CommandCenterType.registerHandler<A>(for:handle:)(v3, v0, v4, v2, v1);
}

id OUTLINED_FUNCTION_0_172()
{

  return [v1 (v0 + 1590)];
}

uint64_t OUTLINED_FUNCTION_0_177()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  a15 = 0;
  a13 = 0u;
  a14 = 0u;

  return sub_1D7F07900(&a13);
}

uint64_t OUTLINED_FUNCTION_0_179()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_180()
{

  return sub_1D81923A4();
}

uint64_t OUTLINED_FUNCTION_0_182()
{

  return sub_1D8192634();
}

id OUTLINED_FUNCTION_0_183()
{

  return [v0 (v1 + 1093)];
}

uint64_t OUTLINED_FUNCTION_0_185()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_186()
{
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_0_190()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_0_191()
{

  return sub_1D818EC14();
}

void OUTLINED_FUNCTION_0_192(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981948];

  sub_1D80CC34C(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_0_194()
{
  v2 = *(*(v0 + 104) + 16);

  sub_1D7E642DC(v2);
}

uint64_t OUTLINED_FUNCTION_0_195()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_0_198(int a1, id a2)
{

  return [a2 layer];
}

uint64_t OUTLINED_FUNCTION_0_202()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_204(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 56) = v3;
  v5 = (a1 + 64);

  return memcpy(v5, (v1 + 1192), 0x235uLL);
}

void OUTLINED_FUNCTION_0_205(TeaUI::ToggleState a1)
{

  Togglable.set(toggleState:animated:)(a1, 1);
}

void OUTLINED_FUNCTION_0_207(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];

  sub_1D7E5CDF0(0, a1, a2 + 8, v3);
}

void OUTLINED_FUNCTION_0_209(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  a1[2] = 0xD000000000000011;
  a1[3] = (v3 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_0_213()
{

  return sub_1D818EA44();
}

id OUTLINED_FUNCTION_0_215()
{
  v3 = *(v0 + 680);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_0_218()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_0_219@<X0>(void *__src@<X0>, void *a2@<X8>)
{

  return memcpy(a2, __src, 0x235uLL);
}

uint64_t OUTLINED_FUNCTION_0_224()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_0_226(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1D7E11C74(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_0_230()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_0_231()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_232()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void OUTLINED_FUNCTION_0_233(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];

  sub_1D7E720F0(0, a1, a2 + 8, v3);
}

void OUTLINED_FUNCTION_0_236(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69D6D90];

  sub_1D8142C5C(0, a2, v3);
}

id OUTLINED_FUNCTION_0_243(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [a1 (v5 + 2936)];
}

uint64_t OUTLINED_FUNCTION_0_245()
{

  return sub_1D7E4507C();
}

id OUTLINED_FUNCTION_0_256()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_0_257()
{

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_0_259()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

void OUTLINED_FUNCTION_0_261(uint64_t a1, unint64_t *a2)
{

  sub_1D7E13818(0, a2, sub_1D7F06938);
}

uint64_t sub_1D7E04220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E04350()
{
  result = sub_1D818FCC4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContainerManager()
{
  result = qword_1EDBBD9C8;
  if (!qword_1EDBBD9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContainerManager.init(singletonPool:bundleAssemblies:assemblies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC5TeaUI16ContainerManager_containerEnvironment;
  type metadata accessor for ContainerEnviromentProvider();
  swift_allocObject();
  v9 = [objc_opt_self() sharedApplication];
  v10 = [objc_opt_self() processInfo];
  ContainerEnviromentProvider.enviroment(for:processInfo:)(v9, v3 + v8);

  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager____lazy_storage___carPlayContainer) = 0;
  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager____lazy_storage___appContainer) = 0;
  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager_stagedContainer) = 0;
  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager_singletonPool) = a1;
  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager_bundleAssemblies) = a2;
  *(v3 + OBJC_IVAR____TtC5TeaUI16ContainerManager_assemblies) = a3;

  v11 = sub_1D7E05B94(&OBJC_IVAR____TtC5TeaUI16ContainerManager____lazy_storage___appContainer);

  *(v4 + OBJC_IVAR____TtC5TeaUI16ContainerManager_stagedContainer) = v11;

  return v4;
}

uint64_t sub_1D7E045C8()
{
  v0 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6E90]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6EA0], v0);
  sub_1D7E05600(0, &qword_1EDBBE078, sub_1D7E05660);
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1EDBBE0E0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_9_2()
{

  sub_1D7E2D320();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_allocError();
}

__n128 *OUTLINED_FUNCTION_142(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

id OUTLINED_FUNCTION_9_6()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_1D81923A4();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_getAssociatedTypeWitness();
}

id OUTLINED_FUNCTION_9_17()
{
  v3 = *(v1 + 336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_9_19@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[2] = result;
  v3[4] = a2;
  v3[5] = v2;
  v3[6] = 0;
  v3[8] = 0;
  v3[9] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D7E7BAAC(&a9);
}

void *OUTLINED_FUNCTION_9_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{

  return memcpy(&a41, (v41 + 8), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_9_24()
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;
  *(v4 - 112) = v1;

  return type metadata accessor for BlueprintSection();
}

double OUTLINED_FUNCTION_9_26()
{
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = v7;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v14 = v2;
  v15 = v3;

  *&result = CGRectUnion(*&v8, *&v12);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  a13 = 0;
  a11 = 0u;
  a12 = 0u;

  return sub_1D80B6E5C(&a11, sub_1D7FAA8A4);
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_41()
{
  sub_1D7E1C664((v0 - 96), (v0 - 128));
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_1D8192614();
}

uint64_t OUTLINED_FUNCTION_9_44()
{
  v2 = *(v0 + 600);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 576, v2);
}

void OUTLINED_FUNCTION_9_45(void *a1, double a2, double a3)
{

  sub_1D80FA5BC(a1, v3, 0, 0, 0, a2, a3);
}

id OUTLINED_FUNCTION_9_47()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_9_49()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_9_50()
{

  return memcpy(&STACK[0x510], &STACK[0x750], 0x236uLL);
}

uint64_t OUTLINED_FUNCTION_9_52()
{
}

uint64_t OUTLINED_FUNCTION_9_58()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, __int128);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_1D7E05450(va, va1);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_15_11()
{
  v8 = *(v5 + v6);
  *(v8 + 16) = v4 + 1;
  v9 = (v8 + 48 * v4);
  v9[4] = v2;
  v9[5] = v3;
  v9[6] = 0;
  v9[7] = v7;
  v9[8] = v0;
  v9[9] = v1;
  *(v5 + v6) = v8;
}

void OUTLINED_FUNCTION_15_16()
{

  sub_1D7FA9228(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_19()
{
  v0[2] = v2;
  v0[3] = v1;
  v0[6] = v3;
  v0[7] = v4;

  return swift_unknownObjectWeakAssign();
}

void OUTLINED_FUNCTION_15_22()
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;
  *(v4 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_15_23()
{

  return swift_getTupleTypeMetadata3();
}

double OUTLINED_FUNCTION_15_24()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  return result;
}

void OUTLINED_FUNCTION_15_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_15_31@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_15_39()
{

  return type metadata accessor for PageViewSession();
}

id OUTLINED_FUNCTION_15_40(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v3 - 144);
  v5 = *v1;

  return [a1 (v2 + 3320)];
}

uint64_t OUTLINED_FUNCTION_15_41()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_15_45(void *a1)
{

  return memcpy(a1, v1, 0x4E8uLL);
}

void OUTLINED_FUNCTION_15_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 96) = a6;
  *(v7 - 88) = v6;
  *(v7 - 104) = a3;
}

void OUTLINED_FUNCTION_15_47()
{
  *(v1 + 32) = 0;
  *(v1 + 16) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

id OUTLINED_FUNCTION_15_48(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_15_49()
{

  return sub_1D8190EE4();
}

uint64_t OUTLINED_FUNCTION_15_50()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D7E05450(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ContainerEnviromentProvider.enviroment(for:processInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDBBE0D8 != -1)
  {
    swift_once();
  }

  sub_1D7E05918();
  sub_1D818EA44();
  if (v11 == 1)
  {
    goto LABEL_4;
  }

  if (sub_1D7E059A0(a1))
  {
    v5 = MEMORY[0x1E69D6BF0];
LABEL_11:
    v6 = *v5;
    sub_1D818FCE4();
    OUTLINED_FUNCTION_0_13();
    (*(v7 + 104))(a2, v6);
    v4 = MEMORY[0x1E69D6BE0];
    goto LABEL_12;
  }

  if (sub_1D7F06214(a1))
  {
    v5 = MEMORY[0x1E69D6BE8];
    goto LABEL_11;
  }

  if (sub_1D7F06400())
  {
    v5 = MEMORY[0x1E69D6BF8];
    goto LABEL_11;
  }

LABEL_4:
  v4 = MEMORY[0x1E69D6BD8];
LABEL_12:
  v8 = *v4;
  sub_1D818FCC4();
  OUTLINED_FUNCTION_0_13();
  return (*(v9 + 104))(a2, v8);
}

void sub_1D7E05600(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D818EC54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7E05660()
{
  result = qword_1EDBBE0E8;
  if (!qword_1EDBBE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0E8);
  }

  return result;
}

_BYTE *_s9ContainerV11EnvironmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D7E05780);
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

unint64_t sub_1D7E057B0()
{
  result = qword_1EDBBE0F8;
  if (!qword_1EDBBE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0F8);
  }

  return result;
}

uint64_t sub_1D7E05810(uint64_t a1)
{
  v2 = sub_1D7E05864();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D7E05864()
{
  result = qword_1EDBBE0F0;
  if (!qword_1EDBBE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE0F0);
  }

  return result;
}

uint64_t sub_1D7E058B8@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Container.Environment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Settings.Container.Environment.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D7E05918()
{
  result = qword_1EDBBD360;
  if (!qword_1EDBBD360)
  {
    type metadata accessor for ContainerEnviromentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBD360);
  }

  return result;
}

uint64_t sub_1D7E059A0(void *a1)
{
  if ([a1 isRunningPerformanceTest])
  {
    goto LABEL_12;
  }

  sub_1D8191994();
  if (v6)
  {
    if (v5 == 0x616D726F66726570 && v6 == 0xEB0000000065636ELL)
    {
LABEL_11:
    }

    else
    {
      v2 = sub_1D8192634();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v3 = 1;
    return v3 & 1;
  }

LABEL_8:
  if (qword_1EDBBE0A0 != -1)
  {
    swift_once();
  }

  sub_1D7E05918();
  sub_1D818EA44();
  switch(v5)
  {
    case 2:
      goto LABEL_11;
    default:
      v3 = sub_1D8192634();

      break;
  }

  return v3 & 1;
}

uint64_t sub_1D7E05B94(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = sub_1D7E05D18();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1D7E05BF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E05C3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabBarSplitViewPresentation.Pane(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D7E05D18()
{
  v1 = sub_1D818FCC4();
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC5TeaUI16ContainerManager_containerEnvironment);
  sub_1D818FCF4();
  swift_allocObject();
  sub_1D8190DB4();
  sub_1D8190DB4();

  return sub_1D818FCD4();
}

void sub_1D7E05E48()
{
  sub_1D7E05ED8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D7E05ED8()
{
  if (!qword_1EDBBE060)
  {
    type metadata accessor for DebugSection();
    sub_1D7E05BF4(&qword_1EDBBDEE0, type metadata accessor for DebugSection);
    sub_1D7E05BF4(qword_1EDBBDEE8, type metadata accessor for DebugSection);
    v0 = sub_1D818F394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBE060);
    }
  }
}

uint64_t sub_1D7E05FC8()
{
  v0 = sub_1D818F954();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818F0C4();
  sub_1D7E062C4(0, &qword_1EDBBD2A0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  sub_1D818F0C4();
  sub_1D7E0631C(0, &qword_1EDBBD1D0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D8191354();
  sub_1D818ED54();

  v4 = *MEMORY[0x1E69D6AC0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1D818ED74();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1D818F0C4();
  sub_1D7E0631C(0, qword_1EDBBD708);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0C4();
  sub_1D7E062C4(0, qword_1EDBBDC38);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  v5(v3, v4, v0);
  sub_1D818ED74();

  v6(v3, v0);
  sub_1D818F0C4();
  sub_1D7E0631C(0, &qword_1EDBBD4A8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();
}

uint64_t sub_1D7E062C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7E0631C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7E063BC()
{
  v0 = sub_1D818F954();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  type metadata accessor for DebugWindow();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AB8], v0);
  sub_1D818ED74();

  (*(v1 + 8))(v3, v0);
  sub_1D818F0C4();
  sub_1D7E0631C(0, qword_1EDBBD2C0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818EEE4();
  result = sub_1D818EEC4();
  if (result)
  {
    sub_1D818F0C4();
    OUTLINED_FUNCTION_113();
    type metadata accessor for DebugNavigationController();
    OUTLINED_FUNCTION_0_10();
    sub_1D818F604();

    sub_1D818F0D4();
    OUTLINED_FUNCTION_113();
    type metadata accessor for DebugViewController();
    OUTLINED_FUNCTION_0_10();
    sub_1D818F604();

    sub_1D818F0C4();
    OUTLINED_FUNCTION_113();
    type metadata accessor for DebugDataSource();
    OUTLINED_FUNCTION_0_10();
    sub_1D818F604();

    sub_1D818F0C4();
    OUTLINED_FUNCTION_113();
    sub_1D818F4D4();
    OUTLINED_FUNCTION_0_10();
    sub_1D818F604();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_112_2()
{
}

uint64_t type metadata accessor for DebugDataSource()
{
  result = qword_1EDBBDB80;
  if (!qword_1EDBBDB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7E06770()
{
  v0 = sub_1D818F954();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818F0C4();
  sub_1D7E069F0(0, &qword_1EDBBD700);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v6 = *MEMORY[0x1E69D6AB8];
  v7 = *(v2 + 104);
  v7(v5, v6, v0);
  sub_1D818ED74();

  v8 = *(v2 + 8);
  v8(v5, v0);
  sub_1D818F0D4();
  type metadata accessor for CommandCenter();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  sub_1D818ED64();

  v7(v5, v6, v0);
  sub_1D818ED74();

  v8(v5, v0);
  sub_1D818F0D4();
  type metadata accessor for CommandStateObserverStore();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  v7(v5, *MEMORY[0x1E69D6AD0], v0);
  sub_1D818ED74();

  return (v8)(v5, v0);
}

uint64_t sub_1D7E069F0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7E06A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E06B14()
{
  sub_1D818F024();
  OUTLINED_FUNCTION_9();
  v25 = v1;
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D818F954();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  sub_1D7E06F6C();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
  OUTLINED_FUNCTION_5_57();
  v9 = *(v5 + 104);
  v10 = OUTLINED_FUNCTION_1_121();
  v9(v10);
  OUTLINED_FUNCTION_4_71();

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_110();
  v11(v12);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  type metadata accessor for ShortcutItemHandlerManager();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
  OUTLINED_FUNCTION_5_57();
  v13 = OUTLINED_FUNCTION_1_121();
  v9(v13);
  OUTLINED_FUNCTION_4_71();

  v14 = OUTLINED_FUNCTION_110();
  v11(v14);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  type metadata accessor for UserActivityHandlerManager();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
  OUTLINED_FUNCTION_5_57();
  v15 = OUTLINED_FUNCTION_1_121();
  v9(v15);
  OUTLINED_FUNCTION_4_71();

  v16 = OUTLINED_FUNCTION_110();
  v11(v16);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  sub_1D818F584();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
  OUTLINED_FUNCTION_5_57();
  (v9)(v8, *MEMORY[0x1E69D6AD0], v3);
  OUTLINED_FUNCTION_4_71();

  v17 = OUTLINED_FUNCTION_110();
  v11(v17);
  sub_1D818F0C4();
  sub_1D7E069F0(0, &qword_1EDBBD568);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  type metadata accessor for TipManager();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
  OUTLINED_FUNCTION_5_57();
  v18 = OUTLINED_FUNCTION_1_121();
  v9(v18);
  OUTLINED_FUNCTION_4_71();

  v19 = OUTLINED_FUNCTION_110();
  v11(v19);
  sub_1D818F0E4();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D7E069F0(0, &qword_1EDBBD290);
  v21 = v24;
  v20 = v25;
  v22 = v26;
  (*(v25 + 104))(v24, *MEMORY[0x1E69D6500], v26);
  sub_1D818F734();
  (*(v20 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  sub_1D818F0C4();
  OUTLINED_FUNCTION_113();
  type metadata accessor for TipSourceManager();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();
}

void sub_1D7E06F6C()
{
  if (!qword_1EDBBE058)
  {
    type metadata accessor for AppURLContext();
    v0 = sub_1D818F4B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBE058);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_1D8191484();
}

unint64_t OUTLINED_FUNCTION_5_7()
{
  v5 = *(v3 - 104);
  v6 = *(v3 - 96);
  v1[12] = v0;
  v1[13] = v2;
  v1[9] = v5;
  v1[10] = v6;

  return sub_1D7E13588();
}

void OUTLINED_FUNCTION_5_9(uint64_t a1@<X8>)
{
  *(v1 + 57) = *(a1 - 256);
  *(v1 + 58) = *(v3 - 96);
  *(v1 + 62) = *(v3 - 92);
  *(v1 + 64) = v2;
  *(v1 + 72) = 2;
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_1_7(void *a1)
{
  v3 = *(v1 + 2392);

  return [a1 v3];
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return sub_1D818F394();
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return sub_1D81921A4();
}

void OUTLINED_FUNCTION_5_21(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6A10];

  sub_1D7EAF54C(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_5_24(uint64_t a1, unint64_t *a2)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1D7F76D38(0, a2, v2, v4);
}

unint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_1D7F87324();
}

id OUTLINED_FUNCTION_5_30()
{

  return [v0 (v2 + 66)];
}

void OUTLINED_FUNCTION_5_34(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  UIImage.croppedImage(of:with:scale:clipPath:border:supplementActions:)(a1, a2, v37, v36, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

void *OUTLINED_FUNCTION_5_35(void *a1)
{

  return memcpy(a1, (v1 + 80), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return sub_1D8190E94();
}

uint64_t OUTLINED_FUNCTION_5_42()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_5_44()
{

  sub_1D8027EEC(0, v0);
}

void OUTLINED_FUNCTION_5_45(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6F90];

  sub_1D802D9F8(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_47@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_48()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_52(uint64_t a1@<X8>)
{
  *(a1 - 48) = *v1;
  *(a1 - 38) = 1717987684;
  *(a1 - 34) = 32;
  *(a1 - 25) = 32;
  *(a1 - 33) = *(v1 + 15);
  *(a1 - 16) = 32;
  *(a1 - 24) = v1[3];
  *(v3 - 144) = v2;
}

uint64_t OUTLINED_FUNCTION_5_54()
{

  return sub_1D7E0631C(0, v0);
}

uint64_t OUTLINED_FUNCTION_5_57()
{
}

uint64_t OUTLINED_FUNCTION_5_58()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_60()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_5_66()
{
  v2 = *(v0 + 1104);

  return __swift_project_boxed_opaque_existential_1((v0 + 1080), v2);
}

uint64_t OUTLINED_FUNCTION_5_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  a13 = 0;
  a11 = 0u;
  a12 = 0u;

  return sub_1D80BDBC4(&a11);
}

uint64_t OUTLINED_FUNCTION_5_69()
{
}

id OUTLINED_FUNCTION_5_71()
{

  return sub_1D80DF35C(1, 0, v0);
}

uint64_t OUTLINED_FUNCTION_5_78@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 568);
  *v2 = 0u;
  v2[1] = 0u;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_80()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_1D818EDA4();
}

void OUTLINED_FUNCTION_5_84()
{

  sub_1D7F08E34();
}

uint64_t OUTLINED_FUNCTION_5_86()
{

  return sub_1D8190FF4();
}

double OUTLINED_FUNCTION_5_89()
{
  *(v0 - 80) = 0;
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_90()
{
}

void OUTLINED_FUNCTION_5_93()
{
  v5 = *(v4 - 200);
  *(v4 - 192) = *(v4 - 208);
  *(v4 - 184) = v5;
  *(v4 - 176) = v1;
  *(v4 - 168) = v3;
  *(v4 - 160) = v2;
  *(v4 - 152) = v0;
}

uint64_t OUTLINED_FUNCTION_5_94()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_5_95(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;

  return sub_1D7E05450(&a14, (a1 + 5));
}

id OUTLINED_FUNCTION_1_12(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, 0.0, 0.0, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1D81923A4();
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return sub_1D8192374();
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_1D8192334();
}

void OUTLINED_FUNCTION_1_25(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69D6538];

  sub_1D7E2A1A0(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_1_27(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, v4, v5, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_28()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_29()
{

  sub_1D7EE4E58();
}

id OUTLINED_FUNCTION_1_31()
{
  v3 = *(v0 + 64);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_1D81923A4();
}

void OUTLINED_FUNCTION_1_36()
{
}

id OUTLINED_FUNCTION_2_13()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return sub_1D8192524();
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return sub_1D8190F14();
}

uint64_t OUTLINED_FUNCTION_1_51()
{
  v4 = (*(v0 + v2) & 0xC000000000000001) == 0;
  v5 = *(v0 + v2);

  return sub_1D7E33DD8(v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_1_52()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_1_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_1_66(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  v54 = *(v52 + 64);

  return [a52 v54];
}

uint64_t OUTLINED_FUNCTION_1_68()
{
  v1 = *(v0 - 136);
  __swift_project_boxed_opaque_existential_1((v0 - 160), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_1D8190EE4();
}

void OUTLINED_FUNCTION_1_69(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69D6538];

  sub_1D7E0E7CC(0, a2, a3, v4);
}

double OUTLINED_FUNCTION_1_76()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

uint64_t OUTLINED_FUNCTION_1_79@<X0>(uint64_t a1@<X8>)
{
  sub_1D7E0E10C(a1);
}

uint64_t OUTLINED_FUNCTION_1_80(unint64_t *a1)
{

  return sub_1D7FEACAC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_81(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_1_82(uint64_t a1@<X8>)
{
  *(a1 + 120) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return sub_1D8192634();
}

void OUTLINED_FUNCTION_1_88(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69E6F90];

  sub_1D7E0E81C(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_1_90()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_1_91@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 2;
  return result;
}

id OUTLINED_FUNCTION_1_93()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

__n128 OUTLINED_FUNCTION_1_96@<Q0>(unint64_t a1@<X8>, __n128 a2)
{
  v4 = (v3 + v2);
  result = a2;
  *v4 = a2;
  v4[1].n128_u64[0] = a1;
  return result;
}

void *OUTLINED_FUNCTION_1_100(void *result)
{
  result[2] = sub_1D803BF28;
  result[3] = v1;
  result[4] = v2;
  return result;
}

void *OUTLINED_FUNCTION_1_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &STACK[0x2F0], 0x94uLL);
}

id OUTLINED_FUNCTION_1_107(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

void *OUTLINED_FUNCTION_1_112(void *__src, ...)
{
  va_start(va, __src);

  return memcpy(va, __src, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1_113()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_120()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_1_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_1D8096970(&a9, sub_1D80968BC);
}

id OUTLINED_FUNCTION_1_124(uint64_t a1)
{

  return [v1 (v2 + 376)];
}

uint64_t OUTLINED_FUNCTION_1_127()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_128()
{

  return sub_1D7E471D0();
}

void OUTLINED_FUNCTION_1_130()
{

  sub_1D80B238C();
}

uint64_t OUTLINED_FUNCTION_1_133()
{

  return sub_1D7E3ED28(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_1_139()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_1_141(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __dst)
{

  return memcpy(&__dst, (v31 + v32), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1_144@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v3 - 176) = &a2 - a1;
  v4 = *(v3 - 136);
  v5 = *(v3 - 128);
  *(v3 - 112) = v2;
  *(v3 - 104) = v4;
  v6 = *(v3 - 120);
  *(v3 - 96) = v5;
  *(v3 - 88) = v6;
  return 0;
}

void *OUTLINED_FUNCTION_1_146()
{
  *(v0 + 8) = v2;

  return memcpy((v0 + 624), v1, 0x235uLL);
}

id OUTLINED_FUNCTION_14_3()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_1_151()
{

  return sub_1D818E994();
}

uint64_t OUTLINED_FUNCTION_1_152()
{

  return type metadata accessor for BlueprintLayoutSection();
}

uint64_t OUTLINED_FUNCTION_1_154()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_1_159()
{

  return memcpy(&STACK[0x4C0], (v0 + 608), 0x260uLL);
}

uint64_t OUTLINED_FUNCTION_1_161()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_164@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_171()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_1_173()
{

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_1_174(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E697F960];

  sub_1D8154DE4(255, a2, a3, v4);
}

id OUTLINED_FUNCTION_1_175()
{

  return [v3 (v2 + 2168)];
}

id OUTLINED_FUNCTION_1_179()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_1_183()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_1_186()
{

  return sub_1D818E514();
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_1D818FD44();
}

id OUTLINED_FUNCTION_4_21(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_4_23()
{

  JUMPOUT(0x1DA713260);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x1DA715D00);
}

void OUTLINED_FUNCTION_4_29(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69D6748];

  sub_1D7F661D0(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_4_30(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = &a10;
  vst2q_f64(v12, *a1.n128_u64);

  return type metadata accessor for UISettingProperty.Storage();
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_8_6()
{
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_4_39(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_4_40(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id OUTLINED_FUNCTION_4_42()
{

  return [v0 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_4_43@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_1D7E36AB8(v3);
}

void *OUTLINED_FUNCTION_4_45(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst)
{

  return memcpy(&__dst, v25, 0x7AuLL);
}

uint64_t OUTLINED_FUNCTION_4_49()
{

  return sub_1D8192334();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_56()
{

  return sub_1D8191E84();
}

uint64_t OUTLINED_FUNCTION_4_57()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_4_58()
{

  sub_1D7EE508C();
}

uint64_t OUTLINED_FUNCTION_4_59()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_4_64@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *a1 = v2;
  a1[1] = v1;

  return sub_1D7E0E10C(v4);
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return sub_1D7E76F2C(v0, type metadata accessor for BlueprintBookmark);
}

id OUTLINED_FUNCTION_4_70()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_4_71()
{

  return sub_1D818ED74();
}

uint64_t OUTLINED_FUNCTION_4_75()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_4_78()
{

  return sub_1D7E194D0();
}

uint64_t OUTLINED_FUNCTION_4_80()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_4_93()
{

  BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
}

uint64_t OUTLINED_FUNCTION_4_96()
{

  return sub_1D8190DB4();
}

void OUTLINED_FUNCTION_4_97()
{

  sub_1D7E2D320();
}

__n128 *OUTLINED_FUNCTION_4_103(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x696669746E656469;
  result[2].n128_u64[1] = 0xEA00000000007265;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_104()
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for AppURLContext()
{
  result = qword_1EDBBDE20;
  if (!qword_1EDBBDE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7E09B10()
{
  sub_1D7E09BB4();
  if (v0 <= 0x3F)
  {
    sub_1D818F654();
    if (v1 <= 0x3F)
    {
      sub_1D7E09EA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D7E09BB4()
{
  if (!qword_1EDBBD1C8)
  {
    type metadata accessor for OpenURLOptionsKey();
    sub_1D7E09E08();
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBD1C8);
    }
  }
}

void sub_1D7E09C24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E09C74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E09CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E09D14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D8191E84();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7E09D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E09DB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7E09E08()
{
  result = qword_1EDBBD1B8;
  if (!qword_1EDBBD1B8)
  {
    type metadata accessor for OpenURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBD1B8);
  }

  return result;
}

void sub_1D7E09EA8()
{
  if (!qword_1EDBBDA08[0])
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBBDA08);
    }
  }
}

uint64_t sub_1D7E09F2C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1D7E09F9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7E0631C(0, &unk_1EDBBE090);
  result = sub_1D818EFF4();
  if (v6)
  {
    v3 = sub_1D818EB84();
    swift_allocObject();
    v4 = sub_1D818EB74();
    v6 = v3;
    v7 = sub_1D7E0A0FC(&qword_1EDBBE088, MEMORY[0x1E69D6E20]);
    v5[0] = v4;

    sub_1D818F574();

    return __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E0A0A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D818EA74();
  swift_allocObject();
  result = sub_1D818EA64();
  v4 = MEMORY[0x1E69D6D38];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7E0A0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContainerManager.container(for:)(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    return sub_1D7E05B94(&OBJC_IVAR____TtC5TeaUI16ContainerManager____lazy_storage___appContainer);
  }

  result = *(v1 + OBJC_IVAR____TtC5TeaUI16ContainerManager_stagedContainer);
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC5TeaUI16ContainerManager_stagedContainer) = 0;
  }

  else
  {

    return sub_1D7E05D18();
  }

  return result;
}

uint64_t sub_1D7E0A1A8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

uint64_t sub_1D7E0A314()
{
  v0 = sub_1D818F024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818F0C4();
  sub_1D7E0631C(0, qword_1EDBBD630);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0D4();
  type metadata accessor for SettingsNavigationController();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  sub_1D818F0D4();
  type metadata accessor for SettingsViewController();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  sub_1D818F0C4();
  sub_1D7E0631C(0, &unk_1EDBBE090);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0E4();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D818F584();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6500], v0);
  sub_1D818F724();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  sub_1D818F0D4();
  sub_1D7E0A63C(0, &qword_1EDBBD1C0, MEMORY[0x1E69E62F8]);
  sub_1D818F614();
}

void sub_1D7E0A63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D818EBE4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7E0A69C()
{
  v0 = sub_1D818F954();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D818F0C4();
  sub_1D7E0631C(0, &qword_1EDBBD4B8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v7 = *(v2 + 104);
  v8 = OUTLINED_FUNCTION_2_111();
  v7(v8);
  sub_1D818ED74();

  v9 = *(v2 + 8);
  v9(v6, v0);
  sub_1D818F0C4();
  sub_1D7E0631C(0, qword_1EDBBD4C0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v10 = OUTLINED_FUNCTION_2_111();
  v7(v10);
  sub_1D818ED74();

  v9(v6, v0);
  sub_1D818F0D4();
  type metadata accessor for OverlayAlertManager();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  v11 = OUTLINED_FUNCTION_2_111();
  v7(v11);
  sub_1D818ED74();

  v9(v6, v0);
  sub_1D818F0D4();
  sub_1D7E0631C(0, &qword_1EDBBD570);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0D4();
  sub_1D7E0631C(0, &qword_1EDBBD580);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0D4();
  sub_1D7E0631C(0, qword_1EDBBD1E0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a1)
{
  v2[8] = a1;
  v2[4] = v1;
  v2[5] = v3;
  *(v4 - 104) = 0;
  *(v4 - 96) = 0xE000000000000000;

  return sub_1D81925F4();
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{
  *(v1 - 120) = a1;

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_24(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return sub_1D8190FF4();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_once();
}

double OUTLINED_FUNCTION_2_28(uint64_t a1, uint64_t a2)
{

  return sub_1D7E55D2C(v2, a2, v3, v5);
}

id OUTLINED_FUNCTION_2_29()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_2_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  a12 = 3;

  ViewControllerTransitionManager.clearState(viewController:matching:)(v12, &a12);
}

id OUTLINED_FUNCTION_88()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_48()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

void OUTLINED_FUNCTION_2_49()
{
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_2_52()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_2_54()
{

  return BlueprintLayoutProviderType.layoutBlueprint.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_68()
{
  sub_1D7E0E10C(v2);
  sub_1D7E0E10C(v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_71()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_2_73()
{
  v2 = *(v0 + *(v1 + 64) + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void OUTLINED_FUNCTION_2_74()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_2_75()
{

  return sub_1D8190F14();
}

__n128 *OUTLINED_FUNCTION_2_77(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E656964617267;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a15 = 2;

  return sub_1D7EB1744(&a9);
}

uint64_t OUTLINED_FUNCTION_2_83()
{
  v6 = *(v0 + v4);
  *(v6 + 16) = v3 + 1;
  v7 = v6 + 16 * v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;

  return swift_endAccess();
}

id OUTLINED_FUNCTION_3_16()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_87()
{

  return sub_1D818EC14();
}

uint64_t OUTLINED_FUNCTION_2_88@<X0>(char a1@<W8>, uint64_t a2, int a3, __int16 a4, char a5, unsigned __int8 a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18)
{
  a18 = a1;
  a6 = 0;

  return CoverViewManager.present(cover:animation:completion:)(&a7, &a6, 0, 0);
}

uint64_t OUTLINED_FUNCTION_2_90()
{

  return sub_1D8192634();
}

uint64_t OUTLINED_FUNCTION_2_93()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_2_96()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_2_97()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_2_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;

  return memcpy(v9, &a9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_2_104()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_107()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_108()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_2_109()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_112()
{

  return swift_unknownObjectWeakInit();
}

__n128 *OUTLINED_FUNCTION_2_115(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1717987684;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_118()
{

  return sub_1D80E8220();
}

__n128 OUTLINED_FUNCTION_2_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, char a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_122()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_127()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_128()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_129()
{
  sub_1D7E1C664((v0 - 112), (v0 - 144));
  __swift_project_boxed_opaque_existential_1((v0 - 144), *(v0 - 120));

  return sub_1D8192614();
}

id OUTLINED_FUNCTION_2_131()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_2_133(__n128 a1, __n128 a2)
{
  *(v2 - 104) = a2;
  *(v2 - 120) = a1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_2_134()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_135(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{

  sub_1D7E5CDF0(0, a1, a2 + 8, type metadata accessor for Action);
}

uint64_t OUTLINED_FUNCTION_2_136()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_2_143()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_2_146()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_147(unint64_t *a1)
{

  return sub_1D7E24964(a1);
}

uint64_t OUTLINED_FUNCTION_2_148()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_2_151(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *OUTLINED_FUNCTION_2_154@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 8), (v1 + 8), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_2_157()
{

  return sub_1D81927E4();
}

id OUTLINED_FUNCTION_2_160()
{

  return static UIFont.systemFont(ofSize:weight:width:traits:)(0, 1, 1024, v1, v2);
}

void OUTLINED_FUNCTION_2_161()
{

  sub_1D7E63458();
}

__n128 OUTLINED_FUNCTION_2_163()
{
  v2 = *(v0 + 32);
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 - 320) = *v0;
  *(v1 - 304) = v4;
  *(v1 - 288) = v2;
  return result;
}

id OUTLINED_FUNCTION_2_164(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_2_170()
{

  return [v0 (v1 + 306)];
}

uint64_t OUTLINED_FUNCTION_2_172()
{

  return sub_1D8190D94();
}

uint64_t OUTLINED_FUNCTION_2_175()
{

  return sub_1D8190E94();
}

uint64_t sub_1D7E0BBBC()
{
  v0 = sub_1D818F954();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_1D818FCE4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v14, &qword_1EDBBD578);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  (*(v9 + 104))(v13, *MEMORY[0x1E69D6BF0], v7);
  sub_1D818ED44();

  (*(v9 + 8))(v13, v7);
  v15 = *(v2 + 104);
  v15(v6, *MEMORY[0x1E69D6AC0], v0);
  sub_1D818ED74();

  v16 = *(v2 + 8);
  v16(v6, v0);
  sub_1D818F0C4();
  type metadata accessor for ShineImageRendererPipelineProcessor();
  OUTLINED_FUNCTION_0_10();
  sub_1D818F604();

  v17 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v17, qword_1EDBBD588);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v18 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v18, &qword_1EDBBD4B0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  sub_1D818F0C4();
  sub_1D7E069F0(0, &qword_1EDBBD298);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v19 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v19, &qword_1EDBBD6F8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v20 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v20, &qword_1EDBBD288);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v21 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v21, &qword_1EDBBD2B0);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v22 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v22, &qword_1EDBBDC30);
  sub_1D818F614();

  v15(v6, *MEMORY[0x1E69D6AD0], v0);
  sub_1D818ED74();

  v16(v6, v0);
  v23 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v23, &qword_1EDBBD2A8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v24 = sub_1D818F0D4();
  OUTLINED_FUNCTION_91(v24, &qword_1EDBBD2B8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();

  v25 = sub_1D818F0C4();
  OUTLINED_FUNCTION_91(v25, &qword_1EDBBD1D8);
  OUTLINED_FUNCTION_0_10();
  sub_1D818F614();
}

uint64_t sub_1D7E0C1B8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D7E0C364()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D7E0C4C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7E0C690()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D7E0C800()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7E0C8FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7E0CA38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0CAD8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0CB80()
{
  result = sub_1D8190294();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0CC60()
{
  result = type metadata accessor for BlueprintImpressionManager.Session();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1D7E0CDA0()
{
  sub_1D7E0D158();
  if (v0 <= 0x3F)
  {
    sub_1D7E0CE14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D7E0CE14()
{
  result = qword_1EDBB2EE0;
  if (!qword_1EDBB2EE0)
  {
    result = MEMORY[0x1E69E6810];
    atomic_store(MEMORY[0x1E69E6810], &qword_1EDBB2EE0);
  }

  return result;
}

uint64_t sub_1D7E0CEB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0CF78()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0D06C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7E0D158()
{
  if (!qword_1EDBB3428)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1D818E754();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDBB3428);
    }
  }
}

uint64_t sub_1D7E0D278()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0D34C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7E0D3A4(uint64_t a1)
{
  v5.val[0] = *(a1 + 80);
  v5.val[1] = v5.val[0];
  v1 = v4;
  vst2q_f64(v1, v5);
  type metadata accessor for StackNavigator.WeakRouter();
  result = sub_1D818F9E4();
  if (v3 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = MEMORY[0x1E69E7CB8] + 64;
    v4[2] = MEMORY[0x1E69E5CE8] + 64;
    v4[3] = MEMORY[0x1E69E5CE8] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D7E0D5A0()
{
  sub_1D7E09DB8(319, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BlueprintSection();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D818F394();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BlueprintItem();
      swift_getWitnessTable();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D818F784();
      if (v2 <= 0x3F)
      {
        type metadata accessor for BlueprintCaches();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D7E0D7C4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BlueprintItem();
    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1D818F394();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7E0D8C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7E0D978(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7E0A1A8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1D7E0D9C8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1D81920A4();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1D7E0DA08(void *a1)
{
  v1 = [a1 handoffUserActivityType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

Swift::Void __swiftcall UIWindow.registerKeyWindowSceneNotification()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_didBecomeKeyWindow name:*MEMORY[0x1E69DE7B0] object:0];
}

uint64_t sub_1D7E0DB00()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_1D8191E84();
  if (v1 <= 0x3F)
  {
    v0 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      type metadata accessor for PageBlueprint();
      v0 = sub_1D8191E84();
      if (v3 <= 0x3F)
      {
        v0 = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1D7E0DD28()
{
  result = sub_1D818F394();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7E0DDA4()
{
  type metadata accessor for TipManager();
  swift_allocObject();
  return TipManager.init()();
}

uint64_t TipManager.init()()
{
  v1 = v0;
  v2 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_15();
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v3;
  type metadata accessor for KeyboardObserver();
  swift_allocObject();
  *(v0 + 32) = KeyboardObserver.init()();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  sub_1D818EDD4();
  sub_1D818EE04();
  swift_allocObject();
  *(v0 + 64) = sub_1D818EDF4();
  OUTLINED_FUNCTION_0_8();
  v4 = swift_allocObject();
  swift_weakInit();

  KeyboardObserver.onDidHide(animationBlock:)(sub_1D818B220, v4);

  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_0_8();
  v5 = swift_allocObject();
  swift_weakInit();

  KeyboardObserver.onWillShow(animationBlock:)(sub_1D818B240, v5);

  v6 = [objc_opt_self() defaultCenter];

  v7 = sub_1D8190EE4();
  [v6 addObserver:v1 selector:sel_barCompressionStatusDidChange_ name:v7 object:0];

  return v1;
}

uint64_t sub_1D7E0E008()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t KeyboardObserver.init()()
{
  bzero((v0 + 16), 0x90uLL);
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];

  return v0;
}

uint64_t sub_1D7E0E10C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D7E0E188()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t KeyboardObserver.onDidHide(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t OUTLINED_FUNCTION_27_9@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 - 304);
  *(v2 - 288) = a1;
  *(v2 - 576) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return swift_unownedRetainStrong();
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return sub_1D7E2B108(v1, v0 + v2);
}

uint64_t OUTLINED_FUNCTION_27_17()
{
  sub_1D80557B4(0);

  return sub_1D8190484();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_19()
{

  return type metadata accessor for BlueprintItem();
}

void OUTLINED_FUNCTION_27_22()
{
  v0[608] = v4;
  v0[609] = v3;
  v0[610] = v2;
  v0[611] = v1;
}

__n128 OUTLINED_FUNCTION_27_23()
{
  result = v0[1];
  v1[1] = result;
  *(v2 - 160) = v0[2].n128_u8[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_24()
{

  return sub_1D818F9F4();
}

id OUTLINED_FUNCTION_27_26(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);

  return v1;
}

id OUTLINED_FUNCTION_27_29(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_27_30()
{

  return sub_1D818F784();
}

uint64_t KeyboardObserver.onWillShow(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t Bootstrapper.init(mainViewControllerFactory:onboardingViewControllerFactory:onboardingViewDismissalAnimator:)()
{
  v4 = v1;
  v5 = OUTLINED_FUNCTION_4_59();
  v6 = OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferredPromise;
  sub_1D7E0E714();
  swift_allocObject();
  *&v1[v6] = sub_1D818F1E4();
  v7 = OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup;
  *&v4[v7] = dispatch_group_create();
  sub_1D7E0E768(v0, &v4[OBJC_IVAR____TtC5TeaUI12Bootstrapper_mainViewControllerFactory]);
  sub_1D7E0E768(v2, &v4[OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewControllerFactory]);
  sub_1D7E0E768(v3, &v4[OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewDismissalAnimator]);
  v4[OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldCollapseSidebar] = 0;
  v4[OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldHideToolbar] = 0;
  v10.receiver = v4;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  return OUTLINED_FUNCTION_3_84(v8);
}

void sub_1D7E0E714()
{
  if (!qword_1EDBBC4C8)
  {
    v0 = sub_1D818F1F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC4C8);
    }
  }
}

uint64_t sub_1D7E0E768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D7E0E7CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E0E81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E0E870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E0E8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_1D8192634();
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D7E6CDC0(v9, &a9, v10, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_1D81927E4();
}

void OUTLINED_FUNCTION_10_17(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6F90];

  sub_1D7E13630(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_10_21()
{
  v5 = *v0;
  *(v3 - 64) = v0[1];
  *(v3 - 56) = v5;
  v6 = MEMORY[0x1E69D6AD8];

  sub_1D7F76D38(0, v1, v2, v6);
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_1D8190E24();
}

id OUTLINED_FUNCTION_10_24()
{

  return [v0 (v1 + 1784)];
}

void OUTLINED_FUNCTION_10_25()
{
  *(v0 + 128) = 0x7475626972747461;
  *(v0 + 136) = 0xEA00000000007365;

  sub_1D7FAACEC();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return sub_1D818ED84();
}

uint64_t OUTLINED_FUNCTION_10_29@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  *(v2 + 216) = 256;

  return type metadata accessor for KeyboardObserver();
}

uint64_t OUTLINED_FUNCTION_10_31()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_12_2(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
}

id OUTLINED_FUNCTION_3_18()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_10_36(uint64_t a1)
{
  *(v7 - 136) = v3;
  *(v7 - 128) = v1;
  *(v7 - 120) = v2;
  *(v7 - 112) = v4;
  *(v7 - 104) = v5;
  *(v7 - 96) = v6;
  *(v7 - 88) = a1;

  return sub_1D818F784();
}

void OUTLINED_FUNCTION_77_0()
{

  JUMPOUT(0x1DA715D00);
}

uint64_t OUTLINED_FUNCTION_10_37()
{
  v3 = *(v0 + 32);
  *(v1 - 112) = *(v0 + 16);
  *(v1 - 96) = v3;

  return type metadata accessor for Blueprint();
}

double OUTLINED_FUNCTION_10_39()
{
  v2 = *(v0 - 3);
  v3 = *(v0 - 2);
  v4 = *(v0 - 1);
  v5 = *v0;

  return CGRectGetMinY(*&v2);
}

void OUTLINED_FUNCTION_10_40()
{
  v2 = *(v1 - 96);
  *v0 = *(v1 - 104);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_10_43()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_10_44()
{
  result = *(v0 - 176);
  *(v0 - 144) = *(v0 - 160);
  *(v0 - 128) = result;
  return result;
}

void OUTLINED_FUNCTION_10_45()
{

  JUMPOUT(0x1DA715D00);
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 24);
  *(v8 - 192) = *(a3 + 16);
  *(v8 - 208) = a3;
  *(v8 - 200) = v9;
  *(v8 - 240) = *(a4 + 16);
  *(v8 - 212) = *(a5 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(v8 - 184) = v11;
  *(v5 + 16) = v10;
  *(v5 + 24) = v11;
  *(v8 - 176) = *(v7 + 16);
  *(v8 - 128) = v7 + 16;
  return v6;
}

id OUTLINED_FUNCTION_10_55()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_10_56()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_57()
{

  return sub_1D8190DB4();
}

uint64_t OUTLINED_FUNCTION_10_59()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t sub_1D7E0EFD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7E0F01C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1D7E0EFD4(&qword_1EDBB64B0, a2, type metadata accessor for PresentationOperationManager);
  result = sub_1D7E0EFD4(&qword_1EDBB64B8, v3, type metadata accessor for PresentationOperationManager);
  *(a1 + 16) = result;
  return result;
}

char *UserActivityManager.init(serializer:)(uint64_t a1)
{
  v2 = *v1;
  v17 = sub_1D8191AA4();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  sub_1D8191A84();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v10 = sub_1D8190C34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_15();
  v16 = *(v2 + 88);
  v11 = sub_1D7E1017C();
  v12 = MEMORY[0x1E69E7CC8];
  *(v1 + 2) = v11;
  *(v1 + 3) = v12;
  v15 = *(*v1 + 128);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  sub_1D8190C24();
  sub_1D7E10290(&unk_1EDBB3180, MEMORY[0x1E69E8030]);
  v13 = MEMORY[0x1E69E8030];
  sub_1D7E10320(0, &qword_1EDBB3308, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D7E1043C(&qword_1EDBB3300, &qword_1EDBB3308, v13);
  sub_1D8192004();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v17);
  *&v1[v15] = sub_1D8191AE4();
  (*(*(v16 - 8) + 32))(&v1[*(*v1 + 120)], a1);
  return v1;
}

id OUTLINED_FUNCTION_3_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{

  return static BarView.barView(style:separator:groupName:)(&a15, &a14);
}

uint64_t OUTLINED_FUNCTION_3_24()
{
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return swift_once();
}

double OUTLINED_FUNCTION_3_32()
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;

  return CGRectGetHeight(*&v5);
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_35()
{
}

uint64_t OUTLINED_FUNCTION_3_36(unint64_t *a1)
{

  return sub_1D7F523A4(a1);
}

uint64_t OUTLINED_FUNCTION_3_43()
{
}

id OUTLINED_FUNCTION_3_44()
{
  v3 = *(v1 + 680);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return sub_1D81923A4();
}

id OUTLINED_FUNCTION_3_50()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1, unint64_t *a2)
{

  return sub_1D7E069F0(0, a2);
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return sub_1D81923A4();
}

uint64_t OUTLINED_FUNCTION_3_56()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_63()
{

  return sub_1D8190D94();
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_1D81920A4();
}

void *OUTLINED_FUNCTION_3_65()
{

  return memcpy(v0, v1, 0x7AuLL);
}

uint64_t OUTLINED_FUNCTION_3_68()
{

  return sub_1D8190F14();
}

double OUTLINED_FUNCTION_3_70(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{

  return static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(a1, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_3_71()
{

  JUMPOUT(0x1DA713260);
}

id OUTLINED_FUNCTION_3_76(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return [v12 (v13 + 2390)];
}

uint64_t OUTLINED_FUNCTION_3_77()
{
  *(v4 - 152) = v1;
  *(v4 - 144) = v0;
  *(v4 - 136) = v3;
  *(v4 - 128) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_79()
{

  return sub_1D818EC34();
}

void OUTLINED_FUNCTION_3_83()
{
  *v1 = v0;
  *(v1 + 8) = v4;
  *(v1 + 9) = v3;
  *(v1 + 10) = v2 & 1;
  *(v1 + 16) = v5;
}

uint64_t OUTLINED_FUNCTION_3_84(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_85(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_86()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_3_88()
{
  sub_1D7E05450((v0 + 512), v0 + 600);
  v1 = *(v0 + 624);

  return __swift_project_boxed_opaque_existential_1((v0 + 600), v1);
}

void OUTLINED_FUNCTION_3_89()
{

  JUMPOUT(0x1DA715D00);
}

uint64_t OUTLINED_FUNCTION_3_93(unint64_t *a1)
{

  return sub_1D80812D0(a1);
}

uint64_t OUTLINED_FUNCTION_3_96()
{

  return swift_getAssociatedTypeWitness();
}

__n128 OUTLINED_FUNCTION_3_97@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W5>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  result = *a2;
  v10 = *(a2 + 16);
  *(a4 + 48) = *a2;
  *(a4 + 64) = v10;
  *(a4 + 80) = v6;
  *(a4 + 88) = v7;
  *(a4 + 89) = a3;
  return result;
}

double OUTLINED_FUNCTION_3_100()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_105()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);
  v5 = *(v0 - 136);
  v6 = *(v0 - 128);
  v7 = *(v0 - 120);
  v8 = *(v0 - 112);

  return sub_1D80AF4FC(v2, v3, v4, v5, v6, v7, v8);
}

id OUTLINED_FUNCTION_3_106()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_3_108()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_3_110()
{

  return swift_dynamicCastObjCProtocolConditional();
}

__n128 OUTLINED_FUNCTION_3_111@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __n128 a15)
{
  *&v18 = a1;
  *(&v18 + 1) = v15;
  v16[1] = a13;
  v16[2] = a14;
  result = a15;
  v16[3] = a15;
  v16[4] = v18;
  return result;
}

id OUTLINED_FUNCTION_3_112()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

id OUTLINED_FUNCTION_3_115()
{

  return sub_1D80DF35C(0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_117()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_118()
{

  return sub_1D7E7A488((v0 + 8), (v0 + 624));
}

uint64_t OUTLINED_FUNCTION_3_123(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

id OUTLINED_FUNCTION_3_126(void *a1)
{

  return [a1 (v1 + 760)];
}

size_t OUTLINED_FUNCTION_3_127(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_128()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_130()
{

  return sub_1D8190DB4();
}

void OUTLINED_FUNCTION_3_131()
{

  sub_1D7F08E34();
}

id OUTLINED_FUNCTION_3_132()
{

  return [v0 (v1 + 138)];
}

uint64_t OUTLINED_FUNCTION_3_133()
{

  return sub_1D8190FF4();
}

uint64_t OUTLINED_FUNCTION_3_134()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_3_135()
{

  return swift_getObjectType();
}

double OUTLINED_FUNCTION_3_136()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_137()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_3_138()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

void OUTLINED_FUNCTION_3_140(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{

  sub_1D7E336E0(0, a1, a2 + 8, type metadata accessor for Action);
}

uint64_t OUTLINED_FUNCTION_3_144()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_145()
{

  return sub_1D818FD44();
}

void sub_1D7E10114(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0A1A8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7E1017C()
{
  sub_1D7E101C4();
  swift_allocObject();
  return sub_1D818FA24();
}

void sub_1D7E101C4()
{
  if (!qword_1EDBBC400)
  {
    sub_1D7E10114(255, &unk_1EDBB31F0, qword_1EDBBC7E0, 0x1E69636A8, MEMORY[0x1E69E6720]);
    v0 = sub_1D818FA64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC400);
    }
  }
}

uint64_t sub_1D7E10248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E10290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7E102D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7E10320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E10384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E103D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7F5232C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7E1043C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7E10320(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7E104A0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7E10384(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StackNavigator.init<A>(userActivityManager:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v13.val[0] = OUTLINED_FUNCTION_13_39();
  *v3 = v13;
  v4 = &v12;
  vst2q_f64(v4, v13);
  type metadata accessor for StackNavigator.WeakRouter();
  sub_1D818F9D4();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 112);
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v1 + v6) = sub_1D8190D34();
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 120);
  *(v1 + v8) = sub_1D8190D34();
  OUTLINED_FUNCTION_12();
  v10 = (v1 + *(v9 + 104));
  *v10 = sub_1D80CD08C;
  v10[1] = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_13_6@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_1D818E924();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_dynamicCast();
}

__n128 *OUTLINED_FUNCTION_13_18(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C746974;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1D7E4B274(a1, va, v12);
}

id OUTLINED_FUNCTION_13_28()
{
  v3 = *(v0 + 160);

  return [v3 (v1 + 3960)];
}

void OUTLINED_FUNCTION_13_32(unint64_t a1@<X8>)
{

  sub_1D7EAEB70(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_13_33()
{

  return sub_1D818F394();
}

double OUTLINED_FUNCTION_13_36(double a1, double a2, double a3, double a4)
{
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  *&result = CGRectUnion(*&a1, *&v9);
  return result;
}

unint64_t OUTLINED_FUNCTION_13_40()
{

  return sub_1D7E11E0C();
}

void OUTLINED_FUNCTION_13_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 128) = a5;
  *(v6 - 120) = a6;
  *(v6 - 136) = a4;
  *(v6 - 152) = a2;
}

uint64_t OUTLINED_FUNCTION_13_43()
{

  return sub_1D7E222B8(v0 + 1192, v0 + 624);
}

id OUTLINED_FUNCTION_13_46()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_13_48()
{
  v3 = *(v1 + 680);
  v4 = *(v0 + 88);

  return [v4 v3];
}

uint64_t OUTLINED_FUNCTION_13_51()
{
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 72) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_53()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
    a9 = 0;
  }

  *v10 = a9;
  *(v10 + 8) = a10;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_1D8192334();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_7_24()
{

  return [v0 (v1 + 3448)];
}

unint64_t OUTLINED_FUNCTION_7_25()
{

  return sub_1D7F87324();
}

void OUTLINED_FUNCTION_7_29(__n128 a1)
{
  *(v4 - 104) = a1;
  *(v4 - 88) = v3;
  *(v4 - 105) = v2;
  *(v4 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_35()
{
}

unint64_t OUTLINED_FUNCTION_7_36()
{

  return sub_1D7E194D0();
}

void OUTLINED_FUNCTION_7_39()
{

  sub_1D7EE4600();
}

double OUTLINED_FUNCTION_7_42()
{
  v0[16] = v1;
  result = 0.0;
  v0[14] = 0;
  v0[15] = 0;
  return result;
}

void OUTLINED_FUNCTION_7_43()
{

  JUMPOUT(0x1DA714A00);
}

uint64_t OUTLINED_FUNCTION_7_44()
{

  return type metadata accessor for BlueprintImpressionSession();
}

uint64_t OUTLINED_FUNCTION_7_46(unint64_t *a1)
{

  return sub_1D803BA9C(a1);
}

char *OUTLINED_FUNCTION_7_48(unint64_t a1)
{

  return sub_1D7E3A4AC(a1, sub_1D7E33DD8);
}

uint64_t OUTLINED_FUNCTION_7_51()
{
  v1 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 160);
  *(v0 - 128) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  a13 = 0;
  a11 = 0u;
  a12 = 0u;

  return sub_1D8085DBC(&a11);
}

void *OUTLINED_FUNCTION_7_54(void *result)
{
  result[2] = v3[10];
  result[3] = v2;
  result[4] = v3[12];
  result[5] = v3[13];
  result[6] = v1;
  result[7] = v3[15];
  result[8] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_55(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

__n128 OUTLINED_FUNCTION_7_56@<Q0>(uint64_t a1@<X8>)
{
  *(v2 + 272) = v1;
  *(v2 + 280) = *(a1 + 8);
  *(v2 + 296) = *(a1 + 24);
  *(v2 + 312) = *(a1 + 40);
  *(v2 + 321) = *(a1 + 49);
  *(v2 + 200) = v1;
  v3 = *(a1 + 24);
  *(v2 + 208) = *(a1 + 8);
  *(v2 + 224) = v3;
  *(v2 + 240) = *(a1 + 40);
  result = *(a1 + 49);
  *(v2 + 249) = result;
  return result;
}

id OUTLINED_FUNCTION_7_57()
{

  return [v0 subviews];
}

uint64_t OUTLINED_FUNCTION_7_63()
{

  return sub_1D818FAC4();
}

unint64_t OUTLINED_FUNCTION_7_64()
{

  return sub_1D7E194D0();
}

void *OUTLINED_FUNCTION_7_65(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy(a1, &__src, 0x90uLL);
}

id OUTLINED_FUNCTION_7_69()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_7_74()
{
  v1[4] = v0;
  v1[5] = (v2 - 1) & v2;
  return *(*(v1[3] + 48) + 16 * (__clz(__rbit64(v2)) | (v0 << 6)) + 8);
}

unint64_t OUTLINED_FUNCTION_7_76()
{

  return sub_1D7E41148();
}

id OUTLINED_FUNCTION_7_80()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_7_83()
{
  v3 = *(v1 + 64);

  return [v0 v3];
}

void OUTLINED_FUNCTION_7_84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E697D6A0];

  sub_1D8168810(255, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_7_85()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_86()
{

  return sub_1D818FAC4();
}

unint64_t sub_1D7E11440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D8192634() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

double CGFloat.clamp(min:max:)(double result, double a2, double a3)
{
  if (a2 >= a3)
  {
    a2 = a3;
  }

  if (a3 >= result)
  {
    return a2;
  }

  return result;
}

uint64_t Debounce.init(delay:block:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return v3;
}

void static UIWindow.keyWindowScene.setter(void *a1)
{
  if (qword_1EDBBC7A8 != -1)
  {
    OUTLINED_FUNCTION_0_130();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1D7E11660(Strong);
}

void sub_1D7E11660(void *a1)
{
  if (qword_1EDBBC7A8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = [objc_opt_self() defaultCenter];
  if (qword_1EDBBC790 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDBBC798;
  v6 = swift_unknownObjectWeakLoadStrong();
  [v4 postNotificationName:v5 object:v6];
}

uint64_t sub_1D7E11788()
{
  result = sub_1D8190EE4();
  qword_1EDBBC798 = result;
  return result;
}

uint64_t ContainerManager.containerEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI16ContainerManager_containerEnvironment;
  v4 = sub_1D818FCC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UISceneConnectionOptions.connectionOptions.getter()
{
  sub_1D7E0A1A8(0, &qword_1EDBBC7B8);
  v1 = v0;
  return sub_1D818F674();
}

uint64_t SceneConnectionOptions.isEmpty.getter()
{
  sub_1D818F684();
  sub_1D7E0A1A8(0, &qword_1EDBBC7B8);
  if ((OUTLINED_FUNCTION_1_90() & 1) == 0)
  {
    return 1;
  }

  v0 = [v17 userActivities];
  OUTLINED_FUNCTION_0_120();
  sub_1D7E0A1A8(v1, v2);
  OUTLINED_FUNCTION_0_120();
  sub_1D7E0D978(v3, v4);
  v5 = sub_1D8191614();

  LOBYTE(v0) = sub_1D7E0D9C8(v5);

  if ((v0 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v6 = [v17 shortcutItem];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [v17 URLContexts];
  OUTLINED_FUNCTION_0_120();
  sub_1D7E0A1A8(v8, v9);
  OUTLINED_FUNCTION_0_120();
  sub_1D7E0D978(v10, v11);
  v12 = sub_1D8191614();

  LOBYTE(v7) = sub_1D7E0D9C8(v12);

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D7E0DA08(v17);
  if (v13)
  {

    return 0;
  }

  v15 = [v17 notificationResponse];
  if (v15)
  {
    v16 = v15;

    return 0;
  }

  v6 = [v17 sourceApplication];
  if (v6)
  {
LABEL_4:

    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1D7E11AA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CommandCenter();
  result = sub_1D818EFE4();
  if (result)
  {
    *a2 = result;
    a2[1] = &protocol witness table for CommandCenter;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E11B08()
{
  if (!qword_1EDBB3380)
  {
    type metadata accessor for CommandStateObserver();
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3380);
    }
  }
}

uint64_t sub_1D7E11B80()
{
  sub_1D7E15E18();
  *(v0 + 16) = sub_1D8190D94();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  OUTLINED_FUNCTION_1_107(v2, v3, v4, v5, *MEMORY[0x1E69DDAD8]);

  v6 = [v1 defaultCenter];
  OUTLINED_FUNCTION_1_107(v6, v7, v8, v9, *MEMORY[0x1E69DE348]);

  return v0;
}

void sub_1D7E11C74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1D7E11CC4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_226(a1, &qword_1EDBB3390, &type metadata for CommandContextStore.ContextContainer);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = sub_1D8190D94();
  return v1;
}

uint64_t Command.__allocating_init(_:type:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v5 = 0;
  return (*(v3 + 120))(a1, a2, &v6, &v5);
}

unint64_t sub_1D7E11E0C()
{
  result = qword_1EDBBC7C0;
  if (!qword_1EDBBC7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBBC7C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return sub_1D81927E4();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return swift_endAccess();
}

id OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return a9;
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_1D818E994();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_getAssociatedTypeWitness();
}

id OUTLINED_FUNCTION_8_22()
{

  return [v0 (v2 + 3320)];
}

id OUTLINED_FUNCTION_8_25(uint64_t a1)
{
  v5 = *(v3 + 1712);

  return [v1 v5];
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D7E7BAAC(&a9);
}

void OUTLINED_FUNCTION_8_29()
{

  JUMPOUT(0x1DA714420);
}

void OUTLINED_FUNCTION_8_32()
{
  *(v4 - 152) = v1;
  *(v4 - 144) = v0;
  *(v4 - 136) = v3;
  *(v4 - 128) = v2;
}

uint64_t OUTLINED_FUNCTION_8_34()
{

  return type metadata accessor for BlueprintCollectionViewLayout();
}

void OUTLINED_FUNCTION_8_35()
{
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  *(v0 + 160) = v3;
  *(v0 + 168) = v4;
}

double OUTLINED_FUNCTION_8_38()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetMinY(*&v5);
}

uint64_t OUTLINED_FUNCTION_8_39()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_8_40(uint64_t a1, unint64_t *a2)
{

  sub_1D7E815E4(255, a2, type metadata accessor for BlueprintViewActionResponse);
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return swift_getAssociatedTypeWitness();
}

void *OUTLINED_FUNCTION_8_51(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_53()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_58()
{

  return swift_deallocPartialClassInstance();
}

id OUTLINED_FUNCTION_8_60()
{

  return [v0 (v1 + 138)];
}

void OUTLINED_FUNCTION_8_62()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t OUTLINED_FUNCTION_8_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_70()
{

  return swift_beginAccess();
}

uint64_t sub_1D7E12498()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_81_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_17@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1D7F814D4(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

void OUTLINED_FUNCTION_12_25()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_12_28()
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;
  *(v4 - 112) = v1;

  return type metadata accessor for BlueprintSection();
}

void OUTLINED_FUNCTION_12_29()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_12_35(__n128 a1, __n128 a2)
{
  *(v2 - 144) = a2;
  *(v2 - 128) = a1;
  return 0;
}

__n128 OUTLINED_FUNCTION_12_36@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *(v1 + a1 + 32);
  v5 = v2 + a1;
  result = *v3;
  v7 = *(v3 + 16);
  *v5 = *v3;
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_12_39@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 - 224);
  result = *v2;
  *a1 = *v2;
  return result;
}

void OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  SelectionBehavior.style.getter(va);
}

uint64_t OUTLINED_FUNCTION_12_41()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_44()
{

  JUMPOUT(0x1DA714420);
}

uint64_t OUTLINED_FUNCTION_12_45(uint64_t a1)
{
  *(v4 - 112) = v3;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = a1;
  return 0;
}

void *OUTLINED_FUNCTION_12_46()
{
  *(v0 + 623) = v2;

  return memcpy((v0 + 624), v1, 0x235uLL);
}

uint64_t OUTLINED_FUNCTION_12_47()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_49()
{

  return type metadata accessor for Localized();
}

id OUTLINED_FUNCTION_12_50()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_12_54()
{

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_12_56()
{

  JUMPOUT(0x1DA715D00);
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return sub_1D81917A4();
}

void OUTLINED_FUNCTION_38_11()
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v0;
  *(v4 - 128) = v1;
  *(v4 - 120) = v3;
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_38_14()
{
}

uint64_t sub_1D7E12BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_10_13();
  sub_1D8190FF4();
  v5 = sub_1D8192824();

  return a3(a1, a2, v5);
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_1D7F80220(v13, a10, v12, a11, v11);
}

id OUTLINED_FUNCTION_34_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return sub_1D8014CE4(v0);
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return sub_1D81917B4();
}

id OUTLINED_FUNCTION_34_14()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_34_16()
{

  return BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(v1, 0xD000000000000024, v0);
}

uint64_t OUTLINED_FUNCTION_34_18(uint64_t result)
{
  v1[4] = result;
  *v1 = v2;
  return result;
}

void OUTLINED_FUNCTION_34_21(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t Command.__allocating_init(_:type:loggingBehavior:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  result = swift_allocObject();
  v9 = *a3;
  v10 = *a4;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 33) = v10;
  return result;
}

void CommandCenter.register<A, B>(handler:for:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_33_18();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_20_42();
  *v1 = sub_1D8191AB4();
  v4 = OUTLINED_FUNCTION_5_81();
  v5(v4);
  sub_1D8190CA4();
  v6 = OUTLINED_FUNCTION_7_75();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for Command.LoggingBehavior();
  if (sub_1D7E13510())
  {
    if (qword_1EDBBCFC0 == -1)
    {
LABEL_4:
      v8 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_15_17();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D819FAB0;
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1D7E13BF4();
      *(v13 + 32) = v15;
      *(v13 + 40) = v14;
      sub_1D8190DB4();
      sub_1D81919E4();
      OUTLINED_FUNCTION_21_34();
      sub_1D818FD44();

      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_1_162();
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_38_16();
  sub_1D7E13C48();
  sub_1D7E143B8(v16, v0);

  OUTLINED_FUNCTION_100();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D7E33DD8(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 88) = a1;

  return type metadata accessor for Blueprint();
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11()
{

  return swift_once();
}

id OUTLINED_FUNCTION_20_12(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 232);

  return [v6 a2];
}

unint64_t OUTLINED_FUNCTION_20_13(UIImage with, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, UIImage image)
{

  return UIImage.blendWithAlphaMask(image:with:)(image, with);
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return type metadata accessor for PageViewController();
}

void OUTLINED_FUNCTION_20_20()
{
  v3 = *(v0 + 216);
  *v1 = *(v0 + 208);
  *&v1[*(v2 + 24)] = v3;
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_20_24()
{
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  return v0 + 416;
}

uint64_t OUTLINED_FUNCTION_20_25(uint64_t a1)
{
  *(v7 - 144) = v3;
  *(v7 - 136) = v6;
  *(v7 - 128) = v1;
  *(v7 - 120) = v4;
  *(v7 - 112) = v5;
  *(v7 - 104) = v2;
  *(v7 - 96) = a1;

  return sub_1D818F784();
}

id OUTLINED_FUNCTION_20_28(void *a1, void *a2, void *a3, void *a4)
{

  return sub_1D7E442D8(a1, a2, a3, a4, v4, 4);
}

__n128 OUTLINED_FUNCTION_20_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  v8 = *(a5 + 24);
  *(v7 - 232) = *(a5 + 16);
  *(v7 - 224) = a6;
  *(v7 - 248) = a5;
  *(v7 - 240) = v8;
  v9 = *(a6 + 16);
  *(v7 - 216) = *(a6 + 24);
  *(v7 - 208) = v9;
  result = *a7;
  *(v7 - 160) = *a7;
  return result;
}

id OUTLINED_FUNCTION_20_33()
{
  v3 = *(v1 + 3440);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_20_37(uint64_t a1, uint64_t a2)
{
  *(v3 - 120) = a1;
  *(v3 - 112) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_20_39()
{

  return type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
}

id OUTLINED_FUNCTION_20_40()
{

  return [v0 (v1 + 2808)];
}

unint64_t OUTLINED_FUNCTION_20_42()
{

  return sub_1D7E11E0C();
}

void OUTLINED_FUNCTION_20_45()
{

  JUMPOUT(0x1DA713260);
}

uint64_t sub_1D7E13540()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6138 = result;
  return result;
}

unint64_t sub_1D7E13588()
{
  result = qword_1EDBBE110;
  if (!qword_1EDBBE110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBBE110);
  }

  return result;
}

void sub_1D7E135CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E13630(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0631C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7E13698(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7E136FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7E0631C(255, a3);
    v7 = OUTLINED_FUNCTION_17_7();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7E13760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D81925C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E137B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E13818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D81925C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return sub_1D7E05450(&a9, &a15);
}

id OUTLINED_FUNCTION_21_13()
{

  return [v0 (v1 + 504)];
}

uint64_t OUTLINED_FUNCTION_21_19()
{
  v2 = v0[19];
  v0[32] = v0[14];
  v0[33] = v2;
  v3 = v0[31];
  v0[34] = v0[13];
  v0[35] = v3;

  return type metadata accessor for BlueprintLayout();
}

double OUTLINED_FUNCTION_21_20()
{
  v4 = v0[17];
  v3 = v0[18];
  v5 = v2;
  v6 = v0[16];

  return CGRectGetMinY(*&v3);
}

id OUTLINED_FUNCTION_21_22()
{
  v3 = *(v1 + 2456);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_21_23(void *a1)
{

  return sub_1D810EC84(v1, v2, a1);
}

BOOL OUTLINED_FUNCTION_21_25@<W0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];

  return CGRectEqualToRect(*&v3, *&v7);
}

void OUTLINED_FUNCTION_21_26()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1DA715D00);
}

id OUTLINED_FUNCTION_21_27(void *a1, void *a2, void *a3, void *a4)
{

  return sub_1D7E442D8(a1, a2, a3, a4, v4, 2);
}

char *OUTLINED_FUNCTION_21_28(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  v5 = *(v4 - 96);
  a1[4] = v3;
  a1[5] = v5;
  return a1 + *(v4 - 112);
}

id OUTLINED_FUNCTION_21_29()
{

  return [v0 (v1 + 2040)];
}

void *OUTLINED_FUNCTION_21_30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char __src)
{

  return memcpy((v28 - 176), &__src, 0x41uLL);
}

id OUTLINED_FUNCTION_21_37(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_21_38()
{

  return swift_beginAccess();
}

unint64_t sub_1D7E13BF4()
{
  result = qword_1EDBBE120;
  if (!qword_1EDBBE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBE120);
  }

  return result;
}

void sub_1D7E13C48()
{
  OUTLINED_FUNCTION_120();
  v31 = v0;
  v32 = v1;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v7 = *v6;
  v27 = v4;
  v28 = v7;
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  OUTLINED_FUNCTION_0_8();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v9 + 16);
  v17(v15, v5, v3);
  v18 = *(v9 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  v28 = *(v28 + 88);
  *(v19 + 2) = v28;
  *(v19 + 3) = v3;
  *(v19 + 4) = v32;
  *(v19 + 5) = v16;
  *(v19 + 6) = v20;
  v26 = *(v9 + 32);
  v26(&v19[(v18 + 56) & ~v18], v15, v3);
  OUTLINED_FUNCTION_0_8();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v29;
  v17(v29, v27, v3);
  v23 = (v18 + 48) & ~v18;
  v24 = swift_allocObject();
  *(v24 + 2) = v28;
  *(v24 + 3) = v3;
  *(v24 + 4) = v32;
  *(v24 + 5) = v21;
  v26(&v24[v23], v22, v3);
  *&v24[(v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
  type metadata accessor for CommandHandlerWrapper();
  OUTLINED_FUNCTION_15_17();
  swift_allocObject();
  swift_retain_n();

  sub_1D7E14058();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E13EEC()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7E13F9C()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

void *sub_1D7E14058()
{
  OUTLINED_FUNCTION_26_24();
  swift_unknownObjectWeakInit();
  v0[2] = v6;
  v0[3] = v5;
  v0[4] = v4;
  v0[5] = v3;
  v0[6] = v2;
  v0[7] = v1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_1D818E994();
}

void OUTLINED_FUNCTION_26_4()
{
}

void OUTLINED_FUNCTION_26_7()
{
  *(v0 - 192) = v2;
  *(v0 - 184) = *(v0 - 728);
  *(v0 - 176) = *(v0 - 720) & 1;
  *(v0 - 168) = v1;
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return type metadata accessor for BlueprintItem();
}

void *OUTLINED_FUNCTION_26_13(uint64_t a1, ...)
{
  va_start(__dst, a1);

  return memcpy(__dst, &STACK[0x758], 0x260uLL);
}

uint64_t OUTLINED_FUNCTION_26_14@<X0>(char a1@<W8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  return sub_1D8057284(v3, v4, v5, a1 & 1);
}

void OUTLINED_FUNCTION_26_20()
{
  *(v0 - 192) = 0;
  *(v0 - 110) = 0;

  sub_1D80CC3F0();
}

uint64_t OUTLINED_FUNCTION_26_21()
{

  return sub_1D818F9F4();
}

void *OUTLINED_FUNCTION_26_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&STACK[0x260], &a9, 0x260uLL);
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return sub_1D81922A4();
}

void OUTLINED_FUNCTION_102_2()
{
}

uint64_t sub_1D7E143B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 16);
  sub_1D7E14560();
  *(v2 + 16) = v5;
  swift_endAccess();
  return sub_1D7E15144(a2);
}

uint64_t sub_1D7E1445C()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_27_2(v9, v7);
  sub_1D7E11428(v11, v12);
  OUTLINED_FUNCTION_4_10();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  v4(0);
  if (OUTLINED_FUNCTION_114())
  {
    sub_1D7E11428(v8, v6);
    OUTLINED_FUNCTION_122();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  if (v17)
  {
    *(*(*v0 + 56) + 8 * v16) = v10;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_131();
    v2(v22);
    OUTLINED_FUNCTION_100();

    return sub_1D8190DB4();
  }
}

void sub_1D7E145C0(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v8 = v7(v6);
    v9 = v5(v3, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, v2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_114()
{

  return sub_1D8192374();
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_113_0()
{

  Blueprint.subscript.getter();
}

void OUTLINED_FUNCTION_113_1(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, uint64_t a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v8, a4, v7, a6, v9, 2u);
}

uint64_t OUTLINED_FUNCTION_130_1()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1D7E14734(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_13_10(v5, v9, v6, v7, v8);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20(v10, v11);
  }
}

double OUTLINED_FUNCTION_6_3()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_6_4()
{

  sub_1D7E2D320();
}

uint64_t OUTLINED_FUNCTION_174()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return sub_1D8192264();
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{

  return AutomationType.automationIdentifier(encoder:)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_1D818E514();
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_1D818F394();
}

uint64_t OUTLINED_FUNCTION_6_19(unint64_t *a1)
{

  return sub_1D7F523A4(a1);
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return swift_unownedRetainStrong();
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  v4 = (*(v0 + v2) & 0xC000000000000001) == 0;
  v5 = *(v0 + v2);

  return sub_1D7E33DD8(v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_6_33(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 2;
}

uint64_t OUTLINED_FUNCTION_6_34()
{

  return swift_dynamicCastObjCClassUnconditional();
}

void *OUTLINED_FUNCTION_6_39(void *a1)
{

  return memcpy(a1, (v1 + 160), 0x99uLL);
}

id OUTLINED_FUNCTION_6_43(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_6_45()
{
  v0[2] = v2;
  v0[3] = v1;
  v0[6] = v3;
  v0[7] = v4;

  return swift_unknownObjectWeakAssign();
}

uint64_t OUTLINED_FUNCTION_6_46()
{
}

uint64_t OUTLINED_FUNCTION_6_47()
{
}

void OUTLINED_FUNCTION_6_50()
{

  sub_1D7EB0144();
}

void OUTLINED_FUNCTION_6_51(uint64_t a1@<X8>)
{
  *(a1 - 48) = *v1;
  *(a1 - 38) = 1717987684;
  *(a1 - 34) = 32;
  *(a1 - 25) = 32;
}

uint64_t OUTLINED_FUNCTION_6_53()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));
}

void OUTLINED_FUNCTION_6_55(uint64_t a1@<X8>)
{
  v2 = *(v1 - 304);
  *(a1 - 80) = *(v1 - 296);
  *(a1 - 72) = v2;
  v3 = *(v1 - 312);
  *(a1 - 64) = *(v1 - 200);
  *(a1 - 56) = v3;
  v4 = *(v1 - 328);
  *(a1 - 48) = *(v1 - 320);
  *(a1 - 40) = v4;
  v6 = *(v1 - 240);
  v5 = *(v1 - 232);
  *(a1 - 32) = *(v1 - 336);
  *(a1 - 24) = v6;
  *(a1 - 16) = v5;
}

uint64_t OUTLINED_FUNCTION_6_58()
{

  return type metadata accessor for Blueprint();
}

id OUTLINED_FUNCTION_6_59(uint64_t a1)
{

  return [v1 (v2 + 3832)];
}

void *OUTLINED_FUNCTION_6_61@<X0>(void *a1@<X8>)
{

  return memcpy(a1, v1, 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_6_62()
{

  return sub_1D80557E8();
}

uint64_t OUTLINED_FUNCTION_6_64()
{
  v2 = v0[34];
  v0[77] = v0[33];
  v0[78] = v2;

  return type metadata accessor for BlueprintLayout();
}

uint64_t OUTLINED_FUNCTION_6_66()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_6_68(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_69()
{

  return sub_1D8191364();
}

uint64_t OUTLINED_FUNCTION_6_70()
{
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = v5;
  v2[10] = v4;
  result = v1;
  *(v0 + 8) = *v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_82()
{
  *(v0 + 8) = v1 & 1;
  *(v0 + 575) = v3;

  return sub_1D80F0184(v2, (v0 + 576));
}

uint64_t OUTLINED_FUNCTION_6_86(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(v2 - 96) = *(a2 + 16);
  *(v2 - 80) = v4;

  return type metadata accessor for BlueprintLayoutSection();
}

uint64_t OUTLINED_FUNCTION_6_87()
{

  return sub_1D8192524();
}

uint64_t OUTLINED_FUNCTION_6_88()
{
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_89@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  *v4 = a1;
  v4[1] = a2;
  return sub_1D7E0E10C(v5);
}

void OUTLINED_FUNCTION_6_90()
{

  JUMPOUT(0x1DA713260);
}

void OUTLINED_FUNCTION_6_91()
{
  v1[2] = v2;
  v1[3] = v0;
  v1[17] = sub_1D813CFFC;
  v1[18] = 0;
}

uint64_t OUTLINED_FUNCTION_6_92()
{

  return sub_1D81927E4();
}

uint64_t OUTLINED_FUNCTION_6_93()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_95()
{

  return sub_1D818EF94();
}

uint64_t OUTLINED_FUNCTION_6_98()
{

  return BlueprintLayoutProviderType.layoutBlueprint.getter(v1, v0);
}

void OUTLINED_FUNCTION_6_99(void *a1)
{
  a1[6] = v2;
  a1[7] = v3;
  a1[9] = v1;
  a1[10] = 0x74657366666FLL;
  a1[11] = 0xE600000000000000;

  type metadata accessor for CGPoint();
}

uint64_t OUTLINED_FUNCTION_6_100()
{

  return swift_getAssociatedTypeWitness();
}

void *sub_1D7E151C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v7 = *a1;
  v40 = a4;
  v41 = v7;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v45 = v8;
  v43 = *(v8 + 16);
  v43(v14, a2, a3);
  v35 = v8 + 16;
  v16 = *(v8 + 80);
  v17 = swift_allocObject();
  v18 = v40;
  v19 = v41;
  v36 = a1;
  v42 = *(v41 + 136);
  *(v17 + 2) = v42;
  v41 = *(v19 + 144);
  *(v17 + 3) = v41;
  *(v17 + 4) = a3;
  *(v17 + 5) = v18;
  *(v17 + 6) = v15;
  *(v17 + 7) = a1;
  v20 = *(v45 + 32);
  v45 += 32;
  v39 = v20;
  v20(&v17[(v16 + 64) & ~v16], v14, a3);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v37;
  v43(v37, v44, a3);
  v23 = (v16 + 56) & ~v16;
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v42;
  *(v25 + 3) = v26;
  *(v25 + 4) = a3;
  *(v25 + 5) = v18;
  *(v25 + 6) = v21;
  v39(&v25[v23], v22, a3);
  v27 = v36;
  *&v25[v24] = v36;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v38;
  v43(v38, v44, a3);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 2) = v42;
  *(v30 + 3) = v31;
  v32 = v39;
  v33 = v40;
  *(v30 + 4) = a3;
  *(v30 + 5) = v33;
  *(v30 + 6) = v28;
  v32(&v30[v23], v29, a3);
  *&v30[v24] = v27;
  type metadata accessor for CommandHandlerWrapper();
  swift_allocObject();
  swift_retain_n();

  return sub_1D7E14058();
}

uint64_t sub_1D7E15578()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

void *sub_1D7E15630(uint64_t a1)
{
  type metadata accessor for CommandHandlerWrapper();
  v1[2] = sub_1D8190D94();
  type metadata accessor for CommandExecutionObserverStore();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  v1[4] = sub_1D7E11B80();
  type metadata accessor for CommandContextStore();
  OUTLINED_FUNCTION_1_63();
  v3 = swift_allocObject();
  v4 = sub_1D7E11CC4(v3);
  v1[5] = v4;
  v1[3] = a1;
  v5 = v4[2];
  v4[2] = sub_1D7E63E90;
  v4[3] = a1;

  sub_1D7E0E10C(v5);

  return v1;
}

uint64_t Command.init(_:type:loggingBehavior:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 33) = v6;
  return v4;
}

void sub_1D7E15728(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:a1 alpha:1.0];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:a2 alpha:1.0];
  v10 = [v7 ts:v8 dynamicColor:v9 withDarkStyleVariant:?];

  *a4 = v10;
}

uint64_t PresentationOperationManager.init(bootstrapper:launchPresentationConfigurationProvider:launchConditionProvider:dataStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_69(a1, &unk_1EDBBC4E8, &type metadata for PresentationProcessingStatus);
  swift_allocObject();
  v9 = sub_1D818F144();
  OUTLINED_FUNCTION_9_19(v9, MEMORY[0x1E69E7CC8]);
  OUTLINED_FUNCTION_10_29(v10);
  swift_allocObject();
  *(v4 + 224) = KeyboardObserver.init()();
  *(v4 + 232) = 1;
  *(v4 + 24) = a1;
  sub_1D7E0E768(a2, v4 + 96);
  sub_1D7E15A3C(a3, v4 + 176);
  sub_1D7E0E768(a4, v4 + 136);
  *(v4 + 56) = 0;
  v11 = swift_allocObject();
  swift_weakInit();

  v12 = a1;

  KeyboardObserver.onWillShow(animationBlock:)(sub_1D7FCB1D8, v11);

  v13 = swift_allocObject();
  swift_weakInit();

  KeyboardObserver.onDidHide(animationBlock:)(sub_1D7FCB1E0, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  OUTLINED_FUNCTION_0_92();
  sub_1D7E15B28(a3, v14, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);

  return v4;
}

uint64_t sub_1D7E15A04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E15A3C(uint64_t a1, uint64_t a2)
{
  sub_1D7E15ACC(0, &qword_1EDBB6748, &unk_1EDBB6750, &protocol descriptor for LaunchConditionProviderType, sub_1D7E0631C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7E15ACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D8191E84();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7E15B28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7E15ACC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1D7E15BA8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id SceneDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D7E15C44()
{
  sub_1D7E162B0();

  return swift_deallocClassInstance();
}

void *sub_1D7E15C74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CommandStateObserverStore();
  result = sub_1D818EFE4();
  if (result)
  {
    v2 = result;
    type metadata accessor for CommandCenter();
    swift_allocObject();
    return sub_1D7E15630(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E15CEC()
{
  type metadata accessor for CommandStateObserverStore();
  swift_allocObject();
  return sub_1D7E15D24();
}

uint64_t sub_1D7E15D24()
{
  sub_1D7E11B08();
  *(v0 + 16) = sub_1D8190D94();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  OUTLINED_FUNCTION_1_107(v2, v3, v4, v5, *MEMORY[0x1E69DDAD8]);

  v6 = [v1 defaultCenter];
  OUTLINED_FUNCTION_1_107(v6, v7, v8, v9, *MEMORY[0x1E69DE348]);

  return v0;
}

void sub_1D7E15E18()
{
  if (!qword_1EDBB3370)
  {
    type metadata accessor for CommandExecutionObserver();
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3370);
    }
  }
}

uint64_t sub_1D7E15E90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return swift_endAccess();
  }

  v6 = sub_1D7E11428(a1, a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();
  result = sub_1D7E36AB8(v8);
  if (result)
  {
    v10 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D8190DB4();
      for (i = 0; i != v10; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA714420](i, v8);
        }

        else
        {
          v12 = *(v8 + 8 * i + 32);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v13 = *(v12 + 16);

          v13(v14);
        }
      }
    }
  }

  return result;
}

uint64_t StateCommand.init(_:type:loggingBehavior:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v4 = *a4;
  v7 = *a3;
  v6 = v4;
  return Command.init(_:type:loggingBehavior:)(a1, a2, &v7, &v6);
}

void CommandCenter.register<A, B, C>(handler:for:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_33_18();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_20_42();
  *v1 = sub_1D8191AB4();
  v4 = OUTLINED_FUNCTION_5_81();
  v5(v4);
  sub_1D8190CA4();
  v6 = OUTLINED_FUNCTION_7_75();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for Command.LoggingBehavior();
  if (sub_1D7E13510())
  {
    if (qword_1EDBBCFC0 == -1)
    {
LABEL_4:
      v8 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_15_17();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D819FAB0;
      v15 = *(v0 + 16);
      v14 = *(v0 + 24);
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1D7E13BF4();
      *(v13 + 32) = v15;
      *(v13 + 40) = v14;
      sub_1D8190DB4();
      sub_1D81919E4();
      OUTLINED_FUNCTION_21_34();
      sub_1D818FD44();

      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_1_162();
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  v16 = OUTLINED_FUNCTION_38_16();
  v20 = sub_1D7E151C0(v16, v17, v18, v19);
  sub_1D7E143B8(v20, v0);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E16258()
{
  type metadata accessor for BlueprintPrewarmState.State();
  sub_1D818F564();
  return sub_1D818F504();
}

uint64_t sub_1D7E162B0()
{

  sub_1D7E166A0(v0 + 64);
  return v0;
}

void CommandCenter.registerHandler<A>(for:handle:canHandle:)()
{
  OUTLINED_FUNCTION_120();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_23();
  v11 = v10;
  v12 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = (v17 - v16);
  sub_1D7E11E0C();
  *v18 = sub_1D8191AB4();
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v12);
  v19 = sub_1D8190CA4();
  (*(v14 + 8))(v18, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v11 + 88);
  type metadata accessor for Command.LoggingBehavior();
  if (sub_1D7E13510())
  {
    if (qword_1EDBBCFC0 == -1)
    {
LABEL_4:
      v20 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_15_17();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D819FAB0;
      v26 = *(v7 + 16);
      v27 = *(v7 + 24);
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1D7E13BF4();
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;
      sub_1D8190DB4();
      sub_1D81919E4();
      OUTLINED_FUNCTION_21_34();
      sub_1D818FD44();

      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_1_162();
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_0_8();
  v28 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_21_0();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v7;
  v29[4] = v36;
  v29[5] = v5;
  OUTLINED_FUNCTION_1_63();
  v30 = swift_allocObject();
  v30[2] = v11;
  v30[3] = v3;
  v30[4] = v37;
  v31 = type metadata accessor for CommandHandlerWrapper();
  OUTLINED_FUNCTION_15_17();
  swift_allocObject();

  sub_1D7E19F24(v3);

  v32 = sub_1D7E14058();
  sub_1D7E143B8(v32, v7);
  *(v9 + 24) = v31;
  OUTLINED_FUNCTION_8_57();
  v35 = sub_1D7E18B74(v33, v34);
  OUTLINED_FUNCTION_34_18(v35);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E1662C()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D7E16668()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E166DC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_0_127();
  v0 = swift_allocObject();
  sub_1D7E1868C();
  return v0;
}

uint64_t sub_1D7E16730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_beginAccess();
  v6 = sub_1D7E18740(v4, v5, *(v2 + 16));
  swift_endAccess();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v7 = v6;
  }

  v11 = v7;

  MEMORY[0x1DA713500](v8);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D81913B4();
  }

  sub_1D8191404();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  sub_1D7E187AC();
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1D7E16854()
{
  sub_1D7E1A78C();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x80000001D81D89C0;
  *(result + 32) = 0;
  qword_1EDBBC938 = result;
  return result;
}

uint64_t sub_1D7E168AC()
{
  sub_1D7E1A78C();
  result = swift_allocObject();
  strcpy((result + 16), "teaui.new_tab");
  *(result + 30) = -4864;
  *(result + 32) = 0;
  qword_1EDBBC950 = result;
  return result;
}

uint64_t sub_1D7E16904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ToolbarManager.init(commandCenter:lazyTemplate:)()
{
  OUTLINED_FUNCTION_0_69();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager__toolbarEnabled] = 1;
  v5 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_configurations;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v5] = sub_1D8190D94();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_queuedUpdates] = v6;
  v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_dispatchedRebuild] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_lazyTemplate] = v0;
  v7 = &v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_commandCenter];
  *v7 = v3;
  v7[1] = v2;
  v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled] = 1;
  v1[OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible] = 1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:defaultWindowSize:shouldHideMainView:)(UIWindow *window, Swift::Bool shouldOnboard, Swift::Bool shouldCollapseSidebar, CGSize_optional defaultWindowSize, Swift::Bool shouldHideMainView)
{
  v7 = v6;
  v8 = v5;
  LODWORD(v41) = shouldOnboard;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v44 = v12;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v42 = v16;
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldCollapseSidebar) = shouldCollapseSidebar;
  v19 = OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup;
  dispatch_group_enter(*(v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup));
  v20 = [objc_opt_self() systemBackgroundColor];
  [(UIWindow *)window setBackgroundColor:v20];

  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_mainViewControllerFactory), *(v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_mainViewControllerFactory + 24));
  v21 = OUTLINED_FUNCTION_4_1();
  v23 = v22(v21);
  v24 = v23;
  HIDWORD(v41) = v8;
  if (v8)
  {
    v25 = [v23 view];
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;
    [v25 setHidden_];
  }

  if (v41)
  {
    dispatch_group_enter(*(v6 + v19));
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewControllerFactory), *(v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewControllerFactory + 24));
    v27 = OUTLINED_FUNCTION_4_1();
    v29 = v28(v27);
    v30 = *(v6 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldHideToolbar);
    objc_allocWithZone(type metadata accessor for BootstrapperViewController());
    v31 = sub_1D7FF9BE8(v29, v24, v30);
    [(UIWindow *)window setRootViewController:v31];
  }

  else
  {
    [(UIWindow *)window setRootViewController:v24];
  }

  [(UIWindow *)window makeKeyAndVisible];
  v32 = *(v7 + v19);
  sub_1D7E11E0C();
  v33 = v32;
  v34 = sub_1D8191AB4();
  v35 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v36 = swift_allocObject();
  *(v36 + 16) = BYTE4(v41) & 1;
  *(v36 + 24) = v35;
  *(v36 + 32) = v24;
  *(v36 + 40) = window;
  aBlock[4] = sub_1D7E64984;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_44;
  v37 = _Block_copy(aBlock);
  v38 = v24;

  v39 = window;
  sub_1D8190BF4();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  v40 = v45;
  sub_1D8192004();
  sub_1D8191A54();
  _Block_release(v37);

  (*(v44 + 8))(v14, v40);
  (*(v42 + 8))(v18, v43);
}

uint64_t sub_1D7E16EF0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E16F28()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E16F70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() sharedApplication];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E062C4(0, qword_1EDBBDC38);
  result = sub_1D818EFE4();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7E0631C(0, &qword_1EDBBA418);
    result = sub_1D818EFF4();
    if (v10)
    {
      v8 = 1;
      v7 = type metadata accessor for App();
      swift_allocObject();
      result = App.init(application:monitor:sceneProvider:environment:)(v4, v6, &v9, &v8);
      a2[3] = v7;
      a2[4] = &protocol witness table for App;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D7E170CC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = objc_allocWithZone(a2(0));

  return [v2 init];
}

id AppMonitor.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___TSAppMonitor_isActive] = 1;
  v0[OBJC_IVAR___TSAppMonitor_isTracking] = 1;
  v2 = &v0[OBJC_IVAR___TSAppMonitor_onWindowDidBecomeBackgroundBlock];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___TSAppMonitor_onWindowWillBecomeForegroundBlock];
  *v3 = 0;
  v3[1] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t App.init(application:monitor:sceneProvider:environment:)(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v5 = *a4;
  *(v4 + 64) = a1;
  *(v4 + 16) = a2;
  sub_1D7E05450(a3, v4 + 24);
  *(v4 + 72) = v5;
  return v4;
}

id sub_1D7E17254(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[*a1];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D7E172AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E0631C(0, &qword_1EDBBD1D0);
  result = sub_1D818EFF4();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v6, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PresentationOperationManager.init(bootstrapper:launchPresentationConfigurationProvider:dataStore:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  OUTLINED_FUNCTION_1_69(a1, &unk_1EDBBC4E8, &type metadata for PresentationProcessingStatus);
  swift_allocObject();
  v7 = sub_1D818F144();
  OUTLINED_FUNCTION_9_19(v7, MEMORY[0x1E69E7CC8]);
  OUTLINED_FUNCTION_10_29(v8);
  swift_allocObject();
  *(v3 + 224) = KeyboardObserver.init()();
  *(v3 + 232) = 1;
  *(v3 + 24) = a1;
  sub_1D7E05450(a2, v3 + 96);
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0;
  sub_1D7E05450(a3, v3 + 136);
  *(v3 + 56) = 0;
  return v3;
}

unint64_t sub_1D7E1746C()
{
  result = qword_1EDBB1308[0];
  if (!qword_1EDBB1308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB1308);
  }

  return result;
}

unint64_t sub_1D7E174C4()
{
  result = qword_1EDBB1300;
  if (!qword_1EDBB1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1300);
  }

  return result;
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

uint64_t PresentationOperationManager.addLaunchPresentationHandler(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  sub_1D7E0E768(a1, v5);
  swift_beginAccess();
  sub_1D7E17640();
  return swift_endAccess();
}

uint64_t sub_1D7E17640()
{
  OUTLINED_FUNCTION_51_0();
  if (*(v1 + 24))
  {
    sub_1D7E176EC(v1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_0();
    sub_1D7E17A4C(v2, v3, v4);

    *v0 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_82_0(v1);
    v6 = OUTLINED_FUNCTION_49();
    sub_1D7F03E9C(v6, v7, v8);

    return OUTLINED_FUNCTION_82_0(v10);
  }

  return result;
}

__n128 *sub_1D7E176EC(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  a2[2].n128_u64[0] = *(a1 + 32);
  return OUTLINED_FUNCTION_142(v2, v3, a1, a2);
}

id OUTLINED_FUNCTION_50_2()
{
  v3 = *(v0 + 680);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  *(v3 - 176) = *(v3 - 384);
  *(v3 - 168) = v2;
  *(v3 - 160) = v1;
  *(v3 - 152) = v0;
  return 0;
}

void OUTLINED_FUNCTION_37_0()
{

  Blueprint.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_1D8190DB4();
}

uint64_t OUTLINED_FUNCTION_50_8()
{
  *(v2 - 232) = v1;
  *(v2 - 256) = v0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t OUTLINED_FUNCTION_50_10()
{
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return sub_1D8192334();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return sub_1D7EB8AA0();
}

uint64_t OUTLINED_FUNCTION_39_4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13)
{
  a13 = a1 ^ 1;

  return sub_1D7F6CD48(&a13, 0);
}

void *OUTLINED_FUNCTION_39_7()
{
  sub_1D7E05450((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
}

uint64_t OUTLINED_FUNCTION_39_11()
{
}

uint64_t OUTLINED_FUNCTION_39_14(uint64_t result)
{
  v3 = *(v2 - 112);
  *(result + 16) = v1;
  *(result + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_18()
{

  return type metadata accessor for BlueprintSection();
}

__n128 *sub_1D7E17A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D7E11428(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7E17BB8(0, qword_1EDBB2E10);
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D7E11428(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (*(v15 + 56) + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    return sub_1D7E176EC(a1, v16);
  }

  else
  {
    sub_1D7E17C6C(v11, a2, a3, a1, v15);

    return sub_1D8190DB4();
  }
}

void sub_1D7E17BB8(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v6(v3, v4, v5);
    v7 = sub_1D8192394();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

void sub_1D7E17C20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  v9(v8, *(v7 + 56) + 40 * v6);
  OUTLINED_FUNCTION_7_22();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v10;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t PresentationOperationManager.disablePresentationProcessing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1D7E17CEC(__int128 *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TipManager();
  result = sub_1D818EFE4();
  if (result)
  {
    *(result + 48) = v3;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PresentationOperationManager.applicationDidFinishLaunching(withOptions:)(Swift::OpaquePointer_optional withOptions)
{
  if (qword_1EDBBC3C8 != -1)
  {
    OUTLINED_FUNCTION_2_62();
  }

  v1 = sub_1D818FE34();
  __swift_project_value_buffer(v1, qword_1EDBC6120);
  v2 = sub_1D818FE14();
  v3 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_4_39(v3))
  {
    *OUTLINED_FUNCTION_8_26() = 0;
    OUTLINED_FUNCTION_3_57(&dword_1D7DFF000, v4, v5, "Presentation Operation Manager detected application launch.");
    OUTLINED_FUNCTION_38();
  }

  sub_1D7E17F64();
}

uint64_t sub_1D7E17E4C()
{
  v0 = sub_1D818FE34();
  __swift_allocate_value_buffer(v0, qword_1EDBC6120);
  __swift_project_value_buffer(v0, qword_1EDBC6120);
  OUTLINED_FUNCTION_1_59();
  return sub_1D818FE24();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
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

void sub_1D7E17F64()
{

  v1 = sub_1D818EE74();
  Bootstrapper.afterBootstrap(on:run:)(v1, sub_1D7E64ADC, v0);
}

uint64_t Bootstrapper.afterBootstrap(on:run:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = MEMORY[0x1DA7113D0](v5);

  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;

    sub_1D818FAC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E180B0()
{

  return swift_deallocObject();
}

id WindowScene.init(session:connectionOptions:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WindowScene();
  v5 = objc_msgSendSuper2(&v7, sel_initWithSession_connectionOptions_, a1, a2);

  return v5;
}

uint64_t sub_1D7E1826C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CommandCenter.addExecuteObserver<A>(for:closure:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_23();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_20_42();
  *v2 = sub_1D8191AB4();
  v5 = OUTLINED_FUNCTION_5_81();
  v6(v5);
  sub_1D8190CA4();
  v7 = OUTLINED_FUNCTION_7_75();
  v8(v7);
  if (v4)
  {
    v9 = type metadata accessor for CommandExecutionObserver();

    v10 = sub_1D7E166DC();
    sub_1D7E16730(v10, v1);
    *(v0 + 24) = v9;
    OUTLINED_FUNCTION_10_58();
    v13 = sub_1D7E18B74(v11, v12);
    OUTLINED_FUNCTION_34_18(v13);
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_1D8192374();
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_1D8190EE4();
}

void OUTLINED_FUNCTION_29_10(uint64_t a1@<X8>)
{
  *(a1 - 33) = *(v1 + 15);
  *(a1 - 16) = v2;
  *(a1 - 24) = v1[3];
  *(a1 - 7) = v2;
  *(a1 - 15) = *(v1 + 33);
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1D7E0E768(va, v5 + v6);
}

uint64_t OUTLINED_FUNCTION_29_13()
{

  return sub_1D818F824();
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D805F144(&a9, v9, v11, v10, a5);
}

uint64_t OUTLINED_FUNCTION_29_15()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_29_20()
{

  return sub_1D80CCCB8(v0);
}

id OUTLINED_FUNCTION_29_22(double a1, double a2, uint64_t a3, const char *a4)
{

  return [v4 a4];
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return sub_1D8191E84();
}

id OUTLINED_FUNCTION_29_24()
{

  return [v0 (v1 + 3509)];
}

uint64_t sub_1D7E1868C()
{
  OUTLINED_FUNCTION_2_7();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v3;
  v4[4] = v2;
  *(v1 + 16) = sub_1D80A58F8;
  *(v1 + 24) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D7E18710()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t sub_1D7E1875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  OUTLINED_FUNCTION_3_19(v4);
  return sub_1D8190DB4();
}

uint64_t sub_1D7E187D8()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_27_2(v9, v7);
  sub_1D7E11428(v11, v12);
  OUTLINED_FUNCTION_4_10();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  v4(0);
  if (OUTLINED_FUNCTION_114())
  {
    sub_1D7E11428(v8, v6);
    OUTLINED_FUNCTION_122();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  if (v17)
  {
    *(*(*v0 + 56) + 8 * v16) = v10;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_131();
    v2(v22);
    OUTLINED_FUNCTION_100();

    return sub_1D8190DB4();
  }
}

void sub_1D7E188DC(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v8 = v7(v6);
    v9 = v5(v3, v8);
    if (!v10)
    {
      atomic_store(v9, v2);
    }
  }
}

void sub_1D7E18938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E1898C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    v6 = OUTLINED_FUNCTION_35();
    v7(v6);
    v8 = OUTLINED_FUNCTION_17_7();
    v9 = a4(v8);
    if (!v10)
    {
      atomic_store(v9, v4);
    }
  }
}

void sub_1D7E189E8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v8 = v7(v6);
    v9 = v5(v3, v8);
    if (!v10)
    {
      atomic_store(v9, v2);
    }
  }
}

void sub_1D7E18A44()
{
  if (!qword_1EDBB2DD8)
  {
    sub_1D7E188DC(255, &qword_1EDBB3370);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DD8);
    }
  }
}

uint64_t sub_1D7E18ADC(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t), SEL *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_1D818EFE4();
  if (result)
  {
    v9 = OUTLINED_FUNCTION_113();
    v10 = [objc_allocWithZone(a3(v9)) *a4];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E18B74(unint64_t *a1, void (*a2)(uint64_t))
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

void CommandCenter.addExecuteObserver<A, B>(for:closure:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_23();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_20_42();
  *v4 = sub_1D8191AB4();
  v7 = OUTLINED_FUNCTION_5_81();
  v8(v7);
  sub_1D8190CA4();
  v9 = OUTLINED_FUNCTION_7_75();
  v10(v9);
  if (v6)
  {
    v11 = type metadata accessor for CommandExecutionObserver();
    OUTLINED_FUNCTION_0_8();
    v12 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_21_0();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v1;
    v13[4] = v3;
    v13[5] = v2;

    v14 = sub_1D7E166DC();
    sub_1D7E16730(v14, v1);
    *(v0 + 24) = v11;
    OUTLINED_FUNCTION_10_58();
    v17 = sub_1D7E18B74(v15, v16);
    OUTLINED_FUNCTION_34_18(v17);
    OUTLINED_FUNCTION_100();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D7E18DB8()
{
  result = qword_1EDBB3200;
  if (!qword_1EDBB3200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3200);
  }

  return result;
}

id DebugWindow.init(windowScene:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_10_5(OBJC_IVAR___TUDebugWindow_debugDelegate);
  v1[OBJC_IVAR___TUDebugWindow_isAllowed] = 0;
  v1[OBJC_IVAR___TUDebugWindow_isPresenting] = 0;
  v3 = OBJC_IVAR___TUDebugWindow__observableRootViewController;
  v7 = 0;
  sub_1D7E19330();
  swift_allocObject();
  *&v1[v3] = sub_1D818F514();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithWindowScene_, v0);
  sub_1D7E19560();

  return v4;
}

void *OUTLINED_FUNCTION_17_8()
{
  v2 = *(v0 - 224);

  return __swift_project_boxed_opaque_existential_1((v0 - 248), v2);
}

void *OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;

  return __swift_project_boxed_opaque_existential_1(&a16, v20);
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t a1, uint64_t a2)
{
  *(v3 - 160) = a2;
  *(v3 - 152) = a1;
  return v2;
}

id OUTLINED_FUNCTION_17_22()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_17_24(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{

  sub_1D7E5951C(0, a3, a4);
}

void OUTLINED_FUNCTION_17_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  SelectionBehavior.style.getter(va);
}

uint64_t OUTLINED_FUNCTION_17_30(unint64_t *a1)
{

  return sub_1D80B7AC8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return sub_1D80CCCB8(v0);
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return sub_1D8190C74();
}

void OUTLINED_FUNCTION_17_35(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6F90];

  sub_1D7E32900(0, a2, a3, a4, v5);
}

id OUTLINED_FUNCTION_17_36()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_17_39()
{

  return swift_getObjectType();
}

uint64_t sub_1D7E192E4(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

void sub_1D7E19330()
{
  if (!qword_1EDBBC478)
  {
    sub_1D7E192B0(255);
    v0 = sub_1D818F564();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC478);
    }
  }
}

void sub_1D7E19388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E193EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7E19450()
{
  OUTLINED_FUNCTION_1_32();
  sub_1D7E19388(0, v0, v1, type metadata accessor for Command);
  swift_allocObject();
  result = sub_1D7E1987C(0xD000000000000010, 0x80000001D81C8510, 0, 0);
  qword_1EDBBC910 = result;
  return result;
}

unint64_t sub_1D7E194D0()
{
  result = qword_1EDBB31B0;
  if (!qword_1EDBB31B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB31B0);
  }

  return result;
}

uint64_t type metadata accessor for CopyCommandContext()
{
  result = qword_1EDBBCF28;
  if (!qword_1EDBBCF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7E19560()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1D8181A8C;
  v9[5] = v1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E64940;
  v9[3] = &block_descriptor_20_4;
  v2 = _Block_copy(v9);

  [v0 ts:v2 installDebugMenuHandler:?];
  _Block_release(v2);
  UIWindow.registerKeyWindowSceneNotification()();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:sel_onDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:sel_onWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  v6 = [v3 defaultCenter];
  [v6 addObserver:v0 selector:sel_onDidBecomeActive name:*MEMORY[0x1E69DE338] object:0];

  v7 = [v3 defaultCenter];
  [v7 addObserver:v0 selector:sel_onWillResignActive name:*MEMORY[0x1E69DE358] object:0];

  v8 = [v3 defaultCenter];
  [v8 addObserver:v0 selector:sel_onWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
}

uint64_t sub_1D7E197A0()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

void sub_1D7E197D4()
{
  sub_1D7E19388(319, &qword_1EDBBD088, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D7E19880(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  *(v4 + 33) = a4 & 1;
  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}