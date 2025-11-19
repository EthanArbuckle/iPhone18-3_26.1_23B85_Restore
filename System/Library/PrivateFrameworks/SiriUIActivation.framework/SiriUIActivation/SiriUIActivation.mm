void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21FEE7F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEE818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEE8604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_21FEE8BC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21FEE8C00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E220, &qword_21FF0E4E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_21FEE909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEE9204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEEB4E0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21FEEDDF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEDF78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEE0F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEE278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEE414(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEE648(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEEEE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x18u);
}

uint64_t OUTLINED_FUNCTION_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + a3);
  v4 = *(a2 + 40);
  return result;
}

void sub_21FEEF6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEEF890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_21FEEFE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF05CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEF0840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEF0E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEF1424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEF161C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF21F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEF23B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEF2640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21FEF30F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_21FEF365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF3CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF4AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF4D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEF4F10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEF5260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF57C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21FEF5E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF6EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v32 - 160));
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF7C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF8100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF87A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF8B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_21FEF90B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF94EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEF9EB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEFA414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFB388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFB838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t _ACIsTelephonyURL(void *a1)
{
  v1 = a1;
  if ([v1 isForceTelephonyURL] & 1) != 0 || (objc_msgSend(v1, "isFaceTimeURL") & 1) != 0 || (objc_msgSend(v1, "isFaceTimeAudioURL"))
  {
    v2 = 1;
  }

  else
  {
    v4 = [v1 scheme];
    v5 = [v4 lowercaseString];

    if ([v5 isEqualToString:@"telemergency"])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v5 isEqualToString:@"telemergencycall"];
    }
  }

  return v2;
}

void sub_21FEFC2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEFC424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFD12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFD2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFDBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FEFE93C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FEFFDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FF0005C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21FF00D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

unint64_t SASHIDGetCurrentTime()
{
  info = 0;
  mach_timebase_info(&info);
  v0 = (info.numer / info.denom);
  return (v0 * mach_absolute_time());
}

uint64_t sub_21FF033FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E208, &qword_21FF0E4D0);
  result = sub_21FF0B684();
  qword_27CF1E1A0 = result;
  *algn_27CF1E1A8 = v1;
  return result;
}

uint64_t sub_21FF03450(char a1, double a2)
{
  sub_21FF0B7A4();
  if (qword_27CF1E198 != -1)
  {
    swift_once();
  }

  v4 = qword_27CF1E1A0;

  MEMORY[0x223D73D20](0xD000000000000011, 0x800000021FF130A0);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223D73D20](v5, v6);

  MEMORY[0x223D73D20](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v7 = sub_21FF035A8(a2);
  MEMORY[0x223D73D20](v7);

  MEMORY[0x223D73D20](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_21FF035A8(double a1)
{
  v2 = sub_21FF0B604();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_21FF0B624() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E230, &qword_21FF0E578);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  *v18 = a1;
  sub_21FF0B614();
  sub_21FF0979C();
  sub_21FF0B5D4();
  sub_21FF0B5F4();
  MEMORY[0x223D73C60](v6, v8);
  (*(v3 + 8))(v6, v2);
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_21FF097F0();
  sub_21FF0B664();
  v16(v15, v8);
  v18[0] = v18[2];
  v18[1] = v18[3];
  return sub_21FF0B6C4();
}

uint64_t sub_21FF03848()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E200, &qword_21FF0E4C8);
  result = sub_21FF0B684();
  qword_27CF1E1B8 = result;
  unk_27CF1E1C0 = v1;
  return result;
}

uint64_t sub_21FF0389C(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    sub_21FF0B7A4();
    if (qword_27CF1E1B0 != -1)
    {
      swift_once();
    }

    MEMORY[0x223D73D20](qword_27CF1E1B8, unk_27CF1E1C0);
    MEMORY[0x223D73D20](0xD000000000000018, 0x800000021FF13080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1F8, &qword_21FF0E4C0);
    sub_21FF0B7C4();
    v1 = 41;
    v2 = 0xE100000000000000;
  }

  else
  {
    sub_21FF0B7A4();
    if (qword_27CF1E1B0 != -1)
    {
      swift_once();
    }

    v3 = qword_27CF1E1B8;

    v5 = v3;
    v1 = 0xD00000000000002BLL;
    v2 = 0x800000021FF13050;
  }

  MEMORY[0x223D73D20](v1, v2);
  return v5;
}

