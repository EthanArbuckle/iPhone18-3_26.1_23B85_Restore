void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21B76C91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 200), 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21B771A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B7731B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v70 - 232), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_21B773E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose((v68 - 248), 8);
  _Block_object_dispose((v68 - 216), 8);
  _Block_object_dispose((v68 - 184), 8);
  _Block_object_dispose((v68 - 152), 8);
  _Block_object_dispose((v68 - 120), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21B774A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B774FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B7751B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_21B77EB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_21B77FBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_21B780504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 240), 8);
  _Block_object_dispose((v55 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21B781360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose((v71 - 240), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21B7828DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21B7845B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_21B7853C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B785878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21B78F7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B78FA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B78FDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21B7907B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B790BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21B791008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21B791660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B791938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B791D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B791FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B79218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B792350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B792514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B7927A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B7929F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B792D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B793094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B793398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21B793774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B793928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B793B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B793FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B794398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B7945E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B794858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21B7950B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21B795594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);

  return a2;
}

id OUTLINED_FUNCTION_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);

  return a2;
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_21B796D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B7996C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B79CD5C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Unwind_Resume(a1);
}

void sub_21B79E7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B79EB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B79EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B79F360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B79F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21B79FA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21B79FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B7A02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B7A11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21B7A4EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B7A9B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sessionEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    sessionEventCallback_cold_3();
  }

  v8 = v7;
  v9 = [v7 accessoryLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    *buf = 138412546;
    *&buf[4] = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "BT SessionEvent: %@, %@", buf, 0x16u);
  }

  if (a3 | a2)
  {
    if (a2 || a3 != 1)
    {
      v18 = [v8 accessoryLog];
      v19 = v18;
      if ((a2 & 0xFFFFFFFE) == 2)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "The current BT session terminated, try to attach to the next one.", buf, 2u);
        }

        [v8 attachToBluetoothSession];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sessionEventCallback_cold_1(a2, v19);
        }
      }
    }

    else
    {
      v12 = [v8 accessoryLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sessionEventCallback_cold_2();
      }

      v13 = dispatch_walltime(0, 60000000000);
      v14 = [v8 queue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __sessionEventCallback_block_invoke;
      v21[3] = &unk_2782D3EA8;
      v22 = v8;
      dispatch_after(v13, v14, v21);
    }
  }

  else
  {
    v15 = [v8 accessoryLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "BT Session connected successfully.", buf, 2u);
    }

    [v8 setSession:a1];
    *buf = 0;
    [v8 session];
    BTAccessoryManagerGetDefault();
    v16 = [v8 accessoryLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Set up connection callback", v24, 2u);
    }

    [v8 session];
    BTServiceAddCallbacksWithFilter();
    v17 = [v8 accessoryLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Set up message receiving callback", v24, 2u);
    }

    *v24 = incomingCustomMessageCallback;
    BTAccessoryManagerRegisterCustomMessageClient();
    v23 = incomingTimeSeriesMessageCallback;
    BTAccessoryManagerRegisterCustomMessageClient();
  }

  v20 = *MEMORY[0x277D85DE8];
}

