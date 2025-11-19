BOOL sub_1C00A9274(void *a1, uint64_t *a2)
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

void *sub_1C00A92E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C00A934C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C00A94B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C00A9504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return UserGuide.topicIdentifier.setter(v2, v3);
}

uint64_t sub_1C00A9544()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A95AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C00A9608(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C00A9698()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A96D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C00A9718()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9750()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9790()
{
  v1 = sub_1C014BEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A985C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C0107FF4(v4);
}

uint64_t sub_1C00A9888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C00A9898()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A98D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9910()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A995C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A9A00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9A38()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9AEC()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9B24()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C00A9C00()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C00A9CC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00A9CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00A9D34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1C00A9D90(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C011D034(v2);
}

uint64_t sub_1C00A9DEC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00A9E34()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = sub_1C014BD40();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8 + 8);

  v11 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v2 | 7);
}

uint64_t sub_1C00A9F98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C00AA0EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA124()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA168()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00AA204@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C00AA310()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA348()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA388()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA3C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C00AA410()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00AA458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CSSearchableItemAttributeSet.correlationIdentifier.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C00AA4B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CSSearchableItemAttributeSet.collectionIdentifier.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C00AA508()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA544()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C00AA5CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA61C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA654()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C00AA694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA6E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA71C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C00AA754()
{
  MEMORY[0x1C68D7FD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C00AA78C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C00AA7D4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C00AE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1C00B008C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00C35D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00C4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00C9370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C00C9CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
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

void sub_1C00CF4AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C00D00A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C00D0734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1C00D2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D2A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D717C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00D738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D77B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D7FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id location, char a62)
{
  objc_destroyWeak(&a59);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D8C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00D971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1C00DA13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 232), 8);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_1C00DDF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00DE750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DE8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DEC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E15F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00E198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C00E206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TPSXPCServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3F54F30];
  v1 = objc_opt_class();
  v2 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v2 forSelector:sel_contentWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v3 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v3 forSelector:sel_contentWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:v1];
  [v0 setClasses:v4 forSelector:sel_supportFlowContentWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_logAnalyticsEvent_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_logAnalyticsEvents_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v9 forSelector:sel_contentForVariant_completionHandler_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v10 forSelector:sel_fetchAssetsWithAssetsConfiguration_completionHandler_ argumentIndex:0 ofReply:1];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_userGuideMapWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [TPSSearchQueryXPCInterfaceBuilder configure:v0];

  return v0;
}

