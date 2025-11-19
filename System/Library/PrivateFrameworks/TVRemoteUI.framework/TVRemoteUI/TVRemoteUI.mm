uint64_t getEnumTagSinglePayload for FLSimpleSpringState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FLSimpleSpringState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *_sSo30SKLabelHorizontalAlignmentModeVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo23CHHapticEngineOptionKeyaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26CFEDE08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEDE40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CFEDE88()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEDEC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEDF40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CFEDF78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEDFB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEDFEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE024()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CFEE064()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE09C()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE0D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE10C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE17C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26CFEE1B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE1EC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26CFEE224()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE25C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE294()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE2D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE308()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE340()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_26CFEE388()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CFEE3D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CFEE410()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE44C()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_26CFEE484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fmpfArrowDotCount];
  *a2 = result;
  return result;
}

id sub_26CFEE4CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfDebugMode];
  *a2 = result;
  return result;
}

uint64_t sub_26CFEE514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE54C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_26CFEE584()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CFEE5C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE628()
{
  v1 = *(v0 + 40);
  if ((v1 - 1) >= 9)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

id sub_26CFEE684@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfEcoMode];
  *a2 = result;
  return result;
}

uint64_t sub_26CFEE6CC()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE704()
{
  MEMORY[0x26D6B27B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CFEE73C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26CFEE774()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CFEE7B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_26CFEF3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFEF9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFEFC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFEFF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_26CFF1E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFF45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFF4CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFF8BD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x310]);
  objc_destroyWeak(&STACK[0x338]);
  objc_destroyWeak(&STACK[0x340]);
  _Unwind_Resume(a1);
}

void sub_26CFFA814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFC8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a69);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFD470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak(&a40);
  objc_destroyWeak((v40 - 176));
  objc_destroyWeak((v40 - 168));
  _Unwind_Resume(a1);
}

void sub_26CFFDE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFE110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFE7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFE994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26CFFEB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D00426C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 192));
  objc_destroyWeak((v1 - 184));
  _Unwind_Resume(a1);
}

id _TVRMakeDirectionalImageView(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = [MEMORY[0x277D755B8] imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];

  v6 = [v4 initWithImage:v5];
  v7 = [v6 layer];
  v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  [v7 setCompositingFilter:v8];

  [v6 setAlpha:0.24];

  return v6;
}

double _TVRImageFrameForDirectionalImage(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = [a1 image];
  [v11 size];
  v13 = v12;

  UIRectCenteredIntegralRect();
  v15 = v14;
  UIRectGetCenter();
  v17 = v16;
  if ((a2 & 2) != 0)
  {
    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    v15 = (v17 + -44.0 + CGRectGetMinX(v20)) * 0.5 - v13 * 0.5;
    if ((a2 & 8) == 0)
    {
LABEL_3:
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      if ((a2 & 4) == 0)
      {
        return v15;
      }

      goto LABEL_5;
    }
  }

  else if ((a2 & 8) == 0)
  {
    goto LABEL_3;
  }

  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  v15 = (v17 + 44.0 + CGRectGetMaxX(v21)) * 0.5 - v13 * 0.5;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a2 & 4) != 0)
  {
LABEL_5:
    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    CGRectGetMaxY(v19);
  }

  return v15;
}

void sub_26D00ADBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26D00C434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26D00D18C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26D00F590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D010878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D011588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D014D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a63);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D0154E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D0156B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D015BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D015E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D018DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D01A920(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x2D0]);
  objc_destroyWeak(&STACK[0x348]);
  objc_destroyWeak(&STACK[0x350]);
  _Unwind_Resume(a1);
}

void sub_26D01AF90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26D01FF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D020ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a71);
  objc_destroyWeak((v72 - 216));
  objc_destroyWeak((v72 - 176));
  objc_destroyWeak((v72 - 136));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D021558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D022F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D023B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak((v69 - 216));
  objc_destroyWeak((v69 - 176));
  objc_destroyWeak((v69 - 136));
  _Unwind_Resume(a1);
}

void sub_26D0252E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D02562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D02F160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D0348B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D0360A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D036EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_26D037520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _TVRImageFrameForDirectionalImage_0(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = [a1 image];
  [v11 size];
  v13 = v12;

  UIRectCenteredIntegralRect();
  if ((a2 & 2) != 0)
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    MinX = CGRectGetMinX(v17);
  }

  v15 = MinX;
  if ((a2 & 8) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    CGRectGetMinY(v20);
    if ((a2 & 4) == 0)
    {
      return v15;
    }

    goto LABEL_6;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  v15 = CGRectGetMaxX(v19) - v13;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((a2 & 4) != 0)
  {
LABEL_6:
    v18.origin.x = a3;
    v18.origin.y = a4;
    v18.size.width = a5;
    v18.size.height = a6;
    CGRectGetMaxY(v18);
  }

  return v15;
}

void sub_26D03F754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D040B7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 144));
  _Unwind_Resume(a1);
}

void sub_26D04106C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D041528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D041BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_26D043644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _TVRUIButtonLog()
{
  if (_TVRUIButtonLog_onceToken != -1)
  {
    _TVRUIButtonLog_cold_1();
  }

  v1 = _TVRUIButtonLog_log;

  return v1;
}

id _TVRUIDeviceInfoLog()
{
  if (_TVRUIDeviceInfoLog_onceToken != -1)
  {
    _TVRUIDeviceInfoLog_cold_1();
  }

  v1 = _TVRUIDeviceInfoLog_log;

  return v1;
}

id _TVRUIDevicePickerLog()
{
  if (_TVRUIDevicePickerLog_onceToken != -1)
  {
    _TVRUIDevicePickerLog_cold_1();
  }

  v1 = _TVRUIDevicePickerLog_log;

  return v1;
}

id _TVRUIDeviceQueryLog()
{
  if (_TVRUIDeviceQueryLog_onceToken != -1)
  {
    _TVRUIDeviceQueryLog_cold_1();
  }

  v1 = _TVRUIDeviceQueryLog_log;

  return v1;
}

id _TVRUIHintsLog()
{
  if (_TVRUIHintsLog_onceToken != -1)
  {
    _TVRUIHintsLog_cold_1();
  }

  v1 = _TVRUIHintsLog_log;

  return v1;
}

id _TVRUIIRLog()
{
  if (_TVRUIIRLog_onceToken != -1)
  {
    _TVRUIIRLog_cold_1();
  }

  v1 = _TVRUIIRLog_log;

  return v1;
}

id _TVRUIIntentManagerLog()
{
  if (_TVRUIIntentManagerLog_onceToken != -1)
  {
    _TVRUIIntentManagerLog_cold_1();
  }

  v1 = _TVRUIIntentManagerLog_log;

  return v1;
}

id _TVRUIKeyboardLog()
{
  if (_TVRUIKeyboardLog_onceToken != -1)
  {
    _TVRUIKeyboardLog_cold_1();
  }

  v1 = _TVRUIKeyboardLog_log;

  return v1;
}

id _TVRUINetworkObserverLog()
{
  if (_TVRUINetworkObserverLog_onceToken != -1)
  {
    _TVRUINetworkObserverLog_cold_1();
  }

  v1 = _TVRUINetworkObserverLog_log;

  return v1;
}

id _TVRUIPrewarmLog()
{
  if (_TVRUIPrewarmLog_onceToken != -1)
  {
    _TVRUIPrewarmLog_cold_1();
  }

  v1 = _TVRUIPrewarmLog_log;

  return v1;
}

id _TVRUISignpostLog()
{
  if (_TVRUISignpostLog_onceToken != -1)
  {
    _TVRUISignpostLog_cold_1();
  }

  v1 = _TVRUISignpostLog_log;

  return v1;
}

id _TVRUISiriLog()
{
  if (_TVRUISiriLog_onceToken != -1)
  {
    _TVRUISiriLog_cold_1();
  }

  v1 = _TVRUISiriLog_log;

  return v1;
}

id _TVRUITipsLog()
{
  if (_TVRUITipsLog_onceToken != -1)
  {
    _TVRUITipsLog_cold_1();
  }

  v1 = _TVRUITipsLog_log;

  return v1;
}

id _TVRUIViewControllerLog()
{
  if (_TVRUIViewControllerLog_onceToken != -1)
  {
    _TVRUIViewControllerLog_cold_1();
  }

  v1 = _TVRUIViewControllerLog_log;

  return v1;
}

id _TVRUIViewServiceLog()
{
  if (_TVRUIViewServiceLog_onceToken != -1)
  {
    _TVRUIViewServiceLog_cold_1();
  }

  v1 = _TVRUIViewServiceLog_log;

  return v1;
}

id _TVRUIVolumeControllerLog()
{
  if (_TVRUIVolumeControllerLog_onceToken != -1)
  {
    _TVRUIVolumeControllerLog_cold_1();
  }

  v1 = _TVRUIVolumeControllerLog_log;

  return v1;
}

id _TVRUINowPlayingLog()
{
  if (_TVRUINowPlayingLog_onceToken != -1)
  {
    _TVRUINowPlayingLog_cold_1();
  }

  v1 = _TVRUINowPlayingLog_log;

  return v1;
}

id _TVRUIDockLog()
{
  if (_TVRUIDockLog_onceToken != -1)
  {
    _TVRUIDockLog_cold_1();
  }

  v1 = _TVRUIDockLog_log;

  return v1;
}

void sub_26D047A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x328]);
  _Unwind_Resume(a1);
}

void sub_26D048964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D048CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D04B30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getVUITimeMetadataFactoryClass_block_invoke(uint64_t a1)
{
  VideosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VUITimeMetadataFactory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVUITimeMetadataFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVUITimeMetadataFactoryClass_block_invoke_cold_1();
    VideosUILibrary();
  }
}

void VideosUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!VideosUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __VideosUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279D88B00;
    v3 = 0;
    VideosUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VideosUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VideosUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VideosUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getVUITimedMetadataPlaybackInfoClass_block_invoke(uint64_t a1)
{
  VideosUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VUITimedMetadataPlaybackInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVUITimedMetadataPlaybackInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getVUITimedMetadataPlaybackInfoClass_block_invoke_cold_1();
    [(TVRUIMediaControlsViewController *)v2 viewDidLoad];
  }
}

void sub_26D04CD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D04D0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_26D0501A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26D051980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D05216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 176));
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_26D05323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D053E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D054F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D057254(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_26D058270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D05B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D05EED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_26D06233C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _TVRUIIsCategory(void *a1)
{
  v1 = a1;
  v2 = _AXSCopyPreferredContentSizeCategoryName();
  v3 = [v2 isEqualToString:v1];

  return v3;
}

void sub_26D0685C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_26D068960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26D06ABEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __TVRPointSizeOfSiriRemoteOnMainScreen_block_invoke()
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 nativeScale];
  v1 = v0;
  v2 = MGGetSInt32Answer();
  [v5 nativeBounds];
  v8.size.width = 1080.0;
  v8.size.height = 1920.0;
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v3 = CGRectEqualToRect(v7, v8);
  v4 = v2;
  if (v3)
  {
    v4 = 401.0;
  }

  TVRPointSizeOfSiriRemoteOnMainScreen_size_0 = round(v4 * 1.4723 / v1);
  TVRPointSizeOfSiriRemoteOnMainScreen_size_1 = round(v4 * 1.6 / v1);
}

void sub_26D0718FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D0726E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D072DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  _Unwind_Resume(a1);
}

void sub_26D074C08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26D07780C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

void sub_26D077B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D07846C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  objc_destroyWeak((v58 + 32));
  objc_destroyWeak((v59 + 32));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a58);
  objc_destroyWeak((v60 - 216));
  _Unwind_Resume(a1);
}

void sub_26D0795DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26D07AD34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_26D07B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak((v32 - 152));
  _Unwind_Resume(a1);
}

