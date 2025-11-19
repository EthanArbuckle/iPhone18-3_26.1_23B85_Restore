id getWKDefaultWallpaperManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWKDefaultWallpaperManagerClass_softClass;
  v7 = getWKDefaultWallpaperManagerClass_softClass;
  if (!getWKDefaultWallpaperManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWKDefaultWallpaperManagerClass_block_invoke;
    v3[3] = &unk_2782C5CB0;
    v3[4] = &v4;
    __getWKDefaultWallpaperManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21B529530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_21B5295AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21B529604@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B529628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B6C8DA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B529664(uint64_t a1, int a2)
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

uint64_t sub_21B529684(uint64_t result, int a2, int a3)
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

uint64_t sub_21B5296AC(uint64_t a1, int a2)
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

uint64_t sub_21B5296CC(uint64_t result, int a2, int a3)
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

uint64_t sub_21B5296F8()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529730()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529788()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B5297D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529810()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21B529848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529880()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B5298B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B529900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529944()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B529984()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B5299FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529A34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529A6C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21B529AA4()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529B28()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529B60()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B529BB0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B529BF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529C40()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529C78()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B529CD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B529CE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529D1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B6C8B84();
  *a1 = result;
  return result;
}

uint64_t sub_21B529E4C()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529E84()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21B529ED8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529F10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529F48()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B529F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B529FC0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21B52A030()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A068()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52A0A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A0E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B52A128()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A160()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A19C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A234()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A284()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21B52A2DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A314()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A354()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A38C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B52A3C8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21B52A400()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A440()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A4D8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B52A514()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A560()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A5A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A5DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A730()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52A76C()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A7A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A7E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52A820()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21B52A8D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A90C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52A954()
{
  MEMORY[0x21CEF8220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52A98C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52A9CC()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21B52AA1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52AA54()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21B52AA90()
{
  v1 = sub_21B6C8A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21B52AB80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52ABC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52ABF8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B52AC64()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52AC9C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B52ACE4()
{
  v1 = sub_21B6C8A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21B52ADD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B52AE10()
{
  v1 = sub_21B6C8964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = v5 + v6;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 1, v3 | 7);
}

uint64_t sub_21B52AF00()
{
  v1 = sub_21B6C8964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_21B52AFEC()
{
  v1 = sub_21B6C8964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_21B52B0B4()
{
  v1 = sub_21B6C8A04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21B52B1A0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B52B1E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52B220()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B52B268()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21B52B3D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B52B410(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_21B52BBAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21B52C5A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void sub_21B5353E8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__298(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_21B53A860(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Unwind_Resume(a1);
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void sub_21B53B388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B53CEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B53DFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B540FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Block_object_dispose((v34 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_21B542868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B542B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B54984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a72);
  objc_destroyWeak((v72 - 192));
  _Unwind_Resume(a1);
}

void sub_21B5536D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B553A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B553C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5598BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ATXComplicationFromPRSWidget(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [a2 source];
  }

  else
  {
    v4 = 6;
  }

  v5 = objc_alloc(MEMORY[0x277CEB410]);
  v6 = [v3 extensionBundleIdentifier];
  v7 = [v3 kind];
  v8 = [v3 containerBundleIdentifier];
  v9 = [v3 family];
  v10 = [v3 intent];
  v11 = [v5 initWithExtensionBundleIdentifier:v6 kind:v7 containerBundleIdentifier:v8 widgetFamily:v9 intent:v10 source:v4];

  return v11;
}

void sub_21B55CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  objc_destroyWeak((v46 + 72));
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a46);
  objc_destroyWeak((v47 - 192));
  objc_destroyWeak((v47 - 136));
  objc_destroyWeak((v47 - 112));
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782C6C90;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

__n128 defaultMetrics@<Q0>(_OWORD *a1@<X8>)
{
  v1 = *MEMORY[0x277CBF3A0];
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  *a1 = *MEMORY[0x277CBF3A0];
  a1[1] = v2;
  a1[2] = v1;
  a1[3] = v2;
  result = *MEMORY[0x277CBF3A8];
  a1[4] = *MEMORY[0x277CBF3A8];
  return result;
}

void sub_21B560978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void PBFDispatchAsyncWithString(void *a1, dispatch_qos_class_t a2, void *a3)
{
  if (a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = PBFLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    v9 = [a3 copy];
    v10 = [a1 copy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __PBFDispatchAsyncWithString_block_invoke;
    v15[3] = &unk_2782C6EA8;
    v16 = v8;
    v15[4] = v10;
    v15[5] = v9;
    v11 = [v15 copy];
    v12 = [MEMORY[0x277D3EBA8] sharedWorkloop];
    v13 = v12;
    if (a2)
    {
      v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, v11);
      dispatch_async(v13, v14);
    }

    else
    {
      dispatch_async(v12, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __PBFDispatchAsyncWithString_block_invoke(uint64_t a1)
{
  v2 = qword_28120BB78;
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    qword_28120BB78 = [*(a1 + 32) UTF8String];
    if (*v4)
    {
      if (*(a1 + 48) == 1)
      {
        v5 = PBFLogCommon();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          __PBFDispatchAsyncWithString_block_invoke_cold_1();
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  if (*(a1 + 32) && *(a1 + 48) == 1 && (v6 = PBFLogCommon(), os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG)))
  {
    __PBFDispatchAsyncWithString_block_invoke_cold_2();
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  qword_28120BB78 = v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_21B564C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B5686FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B5692EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B569F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B56ABBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B56B1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B56D974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getDNDModeConfigurationServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __DoNotDisturbLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782C7260;
    v5 = 0;
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    __getDNDModeConfigurationServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DNDModeConfigurationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDNDModeConfigurationServiceClass_block_invoke_cold_1();
  }

  getDNDModeConfigurationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t PBFPosterModelStoreCoordinatorSharedInit(void *a1)
{
  v1 = a1;
  if (![objc_opt_class() type])
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_9();
  }

  v2 = *(v1 + 6);
  v3 = *(v1 + 9);
  v4 = *(v1 + 1);
  v5 = [objc_opt_class() type];
  v6 = v2;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v6)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_8();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_1();
  }

  v7 = v4;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_7();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_2();
  }

  v8 = v3;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v8)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_6();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_3();
  }

  if (!v5)
  {
    PBFPosterModelStoreCoordinatorSharedInit_cold_5();
  }

  v9 = objc_opt_new();
  v10 = *(v1 + 7);
  *(v1 + 7) = v9;

  v11 = objc_opt_new();
  v12 = *(v1 + 12);
  *(v1 + 12) = v11;

  v13 = objc_opt_new();
  v14 = *(v1 + 13);
  *(v1 + 13) = v13;

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@-accessQueue_%@", v17, v8];
  Serial = BSDispatchQueueCreateSerial();
  v20 = *(v1 + 8);
  *(v1 + 8) = Serial;

  v21 = [MEMORY[0x277CBEBC0] pf_posterPathIdentifierURLProviderURL:v6 type:v5 posterUUID:v8];
  v22 = *(v1 + 5);
  *(v1 + 5) = v21;

  v23 = [MEMORY[0x277CBEBC0] pf_versionsURLForIdentifierURL:*(v1 + 5)];
  v24 = *(v1 + 4);
  *(v1 + 4) = v23;

  v25 = [MEMORY[0x277CBEBC0] pf_providerInfoFileURLForIdentifierURL:*(v1 + 5)];
  v26 = *(v1 + 3);
  *(v1 + 3) = v25;

  if (!*(v1 + 2))
  {
    v27 = [MEMORY[0x277CBEBC0] pf_descriptorIdentifierURLForType:v5 identifierURL:*(v1 + 5)];
    [v27 pbf_setFileProtection:*MEMORY[0x277CBE800] error:0];
    if ([v27 checkResourceIsReachableAndReturnError:0])
    {
      v28 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v27 options:2 error:0];
      if ([v28 length])
      {
        v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v28 encoding:4];
        v30 = *(v1 + 2);
        *(v1 + 2) = v29;
      }
    }

    if (!*(v1 + 2))
    {
      v31 = PBFLookupDescriptorIdentifierWithinPathInstanceURL(*(v1 + 5));
      if ([v31 length] && (v1[88] & 1) == 0)
      {
        v32 = [v31 dataUsingEncoding:4];
        [v32 writeToURL:v27 options:268435457 error:0];
      }

      v33 = *(v1 + 2);
      *(v1 + 2) = v31;

      if (!*(v1 + 2) && ([objc_opt_class() requiresDescriptorIdentifier] & 1) != 0)
      {

LABEL_36:
        v45 = 0;
        goto LABEL_37;
      }
    }
  }

  v34 = (v1 + 80);
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    v35 = [MEMORY[0x277CBEBC0] pf_roleIdentifierURLForType:v5 identifierURL:*(v1 + 5)];
    [v35 pbf_setFileProtection:*MEMORY[0x277CBE800] error:0];
    if ([v35 checkResourceIsReachableAndReturnError:0])
    {
      v36 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v35 options:2 error:0];
      if ([v36 length])
      {
        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v36 encoding:4];
        v38 = *v34;
        *v34 = v37;
      }
    }

    if ((PFPosterRoleIsValid() & 1) == 0)
    {
      v39 = PRPosterRoleLookupForExtensionBundleIdentifier(v7, *(v1 + 2));
      v40 = *(v1 + 10);
      *(v1 + 10) = v39;

      v41 = *(v1 + 10);
      if (v41 && (v1[88] & 1) == 0)
      {
        v42 = [v41 dataUsingEncoding:4];
        [v42 writeToURL:v35 options:268435457 error:0];
      }

      v43 = PBFLogPosterContents();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        PBFPosterModelStoreCoordinatorSharedInit_cold_4();
      }
    }

    IsValid = PFPosterRoleIsValid();

    if (!IsValid)
    {
      goto LABEL_36;
    }
  }

  v45 = 1;
LABEL_37:

  return v45;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B570CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __providerURLForOptions(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    __providerURLForOptions_cold_2();
  }

  v7 = v6;
  if (!v6)
  {
    __providerURLForOptions_cold_1();
  }

  if (a1)
  {
    v8 = __stagedProviderURLForIdentity(v6);
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

id __knownVersions(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v3 = [v1 allKeys];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____knownVersions_block_invoke;
    v6[3] = &unk_2782C75E8;
    v4 = v2;
    v7 = v4;
    [v3 bs_each:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_21B5722D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B572500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21B572760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B572990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21B57361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __stagedProviderURLForIdentity(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    __stagedProviderURLForIdentity_cold_1();
  }

  v2 = v1;
  v3 = MEMORY[0x277CBEBC0];
  v4 = PFTemporaryDirectory();
  v5 = MEMORY[0x277CCACA8];
  v6 = [v2 posterUUID];
  v7 = [v5 stringWithFormat:@"_STAGED_%@_%llu_%llu", v6, objc_msgSend(v2, "version"), objc_msgSend(v2, "supplement")];
  v8 = [v4 stringByAppendingPathComponent:v7];
  v9 = [v3 fileURLWithPath:v8 isDirectory:1];

  return v9;
}

uint64_t ____knownVersions_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedLongLongValue];

  return [v2 addIndex:v3];
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_8_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void OUTLINED_FUNCTION_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id uuidForPosterConfiguration(void *a1)
{
  v1 = [a1 _path];
  v2 = [v1 serverIdentity];
  v3 = [v2 posterUUID];

  return v3;
}

void sub_21B579730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B57B60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSBSWallpaperServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782C7740;
    v5 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    __getSBSWallpaperServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SBSWallpaperService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSWallpaperServiceClass_block_invoke_cold_1();
  }

  getSBSWallpaperServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21B57E49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B584814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B5867D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21B586CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B586F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5871CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B587B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

id PBFBundle()
{
  if (PBFBundle___onceToken != -1)
  {
    PBFBundle_cold_1();
  }

  v1 = PBFBundle___PBFBundle;

  return v1;
}

void __PBFBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = PBFBundle___PBFBundle;
  PBFBundle___PBFBundle = v1;
}

id PBFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = PBFBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

__CFString *NSStringFromPBFPowerLogReason(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"PBFPowerLogReasonUserViewed";
  }

  else
  {
    return off_2782C79B8[a1 - 1];
  }
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PowerLogLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782C79A0;
    v6 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    __getPLLogRegisteredEventSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PowerLogLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _PBFPosterRoleCoordinatorSynchronizeAttribute(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v90 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  if (([v16 isEqual:*MEMORY[0x277D3EEB8]] & 1) != 0 || (objc_msgSend(v16, "isEqual:", *MEMORY[0x277D3EEA8]) & 1) != 0 || objc_msgSend(v16, "isEqual:", *MEMORY[0x277D3EEA0]))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke;
    aBlock[3] = &unk_2782C7B60;
    v22 = v15;
    v81 = v22;
    v75 = _Block_copy(aBlock);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke_383;
    v77[3] = &unk_2782C7B88;
    v23 = v21;
    v78 = v23;
    v24 = v22;
    v79 = v24;
    v76 = _Block_copy(v77);
    v25 = v24;
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if (!v25)
    {
      _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_5();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_1();
    }

    v26 = v23;
    if (!v26)
    {
      _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_4();
    }

    v27 = v26;
    if (([v26 conformsToProtocol:&unk_282D476F0] & 1) == 0)
    {
      _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_2();
    }

    v28 = v27;
    if (([v28 conformsToProtocol:&unk_282D47368] & 1) == 0)
    {
      _PBFPosterRoleCoordinatorSynchronizeAttribute_cold_3();
    }

    v74 = v21;

    if (v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v19;
    }

    v30 = v29;
    v31 = v30;
    if (!v17 && !v18 && v30)
    {
      v72 = v16;
      v73 = v19;
      v32 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v25 role];
        [v25 pbf_posterUUID];
        v35 = v34 = v15;
        *buf = 138543874;
        v83 = v33;
        v84 = 2114;
        v85 = v16;
        v86 = 2114;
        v87 = v35;
        _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing fixedAttribute %{public}@ to database & file system for posterUUID %{public}@", buf, 0x20u);

        v15 = v34;
        v18 = 0;
        v17 = 0;
      }

      v36 = v76[2](v76, v31, a8);
      v37 = PBFLogRoleCoordinator();
      v38 = v37;
      if (!v36)
      {
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          v52 = 0;
          v19 = v73;
LABEL_58:

          goto LABEL_59;
        }

        v55 = [v25 role];
        v56 = [v25 pbf_posterUUID];
        v67 = *a8;
        *buf = 138544130;
        v83 = v55;
        v84 = 2114;
        v85 = v16;
        v86 = 2114;
        v87 = v56;
        v88 = 2114;
        v89 = v67;
        v58 = "[%{public}@] Failed to synchronize fixedAttribute %{public}@ to database for posterUUID %{public}@: %{public}@";
        goto LABEL_55;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v25 role];
        [v25 pbf_posterUUID];
        v40 = v20;
        v41 = v17;
        v42 = v31;
        v43 = a8;
        v44 = v18;
        v46 = v45 = v15;
        *buf = 138543874;
        v83 = v39;
        v84 = 2114;
        v85 = v72;
        v86 = 2114;
        v87 = v46;
        _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronized fixedAttribute %{public}@ to database for posterUUID %{public}@", buf, 0x20u);

        v15 = v45;
        v18 = v44;
        a8 = v43;
        v31 = v42;
        v17 = v41;
        v20 = v40;
      }

      v47 = v75[2](v75, v31, a8);
      v48 = PBFLogRoleCoordinator();
      v38 = v48;
      if (v47)
      {
        v16 = v72;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v25 role];
          v50 = [v25 pbf_posterUUID];
          *buf = 138543874;
          v83 = v49;
          v84 = 2114;
          v85 = v72;
          v86 = 2114;
          v87 = v50;
          v51 = "[%{public}@] Synchronized fixedAttribute %{public}@ to disk for posterUUID %{public}@";