uint64_t sub_21FF03A40()
{
  type metadata accessor for SiriQuickTypeGestureActivationManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF1E250, &qword_21FF0E5B0);
  result = sub_21FF0B684();
  qword_28122B2D8 = result;
  unk_28122B2E0 = v1;
  return result;
}

uint64_t variable initialization expression of SiriQuickTypeGestureActivationManager.latestFaceDetectionResultFuture@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
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

id variable initialization expression of SiriQuickTypeGestureActivationManager.attentionAwarenessClient()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEF760]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CEF768]) init];
  v2 = sub_21FF0B674();
  [v1 setIdentifier_];

  [v1 setEventMask_];
  [v0 setConfiguration_];

  return v0;
}

id SiriQuickTypeGestureActivationManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return SiriQuickTypeGestureActivationManager.init()();
}

id SiriQuickTypeGestureActivationManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = -1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = -1;
  v1 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) = 0;
  v3 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_attentionAwarenessClient;
  v4 = [objc_allocWithZone(MEMORY[0x277CEF760]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277CEF768]) init];
  v6 = sub_21FF0B674();
  [v5 setIdentifier_];

  [v5 setEventMask_];
  [v4 setConfiguration_];

  *(v0 + v3) = v4;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SiriQuickTypeGestureActivationManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t type metadata accessor for SiriQuickTypeGestureActivationManager()
{
  result = qword_28122B2C0;
  if (!qword_28122B2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriQuickTypeGestureActivationManager.deinit()
{
  v1 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_attentionAwarenessClient;
  v3 = *(v0 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
  v18[0] = 0;
  if ([v3 invalidateWithError_])
  {
    v4 = v18[0];
  }

  else
  {
    v5 = v18[0];
    v6 = sub_21FF0B5C4();

    swift_willThrow();
    if (qword_28122B2B8 != -1)
    {
      swift_once();
    }

    v7 = sub_21FF0B654();
    __swift_project_value_buffer(v7, qword_28122B300);
    v8 = v6;
    v9 = sub_21FF0B634();
    v10 = sub_21FF0B764();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v11 = 136315394;
      if (qword_28122B2D0 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v18);
      *(v11 + 12) = 2112;
      v14 = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_21FEE5000, v9, v10, "#activation #quickTypeGate %s: attention awareness client invalidation failed with error: %@", v11, 0x16u);
      sub_21FF094AC(v12, &qword_27CF1E1D8, &qword_21FF0E2B0);
      MEMORY[0x223D74950](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D74950](v13, -1, -1);
      MEMORY[0x223D74950](v11, -1, -1);
    }

    else
    {
    }
  }

  sub_21FF07DC8(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  sub_21FF07DC8(*(v1 + 136), *(v1 + 144), *(v1 + 152));
  sub_21FF094AC(v1 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture, &qword_27CF1E1D0, &qword_21FF0E2A8);

  swift_defaultActor_destroy();
  v16 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t SiriQuickTypeGestureActivationManager.__deallocating_deinit()
{
  SiriQuickTypeGestureActivationManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1E0, &qword_21FF0E2C0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1D0, &qword_21FF0E2A8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21FF04234, v0, 0);
}

uint64_t sub_21FF04234()
{
  v25 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight;
  if (*(v1 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight))
  {
    if (qword_28122B2B8 != -1)
    {
      swift_once();
    }

    v3 = sub_21FF0B654();
    __swift_project_value_buffer(v3, qword_28122B300);
    v4 = sub_21FF0B634();
    v5 = sub_21FF0B754();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      if (qword_28122B2D0 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v24);
      _os_log_impl(&dword_21FEE5000, v4, v5, "#activation #quickTypeGate %s: face detection already in flight - skipping prewarm", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D74950](v7, -1, -1);
      MEMORY[0x223D74950](v6, -1, -1);
    }
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = *(v1 + 136);
    v13 = *(v1 + 144);
    v14 = *(v1 + 112);
    v15 = *(v1 + 120);
    *(v1 + 112) = v12;
    *(v1 + 120) = v13;
    v16 = *(v1 + 152);
    v17 = *(v1 + 128);
    *(v1 + 128) = v16;
    sub_21FF08B94(v12, v13, v16);
    sub_21FF07DC8(v14, v15, v17);
    *(v1 + v2) = 1;
    (*(v11 + 104))(v9, *MEMORY[0x277D858A0], v10);
    sub_21FF0B744();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    v19 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_21FF08BC0(v8, v1 + v19);
    swift_endAccess();
  }

  v21 = v0[8];
  v20 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t sub_21FF04510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E220, &qword_21FF0E4E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_21FF0B6F4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = sub_21FF08C30();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v14;
  *(v16 + 4) = a2;
  (*(v5 + 32))(&v16[v15], v8, v4);
  swift_retain_n();
  sub_21FF04898(0, 0, v12, &unk_21FF0E588, v16);
}

uint64_t sub_21FF04708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_21FF047A4;

  return sub_21FF06DDC(a5);
}