void sub_1C00E5290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C00E7A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PingPongClientLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!PingPongClientLibraryCore_frameworkLibrary)
  {
    PingPongClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PingPongClientLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PingPongClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPPCExtensibleSSOAuthenticatorClass_block_invoke(uint64_t a1)
{
  PingPongClientLibrary();
  result = objc_getClass("PPCExtensibleSSOAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCExtensibleSSOAuthenticatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPPCExtensibleSSOAuthenticatorClass_block_invoke_cold_1();
    return PingPongClientLibrary();
  }

  return result;
}

uint64_t PingPongClientLibrary()
{
  v0 = PingPongClientLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getkExtensibleSSOUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkExtensibleSSOTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PingPongClientLibrary();
  result = dlsym(v2, "kExtensibleSSOTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkExtensibleSSOTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C00E9ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C00ECF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PingPongClientLibraryCore_0()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!PingPongClientLibraryCore_frameworkLibrary_0)
  {
    PingPongClientLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = PingPongClientLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PingPongClientLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PingPongClientLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPPCRedirectClass_block_invoke(uint64_t a1)
{
  if (!PingPongClientLibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("PPCRedirect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPPCRedirectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getPPCRedirectClass_block_invoke_cold_1();
    return +[(TPSAnalyticsEventSearchResultSelected *)v4];
  }

  return result;
}

void sub_1C00F76D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

unint64_t sub_1C00F7C94()
{
  v1 = sub_1C00F97A8(MEMORY[0x1E69E7CC0], &qword_1EBE064A8, &qword_1C0155FB8);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F8C60(v2, 0x6C757365725F6564, 0xEF6E776F68735F74, isUniquelyReferenced_nonNull_native, sub_1C012F8F0, sub_1C0104504);
  return v1;
}

uint64_t sub_1C00F7DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C00F9954(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1C00F8788(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1C00F98F4(a1, &qword_1EBE06490, &qword_1C0155FA0);
    sub_1C0136870(a2, a3, v10);

    return sub_1C00F98F4(v10, &qword_1EBE06490, &qword_1C0155FA0);
  }

  return result;
}

uint64_t sub_1C00F7EE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    v14 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v7;
    sub_1C00F8C60(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v26;
  }

  else
  {
    v19 = *v7;
    v20 = sub_1C012EBF4(a2, a3);
    LOBYTE(v19) = v21;

    if (v19)
    {
      v22 = *v8;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v8;
      v27 = *v8;
      if (!v23)
      {
        a7();
        v24 = v27;
      }

      v25 = *(*(v24 + 48) + 16 * v20 + 8);

      result = a6(v20, v24);
      *v8 = v24;
    }
  }

  return result;
}

uint64_t sub_1C00F8004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C00F98DC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1C00F8AE0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1C00F98F4(a1, &qword_1EBE06458, &qword_1C0157670);
    sub_1C0136914(a2, a3, v10);

    return sub_1C00F98F4(v10, &qword_1EBE06458, &qword_1C0157670);
  }

  return result;
}

uint64_t TPSAnalyticsEventDeviceExpertDisplayed.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TPSAnalyticsEventDeviceExpertDisplayed.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

void *sub_1C00F81FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C00F8228@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C00F82E8(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C00F8354(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C00F83C0(void *a1, uint64_t a2)
{
  v4 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C00F8474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C00F84F0()
{
  v2 = *v0;
  sub_1C014CAE0();
  sub_1C014C1B0();
  return sub_1C014CB10();
}

uint64_t sub_1C00F8550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C00F98A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C00F8590(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE064C8, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C00F85FC(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE064C8, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C00F866C(uint64_t a1)
{
  v2 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C00F86D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C00F9104(&qword_1EBE06500, type metadata accessor for CSSearchQueryError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

_OWORD *sub_1C00F8788(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C012EBF4(a2, a3);
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
      sub_1C012F904();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0104518(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C012EBF4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C014CA60();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1C00F9954(a1, v23);
  }

  else
  {
    sub_1C00F8DF4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1C00F88D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_1C014BD80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1C012ECDC(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_1C012FC10();
      goto LABEL_9;
    }

    sub_1C0104A70(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1C012ECDC(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1C014CA60();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_1C00F8E60(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_1C00F8AE0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C012EBF4(a2, a3);
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
      sub_1C01306FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0104E38(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C012EBF4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C014CA60();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1C00F98DC(a1, v23);
  }

  else
  {
    sub_1C00F8F20(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1C00F8C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C012EBF4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1C012EBF4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        v15 = sub_1C014CA60();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v15, v28);
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8](v15, v28);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

_OWORD *sub_1C00F8DF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C00F9954(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1C00F8E60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1C014BD80();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1C00F8F20(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C00F98DC(a4, a5[7] + 40 * a1);
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

uint64_t sub_1C00F9018(uint64_t a1, int a2)
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

uint64_t sub_1C00F9038(uint64_t result, int a2, int a3)
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

uint64_t sub_1C00F9104(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C00F91DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
    v3 = sub_1C014C910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C00F99B0(v4, &v13, &qword_1EBE064A0, &qword_1C0155FB0);
      v5 = v13;
      v6 = v14;
      result = sub_1C012EBF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C00F9954(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C00F930C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
    v3 = sub_1C014C910();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C012EBF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1C00F9450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06480, &qword_1C0155F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
    v8 = sub_1C014C910();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C00F99B0(v10, v6, &qword_1EBE06480, &qword_1C0155F90);
      result = sub_1C012ECDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C014BD80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1C00F964C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
    v3 = sub_1C014C910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C00F99B0(v4, &v13, &qword_1EBE06470, &unk_1C0155F80);
      v5 = v13;
      v6 = v14;
      result = sub_1C012EBF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C00F98DC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1C00F97A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C014C910();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C012EBF4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_1C00F98A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1C00F98DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C00F98F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1C00F9954(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C00F99B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C00F9BA8(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1C00F9C40()
{
  result = qword_1EBE064F0;
  if (!qword_1EBE064F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE064F0);
  }

  return result;
}

void *TPSAnalyticsChecklistSession.__allocating_init(sessionStartSuggestedTipCount:sessionEndSuggestedTipCount:sessionTipsCompleted:timeSpent:isFirstLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v10 = swift_allocObject();
  *(v10 + 69) = 0;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 64) = a5;
  *(v10 + 68) = a4;
  return TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
}

void *TPSAnalyticsChecklistSession.init(sessionStartSuggestedTipCount:sessionEndSuggestedTipCount:sessionTipsCompleted:timeSpent:isFirstLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  *(v5 + 69) = 0;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 64) = a5;
  *(v5 + 68) = a4;
  return TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
}

unint64_t sub_1C00F9E1C()
{
  v1 = v0;
  v2 = sub_1C00F8F90(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 40);
  v4 = sub_1C014C530();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v4, 0xD000000000000012, 0x80000001C015B470, isUniquelyReferenced_nonNull_native);
  v6 = *(v1 + 48);
  v7 = sub_1C014C530();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v7, 0xD000000000000010, 0x80000001C015B490, v8);
  v9 = *(v1 + 56);
  v10 = sub_1C014C530();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v10, 0xD000000000000016, 0x80000001C015B4B0, v11);
  v12 = *(v1 + 64);
  v13 = sub_1C014C4E0();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v13, 0x6570735F656D6974, 0xEA0000000000746ELL, v14);
  v15 = *(v1 + 68);
  v16 = sub_1C014C410();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v16, 0x69745F7473726966, 0xEF67616C665F656DLL, v17);
  [objc_opt_self() isSeniorUser];
  v18 = sub_1C014C410();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v18, 0x67616C665F353675, 0xE800000000000000, v19);
  return v2;
}

uint64_t TPSAnalyticsChecklistSession.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TPSAnalyticsChecklistSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 70, 7);
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_1C00FA23C(a1);
  v9 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v10 = sub_1C014C3B0();

  v11 = [v9 initWithArray_];

  sub_1C014C500();
  v12 = sub_1C014C4F0();

  [v5 setClasses:v12 forSelector:a2 argumentIndex:a3 ofReply:a4 & 1];
}

uint64_t sub_1C00FA23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C0109030(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06570, &qword_1C01562F8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C0109030((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C00F9954(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1C00FA59C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1C014C200();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C00FA630(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1C00FA690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C014C230();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C00FA718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1C00FA774(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

id sub_1C00FA8F4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___TPSLinkedDocument_bundleId];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR___TPSLinkedDocument_documentId];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___TPSLinkedDocument_platform];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR___TPSLinkedDocument_product];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR___TPSLinkedDocument_productVersion];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = sub_1C014C160();
  v61.receiver = v1;
  v61.super_class = type metadata accessor for LinkedDocument();
  v9 = objc_msgSendSuper2(&v61, sel_initWithDictionary_, v8);
  v10 = v9;

  if (!v10)
  {

    return 0;
  }

  strcpy(v55, "bundleId");
  BYTE1(v55[1]) = 0;
  WORD1(v55[1]) = 0;
  HIDWORD(v55[1]) = -402653184;
  v11 = v10;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v12 = sub_1C012EC98(v60), (v13 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v12, v55);
    sub_1C00FC104(v60);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v58;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = *(&v58 + 1);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v60);
    v15 = 0;
    v16 = 0;
  }

  v17 = &v11[OBJC_IVAR___TPSLinkedDocument_bundleId];
  swift_beginAccess();
  v18 = *(v17 + 1);
  *v17 = v15;
  *(v17 + 1) = v16;

  strcpy(v55, "documentId");
  BYTE3(v55[1]) = 0;
  HIDWORD(v55[1]) = -369098752;
  sub_1C014C7A0();
  if (!*(a1 + 16) || (v19 = sub_1C012EC98(v60), (v20 & 1) == 0))
  {
    sub_1C00FC104(v60);
    v56 = 0u;
    v57 = 0u;
    *&v58 = 0x64496369706F74;
    *(&v58 + 1) = 0xE700000000000000;
    sub_1C014C7A0();
    if (*(a1 + 16) && (v21 = sub_1C012EC98(v55), (v22 & 1) != 0))
    {
      sub_1C00FC1C0(*(a1 + 56) + 32 * v21, &v58);
      sub_1C00FC104(v55);
      if (!*(&v57 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1C00FC104(v55);
      v58 = 0u;
      v59 = 0u;
      if (!*(&v57 + 1))
      {
        goto LABEL_22;
      }
    }

    sub_1C00FC158(&v56);
    goto LABEL_22;
  }

  sub_1C00FC1C0(*(a1 + 56) + 32 * v19, &v56);
  sub_1C00FC104(v60);
  sub_1C00F9954(&v56, &v58);
LABEL_22:
  if (*(&v59 + 1))
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v60[0];
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v60[1];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_1C00FC158(&v58);
    v24 = 0;
    v25 = 0;
  }

  v26 = &v11[OBJC_IVAR___TPSLinkedDocument_documentId];
  swift_beginAccess();
  v27 = *(v26 + 1);
  *v26 = v24;
  *(v26 + 1) = v25;

  strcpy(v55, "platform");
  BYTE1(v55[1]) = 0;
  WORD1(v55[1]) = 0;
  HIDWORD(v55[1]) = -402653184;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v28 = sub_1C012EC98(v60), (v29 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v28, v55);
    sub_1C00FC104(v60);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v31 = v56;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = *(&v56 + 1);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v60);
    v31 = 0;
    v32 = 0;
  }

  v33 = &v11[OBJC_IVAR___TPSLinkedDocument_platform];
  swift_beginAccess();
  v34 = *(v33 + 1);
  *v33 = v31;
  *(v33 + 1) = v32;

  strcpy(v55, "product");
  v55[1] = 0xE700000000000000;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v35 = sub_1C012EC98(v60), (v36 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v35, v55);
    sub_1C00FC104(v60);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v53;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v54;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    sub_1C00FC104(v60);
    v38 = 0;
    v39 = 0;
  }

  v40 = &v11[OBJC_IVAR___TPSLinkedDocument_product];
  swift_beginAccess();
  v41 = *(v40 + 1);
  *v40 = v38;
  *(v40 + 1) = v39;

  strcpy(v55, "productVersion");
  HIBYTE(v55[1]) = -18;
  sub_1C014C7A0();
  if (*(a1 + 16) && (v42 = sub_1C012EC98(v60), (v43 & 1) != 0))
  {
    sub_1C00FC1C0(*(a1 + 56) + 32 * v42, v55);
    sub_1C00FC104(v60);

    v44 = swift_dynamicCast();
    if (v44)
    {
      v45 = v51;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v52;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {

    sub_1C00FC104(v60);
    v45 = 0;
    v46 = 0;
  }

  v47 = &v11[OBJC_IVAR___TPSLinkedDocument_productVersion];
  swift_beginAccess();
  v48 = *(v47 + 1);
  *v47 = v45;
  *(v47 + 1) = v46;

  if (*(v17 + 1) || *(v26 + 1) || *(v33 + 1))
  {

    return v9;
  }

  v50 = *(v40 + 1);

  if (v50)
  {

    return v9;
  }

  return 0;
}

id sub_1C00FAF6C(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___TPSLinkedDocument_bundleId];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___TPSLinkedDocument_documentId];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___TPSLinkedDocument_platform];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___TPSLinkedDocument_product];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___TPSLinkedDocument_productVersion];
  v9 = type metadata accessor for LinkedDocument();
  *v8 = 0;
  *(v8 + 1) = 0;
  v29.receiver = v2;
  v29.super_class = v9;
  v10 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
  if (v10)
  {
    sub_1C00FC0B8();
    v11 = v10;
    v12 = sub_1C014C5E0();
    sub_1C014C220();

    v13 = &v11[OBJC_IVAR___TPSLinkedDocument_bundleId];
    swift_beginAccess();
    v14 = *(v13 + 1);
    *v13 = 0;
    *(v13 + 1) = 0;

    v15 = sub_1C014C5E0();
    sub_1C014C220();

    v16 = &v11[OBJC_IVAR___TPSLinkedDocument_documentId];
    swift_beginAccess();
    v17 = *(v16 + 1);
    *v16 = 0;
    *(v16 + 1) = 0;

    v18 = sub_1C014C5E0();
    sub_1C014C220();

    v19 = &v11[OBJC_IVAR___TPSLinkedDocument_platform];
    swift_beginAccess();
    v20 = *(v19 + 1);
    *v19 = 0;
    *(v19 + 1) = 0;

    v21 = sub_1C014C5E0();
    sub_1C014C220();

    v22 = &v11[OBJC_IVAR___TPSLinkedDocument_product];
    swift_beginAccess();
    v23 = *(v22 + 1);
    *v22 = 0;
    *(v22 + 1) = 0;

    v24 = sub_1C014C5E0();
    if (v24)
    {
      v25 = v24;
      sub_1C014C220();
    }

    v26 = &v11[OBJC_IVAR___TPSLinkedDocument_productVersion];
    swift_beginAccess();
    v27 = *(v26 + 1);
    *v26 = 0;
    *(v26 + 1) = 0;
  }

  else
  {
  }

  return v10;
}

void sub_1C00FB2F4(void *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for LinkedDocument();
  objc_msgSendSuper2(&v23, sel_encodeWithCoder_, a1);
  v3 = &v1[OBJC_IVAR___TPSLinkedDocument_bundleId];
  swift_beginAccess();
  if (*(v3 + 1))
  {
    v4 = *v3;

    v5 = sub_1C014C200();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C014C200();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = &v1[OBJC_IVAR___TPSLinkedDocument_documentId];
  swift_beginAccess();
  if (*(v7 + 1))
  {
    v8 = *v7;

    v9 = sub_1C014C200();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1C014C200();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = &v1[OBJC_IVAR___TPSLinkedDocument_platform];
  swift_beginAccess();
  if (*(v11 + 1))
  {
    v12 = *v11;

    v13 = sub_1C014C200();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1C014C200();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = &v1[OBJC_IVAR___TPSLinkedDocument_product];
  swift_beginAccess();
  if (*(v15 + 1))
  {
    v16 = *v15;

    v17 = sub_1C014C200();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1C014C200();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = &v1[OBJC_IVAR___TPSLinkedDocument_productVersion];
  swift_beginAccess();
  if (*(v19 + 1))
  {
    v20 = *v19;

    v21 = sub_1C014C200();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1C014C200();
  [a1 encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();
}

char *sub_1C00FB694@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = type metadata accessor for LinkedDocument();
  v35.receiver = v2;
  v35.super_class = v5;
  objc_msgSendSuper2(&v35, sel_copyWithZone_, a1);
  sub_1C014C6E0();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v6 = v34;
    v7 = &v2[OBJC_IVAR___TPSLinkedDocument_bundleId];
    swift_beginAccess();
    v9 = *v7;
    v8 = *(v7 + 1);
    v10 = (v34 + OBJC_IVAR___TPSLinkedDocument_bundleId);
    swift_beginAccess();
    v11 = v10[1];
    *v10 = v9;
    v10[1] = v8;

    v12 = &v2[OBJC_IVAR___TPSLinkedDocument_documentId];
    swift_beginAccess();
    v14 = *v12;
    v13 = *(v12 + 1);
    v15 = (v34 + OBJC_IVAR___TPSLinkedDocument_documentId);
    swift_beginAccess();
    v16 = v15[1];
    *v15 = v14;
    v15[1] = v13;

    v17 = &v2[OBJC_IVAR___TPSLinkedDocument_platform];
    swift_beginAccess();
    v19 = *v17;
    v18 = *(v17 + 1);
    v20 = (v34 + OBJC_IVAR___TPSLinkedDocument_platform);
    swift_beginAccess();
    v21 = v20[1];
    *v20 = v19;
    v20[1] = v18;

    v22 = &v2[OBJC_IVAR___TPSLinkedDocument_product];
    swift_beginAccess();
    v24 = *v22;
    v23 = *(v22 + 1);
    v25 = (v34 + OBJC_IVAR___TPSLinkedDocument_product);
    swift_beginAccess();
    v26 = v25[1];
    *v25 = v24;
    v25[1] = v23;

    v27 = &v2[OBJC_IVAR___TPSLinkedDocument_productVersion];
    swift_beginAccess();
    v29 = *v27;
    v28 = *(v27 + 1);
    v30 = (v34 + OBJC_IVAR___TPSLinkedDocument_productVersion);
    swift_beginAccess();
    v31 = v30[1];
    *v30 = v29;
    v30[1] = v28;
  }

  else
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A0, &qword_1C0156300);
    a2[1] = v33;
    result = v2;
    v6 = sub_1C00FBCAC;
  }

  a2[3] = v5;
  *a2 = v6;
  return result;
}

id LinkedDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkedDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkedDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8TipsCore14LinkedDocumentC06linkedD14FromDictionary10dictionarySDys11AnyHashableVypGSgAH_tFZ_0(uint64_t a1)
{
  strcpy(v8, "linkedDocument");
  HIBYTE(v8[1]) = -18;
  sub_1C014C7A0();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v2 = sub_1C012EC98(v9);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1C00FC1C0(*(a1 + 56) + 32 * v2, v10);
  sub_1C00FC104(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v8[0];
  v8[0] = 0x7372747461;
  v8[1] = 0xE500000000000000;
  sub_1C014C7A0();
  if (!*(v4 + 16) || (v5 = sub_1C012EC98(v9), (v6 & 1) == 0))
  {

LABEL_9:
    sub_1C00FC104(v9);
    return 0;
  }

  sub_1C00FC1C0(*(v4 + 56) + 32 * v5, v10);
  sub_1C00FC104(v9);

  if (swift_dynamicCast())
  {
    return v8[0];
  }

  return 0;
}

uint64_t sub_1C00FBCAC()
{
  [*(v0 + 16) copy];
  sub_1C014C6E0();

  return swift_unknownObjectRelease();
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C00FC0B8()
{
  result = qword_1EDD44B60;
  if (!qword_1EDD44B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44B60);
  }

  return result;
}

uint64_t sub_1C00FC158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06490, &qword_1C0155FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C00FC1C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C00FC2C0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C00FC37C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C00FC3D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1C00FC504()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C00FC5C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C00FC614(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1C00FC718()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

double SupportArticle.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  return result;
}

uint64_t SupportArticle.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return v2;
}

void *SupportArticle.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t SupportArticle.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t SupportArticle.supportSiteURLString.getter()
{
  v1 = *v0;
  v2 = sub_1C014BB90();
  v3 = *(v2 - 8);
  v4 = v3[8];
  (MEMORY[0x1EEE9AC00])();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v9 = &v28 - v8;
  v10 = sub_1C014BC50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x1EEE9AC00])();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  sub_1C00FCF48();
  sub_1C014BC10();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C00FCBD4(v9);
    return 0;
  }

  else
  {
    v19 = sub_1C00FCC3C();
    v33 = v17;
    v34 = v19;
    v35 = v20;
    v32 = *MEMORY[0x1E6968F70];
    v29 = v0;
    v21 = v2;
    v31 = v3[13];
    v31(v6);
    v28 = sub_1C00FCDA8();
    sub_1C014BC40();
    v30 = v3[1];
    v30(v6, v2);

    v22 = *(v11 + 8);
    v22(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C0156330;
    v24 = v29[7];
    *(v23 + 32) = v29[6];
    *(v23 + 40) = v24;
    (v31)(v6, v32, v2);

    v25 = v33;
    sub_1C014BC20();

    v30(v6, v21);
    v22(v15, v10);
    v26 = v25;
    v27 = sub_1C014BBA0();
    v22(v26, v10);
    return v27;
  }
}

uint64_t sub_1C00FCBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C00FCC3C()
{
  v0 = sub_1C014BDC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 preferredLanguages];
  v7 = sub_1C014C3C0();
  if (v7[2])
  {
    v8 = v7[4];
    v9 = v7[5];

    return v8;
  }

  result = [v5 preferredLocale];
  if (result)
  {
    v11 = result;

    sub_1C014BDA0();
    v8 = sub_1C014BD90();
    (*(v1 + 8))(v4, v0);
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C00FCDA8()
{
  result = qword_1EDD44930;
  if (!qword_1EDD44930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44930);
  }

  return result;
}

uint64_t URL.TipSchemeAction.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (!*(v0 + 64))
  {
    MEMORY[0x1C68D7300](1);
    if (v2)
    {
      sub_1C014CB00();
      sub_1C014C2E0();
      if (v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C014CB00();
      if (v4)
      {
LABEL_10:
        sub_1C014CB00();
        sub_1C014C2E0();
        if (!v6)
        {
          return sub_1C014CB00();
        }

        goto LABEL_19;
      }
    }

    sub_1C014CB00();
    if (v6)
    {
      goto LABEL_19;
    }

    return sub_1C014CB00();
  }

  if (*(v0 + 64) != 1)
  {
    return MEMORY[0x1C68D7300](0);
  }

  v7 = v0[6];
  v8 = v0[7];
  MEMORY[0x1C68D7300](2);
  if (v2)
  {
    sub_1C014CB00();
    sub_1C014C2E0();
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1C014CB00();
    if (v4)
    {
LABEL_5:
      sub_1C014CB00();
      sub_1C014C2E0();
      if (v6)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  sub_1C014CB00();
  if (!v6)
  {
LABEL_15:
    sub_1C014CB00();
    if (v8)
    {
      goto LABEL_19;
    }

    return sub_1C014CB00();
  }

LABEL_6:
  sub_1C014CB00();
  sub_1C014C2E0();
  if (!v8)
  {
    return sub_1C014CB00();
  }

LABEL_19:
  sub_1C014CB00();

  return sub_1C014C2E0();
}

uint64_t URL.TipSchemeAction.hashValue.getter()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)();
  return sub_1C014CB10();
}

uint64_t sub_1C00FD160()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)();
  return sub_1C014CB10();
}