LABEL_45:
          _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, v51, buf, 0x20u);

          goto LABEL_46;
        }

        goto LABEL_46;
      }

      v16 = v72;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        v55 = [v25 role];
        v56 = [v25 pbf_posterUUID];
        v57 = *a8;
        *buf = 138544130;
        v83 = v55;
        v84 = 2114;
        v85 = v72;
        v86 = 2114;
        v87 = v56;
        v88 = 2114;
        v89 = v57;
        v58 = "[%{public}@] Failed to synchronize fixedAttribute %{public}@ to disk for posterUUID %{public}@: %{public}@";
LABEL_55:
        _os_log_fault_impl(&dword_21B526000, v38, OS_LOG_TYPE_FAULT, v58, buf, 0x2Au);

        goto LABEL_56;
      }

      goto LABEL_56;
    }

    if (([v17 isEqual:v18] & 1) == 0)
    {
      v73 = v19;
      if (!v17 && v18)
      {
        v53 = v75[2](v75, v18, a8);
        v54 = PBFLogRoleCoordinator();
        v38 = v54;
        if (v53)
        {
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [v25 role];
            v50 = [v25 pbf_posterUUID];
            *buf = 138543874;
            v83 = v49;
            v84 = 2114;
            v85 = v16;
            v86 = 2114;
            v87 = v50;
            v51 = "[%{public}@] Missing FS object; Synchronized databaseAttribute %{public}@ to disk for posterUUID %{public}@";
            goto LABEL_45;
          }

LABEL_46:
          v52 = 1;
LABEL_57:
          v19 = v73;
          goto LABEL_58;
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          v55 = [v25 role];
          v56 = [v25 pbf_posterUUID];
          v65 = *a8;
          *buf = 138544130;
          v83 = v55;
          v84 = 2114;
          v85 = v16;
          v86 = 2114;
          v87 = v56;
          v88 = 2114;
          v89 = v65;
          v58 = "[%{public}@] Failed to synchronize databaseAttribute %{public}@ to disk for posterUUID %{public}@: %{public}@";
          goto LABEL_55;
        }

LABEL_56:
        v52 = 0;
        goto LABEL_57;
      }

      if (v17 && !v18)
      {
        v59 = v76[2](v76, v17, a8);
        v60 = PBFLogRoleCoordinator();
        v38 = v60;
        if (v59)
        {
          v19 = v73;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v25 role];
            v62 = [v25 pbf_posterUUID];
            *buf = 138543874;
            v83 = v61;
            v84 = 2114;
            v85 = v16;
            v86 = 2114;
            v87 = v62;
            _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] Missing database attribute; Synchronized diskAttribute %{public}@ to database for posterUUID %{public}@", buf, 0x20u);
          }

          v52 = 1;
        }

        else
        {
          v19 = v73;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            v69 = [v25 role];
            v70 = [v25 pbf_posterUUID];
            v71 = *a8;
            *buf = 138544130;
            v83 = v69;
            v84 = 2114;
            v85 = v16;
            v86 = 2114;
            v87 = v70;
            v88 = 2114;
            v89 = v71;
            _os_log_fault_impl(&dword_21B526000, v38, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to synchronize diskAttribute %{public}@ to database for posterUUID %{public}@: %{public}@", buf, 0x2Au);

            v19 = v73;
          }

          v52 = 0;
        }

        goto LABEL_58;
      }

      if (v17)
      {
        v63 = v76[2](v76, v17, a8);
        v64 = PBFLogRoleCoordinator();
        v38 = v64;
        if (v63)
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [v25 role];
            v50 = [v25 pbf_posterUUID];
            *buf = 138543874;
            v83 = v49;
            v84 = 2114;
            v85 = v16;
            v86 = 2114;
            v87 = v50;
            v51 = "[%{public}@] DB + FS out of sync; Synchronized diskAttribute %{public}@ to database for posterUUID %{public}@";
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          v55 = [v25 role];
          v56 = [v25 pbf_posterUUID];
          v66 = *a8;
          *buf = 138544130;
          v83 = v55;
          v84 = 2114;
          v85 = v16;
          v86 = 2114;
          v87 = v56;
          v88 = 2114;
          v89 = v66;
          v58 = "[%{public}@] Failed to synchronize diskAttribute %{public}@ to database for posterUUID %{public}@: %{public}@";
          goto LABEL_55;
        }

        goto LABEL_56;
      }
    }

    v52 = 1;
LABEL_59:

    v21 = v74;
    goto LABEL_60;
  }

  v52 = 0;
LABEL_60:

  return v52;
}

void sub_21B594CB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id PersistentIdentifierForPRSWidget(void *a1)
{
  v1 = MEMORY[0x277CFA358];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 extensionBundleIdentifier];
  v5 = [v2 containerBundleIdentifier];
  v6 = [v2 kind];
  v7 = [v2 family];
  v8 = [v2 intent];
  v9 = [v3 initWithExtensionBundleIdentifier:v4 containerBundleIdentifier:v5 kind:v6 family:v7 intent:v8];

  v10 = [MEMORY[0x277D3EE88] sharedInstance];
  v11 = [v10 systemMetricsForWidget:v9];

  v12 = MEMORY[0x277CCACA8];
  v13 = [v2 extensionBundleIdentifier];
  v14 = [v2 containerBundleIdentifier];
  v15 = [v2 kind];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "family")}];
  [v11 size];
  v17 = NSStringFromCGSize(v22);
  v18 = [v2 intent];

  v19 = [v12 stringWithFormat:@"(WIDGET:%@-%@-%@-%@-%@-%lld)", v13, v14, v15, v16, v17, objc_msgSend(v18, "_indexingHash")];

  return v19;
}

__CFString *NSStringFromPBFPosterSnapshotRequestIntention(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown - %lu)", a1];
  }

  else
  {
    v2 = off_2782C7D00[a1];
  }

  return v2;
}

uint64_t PBFDispatchQualityOfServiceFromPBFPosterSnapshotRequestIntention(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return dword_21B6D7788[a1];
  }
}

id PBFPosterSnapshotRequestIdentifierForPath(void *a1)
{
  v1 = a1;
  if (![v1 isServerPosterPath])
  {
    v4 = [v1 descriptorIdentifier];
    v8 = [@"PATH_" stringByAppendingFormat:@"DESCRIPTOR(%@)", v4];
    goto LABEL_10;
  }

  v2 = [v1 serverIdentity];
  v3 = [v2 posterUUID];
  v4 = [v3 UUIDString];

  v5 = [v1 identity];
  v6 = [v5 type];

  if (v6 == 3)
  {
    v7 = @"CONFIGURATION_";
LABEL_9:
    v8 = [(__CFString *)v7 stringByAppendingString:v4];
    goto LABEL_10;
  }

  v9 = [v1 identity];
  v10 = [v9 type];

  if (v10 == 1)
  {
    v7 = @"DESCRIPTOR_";
    goto LABEL_9;
  }

  v11 = [v1 identity];
  v12 = [v11 type];

  if (v12 == 2)
  {
    v7 = @"STATICDESCRIPTOR_";
    goto LABEL_9;
  }

  v8 = v4;
  v4 = v8;
LABEL_10:
  v13 = v8;

  return v13;
}

void sub_21B59AD48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21B59B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _PBFDetermineDataStoreViabilityForVersionWithinBaseURL(void *a1, unint64_t a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v42 = v5;
  v39 = a2;
  if (a2 < 0x3B || ([MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v5 version:a2], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObject:", v9), v9, objc_msgSend(MEMORY[0x277CBEBC0], "pbf_dataStoreExtensionContainerURLForBaseURL:version:", v5, a2), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObject:", v10), v10, objc_msgSend(MEMORY[0x277CBEBC0], "pbf_galleryCacheURLForBaseURL:version:", v5, a2), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObject:", v11), v11, a2 == 59))
  {
    v40 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v5 version:a2];
    [v8 addObject:v12];

    v40 = 1;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
  v41 = v8;
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        v48 = 0;
        v19 = [v18 path];
        v20 = [v6 fileExistsAtPath:v19 isDirectory:&v48];

        if (v20)
        {
          if (v48 == 1)
          {
            v21 = PFPosterPathURLResourceValues();
            v22 = [v18 pbf_URLIsReachableAndConformToResourceValues:v21 error:a3];

            if (v22)
            {
              continue;
            }
          }
        }

        v37 = 0;
        v23 = v13;
        goto LABEL_35;
      }

      v15 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v8;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v44 + 1) + 8 * j);
        v48 = 0;
        v29 = [v28 path];
        v30 = [v6 fileExistsAtPath:v29 isDirectory:&v48];

        if (v30)
        {
          if ((v48 & 1) == 0)
          {
            v31 = PFPosterPathURLResourceValues();
            v32 = [v28 pbf_URLIsReachableAndConformToResourceValues:v31 error:a3];

            if (v32)
            {
              continue;
            }
          }
        }

        v37 = 0;
        goto LABEL_35;
      }

      v25 = [v23 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  if (v40)
  {
    v23 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForBaseURL:v42 version:v39];
    v43 = 0;
    v33 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:v23 options:4 error:&v43];
    v34 = v43;
    v35 = v34;
    if (v34)
    {
      if (a3)
      {
        v36 = v34;
        v37 = 0;
        *a3 = v35;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = [(PBFPosterExtensionDataStoreSQLiteDatabase *)v33 validateDatabaseWithError:a3];
    }

    [(PBFPosterExtensionDataStoreSQLiteDatabase *)v33 invalidate];

LABEL_35:
  }

  else
  {
    v37 = 1;
  }

  return v37;
}

id _PBFProvidersForPosterUUIDFromDataStoreExtensionContainerURL(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = objc_opt_new();
  v21 = v2;
  v19 = v1;
  [v2 enumeratorAtURL:v1 includingPropertiesForKeys:0 options:1 errorHandler:&__block_literal_global_12];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 lastPathComponent];
        v10 = [v8 URLByAppendingPathComponent:@"configurations"];
        v11 = [v21 enumeratorAtURL:v10 includingPropertiesForKeys:0 options:1 errorHandler:&__block_literal_global_7];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v22 + 1) + 8 * j) lastPathComponent];
              [v3 setObject:v9 forKeyedSubscript:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  return v3;
}

id _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(void *a1, unsigned int a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = objc_opt_new();
  v5 = *MEMORY[0x277CBE888];
  v40[0] = *MEMORY[0x277CBE868];
  v4 = v40[0];
  v40[1] = v5;
  v32 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v28 = v3;
  v29 = v2;
  v7 = v2;
  v8 = v4;
  v9 = [v3 enumeratorAtURL:v7 includingPropertiesForKeys:v6 options:1 errorHandler:&__block_literal_global_10];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 lastPathComponent];
        if (([v16 hasPrefix:@"."] & 1) == 0)
        {
          v34 = 0;
          v17 = [v15 getResourceValue:&v34 forKey:v8 error:0];
          v18 = v34;
          v19 = v18;
          if (v17 && [v18 BOOLValue])
          {
            v20 = v10;
            v21 = v8;
            v33 = 0;
            v22 = [v15 getResourceValue:&v33 forKey:v32 error:0];
            v23 = v33;
            v24 = v23;
            if (v22 && ([v23 BOOLValue] & 1) == 0)
            {
              v25 = [[PBFPosterExtensionStoreCoordinator alloc] initWithContainerURL:v15 extensionIdentifier:v16 readonly:a2];
              v26 = [(PBFPosterExtensionStoreCoordinator *)v25 setupEnvironmentIfNecessary];

              if (!v26)
              {
                [v30 bs_safeAddObject:v25];
              }
            }

            v8 = v21;
            v10 = v20;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  return v30;
}

void sub_21B59F838(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B5A11EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5A1894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B5A1BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5A1DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21B5A230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_21B5A2634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5A58C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v34 - 248));
  _Unwind_Resume(a1);
}

void sub_21B5A6CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 120));
  _Unwind_Resume(a1);
}

void sub_21B5AB7A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21B5ACA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id complicationLookupInfoForPBFComplication(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 extensionBundleIdentifier];
    v3 = [v1 containerBundleIdentifier];
    v4 = [v1 kind];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "widgetFamily")}];
    v6 = [v1 intent];
    v7 = [PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:v5 extensionBundleIdentifier:v2 containingBundleIdentifier:v3 kind:v4 intent:v6 suggestedComplication:v1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *__getDNDSystemImageNameForModeSemanticTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DoNotDisturbLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782C8450;
    v6 = 0;
    DoNotDisturbLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = DoNotDisturbLibraryCore_frameworkLibrary_0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary_0)
  {
    __getDNDSystemImageNameForModeSemanticTypeSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "DNDSystemImageNameForModeSemanticType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDNDSystemImageNameForModeSemanticTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_21B5B1EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21B5B27B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B5B4EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _PBFDistillFileNameIntoArchiveComponents(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if ([v7 containsString:@"ArchivedDataStore"] && (objc_msgSend(v7, "pathExtension"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", @"pbds"), v8, v9))
  {
    v10 = [v7 stringByDeletingPathExtension];
    v11 = [v10 componentsSeparatedByString:@"_"];
    v12 = v11;
    if (a2)
    {
      v13 = [v11 objectAtIndex:{objc_msgSend(v11, "count") - 2}];
      v14 = [v13 stringByReplacingOccurrencesOfString:@"Version" withString:&stru_282CD3858];
      *a2 = [v14 integerValue];
    }

    if (a3)
    {
      v15 = [v12 lastObject];
      *a3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v15, "integerValue")}];
    }

    if (a4)
    {
      *a4 = [v12 firstObject];
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id _PBFArchiveBuildNewFileName(void *a1, uint64_t a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v26 = a4;
  if (![(__CFString *)v7 length])
  {

    v7 = @"UNNAMED";
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___PBFArchiveBuildNewFileName_block_invoke;
  aBlock[3] = &unk_2782C89A8;
  v25 = v7;
  v32 = v25;
  v34 = a2;
  v24 = v8;
  v33 = v24;
  v9 = _Block_copy(aBlock);
  v10 = v9[2](v9, 0);
  v11 = 0;
  v12 = 0;
  do
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v26;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v27 + 1) + 8 * i) archiveName];
          v19 = [v18 isEqual:v10];

          if (v19)
          {

            goto LABEL_15;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (v12)
    {
LABEL_15:
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v11, "integerValue") + 1];

      v20 = 1;
      v11 = v21;
    }

    else
    {
      v20 = 0;
    }

    v22 = (v9)[2](v9, v11);

    v12 = 1;
    v10 = v22;
  }

  while ((v20 & 1) != 0);

  return v22;
}

__CFString *PBFPlistKeyForSnapshotDefinitionIdentifier(void *a1)
{
  if ([a1 isEqualToString:PRPosterSnapshotDefinitionIdentifierGallery])
  {
    return @"GalleryPreview";
  }

  else
  {
    return 0;
  }
}