char *FMPFSKPeripheralDotNode.init(experienceType:name:dotDiameter:color:diskRadius:dotScale:angle:opacity:offset:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = *a1;
  v19 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode;
  v20 = type metadata accessor for FMPFSKNode();
  *&v16[v19] = [objc_allocWithZone(v20) init];
  v21 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode;
  *&v16[v21] = [objc_allocWithZone(v20) init];
  v22 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode;
  *&v16[v22] = [objc_allocWithZone(v20) init];
  v23 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  v107 = v23;
  *&v16[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode;
  *&v16[v24] = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangingNode()) init];
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode] = 0;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 0;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction] = 0;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] = 1;
  v25 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
  *v25 = 0;
  v25[8] = 1;
  v26 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
  *v26 = 0;
  v26[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] = 1;
  v27 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale];
  *v28 = 0;
  v28[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyAngle] = 1;
  v29 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle];
  *v30 = 0;
  v30[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] = 1;
  v31 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity];
  *v32 = 0;
  v32[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] = 1;
  v33 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightness];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness];
  *v34 = 0;
  v34[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOffset] = 1;
  v35 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOffset];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = 0;
  v37 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
  *v37 = 0;
  v37[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 1;
  v38 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactor];
  *v38 = 0;
  v38[8] = 1;
  v39 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedRadiusFactor];
  *v39 = 0;
  v39[8] = 1;
  v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_experienceType] = v18;
  if (v18 == 1)
  {
    if (one-time initialization token for r1NoAR != -1)
    {
      swift_once();
    }

    v40 = &static FMPFSKPeripheralDotNodeStyle.r1NoAR;
  }

  else
  {
    if (one-time initialization token for r1OrBT != -1)
    {
      swift_once();
    }

    v40 = &static FMPFSKPeripheralDotNodeStyle.r1OrBT;
  }

  v41 = v40[3];
  v117 = v40[2];
  v118 = v41;
  v119 = v40[4];
  v120 = *(v40 + 10);
  v42 = v40[1];
  v115 = *v40;
  v116 = v42;
  v43 = &v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style];
  v44 = v118;
  *(v43 + 2) = v117;
  *(v43 + 3) = v44;
  *(v43 + 4) = v119;
  *(v43 + 10) = v120;
  v45 = v116;
  *v43 = v115;
  *(v43 + 1) = v45;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotDiameter] = a9;
  v46 = objc_opt_self();
  outlined init with copy of FMPFSKPeripheralDotNodeStyle(&v115, v114);

  v47 = MEMORY[0x26D6B1210](0xD000000000000011, 0x800000026D0DAE90);
  v48 = MGGetSInt32Answer();

  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_pixelsPerInch] = v48;
  v49 = a4;
  if (a4)
  {
    v50 = a4;
  }

  else
  {
    v50 = [objc_opt_self() whiteColor];
    v49 = 0;
  }

  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor] = v50;
  v110 = v49;
  v51._countAndFlagsBits = 0xD000000000000016;
  v51._object = 0x800000026D0DAEB0;
  v112.super.isa = FMPFTexture(name:)(v51).super.isa;
  [(objc_class *)v112.super.isa size];
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_subScale] = 1.0 / (v52 / a9);
  *v25 = a5;
  v25[8] = a6 & 1;
  *v27 = a7;
  v27[8] = a8 & 1;
  *v29 = a10;
  v29[8] = a11 & 1;
  *v31 = a12;
  v31[8] = a13 & 1;
  *v33 = *(v43 + 3);
  v33[8] = 0;
  *v35 = a14;
  *(v35 + 1) = a15;
  v35[16] = a16 & 1;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(a5, a6 & 1, 0x3FE0000000000000, 0, 0, 1);
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(*v27, v27[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(*v29, v29[8], 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacitySpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(*v31, v31[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  v53 = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(*v33, v33[8], 0x3F847AE147AE147BLL, 0);
  v54 = 0;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightnessSpring] = v53;
  if ((v35[16] & 1) == 0)
  {
    v54 = *v35;
  }

  v55 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(v54, v35[16], 0x3FE0000000000000, 0, 0, 1);
  v56 = 0;
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_xOffsetSpring] = v55;
  if ((v35[16] & 1) == 0)
  {
    v56 = *(v35 + 1);
  }

  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(v56, v35[16], 0x3FE0000000000000, 0, 0, 1);
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_headingSpring] = specialized static FMPFFluidSpring.randomSpringWith(initialValue:randomFactor:stableValueThreshold:)(0, 0, 0, 1, 0x3FE0000000000000, 0);
  *&v16[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactorSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  [*&v16[v107] setTexture_];
  v57 = *&v16[v107];
  [(objc_class *)v112.super.isa size];
  [v57 setSize_];

  [*&v16[v107] setColorBlendFactor_];
  v113.receiver = v16;
  v113.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  v58 = objc_msgSendSuper2(&v113, sel_init);
  v59 = v58;
  if (a3)
  {
    v60 = MEMORY[0x26D6B1210](a2, a3);
  }

  else
  {
    v60 = 0;
  }

  [v58 setName_];

  v61 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode;
  [v58 addChild_];
  v62 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode;
  [*&v58[v61] addChild_];
  v63 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode;
  [*&v58[v62] addChild_];
  v64 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*&v58[v63] addChild_];
  v65 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode;
  [v58 addChild_];
  v109 = v65;
  v66 = *&v58[v65];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26D0D2860;
  v68 = objc_opt_self();
  v69 = objc_opt_self();
  v70 = v66;
  v71 = [v69 rangeWithConstantValue_];
  v72 = [v68 distance:v71 toNode:*&v58[v63]];

  *(v67 + 32) = v72;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v70 setConstraints_];

  v74 = *&v58[v61];
  v75 = MEMORY[0x26D6B1210](0x6C61626D6947, 0xE600000000000000);
  [v74 setName_];

  v76 = *&v58[v63];
  v77 = MEMORY[0x26D6B1210](7630660, 0xE300000000000000);
  [v76 setName_];

  v78 = *&v58[v64];
  v79 = MEMORY[0x26D6B1210](0x68746150746F44, 0xE700000000000000);
  [v78 setName_];

  if ((v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
  {
    v80 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius];
    v81 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
    *v81 = v80;
    *(v81 + 8) = 0;
    [*&v58[v62] setPosition_];
  }

  if ((v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale + 8] & 1) == 0)
  {
    v82 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale];
    v83 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale];
    *v83 = v82;
    *(v83 + 8) = 0;
    [*&v58[v63] setScale_];
  }

  if ((v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
  {
    v84 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle];
    v85 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle];
    *v85 = v84;
    *(v85 + 8) = 0;
    if (!*&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
    {
      [*&v58[v61] setZRotation_];
    }
  }

  if ((v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity + 8] & 1) == 0)
  {
    v86 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity];
    v87 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity];
    *v87 = v86;
    v88 = v86;
    *(v87 + 8) = 0;
    [*&v58[v63] setAlpha_];
    [*&v58[v109] setAlpha_];
  }

  if ((v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightness + 8] & 1) == 0)
  {
    v89 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightness];
    v90 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness];
    *v90 = v89;
    v91 = v89;
    *(v90 + 8) = 0;
    v92 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor];
    v93 = *&v58[v64];
    v94 = v92;
    FMPFSKSpriteNode.setBrightness(_:with:)(v94, v91);
  }

  if (v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset + 16])
  {
    v95 = v58;
    v96 = v110;
    v97 = v112.super.isa;
  }

  else
  {
    v98 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset + 8];
    v99 = *&v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset];
    v100 = &v58[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v100 = v99;
    v100[1] = v98;
    *(v100 + 16) = 0;
    [v58 setPosition_];
    v95 = v110;
    v96 = v112.super.isa;
    v97 = v58;
  }

  return v58;
}

uint64_t FMPFSKPeripheralDotNode.description.getter()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v2 = _Pointer.debugDescription.getter();
  v4 = specialized BidirectionalCollection.suffix(_:)(6, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x26D6B1280](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x26D6B12B0](v11, v13);

  MEMORY[0x26D6B12B0](30768, 0xE200000000000000);

  MEMORY[0x26D6B12B0](32, 0xE100000000000000);
  v14 = [v0 name];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v17;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x26D6B12B0](v16, v1);

  MEMORY[0x26D6B12B0](62, 0xE100000000000000);
  v18 = String.init(format:_:)();

  return v18;
}

id FMPFSKPeripheralDotNode.createBeaconSubNode()()
{
  type metadata accessor for FMPFSKSpriteNode();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2._object = 0x800000026D0DAEB0;
  v2._countAndFlagsBits = 0xD000000000000016;
  isa = FMPFTexture(name:)(v2).super.isa;
  v4 = v1;
  [v4 setTexture_];
  [(objc_class *)isa size];
  [v4 setSize_];
  v5 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style;
  [v4 setColor_];
  [v4 setColorBlendFactor_];

  v6 = *(v5 + 40);
  v7 = v4;
  [v7 setAlpha_];
  [v7 setScale_];
  v8 = MEMORY[0x26D6B1210](0x6E6F63616542, 0xE600000000000000);
  [v7 setName_];

  return v7;
}

void closure #1 in FMPFSKPeripheralDotNode.executePartPerimeterRotation(_:)(void *a1, char *a2, double a3)
{
  [a1 setSpeed_];
  if ((a2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0)
  {
    v5 = *&a2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v6 = *&a2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode];
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = v5;
      v7[4] = a2;
      v12[4] = closure #1 in FMPFSKPeripheralDotNode.executePartPerimeterRotation(_:)partial apply;
      v12[5] = v7;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed () -> ();
      v12[3] = &block_descriptor_178;
      v8 = _Block_copy(v12);
      v9 = v6;
      v10 = a1;
      v11 = a2;

      [v9 runAction:v10 completion:v8];
      _Block_release(v8);
    }
  }
}

void FMPFSKPeripheralDotNode.renderingColor.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor;
  v3 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor);
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor) = a1;
  v10 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode);
  v5 = &v4[OBJC_IVAR____TtC10TVRemoteUI16FMPFSKSpriteNode_previousBrightness];
  *v5 = 0;
  v5[8] = 1;
  if ((*(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness);
    v7 = *(v1 + v2);
    v8 = v4;
    v9 = v7;
    FMPFSKSpriteNode.setBrightness(_:with:)(v9, v6);
  }
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.setFreeFromBearing()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (!*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if ((v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0 && (v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = &v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style];
      v5 = (*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius] + *&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius]) * 3.14159265 / (*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style] * 0.5);
      v6 = dbl_26D0D2870[(specialized RandomNumberGenerator.next<A>(upperBound:)(100) & 1) == 0];
      v7 = [objc_opt_self() rotateByAngle:v6 / v4[2] duration:v5 / v4[2]];
      [v7 setTimingMode_];
      [v7 setSpeed_];
      v8 = *&v0[v1];
      *&v0[v1] = v7;
      v16 = v7;

      if ((v2[1] & 1) != 0 || (v9 = *v2, UIAccessibilityIsReduceMotionEnabled()))
      {
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode];
        v11 = swift_allocObject();
        *(v11 + 2) = v16;
        v11[3] = v9;
        *(v11 + 4) = v0;
        aBlock[4] = partial apply for closure #1 in FMPFSKPeripheralDotNode.executePartPerimeterRotation(_:);
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_171;
        v12 = _Block_copy(aBlock);
        v13 = v16;
        v14 = v10;
        v15 = v0;

        [v14 runAction:v13 completion:v12];

        _Block_release(v12);
      }
    }
  }
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.setBoundToBearing()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle];
    if ((v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode;
      [*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode] removeAllActions];
      v5 = *&v0[v1];
      *&v0[v1] = 0;

      v6 = fmod(*&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] / 180.0 * 3.14159265, 6.28318531);
      if (v6 <= 3.14159265)
      {
        if (v6 < -3.14159265)
        {
          v6 = v6 + 6.28318531;
        }
      }

      else
      {
        v6 = v6 + -6.28318531;
      }

      [*&v0[v4] zRotation];
      v8 = fmod(v7, 6.28318531);
      if (v8 <= 3.14159265)
      {
        if (v8 < -3.14159265)
        {
          v8 = v8 + 6.28318531;
        }
      }

      else
      {
        v8 = v8 + -6.28318531;
      }

      v9 = v6 + v8;
      v10 = v3 - (v6 + v8);
      if (vabdd_f64(v3, v9) > 3.14159265)
      {
        if (v9 >= 0.0 || v3 < 0.0)
        {
          if (v3 < 0.0 && v9 >= 0.0)
          {
            v10 = v10 + 6.28318531;
          }
        }

        else
        {
          v10 = v10 + -6.28318531;
        }
      }

      v12 = v3 - v10;
      *v2 = v3 - v10;
      *(v2 + 8) = 0;
      [*&v0[v4] setZRotation_];
      v13 = *&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring];
      FLSpring.resetImmediately(toValue:)(v12);
      *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      [v0 setZRotation_];
      v14 = *&v0[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_headingSpring];
      FLSpring.resetImmediately(toValue:)(0.0);
      *(v14 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;

      FMPFSKPeripheralDotNode.setAngle(_:sprung:)(1, v3);
    }
  }
}

uint64_t FMPFSKPeripheralDotNode.presentedRingCount.getter()
{
  v1 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse);
  v2 = [*(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode) children];
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_24:
    if (v3 < 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = v4;
    }

    v5 = MEMORY[0x26D6B1780](v20);
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v24 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  v25 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v26 = v3 & 0xC000000000000001;
  v22 = v5;
  v23 = v1;
LABEL_4:
  if (v6 != v5)
  {
    do
    {
      if (v26)
      {
        v7 = MEMORY[0x26D6B1680](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass() || (v10 = *(v1 + v25)) != 0 && (v11 = v8, v12 = v4, v13 = v3, v14 = v10, v15 = static NSObject.== infix(_:_:)(), v11, v1 = v23, v14, v3 = v13, v4 = v12, v5 = v22, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(v1 + v24);
        v17 = static NSObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          ++v6;
          if (!__OFADD__(v21++, 1))
          {
            goto LABEL_4;
          }

          __break(1u);
          break;
        }
      }

      ++v6;
    }

    while (v9 != v5);
  }

  return v21;
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.pulse(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (_)
  {
    v3 = objc_opt_self();
    v4 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style];
    v5 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style + 64];
    v6 = [v3 fadeAlphaTo:*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style + 48] duration:v5];
    [v6 setTimingMode_];
    if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse])
    {
      v7 = FMPFSKPeripheralDotNode.createBeaconSubNode()();
      v8 = [v3 scaleTo:v4[4] duration:v5];
      [v8 setTimingMode_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26D0D2880;
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKAction);
      v10 = v6;
      v11 = v8;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = [v3 group_];

      [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] addChild_];
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      v44 = partial apply for closure #2 in FMPFSKPeripheralDotNode.pulse(_:animated:);
      v45 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed () -> ();
      v43 = &block_descriptor_165;
      v15 = _Block_copy(&aBlock);
      v16 = v7;

      [v16 runAction:v13 completion:v15];

      _Block_release(v15);
    }

    else
    {
      v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 1;
      v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 1;
      v26 = [v3 scaleTo:v4[4] duration:v5];
      [v26 setTimingMode_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D0D2880;
      *(v27 + 32) = v6;
      *(v27 + 40) = v26;
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKAction);
      v28 = v6;
      v29 = v26;
      v30 = Array._bridgeToObjectiveC()().super.isa;

      v31 = [v3 group_];

      v32 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      v44 = partial apply for closure #1 in FMPFSKPeripheralDotNode.pulse(_:animated:);
      v45 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed () -> ();
      v43 = &block_descriptor;
      v34 = _Block_copy(&aBlock);
      v35 = v32;
      v36 = v2;

      [v35 runAction:v31 completion:v34];

      _Block_release(v34);
    }
  }

  else if (!animated)
  {
    aBlock = MEMORY[0x277D84F90];
    v17 = [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] children];
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v2;
    specialized Sequence.forEach(_:)(v18, v19, &aBlock);

    v20 = aBlock;
    if (aBlock >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v37))
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26D6B1680](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v23 removeFromParent];

        ++v22;
        if (v25 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      if (v20 < 0)
      {
        v37 = v20;
      }

      else
      {
        v37 = v20 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_22:
    v38 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse;
    if (v19[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] == 1)
    {
      v39 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
      [*&v19[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode] removeAllActions];
      [*&v19[v39] setScale_];
      [*&v19[v39] setAlpha_];
    }

    v19[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
    v19[v38] = 0;
  }
}

void FMPFSKPeripheralDotNode.setDotScale(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring), v7 = v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale;
    *v9 = a2;
    *(v9 + 8) = 0;
    [*(v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode) setScale_];
  }
}

