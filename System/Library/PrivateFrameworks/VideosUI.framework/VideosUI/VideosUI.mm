id VUISignpostLogObject()
{
  if (VUISignpostLogObject_onceToken != -1)
  {
    VUISignpostLogObject_cold_1();
  }

  v1 = VUISignpostLogObject_logger;

  return v1;
}

void __VUISignpostLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.VideosUI", "Signpost");
  v1 = VUISignpostLogObject_logger;
  VUISignpostLogObject_logger = v0;
}

id VUIDefaultLogObject()
{
  if (VUIDefaultLogObject_onceToken != -1)
  {
    VUIDefaultLogObject_cold_1();
  }

  v1 = VUIDefaultLogObject_logger;

  return v1;
}

void sub_1E3243F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __VUIDefaultLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.VideosUI", "Default");
  v1 = VUIDefaultLogObject_logger;
  VUIDefaultLogObject_logger = v0;
}

void sub_1E3244E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v70 + 40));
  objc_destroyWeak((v69 + 40));
  objc_destroyWeak((v67 + 40));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&STACK[0x2C8]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x318]);
  objc_destroyWeak(&STACK[0x340]);
  objc_destroyWeak(&STACK[0x368]);
  objc_destroyWeak(&STACK[0x390]);
  objc_destroyWeak(&STACK[0x3B8]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x440]);
  objc_destroyWeak(&STACK[0x470]);
  objc_destroyWeak(&STACK[0x4A0]);
  objc_destroyWeak((v71 - 208));
  objc_destroyWeak((v71 - 200));
  _Unwind_Resume(a1);
}