uint64_t sub_21FF047A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21FF04898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21FF09444(a3, v27 - v11, &qword_27CF1E228, &qword_21FF0E4E8);
  v13 = sub_21FF0B6F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21FF094AC(v12, &qword_27CF1E228, &qword_21FF0E4E8);
  }

  else
  {
    sub_21FF0B6E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21FF0B6D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21FF0B694() + 32;
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

      sub_21FF094AC(a3, &qword_27CF1E228, &qword_21FF0E4E8);

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

  sub_21FF094AC(a3, &qword_27CF1E228, &qword_21FF0E4E8);
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

uint64_t sub_21FF04D10(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_21FF04DB8;

  return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t sub_21FF04DB8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t SiriQuickTypeGestureActivationManager.cancelPrewarmForFirstTapOfQuickTypeToSiriGesture()()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1D0, &qword_21FF0E2A8) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21FF04FBC, v0, 0);
}

uint64_t sub_21FF04FBC()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight;
  if (*(v1 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
    v0[5] = 0;
    v4 = [v3 cancelPollForAttentionWithError_];
    v5 = v0[5];
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v12 = v5;
      v13 = sub_21FF0B5C4();

      swift_willThrow();
      if (qword_28122B2B8 != -1)
      {
        swift_once();
      }

      v14 = sub_21FF0B654();
      __swift_project_value_buffer(v14, qword_28122B300);
      v15 = v13;
      v16 = sub_21FF0B634();
      v17 = sub_21FF0B764();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31[0] = v20;
        *v18 = 136315394;
        if (qword_28122B2D0 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v31);
        *(v18 + 12) = 2112;
        v21 = v13;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v22;
        *v19 = v22;
        _os_log_impl(&dword_21FEE5000, v16, v17, "#activation #quickTypeGate %s: error cancelling polling: %@", v18, 0x16u);
        sub_21FF094AC(v19, &qword_27CF1E1D8, &qword_21FF0E2B0);
        MEMORY[0x223D74950](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223D74950](v20, -1, -1);
        MEMORY[0x223D74950](v18, -1, -1);
      }

      else
      {
      }
    }

    v23 = v0[6];
    v24 = v0[7];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_21FF08BC0(v24, v23 + v26);
    swift_endAccess();
    *(v1 + v2) = 0;
  }

  else
  {
    if (qword_28122B2B8 != -1)
    {
      swift_once();
    }

    v7 = sub_21FF0B654();
    __swift_project_value_buffer(v7, qword_28122B300);
    v8 = sub_21FF0B634();
    v9 = sub_21FF0B754();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31[0] = v11;
      *v10 = 136315138;
      if (qword_28122B2D0 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v31);
      _os_log_impl(&dword_21FEE5000, v8, v9, "#activation #quickTypeGate %s: no face detection in-flight - skipping cancel", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D74950](v11, -1, -1);
      MEMORY[0x223D74950](v10, -1, -1);
    }
  }

  v27 = v0[7];

  v28 = v0[1];
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_21FF055B4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_21FF09B8C;

  return SiriQuickTypeGestureActivationManager.cancelPrewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t SiriQuickTypeGestureActivationManager.canActivate()()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1E8, &qword_21FF0E2D8);
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1D0, &qword_21FF0E2A8) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21FF057D4, v0, 0);
}