uint64_t sub_1C00FD1A4()
{
  sub_1C014CAE0();
  URL.TipSchemeAction.hash(into:)();
  return sub_1C014CB10();
}

uint64_t URL.isTipsScheme.getter()
{
  v0 = sub_1C014BC00();
  v2 = v1;
  v3 = sub_1C014C230();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1C014C9F0();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t URL.isSupportArticle.getter()
{
  sub_1C014BBD0();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = sub_1C014C2A0();
  v3 = v2;

  if (v1 == qword_1EBE065B0 && v3 == off_1EBE065B8)
  {

    goto LABEL_9;
  }

  v5 = sub_1C014C9F0();

  if (v5)
  {
LABEL_9:
    sub_1C014BBE0();
    v7 = sub_1C014C360();

    v6 = v7 ^ 1;
    return v6 & 1;
  }

LABEL_7:
  v6 = 0;
  return v6 & 1;
}

double URL.action.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C014BC00();
  v4 = v3;
  v5 = sub_1C014C230();
  if (!v4)
  {
    goto LABEL_18;
  }

  if (v2 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1C014C9F0();

    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v9 = sub_1C014BBD0();
  v11 = v10;
  v12 = sub_1C014C230();
  if (!v11)
  {

    sub_1C014C230();
LABEL_18:

    goto LABEL_19;
  }

  if (v12 == v9 && v11 == v13)
  {

LABEL_22:

    sub_1C00FD680(v37);
    *&v16 = *&v37[0];
    v18 = v37[1];
    v19 = v37[2];
    *a1 = v37[0];
    *(a1 + 16) = v18;
    *(a1 + 32) = v19;
    *(a1 + 64) = 0;
    return *&v16;
  }

  v15 = sub_1C014C9F0();

  if (v15)
  {
    goto LABEL_22;
  }

  if (sub_1C014C230() == v9 && v11 == v20)
  {
  }

  else
  {
    v21 = sub_1C014C9F0();

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v22 = _s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0();
  if (v22)
  {
    v24 = *&v22[OBJC_IVAR___TPSUserGuide_identifier];
    v23 = *&v22[OBJC_IVAR___TPSUserGuide_identifier + 8];
    v25 = v22;
    swift_getKeyPath();
    *&v37[0] = v25;
    sub_1C00FEFF4(&qword_1EBE065D8, type metadata accessor for UserGuide);

    sub_1C014BF00();

    v26 = &v25[OBJC_IVAR___TPSUserGuide__topicIdentifier];
    swift_beginAccess();
    v27 = *(v26 + 1);
    v28 = &v25[OBJC_IVAR___TPSUserGuide_version];
    v36 = *v26;
    swift_beginAccess();
    v29 = *(v28 + 1);
    v30 = &v25[OBJC_IVAR___TPSUserGuide_referrer];
    v35 = *v28;
    swift_beginAccess();
    v32 = *v30;
    v31 = *(v30 + 1);

    *a1 = v24;
    *(a1 + 8) = v23;
    *&v33 = v35;
    *&v16 = v36;
    *(&v16 + 1) = v27;
    *(&v33 + 1) = v29;
    *(a1 + 16) = v16;
    *(a1 + 32) = v33;
    *(a1 + 48) = v32;
    *(a1 + 56) = v31;
    v17 = 1;
    goto LABEL_20;
  }

LABEL_19:
  *&v16 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v17 = 2;
LABEL_20:
  *(a1 + 64) = v17;
  return *&v16;
}

void sub_1C00FD680(uint64_t *a1@<X8>)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_1C014BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014BC00();
  v13 = v12;
  v14 = sub_1C014C230();
  if (!v13)
  {

    v18 = 0;
    v19 = 0;
LABEL_13:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_23;
  }

  if (v11 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1C014C9F0();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1C014B9E0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C00F98F4(v5, &qword_1EBE065E0, &unk_1C0157A70);
LABEL_12:
    v18 = 0;
    v19 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C014B9C0();
  v23 = objc_opt_self();
  sub_1C014B9A0();
  v24 = sub_1C014C3B0();

  v40 = 0;
  v41[0] = 0;
  v39 = 0;
  [v23 getValuesFromOpenURLSchemeQueryItems:v24 tipIdentifier:v41 collectionIdentifier:&v40 referrer:&v39];

  v25 = v39;
  v26 = v41[0];
  v38 = v40;
  if (!v40)
  {
    v18 = 0;
    v19 = 0;
    v36 = v41[0];
    if (v41[0])
    {
      goto LABEL_16;
    }

LABEL_18:
    v30 = v25;
    v13 = 0;
    v20 = 0;
    v26 = v38;
    goto LABEL_19;
  }

  v18 = sub_1C014C230();
  v19 = v27;
  v36 = v26;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_16:
  v13 = sub_1C014C230();
  v20 = v28;
  v29 = v25;
  v30 = v38;
LABEL_19:
  v37 = v7;
  v31 = v30;
  v32 = v26;
  if (v25)
  {
    v21 = sub_1C014C230();
    v22 = v33;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  (*(v37 + 8))(v10, v6);

LABEL_23:
  *a1 = v18;
  a1[1] = v19;
  a1[2] = v13;
  a1[3] = v20;
  a1[4] = v21;
  a1[5] = v22;
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t URL.appendQueryParamIfMissing(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v46 = sub_1C014B9A0();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_1C014BA60();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C00F98F4(v17, &qword_1EBE065E0, &unk_1C0157A70);
    v23 = sub_1C014BC50();
    return (*(*(v23 - 8) + 56))(a5, 1, 1, v23);
  }

  else
  {
    v38 = v11;
    v41 = v18;
    v42 = a5;
    v40 = v19;
    (*(v19 + 32))(v22, v17, v18);
    v39 = v22;
    v25 = sub_1C014B9C0();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v27 = v26[2];
    v28 = (v7 + 8);

    v29 = 0;
    while (v27 != v29)
    {
      if (v29 >= v26[2])
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v7 + 16))(v13, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29, v46);
      if (sub_1C014B980() == a1 && v31 == v45)
      {

        (*v28)(v13, v46);
LABEL_13:
        swift_bridgeObjectRelease_n();
        v32 = v41;
        v33 = v39;
        v34 = v40;
        goto LABEL_18;
      }

      ++v29;
      v30 = sub_1C014C9F0();

      (*v28)(v13, v46);
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v13 = v38;
    sub_1C014B970();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }

LABEL_20:
    v26 = sub_1C00FE5B8(0, v26[2] + 1, 1, v26, &qword_1EBE065F0, &qword_1C01563D8, MEMORY[0x1E6968178]);
LABEL_15:
    v32 = v41;
    v33 = v39;
    v34 = v40;
    v36 = v26[2];
    v35 = v26[3];
    if (v36 >= v35 >> 1)
    {
      v26 = sub_1C00FE5B8(v35 > 1, v36 + 1, 1, v26, &qword_1EBE065F0, &qword_1C01563D8, MEMORY[0x1E6968178]);
    }

    v26[2] = v36 + 1;
    (*(v7 + 32))(v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36, v13, v46);
    sub_1C014B9D0();
LABEL_18:
    sub_1C014B9F0();
    return (*(v34 + 8))(v33, v32);
  }
}

Swift::Bool __swiftcall URL.hasQueryParams(queryItems:)(Swift::OpaquePointer queryItems)
{
  v2 = sub_1C014B9A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  sub_1C014B9E0();
  v11 = sub_1C014BA60();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C00F98F4(v10, &qword_1EBE065E0, &unk_1C0157A70);
    return 0;
  }

  v13 = sub_1C014B9C0();
  (*(v12 + 8))(v10, v11);
  if (!v13)
  {
    return 0;
  }

  v28 = *(queryItems._rawValue + 2);
  if (v28)
  {
    v14 = 0;
    v17 = *(v3 + 16);
    v16 = v3 + 16;
    v15 = v17;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v19 = queryItems._rawValue + v18;
    v20 = *(v16 + 56);
    v21 = v13 + v18;
    v29 = (v16 - 8);
    v26 = queryItems._rawValue + v18;
    v27 = v17;
    v25 = v13 + v18;
    while (2)
    {
      v15(v6, &v19[v20 * v14++], v2);
      v22 = *(v13 + 16) + 1;
      do
      {
        if (!--v22)
        {
          (*v29)(v6, v2);

          return 0;
        }

        sub_1C00FEFF4(&qword_1EBE065E8, MEMORY[0x1E6968178]);
        v21 += v20;
      }

      while ((sub_1C014C1D0() & 1) == 0);
      (*v29)(v6, v2);
      v15 = v27;
      v21 = v25;
      v19 = v26;
      if (v14 != v28)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t URL.appendingSupportArticleQueryParam()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065F0, &qword_1C01563D8);
  v0 = sub_1C014B9A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0156390;
  if (qword_1EBE06350 != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = v4 + v3;
  v6 = __swift_project_value_buffer(v0, qword_1EBE065C0);
  (*(v1 + 16))(v5, v6, v0);
  sub_1C014B970();
  sub_1C014BC30();
}

uint64_t sub_1C00FE330()
{
  v0 = sub_1C014B9A0();
  __swift_allocate_value_buffer(v0, qword_1EBE065C0);
  __swift_project_value_buffer(v0, qword_1EBE065C0);
  return sub_1C014B970();
}

uint64_t static URLQueryItem.headerlessDisplayMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE06350 != -1)
  {
    swift_once();
  }

  v2 = sub_1C014B9A0();
  v3 = __swift_project_value_buffer(v2, qword_1EBE065C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C00FE45C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C00FEFF4(&qword_1EBE065D8, type metadata accessor for UserGuide);
  sub_1C014BF00();

  v4 = (v3 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C00FE528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return UserGuide.topicIdentifier.setter(v2, v3);
}

size_t sub_1C00FE5B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C00FE794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06608, &qword_1C0156508);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C00FE898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C00FE9A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06618, &qword_1C0156518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06CB0, &qword_1C0156328);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C00FEAD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06610, &qword_1C0156510);
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