void FMPFSKPeripheralDotNode.setAngle(_:sprung:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring), v7 = v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = a2;
    *(v9 + 8) = 0;
    if (!*(v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      [*(v3 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_];
    }
  }
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.setOffset(_:sprung:)(CGPoint _, Swift::Bool sprung)
{
  v3 = v2;
  y = _.y;
  x = _.x;
  v6 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset];
  *v6 = _.x;
  *(v6 + 1) = *&_.y;
  v6[16] = 0;
  if (!sprung || (v7 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_xOffsetSpring], v8 = v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v8 + 280) + *(v7 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) == 1.79769313e308) || (v9 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring, v10 = *&v3[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring], v11 = v10 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v11 + 280) + *(v10 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) == 1.79769313e308))
  {
    v12 = *&v3[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    FLSpring.resetImmediately(toValue:)(x);
    *(v12 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v13 = *&v3[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring];
    FLSpring.resetImmediately(toValue:)(y);
    *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v14 = &v3[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v14 = x;
    v14[1] = y;
    *(v14 + 16) = 0;
    [v3 setPosition_];
  }

  else
  {
    v15 = v7 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v15 = x;
    *(v15 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
    v16 = *&v3[v9] + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v16 = y;
    *(v16 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.addSprungRelativeHeading(_:)(Swift::Double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_headingSpring);
  v4 = v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
  swift_beginAccess();
  v5 = v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
  v6 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  v7 = *(v4 + 280) + v6;
  v8 = v7 + a1;
  if (v7 == 1.79769313e308)
  {
    FLSpring.resetImmediately(toValue:)(v8);
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v6 = *(v5 + 40);
  }

  v9 = v8 - v6;
  *(v4 + 280) = v9;
  *(v4 + 240) = v9;
  *(v4 + 248) = 0;
}

id FMPFSKPeripheralDotNode.setUnsprungInteractiveAngleFactor(_:)(id result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if ((a2 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle + 8) & 1) == 0)
  {
    v4 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle);
    v5 = *&result;
    v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring);
    v7 = (v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    result = swift_beginAccess();
    v8 = *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v8) <= *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    v9 = v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = v4 * v5 + (1.0 - v5) * v8;
    *(v9 + 8) = 0;
    if (!*(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      return [*(v2 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_];
    }
  }

  return result;
}

void FMPFSKPeripheralDotNode.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor);
}

id FMPFSKPeripheralDotNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CHHapticPatternKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x26D6B1210](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticPatternKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  v3 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticEngineOptionKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey, type metadata accessor for CHHapticEngineOptionKey);
  v3 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey, type metadata accessor for CHHapticEngineOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CHHapticPatternKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x26D6B1210](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticPowerUsage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticPowerUsage and conformance CHHapticPowerUsage, type metadata accessor for CHHapticPowerUsage);
  v3 = lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(&lazy protocol witness table cache variable for type CHHapticPowerUsage and conformance CHHapticPowerUsage, type metadata accessor for CHHapticPowerUsage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CHHapticPatternKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x26D6B12E0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CHHapticPatternKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CHHapticPatternKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CHHapticPatternKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
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

void specialized FMPFSKPeripheralDotNode.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangingNode()) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius) = 1;
  v7 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDotScale) = 1;
  v9 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScale;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyAngle) = 1;
  v11 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angle;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOpacity) = 1;
  v13 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacity;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyBrightness) = 1;
  v15 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightness;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOffset) = 1;
  v17 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_offset;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOffset;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading) = 0;
  v19 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor) = 1;
  v20 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactor;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v0 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v21 = 0;
  *(v21 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D6B1780](v19))
  {
    v5 = 0;
    v21 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
    v22 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6B1680](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = v9;
      v11 = *(a2 + v22);
      if (!v11)
      {
        v15 = v7;
LABEL_16:
        v16 = *(a2 + v21);
        type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          [v10 removeAllActions];
          MEMORY[0x26D6B1320](v7);
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        goto LABEL_5;
      }

      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
      v12 = v7;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    if (a1 < 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

uint64_t type metadata accessor for SKConstraint(uint64_t a1, unint64_t *a2)
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

id partial apply for closure #1 in FMPFSKPeripheralDotNode.pulse(_:animated:)()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  v2 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode) setScale_];
  v3 = *(v1 + v2);

  return [v3 setAlpha_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for NSProcessInfoThermalState(uint64_t a1, unint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type CHHapticEngineOptionKey and conformance CHHapticEngineOptionKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10TVRemoteUI17FMFindingDistanceVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t get_enum_tag_for_layout_string_10TVRemoteUI20FMFindingMeasurementO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_10TVRemoteUI14FMFindingStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 <= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 4;
  if (v2 <= 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 98))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 4;
  if (v4 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 5)
  {
    return v7 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFindingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 9;
    }
  }

  return result;
}

double destructiveInjectEnumTag for FMFindingState(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 - 2147483642;
  }

  else if (a2)
  {
    *(a1 + 16) = a2 + 5;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingState.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D6572757361656DLL;
  v4 = 0xEB00000000746E65;
  if (v2 != 1)
  {
    v3 = 0x646E657274;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6D6572757361656DLL;
  v8 = 0xEB00000000746E65;
  if (*a2 != 1)
  {
    v7 = 0x646E657274;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6973616572636564;
    }

    else
    {
      v4 = 0x656C62617473;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6973616572636E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xEA0000000000676ELL;
  v8 = 0x656C62617473;
  if (a2 == 2)
  {
    v8 = 0x6973616572636564;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6973616572636E69;
    v6 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingState.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMFindingState.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingState.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FMFindingState.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FMFindingState.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FMFindingState.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D6572757361656DLL;
  if (v2 != 1)
  {
    v5 = 0x646E657274;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FMFindingState.CodingKeys()
{
  v1 = 0x6D6572757361656DLL;
  if (*v0 != 1)
  {
    v1 = 0x646E657274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FMFindingState.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FMFindingState.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FMFindingState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FMFindingState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFindingState.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 7)
  {
    if (v1 != 8)
    {
      if (v1 == 9)
      {
        v2 = 0xEF68746150646574;
        v3 = 0x6172656E65676564;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = 0xE600000000000000;
    v3 = 0x676E69766F6DLL;
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v2 = 0xEA0000000000676ELL;
        v3 = 0x697463656E6E6F63;
        goto LABEL_11;
      }

LABEL_8:
      v4 = FMFindingMeasurement.description.getter();
      MEMORY[0x26D6B12B0](v4);

      v3 = 0x657463656E6E6F63;
      v2 = 0xEB00000000203A64;
      goto LABEL_11;
    }

    v2 = 0xEC00000064657463;
    v3 = 0x656E6E6F63736964;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D0D2E90;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  return String.init(format:_:)();
}

uint64_t FMFindingState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10TVRemoteUI14FMFindingStateO10CodingKeys33_A3DFBA6D09331B27A32318957F9878E4LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v10 = *(v3 + 97);
  if (v9 > 7)
  {
    if (v9 == 8)
    {
      LOBYTE(v14) = 0;
      goto LABEL_12;
    }

    if (v9 == 9)
    {
      LOBYTE(v14) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v9 == 6)
    {
      LOBYTE(v14) = 0;
      goto LABEL_12;
    }

    if (v9 == 7)
    {
      LOBYTE(v14) = 0;
LABEL_12:
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    }
  }

  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *v3;
    v15 = v9;
    v17 = *(v3 + 40);
    v18 = *(v3 + 56);
    v19[0] = *(v3 + 72);
    *(v19 + 9) = *(v3 + 81);
    v16 = *(v3 + 24);
    v13 = 1;
    lazy protocol witness table accessor for type FMFindingMeasurement and conformance FMFindingMeasurement();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = v10;
    v13 = 2;
    lazy protocol witness table accessor for type FMFindingTrend and conformance FMFindingTrend();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMFindingState.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v1 > 7)
  {
    if (v1 == 8)
    {
      v2 = 4;
      return MEMORY[0x26D6B18C0](v2);
    }

    if (v1 == 9)
    {
      v2 = 5;
      return MEMORY[0x26D6B18C0](v2);
    }
  }

  else
  {
    if (v1 == 6)
    {
      v2 = 1;
      return MEMORY[0x26D6B18C0](v2);
    }

    if (v1 == 7)
    {
      v2 = 2;
      return MEMORY[0x26D6B18C0](v2);
    }
  }

  MEMORY[0x26D6B18C0](3);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v3 = 3;
      goto LABEL_22;
    }

    if (v1 == 5)
    {
      v3 = 4;
      goto LABEL_22;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v3 = 1;
      goto LABEL_22;
    }

    if (v1 == 3)
    {
      v3 = 2;
LABEL_22:
      MEMORY[0x26D6B18C0](v3);
      goto LABEL_23;
    }
  }

  MEMORY[0x26D6B18C0](5);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    FMFindingDistance.hash(into:)();
  }

LABEL_23:
  String.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingState(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static FMFindingState.== infix(_:_:)(v11, v13) & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingState()
{
  Hasher.init(_seed:)();
  FMFindingState.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingState()
{
  Hasher.init(_seed:)();
  FMFindingState.hash(into:)();
  return Hasher._finalize()();
}

__n128 protocol witness for Decodable.init(from:) in conformance FMFindingState@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized FMFindingState.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingState and conformance FMFindingState()
{
  result = lazy protocol witness table cache variable for type FMFindingState and conformance FMFindingState;
  if (!lazy protocol witness table cache variable for type FMFindingState and conformance FMFindingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingState and conformance FMFindingState);
  }

  return result;
}

uint64_t specialized static FMFindingState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 97);
  if (v2 > 7)
  {
    if (v2 == 8)
    {
      v6 = (*(a2 + 16) & 0xFFFFFFFFFFFFFFFELL) == 8;
      return v6 & 1;
    }

    if (v2 == 9)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v2 == 6)
    {
      if (*(a2 + 16) == 6)
      {
LABEL_15:
        v6 = 1;
        return v6 & 1;
      }

LABEL_51:
      v6 = 0;
      return v6 & 1;
    }

    if (v2 == 7)
    {
      if (*(a2 + 16) == 7)
      {
        goto LABEL_15;
      }

      goto LABEL_51;
    }
  }

  v4 = *(a2 + 16);
  if ((v4 - 6) < 4)
  {
    goto LABEL_51;
  }

  v5 = *(a2 + 97);
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        goto LABEL_51;
      }

      goto LABEL_28;
    }

    if (v2 == 3)
    {
      if (v4 != 3)
      {
        goto LABEL_51;
      }

      goto LABEL_28;
    }

LABEL_21:
    if ((v4 - 2) < 4)
    {
      goto LABEL_51;
    }

    v44 = *a1;
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v42 = *(a1 + 56);
    v43[0] = v8;
    *(v43 + 9) = *(a1 + 81);
    v40 = *(a1 + 24);
    v41 = v7;
    *&v39[7] = *a2;
    if (v2 == 1)
    {
      if (v4 == 1)
      {
        v25 = *a1;
        *v26 = 1;
        *&v26[24] = *(a1 + 40);
        *&v26[40] = *(a1 + 56);
        *&v26[56] = *(a1 + 72);
        *&v26[65] = *(a1 + 81);
        *&v26[8] = *(a1 + 24);
        outlined init with copy of FMFindingState(a1, &v27);
        outlined init with copy of FMFindingState(a2, &v27);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v25, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
        goto LABEL_28;
      }
    }

    else if (v4 != 1)
    {
      v23 = *a2;
      *v24 = v4;
      *&v24[8] = *(a2 + 24);
      *&v24[24] = *(a2 + 40);
      *&v24[65] = *(a2 + 81);
      *&v24[56] = *(a2 + 72);
      *&v24[40] = *(a2 + 56);
      v25 = v23;
      *v26 = *v24;
      v26[80] = v24[80];
      *&v26[48] = *&v24[48];
      *&v26[64] = *&v24[64];
      *&v26[16] = *&v24[16];
      *&v26[32] = *&v24[32];
      v45 = *a1;
      v47 = *(a1 + 24);
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      v21 = *(a1 + 72);
      *(v50 + 9) = *(a1 + 81);
      v50[0] = v21;
      v49 = v20;
      v48 = v19;
      v46 = v2;
      v22 = a2;
      outlined init with copy of FMFindingState(a1, &v27);
      outlined init with copy of FMFindingState(v22, &v27);
      LOBYTE(v22) = specialized static FMFindingDistance.== infix(_:_:)(&v45, &v25);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v23, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
      v27 = v44;
      v28 = v2;
      v30 = v41;
      v31 = v42;
      *v32 = v43[0];
      *&v32[9] = *(v43 + 9);
      v29 = v40;
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v27, &_s10TVRemoteUI17FMFindingDistanceVSgMd);
      if ((v22 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_28;
    }

    v27 = *a1;
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    *v32 = *(a1 + 72);
    *&v32[9] = *(a1 + 81);
    v29 = *(a1 + 24);
    *v33 = *v39;
    v28 = v2;
    *&v33[15] = *&v39[15];
    v34 = v4;
    v14 = *(a2 + 24);
    *&v38[9] = *(a2 + 81);
    v15 = *(a2 + 72);
    v37 = *(a2 + 56);
    *v38 = v15;
    v16 = *(a2 + 40);
    v35 = v14;
    v36 = v16;
    outlined init with copy of FMFindingState(a1, &v25);
    outlined init with copy of FMFindingState(a2, &v25);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v27, &_s10TVRemoteUI17FMFindingDistanceVSg_ADtMd);
    goto LABEL_51;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      if (v4 != 5)
      {
        goto LABEL_51;
      }

      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v4 != 4)
  {
    goto LABEL_51;
  }

LABEL_28:
  v10 = 0x6E776F6E6B6E75;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v11 = 0xE600000000000000;
      v12 = 0x656C62617473;
      if (v5 > 1)
      {
        goto LABEL_39;
      }

LABEL_36:
      if (!v5)
      {
        v13 = 0xE700000000000000;
        goto LABEL_44;
      }

      v10 = 0x6973616572636E69;
      goto LABEL_42;
    }

    v12 = 0x6973616572636564;
LABEL_35:
    v11 = 0xEA0000000000676ELL;
    if (v5 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v3)
  {
    v12 = 0x6973616572636E69;
    goto LABEL_35;
  }

  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  if (v5 <= 1)
  {
    goto LABEL_36;
  }

LABEL_39:
  if (v5 == 2)
  {
    v10 = 0x6973616572636564;
LABEL_42:
    v13 = 0xEA0000000000676ELL;
    goto LABEL_44;
  }

  v13 = 0xE600000000000000;
  v10 = 0x656C62617473;
LABEL_44:
  if (v12 == v10 && v11 == v13)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t outlined destroy of (FMFindingDistance?, FMFindingDistance?)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized FMFindingState.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMFindingState.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized FMFindingState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10TVRemoteUI14FMFindingStateO10CodingKeys33_A3DFBA6D09331B27A32318957F9878E4LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0;
      v12 = xmmword_26D0D2ED0;
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0;
      v12 = xmmword_26D0D2EC0;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        v31 = 1;
        lazy protocol witness table accessor for type FMFindingMeasurement and conformance FMFindingMeasurement();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v24 = v32;
        v25 = v33;
        v27 = v35;
        v26 = v34;
        v22 = 2;
        lazy protocol witness table accessor for type FMFindingTrend and conformance FMFindingTrend();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v6 + 8))(v8, v5);
        v21 = v25;
        v20 = v24;
        v18 = v27;
        v19 = v26;
        v16 = v29;
        v17 = v28;
        v11 = v30 | (v23 << 8);
LABEL_16:
        result = __swift_destroy_boxed_opaque_existential_1(a1);
        v13 = v21;
        *a2 = v20;
        *(a2 + 16) = v13;
        v14 = v18;
        *(a2 + 32) = v19;
        *(a2 + 48) = v14;
        v15 = v16;
        *(a2 + 64) = v17;
        *(a2 + 80) = v15;
        *(a2 + 96) = v11;
        return result;
      case 4:
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = xmmword_26D0D2EB0;
LABEL_15:
        v21 = v12;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        goto LABEL_16;
      case 5:
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = xmmword_26D0D2EA0;
        goto LABEL_15;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
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

unint64_t lazy protocol witness table accessor for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingState.CodingKeys and conformance FMFindingState.CodingKeys);
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