uint64_t sub_21FF057D4()
{
  v39 = v0;
  v1 = v0[11];
  v2 = *(v1 + 128);
  if (v2 == 255 || (v2 & 1) != 0)
  {
LABEL_5:
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    v9 = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    v0[20] = OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_21FF09444(v1 + v9, v8, &qword_27CF1E1D0, &qword_21FF0E2A8);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_21FF094AC(v0[16], &qword_27CF1E1D0, &qword_21FF0E2A8);
      if (qword_28122B2B8 != -1)
      {
        swift_once();
      }

      v10 = sub_21FF0B654();
      __swift_project_value_buffer(v10, qword_28122B300);
      v11 = sub_21FF0B634();
      v12 = sub_21FF0B754();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v38 = v14;
        *v13 = 136315138;
        if (qword_28122B2D0 != -1)
        {
          swift_once();
        }

        *(v13 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v38);
        _os_log_impl(&dword_21FEE5000, v11, v12, "#activation #quickTypeGate %s: Noticed call to canActivate() without a previous call to prewarmForFirstTapOfQuickTypeToSiriGesture(). It's recommended to call prewarm prior to canActivate to speed up canActivate.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x223D74950](v14, -1, -1);
        MEMORY[0x223D74950](v13, -1, -1);
      }

      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_21FF064B0;
      v16 = v0[11];

      return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
    }

    else
    {
      v18 = v0[14];
      v19 = v0[11];
      (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
      sub_21FF0B724();
      v20 = sub_21FF08C30();
      v21 = *(MEMORY[0x277D858B8] + 4);
      v22 = swift_task_alloc();
      v0[21] = v22;
      *v22 = v0;
      v22[1] = sub_21FF05D2C;
      v23 = v0[14];
      v24 = v0[12];

      return MEMORY[0x2822005A8](v0 + 8, v19, v20, v24, v0 + 10);
    }
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 > 0.2)
  {
    v1 = v0[11];
    goto LABEL_5;
  }

  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v25 = sub_21FF0B654();
  __swift_project_value_buffer(v25, qword_28122B300);
  v26 = sub_21FF0B634();
  v27 = sub_21FF0B754();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315394;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v28 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v38);
    *(v28 + 12) = 2080;
    v30 = sub_21FF035A8(v5 * 1000.0);
    v32 = sub_21FF085A0(v30, v31, &v38);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_21FEE5000, v26, v27, "#activation #quickTypeGate %s: using previous observation (age: %sms)", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D74950](v29, -1, -1);
    MEMORY[0x223D74950](v28, -1, -1);
  }

  sub_21FF08C88(v3 & 1);
  v33 = v0[19];
  v34 = v0[15];
  v35 = v0[16];
  v36 = v0[14];

  v37 = v0[1];

  return v37(v3 & 1);
}