void btConnectionUpdateCallback(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (!v10)
  {
    btConnectionUpdateCallback_cold_3();
  }

  v11 = v10;
  if ((a4 - 13) >= 0xFFFFFFFE && !a5)
  {
    v12 = os_transaction_create();
    v13 = [v11 btHandler];
    v14 = [v13 getAddressStringForDevice:a1];

    v15 = [v11 accessoryLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v14;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "New connection callback. Address: %@", buf, 0xCu);
    }

    v16 = [v11 btHandler];
    v17 = [v16 protocolForDevice:a1];

    if (v17)
    {
      if (v17 == 255)
      {
        v18 = [v11 accessoryLog];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Device is not supported", buf, 2u);
        }
      }

      else if (a3 || a4 != 11)
      {
        if (a3 != 1)
        {
LABEL_45:

          goto LABEL_46;
        }

        v33 = [v11 accessoryLog];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v14;
          _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Supported device (%@) was disconnected.", buf, 0xCu);
        }

        v34 = [v11 walletMonitor];
        [v34 stopMonitoring];

        if (_os_feature_enabled_impl() && ([v11 firstNotificationDisplayed] & 1) == 0)
        {
          v35 = [v11 returnAccessoryStatusForDevice:v14];
          if ([v35 currentState] == 1)
          {
            v36 = [v35 lastSentDate];
            v37 = v36 == 0;

            if (!v37)
            {
              objc_initWeak(buf, v11);
              v38 = +[PowerUINotificationManager sharedInstance];
              v39 = [v11 btHandler];
              v40 = [v11 firstUseNotificationRequestForDeviceType:{objc_msgSend(v39, "productIDForDevice:", a1)}];
              v41 = [v38 postNotificationWithRequest:v40];

              WeakRetained = objc_loadWeakRetained(buf);
              v43 = WeakRetained;
              if (v41)
              {
                v44 = [WeakRetained accessoryLog];

                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  btConnectionUpdateCallback_cold_2();
                }
              }

              else
              {
                [WeakRetained setFirstNotificationDisplayed:1];

                [PowerUISmartChargeUtilities setNumber:&unk_282D4E548 forPreferenceKey:@"firstNoteDisplayed" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
              }

              objc_destroyWeak(buf);
            }
          }
        }

        v46 = [v11 latestAnalyticsForDevice];
        v18 = [v46 objectForKeyedSubscript:v14];

        if (v18)
        {
          v18 = v18;
          AnalyticsSendEventLazy();
          v47 = [v11 accessoryLog];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v54 = v18;
            _os_log_impl(&dword_21B766000, v47, OS_LOG_TYPE_DEFAULT, "Reported prediction metrics to CoreAnalytics %@", buf, 0xCu);
          }

          v48 = [v11 latestAnalyticsForDevice];
          [v48 setObject:0 forKeyedSubscript:v14];
        }
      }

      else
      {
        v19 = [v11 btConnectionSemaphore];
        dispatch_semaphore_signal(v19);

        v18 = [v11 returnAccessoryStatusForDevice:v14];
        v20 = [MEMORY[0x277CBEAA8] date];
        v21 = [v18 lastTimeseriesDate];
        [v20 timeIntervalSinceDate:v21];
        v23 = v22 > 86400.0;

        if (v23)
        {
          [v11 timeSeriesForDevice:v14];
        }

        [v11 persistentlyHandleSeeingDevice:v14];
        v24 = [v11 predictor];
        v25 = [v24 isSufficientDataAvailableForEngagementForDevice:v14];
        if (v17 == 3)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          v27 = [v11 walletMonitor];
          [v27 startMonitoring];

          v28 = [v11 acceptMessageFromRightBudForDevice];
          [v28 setValue:MEMORY[0x277CBEC38] forKey:v14];

          v29 = [v11 acceptMessageFromLeftBudForDevice];
          [v29 setValue:MEMORY[0x277CBEC38] forKey:v14];

          v30 = [v11 accessoryLog];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v54 = v14;
            _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "Supported device (%@) was connected, queue update.", buf, 0xCu);
          }

          v31 = dispatch_walltime(0, 1000000000);
          v32 = [v11 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __btConnectionUpdateCallback_block_invoke;
          block[3] = &unk_2782D4B10;
          v51 = v11;
          v52 = a1;
          dispatch_after(v31, v32, block);
        }

        else
        {
          v45 = [v11 accessoryLog];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v54 = v14;
            _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "Supported device (%@) was connected, but device history is not old enough or there were not enough connections. Do not send prediction.", buf, 0xCu);
          }

          [v18 setManagerState:10];
        }
      }
    }

    else
    {
      v18 = [v11 accessoryLog];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        btConnectionUpdateCallback_cold_1();
      }
    }

    goto LABEL_45;
  }

LABEL_46:

  v49 = *MEMORY[0x277D85DE8];
}

void incomingCustomMessageCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, void *a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = os_transaction_create();
  v11 = a6;
  if (!v11)
  {
    incomingCustomMessageCallback_cold_2();
  }

  v12 = v11;
  v13 = [v11 btHandler];
  v14 = [v13 getAddressStringForDevice:a2];

  if (a5 == 11)
  {
    v15 = a4[1];
    v16 = a4[2];
    v45 = *a4;
    v46 = *(a4 + 6);
    v47 = *(a4 + 7);
    v48 = *(a4 + 8);
    v44 = *(a4 + 9);
    v17 = *(a4 + 10);
    v18 = [v12 accessoryLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v10;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v45];
      [MEMORY[0x277CCABB0] numberWithUnsignedShort:v15];
      v20 = v43 = v17;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46];
      v39 = v16;
      v22 = v38 = a2;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
      [MEMORY[0x277CCABB0] numberWithUnsignedChar:v48];
      v40 = v15;
      v24 = v42 = v14;
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v44];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v43];
      *buf = 138414338;
      v50 = v42;
      v51 = 2112;
      v52 = v19;
      v53 = 2112;
      v54 = v20;
      v55 = 2112;
      v56 = v21;
      v57 = 2112;
      v58 = v22;
      v59 = 2112;
      v60 = v23;
      v61 = 2112;
      v62 = v24;
      v63 = 2112;
      v64 = v25;
      v65 = 2112;
      v66 = v26;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Received a message from device '%@' - successRatio: %@ - timeSpentAtLowerSoC: %@ - timeSpentAtHigherSoC: %@ - engagementEventsSinceLastReport: %@ - underchargeEventsSinceLastReport: %@ - chargingEventsSinceLastReport: %@ - budSocAtLastEngagement: %@ - side: %@", buf, 0x5Cu);

      v10 = v41;
      v14 = v42;
      v15 = v40;

      a2 = v38;
      v16 = v39;

      v17 = v43;
    }

    if (v17 == 2)
    {
      v27 = [v12 acceptMessageFromLeftBudForDevice];
    }

    else
    {
      if (v17 != 1)
      {
        v28 = 0;
        goto LABEL_21;
      }

      v27 = [v12 acceptMessageFromRightBudForDevice];
    }

    v29 = v27;
    v28 = [v27 objectForKeyedSubscript:v14];

    if (v28 && [v28 BOOLValue])
    {
      v30 = [v12 btHandler];
      v31 = [v12 nameForProductID:{objc_msgSend(v30, "productIDForDevice:", a2)}];

      WORD1(v36) = v45;
      LOBYTE(v36) = v44;
      [v12 reportSessionMetricsForSide:v17 withTimeSpendAtLowerSoC:v15 timeSpentAtHigherSoC:v16 engagementEventsSinceLastReport:v46 underchargeEventsSinceLastReport:v47 chargingEventsSinceLastReport:v48 budSocAtLastEngagement:v36 successRatio:v31 deviceType:?];
      if (v17 == 1)
      {
        v32 = [v12 acceptMessageFromRightBudForDevice];
        [v32 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];

        if (!+[PowerUISmartChargeUtilities isInternalBuild])
        {
LABEL_20:
          v34 = [v12 returnAccessoryStatusForDevice:v14];
          [v34 setMinutesSavedSinceLastReport:v15];
          [v34 setUnderchargesSinceLastReport:v47];
          [v34 setChargingEventsSinceLastReport:v48];
          [v34 setManagerState:7];

          goto LABEL_21;
        }

        WORD1(v37) = v45;
        LOBYTE(v37) = v44;
        [v12 recordBudMetricsLocallyForDevice:v14 withTimeSpendAtLowerSoC:v15 timeSpentAtHigherSoC:v16 engagementEventsSinceLastReport:v46 underchargeEventsSinceLastReport:v47 chargingEventsSinceLastReport:v48 budSocAtLastEngagement:v37 successRatio:?];
        v33 = [v12 accessoryLog];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Internal device, write bud metrics to defaults.", buf, 2u);
        }
      }

      else
      {
        v33 = [v12 acceptMessageFromLeftBudForDevice];
        [v33 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
      }

      goto LABEL_20;
    }
  }

  else
  {
    v28 = [v12 accessoryLog];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      incomingCustomMessageCallback_cold_1(a5, v14, v28);
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
}

void incomingTimeSeriesMessageCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = os_transaction_create();
  v11 = a6;
  if (!v11)
  {
    incomingTimeSeriesMessageCallback_cold_2();
  }

  v12 = v11;
  v13 = [v11 btHandler];
  v14 = [v13 getAddressStringForDevice:a2];

  v15 = [v12 accessoryLog];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v48 = a5;
    v49 = 2112;
    v50 = v14;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Received time series message of size %zu from device '%@'.", buf, 0x16u);
  }

  if (a5 == 983)
  {
    bzero(buf, 0x620uLL);
    v16 = 0;
    v17 = a4 + 9;
    do
    {
      v18 = &buf[v16];
      *v18 = *(v17 - 9);
      *(v18 + 4) = *(v17 - 1);
      v16 += 16;
      v17 += 10;
    }

    while (v16 != 1568);
    v19 = *(a4 + 980);
    v20 = *(a4 + 982);
    v21 = [v12 accessoryLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 138413058;
      *v40 = v14;
      *&v40[8] = 1024;
      *&v40[10] = v20;
      v41 = 1024;
      v42 = v19;
      v43 = 1024;
      LODWORD(v44) = 98;
      _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Received time series data for device '%@' (bud side: %u, FW version: %u, #records: %u):", v39, 0x1Eu);
    }

    v22 = [v12 budSideToRecord];
    v23 = [v22 unsignedShortValue];

    if (v23 == v20)
    {
      v36 = v19;
      v37 = v20;
      v38 = v10;
      v24 = 0;
      v25 = buf;
      do
      {
        v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*v25];
        v27 = [v12 accessoryLog];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v25[8];
          v29 = *v25;
          v30 = v25[9];
          *v39 = 67110146;
          *v40 = v24;
          *&v40[4] = 2112;
          *&v40[6] = v26;
          v41 = 1024;
          v42 = v28;
          v43 = 2048;
          v44 = v29;
          v45 = 1024;
          v46 = v30;
          _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_DEFAULT, "%d: %@: eventData: %u - timestamp: %llu - offset: %u", v39, 0x28u);
        }

        ++v24;
        v25 += 16;
      }

      while (v24 != 98);
      v31 = [v12 accessoryLog];
      [v12 addTimeSeriesDataToStream:buf withSide:v37 withFirmwareVersion:v36 withLog:v31];

      v32 = [MEMORY[0x277CBEAA8] date];
      [v12 persistentlySetLastTimeseriesDate:v32 forDevice:v14];
      v10 = v38;
    }

    else
    {
      v32 = [v12 accessoryLog];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v12 budSideToRecord];
        *v39 = 67109378;
        *v40 = v20;
        *&v40[4] = 2112;
        *&v40[6] = v34;
        _os_log_impl(&dword_21B766000, v32, OS_LOG_TYPE_DEFAULT, "Bud side in message (%hhu) does not match bud side to record (%@), skip this message.", v39, 0x12u);
      }
    }
  }

  else
  {
    v33 = [v12 accessoryLog];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      incomingTimeSeriesMessageCallback_cold_1();
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t decodeAccessoryMessage(uint64_t result, _WORD *a2, _WORD *a3, _WORD *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  *a2 = *result;
  *a3 = *(result + 2);
  *a4 = *(result + 4);
  *a5 = *(result + 6);
  *a6 = *(result + 7);
  *a7 = *(result + 8);
  *a8 = *(result + 9);
  *a9 = *(result + 10);
  return result;
}

_DWORD *prepare9ByteMessage(_DWORD *result, int a2, int a3)
{
  if (a3 != 1)
  {
    if (a3 == 3)
    {
      v3 = 2;
    }

    else
    {
      v3 = a3 == 2;
    }

    *result = v3;
    result = (result + 1);
  }

  *result = a2;
  return result;
}

void sub_21B7AF07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_21B7B35D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  objc_destroyWeak((v1 - 200));
  _Unwind_Resume(a1);
}