unint64_t lazy protocol witness table accessor for type FMFindingMeasurement and conformance FMFindingMeasurement()
{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement;
  if (!lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingMeasurement and conformance FMFindingMeasurement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingTrend and conformance FMFindingTrend()
{
  result = lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend;
  if (!lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend;
  if (!lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend;
  if (!lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend;
  if (!lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingTrend and conformance FMFindingTrend);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FMFindingDistance.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x736944746E616C73;
    v7 = 0x4264696C61567369;
    v8 = 0x616542564F466E69;
    if (a1 != 3)
    {
      v8 = 0x564F466E497369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x676E6972616562;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x776F6C65427369;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x636165526E497369;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0x65766F62417369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingDistance.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FMFindingDistance.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FMFindingDistance.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingDistance.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FMFindingDistance.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMFindingDistance.CodingKeys()
{
  FMFindingDistance.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingDistance.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FMFindingDistance.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FMFindingDistance.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FMFindingDistance.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FMFindingDistance.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = FMFindingDistance.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FMFindingDistance.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FMFindingDistance.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FMFindingDistance.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FMFindingDistance.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFindingDistance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10TVRemoteUI17FMFindingDistanceV10CodingKeys33_BF6198250B0522D17E4C5C7D5D8592B0LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMFindingDistance.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_26D0D31D0;
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v5;
  if (v4)
  {
    v3 = -1.0;
  }

  *(v1 + 32) = v3;
  if (*(v0 + 40))
  {
    v6 = *(v0 + 32);
    v7 = MEMORY[0x277D83A80];
    v8 = MEMORY[0x277D839F8];
  }

  else
  {
    v6 = -1;
    v7 = MEMORY[0x277D83C10];
    v8 = MEMORY[0x277D83B88];
  }

  *(v1 + 96) = v8;
  *(v1 + 104) = v7;
  *(v1 + 72) = v6;
  v9 = *(v0 + 56);
  v10 = lazy protocol witness table accessor for type String and conformance String();
  v11 = 1702195828;
  if (v9)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v9)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  v2[17] = MEMORY[0x277D837D0];
  v2[18] = v10;
  v2[14] = v12;
  v2[15] = v13;
  if (*(v0 + 57))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v11 = 0x65736C6166;
    v15 = 0xE500000000000000;
  }

  v2[22] = v14;
  v2[23] = v10;
  v2[19] = v11;
  v2[20] = v15;

  return String.init(format:_:)();
}

void FMFindingDistance.hash(into:)()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    v2 = *(v0 + 2);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    v4 = *(v0 + 3);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v6 = *v0;
  Hasher._combine(_:)(1u);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  MEMORY[0x26D6B18E0](*&v7);
  v2 = *(v0 + 2);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v3 = v2;
  NSObject.hash(into:)();

  v4 = *(v1 + 3);
  if (v4)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    v5 = v4;
    NSObject.hash(into:)();

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(0);
LABEL_11:
  v8 = v1[4];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26D6B18E0](*&v8);
  Hasher._combine(_:)(v1[5] & 1);
  v9 = v1[6];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26D6B18E0](*&v9);
  Hasher._combine(_:)(v1[7] & 1);
  Hasher._combine(_:)(*(v1 + 57) & 1);
  v10 = v1[8];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26D6B18E0](*&v10);
  Hasher._combine(_:)(v1[9] & 1);
  Hasher._combine(_:)(*(v1 + 73) & 1);
  Hasher._combine(_:)(*(v1 + 74) & 1);
  v11 = v1[10];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26D6B18E0](*&v11);
  if (*(v1 + 96) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *(v1 + 11);
    Hasher._combine(_:)(1u);
    MEMORY[0x26D6B18C0](v12);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance FMFindingDistance(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static FMFindingDistance.== infix(_:_:)(v11, v13);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMFindingDistance()
{
  Hasher.init(_seed:)();
  FMFindingDistance.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingDistance()
{
  Hasher.init(_seed:)();
  FMFindingDistance.hash(into:)();
  return Hasher._finalize()();
}

__n128 protocol witness for Decodable.init(from:) in conformance FMFindingDistance@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized FMFindingDistance.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

BOOL specialized static FMFindingDistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for PRTargetEstimate);
    v8 = v5;
    v9 = v4;
    v10 = static NSObject.== infix(_:_:)();

    a2 = v7;
    a1 = v6;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = a1;
    v14 = a2;
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for PRPose);
    v15 = v12;
    v16 = v11;
    v17 = static NSObject.== infix(_:_:)();

    a2 = v14;
    a1 = v13;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0 && ((*(a1 + 57) ^ *(a2 + 57)) & 1) == 0 && *(a1 + 64) == *(a2 + 64) && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0 && ((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && ((*(a1 + 74) ^ *(a2 + 74)) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    v18 = *(a2 + 96);
    if ((*(a1 + 96) & 1) == 0)
    {
      if (*(a1 + 88) != *(a2 + 88))
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    if (*(a2 + 96))
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingDistance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingDistance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingDistance and conformance FMFindingDistance()
{
  result = lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance;
  if (!lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance;
  if (!lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance;
  if (!lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance and conformance FMFindingDistance);
  }

  return result;
}

unint64_t specialized FMFindingDistance.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMFindingDistance.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized FMFindingDistance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10TVRemoteUI17FMFindingDistanceV10CodingKeys33_BF6198250B0522D17E4C5C7D5D8592B0LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v62 = 0;
  LOBYTE(v44) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v44) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v44) = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44) = 5;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v44) = 7;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44) = 8;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v44) = 9;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v32 = v13 & 1;
  v31 = v16 & 1;
  v21 = v36 & 1;
  v22 = v35 & 1;
  v23 = v34 & 1;
  v35 = v33 & 1;
  (*(v6 + 8))(v8, v5);
  v61 = 1;
  *&v37 = v10;
  v36 = v62;
  BYTE8(v37) = v62;
  v38 = 0uLL;
  *&v39 = v12;
  v24 = v32;
  BYTE8(v39) = v32;
  *&v40 = v15;
  v25 = v31;
  BYTE8(v40) = v31;
  BYTE9(v40) = v21;
  *&v41 = v18;
  BYTE8(v41) = v22;
  BYTE9(v41) = v23;
  v26 = v35;
  BYTE10(v41) = v35;
  v42 = v20;
  v43 = 1;
  outlined init with copy of FMFindingDistance(&v37, &v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44 = v10;
  v45 = v36;
  v46 = 0;
  v47 = 0;
  v48 = v12;
  v49 = v24;
  v50 = v15;
  v51 = v25;
  v52 = v21;
  v53 = v18;
  v54 = v22;
  v55 = v23;
  v56 = v26;
  v57 = v20;
  v58 = 0;
  v59 = 1;
  result = outlined destroy of FMFindingDistance(&v44);
  v28 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v28;
  *(a2 + 96) = v43;
  v29 = v38;
  *a2 = v37;
  *(a2 + 16) = v29;
  v30 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v30;
  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys;
  if (!lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingDistance.CodingKeys and conformance FMFindingDistance.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Double? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double? and conformance <A> A?);
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

uint64_t getEnumTagSinglePayload for FMFindingDistance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingDistance.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall FLSimpleSpring.step(deltaTime:)(TVRemoteUI::FLSimpleSpring *__return_ptr retstr, Swift::Double deltaTime)
{
  v5 = *v2;
  _Q7 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 64);
  v12 = *(v2 + 80);
  v11 = *(v2 + 88);
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v15 = fabs(*&_Q7);
  if (vabdd_f64(*v2, v8) > *&v9 || v15 > *(v2 + 56))
  {
    v34 = *(v2 + 8);
    __x = *(v2 + 24);
    v17 = v5 - v8;
    v18 = vmovn_s64(vmvnq_s8(vceqq_f64(v7, v10)));
    if ((v18.i32[0] | v18.i32[1]))
    {
      v12 = vmuld_lane_f64(0.5, v7, 1);
      v11 = sqrt(v7.f64[0]);
      v13 = sqrt(v11 * v11 - v12 * v12);
      v14 = sqrt(v12 * v12 - v11 * v11);
    }

    v19 = exp(-(v12 * deltaTime));
    v20 = *&v34 + v17 * v12;
    if (v12 >= v11)
    {
      v35 = -v12;
      if (v11 < v12)
      {
        v26 = v14 * deltaTime;
        v33 = v20 / v14;
        v32 = cosh(v26);
        v27 = sinh(v26);
        v24 = v17 * v32 + v33 * v27;
        v25 = v19 * v35 * v24 + v19 * (v14 * (v33 * v32) + v14 * (v17 * v27));
        v7 = __x;
LABEL_14:
        v5 = v8 + v19 * v24;
        __asm { FMOV            V7.2D, #1.0 }

        *&_Q7 = v25;
        v9 = 0uLL;
        v10 = v7;
        goto LABEL_15;
      }

      v24 = v17 + v20 * deltaTime;
      v25 = v19 * v20 + v19 * v35 * v24;
    }

    else
    {
      v21 = v13 * deltaTime;
      v22 = v20 / v13;
      v23 = __sincos_stret(v21);
      v24 = v17 * v23.__cosval + v22 * v23.__sinval;
      v25 = v19 * -v12 * v24 + v19 * (v13 * (v22 * v23.__cosval) - v13 * (v17 * v23.__sinval));
    }

    v7 = __x;
    goto LABEL_14;
  }

LABEL_15:
  retstr->state.position = v5;
  *&retstr->state.velocity = _Q7;
  *&retstr->stiffness = v7;
  retstr->anchor = v8;
  *&retstr->stablePositionThreshold = v9;
  *&retstr->_previousStiffness = v10;
  retstr->_beta = v12;
  retstr->_omega0 = v11;
  retstr->_omega1 = v13;
  retstr->_omega2 = v14;
}

Swift::Bool __swiftcall FLCompoundSpring.isStable()()
{
  v1 = v0[30];
  v2 = fabs(v0[1]);
  if (vabdd_f64(*v0, v1) > v0[44] || v2 > v0[45])
  {
    return 0;
  }

  if (vabdd_f64(v1, v0[35]) > v0[36])
  {
    return 0;
  }

  if (fabs(v0[31]) > v0[37])
  {
    return 0;
  }

  if (vabdd_f64(v0[2], v0[7]) > v0[8])
  {
    return 0;
  }

  if (fabs(v0[3]) > v0[9])
  {
    return 0;
  }

  if (vabdd_f64(v0[16], v0[21]) <= v0[22])
  {
    return fabs(v0[17]) <= v0[23];
  }

  return 0;
}

void __swiftcall FLCompoundSpring.step(deltaTime:)(TVRemoteUI::FLCompoundSpring *__return_ptr retstr, Swift::Double deltaTime)
{
  v5 = *(v2 + 6);
  *&v43._previousStiffness = *(v2 + 5);
  *&v43._beta = v5;
  v6 = *(v2 + 8);
  *&v43._omega1 = *(v2 + 7);
  v7 = *(v2 + 2);
  v43.state = *(v2 + 1);
  *&v43.mass = v7;
  v8 = *(v2 + 4);
  *&v43.damping = *(v2 + 3);
  *&v43.stablePositionThreshold = v8;
  v9 = *(v2 + 9);
  v10 = *(v2 + 10);
  v42.state = v6;
  *&v42.mass = v9;
  v11 = *(v2 + 14);
  *&v42._beta = *(v2 + 13);
  *&v42._omega1 = v11;
  v12 = *(v2 + 12);
  *&v42.stablePositionThreshold = *(v2 + 11);
  *&v42._previousStiffness = v12;
  *&v42.damping = v10;
  v13 = *(v2 + 16);
  v41.state = *(v2 + 15);
  *&v41.mass = v13;
  v14 = *(v2 + 17);
  v15 = *(v2 + 18);
  v16 = *(v2 + 21);
  *&v41._beta = *(v2 + 20);
  *&v41._omega1 = v16;
  v17 = *(v2 + 19);
  *&v41.stablePositionThreshold = v15;
  *&v41._previousStiffness = v17;
  *&v41.damping = v14;
  v18 = v2[44];
  v19 = v2[45];
  FLSimpleSpring.step(deltaTime:)(&v43, deltaTime);
  FLSimpleSpring.step(deltaTime:)(&v42, deltaTime);
  FLSimpleSpring.step(deltaTime:)(&v41, deltaTime);
  v20 = *(v2 + 30);
  v21 = 6.28318531 / v2[16] * (6.28318531 / v2[16]);
  v22 = sqrt(v21);
  v23 = v2[2] * (v22 + v22);
  v44 = *v2;
  v45 = 0x3FF0000000000000;
  v46 = v21;
  v47 = v23;
  v48 = v20;
  v49 = v18;
  v50 = v19;
  v51 = vdupq_n_s64(0x4341C37937E08000uLL);
  v52 = 0u;
  v53 = 0u;
  FLSimpleSpring.step(deltaTime:)(&v54, deltaTime);
  state = v54.state;
  v25 = *&v43._previousStiffness;
  v26 = *&v43._beta;
  v27 = *&v43.damping;
  *&retstr->dampingRatio.stablePositionThreshold = *&v43.stablePositionThreshold;
  *&retstr->dampingRatio._previousStiffness = v25;
  v28 = *&v43._omega1;
  *&retstr->dampingRatio._beta = v26;
  *&retstr->dampingRatio._omega1 = v28;
  v29 = v43.state;
  v30 = *&v43.mass;
  retstr->state = state;
  retstr->dampingRatio.state = v29;
  *&retstr->dampingRatio.mass = v30;
  *&retstr->dampingRatio.damping = v27;
  v31 = *&v42.mass;
  retstr->response.state = v42.state;
  *&retstr->response.mass = v31;
  v32 = *&v42.damping;
  v33 = *&v42.stablePositionThreshold;
  v34 = *&v42._beta;
  v35 = *&v42._omega1;
  *&retstr->response._previousStiffness = *&v42._previousStiffness;
  *&retstr->response._beta = v34;
  *&retstr->response.damping = v32;
  *&retstr->response.stablePositionThreshold = v33;
  v36 = v41.state;
  v37 = *&v41.damping;
  v38 = *&v41.stablePositionThreshold;
  *&retstr->anchor.mass = *&v41.mass;
  *&retstr->anchor.damping = v37;
  *&retstr->response._omega1 = v35;
  retstr->anchor.state = v36;
  v39 = *&v41._previousStiffness;
  v40 = *&v41._omega1;
  *&retstr->anchor._beta = *&v41._beta;
  *&retstr->anchor._omega1 = v40;
  *&retstr->anchor.stablePositionThreshold = v38;
  *&retstr->anchor._previousStiffness = v39;
  retstr->stablePositionThreshold = v18;
  retstr->stableVelocityThreshold = v19;
}

void *FLSpring.init(with:)(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_offsetParameters];
  *v3 = xmmword_26D0D3470;
  *(v3 + 1) = xmmword_26D0D3480;
  v4 = &v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters];
  *v4 = xmmword_26D0D3470;
  *(v4 + 1) = xmmword_26D0D3480;
  v5 = &v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0x3FF0000000000000;
  *(v5 + 9) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = v6;
  *(v5 + 6) = 0u;
  *(v5 + 18) = 0x3FF0000000000000;
  *(v5 + 23) = 0;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 12) = v6;
  *(v5 + 13) = 0u;
  *(v5 + 32) = 0x3FF0000000000000;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 37) = 0;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 19) = v6;
  *(v5 + 20) = 0u;
  v7 = &v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0x3FF0000000000000;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 7) = 0;
  *(v7 + 4) = v6;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *&v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity] = 0;
  *&v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget] = a1;
  *&v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold] = 0x3F50624DD2F1A9FCLL;
  *&v1[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableVelocityThreshold] = 0x3F50624DD2F1A9FCLL;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FLSpring();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*((*MEMORY[0x277D85000] & *v8) + 0x1B0))(a1);
  return v8;
}