uint64_t sub_21FF05D2C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_21FF0676C;
  }

  else
  {
    v5 = sub_21FF05E40;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_21FF05E40()
{
  v27 = v0;
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
LABEL_14:
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    (*(v16 + 8))(v15, v17);
    v18 = *(v0 + 160);
    v19 = *(v0 + 120);
    v20 = *(v0 + 88);
    (*(*(v0 + 144) + 56))(v19, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_21FF08BC0(v19, v20 + v18);
    swift_endAccess();
    v21 = *(v0 + 152);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    v24 = *(v0 + 112);

    v25 = *(v0 + 8);

    return v25(v1 & 1);
  }

  v2 = *(v0 + 72);
  v3 = CFAbsoluteTimeGetCurrent() - v2;
  if (v3 <= 0.2)
  {
    sub_21FF08C88(v1 & 1);
    goto LABEL_14;
  }

  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v4 = sub_21FF0B654();
  __swift_project_value_buffer(v4, qword_28122B300);
  v5 = sub_21FF0B634();
  v6 = sub_21FF0B754();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v7 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v26);
    *(v7 + 12) = 2080;
    v9 = sub_21FF035A8(v3 * 1000.0);
    v11 = sub_21FF085A0(v9, v10, &v26);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_21FEE5000, v5, v6, "#activation #quickTypeGate %s: Latest face detection observation is old (%sms) -> starting new detection", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D74950](v8, -1, -1);
    MEMORY[0x223D74950](v7, -1, -1);
  }

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_21FF06190;
  v13 = *(v0 + 88);

  return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t sub_21FF06190()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 184) = v4;
  *v4 = v3;
  v4[1] = sub_21FF062D0;
  v5 = *(v1 + 88);

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_21FF062D0(char a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_21FF063E8, v3, 0);
}

uint64_t sub_21FF063E8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 208);
  v5 = *(v0 + 152);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_21FF064B0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 200) = v4;
  *v4 = v3;
  v4[1] = sub_21FF065F0;
  v5 = *(v1 + 88);

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_21FF065F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v11 = *v1;

  v5 = v3[19];
  v6 = v3[16];
  v7 = v3[15];
  v8 = v3[14];

  v9 = *(v11 + 8);

  return v9(a1);
}

uint64_t sub_21FF0676C()
{
  v27 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[10];
  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v2 = sub_21FF0B654();
  __swift_project_value_buffer(v2, qword_28122B300);
  v3 = v1;
  v4 = sub_21FF0B634();
  v5 = sub_21FF0B764();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v6 = 136315394;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[17];
    *(v6 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v26);
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_21FEE5000, v4, v5, "#activation #quickTypeGate %s: Forcing canActivate = YES despite error: %@", v6, 0x16u);
    sub_21FF094AC(v7, &qword_27CF1E1D8, &qword_21FF0E2B0);
    MEMORY[0x223D74950](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D74950](v8, -1, -1);
    MEMORY[0x223D74950](v6, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[20];
  v18 = v0[15];
  v19 = v0[11];
  (*(v0[18] + 56))(v18, 1, 1, v0[17]);
  swift_beginAccess();
  sub_21FF08BC0(v18, v19 + v17);
  swift_endAccess();
  v20 = v0[19];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[14];

  v24 = v0[1];

  return v24(1);
}

uint64_t sub_21FF06BE8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_21FF06C90;

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_21FF06C90(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21FF06DDC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E218, &qword_21FF0E4D8);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21FF06EA8, 0, 0);
}

uint64_t sub_21FF06EA8()
{
  v25 = v0;
  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v1 = sub_21FF0B654();
  *(v0 + 88) = __swift_project_value_buffer(v1, qword_28122B300);
  v2 = sub_21FF0B634();
  v3 = sub_21FF0B754();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136315138;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v24);
    _os_log_impl(&dword_21FEE5000, v2, v3, "#activation #quickTypeGate %s: starting to poll", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D74950](v5, -1, -1);
    MEMORY[0x223D74950](v4, -1, -1);
  }

  v6 = *(v0 + 56);
  v7 = sub_21FF07620();
  v9 = v8;
  *(v0 + 96) = 0;
  v10 = v7;
  v11 = sub_21FF0B634();
  v12 = sub_21FF0B774();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315394;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v24);
    *(v13 + 12) = 2080;
    v15 = sub_21FF03450(v9 & 1, v10);
    v17 = sub_21FF085A0(v15, v16, v24);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_21FEE5000, v11, v12, "#activation #quickTypeGate %s: polling succeeded with result: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D74950](v14, -1, -1);
    MEMORY[0x223D74950](v13, -1, -1);
  }

  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);
  *(v0 + 16) = v9 & 1;
  *(v0 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E220, &qword_21FF0E4E0);
  sub_21FF0B704();
  (*(v19 + 8))(v18, v20);
  *(v0 + 40) = 0;
  sub_21FF0B714();
  *(v0 + 112) = v10;
  *(v0 + 104) = v9 & 1;
  v22 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21FF073F4, v22, 0);
}