id PRPosterSnapshotDefinitionIdentifierForPlistKey(void *a1)
{
  if ([a1 isEqualToString:@"GalleryPreview"])
  {
    v1 = PRPosterSnapshotDefinitionIdentifierGallery;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PBFSnapshotDefinitionForIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierGalleryWithComplications])
  {
    v2 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
LABEL_17:
    v3 = v2;
    goto LABEL_18;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierGalleryKeyFrame])
  {
    v2 = +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierGallery])
  {
    v2 = +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcher])
  {
    v2 = +[PBFPosterSnapshotDefinition switcherSnapshotDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked])
  {
    v2 = +[PBFPosterSnapshotDefinition switcherUnlockedSnapshotDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer])
  {
    v2 = +[PBFPosterSnapshotDefinition switcherFloatingLayerSnapshotDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierEditingConfirmation])
  {
    v2 = +[PBFPosterSnapshotDefinition editingConfirmationDefinition];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierOSMigration])
  {
    v2 = +[PBFPosterSnapshotDefinition osMigrationDefinition];
    goto LABEL_17;
  }

  v3 = 0;
LABEL_18:

  return v3;
}

double _PBFPosterSnapshotGalleryPersistenceScale()
{
  if (PFCurrentDeviceClass() != 1)
  {
    return 0.5;
  }

  v0 = 0.125;
  if ((PRIsLowQualityDevice() & 1) == 0)
  {
    return 0.5;
  }

  return v0;
}

void _PBFPosterSnapshotDefinitionAttributesForIdentifier(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 16) = 1;
  *(a3 + 32) = 0x3FF0000000000000;
  v9 = v5;
  if ([v5 isEqualToString:PRPosterSnapshotDefinitionIdentifierGalleryWithComplications])
  {
    *a3 = 257;
    *(a3 + 2) = 0;
    goto LABEL_5;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierGallery])
  {
    *a3 = 1;
    *(a3 + 2) = 0;
LABEL_5:
    *(a3 + 8) = vdupq_n_s64(1uLL);
    *(a3 + 24) = 1;
    if (PFCurrentDeviceClass() != 1 || (v6 = 0.125, (PRIsLowQualityDevice() & 1) == 0))
    {
      v6 = 0.5;
    }

    *(a3 + 32) = v6;
LABEL_9:
    v7 = v9;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierGalleryKeyFrame])
  {
    *a3 = 1;
    *(a3 + 2) = 0;
    *(a3 + 8) = vdupq_n_s64(1uLL);
    *(a3 + 24) = 2;
    goto LABEL_9;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcher])
  {
    goto LABEL_17;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked])
  {
    *a3 = 0;
    *(a3 + 2) = 1;
    goto LABEL_20;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer])
  {
LABEL_17:
    *a3 = 0;
    *(a3 + 2) = 0;
LABEL_20:
    *(a3 + 8) = xmmword_21B6D77E0;
    *(a3 + 24) = 0;
    goto LABEL_9;
  }

  if ([v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierEditingConfirmation])
  {
    *a3 = 257;
    *(a3 + 2) = 0;
    *(a3 + 8) = xmmword_21B6D77E0;
    *(a3 + 24) = 0;
    *(a3 + 32) = _PBFPosterSnapshotGalleryPersistenceScale();
    goto LABEL_9;
  }

  v8 = [v9 isEqualToString:PRPosterSnapshotDefinitionIdentifierOSMigration];
  v7 = v9;
  if (v8)
  {
    *a3 = 0;
    *(a3 + 2) = 1;
    *(a3 + 8) = xmmword_21B6D77E0;
    *(a3 + 24) = 0;
    if (a2)
    {
LABEL_10:
      *a2 = 1;
    }
  }

LABEL_11:
}

id extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles()
{
  if (extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_onceToken != -1)
  {
    extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_cold_1();
  }

  v1 = extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles;

  return v1;
}

void __extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v9 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v0 setWithObjects:{v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles;
  extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles_extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles = v7;
}

void sub_21B5C176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5C186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  LODWORD(STACK[0x2A0]) = a9.n128_u32[0];
  STACK[0x2A4] = v10;
  LOWORD(STACK[0x2AC]) = 2114;
  STACK[0x2AE] = v9;
  LOWORD(STACK[0x2B6]) = 2114;
  STACK[0x2B8] = v11;
  return result;
}

__n128 OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  LODWORD(STACK[0x2A0]) = a9.n128_u32[0];
  STACK[0x2A4] = v9;
  LOWORD(STACK[0x2AC]) = 2114;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1(void *a1, const char *a2)
{
  v6 = *(v2 + 144);
  v7 = *(v2 + 140);

  return [a1 initWithProvider:v6 identifierURL:v4 posterUUID:v3 readonly:v7];
}

uint64_t OUTLINED_FUNCTION_19()
{
  v3 = *(v0 + 120);

  return [v3 removeItemAtURL:v1 error:0];
}

uint64_t OUTLINED_FUNCTION_20(void *a1, const char *a2, uint64_t a3)
{

  return [a1 createDirectoryAtURL:a3 withIntermediateDirectories:1 attributes:v3 error:?];
}

BOOL OUTLINED_FUNCTION_21(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{
  v2 = *(a1 + 128);

  return [v2 getFlag];
}

void OUTLINED_FUNCTION_23(uint64_t a1@<X8>)
{
  *(a1 + 14) = v3;
  LOWORD(STACK[0x2B6]) = v1;
  STACK[0x2B8] = v2;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return [a12 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_32(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id OUTLINED_FUNCTION_33()
{
  v2 = *(v0 + 3448);

  return [v2 alloc];
}

uint64_t OUTLINED_FUNCTION_34(void *a1, const char *a2)
{

  return [a1 setObject:v3 forKey:v2];
}

void sub_21B5C487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id PBFPosterRolesSupportedForDataStoreCurrentDeviceClass()
{
  if (PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_onceToken != -1)
  {
    PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_cold_1();
  }

  v1 = PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_appropriateForCurrentDeviceClass;

  return v1;
}

id PRPosterRoleLookupForExtensionBundleIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = PFPosterRolesKnownBackdrop();
  v6 = [v5 containsObject:v3];

  v7 = PFPosterRolesKnownIncomingCall();
  v8 = [v7 containsObject:v3];

  v9 = PFPosterRolesKnownAmbient();
  v10 = [v9 containsObject:v3];

  v11 = PFPosterRolesKnownLockScreen();
  v12 = [v11 containsObject:v3];

  if ((v8 + v6 + v10 + v12) < 2)
  {
    v14 = MEMORY[0x277D3EE98];
    if (v8)
    {
      v14 = MEMORY[0x277D3EEE8];
    }

    if (v12)
    {
      v14 = MEMORY[0x277D3EEF0];
    }

    if (((v12 | v8) | v10))
    {
      v13 = v14;
    }

    else
    {
      v13 = MEMORY[0x277D3EEE0];
    }

    if (((v12 | v8 | v10) | v6))
    {
      goto LABEL_28;
    }

LABEL_14:
    v15 = PBFLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      PRPosterRoleLookupForExtensionBundleIdentifier_cold_1(v3, v4, v15);
    }

    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"com.apple.PosterTester.SamplePoster"])
  {
    if (v4 && ([v4 containsString:@"ambient"] & 1) != 0)
    {
      v13 = MEMORY[0x277D3EE98];
      goto LABEL_28;
    }

LABEL_17:
    v13 = MEMORY[0x277D3EEF0];
    goto LABEL_28;
  }

  v16 = [v3 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  v13 = MEMORY[0x277D3EEF0];
  if ((v16 & 1) == 0)
  {
    v17 = [v3 isEqualToString:@"com.apple.mobileslideshow.PhotosPosterProvider"] | v12;
    v18 = MEMORY[0x277D3EE98];
    v19 = v17 | v8 | v10;
    if (v8)
    {
      v18 = MEMORY[0x277D3EEE8];
    }

    v20 = (v17 & 1) != 0 ? v13 : v18;
    v13 = (v19 & 1) != 0 ? v20 : MEMORY[0x277D3EEE0];
    if (((v19 | v6) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_28:
  v21 = *v13;
  v22 = *v13;

  return v21;
}

uint64_t _UIUserInterfaceStyleFromPRSPosterSnapshotRequestOptions(char a1)
{
  if ((a1 & 0x10) != 0)
  {
    return 2;
  }

  if ((a1 & 0x20) != 0)
  {
    return 1;
  }

  if ((a1 & 8) == 0)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D75C80] currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

uint64_t PBFCurrentDeviceClassSupported()
{
  v0 = PFCurrentDeviceClass();

  return PBFSupportsDeviceClass(v0);
}

uint64_t PBFSupportsDeviceClass(uint64_t a1)
{
  if (a1 == 1)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      return _os_feature_enabled_impl();
    }

    return 1;
  }

  v3 = _os_feature_enabled_impl();
  result = a1 == 3;
  if (!a1 && (v3 & 1) != 0)
  {
    return 1;
  }

  return result;
}

double PBFPosterHeroContentSizeForBounds(double a1, double a2, double a3)
{
  result = 72.0;
  if (a3 < 394.0)
  {
    return 64.0;
  }

  return result;
}

uint64_t PBFDebugLiveWallpapers()
{
  if (PBFDebugLiveWallpapers_onceToken != -1)
  {
    PBFDebugLiveWallpapers_cold_1();
  }

  return PBFDebugLiveWallpapers___isEnabled;
}

void __PBFDebugLiveWallpapers_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  PBFDebugLiveWallpapers___isEnabled = [v0 BOOLForKey:@"DEBUG_LIVE_WALLPAPERS"];
}

uint64_t PBFForceLiveWallpapers()
{
  if (PBFForceLiveWallpapers_onceToken != -1)
  {
    PBFForceLiveWallpapers_cold_1();
  }

  return PBFForceLiveWallpapers___isEnabled;
}

void __PBFForceLiveWallpapers_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  PBFForceLiveWallpapers___isEnabled = [v0 BOOLForKey:@"MAKE_ALL_POSTERS_LIVE_IN_GALLERY"];
}

id PBFLookupDescriptorIdentifierWithinPathInstanceURL(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = [MEMORY[0x277CBEBC0] pbf_URLsMatchingFileName:@"com.apple.posterkit.provider.identifierURL.suggestionMetadata.plist" beneathURL:a1 error:{0, 0}];
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = *v17;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(*(&v16 + 1) + 8 * i) options:8 error:0];
        if ([v5 length])
        {
          v6 = MEMORY[0x277CCAAC8];
          v7 = objc_opt_self();
          v8 = [v6 unarchivedObjectOfClass:v7 fromData:v5 error:0];

          v9 = [v8 suggestedGalleryItem];

          if (v9)
          {
            v10 = [v8 suggestedGalleryItem];
            v11 = [v10 descriptorIdentifier];
            v12 = [v11 length];

            if (v12)
            {
              v13 = [v8 suggestedGalleryItem];
              v14 = [v13 descriptorIdentifier];
              v2 = [v14 stringByDeletingPathExtension];

              goto LABEL_14;
            }
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

void __PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_block_invoke()
{
  PFCurrentDeviceClass();
  v0 = PFPosterRolesSupportedForDeviceClass();
  v3 = [v0 mutableCopy];

  [v3 removeObject:*MEMORY[0x277D3EBB8]];
  v1 = [v3 copy];
  v2 = PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_appropriateForCurrentDeviceClass;
  PBFPosterRolesSupportedForDataStoreCurrentDeviceClass_appropriateForCurrentDeviceClass = v1;
}

void sub_21B5CA5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B5CAFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B5CC4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

AAFieldKeySet_impl *PBFAppleArchiveCompressDirectory(void *a1, void *a2)
{
  v3 = a1;
  v4 = AAFileStreamOpenWithPath([a2 fileSystemRepresentation], 514, 0x1A4u);
  if (v4)
  {
    v5 = v4;
    v6 = AAEncodeArchiveOutputStreamOpen(v4, 0, 0, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = AAPathListCreateWithDirectoryContents([v3 fileSystemRepresentation], 0, 0, 0, 0, 0);
      if (v8)
      {
        v9 = v8;
        v10 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,HLC,CLC");
        if (v10)
        {
          v11 = AAArchiveStreamWritePathList(v7, v9, v10, [v3 fileSystemRepresentation], 0, 0, 0, 0);
          AAFieldKeySetDestroy(v10);
          v10 = (v11 == 0);
        }

        AAPathListDestroy(v9);
      }

      else
      {
        v10 = 0;
      }

      AAArchiveStreamClose(v7);
    }

    else
    {
      v10 = 0;
    }

    AAByteStreamClose(v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

AAArchiveStream_impl *PBFAppleArchiveDecompress(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = AAFileStreamOpenWithPath([a1 fileSystemRepresentation], 0, 0);
  v7 = PBFAppleArchiveDecompressStream(v6, v5);

  return v7;
}

AAArchiveStream_impl *PBFAppleArchiveDecompressStream(AAByteStream_impl *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = AADecompressionInputStreamOpen(a1, 0, 0);
    if (v4)
    {
      v5 = v4;
      v6 = AADecodeArchiveInputStreamOpen(v4, 0, 0, 0, 0);
      if (v6)
      {
        v7 = v6;
        v8 = AAExtractArchiveOutputStreamOpen([v3 fileSystemRepresentation], 0, 0, 0, 0);
        if (v8)
        {
          v9 = AAArchiveStreamProcess(v7, v8, 0, 0, 0, 0);
          AAArchiveStreamClose(v8);
          v8 = (v9 >= 0);
        }

        AAArchiveStreamClose(v7);
      }

      else
      {
        v8 = 0;
      }

      AAByteStreamClose(v5);
    }

    else
    {
      v8 = 0;
    }

    AAByteStreamClose(a1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_21B5CF3B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21B5CF72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&a29);
  _Unwind_Resume(a1);
}

__CFString *RefreshDescriptorsFrequencyToString(uint64_t a1)
{
  if (a1)
  {
    return @"DEFAULT";
  }

  else
  {
    return @"NEVER";
  }
}

__CFString *PBFDescriptorRefreshStrategyToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PBFDescriptorRefreshStrategyNo";
  }

  else
  {
    return *(&off_2782C9098 + a1 - 1);
  }
}

__CFString *RefreshDescriptorsFrequencyToDebugString(uint64_t a1)
{
  if (a1)
  {
    return @"Default (Once every 4 hours)";
  }

  else
  {
    return @"Never";
  }
}

__CFString *BSInterfaceOrientationToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"BSInterfaceOrientationPortrait";
  }

  else
  {
    return *(&off_2782C90B0 + a1);
  }
}

uint64_t PBFBSInterfaceOrientationDefaultForDeviceClass(uint64_t a1)
{
  if ((a1 + 1) > 6)
  {
    return 1;
  }

  else
  {
    return qword_21B6D7848[a1 + 1];
  }
}

uint64_t PBFBSInterfaceOrientationDefaultForCurrentDeviceClass()
{
  v0 = PFCurrentDeviceClass();
  if ((v0 + 1) > 6)
  {
    return 1;
  }

  else
  {
    return qword_21B6D7848[v0 + 1];
  }
}

__CFString *__PBFPosterExtensionDataStoreGalleryConfigurationOptionsDescription(uint64_t a1)
{
  if ((a1 - 2) > 6)
  {
    return @"(unknown)";
  }

  else
  {
    return *(&off_2782C90D8 + a1 - 2);
  }
}

id NSStringFromPBFPosterExtensionDataStoreGalleryConfigurationOptions(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFromPBFPosterExtensionDataStoreGalleryConfigurationOptions_block_invoke;
  v13 = &unk_2782C9020;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{@" | ", v10, v11}];

  return v8;
}

void *__NSStringFromPBFPosterExtensionDataStoreGalleryConfigurationOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) > 6)
  {
    v2 = @"(unknown)";
  }

  else
  {
    v2 = *(&off_2782C90D8 + a2 - 2);
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result addObject:v2];
  }

  return result;
}