uint64_t FLSpring.parameters.didset(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v6 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 8);
  v7 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16);
  v8 = *(v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 24);
  if (v5 != a1 || v6 != a2 || v7 != a3 || v8 != a4)
  {
    v12 = v4 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
    swift_beginAccess();
    v13 = 0.0;
    if (v6 == 0.0)
    {
      v14 = 24;
      v15 = 16;
      v16 = v5;
      v17 = 0.0;
    }

    else
    {
      v16 = 6.28318531 / v6 * (6.28318531 / v6);
      v18 = sqrt(v16);
      v17 = v18 + v18;
      v14 = 48;
      v15 = 40;
    }

    *(v12 + v15) = v16;
    *(v12 + v14) = v17;
    *(v12 + 56) = v5;
    if (v8 == 0.0)
    {
      v19 = 136;
      v20 = 128;
      v21 = v7;
    }

    else
    {
      v21 = 6.28318531 / v8 * (6.28318531 / v8);
      v22 = sqrt(v21);
      v13 = v22 + v22;
      v19 = 160;
      v20 = 152;
    }

    *(v12 + v20) = v21;
    *(v12 + v19) = v13;
    *(v12 + 168) = v7;
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall FLSpring.resetImmediately(toValue:)(Swift::Double toValue)
{
  v3 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v4 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16);
  v5 = v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
  swift_beginAccess();
  *v5 = toValue;
  *(v5 + 8) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = xmmword_26D0D3490;
  *(v5 + 40) = xmmword_26D0D34A0;
  *(v5 + 56) = v3;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 80) = v6;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = v4;
  *(v5 + 136) = xmmword_26D0D3490;
  *(v5 + 152) = xmmword_26D0D34A0;
  *(v5 + 168) = v4;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 192) = v6;
  *(v5 + 240) = toValue;
  *(v5 + 248) = xmmword_26D0D3490;
  *(v5 + 264) = 0x4063BD3CC9BE45DELL;
  *(v5 + 272) = 0x403921FB54442D18;
  *(v5 + 280) = toValue;
  *(v5 + 288) = 0;
  *(v5 + 296) = 0;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 304) = v6;
  *(v5 + 320) = 0u;
  v7 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold);
  *(v5 + 352) = v7;
  v8 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableVelocityThreshold);
  *(v5 + 360) = v8;
  v9 = 6.28318531 / *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_offsetParameters + 16) * (6.28318531 / *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_offsetParameters + 16));
  v10 = sqrt(v9);
  v11 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_offsetParameters) * (v10 + v10);
  v12 = v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0x3FF0000000000000;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  *(v12 + 64) = v6;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget) = toValue;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) = 0;
}

Swift::Void __swiftcall FLSpring.step(_:)(Swift::Double a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v5 = v4[35];
  v6 = v5 - *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget);
  *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__previousTarget) = v5;
  *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) = v6 / a1 * 0.25 + *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__targetVelocity) * 0.75;
  FLCompoundSpring.step(deltaTime:)(&__src, a1);
  swift_beginAccess();
  memcpy(v4, &__src, 0x170uLL);
  v7 = v2 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
  FLSimpleSpring.step(deltaTime:)(&v12, a1);
  v8 = *&v12._beta;
  *(v7 + 64) = *&v12._previousStiffness;
  *(v7 + 80) = v8;
  *(v7 + 96) = *&v12._omega1;
  v9 = *&v12.mass;
  *v7 = v12.state;
  *(v7 + 16) = v9;
  v10 = *&v12.stablePositionThreshold;
  *(v7 + 32) = *&v12.damping;
  *(v7 + 48) = v10;
}

id FLSpring.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FLSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FLSimpleSpring(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FLSimpleSpring(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FLCompoundSpring(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FLCompoundSpring(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 368) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FLSpringParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FLSpringParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

id FMR1HapticPattern.__allocating_init(events:parameters:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(v0);
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticEvent);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticDynamicParameter);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  v8[0] = 0;
  v4 = [v1 initWithEvents:isa parameters:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id FMR1HapticPattern.init(events:parameters:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, SEL *a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = &v5[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_name];
  *v8 = 0;
  v8[1] = 0;
  v5[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_isTap] = 2;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticEvent);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for SKConstraint(0, a3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v16[0] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for FMR1HapticPattern();
  v11 = objc_msgSendSuper2(&v15, *a5, isa, v10, v16);

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v11;
}

id @objc FMR1HapticPattern.init(events:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, SEL *a8)
{
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticEvent);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SKConstraint(0, a6);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return FMR1HapticPattern.init(events:parameters:)(v11, v12, a6, a7, a8);
}

id FMR1HapticPattern.__allocating_init(dictionary:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(v0);
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7[0] = 0;
  v3 = [v1 initWithDictionary:isa error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id FMR1HapticPattern.init(dictionary:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = &v0[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_name];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_isTap] = 2;
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8[0] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FMR1HapticPattern();
  v3 = objc_msgSendSuper2(&v7, sel_initWithDictionary_error_, isa, v8);

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id FMR1HapticPattern.init(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_name];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_isTap;
  v2[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_isTap] = 2;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v17[0] = 0;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMR1HapticPattern();
  v8 = objc_msgSendSuper2(&v16, sel_initWithContentsOfURL_error_, v7, v17);

  v9 = v17[0];
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

id FMR1HapticPattern.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1HapticPattern();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FMR1HapticsController.init()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticCapability;
  *&v0[v1] = [objc_opt_self() capabilitiesForHardware];
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink] = 0;
  v2 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_lastRenderTime];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext];
  *v6 = 0u;
  v6[1] = 0u;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern] = 0;
  v7 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
  *v7 = 0;
  v7[4] = 1;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap1HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap2HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap3HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap4HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap5HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_connectedHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_buildHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_scatterHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_preNearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelIncreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelDecreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_farNearHapticPattern] = 0;
  v8 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
  *v8 = 0;
  v8[8] = 1;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer] = 0;
  v9 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticFactor];
  *v9 = 0;
  v9[4] = 1;
  v10 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticRampingFactorSpring;
  *&v0[v10] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0x3FF0000000000000, 0, 0, 1, 0, 1);
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_setup] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_startContinuousHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_restartContinuousHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_enablePlayingAheadHaptic] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_isPlayingContinuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticFactorLogCounter] = 0;
  v11 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  *v11 = 0;
  v11[4] = 1;
  v12 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler];
  v13 = type metadata accessor for FMR1HapticsController();
  *v12 = 0;
  v12[1] = 0;
  v24.receiver = v0;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  v15 = one-time initialization token for findingExperience;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.findingExperience);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_26CFEB000, v18, v19, "🧭 FMR1HaptiCtrl%@: init", v20, 0xCu);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v21, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v21, -1, -1);
    MEMORY[0x26D6B2710](v20, -1, -1);
  }

  return v16;
}

id FMR1HapticsController.__deallocating_deinit()
{
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.findingExperience);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_26CFEB000, v3, v4, "🧭 FMR1HaptiCtrl%s: deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D6B2710](v6, -1, -1);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  v12 = type metadata accessor for FMR1HapticsController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t FMR1HapticsController.description.getter()
{
  v0 = _Pointer.debugDescription.getter();
  v2 = specialized BidirectionalCollection.suffix(_:)(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x26D6B1280](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x26D6B12B0](v9, v11);

  MEMORY[0x26D6B12B0](30768, 0xE200000000000000);

  MEMORY[0x26D6B12B0](62, 0xE100000000000000);
  v12 = String.init(format:_:)();

  return v12;
}

id FMR1HapticsController.loadHapticPattern(named:isTap:)(uint64_t a1, unint64_t a2, int a3)
{
  LODWORD(v61) = a3;
  v63[4] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v62[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMR1HapticsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = MEMORY[0x26D6B1210](a1, a2);
  v14 = MEMORY[0x26D6B1210](1885431905, 0xE400000000000000);
  v15 = [v12 pathForResource:v13 ofType:v14];

  if (!v15)
  {
    goto LABEL_3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  v25 = Data.init(contentsOf:options:)();
  v27 = v26;
  (*(v7 + 8))(v10, v6);
  v28 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v62[0] = 0;
  v30 = [v28 JSONObjectWithData:isa options:0 error:v62];

  v31 = v62[0];
  if (!v30)
  {
    v42 = v31;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v25, v27);

LABEL_3:
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.findingExperience);

    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2080;
      v23 = v17;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v63);
      _os_log_impl(&dword_26CFEB000, v18, v19, "🧭 FMR1HaptiCtrl%@: unable to load '%s' haptic pattern", v20, 0x16u);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v21, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D6B2710](v22, -1, -1);
      MEMORY[0x26D6B2710](v20, -1, -1);
    }

    goto LABEL_7;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo18CHHapticPatternKeyaypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data._Representation(v25, v27);
    goto LABEL_3;
  }

  type metadata accessor for FMR1HapticPattern();
  v32 = FMR1HapticPattern.__allocating_init(dictionary:)();
  if (!v32)
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.findingExperience);

    v34 = v3;
    v18 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v61 = v18;
      v39 = v38;
      v63[0] = v38;
      *v36 = 138412546;
      *(v36 + 4) = v34;
      *v37 = v34;
      *(v36 + 12) = 2080;
      v40 = v34;
      *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v63);
      v41 = v61;
      _os_log_impl(&dword_26CFEB000, v61, v35, "🧭 FMR1HaptiCtrl%@: unable to create '%s' haptic pattern", v36, 0x16u);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v37, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x26D6B2710](v39, -1, -1);
      MEMORY[0x26D6B2710](v36, -1, -1);
      outlined consume of Data._Representation(v25, v27);

      goto LABEL_8;
    }

    outlined consume of Data._Representation(v25, v27);
LABEL_7:

LABEL_8:
    return 0;
  }

  v44 = v32;
  v45 = v32;

  v46 = specialized Collection.dropFirst(_:)(4, a1, a2);

  v47 = Substring.index(_:offsetBy:limitedBy:)();
  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = v47;
  }

  if (v49 >> 14 < v46 >> 14)
  {
    __break(1u);
  }

  v50 = Substring.subscript.getter();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = MEMORY[0x26D6B1280](v50, v52, v54, v56);
  v59 = v58;
  outlined consume of Data._Representation(v25, v27);

  v60 = &v45[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_name];
  *v60 = v57;
  v60[1] = v59;

  v45[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_isTap] = v61 & 1;

  return v44;
}