uint64_t sub_21FF073F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 96) != 0;
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = *(v0 + 104);
  v5 = *(v1 + 152);
  *(v1 + 152) = v2;
  sub_21FF07DC8(v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) = 0;

  return MEMORY[0x2822009F8](sub_21FF07488, 0, 0);
}

uint64_t sub_21FF07488()
{
  v16 = v0;
  v1 = v0[11];
  v2 = sub_21FF0B634();
  v3 = sub_21FF0B754();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12] != 0;
    *(v4 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v15);
    _os_log_impl(&dword_21FEE5000, v2, v3, "#activation #quickTypeGate %s: exiting beginPollingWithContinuation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D74950](v5, -1, -1);
    MEMORY[0x223D74950](v4, -1, -1);
    v9 = v7;
    v10 = v6;
    v11 = v8;
  }

  else
  {
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[12] != 0;
  }

  sub_21FF07DE0(v9, v10, v11);

  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

double sub_21FF07620()
{
  v47[1] = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  SRUIFInstrumentQuickTypeFaceDetectionPollingStartSignpost();
  v2 = *(v0 + OBJC_IVAR____TtC16SiriUIActivation37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
  v47[0] = 0;
  v3 = [v2 resumeWithError_];
  v4 = v47[0];
  v5 = &OBJC_METACLASS___SiriPresentationSpringBoardMainScreenViewController;
  if (v3)
  {
    v46 = 0;
    v47[0] = 0;
    v6 = v4;
    v7 = [v2 pollForAttentionWithTimeout:v47 event:&v46 error:0.5];
    v4 = v47[0];
    v8 = v46;
    if (v7)
    {
      v9 = v4;
      SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost();
      v10 = CFAbsoluteTimeGetCurrent();
      if (qword_28122B2B8 != -1)
      {
        swift_once();
      }

      v11 = sub_21FF0B654();
      __swift_project_value_buffer(v11, qword_28122B300);
      v12 = sub_21FF0B634();
      v13 = sub_21FF0B774();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v47[0] = v15;
        *v14 = 136315394;
        if (qword_28122B2D0 != -1)
        {
          swift_once();
        }

        *(v14 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v47);
        *(v14 + 12) = 2080;
        v16 = sub_21FF035A8((v10 - Current) * 1000.0);
        v18 = sub_21FF085A0(v16, v17, v47);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_21FEE5000, v12, v13, "#activation #quickTypeGate %s: polling succeeded in %sms", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D74950](v15, -1, -1);
        MEMORY[0x223D74950](v14, -1, -1);

        v19 = 1;
        v20 = v4;
        v5 = &OBJC_METACLASS___SiriPresentationSpringBoardMainScreenViewController;
      }

      else
      {

        v19 = 1;
        v20 = v4;
      }

      goto LABEL_19;
    }

    v21 = v8;
    v20 = v4;
  }

  else
  {
    v20 = 0;
    v21 = v47[0];
  }

  v22 = v4;
  v19 = sub_21FF0B5C4();

  swift_willThrow();
  SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost();
  v23 = CFAbsoluteTimeGetCurrent();
  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v24 = sub_21FF0B654();
  __swift_project_value_buffer(v24, qword_28122B300);
  v25 = sub_21FF0B634();
  v26 = sub_21FF0B774();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47[0] = v28;
    *v27 = 136315394;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v47);
    *(v27 + 12) = 2080;
    v29 = sub_21FF035A8((v23 - Current) * 1000.0);
    v31 = sub_21FF085A0(v29, v30, v47);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_21FEE5000, v25, v26, "#activation #quickTypeGate %s: polling cancelled or failed in %sms", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D74950](v28, -1, -1);
    MEMORY[0x223D74950](v27, -1, -1);

    v5 = &OBJC_METACLASS___SiriPresentationSpringBoardMainScreenViewController;
  }

  else
  {
  }