id _PBFSnapshotDefinitionSupportedOrientationForDeviceClass(uint64_t a1)
{
  if (_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_onceToken != -1)
  {
    _PBFSnapshotDefinitionSupportedOrientationForDeviceClass_cold_1();
  }

  switch(a1)
  {
    case 3:
      v2 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_tvSupportedOrientations;
      goto LABEL_9;
    case 1:
      v2 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_padSupportedOrientations;
      goto LABEL_9;
    case 0:
      v2 = &_PBFSnapshotDefinitionSupportedOrientationForDeviceClass_phoneSupportedOrientations;
LABEL_9:
      v3 = *v2;
      goto LABEL_11;
  }

  v3 = 0;
LABEL_11:

  return v3;
}

void PBFSnapshotDefinitionEnumerateSupportedOrientationsForDeviceClass(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PBFSnapshotDefinitionSupportedOrientationForDeviceClass(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PBFSnapshotDefinitionEnumerateSupportedOrientationsForDeviceClass_block_invoke;
  v6[3] = &unk_2782C9048;
  v7 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:v6];
}

void PBFSnapshotDefinitionEnumerateSupportedOrientationsForCurrentDeviceClass(void *a1)
{
  v2 = a1;
  v1 = PFCurrentDeviceClass();
  PBFSnapshotDefinitionEnumerateSupportedOrientationsForDeviceClass(v1, v2);
}

uint64_t PBFDeviceClassFromUserInterfaceIdiom(unint64_t a1)
{
  if (a1 > 2)
  {
    return -1;
  }

  else
  {
    return qword_21B6D7880[a1];
  }
}

uint64_t PBFAccessibilityContrastFromUIAccessibilityContrast(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    return -1;
  }

  return result;
}

uint64_t UIAccessibilityContrastFromPBFAccessibilityContrast(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    return -1;
  }

  return result;
}

__CFString *NSStringFromPBFAccessibilityContrast(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return @"PBFAccessibilityContrastUnspecified";
  }

  else
  {
    return *(&off_2782C9110 + a1 + 1);
  }
}

unint64_t PBFUserInterfaceStyleFromUIUserInterfaceStyle(unint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

unint64_t UIUserInterfaceStyleFromPBFUserInterfaceStyle(unint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

__CFString *NSStringFromPBFUserInterfaceStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"PBFUserInterfaceStyleUnspecified";
  }

  else
  {
    return *(&off_2782C9128 + a1);
  }
}

__CFString *NSStringFromPBFPosterIngestionResult(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"PBFPosterIngestionResultUnknown";
  }

  else
  {
    return *(&off_2782C9140 + a1 - 1);
  }
}

Class __getWKDefaultWallpaperManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!WallpaperKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __WallpaperKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782C9170;
    v5 = 0;
    WallpaperKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WallpaperKitLibraryCore_frameworkLibrary)
  {
    __getWKDefaultWallpaperManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WKDefaultWallpaperManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWKDefaultWallpaperManagerClass_block_invoke_cold_1();
  }

  getWKDefaultWallpaperManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WallpaperKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WallpaperKitLibraryCore_frameworkLibrary = result;
  return result;
}

id _PBFPosterExtensionDataStoreSQLiteDatabaseError(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [a4 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA460]];
  }

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:@"com.apple.PosterBoard.dataStorage.sqliteDatabaseErrorCode"];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.posterboard.PBFPosterExtensionDataStoreSQLiteDatabase" code:a1 userInfo:v12];

  return v13;
}

uint64_t sqliteFlagsForDatabaseOption(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 6;
  }

  else
  {
    v1 = 2;
  }

  if ((a1 & 4) != 0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B5D61B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D6684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D6C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D6F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D7190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D7AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D7DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B5D8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PBFLogCommon()
{
  if (PBFLogCommon_onceToken != -1)
  {
    PBFLogCommon_cold_1();
  }

  v1 = PBFLogCommon___logObj;

  return v1;
}

void __PBFLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Common");
  v1 = PBFLogCommon___logObj;
  PBFLogCommon___logObj = v0;
}

id PBFLogComplicationSnapshotter()
{
  if (PBFLogComplicationSnapshotter_onceToken != -1)
  {
    PBFLogComplicationSnapshotter_cold_1();
  }

  v1 = PBFLogComplicationSnapshotter___logObj;

  return v1;
}

void __PBFLogComplicationSnapshotter_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "ComplicationSnapshotter");
  v1 = PBFLogComplicationSnapshotter___logObj;
  PBFLogComplicationSnapshotter___logObj = v0;
}

id PBFLogSnapshotter()
{
  if (PBFLogSnapshotter_onceToken != -1)
  {
    PBFLogSnapshotter_cold_1();
  }

  v1 = PBFLogSnapshotter___logObj;

  return v1;
}

void __PBFLogSnapshotter_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Snapshotter");
  v1 = PBFLogSnapshotter___logObj;
  PBFLogSnapshotter___logObj = v0;
}

id PBFLogSnapshotterBench()
{
  if (PBFLogSnapshotterBench_onceToken != -1)
  {
    PBFLogSnapshotterBench_cold_1();
  }

  v1 = PBFLogSnapshotterBench___logObj;

  return v1;
}

void __PBFLogSnapshotterBench_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "SnapshotterBench");
  v1 = PBFLogSnapshotterBench___logObj;
  PBFLogSnapshotterBench___logObj = v0;
}

id PBFLogReaper()
{
  if (PBFLogReaper_onceToken != -1)
  {
    PBFLogReaper_cold_1();
  }

  v1 = PBFLogReaper___logObj;

  return v1;
}

void __PBFLogReaper_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Reaper");
  v1 = PBFLogReaper___logObj;
  PBFLogReaper___logObj = v0;
}

id PBFLogPosterContents()
{
  if (PBFLogPosterContents_onceToken != -1)
  {
    PBFLogPosterContents_cold_1();
  }

  v1 = PBFLogPosterContents___logObj;

  return v1;
}

void __PBFLogPosterContents_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "PosterContents");
  v1 = PBFLogPosterContents___logObj;
  PBFLogPosterContents___logObj = v0;
}

id PBFLogReloadDescriptors()
{
  if (PBFLogReloadDescriptors_onceToken != -1)
  {
    PBFLogReloadDescriptors_cold_1();
  }

  v1 = PBFLogReloadDescriptors___logObj;

  return v1;
}

void __PBFLogReloadDescriptors_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "ReloadDescriptors");
  v1 = PBFLogReloadDescriptors___logObj;
  PBFLogReloadDescriptors___logObj = v0;
}

id PBFLogReloadConfiguration()
{
  if (PBFLogReloadConfiguration_onceToken != -1)
  {
    PBFLogReloadConfiguration_cold_1();
  }

  v1 = PBFLogReloadConfiguration___logObj;

  return v1;
}

void __PBFLogReloadConfiguration_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "ReloadConfiguration");
  v1 = PBFLogReloadConfiguration___logObj;
  PBFLogReloadConfiguration___logObj = v0;
}

id PBFLogLegacyPosterMigration()
{
  if (PBFLogLegacyPosterMigration_onceToken != -1)
  {
    PBFLogLegacyPosterMigration_cold_1();
  }

  v1 = PBFLogLegacyPosterMigration___logObj;

  return v1;
}

void __PBFLogLegacyPosterMigration_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "LegacyPosterMigration");
  v1 = PBFLogLegacyPosterMigration___logObj;
  PBFLogLegacyPosterMigration___logObj = v0;
}

id PBFLogRuntime()
{
  if (PBFLogRuntime_onceToken != -1)
  {
    PBFLogRuntime_cold_1();
  }

  v1 = PBFLogRuntime___logObj;

  return v1;
}

void __PBFLogRuntime_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Runtime");
  v1 = PBFLogRuntime___logObj;
  PBFLogRuntime___logObj = v0;
}

id PBFLogGallery()
{
  if (PBFLogGallery_onceToken != -1)
  {
    PBFLogGallery_cold_1();
  }

  v1 = PBFLogGallery___logObj;

  return v1;
}

void __PBFLogGallery_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Gallery");
  v1 = PBFLogGallery___logObj;
  PBFLogGallery___logObj = v0;
}

id PBFLogTelemetrySignposts()
{
  if (PBFLogTelemetrySignposts_onceToken != -1)
  {
    PBFLogTelemetrySignposts_cold_1();
  }

  v1 = PBFLogTelemetrySignposts___logObj;

  return v1;
}

void __PBFLogTelemetrySignposts_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "TelemetrySignposts");
  v1 = PBFLogTelemetrySignposts___logObj;
  PBFLogTelemetrySignposts___logObj = v0;
}

id PBFLogMigration()
{
  if (PBFLogMigration_onceToken != -1)
  {
    PBFLogMigration_cold_1();
  }

  v1 = PBFLogMigration___logObj;

  return v1;
}

void __PBFLogMigration_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Migration");
  v1 = PBFLogMigration___logObj;
  PBFLogMigration___logObj = v0;
}

id PBFLogPower()
{
  if (PBFLogPower_onceToken != -1)
  {
    PBFLogPower_cold_1();
  }

  v1 = PBFLogPower___logObj;

  return v1;
}

void __PBFLogPower_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Power");
  v1 = PBFLogPower___logObj;
  PBFLogPower___logObj = v0;
}

id PBFLogModal()
{
  if (PBFLogModal_onceToken != -1)
  {
    PBFLogModal_cold_1();
  }

  v1 = PBFLogModal___logObj;

  return v1;
}

void __PBFLogModal_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Modal");
  v1 = PBFLogModal___logObj;
  PBFLogModal___logObj = v0;
}

id PBFLogDataStore()
{
  if (PBFLogDataStore_onceToken != -1)
  {
    PBFLogDataStore_cold_1();
  }

  v1 = PBFLogDataStore___logObj;

  return v1;
}

void __PBFLogDataStore_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "DataStore");
  v1 = PBFLogDataStore___logObj;
  PBFLogDataStore___logObj = v0;
}

id PBFLogRoleCoordinator()
{
  if (PBFLogRoleCoordinator_onceToken != -1)
  {
    PBFLogRoleCoordinator_cold_1();
  }

  v1 = PBFLogRoleCoordinator___logObj;

  return v1;
}

void __PBFLogRoleCoordinator_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "RoleCoordinator");
  v1 = PBFLogRoleCoordinator___logObj;
  PBFLogRoleCoordinator___logObj = v0;
}

id PBFLogSQLite()
{
  if (PBFLogSQLite_onceToken != -1)
  {
    PBFLogSQLite_cold_1();
  }

  v1 = PBFLogSQLite___logObj;

  return v1;
}

void __PBFLogSQLite_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "SQLite");
  v1 = PBFLogSQLite___logObj;
  PBFLogSQLite___logObj = v0;
}

id PBFLogDataStoreMigration()
{
  if (PBFLogDataStoreMigration_onceToken != -1)
  {
    PBFLogDataStoreMigration_cold_1();
  }

  v1 = PBFLogDataStoreMigration___logObj;

  return v1;
}

void __PBFLogDataStoreMigration_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "DataStoreMigration");
  v1 = PBFLogDataStoreMigration___logObj;
  PBFLogDataStoreMigration___logObj = v0;
}

id PBFLogPrewarm()
{
  if (PBFLogPrewarm_onceToken != -1)
  {
    PBFLogPrewarm_cold_1();
  }

  v1 = PBFLogPrewarm___logObj;

  return v1;
}

void __PBFLogPrewarm_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Prewarm");
  v1 = PBFLogPrewarm___logObj;
  PBFLogPrewarm___logObj = v0;
}

id PBFLogAssetHelper()
{
  if (PBFLogAssetHelper_onceToken != -1)
  {
    PBFLogAssetHelper_cold_1();
  }

  v1 = PBFLogAssetHelper___logObj;

  return v1;
}

void __PBFLogAssetHelper_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "AssetHelper");
  v1 = PBFLogAssetHelper___logObj;
  PBFLogAssetHelper___logObj = v0;
}

id PBFLogAmbient()
{
  if (PBFLogAmbient_onceToken != -1)
  {
    PBFLogAmbient_cold_1();
  }

  v1 = PBFLogAmbient___logObj;

  return v1;
}

void __PBFLogAmbient_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "Ambient");
  v1 = PBFLogAmbient___logObj;
  PBFLogAmbient___logObj = v0;
}

id PBFLogApplicationState()
{
  if (PBFLogApplicationState_onceToken != -1)
  {
    PBFLogApplicationState_cold_1();
  }

  v1 = PBFLogApplicationState___logObj;

  return v1;
}

void __PBFLogApplicationState_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "ApplicationState");
  v1 = PBFLogApplicationState___logObj;
  PBFLogApplicationState___logObj = v0;
}

id PBFLogHostConfiguration()
{
  if (PBFLogHostConfiguration_onceToken != -1)
  {
    PBFLogHostConfiguration_cold_1();
  }

  v1 = PBFLogHostConfiguration___logObj;

  return v1;
}

void __PBFLogHostConfiguration_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoard", "HostConfiguration");
  v1 = PBFLogHostConfiguration___logObj;
  PBFLogHostConfiguration___logObj = v0;
}

void sub_21B5DD5B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PRSWidgetIdentifierForPreviewAndWidgetAndIndex(void *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = MEMORY[0x277D3EE88];
    v7 = a2;
    v8 = a1;
    v9 = [v6 sharedInstance];
    v10 = [v9 systemMetricsForWidget:v7];

    v11 = MEMORY[0x277CCACA8];
    [v10 size];
    v12 = NSStringFromCGSize(v35);
    [v10 cornerRadius];
    v14 = v13;
    [v10 scaleFactor];
    v16 = v15;
    v17 = [v10 fontStyle];
    [v10 safeAreaInsets];
    v19 = v18;
    [v10 safeAreaInsets];
    v21 = v20;
    [v10 safeAreaInsets];
    v23 = v22;
    [v10 safeAreaInsets];
    v25 = v24;
    [v10 safeAreaInsets];
    v27 = [v11 stringWithFormat:@"metrics(size%@-radii%f-scaleFactor%f-font%lu-st%f-sl%f-sb%f-st%f)", v12, v14, v16, v17, v19, v21, v23, v25, v26];

    v28 = MEMORY[0x277CCACA8];
    v29 = [v8 previewUniqueIdentifier];

    v30 = [v7 extensionBundleIdentifier];
    v31 = [v7 kind];
    v32 = [v7 intent];

    v3 = [v28 stringWithFormat:@"%@-%@-%@-%@-%lld-%lu", v29, v30, v31, v27, objc_msgSend(v32, "_indexingHash"), a3];
  }

  return v3;
}

id PRSWidgetIdentifierForPreviewAndComplicationLookupInfo(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = MEMORY[0x277CFA358];
    v5 = a2;
    v6 = a1;
    v7 = [v4 alloc];
    v8 = [v5 complicationExtensionBundleIdentifier];
    v9 = [v5 complicationContainingBundleIdentifier];
    v10 = [v5 complicationWidgetKind];
    v11 = [v5 complicationWidgetFamily];
    v12 = [v11 unsignedIntegerValue];
    v13 = [v5 complicationIntent];
    v14 = [v7 initWithExtensionBundleIdentifier:v8 containerBundleIdentifier:v9 kind:v10 family:v12 intent:v13];

    v15 = PRSWidgetIndexForPreview(v6, v5);
    v2 = PRSWidgetIdentifierForPreviewAndWidgetAndIndex(v6, v14, v15);
  }

  return v2;
}