void sub_21B7BB7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B7D4E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B7D8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B7D9F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_21B7DB248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21B7DBCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __67__durationModel_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[durationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__durationModel_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [durationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(durationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __66__durationModel_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [durationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(durationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __64__deoc_model_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __55__deoc_model_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_modelOutput alloc];
    v7 = [v14 featureValueForName:@"next_drain_is_significant"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_modelOutput *)v6 initWithNext_drain_is_significant:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __63__deoc_model_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_modelOutput alloc];
    v7 = [v14 featureValueForName:@"next_drain_is_significant"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_modelOutput *)v6 initWithNext_drain_is_significant:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __65__engageModel_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[engageModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__engageModel_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageModelOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageModelOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__engageModel_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageModelOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageModelOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __65__easy_engage_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[easy_engage alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__easy_engage_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [easy_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(easy_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__easy_engage_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [easy_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(easy_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __65__deoc_series_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_series alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__deoc_series_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_seriesOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_seriesOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__deoc_series_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_seriesOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_seriesOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__deoc_ultra_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_ultra alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __55__deoc_ultra_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_ultraOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_ultraOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __63__deoc_ultra_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_ultraOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_ultraOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __72__dynamic_scheduling_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[dynamic_scheduling alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __63__dynamic_scheduling_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [dynamic_schedulingOutput alloc];
    v7 = [v11 featureValueForName:@"charge_duration"];
    [v7 doubleValue];
    v8 = [(dynamic_schedulingOutput *)v6 initWithCharge_duration:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __71__dynamic_scheduling_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [dynamic_schedulingOutput alloc];
    v7 = [v11 featureValueForName:@"charge_duration"];
    [v7 doubleValue];
    v8 = [(dynamic_schedulingOutput *)v6 initWithCharge_duration:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __67__base_duration_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[base_duration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__base_duration_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [base_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(base_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __66__base_duration_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [base_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(base_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __90__deoc_two_stage_sequential_low_second_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_two_stage_sequential_low_second alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __81__deoc_two_stage_sequential_low_second_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_two_stage_sequential_low_secondOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_two_stage_sequential_low_secondOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __89__deoc_two_stage_sequential_low_second_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_two_stage_sequential_low_secondOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_two_stage_sequential_low_secondOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __68__deoc_iphone_80_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_iphone_80 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __59__deoc_iphone_80_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_iphone_80Output alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_iphone_80Output *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__deoc_iphone_80_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_iphone_80Output alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_iphone_80Output *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__long_duration_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[long_duration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __58__long_duration_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [long_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(long_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __66__long_duration_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [long_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(long_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void __68__deoc_iphone_95_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_iphone_95 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __59__deoc_iphone_95_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_iphone_95Output alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_iphone_95Output *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __67__deoc_iphone_95_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_iphone_95Output alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_iphone_95Output *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __65__base_engage_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[base_engage alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__base_engage_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [base_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(base_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __64__base_engage_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [base_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(base_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __91__deoc_two_stage_sequential_high_second_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_two_stage_sequential_high_second alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __82__deoc_two_stage_sequential_high_second_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_two_stage_sequential_high_secondOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_two_stage_sequential_high_secondOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __90__deoc_two_stage_sequential_high_second_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_two_stage_sequential_high_secondOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_two_stage_sequential_high_secondOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __71__deoc_model_iphone_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[deoc_model_iphone alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __62__deoc_model_iphone_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_model_iphoneOutput alloc];
    v7 = [v14 featureValueForName:@"next_drain_is_significant"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_model_iphoneOutput *)v6 initWithNext_drain_is_significant:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void __70__deoc_model_iphone_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [deoc_model_iphoneOutput alloc];
    v7 = [v14 featureValueForName:@"next_drain_is_significant"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(deoc_model_iphoneOutput *)v6 initWithNext_drain_is_significant:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sessionEventCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "BT session returned unknown event code '%@' - this should not happen!", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void btConnectionUpdateCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void btConnectionUpdateCallback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void incomingCustomMessageCallback_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = &unk_282D4E560;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_21B766000, a3, OS_LOG_TYPE_ERROR, "ERROR: Unexpected message size (size of %@ bytes != %@) from device '%@', aborting.", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

void incomingTimeSeriesMessageCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}