LABEL_19:
  v47[0] = 0;
  if (![v2 suspendWithError_])
  {
    v33 = v47[0];
    v34 = sub_21FF0B5C4();

    swift_willThrow();
    if (v5[17].cache != -1)
    {
      swift_once();
    }

    v35 = sub_21FF0B654();
    __swift_project_value_buffer(v35, qword_28122B300);
    v36 = v34;
    v37 = sub_21FF0B634();
    v38 = sub_21FF0B764();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v39 = 136315394;
      if (qword_28122B2D0 != -1)
      {
        swift_once();
      }

      *(v39 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, v47);
      *(v39 + 12) = 2112;
      v42 = v34;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v43;
      *v40 = v43;
      _os_log_impl(&dword_21FEE5000, v37, v38, "#activation #quickTypeGate %s: Failed to suspend attention awareness client with error %@", v39, 0x16u);
      sub_21FF094AC(v40, &qword_27CF1E1D8, &qword_21FF0E2B0);
      MEMORY[0x223D74950](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223D74950](v41, -1, -1);
      MEMORY[0x223D74950](v39, -1, -1);
    }

    else
    {
    }

    if (v19 == 1)
    {
      goto LABEL_21;
    }

LABEL_31:
    v47[0] = v19;
    sub_21FF091B8();
    swift_willThrowTypedImpl();

    goto LABEL_33;
  }

  v32 = v47[0];
  if (v19 != 1)
  {
    goto LABEL_31;
  }

LABEL_21:
  if (v20)
  {
    [v20 eventMask];
  }

  Current = CFAbsoluteTimeGetCurrent();

LABEL_33:
  v44 = *MEMORY[0x277D85DE8];
  return Current;
}

uint64_t sub_21FF07D10()
{
  v0 = sub_21FF0B654();
  __swift_allocate_value_buffer(v0, qword_28122B300);
  __swift_project_value_buffer(v0, qword_28122B300);
  return sub_21FF0B644();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_21FF07DC8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_21FF07DE0(a1, a2, a3 & 1);
  }
}

void sub_21FF07DE0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_21FF07DEC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21FF07EE4;

  return v7(a1);
}

uint64_t sub_21FF07EE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21FF07FDC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21FF09B90;

  return v7();
}

uint64_t sub_21FF080C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21FF09B90;

  return v8();
}

uint64_t sub_21FF081AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_21FF09444(a3, v25 - v11, &qword_27CF1E228, &qword_21FF0E4E8);
  v13 = sub_21FF0B6F4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21FF094AC(v12, &qword_27CF1E228, &qword_21FF0E4E8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21FF0B6E4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_21FF0B6D4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_21FF0B694() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_21FF094AC(a3, &qword_27CF1E228, &qword_21FF0E4E8);

    return v23;
  }

LABEL_8:
  sub_21FF094AC(a3, &qword_27CF1E228, &qword_21FF0E4E8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21FF084A8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21FF09B94;

  return v7(a1);
}

uint64_t sub_21FF085A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21FF0866C(v11, 0, 0, 1, a1, a2);
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
    sub_21FF09AC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21FF0866C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21FF08778(a5, a6);
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
    result = sub_21FF0B7B4();
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