uint64_t PRSWidgetIndexForPreview(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 subtitleComplication];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 1000;
  }

  else
  {
    v8 = [v3 suggestedComplications];
    v7 = [v8 indexOfObjectIdenticalTo:v4];
  }

  return v7;
}

id PRSWidgetIdentifierForPreviewAndComplicationLookupInfoAndWidget(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = PRSWidgetIndexForPreview(v6, a2);
  v8 = PRSWidgetIdentifierForPreviewAndWidgetAndIndex(v6, v5, v7);

  return v8;
}

id PBFMakeSBSWallpaperService()
{
  v0 = objc_alloc_init(getSBSWallpaperServiceClass());

  return v0;
}

id getSBSWallpaperServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSBSWallpaperServiceClass_softClass_0;
  v7 = getSBSWallpaperServiceClass_softClass_0;
  if (!getSBSWallpaperServiceClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSBSWallpaperServiceClass_block_invoke_0;
    v3[3] = &unk_2782C5CB0;
    v3[4] = &v4;
    __getSBSWallpaperServiceClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21B5E8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSWallpaperServiceClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782C9448;
    v5 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    __getSBSWallpaperServiceClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SBSWallpaperService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSWallpaperServiceClass_block_invoke_cold_1_0();
  }

  getSBSWallpaperServiceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

__CFString *defaultLockScreenWallpaperExtensionIdentifier(__CFString **a1)
{
  if (PUIFeatureEnabled())
  {
    v2 = @"space.dynamic";
  }

  else
  {
    v2 = @"fluidity.one";
  }

  v3 = MGGetProductType();
  if (v3 != 2940697645 && v3 != 2688879999)
  {
    v5 = @"com.apple.MercuryPoster";
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = +[PBFWallpaperKitBridge defaultBridge];
  v2 = [v4 defaultWallpaperIdentifier];

  v5 = @"com.apple.WallpaperKit.CollectionsPoster";
  if (a1)
  {
LABEL_7:
    v6 = v2;
    *a1 = v2;
  }

LABEL_8:

  return v5;
}

uint64_t PBFPosterDataStoreEventTypeIsValid(void *a1)
{
  v1 = PBFPosterDataStoreEventTypeIsValid_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    PBFPosterDataStoreEventTypeIsValid_cold_1();
  }

  v3 = [PBFPosterDataStoreEventTypeIsValid_validEventTypes containsObject:v2];

  return v3;
}

void __PBFPosterDataStoreEventTypeIsValid_block_invoke()
{
  v4[12] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"PBFPosterDataStoreEventTypeUnknown";
  v4[1] = @"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated";
  v4[2] = @"PBFPosterDataStoreEventTypeDescriptorsUpdated";
  v4[3] = @"PBFPosterDataStoreEventTypeExtensionsUpdated";
  v4[4] = @"PBFPosterDataStoreEventTypePosterActivated";
  v4[5] = @"PBFPosterDataStoreEventTypePosterDeleted";
  v4[6] = @"PBFPosterDataStoreEventTypePosterAdded";
  v4[7] = @"PBFPosterDataStoreEventTypePosterUpdated";
  v4[8] = @"PBFPosterDataStoreEventTypePostersReordered";
  v4[9] = @"PBFPosterDataStoreEventTypePosterSelected";
  v4[10] = @"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated";
  v4[11] = @"PBFPosterDataStoreEventTypeRoleCoordinatorReset";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:12];
  v2 = [v0 setWithArray:v1];
  v3 = PBFPosterDataStoreEventTypeIsValid_validEventTypes;
  PBFPosterDataStoreEventTypeIsValid_validEventTypes = v2;
}

void sub_21B5F4F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double PBFDefaultUpdateIntervalForDataComponent(void *a1)
{
  v1 = a1;
  v2 = 14400.0;
  if (([v1 isEqualToString:@"PBFDataComponentGallery"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"PBFDataComponentStaticDescriptors"])
    {
LABEL_5:
      v2 = 1.79769313e308;
      goto LABEL_6;
    }

    if (([v1 isEqualToString:@"PBFDataComponentDynamicDescriptors"] & 1) == 0)
    {
      if (([v1 isEqualToString:@"PBFDataComponentSnapshots"] & 1) == 0)
      {
        v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"unsupported component" reason:@"PBFDataComponent" userInfo:0];
        objc_exception_throw(v4);
      }

      goto LABEL_5;
    }
  }

LABEL_6:

  return v2;
}

void sub_21B5FB98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B600C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__166(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_21B601CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21B6061D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B606E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __CFString *a14, __CFString *a15, uint64_t a16, __CFString *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v25 = objc_begin_catch(exception_object);
      v26 = MEMORY[0x277CCA9B8];
      a14 = @"exceptionName";
      v27 = [v25 name];
      a15 = @"exceptionReason";
      a16 = v27;
      v28 = [v25 reason];
      v29 = v28;
      v30 = @"(null)";
      if (v28)
      {
        v30 = v28;
      }

      a17 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a16 forKeys:&a14 count:2];
      v32 = [v26 pbf_generalErrorWithCode:8 userInfo:v31];
      [v23 addObject:v32];

      objc_end_catch();
      JUMPOUT(0x21B606DA4);
    }

    objc_begin_catch(exception_object);
    v33 = *(v24 + 16);
    *(v24 + 16) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_7_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void __PBFPosterGalleryMaximumNumberOfItemsPerRow_block_invoke()
{
  v0 = [MEMORY[0x277CF0CA8] sharedInstance];
  v1 = [v0 deviceClass];

  v2 = 3.0;
  if (v1 == 2)
  {
    v2 = 4.0;
  }

  PBFPosterGalleryMaximumNumberOfItemsPerRow_maxNumberOfPosters = *&v2;
}

uint64_t static PosterRackCollectionViewController.simplifiedHomeScreenSwitcher(for:delegate:topButtonLayout:)(void *a1, uint64_t a2, CGFloat *a3)
{
  v6 = type metadata accessor for SinglePosterConfigurationFilter();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration] = a1;
  v13.receiver = v7;
  v13.super_class = v6;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  sub_21B6142E4(v9, a2, a3, 0);
  v11 = v10;

  return v11;
}

void static PosterRackCollectionViewController.simplifiedHomeScreenSwitcher(withFilter:delegate:topButtonLayout:homeScreenPortalView:)(uint64_t a1, uint64_t a2, CGFloat *a3, void *a4)
{
  swift_getObjectType();

  sub_21B614558(a1, a2, a3, a4);
}

void static PosterRackCollectionViewController.simplifiedHomeScreenSwitcher(withFilter:delegate:topButtonLayout:)(uint64_t a1, uint64_t a2, CGFloat *a3)
{
  swift_getObjectType();

  sub_21B614558(a1, a2, a3, 0);
}

uint64_t variable initialization expression of PBFGalleryControllerState.lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD925E8);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_21B613700@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21B6C8854();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of PosterEditingIngestionManager.posterStore()
{
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t variable initialization expression of AmbientEditingCollectionViewController.availableInstanceIdentifiers()
{
  v0 = [objc_opt_self() suggestedInstanceIdentifiers];
  sub_21B6C88C4();
  v1 = sub_21B6C8E84();

  return v1;
}

double variable initialization expression of AmbientEditingCollectionViewController.presentedEditingRemoteViewContentScreenRect@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of PBFCircleView._strokeColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of PBFCircleView._fillColor()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id variable initialization expression of PosterRackCollectionViewController.lockCellsWeakHashMap()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id variable initialization expression of PosterRackCollectionViewController.dateProvider()
{
  v0 = objc_allocWithZone(MEMORY[0x277D3ED18]);

  return [v0 init];
}

uint64_t variable initialization expression of PosterRackCollectionViewController.stashedLockscreenSnapshots@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92650);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of PosterRackCollectionViewController.switcherApplicationStateNode()
{
  v0 = objc_allocWithZone(PBFApplicationStateNode);
  v1 = sub_21B6C8D74();
  v2 = [v0 initWithDescription_];

  return v2;
}