uint64_t static VUISportsFavoriteService.initializeSportsManager()()
{
  v0 = sub_1E41FF154();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E41FF0C4();
  return (*(v2 + 8))(v6, v0);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_0_5(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_0_18(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_1E4206014();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  BYTE6(a9) = HIBYTE(a9);

  sub_1E3C2FCB8(&a9, &a11);
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_39()
{
  v1 = STACK[0x2C8];
  STACK[0x290] = STACK[0x2C0];
  LOBYTE(STACK[0x298]) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_1E37E9E48(v5, v6);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_0_43()
{
  *(v0 + 272) = 0;
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

void OUTLINED_FUNCTION_0_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  a21 = a23;
  a22 = a24;

  sub_1E3C2FCB8(&a9, v24 - 176);
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return sub_1E42070C4();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_0_57()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_0_61()
{
  v3 = *(v0 + 1744);
  *(v0 + 800) = *(v0 + 1728);
  *(v0 + 816) = v3;
  result = *(v0 + 1753);
  *(v1 + 25) = result;
  *(v0 + 841) = 0;
  *(v1 + 42) = *(v0 + 1720);
  *(v0 + 846) = *(v0 + 1724);
  *(v0 + 848) = v2;
  *(v0 + 856) = *(v0 + 1712);
  return result;
}

double OUTLINED_FUNCTION_4_3()
{
  *(v0 - 288) = 0;
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 320) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_0_70()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_0_77(void *a1@<X8>)
{
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 1;
  *(v1 + a1[3]) = 0;
  *(v1 + *a1) = 0;
}

uint64_t OUTLINED_FUNCTION_0_78@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  *(v4 + 9) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return OUTLINED_FUNCTION_18();
}

id OUTLINED_FUNCTION_13_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

__n128 OUTLINED_FUNCTION_37_0()
{
  v0 = STACK[0x320];
  result = *&STACK[0x300];
  v2 = *&STACK[0x310];
  *&STACK[0x2D0] = *&STACK[0x300];
  *&STACK[0x2E0] = v2;
  LOBYTE(STACK[0x2F0]) = v0;
  return result;
}

double OUTLINED_FUNCTION_0_84()
{
  result = 0.0;
  *(v0 - 352) = 0u;
  *(v0 - 336) = 0u;
  *(v0 - 320) = 0u;
  *(v0 - 304) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t result, char a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return sub_1E4205DB4();
}

void OUTLINED_FUNCTION_0_103(void *a1@<X8>)
{
  *(v3 + v1) = v2;
  *(v3 + a1[3]) = 0;
  *(v3 + a1[2]) = 0;
  *(v3 + a1[4]) = 0;
}

uint64_t OUTLINED_FUNCTION_0_105()
{

  return sub_1E42079A4();
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

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_111()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_0_113()
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_115()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_2_11()
{

  return [v0 (v1 + 2168)];
}

void OUTLINED_FUNCTION_0_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v11 = STACK[0x238];
  STACK[0x200] = STACK[0x230];
  LOBYTE(STACK[0x208]) = v11;

  sub_1E3C2FCB8(va, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_0_125(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

void OUTLINED_FUNCTION_0_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1E3C2FCB8(va, v4 - 128);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_0_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  sub_1E3C2FCB8(&a57, &STACK[0x280]);
}

uint64_t OUTLINED_FUNCTION_0_144(uint64_t a1)
{
  v2[8] = a1;
  v2[4] = v1;
  v2[5] = v3;

  return sub_1E4205F44();
}

uint64_t OUTLINED_FUNCTION_0_145()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_146()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_147()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_151(uint64_t a1)
{
  *(v4 - 256) = v1;
  *(v4 - 248) = v2;
  *(v4 - 240) = v3;
  *(v4 - 232) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_0_156()
{
  *(v2 - 176) = 0u;
  *(v2 - 160) = 0u;
  *(v2 - 144) = 0;

  return sub_1E393D92C(v1, v0, v2 - 176, 0);
}

double OUTLINED_FUNCTION_0_158()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

id OUTLINED_FUNCTION_27_1()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_0_162()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_0_166@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(v2 + *v1) = 0;

  return type metadata accessor for ViewHostingCell();
}

uint64_t OUTLINED_FUNCTION_0_173()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_0_175(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18)
{
  a17 = a18;

  sub_1E3C2FCB8(&a9, &a12);
}

uint64_t OUTLINED_FUNCTION_0_179()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_181()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_183(unint64_t *a1)
{

  return sub_1E3B9794C(a1);
}

uint64_t OUTLINED_FUNCTION_0_184()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_0_188()
{

  return swift_once();
}

id OUTLINED_FUNCTION_0_190(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_0_192@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 112) = a2;
  return v2 - 136;
}

uint64_t OUTLINED_FUNCTION_0_194()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_196()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_197()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_0_202()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_203()
{

  return sub_1E42076B4();
}

char *OUTLINED_FUNCTION_0_207@<X0>(unint64_t a1@<X8>)
{

  return sub_1E3CB6CE8((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_0_210()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_212()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_214()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_215()
{

  return sub_1E41FE804();
}

uint64_t OUTLINED_FUNCTION_0_221()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_230@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;
  *(v2 - 168) = 11;
  return v2 - 168;
}

void OUTLINED_FUNCTION_0_233(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  sub_1E3C2FCB8(&a39, &a71);
}

uint64_t OUTLINED_FUNCTION_0_235()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_237(unint64_t *a1)
{

  return sub_1E32AC3CC(a1);
}

id OUTLINED_FUNCTION_5_6()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_0_239(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  a9 = a1;

  return sub_1E41E1A64(&a9, nullsub_1, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_0_240()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_244()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_245()
{

  return swift_dynamicCast();
}

__n128 *OUTLINED_FUNCTION_0_255(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 11;
  v3 = *(v2 + 72);
  result[2].n128_u64[1] = *(v2 + 64);
  result[3].n128_u64[0] = v3;
  return result;
}

void OUTLINED_FUNCTION_0_258(void *a1@<X8>)
{
  *(v1 + a1[2]) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + *a1) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
}

void OUTLINED_FUNCTION_0_262(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  a41 = a47;
  a42 = a48;

  sub_1E3C2FCB8(&a11, &STACK[0x208]);
}

uint64_t OUTLINED_FUNCTION_0_263()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_264()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_267()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_270(void *a1@<X8>)
{
  *(v3 + v1) = v2;
  *(v3 + a1[4]) = 0;
  *(v3 + a1[3]) = 0;
  *(v3 + a1[2]) = 0;
}

uint64_t OUTLINED_FUNCTION_0_275()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_279()
{
  *(v1 - 320) = 0u;
  *(v1 - 304) = 0u;
  *(v1 - 288) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_281()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_283(uint64_t a1)
{
  *(v3 - 160) = 0u;
  *(v3 - 144) = 0u;
  *(v3 - 128) = 0;

  return sub_1E393D92C(v2, v1, v3 - 160, 0, a1);
}

uint64_t OUTLINED_FUNCTION_0_287(unint64_t *a1)
{

  return sub_1E3F0DAE0(a1);
}

uint64_t OUTLINED_FUNCTION_0_288(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_0_295@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  return sub_1E37FAED8(v3, v4);
}

uint64_t OUTLINED_FUNCTION_0_301()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_303()
{
  v6 = *(v2 + v1);
  *(v6 + 16) = v3 + 1;
  v7 = v6 + 16 * v3;
  *(v7 + 32) = v0;
  *(v7 + 40) = v4;
  *(v2 + v1) = v6;

  return swift_endAccess();
}

unint64_t OUTLINED_FUNCTION_0_304@<X0>(uint64_t a1@<X8>)
{
  v7 = (a1 << 10) | (16 * __clz(__rbit64(v3)));
  v8 = (*(*v1 + 48) + v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = (*(*v1 + 56) + v7);
  v12 = *v11;
  v13 = v11[1];
  *(v5 - 232) = v2;
  *(v5 - 224) = v4;
  *(v5 - 248) = v9;
  *(v5 - 240) = v10;
  v1[33] = v12;
  v1[34] = v13;

  return sub_1E32822E0();
}

uint64_t OUTLINED_FUNCTION_0_307()
{
  *(v1 - 168) = 0;
  *(v1 - 152) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_310()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_312()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_316()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_324()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_0_329(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_0_333(uint64_t a1)
{

  return sub_1E37C5830(a1, v1 + 1408, v2);
}

uint64_t OUTLINED_FUNCTION_0_336()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_0_338()
{

  return sub_1E3F9F164((v0 - 200));
}

uint64_t OUTLINED_FUNCTION_0_339@<X0>(void *a1@<X8>)
{
  v3 = v1 + *a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v1 + a1[3]) = 7;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[1]) = 0;

  return type metadata accessor for FeaturedLockupCell();
}

uint64_t OUTLINED_FUNCTION_0_341()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_0_343()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_0_344()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_349()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 144) = MEMORY[0x1E69E9820];
}

id OUTLINED_FUNCTION_0_350()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_0_356()
{
}

uint64_t OUTLINED_FUNCTION_0_359()
{
  *(v1 - 160) = 0;
  *(v1 - 192) = 0u;
  *(v1 - 176) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_361()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_363()
{

  return sub_1E3F9F164((v0 - 152));
}

uint64_t OUTLINED_FUNCTION_0_364()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_365()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_366()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_367()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_0_369()
{

  return swift_once();
}

double OUTLINED_FUNCTION_0_373@<D0>(void *a1@<X8>)
{
  v2 = v1 + *a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  return result;
}

uint64_t sub_1E324850C()
{
  sub_1E4202534();
  OUTLINED_FUNCTION_13_150();
  sub_1E3ECF09C(v0, v1);
  OUTLINED_FUNCTION_33_72();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_94_20();
  OUTLINED_FUNCTION_120_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_250_0();
  sub_1E41FE624();
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_26_98();
  sub_1E3ECF09C(v2, v3);
  OUTLINED_FUNCTION_80_18();
  sub_1E42039D4();
  sub_1E4201CD4();
  OUTLINED_FUNCTION_1_247();
  sub_1E3ECF09C(v4, v5);
  OUTLINED_FUNCTION_80_18();
  OUTLINED_FUNCTION_273_0();
  sub_1E4202054();
  OUTLINED_FUNCTION_5_196();
  sub_1E3ECF09C(v6, v7);
  OUTLINED_FUNCTION_80_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_10();
  sub_1E4201F54();
  sub_1E42037A4();
  OUTLINED_FUNCTION_94_20();
  OUTLINED_FUNCTION_94_20();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_111_9(WitnessTable);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_157_8();
  OUTLINED_FUNCTION_80_18();
  sub_1E42039D4();
  sub_1E4201F54();
  sub_1E42014E4();
  OUTLINED_FUNCTION_6_184();
  sub_1E3ECF09C(v9, v10);
  OUTLINED_FUNCTION_80_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  sub_1E4201F54();
  sub_1E42037A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B748);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B750);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_114_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_117_12();
  sub_1E3A1558C(v11, &qword_1ECF3B748);
  OUTLINED_FUNCTION_14_55();
  swift_getWitnessTable();
  sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_110_11(v12);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_35_64();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_57_33();
  sub_1E4201F54();
  OUTLINED_FUNCTION_79_24();
  OUTLINED_FUNCTION_157_8();
  return swift_getWitnessTable();
}

uint64_t sub_1E3248A18()
{
  sub_1E42013A4();
  sub_1E402D968();
  OUTLINED_FUNCTION_60();
  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_7_3(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_1E3DD5014(13, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return sub_1E41E1A64(&a9, v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_1E41FE8F4();
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return swift_once();
}

void OUTLINED_FUNCTION_55()
{

  JUMPOUT(0x1E69143B0);
}

__n128 OUTLINED_FUNCTION_2_24(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_4_9()
{
}

uint64_t OUTLINED_FUNCTION_2_31(uint64_t a1)
{

  return sub_1E37D82B8(a1, 0, sub_1E3741588);
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_2_34(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 OUTLINED_FUNCTION_2_39()
{
  result = *(v0 + 584);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *(v0 + 464) = result;
  *(v0 + 480) = v3;
  *(v0 + 496) = v4;
  *(v0 + 511) = *(v1 + 47);
  return result;
}

void OUTLINED_FUNCTION_2_41(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_2_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  return sub_1E37C5830(&a48, &a14, v48);
}

__n128 OUTLINED_FUNCTION_2_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, __int128 a23, unint64_t a24)
{
  *&STACK[0x2CF] = a22;
  *(v30 - 112) = a16;
  *&STACK[0x2DF] = a23;
  STACK[0x2EF] = a24;
  STACK[0x200] = v26;
  STACK[0x208] = v27;
  STACK[0x210] = v28;
  STACK[0x218] = v29;
  STACK[0x220] = a17;
  LOBYTE(STACK[0x228]) = *(v30 - 112);
  v31 = *&STACK[0x2D8];
  *&STACK[0x229] = *&STACK[0x2C8];
  *&STACK[0x239] = v31;
  result = *&STACK[0x2E7];
  *&STACK[0x248] = *&STACK[0x2E7];
  STACK[0x258] = v24;
  STACK[0x260] = v25;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_47(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_51()
{
  result = v0[1];
  *(v1 - 352) = result;
  *(v1 - 336) = v0[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, __int16 a46, char a47)
{
  a34 = v52;
  a35 = v51;
  LOBYTE(a36) = v47;
  *(&a36 + 1) = STACK[0x359];
  HIDWORD(a36) = STACK[0x35C];
  a37 = v50;
  a38 = 0;
  a39 = a17;
  *(v48 + 137) = *&STACK[0x371];
  *(v48 + 153) = *&STACK[0x381];
  *(v48 + 169) = *&STACK[0x391];
  *(v48 + 178) = *&STACK[0x39A];
  a47 = a19;

  return sub_1E37E6F2C(&a22);
}

uint64_t OUTLINED_FUNCTION_2_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_1E4205F14();
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_65(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v4 = a2;
  v4[1] = a3;
  *(v5 + 224) = a1;
  *(v5 + 232) = v3;
  *(v5 + 234) = BYTE2(v3);
}

id OUTLINED_FUNCTION_2_66()
{

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_1E41FE874();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_77(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_80()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_85()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_86()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_87()
{

  return sub_1E4201F44();
}

double OUTLINED_FUNCTION_2_88()
{
  *(v0 + 256) = 0;
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1E3C27638(23, &a9, 0, 0, v9);
}

uint64_t OUTLINED_FUNCTION_2_92()
{
  *(v6 - 136) = v2;
  *(v6 - 128) = v5;
  *(v6 - 120) = v3;
  *(v6 - 160) = v1;
  *(v6 - 152) = v0;
  *(v6 - 144) = v4;
  return v6 - 136;
}

void OUTLINED_FUNCTION_2_93()
{
  v0 = STACK[0x4B4];
  v1 = STACK[0x4B5];
  LODWORD(STACK[0x2E0]) = STACK[0x4B0];
  LOBYTE(STACK[0x2E4]) = v0;
  LOBYTE(STACK[0x2E5]) = v1;
}

uint64_t OUTLINED_FUNCTION_2_94()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  a55 = a61;
  a56 = a62;

  sub_1E3C2FCB8(&a19, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_2_97(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E393D92C(a1, 0, a3, 0, v3);
}

uint64_t OUTLINED_FUNCTION_2_98()
{

  return swift_dynamicCastClassUnconditional();
}

id OUTLINED_FUNCTION_2_100(void *a1)
{

  return sub_1E37E96E8(0x6C69662E79616C70, 0xE90000000000006CLL, a1);
}

void OUTLINED_FUNCTION_2_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  sub_1E3C2FCB8(&a45, &STACK[0x2C8]);
}

uint64_t OUTLINED_FUNCTION_2_102()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_2_105()
{

  return sub_1E41FE614();
}

uint64_t OUTLINED_FUNCTION_11_2()
{
}

void *OUTLINED_FUNCTION_2_107(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0xB8uLL);
}

double OUTLINED_FUNCTION_2_110()
{
  result = 0.0;
  *&STACK[0x200] = 0u;
  *&STACK[0x210] = 0u;
  STACK[0x220] = 0;
  return result;
}

void OUTLINED_FUNCTION_2_111()
{
  v1 = v0[49];
  v0[115] = v0[50];
  v0[116] = v1;
  v2 = v0[28];
  v0[117] = v0[29];
  v0[118] = v2;
  v0[119] = v0[48];
}

void OUTLINED_FUNCTION_2_114(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3E0] = a1;
  *&STACK[0x3E8] = a2;
  *&STACK[0x3F0] = a3;
  *&STACK[0x3F8] = a4;
  LOBYTE(STACK[0x400]) = 0;
}

uint64_t OUTLINED_FUNCTION_2_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a9 = 0u;
  a10 = 0u;
  a11 = 0;

  return sub_1E393D92C(v11, 0, &a9, 0);
}

uint64_t OUTLINED_FUNCTION_2_125()
{
  v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1E38C5A18(v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_129()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_2_130@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[15] = a2;
  result[11] = a3;
  result[12] = 0xD000000000000023;
  result[13] = v3 | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_131()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_132()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_134(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E8698];

  sub_1E3BC7394(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_2_136(uint64_t result, char a2)
{
  *(v2 - 104) = result;
  *(v2 - 96) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_137(uint64_t result, unint64_t a2)
{
  *(v2 - 96) = 0;
  *(v2 - 88) = 0xE000000000000000;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  *(v2 - 128) = result;
  *(v2 - 120) = a2;
  *(v2 - 112) = 0;
  *(v2 - 104) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_139()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_140()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_143@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a8 = a1;
  a9 = v9;
  LOBYTE(a5) = 0;

  return sub_1E39C29F0(&a5, 0);
}

void OUTLINED_FUNCTION_2_147(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
  *(v1 + a1[6]) = 0;
  *(v1 + a1[7]) = 0;
  *(v1 + a1[8]) = 0;
  *(v1 + a1[9]) = 0;
  *(v1 + a1[10]) = 0;
  *(v1 + a1[11]) = 0;
}

uint64_t OUTLINED_FUNCTION_2_149()
{
  *(v1 - 112) = v0;
  *(v1 - 136) = ceil(v2);
  sub_1E329504C((v1 - 136), (v1 - 168));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_2_150()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_151()
{
}

uint64_t OUTLINED_FUNCTION_2_155()
{

  return sub_1E4203AA4();
}

uint64_t OUTLINED_FUNCTION_2_156(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_2_161()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_2_164()
{
  v3 = *(v1 - 144);
  *v0 = *(v1 - 160);
  *(v0 + 16) = v3;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_2_166(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
  *(v1 + a1[6]) = 0;
}

void OUTLINED_FUNCTION_2_168()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
}

void OUTLINED_FUNCTION_2_170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, __int128 a56, char a57, uint64_t a58, __int128 a59, __int128 a60, char a61)
{
  a55 = a59;
  a56 = a60;
  a57 = a61;

  sub_1E3C2FCB8(&a13, &STACK[0x2B8]);
}

double OUTLINED_FUNCTION_2_171()
{

  return sub_1E375D7E8(v1 - 152, v0, (v1 - 112));
}

id OUTLINED_FUNCTION_2_174()
{

  return [v0 (v1 + 138)];
}

uint64_t OUTLINED_FUNCTION_2_180()
{

  return sub_1E42062F4();
}

double OUTLINED_FUNCTION_2_184@<D0>(void *a1@<X8>)
{
  *(v1 + a1[2]) = 0;
  *(v1 + *a1) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[6]) = 0;
  *(v1 + a1[7]) = 0;
  *(v1 + a1[8]) = 0;
  *(v1 + a1[9]) = 0;
  v2 = (v1 + a1[10]);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = (v1 + a1[11]);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + a1[12]) = 0;
  *(v1 + a1[13]) = 0;
  *(v1 + a1[14]) = 0;
  *(v1 + a1[15]) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_185()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_187(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return sub_1E41E1A64(&a9, v10, v11, &a10);
}

void OUTLINED_FUNCTION_2_189()
{

  sub_1E3C2FCB8(&STACK[0x210], &STACK[0x290]);
}

void OUTLINED_FUNCTION_2_190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  sub_1E3C2FCB8(&STACK[0x2C0], &a37);
}

void OUTLINED_FUNCTION_2_192()
{
  STACK[0x240] = v0;
  STACK[0x248] = v1;
  LOBYTE(STACK[0x250]) = 0;
}

uint64_t OUTLINED_FUNCTION_2_199()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_2_202()
{

  return swift_once();
}

CGFloat OUTLINED_FUNCTION_2_209(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGRect a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t rect, uint64_t a19, uint64_t a20)
{
  v23 = a20;
  v24 = v22;
  v25 = v21;

  return CGRectGetWidth(*&v23);
}

void OUTLINED_FUNCTION_2_212()
{
  v0 = STACK[0x3D8];
  STACK[0x3A0] = STACK[0x3D0];
  LOBYTE(STACK[0x3A8]) = v0;
}

uint64_t OUTLINED_FUNCTION_2_213()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_214@<X0>(__int16 a1@<W8>)
{
  *(v1 - 100) = a1;

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_2_215()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_216(uint64_t a1, uint64_t a2, unint64_t a3)
{

  return sub_1E32AE9B0(a3);
}

void OUTLINED_FUNCTION_2_219()
{
  *(v2 - 128) = 0x40406E696D4040;
  *(v2 - 120) = 0xE700000000000000;
  *(v2 - 144) = v1;
  *(v2 - 136) = v0;
}

uint64_t OUTLINED_FUNCTION_2_224()
{

  return sub_1E39DFFC8();
}

uint64_t OUTLINED_FUNCTION_2_226()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_236()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_243()
{

  return sub_1E4148C68(v0, v1, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_2_247()
{

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_2_248(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x1E69E9820];
  return result;
}

id OUTLINED_FUNCTION_2_249(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_2_250()
{

  return sub_1E406B5EC();
}

uint64_t OUTLINED_FUNCTION_2_256(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_2_258()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 200);
}

double OUTLINED_FUNCTION_2_266@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4)
{

  return sub_1E3277E60(0xD000000000000013, (a1 - 32) | 0x8000000000000000, v4, &a4);
}

uint64_t OUTLINED_FUNCTION_2_268()
{

  return sub_1E42072E4();
}

id OUTLINED_FUNCTION_2_269()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_2_270(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[4]) = 0;
}

id OUTLINED_FUNCTION_2_277()
{

  return [v1 (v2 + 2040)];
}

uint64_t OUTLINED_FUNCTION_2_279()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_280(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E393D92C(a1, v3, a3, 0);
}

uint64_t OUTLINED_FUNCTION_2_282()
{

  return sub_1E41FFBA4();
}

void OUTLINED_FUNCTION_2_283(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, char a41, uint64_t a42, __int128 a43, __int128 a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a39 = a43;
  a40 = a44;
  a41 = a45;

  sub_1E3C2FCB8(&a9, &a66);
}

uint64_t OUTLINED_FUNCTION_2_289()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_2_291()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_2_292()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_293()
{

  return sub_1E41FFBA4();
}

uint64_t sub_1E324B048()
{
  sub_1E42013A4();
  sub_1E42013A4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E324B0F0()
{
  sub_1E42013A4();
  sub_1E4037A2C();
  return swift_getWitnessTable();
}

Swift::Void __swiftcall VUITVAppLauncher.prewarmOnMain(prefetchSelectedPage:)(Swift::Bool prefetchSelectedPage)
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_115();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_37_47();
  v12(v11);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (OUTLINED_FUNCTION_45_42(v14))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_54_27(&dword_1E323F000, v15, v16, "Launcher: prewarmOnMain");
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v9 + 8);
  v17 = (v9 + 8);
  v18(v1, v7);
  sub_1E4206BA4();
  v19 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_11();

  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_13_8();
  v20(v21);
  sub_1E32550B8();
  sub_1E325A928();
  sub_1E3264DC0();
  if (v3)
  {
    sub_1E3267848();
  }

  sub_1E3267A10();
  sub_1E3267D94();
  sub_1E4206B94();
  v22 = VUISignpostLogObject();
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_35_11();

  v23 = OUTLINED_FUNCTION_13_8();
  v20(v23);
  OUTLINED_FUNCTION_25_2();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_27_5@<Q0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #5.0 }

  *(a1 + 8) = _Q0;
  __asm { FMOV            V0.2D, #8.0 }

  *(a1 + 24) = _Q0;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_27_7()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_51_2()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_104(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_11_4(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

void OUTLINED_FUNCTION_15_3(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_13_3(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = v5;
  a2.n128_u64[0] = v6;
  a3.n128_u64[0] = v7;
  a4.n128_u64[0] = v8;

  return j_nullsub_1(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_7_7()
{

  JUMPOUT(0x1E69143B0);
}

void OUTLINED_FUNCTION_43_1(__n128 a1)
{
  *(v4 + 8) = a1;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_44_0()
{
}

void OUTLINED_FUNCTION_83()
{
}

uint64_t OUTLINED_FUNCTION_27_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_27_14()
{

  return sub_1E325F6F0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_160()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_7_8()
{
}

uint64_t OUTLINED_FUNCTION_27_21()
{
  v2 = STACK[0x298];
  STACK[0x260] = STACK[0x290];
  LOBYTE(STACK[0x268]) = v2;

  return sub_1E3C3DE00(v0);
}

__n128 OUTLINED_FUNCTION_27_22@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 192);
  v3 = *(v1 - 176);
  v4 = *(v1 - 144);
  *(a1 + 64) = *(v1 - 160);
  *(a1 + 80) = v4;
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_27_23(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695C070];

  sub_1E392956C(319, a2, a3, v4);
}

id OUTLINED_FUNCTION_27_25()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_73()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return sub_1E4207664();
}

uint64_t OUTLINED_FUNCTION_27_27()
{

  return sub_1E4207704();
}

void OUTLINED_FUNCTION_3_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_27_30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_27_31()
{

  return sub_1E4201F44();
}

int64x2_t OUTLINED_FUNCTION_27_32@<Q0>(uint64_t a1@<X8>)
{
  result = vdupq_n_s64(0x404F800000000000uLL);
  *(v1 + a1) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_33()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_39()
{

  return sub_1E4206F24();
}

void OUTLINED_FUNCTION_27_40(void *a1)
{

  sub_1E399AB0C(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_27_42(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1E4200524();
}

void OUTLINED_FUNCTION_27_45()
{
  LOBYTE(STACK[0x240]) = 10;
  *(v0 - 240) = 10;
  LOBYTE(STACK[0x420]) = 11;
}

_OWORD *OUTLINED_FUNCTION_27_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_1E329504C(&a16, &a13);
}

uint64_t OUTLINED_FUNCTION_27_49(uint64_t result, char a2)
{
  *(v2 - 144) = result;
  *(v2 - 136) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_50(uint64_t result)
{
  *v1 = result;
  *(result + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_53()
{

  return OUTLINED_FUNCTION_18();
}

__n128 OUTLINED_FUNCTION_14_7()
{
  v0 = STACK[0x270];
  result = *&STACK[0x250];
  v2 = *&STACK[0x260];
  *&STACK[0x220] = *&STACK[0x250];
  *&STACK[0x230] = v2;
  LOBYTE(STACK[0x240]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_59(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;

  return sub_1E3C066E8(0, 0, v1, &unk_1E42CC638, a1);
}

uint64_t OUTLINED_FUNCTION_27_60()
{

  return sub_1E3C3DE00(v0);
}

double OUTLINED_FUNCTION_27_61(void *a1)
{

  return String.widthOfString(usingFont:)(a1);
}

uint64_t OUTLINED_FUNCTION_27_64()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_65()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_27_66()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_27_67()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_27_72()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_75()
{
  *(v0 + 98) = 2;
  *(v0 + 104) = 0;

  return type metadata accessor for ImageLayout();
}

uint64_t OUTLINED_FUNCTION_27_76()
{
}

uint64_t OUTLINED_FUNCTION_27_80()
{

  return swift_once();
}

void OUTLINED_FUNCTION_27_81()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x1E69E9820];
}

void OUTLINED_FUNCTION_27_84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1E3F4F314(319, a2, a3, a4, v5);
}

double OUTLINED_FUNCTION_27_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39)
{

  return sub_1E3277E60(0x746867696568, 0xE600000000000000, v39, &a39);
}

void OUTLINED_FUNCTION_27_87()
{

  JUMPOUT(0x1E6911380);
}

double OUTLINED_FUNCTION_27_88(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{

  return sub_1E3952BE0(v17, a16, v19, v18);
}

void OUTLINED_FUNCTION_27_91()
{
  v2 = *(v0 + 264);
  *v0 = *(v0 + 256);
  *(v0 + 8) = v2;

  sub_1E3C2FCB8(v0 + 16, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_27_92()
{

  return sub_1E41FFBA4();
}

__n128 OUTLINED_FUNCTION_27_97(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

_OWORD *OUTLINED_FUNCTION_27_99(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_1E329504C(&a21, v21);
}

uint64_t OUTLINED_FUNCTION_27_101(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_27_102()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_27_104()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_105()
{
  v2 = *(v0 + 620);
  *(v0 + 192) = *(v0 + 616);
  *(v0 + 196) = v2;

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_18_10()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_28@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_6_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_17()
{
  *(v1 - 192) = v0;
  *(v1 - 184) = 0;

  return sub_1E3C2FC98();
}

uint64_t OUTLINED_FUNCTION_36_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_22(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1E4206434();
}

uint64_t OUTLINED_FUNCTION_6_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W6>, uint64_t a4@<X8>, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, char a11, char a12)
{

  return sub_1E3EB9C0C(a1, a2, 0, 0, 0, 1, a3, 2, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_1E4206424();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_18_28(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_18_29()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_30()
{
}

uint64_t OUTLINED_FUNCTION_18_31()
{
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_26_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_18_32(uint64_t result)
{
  *(v2 - 192) = v1;
  *(v2 - 184) = result;
  *(v2 - 224) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_18_33(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v2 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  BYTE1(v4) = BYTE2(v4);

  sub_1E3C2FCB8(va, va1);
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return sub_1E3953554(v0, v1);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_40()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_18_41()
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_18_42()
{

  return [v0 (v1 + 589)];
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_getTupleTypeMetadata3();
}

uint64_t OUTLINED_FUNCTION_18_47(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_49@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 184) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_51()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_53()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_18_55()
{

  return sub_1E3C3DE00(v0);
}

void *OUTLINED_FUNCTION_18_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x410], 0xE9uLL);
}

uint64_t OUTLINED_FUNCTION_18_59(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_18_60()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_18_66(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_67()
{
}

id OUTLINED_FUNCTION_30_2()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_70()
{

  return type metadata accessor for FocusableText();
}

uint64_t OUTLINED_FUNCTION_18_72()
{

  return sub_1E3C10358(v1, v0 + 112);
}

id OUTLINED_FUNCTION_22_2()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_18_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_83()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_18_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_86()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_18_87()
{
  v0 = STACK[0x2B8];
  STACK[0x280] = STACK[0x2B0];
  LOBYTE(STACK[0x288]) = v0;
}

uint64_t OUTLINED_FUNCTION_18_88()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_18_89()
{
  v3 = *(v0 + 2336);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_18_91()
{
  v2 = *(v0 + 640);
  v3 = *(v0 + 624);
  *(v0 + 560) = *(v0 + 608);
  *(v0 + 576) = v3;
  *(v0 + 592) = v2;
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_93()
{

  return sub_1E41FE5D4();
}

__n128 OUTLINED_FUNCTION_18_94(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);
  v4 = *(v2 - 112);
  *v3 = *(v2 - 128);
  *(v3 + 16) = v4;
  result = *(v2 - 96);
  *(v3 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_95()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_18_101(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

unint64_t OUTLINED_FUNCTION_18_102(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 - 120);

  return sub_1E3270FC8(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_18_103()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_18_104()
{

  JUMPOUT(0x1E690E3F0);
}

uint64_t OUTLINED_FUNCTION_18_105(uint64_t result, double a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

id OUTLINED_FUNCTION_18_106()
{

  return sub_1E3E61218(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_111()
{

  return sub_1E41FDF44();
}

uint64_t OUTLINED_FUNCTION_18_114()
{
  *(v2 - 136) = *(*(v1 + v0) + 32);
  *(v2 - 176) = 11;
  return v2 - 136;
}

id OUTLINED_FUNCTION_18_117(void *a1)
{

  return [a1 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_18_118()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_18_120()
{

  return sub_1E4201F44();
}

void *OUTLINED_FUNCTION_18_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &STACK[0x3C8], 0x59uLL);
}

id OUTLINED_FUNCTION_18_124()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_18_125()
{
  v2 = STACK[0x288];
  STACK[0x250] = STACK[0x280];
  LOBYTE(STACK[0x258]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_18_126@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(0xD000000000000015, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_18_127()
{

  return sub_1E4205CB4();
}

__n128 OUTLINED_FUNCTION_18_129(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  result = *(v1 + 64);
  *(a1 + 64) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_130(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2A0] = a1;
  *&STACK[0x2A8] = a2;
  *&STACK[0x2B0] = a3;
  *&STACK[0x2B8] = a4;
  LOBYTE(STACK[0x2C0]) = 0;

  return sub_1E3C2FC98();
}

unint64_t OUTLINED_FUNCTION_18_132()
{

  return sub_1E3FC8EE4();
}

uint64_t OUTLINED_FUNCTION_18_133()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_18_138()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_18_141()
{

  return sub_1E4206764();
}

__n128 OUTLINED_FUNCTION_18_145()
{
  v1 = STACK[0x4F0];
  result = *(v0 + 1040);
  v3 = *(v0 + 1056);
  *(v0 + 992) = result;
  *(v0 + 1008) = v3;
  LOBYTE(STACK[0x4C0]) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1E4189040(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_18_152()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E324D894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A228);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E4201F54();
  OUTLINED_FUNCTION_1_25();
  sub_1E32752B0(v0, &qword_1ECF2A228);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_3_18()
{

  sub_1E3C2FCB8(&STACK[0x210], &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  v2 = STACK[0x260];
  v3 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v3;
  LOBYTE(STACK[0x230]) = v2;

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_65_0()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return sub_1E3C3DE00(v0);
}

double OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E3277E60(v12, v13, v11, &a11);
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_3_31()
{
  v0 = STACK[0x268];
  STACK[0x230] = STACK[0x260];
  LOBYTE(STACK[0x238]) = v0;
}

uint64_t OUTLINED_FUNCTION_3_35()
{
  v3 = *(v1 - 248);

  return sub_1E4148C68(v0, v3, v1 - 192);
}

uint64_t OUTLINED_FUNCTION_3_37()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_3_38(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981790];

  sub_1E381E770(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_3_40()
{
  v3 = *(v1 - 240);
  v4 = *(v0 + 64);
  *v4 = *(v1 - 256);
  *(v4 + 16) = v3;
  *(v4 + 32) = *(v1 - 224);
  *(v4 + 48) = *(v1 - 208);

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_3_43()
{

  return sub_1E3834BC8();
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  a16 = *(v16 + 32);
  a13 = *(v16 + 32);
  *(v17 - 40) = *(&a16 + 1);

  return sub_1E38406FC(v17 - 40, &a11);
}

uint64_t OUTLINED_FUNCTION_3_47()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_3_51()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_1E3887DC4(v4, v2, 1);
}

uint64_t OUTLINED_FUNCTION_3_52()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_3_57(double a1, double a2, double a3, double a4)
{
  *&STACK[0x208] = a1;
  *&STACK[0x210] = a2;
  *&STACK[0x218] = a3;
  *&STACK[0x220] = a4;
  LOBYTE(STACK[0x228]) = 0;
}

__n128 OUTLINED_FUNCTION_3_58()
{
  result = *(v0 - 128);
  *(v0 - 192) = *(v0 - 144);
  *(v0 - 176) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_60(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

uint64_t OUTLINED_FUNCTION_3_63()
{
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_32_4(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_3_68()
{

  return sub_1E4200BF4();
}

uint64_t OUTLINED_FUNCTION_3_75()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_3_77()
{
  *(v0 + 424) = v2;
  *(v0 + 432) = v1;
  *(v0 + 440) = *(v0 + 176);
  *(v0 + 441) = *(v0 + 168);
}

uint64_t OUTLINED_FUNCTION_3_78@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1E395EDE8;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_3_80()
{

  return sub_1E4207414();
}

unint64_t OUTLINED_FUNCTION_3_82()
{

  return sub_1E38EA7FC();
}

uint64_t OUTLINED_FUNCTION_3_84()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_3_87()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_88()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_91(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_3_93()
{

  return sub_1E4205F14();
}

uint64_t OUTLINED_FUNCTION_3_96(uint64_t a1, unint64_t *a2)
{

  return sub_1E3280A90(0, a2);
}

uint64_t OUTLINED_FUNCTION_3_97()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_3_98(unint64_t *a1)
{

  return sub_1E3A2682C(a1);
}

__n128 OUTLINED_FUNCTION_3_99(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

void OUTLINED_FUNCTION_3_100()
{
  v2 = v0[4];
  *v0 = v0[3];
  v0[1] = v2;

  sub_1E3C2FCB8(&STACK[0x2C0], &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_3_102()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_3_103()
{

  return sub_1E3A54650();
}

uint64_t OUTLINED_FUNCTION_3_107()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_92(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

id OUTLINED_FUNCTION_3_114(void *a1)
{

  return [a1 (v1 + 681)];
}

void OUTLINED_FUNCTION_3_116(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1E3C2FCB8(va, &STACK[0x220]);
}

uint64_t OUTLINED_FUNCTION_3_119()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x1E69143B0);
}

double OUTLINED_FUNCTION_3_124()
{
  *(v0 - 240) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_125()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_3_127()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_128()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_132()
{

  return sub_1E3F9F164((v0 - 192));
}

void OUTLINED_FUNCTION_3_135(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E8660];

  sub_1E3BC7394(319, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_3_138()
{
  v1 = *(v0 + 24);
  *v0 = *(v0 + 16);
  *(v0 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_3_149()
{

  return sub_1E4205ED4();
}

uint64_t OUTLINED_FUNCTION_3_151()
{

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_3_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  sub_1E3C2FCB8(&a39, v39 - 240);
}

void OUTLINED_FUNCTION_3_153()
{

  JUMPOUT(0x1E69109E0);
}

double OUTLINED_FUNCTION_3_157@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_161()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_3_163()
{
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  *(v0 + v1[2]) = 0;

  return type metadata accessor for SeparatorView();
}

uint64_t OUTLINED_FUNCTION_3_165()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_172()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_3_173(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  a49 = a55;
  a50 = a56;

  sub_1E3C2FCB8(&a13, &STACK[0x2B8]);
}

id OUTLINED_FUNCTION_3_174()
{

  return [v0 (v2 + 3759)];
}

uint64_t OUTLINED_FUNCTION_3_175()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_176()
{

  return swift_dynamicCast();
}

char *OUTLINED_FUNCTION_3_182@<X0>(uint64_t *a1@<X8>)
{

  return sub_1E3DAFAB0(a1, a1 + 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_184()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_185(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  sub_1E3C2FCB8(&a31, &STACK[0x378]);
}

double OUTLINED_FUNCTION_3_186()
{
  *(v0 + v1[2]) = 0;
  *(v0 + v1[3]) = 0;
  v2 = v0 + v1[4];
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + v1[5]) = 0;
  v4 = (v0 + v1[6]);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[8]) = 0;
  *(v0 + v1[9]) = 5;
  *(v0 + v1[10]) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_187()
{

  return sub_1E393D92C(v2, v1, v0 + 112, 0);
}

void OUTLINED_FUNCTION_3_191()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_3_192()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_193()
{
  v1 = STACK[0x260];
  v2 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v1;

  return sub_1E3C2FC98();
}

uint64_t OUTLINED_FUNCTION_3_195(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_3_201()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_202()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_205(void **a1)
{
  v3 = *a1;
  *(v1 - 128) = 0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_206()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_3_209()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_3_215(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{

  return sub_1E3294EE4(&a42, &a11, v42);
}

uint64_t OUTLINED_FUNCTION_3_216()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_217()
{

  return sub_1E4203B34();
}

unint64_t OUTLINED_FUNCTION_3_218(uint64_t a1, uint64_t a2)
{
  *(v4 - 112) = a1;
  *(v4 - 104) = a2;
  *(v4 - 128) = 0x404072684040;
  *(v4 - 120) = 0xE600000000000000;
  *(v4 - 144) = v3;
  *(v4 - 136) = v2;

  return sub_1E32822E0();
}

uint64_t OUTLINED_FUNCTION_3_224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1E393D9C4(v4, 0, va, 0);
}

uint64_t OUTLINED_FUNCTION_3_225()
{
  v2 = STACK[0x2A0];
  v3 = *&STACK[0x290];
  *&STACK[0x250] = *&STACK[0x280];
  *&STACK[0x260] = v3;
  LOBYTE(STACK[0x270]) = v2;

  return sub_1E3C3DE00(v0);
}

unint64_t OUTLINED_FUNCTION_3_234()
{

  return sub_1E3FAF850(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_236()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_237()
{

  sub_1E3C2FCB8(&STACK[0x210], &STACK[0x2A0]);
}

uint64_t OUTLINED_FUNCTION_3_246()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_248()
{

  return sub_1E42015C4();
}

void OUTLINED_FUNCTION_3_249(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  a39 = a45;
  a40 = a46;

  sub_1E3C2FCB8(&a9, &STACK[0x228]);
}

double OUTLINED_FUNCTION_3_250()
{
  result = 0.0;
  v2 = (v0 - 144);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_3_253(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1E3C2FCB8(va, &STACK[0x2B8]);
}

id OUTLINED_FUNCTION_3_256(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_3_257()
{

  return sub_1E406BBB4();
}

uint64_t OUTLINED_FUNCTION_3_259()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_3_261()
{
  v1 = v0[91];
  v2 = v0[92];
  __swift_project_boxed_opaque_existential_1(v0 + 88, v1);
  v0[47] = v1;
  v0[48] = *(*(v2 + 8) + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0 + 44);
}

unint64_t OUTLINED_FUNCTION_3_262()
{
  *(v3 + 4) = v2;
  *(v3 + 12) = 2080;

  return sub_1E3270FC8(v0, v1 | 0x8000000000000000, (v4 - 88));
}

void OUTLINED_FUNCTION_3_269()
{

  JUMPOUT(0x1E690DE70);
}

uint64_t OUTLINED_FUNCTION_3_270()
{

  return sub_1E4205C44();
}

uint64_t OUTLINED_FUNCTION_3_271()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_281@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1E42078F4();
}

double OUTLINED_FUNCTION_3_282()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return sub_1E3AC5CD8(v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_3_283()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_288()
{

  return sub_1E42068B4();
}

uint64_t OUTLINED_FUNCTION_3_289()
{

  return sub_1E37E93E8(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_3_291()
{

  return sub_1E42072E4();
}

uint64_t sub_1E324FB30()
{
  type metadata accessor for RoutingView();

  return swift_getWitnessTable();
}

uint64_t sub_1E324FB78()
{
  sub_1E42013A4();
  sub_1E41884BC();
  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_7_11(double a1, double a2, double a3, double a4)
{
  *&STACK[0x268] = a1;
  *&STACK[0x270] = a2;
  *&STACK[0x278] = a3;
  *&STACK[0x280] = a4;
  LOBYTE(STACK[0x288]) = 0;
}

__n128 OUTLINED_FUNCTION_4_20()
{
  result = v0[194];
  v0[140] = result;
  v0[141].n128_u64[0] = v0[195].n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_4_22(void *result)
{
  result[2] = v4;
  result[3] = v2;
  result[4] = v3;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_41_1()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1E4148C68(v6, a3, va);
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_52(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_56(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_58()
{
  v3 = *(v0 + 1664);
  v4 = *(v0 + 1680);
  *(v1 + 89) = *(v0 + 1696);
  *(v1 + 73) = v4;
  *(v1 + 57) = v3;

  return sub_1E375C31C(v0 + 800);
}

uint64_t OUTLINED_FUNCTION_4_60(uint64_t result)
{
  LOWORD(STACK[0x290]) = result;
  LOBYTE(STACK[0x292]) = BYTE2(result);
  LOBYTE(STACK[0x293]) = BYTE3(result);
  LOBYTE(STACK[0x294]) = BYTE4(result);
  LOBYTE(STACK[0x295]) = BYTE5(result);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_4_63()
{

  return sub_1E42062F4();
}

void OUTLINED_FUNCTION_7_15(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + a2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  sub_1E37C52A4(v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_4_72()
{

  return sub_1E3F9F164((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_4_73()
{

  return sub_1E4207B44();
}

double OUTLINED_FUNCTION_4_74@<D0>(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  v2 = v1 + a1[3];
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[5]) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_76()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 288) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_9_7()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_4_79()
{

  return sub_1E4207644();
}

uint64_t OUTLINED_FUNCTION_4_81()
{

  return sub_1E399D3C8(v0, 0);
}

uint64_t OUTLINED_FUNCTION_4_84()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_4_89()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_4_90()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_4_93()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_95(uint64_t result)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = result;
  *(v2 - 168) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_97()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_4_98()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_4_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(__dst, a10);

  return memcpy(__dst, &STACK[0x320], 0x59uLL);
}

void OUTLINED_FUNCTION_4_101(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[4]) = 0;
  *(v1 + a1[3]) = 0;
  *(v1 + a1[1]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_106()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_4_109()
{

  return sub_1E42076B4();
}

uint64_t OUTLINED_FUNCTION_4_112()
{

  return sub_1E4207384();
}

uint64_t OUTLINED_FUNCTION_4_115()
{

  return OUTLINED_FUNCTION_18();
}

__n128 OUTLINED_FUNCTION_4_118()
{
  v1 = STACK[0x2B0];
  result = *(v0 + 480);
  v3 = *(v0 + 496);
  *(v0 + 432) = result;
  *(v0 + 448) = v3;
  LOBYTE(STACK[0x280]) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_119(unint64_t *a1)
{

  return sub_1E3B03310(a1);
}

uint64_t OUTLINED_FUNCTION_4_122()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_4_124()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_4_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return __swift_project_boxed_opaque_existential_1(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_4_129(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

void OUTLINED_FUNCTION_4_134()
{
  v0 = STACK[0x454];
  LODWORD(STACK[0x240]) = STACK[0x450];
  LOWORD(STACK[0x244]) = v0;
}

uint64_t OUTLINED_FUNCTION_4_138(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 32) = v2;
  return v1;
}

void OUTLINED_FUNCTION_4_139(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2B8] = a1;
  *&STACK[0x2C0] = a2;
  *&STACK[0x2C8] = a3;
  *&STACK[0x2D0] = a4;
  LOBYTE(STACK[0x2D8]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_142()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0;

  return sub_1E4200634();
}

uint64_t OUTLINED_FUNCTION_4_144()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_4_145@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *(v2 - 144) = *v3;
  *(v2 - 128) = v4;
  return result;
}

id OUTLINED_FUNCTION_4_153(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_4_156()
{

  return sub_1E3C69B60(v0, v1, sub_1E327D3B4);
}

void OUTLINED_FUNCTION_4_158()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_4_160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

unint64_t OUTLINED_FUNCTION_4_161@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD000000000000017, (a1 - 32) | 0x8000000000000000, (v1 - 128));
}

char *OUTLINED_FUNCTION_4_162(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_1E3CB6CE8(0, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_4_165(__n128 a1, __n128 a2)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2].n128_u8[0] = *(v4 - 76);
  return v2 + 8;
}

void OUTLINED_FUNCTION_4_167(double a1, double a2, double a3, double a4)
{
  *&STACK[0x280] = a1;
  *&STACK[0x288] = a2;
  *&STACK[0x290] = a3;
  *&STACK[0x298] = a4;
  LOBYTE(STACK[0x2A0]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_168()
{
}

uint64_t OUTLINED_FUNCTION_4_170()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_172(double a1)
{
  v2 = *(v1 + 608);
  if (v2 >= a1)
  {
    v2 = a1;
  }

  *(v1 + 608) = v2;
}

uint64_t OUTLINED_FUNCTION_4_173()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_4_175()
{
  v0 = STACK[0x380];
  result = *&STACK[0x360];
  v2 = *&STACK[0x370];
  *&STACK[0x330] = *&STACK[0x360];
  *&STACK[0x340] = v2;
  LOBYTE(STACK[0x350]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_181()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_182()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_4_186()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_4_189()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_196()
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 96) = 0;
  return v0;
}

double OUTLINED_FUNCTION_4_197()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

void OUTLINED_FUNCTION_4_198(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2C0] = a1;
  *&STACK[0x2C8] = a2;
  *&STACK[0x2D0] = a3;
  *&STACK[0x2D8] = a4;
  LOBYTE(STACK[0x2E0]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_201()
{
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_204()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_207(void *a1@<X8>)
{
  *(v2 + *a1) = v1;
  *(v2 + a1[2]) = v1;
  *(v2 + a1[1]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_4_211(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14, char a15)
{
  a12 = a13;

  sub_1E3C2FCB8(&a12, &a15);
}

uint64_t OUTLINED_FUNCTION_4_213(unint64_t *a1)
{

  return sub_1E32752B0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_4_214()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_4_216()
{

  return sub_1E42037C4();
}

void OUTLINED_FUNCTION_4_219()
{
}

uint64_t OUTLINED_FUNCTION_4_220()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_4_222(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  a45 = a51;
  a46 = a52;

  sub_1E3C2FCB8(&a9, &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_4_223()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_4_225()
{
  v2 = STACK[0x300];
  v3 = *&STACK[0x2F0];
  *&STACK[0x2B0] = *&STACK[0x2E0];
  *&STACK[0x2C0] = v3;
  LOBYTE(STACK[0x2D0]) = v2;

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_4_231()
{
  v0 = STACK[0x4E4];
  v1 = STACK[0x4E5];
  LODWORD(STACK[0x390]) = STACK[0x4E0];
  LOBYTE(STACK[0x394]) = v0;
  LOBYTE(STACK[0x395]) = v1;
}

void OUTLINED_FUNCTION_4_233()
{

  sub_1E3C2FCB8(&STACK[0x210], &STACK[0x298]);
}

uint64_t OUTLINED_FUNCTION_4_235()
{
}

uint64_t OUTLINED_FUNCTION_4_236(uint64_t result, uint64_t a2)
{
  *v4 = result;
  v4[1] = a2;
  v5 = v2 + *(v3 + 24);
  *v5 = sub_1E3FC78F4;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  return result;
}

char *OUTLINED_FUNCTION_4_239()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3ABC5C0(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_240()
{
}

_OWORD *OUTLINED_FUNCTION_4_241(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18)
{
  a16 = a1;
  *&a14 = v18;

  return sub_1E329504C(&a14, &a18);
}

void OUTLINED_FUNCTION_4_243(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  *(v1 + a1[1]) = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
}

uint64_t OUTLINED_FUNCTION_4_244()
{

  return sub_1E3F9F164((v0 - 128));
}

_OWORD *OUTLINED_FUNCTION_4_246(uint64_t a1, uint64_t a2)
{
  *(v3 - 120) = v2;
  *(v3 - 144) = a1;
  *(v3 - 136) = a2;

  return sub_1E329504C((v3 - 144), (v3 - 192));
}

uint64_t OUTLINED_FUNCTION_4_256()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_258()
{
  sub_1E3251BE8((v0 + 352), v0 + 528);
  v1 = *(v0 + 728);
  __swift_project_boxed_opaque_existential_1((v0 + 704), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_259()
{
  v3 = *(v0 + 704);
  *(v0 + 1160) = v1;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = v3;
  return v2 + 17;
}

void OUTLINED_FUNCTION_4_260(uint64_t a1@<X8>)
{
  v1[12] = sub_1E3E53E08;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_4_264()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_4_265()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_4_276()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_278()
{
  v0 = STACK[0x534];
  LODWORD(STACK[0x350]) = STACK[0x530];
  LOWORD(STACK[0x354]) = v0;
}

uint64_t OUTLINED_FUNCTION_4_279()
{

  return sub_1E41FE874();
}

id OUTLINED_FUNCTION_4_284(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_4_285(uint64_t a1)
{

  return sub_1E37E93E8(a1, v1 + 3752, v2);
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_1E324FBDC();
}

uint64_t OUTLINED_FUNCTION_4_287()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_4_288()
{

  JUMPOUT(0x1E6911380);
}

uint64_t OUTLINED_FUNCTION_4_290(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void OUTLINED_FUNCTION_4_291()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t sub_1E3251BE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E3251C94()
{
  sub_1E42013A4();
  sub_1E4036468();
  return swift_getWitnessTable();
}

uint64_t sub_1E3251CF8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1E41FFCB4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1E3251D6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E41FFCA4();
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

uint64_t OUTLINED_FUNCTION_124_0(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v2 + 32) = v3;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_2()
{
}

uint64_t OUTLINED_FUNCTION_124_1(unint64_t a1)
{
  sub_1E32AE9B0(a1);
}

void OUTLINED_FUNCTION_124_3(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0x737365536E696F6ALL, v3, a2);
}

uint64_t OUTLINED_FUNCTION_124_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1E39F8BAC(va);
}

void OUTLINED_FUNCTION_124_5()
{
  STACK[0x250] = 0x4072600000000000;
  LOBYTE(STACK[0x258]) = 0;
  STACK[0x220] = 0x4072600000000000;
  LOBYTE(STACK[0x228]) = 0;
}

id OUTLINED_FUNCTION_124_6()
{

  return [v0 (v1 + 276)];
}

uint64_t OUTLINED_FUNCTION_124_7()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_5_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_45_0(uint64_t a1, double a2)
{
  *(a1 + 40) = a2;
  type metadata accessor for TraitKey(0);
  type metadata accessor for Weight(0);
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_6_33(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_12_9(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_6_38()
{

  return sub_1E4201F44();
}

id OUTLINED_FUNCTION_6_40(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_6_42@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 216) = a3;
  *(result + 200) = a3;
  *(result + 184) = a3;
  *(result + 168) = a3;
  *(result + 152) = a3;
  *(result + 136) = a3;
  *(result + 120) = a3;
  *(result + 104) = a3;
  *(result + 88) = a3;
  *(result + 72) = a3;
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_46()
{

  return sub_1E4201744();
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_24_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_50()
{
}

uint64_t OUTLINED_FUNCTION_6_52(double a1, double a2, double a3, double a4)
{
  v8 = v6 + *(*(v4 + 144) + 36);
  *v8 = v5;
  *(v8 + 8) = a1;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = 0;

  return sub_1E4200AE4();
}

void OUTLINED_FUNCTION_6_55()
{

  sub_1E39050C0(v1, v2, v0, v3);
}

void OUTLINED_FUNCTION_8_8(double a1, double a2, double a3, double a4)
{
  *&STACK[0x350] = a1;
  *&STACK[0x358] = a2;
  *&STACK[0x360] = a3;
  *&STACK[0x368] = a4;
  LOBYTE(STACK[0x370]) = 0;
}

uint64_t OUTLINED_FUNCTION_6_57()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_6_67(uint64_t result)
{
  *(v1 + 248) = result;
  *(v1 + 256) = 20;
  *(v1 + 264) = 0x4010000000000000;
  *(v1 + 272) = 0;
  *(v1 + 280) = 1025;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_70()
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t OUTLINED_FUNCTION_6_72()
{
  v4 = *(v2 - 168) == 0;

  return sub_1E34AF4E4(v0, v4, v1);
}

id OUTLINED_FUNCTION_6_79(void *a1)
{

  return [a1 (v1 + 681)];
}

uint64_t OUTLINED_FUNCTION_6_81()
{
  *(v0 + 16) = *(v1 - 136);

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_16_6()
{
}

id OUTLINED_FUNCTION_6_84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [a1 (v5 + 2936)];
}

id OUTLINED_FUNCTION_6_85(void *a1)
{

  return [a1 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_6_87()
{
}

uint64_t OUTLINED_FUNCTION_6_90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 152);

  return sub_1E329505C(v0 - 112);
}

id OUTLINED_FUNCTION_33_2()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_6_95()
{
  STACK[0x5D8] = v1;
  STACK[0x5E0] = v0;

  return sub_1E3782C70(&STACK[0x5D8]);
}

uint64_t OUTLINED_FUNCTION_6_96()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_100()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_6_104(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9 & 1);
}

uint64_t OUTLINED_FUNCTION_6_108()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_6_110@<X0>(__int16 a1@<W8>)
{
  *(v1 - 106) = a1;

  return sub_1E4206254();
}

__n128 OUTLINED_FUNCTION_6_111()
{
  v0 = STACK[0x3E0];
  result = *&STACK[0x3C0];
  v2 = *&STACK[0x3D0];
  *&STACK[0x390] = *&STACK[0x3C0];
  *&STACK[0x3A0] = v2;
  LOBYTE(STACK[0x3B0]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_113()
{
}

uint64_t OUTLINED_FUNCTION_6_115()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 192);

  return sub_1E329505C(v0 - 152);
}

void OUTLINED_FUNCTION_12_10(double a1, double a2, double a3, double a4)
{
  *&STACK[0x290] = a1;
  *&STACK[0x298] = a2;
  *&STACK[0x2A0] = a3;
  *&STACK[0x2A8] = a4;
  LOBYTE(STACK[0x2B0]) = 0;
}

uint64_t OUTLINED_FUNCTION_6_118()
{

  return sub_1E3C3DE00(v0);
}

double OUTLINED_FUNCTION_6_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1E375D7E8(va, v12, (v13 - 120));
}

uint64_t OUTLINED_FUNCTION_6_123()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_128()
{
  *(v0 + 80) = *(v0 + 96);

  return OUTLINED_FUNCTION_18();
}

void OUTLINED_FUNCTION_6_132()
{
  *(v0 + v2[1]) = 0;
  v3 = v0 + v2[2];
  *v3 = 0;
  *(v3 + 8) = v1;
  *(v0 + v2[3]) = 0;
  *(v0 + v2[4]) = 0;
  *(v0 + v2[5]) = v1;
  *(v0 + v2[6]) = 0;
}

double OUTLINED_FUNCTION_6_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E3277E60(v11, v13, v12, &a11);
}

id OUTLINED_FUNCTION_6_144(void *a1)
{

  return sub_1E3D23E1C(a1, v1, v2, 0);
}

void OUTLINED_FUNCTION_6_145(double a1, double a2, double a3, double a4)
{
  *&STACK[0x400] = a1;
  *&STACK[0x408] = a2;
  *&STACK[0x410] = a3;
  *&STACK[0x418] = a4;
  LOBYTE(STACK[0x420]) = 0;
}

void OUTLINED_FUNCTION_6_146(double a1, double a2, double a3, double a4)
{
  *&STACK[0x330] = a1;
  *&STACK[0x338] = a2;
  *&STACK[0x340] = a3;
  *&STACK[0x348] = a4;
  LOBYTE(STACK[0x350]) = 0;
}

uint64_t OUTLINED_FUNCTION_6_149()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_151()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_6_152()
{

  return [v0 (v1 + 138)];
}

uint64_t OUTLINED_FUNCTION_6_154()
{
  *(v0 - 240) = 0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return 0;
}

void OUTLINED_FUNCTION_62(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  sub_1E3C2FCB8(&a43, &STACK[0x2D8]);
}

void OUTLINED_FUNCTION_6_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  a45 = a51;
  a46 = a52;

  sub_1E3C2FCB8(&a15, &STACK[0x260]);
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_6_160()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_6_165(uint64_t result, char a2)
{
  *(v2 - 240) = result;
  *(v2 - 232) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_6_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  sub_1E3C2FCB8(&a27, &STACK[0x328]);
}

__n128 OUTLINED_FUNCTION_6_170(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = *(v1 + 40);
  result = *(v1 + 49);
  *(a1 + 49) = result;
  return result;
}

void *OUTLINED_FUNCTION_6_172(uint64_t a1, uint64_t a2, ...)
{
  va_start(__dst, a2);

  return memcpy(__dst, &STACK[0x208], 0x59uLL);
}

_OWORD *OUTLINED_FUNCTION_6_174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  *&a16 = v16;

  return sub_1E329504C(&a16, &a13);
}

uint64_t OUTLINED_FUNCTION_6_176()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_177()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_6_183(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_189()
{

  return sub_1E4206254();
}

void OUTLINED_FUNCTION_6_191(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981790];

  sub_1E3F1C0D8(319, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_6_192(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v27 - 144) = v22;
  *(v27 - 136) = v21 & 1;
  *(v27 - 128) = v23;
  *(v27 - 120) = v26;
  *(v27 - 112) = v25;
  *(v27 - 110) = BYTE2(v25);
  *(v27 - 104) = v24;
  *(v27 - 96) = a21;
  return *(v27 - 112);
}

uint64_t OUTLINED_FUNCTION_6_194()
{

  return sub_1E4200674();
}

uint64_t OUTLINED_FUNCTION_6_195()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_198()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_6_199()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_6_203()
{

  return sub_1E4202C24();
}

unint64_t OUTLINED_FUNCTION_6_208(uint64_t a1)
{
  *(v4 - 288) = a1;
  *v3 = *(v4 - 416);

  return sub_1E3270FC8(v2, v1, (v4 - 288));
}

id OUTLINED_FUNCTION_6_209()
{

  return [v0 (v1 + 138)];
}

uint64_t OUTLINED_FUNCTION_6_210()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_6_217(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  sub_1E3C2FCB8(&a51, &STACK[0x3B0]);
}

uint64_t OUTLINED_FUNCTION_6_221@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 80);

  return sub_1E4149C30(a1, v4, v5, v7, a2, a3);
}

void OUTLINED_FUNCTION_6_222()
{
  v2 = *(v0 + 16);
  *(v1 - 80) = 0;
  *(v1 - 72) = v2;
}

void *OUTLINED_FUNCTION_6_225(void *a1)
{

  return memcpy(a1, (v1 + 232), 0x81uLL);
}

id OUTLINED_FUNCTION_6_226(void *a1)
{

  return [a1 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_6_227()
{

  return sub_1E4200824();
}

uint64_t OUTLINED_FUNCTION_6_229()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_6_232(void *a1@<X8>)
{
  *(v1 + a1[2]) = 0x401C000000000000;
  *(v1 + a1[3]) = 0x4014000000000000;
  *(v1 + a1[4]) = 0x4018000000000000;
  *(v1 + a1[5]) = 0x4030000000000000;
}

uint64_t OUTLINED_FUNCTION_6_233(unint64_t *a1, uint64_t a2, uint64_t a3)
{

  return sub_1E40E4344(a1, a2, a3, sub_1E40E43C4);
}

void OUTLINED_FUNCTION_6_235(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

char *OUTLINED_FUNCTION_6_238(uint64_t a1)
{

  return sub_1E3A79F84(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_6_241()
{
  type metadata accessor for PlaybackProgressView(0);

  return sub_1E3746E10(v0);
}

id OUTLINED_FUNCTION_6_247()
{

  return [v0 (v1 + 276)];
}

uint64_t OUTLINED_FUNCTION_6_251()
{

  return swift_dynamicCast();
}

uint64_t sub_1E3253B44()
{
  sub_1E42013A4();
  sub_1E3D54980();
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_39_4()
{
  *(v1 - 168) = 0;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_8(char a1)
{

  return sub_1E3D951F8(v2, a1 & 1, v1, v4, v5, v3);
}

void OUTLINED_FUNCTION_15_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_39_12@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(0xD000000000000025, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_28_3()
{
}

double OUTLINED_FUNCTION_39_14@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_15()
{

  return sub_1E4200AD4();
}

void OUTLINED_FUNCTION_39_16(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 360) = 0;
  *(v1 - 368) = 0;
  *(v1 - 376) = 0;
  *(v1 - 384) = 0;
}

uint64_t OUTLINED_FUNCTION_42_3@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{

  return sub_1E37E8BE8(a1, a2, 0, a3, 0, 0, a4);
}

void OUTLINED_FUNCTION_39_17()
{
  *(v1 - 328) = *(v1 - 192);
  v2 = *(v1 - 184);
  *(v1 - 336) = *(v1 - 176);
  v3 = *(v1 - 168);
  *(v1 - 344) = *(v1 - 160);
  *(v1 - 384) = *(v1 - 152);
  *(v1 - 248) = v0;
  *(v1 - 256) = v2;
  *(v1 - 264) = v3;
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1E328438C(va, va1);
}

void OUTLINED_FUNCTION_54_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_21()
{

  return sub_1E41FFB94();
}

void *OUTLINED_FUNCTION_39_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&STACK[0x308], &__src, 0x83uLL);
}

BOOL OUTLINED_FUNCTION_161(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_39_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_39_24()
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_39_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(__dst, a10);

  return memcpy(__dst, &STACK[0x220], 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_39_27()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_39_28()
{
  sub_1E329504C((v0 - 144), (v0 - 240));
  __swift_project_boxed_opaque_existential_1((v0 - 240), *(v0 - 216));

  return sub_1E4207994();
}

double OUTLINED_FUNCTION_39_32(uint64_t a1)
{

  return sub_1E3277E60(v1, v2, a1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_39_34()
{
  STACK[0x2B8] = v1;
  LOBYTE(STACK[0x2C0]) = 0;
  STACK[0x290] = v1;
  LOBYTE(STACK[0x298]) = 0;
  STACK[0x260] = 0;
  LOBYTE(STACK[0x268]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_39_36()
{
}

uint64_t OUTLINED_FUNCTION_39_38()
{

  return sub_1E3C0D764(v0, v1 - 216);
}

uint64_t OUTLINED_FUNCTION_39_39()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_39_40()
{

  dispatch_sync(v1, v0);
}

uint64_t OUTLINED_FUNCTION_39_42()
{
}

uint64_t OUTLINED_FUNCTION_39_43()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_39_46()
{

  return sub_1E4206B94();
}

BOOL OUTLINED_FUNCTION_72_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_39_48()
{
  v3 = *(v0 + 2336);

  return [v1 v3];
}

double OUTLINED_FUNCTION_39_49(uint64_t a1, char a2)
{
  v3 = a2 & 1;

  return sub_1E4149E0C(a1, v3, 32.0);
}

uint64_t OUTLINED_FUNCTION_14_15()
{
}

uint64_t OUTLINED_FUNCTION_39_53(uint64_t a1)
{
  *v1 = a1;

  return sub_1E42009D4();
}

__n128 OUTLINED_FUNCTION_39_59()
{
  v0 = STACK[0x3C0];
  result = *&STACK[0x3A0];
  v2 = *&STACK[0x3B0];
  *&STACK[0x370] = *&STACK[0x3A0];
  *&STACK[0x380] = v2;
  LOBYTE(STACK[0x390]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_60()
{
}

double OUTLINED_FUNCTION_39_61()
{

  return sub_1E3F9DCF8(v0, v1, v2, v3);
}

double OUTLINED_FUNCTION_39_62()
{
  result = 0.0;
  *&STACK[0x390] = 0u;
  *&STACK[0x3A0] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_63()
{
  v3 = *(v0 + 192);
  *(v0 + 168) = *(v0 + 184);
  *(v0 + 176) = v3;

  return sub_1E3C3DE00(v1);
}

uint64_t OUTLINED_FUNCTION_39_66(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = *(v23 - 72);

  return sub_1E4077728(v20, v21, v22, a16, v25, v19);
}

uint64_t OUTLINED_FUNCTION_39_68(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_39_69()
{
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_119()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return sub_1E4202774();
}

id OUTLINED_FUNCTION_31_8(void *a1)
{

  return [a1 (v1 + 2168)];
}

unint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 88));
}

id OUTLINED_FUNCTION_31_10()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return swift_unknownObjectWeakInit();
}

__n128 OUTLINED_FUNCTION_31_12(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 25);
  *(a1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
}

void OUTLINED_FUNCTION_79()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_1E41FFC94();
}

uint64_t OUTLINED_FUNCTION_31_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_21()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_31_22(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_31_23(uint64_t a1)
{

  return sub_1E3741090(a1, v2 | 0x8000000000000000, v1);
}

void OUTLINED_FUNCTION_31_25(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_31_26()
{
  v2 = STACK[0x2D8];
  STACK[0x2A0] = STACK[0x2D0];
  LOBYTE(STACK[0x2A8]) = v2;

  return sub_1E3C3DE00(v0);
}

void *OUTLINED_FUNCTION_31_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __dst)
{

  return memcpy(&__dst, &a9, 0x58uLL);
}

double OUTLINED_FUNCTION_31_30()
{
  *(v0 + 568) = v2;
  *(v0 + 560) = v1;
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_31_31()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_31_32(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t OUTLINED_FUNCTION_31_36()
{
  v2 = MEMORY[0x1E697EAF0];

  return sub_1E3AEBBCC(v0, v2);
}

uint64_t OUTLINED_FUNCTION_31_37()
{
  v2 = STACK[0x2C0];
  v3 = *&STACK[0x2B0];
  *&STACK[0x270] = *&STACK[0x2A0];
  *&STACK[0x280] = v3;
  LOBYTE(STACK[0x290]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_31_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_40()
{

  return sub_1E4200844();
}

uint64_t OUTLINED_FUNCTION_31_41(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_31_43()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_44()
{
  *(v0 + 98) = 11;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 132) = 0u;
  *(v0 + 148) = 1;
  *(v0 + 152) = 0;
  *(v0 + 156) = 1;
  *(v0 + 160) = 1132068864;
  *(v0 + 164) = 0;
  *(v0 + 168) = 1132068864;
  *(v0 + 172) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;

  return sub_1E3C2F9A0();
}

uint64_t OUTLINED_FUNCTION_31_50()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_31_52()
{
  v3 = (*(v0 + 56) + 16 * v2);
  result = *v3;
  *v3 = v1;
  return result;
}

__n128 OUTLINED_FUNCTION_31_53()
{
  v0 = STACK[0x240];
  result = *&STACK[0x220];
  *&STACK[0x200] = *&STACK[0x230];
  LOBYTE(STACK[0x210]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_54()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_56()
{
}

double OUTLINED_FUNCTION_31_59()
{

  return sub_1E3DA3E00(4.0);
}

uint64_t OUTLINED_FUNCTION_31_60()
{

  return swift_dynamicCastClass();
}

unint64_t OUTLINED_FUNCTION_31_62(float a1)
{
  *v1 = a1;

  return sub_1E3E05160();
}

uint64_t OUTLINED_FUNCTION_31_63(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_31_66(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_70(uint64_t result)
{
  *(v2 - 136) = *(*(result + v1) + 32);
  *(v2 - 176) = 10;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_71(uint64_t a1)
{
  *v2 = a1;
  v3 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_31_74(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

void OUTLINED_FUNCTION_31_78()
{

  JUMPOUT(0x1E6911380);
}

uint64_t OUTLINED_FUNCTION_31_80()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_31_83()
{

  return sub_1E3952BD8(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_84()
{

  return type metadata accessor for CanonicalInfoCard();
}

uint64_t OUTLINED_FUNCTION_31_85()
{

  return sub_1E4205ED4();
}

void OUTLINED_FUNCTION_31_88()
{
  v4 = *v1;
  v5 = *(v1 + *(v0 + 36));
  *(v3 - 128) = v2;
  *(v3 - 120) = v4;
  *(v3 - 112) = v5;
  *(v3 - 104) = 0;
  *(v3 - 96) = 0;
  *(v3 - 88) = 0;
}

uint64_t OUTLINED_FUNCTION_31_91()
{
  sub_1E34AF4DC();
}

uint64_t OUTLINED_FUNCTION_31_92()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_93()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_94(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

void sub_1E32550B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_115();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E4206BA4();
  v7 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69();

  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_16_0();
  v8(v9);
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  v12 = [v11 launchConfig];

  LOBYTE(v11) = [v12 prewarmUTSConnection];
  if ((v11 & 1) != 0 || (v13 = [v10 sharedInstance], v14 = objc_msgSend(v13, sel_launchConfig), v13, LODWORD(v13) = objc_msgSend(v14, sel_checkRemoteServerReachability), v14, v13))
  {
    sub_1E4206454();
    v15 = sub_1E4206474();
    OUTLINED_FUNCTION_75_0(v15);
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_33_49(v16);
    v17 = OUTLINED_FUNCTION_23_7();
    sub_1E3CC3FD0(v17, v18, v0, v19, v20);

    sub_1E325A8C0(v0);
  }

  sub_1E4206B94();
  v21 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_69();

  v22 = OUTLINED_FUNCTION_16_0();
  v8(v22);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3255320()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

unint64_t OUTLINED_FUNCTION_49_1(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 104));
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_115_4(__n128 a1)
{
  a1.n128_u64[0] = 12.0;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

void OUTLINED_FUNCTION_115_7()
{

  sub_1E39537A8();
}

uint64_t OUTLINED_FUNCTION_115_10()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return MEMORY[0x1EEDDFBF8](v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_1E3788BD4();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_16_18(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void OUTLINED_FUNCTION_5_21()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

id OUTLINED_FUNCTION_16_19()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_16_26()
{

  return type metadata accessor for TabBarItemsInfo();
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

void *OUTLINED_FUNCTION_16_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{

  return memcpy(&a59, &STACK[0x268], 0x5AuLL);
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return sub_1E4203904();
}

uint64_t OUTLINED_FUNCTION_16_31(uint64_t a1)
{
  v5 = v2 + *(a1 + 48);
  *v5 = v3;
  *(v5 + 8) = v1;
  *(v5 + 16) = *(v4 - 156) & 1;
  *(v5 + 24) = *(v4 - 152);
  return v2 + *(a1 + 64);
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E376FE58(0, 0, v6, v5, a5);
}

void OUTLINED_FUNCTION_5_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return sub_1E4201F44();
}

id OUTLINED_FUNCTION_16_37()
{
  v1 = MEMORY[0x1E696AD98];

  return objc_allocWithZone(v1);
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return sub_1E41FE804();
}

__n128 OUTLINED_FUNCTION_16_41()
{
  v1 = STACK[0x280];
  result = *(v0 + 480);
  v3 = *(v0 + 496);
  *(v0 + 432) = result;
  *(v0 + 448) = v3;
  LOBYTE(STACK[0x250]) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_45(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_16_51()
{
  v1[12] = sub_1E3299060;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_16_52()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_16_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_55()
{
}

void *OUTLINED_FUNCTION_16_58(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

void OUTLINED_FUNCTION_16_60(unint64_t a1@<X8>)
{
  STACK[0x488] = a1;
  STACK[0x490] = 0;
  STACK[0x498] = 0;
  STACK[0x4A0] = 0;
  LOBYTE(STACK[0x4A8]) = 0;
  STACK[0x460] = a1;
  STACK[0x468] = 0;
  STACK[0x470] = 0;
  STACK[0x478] = 0;
  LOBYTE(STACK[0x480]) = 0;
}

uint64_t OUTLINED_FUNCTION_16_62()
{
  v3 = v1[10];
  v1[6] = v1[9];
  v1[7] = v3;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_16_65()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_16_66()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_16_67()
{

  return sub_1E3746E10(v0);
}

uint64_t OUTLINED_FUNCTION_16_71()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_16_74()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_78()
{

  return sub_1E4207584();
}

id OUTLINED_FUNCTION_16_85(uint64_t a1)
{

  return [v1 (v2 + 411)];
}

void OUTLINED_FUNCTION_16_93(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2B0] = a1;
  *&STACK[0x2B8] = a2;
  *&STACK[0x2C0] = a3;
  *&STACK[0x2C8] = a4;
  LOBYTE(STACK[0x2D0]) = 0;
}

uint64_t OUTLINED_FUNCTION_16_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_16_97()
{
  LOBYTE(STACK[0x260]) = STACK[0x290];

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_16_99()
{

  JUMPOUT(0x1E690E3F0);
}

uint64_t OUTLINED_FUNCTION_16_101()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_16_102@<X0>(uint64_t a1@<X0>, char a2@<W6>, uint64_t a3@<X8>, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11)
{

  return sub_1E3EB9C0C(a1, v11, 0, 0, 0, 1, a2, 2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_16_103()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_16_105()
{

  return memcpy(&STACK[0x3E0], &STACK[0x528], 0xE9uLL);
}

__n128 OUTLINED_FUNCTION_16_107()
{
  v0 = STACK[0x300];
  result = *&STACK[0x2E0];
  v2 = *&STACK[0x2F0];
  *&STACK[0x2B0] = *&STACK[0x2E0];
  *&STACK[0x2C0] = v2;
  LOBYTE(STACK[0x2D0]) = v0;
  return result;
}

void OUTLINED_FUNCTION_16_111(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43)
{
  a39 = a41;

  sub_1E3C2FCB8(&a39, &a43);
}

uint64_t OUTLINED_FUNCTION_16_114()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_115()
{

  return OUTLINED_FUNCTION_18();
}

__n128 OUTLINED_FUNCTION_16_116()
{
  v1 = *(v0 + 1184);
  *(v0 + 128) = *(v0 + 1200);
  *(v0 + 144) = v1;
  result = *(v0 + 1216);
  *(v0 + 80) = *(v0 + 1232);
  *(v0 + 96) = result;
  *(v0 + 168) = *(v0 + 1248);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_117()
{
}

uint64_t OUTLINED_FUNCTION_16_120(uint64_t result, double a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

void *OUTLINED_FUNCTION_16_121(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_16_122(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

id OUTLINED_FUNCTION_16_123(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_16_126()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_16_128()
{

  return OUTLINED_FUNCTION_18();
}

id OUTLINED_FUNCTION_16_133()
{

  return [v0 (v1 + 626)];
}

__n128 OUTLINED_FUNCTION_16_134(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 25);
  *(a1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x1EEDE1A70](a1, a2, a3, a4, a5, v5, 0, 1);
}

id OUTLINED_FUNCTION_16_137@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_16_142(__n128 a1, __n128 a2)
{
  *&STACK[0x270] = a1;
  *&STACK[0x280] = a2;
  LOBYTE(STACK[0x290]) = 0;

  return sub_1E3C3DE00(v2);
}

uint64_t OUTLINED_FUNCTION_16_143()
{

  return sub_1E4207544();
}

void OUTLINED_FUNCTION_16_144(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  strcpy(v2, "speaker.fill");
  *(v2 + 13) = 0;
  *(v2 + 14) = -5120;
}

void OUTLINED_FUNCTION_16_146()
{
}

uint64_t OUTLINED_FUNCTION_16_149(unint64_t *a1)
{

  return sub_1E4022704(a1, type metadata accessor for AppEnvironment);
}

uint64_t OUTLINED_FUNCTION_16_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1E327F454(v9 + v10, va);
}

uint64_t OUTLINED_FUNCTION_16_152()
{
  STACK[0x200] = STACK[0x230];

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_16_154@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 160) = a11;
  *(v11 - 112) = a1;
  *(v11 - 104) = 0;
}

void OUTLINED_FUNCTION_16_155()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_16_156(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 96) = &a9;
  *(v9 - 72) = result;
  return result;
}

void OUTLINED_FUNCTION_16_160(uint64_t a1@<X8>)
{
  v3 = (v2 + v1);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + *(a1 + 16)) = 0;
  v4 = v2 + *(a1 + 24);
  *v4 = 0;
  *(v4 + 8) = -1;
}

double OUTLINED_FUNCTION_16_161(uint64_t a1, uint64_t a2)
{

  return sub_1E3277E60(a1, a2, v2, (v3 - 232));
}

uint64_t OUTLINED_FUNCTION_16_166()
{

  return sub_1E3889AF0(v1, v0);
}

void OUTLINED_FUNCTION_16_169(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_16_172(uint64_t a1)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = a1;

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_16_173(void *a1)
{

  return [a1 (v1 + 626)];
}

uint64_t OUTLINED_FUNCTION_16_174()
{

  return type metadata accessor for ContextMenuController(0);
}

uint64_t sub_1E3256704()
{
  sub_1E4201F54();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t sub_1E3256754()
{
  sub_1E42013A4();
  sub_1E4201F54();
  sub_1E40A9828();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_38_6()
{

  sub_1E3F23370();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_38_8(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 112));
}

uint64_t OUTLINED_FUNCTION_38_9()
{
  v3 = *(v1 - 136);

  return sub_1E37DFC14(v3, v0);
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_34_3()
{
}

void OUTLINED_FUNCTION_38_12(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{

  sub_1E38E5240(a1, a2, a3, 0, 0, v4, a4);
}

uint64_t OUTLINED_FUNCTION_38_14()
{

  return sub_1E373F6E0();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_1E42015C4();
}

__n128 OUTLINED_FUNCTION_38_19(__n128 *a1)
{
  result = v1[6];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_1E328438C(&a9, &a19);
}

double OUTLINED_FUNCTION_38_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_1E3277E60(a1, a2, v15, &a15);
}

uint64_t OUTLINED_FUNCTION_38_23()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_38_27(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_38_33()
{
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_38_35()
{

  return sub_1E3883AF4(v0);
}

unint64_t OUTLINED_FUNCTION_38_36(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 4) = v5;
  *(v4 + 12) = 2080;

  return sub_1E3270FC8(a2, a3, va);
}

uint64_t OUTLINED_FUNCTION_38_38()
{

  return sub_1E41FFBE4();
}

void OUTLINED_FUNCTION_38_39()
{
  v0 = STACK[0x674];
  LODWORD(STACK[0x370]) = STACK[0x670];
  LOWORD(STACK[0x374]) = v0;
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1)
{
  v5 = v2 + *(a1 + 48);

  return sub_1E3743538(v3, v5, v1);
}

uint64_t OUTLINED_FUNCTION_38_40()
{
}

void OUTLINED_FUNCTION_38_43(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;
  *(v2 + v3[10]) = 0;
  *(v2 + v3[11]) = v1;
  *(v2 + v3[12]) = v1;
  *(v2 + v3[13]) = 0;
  *(v2 + v3[14]) = 0;
  *(v2 + v3[15]) = 0x4020000000000000;
  *(v2 + v3[16]) = 0x4000000000000000;
  *(v2 + v3[17]) = 0;
  *(v2 + v3[18]) = 0;
}

void OUTLINED_FUNCTION_38_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_38_45()
{
  v2 = STACK[0x270];
  v3 = *&STACK[0x260];
  *&STACK[0x220] = *&STACK[0x250];
  *&STACK[0x230] = v3;
  LOBYTE(STACK[0x240]) = v2;

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_38_51()
{

  return sub_1E42015C4();
}

uint64_t OUTLINED_FUNCTION_38_52()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_53()
{

  return sub_1E41FDF44();
}

uint64_t OUTLINED_FUNCTION_38_55()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_58()
{

  return sub_1E3741EA0(v1, v2, v0);
}

void *OUTLINED_FUNCTION_38_59()
{

  return memcpy(&STACK[0x280], &STACK[0x3F8], 0xE9uLL);
}

void *OUTLINED_FUNCTION_38_65(uint64_t a1)
{
  *(v2 - 240) = a1;
  v4 = (a1 + 16);

  return memcpy(v4, (v1 + 8), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_38_67()
{
  v3 = *(v0 + 160);
  *(v0 + 136) = *(v0 + 152);
  *(v0 + 144) = v3;

  return sub_1E3C3DE00(v1);
}

unint64_t OUTLINED_FUNCTION_38_69(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 192));
}

id OUTLINED_FUNCTION_38_70(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_38_72()
{
  v5 = v2 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v1;

  return sub_1E4033644(v3, v5);
}

uint64_t OUTLINED_FUNCTION_38_73()
{

  return type metadata accessor for StackedTextViews(0);
}

void OUTLINED_FUNCTION_38_74()
{

  sub_1E4057B80();
}

uint64_t OUTLINED_FUNCTION_38_75()
{

  return sub_1E4205D14();
}

void *OUTLINED_FUNCTION_38_76(void *a1)
{

  return memcpy(a1, (v1 - 191), 0x41uLL);
}

void OUTLINED_FUNCTION_38_79(void *a1)
{

  sub_1E4108EA8(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_13()
{
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1)
{

  return sub_1E325F6F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_15_19()
{
}

uint64_t OUTLINED_FUNCTION_30_6()
{
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1)
{
  v5 = v3 + *(a1 + 48);
  *v5 = 0;
  *(v5 + 8) = v2;
  *(v5 + 9) = v1;
  return v4;
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_24_8()
{

  sub_1E37B796C();
}

uint64_t OUTLINED_FUNCTION_24_12(uint64_t a1)
{
  v6 = *(v4 - 140);

  return sub_1E3C6184C(a1, v3, v6, 0, 0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_13()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_1E4207B44();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_24_17(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 a23, char a24)
{
  v25[26] = a24;
  *&v25[24] = a23;
  *&v25[16] = a22;
  *&v25[8] = a21;
  *v25 = a20;
  a1[1] = a19;
  a1[2] = *v25;
  result = *&v25[11];
  *(a1 + 43) = *&v25[11];
  return result;
}

void OUTLINED_FUNCTION_24_18()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E69143B0);
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_19()
{

  return sub_1E41FFCF4();
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_24_25()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_24_27(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *(v8 - 184) = v6;
  *(v8 - 176) = v7;
  *(v8 - 168) = a1;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a2;
  v5[5] = a5;
}

__n128 OUTLINED_FUNCTION_24_29()
{
  result = *v0;
  *(v1 - 128) = *v0;
  *(v1 - 112) = v0[1].n128_u8[0];
  *(v1 - 192) = v0[2].n128_u64[0];
  *(v1 - 184) = v0[2].n128_u8[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_24_30@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3797E30(0xD000000000000024, (a1 - 32) | 0x8000000000000000, v1);
}

double OUTLINED_FUNCTION_24_33()
{

  return sub_1E3952BE0(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_24_34()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_36()
{
  v3 = *(v0 + 880);
  v4 = *(v0 + 864);
  *v1 = *(v0 + 848);
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_24_38()
{

  return [v0 (v1 + 376)];
}

uint64_t OUTLINED_FUNCTION_24_40(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4148C68(v3, a3, &STACK[0x220]);
}

uint64_t OUTLINED_FUNCTION_24_41()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_24_44(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_24_45(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_46()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1E3F9F164(va);
}

uint64_t OUTLINED_FUNCTION_24_49()
{

  return sub_1E4201F44();
}

_OWORD *OUTLINED_FUNCTION_24_52(_OWORD *a1)
{

  return sub_1E32A87C0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_1E328438C(va, v14 - 192);
}

uint64_t OUTLINED_FUNCTION_24_60()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_24_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, char a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_63()
{

  return sub_1E3C677F0(v1 - 144, v0);
}

uint64_t OUTLINED_FUNCTION_24_64(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_24_65()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_24_66()
{

  return sub_1E34AF604(v0);
}

uint64_t OUTLINED_FUNCTION_24_67()
{
  result = v0;
  *(v2 - 144) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_75()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_24_77(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

double OUTLINED_FUNCTION_24_79()
{

  return sub_1E3277E60(v2, v3, v1, (v0 + 1312));
}

uint64_t OUTLINED_FUNCTION_24_81()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_82()
{
  v1 = STACK[0x260];
  STACK[0x230] = STACK[0x258];
  LOBYTE(STACK[0x238]) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_84()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_24_85()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_24_90()
{

  return sub_1E3743538(v2 - 112, v0 + 176, v1);
}

id OUTLINED_FUNCTION_24_92()
{

  return sub_1E3D713E8(v0);
}

void OUTLINED_FUNCTION_24_94()
{
  v3 = STACK[0x410];
  v4 = STACK[0x418];
  v5 = STACK[0x420];
  STACK[0x280] = v0;
  STACK[0x288] = v1;
  STACK[0x290] = v2;
  STACK[0x298] = v3;
  STACK[0x2A0] = v4;
  STACK[0x2A8] = v5;
}

id OUTLINED_FUNCTION_24_95(void *a1)
{

  return [a1 (v1 + 626)];
}

uint64_t OUTLINED_FUNCTION_24_96(uint64_t a1)
{
  *(a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

__n128 OUTLINED_FUNCTION_24_97(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_102()
{
  LOBYTE(STACK[0x200]) = STACK[0x230];

  return sub_1E3C3DE00(v0);
}

void *OUTLINED_FUNCTION_24_103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37)
{
  a35 = 0;
  a36 = 1;
  a37 = 0;

  return sub_1E3DC12B0(a1, &a27, &a15);
}

id OUTLINED_FUNCTION_24_115()
{

  return [v0 (v1 + 276)];
}

uint64_t OUTLINED_FUNCTION_24_116()
{
}

uint64_t OUTLINED_FUNCTION_24_117()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_24_118(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_119()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_121()
{
  v2 = *(v1 - 216);
  *(*(v1 - 224) + 8) = v0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_1E4202734();
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73_3()
{
}

id OUTLINED_FUNCTION_73_7()
{
  v2 = *(v0 + 3480);

  return objc_allocWithZone(v2);
}

void OUTLINED_FUNCTION_73_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_73_10()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

id OUTLINED_FUNCTION_73_11(uint64_t a1)
{

  return [v1 (v2 + 1273)];
}

uint64_t OUTLINED_FUNCTION_73_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_73_16()
{
}

void OUTLINED_FUNCTION_73_17(double a1, double a2, double a3, double a4)
{
  *(v4 - 192) = a1;
  *(v4 - 184) = a2;
  *(v4 - 176) = a3;
  *(v4 - 168) = a4;
  *(v4 - 160) = 0;
}

uint64_t OUTLINED_FUNCTION_73_18()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_73_22()
{

  return sub_1E4200D94();
}

id OUTLINED_FUNCTION_73_24(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t (*OUTLINED_FUNCTION_129())()
{

  return sub_1E376F0AC();
}

uint64_t OUTLINED_FUNCTION_129_0(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_3(uint64_t result)
{
  *(v3 + *(result + 20)) = v1;
  *(v3 + *(result + 24)) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_4(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1E328438C(v4, v2 - 184);
}

uint64_t OUTLINED_FUNCTION_129_7()
{
}

uint64_t OUTLINED_FUNCTION_129_9()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_129_11()
{

  return sub_1E4207614();
}

uint64_t OUTLINED_FUNCTION_129_12()
{

  return sub_1E38D2054(v0 - 128, v0 - 112);
}

uint64_t OUTLINED_FUNCTION_129_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 152) = a2;
  *(v2 - 144) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{
  v2 = __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return MEMORY[0x1EEDDA248](v2);
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_1E3758450();
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2)
{
  *(v2 - 184) = a1;
  *(v2 - 176) = a2;
  return v2 - 184;
}

uint64_t OUTLINED_FUNCTION_29_8()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return sub_1E376FE58(0, 0, v1, v0, v2);
}

void OUTLINED_FUNCTION_29_11(char a1@<W8>)
{
  *(v1 + 1864) = a1;
  *(v1 + 1872) = v3;
  *(v1 + 1880) = v2;
  *(v1 + 1888) = v4;
  *(v1 + 1896) = v5;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1, uint64_t a2)
{

  return sub_1E3743538(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_29_18()
{

  return sub_1E37FA198(v0, v1 + v3, v2);
}

uint64_t OUTLINED_FUNCTION_29_24(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_29_25()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_29_26()
{
}

uint64_t OUTLINED_FUNCTION_29_27()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_29_34(uint64_t a1)
{

  return sub_1E381F390(a1);
}

id OUTLINED_FUNCTION_29_35(uint64_t a1)
{

  return sub_1E39FD2A8(v6, a1, v4, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_29_36()
{

  return sub_1E41FFBA4();
}

void OUTLINED_FUNCTION_29_37(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695C070];

  sub_1E3A203DC(319, a2, a3, v4);
}

id OUTLINED_FUNCTION_29_41(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_29_43(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_29_44()
{
}

uint64_t OUTLINED_FUNCTION_29_45(uint64_t a1, uint64_t a2)
{

  return sub_1E3294EE4(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_29_51(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

double OUTLINED_FUNCTION_29_54(uint64_t a1)
{

  return sub_1E3C8B764(a1, v2, 0.0);
}

id OUTLINED_FUNCTION_29_57(void *a1)
{

  return [a1 colorWithAlphaComponent_];
}

uint64_t OUTLINED_FUNCTION_29_58(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_10_12(double a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a1;
  *&STACK[0x208] = a2;
  *&STACK[0x210] = a3;
  *&STACK[0x218] = a4;
  LOBYTE(STACK[0x220]) = 0;
}

void OUTLINED_FUNCTION_29_59()
{
  *(v2 - 184) = v1;
  *(v2 - 168) = v1;
  *(v2 - 432) = v0;
}

uint64_t OUTLINED_FUNCTION_29_60()
{

  return sub_1E4200D94();
}

void OUTLINED_FUNCTION_29_62()
{

  JUMPOUT(0x1E69143B0);
}

void OUTLINED_FUNCTION_29_63()
{
  v0 = STACK[0x7EC];
  LODWORD(STACK[0x670]) = STACK[0x7E8];
  LOWORD(STACK[0x674]) = v0;
}

uint64_t OUTLINED_FUNCTION_29_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{

  return sub_1E38DCD14(a7, a13);
}

uint64_t OUTLINED_FUNCTION_29_66(uint64_t a1)
{
  v5 = v2 + *(a1 + 48);
  *v5 = 0;
  *(v5 + 8) = 0;
  v6 = v2 + *(a1 + 64);

  return sub_1E3743538(v3, v6, v1);
}

uint64_t OUTLINED_FUNCTION_29_69()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_29_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1E3C2FCB8(&a9, &STACK[0x220]);
}

uint64_t OUTLINED_FUNCTION_29_71()
{
  v2 = *(v0 + 756);
  *(v0 + 128) = *(v0 + 752);
  *(v0 + 132) = v2;

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_29_73()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_29_74(void *a1)
{

  return sub_1E3F9F164(a1);
}

id OUTLINED_FUNCTION_29_78()
{

  return [v1 (v0 + 3354)];
}

id OUTLINED_FUNCTION_29_79()
{
  v3 = *(v1 + 3152);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_29_82(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_29_84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v27 = v21[54] & 1;
  v28 = v21[1];
  v29 = v21[66];
  v30 = v21[68];

  sub_1E3E6CE4C(v23, v28, v24, v22, v25, v29, v30, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_29_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_89()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_92(unint64_t *a1)
{

  return sub_1E328FCF4(a1, v1);
}

void OUTLINED_FUNCTION_29_94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_29_98()
{
  *(v1 - 152) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_102@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1E325F748(va, v16);
}

void OUTLINED_FUNCTION_29_107()
{
  v1 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 144);
  *(v0 + 136) = v1;
}

uint64_t OUTLINED_FUNCTION_29_108()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

double OUTLINED_FUNCTION_29_111()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

id OUTLINED_FUNCTION_29_112()
{

  return [v0 (v1 + 2424)];
}

uint64_t sub_1E325A828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E325A8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E325A928()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_115();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E4206BA4();
  v7 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69();

  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_16_0();
  v8(v9);
  if (TVAppFeature.isEnabled.getter(12))
  {
    v10 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v10);
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_33_49(v11);
    v12 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v12, v13, v0, v14, v15);
  }

  else
  {
    v16 = [objc_opt_self() app];
    [v16 prewarm];
  }

  sub_1E4206B94();
  v17 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_69();

  v18 = OUTLINED_FUNCTION_16_0();
  return (v8)(v18);
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_23_14()
{
}

void OUTLINED_FUNCTION_23_15(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E6981790];

  sub_1E37A67FC(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_23_21()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_23_22()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_23()
{

  return sub_1E4200644();
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_23_30()
{
  v5 = (*(v0 + 48) + 16 * v3);
  *v5 = v1;
  v5[1] = v4;
  *(*(v0 + 56) + 8 * v3) = v2;
}

uint64_t OUTLINED_FUNCTION_23_34(uint64_t a1)
{

  return sub_1E395D044(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_21_10(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

uint64_t OUTLINED_FUNCTION_23_38(uint64_t a1)
{

  return sub_1E3A0455C(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_23_41()
{

  return sub_1E41FFCA4();
}

void OUTLINED_FUNCTION_41_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_23_42()
{

  return [v0 (v1 + 589)];
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_23_45()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_23_47(void *a1@<X8>)
{
  *(v1 + *a1) = 0;
  v2 = (v1 + a1[1]);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + a1[2]) = 0;
  *(v1 + a1[3]) = 0;
}

uint64_t OUTLINED_FUNCTION_23_48()
{
}

uint64_t OUTLINED_FUNCTION_23_50()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_23_51(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *(v5 + 8) = a5;
  *(v5 + 24) = a1;
  *(v5 + 40) = a2;
  *(v5 + 56) = a3;
  *(v5 + 72) = a4;
}

__n128 OUTLINED_FUNCTION_23_54()
{
  v0 = STACK[0x3B0];
  result = *&STACK[0x390];
  v2 = *&STACK[0x3A0];
  *&STACK[0x360] = *&STACK[0x390];
  *&STACK[0x370] = v2;
  LOBYTE(STACK[0x380]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_57()
{

  return sub_1E4148C68(v0, v1, v2 - 120);
}

uint64_t OUTLINED_FUNCTION_23_59()
{

  return sub_1E4207C14();
}

void *OUTLINED_FUNCTION_23_61(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_23_63()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_66()
{
}

void *OUTLINED_FUNCTION_23_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x89uLL);
}

uint64_t OUTLINED_FUNCTION_23_72()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_23_73(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_23_77()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 168);
}

uint64_t OUTLINED_FUNCTION_23_80()
{

  return TVAppFeature.isEnabled.getter(10);
}

uint64_t OUTLINED_FUNCTION_63_2()
{
}

uint64_t OUTLINED_FUNCTION_23_83()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_23_85()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_23_87@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 112) = &a2 - a1;

  return type metadata accessor for StackTemplateView();
}

double OUTLINED_FUNCTION_23_90()
{

  return sub_1E3C8B764(v0, v2, 0.0);
}

uint64_t OUTLINED_FUNCTION_23_94()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_23_95()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_23_97(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1E328438C(v4, v2 - 176);
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return sub_1E4200BC4();
}

uint64_t OUTLINED_FUNCTION_23_99(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_100()
{
  *(v3 - 104) = v1;
  *(v3 - 96) = v0;
  *(v3 - 88) = v2;
  return v3 - 104;
}

__n128 OUTLINED_FUNCTION_23_101(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_103()
{

  return sub_1E42076B4();
}

void OUTLINED_FUNCTION_23_107()
{

  sub_1E3C2AE10();
}

uint64_t OUTLINED_FUNCTION_23_109()
{
}

uint64_t OUTLINED_FUNCTION_23_110@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return v1 - 168;
}

uint64_t OUTLINED_FUNCTION_23_111()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_23_112()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_23_115()
{
}

void OUTLINED_FUNCTION_45_4()
{
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return sub_1E3883AF4(v0);
}

id OUTLINED_FUNCTION_45_8()
{

  return [v0 (v1 + 138)];
}

void OUTLINED_FUNCTION_45_9(char a1@<W8>)
{
  v3 = *(v1 + 192);
  *(v2 - 96) = a1;
  *(v2 - 88) = v3;
  *(v2 - 97) = 1;
}

uint64_t OUTLINED_FUNCTION_45_10()
{

  return sub_1E4200844();
}

uint64_t OUTLINED_FUNCTION_45_11@<X0>(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];

  return sub_1E40EA03C(v3, v1, v5, v6, v2);
}

uint64_t OUTLINED_FUNCTION_45_12()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_10_14()
{
}

uint64_t OUTLINED_FUNCTION_45_15()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_1E4206E64();
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_45_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_45_20()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_22()
{

  JUMPOUT(0x1E6910BF0);
}

uint64_t OUTLINED_FUNCTION_45_23(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_26()
{

  return sub_1E4200844();
}

id OUTLINED_FUNCTION_45_28(void *a1)
{

  return [a1 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_45_30()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_45_33()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_45_36()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t OUTLINED_FUNCTION_45_39()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_131()
{

  return swift_unknownObjectWeakInit();
}

BOOL OUTLINED_FUNCTION_45_42(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_45_44()
{

  return swift_getOpaqueTypeConformance2();
}

__n128 OUTLINED_FUNCTION_45_46(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  *(v9 + v12) = a1;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u64[1] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1E379D7E4(&STACK[0x2C0], va, v10);
}

uint64_t OUTLINED_FUNCTION_45_55()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_45_56()
{

  return sub_1E41FDF94();
}

void OUTLINED_FUNCTION_45_57(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  ViewModelKeys.rawValue.getter(14);
}

uint64_t OUTLINED_FUNCTION_45_58()
{

  return sub_1E41FE2E4();
}

uint64_t OUTLINED_FUNCTION_45_66()
{
}

uint64_t OUTLINED_FUNCTION_45_67()
{
  type metadata accessor for SportsKitScoreboardUpdating(0);
}

void OUTLINED_FUNCTION_45_69(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_45_72()
{

  return sub_1E4201F44();
}

unint64_t OUTLINED_FUNCTION_45_73(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 232));
}

uint64_t OUTLINED_FUNCTION_45_74()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_45_75()
{

  return sub_1E4200BC4();
}

void OUTLINED_FUNCTION_45_76()
{

  sub_1E417E2D0();
}

uint64_t OUTLINED_FUNCTION_45_78()
{

  return sub_1E4200F34();
}

uint64_t OUTLINED_FUNCTION_45_79()
{
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return MEMORY[0x1EEDDFBF8](v0, 0, 1);
}

uint64_t OUTLINED_FUNCTION_15_23(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_27(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1E3741090(v4, a2, v2);
}

id OUTLINED_FUNCTION_15_29(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_15_30@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{

  return sub_1E41E1A64(a1, a2, v3, a3);
}

CGFloat OUTLINED_FUNCTION_15_31(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t rect, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = a18;
  v24 = v20;

  return CGRectGetHeight(*&v21);
}

id OUTLINED_FUNCTION_15_39()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_15_41()
{

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_15_43()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_15_44()
{

  JUMPOUT(0x1E6911E60);
}

void OUTLINED_FUNCTION_15_46()
{

  sub_1E3952C94();
}

uint64_t OUTLINED_FUNCTION_15_48()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1E4148C68(v6, a3, va);
}

uint64_t OUTLINED_FUNCTION_15_52()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 168);

  return sub_1E329505C(v0 - 128);
}

id OUTLINED_FUNCTION_15_56(uint64_t a1)
{

  return [v1 (v2 + 2040)];
}

uint64_t OUTLINED_FUNCTION_15_60(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1E41FFC94();
}

uint64_t OUTLINED_FUNCTION_15_61()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_15_67()
{
  v2 = STACK[0x2C8];
  STACK[0x290] = STACK[0x2C0];
  LOBYTE(STACK[0x298]) = v2;

  return sub_1E3C3DE00(v0);
}

void *OUTLINED_FUNCTION_15_69(void *result, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_70()
{
}

unint64_t OUTLINED_FUNCTION_15_74(float a1)
{
  *v3 = a1;

  return sub_1E3270FC8(v2, v1, (v4 - 152));
}

void OUTLINED_FUNCTION_15_76(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 24) = a3;
}

uint64_t OUTLINED_FUNCTION_15_78()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_15_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, char a41, uint64_t a42, __int128 a43, __int128 a44, char a45)
{
  a39 = a43;
  a40 = a44;
  a41 = a45;

  sub_1E3C2FCB8(&a9, &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_15_91()
{

  return sub_1E4206254();
}

double OUTLINED_FUNCTION_15_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_1E3C2FBB4(v13, a1, &a13);
}

uint64_t OUTLINED_FUNCTION_15_99()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_101()
{
  LOBYTE(STACK[0x200]) = STACK[0x230];

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_15_103()
{
  *(v1 - 192) = v0;
  *(v1 - 184) = v0;
  *(v1 - 168) = v0;
  *(v1 - 160) = v0;
  *(v1 - 200) = v0;
}

uint64_t OUTLINED_FUNCTION_15_106()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_109()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_15_110()
{
  v0 = STACK[0x2A0];
  result = *&STACK[0x280];
  v2 = *&STACK[0x290];
  *&STACK[0x250] = *&STACK[0x280];
  *&STACK[0x260] = v2;
  LOBYTE(STACK[0x270]) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_111()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_113(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return sub_1E38F1B60(&a43, &a27);
}

__n128 OUTLINED_FUNCTION_15_114(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

void *OUTLINED_FUNCTION_15_116(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char __dst)
{

  return memcpy(&__dst, (v47 - 192), 0x59uLL);
}

id OUTLINED_FUNCTION_15_117(void *a1)
{

  return [a1 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_15_118()
{

  return OUTLINED_FUNCTION_18();
}

double OUTLINED_FUNCTION_15_122@<D0>(char a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_124()
{
}

uint64_t OUTLINED_FUNCTION_15_126()
{

  return sub_1E406F634(v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_127@<X0>(char a1@<W8>)
{
  v4 = *(v1 + 19);
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 18) = a1;

  return sub_1E4203AA4();
}

uint64_t OUTLINED_FUNCTION_15_129()
{
  v4 = *(v2 - 224);

  return sub_1E3743538(v0, v4, v1);
}

id OUTLINED_FUNCTION_15_130(void **a1)
{
  v3 = *a1;
  *(v1 - 144) = 0;
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;

  return v3;
}

double OUTLINED_FUNCTION_15_133()
{
  result = 0.0;
  *(v0 - 103) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 87) = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_15_135(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  a1[1] = a21;
  return result;
}

void OUTLINED_FUNCTION_15_136()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_15_138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 40) = v2;
  *(a1 + 48) = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_146()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_147()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_149()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_150()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_15_152(double a1, double a2, double a3, double a4)
{
  *&STACK[0x390] = a1;
  *&STACK[0x398] = a2;
  *&STACK[0x3A0] = a3;
  *&STACK[0x3A8] = a4;
  LOBYTE(STACK[0x3B0]) = 0;
}

void OUTLINED_FUNCTION_15_156(unint64_t a1@<X8>)
{
  STACK[0x268] = a1;
  LOBYTE(STACK[0x270]) = 0;
  STACK[0x240] = a1;
  LOBYTE(STACK[0x248]) = 0;
}

uint64_t OUTLINED_FUNCTION_15_157()
{

  return sub_1E41FFBA4();
}

uint64_t OUTLINED_FUNCTION_15_159()
{

  return sub_1E4205DB4();
}

uint64_t OUTLINED_FUNCTION_15_165()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_15_166()
{

  return sub_1E42076B4();
}

id OUTLINED_FUNCTION_15_167()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_15_168(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_15_171()
{

  return sub_1E4205C44();
}

id OUTLINED_FUNCTION_15_172()
{

  return [v0 (v1 + 3696)];
}

void OUTLINED_FUNCTION_15_176(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1E3C2FCB8(va, v2 - 160);
}

uint64_t OUTLINED_FUNCTION_15_179()
{

  return sub_1E41FE804();
}

uint64_t OUTLINED_FUNCTION_15_180(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E393D92C(a1, v3, a3, 0);
}

uint64_t OUTLINED_FUNCTION_15_181()
{

  return sub_1E4200BC4();
}

double OUTLINED_FUNCTION_15_182(uint64_t a1)
{
  result = 0.0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

uint64_t sub_1E325D1C8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E325F03C();
}

uint64_t sub_1E325D248(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E327D7A8;

  return v6(a1);
}

void OUTLINED_FUNCTION_28_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  sub_1E3C2FCB8(&a58, &STACK[0x200]);
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1E3741090(v4, a2, v2);
}

uint64_t OUTLINED_FUNCTION_28_18@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 176) = a1;
  *(v3 - 200) = v2;
  *(v3 - 192) = v1;
}

uint64_t OUTLINED_FUNCTION_28_19()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_28_21()
{

  return sub_1E4204D54();
}

uint64_t OUTLINED_FUNCTION_28_26(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

double OUTLINED_FUNCTION_28_28()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

uint64_t OUTLINED_FUNCTION_28_29()
{

  return sub_1E42000B4();
}

uint64_t OUTLINED_FUNCTION_28_30()
{

  return swift_allocObject();
}

CGFloat OUTLINED_FUNCTION_28_31(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t rect)
{
  v56 = v54;
  v57 = v53;
  v59 = v55;

  return CGRectGetMinX(*&v56);
}

void OUTLINED_FUNCTION_65_2(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_28_33()
{
  *(v1 - 256) = v0;
  *(v2 - 344) = *(v2 - 120);
  *(v2 - 352) = *(v2 - 112);
}

uint64_t OUTLINED_FUNCTION_28_34(unint64_t *a1)
{

  return sub_1E3A17238(a1, v1);
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_28_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id OUTLINED_FUNCTION_28_40()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_28_41()
{

  return sub_1E4200FE4();
}

uint64_t OUTLINED_FUNCTION_41_10()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_28_43()
{
}

uint64_t OUTLINED_FUNCTION_28_45(unint64_t a1)
{
  sub_1E32AE9B0(a1);
}

void OUTLINED_FUNCTION_28_47()
{

  sub_1E3F23370();
}

uint64_t OUTLINED_FUNCTION_28_48()
{
}

uint64_t OUTLINED_FUNCTION_28_53()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_28_55(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2E0] = a1;
  *&STACK[0x2E8] = a2;
  *&STACK[0x2F0] = a3;
  *&STACK[0x2F8] = a4;
  LOBYTE(STACK[0x300]) = 0;
}

uint64_t OUTLINED_FUNCTION_28_56()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_28_58(double a1, double a2, double a3, double a4)
{
  *(v4 - 240) = a1;
  *(v4 - 232) = a2;
  *(v4 - 224) = a3;
  *(v4 - 216) = a4;
  *(v4 - 208) = 0;
}

uint64_t OUTLINED_FUNCTION_28_59()
{

  return sub_1E3C3DE00(v0);
}

void OUTLINED_FUNCTION_28_61(double a1, double a2, double a3, double a4)
{
  *(v4 + 704) = a1;
  *(v4 + 712) = a2;
  *(v4 + 720) = a3;
  *(v4 + 728) = a4;
  *(v4 + 736) = 0;
}

uint64_t OUTLINED_FUNCTION_28_64()
{

  return sub_1E3F9F164((v0 - 152));
}

uint64_t OUTLINED_FUNCTION_28_65()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_67@<X0>(uint64_t a1@<X8>)
{

  return sub_1E4123590(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_28_68()
{

  return sub_1E3F9F164((v0 - 200));
}

uint64_t OUTLINED_FUNCTION_28_70()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_28_71()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_28_75()
{

  return sub_1E4205DF4();
}

uint64_t OUTLINED_FUNCTION_28_76()
{

  return swift_once();
}

double OUTLINED_FUNCTION_28_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39)
{
  v40 = a39;

  return sub_1E3277E60(0x6874646977, 0xE500000000000000, v40, &a39);
}

uint64_t OUTLINED_FUNCTION_28_80()
{
}

void OUTLINED_FUNCTION_28_82()
{

  sub_1E40BF120();
}

uint64_t OUTLINED_FUNCTION_28_83()
{
  v1 = STACK[0x4E8];
  v2 = STACK[0x4F0];
  v3 = STACK[0x4F8];
  v4 = STACK[0x500];
  v5 = STACK[0x508];
  STACK[0x390] = STACK[0x4E0];
  STACK[0x398] = v1;
  STACK[0x3A0] = v2;
  STACK[0x3A8] = v3;
  STACK[0x3B0] = v4;
  STACK[0x3B8] = v5;

  return OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_28_87(uint64_t a1)
{
  v5 = v3 + *(a1 + 48);

  return sub_1E3294EE4(v2, v5, v1);
}

id OUTLINED_FUNCTION_28_88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v7 + 2040)];
}

uint64_t OUTLINED_FUNCTION_28_89()
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_28_90(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x120uLL);
}

void OUTLINED_FUNCTION_28_91(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_92()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_1E42013A4();
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_22_11()
{
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  v6 = *(v4 - 140) & 1;
  v8 = *(v4 - 128);
  v7 = *(v4 - 120);
  v9 = *(v4 - 136);

  return MEMORY[0x1EEDDC6E8](v7, v8, v6, v9, v2, v3, v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_17(uint64_t result)
{
  *(v4 - 144) = v3;
  *(v4 - 136) = v1;
  *(v4 - 128) = v2;
  *(v4 - 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_206()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_16@<X0>(uint64_t a1@<X0>, char a2@<W6>, uint64_t a3@<X8>, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11)
{

  return sub_1E3EB9C0C(a1, 0, 0, 0, 0, 1, a2, 2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

id OUTLINED_FUNCTION_13_15(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t OUTLINED_FUNCTION_22_23(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 152));
}

id OUTLINED_FUNCTION_22_28()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_22_30(unint64_t *a1, uint64_t a2)
{

  return sub_1E374AD40(a1, a2);
}

id OUTLINED_FUNCTION_22_31()
{
  v4 = *(v0 + v1);

  return [v4 (v2 + 2808)];
}

void OUTLINED_FUNCTION_22_38()
{
  v8 = *(v6 - 160);

  sub_1E39FEBB0(v5, v4, v1, v2, v0, v8, v3);
}

uint64_t OUTLINED_FUNCTION_22_40@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2F0] = a1;
  LOBYTE(STACK[0x2F8]) = 0;

  return sub_1E3C2FC98();
}

id OUTLINED_FUNCTION_22_41()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_22_42@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3A640F4(0xD000000000000038, (a1 - 32) | 0x8000000000000000);
}

id OUTLINED_FUNCTION_22_43(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 32) = v3;

  return [v2 (v4 + 376)];
}

uint64_t OUTLINED_FUNCTION_22_45@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];

  return sub_1E3ABCF24(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_22_46()
{

  return sub_1E3C3DE00(v0);
}

uint64_t OUTLINED_FUNCTION_22_47()
{

  return sub_1E41FFBA4();
}

void OUTLINED_FUNCTION_22_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, char a41, uint64_t a42, __int128 a43, __int128 a44, char a45)
{
  a39 = a43;
  a40 = a44;
  a41 = a45;

  sub_1E3C2FCB8(&a9, &STACK[0x2D0]);
}

uint64_t OUTLINED_FUNCTION_22_49()
{
  *(v0 + 336) = *(v1 + 16);
  *(v0 + 352) = *(v0 + 536);
}

uint64_t OUTLINED_FUNCTION_22_50()
{
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;

  return sub_1E3EFF950();
}

uint64_t OUTLINED_FUNCTION_22_51()
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_22_54()
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_22_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return sub_1E328438C(&a23, &a55);
}

uint64_t OUTLINED_FUNCTION_22_62(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC80](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_22_64(unint64_t *a1, uint64_t *a2)
{

  return sub_1E32752B0(a1, a2);
}

id OUTLINED_FUNCTION_22_65()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_22_71()
{

  return sub_1E42079A4();
}

void *OUTLINED_FUNCTION_22_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x2D8], 0x59uLL);
}

id OUTLINED_FUNCTION_22_75(id a1, SEL a2, double a3, double a4)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_22_76()
{
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;

  return sub_1E3BD61D8();
}

uint64_t OUTLINED_FUNCTION_22_78()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_22_80()
{

  return type metadata accessor for StackTemplateView();
}

uint64_t OUTLINED_FUNCTION_22_81(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1E41FE914();
}

uint64_t OUTLINED_FUNCTION_22_82()
{

  return sub_1E4205CB4();
}

uint64_t OUTLINED_FUNCTION_22_83()
{
  v1 = STACK[0x260];
  v2 = *&STACK[0x250];
  *&STACK[0x210] = *&STACK[0x240];
  *&STACK[0x220] = v2;
  LOBYTE(STACK[0x230]) = v1;
  return v0;
}

void OUTLINED_FUNCTION_22_84()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_22_91()
{

  return type metadata accessor for RelationalLayout();
}

id OUTLINED_FUNCTION_22_95()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_22_96()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_22_100(uint64_t a1)
{

  return sub_1E3744600(a1);
}

uint64_t OUTLINED_FUNCTION_22_102()
{
}

void OUTLINED_FUNCTION_22_105(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1E3C2FCB8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_22_106()
{

  return sub_1E4202C04();
}

double OUTLINED_FUNCTION_22_107@<D0>(void *a1@<X8>)
{
  *(v2 + *a1) = v1;
  *(v2 + a1[1]) = 0;
  *(v2 + a1[2]) = 0;
  v3 = v2 + a1[3];
  *(v3 + 32) = 0;
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_22_108()
{
  v1 = STACK[0x490];
  result = *(v0 + 944);
  v3 = *(v0 + 960);
  *(v0 + 896) = result;
  *(v0 + 912) = v3;
  LOBYTE(STACK[0x460]) = v1;
  return result;
}

id OUTLINED_FUNCTION_22_109(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_22_110()
{

  return sub_1E37E93E8(v1 - 144, v1 - 160, v0);
}

uint64_t OUTLINED_FUNCTION_22_114()
{
  *(v1 - 160) = 0;
  *(v1 - 168) = 0;
  return v0;
}

uint64_t sub_1E325EA58()
{
  sub_1E4202624();
  sub_1E42013A4();
  sub_1E4201F54();
  sub_1E3806164();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}