uint64_t sub_21FF08778(uint64_t a1, unint64_t a2)
{
  v4 = sub_21FF087C4(a1, a2);
  sub_21FF088F4(&unk_2833B2448);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21FF087C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_21FF089E0(v5, 0);
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

  result = sub_21FF0B7B4();
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
        v10 = sub_21FF0B6B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21FF089E0(v10, 0);
        result = sub_21FF0B794();
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

uint64_t sub_21FF088F4(uint64_t result)
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

  result = sub_21FF08A54(result, v12, 1, v3);
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

void *sub_21FF089E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E248, &qword_21FF0E5A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21FF08A54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E248, &qword_21FF0E5A8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_21FF08B94(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21FF08BAC(result, a2, a3 & 1);
  }

  return result;
}

id sub_21FF08BAC(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_21FF08BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E1D0, &qword_21FF0E2A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21FF08C30()
{
  result = qword_27CF1E1F0;
  if (!qword_27CF1E1F0)
  {
    type metadata accessor for SiriQuickTypeGestureActivationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1E1F0);
  }

  return result;
}

void sub_21FF08C88(char a1)
{
  if (qword_28122B2B8 != -1)
  {
    swift_once();
  }

  v2 = sub_21FF0B654();
  __swift_project_value_buffer(v2, qword_28122B300);
  oslog = sub_21FF0B634();
  v3 = sub_21FF0B774();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315650;
    if (qword_28122B2D0 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_21FF085A0(qword_28122B2D8, unk_28122B2E0, &v14);
    *(v4 + 12) = 2080;
    v6 = (a1 & 1) == 0;
    if (a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2117454;
    }

    if (a1)
    {
      v8 = 0xE000000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v6)
    {
      v9 = 20302;
    }

    else
    {
      v9 = 5457241;
    }

    if (v6)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_21FF085A0(v7, v8, &v14);

    *(v4 + 14) = v11;
    *(v4 + 22) = 2080;
    v12 = sub_21FF085A0(v9, v10, &v14);

    *(v4 + 24) = v12;
    _os_log_impl(&dword_21FEE5000, oslog, v3, "#activation #quickTypeGate %s: %sface detected -> can activate = %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D74950](v5, -1, -1);
    MEMORY[0x223D74950](v4, -1, -1);
  }
}

void sub_21FF08E9C()
{
  sub_21FF08F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21FF08F5C()
{
  if (!qword_28122B2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF1E1C8, &qword_21FF0E2A0);
    v0 = sub_21FF0B784();
    if (!v1)
    {
      atomic_store(v0, &qword_28122B2B0);
    }
  }
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

uint64_t sub_21FF09014(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21FF09064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21FF090B8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21FF090D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceDetectionObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceDetectionObservation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21FF091B8()
{
  result = qword_27CF1E210;
  if (!qword_27CF1E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1E210);
  }

  return result;
}

uint64_t sub_21FF0920C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21FF09B90;

  return sub_21FF06BE8(v2, v3);
}

uint64_t sub_21FF092B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21FF09B90;

  return sub_21FF07FDC(v2, v3, v5);
}

uint64_t sub_21FF09378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21FF09B90;

  return sub_21FF080C4(a1, v4, v5, v7);
}

uint64_t sub_21FF09444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21FF094AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21FF0950C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21FF09B90;

  return sub_21FF084A8(a1, v5);
}

uint64_t sub_21FF095C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21FF09B90;

  return sub_21FF055B4(v2, v3);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21FF096B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21FF09B90;

  return sub_21FF04D10(v2, v3);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_21FF0979C()
{
  result = qword_27CF1E238;
  if (!qword_27CF1E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1E238);
  }

  return result;
}

unint64_t sub_21FF097F0()
{
  result = qword_27CF1E240;
  if (!qword_27CF1E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF1E230, &qword_21FF0E578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF1E240);
  }

  return result;
}

uint64_t sub_21FF09854(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E220, &qword_21FF0E4E0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21FF047A4;

  return sub_21FF04708(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21FF09958(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21FF09B90;

  return sub_21FF07DEC(a1, v5);
}

uint64_t sub_21FF09A10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21FF047A4;

  return sub_21FF07DEC(a1, v5);
}

uint64_t sub_21FF09AC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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