id sub_21B613DDC(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id variable initialization expression of PosterRackCollectionViewController.galleryDataProvider()
{
  v0 = objc_allocWithZone(PBFGalleryMutableDataProvider);

  return [v0 init];
}

id variable initialization expression of PosterRackCollectionViewController.homeScreenService()
{
  v0 = objc_allocWithZone(MEMORY[0x277D66AB8]);

  return [v0 init];
}

uint64_t sub_21B613EF0(uint64_t a1, id *a2)
{
  result = sub_21B6C8D84();
  *a2 = 0;
  return result;
}

uint64_t sub_21B613F68(uint64_t a1, id *a2)
{
  v3 = sub_21B6C8D94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21B613FE8@<X0>(uint64_t *a1@<X8>)
{
  sub_21B6C8DA4();
  v2 = sub_21B6C8D74();

  *a1 = v2;
  return result;
}

uint64_t sub_21B61402C()
{
  v0 = sub_21B6C8DA4();
  v1 = MEMORY[0x21CEF5FD0](v0);

  return v1;
}

uint64_t sub_21B614068()
{
  sub_21B6C8DA4();
  sub_21B6C8DD4();
}

uint64_t sub_21B6140BC()
{
  sub_21B6C8DA4();
  sub_21B6C97A4();
  sub_21B6C8DD4();
  v0 = sub_21B6C97C4();

  return v0;
}

uint64_t sub_21B61417C()
{
  v0 = sub_21B6C8DA4();
  v2 = v1;
  if (v0 == sub_21B6C8DA4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21B6C96E4();
  }

  return v5 & 1;
}

uint64_t sub_21B614204@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B6C8D74();

  *a1 = v2;
  return result;
}

uint64_t sub_21B61424C(uint64_t a1)
{
  v2 = sub_21B614A10(&qword_27CD92720);
  v3 = sub_21B614A10(&qword_27CD92728);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_21B6142E4(void *a1, uint64_t a2, CGFloat *a3, void *a4)
{
  v7 = type metadata accessor for PosterRackCollectionViewController();
  objc_allocWithZone(v7);
  v8 = objc_allocWithZone(type metadata accessor for PosterStore());
  v9 = sub_21B62941C(a1, v8);
  v10 = sub_21B698344(v9, objc_allocWithZone(v7));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  v10[v11] = 1;
  v12 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  v10[v12] = 0;
  v13 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  v10[v13] = 0;
  v14 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  v10[v14] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = v10;
  [v15 setModalPresentationStyle_];
  v16 = [v15 view];

  if (v16)
  {
    v17 = [objc_opt_self() blackColor];
    [v16 setBackgroundColor_];

    PosterRackCollectionViewController.leadingTopButtonFrame.setter(*a3, a3[1], a3[2], a3[3]);
    PosterRackCollectionViewController.trailingTopButtonFrame.setter(a3[4], a3[5], a3[6], a3[7]);
    v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
    swift_beginAccess();
    v19 = *&v15[v18];
    *&v15[v18] = a4;

    v20 = a4;
  }

  else
  {
    __break(1u);
  }
}

void sub_21B614558(uint64_t a1, uint64_t a2, CGFloat *a3, void *a4)
{
  v6 = type metadata accessor for PosterRackCollectionViewController();
  objc_allocWithZone(v6);
  v7 = objc_allocWithZone(type metadata accessor for PosterStore());
  v8 = swift_unknownObjectRetain();
  v9 = sub_21B629420(v8, v7);
  v10 = sub_21B698344(v9, objc_allocWithZone(v6));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldTransitionLayoutToConfiguringHomeForFirstPoster;
  swift_beginAccess();
  v10[v11] = 1;
  v12 = OBJC_IVAR___PBFPosterRackCollectionViewController_shouldDisplayGalleryAffordance;
  swift_beginAccess();
  v10[v12] = 0;
  v13 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsLeavingHomeConfiguringLayout;
  swift_beginAccess();
  v10[v13] = 0;
  v14 = OBJC_IVAR___PBFPosterRackCollectionViewController_allowsEnteringFullscreenLayout;
  swift_beginAccess();
  v10[v14] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = v10;
  [v15 setModalPresentationStyle_];
  v16 = [v15 view];

  if (v16)
  {
    v17 = [objc_opt_self() blackColor];
    [v16 setBackgroundColor_];

    PosterRackCollectionViewController.leadingTopButtonFrame.setter(*a3, a3[1], a3[2], a3[3]);
    PosterRackCollectionViewController.trailingTopButtonFrame.setter(a3[4], a3[5], a3[6], a3[7]);
    v18 = OBJC_IVAR___PBFPosterRackCollectionViewController_homeScreenPortalView;
    swift_beginAccess();
    v19 = *&v15[v18];
    *&v15[v18] = a4;

    v20 = a4;
  }

  else
  {
    __break(1u);
  }
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_21B61494C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B61496C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_21B614A10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21B614A9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B614ABC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

void sub_21B614B08(uint64_t a1, unint64_t *a2)
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

unint64_t PosterEditingConfirmationViewControllerUserChoice.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21B614BB4()
{
  result = qword_27CD92B60;
  if (!qword_27CD92B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD92B60);
  }

  return result;
}

uint64_t sub_21B614C08()
{
  v1 = *v0;
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](v1);
  return sub_21B6C97C4();
}

uint64_t sub_21B614C7C()
{
  v1 = *v0;
  sub_21B6C97A4();
  MEMORY[0x21CEF6950](v1);
  return sub_21B6C97C4();
}

uint64_t *sub_21B614CC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_21B614CEC()
{
  v1 = swift_dynamicCastObjCProtocolUnconditional();
  [v1 _containerBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 _containerSafeAreaInsets];
  v10 = [v1 containerTraitCollection];
  [v10 displayScale];

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  CGRectGetHeight(v16);
  v11 = [v0 traitCollection];
  [v11 userInterfaceIdiom];

  BSFloatRoundForScale();
  [v0 loadViewIfNeeded];
  v12 = *&v0[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_continueButton];
  if (v12)
  {
    v13 = v12;
    v17.origin.x = v3;
    v17.origin.y = v5;
    v17.size.width = v7;
    v17.size.height = v9;
    v18 = CGRectInset(v17, 52.0, 0.0);
    [v13 sizeThatFits_];

    v14 = *&v0[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_customizeHomeButton];
    if (v14)
    {
      v15 = v14;
      v19.origin.x = v3;
      v19.origin.y = v5;
      v19.size.width = v7;
      v19.size.height = v9;
      v20 = CGRectInset(v19, 52.0, 0.0);
      [v15 sizeThatFits_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21B614F24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C80);
  MEMORY[0x28223BE20](v2 - 8);
  v173 = &v157 - v3;
  v166 = sub_21B6C9204();
  v164 = *(v166 - 1);
  MEMORY[0x28223BE20](v166);
  v163 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_21B6C92F4();
  v181 = *(v171 - 1);
  MEMORY[0x28223BE20](v171);
  v170 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21B6C9364();
  v180 = *(v187 - 8);
  v6 = MEMORY[0x28223BE20](v187);
  v179 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v172 = &v157 - v9;
  MEMORY[0x28223BE20](v8);
  v178 = &v157 - v10;
  v186 = sub_21B6C8734();
  v177 = *(v186 - 8);
  v11 = MEMORY[0x28223BE20](v186);
  v169 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v185 = &v157 - v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_contentView];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_contentView] = v15;
  v17 = v15;

  v176 = v14;
  v188 = v17;
  [v14 addSubview_];
  if (PUIFeatureEnabled())
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  else
  {
    v18 = [objc_opt_self() pbf_materialView];
  }

  v19 = v18;
  [v19 setAutoresizingMask_];
  [v188 addSubview_];
  v20 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_backgroundView];
  v168 = v19;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_backgroundView] = v19;

  v21 = [objc_opt_self() tertiarySystemFillColor];
  v22 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v22 setContentMode_];
  v23 = v21;
  [v22 setBackgroundColor_];
  [v22 setClipsToBounds_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAccessibilityIgnoresInvertColors_];
  v24 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView] = v22;
  v25 = v22;

  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v26 setBackgroundColor_];
  v167 = v23;

  [v26 setClipsToBounds_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAccessibilityIgnoresInvertColors_];
  v27 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView] = v26;
  v28 = v26;

  v29 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewLoadingIndicator];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewLoadingIndicator] = v29;
  v31 = v29;

  [v25 addSubview_];
  v175 = v31;
  [v31 startAnimating];
  v32 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewLoadingIndicator];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewLoadingIndicator] = v32;
  v34 = v32;

  [v28 addSubview_];
  v174 = v34;
  [v34 startAnimating];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21B6D7FC0;
  *(v35 + 32) = v25;
  *(v35 + 40) = v28;
  v36 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_21B61785C(0, &unk_28120B170);
  v183 = v25;
  v184 = v28;
  v37 = sub_21B6C8E74();

  v38 = [v36 initWithArrangedSubviews_];

  [v38 setAxis_];
  [v38 setSpacing_];
  v39 = v38;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_previewStackView];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_previewStackView] = v39;
  v41 = v39;

  v182 = v41;
  [v188 addSubview_];
  v42 = *MEMORY[0x277D76828];
  v43 = v185;
  sub_21B6C8724();
  v189 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_buttonFont];
  v44 = v189;
  sub_21B617808();
  v45 = v44;
  sub_21B6C8744();
  v46 = v178;
  sub_21B6C9354();
  v47 = v181[13];
  v162 = *MEMORY[0x277D75020];
  v181 += 13;
  v161 = v47;
  v47(v170);
  sub_21B6C91F4();
  (*(v164 + 104))(v163, *MEMORY[0x277D74FC8], v166);
  sub_21B6C9224();
  v48 = sub_21B6C8D74();
  v49 = PBFLocalizedString(v48);

  sub_21B6C8DA4();
  v160 = *(v177 + 16);
  v160(v169, v43, v186);
  v50 = v173;
  sub_21B6C8714();
  v51 = sub_21B6C8704();
  v52 = *(v51 - 8);
  v158 = *(v52 + 56);
  v157 = v52 + 56;
  v158(v50, 0, 1, v51);
  sub_21B6C9294();
  v53 = sub_21B61785C(0, &unk_28120B100);
  v54 = *(v180 + 16);
  v54(v172, v46, v187);
  v55 = sub_21B61785C(0, &unk_28120B110);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = v55;
  sub_21B6C91B4();
  v163 = v53;
  v56 = sub_21B6C9374();
  v164 = v42;
  [v56 setMaximumContentSizeCategory_];
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  v57 = [v56 titleLabel];
  if (v57)
  {
    v58 = v57;
    [v57 setTextAlignment_];
  }

  [v56 setPointerInteractionEnabled_];
  v59 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_continueButton];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_continueButton] = v56;
  v60 = v56;

  v166 = v60;
  [v188 addSubview_];
  v61 = v179;
  sub_21B6C91E4();
  v161(v170, v162, v171);
  sub_21B6C91F4();
  sub_21B6C9254();
  v62 = sub_21B6C8D74();
  v63 = PBFLocalizedString(v62);

  sub_21B6C8DA4();
  v160(v169, v185, v186);
  v64 = v173;
  sub_21B6C8714();
  v158(v64, 0, 1, v51);
  sub_21B6C9294();
  v54(v172, v61, v187);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21B6C91B4();
  v65 = sub_21B6C9374();
  [v65 setMaximumContentSizeCategory_];
  LODWORD(v66) = 1144750080;
  [v65 setContentHuggingPriority:1 forAxis:v66];
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];
  v67 = [v65 titleLabel];
  if (v67)
  {
    v68 = v67;
    [v67 setTextAlignment_];
  }

  [v65 setPointerInteractionEnabled_];
  v69 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_customizeHomeButton];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_customizeHomeButton] = v65;
  v70 = v65;
  v181 = v70;

  v71 = v188;
  [v188 addSubview_];
  v72 = v176;
  [v1 setView_];
  v73 = v183;
  v74 = [v183 widthAnchor];
  v75 = [v74 constraintEqualToConstant_];

  v76 = v184;
  v77 = [v184 widthAnchor];
  v78 = [v77 constraintEqualToConstant_];

  v79 = [v73 heightAnchor];
  v80 = [v79 constraintEqualToConstant_];

  v81 = [v76 heightAnchor];
  v82 = [v81 constraintEqualToConstant_];

  v83 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewWidthConstraint];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewWidthConstraint] = v75;
  v172 = v75;

  v84 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewWidthConstraint];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewWidthConstraint] = v78;
  v171 = v78;

  v85 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewHeightConstraint];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewHeightConstraint] = v80;
  v170 = v80;

  v86 = *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewHeightConstraint];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewHeightConstraint] = v82;
  v87 = v82;

  v173 = objc_opt_self();
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_21B6D7FD0;
  v89 = [v71 leadingAnchor];
  v90 = v72;
  v91 = [v72 &selRef_initWithPreferredMaterialType_ + 1];
  v92 = [v89 constraintEqualToAnchor:v91 constant:16.0];

  *(v88 + 32) = v92;
  v93 = [v71 trailingAnchor];
  v94 = [v90 &selRef_enumerateDynamicDescriptorStoreCoordinators_ + 4];
  v95 = [v93 constraintEqualToAnchor:v94 constant:-16.0];

  *(v88 + 40) = v95;
  v96 = [v71 topAnchor];
  v97 = [v90 &selRef_whiteColor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:16.0];

  *(v88 + 48) = v98;
  v99 = [v71 bottomAnchor];
  v100 = [v90 &selRef_bringSubviewToFront_ + 5];
  v101 = [v99 constraintEqualToAnchor:v100 constant:-16.0];

  *(v88 + 56) = v101;
  v102 = v182;
  v103 = [v182 &selRef_whiteColor];
  v104 = [v71 &selRef_whiteColor];
  v105 = [v103 constraintEqualToAnchor:v104 constant:36.0];

  *(v88 + 64) = v105;
  v106 = [v102 centerXAnchor];
  v107 = [v71 centerXAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  v110 = v171;
  v109 = v172;
  *(v88 + 72) = v108;
  *(v88 + 80) = v109;
  v111 = v170;
  *(v88 + 88) = v110;
  *(v88 + 96) = v111;
  *(v88 + 104) = v87;
  v172 = v109;
  v171 = v110;
  v170 = v111;
  v169 = v87;
  v112 = v175;
  v113 = [v175 centerXAnchor];
  v114 = v183;
  v115 = [v183 centerXAnchor];
  v116 = [v113 constraintEqualToAnchor_];

  *(v88 + 112) = v116;
  v117 = [v112 centerYAnchor];

  v118 = [v114 centerYAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(v88 + 120) = v119;
  v120 = v174;
  v121 = [v174 centerXAnchor];
  v122 = v184;
  v123 = [v184 centerXAnchor];
  v124 = [v121 constraintEqualToAnchor_];

  *(v88 + 128) = v124;
  v125 = [v120 centerYAnchor];

  v126 = [v122 centerYAnchor];
  v127 = [v125 constraintEqualToAnchor_];

  *(v88 + 136) = v127;
  v128 = v166;
  v129 = [v166 topAnchor];
  v130 = v182;
  v131 = [v182 bottomAnchor];

  v132 = [v129 constraintEqualToAnchor:v131 constant:24.0];
  *(v88 + 144) = v132;
  v133 = [v128 leadingAnchor];
  v134 = v188;
  v135 = [v188 leadingAnchor];
  v136 = [v133 constraintEqualToAnchor:v135 constant:36.0];

  *(v88 + 152) = v136;
  v137 = [v128 trailingAnchor];
  v138 = [v134 trailingAnchor];
  v139 = [v137 constraintEqualToAnchor:v138 constant:-36.0];

  *(v88 + 160) = v139;
  v140 = v181;
  v141 = [v181 leadingAnchor];
  v142 = [v128 leadingAnchor];
  v143 = [v141 constraintEqualToAnchor_];

  *(v88 + 168) = v143;
  v144 = [v140 trailingAnchor];
  v145 = [v128 trailingAnchor];
  v146 = [v144 constraintEqualToAnchor_];

  *(v88 + 176) = v146;
  v147 = [v140 topAnchor];

  v148 = [v128 bottomAnchor];
  v149 = [v147 constraintEqualToAnchor:v148 constant:16.0];

  *(v88 + 184) = v149;
  sub_21B61785C(0, &qword_28120B2D0);
  v150 = sub_21B6C8E74();

  [v173 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C88);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_21B6D7FE0;
  v152 = sub_21B6C8B54();
  v153 = MEMORY[0x277D74DB8];
  *(v151 + 32) = v152;
  *(v151 + 40) = v153;
  type metadata accessor for PosterEditingConfirmationViewController();
  sub_21B6C9054();

  swift_unknownObjectRelease();

  v154 = *(v180 + 8);
  v155 = v187;
  v154(v179, v187);
  v154(v178, v155);
  return (*(v177 + 8))(v185, v186);
}

void sub_21B616658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21B644C04(v5, a3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_21B6166E0()
{
  sub_21B616AA8();
  sub_21B616BB0();
  sub_21B617070();
}

void sub_21B616754(void *a1, char a2)
{
  v23.receiver = v2;
  v23.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  objc_msgSendSuper2(&v23, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  if (a1)
  {
    v5 = a1;
    v6 = [v5 screen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v5 traitCollection];
    [v15 displayScale];

    v16 = [v2 traitCollection];
    [v16 userInterfaceIdiom];

    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    CGRectGetWidth(v24);
    BSFloatRoundForScale();
    v18 = v17;
    v19 = [v2 traitCollection];
    [v19 userInterfaceIdiom];

    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    CGRectGetHeight(v25);
    BSFloatRoundForScale();
    v21 = v20;
    [*&v2[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewWidthConstraint] setConstant_];
    [*&v2[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewWidthConstraint] setConstant_];
    [*&v2[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewHeightConstraint] setConstant_];
    v22 = *&v2[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewHeightConstraint];
    [v22 setConstant_];
  }

  sub_21B616AA8();
  sub_21B616BB0();
}

void sub_21B616AA8()
{
  v9 = [v0 traitCollection];
  [v9 displayCornerRadius];
  v2 = 5.0;
  if (v1 > 0.0)
  {
    v3 = v1;
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = 0.2;
    if (v5 != 1)
    {
      v6 = 0.25;
    }

    v2 = v3 * v6;
  }

  v7 = *&v0[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView];
  if (v7)
  {
    [v7 _setContinuousCornerRadius_];
  }

  v8 = *&v0[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView];
  [v8 _setContinuousCornerRadius_];
}

void sub_21B616BB0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v28 = [v1 window];

    if (v28)
    {
      v3 = [v0 traitCollection];
      [v3 displayCornerRadius];
      v5 = v4;

      v6 = 12.0;
      if (v5 > 0.0)
      {
        v7 = [v0 traitCollection];
        v8 = [v7 userInterfaceIdiom];

        v6 = v5;
        if (v8 != 1)
        {
          v9 = [v28 screen];
          [v9 bounds];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v18 = UIEdgeInsetsInsetRect(v10);
          v20 = v19;
          v22 = v21;
          rect = v23;
          v30.origin.x = v11;
          v30.origin.y = v13;
          v30.size.width = v15;
          v30.size.height = v17;
          Width = CGRectGetWidth(v30);
          v31.origin.x = v18;
          v31.origin.y = v20;
          v31.size.width = v22;
          v31.size.height = rect;
          v25 = CGRectGetWidth(v31);

          v6 = v5 + (Width - v25) * -0.5;
        }
      }

      v26 = *&v0[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_backgroundView];
      [v26 _setContinuousCornerRadius_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_21B616DA8(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContentView;
  [*(v3 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContentView) removeFromSuperview];
  v8 = *(v3 + v7);
  *(v3 + v7) = a1;
  v9 = a1;

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [a2 addSubview_];
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21B6D7FF0;
  v12 = [a2 leadingAnchor];
  v13 = [v9 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [a2 trailingAnchor];
  v16 = [v9 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [a2 topAnchor];
  v19 = [v9 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v20;
  v21 = [a2 bottomAnchor];
  v22 = [v9 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v11 + 56) = v23;
  sub_21B61785C(0, &qword_28120B2D0);
  v24 = sub_21B6C8E74();

  [v10 activateConstraints_];

  [a2 setBackgroundColor_];

  return [a3 stopAnimating];
}

void sub_21B617070()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImage);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewView);
    if (v2)
    {
      if (*(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView))
      {
        v17 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView);
        v3 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView;
        v4 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView);
        v5 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewLoadingIndicator);
        if (v4)
        {
          v4 = v4;
          v6 = v1;
          v7 = v2;
          v8 = v17;
          [v4 setImage_];
          [v4 setBackgroundColor_];
        }

        else
        {
          v9 = v1;
          v10 = v2;
          v11 = v17;
        }

        [v5 stopAnimating];

        v12 = *(v0 + OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewLoadingIndicator);
        v13 = v12;
        sub_21B616DA8(v2, v17, v12);

        v14 = *(v0 + v3);
        v15 = *MEMORY[0x277CDA7A8];
        if (v14)
        {
          v16 = v14;
          UIView.fade(withDuration:timingFunctionName:)(0.15, v15);
        }

        UIView.fade(withDuration:timingFunctionName:)(0.15, v15);
      }
    }
  }
}

id sub_21B61722C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
  *&v3[v6] = sub_21B698A30(MEMORY[0x277D84F90]);
  v7 = &v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_contentView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_backgroundView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_previewStackView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContentView] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewLoadingIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewLoadingIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_continueButton] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_customizeHomeButton] = 0;
  v8 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_buttonFont;
  *&v3[v8] = [objc_opt_self() preferredFontForTextStyle_];
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImage] = 0;
  *&v3[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewView] = 0;
  if (a2)
  {
    v9 = sub_21B6C8D74();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_21B617458(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_userInfo;
  *&v1[v3] = sub_21B698A30(MEMORY[0x277D84F90]);
  v4 = &v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_posterID];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_contentView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_previewStackView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImageView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContainerView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewContentView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewLoadingIndicator] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewLoadingIndicator] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_continueButton] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_customizeHomeButton] = 0;
  v5 = OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_buttonFont;
  *&v1[v5] = [objc_opt_self() preferredFontForTextStyle_];
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_lockPreviewImage] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard39PosterEditingConfirmationViewController_homePreviewView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_21B617620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B617808()
{
  result = qword_28120BB50;
  if (!qword_28120BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120BB50);
  }

  return result;
}

