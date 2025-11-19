void sub_2707138B8(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    a1 = 0.0;
  }

  sub_270713BE0(a1);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a2;
  }

  sub_270713BE0(v4);
}

id sub_27071392C(void *a1, uint64_t (*a2)(uint64_t *))
{
  result = [a1 children];
  if (result)
  {
    v4 = result;
    sub_27070F6B0();
    v5 = sub_2707A8710();

    v6 = sub_27070EE70(v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = 0;
  v8 = *(v6 + 16);
  for (i = v6 + 32; ; i += 40)
  {
    if (v8 == v7)
    {

      return 0;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_27070F5BC(i, v22);
    v10 = v23;
    v11 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    HIDEventProtocol.first(where:)(a2, v10, v11, &v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v18)
    {
      break;
    }

    ++v7;
    result = sub_27071445C(&v17);
  }

  sub_27070F8A8(&v17, v19);
  sub_27070F8A8(v19, &v20);
  sub_27070F8A8(&v20, v22);
  sub_27070F5BC(v22, &v20);
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  v13 = OUTLINED_FUNCTION_24_0();
  result = v14(v13);
  if (result == 9)
  {
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v15 = OUTLINED_FUNCTION_24_0();
    v12 = v16(v15);
    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_270713BE0(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_270778964(a1);
  }
}

BOOL sub_270713C00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_24_0();
  return v2(v1) == 9;
}

uint64_t sub_270713C50(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_27071A454((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
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

void sub_270713DA0()
{
  OUTLINED_FUNCTION_21_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
      v6 = OUTLINED_FUNCTION_30_0();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_14_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_8_1();
        sub_27071A474(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110);
    OUTLINED_FUNCTION_23_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_270713E74()
{
  OUTLINED_FUNCTION_21_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295A8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_8_1();
        sub_27071A49C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_23_0();
    memcpy(v12, v13, v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_270713F84(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v15 = OUTLINED_FUNCTION_32_0();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_270714068()
{
  OUTLINED_FUNCTION_21_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295C0);
      v6 = OUTLINED_FUNCTION_30_0();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_14_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_8_1();
        sub_27071A4E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295C8);
    OUTLINED_FUNCTION_23_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_27071413C()
{
  OUTLINED_FUNCTION_21_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295B8);
      v7 = OUTLINED_FUNCTION_32_0();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 4);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_8_1();
        sub_27071A50C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_23_0();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_270714200()
{
  OUTLINED_FUNCTION_21_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829598);
      v6 = OUTLINED_FUNCTION_30_0();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_14_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_8_1();
        sub_27071A618(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_23_0();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2707142C0()
{
  OUTLINED_FUNCTION_21_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829590);
      v7 = OUTLINED_FUNCTION_32_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_25_0();
      v7[2] = v2;
      v7[3] = 2 * v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_8_1();
        sub_27071A4C4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_23_0();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_2();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_27071437C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829590);
  v4 = OUTLINED_FUNCTION_32_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_25_0();
  v4[2] = a1;
  v4[3] = 2 * v5;
  return v4;
}

void *sub_2707143E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295B0);
  v4 = OUTLINED_FUNCTION_32_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_25_0();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

uint64_t sub_27071445C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t OUTLINED_FUNCTION_2_1(unint64_t result)
{
  if (result >= 0xFF)
  {
    return v1;
  }

  return result;
}

void OUTLINED_FUNCTION_9_1(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    a1 = v2;
  }

  sub_270713BE0(a1);
}

void *OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;

  return __swift_project_boxed_opaque_existential_1(&a13, v17);
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_16_0()
{

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

void OUTLINED_FUNCTION_17_0()
{

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

unint64_t OUTLINED_FUNCTION_18_0()
{

  return _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
}

unint64_t OUTLINED_FUNCTION_19_0()
{

  return _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return IOHIDEventGetPhase();
}

void *OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;

  return __swift_project_boxed_opaque_existential_1(&a13, v17);
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  return sub_270708D74(a13, a14);
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_270706C38(v2, v3);
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_27070F5BC(va1, va);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  v2 = *(v0 + 16) + 1;

  return sub_270713C50(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_33_0()
{

  sub_2707138B8(v1, v2);
}

uint64_t GameControllerEvent.init(time:controllerType:dpadUp:dpadDown:dpadLeft:dpadRight:faceX:faceY:faceA:faceB:joystickLeft:thumbstickLeft:joystickRight:thumbstickRight:shoulderL1:shoulderL2:shoulderR1:shoulderR2:flags:)()
{
  v0 = IOHIDEventCreate();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetEventFlags();
  return v0;
}

uint64_t GameControllerEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 35)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t GameControllerEvent.controllerType.getter()
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t GameControllerEvent.controllerType.modify(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(a1 + 8) = result;
    return OUTLINED_FUNCTION_20();
  }

  __break(1u);
  return result;
}

uint64_t GameControllerEvent.dpadUp.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.dpadDown.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.dpadLeft.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.dpadRight.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

double GameControllerEvent.joystickLeft.getter()
{
  OUTLINED_FUNCTION_9_2();
  IOHIDEventGetDoubleValue();
  v1 = v0;
  OUTLINED_FUNCTION_7_2();
  IOHIDEventGetDoubleValue();
  return v1;
}

void sub_270714D38(uint64_t a1@<X8>)
{
  *a1 = GameControllerEvent.joystickLeft.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t GameControllerEvent.joystickLeft.setter()
{
  OUTLINED_FUNCTION_9_2();
  IOHIDEventSetDoubleValue();
  OUTLINED_FUNCTION_7_2();

  return IOHIDEventSetDoubleValue();
}

uint64_t (*GameControllerEvent.joystickLeft.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetDoubleValue();
  v4 = v3;
  IOHIDEventGetDoubleValue();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = 0;
  return sub_270714E44;
}

double GameControllerEvent.joystickRight.getter()
{
  OUTLINED_FUNCTION_8_2();
  IOHIDEventGetDoubleValue();
  v1 = v0;
  OUTLINED_FUNCTION_7_2();
  IOHIDEventGetDoubleValue();
  return v1;
}

void sub_270714EA0(uint64_t a1@<X8>)
{
  *a1 = GameControllerEvent.joystickRight.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t GameControllerEvent.joystickRight.setter()
{
  OUTLINED_FUNCTION_8_2();
  IOHIDEventSetDoubleValue();
  OUTLINED_FUNCTION_7_2();

  return IOHIDEventSetDoubleValue();
}

uint64_t (*GameControllerEvent.joystickRight.modify(void *a1, uint64_t a2))()
{
  a1[3] = a2;
  IOHIDEventGetDoubleValue();
  v4 = v3;
  IOHIDEventGetDoubleValue();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = 0;
  return sub_270714FAC;
}

uint64_t sub_270714FC0()
{
  IOHIDEventSetDoubleValue();

  return IOHIDEventSetDoubleValue();
}

uint64_t GameControllerEvent.buttonX.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonY.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonA.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonB.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonLeftShoulder1.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonLeftShoulder2.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonRightShoulder1.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonRightShoulder2.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonThumbstickLeft.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t GameControllerEvent.buttonThumbstickRight.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270715458@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = GameControllerEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

unint64_t sub_270715490(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.controllerType.getter();
  *v1 = result;
  return result;
}

uint64_t sub_2707154C4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.dpadUp.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707154F8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.dpadDown.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27071552C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.dpadLeft.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715560(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.dpadRight.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707155A4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonX.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707155D8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonY.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_27071560C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonA.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715640(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonB.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715674(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonLeftShoulder1.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707156A8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonLeftShoulder2.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707156DC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonRightShoulder1.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715710(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonRightShoulder2.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715744(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonThumbstickLeft.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270715778(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = GameControllerEvent.buttonThumbstickRight.getter();
  *v1 = v3;
  return result;
}

uint64_t ButtonUsage.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 2u) << 8);
}

uint64_t sub_270715874@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ButtonUsage.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_2707158C8(uint64_t a1)
{
  result = sub_2707158F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2707158F0()
{
  result = qword_2808295E8;
  if (!qword_2808295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808295E8);
  }

  return result;
}

unint64_t sub_270715948()
{
  result = qword_2808295F0;
  if (!qword_2808295F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808295F0);
  }

  return result;
}

void HIDReport.scaledValue<A>(as:atIndex:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v32 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v32 - v24;
  swift_getAssociatedConformanceWitness();
  v34 = v25;
  HIDReport.subscript.getter(a2, a3, v33, AssociatedTypeWitness, v25);
  (*(a6 + 24))(a5, a6);
  OUTLINED_FUNCTION_12_1();
  v26 = sub_2707A89E0();
  v36 = v12;
  if (v26 < 65)
  {
    OUTLINED_FUNCTION_12_1();
    sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1();
  }

  v27 = *(v12 + 8);
  v27(v22, AssociatedTypeWitness);
  (*(a6 + 32))(a5, a6);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() <= 64)
  {
    OUTLINED_FUNCTION_12_1();
    sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1();
  }

  v28 = v36;
  v29 = OUTLINED_FUNCTION_20_1();
  (v27)(v29);
  v30 = v34;
  (*(v28 + 16))(v35, v34, AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_1();
  if (sub_2707A89E0() <= 64)
  {
    OUTLINED_FUNCTION_12_1();
    sub_2707A89F0();
    OUTLINED_FUNCTION_12_1();
    sub_2707A89D0();
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    OUTLINED_FUNCTION_17_1();
  }

  v31 = OUTLINED_FUNCTION_20_1();
  (v27)(v31);
  v27(v30, AssociatedTypeWitness);
  OUTLINED_FUNCTION_14_1();
}

{
  if (a5 == MEMORY[0x277D84900])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_2707107E4();
  }

  else if (a5 == MEMORY[0x277D84958])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_270710834();
  }

  else if (a5 == MEMORY[0x277D849A8])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_2707108C4();
  }

  else if (a5 == MEMORY[0x277D84A28])
  {
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_18_6();

    sub_270710884();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    switch(__ROR8__(sub_2707A8C00() - 8, 3))
    {
      case 0:
        sub_270778848();
        sub_27077889C();
        OUTLINED_FUNCTION_23_4();
        v13 = MEMORY[0x277D84B78];
        break;
      case 1:
        sub_2707787A0();
        sub_2707787F4();
        OUTLINED_FUNCTION_23_4();
        v13 = MEMORY[0x277D84C58];
        break;
      case 3:
        sub_2707786F8();
        sub_27077874C();
        OUTLINED_FUNCTION_23_4();
        v13 = MEMORY[0x277D84CC0];
        break;
      case 7:
        sub_270778650();
        sub_2707786A4();
        OUTLINED_FUNCTION_23_4();
        v13 = MEMORY[0x277D84D38];
        break;
      default:
        OUTLINED_FUNCTION_13_11();
        __break(1u);
        JUMPOUT(0x270777D68);
    }

    HIDReport.scaledValue<A, B>(as:unsignedType:atIndex:)(v11, v12, a2, a3, a4, a5, v13, a6, v18, v19, v20);
    OUTLINED_FUNCTION_18_6();
  }
}

unint64_t sub_270715DBC()
{
  result = qword_2808295F8;
  if (!qword_2808295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808295F8);
  }

  return result;
}

unint64_t sub_270715E10()
{
  result = qword_280829600;
  if (!qword_280829600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829600);
  }

  return result;
}

void HIDReport.setScaledValue<A>(_:as:atIndex:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v34 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v29 = &v34 - v28;
  if (a4 == MEMORY[0x277D84B78])
  {
    sub_2707163EC(0, 255, v22, v23, v24, v25, v26, v27, v34, v35, v36, SBYTE1(v36), v38, v39, v40, v41, v42, v43, v44, v45, v46);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_14_1();

    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  }

  else if (a4 == MEMORY[0x277D84C58])
  {
    sub_2707164E0(0, 0xFFFFLL, v22, v23, v24, v25, v26, v27, v34, v35, v36, SBYTE2(v36), v38, v39, v40, v41, v42, v43, v44, v45, v46);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_14_1();

    _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcis_0();
  }

  else if (a4 == MEMORY[0x277D84CC0])
  {
    sub_2707165DC(0, 0xFFFFFFFFLL, v22, v23, v24, v25, v26, v27, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_14_1();

    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  }

  else if (a4 == MEMORY[0x277D84D38])
  {
    sub_2707166D0(0, 0xFFFFFFFFFFFFFFFFLL, a1);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_14_1();

    _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
  }

  else
  {
    (*(a5 + 24))(a4, a5);
    (*(a5 + 32))(a4, a5);
    swift_getAssociatedConformanceWitness();
    FixedWidthInteger.init(scaledValue:logicalMinimum:logicalMaximum:)(v20, v16, AssociatedTypeWitness, v29, a1);
    (*(v11 + 16))(v20, v29, AssociatedTypeWitness);
    HIDReport.subscript.setter(v20, a3, AssociatedTypeWitness, AssociatedTypeWitness);
    (*(v11 + 8))(v29, AssociatedTypeWitness);
    OUTLINED_FUNCTION_14_1();
  }
}

void sub_2707163EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_24_1();
  a20 = v21;
  a21 = v23;
  OUTLINED_FUNCTION_18_1();
  v25 = v24;
  v27 = OUTLINED_FUNCTION_10_2(v26);
  if (v27 > v25)
  {
    v27 = v25;
  }

  if (sub_270716EE4(&a11, v27) && (a12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = OUTLINED_FUNCTION_1_4();
  if (!v32 && !v28)
  {
    v29 = OUTLINED_FUNCTION_0_4(v29);
  }

  OUTLINED_FUNCTION_15_2(v29);
  if (!(v30 ^ v28 | v32))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_2();
  if (v30)
  {
    goto LABEL_17;
  }

  if (!v32 & v31)
  {
    v34 = v22;
  }

  if (v34 <= v33)
  {
    v33 = v34;
  }

  sub_270716EE4(&a11, v33);
  if (a12)
  {
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_9_3();
    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_25_1();
  }
}

void sub_2707164E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_24_1();
  a20 = v21;
  a21 = v23;
  OUTLINED_FUNCTION_18_1();
  v25 = v24;
  v27 = OUTLINED_FUNCTION_10_2(v26);
  if (v27 > v25)
  {
    v27 = v25;
  }

  if (sub_270717044(&a11, v27) && (a12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = OUTLINED_FUNCTION_1_4();
  if (!v32 && !v28)
  {
    v29 = OUTLINED_FUNCTION_0_4(v29);
  }

  OUTLINED_FUNCTION_15_2(v29);
  if (!(v30 ^ v28 | v32))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_2();
  if (v30)
  {
    goto LABEL_17;
  }

  if (!v32 & v31)
  {
    v34 = v22;
  }

  if (v34 <= v33)
  {
    v33 = v34;
  }

  sub_270717044(&a11, v33);
  if (a12)
  {
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_3();
    MEMORY[0x2743A7BE0](0x3631746E4955, 0xE600000000000000);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_9_3();
    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_25_1();
  }
}

void sub_2707165DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_24_1();
  a20 = v21;
  a21 = v23;
  OUTLINED_FUNCTION_18_1();
  v25 = v24;
  v27 = OUTLINED_FUNCTION_10_2(v26);
  if (v27 > v25)
  {
    v27 = v25;
  }

  if (sub_2707171A4(&a11, v27) && (a12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = OUTLINED_FUNCTION_1_4();
  if (!v32 && !v28)
  {
    v29 = OUTLINED_FUNCTION_0_4(v29);
  }

  OUTLINED_FUNCTION_15_2(v29);
  if (!(v30 ^ v28 | v32))
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_2();
  if (v30)
  {
    goto LABEL_17;
  }

  if (!v32 & v31)
  {
    v34 = v22;
  }

  if (v34 <= v33)
  {
    v33 = v34;
  }

  sub_2707171A4(&a11, v33);
  if (a12)
  {
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_2_3();
    MEMORY[0x2743A7BE0](0x3233746E4955, 0xE600000000000000);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_9_3();
    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_2707166D0(unint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v5 = a1;
  v6 = a2;
  v7 = a2 - a1;
  v8 = v7 * a3 + a1;
  if (v8 > a1)
  {
    v9 = v7 * a3 + a1;
  }

  else
  {
    v9 = a1;
  }

  if (v9 > v6)
  {
    v9 = a2;
  }

  if (sub_270717300(&v14, v9) && (v15 & 1) == 0)
  {
    return v14;
  }

  v10 = 0.0 - v6;
  if (0.0 - v6 != INFINITY)
  {
    *&v10 += (*&v10 >> 63) | 1;
  }

  v11 = -v10;
  if (v8 > v11)
  {
    return v3;
  }

  *&v12 = *&v5 + 1;
  v3 = a1;
  if (v8 < COERCE_DOUBLE(*&v5 + 1))
  {
    return v3;
  }

  if (v8 > COERCE_DOUBLE(*&v5 + 1))
  {
    v12 = v8;
  }

  if (v12 <= v11)
  {
    v11 = v12;
  }

  sub_270717300(&v14, v11);
  if ((v15 & 1) == 0)
  {
    return v14;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x2743A7BE0](0xD00000000000001ELL, 0x80000002707B41F0);
  MEMORY[0x2743A7BE0](0x3436746E4955, 0xE600000000000000);
  MEMORY[0x2743A7BE0](0xD00000000000002ELL, 0x80000002707B4210);
  result = sub_2707A8C70();
  __break(1u);
  return result;
}

unint64_t sub_270716A74()
{
  result = qword_280829608;
  if (!qword_280829608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829608);
  }

  return result;
}

unint64_t sub_270716ACC()
{
  result = qword_280829610;
  if (!qword_280829610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829610);
  }

  return result;
}

unint64_t sub_270716B24()
{
  result = qword_280829618;
  if (!qword_280829618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829618);
  }

  return result;
}

BOOL sub_270716B7C(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_2707A87A0(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_2707A8780();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_270716D30(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_2707A87A0(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_2707A8780();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_270716EE4(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_2707A87A0();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_2707A8780();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v14) = 0;
            LOBYTE(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOBYTE(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOBYTE(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_270717044(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_2707A87A0();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_2707A8780();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 15)
        {
          if (v14 < -16 || v14 > 16)
          {
LABEL_13:
            LOWORD(v14) = 0;
            LOWORD(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOWORD(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 2) = v6;
  return result;
}

BOOL sub_2707171A4(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_2707A87A0();
    if (v10 <= 31)
    {
      v11 = v10;
      v12 = sub_2707A8780();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 31)
        {
          if (v14 < -32 || v14 > 32)
          {
LABEL_13:
            LODWORD(v14) = 0;
            v15 = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          v15 = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LODWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_270717300(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v3 | *&a2 & 0xFFFFFFFFFFFFFLL)
  {
    if (v3 != 2047 && a2 > -1.0)
    {
      v9 = sub_2707A87A0();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_2707A8780();
        v12 = v11 + __clz(__rbit64(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

BOOL sub_270717420(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_40;
  }

  v8 = sub_2707A87A0();
  if (v8 > 31)
  {
    goto LABEL_40;
  }

  v9 = v8;
  v10 = sub_2707A8780();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
LABEL_39:
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_40:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_2707175D0(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_26;
  }

  if (v4 == 2047)
  {
    goto LABEL_29;
  }

  v7 = sub_2707A87A0();
  if (v7 > 63)
  {
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_2707A8780();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
LABEL_28:
    if (a2 >= 0.0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_7;
      }

      v14 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_7;
      }

      v14 = v5 << v12;
    }

    if (v8 != 63)
    {
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_19:
          v13 = 1 << v8;
          goto LABEL_20;
        }

        if (v8 == -64)
        {
          goto LABEL_21;
        }
      }

      v13 = 0;
      goto LABEL_20;
    }

    if (a2 >= 0.0 || v14)
    {
LABEL_29:
      v14 = 0;
      result = 0;
      LOBYTE(v6) = 1;
      goto LABEL_26;
    }

LABEL_40:
    LOBYTE(v6) = 0;
    v14 = 0x8000000000000000;
    goto LABEL_26;
  }

LABEL_7:
  if (v8 == 63)
  {
    goto LABEL_28;
  }

  if (v8 >= -64)
  {
    if (v8 < 0)
    {
      goto LABEL_33;
    }

    v14 = 0;
    goto LABEL_19;
  }

  do
  {
    v13 = 0;
    v14 = 0;
LABEL_20:
    v14 |= v13;
LABEL_21:
    if (a2 >= 0.0)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_33:
    ;
  }

  while (v8 != -64);
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_23:
    LOBYTE(v6) = 0;
    v14 = -v14;
    goto LABEL_26;
  }

LABEL_25:
  LOBYTE(v6) = 0;
LABEL_26:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

void OUTLINED_FUNCTION_2_3()
{

  JUMPOUT(0x2743A7BE0);
}

void OUTLINED_FUNCTION_3_3()
{

  JUMPOUT(0x2743A7BE0);
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x2743A7BE0);
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2707A8B00();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2707A8C70();
}

double OUTLINED_FUNCTION_10_2(double a1)
{
  v3 = (v2 - v1) * a1;
  if (v3 + v1 > v1)
  {
    return v3 + v1;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_2707A84E0();
}

void OUTLINED_FUNCTION_23_1()
{

  JUMPOUT(0x2743A7BE0);
}

uint64_t TouchSensitiveButtonEvent.usage.getter(void *a1)
{
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();

  return IntegerValue | (v3 << 16);
}

uint64_t TouchSensitiveButtonEvent.init(time:usage:normalizedPosition:normalizedPositionDelta:majorRadius:minorRadius:eventMask:touch:flags:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    return IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
  }

  __break(1u);
  return result;
}

uint64_t TouchSensitiveButtonEvent.init(event:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3) == 42)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 352))(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t TouchSensitiveButtonEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.deltaX.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.deltaY.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.majorRadius.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.minorRadius.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t TouchSensitiveButtonEvent.eventMask.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t (*TouchSensitiveButtonEvent.touch.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_270717E88;
}

uint64_t sub_270717EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TouchSensitiveButtonEvent.init(event:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_270717ECC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270717F00(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270717F34(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.deltaX.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270717F68(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.deltaY.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270717F9C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.majorRadius.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270717FD0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.minorRadius.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270718004(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.eventMask.getter();
  *v1 = result;
  return result;
}

BOOL sub_270718038(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = TouchSensitiveButtonEvent.touch.getter();
  *v1 = result;
  return result;
}

uint64_t static RotationEvent.dispatch(report:platform:)(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  type metadata accessor for RotationGesture();
  *(swift_initStackObject() + 16) = v5;
  return RotationGesture.dispatch(report:)(a1, a2);
}

uint64_t RotationGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t RotationGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_270710834();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  RotationEvent = IOHIDEventCreateRotationEvent();
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v6 = v6;
LABEL_6:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      if (v6 >= 12)
      {
        v10 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        if (v10)
        {
          v23 = v10;
          v11 = sub_27070E734(&v23, &v24);
          v13 = v12;
          sub_270706C38(v11, v12);
          v14 = mach_absolute_time();
          v15 = sub_270718460(v14, 16973568, 0, v11, v13, 0);
          IOHIDEventAppendEvent();

          sub_270708D74(v11, v13);
        }
      }

LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2707A9CF0;
      v17 = *(v2 + 16);
      v18 = RotationEvent;
      mach_absolute_time();
      if (v17 == 1)
      {
        DigitizerEvent = IOHIDEventCreateDigitizerEvent();
        v20 = &protocol witness table for DigitizerEvent;
        v21 = &type metadata for DigitizerEvent;
      }

      else
      {
        DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
        v20 = &protocol witness table for PointerEvent;
        v21 = &type metadata for PointerEvent;
      }

      IOHIDEventAppendEvent();

      *(v16 + 56) = v21;
      *(v16 + 64) = v20;
      *(v16 + 32) = DigitizerEvent;

      return v16;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    case 3uLL:
      goto LABEL_10;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270718460(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a1;
  v15 = &v13;
  v16 = a3;
  v17 = a6;
  switch(a5 >> 62)
  {
    case 1uLL:
      v9 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        goto LABEL_15;
      }

      v8 = a4;
LABEL_11:
      VendorDefinedEvent = sub_27071BCB0(v8, v9, sub_27071870C);
      goto LABEL_12;
    case 2uLL:
      v8 = *(a4 + 16);
      v9 = *(a4 + 24);
      goto LABEL_11;
    case 3uLL:
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (HIDWORD(a3))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

LABEL_8:
      OUTLINED_FUNCTION_0_6();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
LABEL_12:
      v11 = VendorDefinedEvent;
      sub_270708D74(a4, a5);
      return v11;
    default:
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (!HIDWORD(a3))
      {
        goto LABEL_8;
      }

      goto LABEL_17;
  }
}

uint64_t sub_270718630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(a5))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result)
  {
    return IOHIDEventCreateVendorDefinedEvent();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2707186DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_270718630(a1, a2, a3, *a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_270718754()
{
  result = sub_270718778();
  qword_280829620 = result;
  *algn_280829628 = v1;
  return result;
}

uint64_t sub_270718778()
{
  v1 = sub_27070E504(&unk_288076048);
  v12 = v1;
  v13 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_2707188F8();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288076070);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for ApplicationCollection;
  *(inited + 64) = &protocol witness table for ApplicationCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_2707188F8()
{
  LOBYTE(v150) = 5;
  v0 = sub_27074110C(&v150, 0xFF1AuLL);
  v148 = v1;
  v149 = v0;
  LOBYTE(v150) = 17;
  v2 = sub_27074110C(&v150, 0xE0F5uLL);
  v146 = v3;
  v147 = v2;
  v5 = sub_27070E504(&unk_288075DC8);
  v150 = v5;
  v151 = v4;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = v5 >> 32;
      break;
    case 2uLL:
      v6 = *(v5 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = BYTE6(v4);
      break;
  }

  sub_270766E38(v6, v6, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v7 = v150;
  v8 = v151;
  sub_270706C38(v150, v151);
  v144 = v8;
  v145 = v7;
  sub_270708D74(v7, v8);
  LOBYTE(v150) = 7;
  v9 = sub_270740DC4(&v150, 255);
  v142 = v10;
  v143 = v9;
  v12 = sub_27070E504(&unk_288075DF0);
  v150 = v12;
  v151 = v11;
  v13 = 0;
  switch(v11 >> 62)
  {
    case 1uLL:
      v13 = v12 >> 32;
      break;
    case 2uLL:
      v13 = *(v12 + 24);
      break;
    case 3uLL:
      break;
    default:
      v13 = BYTE6(v11);
      break;
  }

  sub_270766E38(v13, v13, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v14 = v150;
  v15 = v151;
  sub_270706C38(v150, v151);
  v140 = v15;
  v141 = v14;
  sub_270708D74(v14, v15);
  v17 = sub_27070E504(&unk_288075E18);
  v150 = v17;
  v151 = v16;
  v18 = 0;
  switch(v16 >> 62)
  {
    case 1uLL:
      v18 = v17 >> 32;
      break;
    case 2uLL:
      v18 = *(v17 + 24);
      break;
    case 3uLL:
      break;
    default:
      v18 = BYTE6(v16);
      break;
  }

  sub_270766E38(v18, v18, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v19 = v150;
  v20 = v151;
  sub_270706C38(v150, v151);
  v138 = v20;
  v139 = v19;
  sub_270708D74(v19, v20);
  v22 = sub_27070E504(&unk_288075E40);
  v150 = v22;
  v151 = v21;
  v23 = 0;
  switch(v21 >> 62)
  {
    case 1uLL:
      v23 = v22 >> 32;
      break;
    case 2uLL:
      v23 = *(v22 + 24);
      break;
    case 3uLL:
      break;
    default:
      v23 = BYTE6(v21);
      break;
  }

  sub_270766E38(v23, v23, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v24 = v150;
  v25 = v151;
  sub_270706C38(v150, v151);
  v136 = v25;
  v137 = v24;
  sub_270708D74(v24, v25);
  LOBYTE(v150) = 5;
  v26 = sub_27074110C(&v150, 0xFF1AuLL);
  v134 = v27;
  v135 = v26;
  LOBYTE(v150) = 17;
  v28 = sub_27074110C(&v150, 0xE0F6uLL);
  v132 = v29;
  v133 = v28;
  v31 = sub_27070E504(&unk_288075E68);
  v150 = v31;
  v151 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v33 = v150;
  v34 = v151;
  sub_270706C38(v150, v151);
  v130 = v34;
  v131 = v33;
  sub_270708D74(v33, v34);
  LOBYTE(v150) = 7;
  v35 = sub_270740DC4(&v150, 255);
  v128 = v36;
  v129 = v35;
  v38 = sub_27070E504(&unk_288075E90);
  v150 = v38;
  v151 = v37;
  v39 = 0;
  switch(v37 >> 62)
  {
    case 1uLL:
      v39 = v38 >> 32;
      break;
    case 2uLL:
      v39 = *(v38 + 24);
      break;
    case 3uLL:
      break;
    default:
      v39 = BYTE6(v37);
      break;
  }

  sub_270766E38(v39, v39, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v40 = v150;
  v41 = v151;
  sub_270706C38(v150, v151);
  v126 = v41;
  v127 = v40;
  sub_270708D74(v40, v41);
  v43 = sub_27070E504(&unk_288075EB8);
  v150 = v43;
  v151 = v42;
  v44 = 0;
  switch(v42 >> 62)
  {
    case 1uLL:
      v44 = v43 >> 32;
      break;
    case 2uLL:
      v44 = *(v43 + 24);
      break;
    case 3uLL:
      break;
    default:
      v44 = BYTE6(v42);
      break;
  }

  sub_270766E38(v44, v44, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v45 = v150;
  v46 = v151;
  sub_270706C38(v150, v151);
  v122 = v46;
  v123 = v45;
  sub_270708D74(v45, v46);
  v48 = sub_27070E504(&unk_288075EE0);
  v150 = v48;
  v151 = v47;
  v49 = 0;
  switch(v47 >> 62)
  {
    case 1uLL:
      v49 = v48 >> 32;
      break;
    case 2uLL:
      v49 = *(v48 + 24);
      break;
    case 3uLL:
      break;
    default:
      v49 = BYTE6(v47);
      break;
  }

  sub_270766E38(v49, v49, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v50 = v150;
  v51 = v151;
  sub_270706C38(v150, v151);
  v124 = v51;
  v125 = v50;
  sub_270708D74(v50, v51);
  LOBYTE(v150) = 5;
  v120 = sub_27074110C(&v150, 0xFF1AuLL);
  v121 = v52;
  LOBYTE(v150) = 17;
  v118 = sub_27074110C(&v150, 0xE0F7uLL);
  v119 = v53;
  v55 = sub_27070E504(&unk_288075F08);
  v150 = v55;
  v151 = v54;
  v56 = 0;
  switch(v54 >> 62)
  {
    case 1uLL:
      v56 = v55 >> 32;
      break;
    case 2uLL:
      v56 = *(v55 + 24);
      break;
    case 3uLL:
      break;
    default:
      v56 = BYTE6(v54);
      break;
  }

  sub_270766E38(v56, v56, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v57 = v150;
  v58 = v151;
  sub_270706C38(v150, v151);
  v116 = v58;
  v117 = v57;
  sub_270708D74(v57, v58);
  LOBYTE(v150) = 7;
  v114 = sub_270740DC4(&v150, 255);
  v115 = v59;
  v61 = sub_27070E504(&unk_288075F30);
  v150 = v61;
  v151 = v60;
  v62 = 0;
  switch(v60 >> 62)
  {
    case 1uLL:
      v62 = v61 >> 32;
      break;
    case 2uLL:
      v62 = *(v61 + 24);
      break;
    case 3uLL:
      break;
    default:
      v62 = BYTE6(v60);
      break;
  }

  sub_270766E38(v62, v62, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v64 = v150;
  v63 = v151;
  sub_270706C38(v150, v151);
  v112 = v64;
  v113 = v63;
  sub_270708D74(v64, v63);
  v66 = sub_27070E504(&unk_288075F58);
  v150 = v66;
  v151 = v65;
  v67 = 0;
  switch(v65 >> 62)
  {
    case 1uLL:
      v67 = v66 >> 32;
      break;
    case 2uLL:
      v67 = *(v66 + 24);
      break;
    case 3uLL:
      break;
    default:
      v67 = BYTE6(v65);
      break;
  }

  sub_270766E38(v67, v67, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v68 = v150;
  v69 = v151;
  sub_270706C38(v150, v151);
  v111 = v68;
  sub_270708D74(v68, v69);
  v71 = sub_27070E504(&unk_288075F80);
  v150 = v71;
  v151 = v70;
  v72 = 0;
  switch(v70 >> 62)
  {
    case 1uLL:
      v72 = v71 >> 32;
      break;
    case 2uLL:
      v72 = *(v71 + 24);
      break;
    case 3uLL:
      break;
    default:
      v72 = BYTE6(v70);
      break;
  }

  sub_270766E38(v72, v72, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v73 = v150;
  v74 = v151;
  sub_270706C38(v150, v151);
  v110 = v73;
  sub_270708D74(v73, v74);
  LOBYTE(v150) = 5;
  v75 = sub_27074110C(&v150, 0xFF1AuLL);
  v108 = v76;
  v109 = v75;
  LOBYTE(v150) = 17;
  v77 = sub_27074110C(&v150, 0xE0F8uLL);
  v106 = v78;
  v107 = v77;
  v80 = sub_27070E504(&unk_288075FA8);
  v150 = v80;
  v151 = v79;
  v81 = 0;
  switch(v79 >> 62)
  {
    case 1uLL:
      v81 = v80 >> 32;
      break;
    case 2uLL:
      v81 = *(v80 + 24);
      break;
    case 3uLL:
      break;
    default:
      v81 = BYTE6(v79);
      break;
  }

  sub_270766E38(v81, v81, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v82 = v150;
  v83 = v151;
  sub_270706C38(v150, v151);
  sub_270708D74(v82, v83);
  LOBYTE(v150) = 7;
  v84 = sub_270740DC4(&v150, 0xFFFFLL);
  v104 = v85;
  v105 = v84;
  v87 = sub_27070E504(&unk_288075FD0);
  v150 = v87;
  v151 = v86;
  v88 = 0;
  switch(v86 >> 62)
  {
    case 1uLL:
      v88 = v87 >> 32;
      break;
    case 2uLL:
      v88 = *(v87 + 24);
      break;
    case 3uLL:
      break;
    default:
      v88 = BYTE6(v86);
      break;
  }

  sub_270766E38(v88, v88, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v90 = v150;
  v89 = v151;
  sub_270706C38(v150, v151);
  sub_270708D74(v90, v89);
  v92 = sub_27070E504(&unk_288075FF8);
  v150 = v92;
  v151 = v91;
  v93 = 0;
  switch(v91 >> 62)
  {
    case 1uLL:
      v93 = v92 >> 32;
      break;
    case 2uLL:
      v93 = *(v92 + 24);
      break;
    case 3uLL:
      break;
    default:
      v93 = BYTE6(v91);
      break;
  }

  sub_270766E38(v93, v93, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v95 = v150;
  v94 = v151;
  sub_270706C38(v150, v151);
  sub_270708D74(v95, v94);
  v97 = sub_27070E504(&unk_288076020);
  v150 = v97;
  v151 = v96;
  v98 = 0;
  switch(v96 >> 62)
  {
    case 1uLL:
      v98 = v97 >> 32;
      break;
    case 2uLL:
      v98 = *(v97 + 24);
      break;
    case 3uLL:
      break;
    default:
      v98 = BYTE6(v96);
      break;
  }

  sub_270766E38(v98, v98, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v99 = v150;
  v100 = v151;
  sub_270706C38(v150, v151);
  sub_270708D74(v99, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  v101 = swift_allocObject();
  *(v101 + 72) = v149;
  *(v101 + 80) = v148;
  *(v101 + 112) = v147;
  *(v101 + 120) = v146;
  *(v101 + 152) = v145;
  *(v101 + 160) = v144;
  *(v101 + 192) = v143;
  *(v101 + 200) = v142;
  *(v101 + 232) = v141;
  *(v101 + 240) = v140;
  *(v101 + 272) = v139;
  *(v101 + 280) = v138;
  *(v101 + 312) = v137;
  *(v101 + 320) = v136;
  *(v101 + 352) = v135;
  *(v101 + 360) = v134;
  *(v101 + 392) = v133;
  *(v101 + 400) = v132;
  *(v101 + 432) = v131;
  *(v101 + 440) = v130;
  *(v101 + 472) = v129;
  *(v101 + 480) = v128;
  *(v101 + 512) = v127;
  *(v101 + 520) = v126;
  *(v101 + 552) = v123;
  *(v101 + 560) = v122;
  *(v101 + 56) = &type metadata for ReportID;
  *(v101 + 64) = &protocol witness table for ReportID;
  *(v101 + 32) = 20;
  *(v101 + 16) = xmmword_2707AA770;
  *(v101 + 592) = v125;
  *(v101 + 600) = v124;
  *(v101 + 96) = &type metadata for UsagePage;
  *(v101 + 104) = &protocol witness table for UsagePage;
  *(v101 + 632) = v120;
  *(v101 + 640) = v121;
  *(v101 + 672) = v118;
  *(v101 + 136) = &type metadata for Usage;
  *(v101 + 144) = &protocol witness table for Usage;
  *(v101 + 680) = v119;
  *(v101 + 176) = &type metadata for LogicalMinimum;
  *(v101 + 184) = &protocol witness table for LogicalMinimum;
  *(v101 + 712) = v117;
  *(v101 + 720) = v116;
  *(v101 + 216) = &type metadata for LogicalMaximum;
  *(v101 + 224) = &protocol witness table for LogicalMaximum;
  *(v101 + 752) = v114;
  *(v101 + 760) = v115;
  *(v101 + 792) = v112;
  *(v101 + 256) = &type metadata for ReportSize;
  *(v101 + 264) = &protocol witness table for ReportSize;
  *(v101 + 800) = v113;
  *(v101 + 296) = &type metadata for ReportCount;
  *(v101 + 304) = &protocol witness table for ReportCount;
  *(v101 + 832) = v111;
  *(v101 + 840) = v69;
  *(v101 + 336) = &type metadata for Input;
  *(v101 + 344) = &protocol witness table for Input;
  *(v101 + 376) = &type metadata for UsagePage;
  *(v101 + 384) = &protocol witness table for UsagePage;
  *(v101 + 416) = &type metadata for Usage;
  *(v101 + 424) = &protocol witness table for Usage;
  *(v101 + 456) = &type metadata for LogicalMinimum;
  *(v101 + 464) = &protocol witness table for LogicalMinimum;
  *(v101 + 496) = &type metadata for LogicalMaximum;
  *(v101 + 504) = &protocol witness table for LogicalMaximum;
  *(v101 + 536) = &type metadata for ReportSize;
  *(v101 + 544) = &protocol witness table for ReportSize;
  *(v101 + 576) = &type metadata for ReportCount;
  *(v101 + 584) = &protocol witness table for ReportCount;
  *(v101 + 616) = &type metadata for Input;
  *(v101 + 624) = &protocol witness table for Input;
  *(v101 + 656) = &type metadata for UsagePage;
  *(v101 + 664) = &protocol witness table for UsagePage;
  *(v101 + 696) = &type metadata for Usage;
  *(v101 + 704) = &protocol witness table for Usage;
  *(v101 + 736) = &type metadata for LogicalMinimum;
  *(v101 + 744) = &protocol witness table for LogicalMinimum;
  *(v101 + 776) = &type metadata for LogicalMaximum;
  *(v101 + 784) = &protocol witness table for LogicalMaximum;
  *(v101 + 816) = &type metadata for ReportSize;
  *(v101 + 824) = &protocol witness table for ReportSize;
  *(v101 + 856) = &type metadata for ReportCount;
  *(v101 + 864) = &protocol witness table for ReportCount;
  *(v101 + 896) = &type metadata for Input;
  *(v101 + 904) = &protocol witness table for Input;
  *(v101 + 872) = v110;
  *(v101 + 880) = v74;
  *(v101 + 936) = &type metadata for UsagePage;
  *(v101 + 944) = &protocol witness table for UsagePage;
  *(v101 + 912) = v109;
  *(v101 + 920) = v108;
  *(v101 + 976) = &type metadata for Usage;
  *(v101 + 984) = &protocol witness table for Usage;
  *(v101 + 952) = v107;
  *(v101 + 960) = v106;
  *(v101 + 1016) = &type metadata for LogicalMinimum;
  *(v101 + 1024) = &protocol witness table for LogicalMinimum;
  *(v101 + 992) = v82;
  *(v101 + 1000) = v83;
  *(v101 + 1056) = &type metadata for LogicalMaximum;
  *(v101 + 1064) = &protocol witness table for LogicalMaximum;
  *(v101 + 1032) = v105;
  *(v101 + 1040) = v104;
  *(v101 + 1096) = &type metadata for ReportSize;
  *(v101 + 1104) = &protocol witness table for ReportSize;
  *(v101 + 1072) = v90;
  *(v101 + 1080) = v89;
  *(v101 + 1136) = &type metadata for ReportCount;
  *(v101 + 1144) = &protocol witness table for ReportCount;
  *(v101 + 1112) = v95;
  *(v101 + 1120) = v94;
  *(v101 + 1176) = &type metadata for Input;
  *(v101 + 1184) = &protocol witness table for Input;
  *(v101 + 1152) = v99;
  *(v101 + 1160) = v100;
  v102 = static HIDReportDescriptor.Builder.buildBlock(_:)(v101);
  swift_setDeallocating();
  sub_27078DA0C();
  return v102;
}

uint64_t static GenericGestureReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829420 != -1)
  {
    swift_once();
  }

  v2 = qword_280829620;
  v3 = *algn_280829628;
  *a1 = qword_280829620;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t GenericGestureReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270719874()
{
  v1 = *v0;
  sub_270706C38(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2707198A8@<X0>(uint64_t *a1@<X8>)
{
  result = GenericGestureReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_270719900@<X0>(_BYTE *a1@<X8>)
{
  result = GenericGestureReport.phaseBits.getter();
  *a1 = result;
  return result;
}

void (*GenericGestureReport.phaseBits.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270719980;
}

unint64_t sub_2707199D4@<X0>(_BYTE *a1@<X8>)
{
  result = GenericGestureReport.phase.getter();
  *a1 = result;
  return result;
}

void GenericGestureReport.phase.setter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_1_6(v0);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

void (*GenericGestureReport.phase.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x8F;
  return sub_270719A90;
}

void sub_270719A90()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_1_6(v0);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t sub_270719AF0@<X0>(_DWORD *a1@<X8>)
{
  result = GenericGestureReport.gestureType.getter();
  *a1 = result;
  return result;
}

void (*GenericGestureReport.gestureType.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270719B80;
}

unint64_t sub_270719BC8@<X0>(_BYTE *a1@<X8>)
{
  result = GenericGestureReport.tapCount.getter();
  *a1 = result;
  return result;
}

void (*GenericGestureReport.tapCount.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270719C48;
}

uint64_t (*GenericGestureReport.swipeProgress.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0() / 65535.0;
  return sub_270719D8C;
}

unint64_t HIDScrollMomentum.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_270719F44@<X0>(_BYTE *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_0();
  *a1 = result;
  return result;
}

uint64_t sub_270719F78@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A7F2C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_270719FA8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27075E0D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_270719FD8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27075E248(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27071A010@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A7F4C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27071A044@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A7F54(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27071A090@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2707A7F3C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27071A110@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707A7F44();
  *a1 = result;
  return result;
}

uint64_t HIDScrollMomentum.description.getter(char a1)
{
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  if ((a1 & 2) != 0)
  {
    v21 = MEMORY[0x277D84F90];
    sub_27071A6EC();
    v5 = v21;
    OUTLINED_FUNCTION_5_4();
    if (v9)
    {
      OUTLINED_FUNCTION_1_7();
      v5 = v21;
    }

    *(v5 + 16) = v1;
    *(v5 + v2 + 32) = 2;
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_5_4();
  if (v9)
  {
    OUTLINED_FUNCTION_1_7();
  }

  *(v5 + 16) = v1;
  *(v5 + v2 + 32) = 1;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_15:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_5_4();
  if (v9)
  {
    OUTLINED_FUNCTION_1_7();
  }

  *(v5 + 16) = v1;
  *(v5 + v2 + 32) = 4;
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    v6 = *(v5 + 16);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v10 = *(v5 + 16);
  v6 = v10 + 1;
  if (v10 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  *(v5 + 16) = v6;
  *(v5 + v10 + 32) = 16;
LABEL_25:
  sub_27071A63C();
  v11 = 32;
  v12 = 0x65756E69746E6F63;
  do
  {
    if ((*(v5 + v11) & 2) != 0)
    {
      v17 = 0xE500000000000000;
      v15 = 0x7472617473;
    }

    else if (*(v5 + v11))
    {
      v17 = 0xE800000000000000;
      v15 = v12;
    }

    else if ((*(v5 + v11) & 4) != 0)
    {
      v17 = 0xE300000000000000;
      v15 = 6581861;
    }

    else if ((*(v5 + v11) & 0x10) != 0)
    {
      v15 = 0x7075727265746E69;
      v17 = 0xEB00000000646574;
    }

    else
    {
      v13 = v12;
      v14 = sub_2707A8E70();
      v12 = v13;
      v15 = v14;
      v17 = v16;
    }

    v22 = v4;
    v18 = *(v4 + 16);
    if (v18 >= *(v4 + 24) >> 1)
    {
      v20 = v12;
      sub_27071A63C();
      v12 = v20;
      v4 = v22;
    }

    *(v4 + 16) = v18 + 1;
    v19 = v4 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v17;
    ++v11;
    --v6;
  }

  while (v6);
LABEL_6:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
  sub_27071A810(&qword_280829638, &qword_280829630);
  v7 = sub_2707A8550();

  return v7;
}

char *sub_27071A454(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_27071A474(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_27071A49C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_27071A4C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_27071A4E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_27071A50C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_27071A52C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_27071A618(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

unint64_t sub_27071A720()
{
  result = qword_280829640;
  if (!qword_280829640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829640);
  }

  return result;
}

unint64_t sub_27071A778()
{
  result = qword_280829648;
  if (!qword_280829648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829648);
  }

  return result;
}

uint64_t sub_27071A810(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_27071A85C()
{
  result = qword_280829660;
  if (!qword_280829660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829660);
  }

  return result;
}

unint64_t sub_27071A8B4()
{
  result = qword_280829668;
  if (!qword_280829668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829668);
  }

  return result;
}

char *sub_27071A968(char *a1, int64_t a2, char a3)
{
  result = sub_27071AE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27071A988(size_t a1, int64_t a2, char a3)
{
  result = sub_27071B004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071A9A8(char *a1, int64_t a2, char a3)
{
  result = sub_27071B1D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071A9C8(char *a1, int64_t a2, char a3)
{
  result = sub_27071B2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071A9E8(char *a1, int64_t a2, char a3)
{
  result = sub_27071B3CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071AA08(char *a1, int64_t a2, char a3)
{
  result = sub_27071B4D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071AA28(char *a1, int64_t a2, char a3)
{
  result = sub_27071B5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27071AA48(char *a1, int64_t a2, char a3)
{
  result = sub_27071B6D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_27071AA68()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  OUTLINED_FUNCTION_5_1();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A310);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 16);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27071AB50()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  OUTLINED_FUNCTION_5_1();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    *(v8 + 2) = v2;
    *(v8 + 3) = 2 * v9 - 64;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[v2] <= v10)
    {
      memmove(v10, v11, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v10, v11, v2);
  }
}

void sub_27071AC1C()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    OUTLINED_FUNCTION_4_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = *(v0 + 2);
  if (v5 <= v8)
  {
    v9 = *(v0 + 2);
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }
}

void sub_27071ACFC()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  OUTLINED_FUNCTION_5_1();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110);
    swift_arrayInitWithCopy();
  }
}

char *sub_27071AE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829698);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27071AF1C()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829590);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

size_t sub_27071B004(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_27071A52C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_27071B1D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27071B2D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_27071B3CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27071B4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_27071B5D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_27071B6D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void OUTLINED_FUNCTION_1_7()
{

  sub_27071A6EC();
}

void OUTLINED_FUNCTION_4_4()
{

  sub_27071A6EC();
}

void *VendorDefinedEvent.init<A>(timestamp:usage:version:data:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(a5 >> 62)
  {
    case 1uLL:
      v16 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
        JUMPOUT(0x27071B978);
      }

      v15 = a4;
      goto LABEL_8;
    case 2uLL:
      v15 = *(a4 + 16);
      v16 = *(a4 + 24);
LABEL_8:
      v17 = sub_27071BCB0(v15, v16, sub_27071BA9C);
      goto LABEL_9;
    case 3uLL:
      v11 = OUTLINED_FUNCTION_0_8();
      v14 = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v11 = OUTLINED_FUNCTION_0_8();
      v13 = a5 & 0xFFFFFFFFFFFFFFLL;
      v14 = a4;
LABEL_5:
      v17 = sub_27071BC20(v11, v12, v14, v13);
LABEL_9:
      v18 = v17;
      sub_270708D74(a4, a5);
      (*(*(a7 - 8) + 8))(a2, a7);
      return v18;
  }
}

uint64_t sub_27071B988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  result = (*(a4 + 16))(a3, a4);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a4 + 24))(a3, a4);
  if (result > 0xFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((result | a2) < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a1)
  {
    result = IOHIDEventCreateVendorDefinedEvent();
    *a5 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t VendorDefinedEvent.data.getter(void *a1)
{
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  DataValue = IOHIDEventGetDataValue();
  v4 = sub_27070E734(DataValue, DataValue + IntegerValue);

  return v4;
}

void VendorDefinedEvent.withUnsafeBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, void *a3)
{
  v4 = a3;
  IntegerValue = IOHIDEventGetIntegerValue();
  DataValue = IOHIDEventGetDataValue();
  a1(DataValue, DataValue + IntegerValue);
}

uint64_t VendorDefinedEvent.usage.getter(void *a1)
{
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();

  return IntegerValue | (v3 << 16);
}

void *sub_27071BC20(void *(*a1)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = WORD2(a4);
  v8 = a4;
  result = a1(&v6, &v7, &v7 + BYTE6(a4));
  if (!v4)
  {
    return v6;
  }

  return result;
}

void *sub_27071BCB0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_2707A81F0();
  v8 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_2707A8200();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t GameControllerFilter.__allocating_init(service:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameControllerFilter.init(platform:service:)(v4, a1, a2);
  return v4;
}

uint64_t GameControllerFilter.__allocating_init(platform:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  GameControllerFilter.init(platform:service:)(v5, a2, a3);
  return v5;
}

void *GameControllerFilter.init(platform:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = 0x800000000;
  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  v3[3] = v6;
  return v3;
}

BOOL GameControllerFilter.filterEvent(_:)(uint64_t a1, uint64_t a2)
{
  sub_27070F5BC(a2, v10);
  v5 = GameControllerEvent.init(event:)(v10);
  if (v5)
  {
    if ((*(v2 + 44) & 8) != 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      sub_27070F5BC(a2, a1);
    }

    if ((*(v2 + 36) & 8) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2707A9CF0;
      v7 = v5;
      *(v6 + 32) = GameControllerReport.init(gameControllerEvent:)();
      *(v6 + 40) = v8;
    }

    else
    {
    }
  }

  else
  {
    sub_27070F5BC(a2, a1);
  }

  return v5 != 0;
}

uint64_t sub_27071C0B4()
{
  result = sub_27071C0D8();
  qword_2808296D8 = result;
  unk_2808296E0 = v1;
  return result;
}

uint64_t sub_27071C0D8()
{
  v1 = sub_27070E504(&unk_288075620);
  v12 = v1;
  v13 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_27071C258();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288075648);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for ApplicationCollection;
  *(inited + 64) = &protocol witness table for ApplicationCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_27071C258()
{
  v1 = sub_27070E504(&unk_2880755A8);
  v16 = v1;
  v19 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v3 = v16;
  v4 = v19;
  sub_270706C38(v16, v19);
  sub_270708D74(v16, v19);
  v6 = sub_27070E504(&unk_2880755D0);
  v17 = v6;
  v20 = v5;
  v7 = 0;
  switch(v5 >> 62)
  {
    case 1uLL:
      v7 = v6 >> 32;
      break;
    case 2uLL:
      v7 = *(v6 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = BYTE6(v5);
      break;
  }

  sub_270766E38(v7, v7, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v8 = v17;
  v9 = v20;
  sub_270706C38(v17, v20);
  sub_270708D74(v17, v20);
  v11 = sub_27070E504(&unk_2880755F8);
  v18 = v11;
  v21 = v10;
  v12 = 0;
  switch(v10 >> 62)
  {
    case 1uLL:
      v12 = v11 >> 32;
      break;
    case 2uLL:
      v12 = *(v11 + 24);
      break;
    case 3uLL:
      break;
    default:
      v12 = BYTE6(v10);
      break;
  }

  sub_270766E38(v12, v12, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v18, v21);
  sub_270708D74(v18, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AAC40;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 14;
  *(inited + 96) = &type metadata for ReportSize;
  *(inited + 104) = &protocol witness table for ReportSize;
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  *(inited + 136) = &type metadata for ReportCount;
  *(inited + 144) = &protocol witness table for ReportCount;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for Input;
  *(inited + 184) = &protocol witness table for Input;
  *(inited + 152) = v18;
  *(inited + 160) = v21;
  v14 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v14;
}

uint64_t static ZoomToggleReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829428 != -1)
  {
    swift_once();
  }

  v2 = qword_2808296D8;
  v3 = unk_2808296E0;
  *a1 = qword_2808296D8;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t ZoomToggleReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_27071C63C@<X0>(uint64_t *a1@<X8>)
{
  result = ZoomToggleReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_27071C67C@<X0>(_BYTE *a1@<X8>)
{
  result = ZoomToggleReport.flags.getter();
  *a1 = result;
  return result;
}

void (*ZoomToggleReport.flags.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270719980;
}

uint64_t static TranslationEvent.dispatch(report:platform:)(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  type metadata accessor for TranslationGesture();
  *(swift_initStackObject() + 16) = v5;
  return TranslationGesture.dispatch(report:)(a1, a2);
}

uint64_t TranslationGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t TranslationGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  sub_270710834();
  OUTLINED_FUNCTION_0_9();
  sub_270710834();
  OUTLINED_FUNCTION_0_9();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  TranslationEvent = IOHIDEventCreateTranslationEvent();
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v6 = v6;
LABEL_6:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      if (v6 >= 14)
      {
        OUTLINED_FUNCTION_0_9();
        v10 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        if (v10)
        {
          v23 = v10;
          v11 = sub_27070E734(&v23, &v24);
          v13 = v12;
          sub_270706C38(v11, v12);
          v14 = mach_absolute_time();
          v15 = sub_270718460(v14, 16973568, 0, v11, v13, 0);
          IOHIDEventAppendEvent();

          sub_270708D74(v11, v13);
        }
      }

LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2707A9CF0;
      v17 = *(v2 + 16);
      v18 = TranslationEvent;
      mach_absolute_time();
      if (v17 == 1)
      {
        DigitizerEvent = IOHIDEventCreateDigitizerEvent();
        v20 = &protocol witness table for DigitizerEvent;
        v21 = &type metadata for DigitizerEvent;
      }

      else
      {
        DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
        v20 = &protocol witness table for PointerEvent;
        v21 = &type metadata for PointerEvent;
      }

      IOHIDEventAppendEvent();

      *(v16 + 56) = v21;
      *(v16 + 64) = v20;
      *(v16 + 32) = DigitizerEvent;

      return v16;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    case 3uLL:
      goto LABEL_10;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t (*TranslationEvent.x.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27071CBDC;
}

uint64_t (*TranslationEvent.y.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27071CC40;
}

uint64_t (*TranslationEvent.z.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27071CCB0;
}

uint64_t sub_27071CCCC@<X0>(void *a1@<X8>)
{
  result = TranslationEvent.x.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27071CD04@<X0>(void *a1@<X8>)
{
  result = TranslationEvent.y.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27071CD3C@<X0>(void *a1@<X8>)
{
  result = TranslationEvent.z.getter();
  *a1 = v3;
  return result;
}

uint64_t EventReportAccumulator.target.setter(uint64_t *a1)
{
  __swift_assign_boxed_opaque_existential_1((v1 + 8), a1);
  EventReportAccumulator.flush(to:)();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

void sub_27071D098(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    EventReportAccumulator.flush(to:)();
  }
}

uint64_t EventReportAccumulator.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EventReportSenderID();
  sub_270724140(&qword_2808296E8, type metadata accessor for EventReportSenderID);
  result = sub_2707A8520();
  *a1 = result;
  a1[4] = &type metadata for NullTarget;
  a1[5] = &off_288077C18;
  return result;
}

uint64_t EventReportAccumulator.Value.keyboard.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t EventReportAccumulator.Value.consumer.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t EventReportAccumulator.Value.appleVendorKeyboard.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t EventReportAccumulator.Value.appleVendorTopCase.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t EventReportAccumulator.Value.pointer.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

uint64_t sub_27071D238(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[2];
  v33 = a1[4];
  v31 = a1[3];
  v32 = a1[5];
  v36 = a1[7];
  v37 = a1[6];
  v41 = a1[8];
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v34 = v3[5];
  v35 = v3[4];
  v39 = v3[6];
  v40 = a1[9];
  v38 = v3[7];
  v11 = v3[8];
  v12 = v3[9];
  if ((MEMORY[0x2743A78C0](*v3, v7, *a1, a1[1]) & 1) == 0)
  {
    v29 = v6;
    v30 = v12;
    v13 = a3;
    v14 = v11;
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v17 = *(v16 + 32);
    v18 = v13;
    v19 = v15;
    a3 = v13;
    v20 = v16;
    v11 = v14;
    v6 = v29;
    v12 = v30;
    v17(v8, v7, v18, v19, v20);
  }

  if ((MEMORY[0x2743A78C0](v9, v10, v6, v31) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_4();
    v21 = OUTLINED_FUNCTION_10_3();
    v22(v21);
  }

  if ((MEMORY[0x2743A78C0](v35, v34, v33, v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_4();
    v23 = OUTLINED_FUNCTION_10_3();
    v24(v23);
  }

  if ((MEMORY[0x2743A78C0](v39, v38, v37, v36) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_4();
    v25 = OUTLINED_FUNCTION_10_3();
    v26(v25);
  }

  result = MEMORY[0x2743A78C0](v11, v12, v41, v40);
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_8_4();
    return (*(v28 + 40))(v11, v12, a3, v6, v7);
  }

  return result;
}

uint64_t static EventReportAccumulator.Value.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v13 = a1[7];
  v14 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if (MEMORY[0x2743A78C0](*a1, a1[1], *a2, a2[1]) & 1) != 0 && (MEMORY[0x2743A78C0](v2, v3, v6, v7) & 1) != 0 && (MEMORY[0x2743A78C0](v4, v5, v8, v9) & 1) != 0 && (MEMORY[0x2743A78C0](v14, v13, v10, v11))
  {

    JUMPOUT(0x2743A78C0);
  }

  return 0;
}

uint64_t sub_27071D504@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829440 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_2808297D8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(1u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v48, v49);
  *a1 = HIDReport.init(bitCount:id:)(&v48, 1);
  a1[1] = v10;
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829AA0);
  v11 = HIDReportDescriptor.reportBitCount(for:)(2u);
  OUTLINED_FUNCTION_42_0(v11, v12, v13, v14, v15, v16, v17, v18, v48, v49);
  a1[2] = HIDReport.init(bitCount:id:)(&v48, 2);
  a1[3] = v19;
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829828);
  v20 = HIDReportDescriptor.reportBitCount(for:)(3u);
  OUTLINED_FUNCTION_42_0(v20, v21, v22, v23, v24, v25, v26, v27, v48, v49);
  a1[4] = HIDReport.init(bitCount:id:)(&v48, 3);
  a1[5] = v28;
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829778);
  v29 = HIDReportDescriptor.reportBitCount(for:)(4u);
  OUTLINED_FUNCTION_42_0(v29, v30, v31, v32, v33, v34, v35, v36, v48, v49);
  a1[6] = HIDReport.init(bitCount:id:)(&v48, 4);
  a1[7] = v37;
  if (qword_2808294F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_28082A808);
  v38 = HIDReportDescriptor.reportBitCount(for:)(5u);
  OUTLINED_FUNCTION_42_0(v38, v39, v40, v41, v42, v43, v44, v45, v48, v49);
  result = HIDReport.init(bitCount:id:)(&v48, 5);
  a1[8] = result;
  a1[9] = v47;
  return result;
}

uint64_t EventReportAccumulator.insert(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    sub_270721F0C(a1);
    if (v3)
    {
      return 0;
    }
  }

  sub_27071D504(v6);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_44_0();
  sub_270722ED4(v6, a1);
  *v1 = v5;
  return 1;
}

void EventReportAccumulator.dispatchReport(_:from:accumulateOnly:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v5 = v1;
  v651 = v6;
  v685 = v7;
  v8 = *v0;
  if (*(v8 + 16) && (v9 = sub_270721F0C(v1), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 80 * v9);
    memcpy(v1039, v11, 0x50uLL);
    memcpy(v1038, v11, sizeof(v1038));
    sub_27072305C(v1039, __dst);
  }

  else
  {
    sub_27071D504(v1038);
  }

  memcpy(__dst, v1038, sizeof(__dst));
  v12 = *(&__dst[0] + 1);
  v13 = *&__dst[0];
  *v519 = __dst[2];
  v568 = __dst[1];
  v14 = *(&__dst[3] + 1);
  v15 = *&__dst[3];
  v16 = *(&__dst[4] + 1);
  v17 = *&__dst[4];
  sub_27072305C(__dst, v1039);
  v18 = HIDReport.reportID.getter(v651, v685);
  switch(v18)
  {
    case 1:
      LODWORD(v481) = v4;
      v95 = OUTLINED_FUNCTION_11_3(v18, v19, v20, v21, v22, v23, v24, v25, v369, v407, v444, v481, v519[0], v519[1], v568, *(&v568 + 1), v617, v651);
      sub_27071E260(v95, v96, v97);
      v98 = v1039[0];
      sub_270708D74(v13, v12);
      v1039[0] = v98;
      OUTLINED_FUNCTION_46_0(v524, v573);
      v1039[4] = __PAIR128__(v16, v17);
      v107 = OUTLINED_FUNCTION_13_2(v99, v100, v101, v102, v103, v104, v105, v106, v375, v412, v449, v487, v524.n128_i64[0], v524.n128_i64[1], v573.n128_i64[0], v573.n128_i64[1], v623, v657, v685, v714, v739, v768, v797, v826, v855, v884, v913, v942, v971, v1000, v1029);
      v115 = OUTLINED_FUNCTION_12_2(v107, v108, v109, v110, v111, v112, v113, v114, v376, v413, v450, v488, v525, v549, v574, v598, v624, v658, v690, v719, v744, v773, v802, v831, v860, v889, v918, v947, v976, v1005, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
      v123 = OUTLINED_FUNCTION_41_0(v115, v116, v117, v118, v119, v120, v121, v122, v377, v414, v451, v489, v526, v550, v575, v599, v625, v659, v691, v720, v745, v774, v803, v832, v861, v890, v919, v948, v977, v1006, v1029);
      if (v123)
      {
        sub_270723094(__dst);
        v12 = *(&v98 + 1);
        v13 = v98;
      }

      else
      {
        v13 = v98;
        OUTLINED_FUNCTION_43_0(v123, v124, v125, v126, v127, v128, v129, v130, v378, v415, v452, v490, v519[0], v519[1], v568, *(&v568 + 1), v626, v660, v692, v721, v746, v775, v804, v833, v862, v891, v920, v949, v978, v1007, v1029);
        swift_isUniquelyReferenced_nonNull_native();
        v303 = OUTLINED_FUNCTION_2_6();
        v304 = sub_270722ED4(v303, v5);
        OUTLINED_FUNCTION_35_0(v304, v305, v306, v307, v308, v309, v310, v311, v399, v436, v473, v511, v542, v564, v591, v613, v645, v679, v708, v733, v762, v791, v820, v849, v878, v907, v936, v965, v994, v1023, v1029);
        if ((v512 & 1) == 0)
        {
          v320 = OUTLINED_FUNCTION_13_2(v312, v313, v314, v315, v316, v317, v318, v319, v400, v437, v474, v512, v519[0], v519[1], v568, *(&v568 + 1), v646, v680, v709, v734, v763, v792, v821, v850, v879, v908, v937, v966, v995, v1024, v1029);
          v328 = OUTLINED_FUNCTION_12_2(v320, v321, v322, v323, v324, v325, v326, v327, v401, v438, v475, v513, v543, v565, v592, v614, v647, v681, v710, v735, v764, v793, v822, v851, v880, v909, v938, v967, v996, v1025, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
          OUTLINED_FUNCTION_17_2(v328, v329, v330, v331, v332, v333, v334, v335, v402, v439, v476, v514);
        }

        sub_270723094(__dst);
        v12 = *(&v98 + 1);
      }

      break;
    case 2:
      v235 = OUTLINED_FUNCTION_11_3(v18, v19, v20, v21, v22, v23, v24, v25, v369, v407, v444, v481, v519[0], v519[1], v568, *(&v568 + 1), v617, v651);
      sub_27071E068(v235, v236, v237);
      v702 = v1039[0];
      sub_270708D74(v584, v606);
      v1039[0] = __PAIR128__(v12, v13);
      OUTLINED_FUNCTION_46_0(v537, v702);
      v1039[4] = __PAIR128__(v16, v17);
      v246 = OUTLINED_FUNCTION_13_2(v238, v239, v240, v241, v242, v243, v244, v245, v391, v428, v465, v503, v537.n128_i64[0], v537.n128_i64[1], v584, v606, v638, v672, v702.n128_i64[0], v702.n128_i64[1], v739, v768, v797, v826, v855, v884, v913, v942, v971, v1000, v1029);
      v254 = OUTLINED_FUNCTION_12_2(v246, v247, v248, v249, v250, v251, v252, v253, v392, v429, v466, v504, v538, v560, v585, v607, v639, v673, v703, v729, v756, v785, v814, v843, v872, v901, v930, v959, v988, v1017, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
      v262 = OUTLINED_FUNCTION_41_0(v254, v255, v256, v257, v258, v259, v260, v261, v393, v430, v467, v505, v539, v561, v586, v608, v640, v674, v704, v730, v757, v786, v815, v844, v873, v902, v931, v960, v989, v1018, v1029);
      if ((v262 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_0(v262, v263, v264, v265, v266, v267, v268, v269, v394, v431, v468, v506, v519[0], v519[1], v587, v609, v641, v675, v705[0], v705[1], v758, v787, v816, v845, v874, v903, v932, v961, v990, v1019, v1029);
        swift_isUniquelyReferenced_nonNull_native();
        v270 = OUTLINED_FUNCTION_2_6();
        v271 = sub_270722ED4(v270, v5);
        OUTLINED_FUNCTION_35_0(v271, v272, v273, v274, v275, v276, v277, v278, v395, v432, v469, v507, v540, v562, v588, v610, v642, v676, v706, v731, v759, v788, v817, v846, v875, v904, v933, v962, v991, v1020, v1029);
        if ((v4 & 1) == 0)
        {
          v287 = OUTLINED_FUNCTION_13_2(v279, v280, v281, v282, v283, v284, v285, v286, v396, v433, v470, v508, v519[0], v519[1], v589, v611, v643, v677, v705[0], v705[1], v760, v789, v818, v847, v876, v905, v934, v963, v992, v1021, v1029);
          v295 = OUTLINED_FUNCTION_12_2(v287, v288, v289, v290, v291, v292, v293, v294, v397, v434, v471, v509, v541, v563, v590, v612, v644, v678, v707, v732, v761, v790, v819, v848, v877, v906, v935, v964, v993, v1022, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
          OUTLINED_FUNCTION_17_2(v295, v296, v297, v298, v299, v300, v301, v302, v398, v435, v472, v510);
        }
      }

      sub_270723094(__dst);
      v568 = *v705;
      break;
    case 3:
      v167 = OUTLINED_FUNCTION_11_3(v18, v19, v20, v21, v22, v23, v24, v25, v369, v407, v444, v481, v519[0], v519[1], v568, *(&v568 + 1), v617, v651);
      sub_27071DC78(v167, v168, v169);
      v696 = v1039[0];
      sub_270708D74(v530, v553);
      v1039[0] = __PAIR128__(v12, v13);
      OUTLINED_FUNCTION_46_0(v696, v579);
      v1039[4] = __PAIR128__(v16, v17);
      v178 = OUTLINED_FUNCTION_13_2(v170, v171, v172, v173, v174, v175, v176, v177, v383, v420, v457, v495, v530, v553, v579.n128_i64[0], v579.n128_i64[1], v631, v665, v696.n128_i64[0], v696.n128_i64[1], v739, v768, v797, v826, v855, v884, v913, v942, v971, v1000, v1029);
      v186 = OUTLINED_FUNCTION_12_2(v178, v179, v180, v181, v182, v183, v184, v185, v384, v421, v458, v496, v531, v554, v580, v602, v632, v666, v697, v725, v750, v779, v808, v837, v866, v895, v924, v953, v982, v1011, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
      v194 = OUTLINED_FUNCTION_41_0(v186, v187, v188, v189, v190, v191, v192, v193, v385, v422, v459, v497, v532, v555, v581, v603, v633, v667, v698, v726, v751, v780, v809, v838, v867, v896, v925, v954, v983, v1012, v1029);
      if ((v194 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_0(v194, v195, v196, v197, v198, v199, v200, v201, v386, v423, v460, v498, v533, v556, v568, *(&v568 + 1), v634, v668, v699[0], v699[1], v752, v781, v810, v839, v868, v897, v926, v955, v984, v1013, v1029);
        swift_isUniquelyReferenced_nonNull_native();
        v202 = OUTLINED_FUNCTION_2_6();
        v203 = sub_270722ED4(v202, v5);
        OUTLINED_FUNCTION_35_0(v203, v204, v205, v206, v207, v208, v209, v210, v387, v424, v461, v499, v534, v557, v582, v604, v635, v669, v700, v727, v753, v782, v811, v840, v869, v898, v927, v956, v985, v1014, v1029);
        if ((v4 & 1) == 0)
        {
          v219 = OUTLINED_FUNCTION_13_2(v211, v212, v213, v214, v215, v216, v217, v218, v388, v425, v462, v500, v535, v558, v568, *(&v568 + 1), v636, v670, v699[0], v699[1], v754, v783, v812, v841, v870, v899, v928, v957, v986, v1015, v1029);
          v227 = OUTLINED_FUNCTION_12_2(v219, v220, v221, v222, v223, v224, v225, v226, v389, v426, v463, v501, v536, v559, v583, v605, v637, v671, v701, v728, v755, v784, v813, v842, v871, v900, v929, v958, v987, v1016, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
          OUTLINED_FUNCTION_17_2(v227, v228, v229, v230, v231, v232, v233, v234, v390, v427, v464, v502);
        }
      }

      sub_270723094(__dst);
      *v519 = *v699;
      break;
    case 4:
      LODWORD(v481) = v4;
      v131 = OUTLINED_FUNCTION_11_3(v18, v19, v20, v21, v22, v23, v24, v25, v369, v407, v444, v481, v519[0], v519[1], v568, *(&v568 + 1), v617, v651);
      sub_27071DE70(v131, v132, v133);
      v134 = v1039[0];
      v135 = sub_270708D74(v15, v14);
      v1039[0] = __PAIR128__(v12, v13);
      v1039[1] = v576;
      v1039[2] = *v527;
      v1039[3] = v134;
      v1039[4] = __PAIR128__(v16, v17);
      v143 = OUTLINED_FUNCTION_13_2(v135, v136, v137, v138, v139, v140, v141, v142, v379, v416, v453, v491, v527[0], v527[1], v576, *(&v576 + 1), v627, v661, v685, v714, v739, v768, v797, v826, v855, v884, v913, v942, v971, v1000, v1029);
      v151 = OUTLINED_FUNCTION_12_2(v143, v144, v145, v146, v147, v148, v149, v150, v380, v417, v454, v492, v528, v551, v577, v600, v628, v662, v693, v722, v747, v776, v805, v834, v863, v892, v921, v950, v979, v1008, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
      v159 = OUTLINED_FUNCTION_41_0(v151, v152, v153, v154, v155, v156, v157, v158, v381, v418, v455, v493, v529, v552, v578, v601, v629, v663, v694, v723, v748, v777, v806, v835, v864, v893, v922, v951, v980, v1009, v1029);
      if (v159)
      {
        sub_270723094(__dst);
        v14 = *(&v134 + 1);
        v15 = v134;
      }

      else
      {
        v15 = v134;
        OUTLINED_FUNCTION_43_0(v159, v160, v161, v162, v163, v164, v165, v166, v382, v419, v456, v494, v519[0], v519[1], v568, *(&v568 + 1), v630, v664, v695, v724, v749, v778, v807, v836, v865, v894, v923, v952, v981, v1010, v1029);
        swift_isUniquelyReferenced_nonNull_native();
        v336 = OUTLINED_FUNCTION_2_6();
        v337 = sub_270722ED4(v336, v5);
        OUTLINED_FUNCTION_35_0(v337, v338, v339, v340, v341, v342, v343, v344, v403, v440, v477, v515, v544, v566, v593, v615, v648, v682, v711, v736, v765, v794, v823, v852, v881, v910, v939, v968, v997, v1026, v1029);
        if ((v516 & 1) == 0)
        {
          v353 = OUTLINED_FUNCTION_13_2(v345, v346, v347, v348, v349, v350, v351, v352, v404, v441, v478, v516, v519[0], v519[1], v568, *(&v568 + 1), v649, v683, v712, v737, v766, v795, v824, v853, v882, v911, v940, v969, v998, v1027, v1029);
          v361 = OUTLINED_FUNCTION_12_2(v353, v354, v355, v356, v357, v358, v359, v360, v405, v442, v479, v517, v545, v567, v594, v616, v650, v684, v713, v738, v767, v796, v825, v854, v883, v912, v941, v970, v999, v1028, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
          OUTLINED_FUNCTION_17_2(v361, v362, v363, v364, v365, v366, v367, v368, v406, v443, v480, v518);
        }

        sub_270723094(__dst);
        v14 = *(&v134 + 1);
      }

      break;
    case 5:
      v37 = OUTLINED_FUNCTION_11_3(v18, v19, v20, v21, v22, v23, v24, v25, v369, v407, v444, v5, v519[0], v519[1], v568, *(&v568 + 1), v617, v651);
      sub_27071E458(v37, v38, v39);
      v652 = *&v1039[0];
      v40 = PointerReport.reportWithoutMovement.getter();
      v42 = v41;
      sub_270708D74(v17, v16);
      v1039[0] = __PAIR128__(v12, v13);
      OUTLINED_FUNCTION_46_0(v520, v569);
      *&v1039[4] = v40;
      *(&v1039[4] + 1) = v42;
      v51 = OUTLINED_FUNCTION_13_2(v43, v44, v45, v46, v47, v48, v49, v50, v370, v42, v40, v482, v520.n128_i64[0], v520.n128_i64[1], v569.n128_i64[0], v569.n128_i64[1], v618, v652, v13, v714, v739, v768, v797, v826, v855, v884, v913, v942, v971, v1000, v1029);
      v59 = OUTLINED_FUNCTION_12_2(v51, v52, v53, v54, v55, v56, v57, v58, v371, v408, v445, v483, v521, v546, v570, v595, v619, v653, v686, v715, v740, v769, v798, v827, v856, v885, v914, v943, v972, v1001, v1029, v1030, v1031, *(&v1031 + 1), v1032, *(&v1032 + 1), v1033, v1034, v1035, v1036, __dst[0]);
      v67 = OUTLINED_FUNCTION_41_0(v59, v60, v61, v62, v63, v64, v65, v66, v372, v409, v446, v484, v522, v547, v571, v596, v620, v654, v687, v716, v741, v770, v799, v828, v857, v886, v915, v944, v973, v1002, v1029);
      if ((v67 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_0(v67, v68, v69, v70, v71, v72, v73, v74, v373, v410, v447, v485, v519[0], v519[1], v568, *(&v568 + 1), v621, v655, v688, v717, v742, v771, v800, v829, v858, v887, v916, v945, v974, v1003, v1029);
        swift_isUniquelyReferenced_nonNull_native();
        v75 = OUTLINED_FUNCTION_2_6();
        v76 = sub_270722ED4(v75, v486);
        OUTLINED_FUNCTION_35_0(v76, v77, v78, v79, v80, v81, v82, v83, v374, v411, v448, v486, v523, v548, v572, v597, v622, v656, v689, v718, v743, v772, v801, v830, v859, v888, v917, v946, v975, v1004, v1029);
      }

      v84 = v2;
      v86 = v2[4];
      v85 = v2[5];
      __swift_project_boxed_opaque_existential_1(v84 + 1, v86);
      v87 = *(v85 + 48);
      v88 = OUTLINED_FUNCTION_45_0();
      sub_270706C38(v88, v89);
      v90 = OUTLINED_FUNCTION_45_0();
      v87(v90);
      sub_270723094(__dst);
      v91 = OUTLINED_FUNCTION_45_0();
      sub_270708D74(v91, v92);
      v93 = OUTLINED_FUNCTION_45_0();
      sub_270708D74(v93, v94);
      v16 = v410;
      v17 = v447;
      v13 = v688;
      break;
    case 7:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v26 = v2[4];
      v27 = v2;
      v28 = v13;
      v29 = v12;
      v30 = v15;
      v31 = v14;
      v32 = v17;
      v33 = v16;
      v34 = v27[5];
      __swift_project_boxed_opaque_existential_1(v27 + 1, v26);
      v35 = *(v34 + 48);
      v36 = v34;
      v16 = v33;
      v17 = v32;
      v14 = v31;
      v15 = v30;
      v12 = v29;
      v13 = v28;
      v35(v651, v685, v5, v26, v36);
      goto LABEL_7;
    default:
LABEL_7:
      sub_270723094(__dst);
      break;
  }

  v1029 = v13;
  v1030 = v12;
  v1031 = v568;
  v1032 = *v519;
  v1033 = v15;
  v1034 = v14;
  v1035 = v17;
  v1036 = v16;
  sub_270723094(&v1029);
  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27071DC78@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 < 24)
      {
LABEL_12:
        sub_2707A8B00();

        HIDReport.reportID.getter(v4, v3);
        v14 = sub_2707A8E70();
        MEMORY[0x2743A7BE0](v14);

        MEMORY[0x2743A7BE0](544432416, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829750);
        v15 = sub_2707A85F0();
        MEMORY[0x2743A7BE0](v15);

        sub_2707A8C70();
        __break(1u);
        JUMPOUT(0x27071DE60);
      }

      v10 = HIDReport.init(bitCount:id:)(8 * v6, 3);
      v12 = v11;
      v16 = v11;
      sub_270706C38(v10, v11);
      v13 = HIDReport.initialize(from:)();
      sub_270708D74(v10, v12);
      result = v10;
      a2 = v16;
      if ((v13 & 1) == 0)
      {
LABEL_11:
        sub_270708D74(result, a2);
        goto LABEL_12;
      }

      *a3 = v10;
      a3[1] = v16;
      return result;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_12;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27071DE70@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 < 40)
      {
LABEL_12:
        sub_2707A8B00();

        HIDReport.reportID.getter(v4, v3);
        v14 = sub_2707A8E70();
        MEMORY[0x2743A7BE0](v14);

        MEMORY[0x2743A7BE0](544432416, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829758);
        v15 = sub_2707A85F0();
        MEMORY[0x2743A7BE0](v15);

        sub_2707A8C70();
        __break(1u);
        JUMPOUT(0x27071E058);
      }

      v10 = HIDReport.init(bitCount:id:)(8 * v6, 4);
      v12 = v11;
      v16 = v11;
      sub_270706C38(v10, v11);
      v13 = HIDReport.initialize(from:)();
      sub_270708D74(v10, v12);
      result = v10;
      a2 = v16;
      if ((v13 & 1) == 0)
      {
LABEL_11:
        sub_270708D74(result, a2);
        goto LABEL_12;
      }

      *a3 = v10;
      a3[1] = v16;
      return result;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_12;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27071E068@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 < 72)
      {
LABEL_12:
        sub_2707A8B00();

        HIDReport.reportID.getter(v4, v3);
        v14 = sub_2707A8E70();
        MEMORY[0x2743A7BE0](v14);

        MEMORY[0x2743A7BE0](544432416, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829760);
        v15 = sub_2707A85F0();
        MEMORY[0x2743A7BE0](v15);

        sub_2707A8C70();
        __break(1u);
        JUMPOUT(0x27071E250);
      }

      v10 = HIDReport.init(bitCount:id:)(8 * v6, 2);
      v12 = v11;
      v16 = v11;
      sub_270706C38(v10, v11);
      v13 = HIDReport.initialize(from:)();
      sub_270708D74(v10, v12);
      result = v10;
      a2 = v16;
      if ((v13 & 1) == 0)
      {
LABEL_11:
        sub_270708D74(result, a2);
        goto LABEL_12;
      }

      *a3 = v10;
      a3[1] = v16;
      return result;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_12;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27071E260@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 < 248)
      {
LABEL_12:
        sub_2707A8B00();

        HIDReport.reportID.getter(v4, v3);
        v14 = sub_2707A8E70();
        MEMORY[0x2743A7BE0](v14);

        MEMORY[0x2743A7BE0](544432416, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829768);
        v15 = sub_2707A85F0();
        MEMORY[0x2743A7BE0](v15);

        sub_2707A8C70();
        __break(1u);
        JUMPOUT(0x27071E448);
      }

      v10 = HIDReport.init(bitCount:id:)(8 * v6, 1);
      v12 = v11;
      v16 = v11;
      sub_270706C38(v10, v11);
      v13 = HIDReport.initialize(from:)();
      sub_270708D74(v10, v12);
      result = v10;
      a2 = v16;
      if ((v13 & 1) == 0)
      {
LABEL_11:
        sub_270708D74(result, a2);
        goto LABEL_12;
      }

      *a3 = v10;
      a3[1] = v16;
      return result;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_12;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27071E458@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 < 136)
      {
LABEL_12:
        sub_2707A8B00();

        HIDReport.reportID.getter(v4, v3);
        v14 = sub_2707A8E70();
        MEMORY[0x2743A7BE0](v14);

        MEMORY[0x2743A7BE0](544432416, 0xE400000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829770);
        v15 = sub_2707A85F0();
        MEMORY[0x2743A7BE0](v15);

        sub_2707A8C70();
        __break(1u);
        JUMPOUT(0x27071E640);
      }

      v10 = HIDReport.init(bitCount:id:)(8 * v6, 5);
      v12 = v11;
      v16 = v11;
      sub_270706C38(v10, v11);
      v13 = HIDReport.initialize(from:)();
      sub_270708D74(v10, v12);
      result = v10;
      a2 = v16;
      if ((v13 & 1) == 0)
      {
LABEL_11:
        sub_270708D74(result, a2);
        goto LABEL_12;
      }

      *a3 = v10;
      a3[1] = v16;
      return result;
    case 2uLL:
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_12;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t EventReportAccumulator.resetValues(_:)(uint64_t a1)
{
  v3 = *v1;

  sub_27071D504(v6);
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  sub_270722ED4(v6, a1);
  *v1 = v5;
  sub_27071E6E4(v3);
}

uint64_t sub_27071E6E4(uint64_t a1)
{
  v2 = v1;
  __src[10] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for EventReportSenderID();
  v176 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v175 = &v168 - v10;

  v12 = sub_2707A3E8C(v11);
  v13 = *v2;
  v180 = v2 + 1;

  v15 = sub_270721CB8(v14, v12);
  v16 = 0;
  v177 = v15;
  v178 = 0;
  v17 = v15 + 56;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 56);
  v21 = (v18 + 63) >> 6;
  v170 = v2;
  v171 = v21;
  v173 = v13;
  v174 = a1;
  v179 = v8;
  v172 = v15 + 56;
  if (v20)
  {
    while (1)
    {
LABEL_8:
      v23 = v175;
      sub_2707230C4(*(v177 + 48) + *(v176 + 72) * (__clz(__rbit64(v20)) | (v16 << 6)), v175);
      sub_270723128(v23, v8);
      if (*(a1 + 16) && (v24 = sub_270721F0C(v8), (v25 & 1) != 0))
      {
        v26 = (*(a1 + 56) + 80 * v24);
        memcpy(__dst, v26, sizeof(__dst));
        memcpy(__src, v26, 0x50uLL);
        sub_27072305C(__dst, v186);
      }

      else
      {
        sub_27071D504(__src);
      }

      memcpy(__dst, __src, sizeof(__dst));
      if (*(v13 + 16) && (v27 = sub_270721F0C(v8), (v28 & 1) != 0))
      {
        v29 = (*(v13 + 56) + 80 * v27);
        memcpy(v185, v29, sizeof(v185));
        memcpy(v186, v29, sizeof(v186));
        sub_27072305C(v185, v184);
      }

      else
      {
        sub_27071D504(v186);
      }

      memcpy(v185, v186, sizeof(v185));
      v31 = v185[0];
      v32 = v185[1];
      v33 = v185[1] >> 62;
      v35 = __dst[0];
      v34 = __dst[1];
      v36 = __dst[1] >> 62;
      if (v30)
      {
        v38 = 0;
        if (!v185[0])
        {
          if (v185[1] == 0xC000000000000000)
          {
            v37 = __dst[1] >> 62 == 3;
            v30 = v36 == 3;
          }

          else
          {
            v37 = 0;
            v30 = 0;
          }

          if (v37)
          {
            v38 = 0;
            if (!__dst[0])
            {
              v30 = __dst[1] == 0xC000000000000000;
              if (__dst[1] == 0xC000000000000000)
              {
                goto LABEL_66;
              }
            }
          }
        }
      }

      else
      {
        v38 = 0;
        switch(v33)
        {
          case 0:
            v38 = BYTE6(v185[1]);
            break;
          case 1:
            v30 = HIDWORD(v185[0]) == LODWORD(v185[0]);
            if (__OFSUB__(HIDWORD(v185[0]), v185[0]))
            {
              goto LABEL_290;
            }

            v38 = HIDWORD(v185[0]) - LODWORD(v185[0]);
            break;
          case 2:
            v40 = *(v185[0] + 16);
            v39 = *(v185[0] + 24);
            v41 = __OFSUB__(v39, v40);
            v38 = v39 - v40;
            v30 = v38 == 0;
            if (!v41)
            {
              break;
            }

            goto LABEL_289;
          case 3:
            break;
          default:
LABEL_321:
            JUMPOUT(0);
        }
      }

      switch(v36)
      {
        case 1uLL:
          LODWORD(v42) = HIDWORD(__dst[0]) - LODWORD(__dst[0]);
          if (__OFSUB__(HIDWORD(__dst[0]), __dst[0]))
          {
            goto LABEL_280;
          }

          v42 = v42;
LABEL_41:
          if (v38 != v42)
          {
            goto LABEL_65;
          }

          v30 = v38 == 1;
          if (v38 < 1)
          {
            goto LABEL_66;
          }

          break;
        case 2uLL:
          v44 = *(__dst[0] + 16);
          v43 = *(__dst[0] + 24);
          v41 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          if (!v41)
          {
            goto LABEL_41;
          }

          goto LABEL_279;
        case 3uLL:
          if (!v38)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        default:
          v42 = BYTE6(__dst[1]);
          goto LABEL_41;
      }

      v45 = __dst[0] >> 32;
      switch(v33)
      {
        case 1:
          if (v185[0] >> 32 < SLODWORD(v185[0]))
          {
            goto LABEL_299;
          }

          v169 = SLODWORD(v185[0]);
          sub_270706C38(__dst[0], __dst[1]);
          sub_270706C38(v35, v34);
          sub_270706C38(v35, v34);
          v47 = sub_2707A81F0();
          if (!v47)
          {
            goto LABEL_63;
          }

          v49 = sub_2707A8210();
          if (__OFSUB__(v169, v49))
          {
            goto LABEL_308;
          }

          v47 += v169 - v49;
LABEL_63:
          sub_2707A8200();
          v50 = v178;
          sub_27072283C(v47, v35, v34, v184);
          sub_270708D74(v35, v34);
          sub_270708D74(v35, v34);
          sub_270708D74(v35, v34);
          v178 = v50;
          if (v50)
          {
            goto LABEL_320;
          }

          v2 = v170;
          if ((v184[0] & 1) == 0)
          {
            goto LABEL_65;
          }

          break;
        case 2:
          v46 = *(v185[0] + 16);
          v169 = *(v185[0] + 24);
          sub_270706C38(__dst[0], __dst[1]);
          sub_270706C38(v35, v34);
          sub_270706C38(v35, v34);
          v47 = sub_2707A81F0();
          if (!v47)
          {
            goto LABEL_51;
          }

          v48 = sub_2707A8210();
          if (__OFSUB__(v46, v48))
          {
            goto LABEL_306;
          }

          v47 += v46 - v48;
LABEL_51:
          if (!__OFSUB__(v169, v46))
          {
            goto LABEL_63;
          }

          goto LABEL_300;
        case 3:
          *&v184[6] = 0;
          *v184 = 0;
          if (!v36)
          {
            goto LABEL_61;
          }

          if (v36 == 2)
          {
            goto LABEL_162;
          }

          if (v45 >= SLODWORD(__dst[0]))
          {
            goto LABEL_161;
          }

          goto LABEL_310;
        default:
          *v184 = v185[0];
          *&v184[8] = v185[1];
          *&v184[12] = WORD2(v185[1]);
          if (v36)
          {
            if (v36 == 1)
            {
              if (v45 < SLODWORD(__dst[0]))
              {
                goto LABEL_311;
              }

LABEL_161:
              sub_270706C38(__dst[0], __dst[1]);
              sub_270706C38(v35, v34);
              v98 = v34 & 0x3FFFFFFFFFFFFFFFLL;
              v99 = v35;
              v100 = v35 >> 32;
            }

            else
            {
LABEL_162:
              v101 = *(__dst[0] + 16);
              v102 = *(__dst[0] + 24);
              sub_270706C38(__dst[0], __dst[1]);
              sub_270706C38(v35, v34);
              v98 = v34 & 0x3FFFFFFFFFFFFFFFLL;
              v99 = v101;
              v100 = v102;
            }

            v103 = v178;
            v104 = sub_270722A84(v99, v100, v98, v184);
            sub_270708D74(v35, v34);
            sub_270708D74(v35, v34);
            v178 = v103;
            if (v103)
            {
              goto LABEL_320;
            }

            v2 = v170;
            if ((v104 & 1) == 0)
            {
LABEL_65:
              v51 = v2[4];
              v52 = v2[5];
              __swift_project_boxed_opaque_existential_1(v180, v51);
              (*(v52 + 32))(v31, v32, v179, v51, v52);
              break;
            }
          }

          else
          {
LABEL_61:
            v181 = __dst[0];
            v182 = __dst[1];
            v183 = WORD2(__dst[1]);
            if (memcmp(v184, &v181, BYTE6(__dst[1])))
            {
              goto LABEL_65;
            }
          }

          break;
      }

LABEL_66:
      v53 = v185[2];
      v54 = v185[3];
      v55 = v185[3] >> 62;
      v57 = __dst[2];
      v56 = __dst[3];
      v58 = __dst[3] >> 62;
      if (v30)
      {
        v60 = 0;
        if (!v185[2])
        {
          if (v185[3] == 0xC000000000000000)
          {
            v59 = __dst[3] >> 62 == 3;
            v30 = v58 == 3;
          }

          else
          {
            v59 = 0;
            v30 = 0;
          }

          if (v59)
          {
            v60 = 0;
            if (!__dst[2])
            {
              v30 = __dst[3] == 0xC000000000000000;
              if (__dst[3] == 0xC000000000000000)
              {
LABEL_100:
                v8 = v179;
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v60 = 0;
        switch(v55)
        {
          case 0:
            v60 = BYTE6(v185[3]);
            break;
          case 1:
            v30 = HIDWORD(v185[2]) == LODWORD(v185[2]);
            if (__OFSUB__(HIDWORD(v185[2]), v185[2]))
            {
              goto LABEL_292;
            }

            v60 = HIDWORD(v185[2]) - LODWORD(v185[2]);
            break;
          case 2:
            v62 = *(v185[2] + 16);
            v61 = *(v185[2] + 24);
            v41 = __OFSUB__(v61, v62);
            v60 = v61 - v62;
            v30 = v60 == 0;
            if (!v41)
            {
              break;
            }

            goto LABEL_291;
          case 3:
            break;
          default:
            goto LABEL_321;
        }
      }

      switch(v58)
      {
        case 1uLL:
          LODWORD(v63) = HIDWORD(__dst[2]) - LODWORD(__dst[2]);
          if (__OFSUB__(HIDWORD(__dst[2]), __dst[2]))
          {
            goto LABEL_282;
          }

          v63 = v63;
LABEL_91:
          if (v60 == v63)
          {
            v30 = v60 == 1;
            if (v60 < 1)
            {
              goto LABEL_100;
            }

            v66 = __dst[2] >> 32;
            switch(v55)
            {
              case 1:
                if (v185[2] >> 32 < SLODWORD(v185[2]))
                {
                  goto LABEL_301;
                }

                v169 = SLODWORD(v185[2]);
                sub_270706C38(__dst[2], __dst[3]);
                sub_270706C38(v57, v56);
                sub_270706C38(v57, v56);
                v85 = sub_2707A81F0();
                if (!v85)
                {
                  goto LABEL_157;
                }

                v87 = sub_2707A8210();
                if (__OFSUB__(v169, v87))
                {
                  goto LABEL_309;
                }

                v85 += v169 - v87;
LABEL_157:
                sub_2707A8200();
                v97 = v178;
                sub_27072283C(v85, v57, v56, v184);
                sub_270708D74(v57, v56);
                sub_270708D74(v57, v56);
                sub_270708D74(v57, v56);
                v178 = v97;
                if (v97)
                {
                  goto LABEL_320;
                }

                v2 = v170;
                v8 = v179;
                if (v184[0])
                {
                  goto LABEL_101;
                }

                break;
              case 2:
                v84 = *(v185[2] + 16);
                v169 = *(v185[2] + 24);
                sub_270706C38(__dst[2], __dst[3]);
                sub_270706C38(v57, v56);
                sub_270706C38(v57, v56);
                v85 = sub_2707A81F0();
                if (!v85)
                {
                  goto LABEL_136;
                }

                v86 = sub_2707A8210();
                if (__OFSUB__(v84, v86))
                {
                  goto LABEL_307;
                }

                v85 += v84 - v86;
LABEL_136:
                if (!__OFSUB__(v169, v84))
                {
                  goto LABEL_157;
                }

                goto LABEL_302;
              case 3:
                *&v184[6] = 0;
                *v184 = 0;
                if (!v58)
                {
                  goto LABEL_153;
                }

                if (v58 == 2)
                {
                  goto LABEL_168;
                }

                if (v66 >= SLODWORD(__dst[2]))
                {
                  goto LABEL_167;
                }

                goto LABEL_313;
              default:
                *v184 = v185[2];
                *&v184[8] = v185[3];
                *&v184[12] = WORD2(v185[3]);
                if (v58)
                {
                  if (v58 == 1)
                  {
                    if (v66 < SLODWORD(__dst[2]))
                    {
                      goto LABEL_312;
                    }

LABEL_167:
                    sub_270706C38(__dst[2], __dst[3]);
                    sub_270706C38(v57, v56);
                    v105 = v56 & 0x3FFFFFFFFFFFFFFFLL;
                    v106 = v57;
                    v107 = v57 >> 32;
                  }

                  else
                  {
LABEL_168:
                    v108 = *(__dst[2] + 16);
                    v109 = *(__dst[2] + 24);
                    sub_270706C38(__dst[2], __dst[3]);
                    sub_270706C38(v57, v56);
                    v105 = v56 & 0x3FFFFFFFFFFFFFFFLL;
                    v106 = v108;
                    v107 = v109;
                  }

                  v110 = v178;
                  v111 = sub_270722A84(v106, v107, v105, v184);
                  sub_270708D74(v57, v56);
                  sub_270708D74(v57, v56);
                  v178 = v110;
                  if (v110)
                  {
                    goto LABEL_320;
                  }

                  v2 = v170;
                  v8 = v179;
                  if (v111)
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
LABEL_153:
                  v181 = __dst[2];
                  v182 = __dst[3];
                  v183 = WORD2(__dst[3]);
                  v95 = memcmp(v184, &v181, BYTE6(__dst[3]));
                  v8 = v179;
                  if (!v95)
                  {
                    goto LABEL_101;
                  }
                }

                break;
            }
          }

          else
          {
            v8 = v179;
          }

LABEL_99:
          v67 = v2[4];
          v68 = v2[5];
          __swift_project_boxed_opaque_existential_1(v180, v67);
          (*(v68 + 24))(v53, v54, v8, v67, v68);
LABEL_101:
          v69 = v185[4];
          v70 = v185[5];
          v71 = v185[5] >> 62;
          v73 = __dst[4];
          v72 = __dst[5];
          v74 = __dst[5] >> 62;
          if (v30)
          {
            v76 = 0;
            if (!v185[4])
            {
              if (v185[5] == 0xC000000000000000)
              {
                v75 = __dst[5] >> 62 == 3;
                v30 = v74 == 3;
              }

              else
              {
                v75 = 0;
                v30 = 0;
              }

              if (v75)
              {
                v76 = 0;
                if (!__dst[4])
                {
                  v30 = __dst[5] == 0xC000000000000000;
                  if (__dst[5] == 0xC000000000000000)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }
          }

          else
          {
            v76 = 0;
            switch(v71)
            {
              case 0:
                v76 = BYTE6(v185[5]);
                break;
              case 1:
                v30 = HIDWORD(v185[4]) == LODWORD(v185[4]);
                if (__OFSUB__(HIDWORD(v185[4]), v185[4]))
                {
                  goto LABEL_294;
                }

                v76 = HIDWORD(v185[4]) - LODWORD(v185[4]);
                break;
              case 2:
                v78 = *(v185[4] + 16);
                v77 = *(v185[4] + 24);
                v41 = __OFSUB__(v77, v78);
                v76 = v77 - v78;
                v30 = v76 == 0;
                if (!v41)
                {
                  break;
                }

                goto LABEL_293;
              case 3:
                break;
              default:
                goto LABEL_321;
            }
          }

          switch(v74)
          {
            case 1uLL:
              LODWORD(v79) = HIDWORD(__dst[4]) - LODWORD(__dst[4]);
              if (__OFSUB__(HIDWORD(__dst[4]), __dst[4]))
              {
                goto LABEL_283;
              }

              v79 = v79;
LABEL_126:
              if (v76 != v79)
              {
                goto LABEL_178;
              }

              v30 = v76 == 1;
              if (v76 < 1)
              {
                goto LABEL_179;
              }

              break;
            case 2uLL:
              v81 = *(__dst[4] + 16);
              v80 = *(__dst[4] + 24);
              v41 = __OFSUB__(v80, v81);
              v79 = v80 - v81;
              if (!v41)
              {
                goto LABEL_126;
              }

              goto LABEL_284;
            case 3uLL:
              if (!v76)
              {
                goto LABEL_179;
              }

              goto LABEL_178;
            default:
              v79 = BYTE6(__dst[5]);
              goto LABEL_126;
          }

          v82 = SLODWORD(__dst[4]);
          v83 = __dst[4] >> 32;
          switch(v71)
          {
            case 1:
              if (v185[4] >> 32 < SLODWORD(v185[4]))
              {
                goto LABEL_303;
              }

              sub_270706C38(__dst[4], __dst[5]);
              sub_270706C38(v73, v72);
              sub_270706C38(v73, v72);
              v90 = v70 & 0x3FFFFFFFFFFFFFFFLL;
              v91 = v69;
              v92 = v69 >> 32;
LABEL_152:
              v93 = v178;
              v94 = sub_2707229B8(v91, v92, v90, v73, v72);
              goto LABEL_176;
            case 2:
              v88 = *(v185[4] + 16);
              v89 = *(v185[4] + 24);
              sub_270706C38(__dst[4], __dst[5]);
              sub_270706C38(v73, v72);
              sub_270706C38(v73, v72);
              v90 = v70 & 0x3FFFFFFFFFFFFFFFLL;
              v91 = v88;
              v92 = v89;
              goto LABEL_152;
            case 3:
              *&v184[6] = 0;
              *v184 = 0;
              if (!v74)
              {
                goto LABEL_155;
              }

              if (v74 == 2)
              {
                v82 = *(__dst[4] + 16);
                v83 = *(__dst[4] + 24);
              }

              else if (v83 < SLODWORD(__dst[4]))
              {
                goto LABEL_315;
              }

              goto LABEL_175;
            default:
              *v184 = v185[4];
              *&v184[8] = v185[5];
              *&v184[12] = WORD2(v185[5]);
              if (v74)
              {
                if (v74 == 1)
                {
                  if (v83 < SLODWORD(__dst[4]))
                  {
                    goto LABEL_314;
                  }
                }

                else
                {
                  v82 = *(__dst[4] + 16);
                  v83 = *(__dst[4] + 24);
                }

LABEL_175:
                sub_270706C38(__dst[4], __dst[5]);
                sub_270706C38(v73, v72);
                v93 = v178;
                v94 = sub_270722A84(v82, v83, v72 & 0x3FFFFFFFFFFFFFFFLL, v184);
LABEL_176:
                v112 = v94;
                sub_270708D74(v73, v72);
                sub_270708D74(v73, v72);
                v178 = v93;
                if (v93)
                {
                  goto LABEL_320;
                }

                v2 = v170;
                v8 = v179;
                if (v112)
                {
                  goto LABEL_179;
                }
              }

              else
              {
LABEL_155:
                v181 = __dst[4];
                v182 = __dst[5];
                v183 = WORD2(__dst[5]);
                v96 = memcmp(v184, &v181, BYTE6(__dst[5]));
                v8 = v179;
                if (!v96)
                {
                  goto LABEL_179;
                }
              }

LABEL_178:
              v113 = v2[4];
              v114 = v2[5];
              __swift_project_boxed_opaque_existential_1(v180, v113);
              (*(v114 + 8))(v69, v70, v8, v113, v114);
LABEL_179:
              v115 = v185[6];
              v116 = v185[7];
              v117 = v185[7] >> 62;
              v119 = __dst[6];
              v118 = __dst[7];
              v120 = __dst[7] >> 62;
              if (v30)
              {
                v122 = 0;
                if (!v185[6])
                {
                  if (v185[7] == 0xC000000000000000)
                  {
                    v121 = __dst[7] >> 62 == 3;
                    v30 = v120 == 3;
                  }

                  else
                  {
                    v121 = 0;
                    v30 = 0;
                  }

                  if (v121)
                  {
                    v122 = 0;
                    if (!__dst[6])
                    {
                      v30 = __dst[7] == 0xC000000000000000;
                      if (__dst[7] == 0xC000000000000000)
                      {
                        goto LABEL_227;
                      }
                    }
                  }
                }
              }

              else
              {
                v122 = 0;
                switch(v117)
                {
                  case 0:
                    v122 = BYTE6(v185[7]);
                    break;
                  case 1:
                    v30 = HIDWORD(v185[6]) == LODWORD(v185[6]);
                    if (__OFSUB__(HIDWORD(v185[6]), v185[6]))
                    {
                      goto LABEL_296;
                    }

                    v122 = HIDWORD(v185[6]) - LODWORD(v185[6]);
                    break;
                  case 2:
                    v124 = *(v185[6] + 16);
                    v123 = *(v185[6] + 24);
                    v41 = __OFSUB__(v123, v124);
                    v122 = v123 - v124;
                    v30 = v122 == 0;
                    if (!v41)
                    {
                      break;
                    }

                    goto LABEL_295;
                  case 3:
                    break;
                  default:
                    goto LABEL_321;
                }
              }

              switch(v120)
              {
                case 1uLL:
                  LODWORD(v125) = HIDWORD(__dst[6]) - LODWORD(__dst[6]);
                  if (__OFSUB__(HIDWORD(__dst[6]), __dst[6]))
                  {
                    goto LABEL_286;
                  }

                  v125 = v125;
LABEL_204:
                  if (v122 != v125)
                  {
                    goto LABEL_226;
                  }

                  v30 = v122 == 1;
                  if (v122 < 1)
                  {
                    goto LABEL_227;
                  }

                  break;
                case 2uLL:
                  v127 = *(__dst[6] + 16);
                  v126 = *(__dst[6] + 24);
                  v41 = __OFSUB__(v126, v127);
                  v125 = v126 - v127;
                  if (!v41)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_285;
                case 3uLL:
                  if (!v122)
                  {
                    goto LABEL_227;
                  }

                  goto LABEL_226;
                default:
                  v125 = BYTE6(__dst[7]);
                  goto LABEL_204;
              }

              v128 = SLODWORD(__dst[6]);
              v129 = __dst[6] >> 32;
              switch(v117)
              {
                case 1:
                  if (v185[6] >> 32 < SLODWORD(v185[6]))
                  {
                    goto LABEL_304;
                  }

                  sub_270706C38(__dst[6], __dst[7]);
                  sub_270706C38(v119, v118);
                  sub_270706C38(v119, v118);
                  v132 = v116 & 0x3FFFFFFFFFFFFFFFLL;
                  v133 = v115;
                  v134 = v115 >> 32;
LABEL_217:
                  v135 = v178;
                  v136 = sub_2707229B8(v133, v134, v132, v119, v118);
                  goto LABEL_224;
                case 2:
                  v130 = *(v185[6] + 16);
                  v131 = *(v185[6] + 24);
                  sub_270706C38(__dst[6], __dst[7]);
                  sub_270706C38(v119, v118);
                  sub_270706C38(v119, v118);
                  v132 = v116 & 0x3FFFFFFFFFFFFFFFLL;
                  v133 = v130;
                  v134 = v131;
                  goto LABEL_217;
                case 3:
                  *&v184[6] = 0;
                  *v184 = 0;
                  if (!v120)
                  {
                    goto LABEL_218;
                  }

                  if (v120 == 2)
                  {
                    v128 = *(__dst[6] + 16);
                    v129 = *(__dst[6] + 24);
                  }

                  else if (v129 < SLODWORD(__dst[6]))
                  {
                    goto LABEL_317;
                  }

                  goto LABEL_223;
                default:
                  *v184 = v185[6];
                  *&v184[8] = v185[7];
                  *&v184[12] = WORD2(v185[7]);
                  if (v120)
                  {
                    if (v120 == 1)
                    {
                      if (v129 < SLODWORD(__dst[6]))
                      {
                        goto LABEL_316;
                      }
                    }

                    else
                    {
                      v128 = *(__dst[6] + 16);
                      v129 = *(__dst[6] + 24);
                    }

LABEL_223:
                    sub_270706C38(__dst[6], __dst[7]);
                    sub_270706C38(v119, v118);
                    v135 = v178;
                    v136 = sub_270722A84(v128, v129, v118 & 0x3FFFFFFFFFFFFFFFLL, v184);
LABEL_224:
                    v138 = v136;
                    sub_270708D74(v119, v118);
                    sub_270708D74(v119, v118);
                    v178 = v135;
                    if (v135)
                    {
                      goto LABEL_320;
                    }

                    v2 = v170;
                    v8 = v179;
                    if (v138)
                    {
                      goto LABEL_227;
                    }
                  }

                  else
                  {
LABEL_218:
                    v181 = __dst[6];
                    v182 = __dst[7];
                    v183 = WORD2(__dst[7]);
                    v137 = memcmp(v184, &v181, BYTE6(__dst[7]));
                    v8 = v179;
                    if (!v137)
                    {
                      goto LABEL_227;
                    }
                  }

LABEL_226:
                  v139 = v2[4];
                  v140 = v2[5];
                  __swift_project_boxed_opaque_existential_1(v180, v139);
                  (*(v140 + 16))(v115, v116, v8, v139, v140);
LABEL_227:
                  v141 = v185[8];
                  v142 = v185[9];
                  v143 = v185[9] >> 62;
                  v145 = __dst[8];
                  v144 = __dst[9];
                  v146 = __dst[9] >> 62;
                  if (v30)
                  {
                    v148 = 0;
                    if (!v185[8] && v185[9] == 0xC000000000000000 && __dst[9] >> 62 == 3)
                    {
                      v148 = 0;
                      if (!__dst[8] && __dst[9] == 0xC000000000000000)
                      {
                        goto LABEL_275;
                      }
                    }
                  }

                  else
                  {
                    v148 = 0;
                    switch(v143)
                    {
                      case 0:
                        v148 = BYTE6(v185[9]);
                        break;
                      case 1:
                        if (__OFSUB__(HIDWORD(v185[8]), v185[8]))
                        {
                          goto LABEL_298;
                        }

                        v148 = HIDWORD(v185[8]) - LODWORD(v185[8]);
                        break;
                      case 2:
                        v150 = *(v185[8] + 16);
                        v149 = *(v185[8] + 24);
                        v41 = __OFSUB__(v149, v150);
                        v148 = v149 - v150;
                        if (!v41)
                        {
                          break;
                        }

                        goto LABEL_297;
                      case 3:
                        break;
                      default:
                        goto LABEL_321;
                    }
                  }

                  switch(v146)
                  {
                    case 1uLL:
                      LODWORD(v151) = HIDWORD(__dst[8]) - LODWORD(__dst[8]);
                      if (__OFSUB__(HIDWORD(__dst[8]), __dst[8]))
                      {
                        goto LABEL_287;
                      }

                      v151 = v151;
LABEL_252:
                      if (v148 != v151)
                      {
                        goto LABEL_274;
                      }

                      if (v148 < 1)
                      {
                        goto LABEL_275;
                      }

                      break;
                    case 2uLL:
                      v153 = *(__dst[8] + 16);
                      v152 = *(__dst[8] + 24);
                      v41 = __OFSUB__(v152, v153);
                      v151 = v152 - v153;
                      if (!v41)
                      {
                        goto LABEL_252;
                      }

                      goto LABEL_288;
                    case 3uLL:
                      if (!v148)
                      {
                        goto LABEL_275;
                      }

                      goto LABEL_274;
                    default:
                      v151 = BYTE6(__dst[9]);
                      goto LABEL_252;
                  }

                  v154 = SLODWORD(__dst[8]);
                  v155 = __dst[8] >> 32;
                  switch(v143)
                  {
                    case 1:
                      if (v185[8] >> 32 < SLODWORD(v185[8]))
                      {
                        goto LABEL_305;
                      }

                      sub_270706C38(__dst[8], __dst[9]);
                      sub_270706C38(v145, v144);
                      sub_270706C38(v145, v144);
                      v158 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                      v159 = v141;
                      v160 = v141 >> 32;
LABEL_265:
                      v161 = v178;
                      v162 = sub_2707229B8(v159, v160, v158, v145, v144);
                      goto LABEL_272;
                    case 2:
                      v156 = *(v185[8] + 16);
                      v157 = *(v185[8] + 24);
                      sub_270706C38(__dst[8], __dst[9]);
                      sub_270706C38(v145, v144);
                      sub_270706C38(v145, v144);
                      v158 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                      v159 = v156;
                      v160 = v157;
                      goto LABEL_265;
                    case 3:
                      *&v184[6] = 0;
                      *v184 = 0;
                      if (!v146)
                      {
                        goto LABEL_266;
                      }

                      if (v146 == 2)
                      {
                        v154 = *(__dst[8] + 16);
                        v155 = *(__dst[8] + 24);
                      }

                      else if (v155 < SLODWORD(__dst[8]))
                      {
                        goto LABEL_318;
                      }

                      goto LABEL_271;
                    default:
                      *v184 = v185[8];
                      *&v184[8] = v185[9];
                      *&v184[12] = WORD2(v185[9]);
                      if (!v146)
                      {
LABEL_266:
                        v181 = __dst[8];
                        v182 = __dst[9];
                        v183 = WORD2(__dst[9]);
                        v163 = memcmp(v184, &v181, BYTE6(__dst[9]));
                        v8 = v179;
                        if (!v163)
                        {
                          goto LABEL_275;
                        }

LABEL_274:
                        v165 = v2[4];
                        v166 = v2[5];
                        __swift_project_boxed_opaque_existential_1(v180, v165);
                        (*(v166 + 40))(v141, v142, v8, v165, v166);
                        goto LABEL_275;
                      }

                      if (v146 == 1)
                      {
                        if (v155 < SLODWORD(__dst[8]))
                        {
                          goto LABEL_319;
                        }
                      }

                      else
                      {
                        v154 = *(__dst[8] + 16);
                        v155 = *(__dst[8] + 24);
                      }

LABEL_271:
                      sub_270706C38(__dst[8], __dst[9]);
                      sub_270706C38(v145, v144);
                      v161 = v178;
                      v162 = sub_270722A84(v154, v155, v144 & 0x3FFFFFFFFFFFFFFFLL, v184);
LABEL_272:
                      v164 = v162;
                      sub_270708D74(v145, v144);
                      sub_270708D74(v145, v144);
                      v178 = v161;
                      if (v161)
                      {
LABEL_320:

                        __break(1u);
                        JUMPOUT(0x27071FF2CLL);
                      }

                      v2 = v170;
                      v8 = v179;
                      if ((v164 & 1) == 0)
                      {
                        goto LABEL_274;
                      }

LABEL_275:
                      v20 &= v20 - 1;
                      sub_27072318C(v8);
                      sub_270723094(__dst);
                      sub_270723094(v185);
                      v13 = v173;
                      a1 = v174;
                      v21 = v171;
                      v17 = v172;
                      if (!v20)
                      {
                        goto LABEL_4;
                      }

                      break;
                  }

                  break;
              }

              break;
          }

          break;
        case 2uLL:
          v65 = *(__dst[2] + 16);
          v64 = *(__dst[2] + 24);
          v41 = __OFSUB__(v64, v65);
          v63 = v64 - v65;
          if (!v41)
          {
            goto LABEL_91;
          }

          goto LABEL_281;
        case 3uLL:
          v8 = v179;
          if (!v60)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        default:
          v63 = BYTE6(__dst[3]);
          goto LABEL_91;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_8;
    }
  }
}

void EventReportAccumulator.resetValues(matching:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v45[1] = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v45 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v50 = v45 - v18;
  v52 = v1;
  v19 = *v1 + 64;
  OUTLINED_FUNCTION_6_4();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v53 = v25;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v48 = v3;
  v47 = v5;
  v46 = v7;
  v49 = v16;
  while (v22)
  {
LABEL_7:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = *(v53 + 48);
    v51 = *(v7 + 72);
    v30 = v50;
    sub_2707230C4(v29 + v51 * (v28 | (v26 << 6)), v50);
    sub_270723128(v30, v16);
    if (v5(v16))
    {
      sub_2707230C4(v16, v12);
      sub_27071D504(v56);
      v31 = v52;
      swift_isUniquelyReferenced_nonNull_native();
      v32 = *v31;
      v55 = v32;
      v33 = sub_270721F0C(v12);
      if (__OFADD__(v32[2], (v34 & 1) == 0))
      {
        goto LABEL_20;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296F0);
      if (sub_2707A8C40())
      {
        v37 = sub_270721F0C(v12);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_22;
        }

        v35 = v37;
      }

      v16 = v49;
      if (v36)
      {
        v39 = v55;
        v40 = (v55[7] + 80 * v35);
        memcpy(v54, v40, sizeof(v54));
        memcpy(v40, v56, 0x50uLL);
        sub_270723094(v54);
      }

      else
      {
        v39 = v55;
        v55[(v35 >> 6) + 8] |= 1 << v35;
        sub_2707230C4(v12, v39[6] + v35 * v51);
        memcpy((v39[7] + 80 * v35), v56, 0x50uLL);
        v41 = v39[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_21;
        }

        v39[2] = v43;
      }

      sub_27072318C(v12);
      sub_27072318C(v16);
      *v52 = v39;
      v5 = v47;
      v7 = v46;
    }

    else
    {
      sub_27072318C(v16);
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v44 = v53;

      sub_27071E6E4(v44);

      OUTLINED_FUNCTION_12_0();
      return;
    }

    v22 = *(v19 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_2707A8EF0();
  __break(1u);
}

Swift::Void __swiftcall EventReportAccumulator.resetAllValues()()
{
  OUTLINED_FUNCTION_11_0();
  v1 = type metadata accessor for EventReportSenderID();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  OUTLINED_FUNCTION_30_1();
  v23 = v4 - v3;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296F8);
  v6 = sub_2707A8CC0();
  OUTLINED_FUNCTION_6_4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v13 = v12 + 64;

  v14 = 0;
  if (v9)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v18 = v15 | (v14 << 6);
      v19 = *(v24 + 72) * v18;
      sub_2707230C4(*(v5 + 48) + v19, v23);
      sub_27071D504(v25);
      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_270723128(v23, v6[6] + v19);
      memcpy((v6[7] + 80 * v18), v25, 0x50uLL);
      v20 = v6[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v6[2] = v22;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        *v0 = v6;
        sub_27071E6E4(v5);

        OUTLINED_FUNCTION_12_0();
        return;
      }

      v17 = *(v5 + 64 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v9 = (v17 - 1) & v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t EventReportAccumulator.removeValues(_:)(uint64_t a1)
{
  v3 = *v1;

  sub_270722B3C(a1, v5);
  sub_270724508(v5, &qword_280829700);
  sub_27071E6E4(v3);
}

uint64_t EventReportAccumulator.removeValues(matching:)(uint64_t (*a1)(char *), void *a2)
{
  v5 = *v2;

  v7 = sub_270723DBC(v6, a1, a2);

  *v2 = v7;
  sub_27071E6E4(v5);
}

void EventReportAccumulator.flush(to:)()
{
  OUTLINED_FUNCTION_11_0();
  v424 = v1;
  v462 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for EventReportSenderID();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v415 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v415 - v9;
  sub_27071D504(&v452);
  v11 = *v0;
  v12 = v11 + 8;
  OUTLINED_FUNCTION_6_4();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v422 = v3;
  v423 = 0;
  v425 = v7;
  v420 = v10;
  v421 = v11;
  while (v15)
  {
LABEL_7:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_2707230C4(v11[6] + *(v3 + 72) * (v20 | (v18 << 6)), v10);
    sub_270723128(v10, v7);
    if (v11[2] && (v21 = sub_270721F0C(v7), (v22 & 1) != 0))
    {
      memcpy(v451, (v11[7] + 80 * v21), sizeof(v451));
      v24 = v451[0];
      v23 = v451[1];
      v25 = v451[1] >> 62;
      v27 = v452;
      v26 = v453;
      v28 = HIDWORD(v451[0]);
      v29 = v453 >> 62;
      if (v46)
      {
        v31 = 0;
        if (!v451[0] && v451[1] == 0xC000000000000000 && v453 >> 62 == 3)
        {
          v31 = 0;
          if (!v452 && v453 == 0xC000000000000000)
          {
LABEL_44:
            OUTLINED_FUNCTION_31_1();
            goto LABEL_45;
          }
        }
      }

      else
      {
        v31 = 0;
        switch(v25)
        {
          case 0:
            v31 = BYTE6(v451[1]);
            break;
          case 1:
            if (__OFSUB__(HIDWORD(v451[0]), v451[0]))
            {
              goto LABEL_301;
            }

            v31 = HIDWORD(v451[0]) - LODWORD(v451[0]);
            break;
          case 2:
            v33 = *(v451[0] + 16);
            v32 = *(v451[0] + 24);
            v34 = __OFSUB__(v32, v33);
            v31 = v32 - v33;
            if (!v34)
            {
              break;
            }

            goto LABEL_302;
          case 3:
            break;
          default:
LABEL_335:
            JUMPOUT(0);
        }
      }

      v35 = HIDWORD(v452);
      switch(v29)
      {
        case 1uLL:
          LODWORD(v36) = HIDWORD(v452) - v452;
          if (__OFSUB__(HIDWORD(v452), v452))
          {
            goto LABEL_291;
          }

          v36 = v36;
LABEL_35:
          if (v31 == v36)
          {
            if (v31 < 1)
            {
              goto LABEL_44;
            }

            v7 = v27 >> 32;
            v419 = v23;
            switch(v25)
            {
              case 1:
                v418 = v24 >> 32;
                if (v24 >> 32 < v24)
                {
                  goto LABEL_311;
                }

                v417 = v24;
                v129 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v129, v130);
                v131 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v131, v132);
                OUTLINED_FUNCTION_31_1();
                v133 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v133, v134);
                v135 = sub_2707A81F0();
                if (v135)
                {
                  v416 = v135;
                  v136 = sub_2707A8210();
                  if (__OFSUB__(v417, v136))
                  {
                    goto LABEL_320;
                  }

                  OUTLINED_FUNCTION_32_1(v417 - v136);
                  v138 = v418;
                }

                else
                {
                  v416 = 0;
                  v137 = v417;
                  v138 = v418;
                }

                v7 = v138 - v137;
LABEL_155:
                sub_2707A8200();
                OUTLINED_FUNCTION_21_2();
                v190 = OUTLINED_FUNCTION_5_5();
                sub_270708D74(v190, v191);
                v192 = OUTLINED_FUNCTION_5_5();
                sub_270708D74(v192, v193);
                v194 = OUTLINED_FUNCTION_5_5();
                sub_270708D74(v194, v195);
                v423 = v7;
                if (v7)
                {
                  goto LABEL_334;
                }

                if (v439)
                {
                  goto LABEL_45;
                }

                goto LABEL_43;
              case 2:
                v110 = *(v24 + 16);
                v417 = *(v24 + 24);
                v418 = v110;
                v111 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v111, v112);
                v113 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v113, v114);
                OUTLINED_FUNCTION_31_1();
                v115 = OUTLINED_FUNCTION_5_5();
                sub_270706C38(v115, v116);
                v117 = sub_2707A81F0();
                if (v117)
                {
                  v118 = v117;
                  v119 = sub_2707A8210();
                  v120 = v418;
                  if (__OFSUB__(v418, v119))
                  {
                    goto LABEL_318;
                  }

                  v416 = v418 - v119 + v118;
                }

                else
                {
                  v416 = 0;
                  v120 = v418;
                }

                v7 = v417 - v120;
                if (!__OFSUB__(v417, v120))
                {
                  goto LABEL_155;
                }

                goto LABEL_312;
              case 3:
                memset(v438, 0, 14);
                if (!v29)
                {
                  goto LABEL_139;
                }

                if (v29 == 2)
                {
                  v121 = *(v27 + 16);
                  v122 = *(v27 + 24);
                  v123 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v123, v124);
                  OUTLINED_FUNCTION_31_1();
                  v125 = v122;
                  v7 = v423;
                  v126 = sub_270722A84(v121, v125, v26 & 0x3FFFFFFFFFFFFFFFLL, v438);
                  v423 = v7;
                  v127 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v127, v128);
LABEL_169:
                  if ((v126 & 1) == 0)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  v418 = v27;
                  if (v7 < v27)
                  {
                    goto LABEL_323;
                  }

                  v202 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v202, v203);
                  OUTLINED_FUNCTION_31_1();
                  v204 = sub_2707A81F0();
                  if (v204)
                  {
                    v417 = v204;
                    v205 = sub_2707A8210();
                    v206 = v418;
                    if (__OFSUB__(v418, v205))
                    {
                      goto LABEL_332;
                    }

                    v417 = v417 + v418 - v205;
                  }

                  else
                  {
                    v417 = 0;
                    v206 = v418;
                  }

                  v7 -= v206;
                  v408 = sub_2707A8200();
                  if (v408 >= v7)
                  {
                    v409 = v7;
                  }

                  else
                  {
                    v409 = v408;
                  }

                  if (!v417)
                  {
                    __break(1u);
LABEL_334:

                    __break(1u);
                    JUMPOUT(0x270721BC8);
                  }

                  if (v438 == v417)
                  {
                    v413 = OUTLINED_FUNCTION_5_5();
                    sub_270708D74(v413, v414);
                  }

                  else
                  {
                    v410 = memcmp(v438, v417, v409);
                    v411 = OUTLINED_FUNCTION_5_5();
                    sub_270708D74(v411, v412);
                    if (v410)
                    {
                      goto LABEL_43;
                    }
                  }
                }

                break;
              default:
                v438[0] = v24;
                LOBYTE(v438[1]) = BYTE2(v24);
                HIBYTE(v438[1]) = BYTE3(v24);
                LOBYTE(v438[2]) = v28;
                HIBYTE(v438[2]) = BYTE5(v24);
                LOBYTE(v438[3]) = BYTE6(v24);
                HIBYTE(v438[3]) = HIBYTE(v24);
                v438[4] = v23;
                LOBYTE(v438[5]) = BYTE2(v23);
                HIBYTE(v438[5]) = BYTE3(v23);
                LOBYTE(v438[6]) = BYTE4(v23);
                HIBYTE(v438[6]) = BYTE5(v23);
                if (v29)
                {
                  if (v29 == 1)
                  {
                    v418 = v438 + BYTE6(v23);
                    if (v7 < v27)
                    {
                      goto LABEL_322;
                    }

                    v37 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v37, v38);
                    OUTLINED_FUNCTION_31_1();
                    v39 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v39, v40);
                    v41 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                    v42 = v27;
                    v43 = v27 >> 32;
                  }

                  else
                  {
                    v207 = *(v27 + 16);
                    v208 = OUTLINED_FUNCTION_3_4(*(v27 + 24));
                    sub_270706C38(v208, v209);
                    OUTLINED_FUNCTION_31_1();
                    v210 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v210, v211);
                    v41 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                    v42 = v207;
                    v43 = v418;
                  }

                  v7 = v423;
                  v126 = sub_270722A84(v42, v43, v41, v438);
                  v212 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v212, v213);
                  v214 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v214, v215);
                  v423 = v7;
                  if (v7)
                  {
                    goto LABEL_334;
                  }

                  goto LABEL_169;
                }

LABEL_139:
                v426 = v27;
                v427 = BYTE2(v27);
                v428 = BYTE3(v27);
                v429 = v35;
                v430 = BYTE5(v27);
                v431 = BYTE6(v27);
                v432 = HIBYTE(v27);
                v433 = v26;
                v434 = BYTE2(v26);
                v435 = BYTE3(v26);
                v436 = BYTE4(v26);
                v437 = BYTE5(v26);
                OUTLINED_FUNCTION_31_1();
                if (memcmp(v438, &v426, BYTE6(v26)))
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
            }
          }

          else
          {
LABEL_42:
            v419 = v23;
            OUTLINED_FUNCTION_31_1();
LABEL_43:
            OUTLINED_FUNCTION_25_2();
            v44 = OUTLINED_FUNCTION_34_0();
            v45(v44);
          }

          break;
        case 2uLL:
          OUTLINED_FUNCTION_36_0();
          if (!v34)
          {
            goto LABEL_35;
          }

          goto LABEL_292;
        case 3uLL:
          if (!v31)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        default:
          v36 = BYTE6(v453);
          goto LABEL_35;
      }

LABEL_45:
      v47 = v451[2];
      v49 = v454;
      v48 = v455;
      if (!v46)
      {
        switch(v451[3] >> 62)
        {
          case 0:
          case 3:
            goto LABEL_60;
          case 1:
            if (!__OFSUB__(HIDWORD(v451[2]), v451[2]))
            {
              goto LABEL_60;
            }

            goto LABEL_303;
          case 2:
            if (!__OFSUB__(*(v451[2] + 24), *(v451[2] + 16)))
            {
              goto LABEL_60;
            }

            goto LABEL_304;
          default:
            goto LABEL_335;
        }
      }

      if (v451[2] || ((OUTLINED_FUNCTION_49_0(), v46) ? (v52 = v50 >= 3) : (v52 = 0), !v52 || v49 || v48 != v51))
      {
LABEL_60:
        OUTLINED_FUNCTION_20_2();
        switch(v60)
        {
          case 1:
            LODWORD(v61) = v57 - v49;
            if (__OFSUB__(v57, v49))
            {
              goto LABEL_293;
            }

            v61 = v61;
LABEL_69:
            if (v59 == v61)
            {
              if (v59 >= 1)
              {
                v7 = v49;
                v62 = v49 >> 32;
                v63 = v49 >> 8;
                v64 = v49 >> 16;
                v65 = v49 >> 24;
                v66 = v49 >> 40;
                v67 = HIWORD(v49);
                v68 = HIBYTE(v49);
                v419 = v54;
                switch(v58)
                {
                  case 1:
                    v418 = v47 >> 32;
                    if (v47 >> 32 < v47)
                    {
                      goto LABEL_313;
                    }

                    v417 = v47;
                    v156 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v156, v157);
                    v158 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v158, v159);
                    v160 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v160, v161);
                    v162 = sub_2707A81F0();
                    if (v162)
                    {
                      v416 = v162;
                      v163 = sub_2707A8210();
                      if (__OFSUB__(v417, v163))
                      {
                        goto LABEL_321;
                      }

                      OUTLINED_FUNCTION_32_1(v417 - v163);
                      v165 = v418;
                    }

                    else
                    {
                      v416 = 0;
                      v164 = v417;
                      v165 = v418;
                    }

                    v7 = v165 - v164;
LABEL_160:
                    sub_2707A8200();
                    OUTLINED_FUNCTION_21_2();
                    v196 = OUTLINED_FUNCTION_5_5();
                    sub_270708D74(v196, v197);
                    v198 = OUTLINED_FUNCTION_5_5();
                    sub_270708D74(v198, v199);
                    v200 = OUTLINED_FUNCTION_5_5();
                    sub_270708D74(v200, v201);
                    v423 = v7;
                    if (v7)
                    {
                      goto LABEL_334;
                    }

                    if (v439)
                    {
                      goto LABEL_79;
                    }

                    goto LABEL_78;
                  case 2:
                    v139 = *(v47 + 16);
                    v417 = *(v47 + 24);
                    v418 = v139;
                    v140 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v140, v141);
                    v142 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v142, v143);
                    v144 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v144, v145);
                    v146 = sub_2707A81F0();
                    if (v146)
                    {
                      v416 = v146;
                      v147 = sub_2707A8210();
                      if (__OFSUB__(v418, v147))
                      {
                        goto LABEL_319;
                      }

                      OUTLINED_FUNCTION_32_1(v418 - v147);
                    }

                    else
                    {
                      v416 = 0;
                      v148 = v418;
                    }

                    v7 = v417 - v148;
                    if (!__OFSUB__(v417, v148))
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_314;
                  case 3:
                    OUTLINED_FUNCTION_51_0();
                    if (!v149)
                    {
                      goto LABEL_141;
                    }

                    if (v149 == 2)
                    {
                      v150 = *(v49 + 16);
                      v151 = *(v49 + 24);
                      v152 = OUTLINED_FUNCTION_5_5();
                      sub_270706C38(v152, v153);
                      v154 = OUTLINED_FUNCTION_5_5();
                      sub_270706C38(v154, v155);
                      OUTLINED_FUNCTION_4_5();
                      v227 = v150;
                      v228 = v151;
                    }

                    else
                    {
                      if (v62 < v49)
                      {
                        goto LABEL_324;
                      }

                      v216 = OUTLINED_FUNCTION_5_5();
                      sub_270706C38(v216, v217);
                      v218 = OUTLINED_FUNCTION_5_5();
                      sub_270706C38(v218, v219);
                      OUTLINED_FUNCTION_4_5();
                      v227 = v49;
                      v228 = v49 >> 32;
                    }

                    goto LABEL_173;
                  default:
                    v439 = v47;
                    v440 = BYTE2(v47);
                    v441 = BYTE3(v47);
                    v442 = v56;
                    v443 = BYTE5(v47);
                    v444 = BYTE6(v47);
                    v445 = HIBYTE(v47);
                    v446 = v54;
                    v447 = BYTE2(v54);
                    v448 = BYTE3(v54);
                    v449 = BYTE4(v54);
                    v450 = BYTE5(v54);
                    if (v55)
                    {
                      OUTLINED_FUNCTION_7_4();
                      if (v46)
                      {
                        v418 = v69;
                        if (v62 < v49)
                        {
                          goto LABEL_325;
                        }

                        v70 = OUTLINED_FUNCTION_5_5();
                        sub_270706C38(v70, v71);
                        v72 = OUTLINED_FUNCTION_5_5();
                        sub_270706C38(v72, v73);
                        OUTLINED_FUNCTION_9_4();
                        v227 = v49;
                        v228 = v49 >> 32;
                      }

                      else
                      {
                        v220 = *(v49 + 24);
                        v221 = OUTLINED_FUNCTION_3_4(*(v49 + 16));
                        sub_270706C38(v221, v222);
                        v223 = OUTLINED_FUNCTION_5_5();
                        sub_270706C38(v223, v224);
                        OUTLINED_FUNCTION_9_4();
                        v227 = v418;
                        v228 = v220;
                      }

LABEL_173:
                      v7 = v423;
                      v229 = sub_270722A84(v227, v228, v225, v226);
                      v230 = OUTLINED_FUNCTION_5_5();
                      sub_270708D74(v230, v231);
                      v232 = OUTLINED_FUNCTION_5_5();
                      sub_270708D74(v232, v233);
                      v423 = v7;
                      if (v7)
                      {
                        goto LABEL_334;
                      }

                      if ((v229 & 1) == 0)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
LABEL_141:
                      if (OUTLINED_FUNCTION_0_11(v68, v67, v53, v66, v65, v64, v63))
                      {
                        goto LABEL_78;
                      }
                    }

                    break;
                }
              }
            }

            else
            {
              v419 = v54;
LABEL_78:
              OUTLINED_FUNCTION_25_2();
              v74 = OUTLINED_FUNCTION_34_0();
              v75(v74);
            }

            break;
          case 2:
            OUTLINED_FUNCTION_36_0();
            if (!v34)
            {
              goto LABEL_69;
            }

            goto LABEL_294;
          case 3:
            v419 = v54;
            if (!v59)
            {
              break;
            }

            goto LABEL_78;
          default:
            v61 = v53;
            goto LABEL_69;
        }
      }

LABEL_79:
      v76 = v451[4];
      v78 = v456;
      v77 = v457;
      OUTLINED_FUNCTION_29_1();
      if (!v46)
      {
        switch(v80)
        {
          case 1:
            if (!__OFSUB__(v79, v76))
            {
              goto LABEL_94;
            }

            goto LABEL_306;
          case 2:
            if (!__OFSUB__(*(v76 + 24), *(v76 + 16)))
            {
              goto LABEL_94;
            }

            goto LABEL_305;
          default:
            goto LABEL_94;
        }
      }

      if (v76 || ((OUTLINED_FUNCTION_49_0(), v46) ? (v83 = v81 >= 3) : (v83 = 0), !v83 || v78 || v77 != v82))
      {
LABEL_94:
        OUTLINED_FUNCTION_20_2();
        switch(v89)
        {
          case 1:
            LODWORD(v90) = v86 - v78;
            if (__OFSUB__(v86, v78))
            {
              goto LABEL_296;
            }

            v90 = v90;
LABEL_103:
            if (v88 == v90)
            {
              if (v88 < 1)
              {
                break;
              }

              v7 = v78 >> 32;
              v419 = v85;
              switch(v87)
              {
                case 1:
                  v7 = v76 >> 32;
                  if (v76 >> 32 < v76)
                  {
                    goto LABEL_315;
                  }

                  v183 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v183, v184);
                  v185 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v185, v186);
                  v187 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v187, v188);
                  v173 = OUTLINED_FUNCTION_18_2();
LABEL_138:
                  v189 = OUTLINED_FUNCTION_39_0(v173, v174, v175);
                  goto LABEL_179;
                case 2:
                  v166 = OUTLINED_FUNCTION_3_4(*(v76 + 16));
                  v7 = v167;
                  sub_270706C38(v166, v168);
                  v169 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v169, v170);
                  v171 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v171, v172);
                  v173 = OUTLINED_FUNCTION_26_1();
                  goto LABEL_138;
                case 3:
                  OUTLINED_FUNCTION_51_0();
                  if (!v176)
                  {
                    goto LABEL_143;
                  }

                  if (v176 == 2)
                  {
                    v177 = *(v78 + 16);
                    v178 = *(v78 + 24);
                    v179 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v179, v180);
                    v181 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v181, v182);
                    OUTLINED_FUNCTION_4_5();
                    v242 = v177;
                    v243 = v178;
                  }

                  else
                  {
                    if (v7 < v78)
                    {
                      goto LABEL_327;
                    }

                    v234 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v234, v235);
                    v236 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v236, v237);
                    OUTLINED_FUNCTION_4_5();
                    v242 = OUTLINED_FUNCTION_19_1();
                  }

                  goto LABEL_178;
                default:
                  OUTLINED_FUNCTION_28_1();
                  v440 = BYTE2(v76);
                  v441 = BYTE3(v76);
                  v442 = v98;
                  v443 = BYTE5(v76);
                  v444 = BYTE6(v76);
                  v445 = HIBYTE(v76);
                  v446 = v99;
                  v447 = v100;
                  v448 = v101;
                  v449 = v102;
                  v450 = v103;
                  if (!v104)
                  {
LABEL_143:
                    if (OUTLINED_FUNCTION_0_11(v91, v92, v93, v94, v95, v96, v97))
                    {
                      break;
                    }

                    goto LABEL_182;
                  }

                  OUTLINED_FUNCTION_7_4();
                  if (v46)
                  {
                    v418 = v105;
                    if (v7 < v78)
                    {
                      goto LABEL_326;
                    }

                    v106 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v106, v107);
                    v108 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v108, v109);
                    OUTLINED_FUNCTION_9_4();
                    v242 = OUTLINED_FUNCTION_19_1();
                  }

                  else
                  {
                    v238 = OUTLINED_FUNCTION_3_4(*(v78 + 16));
                    sub_270706C38(v238, v239);
                    v240 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v240, v241);
                    OUTLINED_FUNCTION_9_4();
                    v242 = OUTLINED_FUNCTION_26_1();
                  }

LABEL_178:
                  v7 = v423;
                  v189 = sub_270722A84(v242, v243, v244, v245);
LABEL_179:
                  v246 = v189;
                  v247 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v247, v248);
                  v249 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v249, v250);
                  v423 = v7;
                  if (v7)
                  {
                    goto LABEL_334;
                  }

                  if (v246)
                  {
                    goto LABEL_182;
                  }

                  break;
              }
            }

            else
            {
              v419 = v85;
            }

LABEL_181:
            OUTLINED_FUNCTION_25_2();
            v251 = OUTLINED_FUNCTION_23_2();
            v252(v251);
            break;
          case 2:
            OUTLINED_FUNCTION_36_0();
            if (!v34)
            {
              goto LABEL_103;
            }

            goto LABEL_295;
          case 3:
            v419 = v85;
            if (!v88)
            {
              break;
            }

            goto LABEL_181;
          default:
            v90 = v84;
            goto LABEL_103;
        }
      }

LABEL_182:
      v253 = v451[6];
      v255 = v458;
      v254 = v459;
      OUTLINED_FUNCTION_29_1();
      if (!v46)
      {
        switch(v257)
        {
          case 1:
            if (!__OFSUB__(v256, v253))
            {
              goto LABEL_197;
            }

            goto LABEL_308;
          case 2:
            if (!__OFSUB__(*(v253 + 24), *(v253 + 16)))
            {
              goto LABEL_197;
            }

            goto LABEL_307;
          default:
            goto LABEL_197;
        }
      }

      if (v253 || ((OUTLINED_FUNCTION_49_0(), v46) ? (v260 = v258 >= 3) : (v260 = 0), !v260 || v255 || v254 != v259))
      {
LABEL_197:
        OUTLINED_FUNCTION_20_2();
        switch(v266)
        {
          case 1:
            LODWORD(v267) = v263 - v255;
            if (__OFSUB__(v263, v255))
            {
              goto LABEL_297;
            }

            v267 = v267;
LABEL_206:
            if (v265 == v267)
            {
              if (v265 < 1)
              {
                break;
              }

              v7 = v255 >> 32;
              v419 = v262;
              switch(v264)
              {
                case 1:
                  v7 = v253 >> 32;
                  if (v253 >> 32 < v253)
                  {
                    goto LABEL_316;
                  }

                  v304 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v304, v305);
                  v306 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v306, v307);
                  v308 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v308, v309);
                  v294 = OUTLINED_FUNCTION_18_2();
LABEL_221:
                  v310 = OUTLINED_FUNCTION_39_0(v294, v295, v296);
                  goto LABEL_227;
                case 2:
                  v287 = OUTLINED_FUNCTION_3_4(*(v253 + 16));
                  v7 = v288;
                  sub_270706C38(v287, v289);
                  v290 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v290, v291);
                  v292 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v292, v293);
                  v294 = OUTLINED_FUNCTION_26_1();
                  goto LABEL_221;
                case 3:
                  OUTLINED_FUNCTION_51_0();
                  if (!v297)
                  {
                    goto LABEL_222;
                  }

                  if (v297 == 2)
                  {
                    v298 = *(v255 + 16);
                    v299 = *(v255 + 24);
                    v300 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v300, v301);
                    v302 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v302, v303);
                    OUTLINED_FUNCTION_4_5();
                    v319 = v298;
                    v320 = v299;
                  }

                  else
                  {
                    if (v7 < v255)
                    {
                      goto LABEL_329;
                    }

                    v311 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v311, v312);
                    v313 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v313, v314);
                    OUTLINED_FUNCTION_4_5();
                    v319 = OUTLINED_FUNCTION_19_1();
                  }

                  goto LABEL_226;
                default:
                  OUTLINED_FUNCTION_28_1();
                  v440 = BYTE2(v253);
                  v441 = BYTE3(v253);
                  v442 = v275;
                  v443 = BYTE5(v253);
                  v444 = BYTE6(v253);
                  v445 = HIBYTE(v253);
                  v446 = v276;
                  v447 = v277;
                  v448 = v278;
                  v449 = v279;
                  v450 = v280;
                  if (!v281)
                  {
LABEL_222:
                    if (OUTLINED_FUNCTION_0_11(v268, v269, v270, v271, v272, v273, v274))
                    {
                      break;
                    }

                    goto LABEL_230;
                  }

                  OUTLINED_FUNCTION_7_4();
                  if (v46)
                  {
                    v418 = v282;
                    if (v7 < v255)
                    {
                      goto LABEL_328;
                    }

                    v283 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v283, v284);
                    v285 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v285, v286);
                    OUTLINED_FUNCTION_9_4();
                    v319 = OUTLINED_FUNCTION_19_1();
                  }

                  else
                  {
                    v315 = OUTLINED_FUNCTION_3_4(*(v255 + 16));
                    sub_270706C38(v315, v316);
                    v317 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v317, v318);
                    OUTLINED_FUNCTION_9_4();
                    v319 = OUTLINED_FUNCTION_26_1();
                  }

LABEL_226:
                  v7 = v423;
                  v310 = sub_270722A84(v319, v320, v321, v322);
LABEL_227:
                  v323 = v310;
                  v324 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v324, v325);
                  v326 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v326, v327);
                  v423 = v7;
                  if (v7)
                  {
                    goto LABEL_334;
                  }

                  if (v323)
                  {
                    goto LABEL_230;
                  }

                  break;
              }
            }

            else
            {
              v419 = v262;
            }

LABEL_229:
            OUTLINED_FUNCTION_25_2();
            v328 = OUTLINED_FUNCTION_23_2();
            v329(v328);
            break;
          case 2:
            OUTLINED_FUNCTION_36_0();
            if (!v34)
            {
              goto LABEL_206;
            }

            goto LABEL_298;
          case 3:
            v419 = v262;
            if (!v265)
            {
              break;
            }

            goto LABEL_229;
          default:
            v267 = v261;
            goto LABEL_206;
        }
      }

LABEL_230:
      v330 = v451[8];
      v3 = v460;
      v331 = v461;
      OUTLINED_FUNCTION_29_1();
      if (!v46)
      {
        switch(v333)
        {
          case 1:
            if (!__OFSUB__(v332, v330))
            {
              goto LABEL_245;
            }

            goto LABEL_309;
          case 2:
            if (!__OFSUB__(*(v330 + 24), *(v330 + 16)))
            {
              goto LABEL_245;
            }

            goto LABEL_310;
          default:
            goto LABEL_245;
        }
      }

      if (!v330 && ((OUTLINED_FUNCTION_49_0(), v46) ? (v336 = v334 >= 3) : (v336 = 0), v336 && !v3 && v331 == v335))
      {
LABEL_263:
        OUTLINED_FUNCTION_33_1();
      }

      else
      {
LABEL_245:
        OUTLINED_FUNCTION_20_2();
        switch(v342)
        {
          case 1:
            LODWORD(v343) = v339 - v3;
            if (__OFSUB__(v339, v3))
            {
              goto LABEL_300;
            }

            v343 = v343;
LABEL_254:
            if (v341 == v343)
            {
              if (v341 < 1)
              {
                goto LABEL_263;
              }

              v7 = v3 >> 32;
              v419 = v338;
              switch(v340)
              {
                case 1:
                  v7 = v330 >> 32;
                  if (v330 >> 32 < v330)
                  {
                    goto LABEL_317;
                  }

                  v381 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v381, v382);
                  v383 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v383, v384);
                  v385 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v385, v386);
                  v371 = OUTLINED_FUNCTION_18_2();
LABEL_270:
                  v387 = OUTLINED_FUNCTION_39_0(v371, v372, v373);
                  goto LABEL_276;
                case 2:
                  v364 = OUTLINED_FUNCTION_3_4(*(v330 + 16));
                  v7 = v365;
                  sub_270706C38(v364, v366);
                  v367 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v367, v368);
                  v369 = OUTLINED_FUNCTION_5_5();
                  sub_270706C38(v369, v370);
                  v371 = OUTLINED_FUNCTION_26_1();
                  goto LABEL_270;
                case 3:
                  OUTLINED_FUNCTION_51_0();
                  if (!v374)
                  {
                    goto LABEL_271;
                  }

                  if (v374 == 2)
                  {
                    v375 = *(v3 + 16);
                    v376 = *(v3 + 24);
                    v377 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v377, v378);
                    v379 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v379, v380);
                    OUTLINED_FUNCTION_4_5();
                    v397 = v375;
                    v398 = v376;
                  }

                  else
                  {
                    if (v7 < v3)
                    {
                      goto LABEL_330;
                    }

                    v389 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v389, v390);
                    v391 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v391, v392);
                    OUTLINED_FUNCTION_4_5();
                    v397 = OUTLINED_FUNCTION_19_1();
                  }

                  goto LABEL_275;
                default:
                  OUTLINED_FUNCTION_28_1();
                  v440 = BYTE2(v330);
                  v441 = BYTE3(v330);
                  v442 = v352;
                  v443 = BYTE5(v330);
                  v444 = BYTE6(v330);
                  v445 = HIBYTE(v330);
                  v446 = v353;
                  v447 = v354;
                  v448 = v355;
                  v449 = v356;
                  v450 = v357;
                  if (!v358)
                  {
LABEL_271:
                    OUTLINED_FUNCTION_0_11(v345, v346, v347, v348, v349, v350, v351);
                    OUTLINED_FUNCTION_33_1();
                    if (v388)
                    {
                      break;
                    }

                    goto LABEL_279;
                  }

                  OUTLINED_FUNCTION_7_4();
                  if (v46)
                  {
                    v418 = v359;
                    if (v7 < v3)
                    {
                      goto LABEL_331;
                    }

                    v360 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v360, v361);
                    v362 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v362, v363);
                    OUTLINED_FUNCTION_9_4();
                    v397 = OUTLINED_FUNCTION_19_1();
                  }

                  else
                  {
                    v393 = OUTLINED_FUNCTION_3_4(*(v3 + 16));
                    sub_270706C38(v393, v394);
                    v395 = OUTLINED_FUNCTION_5_5();
                    sub_270706C38(v395, v396);
                    OUTLINED_FUNCTION_9_4();
                    v397 = OUTLINED_FUNCTION_26_1();
                  }

LABEL_275:
                  v7 = v423;
                  v387 = sub_270722A84(v397, v398, v399, v400);
LABEL_276:
                  v401 = v387;
                  v402 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v402, v403);
                  v404 = OUTLINED_FUNCTION_5_5();
                  sub_270708D74(v404, v405);
                  v423 = v7;
                  if (v7)
                  {
                    goto LABEL_334;
                  }

                  OUTLINED_FUNCTION_33_1();
                  if (v401)
                  {
                    goto LABEL_279;
                  }

                  break;
              }
            }

            else
            {
              v419 = v338;
              OUTLINED_FUNCTION_33_1();
            }

LABEL_278:
            v407 = v424[3];
            v406 = v424[4];
            __swift_project_boxed_opaque_existential_1(v424, v407);
            (*(v406 + 40))(v330, v419, v7, v407, v406);
            break;
          case 2:
            OUTLINED_FUNCTION_36_0();
            if (!v34)
            {
              goto LABEL_254;
            }

            goto LABEL_299;
          case 3:
            v419 = v338;
            OUTLINED_FUNCTION_33_1();
            if (!v344)
            {
              break;
            }

            goto LABEL_278;
          default:
            v343 = v337;
            goto LABEL_254;
        }
      }

LABEL_279:
      sub_27072318C(v7);
      sub_270723094(v451);
      v10 = v420;
      v11 = v421;
    }

    else
    {
      sub_27072318C(v7);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
    }

    if (v19 >= v17)
    {
      break;
    }

    v15 = v12[v19];
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_7;
    }
  }

  sub_270723094(&v452);

  OUTLINED_FUNCTION_12_0();
}