Swift::Void __swiftcall FMR1HapticsController.setUpHaptics()()
{
  v103 = *MEMORY[0x277D85DE8];
  if ((v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_setup] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_setup] = 1;
    if ([*&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticCapability] supportsHaptics])
    {
      if (one-time initialization token for findingExperience != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.findingExperience);
      v2 = v0;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *v5 = 138412290;
        *(v5 + 4) = v2;
        *v6 = v2;
        v7 = v2;
        _os_log_impl(&dword_26CFEB000, v3, v4, "🧭 FMR1HaptiCtrl%@: setting up haptic engine", v5, 0xCu);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v6, &_sSo8NSObjectCSgMd);
        MEMORY[0x26D6B2710](v6, -1, -1);
        MEMORY[0x26D6B2710](v5, -1, -1);
      }

      v8 = [objc_opt_self() auxiliarySession];
      v9 = *MEMORY[0x277CB8020];
      aBlock = 0;
      if ([v8 setCategory:v9 error:&aBlock])
      {
        v10 = aBlock;
      }

      else
      {
        v17 = aBlock;
        v18 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23CHHapticEngineOptionKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D0D3590;
      v20 = *MEMORY[0x277CBF628];
      *(inited + 32) = *MEMORY[0x277CBF628];
      v21 = MEMORY[0x277D837D0];
      *(inited + 40) = 0x746C7561666544;
      *(inited + 48) = 0xE700000000000000;
      v22 = *MEMORY[0x277CBF620];
      *(inited + 64) = v21;
      *(inited + 72) = v22;
      v23 = *MEMORY[0x277CBF698];
      type metadata accessor for CHHapticPowerUsage(0);
      *(inited + 104) = v24;
      *(inited + 80) = v23;
      v25 = v20;
      v26 = v22;
      v27 = v23;
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23CHHapticEngineOptionKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CHHapticEngineOptionKeya_yptMd);
      swift_arrayDestroy();
      v29 = v8;
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v28);

      v30 = objc_allocWithZone(MEMORY[0x277CBF6B0]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      aBlock = 0;
      v32 = [v30 initWithAudioSession:v29 sessionIsShared:0 options:isa error:&aBlock];

      v33 = aBlock;
      if (v32)
      {
        v34 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
        *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine] = v32;
        v35 = v32;

        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v101 = partial apply for closure #1 in FMR1HapticsController.setUpHaptics();
        v102 = v36;
        aBlock = MEMORY[0x277D85DD0];
        v98 = 1107296256;
        v99 = thunk for @escaping @callee_guaranteed () -> ();
        v100 = &block_descriptor_179;
        v37 = _Block_copy(&aBlock);

        [v35 setResetHandler_];
        _Block_release(v37);
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v101 = partial apply for closure #2 in FMR1HapticsController.setUpHaptics();
        v102 = v38;
        aBlock = MEMORY[0x277D85DD0];
        v98 = 1107296256;
        v99 = thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ();
        v100 = &block_descriptor_183;
        v39 = _Block_copy(&aBlock);

        [v35 setStoppedHandler_];
        _Block_release(v39);
        [v35 setPlaysHapticsOnly_];
        [v35 setIsMutedForAudio_];
        [v35 setFollowAudioRoute_];
        [v35 startWithCompletionHandler_];
        v40 = v2;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&dword_26CFEB000, v41, v42, "🧭 FMR1HaptiCtrl%@: started haptic engine", v43, 0xCu);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v44, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v44, -1, -1);
          MEMORY[0x26D6B2710](v43, -1, -1);
        }
      }

      else
      {
        v46 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v47 = v2;
        v48 = v46;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          osloga = swift_slowAlloc();
          aBlock = osloga;
          *v51 = 138412546;
          *(v51 + 4) = v47;
          *v52 = v47;
          *(v51 + 12) = 2080;
          swift_getErrorValue();
          v53 = v47;
          v54 = Error.localizedDescription.getter();
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &aBlock);

          *(v51 + 14) = v56;
          _os_log_impl(&dword_26CFEB000, v49, v50, "🧭 FMR1HaptiCtrl%@: failed creating haptic engine: %s", v51, 0x16u);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v52, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v52, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(osloga);
          MEMORY[0x26D6B2710](osloga, -1, -1);
          MEMORY[0x26D6B2710](v51, -1, -1);
        }

        else
        {
        }
      }

      v57 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000011, 0x800000026D0DB750, 1);
      v58 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap1HapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap1HapticPattern] = v57;

      v59 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000011, 0x800000026D0DB770, 1);
      v60 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap2HapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap2HapticPattern] = v59;

      v61 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000013, 0x800000026D0DB790, 1);
      v62 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap3HapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap3HapticPattern] = v61;

      v63 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB7B0, 1);
      v64 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap4HapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap4HapticPattern] = v63;

      v65 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB7D0, 1);
      v66 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap5HapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap5HapticPattern] = v65;

      v67 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB7F0, 0);
      v68 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_connectedHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_connectedHapticPattern] = v67;

      v69 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000014, 0x800000026D0DB810, 0);
      v70 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_buildHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_buildHapticPattern] = v69;

      v71 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000016, 0x800000026D0DB830, 0);
      v72 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_scatterHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_scatterHapticPattern] = v71;

      v73 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0x6165684131524D46, 0xEE00393833422D64, 1);
      v74 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadHapticPattern] = v73;

      v75 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB850, 0);
      v76 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadOffHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadOffHapticPattern] = v75;

      v77 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB870, 0);
      v78 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachHapticPattern] = v77;

      v79 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000016, 0x800000026D0DB890, 0);
      v80 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachOffHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_armsReachOffHapticPattern] = v79;

      v81 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000012, 0x800000026D0DB8B0, 0);
      v82 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_preNearbyHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_preNearbyHapticPattern] = v81;

      v83 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0x7261654E31524D46, 0xEF393833422D7962, 0);
      v84 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticPattern] = v83;

      v85 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0x462D495353524D46, 0xEF7261654E2D7261, 0);
      v86 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_farNearHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_farNearHapticPattern] = v85;

      v87 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000015, 0x800000026D0DB8D0, 0);
      v88 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelIncreaseHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelIncreaseHapticPattern] = v87;

      v89 = FMR1HapticsController.loadHapticPattern(named:isTap:)(0xD000000000000015, 0x800000026D0DB8F0, 0);
      v90 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelDecreaseHapticPattern];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelDecreaseHapticPattern] = v89;

      v91 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_hapticDisplayLinkUpdateWithDisplaylink_];
      v92 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink];
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink] = v91;
      v93 = v91;

      if (v93)
      {
        v94 = [objc_opt_self() currentRunLoop];
        [v93 addToRunLoop:v94 forMode:*MEMORY[0x277CBE738]];
      }

      FMR1HapticsController.setUpContinuousHapticPlayer()();
    }

    else
    {
      if (one-time initialization token for findingExperience != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.findingExperience);
      v12 = v0;
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v12;
        *v15 = v12;
        v16 = v12;
        _os_log_impl(&dword_26CFEB000, oslog, v13, "🧭 FMR1HaptiCtrl%@: unsupported haptic", v14, 0xCu);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v15, &_sSo8NSObjectCSgMd);
        MEMORY[0x26D6B2710](v15, -1, -1);
        MEMORY[0x26D6B2710](v14, -1, -1);
      }
    }
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CHHapticEngineOptionKey(0);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void closure #1 in FMR1HapticsController.setUpHaptics()()
{
  v25[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine);
  if (!v2)
  {
    goto LABEL_5;
  }

  v25[0] = 0;
  if ([v2 startAndReturnError_])
  {
    v3 = v25[0];
LABEL_5:
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.findingExperience);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v1;
      v10 = v5;
      _os_log_impl(&dword_26CFEB000, v6, v7, "🧭 FMR1HaptiCtrl%@: restarted haptic engine", v8, 0xCu);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v9, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v9, -1, -1);
      MEMORY[0x26D6B2710](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  v11 = v25[0];
  v12 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.findingExperience);
  v14 = v1;
  v15 = v12;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v1;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = v14;
    v22 = Error.localizedDescription.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v25);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_26CFEB000, v16, v17, "🧭 FMR1HaptiCtrl%@: failed restarting haptic engine: %s", v18, 0x16u);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v19, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x26D6B2710](v20, -1, -1);
    MEMORY[0x26D6B2710](v18, -1, -1);
  }

  else
  {
  }
}

void closure #2 in FMR1HapticsController.setUpHaptics()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.findingExperience);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v3;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      v10 = v5;
      _os_log_impl(&dword_26CFEB000, v6, v7, "🧭 FMR1HaptiCtrl%@: stopped haptic engine (%ld)", v8, 0x16u);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v9, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v9, -1, -1);
      MEMORY[0x26D6B2710](v8, -1, -1);
      v5 = v6;
      v6 = v10;
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned CHHapticEngineStoppedReason) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall FMR1HapticsController.tearDownHaptics()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_setup;
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_setup) == 1)
  {
    FMR1HapticsController.tearDownContinuousHapticPlayer()();
    v2 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink;
    v3 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 currentRunLoop];
      [v5 removeFromRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

      v7 = *(v0 + v2);
    }

    else
    {
      v7 = 0;
    }

    [v7 invalidate];
    v8 = *(v0 + v2);
    *(v0 + v2) = 0;

    v9 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine;
    v10 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine);
    if (v10)
    {
      [v10 stopWithCompletionHandler_];
      v11 = *(v0 + v9);
    }

    else
    {
      v11 = 0;
    }

    *(v0 + v9) = 0;

    *(v0 + v1) = 0;
  }
}

void FMR1HapticsController.setUpContinuousHapticPlayer()()
{
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = v0;
    v3 = *MEMORY[0x277CBF638];
    v4 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    v5 = v1;
    LODWORD(v6) = 0.5;
    v7 = [v4 initWithParameterID:v3 value:v6];
    v8 = *MEMORY[0x277CBF640];
    v9 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    LODWORD(v10) = 0.5;
    v11 = [v9 initWithParameterID:v8 value:v10];
    v12 = *MEMORY[0x277CBF648];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26D0D2880;
    *(v13 + 32) = v7;
    *(v13 + 40) = v11;
    v14 = objc_allocWithZone(MEMORY[0x277CBF6B8]);
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticEventParameter);
    v15 = v7;
    v16 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v14 initWithEventType:v12 parameters:isa relativeTime:0.0 duration:100.0];

    type metadata accessor for FMR1HapticPattern();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26D0D2860;
    *(v19 + 32) = v18;
    v20 = v18;
    v21 = FMR1HapticPattern.__allocating_init(events:parameters:)();
    *&v21[OBJC_IVAR____TtC10TVRemoteUI17FMR1HapticPattern_name] = xmmword_26D0D35A0;
    v34 = v21;

    v35 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPattern];
    *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPattern] = v34;
    v36 = v34;

    v54[0] = 0;
    v37 = [v5 createPlayerWithPattern:v36 error:v54];
    v38 = v54[0];
    if (v37)
    {
      v39 = v20;
      v52 = v15;
      *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer] = v37;
      v40 = v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (one-time initialization token for findingExperience != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.findingExperience);
      v42 = v2;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        _os_log_impl(&dword_26CFEB000, v43, v44, "🧭 FMR1HaptiCtrl%@: created continuous haptic player", v45, 0xCu);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v46, &_sSo8NSObjectCSgMd);
        MEMORY[0x26D6B2710](v46, -1, -1);
        MEMORY[0x26D6B2710](v45, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v48 = v54[0];
      v49 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v53 = v5;
      if (one-time initialization token for findingExperience != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.findingExperience);
      v23 = v2;
      v24 = v49;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v51 = v15;
        v28 = swift_slowAlloc();
        v50 = v20;
        v29 = swift_slowAlloc();
        v54[0] = v29;
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2080;
        swift_getErrorValue();
        v30 = v23;
        v31 = Error.localizedDescription.getter();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v54);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_26CFEB000, v25, v26, "🧭 FMR1HaptiCtrl%@: failed creating continuous haptic player: %s", v27, 0x16u);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v28, &_sSo8NSObjectCSgMd);
        MEMORY[0x26D6B2710](v28, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x26D6B2710](v29, -1, -1);
        MEMORY[0x26D6B2710](v27, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t FMR1HapticsController.tearDownContinuousHapticPlayer()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer);
  if (v2)
  {
    v7[0] = 0;
    if ([v2 stopAtTime:v7 error:0.0])
    {
      v3 = v7[0];
    }

    else
    {
      v4 = v7[0];
      v5 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  *(v0 + v1) = 0;
  return swift_unknownObjectRelease();
}

void FMR1HapticsController.stopContinuousHapticPlayer()()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  if (*&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_restartContinuousHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v2)
  {
    goto LABEL_6;
  }

  v25[0] = 0;
  if ([v2 stopAtTime:v25 error:0.0])
  {
    v3 = v25[0];
LABEL_6:
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.findingExperience);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_26CFEB000, v6, v7, "🧭 FMR1HaptiCtrl%@: stopped continuous haptic player", v8, 0xCu);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v9, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v9, -1, -1);
      MEMORY[0x26D6B2710](v8, -1, -1);
    }

    return;
  }

  v11 = v25[0];
  v12 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.findingExperience);
  v14 = v1;
  v15 = v12;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = v14;
    v22 = Error.localizedDescription.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v25);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_26CFEB000, v16, v17, "🧭 FMR1HaptiCtrl%@: failed stopping continuous haptic player: %s", v18, 0x16u);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v19, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x26D6B2710](v20, -1, -1);
    MEMORY[0x26D6B2710](v18, -1, -1);
  }

  else
  {
  }
}

void FMR1HapticsController.resetContinuousHapticPlayerBeforeNearbyHaptic()()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26D0D2860;
  *(v6 + 32) = v4;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticDynamicParameter);
  swift_unknownObjectRetain();
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31[0] = 0;
  v9 = [v5 sendParameters:isa atTime:v31 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v31[0];
LABEL_4:
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.findingExperience);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_26CFEB000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to 1.0", v15, 0xCu);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v16, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v16, -1, -1);
      MEMORY[0x26D6B2710](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v18 = v31[0];
  v19 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.findingExperience);
  v21 = v0;
  v22 = v19;
  v4 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v27 = v21;
    v28 = Error.localizedDescription.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v31);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_26CFEB000, v4, v23, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v24, 0x16u);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v25, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D6B2710](v26, -1, -1);
    MEMORY[0x26D6B2710](v24, -1, -1);

LABEL_9:
    return;
  }
}

void FMR1HapticsController.resetContinuousHapticPlayerAfterNearbyHaptic()()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1058642330;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26D0D2860;
  *(v6 + 32) = v4;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticDynamicParameter);
  swift_unknownObjectRetain();
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31[0] = 0;
  v9 = [v5 sendParameters:isa atTime:v31 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v31[0];
LABEL_4:
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.findingExperience);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 0x3FE3333340000000;
      v17 = v12;
      _os_log_impl(&dword_26CFEB000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to %f", v15, 0x16u);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v16, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v16, -1, -1);
      MEMORY[0x26D6B2710](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v18 = v31[0];
  v19 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.findingExperience);
  v21 = v0;
  v22 = v19;
  v4 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v27 = v21;
    v28 = Error.localizedDescription.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v31);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_26CFEB000, v4, v23, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v24, 0x16u);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v25, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D6B2710](v26, -1, -1);
    MEMORY[0x26D6B2710](v24, -1, -1);

LABEL_9:
    return;
  }
}

id FMR1HapticsController.hapticDisplayLinkUpdate(displaylink:)(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_enablePlayingAheadHaptic;
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_enablePlayingAheadHaptic) == 1)
  {
    memset(v23, 0, sizeof(v23));
    FMR1HapticsController.playAheadHaptic(context:)(v23);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v23, &_sypSgMd);
    *(v1 + v4) = 0;
  }

  else if ((*(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod);
    v6 = v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticLastPlayTimestamp;
    if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticLastPlayTimestamp + 8) & 1) != 0 || (v7 = v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay, (*(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay + 8)))
    {
      [a1 timestamp];
      *v6 = v8;
      *(v6 + 8) = 0;
      v9 = v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay;
      *v9 = v5;
      *(v9 + 8) = 0;
    }

    else
    {
      v17 = *v7;
      v18 = *v6;
      [a1 timestamp];
      v20 = v19 - v18;
      if (v17 > v5)
      {
        v21 = v17;
      }

      else
      {
        v21 = v5;
      }

      if (v21 > v20)
      {
        goto LABEL_8;
      }

      [a1 timestamp];
      *v6 = v22;
      *(v6 + 8) = 0;
      *v7 = v5;
      *(v7 + 8) = 0;
    }

    specialized FMR1HapticsController.playSingleTapHaptic(displaylink:)();
  }

LABEL_8:
  if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_lastRenderTime + 8) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticFactor + 4) & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticFactor);
    v11 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_lastRenderTime);
    [a1 timestamp];
    v13 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticRampingFactorSpring);
    FLSpring.step(_:)(v12 - v11);
    *(v13 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    specialized FMR1HapticsController.applyContinuousHapticPlayer(with:rampingFactor:)(v10);
  }

  result = [a1 timestamp];
  v15 = v2 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_lastRenderTime;
  *v15 = v16;
  *(v15 + 8) = 0;
  return result;
}

float FMR1HapticsController.selectSingleTapHaptic(hapticFactor:)(double a1)
{
  if (a1 < 0.2)
  {
    v3 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap1HapticPattern;
LABEL_7:
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern;
    v6 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern);
    goto LABEL_8;
  }

  if (a1 < 0.4)
  {
    v3 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap2HapticPattern;
    goto LABEL_7;
  }

  if (a1 < 0.6)
  {
    v3 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap3HapticPattern;
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern;
  v6 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern);
  if (a1 >= 0.8)
  {
    v12 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap5HapticPattern;
  }

  else
  {
    v12 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTap4HapticPattern;
  }

  v4 = *(v1 + v12);
LABEL_8:
  *(v1 + v5) = v4;
  v7 = v4;

  v8 = 1.0 - a1;
  v9 = a1;
  result = (v9 * 0.65) + (v8 * 0.4);
  v11 = v1 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity;
  *v11 = result;
  *(v11 + 4) = 0;
  return result;
}