uint64_t sub_21B61785C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21B61790C()
{
  v1 = *(v0 + 16);
  if (!v1 || (v2 = sub_21B6C8D74(), v3 = [v1 posterPreviewForUniqueIdentifier_], v2, !v3))
  {
    v7 = objc_allocWithZone(MEMORY[0x277D3ED48]);
    sub_21B618040();
    v8 = sub_21B6C8E74();
    v9 = sub_21B6C8E74();
    v10 = [v7 initWithInlineComplication:0 sidebarComplications:v8 complications:v9];
LABEL_32:

    return v10;
  }

  v4 = [v3 subtitleComplication];
  if (v4)
  {
    v5 = v4;
    sub_21B618040();
    v6 = sub_21B617D44(v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [v3 suggestedComplications];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92D60);
    v14 = sub_21B6C8E84();

    if (v14 >> 62)
    {
      v15 = sub_21B6C9454();
      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_10:
        v29 = v12;
        result = sub_21B6C9594();
        if (v15 < 0)
        {
          __break(1u);
          goto LABEL_34;
        }

        sub_21B618040();
        v17 = 0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x21CEF66E0](v17, v14);
          }

          else
          {
            v18 = swift_unknownObjectRetain();
          }

          ++v17;
          sub_21B617D44(v18);
          sub_21B6C9574();
          sub_21B6C95A4();
          sub_21B6C95B4();
          sub_21B6C9584();
        }

        while (v15 != v17);
      }
    }
  }

  v19 = [v3 suggestedLandscapeComplications];
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_31:
    v26 = [v3 complicationsUseBottomLayout];
    v27 = objc_allocWithZone(MEMORY[0x277D3ED48]);
    sub_21B618040();
    v8 = sub_21B6C8E74();

    v9 = sub_21B6C8E74();

    v10 = [v27 initWithInlineComplication:v6 sidebarComplicationIconLayout:0 sidebarComplications:v8 complicationIconLayout:0 complications:v9 complicationsUseBottomLayout:v26];
    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92D60);
  v22 = sub_21B6C8E84();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_30:

    goto LABEL_31;
  }

  v23 = sub_21B6C9454();
  if (!v23)
  {
    goto LABEL_30;
  }

LABEL_22:
  v28 = v6;
  v29 = v20;
  result = sub_21B6C9594();
  if ((v23 & 0x8000000000000000) == 0)
  {
    sub_21B618040();
    v24 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CEF66E0](v24, v22);
      }

      else
      {
        v25 = swift_unknownObjectRetain();
      }

      ++v24;
      sub_21B617D44(v25);
      sub_21B6C9574();
      sub_21B6C95A4();
      sub_21B6C95B4();
      sub_21B6C9584();
    }

    while (v23 != v24);
    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

id sub_21B617D44(void *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C88B4();
  sub_21B6C8874();
  (*(v3 + 8))(v5, v2);
  v6 = sub_21B6C8D74();

  v7 = [a1 complicationWidgetKind];
  if (!v7)
  {
    sub_21B6C8DA4();
    v7 = sub_21B6C8D74();
  }

  v8 = [a1 complicationExtensionBundleIdentifier];
  if (!v8)
  {
    sub_21B6C8DA4();
    v8 = sub_21B6C8D74();
  }

  v9 = [a1 complicationContainingBundleIdentifier];
  if (!v9)
  {
    sub_21B6C8DA4();
    v9 = sub_21B6C8D74();
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = [a1 complicationWidgetFamily];
  v12 = [v11 integerValue];

  v13 = [v10 initWithUniqueIdentifier:v6 kind:v7 extensionBundleIdentifier:v8 containerBundleIdentifier:v9 family:v12 intent:0];
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_21B617FE4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21B618040()
{
  result = qword_28120B0F0;
  if (!qword_28120B0F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B0F0);
  }

  return result;
}

id sub_21B618180()
{
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___sceneSettingsDiffInspector;
  v2 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___sceneSettingsDiffInspector);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___sceneSettingsDiffInspector);
  }

  else
  {
    v4 = [objc_opt_self() diffInspectorForObservingDiffContext];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21B6183B0()
{
  sub_21B61966C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitcherSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B6184DC()
{
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity] = 0;
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_sceneDelegateState;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 applicationStateMonitor];

  v4 = [v3 rootNode];
  *&v0[v1] = v4;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___sceneSettingsDiffInspector] = 0;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene] = 0;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion] = 0;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_extensionTestingViewController] = 0;
  *&v0[OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SwitcherSceneDelegate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21B6186B0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B6D81D0;
  *(v6 + 32) = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = sub_21B6C8E74();

  return v8;
}

