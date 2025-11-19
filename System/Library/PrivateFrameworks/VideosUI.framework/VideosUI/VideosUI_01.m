uint64_t OUTLINED_FUNCTION_51_5(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

id OUTLINED_FUNCTION_51_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v6 - 128) = a2;
  *(v6 - 120) = a1;
  *(v6 - 140) = a3;
  *(v6 - 136) = a4;
  v8 = *(v5 + 512);

  return [v4 v8];
}

BOOL OUTLINED_FUNCTION_51_11()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_51_12()
{
}

void OUTLINED_FUNCTION_117(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  ViewModelKeys.rawValue.getter(7);
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_51_16()
{

  return [v0 (v3 + 2305)];
}

uint64_t OUTLINED_FUNCTION_51_18()
{

  return sub_1E4203EE4();
}

void OUTLINED_FUNCTION_51_19(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_51_20()
{

  return sub_1E37DABC0(v0, v1 - 288);
}

id OUTLINED_FUNCTION_51_21()
{

  return [v0 (v1 + 589)];
}

uint64_t OUTLINED_FUNCTION_51_25(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_51_26()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_51_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{

  return sub_1E38DCD14(a7, a13);
}

uint64_t OUTLINED_FUNCTION_51_41()
{

  return sub_1E4201F44();
}

void OUTLINED_FUNCTION_51_42(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_51_44()
{

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_51_45()
{

  JUMPOUT(0x1E69109E0);
}

BOOL OUTLINED_FUNCTION_51_51@<W0>(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  v5 = *(v2 + a1);
  v6 = *(v2 + a1 + 8);
  v7 = v1 + a1;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v4 + 16);

  return static SportsAccessibilityIdentifier.Key.__derived_enum_equals(_:_:)(v5, v6, v11, v8, v9, v10);
}

BOOL OUTLINED_FUNCTION_51_53()
{

  return os_log_type_enabled(v1, v0);
}

__n128 OUTLINED_FUNCTION_51_55(__n128 *a1)
{
  result = v1[3];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_58(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1E327F454(v1 + v2, va);
}

uint64_t sub_1E325F050()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = *sub_1E325F0F0();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E325F190();
}

uint64_t *sub_1E325F0F0()
{
  if (qword_1EE2A3F30 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB150;
}

uint64_t sub_1E325F140()
{
  type metadata accessor for NetworkLauncher();
  result = swift_initStaticObject();
  qword_1EE2AB150 = result;
  return result;
}

uint64_t sub_1E325F190()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  v1[3] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FE414();
  v1[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_107_1();
  v1[7] = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  v1[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_107_1();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_1E41FFBF4();
  v1[14] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_86_0();
  v9 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_81_4(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_81_5()
{

  return sub_1E41FFCB4();
}

uint64_t OUTLINED_FUNCTION_112_0()
{
}

void OUTLINED_FUNCTION_81_9()
{
  *(v0 + 216) = v1;
  *(v0 + 224) = v2;
  *(v0 + 232) = *(v0 + 156);

  JUMPOUT(0x1E690E3F0);
}

BOOL OUTLINED_FUNCTION_81_10()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_81_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_81_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, v5, 0xD00000000000005CLL, v6 | 0x8000000000000000, a5);
}

double OUTLINED_FUNCTION_81_18()
{
  result = 0.0;
  *(v0 + 177) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 200) = 0x4024000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_20()
{
  *(v3 + v1) = v4;
  *(v3 + *(v2 + 40)) = v0;

  return sub_1E42012B4();
}

uint64_t OUTLINED_FUNCTION_81_21(unint64_t *a1)
{

  return sub_1E328FCF4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_81_22()
{

  return sub_1E4200EF4();
}

uint64_t OUTLINED_FUNCTION_81_23()
{
}

uint64_t OUTLINED_FUNCTION_81_24(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_81_25()
{

  return sub_1E4200664();
}

id OUTLINED_FUNCTION_81_27()
{
  v3 = *(v1 + 2440);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_81_29()
{
  *(v0 - 120) = 0;

  return sub_1E4200634();
}

uint64_t sub_1E325F69C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1E325F6F0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E325F748(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E325F7A8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E325F7FC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_37_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E325F858(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t result)
{
  *(v1 + 320) = v2;
  *(v1 + 328) = result;
  return result;
}

void OUTLINED_FUNCTION_9_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_9_25()
{
}

id OUTLINED_FUNCTION_9_27()
{

  return [v0 v3];
}

id OUTLINED_FUNCTION_9_28(void *a1)
{

  return [a1 addObserver:v1 selector:v3 name:v2 object:0];
}

void OUTLINED_FUNCTION_9_29(_OWORD *a1@<X8>)
{
  v2 = a1[1];
  *&STACK[0x270] = *a1;
  *&STACK[0x280] = v2;
  LOBYTE(STACK[0x290]) = 0;

  type metadata accessor for UIEdgeInsets();
}

uint64_t OUTLINED_FUNCTION_9_31(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);

  return sub_1E38D2054(va, va1);
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_9_38()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_40()
{

  return sub_1E41FE2E4();
}

BOOL OUTLINED_FUNCTION_9_42()
{
  v7 = *(v5 - 176);
  *(v7 + 16) = v1;
  v8 = (v7 + 24 * v2);
  v8[4] = v3;
  v8[5] = v0;
  v8[6] = v4;

  return sub_1E3277398((v5 - 168), v3, v0);
}

uint64_t OUTLINED_FUNCTION_9_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return sub_1E4206324();
}

uint64_t OUTLINED_FUNCTION_9_48()
{

  return swift_once();
}

id OUTLINED_FUNCTION_9_49(void *a1)
{

  return [a1 (v1 + 1408)];
}

uint64_t OUTLINED_FUNCTION_9_50()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_53()
{
  v0 = STACK[0x248];
  STACK[0x210] = STACK[0x240];
  LOBYTE(STACK[0x218]) = v0;
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_59()
{

  return sub_1E39C4734(v0, v1 - 216);
}

uint64_t OUTLINED_FUNCTION_11_18@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_9_63(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6970](v3 - 96, a2, a2, v2, v2);
}

uint64_t OUTLINED_FUNCTION_9_64()
{
}

void OUTLINED_FUNCTION_9_66(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
}

id OUTLINED_FUNCTION_9_69()
{

  return [v0 (v1 + 3832)];
}

void OUTLINED_FUNCTION_9_71(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_9_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x2C8], 0xE9uLL);
}

id OUTLINED_FUNCTION_9_77(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_9_78(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_9_80()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_81()
{
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  *(v0 + 40) = *(v0 + 168);
  *(v0 + 48) = v4;
  v5 = *(v0 + 176);
  *(v1 - 104) = v3;
  *(v0 + 416) = *(v0 + 160);
  *(v0 + 28) = v5;
  *(v0 + 432) = v5;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_93(uint64_t result)
{
  *(result + 16) = sub_1E3BA20B8;
  *(result + 24) = v1;
  return result;
}

double OUTLINED_FUNCTION_9_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_1E3277E60(a1, a2, v15, &a15);
}

void *OUTLINED_FUNCTION_9_97(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, (v18 - 152), 0x59uLL);
}

__n128 OUTLINED_FUNCTION_9_99(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, unint64_t a12)
{
  result = a11;
  *v12 = a11;
  v12[1].n128_u64[0] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_101()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_102()
{

  return sub_1E4200BC4();
}

void *OUTLINED_FUNCTION_9_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x2E0], 0xE9uLL);
}

BOOL OUTLINED_FUNCTION_9_105()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v1;
  v10 = v3;
  v11 = v2;
  v12 = v4;

  return CGRectEqualToRect(*&v9, *&v5);
}

unint64_t OUTLINED_FUNCTION_9_107(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_1E3270FC8(v6, v5, va);
}

void OUTLINED_FUNCTION_11_19(double a1, double a2, double a3, double a4)
{
  *&STACK[0x260] = a1;
  *&STACK[0x268] = a2;
  *&STACK[0x270] = a3;
  *&STACK[0x278] = a4;
  LOBYTE(STACK[0x280]) = 0;
}

uint64_t OUTLINED_FUNCTION_9_108()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_110()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_9_111()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_9_112()
{

  JUMPOUT(0x1E6910920);
}

void OUTLINED_FUNCTION_9_113(double a1, double a2, double a3, double a4)
{
  *&STACK[0x250] = a1;
  *&STACK[0x258] = a2;
  *&STACK[0x260] = a3;
  *&STACK[0x268] = a4;
  LOBYTE(STACK[0x270]) = 0;
}

__n128 OUTLINED_FUNCTION_9_114(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_9_118()
{
  v3 = v2 + v0;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_9_120()
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_9_122()
{

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_9_123()
{
  v3 = *(v1 + 512);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_13_16()
{
}

uint64_t OUTLINED_FUNCTION_9_125()
{

  return swift_once();
}

id OUTLINED_FUNCTION_26_9()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

void OUTLINED_FUNCTION_9_126()
{

  sub_1E3D82108(v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_9_127()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_133()
{
  v2 = STACK[0x328];
  STACK[0x2F0] = STACK[0x320];
  LOBYTE(STACK[0x2F8]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_9_137()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_9_138()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_145()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_147()
{

  return sub_1E4206174();
}

uint64_t OUTLINED_FUNCTION_9_148()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_9_149()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_9_151(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_153()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_156()
{
  v0 = STACK[0x3A8];
  STACK[0x370] = STACK[0x3A0];
  LOBYTE(STACK[0x378]) = v0;
}

uint64_t OUTLINED_FUNCTION_9_158()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_9_161(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_9_162()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_9_166(uint64_t result)
{
  *(v1 + v3) = result;
  *(v1 + v2[10]) = 0;
  *(v1 + v2[11]) = 0;
  v4 = (v1 + v2[12]);
  *v4 = 0x6F6973726556736ALL;
  v4[1] = 0xE90000000000006ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_167()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_9_170()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_172(double a1, double a2, double a3, double a4)
{
  *&STACK[0x270] = a1;
  *&STACK[0x278] = a2;
  *&STACK[0x280] = a3;
  *&STACK[0x288] = a4;
  LOBYTE(STACK[0x290]) = 0;
}

uint64_t OUTLINED_FUNCTION_9_173()
{
  v1 = STACK[0x260];
  v2 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v1;
  return v0;
}

id OUTLINED_FUNCTION_9_175(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v13, v12, v11, v10);
}

unint64_t OUTLINED_FUNCTION_9_176(uint64_t a1)
{

  return sub_1E3743478(a1);
}

uint64_t OUTLINED_FUNCTION_9_184()
{
}

uint64_t OUTLINED_FUNCTION_9_185()
{

  return sub_1E4204824();
}

uint64_t OUTLINED_FUNCTION_9_186()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_188()
{

  return sub_1E37C5830(v0 + 712, v0 + 1408, v1);
}

id OUTLINED_FUNCTION_9_189(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_9_191(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = *(v3 + 16);
  v2[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

void OUTLINED_FUNCTION_9_192(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_194()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_196()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_197()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_199(unint64_t *a1)
{

  return sub_1E412316C(a1);
}

_OWORD *OUTLINED_FUNCTION_9_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_1E32A87C0(&a21, v21, v22);
}

uint64_t OUTLINED_FUNCTION_9_201()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_9_205()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_9_209()
{

  return sub_1E4201E64();
}

uint64_t OUTLINED_FUNCTION_9_214()
{
  sub_1E329504C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_10_26(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6)
{
  LODWORD(a4) = 1132068864;
  LODWORD(a3) = v9;

  return [v6 a6];
}

uint64_t OUTLINED_FUNCTION_10_28()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1E328438C(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_38()
{

  return sub_1E4203B34();
}

uint64_t OUTLINED_FUNCTION_10_42()
{

  return sub_1E4206324();
}

uint64_t OUTLINED_FUNCTION_10_46(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

void OUTLINED_FUNCTION_10_47()
{
  v0 = STACK[0x2A8];
  STACK[0x270] = STACK[0x2A0];
  LOBYTE(STACK[0x278]) = v0;
}

uint64_t OUTLINED_FUNCTION_10_48(uint64_t a1, uint64_t a2)
{

  return sub_1E37E93E8(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_10_50()
{

  return sub_1E3953554(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_54()
{

  return sub_1E4201F44();
}

id OUTLINED_FUNCTION_10_55()
{
  *(v3 + 4) = v1;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  *v0 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_10_59()
{

  return sub_1E42071F4();
}

_OWORD *OUTLINED_FUNCTION_10_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1E32A87C0(&a65, v65, v66);
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return sub_1E4206254();
}

unint64_t OUTLINED_FUNCTION_10_63(uint64_t a1, uint64_t a2)
{
  *(v2 - 264) = a1;
  *(v2 - 256) = a2;

  return sub_1E32822E0();
}

uint64_t OUTLINED_FUNCTION_10_65()
{
}

uint64_t OUTLINED_FUNCTION_10_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_10_69()
{
  v3 = STACK[0x250];
  v4 = v1[16];
  v1[12] = v1[15];
  v1[13] = v4;
  LOBYTE(STACK[0x220]) = v3;

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_10_70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

uint64_t OUTLINED_FUNCTION_10_71()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_10_73()
{
}

void OUTLINED_FUNCTION_57_1()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

void OUTLINED_FUNCTION_10_75()
{

  min<A>(_:_:)();
}

id OUTLINED_FUNCTION_10_76()
{

  return [v1 (v0 + 589)];
}

uint64_t OUTLINED_FUNCTION_10_79(__n128 a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a3;
  *&STACK[0x208] = a4;
  LOBYTE(STACK[0x210]) = 0;
  a1.n128_u64[0] = 5.0;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

id OUTLINED_FUNCTION_10_81()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_10_83()
{

  return [v0 (v1 + 589)];
}

uint64_t OUTLINED_FUNCTION_10_84(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_10_85()
{
  *(v2 + *(v1 + 20)) = v0;

  JUMPOUT(0x1E690DE70);
}

uint64_t OUTLINED_FUNCTION_10_90()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_10_91()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_10_92(void (*a1)(uint64_t))
{

  return sub_1E4148DE0(a1);
}

uint64_t OUTLINED_FUNCTION_10_94()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_101()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_10_103()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_10_106()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 OUTLINED_FUNCTION_55_5()
{
  v0 = STACK[0x2D0];
  result = *&STACK[0x2B0];
  v2 = *&STACK[0x2C0];
  *&STACK[0x280] = *&STACK[0x2B0];
  *&STACK[0x290] = v2;
  LOBYTE(STACK[0x2A0]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_109()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_10_112()
{
  v3 = v2 + v0;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_10_115@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_10_121()
{

  return sub_1E379D7E4(v0 + 192, v0 + 1088, v1);
}

double OUTLINED_FUNCTION_10_124(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{

  return sub_1E3952BE0(v17, a15, v18, v16);
}

uint64_t OUTLINED_FUNCTION_10_126()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_10_133(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695C070];

  sub_1E3DF8F50(319, a2, a3, v4);
}

id OUTLINED_FUNCTION_10_134()
{

  return [v0 (v1 + 416)];
}

void OUTLINED_FUNCTION_10_136(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_10_137()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_139(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_140()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_141()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 OUTLINED_FUNCTION_10_143(__n128 *a1)
{
  result = v1[5];
  a1[1] = result;
  return result;
}

id OUTLINED_FUNCTION_10_144()
{

  return [v0 (v1 + 3704)];
}

uint64_t OUTLINED_FUNCTION_10_146()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_149()
{
  STACK[0x268] = v0;
  LOBYTE(STACK[0x270]) = 0;
  STACK[0x240] = v0;
  LOBYTE(STACK[0x248]) = 0;
}

uint64_t OUTLINED_FUNCTION_10_151()
{
}

uint64_t OUTLINED_FUNCTION_10_153()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10_156()
{
  v0 = STACK[0x4E4];
  LODWORD(STACK[0x390]) = STACK[0x4E0];
  LOWORD(STACK[0x394]) = v0;
}

uint64_t OUTLINED_FUNCTION_10_157(void *a1)
{
  *(v2 - 144) = 0;
  *(v2 - 176) = 0u;
  *(v2 - 160) = 0u;

  return sub_1E393D92C(v1, a1, v2 - 176, 0);
}

uint64_t OUTLINED_FUNCTION_10_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_10_160()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_10_162()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_10_164()
{

  return sub_1E327D33C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_165()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_10_171@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[47] = v3;
  v2[48] = a2;
  v2[44] = a1;
  v5 = v2[69];

  return __swift_mutable_project_boxed_opaque_existential_1((v2 + 66), v5);
}

uint64_t OUTLINED_FUNCTION_10_172(uint64_t a1)
{

  return sub_1E325F748(a1, v1);
}

uint64_t OUTLINED_FUNCTION_10_175()
{

  return sub_1E4205C44();
}

id OUTLINED_FUNCTION_10_176()
{

  return [v1 (v0 + 942)];
}

uint64_t OUTLINED_FUNCTION_10_177()
{

  return sub_1E40C0A8C(v0, type metadata accessor for SportsPlayPeriod);
}

uint64_t OUTLINED_FUNCTION_10_179()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_180()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return v0 - 128;
}

uint64_t OUTLINED_FUNCTION_10_182()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_10_183()
{
}

uint64_t OUTLINED_FUNCTION_10_184@<X0>(uint64_t a1@<X8>)
{
  sub_1E38C5A18(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1E4206324();
}

__n128 OUTLINED_FUNCTION_10_187(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

double OUTLINED_FUNCTION_10_188()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0;
  return result;
}

void *OUTLINED_FUNCTION_10_189@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 216), 0x58uLL);
}

void OUTLINED_FUNCTION_10_191(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
}

void OUTLINED_FUNCTION_10_192(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10_193()
{

  return sub_1E4200BC4();
}

__n128 *OUTLINED_FUNCTION_10_194(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 6517363;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1E3262204()
{
  sub_1E42013A4();
  sub_1E384005C();
  return OUTLINED_FUNCTION_1_30();
}

uint64_t sub_1E326224C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0);
  sub_1E42013A4();
  sub_1E4201F54();
  sub_1E3953E6C();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32622E4()
{
  sub_1E42013A4();
  sub_1E401A408();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_21(char a1)
{

  return sub_1E3BBD964(10, v1 & 1, v2, a1 & 1);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t result, __n128 a2)
{
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

double OUTLINED_FUNCTION_14_25()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

void OUTLINED_FUNCTION_14_27()
{
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 280);

  return sub_1E37D26AC(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_14_29@<X0>(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;

  return type metadata accessor for PlaybackStatusBackgroundView();
}

uint64_t OUTLINED_FUNCTION_30_7()
{
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_14_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 - 176), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_14_34(uint64_t a1, uint64_t a2)
{
  *(v2 - 184) = a1;
  *(v2 - 176) = a2;
  return v2 - 184;
}

void OUTLINED_FUNCTION_14_36(void *a1@<X8>)
{
  *(v2 + v1) = 0;
  *(v2 + a1[1]) = 0;
  *(v2 + a1[2]) = 0;
  *(v2 + a1[3]) = 0;
}

void *OUTLINED_FUNCTION_14_38(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x48uLL);
}

void OUTLINED_FUNCTION_14_39(uint64_t a1@<X8>)
{
  *(v2 + v1) = 0;
  v3 = v2 + *(a1 + 8);
  *v3 = 0;
  *(v3 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_14_40(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_14_42()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_14_43()
{

  JUMPOUT(0x1E6911E60);
}

id OUTLINED_FUNCTION_14_45()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

void *OUTLINED_FUNCTION_14_46@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, char a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, uint64_t a11, char a12, char a13, char a14)
{

  return sub_1E3EB9DAC(a1, a2, a3, a4, 0, 0, 1, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_48()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_51()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_52()
{
}

id OUTLINED_FUNCTION_14_57()
{

  return [v0 (v1 + 2867)];
}

__n128 OUTLINED_FUNCTION_14_58(__n128 *a1)
{
  result = *(v2 - 176);
  a1[1] = result;
  a1[2].n128_u64[0] = *(v2 - 192);
  a1[2].n128_u64[1] = v1;
  a1[3].n128_u8[0] = *(v2 - 196);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_59(char a1)
{

  return sub_1E39C29F0((v1 - 144), a1 & 1);
}

uint64_t OUTLINED_FUNCTION_14_60()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_14_64(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 128));
}

__n128 *OUTLINED_FUNCTION_14_65(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_66()
{

  return sub_1E4123590(v0, v1, v2 - 160);
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1E42063B4();
}

uint64_t OUTLINED_FUNCTION_14_67(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14_68()
{

  return sub_1E4205E84();
}

_OWORD *OUTLINED_FUNCTION_14_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E32A87C0(&a11, v11, v12);
}

uint64_t OUTLINED_FUNCTION_14_70()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_14_73()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_76()
{
  v2 = STACK[0x310];
  v3 = v0[28];
  v0[24] = v0[27];
  v0[25] = v3;
  LOBYTE(STACK[0x2E0]) = v2;

  return sub_1E3C2FC98();
}

id OUTLINED_FUNCTION_14_77()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_14_84()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_14_89()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_90()
{

  return sub_1E373E010(234, v0);
}

id OUTLINED_FUNCTION_14_91()
{

  return sub_1E39A09C0((v0 - 120));
}

uint64_t OUTLINED_FUNCTION_14_93()
{
  v0[2] = v1;
  v4 = v0[6];
  v5 = v0[5];
  v0[5] = v5;

  return sub_1E3908EB0(v1, v2, v4, v5);
}

__n128 OUTLINED_FUNCTION_14_95()
{
  v1 = STACK[0x3D0];
  result = *(v0 + 768);
  v3 = *(v0 + 784);
  *(v0 + 720) = result;
  *(v0 + 736) = v3;
  LOBYTE(STACK[0x3A0]) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_96@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v13 = *(v3 + 64);

  return sub_1E3B23794(v4, v5, v6, v7, v8, v9, v10, v11, v13);
}

uint64_t OUTLINED_FUNCTION_14_99()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_100()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_101()
{

  return sub_1E4206254();
}

id OUTLINED_FUNCTION_14_104(uint64_t a1)
{

  return [v1 (v2 + 896)];
}

uint64_t OUTLINED_FUNCTION_14_105()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_14_106()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_14_107()
{
}

id OUTLINED_FUNCTION_11_20()
{

  return [v0 (v1 + 3832)];
}

double OUTLINED_FUNCTION_14_110(uint64_t a1, uint64_t a2)
{

  return sub_1E3277E60(a1, a2, v2, (v3 - 144));
}

uint64_t OUTLINED_FUNCTION_14_111()
{
}

uint64_t OUTLINED_FUNCTION_14_113()
{

  return sub_1E3C3DE00(v0);
}

double OUTLINED_FUNCTION_14_114()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetMinY(*&v5);
}

void (*OUTLINED_FUNCTION_14_115())(void)
{

  return sub_1E3C9B998(0, 1);
}

void OUTLINED_FUNCTION_14_116()
{
  v1 = *(v0 - 816);
  *(v0 - 120) = *(v0 - 672);
  *(v0 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_14_122@<X0>(unint64_t a1@<X8>)
{
  STACK[0x260] = a1;
  LOBYTE(STACK[0x268]) = 0;

  return sub_1E3C2FC98();
}

uint64_t OUTLINED_FUNCTION_14_123()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_124()
{

  return sub_1E42079A4();
}

uint64_t *OUTLINED_FUNCTION_14_127@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = *(a1 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a9);
}

double OUTLINED_FUNCTION_14_128()
{
  result = 0.0;
  *(v0 + 1328) = 0u;
  *(v0 + 1312) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_133()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_14_136(uint64_t a1)
{
  *(v1 + 64) = a1;

  JUMPOUT(0x1E690E3F0);
}

uint64_t OUTLINED_FUNCTION_14_137()
{

  return sub_1E4203C24();
}

uint64_t OUTLINED_FUNCTION_14_139()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_141()
{

  return sub_1E4201F44();
}

void OUTLINED_FUNCTION_14_143(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

_OWORD *OUTLINED_FUNCTION_14_144()
{

  return sub_1E32A87C0((v0 + 832), v2, v1);
}

uint64_t OUTLINED_FUNCTION_14_149()
{
  STACK[0x280] = v0;
  LOBYTE(STACK[0x288]) = 0;
}

uint64_t OUTLINED_FUNCTION_14_150()
{
  *(v1 - 288) = 0u;
  *(v1 - 272) = 0u;
  *(v1 - 256) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_154()
{

  return sub_1E4205E84();
}

void OUTLINED_FUNCTION_14_155(__n128 a1)
{
  *(v1 - 119) = a1;
  *(v1 - 144) = a1;
  *(v1 - 128) = a1;
  *(v1 - 103) = 1;
}

uint64_t OUTLINED_FUNCTION_14_160()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_14_161()
{
  v0 = STACK[0x2E4];
  v1 = STACK[0x2E5];
  LODWORD(STACK[0x2B0]) = STACK[0x2E0];
  LOBYTE(STACK[0x2B4]) = v0;
  LOBYTE(STACK[0x2B5]) = v1;
}

uint64_t OUTLINED_FUNCTION_14_163()
{
}

void OUTLINED_FUNCTION_14_164(double a1, double a2, double a3, double a4)
{
  *&STACK[0x4B0] = a1;
  *&STACK[0x4B8] = a2;
  *&STACK[0x4C0] = a3;
  *&STACK[0x4C8] = a4;
  LOBYTE(STACK[0x4D0]) = 0;
}

uint64_t OUTLINED_FUNCTION_14_165()
{

  return sub_1E4202BD4();
}

void *OUTLINED_FUNCTION_14_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, &STACK[0x298], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_14_168()
{

  return sub_1E4205C64();
}

uint64_t OUTLINED_FUNCTION_14_172()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_14_173()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_174()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_14_176@<X0>(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;

  return type metadata accessor for PinningHeaderView();
}

uint64_t OUTLINED_FUNCTION_14_177()
{

  return swift_once();
}

double OUTLINED_FUNCTION_14_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E3277E60(v12, v13, v11, &a11);
}

void OUTLINED_FUNCTION_14_179(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_14_181()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_14_183()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_185()
{

  return sub_1E42066D4();
}

double OUTLINED_FUNCTION_14_187()
{
  *(v1 - 112) = 0;
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_188()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_14_195()
{

  return sub_1E4200BC4();
}

uint64_t sub_1E32636A8()
{
  sub_1E42013A4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_22()
{
  sub_1E34AF4DC();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_11_28(__n128 a1)
{
  v1[13] = a1;
  v1[14].n128_u64[0] = 0x4010000000000000;
  v1[14].n128_u64[1] = 0;
  v1[15].n128_u64[0] = 0;
  v1[15].n128_u64[1] = 0x4080C00000000000;
  v1[16].n128_u8[0] = 0;
}

uint64_t OUTLINED_FUNCTION_11_30()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_11_32()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_11_35(char a1@<W8>)
{
  *(v1 + 1784) = a1;
  *(v1 + 1785) = *(v1 + 280);
  *(v1 + 1786) = *(v1 + 284);
  *(v1 + 1792) = v2;
  *(v1 + 1800) = v3;
  *(v1 + 1808) = v4;
  *(v1 + 1816) = v5;
  *(v1 + 1824) = *(v1 + 296);
}

uint64_t OUTLINED_FUNCTION_11_36()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_39()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  sub_1E3264CE0();
  sub_1E3264CE0();
}

void OUTLINED_FUNCTION_7_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return swift_slowAlloc();
}

_OWORD *OUTLINED_FUNCTION_11_42()
{
  *(v0 + 232) = v2;

  return sub_1E32A87C0((v0 + 368), v1, v3);
}

__n128 OUTLINED_FUNCTION_11_43()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 200);
  *(v0 - 128) = v1;
  *(v0 - 272) = v1;
  result = *(v0 - 184);
  *(v0 - 256) = v2;
  *(v0 - 240) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_18(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_46()
{

  return sub_1E42062F4();
}

__n128 OUTLINED_FUNCTION_11_51()
{
  v5 = *v0;
  *v2 = *(v0 + 9);
  *(v2 + 16) = *(v0 + 20);
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  v6 = *(v0 + 7);
  *(v2 + 41) = *(v0 + 6);
  *(v2 + 57) = v6;
  result = *(v0 + 8);
  *(v2 + 73) = result;
  *(v2 + 89) = v1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_54(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_56()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_58()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_11_59()
{

  return sub_1E4148DE0(v0);
}

uint64_t OUTLINED_FUNCTION_11_63()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_67()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_11_68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_1E329E454(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_11_70()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_11_72()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_11_73()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_11_74()
{
}

uint64_t OUTLINED_FUNCTION_11_75(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_78(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

void *OUTLINED_FUNCTION_11_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(__dst, a4);

  return memcpy(__dst, &STACK[0x260], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11_82(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_11_84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695C070];

  sub_1E3B23A18(319, a2, a3, v4);
}

id OUTLINED_FUNCTION_11_85()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_11_88()
{
  *(v0 + 336) = v2;
  *(v0 + 344) = v1;

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_11_91()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_11_95()
{
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_96()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_97@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_98()
{
  sub_1E329504C((v0 - 144), (v0 - 176));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_99()
{

  return sub_1E4203734();
}

__n128 OUTLINED_FUNCTION_11_101()
{
  result = *(v0 - 112);
  *(v0 - 208) = result;
  *(v0 - 192) = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_102(unint64_t *a1, uint64_t a2)
{

  return sub_1E3A1558C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_104()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_11_107()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_108()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_109()
{

  return sub_1E4205C44();
}

void OUTLINED_FUNCTION_11_111(uint64_t a1@<X8>)
{
  *(a1 + 64) |= v1;
  v7 = (*(v2 + 48) + 16 * v4);
  *v7 = v5;
  v7[1] = v6;
  *(*(v2 + 56) + 16 * v4) = v3;
}

uint64_t OUTLINED_FUNCTION_11_112()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_113()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t OUTLINED_FUNCTION_11_117()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_119()
{
  v2 = STACK[0x238];
  STACK[0x200] = STACK[0x230];
  LOBYTE(STACK[0x208]) = v2;

  return sub_1E3C3DE00(v0);
}

double OUTLINED_FUNCTION_11_120()
{

  return sub_1E3D496FC(v0, v2, v1, v3 - 152);
}

id OUTLINED_FUNCTION_11_121()
{

  return [v1 (v3 + 736)];
}

uint64_t OUTLINED_FUNCTION_11_125()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_11_130(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{

  return objc_msgSendSuper2(&a11, a2, v11 & 1, v14, v13);
}

id OUTLINED_FUNCTION_11_131()
{
  v3 = *(v0 + 3520);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_11_134()
{
  v2 = STACK[0x298];
  STACK[0x260] = STACK[0x290];
  LOBYTE(STACK[0x268]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_11_135()
{

  return sub_1E41FFEF4();
}

uint64_t OUTLINED_FUNCTION_11_136()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_11_137()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_138(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_11_145()
{

  return swift_once();
}

id OUTLINED_FUNCTION_11_147(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_11_148(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

id OUTLINED_FUNCTION_11_152()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_11_153()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_156()
{
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;

  return sub_1E42038F4();
}

void OUTLINED_FUNCTION_11_158()
{
  *(v0 - 448) = 0;
  *(v0 - 496) = 0;
  *(v0 - 480) = 0;
  *(v0 - 400) = 0;
  *(v0 - 416) = 0;
  *(v0 - 488) = 0;
}

uint64_t OUTLINED_FUNCTION_11_160()
{
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  v5 = *(v1 - 135);
  v6 = *(v1 - 160);
  *v0 = *(v1 - 176);
  *(v0 + 16) = v6;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_11_161()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_162()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_11_163()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_164(uint64_t result)
{
  *(v2 - 200) = v1;
  *(v2 - 192) = result;
  *(v2 - 232) = MEMORY[0x1E69E9820];
  return result;
}

void *OUTLINED_FUNCTION_11_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x338], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_11_167()
{

  return sub_1E4205F14();
}

id OUTLINED_FUNCTION_11_173()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

void OUTLINED_FUNCTION_11_174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1E3C2FCB8(&a9, &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_11_175()
{

  return sub_1E3FE2A50();
}

uint64_t OUTLINED_FUNCTION_11_178()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_179(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

_OWORD *OUTLINED_FUNCTION_11_180()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_1E329504C(v4, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_11_183()
{

  return sub_1E3E3C440(v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_186()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_11_187()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_11_188()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_189()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_191()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_11_194()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

__n128 OUTLINED_FUNCTION_11_196()
{
  v2 = *(v1 - 144);
  *(v0 + 1088) = *(v0 + 1376);
  result = *(v0 + 1392);
  *(v0 + 1104) = result;
  LOBYTE(STACK[0x520]) = v2;
  return result;
}

void *OUTLINED_FUNCTION_11_198(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x70uLL);
}

id OUTLINED_FUNCTION_11_201()
{

  return [v0 (v1 + 3832)];
}

uint64_t sub_1E3264CE8()
{
  sub_1E42013A4();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E3264D5C()
{
  sub_1E42013A4();
  sub_1E418F36C();
  return swift_getWitnessTable();
}

uint64_t sub_1E3264DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v74 = &v74 - v2;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v74 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - v14;
  v16 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1E4206BA4();
  v23 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v24 = *(v18 + 8);
  v79 = v22;
  v80 = v18 + 8;
  v81 = v16;
  v78 = v24;
  v24(v22, v16);
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 launchConfig];

  v27 = [v26 useSharedURLSession];
  v28 = sub_1E324FBDC();
  v83 = *(v5 + 16);
  v83(v15, v28, v3);
  v29 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_178();
  v31 = os_log_type_enabled(v29, v30);
  v82 = v26;
  if (v31)
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    v26[1] = v27;
    _os_log_impl(&dword_1E323F000, v29, v16, "Prewarm useSharedURLSession: %{BOOL}d", v26, 8u);
    OUTLINED_FUNCTION_29_62();
  }

  v32 = *(v5 + 8);
  v32(v15, v3);
  v75 = objc_opt_self();
  v33 = [v75 sharedInstance];
  [v33 setUseSharedURLSession_];

  v34 = [v26 minimalSessionImageLoading];
  v35 = OUTLINED_FUNCTION_21_73();
  v36(v35);
  v37 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v37, v38))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    v26[1] = v34;
    OUTLINED_FUNCTION_44_28(&dword_1E323F000, v39, v40, "Prewarm minimalSessionImageLoading: %{BOOL}d");
    OUTLINED_FUNCTION_29_62();
  }

  v32(v13, v3);
  v41 = [objc_opt_self() sharedInstance];
  [v41 setMinimalSessionImageLoading_];

  v42 = [v26 alwaysPrefetchAppConfiguration];
  v43 = v76;
  v44 = OUTLINED_FUNCTION_21_73();
  v45(v44);
  v46 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v46, v47))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    v26[1] = v42;
    OUTLINED_FUNCTION_44_28(&dword_1E323F000, v48, v49, "Prewarm alwaysPrefetchAppConfiguration: %{BOOL}d");
    OUTLINED_FUNCTION_29_62();
  }

  v32(v43, v3);
  v50 = [v75 sharedInstance];
  [v50 setAlwaysPrefetchAppConfiguration_];

  v51 = [v26 useConfigCacheIgnoreExpiry];
  v52 = v77;
  if (v51)
  {
    [v26 extendedCacheExpireDuration];
    v54 = v53;
    v55 = 1;
  }

  else
  {
    v55 = 0;
    v54 = 0.0;
  }

  v56 = OUTLINED_FUNCTION_21_73();
  v57(v56);
  v58 = sub_1E41FFC94();
  v59 = sub_1E4206814();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134218240;
    *(v60 + 4) = v55;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v54;
    _os_log_impl(&dword_1E323F000, v58, v59, "Prewarm: config cache policy: %lu, extendedCacheExpireDuration: %f", v60, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  v32(v52, v3);
  if (TVAppFeature.isEnabled.getter(12))
  {
    v61 = sub_1E4206474();
    v62 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v61);
    v63 = swift_allocObject();
    v64 = OUTLINED_FUNCTION_33_49(v63);
    *(v64 + 32) = v55;
    *(v64 + 40) = v54;
    v65 = OUTLINED_FUNCTION_23_7();
    sub_1E37748D8(v65, v66, v62, v67, v68);
  }

  else
  {
    v69 = [objc_opt_self() sharedInstance];
    [v69 setExtendedCacheExpireDuration_];

    v70 = [objc_opt_self() sharedInstance];
    [v70 prewarmWithConfigCachePolicy_];
  }

  sub_1E4206B94();
  v71 = VUISignpostLogObject();
  v72 = v79;
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11();

  return v78(v72, v81);
}

uint64_t sub_1E3265504()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_17_13(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1E3C6C2D0(6);
}

uint64_t OUTLINED_FUNCTION_17_17()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return sub_1E41FE804();
}

uint64_t OUTLINED_FUNCTION_17_20(char a1)
{

  return sub_1E3BBD964(0, v1 & 1, v2, a1 & 1);
}

uint64_t OUTLINED_FUNCTION_17_26()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_17_28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1E379539C(&STACK[0x268], &STACK[0x2C8], a3);
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_1E4200654();
}

__n128 OUTLINED_FUNCTION_67_3@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 112);
  *a1 = *(v1 - 128);
  *(a1 + 16) = v2;
  result = *(v1 - 96);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_32(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{

  return sub_1E37E8BE8(v5, a2, 0, a4, 0, 0, v4);
}

id OUTLINED_FUNCTION_17_34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{

  return [a1 (v22 + 1656)];
}

uint64_t OUTLINED_FUNCTION_17_35@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(0xD000000000000017, (a1 - 32) | 0x8000000000000000, v1);
}

__n128 OUTLINED_FUNCTION_17_37()
{
  v2 = *(v1 + 8);
  *(v0 + 160) = *(v1 + 24);
  v3 = *(v1 + 65);
  *(v0 + 96) = *(v1 + 49);
  *(v0 + 112) = v3;
  result = *(v1 + 81);
  *(v0 + 128) = result;
  *(v0 + 144) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26)
{
  v28 = v26[3];
  a23 = v26[2];
  a24 = v28;
  v29 = v26[5];
  a25 = v26[4];
  a26 = v29;

  return sub_1E39241C4(&a23, &a15);
}

uint64_t OUTLINED_FUNCTION_17_40(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1E37E93E8(v3, v4 - 160, a3);
}

uint64_t OUTLINED_FUNCTION_17_42()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_17_44(char a1)
{
  *(v1 - 169) = a1;
  *(v1 - 170) = 6;

  return sub_1E397ED98();
}

uint64_t OUTLINED_FUNCTION_17_46()
{

  return sub_1E4200BF4();
}

uint64_t OUTLINED_FUNCTION_17_47()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_17_50(uint64_t a1, uint64_t a2)
{

  return sub_1E3741EA0(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_17_52()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_55()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_17_60()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_17_61()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_17_62()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_17_65@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_68()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_17_73()
{

  return sub_1E4207584();
}

uint64_t OUTLINED_FUNCTION_17_75()
{
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_17_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_81()
{

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_17_83()
{

  return sub_1E4207804();
}

uint64_t OUTLINED_FUNCTION_17_89()
{
  v1 = STACK[0x248];
  STACK[0x210] = STACK[0x240];
  LOBYTE(STACK[0x218]) = v1;
  return v0;
}

id OUTLINED_FUNCTION_17_91()
{

  return [v0 (v1 + 276)];
}

uint64_t OUTLINED_FUNCTION_64_1()
{
}

uint64_t OUTLINED_FUNCTION_17_99()
{

  return swift_once();
}

void OUTLINED_FUNCTION_17_100(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

void OUTLINED_FUNCTION_17_102()
{
  v0 = STACK[0x258];
  STACK[0x220] = STACK[0x250];
  LOBYTE(STACK[0x228]) = v0;
}

uint64_t OUTLINED_FUNCTION_17_103()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_104()
{

  return sub_1E4207584();
}

uint64_t OUTLINED_FUNCTION_17_109(int a1, uint64_t a2)
{

  return sub_1E3C27638(a1, a2, v2, 0, 0);
}

id OUTLINED_FUNCTION_17_110(void *a1)
{

  return [a1 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_17_112()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_17_115(uint64_t a1, uint64_t a2, ...)
{
  va_start(__dst, a2);

  return memcpy(__dst, &STACK[0x208], 0xE9uLL);
}

void OUTLINED_FUNCTION_17_116(double a1, double a2, double a3, double a4)
{
  *&STACK[0x378] = a1;
  *&STACK[0x380] = a2;
  *&STACK[0x388] = a3;
  *&STACK[0x390] = a4;
  LOBYTE(STACK[0x398]) = 0;
}

uint64_t OUTLINED_FUNCTION_17_117(uint64_t result, double a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_119()
{

  return sub_1E4206174();
}

uint64_t OUTLINED_FUNCTION_17_122()
{

  return sub_1E41FE414();
}

uint64_t OUTLINED_FUNCTION_17_125(uint64_t result, __n128 a2)
{
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_17_126(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 57) = result;
  return result;
}

void *OUTLINED_FUNCTION_17_127()
{

  return memcpy(&STACK[0x280], &STACK[0x3F8], 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_17_129()
{
}

uint64_t OUTLINED_FUNCTION_17_130()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_17_134()
{

  return sub_1E3C3DE00(v0);
}

char *OUTLINED_FUNCTION_17_137()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3740F88(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_17_139()
{

  return sub_1E3FBFC2C(v0, v1 - 192);
}

uint64_t OUTLINED_FUNCTION_17_140()
{

  return type metadata accessor for Router();
}

uint64_t OUTLINED_FUNCTION_17_141()
{

  return sub_1E4205224();
}

char *OUTLINED_FUNCTION_17_143@<X0>(unint64_t a1@<X8>)
{

  return sub_1E3ABC5C0((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17_144(uint64_t a1)
{
  v4 = *(v1 + 224);

  return sub_1E3294EE4(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_17_145(unint64_t *a1)
{

  return sub_1E4022704(a1, type metadata accessor for ViewRepresentableProperties);
}

uint64_t OUTLINED_FUNCTION_17_146()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_17_147@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 288) = a1;

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_17_150()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_17_154(char a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_17_158(void *a1@<X8>)
{
  *(v2 + v1) = 0;
  *(v2 + a1[4]) = 0;
  *(v2 + a1[5]) = 0;
  *(v2 + a1[6]) = 0;
  v3 = (v2 + a1[7]);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + a1[8]) = 0;
  *(v2 + a1[9]) = 0;
}

uint64_t OUTLINED_FUNCTION_17_162(uint64_t a1)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = a1;

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_17_165(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = v4;
  }

  return v2 - v3 - *&a1;
}

uint64_t OUTLINED_FUNCTION_17_166()
{
}

uint64_t OUTLINED_FUNCTION_17_167(unint64_t *a1)
{

  return sub_1E328FCF4(a1, v1);
}

uint64_t sub_1E3266518()
{
  sub_1E42015B4();
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E32665A4()
{
  sub_1E42013A4();
  sub_1E3C8F7D8();
  return swift_getWitnessTable();
}

uint64_t sub_1E3266608()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3266688();
}

uint64_t sub_1E326669C()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E41FEA64();
  *(v0 + 16) = sub_1E41FEA44();
  sub_1E41FEA24();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_56_1(v3);
  v5.n128_u64[0] = v2;

  return MEMORY[0x1EEE43430](v4, v5);
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_43_8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1 - (v1 & 0xFFFFFFFFFFFFFFF0);

  return sub_1E4201274();
}

void OUTLINED_FUNCTION_8_21()
{

  sub_1E3C2AE10();
}

void OUTLINED_FUNCTION_43_10()
{
  *(v3 - 168) = v2;
  *(v3 - 160) = v1;
  *(v3 - 152) = v0;
}

BOOL OUTLINED_FUNCTION_41_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_43_12()
{
  v2 = *(v0 + 104);

  return sub_1E3746E10(v2);
}

uint64_t OUTLINED_FUNCTION_43_15(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_43_16()
{

  return sub_1E390EDA8();
}

uint64_t OUTLINED_FUNCTION_43_17()
{

  return sub_1E42079A4();
}

unint64_t OUTLINED_FUNCTION_43_24(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v4 = a1;

  return sub_1E3270FC8(v3, v5, va);
}

id OUTLINED_FUNCTION_43_26()
{
  *(v0 + v2) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_43_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43_29()
{

  return sub_1E41A3110();
}

double OUTLINED_FUNCTION_43_30()
{

  return sub_1E3952C10(8.0, 5.0);
}

unint64_t OUTLINED_FUNCTION_43_31@<X0>(uint64_t a1@<X8>)
{
  *v1 = *(a1 - 256);
  v4 = *(v2 - 392);
  v5 = *v4;
  v6 = v4[1];

  return sub_1E3270FC8(v5, v6, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_43_37@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 88) = a2;
  *(v2 - 112) = result;
  return result;
}

id OUTLINED_FUNCTION_43_38()
{

  return [v0 (v1 + 2867)];
}

__n128 OUTLINED_FUNCTION_43_39()
{
  v0 = STACK[0x250];
  result = *&STACK[0x230];
  v2 = *&STACK[0x240];
  *&STACK[0x200] = *&STACK[0x230];
  *&STACK[0x210] = v2;
  LOBYTE(STACK[0x220]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = result;
  *(v2 - 128) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_41()
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_43_46()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_43_50@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_51(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_53()
{

  return sub_1E4205DB4();
}

uint64_t OUTLINED_FUNCTION_43_54()
{

  return sub_1E4200A54();
}

uint64_t OUTLINED_FUNCTION_43_57(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 120) = a3;
  *(v4 - 112) = a4;
  *(v4 - 136) = result;
  *(v4 - 128) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_58()
{

  return sub_1E4205CB4();
}

__n128 OUTLINED_FUNCTION_43_59@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 864);
  *(v1 + 576) = *(v1 + 848);
  *(v1 + 592) = v2;
  result = *(v1 + 880);
  *(v1 + 608) = result;
  *(v1 + 624) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_64()
{
  v3 = *(v0 + 552);
  *(v0 + 496) = *(v0 + 544);
  *(v0 + 504) = v3;

  return sub_1E3C3DE00(v1);
}

void OUTLINED_FUNCTION_43_66()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 160) = 0;
  *(v0 - 136) = 1;
}

void OUTLINED_FUNCTION_43_67(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_68()
{

  return sub_1E325F6F0(v1, v0);
}

void OUTLINED_FUNCTION_43_71()
{

  JUMPOUT(0x1E69143B0);
}

double OUTLINED_FUNCTION_43_73(double a1)
{
  result = 1.0 - a1;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

id OUTLINED_FUNCTION_43_74()
{

  return [v0 (v1 + 2867)];
}

void *OUTLINED_FUNCTION_43_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t TVAppFeature.isEnabled.getter(char a1)
{
  v5 = &type metadata for TVAppFeature;
  v6 = sub_1E3267548();
  v4[0] = a1;
  v2 = sub_1E41FE994();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

void sub_1E3266EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_125_0();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "NetworkLauncher: preWarmImageConnection", v11, 2u);
    OUTLINED_FUNCTION_55();
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 launchConfig];

  LODWORD(v12) = [v13 prewarmImageConnection];
  if (v12)
  {
    sub_1E4206454();
    v14 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;
    sub_1E3C066E8(0, 0, v3, &unk_1E42E0C30, v16);

    sub_1E325F748(v3, &unk_1ECF2C400);
  }
}

uint64_t sub_1E326718C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E32671C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E326720C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E32684C4();
}

uint64_t sub_1E326728C()
{
  type metadata accessor for JSNetworkProxy();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  qword_1EE2AB1A0 = v0;
  return result;
}

id sub_1E32672F4()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E4206BA4();
  v4 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_69();

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_16_0();
  v5(v6);
  v7 = objc_opt_self();
  if ([v7 isLibraryOnlyCountry])
  {
    v8 = [v7 isLibraryOnlyCountryResolved];
  }

  else
  {
    v8 = 0;
  }

  sub_1E4206B94();
  v9 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69();

  v10 = OUTLINED_FUNCTION_16_0();
  v5(v10);
  return v8;
}

unint64_t sub_1E3267548()
{
  result = qword_1EE28A480;
  if (!qword_1EE28A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A480);
  }

  return result;
}

const char *TVAppFeature.feature.getter(char a1)
{
  result = "syndication";
  switch(a1)
  {
    case 1:
      result = "pearl";
      break;
    case 2:
      result = "hublot";
      break;
    case 3:
      result = "sports_register_init";
      break;
    case 4:
      result = "swiftui_sports_scoreboard";
      break;
    case 5:
      result = "peppermint";
      break;
    case 6:
      result = "cayman718";
      break;
    case 7:
      result = "nyctosaurus";
      break;
    case 8:
      result = "sports_app_live_activities";
      break;
    case 9:
      result = "nimbus";
      break;
    case 10:
      result = "opal";
      break;
    case 11:
      result = "malone";
      break;
    case 12:
      result = "timbuktu";
      break;
    case 13:
      result = "cuscuz";
      break;
    case 14:
      result = "clayface";
      break;
    case 15:
      result = "timshel";
      break;
    case 16:
      result = "buddy";
      break;
    case 17:
      result = "tris";
      break;
    case 18:
      result = "saturn";
      break;
    case 19:
      result = "emerald";
      break;
    case 20:
      result = "tyria";
      break;
    case 21:
      result = "menkaure";
      break;
    case 22:
      result = "menkaureMac";
      break;
    case 23:
      result = "kobey";
      break;
    case 24:
      result = "aventador";
      break;
    case 25:
      result = "huracan";
      break;
    case 26:
      result = "mars";
      break;
    case 27:
      result = "swiftMedia_embedded_playback";
      break;
    case 28:
      result = "puget";
      break;
    case 29:
      result = "plato";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_1E3267848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_115();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E4206BA4();
  v6 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_25_69();

  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_16_0();
  v7(v8);
  sub_1E4206444();
  v9 = sub_1E4206474();
  OUTLINED_FUNCTION_75_0(v9);
  OUTLINED_FUNCTION_2_4();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_33_49(v10);
  v11 = OUTLINED_FUNCTION_23_7();
  sub_1E3CC3FD0(v11, v12, v0, v13, v14);

  sub_1E325A8C0(v0);
  sub_1E4206B94();
  v15 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_69();

  v16 = OUTLINED_FUNCTION_16_0();
  return (v7)(v16);
}

void sub_1E3267A10()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  sub_1E4206BA4();
  v11 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11();

  v12 = OUTLINED_FUNCTION_13_8();
  v29 = v13;
  v13(v12);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 launchConfig];

  if ([v15 prewarmJetpackLoading])
  {
    sub_1E4206444();
    v16 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
    OUTLINED_FUNCTION_5_10();
    v17 = swift_allocObject();
    *(OUTLINED_FUNCTION_33_49(v17) + 32) = ObjectType;
    v18 = OUTLINED_FUNCTION_23_7();
    sub_1E3CC3FD0(v18, v19, v9, v20, v21);

    sub_1E325A8C0(v9);
  }

  else
  {
    v22 = sub_1E324FBDC();
    (*(v4 + 16))(v0, v22, v2);
    v23 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      *v25 = 0;
      _os_log_impl(&dword_1E323F000, v23, v9, "prewarmJetpack: prewarmJetpackLoading is OFF, ignore", v25, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v0, v2);
  }

  sub_1E4206B94();
  v26 = VUISignpostLogObject();
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_35_11();

  v27 = OUTLINED_FUNCTION_13_8();
  v29(v27);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3267D60()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3267D94()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_31_50();

  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_13_8();
  v4(v5);
  sub_1E325F0F0();

  sub_1E3266EF8();

  sub_1E4206B94();
  v6 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_31_50();

  v7 = OUTLINED_FUNCTION_13_8();
  return (v4)(v7);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

void OUTLINED_FUNCTION_50_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

id OUTLINED_FUNCTION_50_7(void *a1)
{

  return [a1 (v1 + 3832)];
}

_OWORD *OUTLINED_FUNCTION_50_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E32A87C0(&a11, v12, v11);
}

uint64_t OUTLINED_FUNCTION_50_12(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = v5;
  a2.n128_u64[0] = v6;
  a3.n128_u64[0] = v7;
  a4.n128_u64[0] = v8;

  return nullsub_1(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_17()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_50_18@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;
  *(v1 - 176) = 6;
  return v1 - 176;
}

uint64_t OUTLINED_FUNCTION_50_20()
{

  return sub_1E37DABC0(v1, v0 + 200);
}

uint64_t OUTLINED_FUNCTION_50_24()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_50_25()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_50_28()
{
}

uint64_t OUTLINED_FUNCTION_50_29()
{

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_50_32(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_50_36(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v4;
  result[5] = v3;
  result[6] = v2;
  result[7] = v1;
  return result;
}

void OUTLINED_FUNCTION_50_38(double a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a2;
  *&STACK[0x208] = a3;
  *&STACK[0x210] = a4;
  LOBYTE(STACK[0x218]) = 0;
}

uint64_t OUTLINED_FUNCTION_50_40()
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_50_41()
{

  return sub_1E3E8A04C(v1, v4, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_50_44()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_50_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  STACK[0x3D0] = a11;

  return sub_1E3C3DE00(v11);
}

id OUTLINED_FUNCTION_50_47@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  STACK[0x370] = a1;
  v16 = *a15;
  STACK[0x340] = *a15;
  STACK[0x310] = v16;

  return v16;
}

id OUTLINED_FUNCTION_50_48(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_50_49()
{

  return sub_1E4200C44();
}

uint64_t OUTLINED_FUNCTION_50_50()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_55(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  *(v2 + 18) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_50_57(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1E3270FC8(v3, v2, va);
}

void OUTLINED_FUNCTION_50_58(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1 - 1;
}

void OUTLINED_FUNCTION_50_60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E697DCC0];

  sub_1E41BF234(319, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_50_61(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1E32684D8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = *sub_1E3268578();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E326C5D8();
}

uint64_t *sub_1E3268578()
{
  if (qword_1EE2A5930 != -1)
  {
    OUTLINED_FUNCTION_3_165();
  }

  return &qword_1EE2AB1A0;
}

uint64_t sub_1E32685B8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3268640();
}

uint64_t sub_1E3268640()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  v2 = sub_1E41FFCB4();
  v0[9] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[10] = v3;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v4 = sub_1E41FFBF4();
  v0[13] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[14] = v5;
  v0[15] = OUTLINED_FUNCTION_86_0();
  v6 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3268744()
{
  if (sub_1E32672F4())
  {
    sub_1E324FBDC();
    v1 = OUTLINED_FUNCTION_22_34();
    v2(v1);
    v3 = sub_1E41FFC94();
    v4 = sub_1E4206814();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    if (v5)
    {
      v9 = OUTLINED_FUNCTION_125_0();
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v3, v4, "prewarmJetpack: library mode only, ignore", v9, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[9];
    v15 = v0[10];
    sub_1E4206BA4();
    v16 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_35_11();

    (*(v11 + 8))(v10, v13);
    v17 = sub_1E324FBDC();
    (*(v15 + 16))(v12, v17, v14);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v18, v19, "prewarmJetpack: begin", v20, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21 = v0[12];
    v22 = v0[9];
    v23 = v0[10];

    (*(v23 + 8))(v21, v22);
    type metadata accessor for VUIJetPackController();
    v24 = [objc_opt_self() standardUserDefaults];
    sub_1E4205F14();
    static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:)();
    v26 = v25;

    v27 = VUIJetPackController.getJetPackSource()();
    v0[6] = sub_1E3CC4254;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1E39FE2F0;
    v0[5] = &block_descriptor_59_0;
    v28 = _Block_copy(v0 + 2);
    [v27 resultWithCompletion_];
    _Block_release(v28);
  }

  OUTLINED_FUNCTION_54();

  return v29();
}

uint64_t sub_1E3268A80()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3268B10()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3268BA4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3268C38()
{
  v1 = v0[9];
  v2 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 launchConfig];

  LODWORD(v4) = [v5 checkRemoteServerReachability];
  v6 = sub_1E324FBDC();
  v7 = *(v1 + 16);
  v8 = v0[8];
  if (v4)
  {
    v7(v0[13], v6, v8);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (OUTLINED_FUNCTION_16_53(v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v11);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v12, v13, "NetworkLauncher: performPrewarmUTSConnection use reachability check");
      OUTLINED_FUNCTION_6_0();
    }

    v14 = v0[13];
    v15 = v0[8];
    v16 = v0[9];

    (*(v16 + 8))(v14, v15);
    v0[17] = sub_1E4206434();
    v0[18] = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_41_12();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v7(v0[12], v6, v8);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_38_44(&dword_1E323F000, v23, v24, "NetworkLauncher: performPrewarmUTSConnection begin");
      OUTLINED_FUNCTION_6_0();
    }

    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[9];
    v29 = v0[3];
    v28 = v0[4];

    v80 = *(v27 + 8);
    v80(v25, v26);
    sub_1E41FE404();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v28);
    v31 = v0[8];
    if (EnumTagSinglePayload == 1)
    {
      v32 = v0[10];
      sub_1E325F748(v0[3], &unk_1ECF363C0);
      v7(v32, v6, v31);
      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();
      if (OUTLINED_FUNCTION_16_53(v34))
      {
        v35 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v35);
        OUTLINED_FUNCTION_3_12(&dword_1E323F000, v36, v37, "NetworkLauncher: performPrewarmUTSConnection, url is nil, ignore");
        OUTLINED_FUNCTION_6_0();
      }

      v38 = v0[10];
      v39 = v0[8];

      v80(v38, v39);
      OUTLINED_FUNCTION_4_226();
      sub_1E4206B94();
      v40 = VUISignpostLogObject();
      OUTLINED_FUNCTION_9_167();

      v41 = OUTLINED_FUNCTION_16_139();
      v42(v41);

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_41_12();

      __asm { BRAA            X1, X16 }
    }

    v45 = v0[11];
    v47 = v0[6];
    v46 = v0[7];
    v48 = v0[4];
    v49 = v0[5];
    (*(v49 + 32))(v46, v0[3], v48);
    v7(v45, v6, v31);
    (*(v49 + 16))(v47, v46, v48);
    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[11];
    v54 = v0[8];
    v56 = v0[5];
    v55 = v0[6];
    if (v52)
    {
      swift_slowAlloc();
      v81 = OUTLINED_FUNCTION_10_11();
      *v54 = 136315138;
      sub_1E326D148();
      sub_1E4207944();
      v79 = v51;
      v59 = *(v56 + 8);
      v57 = v56 + 8;
      v58 = v59;
      v60 = OUTLINED_FUNCTION_146_0();
      v59(v60);
      v61 = OUTLINED_FUNCTION_53_3();
      sub_1E3270FC8(v61, v62, v63);
      OUTLINED_FUNCTION_50();

      *(v54 + 4) = v55;
      OUTLINED_FUNCTION_20_115(&dword_1E323F000, v64, v65, "NetworkLauncher: performPrewarmUTSConnection url = %s", v66, v67, v68, v69, v77, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {

      v70 = *(v56 + 8);
      v57 = v56 + 8;
      v58 = v70;
      v71 = OUTLINED_FUNCTION_146_0();
      v70(v71);
    }

    v80(v53, v54);
    v0[23] = v57;
    v0[24] = v58;
    v72 = [objc_opt_self() sharedInstance];
    v73 = [v72 urlSession];

    v0[25] = [v73 session];
    v74 = swift_task_alloc();
    v0[26] = v74;
    *v74 = v0;
    v74[1] = sub_1E3F730E8;
    OUTLINED_FUNCTION_41_12();

    return sub_1E3283248();
  }
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26_24()
{

  return sub_1E4203B44();
}

__n128 *OUTLINED_FUNCTION_26_26(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 6;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_27()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_26_28()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_26_29()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_122_1()
{
}

uint64_t OUTLINED_FUNCTION_26_36()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_26_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1E39A09C0(va);
}

uint64_t OUTLINED_FUNCTION_26_38(uint64_t a1)
{
  *(v2 - 128) = a1;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, *(v2 - 152));

  return sub_1E42007D4();
}

uint64_t OUTLINED_FUNCTION_26_42()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_26_45()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{

  sub_1E399AB0C(v26, v27, a26);
}

uint64_t OUTLINED_FUNCTION_26_48()
{

  return sub_1E4200674();
}

void OUTLINED_FUNCTION_26_53()
{
  v0 = STACK[0x454];
  v1 = STACK[0x455];
  LODWORD(STACK[0x240]) = STACK[0x450];
  LOBYTE(STACK[0x244]) = v0;
  LOBYTE(STACK[0x245]) = v1;
}

uint64_t OUTLINED_FUNCTION_26_55()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_26_60()
{

  return CGRect.center.getter(v1, v2, v3, v4);
}

unint64_t OUTLINED_FUNCTION_26_68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_1E3270FC8(0xD000000000000017, a2, a3);
}

uint64_t OUTLINED_FUNCTION_26_69()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_75()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_26_77(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst)
{

  return memcpy(&__dst, (v21 - 248), 0x89uLL);
}

void OUTLINED_FUNCTION_26_78(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x318] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x328] = a4;
  LOBYTE(STACK[0x330]) = 0;
}

id OUTLINED_FUNCTION_26_79()
{

  return [v0 (v3 + 736)];
}

void OUTLINED_FUNCTION_26_80(double a1, double a2, double a3, double a4)
{
  *(v4 + 656) = a1;
  *(v4 + 664) = a2;
  *(v4 + 672) = a3;
  *(v4 + 680) = a4;
  *(v4 + 688) = 0;
}

uint64_t OUTLINED_FUNCTION_26_91()
{

  return sub_1E4203AB4();
}

uint64_t OUTLINED_FUNCTION_26_92()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_26_94()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_26_96()
{

  return sub_1E41FDF44();
}

uint64_t OUTLINED_FUNCTION_26_97()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_102()
{

  return sub_1E4206C14();
}

uint64_t OUTLINED_FUNCTION_26_103(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_26_104()
{

  return sub_1E42079A4();
}

double OUTLINED_FUNCTION_26_107(double a1, double a2)
{

  return sub_1E3952BD8(a1, a2, v3);
}

void OUTLINED_FUNCTION_26_109()
{
  v0 = STACK[0x4B8];
  STACK[0x480] = STACK[0x4B0];
  LOBYTE(STACK[0x488]) = v0;
}

void OUTLINED_FUNCTION_26_110()
{
  v3 = *(v0 + 128);
  *(v0 + 104) = *(v0 + 120);
  *(v0 + 112) = v3;

  sub_1E3C2FCB8(v0 + 8, v1 - 200);
}

uint64_t OUTLINED_FUNCTION_26_112()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_114()
{

  return type metadata accessor for RoutingView();
}

void *OUTLINED_FUNCTION_26_124@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 6008), 0x58uLL);
}

void *OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 - 160), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_40_10()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_40_11()
{
  v3 = *(v1 + 512);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_20_9()
{
  v2 = *(v0 + 104);

  return sub_1E3887098(2, v2);
}

uint64_t OUTLINED_FUNCTION_40_18()
{
}

uint64_t OUTLINED_FUNCTION_40_20()
{

  return sub_1E3C2FC98();
}

uint64_t OUTLINED_FUNCTION_40_22()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_40_29@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_32()
{

  return swift_getOpaqueTypeConformance2();
}

char *OUTLINED_FUNCTION_40_33()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3ABC5C0(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_40_34()
{

  return sub_1E41FFBE4();
}

uint64_t OUTLINED_FUNCTION_40_35()
{

  return sub_1E3AEDFB4();
}

uint64_t OUTLINED_FUNCTION_40_38()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_40_42()
{
  sub_1E38C5A18(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1E4206324();
}

__n128 OUTLINED_FUNCTION_40_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, __n128 a20, __n128 a21)
{
  result = a19;
  *v21 = a19;
  v21[1] = a20;
  v21[2] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_44()
{
}

uint64_t OUTLINED_FUNCTION_40_46()
{
}

uint64_t OUTLINED_FUNCTION_40_47()
{

  return swift_once();
}

void OUTLINED_FUNCTION_40_48(double a1, double a2, double a3, double a4)
{
  *&STACK[0x220] = a1;
  *&STACK[0x228] = a2;
  *&STACK[0x230] = a3;
  *&STACK[0x238] = a4;
  LOBYTE(STACK[0x240]) = 0;
}

uint64_t OUTLINED_FUNCTION_40_51()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_40_65(void (*a1)(uint64_t))
{

  return sub_1E4148DE0(a1);
}

uint64_t OUTLINED_FUNCTION_40_66()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_40_68()
{
  v3 = *(v0 + 224);
  *(v0 + 200) = *(v0 + 216);
  *(v0 + 208) = v3;

  return sub_1E3C3DE00(v1);
}

void OUTLINED_FUNCTION_40_69(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  *v3 = 0xD000000000000012;
  v3[1] = (v1 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_40_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{

  sub_1E37EE894(a1, a2, a3, a4, 1, a6, 0, 0, a9, a10, a11, a12, a13, a14, a15);
}

double OUTLINED_FUNCTION_40_74(uint64_t a1, uint64_t a2)
{

  return sub_1E3277E60(a1, a2, v3, (v2 + 152));
}

void OUTLINED_FUNCTION_40_75()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_40_76(uint64_t a1)
{
  *(v1 + 32) = v2;
  *(v1 + 40) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_40_77(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4148C68(v3, a3, v4 - 248);
}

uint64_t OUTLINED_FUNCTION_40_78()
{
  sub_1E38C5A18(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1E4206324();
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return sub_1E42015C4();
}

double OUTLINED_FUNCTION_93_3()
{

  return sub_1E375D7E8(v1 - 160, v0, (v1 - 120));
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_93_9(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_93_10(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v2 & 1;
  *(result + 32) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_11()
{

  return sub_1E3743538(v2, v0, v1);
}

BOOL OUTLINED_FUNCTION_93_12()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_93_13(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_93_14()
{

  return sub_1E4207AB4();
}

uint64_t OUTLINED_FUNCTION_93_17()
{

  return sub_1E4207B64();
}

void OUTLINED_FUNCTION_93_18()
{

  sub_1E40F524C();
}

double OUTLINED_FUNCTION_98_2()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

uint64_t OUTLINED_FUNCTION_99_1()
{

  return sub_1E42015C4();
}

id OUTLINED_FUNCTION_98_3(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_98_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  JUMPOUT(0x1E69109E0);
}

__n128 OUTLINED_FUNCTION_98_5(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_98_10(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_98_11()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_98_13()
{

  sub_1E39537A8();
}

uint64_t OUTLINED_FUNCTION_98_15()
{

  return sub_1E4207614();
}

uint64_t OUTLINED_FUNCTION_98_18(uint64_t result, uint64_t a2)
{
  *(v2 - 280) = result;
  *(v2 - 272) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_19()
{
  if (!v0)
  {
    v0 = v1;
  }

  *(v2 - 208) = v1;
  return sub_1E32AE9B0(v0);
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_8_33(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_37()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_8_40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_42()
{

  return sub_1E4206324();
}

unint64_t OUTLINED_FUNCTION_8_44(uint64_t a1)
{

  return sub_1E3743478(a1);
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_8_47()
{
  v0 = STACK[0x2C0];
  result = *&STACK[0x2A0];
  v2 = *&STACK[0x2B0];
  *&STACK[0x270] = *&STACK[0x2A0];
  *&STACK[0x280] = v2;
  LOBYTE(STACK[0x290]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_49()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return sub_1E38D2054(v0 - 112, v0 - 89);
}

uint64_t OUTLINED_FUNCTION_8_56(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

__n128 OUTLINED_FUNCTION_8_58@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 137) = a2;
  *(a1 + 153) = *(v2 + 153);
  result = *(v2 + 169);
  *(a1 + 169) = result;
  return result;
}

void OUTLINED_FUNCTION_8_61(uint64_t a1@<X8>)
{
  *(a1 + 32) = v3;
  *(a1 + 40) = v1;
  *(a1 + 41) = v2;
}

uint64_t OUTLINED_FUNCTION_8_62(uint64_t a1)
{

  return MEMORY[0x1EEDC68B8](a1, v2, v2, v1, v1);
}

double OUTLINED_FUNCTION_8_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v17 = a2 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;

  return sub_1E3277E60(v15, v17, v14, &a14);
}

uint64_t OUTLINED_FUNCTION_8_64(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 120) = result;
  *(v2 - 160) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_65()
{

  return sub_1E41FE804();
}

uint64_t OUTLINED_FUNCTION_8_66()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_68(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    return a10;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_8_71()
{
  LOBYTE(STACK[0x270]) = STACK[0x2A0];

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_8_78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_8_85(uint64_t a1, uint64_t a2)
{

  return sub_1E3741EA0(a1, a2, v2);
}

uint64_t (*OUTLINED_FUNCTION_8_88())()
{
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  return sub_1E3B40F9C;
}

uint64_t OUTLINED_FUNCTION_8_97()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_8_100()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_8_101()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_8_107()
{
  result = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  return result;
}

void OUTLINED_FUNCTION_8_109(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2C0] = a1;
  *&STACK[0x2C8] = a2;
  *&STACK[0x2D0] = a3;
  *&STACK[0x2D8] = a4;
  LOBYTE(STACK[0x2E0]) = 0;
}

uint64_t OUTLINED_FUNCTION_8_110()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_8_113()
{

  JUMPOUT(0x1E6910920);
}

uint64_t OUTLINED_FUNCTION_8_118()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_120(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  sub_1E3CE9BD4(v25, a19, a13, &a25);
}

uint64_t OUTLINED_FUNCTION_8_121()
{

  return sub_1E4200E64();
}

double OUTLINED_FUNCTION_8_123()
{
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void *OUTLINED_FUNCTION_8_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x3B8], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_8_129()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_8_130@<X0>(unint64_t a1@<X8>)
{
  STACK[0x230] = a1;
  STACK[0x238] = 0;
  STACK[0x240] = 0;
  STACK[0x248] = a1;
  LOBYTE(STACK[0x250]) = 0;

  return sub_1E3C2FC98();
}

uint64_t OUTLINED_FUNCTION_8_131()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_8_135()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_136@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(v2 + 31, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_8_137(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_8_138()
{

  type metadata accessor for UIEdgeInsets();
}

uint64_t OUTLINED_FUNCTION_8_140(void *a1)
{

  return sub_1E3741090(0x5F45444F53495045, 0xEA00000000004025, a1);
}

uint64_t OUTLINED_FUNCTION_8_142()
{

  return sub_1E3DA466C(sub_1E3E60364, 3);
}

BOOL OUTLINED_FUNCTION_8_143(double a1, double a2, double a3, double a4)
{
  v9 = a1;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  return CGRectEqualToRect(*&v13, *&v9);
}

uint64_t OUTLINED_FUNCTION_8_146()
{
  v1 = STACK[0x2F8];
  STACK[0x2C0] = STACK[0x2F0];
  LOBYTE(STACK[0x2C8]) = v1;

  return sub_1E3C2FC98();
}

double OUTLINED_FUNCTION_8_147()
{
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_148()
{

  return swift_dynamicCastObjCProtocolConditional();
}

double OUTLINED_FUNCTION_8_150()
{
  result = 0.0;
  *(v0 - 288) = 0u;
  *(v0 - 304) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_151()
{

  return swift_getTupleTypeMetadata3();
}

void OUTLINED_FUNCTION_8_155(double a1, double a2, double a3, double a4)
{
  *&STACK[0x230] = a1;
  *&STACK[0x238] = a2;
  *&STACK[0x240] = a3;
  *&STACK[0x248] = a4;
  LOBYTE(STACK[0x250]) = 0;
}

uint64_t OUTLINED_FUNCTION_8_161()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_163()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_164()
{

  return sub_1E41FDDB4();
}

void OUTLINED_FUNCTION_8_165(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

__n128 OUTLINED_FUNCTION_8_166(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

double OUTLINED_FUNCTION_8_170()
{
  v4 = 0;
  v5 = v2;
  v6 = v1;
  v7 = v3;

  *&result = CGRectIntegral(*&v4);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_171()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_174()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_8_177()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 176);

  return sub_1E329505C(v0 - 136);
}

id OUTLINED_FUNCTION_8_179()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_8_180()
{
}

uint64_t OUTLINED_FUNCTION_8_182()
{

  return swift_storeEnumTagMultiPayload();
}

char *OUTLINED_FUNCTION_8_183@<X0>(unint64_t a1@<X8>)
{

  return sub_1E3740F88((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_185()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_8_187()
{

  return sub_1E3FE2254(v0, type metadata accessor for SportsPlayIndex.IndexType);
}

uint64_t OUTLINED_FUNCTION_8_188@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(a7) = a1;

  return sub_1E3F9F164(&a7);
}

double OUTLINED_FUNCTION_8_189()
{
  result = 12.0;
  if ((v1 & 1) == 0)
  {
    return v0;
  }

  return result;
}

id OUTLINED_FUNCTION_8_190()
{
  v3 = *(v1 + 504);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_8_192(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

void OUTLINED_FUNCTION_8_194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1E4044BAC(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_8_197()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_200()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_201(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = *(v3 + 16);
  v2[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

id OUTLINED_FUNCTION_8_209(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_8_210()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_212()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_8_214@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;

  return sub_1E3F9F164((v1 - 160));
}

uint64_t OUTLINED_FUNCTION_8_216()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_8_218()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_8_219()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E326BE68()
{
  sub_1E4202624();
  sub_1E42013A4();
  OUTLINED_FUNCTION_21_1();
  sub_1E4201F54();
  OUTLINED_FUNCTION_2_238();
  sub_1E3FEAEAC(v0);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_46_5@<X0>(uint64_t a1@<X0>, char a2@<W6>, uint64_t a3@<X8>, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11)
{

  return sub_1E3EB9C0C(a1, v11, 0, 0, 0, 1, a2, 2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_33_12()
{
}

void OUTLINED_FUNCTION_46_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_46_7()
{
}

void *OUTLINED_FUNCTION_46_8(void *a1)
{

  return memcpy(a1, v1, 0x150uLL);
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

uint64_t OUTLINED_FUNCTION_46_15()
{
  v3 = *(v0 + 56);

  return sub_1E3E3665C(v3, v1);
}

uint64_t OUTLINED_FUNCTION_46_19()
{

  return swift_unknownObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_46_20()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t OUTLINED_FUNCTION_46_22()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_46_24()
{

  return sub_1E42005D4();
}

id OUTLINED_FUNCTION_46_25()
{

  return [v0 (v1 + 2424)];
}

unint64_t OUTLINED_FUNCTION_46_27@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  return sub_1E3270FC8(v3, v4, (v1 - 128));
}

id OUTLINED_FUNCTION_46_29(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v3;
  *v4 = v2;
  *(v1 + 12) = 2080;

  return v3;
}

void *OUTLINED_FUNCTION_46_31()
{

  return memcpy((v0 + 72), (v0 + 376), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_46_33()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_46_35(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v5 = *(v3 - 192) | 0x8000000000000000;

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD000000000000017, v5, a2);
}

uint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_1E3743538(v2, v1, v0);
}

__n128 OUTLINED_FUNCTION_46_39()
{
  v3 = v0 + *(v1 + 76);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *(v2 - 240) = *v3;
  *(v2 - 224) = v6;
  *(v2 - 208) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return sub_1E42015C4();
}

void OUTLINED_FUNCTION_46_42()
{

  sub_1E3F23370();
}

uint64_t OUTLINED_FUNCTION_46_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  return sub_1E41E1A64(&a9, v21, v22, &a21);
}

uint64_t OUTLINED_FUNCTION_46_46()
{
  LOBYTE(STACK[0x230]) = STACK[0x260];

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_46_48()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

int64_t OUTLINED_FUNCTION_46_50()
{

  return sub_1E3E95CE4(v0);
}

uint64_t OUTLINED_FUNCTION_46_52()
{

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_46_53()
{

  return [v0 (v1 + 276)];
}

void OUTLINED_FUNCTION_46_55(__n128 a1)
{
  *(v1 + 120) = a1;
  *(v1 + 136) = a1;
  *(v1 + 152) = a1;
  *(v1 + 168) = a1;
  *(v1 + 184) = a1;
  *(v1 + 193) = a1;
  *(v1 + 216) = 0x4054000000000000;
}

uint64_t OUTLINED_FUNCTION_46_64()
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  *v0 = *v1;
  *(v0 + 8) = v3;
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v4;
}

uint64_t OUTLINED_FUNCTION_46_66()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_46_67()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_46_68()
{

  return [v1 (v0 + 3448)];
}

uint64_t sub_1E326C5D8()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_127();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void OUTLINED_FUNCTION_126_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_126_3()
{
}

id OUTLINED_FUNCTION_126_4()
{
  v4 = *(v2 + *(v0 + 2240));

  return [v4 (v1 + 3623)];
}

id OUTLINED_FUNCTION_126_5(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_126_6()
{

  sub_1E3952C88();
}

uint64_t OUTLINED_FUNCTION_126_7()
{
}

uint64_t sub_1E326C78C()
{
  OUTLINED_FUNCTION_134();
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v1 = sub_1E41FF1E4();
  }

  else
  {
    v2 = [objc_opt_self() sharedInstance];
    v1 = [v2 isNetworkReachable];
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 launchConfig];

  LODWORD(v3) = [v4 prefetchLastSelectedTab];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_55_37();
  if (!v3 || (v1 & 1) == 0)
  {
    v5(v0[5]);
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();
    if (OUTLINED_FUNCTION_72_1(v17))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v23 = OUTLINED_FUNCTION_27_0();
    v24(v23);

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_60_23();

    __asm { BRAA            X1, X16 }
  }

  v5(v0[6]);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v7))
  {
    v8 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v8);
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v9, v10, "JSNetworkProxy: prefetchSelectedTab");
    OUTLINED_FUNCTION_51_2();
  }

  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1E32820AC;
  OUTLINED_FUNCTION_60_23();

  return sub_1E326DD10();
}

BOOL OUTLINED_FUNCTION_34_9()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_134_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_134_11(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981790];

  sub_1E41BE618(319, a2, a3, v4);
}

uint64_t sub_1E326CB28()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E326CBB8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E3798500;

  return v5(v2 + 32);
}

uint64_t sub_1E326CCF8()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v8;
  v5[1] = sub_1E3286A7C;

  return sub_1E3283AD4(v2, v6, v7, v3);
}

uint64_t sub_1E326CF34()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  v1[3] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FE414();
  v1[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_107_1();
  v1[7] = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  v1[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_107_1();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_1E41FFBF4();
  v1[15] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_86_0();
  v9 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E326D0D8(void *a1)
{
  v2 = [a1 prewarmImageUrl];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E326D148()
{
  result = qword_1EE28A470;
  if (!qword_1EE28A470)
  {
    sub_1E41FE414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A470);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, __int128);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_1E37AF928(va1, va, v3, v4);
}

uint64_t OUTLINED_FUNCTION_55_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1E3741090(a1, a2 | 0x8000000000000000, v2);
}

id OUTLINED_FUNCTION_67_4()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_55_13()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_55_14()
{

  return swift_getKeyPath();
}

unint64_t OUTLINED_FUNCTION_55_18(uint64_t a1)
{

  return sub_1E327D33C(a1, v1);
}

void *OUTLINED_FUNCTION_55_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &STACK[0x280], 0x82uLL);
}

uint64_t OUTLINED_FUNCTION_55_23()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_55_25()
{
}

uint64_t OUTLINED_FUNCTION_55_26()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_55_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32)
{

  return sub_1E3277E60(a1, a2, v32, &a32);
}

void OUTLINED_FUNCTION_55_30()
{

  JUMPOUT(0x1E6911380);
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_55_33()
{
}

uint64_t OUTLINED_FUNCTION_55_34()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_55_35(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1E4206424();
}

uint64_t OUTLINED_FUNCTION_55_36()
{

  return sub_1E4207644();
}

uint64_t OUTLINED_FUNCTION_55_38()
{

  return sub_1E4205E84();
}

id OUTLINED_FUNCTION_55_40()
{

  return sub_1E3E5F2C0();
}

uint64_t OUTLINED_FUNCTION_55_46()
{

  return sub_1E42079A4();
}

__n128 OUTLINED_FUNCTION_55_47()
{
  v0 = STACK[0x4A0];
  result = *&STACK[0x480];
  v2 = *&STACK[0x490];
  *&STACK[0x360] = *&STACK[0x480];
  *&STACK[0x370] = v2;
  LOBYTE(STACK[0x380]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_48()
{
}

uint64_t sub_1E326D6D8()
{
  type metadata accessor for VoiceOverTextAccessibility();
  sub_1E42013A4();
  sub_1E3E03BF0();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_47_5(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 208));
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return TVAppFeature.isEnabled.getter(12);
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_47_13()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_47_14()
{
  result = *&STACK[0x210];
  LOBYTE(STACK[0x200]) = STACK[0x230];
  return result;
}

void OUTLINED_FUNCTION_47_15(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v4 - 352);
  *(a1 + 24) = v1;
  *(a1 + 32) = *(v4 - 360);
  *(a1 + 40) = v2;
  v5 = *(v4 - 376);
  *(a1 + 48) = *(v4 - 368);
  *(a1 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_47_17()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_47_18()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t OUTLINED_FUNCTION_47_21()
{
  *(v1 - 208) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_22()
{

  return sub_1E3C3DE00(v0);
}

void *OUTLINED_FUNCTION_47_24(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0xB1uLL);
}

uint64_t OUTLINED_FUNCTION_47_30()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_47_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_33()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_47_41()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_47_42()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_47_43()
{

  return sub_1E4207614();
}

uint64_t OUTLINED_FUNCTION_47_44()
{
}

uint64_t OUTLINED_FUNCTION_47_46()
{

  return swift_once();
}

size_t OUTLINED_FUNCTION_47_47()
{
  *(v1 - 96) = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_1E3E95A6C(v3, v4);
}

void OUTLINED_FUNCTION_47_49(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_47_51()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_56_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_47_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 160) = a65;
  *(v68 - 144) = a66;
  *(v68 - 128) = a67;
  return v67;
}

uint64_t OUTLINED_FUNCTION_47_55()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_59()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_47_60(void *a1)
{
  *v2 = *(v3 - 288);
  *(v2 + 4) = v1;
  *a1 = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_47_62()
{
  *(v2 + *(v1 + 60)) = v0;
  *(v3 - 256) = v2;
  return v2;
}

uint64_t sub_1E326DD10()
{
  OUTLINED_FUNCTION_24();
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  v1[15] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FFCB4();
  v1[16] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_127();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_1E41FFBF4();
  v1[30] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_127();
  v1[33] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E326DEBC()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[16];
  v6 = v0[17];
  sub_1E4206BA4();
  v7 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v8 = *(v3 + 8);
  v0[34] = v8;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = sub_1E324FBDC();
  v0[36] = v9;
  v10 = *(v6 + 16);
  v0[37] = v10;
  v0[38] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v9, v5);
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v13);
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v14, v15, "JSNetworkProxy: prefetchSelectedTab");
    OUTLINED_FUNCTION_51_2();
  }

  v16 = v0[17];

  v0[39] = *(v16 + 8);
  v17 = OUTLINED_FUNCTION_27_0();
  v18(v17);
  if (TVAppFeature.isEnabled.getter(12))
  {
    type metadata accessor for VUIBagServiceProxyObjC();
    v19 = swift_task_alloc();
    v0[40] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_56_1(v19);

    return static VUIBagServiceProxyObjC.isFullTVAppEnabled()();
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B168);
    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_56_1(v21);

    return sub_1E326E104();
  }
}

uint64_t sub_1E326E104()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFBF4();
  v0[2] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_86_0();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

id static MetricsDiskManager.shared.getter()
{
  if (qword_1EE2A08A0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  v1 = static MetricsDiskManager.shared;

  return v1;
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return sub_1E4205CB4();
}

double OUTLINED_FUNCTION_5_32()
{
  v3 = 0;
  v4 = 0;
  v5 = v1;
  v6 = v2;

  return CGRectGetHeight(*&v3);
}

void OUTLINED_FUNCTION_5_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_1E3C2FCB8(&a9, &a71);
}

void OUTLINED_FUNCTION_5_37(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_5_40(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
}

void OUTLINED_FUNCTION_5_41(uint64_t a1@<X8>)
{
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_5_44()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_21()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_5_46()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_5_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_1E38D2054(&a9, &a11);
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_5_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return sub_1E3C27638(17, &a36, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_58(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

id OUTLINED_FUNCTION_5_61(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_5_69(uint64_t a1)
{
  v4 = *(v2 - 192);

  return sub_1E37E93E8(a1, v4, v1);
}

__n128 OUTLINED_FUNCTION_5_75(__n128 *a1)
{
  result = v1[5];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u8[0] = v1[11].n128_u32[0];
  a1[3].n128_u8[1] = v1[10].n128_u32[2];
  a1[3].n128_u8[2] = v1[11].n128_u32[2];
  return result;
}

id OUTLINED_FUNCTION_5_76(void *a1)
{
  v5 = *v1;

  return [a1 v5];
}

uint64_t OUTLINED_FUNCTION_5_77()
{

  return sub_1E4205E84();
}

void OUTLINED_FUNCTION_5_80(uint64_t a1@<X8>)
{
  v7 = v1 + *(a1 + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_5_83()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_5_89(uint64_t result, uint64_t a2, char a3)
{
  *(v3 - 136) = result;
  *(v3 - 128) = a2;
  *(v3 - 120) = a3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_93()
{
}

id OUTLINED_FUNCTION_5_95(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_96()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_97()
{

  return sub_1E4207264();
}

uint64_t OUTLINED_FUNCTION_5_98()
{

  return sub_1E41FFBA4();
}

void OUTLINED_FUNCTION_5_99(uint64_t a1@<X8>)
{
  STACK[0x290] = a1 & 0xFFFFFFFFFFFFLL | 0x4083000000000000;
  LOBYTE(STACK[0x298]) = 0;
  STACK[0x260] = 0x407CC00000000000;
  LOBYTE(STACK[0x268]) = 0;
}

uint64_t OUTLINED_FUNCTION_5_100()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_101()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_106(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_5_108@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

double OUTLINED_FUNCTION_5_109()
{
  result = 0.0;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  LOBYTE(STACK[0x250]) = 1;
  *&STACK[0x200] = 0u;
  *&STACK[0x210] = 0u;
  LOBYTE(STACK[0x220]) = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_5_114()
{
  v1 = STACK[0x310];
  result = *(v0 + 576);
  v3 = *(v0 + 592);
  *(v0 + 528) = result;
  *(v0 + 544) = v3;
  LOBYTE(STACK[0x2E0]) = v1;
  return result;
}

id OUTLINED_FUNCTION_5_119()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_5_122()
{
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return 0;
}

id OUTLINED_FUNCTION_5_124()
{
  v4 = *(v0 + v1);

  return [v4 (v2 + 1454)];
}

__n128 OUTLINED_FUNCTION_5_125()
{
  v0 = STACK[0x380];
  result = *&STACK[0x360];
  v2 = *&STACK[0x370];
  *&STACK[0x330] = *&STACK[0x360];
  *&STACK[0x340] = v2;
  LOBYTE(STACK[0x350]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_129()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_5_130()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_33_13()
{
  v2 = STACK[0x280];
  v3 = *&STACK[0x270];
  *&STACK[0x230] = *&STACK[0x260];
  *&STACK[0x240] = v3;
  LOBYTE(STACK[0x250]) = v2;

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_86_1(void *a1)
{

  return sub_1E3E5F2F8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_132()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_133()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_138(unint64_t *a1)
{

  return sub_1E3A1558C(a1, v1);
}

double OUTLINED_FUNCTION_5_139@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id OUTLINED_FUNCTION_5_140(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_5_142()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_5_143()
{

  return sub_1E4207944();
}

uint64_t OUTLINED_FUNCTION_5_144(uint64_t result)
{
  *(v2 - 208) = v1;
  *(v2 - 200) = result;
  *(v2 - 240) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_145()
{

  return swift_once();
}

id OUTLINED_FUNCTION_5_149()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_5_150()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_5_151()
{

  return [v0 length];
}

uint64_t OUTLINED_FUNCTION_5_154()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_5_155(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_5_157()
{

  return OUTLINED_FUNCTION_18();
}

id OUTLINED_FUNCTION_5_159(uint64_t a1)
{

  return [v1 (v3 + 2104)];
}

void OUTLINED_FUNCTION_5_160(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  v2 = (v1 + a1[2]);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
}

uint64_t OUTLINED_FUNCTION_5_164(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_165()
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 96) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_168()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_5_169()
{

  return sub_1E42067C4();
}

uint64_t OUTLINED_FUNCTION_5_171()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_173()
{

  return sub_1E4206254();
}

void OUTLINED_FUNCTION_5_175()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

double OUTLINED_FUNCTION_5_177()
{
  result = 0.0;
  LOBYTE(STACK[0x200]) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_182()
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_5_185(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_1E32A87C0(&a13, v13, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_5_188()
{

  return swift_once();
}

double OUTLINED_FUNCTION_5_198()
{

  return sub_1E3952BD8(v1, v2, v3);
}

void *OUTLINED_FUNCTION_5_203()
{
  *(v0 + 81) = v1[3];
  v5 = v1[1];
  *(v0 + 106) = *v1;
  *(v0 + 97) = *(v0 + 256);
  *(v0 + 122) = v5;
  *(v0 + 138) = *(v0 + 224);
  *(v0 + 146) = *(v0 + 354);
  v6 = *(v0 + 370);
  *(v0 + 162) = v6;
  *(v0 + 178) = *(v0 + 386);
  *(v0 + 56) = *(v0 + 40);
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = *(v0 + 52);
  *(v0 + 105) = v2;
  nullsub_1(v6, v5);

  return memcpy((v0 + 488), (v0 + 56), 0x82uLL);
}

id OUTLINED_FUNCTION_5_206(void **a1)
{
  v2 = *a1;

  return v2;
}

uint64_t OUTLINED_FUNCTION_5_208()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_209()
{
  v2 = STACK[0x240];
  *&STACK[0x200] = *&STACK[0x230];
  LOBYTE(STACK[0x210]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_5_210()
{
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  *(v0 + v1[2]) = 0;
  *(v0 + v1[3]) = 0;
  *(v0 + v1[4]) = 0;

  return type metadata accessor for TextLayout();
}

__n128 *OUTLINED_FUNCTION_5_212(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x676E696E6E694040;
  result[2].n128_u64[1] = 0xEA00000000004040;
  result[3].n128_u64[0] = v3;
  result[3].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_213(uint64_t result, char a2)
{
  *(v2 - 136) = result;
  *(v2 - 128) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_5_217(void *a1)
{

  return [a1 (v1 + 4081)];
}

void OUTLINED_FUNCTION_5_218(double a1, double a2, double a3, double a4)
{
  *(v4 - 88) = a1;
  *(v4 - 80) = a2;
  *(v4 - 72) = a3;
  *(v4 - 64) = a4;
  *(v4 - 56) = 0;
}

uint64_t OUTLINED_FUNCTION_5_224(uint64_t a1, uint64_t a2, char a3)
{

  return sub_1E41DBF30(v5, v6, a3, v4, v3, v8, v9);
}

id OUTLINED_FUNCTION_5_226()
{
  v3 = *(v1 + 3520);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_5_232(uint64_t a1)
{

  return sub_1E40402F0(v1, a1 + v2, type metadata accessor for StackedTextViews);
}

void *OUTLINED_FUNCTION_5_240(void *a1)
{

  return memcpy(a1, (v1 - 168), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_5_241(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_242()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_5_245()
{

  return [v0 (v1 + 942)];
}

__n128 OUTLINED_FUNCTION_5_246()
{
  v1 = *(v0 + 40);
  result = *(v0 + 24);
  *v0 = result;
  *(v0 + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_251(uint64_t a1, uint64_t a2)
{

  return sub_1E3EB9AD0(a1, a2, v2 & 1, 0, 0, 1, v3 - 224);
}

double OUTLINED_FUNCTION_5_254(double a1, double a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void OUTLINED_FUNCTION_5_255()
{
  v2 = *(v0 + 56);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_5_260()
{

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_5_263()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_5_264(uint64_t a1, ...)
{
  va_start(va, a1);

  return MEMORY[0x1EEE697B8](va, v1, v4, v2, v3);
}

uint64_t sub_1E326FEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAB0);
  sub_1E42013A4();
  sub_1E38400B0();
  return OUTLINED_FUNCTION_1_30();
}

uint64_t sub_1E326FF24()
{
  type metadata accessor for HorizontalContainerRelativeModifier();
  sub_1E42013A4();
  sub_1E3C62140();
  return swift_getWitnessTable();
}

uint64_t sub_1E326FF90()
{
  sub_1E42013A4();
  sub_1E40A9828();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

void sub_1E326FFE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1E327005C()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v1);
  sub_1E4206B94();
  v2 = VUISignpostLogObject();
  sub_1E41FFBA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  return sub_1E42063D4();
}

uint64_t sub_1E32707AC()
{
  v95 = v0;
  v1 = v0[9];
  v2 = v0[14];
  v3 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v4 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v91 = sub_1E324FBDC();
  v92 = *(v1 + 16);
  v92(v2);
  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_38_44(&dword_1E323F000, v7, v8, "NetworkLauncher: performPrewarmImageConnection begin");
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0 + 4;
  v9 = v0[4];
  v11 = v0[14];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[3];

  v93 = *(v12 + 8);
  v93(v11, v13);
  sub_1E327F518(v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v9);
  v16 = v0[8];
  if (EnumTagSinglePayload == 1)
  {
    v18 = v0 + 10;
    v17 = v0[10];
    sub_1E325F748(v0[3], &unk_1ECF363C0);
    (v92)(v17, v91, v16);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (OUTLINED_FUNCTION_16_53(v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v21);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v22, v23, "NetworkLauncher: warmupImageConnection url is nil, ignore");
      OUTLINED_FUNCTION_6_0();
    }

    v24 = v93;
    v10 = v0 + 8;
    goto LABEL_27;
  }

  v18 = v0 + 7;
  v25 = v0[7];
  v26 = v0[13];
  v27 = v0[5];
  v28 = v0[6];
  v29 = v0[4];
  (*(v27 + 32))(v25, v0[3], v29);
  (v92)(v26, v91, v16);
  (*(v27 + 16))(v28, v25, v29);
  v30 = sub_1E41FFC94();
  v89 = sub_1E4206814();
  v31 = os_log_type_enabled(v30, v89);
  v32 = v0[13];
  v33 = v0[8];
  v34 = v0[9];
  v35 = v0[6];
  v36 = v0[5];
  v37 = v0[4];
  if (v31)
  {
    swift_slowAlloc();
    v86 = OUTLINED_FUNCTION_10_11();
    v94 = v86;
    *v34 = 136315138;
    sub_1E326D148();
    v87 = v32;
    v88 = v33;
    v38 = sub_1E4207944();
    v40 = v39;
    log = v30;
    v41 = *(v36 + 8);
    v41(v35, v37);
    v42 = sub_1E3270FC8(v38, v40, &v94);

    *(v34 + 4) = v42;
    _os_log_impl(&dword_1E323F000, log, v89, "NetworkLauncher: warmupImageConnection url = %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v43 = v88;
    v44 = v87;
  }

  else
  {

    v41 = *(v36 + 8);
    v41(v35, v37);
    v44 = OUTLINED_FUNCTION_58_1();
  }

  v93(v44, v43);
  v90 = v41;
  v0[18] = v41;
  v45 = objc_opt_self();
  v46 = objc_opt_self();
  v47 = [v46 sharedInstance];
  v48 = [v47 launchConfig];

  v49 = [v48 minimalSessionImageLoading];
  v50 = [v45 sharedInstanceWithMinimalSession_];
  v0[19] = v50;
  if (!v50)
  {
    v61 = OUTLINED_FUNCTION_26_106();
    v62(v61);
    v63 = sub_1E41FFC94();
    v64 = sub_1E4206814();
    if (OUTLINED_FUNCTION_16_53(v64))
    {
      v65 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v65);
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v66, v67, "NetworkLauncher: warmupImageConnection VUIURLImageLoader init failed. ignore");
      OUTLINED_FUNCTION_6_0();
    }

    v68 = v0[11];
    v69 = v0[8];

    v70 = v68;
    v71 = v69;
    goto LABEL_26;
  }

  v51 = v50;
  v52 = [v46 sharedInstance];
  v53 = [v52 launchConfig];

  LODWORD(v52) = [v53 minimalSessionImageLoading];
  if (!v52 || (v54 = [v51 session], (v0[20] = v54) == 0))
  {
    v57 = [v46 sharedInstance];
    v58 = [v57 launchConfig];

    LOBYTE(v57) = [v58 minimalSessionImageLoading];
    if ((v57 & 1) == 0)
    {
      v59 = [v51 urlSession];
      v0[23] = v59;
      if (v59)
      {
        v55 = swift_task_alloc();
        v0[24] = v55;
        *v55 = v0;
        v56 = sub_1E3F72CFC;
        goto LABEL_17;
      }
    }

    v72 = OUTLINED_FUNCTION_26_106();
    v73(v72);
    v74 = sub_1E41FFC94();
    v75 = sub_1E4206814();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v0[12];
    v78 = v0[8];
    if (v76)
    {
      v79 = OUTLINED_FUNCTION_125_0();
      *v79 = 0;
      _os_log_impl(&dword_1E323F000, v74, v75, "NetworkLauncher: warmupImageConnection failed.", v79, 2u);
      OUTLINED_FUNCTION_55();
    }

    v70 = v77;
    v71 = v78;
LABEL_26:
    v93(v70, v71);
    v24 = v90;
LABEL_27:
    v80 = v0[16];
    v81 = v0[17];
    v82 = v0[15];
    v24(*v18, *v10);
    sub_1E4206B94();
    v83 = VUISignpostLogObject();
    sub_1E41FFBA4();

    (*(v80 + 8))(v81, v82);

    OUTLINED_FUNCTION_54();

    return v84();
  }

  v0[21] = [v54 session];
  v55 = swift_task_alloc();
  v0[22] = v55;
  *v55 = v0;
  v56 = sub_1E3F72AFC;
LABEL_17:
  v55[1] = v56;

  return sub_1E3283248();
}

unint64_t sub_1E3270FC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E327DB3C(v11, 0, 0, 1, a1, a2);
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
    sub_1E328438C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_1E327108C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  (*(v12 + 16))(v16, a2, v10);
  (*(v6 + 16))(v9, a1, v4);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v14 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v17, v16, v10);
  (*(v6 + 32))(v19 + v18, v9, v4);
  aBlock[4] = sub_1E327005C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E326FFE4;
  aBlock[3] = &block_descriptor_84_1;
  v20 = _Block_copy(aBlock);

  [v22 isFullTVAppEnabledWithCompletion_];
  _Block_release(v20);
}

uint64_t sub_1E3271304()
{
  v1 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
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

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_176(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_182(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E32722D4()
{
  v0 = objc_allocWithZone(type metadata accessor for MetricsDiskManager());
  result = sub_1E3272368(0xD000000000000021, 0x80000001E426E4A0, 0xD00000000000001FLL, 0x80000001E426E4D0);
  static MetricsDiskManager.shared = result;
  return result;
}

id sub_1E3272368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  *&v5[OBJC_IVAR___VUIMetricsDiskManager_sessionDefaults] = sub_1E3272418(a1, a2);
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  *&v5[OBJC_IVAR___VUIMetricsDiskManager_eventDefaults] = sub_1E3272418(a3, a4);
  v13.receiver = v5;
  v13.super_class = type metadata accessor for MetricsDiskManager();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1E3272418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1E4205ED4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1E327247C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return sub_1E3C2FC98();
}

__n128 OUTLINED_FUNCTION_37_12@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_14()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

BOOL OUTLINED_FUNCTION_84_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_17()
{

  return sub_1E4203904();
}

uint64_t OUTLINED_FUNCTION_37_18(uint64_t a1, uint64_t a2)
{

  return sub_1E3294EE4(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_37_19()
{

  return sub_1E373F6E0();
}

_OWORD *OUTLINED_FUNCTION_37_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1E329504C(&a14, &a11);
}

__n128 OUTLINED_FUNCTION_37_25(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

void *OUTLINED_FUNCTION_37_26()
{

  return memcpy(&STACK[0x2E0], &STACK[0x4B0], 0xE9uLL);
}

double OUTLINED_FUNCTION_200_0()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_28()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

uint64_t OUTLINED_FUNCTION_37_29()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_37_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_32(uint64_t a1)
{

  return sub_1E3A6929C(v2, 0, 0, 1, (v3 - 136), v1, a1);
}

uint64_t OUTLINED_FUNCTION_37_33()
{
}

double OUTLINED_FUNCTION_13_23()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_13_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 OUTLINED_FUNCTION_37_39()
{
  v0 = STACK[0x350];
  result = *&STACK[0x330];
  v2 = *&STACK[0x340];
  *&STACK[0x210] = *&STACK[0x330];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_41()
{
}

__n128 OUTLINED_FUNCTION_37_43()
{
  result = v0[1];
  *(v1 - 160) = result;
  *(v1 - 144) = v0[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_37_44(uint64_t result)
{
  *v1 = result;
  *(result + 200) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_45()
{
}

void OUTLINED_FUNCTION_37_48()
{
  *(v0 - 160) = 0x406D000000000000;
  *(v0 - 152) = 0;
  STACK[0x2B0] = 0x4070800000000000;
  LOBYTE(STACK[0x2B8]) = 0;
}

uint64_t OUTLINED_FUNCTION_37_49()
{

  return sub_1E4206124();
}

uint64_t OUTLINED_FUNCTION_37_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_55()
{
  v2 = STACK[0x300];
  v3 = *&STACK[0x2F0];
  *&STACK[0x2B0] = *&STACK[0x2E0];
  *&STACK[0x2C0] = v3;
  LOBYTE(STACK[0x2D0]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_37_56()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_37_58()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_37_60()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_37_62()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_37_63()
{
  v2[5] = v0;
  *v2 = v1;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_37_64()
{

  return sub_1E41FDFF4();
}

void OUTLINED_FUNCTION_37_65(void *a1@<X8>)
{
  *(v1 + a1[4]) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[5]) = 0;
}

uint64_t OUTLINED_FUNCTION_37_66()
{
  v1 = STACK[0x3FC];
  LODWORD(STACK[0x280]) = STACK[0x3F8];
  LOWORD(STACK[0x284]) = v1;

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_37_69()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
}

uint64_t OUTLINED_FUNCTION_37_71()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_79_2()
{
}

id OUTLINED_FUNCTION_37_75(void *a1)
{

  return [a1 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_37_76()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_37_77()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_79()
{
  *(v2 + v0) = v1;
}

id OUTLINED_FUNCTION_37_80(uint64_t a1)
{

  return [v1 v2];
}

uint64_t OUTLINED_FUNCTION_37_81()
{
  result = v1;
  *(v2 - 200) = v0;
  return result;
}

id MetricsLocalRecorder.init(storageManager:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___VUIMetricsLocalRecorder_currentSession] = 0;
  *&v1[OBJC_IVAR___VUIMetricsLocalRecorder_storageManager] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsLocalRecorder();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1E3272DB4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 56);
  (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3272E34()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 402) = v5;

  v7 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t *sub_1E32737D4()
{
  if (qword_1EE2992F0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AAC60;
}

uint64_t sub_1E3273824()
{
  type metadata accessor for BarItemSelectionManager();
  result = swift_initStaticObject();
  qword_1EE2AAC60 = result;
  return result;
}

uint64_t *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0()
{
  if (qword_1EE298520 != -1)
  {
    OUTLINED_FUNCTION_14_100();
  }

  return &qword_1EE2AAC20;
}

id sub_1E3273AE4()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessagingManager()) init];
  qword_1EE2AAC20 = result;
  return result;
}

uint64_t type metadata accessor for UnifiedMessagingManager()
{
  result = qword_1EE298510;
  if (!qword_1EE298510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3273B64()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3273C28()
{
  if (!qword_1EE28A450)
  {
    sub_1E41FE5D4();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A450);
    }
  }
}

void sub_1E3273CA4()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v56 = v3;
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v55 = v5 - v4;
  OUTLINED_FUNCTION_138();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v7 = sub_1E4203FF4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v52 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v15 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement;
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement] = 0;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser] = 0;
  v20 = &v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_placementIdMessageMap] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap] = v21;
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController] = 0;
  sub_1E4206BA4();
  v22 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v54 = *(v13 + 8);
  v54(v1, v11);
  v53 = objc_opt_self();
  v23 = [v53 vui_defaultBag];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];

    v26 = *&v0[v15];
    *&v0[v15] = v25;
  }

  else
  {
    sub_1E324FBDC();
    v27 = OUTLINED_FUNCTION_101();
    v28(v27);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_125_0();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "UnifiedMessagingManager::Failed to load AMS bag", v31, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v32 = OUTLINED_FUNCTION_16_0();
    v33(v32);
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  sub_1E4203FE4();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1E3274B40(&qword_1EE23B1F0, MEMORY[0x1E69E8030]);
  v34 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v34);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v35, v36);
  sub_1E42072E4();
  (*(v56 + 104))(v55, *MEMORY[0x1E69E8090], v57);
  *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue] = sub_1E4206A44();
  v59.receiver = v0;
  v59.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v59, sel_init);
  v38 = objc_opt_self();
  v39 = v37;
  if (([v38 isRunningInTVExtension] & 1) == 0)
  {
    sub_1E32753D0();
  }

  v40 = [v53 vui_defaultBag];
  if (v40)
  {
    v41 = v40;
    v42 = [objc_allocWithZone(MEMORY[0x1E698CB70]) &selRef:v40 initWithCanonicalID:?];

    v43 = *&v39[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser];
    *&v39[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser] = v42;
  }

  sub_1E32737D4();

  v44 = sub_1E32774E4();
  v46 = v45;

  v47 = &v39[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier];
  *v47 = v44;
  v47[1] = v46;

  v48 = objc_opt_self();
  v49 = [v48 defaultCenter];
  [v49 addObserver:v39 selector:sel_handleDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v50 = [v48 defaultCenter];
  [v50 addObserver:v39 selector:sel_handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

  sub_1E4206B94();
  v51 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v54(v1, v11);
  OUTLINED_FUNCTION_25_2();
}