BOOL _s10Foundation3URLV8TipsCoreE15TipSchemeActionO2eeoiySbAF_AFtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v34 = a2[2];
  v35 = v6;
  v7 = a2[1];
  v32 = *a2;
  v33 = v7;
  v8 = a1[3];
  v37[2] = v29;
  v37[3] = v8;
  v37[0] = v27;
  v37[1] = v2;
  v40 = v5;
  v41 = v34;
  v42 = a2[3];
  v31 = *(a1 + 64);
  v36 = a2[4].i8[0];
  v38 = *(a1 + 64);
  v43 = a2[4].i8[0];
  v39 = v32;
  if (v31)
  {
    if (v31 != 1)
    {
      if (v36 != 2)
      {
        goto LABEL_48;
      }

      v17 = vorrq_s8(vorrq_s8(v32, v34), vorrq_s8(v33, v35));
      if (vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        goto LABEL_48;
      }

      goto LABEL_17;
    }

    if (v36 != 1)
    {
      goto LABEL_48;
    }

    v9 = *(&v30 + 1);
    v10 = v30;
    v12 = v34.i64[1];
    v11 = v34.i64[0];
    v13 = v35.i64[1];
    v14 = v35.i64[0];
    if (*(&v27 + 1))
    {
      if (!v32.i64[1])
      {
        goto LABEL_48;
      }

      if (v27 != *&v32)
      {
        v15 = sub_1C014C9F0();
        v11 = v34.i64[0];
        v13 = v35.i64[1];
        v9 = *(&v30 + 1);
        v10 = v30;
        v14 = v35.i64[0];
        v12 = v34.i64[1];
        if ((v15 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v32.i64[1])
    {
      goto LABEL_48;
    }

    if (*(&v28 + 1))
    {
      if (!v33.i64[1])
      {
        goto LABEL_48;
      }

      if (v28 != *&v33)
      {
        v19 = v13;
        v20 = v11;
        v21 = sub_1C014C9F0();
        v11 = v20;
        v13 = v19;
        if ((v21 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v33.i64[1])
    {
      goto LABEL_48;
    }

    if (*(&v29 + 1))
    {
      if (!v12)
      {
        goto LABEL_48;
      }

      if (v29 != __PAIR128__(v12, v11))
      {
        v22 = v13;
        v23 = sub_1C014C9F0();
        v13 = v22;
        if ((v23 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_48;
    }

    if (v9)
    {
      if (v13)
      {
        if (v10 == v14 && v9 == v13)
        {
          goto LABEL_47;
        }

        goto LABEL_54;
      }

      goto LABEL_48;
    }

    v24 = v13;
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);

    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    if (!v24)
    {
      return 1;
    }

LABEL_51:

    return 0;
  }

  if (v36)
  {
    goto LABEL_48;
  }

  v16 = v34.i64[1];
  if (*(&v27 + 1))
  {
    if (!v32.i64[1] || v27 != *&v32 && (sub_1C014C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v32.i64[1])
  {
    goto LABEL_48;
  }

  if (*(&v28 + 1))
  {
    if (!v33.i64[1] || v28 != *&v33 && (sub_1C014C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v33.i64[1])
  {
    goto LABEL_48;
  }

  if (!*(&v29 + 1))
  {
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);

    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    if (!v16)
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v34.i64[1])
  {
    if (v29 == *&v34)
    {
LABEL_47:
      sub_1C00FF250(&v32, v26);
      sub_1C00FF250(&v27, v26);
LABEL_17:
      sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
      return 1;
    }

LABEL_54:
    v25 = sub_1C014C9F0();
    sub_1C00FF250(&v32, v26);
    sub_1C00FF250(&v27, v26);
    sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
    return (v25 & 1) != 0;
  }

LABEL_48:
  sub_1C00FF250(&v32, v26);
  sub_1C00FF250(&v27, v26);
  sub_1C00F98F4(v37, &unk_1EBE06620, &qword_1C0156520);
  return 0;
}

uint64_t sub_1C00FEFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C00FF078()
{
  result = qword_1EBE065F8;
  if (!qword_1EBE065F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE065F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLV8TipsCoreE15TipSchemeActionO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C00FF10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C00FF154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C00FF1AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
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

uint64_t sub_1C00FF288(uint64_t (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_1C014BB80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v9);
  sub_1C01007C8();
  while (1)
  {
    sub_1C014C660();
    if (!v17)
    {
      (*(v7 + 8))(v11, v6);
      return 1;
    }

    sub_1C00F9954(&v16, v15);
    v12 = a1(v15);
    if (v3)
    {
      break;
    }

    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_8:
  (*(v7 + 8))(v11, v6);
  return 0;
}

id sub_1C00FF400()
{
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  sub_1C01006C4();
  v1 = v0;
  v2 = sub_1C014C9D0();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_1C014BB60();

  v6 = [v5 userInfo];
  v7 = sub_1C014C170();

  v8 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v16[2] = &v17;
  sub_1C01002DC(v9, sub_1C010072C, v16, v7);

  v10 = [v5 domain];
  if (!v10)
  {
    sub_1C014C230();
    v10 = sub_1C014C200();
  }

  v11 = [v5 code];
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = sub_1C014C160();

  v14 = [v12 initWithDomain:v10 code:v11 userInfo:v13];

  return v14;
}

id Error.secureEncodableError()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, a1);
  v9 = sub_1C014C9D0();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v8, a1);
  }

  v12 = sub_1C014BB60();

  v13 = [v12 userInfo];
  v14 = sub_1C014C170();

  v15 = sub_1C00F91DC(MEMORY[0x1E69E7CC0]);
  v16 = MEMORY[0x1EEE9AC00](v15);
  *&v23[-32] = a1;
  *&v23[-24] = a2;
  *&v23[-16] = v2;
  sub_1C01002DC(v16, sub_1C0100640, &v23[-48], v14);

  v17 = [v12 domain];
  if (!v17)
  {
    sub_1C014C230();
    v17 = sub_1C014C200();
  }

  v18 = [v12 code];
  v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v20 = sub_1C014C160();

  v21 = [v19 initWithDomain:v17 code:v18 userInfo:v20];

  return v21;
}

uint64_t sub_1C00FF8C0(uint64_t a1, uint64_t a2)
{
  sub_1C00F99B0(a2, v10, &qword_1EBE06630, &qword_1C0156528);
  v3 = v10[0];
  v2 = v10[1];
  sub_1C00F9954(&v11, v12);
  sub_1C00FC1C0(v12, v10);
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v4 = sub_1C00FF400();
    swift_getErrorValue();
    *(&v11 + 1) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);

    sub_1C00F7DC0(v10, v3, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  sub_1C00FFBF4(v12);
  if (v6)
  {
    sub_1C00FC1C0(v12, v10);
    sub_1C00F7DC0(v10, v3, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1C00FFA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C00F99B0(a2, v14, &qword_1EBE06630, &qword_1C0156528);
  v8 = v14[0];
  v7 = v14[1];
  sub_1C00F9954(&v15, v16);
  sub_1C00FC1C0(v16, v14);
  sub_1C010074C(0, &qword_1EBE06638, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v9 = sub_1C00FF400();
    swift_getErrorValue();
    *(&v15 + 1) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0);

    sub_1C00F7DC0(v14, v8, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  if (sub_1C00FFFE0(v16, a4, a5))
  {
    sub_1C00FC1C0(v16, v14);
    sub_1C00F7DC0(v14, v8, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

void sub_1C00FFBF4(uint64_t a1)
{
  sub_1C00FC1C0(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1C00FC1C0(a1, v23);
    sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
    v2 = swift_dynamicCast();
    if (v2)
    {
      v3 = *&v22[0];
      MEMORY[0x1EEE9AC00](v2);
      v15 = v24;
      v4 = sub_1C0100898;
      v5 = MEMORY[0x1E6969F48];
LABEL_7:
      sub_1C00FF288(v4, &v14, v5);

      return;
    }

    sub_1C00FC1C0(a1, v23);
    sub_1C010074C(0, &qword_1EBE06648, 0x1E695DFD8);
    v6 = swift_dynamicCast();
    if (v6)
    {
      v3 = *&v22[0];
      MEMORY[0x1EEE9AC00](v6);
      v15 = v24;
      v4 = sub_1C0100794;
      v5 = MEMORY[0x1E6969F38];
      goto LABEL_7;
    }

    sub_1C00FC1C0(a1, v23);
    sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v17 = *&v22[0];
      v7 = [*&v22[0] allKeys];
      v8 = sub_1C014C3C0();

      v9 = *(v8 + 16);
      v18 = v8;
      v10 = v8 + 32;
      v16 = -v9;
      v11 = -1;
      while (1)
      {
        if (v16 + v11 == -1)
        {
          goto LABEL_22;
        }

        if (++v11 >= *(v18 + 16))
        {
          break;
        }

        sub_1C00FC1C0(v10, v23);
        sub_1C00FC1C0(v23, v22);
        if (!swift_dynamicCast())
        {
          goto LABEL_21;
        }

        v22[0] = v20;
        v12 = [v17 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v12)
        {
          sub_1C014C6E0();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(v22, 0, sizeof(v22));
        }

        sub_1C00F99B0(v22, &v20, &qword_1EBE06490, &qword_1C0155FA0);
        if (!v21)
        {
          sub_1C00F98F4(v22, &qword_1EBE06490, &qword_1C0155FA0);
LABEL_21:
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
LABEL_22:

          return;
        }

        v10 += 32;
        sub_1C00F9954(&v20, v19);
        v13 = sub_1C00FFBF4(v19);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_1C00F98F4(v22, &qword_1EBE06490, &qword_1C0155FA0);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1C00FFFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C00FC1C0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06CC0, &unk_1C0157CA0);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    return v11 & 1;
  }

  swift_unknownObjectRelease();
  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v25;
    MEMORY[0x1EEE9AC00](v7);
    v21 = a2;
    v22 = a3;
    v23 = v3;
    v9 = sub_1C01008B4;
    v10 = MEMORY[0x1E6969F48];
LABEL_7:
    v11 = sub_1C00FF288(v9, &v20, v10);

    return v11 & 1;
  }

  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &qword_1EBE06648, 0x1E695DFD8);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v8 = v25;
    MEMORY[0x1EEE9AC00](v12);
    v21 = a2;
    v22 = a3;
    v23 = v3;
    v9 = sub_1C0100820;
    v10 = MEMORY[0x1E6969F38];
    goto LABEL_7;
  }

  sub_1C00FC1C0(a1, v26);
  sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  if (!swift_dynamicCast())
  {
    v11 = 1;
    return v11 & 1;
  }

  v24 = a3;
  v14 = [v25 allKeys];
  v15 = sub_1C014C3C0();

  v16 = v15 + 32;
  v17 = -*(v15 + 16);
  v18 = -1;
  while (1)
  {
    v11 = v17 + v18 == -1;
    if (v17 + v18 == -1)
    {
LABEL_14:

      return v11 & 1;
    }

    if (++v18 >= *(v15 + 16))
    {
      break;
    }

    sub_1C00FC1C0(v16, v26);
    v19 = sub_1C0100434(v26, v25);
    v16 += 32;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __break(1u);
  return result;
}

uint64_t sub_1C01002DC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1C00FC1C0(*(a4 + 56) + 32 * v15, &v21);
    v20[0] = v17;
    v20[1] = v18;

    a2(&v22, v20);
    result = sub_1C00F98F4(v20, &qword_1EBE06630, &qword_1C0156528);
    if (v4)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v22;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0100434(uint64_t a1, void *a2)
{
  sub_1C00FC1C0(a1, v8);
  if (swift_dynamicCast())
  {
    v8[0] = v7;
    v3 = [a2 __swift_objectForKeyedSubscript_];
    v4 = swift_unknownObjectRelease();
    if (v3)
    {
      sub_1C014C6E0();
      v4 = swift_unknownObjectRelease();
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1C0100594(sub_1C0100854);
    sub_1C00F98F4(v8, &qword_1EBE06490, &qword_1C0155FA0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C0100594(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  sub_1C00F99B0(v1, &v6, &qword_1EBE06490, &qword_1C0155FA0);
  if (!v7)
  {
    return 2;
  }

  sub_1C00F9954(&v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v8;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C01006C4()
{
  result = qword_1EBE06640;
  if (!qword_1EBE06640)
  {
    sub_1C010074C(255, &qword_1EBE06638, 0x1E696ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06640);
  }

  return result;
}

uint64_t sub_1C010074C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C01007C8()
{
  result = qword_1EBE06650;
  if (!qword_1EBE06650)
  {
    sub_1C014BB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06650);
  }

  return result;
}

uint64_t sub_1C0100820(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C00FFFE0(a1, v2, v3) & 1;
}

uint64_t sub_1C0100854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  result = sub_1C00FFFE0(a1, v4, v5);
  *a2 = result & 1;
  return result;
}

id sub_1C01008D0()
{
  result = [objc_allocWithZone(type metadata accessor for TPSAnalyticsChecklistSessionController()) init];
  qword_1EBE05CA0 = result;
  return result;
}

id TPSAnalyticsChecklistSessionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TPSAnalyticsChecklistSessionController.sharedInstance.getter()
{
  if (qword_1EBE05C98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE05CA0;

  return v1;
}

uint64_t sub_1C0100A38()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C0100AD0(char a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C0100BC8()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C0100C60(char a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C0100D10()
{
  v1 = (v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C0100D5C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C0100E64()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C0100EFC(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C0100FF4()
{
  v1 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C010108C(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1C010113C()
{
  v1 = v0;
  v2 = sub_1C014BD40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  if ((v0[v7] & 1) == 0)
  {
    type metadata accessor for TipsDefaultsManager();
    sub_1C01254E8(33, &aBlock);
    if (v22)
    {
      if ((swift_dynamicCast() & 1) != 0 && v19 != 0.0)
      {
        *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout] = v19;
      }
    }

    else
    {
      sub_1C00F98F4(&aBlock, &qword_1EBE06490, &qword_1C0155FA0);
    }

    if (qword_1EDD44C28 != -1)
    {
      swift_once();
    }

    aBlock._countAndFlagsBits = qword_1EDD44C30;
    v8._countAndFlagsBits = 0xD000000000000031;
    v8._object = 0x80000001C015B7B0;
    TipsLog.log(_:)(v8);
    v9 = objc_opt_self();
    sub_1C014BD30();
    v10 = sub_1C014BCE0();
    (*(v3 + 8))(v6, v2);
    v11 = sub_1C014C200();
    [v9 persistObject:v10 forKey:v11];

    v1[v7] = 1;
    v12 = objc_opt_self();
    v13 = *&v1[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v23 = sub_1C010223C;
    v24 = v14;
    aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
    aBlock._object = 1107296256;
    v21 = sub_1C0101578;
    v22 = &block_descriptor;
    v15 = _Block_copy(&aBlock);
    v16 = v1;

    v17 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:v13];
    _Block_release(v15);
    v18 = *&v16[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer];
    *&v16[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer] = v17;
  }
}

uint64_t sub_1C0101474(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000026, 0x80000001C015BA90);
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout;
  v4 = *(a2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout);
  sub_1C014C4D0();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  TipsLog.log(_:)(v5);

  *(a2 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = *(a2 + v3);
  return sub_1C0101A1C();
}

void sub_1C0101578(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1C0101628()
{
  v1 = sub_1C014BD40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = objc_opt_self();
  v17 = sub_1C014C200();
  v18 = [v16 persistedObjectForKey_];

  if (v18)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    v19 = swift_dynamicCast();
    (*(v2 + 56))(v15, v19 ^ 1u, 1, v1);
  }

  else
  {
    sub_1C00F98F4(v27, &qword_1EBE06490, &qword_1C0155FA0);
    (*(v2 + 56))(v15, 1, 1, v1);
  }

  sub_1C010225C(v15, v13);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {
    sub_1C00F98F4(v13, &qword_1EBE06688, &qword_1C0156730);
  }

  else
  {
    (*(v2 + 32))(v8, v13, v1);
    sub_1C014BD30();
    sub_1C014BCD0();
    v21 = v20;
    v22 = *(v2 + 8);
    v22(v6, v1);
    if (v21 >= 600.0)
    {
      if (qword_1EDD44C28 != -1)
      {
        swift_once();
      }

      *&v27[0] = qword_1EDD44C30;
      v23._countAndFlagsBits = 0xD000000000000033;
      v23._object = 0x80000001C015B830;
      TipsLog.log(_:)(v23);
      *(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = 0x4082C00000000000;
      sub_1C0101A1C();
    }

    v22(v8, v1);
  }

  return sub_1C00F98F4(v15, &qword_1EBE06688, &qword_1C0156730);
}

uint64_t sub_1C0101A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_1C014BD40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = objc_opt_self();
  v14 = sub_1C014C200();
  v15 = [v13 persistedObjectForKey_];

  if (v15)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (!*(&v38 + 1))
  {
    sub_1C00F98F4(v39, &qword_1EBE06490, &qword_1C0155FA0);
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1C00F98F4(v4, &qword_1EBE06688, &qword_1C0156730);
  }

  v16 = swift_dynamicCast();
  (*(v6 + 56))(v4, v16 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1C00F98F4(v4, &qword_1EBE06688, &qword_1C0156730);
  }

  (*(v6 + 32))(v12, v4, v5);
  v17 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  if (*(v0 + v17) == 1)
  {
    v18 = (v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount);
    swift_beginAccess();
    if (*(v18 + 8) != 1)
    {
      v35 = *v18;
      [*(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer) invalidate];
      v19 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent;
      v20 = v0;
      if (*(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) == 0.0)
      {
        if (qword_1EDD44C28 != -1)
        {
          swift_once();
        }

        v36 = qword_1EDD44C30;
        v21._countAndFlagsBits = 0xD000000000000046;
        v21._object = 0x80000001C015B890;
        TipsLog.log(_:)(v21);
        sub_1C014BD30();
        sub_1C014BCD0();
        v23 = v22;
        (*(v6 + 8))(v10, v5);
        *(v0 + v19) = v23;
      }

      if (qword_1EDD44C28 != -1)
      {
        swift_once();
      }

      v36 = qword_1EDD44C30;
      v24._countAndFlagsBits = 0xD00000000000001FLL;
      v24._object = 0x80000001C015B870;
      TipsLog.log(_:)(v24);
      v25 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
      v26 = v20;
      swift_beginAccess();
      v27 = *(v20 + v25);
      v28 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
      swift_beginAccess();
      v29 = *(v20 + v28);
      v30 = *(v26 + v19);
      v31 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
      swift_beginAccess();
      v32 = *(v26 + v31);
      type metadata accessor for TPSAnalyticsChecklistSession();
      v33 = swift_allocObject();
      *(v33 + 69) = 0;
      *(v33 + 40) = v35;
      *(v33 + 48) = v27;
      *(v33 + 56) = v29;
      *(v33 + 64) = v30;
      *(v33 + 68) = v32;
      TipsAnalyticsEvent.init(identifier:)(0xD000000000000020, 0x80000001C015B440);
      sub_1C012921C();

      sub_1C0101F54();
    }
  }

  return (*(v6 + 8))(v12, v5);
}

void sub_1C0101F54()
{
  v1 = v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent) = 0;
  v2 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  *(v0 + v4) = 0;
  v5 = objc_opt_self();
  v6 = sub_1C014C530();
  v7 = sub_1C014C200();
  [v5 persistObject:v6 forKey:v7];
}

id TPSAnalyticsChecklistSessionController.init()()
{
  v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch] = 0;
  v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession] = 0;
  v1 = &v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartSuggestedTipCount];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_timeSpent] = 0;
  v2 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionStartTime;
  v3 = sub_1C014BD40();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeoutTimer] = 0;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTimeout] = 0x409C200000000000;
  *&v0[OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionBackgroundTimeout] = 0x4082C00000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TPSAnalyticsChecklistSessionController();
  return objc_msgSendSuper2(&v5, sel_init);
}

id TPSAnalyticsChecklistSessionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAnalyticsChecklistSessionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C010225C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TPSAnalyticsChecklistSessionController()
{
  result = qword_1EBE05C70;
  if (!qword_1EBE05C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1C0102468()
{
  sub_1C0102940();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C0102940()
{
  if (!qword_1EBE05D28)
  {
    sub_1C014BD40();
    v0 = sub_1C014C640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE05D28);
    }
  }
}

uint64_t sub_1C0102998()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  if (qword_1EBE06360 != -1)
  {
    swift_once();
  }

  v23._countAndFlagsBits = qword_1EBE06738;
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x80000001C015BB00;
  TipsLog.info(_:)(v6);
  v7 = qword_1EBE06738;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1C014C800();

  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x80000001C015BB30;
  v8 = (*(v0 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery) + OBJC_IVAR___TPSSearchQuery_searchTerm);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  MEMORY[0x1C68D6B10](v9, v10);

  v11 = v23;
  v23._countAndFlagsBits = v7;
  TipsLog.debug(_:)(v11);

  sub_1C014BEA0();
  v12 = swift_allocBox();
  sub_1C014BE90();
  v14 = *v8;
  v13 = v8[1];

  v15 = sub_1C014BE80();
  sub_1C014BDD0();
  v15(&v23, 0);
  type metadata accessor for TipsDefaultsManager();
  sub_1C01254E8(21, &v23);
  if (v24)
  {
    if (swift_dynamicCast())
    {
      sub_1C014BE70();
    }
  }

  else
  {
    sub_1C00F98F4(&v23, &qword_1EBE06490, &qword_1C0155FA0);
  }

  v16 = sub_1C014C490();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = v12;

  v19 = sub_1C0103964(0, 0, v5, &unk_1C0156618, v18);
  v20 = *(v1 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask);
  *(v1 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask) = v19;
}

uint64_t sub_1C0102CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_1C014C0A0();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_1C014C0D0();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v11 = sub_1C014BEA0();
  v4[29] = v11;
  v12 = *(v11 - 8);
  v4[30] = v12;
  v13 = *(v12 + 64) + 15;
  v4[31] = swift_task_alloc();
  v14 = sub_1C014BEC0();
  v4[32] = v14;
  v15 = *(v14 - 8);
  v4[33] = v15;
  v4[34] = *(v15 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C0102EC0, 0, 0);
}

uint64_t sub_1C0102EC0()
{
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {
    v3 = v0[37];
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v7 = sub_1C014BEE0();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v0[39] = sub_1C014BED0();
    swift_beginAccess();
    (*(v5 + 16))(v4, v3, v6);
    v10 = *(MEMORY[0x1E69BDB78] + 4);
    v21 = (*MEMORY[0x1E69BDB78] + MEMORY[0x1E69BDB78]);
    v11 = swift_task_alloc();
    v0[40] = v11;
    *v11 = v0;
    v11[1] = sub_1C0103070;
    v12 = v0[36];
    v13 = v0[31];

    return v21(v12, v13);
  }

  else
  {
    v16 = v0[35];
    v15 = v0[36];
    v17 = v0[31];
    v18 = v0[28];
    v19 = v0[25];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1C0103070()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 328) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1C01034CC;
  }

  else
  {
    v7 = sub_1C0103204;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C0103204()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[25];
  v26 = v0[27];
  v27 = v0[26];
  v24 = v1;
  v25 = v0[24];
  v20 = v0[28];
  v21 = v0[23];
  v22 = *(v0[38] + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_queue);
  v23 = v0[38];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v5;
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v4 + 32))(v10 + v9, v2, v8);
  v0[12] = sub_1C0104494;
  v0[13] = v10;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1C011431C;
  v0[11] = &block_descriptor_27;
  v11 = _Block_copy(v0 + 8);

  sub_1C014C0B0();
  v0[21] = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v20, v6, v11);
  _Block_release(v11);
  (*(v25 + 8))(v6, v21);
  (*(v26 + 8))(v20, v27);
  (*(v4 + 8))(v24, v8);

  v12 = v0[13];

  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[25];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1C01034CC()
{
  v1 = v0[41];
  v2 = v0[28];
  v3 = v0[25];
  v20 = v0[27];
  v21 = v0[26];
  v4 = v0[23];
  v17 = *(v0[38] + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_queue);
  v18 = v0[24];
  v19 = v0[38];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_1C0104370;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C011431C;
  v0[5] = &block_descriptor_0;
  v7 = _Block_copy(v0 + 2);

  v8 = v1;
  sub_1C014C0B0();
  v0[20] = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v2, v3, v7);
  _Block_release(v7);

  (*(v18 + 8))(v3, v4);
  (*(v20 + 8))(v2, v21);

  v9 = v0[7];

  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

void sub_1C0103724(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery);
    v9 = Strong;
    v10 = sub_1C014BEC0();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, a2, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = sub_1C0106F24(v8, v6);
    sub_1C00F98F4(v6, &qword_1EBE066C8, &qword_1C0156638);
    v14 = *&v9[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion];
    v13 = *&v9[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion + 8];

    v15 = v12;
    v14(v12, 0);
  }
}

uint64_t sub_1C01038D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion);
    v4 = *(result + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion + 8);
    v6 = result;

    v5(0, a2);
  }

  return result;
}

uint64_t sub_1C0103964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C0103FA0(a3, v27 - v11);
  v13 = sub_1C014C490();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C00F98F4(v12, &qword_1EBE066B8, &qword_1C0156FE0);
  }

  else
  {
    sub_1C014C480();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C014C420();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C014C2B0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id _s8TipsCore12SearchResultC4ItemCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0103D74()
{
  if (*(*v0 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask))
  {
    v1 = *(*v0 + OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask);

    sub_1C014C4A0();
  }

  return result;
}

uint64_t sub_1C0103DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0103EAC;

  return sub_1C0102CC8(a1, v4, v5, v7);
}

uint64_t sub_1C0103EAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C0103FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0104010(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0104108;

  return v7(a1);
}

uint64_t sub_1C0104108()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C0104200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C01044FC;

  return sub_1C0104010(a1, v5);
}

uint64_t sub_1C01042B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0103EAC;

  return sub_1C0104010(a1, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C0104390()
{
  result = qword_1EBE05D10;
  if (!qword_1EBE05D10)
  {
    sub_1C014C0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D10);
  }

  return result;
}

unint64_t sub_1C01043E8()
{
  result = qword_1EBE05C68;
  if (!qword_1EBE05C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE066C0, &unk_1C01576F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05C68);
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

void sub_1C0104494()
{
  v1 = *(sub_1C014BEC0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1C0103724(v2, v3);
}

uint64_t sub_1C0104518(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
  v36 = a2;
  result = sub_1C014C900();
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
        sub_1C00F9954(v25, v37);
      }

      else
      {
        sub_1C00FC1C0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
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
      result = sub_1C00F9954(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1C01047D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
  v38 = a2;
  result = sub_1C014C900();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C0104A70(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C014BD80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
  v43 = a2;
  result = sub_1C014C900();
  v14 = result;
  if (*(v11 + 16))
  {
    v48 = v10;
    v49 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v11;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v28 = *(v11 + 48);
      v46 = *(v7 + 72);
      v47 = v24;
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v48, v29, v49);
        v45 = *(*(v11 + 56) + 16 * v27);
      }

      else
      {
        (*v41)(v48, v29, v49);
        v45 = *(*(v11 + 56) + 16 * v27);
      }

      v30 = *(v14 + 40);
      sub_1C0107D64();
      result = sub_1C014C1A0();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v11 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v48, v49);
      *(*(v14 + 56) + 16 * v22) = v45;
      ++*(v14 + 16);
      v19 = v47;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1C0104E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
  v36 = a2;
  result = sub_1C014C900();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1C00F98DC(v25, v37);
      }

      else
      {
        sub_1C0107D00(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
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
      result = sub_1C00F98DC(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_1C0105110(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1C014C900();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1C014CAE0();
      sub_1C014C2E0();
      result = sub_1C014CB10();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C01053AC(void **a1)
{
  v2 = *(sub_1C014BE60() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C0106954(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C0105454(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1C0105454(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C014C9B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C014BE60();
        v6 = sub_1C014C3F0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C014BE60() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C0105820(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C0105580(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C0105580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C014BE60();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      v47(v49, v22, v8);
      v27 = v50;
      v26(v50, v24, v8);
      sub_1C014BDE0();
      v29 = v28;
      sub_1C014BDE0();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v8);
      result = v32(v25, v8);
      if (v31 >= v29)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = v41 + v37;
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v24, v34, v8);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0105820(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_1C014BE60();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v127 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v138 = &v122 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v144 = &v122 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v143 = &v122 - v19;
  v135 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_1C010685C(a3);
    }

    v145 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *(result + 16 * a3);
        v119 = result;
        v120 = *(result + 16 * (a3 - 1) + 40);
        sub_1C0106230(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1C010685C(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_1C01067D0(a3 - 1);
        result = v145;
        a3 = *(v145 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v136 = v20;
      v129 = v6;
      v25 = v10[9];
      v5 = &(*v135)[v25 * v24];
      v132 = *v135;
      v26 = v132;
      v27 = v10[2];
      v28 = v143;
      v27(v143, &v132[v25 * v24], v9);
      v29 = &v26[v25 * v23];
      v30 = v144;
      v137 = v27;
      v27(v144, v29, v9);
      sub_1C014BDE0();
      v32 = v31;
      sub_1C014BDE0();
      v34 = v33;
      v35 = v23;
      v36 = v10[1];
      a3 = v141;
      v36(v30, v9);
      v133 = v36;
      result = (v36)(v28, v9);
      v123 = v35;
      v37 = v35 + 2;
      v139 = v25;
      v38 = &v132[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v136;
        if (v136 == v37)
        {
          break;
        }

        a3 = v143;
        v40 = v137;
        v137(v143, v38, v9);
        v41 = v144;
        v40(v144, v5, v9);
        sub_1C014BDE0();
        v43 = v42;
        sub_1C014BDE0();
        v45 = v44;
        v46 = v133;
        (v133)(v41, v9);
        result = v46(a3, v9);
        v10 = v134;
        ++v37;
        v38 += v139;
        v5 += v139;
        if (v34 < v32 == v45 >= v43)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v128;
      v6 = v129;
      a4 = v124;
      v23 = v123;
      if (v34 < v32)
      {
        if (v39 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v39)
        {
          v48 = v39;
          a3 = v139 * (v39 - 1);
          v5 = v39 * v139;
          v136 = v39;
          v49 = v123 * v139;
          do
          {
            if (v23 != --v48)
            {
              v129 = v6;
              v50 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v51 = *v140;
              (*v140)(v127, &v50[v49], v9, v47);
              if (v49 < a3 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v51)(&v50[a3], v127, v9);
              v47 = v128;
              v6 = v129;
            }

            ++v23;
            a3 -= v139;
            v5 -= v139;
            v49 += v139;
          }

          while (v23 < v48);
          v10 = v134;
          a4 = v124;
          v23 = v123;
          v39 = v136;
        }
      }
    }

    v52 = v135[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v52)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v5)
        {
          break;
        }
      }
    }

    v5 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v128;
    }

    else
    {
      result = sub_1C00FE794(0, *(v128 + 2) + 1, 1, v128);
      v22 = result;
    }

    a3 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      result = sub_1C00FE794((v53 > 1), a3 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a3];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a3 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_1C0106230(&(*v135)[v10[9] * v95], &(*v135)[v10[9] * *&v22[16 * v5 + 32]], &(*v135)[v10[9] * v96], v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1C010685C(v94);
        }

        if (a3 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a3];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v145 = v94;
        result = sub_1C01067D0(v5);
        v22 = v145;
        v54 = *(v145 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v135[1];
    v21 = v130;
    a4 = v124;
    if (v130 >= v20)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v98 = *v135;
  v99 = v10[9];
  v139 = v10[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = (v101 - v39);
  v137 = v98;
  v126 = v99;
  v104 = &v98[v39 * v99];
  v130 = v5;
LABEL_85:
  v136 = v39;
  v131 = v104;
  v132 = v103;
  v105 = v104;
  v133 = v100;
  while (1)
  {
    v106 = v143;
    v107 = v139;
    (v139)(v143, v105, v9);
    v108 = v144;
    v107(v144, v100, v9);
    sub_1C014BDE0();
    v110 = v109;
    sub_1C014BDE0();
    v112 = v111;
    v113 = *v141;
    (*v141)(v108, v9);
    v114 = v106;
    a3 = v9;
    result = v113(v114, v9);
    if (v112 >= v110)
    {
LABEL_84:
      v39 = v136 + 1;
      v100 = &v133[v126];
      v103 = v132 - 1;
      v5 = v130;
      v104 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v23 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v115 = *v140;
    v116 = v138;
    (*v140)(v138, v105, v9);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v9);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1C0106230(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_1C014BE60();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v8 + 16);
      v56 = (v8 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          sub_1C014BDE0();
          v50 = v49;
          sub_1C014BDE0();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v52 < v50)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v61 = a3;
      v62 = v8 + 16;
      v59 = (v8 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        sub_1C014BDE0();
        v30 = v29;
        sub_1C014BDE0();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v32 >= v30)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  sub_1C0106870(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_1C01067D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C010685C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C0106870(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1C014BE60();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C01069A4(uint64_t a1)
{
  if (sub_1C014BE00() == 0x6369706F74 && v2 == 0xE500000000000000)
  {

LABEL_5:
    v4 = sub_1C014BE40();
    (*(*(v4 - 8) + 8))(a1, v4);
    return 0;
  }

  v3 = sub_1C014C9F0();

  if (v3)
  {
    goto LABEL_5;
  }

  if (sub_1C014BE00() == 0x656C6369747261 && v6 == 0xE700000000000000)
  {

    v7 = sub_1C014BE40();
    (*(*(v7 - 8) + 8))(a1, v7);
    return 1;
  }

  else
  {
    v8 = sub_1C014C9F0();

    v9 = sub_1C014BE40();
    (*(*(v9 - 8) + 8))(a1, v9);
    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

char *sub_1C0106B34(uint64_t a1)
{
  v2 = sub_1C014BE40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = sub_1C01069A4(v5);
  if (v7 == 2)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1C014BE10();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = sub_1C014BE30();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = sub_1C014BE10();
    v19 = v18;
    v20 = sub_1C014BE20();
    v22 = v21;
    v23 = type metadata accessor for SearchResult.Item();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v24[OBJC_IVAR___TPSSearchResultItem_contentType];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v24[OBJC_IVAR___TPSSearchResultItem_title];
    *v27 = 0;
    *(v27 + 1) = 0;
    v28 = &v24[OBJC_IVAR___TPSSearchResultItem_body];
    *v28 = 0;
    *(v28 + 1) = 0;
    *&v24[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
    v29 = &v24[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
    *v29 = v17;
    v29[1] = v19;
    v30 = &v24[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
    *v30 = v20;
    v30[1] = v22;
    v55.receiver = v24;
    v55.super_class = v23;
    v31 = objc_msgSendSuper2(&v55, sel_init);
    v32 = sub_1C014BE30();
    v34 = v33;
    v35 = &v31[OBJC_IVAR___TPSSearchResultItem_title];
    swift_beginAccess();
    v36 = v35[1];
    *v35 = v32;
    v35[1] = v34;

    v37 = sub_1C014BDF0();
    v39 = v38;
    v40 = &v31[OBJC_IVAR___TPSSearchResultItem_body];
    swift_beginAccess();
    v41 = v40[1];
    *v40 = v37;
    v40[1] = v39;

    if (v8)
    {
      v42 = 0xD000000000000019;
    }

    else
    {
      v42 = 0xD000000000000014;
    }

    if (v8)
    {
      v43 = "T@NSString,N,C";
    }

    else
    {
      v43 = "rom pegasus response: ";
    }

    v44 = v43 | 0x8000000000000000;
    v45 = &v31[OBJC_IVAR___TPSSearchResultItem_contentType];
    swift_beginAccess();
    v46 = v45[1];
    *v45 = v42;
    v45[1] = v44;

    return v31;
  }

  else
  {
LABEL_15:
    if (qword_1EBE06360 != -1)
    {
      swift_once();
    }

    v48 = qword_1EBE06738;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_1C014C800();

    v54._countAndFlagsBits = 0xD000000000000026;
    v54._object = 0x80000001C015BB70;
    v49 = sub_1C014BE10();
    MEMORY[0x1C68D6B10](v49);

    MEMORY[0x1C68D6B10](2108704, 0xE300000000000000);
    v50 = sub_1C014BE30();
    MEMORY[0x1C68D6B10](v50);

    MEMORY[0x1C68D6B10](2108704, 0xE300000000000000);
    v51 = sub_1C014BE00();
    MEMORY[0x1C68D6B10](v51);

    v52 = v54;
    v54._countAndFlagsBits = v48;
    TipsLog.debug(_:)(v52);

    return 0;
  }
}

uint64_t sub_1C0106F24(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v113 - v9;
  v10 = sub_1C014BE40();
  v11 = *(v10 - 8);
  v127 = v10;
  v128 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v121 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = (&v113 - v15);
  v16 = sub_1C014BE60();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v113 - v23;
  v25 = sub_1C014BEC0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0107C20(a2, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1C00F98F4(v24, &qword_1EBE066C8, &qword_1C0156638);
    v30 = v17[7];
    v30(v8, 1, 1, v16);
    v31 = type metadata accessor for SearchResult();
    v32 = objc_allocWithZone(v31);
    v33 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
    v30(&v32[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v16);
    v34 = OBJC_IVAR___TPSSearchResult_items;
    v35 = MEMORY[0x1E69E7CC0];
    *&v32[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
    v36 = OBJC_IVAR___TPSSearchResult_suggestions;
    *&v32[OBJC_IVAR___TPSSearchResult_suggestions] = v35;
    *&v32[OBJC_IVAR___TPSSearchResult_query] = a1;
    swift_beginAccess();
    *&v32[v34] = v35;
    swift_beginAccess();
    *&v32[v36] = v35;
    swift_beginAccess();
    v37 = a1;
    sub_1C0107C90(v8, &v32[v33]);
    swift_endAccess();
    v132.receiver = v32;
    v132.super_class = v31;
    v38 = objc_msgSendSuper2(&v132, sel_init);
    sub_1C00F98F4(v8, &qword_1EBE066D0, &unk_1C0156640);
    return v38;
  }

  (*(v26 + 32))(v29, v24, v25);
  v134 = sub_1C014BEB0();

  v39 = 0;
  sub_1C01053AC(&v134);
  v114 = v26;
  v115 = v25;
  v123 = a1;

  v40 = v134;
  v41 = MEMORY[0x1E69E7CC0];
  v120 = sub_1C00F930C(MEMORY[0x1E69E7CC0]);
  v131 = v41;
  v42 = v40[2];
  v129 = v29;
  v116 = v17;
  v118 = v40;
  v117 = v42;
  if (v42)
  {
    v44 = v17[2];
    v43 = v17 + 2;
    v125 = v44;
    v45 = v40 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v124 = v43[7];
    v126 = v43;
    v46 = (v43 - 1);
    v47 = MEMORY[0x1E69E7CC0];
    v44(v20, v45, v16);
    while (1)
    {
      v48 = sub_1C014BE50();
      v39 = v16;
      (*v46)(v20, v16);
      v49 = *(v48 + 16);
      v50 = v47[2];
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v51 > v47[3] >> 1)
      {
        if (v50 <= v51)
        {
          v53 = v50 + v49;
        }

        else
        {
          v53 = v50;
        }

        v47 = sub_1C00FE590(isUniquelyReferenced_nonNull_native, v53, 1, v47);
      }

      v16 = v39;
      v29 = v129;
      if (*(v48 + 16))
      {
        if ((v47[3] >> 1) - v47[2] < v49)
        {
          goto LABEL_65;
        }

        v54 = (*(v128 + 80) + 32) & ~*(v128 + 80);
        v55 = *(v128 + 72);
        swift_arrayInitWithCopy();

        if (v49)
        {
          v56 = v47[2];
          v57 = __OFADD__(v56, v49);
          v58 = v56 + v49;
          if (v57)
          {
            goto LABEL_67;
          }

          v47[2] = v58;
        }
      }

      else
      {

        if (v49)
        {
          goto LABEL_64;
        }
      }

      v45 += v124;
      if (!--v42)
      {
        goto LABEL_21;
      }

      v125(v20, v45, v39);
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v47 = v41;
LABEL_21:
  v113 = v16;
  v59 = v47[2];
  if (v59)
  {
    v134 = MEMORY[0x1E69E7CC0];
    sub_1C0109050(0, v59, 0);
    v60 = v134;
    v125 = *(v128 + 16);
    v124 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v61 = v47 + v124;
    v62 = *(v128 + 72);
    v126 = v128 + 16;
    v63 = (v128 + 32);
    v64 = v127;
    v39 = v122;
    do
    {
      v125(v39, v61, v64);
      v134 = v60;
      v66 = v60[2];
      v65 = v60[3];
      if (v66 >= v65 >> 1)
      {
        sub_1C0109050(v65 > 1, v66 + 1, 1);
        v64 = v127;
        v60 = v134;
      }

      v60[2] = v66 + 1;
      (*v63)(v60 + v124 + v66 * v62, v39, v64);
      v61 += v62;
      --v59;
    }

    while (v59);

    v29 = v129;
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
    v64 = v127;
  }

  v67 = v60[2];
  v126 = OBJC_IVAR___TPSSearchQuery_maxCount;
  swift_beginAccess();
  v68 = MEMORY[0x1E69E7CC0];
  v69 = v121;
  v70 = v120;
  v125 = v67;
  if (v67)
  {
    v39 = 0;
    v124 = v128 + 16;
    v122 = (v128 + 8);
    do
    {
      if (v39 >= v60[2])
      {
        goto LABEL_66;
      }

      (*(v128 + 16))(v69, v60 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v39, v64);
      if (v68 >> 62)
      {
        v71 = sub_1C014C750();
      }

      else
      {
        v71 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v71 >= *&v123[v126])
      {
        (*v122)(v69, v64);
        break;
      }

      v72 = sub_1C014BE10();
      if (*(v70 + 16))
      {
        v74 = sub_1C012EBF4(v72, v73);
        v76 = v75;

        if (v76 & 1) != 0 && (*(*(v70 + 56) + v74))
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v77 = sub_1C0106B34(v69);
      if (v77)
      {
        v78 = v70;
        v79 = v77;
        MEMORY[0x1C68D6BB0]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v97 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C014C3E0();
        }

        sub_1C014C400();
        v68 = v131;
        v80 = sub_1C014BE10();
        v82 = v81;
        v83 = v78;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v78;
        v85 = sub_1C012EBF4(v80, v82);
        v87 = v78[2];
        v88 = (v86 & 1) == 0;
        v57 = __OFADD__(v87, v88);
        v89 = v87 + v88;
        if (v57)
        {
          goto LABEL_68;
        }

        v90 = v86;
        if (v83[3] >= v89)
        {
          v64 = v127;
          if ((v84 & 1) == 0)
          {
            v98 = v85;
            sub_1C012FAA8();
            v64 = v127;
            v85 = v98;
          }

          v29 = v129;
          v92 = v133;
          if ((v90 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          sub_1C01047D0(v89, v84);
          v85 = sub_1C012EBF4(v80, v82);
          if ((v90 & 1) != (v91 & 1))
          {
            goto LABEL_71;
          }

          v29 = v129;
          v64 = v127;
          v92 = v133;
          if ((v90 & 1) == 0)
          {
LABEL_48:
            v92[(v85 >> 6) + 8] |= 1 << v85;
            v93 = (v92[6] + 16 * v85);
            *v93 = v80;
            v93[1] = v82;
            *(v92[7] + v85) = 1;
            v94 = v92[2];
            v57 = __OFADD__(v94, 1);
            v95 = v94 + 1;
            if (v57)
            {
              goto LABEL_69;
            }

            v96 = v92;
            v92[2] = v95;

            goto LABEL_54;
          }
        }

        v96 = v92;
        *(v92[7] + v85) = 1;

LABEL_54:
        v69 = v121;
        (*v122)(v121, v64);
        v70 = v96;
        goto LABEL_31;
      }

LABEL_30:
      v64 = v127;
      (*v122)(v69, v127);
LABEL_31:
      ++v39;
    }

    while (v125 != v39);
  }

  v120 = v70;

  if (!v117)
  {

    v102 = 1;
    v99 = v119;
    v101 = v113;
    v100 = v116;
    goto LABEL_61;
  }

  v99 = v119;
  if (v118[2])
  {
    v100 = v116;
    v101 = v113;
    (v116[2])(v119, v118 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v113);

    v102 = 0;
LABEL_61:
    v103 = v100[7];
    v103(v99, v102, 1, v101);
    v104 = type metadata accessor for SearchResult();
    v105 = objc_allocWithZone(v104);
    v106 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
    v103(&v105[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v101);
    v107 = OBJC_IVAR___TPSSearchResult_items;
    v108 = MEMORY[0x1E69E7CC0];
    *&v105[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
    v109 = OBJC_IVAR___TPSSearchResult_suggestions;
    *&v105[OBJC_IVAR___TPSSearchResult_suggestions] = v108;
    v110 = v123;
    *&v105[OBJC_IVAR___TPSSearchResult_query] = v123;
    swift_beginAccess();
    *&v105[v107] = v68;
    swift_beginAccess();
    *&v105[v109] = v108;
    swift_beginAccess();
    v111 = v110;
    sub_1C0107C90(v99, &v105[v106]);
    swift_endAccess();
    v130.receiver = v105;
    v130.super_class = v104;
    v38 = objc_msgSendSuper2(&v130, sel_init);
    sub_1C00F98F4(v99, &qword_1EBE066D0, &unk_1C0156640);
    (*(v114 + 8))(v29, v115);

    return v38;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  sub_1C014CA60();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C0107C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C8, &qword_1C0156638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0107C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0107D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C0107D64()
{
  result = qword_1EBE05D20;
  if (!qword_1EBE05D20)
  {
    sub_1C014BD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D20);
  }

  return result;
}

uint64_t sub_1C0107E0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C0107E9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C0107FF4(v4);
}

uint64_t sub_1C0107EC8()
{
  swift_getKeyPath();
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

unint64_t sub_1C0107F50()
{
  result = qword_1EBE05CC0;
  if (!qword_1EBE05CC0)
  {
    type metadata accessor for SupportFlowSearchResultsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CC0);
  }

  return result;
}

uint64_t type metadata accessor for SupportFlowSearchResultsProvider()
{
  result = qword_1EBE05CB0;
  if (!qword_1EBE05CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0107FF4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1C010A0FC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0107F50();
    sub_1C014BEF0();
  }
}

uint64_t sub_1C010810C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*sub_1C0108174(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0107F50();
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C0107DBC();
  return sub_1C010827C;
}

void sub_1C010827C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v1);
}

uint64_t SupportFlowSearchResultsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  return v3;
}

uint64_t SupportFlowSearchResultsProvider.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  return v0;
}

uint64_t SupportFlowSearchResultsProvider.__allocating_init(supportFlows:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  sub_1C0107FF4(a1);
  return v5;
}

uint64_t SupportFlowSearchResultsProvider.init(supportFlows:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C014BF30();
  sub_1C0107FF4(a1);
  return v1;
}

uint64_t sub_1C0108438(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D8, &qword_1C0156680) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C01084D8, 0, 0);
}

unint64_t sub_1C01084D8()
{
  v75 = v0;
  v61 = MEMORY[0x1E69E7CC0];
  if (!v0[11])
  {
LABEL_58:
    v53 = v0[13];

    v54 = v0[1];

    return v54(v61);
  }

  v1 = v0[12];
  v2 = v0[10];
  v65 = sub_1C010A358();
  swift_getKeyPath();
  v0[9] = v1;
  sub_1C0107F50();
  sub_1C014BF00();

  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_40:
    v4 = sub_1C014C750();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_41:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v37 = 0;
    v38 = *(v6 + 16);
    v39 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v40 = (v6 + 40 + 16 * v37);
    while (v38 != v37)
    {
      if (v37 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v41 = v40 + 2;
      ++v37;
      v42 = *v40;
      v40 += 2;
      if (v42 > 0)
      {
        v43 = *(v41 - 3);
        result = swift_isUniquelyReferenced_nonNull_native();
        v74 = v39;
        if ((result & 1) == 0)
        {
          result = sub_1C0109094(0, v39[2] + 1, 1);
          v39 = v74;
        }

        v45 = v39[2];
        v44 = v39[3];
        if (v45 >= v44 >> 1)
        {
          result = sub_1C0109094((v44 > 1), v45 + 1, 1);
          v39 = v74;
        }

        v39[2] = v45 + 1;
        v46 = &v39[2 * v45];
        v46[4] = v43;
        v46[5] = v42;
        goto LABEL_43;
      }
    }

    v74 = v39;

    sub_1C0109770(&v74);

    v47 = v74;
    v48 = v74[2];
    if (v48)
    {
      v74 = MEMORY[0x1E69E7CC0];
      sub_1C014C880();
      v49 = 4;
      do
      {
        v50 = v47[v49];
        sub_1C014C860();
        v51 = v74[2];
        sub_1C014C890();
        sub_1C014C8A0();
        sub_1C014C870();
        v49 += 2;
        --v48;
      }

      while (v48);

      v52 = v74;
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    v61 = v52;
    goto LABEL_58;
  }

LABEL_4:
  v72 = MEMORY[0x1E69E7CC0];

  result = sub_1C0109094(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_64;
  }

  v59 = v4;
  v60 = v3;
  result = 0;
  v6 = v72;
  v62 = v3 & 0xC000000000000001;
  v57 = v3 + 32;
  v58 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v63 = result;
    v64 = v6;
    if (v62)
    {
      v7 = MEMORY[0x1C68D7040](result, v3);
      goto LABEL_11;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v58 + 16))
    {
      goto LABEL_63;
    }

    v7 = *(v57 + 8 * result);
LABEL_11:
    v8 = v7;
    v73 = MEMORY[0x1E69E7CC0];
    v9 = [v7 title];
    v66 = v8;
    if (v9)
    {
      v10 = v9;
      sub_1C014C230();

      v11 = sub_1C010A358();

      sub_1C0108E4C(v11);
    }

    v12 = [v8 tileContent];
    v13 = [v12 bodyText];

    if (v13 || (v14 = objc_opt_self(), v3 = [v8 tileContent], v15 = objc_msgSend(v3, sel_bodyContent), v3, v13 = objc_msgSend(v14, sel_textRepresentationForContent_, v15), v15, v13))
    {
      sub_1C014C230();

      v3 = sub_1C010A358();

      sub_1C0108E4C(v3);
    }

    v16 = 0;
    v17 = 0;
    v67 = *(v65 + 16);
    while (v16 != v67)
    {
      v68 = v16;
      v69 = v17;
      v19 = (v65 + 32 + 16 * v16);
      v6 = v19[1];
      v71 = *v19;
      v20 = *(v73 + 16);

      if (v20)
      {
        v21 = 0;
        v22 = -v20;
        v23 = v73 + 40;
        v24 = MEMORY[0x1E69E7CC0];
        do
        {
          v70 = v24;
          v25 = (v23 + 16 * v21++);
          while (1)
          {
            if ((v21 - 1) >= *(v73 + 16))
            {
              __break(1u);
              goto LABEL_38;
            }

            v26 = v0[13];
            v3 = *(v25 - 1);
            v27 = *v25;
            v0[5] = v3;
            v0[6] = v27;
            v0[7] = v71;
            v0[8] = v6;

            sub_1C014BDB0();
            v28 = sub_1C014BDC0();
            (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
            v55 = sub_1C00FCDA8();
            v56 = v55;
            sub_1C014C6D0();
            v30 = v29;
            sub_1C010A448(v26);
            if ((v30 & 1) == 0)
            {
              break;
            }

            ++v21;
            v25 += 2;
            if (v22 + v21 == 1)
            {
              v24 = v70;
              goto LABEL_17;
            }
          }

          v24 = v70;
          v74 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C01090B4(0, v70[2] + 1, 1);
            v24 = v74;
          }

          v32 = v24[2];
          v31 = v24[3];
          if (v32 >= v31 >> 1)
          {
            sub_1C01090B4((v31 > 1), v32 + 1, 1);
            v24 = v74;
          }

          v24[2] = v32 + 1;
          v33 = &v24[2 * v32];
          v33[4] = v3;
          v33[5] = v27;
          v23 = v73 + 40;
        }

        while (v22 + v21);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

LABEL_17:
      v16 = v68 + 1;

      v18 = v24[2];

      v17 = v69 + v18;
      if (__OFADD__(v69, v18))
      {
        __break(1u);
        goto LABEL_40;
      }
    }

    v6 = v64;
    v35 = *(v64 + 16);
    v34 = *(v64 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1C0109094((v34 > 1), v35 + 1, 1);
      v6 = v64;
    }

    result = v63 + 1;
    *(v6 + 16) = v35 + 1;
    v36 = v6 + 16 * v35;
    *(v36 + 32) = v66;
    *(v36 + 40) = v17;
    v3 = v60;
    if (v63 + 1 == v59)
    {
LABEL_38:

      goto LABEL_42;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1C0108C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = sub_1C014C390();
  v8 = MEMORY[0x1C68D6AD0](v7);
  v10 = v9;

  if (sub_1C014C2F0() < 3)
  {
  }

  else
  {
    v11 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1C00FE898(0, *(v11 + 2) + 1, 1, v11);
      *a6 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1C00FE898((v13 > 1), v14 + 1, 1, v11);
      *a6 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
  }

  return 1;
}

uint64_t SupportFlowSearchResultsProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  v3 = sub_1C014BF40();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SupportFlowSearchResultsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC8TipsCore32SupportFlowSearchResultsProvider___observationRegistrar;
  v3 = sub_1C014BF40();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1C0108E4C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C00FE898(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1C0108F40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C014C750();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C014C750();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C01098CC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C0138524(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_1C0109030(char *a1, int64_t a2, char a3)
{
  result = sub_1C01090D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C0109050(size_t a1, int64_t a2, char a3)
{
  result = sub_1C010920C(a1, a2, a3, *v3, &qword_1EBE06600, &qword_1C01566F0, MEMORY[0x1E69BCD90]);
  *v3 = result;
  return result;
}

void *sub_1C0109094(void *a1, int64_t a2, char a3)
{
  result = sub_1C01093E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C01090B4(char *a1, int64_t a2, char a3)
{
  result = sub_1C010951C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C01090D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06710, &qword_1C0156728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C010920C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1C01093E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06700, &qword_1C0156718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F8, &qword_1C0156710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C010951C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C0109628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066E8, &unk_1C0156700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F0, &qword_1C0157200);
    swift_arrayInitWithCopy();
  }

  return v10;
}