void sub_21B618928()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (v1)
  {
    v10 = v1;
    v2 = [v10 windowScene];
    if (v2 && (v3 = v2, v4 = [v2 _FBSScene], v3, v4))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_21B61E4B0;
      *(v6 + 24) = v5;
      aBlock[4] = sub_21B61E4A0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B66F5E4;
      aBlock[3] = &block_descriptor_58;
      v7 = _Block_copy(aBlock);
      v8 = v10;

      [v4 updateClientSettings_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21B618B24()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (v1)
  {
    v10 = v1;
    v2 = [v10 windowScene];
    if (v2 && (v3 = v2, v4 = [v2 _FBSScene], v3, v4))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_21B61E4B0;
      *(v6 + 24) = v5;
      aBlock[4] = sub_21B61E4A0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B66F5E4;
      aBlock[3] = &block_descriptor_47;
      v7 = _Block_copy(aBlock);
      v8 = v10;

      [v4 updateClientSettings_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21B618D20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_21B6C86F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C86E4();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

void sub_21B618E0C()
{
  v1 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (v1)
  {
    v10 = v1;
    v2 = [v10 windowScene];
    if (v2 && (v3 = v2, v4 = [v2 _FBSScene], v3, v4))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_21B619D40;
      *(v6 + 24) = v5;
      aBlock[4] = sub_21B619D44;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B66F5E4;
      aBlock[3] = &block_descriptor_36;
      v7 = _Block_copy(aBlock);
      v8 = v10;

      [v4 updateClientSettings_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21B618FF0()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion;
  if (*(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion))
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v2 = sub_21B6C8AB4();
    __swift_project_value_buffer(v2, qword_28120CD78);
    v3 = sub_21B6C9044();
    log = sub_21B6C8A94();
    if (os_log_type_enabled(log, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21B526000, log, v3, "Poster Switcher assertion 'Keep alive until finish teardown' already acquired", v4, 2u);
      MEMORY[0x21CEF8150](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v5 = sub_21B6C8AB4();
    __swift_project_value_buffer(v5, qword_28120CD78);
    v6 = sub_21B6C9044();
    v7 = sub_21B6C8A94();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21B526000, v7, v6, "Poster Switcher assertions acquiring 'Keep alive until finish teardown'", v8, 2u);
      MEMORY[0x21CEF8150](v8, -1, -1);
    }

    v9 = objc_opt_self();
    v10 = sub_21B6C8D74();
    v11 = [v9 pf:v10 finishTaskInterruptableWithExplanation:0 invalidationHandler:?];

    aBlock[4] = sub_21B619480;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B6195E0;
    aBlock[3] = &block_descriptor;
    v12 = _Block_copy(aBlock);
    [v11 setInvalidationHandler_];
    _Block_release(v12);
    aBlock[0] = 0;
    v13 = [v11 acquireWithError_];
    v14 = aBlock[0];
    if (v13)
    {
      v15 = *(v0 + v1);
      *(v0 + v1) = v11;
      v16 = v14;
      v17 = v11;

      v18 = sub_21B6C9044();
      v19 = sub_21B6C8A94();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21B526000, v19, v18, "Poster Switcher assertions acquired 'Keep alive until finish teardown'", v20, 2u);
        MEMORY[0x21CEF8150](v20, -1, -1);
      }
    }

    else
    {
      v21 = aBlock[0];
      v22 = sub_21B6C8764();

      swift_willThrow();
      v23 = sub_21B6C9024();
      v24 = v22;
      v25 = sub_21B6C8A94();

      if (os_log_type_enabled(v25, v23))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v22;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_21B526000, v25, v23, "Poster Switcher assertions 'Keep alive until finish teardown' failed to be acquired: %@", v26, 0xCu);
        sub_21B619CD8(v27);
        MEMORY[0x21CEF8150](v27, -1, -1);
        MEMORY[0x21CEF8150](v26, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_21B619480(uint64_t a1, void *a2)
{
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v3 = sub_21B6C8AB4();
  __swift_project_value_buffer(v3, qword_28120CD78);
  v4 = sub_21B6C9044();
  v5 = a2;
  oslog = sub_21B6C8A94();

  if (os_log_type_enabled(oslog, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    if (a2)
    {
      v8 = a2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v6 + 4) = v9;
    *v7 = v10;
    _os_log_impl(&dword_21B526000, oslog, v4, "Poster Switcher 'Keep alive until finish teardown' was interrupted: %@", v6, 0xCu);
    sub_21B619CD8(v7);
    MEMORY[0x21CEF8150](v7, -1, -1);
    MEMORY[0x21CEF8150](v6, -1, -1);
  }
}

void sub_21B6195E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_21B61966C()
{
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion;
  v2 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v4 = sub_21B6C8AB4();
    __swift_project_value_buffer(v4, qword_28120CD78);
    v5 = sub_21B6C9044();
    log = sub_21B6C8A94();
    if (os_log_type_enabled(log, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Poster Switcher assertions invalidated 'Keep alive until finish teardown'";
LABEL_10:
      _os_log_impl(&dword_21B526000, log, v5, v7, v6, 2u);
      MEMORY[0x21CEF8150](v6, -1, -1);
    }
  }

  else
  {
    if (qword_28120B390 != -1)
    {
      swift_once();
    }

    v8 = sub_21B6C8AB4();
    __swift_project_value_buffer(v8, qword_28120CD78);
    v5 = sub_21B6C9044();
    log = sub_21B6C8A94();
    if (os_log_type_enabled(log, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Poster Switcher assertions 'Keep alive until finish teardown' already invalidated";
      goto LABEL_10;
    }
  }
}

id sub_21B619850()
{
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController;
  v2 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_extensionTestingViewController;
    v5 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_extensionTestingViewController);
    v3 = v5;
    if (!v5)
    {
      if (MEMORY[0x21CEF7340]("SwitcherSceneDelegate:posterExtensionTestingViewController"))
      {
        v3 = [objc_allocWithZone(PBFExtensionTestingViewController) init];
        v6 = *(v0 + v4);
        *(v0 + v4) = v3;

        v7 = v3;
      }

      else
      {
        v3 = 0;
      }
    }

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    v10 = v5;
    sub_21B619C68(v8);
  }

  sub_21B619C78(v2);
  return v3;
}

void sub_21B619970()
{
  if (MEMORY[0x21CEF7340]("SwitcherSceneDelegate:setupDebugGesture"))
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_21B6C8D74();
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_debugGestureWasTriggered];
      [v6 setNumberOfTapsRequired_];
      [v6 setNumberOfTouchesRequired_];
      [v6 setCancelsTouchesInView_];
      v4 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
      if (v4)
      {
        v5 = v4;
        [v5 addGestureRecognizer_];
      }
    }
  }
}

void sub_21B619ACC()
{
  if (!MEMORY[0x21CEF7340]("SwitcherSceneDelegate:debugGestureWasTriggered"))
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (!v1)
  {
    return;
  }

  v8 = [v1 rootViewController];
  if (!v8)
  {
    return;
  }

  v2 = sub_21B619850();
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = v8;
  v5 = [v4 presentedViewController];
  if (!v5)
  {
    v7 = v4;
LABEL_11:
    [v7 presentViewController:v3 animated:1 completion:0];

LABEL_12:

    return;
  }

  while (1)
  {

    v6 = [v4 presentedViewController];
    if (!v6)
    {
      break;
    }

    v7 = v6;

    v5 = [v7 presentedViewController];
    v4 = v7;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_21B619C68(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_21B619C78(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B619CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21B619D4C(void *a1)
{
  v3 = [*(v1 + 16) _contextId];

  return [a1 pruis:v3 setSwitcherContextID:?];
}

uint64_t sub_21B619DC0(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_21B6C9464();

    if (v16)
    {

      sub_21B61785C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_21B6C9454();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_21B61A498(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_21B61A698(v27 + 1, a5);
        }

        v28 = v15;
        sub_21B61AE7C(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_21B61785C(0, a3);
    v18 = sub_21B6C9194();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_21B6C91A4();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_21B61AF00(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21B61A034(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_21B6C8DA4();
  sub_21B6C97A4();
  sub_21B6C8DD4();
  v7 = sub_21B6C97C4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_21B6C8DA4();
      v13 = v12;
      if (v11 == sub_21B6C8DA4() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_21B6C96E4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_21B61B090(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_21B61A1E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21B61E450(&unk_27CD92DE0);
  v33 = a2;
  v11 = sub_21B6C8D34();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_21B61E450(&qword_27CD92F20);
      v21 = sub_21B6C8D64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_21B61B278(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21B61A498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_21B6C94F4();
    v20 = v7;
    sub_21B6C9444();
    if (sub_21B6C9474())
    {
      sub_21B61785C(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_21B61A698(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_21B6C9194();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_21B6C9474());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_21B61A698(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21B6C94E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_21B6C9194();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_21B61A8B8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93430);
  result = sub_21B6C94E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_21B6C8DA4();
      sub_21B6C97A4();
      sub_21B6C8DD4();
      v17 = sub_21B6C97C4();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21B61AB34()
{
  v1 = v0;
  v35 = sub_21B6C88C4();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92DF0);
  result = sub_21B6C94E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21B61E450(&unk_27CD92DE0);
      result = sub_21B6C8D34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_21B61AE7C(uint64_t a1, uint64_t a2)
{
  sub_21B6C9194();
  result = sub_21B6C9434();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21B61AF00(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_21B61A698(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_21B61B4F4(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_21B61B9BC(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_21B6C9194();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_21B61785C(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_21B6C91A4();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21B6C9724();
  __break(1u);
}

uint64_t sub_21B61B090(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_21B61A8B8();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_21B61B634();
      goto LABEL_16;
    }

    sub_21B61BBC8();
  }

  v9 = *v3;
  sub_21B6C8DA4();
  sub_21B6C97A4();
  sub_21B6C8DD4();
  v10 = sub_21B6C97C4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Identifier(0);
    do
    {
      v13 = sub_21B6C8DA4();
      v15 = v14;
      if (v13 == sub_21B6C8DA4() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_21B6C96E4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_21B6C9724();
  __break(1u);
  return result;
}

uint64_t sub_21B61B278(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21B61AB34();
  }

  else
  {
    if (v11 > v10)
    {
      sub_21B61B784();
      goto LABEL_12;
    }

    sub_21B61BE1C();
  }

  v12 = *v3;
  sub_21B61E450(&unk_27CD92DE0);
  v13 = sub_21B6C8D34();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_21B61E450(&qword_27CD92F20);
      v21 = sub_21B6C8D64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21B6C9724();
  __break(1u);
  return result;
}

id sub_21B61B4F4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_21B6C94D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_21B61B634()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93430);
  v2 = *v0;
  v3 = sub_21B6C94D4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *sub_21B61B784()
{
  v1 = v0;
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92DF0);
  v6 = *v0;
  v7 = sub_21B6C94D4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21B61B9BC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21B6C94E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_21B6C9194();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_21B61BBC8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93430);
  result = sub_21B6C94E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_21B6C8DA4();
      sub_21B6C97A4();
      v17 = v16;
      sub_21B6C8DD4();
      v18 = sub_21B6C97C4();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B61BE1C()
{
  v1 = v0;
  v32 = sub_21B6C88C4();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92DF0);
  v6 = sub_21B6C94E4();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_21B61E450(&unk_27CD92DE0);
      result = sub_21B6C8D34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21B61C124(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_21B6C9484();

    if (v5)
    {
      v6 = sub_21B61C54C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_21B61785C(0, &qword_28120B150);
  v9 = sub_21B6C9194();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_21B6C91A4();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B61B4F4(&qword_27CD92DB0);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_21B61C6D4(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_21B61C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B6C88C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21B61E450(&unk_27CD92DE0);
  v31 = a1;
  v10 = sub_21B6C8D34();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_21B61E450(&qword_27CD92F20);
      v19 = sub_21B6C8D64();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21B61B784();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_21B61C874(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_21B61C54C()
{
  v1 = v0;

  v2 = sub_21B6C9454();
  v3 = swift_unknownObjectRetain();
  v4 = sub_21B61A498(v3, v2, &qword_27CD92DB0, &unk_21B6D8220, &qword_28120B150);
  v13 = v4;

  v5 = sub_21B6C9194();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_21B61785C(0, &qword_28120B150);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_21B6C91A4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_21B61C6D4(v7);
  result = sub_21B6C91A4();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21B61C6D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21B6C9424();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_21B6C9194();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21B61C874(int64_t a1)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_21B6C9424();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_21B61E450(&unk_27CD92DE0);
        v24 = sub_21B6C8D34();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void sub_21B61CB6C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v6 = a1;
    v7 = [v5 initWithWindowScene_];
    v8 = sub_21B6C94C4();
    v19 = 0xD00000000000001ELL;
    v20 = 0x800000021B6EDFE0;
    MEMORY[0x28223BE20](v8);
    v18[2] = &v19;
    LOBYTE(v4) = sub_21B66FA30(sub_21B61E3F8, v18, v8);

    if ((v4 & 1) == 0)
    {
      v9 = objc_allocWithZone(type metadata accessor for PosterRackCollectionViewController());
      v10 = [v9 init];
      v11 = OBJC_IVAR___PBFPosterRackCollectionViewController_managesLiveWidgetHosting;
      swift_beginAccess();
      v10[v11] = 1;
      [v7 setRootViewController_];
      v12 = [v7 _rootSheetPresentationController];
      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = v12;
      [v12 _setShouldScaleDownBehindDescendantSheets_];

      [v7 makeKeyAndVisible];
    }

    v14 = *&v1[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window];
    *&v1[OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window] = v7;
    v15 = v7;

    v16 = NSStringFromClass([v1 classForCoder]);
    if (!v16)
    {
      sub_21B6C8DA4();
      v16 = sub_21B6C8D74();
    }

    [v6 _registerSceneComponent_forKey_];

    sub_21B618E0C();
    v17 = [objc_opt_self() defaultCenter];
    [v17 addObserver:v1 selector:sel_windowDidAttachContext_ name:*MEMORY[0x277D77630] object:v15];
    [v17 addObserver:v1 selector:sel_windowDidDetachContext_ name:*MEMORY[0x277D77638] object:v15];
    sub_21B619970();
  }
}

void sub_21B61CE18()
{
  v1 = v0;
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v2 = sub_21B6C8AB4();
  __swift_project_value_buffer(v2, qword_28120CD78);
  v3 = sub_21B6C9044();
  v4 = sub_21B6C8A94();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21B526000, v4, v3, "Poster Switcher will become active", v5, 2u);
    MEMORY[0x21CEF8150](v5, -1, -1);
  }

  v6 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity;
  if (!*(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity))
  {
    type metadata accessor for SwiftOSActivity();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    if (qword_28120B4A0 != -1)
    {
      swift_once();
    }

    *(v7 + 16) = _os_activity_create(&dword_21B526000, "PosterBoard Lock Screen Switcher", qword_28120B4B0, OS_ACTIVITY_FLAG_DEFAULT);
    *(v1 + v6) = v7;

    swift_beginAccess();
    v8 = swift_unknownObjectRetain();
    os_activity_scope_enter(v8, (v7 + 24));
    swift_endAccess();
    swift_unknownObjectRelease();
    *(v7 + 40) = 1;
  }

  sub_21B618FF0();
  v9 = *(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for PosterRackCollectionViewController();
      if (swift_dynamicCastClass())
      {
        PosterRackCollectionViewController.sceneWillEnterForeground()();
      }
    }
  }

  v14[1] = MEMORY[0x277D84FA0];
  sub_21B619DC0(v14, [objc_allocWithZone(PBFApplicationStateComponent) initWithIdentifier:@"ApplicationIsActiveComponent" userInfo:0], &qword_28120B230, off_2782C4160, &qword_27CD92DC8, &unk_21B6D8250);

  v12 = *(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_sceneDelegateState);
  sub_21B61785C(0, &qword_28120B230);
  sub_21B61E3A8(&unk_28120B220, &qword_28120B230);
  v13 = sub_21B6C8F84();

  [v12 setComponents_];
}

void sub_21B61D124()
{
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v0 = sub_21B6C8AB4();
  __swift_project_value_buffer(v0, qword_28120CD78);
  v1 = sub_21B6C9044();
  v2 = sub_21B6C8A94();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21B526000, v2, v1, "Poster Switcher did become active", v3, 2u);
    MEMORY[0x21CEF8150](v3, -1, -1);
  }

  sub_21B618FF0();
}

void sub_21B61D2F0()
{
  v1 = v0;
  if (qword_28120B390 != -1)
  {
    swift_once();
  }

  v2 = sub_21B6C8AB4();
  __swift_project_value_buffer(v2, qword_28120CD78);
  v3 = sub_21B6C9044();
  v4 = sub_21B6C8A94();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21B526000, v4, v3, "Poster Switcher did resign active", v5, 2u);
    MEMORY[0x21CEF8150](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (v6)
  {
    v7 = [v6 rootViewController];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for PosterRackCollectionViewController();
      if (swift_dynamicCastClass())
      {
        PosterRackCollectionViewController.sceneDidEnterBackground()();
      }
    }
  }

  v9 = *(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_sceneDelegateState);
  sub_21B61785C(0, &qword_28120B230);
  sub_21B61E3A8(&unk_28120B220, &qword_28120B230);
  v10 = sub_21B6C8F84();
  [v9 setComponents_];

  sub_21B61966C();
  v11 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity;
  v12 = *(v1 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity);
  if (v12)
  {
    swift_beginAccess();

    os_activity_scope_leave((v12 + 24));
    swift_endAccess();
    *(v12 + 40) = 0;

    *(v1 + v11) = 0;
  }
}

void sub_21B61D4F8()
{
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window) = 0;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_posterBoardActivity) = 0;
  v1 = OBJC_IVAR___PBFPosterSwitcherSceneDelegate_sceneDelegateState;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 applicationStateMonitor];

  v4 = [v3 rootNode];
  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___sceneSettingsDiffInspector) = 0;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate__scene) = 0;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_switcherFinishTeardownAssertion) = 0;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_extensionTestingViewController) = 0;
  *(v0 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate____lazy_storage___posterExtensionTestingViewController) = 1;
  sub_21B6C95D4();
  __break(1u);
}

void sub_21B61D620(void *a1, id a2, uint64_t a3, void *a4)
{
  v103[7] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_85:
    __break(1u);
  }

  v100 = [a1 settings];
  if (a3 || a2)
  {
    v7 = a2;
  }

  else
  {
    a2 = [objc_opt_self() diffFromSettings:0 toSettings:v100];
  }

  v8 = *(v4 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
  if (!v8 || (v9 = [v8 rootViewController]) == 0)
  {

LABEL_17:
    v15 = a2;
    goto LABEL_18;
  }

  v10 = v9;
  type metadata accessor for PosterRackCollectionViewController();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    goto LABEL_17;
  }

  v12 = v11;
  if (a2)
  {
    v102 = 0;
    v13 = sub_21B618180();
    [v13 inspectDiff:a2 withContext:&v102];

    if ((PUIDynamicRotationIsActive() & 1) != 0 && PF_IS_PAD_DEVICE())
    {
      v14 = [v100 pui_deviceOrientation];
      if (!UIInterfaceOrientationIsPortrait(v14) && !UIInterfaceOrientationIsLandscape(v14))
      {
        if (!*MEMORY[0x277D76620])
        {
LABEL_91:
          __break(1u);
          return;
        }

        v14 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
      }
    }

    else
    {
      v14 = 1;
    }

    v16 = v102;
    if (sub_21B61E2F4(v102))
    {
      v17 = [v100 pruis_lockPosterOverlayLayerRenderID];
      v18 = [v100 pruis_lockPosterOverlayLayerContextID];
      v19 = &v12[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterOverlayLayerSpecification];
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 2);
      *v19 = v17;
      *(v19 + 2) = v18;
      sub_21B677608(v20, v21);
      v16 = v102;
    }

    if (sub_21B61E2FC(v16))
    {
      v22 = [v100 pruis_lockPosterLiveContentLayerRenderID];
      v23 = [v100 pruis_lockPosterLiveContentLayerContextID];
      v24 = &v12[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveContentLayerSpecification];
      swift_beginAccess();
      v25 = *v24;
      v26 = *(v24 + 2);
      *v24 = v22;
      *(v24 + 2) = v23;
      sub_21B67772C(v25, v26);
      v16 = v102;
    }

    if (sub_21B61E304(v16))
    {
      v27 = [v100 pruis_lockPosterLiveFloatingLayerRenderID];
      v28 = [v100 pruis_lockPosterLiveFloatingLayerContextID];
      v29 = &v12[OBJC_IVAR___PBFPosterRackCollectionViewController_lockPosterLiveFloatingLayerSpecification];
      swift_beginAccess();
      v30 = *v29;
      v31 = *(v29 + 2);
      *v29 = v27;
      *(v29 + 2) = v28;
      sub_21B677934(v30, v31);
    }

    v32 = &v12[OBJC_IVAR___PBFPosterRackCollectionViewController_portalContainerSpecification];
    swift_beginAccess();
    *v32 = v14;
    v32[1] = 1;
    sub_21B677D04();
    [v100 pruis_titleAdaptiveTextHeight];
    v34 = v33;
    v35 = &v12[OBJC_IVAR___PBFPosterRackCollectionViewController_adaptiveTimeConfiguration];
    swift_beginAccess();
    v36 = *v35;
    v37 = *(v35 + 1);
    *v35 = v14;
    v35[1] = v34;
    sub_21B678F88(v36, v37);
    if (!sub_21B61E30C(v102) || (v38 = [v100 pruis_isLockPosterFloatingLayerInlined], v39 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterFloatingLayerInlined, swift_beginAccess(), v40 = v12[v39], v12[v39] = v38, v38 == v40))
    {
LABEL_47:
      if (!sub_21B61E314(v102))
      {
        goto LABEL_64;
      }

      v52 = [v100 pruis_isLockPosterComplicationRowHidden];
      v53 = OBJC_IVAR___PBFPosterRackCollectionViewController_isLockPosterComplicationRowHidden;
      swift_beginAccess();
      v54 = v12[v53];
      v12[v53] = v52;
      if (v52 == v54)
      {
        goto LABEL_64;
      }

      v55 = [v12 collectionView];
      if (!v55)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v56 = v55;
      v57 = [v55 preparedCells];

      if (!v57)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      sub_21B61785C(0, &unk_28120B2A8);
      v58 = sub_21B6C8E84();

      v99 = a4;
      if (v58 >> 62)
      {
        v59 = sub_21B6C9454();
        if (v59)
        {
LABEL_53:
          if (v59 >= 1)
          {
            for (i = 0; i != v59; ++i)
            {
              if ((v58 & 0xC000000000000001) != 0)
              {
                v61 = MEMORY[0x21CEF66E0](i, v58);
              }

              else
              {
                v61 = *(v58 + 8 * i + 32);
              }

              v62 = v61;
              type metadata accessor for LockScreenPosterCollectionViewCell();
              v63 = swift_dynamicCastClass();
              if (v63)
              {
                v64 = v12[v53];
                v65 = *(v63 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout);
                *(v63 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout) = v64;
                if (v64 != v65)
                {
                  sub_21B666B28();
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_84;
        }
      }

      else
      {
        v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v59)
        {
          goto LABEL_53;
        }
      }

LABEL_63:

      a4 = v99;
LABEL_64:
      v66 = v102;
      if (sub_21B61E31C(v102))
      {
        PosterRackCollectionViewController.lockVibrancyConfiguration.setter([v100 pruis_lockVibrancyConfiguration]);
        v66 = v102;
      }

      if (!sub_21B61E324(v66))
      {
        goto LABEL_75;
      }

      v67 = [v100 pruis_preferredSwitcherLayoutMode];
      if (qword_28120B390 != -1)
      {
        swift_once();
      }

      v68 = sub_21B6C8AB4();
      __swift_project_value_buffer(v68, qword_28120CD78);
      v69 = sub_21B6C9014();
      v70 = sub_21B6C8A94();
      if (os_log_type_enabled(v70, v69))
      {
        v71 = swift_slowAlloc();
        v99 = a4;
        v72 = swift_slowAlloc();
        v103[0] = v72;
        *v71 = 136315138;
        v73 = NSStringFromPRUISSwitcherLayoutMode();
        v74 = sub_21B6C8DA4();
        v76 = v75;

        v77 = sub_21B656178(v74, v76, v103);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_21B526000, v70, v69, "Poster Switcher preferred layout mode did update to: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        v78 = v72;
        a4 = v99;
        MEMORY[0x21CEF8150](v78, -1, -1);
        MEMORY[0x21CEF8150](v71, -1, -1);
      }

      if (a4)
      {
        v79 = [a4 animationSettings];
        v80 = v79;
        if (v79)
        {
        }

        PosterRackCollectionViewController.transitionLayout(to:animated:options:completion:)(v67, v80 != 0, 0, 0, 0);
        v66 = v102;
LABEL_75:
        if ((sub_21B61E32C(v66) & 1) != 0 || sub_21B61E334(v66))
        {
          [v100 pruis_leadingTopButtonFrame];
          v82 = v81;
          v84 = v83;
          v86 = v85;
          v88 = v87;
          [v100 pruis_trailingTopButtonFrame];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;
          v105.origin.x = v82;
          v105.origin.y = v84;
          v105.size.width = v86;
          v105.size.height = v88;
          if (CGRectIsEmpty(v105) || (v106.origin.x = v90, v106.origin.y = v92, v106.size.width = v94, v106.size.height = v96, CGRectIsEmpty(v106)))
          {
            v97 = v100;
            v98 = a2;
            v100 = v10;
          }

          else
          {
            v98 = a2;
            PosterRackCollectionViewController.leadingTopButtonFrame.setter(v82, v84, v86, v88);
            PosterRackCollectionViewController.trailingTopButtonFrame.setter(v90, v92, v94, v96);
            v97 = v10;
          }
        }

        else
        {
          v98 = v10;
          v97 = a2;
        }

        return;
      }

      __break(1u);
      goto LABEL_87;
    }

    v41 = [v12 collectionView];
    if (!v41)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v42 = v41;
    v43 = [v41 preparedCells];

    if (!v43)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v99 = a4;
    sub_21B61785C(0, &unk_28120B2A8);
    v44 = sub_21B6C8E84();

    if (v44 >> 62)
    {
      v45 = sub_21B6C9454();
      if (v45)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_35:
        if (v45 < 1)
        {
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        for (j = 0; j != v45; ++j)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x21CEF66E0](j, v44);
          }

          else
          {
            v47 = *(v44 + 8 * j + 32);
          }

          v48 = v47;
          type metadata accessor for LockScreenPosterCollectionViewCell();
          v49 = swift_dynamicCastClass();
          if (v49)
          {
            v50 = v12[v39];
            v51 = *(v49 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined);
            *(v49 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined) = v50;
            if (v50 != v51)
            {
              sub_21B666B28();
            }
          }
        }
      }
    }

    a4 = v99;
    goto LABEL_47;
  }

  v15 = v100;
LABEL_18:
}