void FMR1HapticsController.playScatterHaptic(context:)(uint64_t a1)
{
  v2 = v1;
  v53 = *MEMORY[0x277D85DE8];
  v3 = &v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v3 = 0;
  v3[8] = 1;
  memset(v52, 0, sizeof(v52));
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  outlined assign with take of Any?(v52, &v1[v4]);
  swift_endAccess();
  FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
  v5 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v5] = 0;

  v6 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v6] = 0;

  v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v7 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v7] = 0;

  v8 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_scatterHapticPattern];
    if (v9)
    {
      *&v52[0] = 0;
      v10 = v9;
      v11 = v8;
      v12 = [v11 createPlayerWithPattern:v10 error:v52];
      if (v12)
      {
        v13 = v12;
        v14 = one-time initialization token for findingExperience;
        v15 = *&v52[0];
        if (v14 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.findingExperience);
        v17 = v2;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&dword_26CFEB000, v18, v19, "🧭 FMR1HaptiCtrl%@: playing scatter haptic", v20, 0xCu);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v21, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v21, -1, -1);
          MEMORY[0x26D6B2710](v20, -1, -1);
        }

        *&v52[0] = 0;
        v23 = [v13 startAtTime:v52 error:0.0];
        v24 = *&v52[0];
        if (v23)
        {
          v17[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v25 = v24;
        }

        else
        {
          v50 = v11;
          v28 = *&v52[0];
          v29 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v30 = v17;
          v31 = v29;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v52[0] = v49;
            *v34 = 138412546;
            *(v34 + 4) = v30;
            *v48 = v30;
            *(v34 + 12) = 2080;
            swift_getErrorValue();
            v47 = v33;
            v35 = v30;
            v36 = Error.localizedDescription.getter();
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v52);

            *(v34 + 14) = v38;
            _os_log_impl(&dword_26CFEB000, v32, v47, "🧭 FMR1HaptiCtrl%@: failed playing scatter haptic (%s)", v34, 0x16u);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v48, &_sSo8NSObjectCSgMd);
            MEMORY[0x26D6B2710](v48, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x26D6B2710](v49, -1, -1);
            MEMORY[0x26D6B2710](v34, -1, -1);
          }

          else
          {
          }

          v11 = v50;
        }

        v39 = *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v39)
        {
          v40 = v10;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v39);
          v39(v9, a1);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v39);
        }

        v41 = *&v17[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink];
        if (v41)
        {
          v42 = v41;
          [v42 timestamp];
          v44 = v43;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v44 = 0;
        }

        v45 = &v17[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v45 = v44;
        v45[8] = 0;
        v46 = &v17[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v46 = 0x3FF0000000000000;
        v46[8] = 0;
      }

      else
      {
        v26 = *&v52[0];
        v27 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void FMR1HapticsController.playNearbyHaptic(context:)(uint64_t a1)
{
  v2 = v1;
  v101 = a1;
  v106 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v98 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v89 - v18;
  v20 = &v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v20 = 0;
  v20[8] = 1;
  aBlock = 0u;
  v103 = 0u;
  v21 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  outlined assign with take of Any?(&aBlock, &v2[v21]);
  swift_endAccess();
  FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
  v22 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v2[v22] = 0;

  v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v23 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v2[v23] = 0;

  v24 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v2[v24] = 0;

  FMR1HapticsController.resetContinuousHapticPlayerBeforeNearbyHaptic()();
  v25 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v25)
  {
    v26 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticPattern];
    if (v26)
    {
      v93 = v4;
      v94 = v3;
      *&aBlock = 0;
      v27 = v26;
      v28 = v25;
      v29 = [v28 createPlayerWithPattern:v27 error:&aBlock];
      if (!v29)
      {
        v37 = aBlock;
        v38 = _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v96 = v29;
      v95 = v27;
      v97 = v28;
      v30 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink];
      v91 = v26;
      if (v30)
      {
        v31 = aBlock;
        [v30 timestamp];
        v33 = v32;
        v34 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v35 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        if (*v35)
        {
          v36 = v97;
          if (v32 >= 2.0)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

        v36 = v97;
      }

      else
      {
        v34 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v39 = v2[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        v40 = aBlock;
        v36 = v97;
        if (v39)
        {
LABEL_19:
          if (one-time initialization token for findingExperience != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static Logger.findingExperience);
          v42 = v2;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138412290;
            *(v45 + 4) = v42;
            *v46 = v42;
            v47 = v42;
            _os_log_impl(&dword_26CFEB000, v43, v44, "🧭 FMR1HaptiCtrl%@: not playing nearby haptic (we just played it)", v45, 0xCu);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v46, &_sSo8NSObjectCSgMd);
            MEMORY[0x26D6B2710](v46, -1, -1);
            MEMORY[0x26D6B2710](v45, -1, -1);
          }

          swift_unknownObjectRelease();
          return;
        }

        v35 = v34 + 1;
        v33 = 0.0;
      }

      if (*v34 + 2.0 <= v33)
      {
LABEL_24:
        v90 = v35;
        if (one-time initialization token for findingExperience != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.findingExperience);
        v49 = v2;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        v92 = v49;

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v89 = v34;
          v53 = v52;
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          v55 = v92;
          *(v53 + 4) = v92;
          *v54 = v55;
          v56 = v55;
          _os_log_impl(&dword_26CFEB000, v50, v51, "🧭 FMR1HaptiCtrl%@: playing nearby haptic", v53, 0xCu);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v54, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v54, -1, -1);
          v57 = v53;
          v34 = v89;
          MEMORY[0x26D6B2710](v57, -1, -1);
        }

        *&aBlock = 0;
        v58 = [v96 startAtTime:&aBlock error:0.0];
        v59 = aBlock;
        if (v58)
        {
          v60 = v92;
          v92[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v61 = v60;
          type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v62 = v59;
          v89 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v98 = *(v98 + 8);
          (v98)(v16, v12);
          v63 = swift_allocObject();
          *(v63 + 16) = v61;
          v104 = partial apply for closure #1 in FMR1HapticsController.playNearbyHaptic(context:);
          v105 = v63;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v103 = thunk for @escaping @callee_guaranteed () -> ();
          *(&v103 + 1) = &block_descriptor_175;
          v64 = _Block_copy(&aBlock);
          v65 = v61;

          static DispatchQoS.unspecified.getter();
          *&aBlock = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v66 = v34;
          v67 = v94;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v68 = v89;
          MEMORY[0x26D6B14C0](v19, v11, v7, v64);
          _Block_release(v64);

          v69 = v67;
          v34 = v66;
          v70 = v92;
          (*(v93 + 8))(v7, v69);
          (*(v99 + 8))(v11, v100);
          (v98)(v19, v12);
        }

        else
        {
          v71 = aBlock;
          v72 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v70 = v92;
          v73 = v92;
          v74 = v72;
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v89 = v34;
            v80 = v79;
            *&aBlock = v79;
            *v77 = 138412546;
            *(v77 + 4) = v73;
            *v78 = v73;
            *(v77 + 12) = 2080;
            swift_getErrorValue();
            v81 = v73;
            v70 = v92;
            v82 = Error.localizedDescription.getter();
            v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &aBlock);

            *(v77 + 14) = v84;
            _os_log_impl(&dword_26CFEB000, v75, v76, "🧭 FMR1HaptiCtrl%@: failed playing nearby haptic (%s)", v77, 0x16u);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v78, &_sSo8NSObjectCSgMd);
            MEMORY[0x26D6B2710](v78, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v80);
            v85 = v80;
            v34 = v89;
            MEMORY[0x26D6B2710](v85, -1, -1);
            MEMORY[0x26D6B2710](v77, -1, -1);
          }

          else
          {
          }
        }

        v86 = v97;
        v87 = *&v70[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v87)
        {
          v88 = v95;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v87);
          v87(v91, v101);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v87);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        *v34 = v33;
        *v90 = 0;
        return;
      }

      goto LABEL_19;
    }
  }
}

void FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_startContinuousHapticWorkItem;
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_startContinuousHapticWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1)
  {
    *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_isPlayingContinuousHapticPattern) = 0;

    FMR1HapticsController.stopContinuousHapticPlayer()();
  }
}

uint64_t FMR1HapticsController.startDelayedScatterHapticPlayerIfNecessary()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWallTime();
  v24 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v23 - v13;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  result = MEMORY[0x28223BE20](v15, v16);
  v18 = *a1;
  if (!*(v3 + *a1))
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = a2;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = a3;
    v23[1] = _Block_copy(aBlock);
    v25 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v20 = DispatchWorkItem.init(flags:block:)();

    *(v3 + v18) = v20;

    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v21 = static OS_dispatch_queue.main.getter();
    static DispatchWallTime.now()();
    + infix(_:_:)();
    v22 = *(v24 + 8);
    v22(v11, v7);
    OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

    return (v22)(v14, v7);
  }

  return result;
}

uint64_t closure #1 in FMR1HapticsController.startDelayedScatterHapticPlayerIfNecessary()(uint64_t a1, void (*a2)(_OWORD *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    memset(v5, 0, sizeof(v5));
    a2(v5);

    return outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v5, &_sypSgMd);
  }

  return result;
}

void FMR1HapticsController.playAheadHaptic(context:)(uint64_t a1)
{
  v2 = v1;
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v3] = 0;

  v4 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v4] = 0;

  v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v5 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v5] = 0;

  v6 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v1[v6] = 0;

  v7 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v7)
  {
    v8 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_aheadHapticPattern];
    if (v8)
    {
      v51[0] = 0;
      v9 = v8;
      v10 = v7;
      v11 = [v10 createPlayerWithPattern:v9 error:v51];
      if (v11)
      {
        v12 = v11;
        v13 = one-time initialization token for findingExperience;
        v14 = v51[0];
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.findingExperience);
        v16 = v2;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&dword_26CFEB000, v17, v18, "🧭 FMR1HaptiCtrl%@: playing ahead (green) haptic", v19, 0xCu);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v20, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v20, -1, -1);
          MEMORY[0x26D6B2710](v19, -1, -1);
        }

        v51[0] = 0;
        v22 = [v12 startAtTime:v51 error:0.0];
        v23 = v51[0];
        if (v22)
        {
          v16[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v24 = v23;
        }

        else
        {
          v49 = v10;
          v27 = v51[0];
          v28 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v29 = v16;
          v30 = v28;
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v51[0] = v48;
            *v33 = 138412546;
            *(v33 + 4) = v29;
            *v47 = v29;
            *(v33 + 12) = 2080;
            swift_getErrorValue();
            v46 = v32;
            v34 = v29;
            v35 = Error.localizedDescription.getter();
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v51);

            *(v33 + 14) = v37;
            _os_log_impl(&dword_26CFEB000, v31, v46, "🧭 FMR1HaptiCtrl%@: failed playing ahead haptic (%s)", v33, 0x16u);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v47, &_sSo8NSObjectCSgMd);
            MEMORY[0x26D6B2710](v47, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x26D6B2710](v48, -1, -1);
            MEMORY[0x26D6B2710](v33, -1, -1);
          }

          else
          {
          }

          v10 = v49;
        }

        v38 = *&v16[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v38)
        {
          v39 = v9;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v38);
          v38(v8, a1);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v38);
        }

        v40 = *&v16[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticDisplayLink];
        if (v40)
        {
          v41 = v40;
          [v41 timestamp];
          v43 = v42;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v43 = 0;
        }

        v44 = &v16[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v44 = v43;
        v44[8] = 0;
        v45 = &v16[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v45 = 0;
        v45[8] = 0;
      }

      else
      {
        v25 = v51[0];
        v26 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

uint64_t FMR1HapticsController.playInFOVModeTapHapticAt(hapticFactor:period:context:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
  v8 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v3 + v8) = 0;

  v9 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v3 + v9) = 0;

  *(v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
  v10 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v3 + v10) = 0;

  v11 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v3 + v11) = 0;

  FMR1HapticsController.selectSingleTapHaptic(hapticFactor:)(a2);
  FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
  v12 = v3 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod;
  *v12 = a3;
  *(v12 + 8) = 0;
  outlined init with copy of Any?(a1, v15, &_sypSgMd);
  v13 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  outlined assign with take of Any?(v15, v4 + v13);
  return swift_endAccess();
}

Swift::Void __swiftcall FMR1HapticsController.playLevelIncreasedHaptic()()
{

  FMR1HapticsController.playLevelIncreasedHaptic()(&OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelIncreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level increased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level increased haptic (%s)");
}

Swift::Void __swiftcall FMR1HapticsController.playLevelDecreasedHaptic()()
{

  FMR1HapticsController.playLevelIncreasedHaptic()(&OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_levelDecreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level decreased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level decreased haptic (%s)");
}

void FMR1HapticsController.playLevelIncreasedHaptic()(void *a1, const char *a2, const char *a3)
{
  v7 = v3;
  v51 = *MEMORY[0x277D85DE8];
  v8 = &v3[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v8 = 0;
  v8[8] = 1;
  memset(v50, 0, sizeof(v50));
  v9 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  outlined assign with take of Any?(v50, &v7[v9]);
  swift_endAccess();
  FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
  v10 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v7[v10] = 0;

  v11 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v7[v11] = 0;

  v12 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *&v7[v12] = 0;

  v13 = *&v7[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v13)
  {
    v14 = *&v7[*a1];
    if (v14)
    {
      *&v50[0] = 0;
      v15 = v14;
      v16 = v13;
      v17 = [v16 createPlayerWithPattern:v15 error:v50];
      v18 = *&v50[0];
      if (v17)
      {
        v19 = v17;
        *&v50[0] = 0;
        v20 = v18;
        v21 = [v19 startAtTime:v50 error:0.0];
        v22 = *&v50[0];
        if (v21)
        {
          v7[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v23 = one-time initialization token for findingExperience;
          v24 = v22;
          if (v23 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static Logger.findingExperience);
          v26 = v7;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v29 = 138412290;
            *(v29 + 4) = v26;
            *v30 = v26;
            v31 = v26;
            _os_log_impl(&dword_26CFEB000, v27, v28, a2, v29, 0xCu);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v30, &_sSo8NSObjectCSgMd);
            MEMORY[0x26D6B2710](v30, -1, -1);
            MEMORY[0x26D6B2710](v29, -1, -1);
          }

          swift_unknownObjectRelease();
          return;
        }

        v49 = v16;
        v35 = *&v50[0];
        v36 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for findingExperience != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.findingExperience);
        v38 = v7;
        v39 = v36;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v50[0] = v48;
          *v42 = 138412546;
          *(v42 + 4) = v38;
          *v47 = v38;
          *(v42 + 12) = 2080;
          swift_getErrorValue();
          v43 = v38;
          v44 = Error.localizedDescription.getter();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v50);

          *(v42 + 14) = v46;
          _os_log_impl(&dword_26CFEB000, v40, v41, a3, v42, 0x16u);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v47, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v47, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x26D6B2710](v48, -1, -1);
          MEMORY[0x26D6B2710](v42, -1, -1);

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        v34 = v36;
      }

      else
      {
        v32 = *&v50[0];
        v33 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v34 = v33;
      }
    }
  }
}

Swift::Void __swiftcall FMR1HapticsController.playFarNearHaptic()()
{

  FMR1HapticsController.playLevelIncreasedHaptic()(&OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_farNearHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level far->near haptic", "🧭 FMR1HaptiCtrl%@: failed playing far->near haptic (%s)");
}

Swift::Void __swiftcall FMR1HapticsController.stopHaptics()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying;
  if (v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] == 1)
  {
    v2 = v0;
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.findingExperience);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_26CFEB000, v5, v6, "🧭 FMR1HaptiCtrl%@: stopping haptics", v7, 0xCu);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v8, &_sSo8NSObjectCSgMd);
      MEMORY[0x26D6B2710](v8, -1, -1);
      MEMORY[0x26D6B2710](v7, -1, -1);
    }

    v10 = &v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticPlaybackPeriod];
    *v10 = 0;
    v10[8] = 1;
    memset(v16, 0, sizeof(v16));
    v11 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
    swift_beginAccess();
    outlined assign with take of Any?(v16, &v4[v11]);
    swift_endAccess();
    FMR1HapticsController.stopContinuousHapticPlayerIfNecessary()();
    v12 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playNearbyHapticWorkItem])
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *&v4[v12] = 0;

    v13 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playArmsReachHapticWorkItem])
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *&v4[v13] = 0;

    v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
    v14 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playScatterHapticWorkItem])
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *&v4[v14] = 0;

    v15 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playBuildHapticWorkItem])
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *&v4[v15] = 0;

    v2[v1] = 0;
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

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23CHHapticEngineOptionKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo23CHHapticEngineOptionKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Any?(v4, &v11, &_sSo23CHHapticEngineOptionKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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

void specialized FMR1HapticsController.applyContinuousHapticPlayer(with:rampingFactor:)(float a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_isPlayingContinuousHapticPattern] == 1)
  {
    v2 = 1.0 - a1;
    v3 = (a1 * 0.6) + ((1.0 - a1) * 0.5);
    v4 = *MEMORY[0x277CBF610];
    v6 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
    *&v7 = v3;
    v34 = [v6 initWithParameterID:v4 value:v7 relativeTime:0.0];
    v8 = *MEMORY[0x277CBF618];
    v9 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
    *&v10 = (a1 * 0.1) - v2;
    v11 = [v9 initWithParameterID:v8 value:v10 relativeTime:0.0];
    v12 = v11;
    v13 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_continuousHapticPlayer];
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_26D0D2880;
      *(v14 + 32) = v34;
      *(v14 + 40) = v12;
      type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticDynamicParameter);
      swift_unknownObjectRetain();
      v15 = v34;
      v16 = v12;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v35[0] = 0;
      v18 = [v13 sendParameters:isa atTime:v35 error:0.0];
      swift_unknownObjectRelease();

      if (v18)
      {
        v19 = v35[0];
      }

      else
      {
        v20 = v35[0];
        v21 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for findingExperience != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.findingExperience);
        v23 = v1;
        v24 = v21;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v35[0] = v29;
          *v27 = 138412546;
          *(v27 + 4) = v23;
          *v28 = v23;
          *(v27 + 12) = 2080;
          swift_getErrorValue();
          v30 = v23;
          v31 = Error.localizedDescription.getter();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

          *(v27 + 14) = v33;
          _os_log_impl(&dword_26CFEB000, v25, v26, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v27, 0x16u);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v28, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v28, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x26D6B2710](v29, -1, -1);
          MEMORY[0x26D6B2710](v27, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

void specialized FMR1HapticsController.playSingleTapHaptic(displaylink:)()
{
  v61[4] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPattern];
    if (v2)
    {
      v61[0] = 0;
      v3 = v1;
      v4 = v2;
      v60 = v3;
      v5 = [v3 createPlayerWithPattern:v4 error:v61];
      v6 = v61[0];
      if (v5)
      {
        v7 = v5;
        if (v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity + 4])
        {
          v8 = v61[0];
        }

        else
        {
          v12 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
          v13 = *MEMORY[0x277CBF610];
          v14 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
          v15 = v6;
          LODWORD(v16) = v12;
          v17 = [v14 initWithParameterID:v13 value:v16 relativeTime:0.0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_26D0D2860;
          *(v18 + 32) = v17;
          type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for CHHapticDynamicParameter);
          v19 = v17;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v61[0] = 0;
          LOBYTE(v13) = [v7 sendParameters:isa atTime:v61 error:0.0];

          if (v13)
          {
            v21 = v61[0];
          }

          else
          {
            v57 = v7;
            v58 = v4;
            v22 = v61[0];
            v23 = _convertNSErrorToError(_:)();

            swift_willThrow();
            if (one-time initialization token for findingExperience != -1)
            {
              swift_once();
            }

            v24 = type metadata accessor for Logger();
            __swift_project_value_buffer(v24, static Logger.findingExperience);
            v56 = v0;
            v25 = v0;
            v26 = v23;
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v55 = v19;
              v30 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v61[0] = v54;
              *v29 = 138412546;
              *(v29 + 4) = v25;
              *v30 = v25;
              *(v29 + 12) = 2080;
              swift_getErrorValue();
              v31 = v25;
              v32 = Error.localizedDescription.getter();
              v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v61);

              *(v29 + 14) = v34;
              _os_log_impl(&dword_26CFEB000, v27, v28, "🧭 FMR1HaptiCtrl%@: failed parametering tap haptic player: %s", v29, 0x16u);
              outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v30, &_sSo8NSObjectCSgMd);
              MEMORY[0x26D6B2710](v30, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v54);
              MEMORY[0x26D6B2710](v54, -1, -1);
              MEMORY[0x26D6B2710](v29, -1, -1);
            }

            else
            {
            }

            v0 = v56;
            v7 = v57;
            v4 = v58;
          }
        }

        v35 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v35)
        {
          v36 = v7;
          v37 = OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_tapHapticContext;
          swift_beginAccess();
          outlined init with copy of Any?(&v0[v37], v61, &_sypSgMd);
          v38 = v4;
          outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v35);
          v35(v2, v61);
          v7 = v36;

          outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v35);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v61, &_sypSgMd);
        }

        v61[0] = 0;
        if ([v7 startAtTime:v61 error:{0.0, v54}])
        {
          v39 = v61[0];

          swift_unknownObjectRelease();
          v0[OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          return;
        }

        v40 = v61[0];
        v41 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for findingExperience != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.findingExperience);
        v43 = v0;
        v44 = v41;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59 = v4;
          v49 = swift_slowAlloc();
          v61[0] = v49;
          *v47 = 138412546;
          *(v47 + 4) = v43;
          *v48 = v43;
          *(v47 + 12) = 2080;
          swift_getErrorValue();
          v50 = v43;
          v51 = Error.localizedDescription.getter();
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v61);

          *(v47 + 14) = v53;
          _os_log_impl(&dword_26CFEB000, v45, v46, "🧭 FMR1HaptiCtrl%@: failed playing single tap haptic (%s)", v47, 0x16u);
          outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v48, &_sSo8NSObjectCSgMd);
          MEMORY[0x26D6B2710](v48, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x26D6B2710](v49, -1, -1);
          MEMORY[0x26D6B2710](v47, -1, -1);

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        v11 = v41;
      }

      else
      {
        v9 = v61[0];
        v10 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v11 = v10;
      }
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

SKTexture __swiftcall FMPFTexture(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  type metadata accessor for FMPFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = MEMORY[0x26D6B1210](countAndFlagsBits, object);
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  if (v6)
  {
    v7 = [objc_opt_self() textureWithImage_];

    v4 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CDCF88]) init];
  }

  return v7;
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

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

Swift::Int FMFindingType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D6B18C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D6B18C0](v1);
  return Hasher._finalize()();
}

uint64_t FMFindingTechnology.hash(into:)()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    v2 = (v1 >> 8) & 0x7F;
    MEMORY[0x26D6B18C0](1);
    Hasher._combine(_:)(v1 & 1);
  }

  else
  {
    MEMORY[0x26D6B18C0](0);
    v2 = v1;
  }

  return MEMORY[0x26D6B18C0](v2);
}

Swift::Int FMFindingTechnology.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 & 0x80000000) != 0)
  {
    v2 = (v1 >> 8) & 0x7F;
    MEMORY[0x26D6B18C0](1);
    Hasher._combine(_:)(v1 & 1);
  }

  else
  {
    MEMORY[0x26D6B18C0](0);
    v2 = v1;
  }

  MEMORY[0x26D6B18C0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMFindingTechnology()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    v2 = (v1 >> 8) & 0x7F;
    MEMORY[0x26D6B18C0](1);
    Hasher._combine(_:)(v1 & 1);
  }

  else
  {
    MEMORY[0x26D6B18C0](0);
    v2 = v1;
  }

  return MEMORY[0x26D6B18C0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMFindingTechnology()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 & 0x80000000) != 0)
  {
    v2 = (v1 >> 8) & 0x7F;
    MEMORY[0x26D6B18C0](1);
    Hasher._combine(_:)(v1 & 1);
  }

  else
  {
    MEMORY[0x26D6B18C0](0);
    v2 = v1;
  }

  MEMORY[0x26D6B18C0](v2);
  return Hasher._finalize()();
}

BOOL specialized static FMFindingTechnology.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    if (v3 < 0)
    {
      return ((v3 ^ v2) < 0x100) & (v3 ^ v2 ^ 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = (v3 ^ v2) == 0;
    return v3 >= 0 && v4;
  }
}

unint64_t lazy protocol witness table accessor for type FMFindingType and conformance FMFindingType()
{
  result = lazy protocol witness table cache variable for type FMFindingType and conformance FMFindingType;
  if (!lazy protocol witness table cache variable for type FMFindingType and conformance FMFindingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingType and conformance FMFindingType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMExperienceType and conformance FMExperienceType()
{
  result = lazy protocol witness table cache variable for type FMExperienceType and conformance FMExperienceType;
  if (!lazy protocol witness table cache variable for type FMExperienceType and conformance FMExperienceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMExperienceType and conformance FMExperienceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FMFindingTechnology and conformance FMFindingTechnology()
{
  result = lazy protocol witness table cache variable for type FMFindingTechnology and conformance FMFindingTechnology;
  if (!lazy protocol witness table cache variable for type FMFindingTechnology and conformance FMFindingTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMFindingTechnology and conformance FMFindingTechnology);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingTechnology(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 61441 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61441 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61441;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 4) & 0x7C0 | (*a1 >> 2)))) ^ 0xFFF;
  if (v6 >= 0xFFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FMFindingTechnology(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61441 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61441 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFFE)
  {
    v5 = ((a2 - 4095) >> 16) + 1;
    *result = a2 - 4095;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 1) & 0x7FF) - (a2 << 11);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UIFont.font(with:)(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(61);
    MEMORY[0x26D6B12B0](0xD00000000000003BLL, 0x800000026D0DB950);
    type metadata accessor for UIFontDescriptorSymbolicTraits(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t FMPFSKLabelNode.description.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v3 = _Pointer.debugDescription.getter();
  v5 = specialized BidirectionalCollection.suffix(_:)(6, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x26D6B1280](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x26D6B12B0](v12, v14);

  MEMORY[0x26D6B12B0](30768, 0xE200000000000000);

  MEMORY[0x26D6B12B0](32, 0xE100000000000000);
  v15 = [v0 name];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x26D6B12B0](v17, v2);

  MEMORY[0x26D6B12B0](0x3E4025202CLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26D0D2E90;
  v20 = [v1 isHidden];
  v21 = lazy protocol witness table accessor for type String and conformance String();
  v22 = 0x656C6269736976;
  if (v20)
  {
    v22 = 0x6E6564646968;
  }

  v23 = 0xE700000000000000;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = v21;
  if (v20)
  {
    v23 = 0xE600000000000000;
  }

  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  v24 = String.init(format:_:)();

  return v24;
}

void FMPFSKLabelNode.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_labelNode);
}

id FMPFSKLabelNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKLabelNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double one-time initialization function for default()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  result = 0.5;
  static FMPFRingViewStyle.default = xmmword_26D0D3830;
  qword_2804D9BE8 = 0x3FC41B2F769CF0E0;
  qword_2804D9BF0 = v1;
  return result;
}

{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76968];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = UIFont.font(with:)(2);
  v4 = *MEMORY[0x277D769A8];
  v5 = [v0 preferredFontForTextStyle_];

  v6 = UIFont.font(with:)(2);
  v7 = *MEMORY[0x277D76A28];
  v8 = [v0 preferredFontForTextStyle_];

  v9 = UIFont.font(with:)(2);
  v10 = *MEMORY[0x277D76918];
  v11 = [v0 preferredFontForTextStyle_];

  v12 = UIFont.font(with:)(2);
  *&static FMFindingViewStyle.default = v3;
  *(&static FMFindingViewStyle.default + 1) = v6;
  qword_2804DCF00 = v9;
  unk_2804DCF08 = v12;
  xmmword_2804DCF10 = xmmword_26D0D3CD0;
  unk_2804DCF20 = xmmword_26D0D3CE0;
  xmmword_2804DCF30 = xmmword_26D0D3CF0;
  unk_2804DCF40 = xmmword_26D0D3D00;
  xmmword_2804DCF50 = xmmword_26D0D3D10;
  unk_2804DCF60 = xmmword_26D0D3D20;
  result = 111.0;
  xmmword_2804DCF70 = xmmword_26D0D3D30;
  qword_2804DCF80 = 0x4014000000000000;
  return result;
}

{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  static FMR1GlyphButtonStyle.default = xmmword_26D0D40E0;
  qword_2804DCFA0 = 0x4026000000000000;
  qword_2804DCFA8 = v1;
  result = 1.15;
  xmmword_2804DCFB0 = xmmword_26D0D40F0;
  qword_2804DCFC0 = 0x3FE0000000000000;
  return result;
}

id FMPFRingView.init(sceneSize:diskRadiusScale:verticalOffset:)(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v6 = &v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_style];
  if (one-time initialization token for default != -1)
  {
    v27 = a1;
    v28 = a2;
    v29 = a5;
    v30 = a4;
    v31 = a3;
    swift_once();
    a1 = v27;
    a2 = v28;
    a3 = v31;
    a4 = v30;
    a5 = v29;
  }

  v7 = qword_2804D9BE8;
  v8 = qword_2804D9BF0;
  *v6 = static FMPFRingViewStyle.default;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScale] = 0;
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngle] = 0;
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngle] = 0;
  v9 = &v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_sceneSize];
  *v9 = a3;
  v9[1] = a4;
  v10 = *&a1;
  if (a2)
  {
    v10 = 0.0;
  }

  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_verticalOffset] = v10;
  if (a4 < a3)
  {
    a3 = a4;
  }

  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_diskRadius] = a3 * 0.5 * a5;
  v11 = v8;
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_opacitySpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_startAngleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_endAngleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC10TVRemoteUI12FMPFRingView_additionalRadiusScaleSpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v33.receiver = v5;
  v33.super_class = type metadata accessor for FMPFRingView();
  v12 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  CGAffineTransformMakeRotation(&v32, -1.57079633);
  [v14 setTransform_];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.default);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = COERCE_DOUBLE(swift_slowAlloc());
    v32.a = v20;
    *v19 = 136315138;
    v21 = [v14 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v32);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_26CFEB000, v17, v18, "🧭 FMPFRingView%s: init", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(*&v20);
    MEMORY[0x26D6B2710](*&v20, -1, -1);
    MEMORY[0x26D6B2710](v19, -1, -1);
  }

  return v14;
}