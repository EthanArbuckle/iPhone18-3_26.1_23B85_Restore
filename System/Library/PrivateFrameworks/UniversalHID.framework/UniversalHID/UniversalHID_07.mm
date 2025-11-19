unint64_t sub_27077959C()
{
  result = qword_28082A0E0;
  if (!qword_28082A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0E0);
  }

  return result;
}

unint64_t sub_2707795F4()
{
  result = qword_28082A0E8;
  if (!qword_28082A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0E8);
  }

  return result;
}

unint64_t sub_27077964C()
{
  result = qword_28082A0F0;
  if (!qword_28082A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0F0);
  }

  return result;
}

unint64_t sub_2707796A4()
{
  result = qword_28082A0F8;
  if (!qword_28082A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28082A0F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_2707A8570();
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_2707A8C70();
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_2707A84E0();
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return sub_2707A84E0();
}

uint64_t (*VelocityEvent.x.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077993C;
}

uint64_t (*VelocityEvent.y.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_2707799A0;
}

uint64_t (*VelocityEvent.z.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270779A08;
}

uint64_t sub_270779A1C@<X0>(void *a1@<X8>)
{
  result = VelocityEvent.x.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_270779A54@<X0>(void *a1@<X8>)
{
  result = VelocityEvent.y.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_270779A8C@<X0>(void *a1@<X8>)
{
  result = VelocityEvent.z.getter();
  *a1 = v3;
  return result;
}

unint64_t static GameControllerEvent.dispatch(report:)()
{
  type metadata accessor for GameControllerGesture();
  swift_initStackObject();
  return GameControllerGesture.dispatch(report:)();
}

unint64_t GameControllerGesture.dispatch(report:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707A9CF0;
  OUTLINED_FUNCTION_11_9();
  result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((result & 0x80) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
    v2 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v2);
    OUTLINED_FUNCTION_11_9();
    v3 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v3);
    OUTLINED_FUNCTION_11_9();
    v4 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v4);
    OUTLINED_FUNCTION_11_9();
    v5 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v5);
    OUTLINED_FUNCTION_11_9();
    v6 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v6);
    OUTLINED_FUNCTION_11_9();
    v7 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v7);
    OUTLINED_FUNCTION_11_9();
    v8 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v8);
    OUTLINED_FUNCTION_11_9();
    v9 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v9);
    GameControllerReport.joystickLeft.getter();
    OUTLINED_FUNCTION_11_9();
    v10 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v10);
    GameControllerReport.joystickRight.getter();
    OUTLINED_FUNCTION_11_9();
    v11 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_45(v11);
    OUTLINED_FUNCTION_11_9();
    v12 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v12);
    OUTLINED_FUNCTION_11_9();
    v13 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v13);
    OUTLINED_FUNCTION_11_9();
    v14 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v14);
    OUTLINED_FUNCTION_11_9();
    v15 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    OUTLINED_FUNCTION_7_15(v15);
    mach_absolute_time();
    v16 = IOHIDEventCreate();
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
    *(v0 + 56) = &type metadata for GameControllerEvent;
    *(v0 + 64) = &protocol witness table for GameControllerEvent;
    *(v0 + 32) = v16;
    return v0;
  }

  return result;
}

uint64_t (*ScaleEvent.x.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_270779FDC;
}

uint64_t (*ScaleEvent.y.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077A048;
}

uint64_t (*ScaleEvent.z.modify(uint64_t a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return sub_27077A0B0;
}

uint64_t sub_27077A0C4@<X0>(void *a1@<X8>)
{
  result = ScaleEvent.x.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27077A0FC@<X0>(void *a1@<X8>)
{
  result = ScaleEvent.y.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27077A134@<X0>(void *a1@<X8>)
{
  result = ScaleEvent.z.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27077A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_270724188(a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_10();
    sub_2707231E8(v6, a2, a3);

    *v3 = v9;
  }

  else
  {
    sub_27077E8F8(a1, &qword_280829D68);
    OUTLINED_FUNCTION_4_6();
    sub_270722C84(v8);

    return sub_27077E8F8(v10, &qword_280829D68);
  }

  return result;
}

uint64_t sub_27077A258(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_27070F8A8(a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_10();
    result = sub_270723400(v4, a2);
    *v2 = v9;
  }

  else
  {
    sub_27077E8F8(a1, &qword_280829868);
    v6 = sub_270721EA0(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A320);
      sub_2707A8C40();
      sub_27070F8A8((*(v10 + 56) + 40 * v8), v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A1B0);
      sub_2707373D4();
      sub_2707A8C60();
      *v2 = v10;
    }

    else
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
    }

    return sub_27077E8F8(v11, &qword_280829868);
  }

  return result;
}

void sub_27077A3AC(uint64_t a1, void (*a2)(void **__return_ptr, _BYTE *), uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state;
  v9 = *(v4 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v9)
  {

    sub_270766B80(a1, a2, a3);
    v11 = sub_27070EFB8(v10);

    sub_27077ADF0(v11);
    *(v4 + v8) = v9;

    return;
  }

  v12 = 0;
  v13 = *(a1 + 16);
  v14 = a1 + 32;
  while (1)
  {
    if (v12 == v13)
    {
      v23 = 0;
      v12 = v13;
      v21 = 0u;
      v22 = 0u;
      goto LABEL_10;
    }

    if (v12 >= v13)
    {
      break;
    }

    sub_27077E790(v14 + 40 * v12, &v21);
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    v19[0] = v21;
    v19[1] = v22;
    v20 = v23;
    if (!*(&v22 + 1))
    {
      return;
    }

    sub_27070F8A8(v19, v18);
    a2(&v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v16 = v17;
    sub_27077DCC8(v17, v4);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void HIDVirtualService.dispatch<A>(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v40 = v7;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - v10;
  v12 = sub_2707A8930();
  OUTLINED_FUNCTION_11_5(v12);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state;
  v29 = *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v29)
  {
    (*(v22 + 16))(v27, v5, v23);

    sub_2707A8750();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110);
    v30 = sub_2707A8BE0();

    v42 = v29;
    sub_27077ADF0(v30);
    *(v1 + v28) = v42;
  }

  else
  {
    v39 = v24;
    v41 = v3;
    v31 = v1;
    v32 = v21;
    v33 = v5;
    v34 = v25;
    (*(v22 + 16))(v27, v33, v23);
    v35 = v34;
    sub_2707A86A0();
    v36 = v32;
    swift_getAssociatedConformanceWitness();
    v37 = (v40 + 32);
    for (i = (v40 + 8); ; (*i)(v11, AssociatedTypeWitness))
    {
      sub_2707A8940();
      if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v37)(v11, v16, AssociatedTypeWitness);
      sub_27077DFFC(v11, v31, AssociatedTypeWitness, v41);
    }

    (*(v39 + 8))(v35, v36);
  }

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_27077A8D4(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  if (*(a1 + 16) && (v5 = sub_270721EA0(a2), (v6 & 1) != 0))
  {
    sub_27077E790(*(a1 + 56) + 40 * v5, v8);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829868);
  a3(0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall HIDVirtualService.activate()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  (*(v2 + 64))();
  v3 = OUTLINED_FUNCTION_4_6();
  v5 = v4(v3);
  swift_beginAccess();
  *(v1 + 48) = v5;
}

Swift::Void __swiftcall HIDVirtualService.cancel()()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v7 << 6);
      v10 = *(*(v1 + 48) + v9);
      sub_27077E790(*(v1 + 56) + 40 * v9, v16);
      LOBYTE(v17) = v10;
      sub_27070F8A8(v16, &v17 + 8);
LABEL_10:
      v20[1] = v18;
      v20[2] = v19;
      v20[0] = v17;
      if (!v19)
      {
        break;
      }

      sub_27070F8A8((v20 + 8), &v17);
      v11 = *(&v18 + 1);
      v12 = v19;
      v13 = __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      sub_27077C02C(v13, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v14 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 72))(ObjectType, v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        v4 = 0;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        goto LABEL_10;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_27077AB9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_2707A8F60();
    MEMORY[0x2743A8500](v4);
    v5 = sub_2707A8FC0();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

BOOL sub_27077AC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2707A8F60();
  sub_2707A8620();
  v6 = sub_2707A8FC0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_2707A8EA0();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_27077AD38(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27077DAC0(v4, 1, MEMORY[0x277D84130]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_27077ADF0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27077DAC0(v4, 1, sub_270713DA0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A110);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void HIDVirtualService.property(forKey:)(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_modifiedProperties;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (OUTLINED_FUNCTION_4_6(), v6 = sub_270721FD8(), (v7 & 1) != 0))
  {
    sub_2707374F8(*(v5 + 56) + 32 * v6, v12);
    sub_270724188(v12, a1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_8_15();
    v8 = *(v2 + 64);
    v9 = OUTLINED_FUNCTION_4_6();
    HIDServiceProperties.property(forKey:)(v9, v10, v8, v11);
  }
}

uint64_t HIDVirtualService.properties.getter()
{
  OUTLINED_FUNCTION_8_15();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1;
}

uint64_t sub_27077B008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A310);
  result = swift_initStackObject();
  *(result + 16) = xmmword_2707AFD30;
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = 0x80000002707B4BB0;
  if (*MEMORY[0x277CD2880])
  {
    v1 = result;
    v2 = *MEMORY[0x277CD2880];
    v1[6] = sub_2707A85E0();
    v1[7] = v3;
    v1[8] = 0xD00000000000001DLL;
    v1[9] = 0x80000002707B5190;
    result = sub_27077DB38(v1);
    qword_28082A100 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HIDVirtualService.__allocating_init(logger:properties:queue:absolutePointerGesture:appleVendorKeyboardGesture:appleVendorTopCaseGesture:consumerGesture:genericGestureGesture:keyboardGesture:digitizerGesture:pointerGesture:scrollGesture:touchSensitiveButtonGesture:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11_0();
  v57 = v26;
  v58 = v27;
  v29 = v28;
  v56[1] = v28;
  v56[2] = v30;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v56[3] = v34;
  v59 = v36;
  v60 = v37;
  v39 = v38;
  v61 = v38;
  v63 = a26;
  v65 = a25;
  v56[0] = a21;
  v64 = a22;
  v66 = a24;
  v62 = a23;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  OUTLINED_FUNCTION_11_5(v40);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v41, v42);
  v56[4] = v56 - v43;
  sub_27077E440(v39, v56 - v43, &unk_28082A120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AC1C0;
  *(inited + 32) = 19;
  *(inited + 64) = type metadata accessor for AbsolutePointerGesture();
  *(inited + 72) = &protocol witness table for AbsolutePointerGesture;
  *(inited + 40) = v35;
  *(inited + 80) = 4;
  *(inited + 112) = type metadata accessor for AppleVendorTopCaseGesture(0);
  *(inited + 120) = sub_27073F5C0();
  *(inited + 88) = v31;
  *(inited + 128) = 3;
  *(inited + 160) = type metadata accessor for AppleVendorKeyboardGesture(0);
  *(inited + 168) = sub_27073F710();
  *(inited + 136) = v33;
  *(inited + 176) = 2;
  *(inited + 208) = type metadata accessor for ConsumerGesture(0);
  *(inited + 216) = sub_27073F860();
  *(inited + 184) = v29;
  *(inited + 224) = 9;
  *(inited + 256) = type metadata accessor for DigitizerGesture();
  *(inited + 264) = &protocol witness table for DigitizerGesture;
  *(inited + 232) = v62;
  *(inited + 272) = 1;
  *(inited + 304) = type metadata accessor for KeyboardGesture(0);
  *(inited + 312) = sub_27073FA04();
  *(inited + 280) = a22;
  *(inited + 320) = 20;
  *(inited + 352) = type metadata accessor for GenericGestureGesture();
  *(inited + 360) = &protocol witness table for GenericGestureGesture;
  *(inited + 328) = a21;
  *(inited + 368) = 5;
  *(inited + 400) = type metadata accessor for PointerGesture();
  *(inited + 408) = &protocol witness table for PointerGesture;
  *(inited + 376) = v66;
  *(inited + 416) = 7;
  *(inited + 448) = type metadata accessor for ScrollGesture();
  *(inited + 456) = &protocol witness table for ScrollGesture;
  *(inited + 424) = v65;
  *(inited + 464) = 11;
  v45 = type metadata accessor for DockSwipeGesture();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(inited + 496) = v45;
  *(inited + 504) = &protocol witness table for DockSwipeGesture;
  *(inited + 472) = v46;
  *(inited + 512) = 13;
  type metadata accessor for NavigationSwipeGesture();
  v47 = OUTLINED_FUNCTION_1_37();
  *(v47 + 16) = 0;
  *(inited + 544) = v45;
  *(inited + 552) = &protocol witness table for NavigationSwipeGesture;
  *(inited + 520) = v47;
  *(inited + 560) = 21;
  *(inited + 592) = type metadata accessor for TouchSensitiveButtonGesture();
  *(inited + 600) = &protocol witness table for TouchSensitiveButtonGesture;
  *(inited + 568) = v63;
  *(inited + 608) = 17;
  type metadata accessor for TranslationGesture();
  v48 = OUTLINED_FUNCTION_1_37();
  *(v48 + 16) = 0;
  *(inited + 640) = v45;
  *(inited + 648) = &protocol witness table for TranslationGesture;
  *(inited + 616) = v48;
  *(inited + 656) = 12;
  type metadata accessor for FluidTouchGesture();
  v49 = OUTLINED_FUNCTION_1_37();
  *(v49 + 16) = 0;
  *(inited + 688) = v45;
  *(inited + 696) = &protocol witness table for FluidTouchGesture;
  *(inited + 664) = v49;
  *(inited + 704) = 15;
  type metadata accessor for ScaleGesture();
  v50 = OUTLINED_FUNCTION_1_37();
  *(v50 + 16) = 0;
  *(inited + 736) = v45;
  *(inited + 744) = &protocol witness table for ScaleGesture;
  *(inited + 712) = v50;
  *(inited + 752) = 16;
  type metadata accessor for RotationGesture();
  v51 = OUTLINED_FUNCTION_1_37();
  *(v51 + 16) = 0;
  *(inited + 784) = v45;
  *(inited + 792) = &protocol witness table for RotationGesture;
  *(inited + 760) = v51;
  *(inited + 800) = 14;
  v52 = type metadata accessor for ZoomToggleGesture();
  v53 = OUTLINED_FUNCTION_25_3();
  *(inited + 832) = v52;
  *(inited + 840) = &protocol witness table for ZoomToggleGesture;
  *(inited + 808) = v53;
  *(inited + 848) = 18;
  v54 = type metadata accessor for GameControllerGesture();
  v55 = OUTLINED_FUNCTION_25_3();
  *(inited + 880) = v54;
  *(inited + 888) = &protocol witness table for GameControllerGesture;
  *(inited + 856) = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A1B0);
  sub_2707373D4();
  sub_2707A8520();
  OUTLINED_FUNCTION_33();
  sub_27077B984();

  sub_27077E8F8(v61, &unk_28082A120);
  OUTLINED_FUNCTION_12_0();
}

void sub_27077B984()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v50 = v4;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  OUTLINED_FUNCTION_11_5(v10);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v11, v12);
  v48 = &v48 - v13;
  v1[6] = 0;
  v14 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_modifiedProperties;
  v15 = MEMORY[0x277D84F90];
  *(v1 + v14) = sub_2707A8520();
  v16 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
  sub_2707A8460();
  *(v1 + v16) = sub_2707A8520();
  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state) = v15;
  v17 = (v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_terminationWasRequestedHandler);
  *v17 = nullsub_1;
  v17[1] = 0;
  v18 = v7;
  v19 = HIDServiceProperties.subscript.getter();
  if (v20)
  {
    v52 = 11606;
    v53 = 0xE200000000000000;
    MEMORY[0x2743A7BE0](v19);

    v21 = sub_2707A85C0();
  }

  else
  {
    v21 = 0;
  }

  v52 = 0x746375646F7250;
  v53 = 0xE700000000000000;
  [v18 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v22 = sub_2707A8760();
  v52 = 0xD00000000000001ELL;
  v53 = 0x80000002707B4090;
  [v18 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v23 = v18;
  if (HIDDeviceType.init(properties:)(v9, v23) == 3)
  {
    v24 = sub_2707A85C0();
    v52 = 0xD000000000000012;
    v53 = 0x80000002707B4E10;
    [v23 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v25 = v23;
  if (HIDDeviceType.init(properties:)(v9, v25) == 5)
  {
    OUTLINED_FUNCTION_0_47();
    v27 = sub_27077A8D4(v3, 7u, v26);
    if (v27)
    {
      v28 = *(v27 + 18);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_shouldDispatchScrollEvents) = v28;
  v29 = sub_27077A8D4(v3, 5u, type metadata accessor for PointerGesture);
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_useRemoteAcceleration);

    if (v30 == 1)
    {
      v31 = sub_2707A8760();
      v52 = 0xD00000000000001ELL;
      v53 = 0x80000002707B4ED0;
      v32 = sub_2707A8EC0();
      OUTLINED_FUNCTION_11_15(v32);

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_0_47();
  v49 = v3;
  v34 = sub_27077A8D4(v3, 7u, v33);
  if (v34)
  {
    v35 = *(v34 + 17);

    if (v35 == 1)
    {
      v36 = sub_2707A8760();
      v52 = 0xD00000000000001DLL;
      v53 = 0x80000002707B5010;
      v37 = sub_2707A8EC0();
      OUTLINED_FUNCTION_11_15(v37);

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_4_27();
  sub_2707A8520();
  OUTLINED_FUNCTION_4_27();
  v38 = sub_2707A84F0();

  v52 = 0xD000000000000019;
  v53 = 0x80000002707B4DB0;
  [v25 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v1[7] = v9;
  v1[8] = v25;
  v39 = v50;
  v40 = v48;
  sub_27077E440(v50, v48, &unk_28082A120);
  v41 = objc_allocWithZone(type metadata accessor for HIDVirtualServiceDelegate(0));
  v42 = sub_27077D360(v40);
  v43 = [objc_allocWithZone(MEMORY[0x277D0EF08]) init];
  v44 = v51;
  [v43 setDispatchQueue_];
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  v56 = nullsub_1;
  v57 = v45;
  v52 = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2707325D0;
  v55 = &block_descriptor_18;
  v46 = _Block_copy(&v52);
  v47 = v43;

  [v47 setCancelHandler_];
  _Block_release(v46);
  [v47 setDelegate_];
  sub_270747C30(v39, v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger);
  v1[2] = v49;
  v1[3] = v42;
  v1[4] = v47;
  v1[5] = &protocol witness table for HIDVirtualEventService;
  *(v1 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_queue) = v44;
  swift_weakAssign();

  OUTLINED_FUNCTION_12_0();
}

void sub_27077BF90()
{
  v1 = *(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_state) = 0;
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 32;
      do
      {
        sub_27077E790(v3, v7);
        v4 = v8;
        v5 = v9;
        v6 = __swift_project_boxed_opaque_existential_1(v7, v8);
        sub_27077DFFC(v6, v0, v4, v5);
        __swift_destroy_boxed_opaque_existential_1(v7);
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_27077C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = (*(a3 + 32))(v9, a2, a3);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  if (*(v11 + 16))
  {
    sub_27077A3AC(v11, sub_27077E95C, 0);
  }
}

uint64_t HIDVirtualService.deinit()
{

  swift_unknownObjectRelease();
  sub_27077E8F8(v0 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger, &unk_28082A120);

  return v0;
}

uint64_t HIDVirtualService.__deallocating_deinit()
{
  HIDVirtualService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t HIDVirtualService.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_8_15();
  sub_270735074();
  v2 = sub_2707A8680();
  MEMORY[0x2743A7BE0](v2);

  MEMORY[0x2743A7BE0](8285, 0xE200000000000000);
  OUTLINED_FUNCTION_8_15();
  v3 = *(v0 + 56);
  v4 = *(v1 + 64);
  v5 = HIDServiceProperties.description.getter(v3, v4);
  MEMORY[0x2743A7BE0](v5);

  return 91;
}

void HIDVirtualService.setProperty(_:forKey:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v10 = OUTLINED_FUNCTION_11_5(v9);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - v14;
  if (qword_2808294C8 != -1)
  {
    swift_once();
  }

  v16 = sub_27077AC4C(v6, v4, qword_28082A100);
  if (!v16)
  {
    goto LABEL_33;
  }

  v40 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger;
  sub_27077E440(v2 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_logger, v15, &unk_28082A120);
  v41 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v15, 1, v41) == 1)
  {
    sub_27077E8F8(v15, &unk_28082A120);
  }

  else
  {
    sub_27077E440(v8, v43, &qword_280829D68);

    v17 = sub_2707A8420();
    v18 = sub_2707A8840();

    v39 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v19 = 134218499;
      OUTLINED_FUNCTION_8_15();
      *(v19 + 4) = *(v2 + 48);

      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_27073D0F4();
      *(v19 + 22) = 2081;
      sub_27077CA04(v43);
      v36 = v17;
      v38 = v16;
      sub_27077E8F8(v43, &qword_280829D68);
      v20 = sub_27073D0F4();

      *(v19 + 24) = v20;
      v21 = v36;
      _os_log_impl(&dword_270703000, v36, v39, "%llx: SetProperty %{public}s: %{private}s", v19, 0x20u);
      v22 = v37;
      swift_arrayDestroy();
      MEMORY[0x2743A9010](v22, -1, -1);
      MEMORY[0x2743A9010](v19, -1, -1);
    }

    else
    {

      sub_27077E8F8(v43, &qword_280829D68);
    }

    OUTLINED_FUNCTION_5_0();
    (*(v23 + 8))(v15);
  }

  sub_27077E440(v8, v43, &qword_280829D68);
  swift_beginAccess();

  sub_27077A194(v43, v6, v4);
  swift_endAccess();
  if (*MEMORY[0x277CD2880])
  {
    v24 = *MEMORY[0x277CD2880];
    if (sub_2707A85E0() == v6 && v25 == v4)
    {
    }

    else
    {
      v27 = sub_2707A8EA0();

      if ((v27 & 1) == 0)
      {
        v28 = v6 == 0xD00000000000001DLL && 0x80000002707B5190 == v4;
        if (v28 || (sub_2707A8EA0() & 1) != 0)
        {
          sub_27077CAB4(v8);
        }

        goto LABEL_33;
      }
    }

    sub_27077E440(v8, v43, &qword_280829D68);
    if (v43[3])
    {
      if (swift_dynamicCast() && (v42 & 1) != 0)
      {
        v29 = *(v2 + OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_terminationWasRequestedHandler);

        v29(v30);

LABEL_33:
        OUTLINED_FUNCTION_12_0();
        return;
      }
    }

    else
    {
      sub_27077E8F8(v43, &qword_280829D68);
    }

    sub_27077E440(v2 + v40, v1, &unk_28082A120);
    if (__swift_getEnumTagSinglePayload(v1, 1, v41) == 1)
    {
      sub_27077E8F8(v1, &unk_28082A120);
    }

    else
    {
      v31 = sub_2707A8420();
      v32 = sub_2707A8830();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_270703000, v31, v32, "RequestTerminate set to an unexpected value", v33, 2u);
        MEMORY[0x2743A9010](v33, -1, -1);
      }

      OUTLINED_FUNCTION_5_0();
      (*(v34 + 8))(v1);
    }

    goto LABEL_33;
  }

  __break(1u);
}

uint64_t sub_27077CA04(uint64_t a1)
{
  sub_27077E440(a1, &v3, &qword_280829D68);
  if (v4)
  {
    sub_270724188(&v3, v5);
    sub_2707374F8(v5, &v3);
    v1 = sub_2707A85F0();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_27077E8F8(&v3, &qword_280829D68);
    return 7104878;
  }

  return v1;
}

uint64_t sub_27077CAB4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  result = HIDDeviceType.init(properties:)(*(v2 + 56), *(v2 + 64));
  if (result != 5)
  {
    return result;
  }

  sub_27077E440(a1, &v15, &qword_280829D68);
  if (!v16)
  {
    return sub_27077E8F8(&v15, &qword_280829D68);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A278);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_270735984(v13, &v15);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_27077E8F8(&v15, &qword_280829D68);
  }

  v5 = 0;
LABEL_10:
  sub_270735984(v13, &v15);

  if (!v16)
  {
    sub_27077E8F8(&v15, &qword_280829D68);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v6 = v13;
LABEL_15:
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;

    v8 = sub_27077CE50(v6, sub_27077E828, v7);

    v9 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + v9);
    sub_270723728(v8, v6);
    *(v2 + v9) = v14;
    swift_endAccess();
  }

  else
  {
    v10 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    if (sub_2707359E8(v6, *(v2 + v10)))
    {
      swift_endAccess();
      sub_2707A8450();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    sub_270722E1C(v6);
    swift_endAccess();
  }

  result = sub_27077A8D4(*(v2 + 16), 9u, type metadata accessor for DigitizerGesture);
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
    swift_beginAccess();
    LOBYTE(v12) = *(*(v2 + v12) + 16) != 0;
    swift_beginAccess();
    *(v11 + 19) = v12;
    sub_27077A3AC(MEMORY[0x277D84F90], sub_27077E95C, 0);
  }

  return result;
}

uint64_t sub_27077CE50(int a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_2707A8480();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2707A84B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2707A88B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 1)
  {
    sub_27073FB54(0, &qword_28082A280);
    v24 = v4;
    sub_2707A88A0();
    v19 = sub_2707A88C0();
    (*(v15 + 8))(v18, v14);
    swift_getObjectType();
    v20 = swift_allocObject();
    v21 = v26;
    *(v20 + 16) = v25;
    *(v20 + 24) = v21;
    aBlock[4] = sub_27073516C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2707325D0;
    aBlock[3] = &block_descriptor_3;
    v22 = _Block_copy(aBlock);

    sub_2707A8490();
    sub_27077D1F8();
    sub_2707A88D0();
    _Block_release(v22);
    (*(v5 + 8))(v8, v24);
    (*(v10 + 8))(v13, v9);

    sub_2707A88F0();
    *(swift_allocObject() + 16) = v19;
  }

  sub_2707A8460();
  swift_allocObject();
  return sub_2707A8470();
}

uint64_t sub_27077D1F8()
{
  sub_2707A8480();
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_270732684();
  return sub_2707A8A90();
}

uint64_t sub_27077D2A8(uint64_t a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC12UniversalHID17HIDVirtualService_notificationCenterModeProcesses;
  swift_beginAccess();
  if (sub_2707359E8(a2, *(a1 + v4)))
  {
    swift_endAccess();
    sub_2707A8450();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  sub_270722E1C(a2);
  swift_endAccess();
}

id sub_27077D360(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  sub_27077E440(a1, v1 + OBJC_IVAR____TtC12UniversalHIDP33_77F0A1D2252CCF67CE1080DE620C755225HIDVirtualServiceDelegate_logger, &unk_28082A120);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_27077E8F8(a1, &unk_28082A120);
  return v4;
}

uint64_t sub_27077D410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = a2 == 0xD000000000000019 && 0x80000002707B5340 == a3;
    if (v6 || (sub_2707A8EA0() & 1) != 0)
    {
      sub_27077BF90();
    }

    HIDVirtualService.setProperty(_:forKey:)();
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

double sub_27077D5B8@<D0>(_OWORD *a1@<X8>)
{
  if (swift_weakLoadStrong())
  {
    HIDVirtualService.property(forKey:)(a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_27077DA2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27077DAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_27077DB38(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A318);
  result = sub_2707A8AE0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_2707A8F60();

    sub_2707A8620();
    result = sub_2707A8FC0();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_2707A8EA0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_27077DCC8(void *a1, uint64_t a2)
{
  if (IOHIDEventGetType() != 17)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  v5 = a1;
  v6 = sub_27077A8D4(v4, 5u, type metadata accessor for PointerGesture);
  if (!v6)
  {

LABEL_6:
    v13 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v13 + 80))(a1, ObjectType, v13);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
  swift_beginAccess();
  v29 = *(v7 + v8);
  IOHIDEventSetIntegerValue();
  v9 = [v5 children];
  if (v9)
  {
    v10 = v9;
    sub_27073FB54(0, &qword_28082A300);
    v11 = sub_2707A8710();

    v12 = sub_27070EE70(v11);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = 0;
  v16 = *(v12 + 16);
  for (i = v12 + 32; ; i += 40)
  {
    if (v16 == v15)
    {

LABEL_17:
      v26 = *(a2 + 40);
      swift_getObjectType();
      v27 = *(v26 + 80);
      v28 = v5;
      v27();

      return;
    }

    if (v15 >= *(v12 + 16))
    {
      break;
    }

    sub_27077E790(i, &v30);
    v18 = v31;
    v19 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    if ((*(v19 + 24))(v18, v19) == 17)
    {

      sub_27070F8A8(&v30, v33);
      sub_27077E790(v33, &v30);
      v20 = v31;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
      MEMORY[0x28223BE20](v21, v21);
      v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      v25 = sub_27075DFC0(v23, v20);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      if (v25)
      {
        IOHIDEventSetIntegerValue();
      }

      __swift_destroy_boxed_opaque_existential_1(v33);
      goto LABEL_17;
    }

    ++v15;
    __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  __break(1u);
}

id sub_27077DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1, a1);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v40 - v12;
  v14 = *(v7 + 16);
  v14(v40 - v12);
  (v14)(v10, v13, a3);
  v15 = sub_27075DFC0(v10, a3);
  if (!v15)
  {
LABEL_6:
    v24 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    v26 = (*(a4 + 352))(a3, a4);
    (*(v24 + 80))(v26, ObjectType, v24);
LABEL_18:

    return (*(v7 + 8))(v13, a3);
  }

  v16 = v15;
  v17 = sub_27077A8D4(*(a2 + 16), 5u, type metadata accessor for PointerGesture);
  if (!v17)
  {

    goto LABEL_6;
  }

  v18 = v17;
  v43 = v7;
  v19 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
  swift_beginAccess();
  v40[1] = *(v18 + v19);
  IOHIDEventSetIntegerValue();
  result = [v16 children];
  v41 = a2;
  v42 = v18;
  if (result)
  {
    v21 = result;
    sub_27073FB54(0, &qword_28082A300);
    v22 = sub_2707A8710();

    v23 = sub_27070EE70(v22);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v27 = 0;
  v28 = *(v23 + 16);
  for (i = v23 + 32; ; i += 40)
  {
    if (v28 == v27)
    {

LABEL_17:
      v38 = *(v41 + 40);
      swift_getObjectType();
      v39 = *(v38 + 80);
      v26 = v16;
      v39();

      v7 = v43;
      goto LABEL_18;
    }

    if (v27 >= *(v23 + 16))
    {
      break;
    }

    sub_27077E790(i, &v44);
    v31 = v45;
    v30 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    if ((*(v30 + 24))(v31, v30) == 17)
    {

      sub_27070F8A8(&v44, v47);
      sub_27077E790(v47, &v44);
      v32 = v45;
      v33 = __swift_mutable_project_boxed_opaque_existential_1(&v44, v45);
      MEMORY[0x28223BE20](v33, v33);
      v35 = v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      v37 = sub_27075DFC0(v35, v32);
      __swift_destroy_boxed_opaque_existential_1(&v44);
      if (v37)
      {
        IOHIDEventSetIntegerValue();
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_17;
    }

    ++v27;
    result = __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  __break(1u);
  return result;
}

uint64_t sub_27077E440(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_27077E4CC()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27077E600()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27077E6A4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_27077E6F4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27077E748(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_27077E760(void *result, int a2)
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

uint64_t sub_27077E790(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_27077E7F0()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_27077E834()
{

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27077E880()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27077E8C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27077E8F8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_11_15(uint64_t a1)
{

  return [v3 (v2 + 3624)];
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_27077E440(v0, v2, v1);
}

uint64_t AbsolutePointerGesture.__allocating_init(logger:pointerGesture:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AbsolutePointerGesture.init(logger:pointerGesture:)(a1, a2);
  return v4;
}

uint64_t AbsolutePointerGesture.buttonMask.getter()
{
  v1 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AbsolutePointerGesture.init(logger:pointerGesture:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y) = 0;
  sub_270747C30(a1, v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);
  *(v2 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_pointerGesture) = a2;
  return v2;
}

uint64_t AbsolutePointerGesture.dispatch(report:)()
{
  v1 = v0;
  v25[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  mach_absolute_time();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  OUTLINED_FUNCTION_0_0();
  v3 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  if (v3)
  {
    v24 = v3;
    v4 = sub_27070E734(&v24, v25);
    v6 = v5;
    sub_270706C38(v4, v5);
    v7 = mach_absolute_time();
    v8 = sub_270718460(v7, 16973568, 0, v4, v6, 0);
    IOHIDEventAppendEvent();

    sub_270708D74(v4, v6);
  }

  OUTLINED_FUNCTION_0_0();
  v9 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v10 = sub_270747158(v9);
  OUTLINED_FUNCTION_0_0();
  v11 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  v12 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  v13 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x;
  OUTLINED_FUNCTION_1_38(vcvtd_n_f64_s32(v12, 0x10uLL), *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_x));
  if (v15 ^ v16 | v14 && (OUTLINED_FUNCTION_0_0(), v17 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_1_38(vcvtd_n_f64_s32(v17, 0x10uLL), *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y)), v15 ^ v16 | v14) && (v18 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask, swift_beginAccess(), *(v1 + v18) == v10) && *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) == v11)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    *(v1 + v13) = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
    OUTLINED_FUNCTION_0_0();
    *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_y) = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
    v20 = OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_buttonMask;
    swift_beginAccess();
    *(v1 + v20) = v10;
    *(v1 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_keyboardModifiers) = v11;
    OUTLINED_FUNCTION_0_0();
    v21 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    v22 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    v19 = sub_2707474BC(RelativePointerEvent, v21, v22);
  }

  return v19;
}

uint64_t AbsolutePointerGesture.deinit()
{
  sub_270747CA0(v0 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);

  return v0;
}

uint64_t AbsolutePointerGesture.__deallocating_deinit()
{
  sub_270747CA0(v0 + OBJC_IVAR____TtC12UniversalHID22AbsolutePointerGesture_logger);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AbsolutePointerGesture()
{
  result = qword_28082A418;
  if (!qword_28082A418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27077EF30()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_27077F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x277D837D0];
  sub_2707A8520();
  if (a5)
  {
    v10 = sub_2707A85D0();
    v12 = v11;
    v29 = v9;
    *&v28 = a4;
    *(&v28 + 1) = a5;
    sub_270724188(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2707231E8(v25, v10, v12);
  }

  if (a6)
  {
    v13 = sub_2707A85D0();
    v15 = v14;
    swift_getErrorValue();
    v16 = v26;
    v17 = v27;
    v29 = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v16, v17);
    sub_270724188(&v28, v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2707231E8(v25, v13, v15);
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2707A85C0();

  v21 = sub_2707A84F0();

  v22 = [v19 initWithDomain:v20 code:a3 userInfo:v21];

  return v22;
}

Swift::Double __swiftcall HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(Swift::Double logicalMinimum, Swift::Double logicalMaximum, Swift::Double_optional physicalMinimum, Swift::Double_optional physicalMaximum, Swift::Double_optional exponent)
{
  v10 = logicalMaximum;
  v11 = logicalMinimum;
  if (!physicalMaximum.is_nil)
  {
    v10 = logicalMaximum;
    v11 = logicalMinimum;
    if ((v5 & 1) == 0)
    {
      v11 = *&physicalMinimum.is_nil;
      if (*&physicalMinimum.is_nil == 0.0)
      {
        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *&exponent.is_nil;
        }

        else
        {
          v10 = logicalMaximum;
        }

        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v11 = logicalMinimum;
        }
      }

      else
      {
        v10 = *&exponent.is_nil;
      }
    }
  }

  v12 = 1.0;
  if ((v7 & 1) == 0 && v6 != 0.0)
  {
    v12 = __exp10(v6);
  }

  return (logicalMaximum - logicalMinimum) / ((v10 - v11) * v12);
}

uint64_t HIDReport.loadValue<A>(from:at:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v69 = a1;
  v71 = a5;
  v80 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  OUTLINED_FUNCTION_1_11();
  v72 = v10;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v70 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v68 = &v47 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v67 = &v47 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v47 - v22;
  swift_getAssociatedConformanceWitness();
  sub_2707A8EB0();
  sub_2707A8E80();
  v24 = sub_2707A8C00();
  if (v24 < -7)
  {
    goto LABEL_32;
  }

  if ((v24 + 7) >= 0xF)
  {
    v27 = 0;
    v28 = 0;
    v29 = a2;
    v60 = a2 >> 32;
    v59 = BYTE6(a3);
    v66 = (v72 + 8);
    v58 = a2 >> 8;
    v57 = a2 >> 16;
    v56 = a2 >> 24;
    v55 = HIDWORD(a2);
    v54 = a2 >> 40;
    v53 = HIWORD(a2);
    v52 = HIBYTE(a2);
    v51 = a3 >> 8;
    v50 = a3 >> 16;
    v49 = a3 >> 24;
    v48 = HIDWORD(a3);
    v47 = a3 >> 40;
    v30 = a3 >> 62;
    v31 = v24 / 8;
    while (2)
    {
      v32 = 0;
      v33 = v29;
      switch(v30)
      {
        case 1uLL:
          goto LABEL_12;
        case 2uLL:
          v33 = *(a2 + 16);
LABEL_12:
          if ((v33 - 0x1000000000000000) >> 61 == 7)
          {
            v32 = 8 * v33;
LABEL_6:
            v34 = v69 + v28;
            if (!__OFADD__(v69, v28))
            {
              v35 = v32 + v34;
              if (!__OFADD__(v32, v34))
              {
                v64 = v30;
                v65 = v29;
                v62 = v28 + 1;
                v63 = v31;
                switch(v30)
                {
                  case 1uLL:
                    if (v35 < v29 || v35 >= v60)
                    {
                      goto LABEL_37;
                    }

                    v42 = sub_2707A81F0();
                    if (!v42)
                    {
                      __break(1u);
LABEL_43:
                      __break(1u);
LABEL_44:
                      __break(1u);
                      JUMPOUT(0x27077F99CLL);
                    }

                    v38 = v42;
                    v43 = sub_2707A8210();
                    v40 = v35 - v43;
                    if (!__OFSUB__(v35, v43))
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_39;
                  case 2uLL:
                    if (v35 < *(a2 + 16))
                    {
                      goto LABEL_38;
                    }

                    if (v35 >= *(a2 + 24))
                    {
                      goto LABEL_40;
                    }

                    v37 = sub_2707A81F0();
                    if (!v37)
                    {
                      goto LABEL_44;
                    }

                    v38 = v37;
                    v39 = sub_2707A8210();
                    v40 = v35 - v39;
                    if (__OFSUB__(v35, v39))
                    {
                      goto LABEL_41;
                    }

LABEL_27:
                    v36 = *(v38 + v40);
LABEL_28:
                    v44 = v68;
                    LOBYTE(v73) = v36;
                    sub_27074A898();
                    sub_2707A8A10();
                    if (v28 == 0x1000000000000000)
                    {
                      goto LABEL_35;
                    }

                    v73 = v27;
                    sub_270710EEC();
                    v45 = v67;
                    sub_2707A89A0();
                    v61 = a2;
                    v46 = *v66;
                    (*v66)(v44, a4);
                    sub_2707A89B0();
                    v46(v45, a4);
                    a2 = v61;
                    v27 += 8;
                    v28 = v62;
                    v31 = v63;
                    v30 = v64;
                    v29 = v65;
                    if (v63 == v62)
                    {
                      goto LABEL_3;
                    }

                    continue;
                  case 3uLL:
                    goto LABEL_43;
                  default:
                    if (v35 >= v59)
                    {
                      goto LABEL_36;
                    }

                    LOBYTE(v73) = v29;
                    BYTE1(v73) = v58;
                    BYTE2(v73) = v57;
                    BYTE3(v73) = v56;
                    BYTE4(v73) = v55;
                    BYTE5(v73) = v54;
                    BYTE6(v73) = v53;
                    HIBYTE(v73) = v52;
                    v74 = a3;
                    v75 = v51;
                    v76 = v50;
                    v77 = v49;
                    v78 = v48;
                    v79 = v47;
                    v36 = *(&v73 + v35);
                    goto LABEL_28;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          __break(1u);
          break;
        default:
          goto LABEL_6;
      }

      break;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_3:
  v25 = v72;
  (*(v72 + 16))(v70, v23, a4);
  sub_2707A8A10();
  return (*(v25 + 8))(v23, a4);
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_11();
  v17 = v16;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_30_1();
  v22 = v21 - v20;
  HIDReport.loadValue<A>(from:at:)(v23, v24, v25, v26, v21 - v20);
  OUTLINED_FUNCTION_2_27();
  if (sub_2707A89E0() < 65)
  {
    OUTLINED_FUNCTION_2_27();
    v28 = sub_2707A89F0();
    OUTLINED_FUNCTION_2_27();
    v29 = sub_2707A89D0();
    (*(v17 + 8))(v22, a10);
    if (v28)
    {
      v27 = v29;
    }

    else
    {
      v27 = v29;
    }
  }

  else
  {
    sub_270715DBC();
    sub_270715E10();
    sub_2707A84E0();
    (*(v17 + 8))(v22, a10);
    v27 = v37;
  }

  if (v27 > a2 || v27 < a1)
  {
    *&result = 0.0;
  }

  else
  {
    v32 = __exp10(a5);
    if (a5 == 0.0)
    {
      v32 = 1.0;
    }

    v33 = a3 == 0.0;
    v34 = a4 == 0.0;
    if (v33 && v34)
    {
      v35 = a1;
    }

    else
    {
      v35 = a3;
    }

    if (v33 && v34)
    {
      v36 = a2;
    }

    else
    {
      v36 = a4;
    }

    *&result = v27 / ((a2 - a1) / (v32 * (v36 - v35)));
  }

  return result;
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a6, a7, -1.0, 1.0, 0.0, a1, a2, a3, a4, a5);
}

{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a6, a7, 0.0, 1.0, 0.0, a1, a2, a3, a4, a5);
}

uint64_t HIDReport.storeValue<A>(_:to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_11();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_30_1();
  v13 = v12 - v11;
  result = sub_2707A8C00();
  if (result < -7)
  {
    goto LABEL_44;
  }

  if ((result + 7) < 0xF)
  {
    return result;
  }

  v49 = a3;
  v15 = 0;
  v16 = 0;
  v45 = v4;
  v18 = *v4;
  v17 = v4[1];
  v48 = (v8 + 8);
  v19 = result / 8;
  while (2)
  {
    if (v19 == v16)
    {
      goto LABEL_45;
    }

    v20 = v16;
    v21 = v16 + 1;
    v22 = 0;
    switch(v17 >> 62)
    {
      case 1uLL:
        v27 = v18;
        goto LABEL_13;
      case 2uLL:
        v27 = *(v18 + 16);
LABEL_13:
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        v22 = 8 * v27;
LABEL_6:
        v23 = __OFADD__(v49, v20);
        v24 = v49 + v20;
        if (v23)
        {
          goto LABEL_46;
        }

        v46 = v19;
        v47 = v21;
        v25 = v22 + v24;
        if (__OFADD__(v22, v24))
        {
          goto LABEL_47;
        }

        v50 = v15;
        sub_270710EEC();
        sub_2707A8990();
        v26 = sub_2707A89D0();
        result = (*v48)(v13, a4);
        switch(v17 >> 62)
        {
          case 1uLL:
            v44 = v26;
            if (v25 < v18 || v25 >= v18 >> 32)
            {
              goto LABEL_50;
            }

            v32 = v17 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_30;
            }

            if (sub_2707A81F0() && __OFSUB__(v18, sub_2707A8210()))
            {
              goto LABEL_55;
            }

            sub_2707A8220();
            swift_allocObject();
            OUTLINED_FUNCTION_2_33();
            v33 = sub_2707A81D0();

            v32 = v33;
LABEL_30:
            sub_2707A81C0();
            v34 = sub_2707A81F0();
            if (!v34)
            {
LABEL_58:
              *v45 = xmmword_2707A9D20;
              __break(1u);
LABEL_59:
              *v45 = xmmword_2707A9D20;
              __break(1u);
              JUMPOUT(0x27078015CLL);
            }

            v35 = v34;
            result = sub_2707A8210();
            if (__OFSUB__(v25, result))
            {
              goto LABEL_52;
            }

            *(v35 + v25 - result) = v44;
            v17 = v32 | 0x4000000000000000;
            break;
          case 2uLL:
            if (v25 < *(v18 + 16))
            {
              goto LABEL_49;
            }

            if (v25 >= *(v18 + 24))
            {
              goto LABEL_51;
            }

            v28 = v17 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_35;
            }

            v30 = *(v18 + 16);
            v29 = *(v18 + 24);
            if (sub_2707A81F0() && __OFSUB__(v30, sub_2707A8210()))
            {
              goto LABEL_56;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_54;
            }

            sub_2707A8220();
            swift_allocObject();
            OUTLINED_FUNCTION_2_33();
            v36 = sub_2707A81D0();

            v28 = v36;
LABEL_35:
            v37 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = *(v18 + 16);
              v39 = *(v18 + 24);
              sub_2707A82B0();
              v40 = swift_allocObject();
              *(v40 + 16) = v38;
              *(v40 + 24) = v39;

              v18 = v40;
            }

            sub_2707A81C0();
            v41 = sub_2707A81F0();
            if (!v41)
            {
              goto LABEL_59;
            }

            v42 = v41;
            result = sub_2707A8210();
            if (__OFSUB__(v25, result))
            {
              goto LABEL_53;
            }

            *(v42 + v25 - result) = v37;
            v17 = v28 | 0x8000000000000000;
            break;
          case 3uLL:
            *v45 = v18;
            v45[1] = v17;
            __break(1u);
            goto LABEL_58;
          default:
            v50 = v18;
            LOWORD(v51) = v17;
            BYTE2(v51) = BYTE2(v17);
            HIBYTE(v51) = BYTE3(v17);
            LOBYTE(v52) = BYTE4(v17);
            HIBYTE(v52) = BYTE5(v17);
            v53 = BYTE6(v17);
            if (v25 >= BYTE6(v17))
            {
              goto LABEL_48;
            }

            *(&v50 + v25) = v26;
            v18 = v50;
            v17 = v43 & 0xF00000000000000 | v51 | ((v52 | (v53 << 16)) << 32);
            v43 = v17;
            v16 = v47;
            goto LABEL_41;
        }

        v16 = v47;
LABEL_41:
        v19 = v46;
        v15 += 8;
        if (v46 != v16)
        {
          continue;
        }

        *v45 = v18;
        v45[1] = v17;
        return result;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_11();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_30_1();
  v20 = v19 - v18;
  if ((v21 & 1) != 0 || (v17 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v23 = OUTLINED_FUNCTION_2_27();
    sub_270780320(v23, v24, v25, v26);
  }

  else
  {
    __exp10(a5);
    sub_270715DBC();
    sub_2707A8A00();
  }

  HIDReport.storeValue<A>(_:to:at:)(v20, v22, a9, a10);
  return (*(v14 + 8))(v20, a10);
}

uint64_t sub_270780320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v18[1] = a3;
  v6 = *(a1 - 8);
  v7 = (MEMORY[0x28223BE20])(a1, a2);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v18 - v12;
  v19 = v11;
  sub_270715DBC();
  sub_2707A8A00();
  sub_2707A8C30();
  v14 = sub_2707A8560();
  v15 = *(v6 + 8);
  v15(v9, a1);
  v15(v13, a1);
  if (v14)
  {
    return sub_2707A8C30();
  }

  v19 = a4;
  sub_2707A8A00();
  sub_2707A8C20();
  v17 = sub_2707A8570();
  v15(v9, a1);
  v15(v13, a1);
  if (v17)
  {
    return sub_2707A8C20();
  }

  v19 = 0.0;
  v20 = 0xE000000000000000;
  sub_2707A8B00();
  MEMORY[0x2743A7BE0](0xD000000000000031, 0x80000002707B5470);
  sub_2707A8790();
  MEMORY[0x2743A7BE0](45, 0xE100000000000000);
  sub_2707A8790();
  result = sub_2707A8C70();
  __break(1u);
  return result;
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  return OUTLINED_FUNCTION_0_48(a1, a2, a3, a4, a5, a6, a7, -1.0);
}

{
  return OUTLINED_FUNCTION_0_48(a1, a2, a3, a4, a5, a6, a7, 0.0);
}

uint64_t PointerFilter.debugState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 32) = 0x7265746E696F50;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A428);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_2707AFD30;
  *(v1 + 32) = 0x614D6E6F74747542;
  *(v1 + 40) = 0xEA00000000006B73;
  *(v1 + 48) = sub_2707A8950();
  strcpy((v1 + 56), "DeadButtonMask");
  *(v1 + 71) = -18;
  *(v1 + 72) = sub_2707A8950();
  *(v1 + 80) = 0xD000000000000010;
  *(v1 + 88) = 0x80000002707B54B0;
  *(v1 + 96) = sub_2707A8950();
  sub_27073FB54(0, &qword_28082A430);
  v2 = sub_2707A8520();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A438);
  *(inited + 48) = v2;
  return sub_2707A8520();
}

uint64_t PointerFilter.__allocating_init(logger:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PointerFilter.init(logger:service:)(a1, a2, a3);
  return v6;
}

char *PointerFilter.init(logger:service:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask] = 0;
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask] = 0;
  v6 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  v7 = sub_2707A8440();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a1, v7);
  ObjectType = swift_getObjectType();
  v10 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  (*(v8 + 8))(a1, v7);
  *&v3[OBJC_IVAR____TtC12UniversalHID13PointerFilter_serviceID] = v10;
  return v3;
}

BOOL sub_27078093C()
{
  IOHIDEventGetFloatValue();
  if (v1 != 0.0)
  {
    return 1;
  }

  IOHIDEventGetFloatValue();
  if (v2 != 0.0 || IOHIDEventIsAbsolute())
  {
    return 1;
  }

  v4 = *(v0 + 16);
  return (IOHIDEventGetIntegerValue() & ~v4) != 0;
}

uint64_t sub_2707809C0(void *a1)
{
  if (IOHIDEventIsAbsolute())
  {
    if (qword_280829450 == -1)
    {
LABEL_3:
      v45 = qword_280829A78;
      v46 = qword_280829A80;
      sub_270706C38(qword_280829A78, qword_280829A80);
      v2 = HIDReportDescriptor.reportBitCount(for:)(0x13u);
      sub_270708D74(v45, v46);
      v45 = HIDReport.init(bitCount:id:)(v2, 19);
      v46 = v3;
      IOHIDEventGetTimeStamp();
      _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v4);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v5);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v6 = swift_allocObject();
      v7 = v6;
      *(v6 + 16) = xmmword_2707A9CF0;
      v8 = v45;
      v9 = v46;
      goto LABEL_30;
    }

LABEL_32:
    swift_once();
    goto LABEL_3;
  }

  if (qword_2808294F8 != -1)
  {
    OUTLINED_FUNCTION_0_49();
  }

  v45 = qword_28082A808;
  v46 = qword_28082A810;
  sub_270706C38(qword_28082A808, qword_28082A810);
  v10 = HIDReportDescriptor.reportBitCount(for:)(5u);
  sub_270708D74(v45, v46);
  v11 = HIDReport.init(bitCount:id:)(v10, 5);
  v13 = v12;
  v47 = v11;
  v48 = v12;
  IOHIDEventGetTimeStamp();
  switch(v13 >> 62)
  {
    case 1uLL:
      LODWORD(v14) = HIDWORD(v11) - v11;
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        JUMPOUT(0x270780F78);
      }

      v14 = v14;
LABEL_11:
      if ((v14 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= 25)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

LABEL_14:
      IOHIDEventGetFloatValue();
      while (2)
      {
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        IOHIDEventGetFloatValue();
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
        if ((IOHIDEventGetEventFlags() & 0x10000) != 0)
        {
          *(&v43 + 1) = &type metadata for PointerEvent;
          v44 = &protocol witness table for PointerEvent;
          *&v42 = a1;
          v22 = a1;
          goto LABEL_27;
        }

        v18 = [a1 children];
        if (v18)
        {
          v19 = v18;
          sub_27073FB54(0, &qword_28082A300);
          v20 = sub_2707A8710();

          v21 = sub_27070EE70(v20);
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v23 = 0;
        v24 = *(v21 + 16);
        for (i = v21 + 32; ; i += 40)
        {
          if (v24 == v23)
          {

            v42 = 0u;
            v43 = 0u;
            v44 = 0;
            sub_27071445C(&v42);
            goto LABEL_29;
          }

          if (v23 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_27070F5BC(i, v39);
          v26 = v40;
          v27 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          HIDEventProtocol.first(where:)(sub_27075C678, v26, v27, &v36);
          __swift_destroy_boxed_opaque_existential_1(v39);
          if (v37)
          {
            break;
          }

          ++v23;
          sub_27071445C(&v36);
        }

        sub_27070F8A8(&v36, v38);
        sub_27070F8A8(v38, &v42);
LABEL_27:
        sub_27070F8A8(&v42, &v45);
        sub_27070F5BC(&v45, &v42);
        a1 = v44;
        __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        v28 = OUTLINED_FUNCTION_28();
        if (v29(v28) != 17)
        {
LABEL_34:
          __break(1u);
          continue;
        }

        break;
      }

      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v30 = OUTLINED_FUNCTION_28();
      v32 = v31(v30);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v33);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      IOHIDEventGetFloatValue();
      HIDFixed.init(doubleValue:)();
      OUTLINED_FUNCTION_1_23(v34);
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
      _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
      v6 = swift_allocObject();
      v7 = v6;
      *(v6 + 16) = xmmword_2707A9CF0;
      v8 = v47;
      v9 = v48;
LABEL_30:
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      sub_270706C38(v8, v9);
      sub_270708D74(v8, v9);
      return v7;
    case 2uLL:
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (!v17)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    case 3uLL:
      goto LABEL_14;
    default:
      v14 = BYTE6(v13);
      goto LABEL_11;
  }
}

uint64_t sub_270780F88(uint64_t a1, uint64_t a2)
{
  result = IOHIDEventGetIntegerValue();
  if (result && (result & a2) == 0)
  {
    IOHIDEventSetIntegerValue();

    return IOHIDEventSetFloatValue();
  }

  return result;
}

uint64_t sub_270781000(uint64_t a1, unint64_t a2)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & a2) != result)
  {
    if ((result & a2) - 0xFFFFFFFF < 0xFFFFFFFF00000002)
    {
      __break(1u);
    }

    else
    {

      return IOHIDEventSetIntegerValue();
    }
  }

  return result;
}

BOOL PointerFilter.filterEvent(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_27070F5BC(a2, v44);
  v6 = v45;
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  OUTLINED_FUNCTION_2_34();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_27075DFC0(v11, v6);
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v13)
  {
    v14 = *(v3 + 16);
    IntegerValue = IOHIDEventGetIntegerValue();
    if (v14 != IntegerValue)
    {
      *(v3 + 16) = IntegerValue;
    }

    if ((*(v3 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask + 2) & 2) != 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v16 = *(v3 + 24);
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = *(v3 + 16) & v16;
      if (v16 != v17)
      {
        *(v3 + 24) = v17;
      }

      sub_270780F88(v13, ~v16);
      v18 = [v13 children];
      if (v18)
      {
        v19 = v18;
        sub_27073FB54(0, &qword_28082A300);
        v20 = sub_2707A8710();

        v21 = sub_27070EE70(v20);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v23 = *(v21 + 16);
      if (v23)
      {
        v39 = v21;
        v40 = a1;
        v24 = v21 + 32;
        while (1)
        {
          sub_27070F5BC(v24, v44);
          sub_27070F5BC(v44, v41);
          v25 = v42;
          __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
          OUTLINED_FUNCTION_2_34();
          v28 = MEMORY[0x28223BE20](v26, v27);
          v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v31 + 16))(v30, v28);
          v32 = sub_27075DFC0(v30, v25);
          __swift_destroy_boxed_opaque_existential_1(v41);
          if (v32)
          {
            sub_270780F88(v32, ~v16);
          }

          else
          {
            sub_27070F5BC(v44, v41);
            v33 = v42;
            v34 = v43;
            __swift_project_boxed_opaque_existential_1(v41, v42);
            if ((*(v34 + 24))(v33, v34) != 2)
            {
              __swift_destroy_boxed_opaque_existential_1(v44);
              v37 = v41;
              goto LABEL_20;
            }

            v35 = v42;
            v36 = v43;
            __swift_project_boxed_opaque_existential_1(v41, v42);
            v32 = (*(v36 + 352))(v35, v36);
            __swift_destroy_boxed_opaque_existential_1(v41);
            sub_270781000(v32, ~v16);
          }

          v37 = v44;
LABEL_20:
          __swift_destroy_boxed_opaque_existential_1(v37);
          v24 += 40;
          if (!--v23)
          {

            a1 = v40;
            goto LABEL_24;
          }
        }
      }

LABEL_24:
      sub_27070F5BC(a2, a1);
    }

    v22 = sub_27078093C();
    if ((*(v3 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask + 2) & 2) != 0)
    {
      sub_2707809C0(v13);
    }
  }

  else
  {
    sub_27070F5BC(a2, a1);
    return 0;
  }

  return v22;
}

uint64_t PointerFilter.updateCopyMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_copyMask) = a2;
  v4 = MEMORY[0x277D84F90];
  if ((a1 & 0x20000) == 0 && (a2 & 0x20000) != 0 && *(v3 + 16))
  {
    if (qword_2808294F8 != -1)
    {
      OUTLINED_FUNCTION_0_49();
    }

    v12 = qword_28082A808;
    v14 = qword_28082A810;
    sub_270706C38(qword_28082A808, qword_28082A810);
    v5 = HIDReportDescriptor.reportBitCount(for:)(5u);
    sub_270708D74(v12, v14);
    v13 = HIDReport.init(bitCount:id:)(v5, 5);
    v15 = v6;
    _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295D8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707A9CF0;
    *(v4 + 32) = v13;
    *(v4 + 40) = v15;
    v7 = OUTLINED_FUNCTION_28();
    sub_270706C38(v7, v8);
    v9 = OUTLINED_FUNCTION_28();
    sub_270708D74(v9, v10);
  }

  return v4;
}

uint64_t PointerFilter.updateFilterMask(oldValue:newValue:)(int a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID13PointerFilter_filterMask) = a2;
  if ((a1 & 0x20000) == 0)
  {
    if ((a2 & 0x20000) != 0)
    {
      v2[4] = v2[2];
    }

    return MEMORY[0x277D84F90];
  }

  if ((a2 & 0x20000) != 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2[4];
  v4 = v2[2];
  v2[3] = v4 & ~v3;
  v2[4] = 0;
  if ((v3 & ~v4) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  result = mach_absolute_time();
  if (!HIDWORD(v3))
  {
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    ButtonEventWithPressure = IOHIDEventCreateButtonEventWithPressure();
    IOHIDEventAppendEvent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2707B1700;
    *(v8 + 32) = RelativePointerEvent;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t PointerFilter.deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  sub_2707A8440();
  OUTLINED_FUNCTION_6_8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PointerFilter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12UniversalHID13PointerFilter_logger;
  sub_2707A8440();
  OUTLINED_FUNCTION_6_8();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PointerFilter()
{
  result = qword_28082A460;
  if (!qword_28082A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27078187C()
{
  result = sub_2707A8440();
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

uint64_t OUTLINED_FUNCTION_0_49()
{

  return swift_once();
}

uint64_t NavigationSwipeGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t static NavigationSwipeEvent.dispatch(report:platform:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  type metadata accessor for NavigationSwipeGesture();
  *(swift_initStackObject() + 16) = v3;
  return NavigationSwipeGesture.dispatch(report:)();
}

uint64_t NavigationSwipeGesture.dispatch(report:)()
{
  if (*(v0 + 16) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  IOHIDEventSetIntegerValue();
  OUTLINED_FUNCTION_0_0();
  v2 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  if (v2 != 0.0 || (OUTLINED_FUNCTION_0_0(), _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_0_0(), vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL) != 0.0))
  {
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    mach_absolute_time();
    VelocityEvent = IOHIDEventCreateVelocityEvent();
    IOHIDEventAppendEvent();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  v5 = *(v0 + 16);
  v6 = NavigationSwipeEvent;
  mach_absolute_time();
  if (v5 == 1)
  {
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v8 = &protocol witness table for DigitizerEvent;
    v9 = &type metadata for DigitizerEvent;
  }

  else
  {
    DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
    v8 = &protocol witness table for PointerEvent;
    v9 = &type metadata for PointerEvent;
  }

  IOHIDEventAppendEvent();

  *(v4 + 56) = v9;
  *(v4 + 64) = v8;
  *(v4 + 32) = DigitizerEvent;

  return v4;
}

uint64_t sub_270781D94()
{
  OUTLINED_FUNCTION_97();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781DE4()
{
  OUTLINED_FUNCTION_94();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781E20(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_97();
  MEMORY[0x2743A8500](a1);
  return sub_2707A8FC0();
}

uint64_t sub_270781E60()
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_95();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270781E9C()
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_95();
  sub_2707A8F90();
  return sub_2707A8FC0();
}

uint64_t sub_270781ED8()
{
  OUTLINED_FUNCTION_97();
  sub_2707A8620();
  return sub_2707A8FC0();
}

uint64_t sub_270781F20()
{
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_95();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_270782038()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_95();
  sub_2707A8F90();
  return sub_2707A8FC0();
}

uint64_t sub_270782070()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_95();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_2707820A8(uint64_t a1, unsigned __int8 a2)
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](a2);
  return sub_2707A8FC0();
}

uint64_t sub_2707820EC()
{
  sub_2707A8F60();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_270782140()
{
  sub_2707A8F60();
  sub_2707A8620();
  return sub_2707A8FC0();
}

uint64_t sub_270782190()
{
  OUTLINED_FUNCTION_142();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t sub_2707821CC()
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_95();
  sub_2707A8F80();
  return sub_2707A8FC0();
}

uint64_t HIDServiceProperties.primaryUsagePair.getter()
{
  OUTLINED_FUNCTION_1_34();
  v0 = HIDServiceProperties.subscript.getter();
  if ((v1 & 1) == 0)
  {
    v2 = v0;
    v3 = HIDServiceProperties.subscript.getter();
    if ((v4 & 1) == 0)
    {
      return v2 | (v3 << 16);
    }
  }

  result = sub_2707A8C70();
  __break(1u);
  return result;
}

uint64_t HIDServiceProperties.dictionaryRepresentation.getter()
{
  sub_27078282C();
  OUTLINED_FUNCTION_84();
  return sub_270782764(v0, v1, v2, v3);
}

void HIDServiceProperties.init(serviceID:properties:)()
{
  OUTLINED_FUNCTION_99();
  v1 = v0;
  v3 = v2;
  v29[5] = v4;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v31 = v3;
  v5 = 0;
  v8 = *(v3 + 64);
  v7 = v3 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = v5;
LABEL_9:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v31 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_2707374F8(*(v31 + 56) + 32 * v15, v32);
      *&v33 = v17;
      *(&v33 + 1) = v18;
      sub_270724188(v32, &v34);

LABEL_10:
      v36 = v33;
      v37[0] = v34;
      v37[1] = v35;
      v19 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        break;
      }

      v20 = v36;
      sub_270724188(v37, &v33);

      v21 = static HIDServicePropertyKey.allCases.getter();
      *&v32[0] = v20;
      *(&v32[0] + 1) = v19;
      MEMORY[0x28223BE20](v21, v22);
      v29[2] = v32;
      v23 = v1;
      v24 = sub_27074FFF4(sub_270777858, v29, v21);

      if (v24)
      {
        __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
        v25 = sub_2707A8E90();
        *&v32[0] = v20;
        *(&v32[0] + 1) = v19;
        [v30 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v33);
      v1 = v23;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v26 = v30;
    v27 = OUTLINED_FUNCTION_2_27();
    sub_27078D214(v27, v28);

    if (v1)
    {
    }

    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_98();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v11 = 0;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        goto LABEL_10;
      }

      v11 = *(v7 + 8 * v13);
      ++v5;
      if (v11)
      {
        v5 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t HIDServiceProperties.deviceUsagePairs.getter()
{
  v1 = OUTLINED_FUNCTION_1_34();
  if (!HIDServiceProperties.subscript.getter(v1, v2, v3, v4))
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  sub_270782A48(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14 = v13;

  return v14;
}

uint64_t sub_270782764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v5 = OUTLINED_FUNCTION_107(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(v5);
    v6 = sub_2707A8CE0();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v9 = v6;

  a4(v7, 1, &v9);

  return v9;
}

uint64_t sub_27078282C()
{
  v23 = sub_2707A87F0();
  sub_2707A8810();
  sub_27078FC58(&unk_28082A610);
  v0 = MEMORY[0x277D84F90];
  while (1)
  {
    v1 = sub_2707A8940();
    if (!*(&v20 + 1))
    {
      break;
    }

    *v19 = *&v19[9];
    *&v19[2] = v20;
    *&v19[4] = v21;
    *&v19[6] = v22;
    OUTLINED_FUNCTION_137(v1, v2);
    if (swift_dynamicCast())
    {
      v3 = __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v12;
      OUTLINED_FUNCTION_137(v3, v4);
      sub_270724188(v15, &v17);
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
    }

    sub_27078FD04(v19, &unk_28082A618);
    if (*(&v16 + 1))
    {
      v13 = v16;
      v14 = v17;
      v15[0] = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_102();
        sub_270714068();
        v0 = v9;
      }

      v5 = *(v0 + 16);
      if (v5 >= *(v0 + 24) >> 1)
      {
        sub_270714068();
        v0 = v10;
      }

      *(v0 + 16) = v5 + 1;
      v6 = (v0 + 48 * v5);
      v7 = v13;
      v8 = v15[0];
      v6[3] = v14;
      v6[4] = v8;
      v6[2] = v7;
    }

    else
    {
      sub_27078FD04(&v16, &unk_28082A620);
    }
  }

  return v0;
}

void sub_270782A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_99();
  v10 = sub_2707A8250();
  OUTLINED_FUNCTION_0_1();
  v27 = v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8900();
  OUTLINED_FUNCTION_61_0();
  sub_27078FC58(v16);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2707A8940();
    if (!v31)
    {
      break;
    }

    sub_270724188(&v30, v29);
    sub_2707374F8(v29, &v28);
    sub_27073FB54(0, &qword_28082A478);
    if (swift_dynamicCast() && (v18 = sub_27078556C(a10), (v20 & 1) == 0))
    {
      v21 = v18;
      v22 = v19;
      __swift_destroy_boxed_opaque_existential_1(v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_102();
        sub_27071413C();
        v17 = v25;
      }

      v23 = *(v17 + 16);
      if (v23 >= *(v17 + 24) >> 1)
      {
        sub_27071413C();
        v17 = v26;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 4 * v23;
      *(v24 + 32) = v22;
      *(v24 + 34) = v21;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  (*(v27 + 8))(v15, v10);
  OUTLINED_FUNCTION_98();
}

void sub_270782C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSDictionary a10)
{
  OUTLINED_FUNCTION_99();
  v10 = sub_2707A8250();
  OUTLINED_FUNCTION_0_1();
  v22 = v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2707A8900();
  OUTLINED_FUNCTION_61_0();
  sub_27078FC58(v16);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2707A8940();
    if (!v28)
    {
      break;
    }

    sub_270724188(&v27, v26);
    sub_2707374F8(v26, &v25);
    sub_27073FB54(0, &qword_28082A478);
    if (swift_dynamicCast())
    {
      HIDServiceProperties.HIDAccelCurve.init(dictionaryRepresentation:)(&v29, a10);
      memcpy(v24, &v29, sizeof(v24));
      __swift_destroy_boxed_opaque_existential_1(v26);
      memcpy(v30, &v29, 0x8AuLL);
      if (sub_27078FC3C(v30) != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_102();
          sub_270714200();
          v17 = v19;
        }

        v18 = *(v17 + 16);
        if (v18 >= *(v17 + 24) >> 1)
        {
          sub_270714200();
          v17 = v20;
        }

        memcpy(v23, v24, sizeof(v23));
        *(v17 + 16) = v18 + 1;
        memcpy((v17 + 144 * v18 + 32), v23, 0x89uLL);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  (*(v22 + 8))(v15, v10);
  OUTLINED_FUNCTION_98();
}

double HIDServiceProperties.property(forKey:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, unsigned __int128 *a4@<X8>)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  *&v9 = HIDServicePropertyKey.init(stringValue:)(v8);
  if (v10)
  {
    v13 = __PAIR128__(v10, v9);
    v11 = [a3 __swift_objectForKeyedSubscript_];
    OUTLINED_FUNCTION_93();
    swift_unknownObjectRelease();
    if (a3)
    {
      sub_2707A8A20();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    result = *&v13;
    *a4 = v13;
    a4[1] = v14;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t HIDServiceProperties.subscript.getter()
{
  OUTLINED_FUNCTION_77();
  sub_2707A8EC0();
  v1 = OUTLINED_FUNCTION_65_0();
  v3 = [v1 v2];
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    OUTLINED_FUNCTION_122();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v17, v18, v19);
  if (v12)
  {
    if (OUTLINED_FUNCTION_72())
    {
      return v16;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_27078FD04(v20, &unk_280829D68);
    return 2;
  }
}

{
  OUTLINED_FUNCTION_77();
  sub_2707A8EC0();
  v1 = OUTLINED_FUNCTION_65_0();
  v3 = [v1 v2];
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    OUTLINED_FUNCTION_122();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v15, v17, v18, v19, v20);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_72();
    return OUTLINED_FUNCTION_135(v13, v16);
  }

  else
  {
    sub_27078FD04(v21, &qword_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77();
  sub_2707A8EC0();
  v1 = OUTLINED_FUNCTION_65_0();
  v3 = [v1 v2];
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    OUTLINED_FUNCTION_122();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v17, v18, v19);
  if (v12)
  {
    if (OUTLINED_FUNCTION_72())
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_27078FD04(v20, &unk_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77();
  sub_2707A8EC0();
  v1 = OUTLINED_FUNCTION_65_0();
  v3 = [v1 v2];
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    OUTLINED_FUNCTION_122();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v15, v17, v18, v19, v20);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_72();
    return OUTLINED_FUNCTION_135(v13, v16);
  }

  else
  {
    sub_27078FD04(v21, &unk_280829D68);
    return 0;
  }
}

{
  OUTLINED_FUNCTION_77();
  sub_2707A8EC0();
  v1 = OUTLINED_FUNCTION_65_0();
  v3 = [v1 v2];
  OUTLINED_FUNCTION_121();
  if (v0)
  {
    OUTLINED_FUNCTION_122();
    v4 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v18, v19, v20);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480);
    v13 = OUTLINED_FUNCTION_72();
    return OUTLINED_FUNCTION_135(v13, v17);
  }

  else
  {
    sub_27078FD04(v21, &qword_280829D68);
    return 0;
  }
}

uint64_t sub_2707831E4@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270783214(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return HIDServiceProperties.subscript.setter(v5, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2707A8760();
  }

  sub_2707A8EC0();
  v6 = OUTLINED_FUNCTION_65_0();
  [v6 v7];

  return swift_unknownObjectRelease();
}

uint64_t (*HIDServiceProperties.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  OUTLINED_FUNCTION_107(a1, a2);
  *(a1 + 24) = HIDServiceProperties.subscript.getter();
  return sub_270783340;
}

uint64_t sub_270783340(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);

  return HIDServiceProperties.subscript.setter(v3, v2, v1);
}

uint64_t sub_27078344C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  sub_270762A5C(v5, v6);
  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2707A8310();
  }

  sub_2707A8EC0();
  OUTLINED_FUNCTION_78();
  [v9 v10];
  sub_2707629B4(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.subscript.modify()
{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter();
  v0[1] = v2;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter();
  *(v0 + 8) = v2 & 1;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_34_2(v1);
  *v0 = HIDServiceProperties.subscript.getter();
  v0[1] = v2;
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  v2 = OUTLINED_FUNCTION_79(v1);
  *(v0 + 16) = HIDServiceProperties.subscript.getter(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_21_4();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  v2 = OUTLINED_FUNCTION_79(v1);
  *(v0 + 16) = HIDServiceProperties.subscript.getter(v2, v3, v4, v5);
  return OUTLINED_FUNCTION_105();
}

void sub_2707835C4(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  if (a2)
  {
    sub_270762A5C(v4, v5);
    v6 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v6, v7, v8, v9);
    sub_2707629B4(*v3, v3[1]);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v10, v11, v12, v13);
  }

  free(v3);
}

uint64_t sub_270783720@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.subscript.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_270783758(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);

  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2707A87C0();
  }

  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void sub_27078389C(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[2];
  v4 = **a1;
  v5 = *(*a1 + 8);

  HIDServiceProperties.subscript.setter(v4, v5, v3, v2);

  free(v1);
}

uint64_t sub_2707839CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, uint64_t, void)@<X3>, uint64_t *a5@<X8>)
{
  result = a4(*a2, a2[1], a3, *(a1 + 8));
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_270783A04(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];

  return HIDServiceProperties.subscript.setter(v5, v6, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_2707A85C0();
  }

  else
  {
    v6 = 0;
  }

  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void sub_270783B58(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v3, v4, v5, v6);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_48_1();
    HIDServiceProperties.subscript.setter(v7, v8, v9, v10);
  }

  free(v2);
}

uint64_t HIDServiceProperties.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return sub_270783C98(a1, a2, a3, a4, &qword_28082A470);
}

{
  return sub_270783C98(a1, a2, a3, a4, &qword_28082A478);
}

uint64_t sub_270783BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1], a3, *(a1 + 8));
  *a4 = result;
  return result;
}

uint64_t sub_270783C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v25[0] = a1;
  v25[1] = a2;

  v7 = [a4 __swift_objectForKeyedSubscript_];
  OUTLINED_FUNCTION_96();
  if (a4)
  {
    sub_2707A8A20();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v22, v23, v24);
  if (v16)
  {
    sub_27073FB54(0, a5);
    v17 = OUTLINED_FUNCTION_72();
    return OUTLINED_FUNCTION_135(v17, v21);
  }

  else
  {
    sub_27078FD04(v25, &unk_280829D68);
    return 0;
  }
}

uint64_t sub_270783D84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = HIDServiceProperties.subscript.getter(*a2, a2[1], a3, *(a1 + 8));
  *a4 = result;
  return result;
}

uint64_t sub_270783DB4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;

  v7 = OUTLINED_FUNCTION_101();
  return a5(v7);
}

uint64_t sub_270783E0C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v4 v5];

  return swift_unknownObjectRelease();
}

void sub_270783EDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  *v2 = *(*a1 + 24);
  v2[1] = v5;
  if (a2)
  {
    v6 = v3;

    [v4 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();

    v3 = v2[2];
  }

  else
  {

    [v4 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_270784088@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2707840B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return HIDServiceProperties.subscript.setter(v5, v3, v4);
}

uint64_t HIDServiceProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_2707A84F0();
  }

  sub_2707A8EC0();
  v5 = OUTLINED_FUNCTION_125();
  [v5 v6];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  OUTLINED_FUNCTION_107(a1, a2);
  *a1 = HIDServiceProperties.subscript.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27078420C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    v3 = OUTLINED_FUNCTION_2_27();
    HIDServiceProperties.subscript.setter(v3, v4, v2);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_2_27();
    return HIDServiceProperties.subscript.setter(v6, v7, v2);
  }
}

uint64_t HIDServiceProperties.accelParametricCurves.getter(uint64_t a1, void *a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_80(a1, a2, a3, a2))
  {
    return 0;
  }

  OUTLINED_FUNCTION_133();
  sub_270782C64(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  v13 = v12;

  return v13;
}

uint64_t sub_2707842E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = HIDServiceProperties.accelParametricCurves.getter(a1, *(a1 + 8), a2);
  *a3 = result;
  return result;
}

uint64_t HIDServiceProperties.accelParametricCurves.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v10[0] = MEMORY[0x277D84F90];
      sub_2707A8B80();
      v4 = 32;
      do
      {
        memcpy(__dst, (a1 + v4), sizeof(__dst));
        HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter();
        sub_2707A8B50();
        OUTLINED_FUNCTION_128();
        sub_2707A8B90();
        OUTLINED_FUNCTION_128();
        sub_2707A8BA0();
        v1 = v10;
        sub_2707A8B60();
        v4 += 144;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    sub_27073FB54(0, &qword_28082A478);
    sub_2707A8700();
    OUTLINED_FUNCTION_93();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_123();
  v10[0] = v5;
  v10[1] = v6;
  sub_2707A8EC0();
  v7 = OUTLINED_FUNCTION_65_0();
  [v7 v8];

  return swift_unknownObjectRelease();
}

void __swiftcall HIDServiceProperties.HIDAccelCurve.init(dictionaryRepresentation:)(UniversalHID::HIDServiceProperties::HIDAccelCurve_optional *__return_ptr retstr, NSDictionary dictionaryRepresentation)
{
  OUTLINED_FUNCTION_7_18();
  *&__src[0] = 0xD000000000000011;
  *(&__src[0] + 1) = v4;
  v5 = [(objc_class *)dictionaryRepresentation.super.isa __swift_objectForKeyedSubscript:sub_2707A8EC0()];
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v6)
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_44_1();
    v70 = v7;
    v9 = v8 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v70 = 0;
    v9 = 1;
  }

  v82 = v9;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000012;
  *(&__src[0] + 1) = v10;
  v11 = sub_2707A8EC0();
  v12 = OUTLINED_FUNCTION_35_2(v11);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v13)
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_44_1();
    v69 = v14;
    v16 = v15 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v69 = 0;
    v16 = 1;
  }

  v81 = v16;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000015;
  *(&__src[0] + 1) = v17;
  v18 = sub_2707A8EC0();
  v19 = OUTLINED_FUNCTION_35_2(v18);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v20)
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_44_1();
    v68 = v21;
    v23 = v22 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v68 = 0;
    v23 = 1;
  }

  v80 = v23;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000013;
  *(&__src[0] + 1) = v24;
  v25 = sub_2707A8EC0();
  v26 = OUTLINED_FUNCTION_35_2(v25);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v27)
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_44_1();
    v67 = v28;
    v30 = v29 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v67 = 0;
    v30 = 1;
  }

  v79 = v30;
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_71();
  *&__src[0] = v31;
  *(&__src[0] + 1) = v32;
  v33 = sub_2707A8EC0();
  v34 = OUTLINED_FUNCTION_35_2(v33);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v35)
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_44_1();
    v66 = v36;
    v38 = v37 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v66 = 0;
    v38 = 1;
  }

  v78 = v38;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001DLL;
  *(&__src[0] + 1) = v39;
  v40 = sub_2707A8EC0();
  v41 = OUTLINED_FUNCTION_35_2(v40);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_40_1();
    if (v43)
    {
      v44 = v72;
    }

    else
    {
      v44 = 0;
    }

    v45 = v43 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v44 = 0;
    v45 = 1;
  }

  v77 = v45;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001ALL;
  *(&__src[0] + 1) = v46;
  v47 = sub_2707A8EC0();
  v48 = OUTLINED_FUNCTION_35_2(v47);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v49)
  {
    v50 = OUTLINED_FUNCTION_40_1();
    if (v50)
    {
      v51 = v72;
    }

    else
    {
      v51 = 0;
    }

    v52 = v50 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v51 = 0;
    v52 = 1;
  }

  v76 = v52;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD000000000000021;
  *(&__src[0] + 1) = v53;
  v54 = sub_2707A8EC0();
  v55 = OUTLINED_FUNCTION_35_2(v54);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    OUTLINED_FUNCTION_103();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_74();
  }

  OUTLINED_FUNCTION_30_3();
  if (v56)
  {
    v57 = swift_dynamicCast();
    if (v57)
    {
      v58 = v72;
    }

    else
    {
      v58 = 0;
    }

    v59 = v57 ^ 1;
  }

  else
  {
    sub_27078FD04(__src, &qword_280829D68);
    v58 = 0;
    v59 = 1;
  }

  v75 = v59;
  OUTLINED_FUNCTION_56_0();
  *&__src[0] = 0xD00000000000001FLL;
  *(&__src[0] + 1) = v60;
  v61 = sub_2707A8EC0();
  v62 = OUTLINED_FUNCTION_35_2(v61);
  OUTLINED_FUNCTION_96();
  if (v2)
  {
    sub_2707A8A20();

    swift_unknownObjectRelease();
  }

  else
  {

    memset(__src, 0, 32);
  }

  v74[0] = __src[0];
  v74[1] = __src[1];
  if (*(&__src[1] + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_44_1();
    v65 = v64 ^ 1;
  }

  else
  {
    sub_27078FD04(v74, &qword_280829D68);
    v63 = 0;
    v65 = 1;
  }

  *&__src[0] = v70;
  BYTE8(__src[0]) = v82;
  *&__src[1] = v69;
  BYTE8(__src[1]) = v81;
  *&__src[2] = v68;
  BYTE8(__src[2]) = v80;
  *&__src[3] = v67;
  BYTE8(__src[3]) = v79;
  *&__src[4] = v66;
  BYTE8(__src[4]) = v78;
  *&__src[5] = v44;
  BYTE8(__src[5]) = v77;
  *&__src[6] = v51;
  BYTE8(__src[6]) = v76;
  *&__src[7] = v58;
  BYTE8(__src[7]) = v75;
  *&__src[8] = v63;
  BYTE8(__src[8]) = v65;
  sub_27078EB40(__src);
  memcpy(retstr, __src, 0x8AuLL);
}

uint64_t HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AEF70;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000002707B3F80;
  *(inited + 48) = *v0;
  *(inited + 56) = *(v0 + 8);
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000002707B3FA0;
  *(inited + 80) = *(v0 + 16);
  *(inited + 88) = *(v0 + 24);
  OUTLINED_FUNCTION_11_13();
  *(v3 + 96) = v2 | 4;
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v0 + 32);
  *(v3 + 120) = *(v0 + 40);
  OUTLINED_FUNCTION_11_13();
  *(v6 + 128) = v5 | 2;
  *(v6 + 136) = v7;
  *(v6 + 152) = *(v0 + 56);
  *(v6 + 144) = *(v0 + 48);
  strcpy((v6 + 160), "HIDAccelIndex");
  *(v6 + 174) = -4864;
  *(v6 + 184) = *(v0 + 72);
  *(v6 + 176) = *(v0 + 64);
  OUTLINED_FUNCTION_11_13();
  *(v9 + 192) = v8 | 0xC;
  *(v9 + 200) = v10;
  *(v9 + 216) = *(v0 + 88);
  *(v9 + 208) = *(v0 + 80);
  OUTLINED_FUNCTION_11_13();
  *(v12 + 224) = v11 + 9;
  *(v12 + 232) = v13;
  v14 = *(v0 + 96);
  *(v12 + 248) = *(v0 + 104);
  *(v12 + 240) = v14;
  OUTLINED_FUNCTION_11_13();
  *(v16 + 256) = v15 + 16;
  *(v16 + 264) = v17;
  v18 = *(v0 + 112);
  *(v16 + 280) = *(v0 + 120);
  *(v16 + 272) = v18;
  OUTLINED_FUNCTION_11_13();
  *(v20 + 288) = v19 | 0xE;
  *(v20 + 296) = v21;
  v22 = *(v0 + 128);
  *(v20 + 312) = *(v0 + 136);
  *(v20 + 304) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A490);
  sub_2707A8520();
  OUTLINED_FUNCTION_133();
  sub_270789138(v23);

  v24 = sub_2707A84F0();

  return v24;
}

uint64_t HIDServiceProperties.accelParametricCurves.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_134(a1);
  v6 = OUTLINED_FUNCTION_80(v3, v4, v5, *(v2 + 8));
  if (v6)
  {
    v14 = v6;
    sub_270782C64(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *v1 = v16;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270784DE8@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.appleVendorSupported.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.appleVendorSupported.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270784E78;
}

uint64_t sub_270784ECC@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.authenticatedDevice.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.authenticatedDevice.modify(void *a1))()
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_111();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270784F54;
}

uint64_t sub_270784F9C@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.builtIn.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.builtIn.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_85();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270785024;
}

uint64_t sub_270785080@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.capsLockDelay.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.capsLockDelay.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27078513C()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_115();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270785184@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.capsLockLanguageSwitch.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.capsLockLanguageSwitch.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270785220;
}

uint64_t sub_270785258@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.deviceTypeHint.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.deviceTypeHint.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_112();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707852FC@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.deviceUsagePairs.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.deviceUsagePairs.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2707A8B80();
    sub_27073FB54(0, &qword_28082A478);
    v3 = (a1 + 34);
    v4 = MEMORY[0x277D837D0];
    v5 = MEMORY[0x277D83B88];
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A498);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2707ADD30;
      *(v8 + 32) = 0x7355656369766544;
      *(v8 + 40) = 0xEB00000000656761;
      *(v8 + 56) = v4;
      *(v8 + 64) = v7;
      *(v8 + 88) = v5;
      *(v8 + 96) = 0x7355656369766544;
      *(v8 + 104) = 0xEF65676150656761;
      *(v8 + 152) = v5;
      *(v8 + 120) = v4;
      *(v8 + 128) = v6;
      sub_2707A8800();
      sub_2707A8B50();
      sub_2707A8B90();
      sub_2707A8BA0();
      sub_2707A8B60();
      --v2;
    }

    while (v2);
  }

  sub_27073FB54(0, &qword_28082A478);
  v9 = sub_2707A8700();

  sub_2707A8EC0();
  v10 = OUTLINED_FUNCTION_125();
  [v10 v11];

  return swift_unknownObjectRelease();
}

uint64_t sub_27078556C(void *a1)
{
  *&v7 = 0x7355656369766544;
  *(&v7 + 1) = 0xEB00000000656761;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v9 = 0u;
  }

  v10 = v7;
  v11 = v9;
  if (!*(&v9 + 1))
  {

LABEL_14:
    sub_27078FD04(&v10, &unk_280829D68);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v6;
    *&v8 = 0x7355656369766544;
    *(&v8 + 1) = 0xEF65676150656761;
    v4 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_2707A8A20();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v3;
      }

      return 0;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t HIDServiceProperties.deviceUsagePairs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_134(a1);
  *v1 = HIDServiceProperties.deviceUsagePairs.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785790(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return HIDServiceProperties.deviceUsagePairs.setter(*a1);
  }

  HIDServiceProperties.deviceUsagePairs.setter(v2);
}

uint64_t sub_270785804@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.disableAccessibilityEventTranslation.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.disableAccessibilityEventTranslation.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_2707858A0;
}

uint64_t sub_2707858D8@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.dispatchScrollEvents.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.dispatchScrollEvents.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_27078596C;
}

uint64_t sub_2707859C0@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.displayIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.displayIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_120();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785A8C@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.displayIntegrated.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.displayIntegrated.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_52_1();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270785B1C;
}

uint64_t sub_270785B78@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.eventServiceProperties.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.eventServiceProperties.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_134(a1);
  OUTLINED_FUNCTION_114();
  *v1 = HIDServiceProperties.subscript.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785C20(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return HIDServiceProperties.subscript.setter(*a1, 0xD000000000000019, 0x80000002707B4DB0);
  }

  HIDServiceProperties.subscript.setter(v2, 0xD000000000000019, 0x80000002707B4DB0);
}

uint64_t sub_270785CC4@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.exclusivityIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.exclusivityIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_62_0();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785D54()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000015, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_4();
    return HIDServiceProperties.subscript.setter(v5, v6, 0xD000000000000015, v7);
  }
}

uint64_t sub_270785E04@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.faceTimeRemoteControlSessionID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.faceTimeRemoteControlSessionID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_2_29();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785F24@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.fnKeyboardUsageMap.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.fnKeyboardUsageMap.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270785FA8()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000012, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_4();
    return HIDServiceProperties.subscript.setter(v5, v6, 0xD000000000000012, v7);
  }
}

uint64_t sub_270786048@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.ignoresNaturalScrollingPreference.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.ignoresNaturalScrollingPreference.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_2707860E4;
}

uint64_t sub_27078613C@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.keyboardCountryCode.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.keyboardCountryCode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707861F8()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_119();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270786240@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.keyboardLanguage.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.keyboardLanguage.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_1_34();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707862D0()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000010, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_4();
    return HIDServiceProperties.subscript.setter(v5, v6, 0xD000000000000010, v7);
  }
}

uint64_t sub_270786374@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.keyboardStandardType.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.keyboardStandardType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786430()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_118();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_270786478@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.manufacturer.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.manufacturer.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_57_0();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.mouseAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.mouseScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_60_0();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707866DC@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.platformInputModeConfiguration.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270786708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.platformInputModeConfiguration.setter(v1, v2);
}

uint64_t HIDServiceProperties.platformInputModeConfiguration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_2_29();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707867B0()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001ELL, v5);
    v6 = OUTLINED_FUNCTION_28();

    return sub_2707629B4(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_4();
    return HIDServiceProperties.subscript.setter(v9, v10, 0xD00000000000001ELL, v11);
  }
}

uint64_t sub_27078685C@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationMultiplier.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerAccelerationMultiplier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786978@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationTable.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2707869A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.pointerAccelerationTable.setter(v1, v2);
}

uint64_t HIDServiceProperties.pointerAccelerationTable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786A58()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001BLL, v5);
    v6 = OUTLINED_FUNCTION_28();

    return sub_2707629B4(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_4();
    return HIDServiceProperties.subscript.setter(v9, v10, 0xD00000000000001BLL, v11);
  }
}

uint64_t sub_270786AF8@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.pointerAccelerationType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_60_0();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786B88()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD00000000000001ALL, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_4();
    return HIDServiceProperties.subscript.setter(v5, v6, 0xD00000000000001ALL, v7);
  }
}

uint64_t sub_270786C38@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerButtonCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerButtonCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_62_0();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.pointerButtonMode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786E30@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerResolution.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerResolution.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270786F58@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.pointerReportRate.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.pointerReportRate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_0_42();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787054@<X0>(_DWORD *a1@<X8>)
{
  result = HIDServiceProperties.primaryUsagePair.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.primaryUsagePair.setter()
{
  v1 = *(v0 + 8);
  v2 = sub_2707A87C0();
  [v1 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v3 = sub_2707A87C0();
  OUTLINED_FUNCTION_126();
  v8 = v4;
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v5 v6];

  return swift_unknownObjectRelease();
}

uint64_t (*HIDServiceProperties.primaryUsagePair.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = HIDServiceProperties.primaryUsagePair.getter();
  return sub_2707871BC;
}

uint64_t sub_2707871E4@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.product.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.product.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_86();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707872A8@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.productID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.productID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_86();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707873D8@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.reportDescriptor.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270787404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.reportDescriptor.setter(v1, v2);
}

uint64_t HIDServiceProperties.reportDescriptor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_1_34();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707874AC()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD000000000000010, v5);
    v6 = OUTLINED_FUNCTION_28();

    return sub_2707629B4(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_4();
    return HIDServiceProperties.subscript.setter(v9, v10, 0xD000000000000010, v11);
  }
}

uint64_t sub_27078754C@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationTable.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270787578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_270762A5C(*a1, v2);
  return HIDServiceProperties.scrollAccelerationTable.setter(v1, v2);
}

uint64_t HIDServiceProperties.scrollAccelerationTable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_60_0();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787620()
{
  OUTLINED_FUNCTION_127();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_28();
    sub_270762A5C(v1, v2);
    v3 = OUTLINED_FUNCTION_27_4();
    HIDServiceProperties.subscript.setter(v3, v4, 0xD00000000000001ALL, v5);
    v6 = OUTLINED_FUNCTION_28();

    return sub_2707629B4(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_4();
    return HIDServiceProperties.subscript.setter(v9, v10, 0xD00000000000001ALL, v11);
  }
}

uint64_t sub_2707876C0@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HIDServiceProperties.scrollAccelerationType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_114();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787750()
{
  OUTLINED_FUNCTION_106();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_4();
    HIDServiceProperties.subscript.setter(v1, v2, 0xD000000000000019, v3);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_22_4();
    return HIDServiceProperties.subscript.setter(v5, v6, 0xD000000000000019, v7);
  }
}

uint64_t HIDServiceProperties.scrollAccelParametricCurves.getter()
{
  v1 = OUTLINED_FUNCTION_0_42();
  if (!HIDServiceProperties.subscript.getter(v1, v2, v3, v4))
  {
    return 0;
  }

  OUTLINED_FUNCTION_133();
  sub_270782C64(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  v14 = v13;

  return v14;
}

uint64_t sub_270787834@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.scrollAccelParametricCurves.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.scrollAccelParametricCurves.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v9[0] = MEMORY[0x277D84F90];
      sub_2707A8B80();
      v4 = 32;
      do
      {
        memcpy(__dst, (a1 + v4), sizeof(__dst));
        HIDServiceProperties.HIDAccelCurve.dictionaryRepresentation.getter();
        sub_2707A8B50();
        OUTLINED_FUNCTION_128();
        sub_2707A8B90();
        OUTLINED_FUNCTION_128();
        sub_2707A8BA0();
        v1 = v9;
        sub_2707A8B60();
        v4 += 144;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    sub_27073FB54(0, &qword_28082A478);
    sub_2707A8700();
    OUTLINED_FUNCTION_93();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_7_18();
  v9[0] = 0xD000000000000014;
  v9[1] = v5;
  sub_2707A8EC0();
  v6 = OUTLINED_FUNCTION_65_0();
  [v6 v7];

  return swift_unknownObjectRelease();
}

uint64_t HIDServiceProperties.scrollAccelParametricCurves.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_134(a1);
  *v1 = HIDServiceProperties.scrollAccelParametricCurves.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787A4C(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_270787AE4@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.scrollReportRate.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.scrollReportRate.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787C0C@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.scrollResolution.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.scrollResolution.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787D28@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.supportsGestureScrolling.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.supportsGestureScrolling.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270787DC4;
}

uint64_t HIDServiceProperties.trackpadAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_76();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.trackpadScrollAcceleration.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_75();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270787FEC@<X0>(uint64_t *a1@<X8>)
{
  result = HIDServiceProperties.transport.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270788018(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t HIDServiceProperties.transport.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_143();
  *v1 = HIDServiceProperties.subscript.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707880DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v5 = OUTLINED_FUNCTION_101();
    HIDServiceProperties.subscript.setter(v5, v6, v7, a4);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_101();
    return HIDServiceProperties.subscript.setter(v9, v10, v11, a4);
  }
}

uint64_t sub_270788180@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.universalControlBuiltIn.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.universalControlBuiltIn.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_76();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270788210;
}

uint64_t sub_270788264@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.universalControlVirtualService.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.universalControlVirtualService.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_2_29();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_2707882DC;
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.getter()
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  return HIDServiceProperties.subscript.getter();
}

uint64_t sub_270788374@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.userDeviceCreateInactive.getter();
  *a1 = result;
  return result;
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.setter(char a1)
{
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  v2 = qword_28082A058;
  v3 = unk_28082A060;

  return HIDServiceProperties.subscript.setter(a1, v2, v3);
}

uint64_t HIDServiceProperties.userDeviceCreateInactive.modify(uint64_t a1)
{
  *a1 = v1;
  if (qword_2808294C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  v3 = unk_28082A060;
  *(a1 + 8) = qword_28082A058;
  *(a1 + 16) = v3;
  *(a1 + 24) = HIDServiceProperties.subscript.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707884A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);

  return HIDServiceProperties.subscript.setter(v3, v2, v1);
}

uint64_t sub_2707884E8@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.useRemoteAcceleration.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.useRemoteAcceleration.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_62_0();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270788564;
}

uint64_t sub_2707885BC@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.vendorID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.vendorID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2707886D8@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.reportInterval.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.reportInterval.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  v1 = OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270788794()
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_113();
  return HIDServiceProperties.subscript.setter(v3, v0, v1, v2);
}

uint64_t sub_2707887EC@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.subinterfaceID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t HIDServiceProperties.subinterfaceID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_9_17(a1);
  OUTLINED_FUNCTION_52_1();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_11_16(v1, v2);
  return OUTLINED_FUNCTION_20();
}

uint64_t HIDServiceProperties.surfaceDimensions.getter()
{
  v0 = OUTLINED_FUNCTION_52_1();
  result = HIDServiceProperties.subscript.getter(v0, v1, v2, v3);
  if (result)
  {
    *(&result - 2) = HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(result);
  }

  return result;
}

uint64_t sub_270788930@<X0>(uint64_t a1@<X8>)
{
  result = HIDServiceProperties.surfaceDimensions.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t HIDServiceProperties.surfaceDimensions.setter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter();
  }

  OUTLINED_FUNCTION_7_18();
  v8 = v4;
  sub_2707A8EC0();
  OUTLINED_FUNCTION_109();
  [v5 v6];

  return swift_unknownObjectRelease();
}

UniversalHID::HIDServiceProperties::HIDSurfaceDimensions_optional __swiftcall HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(NSDictionary dictionaryRepresentation)
{
  OUTLINED_FUNCTION_70();
  v39 = v3;
  v41 = v4;
  sub_2707A8EC0();
  v5 = OUTLINED_FUNCTION_125();
  v7 = [v5 v6];
  OUTLINED_FUNCTION_93();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_2707A8A20();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v8, v9, v10, v11, v12, v13, v14, v15, v34, v36, v39, v41, v42);
  if (!v16)
  {

    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_136() & 1) == 0)
  {

LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  v17 = HIDWORD(v37);
  OUTLINED_FUNCTION_69();
  v40 = v18;
  sub_2707A8EC0();
  v19 = OUTLINED_FUNCTION_125();
  v21 = [v19 v20];
  OUTLINED_FUNCTION_93();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {

    OUTLINED_FUNCTION_73();
  }

  OUTLINED_FUNCTION_31_3(v22, v23, v24, v25, v26, v27, v28, v29, v35, v37, v40, 0xE500000000000000, v43);
  if (!v32)
  {
LABEL_14:
    sub_27078FD04(v44, &qword_280829D68);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_136() & 1) == 0)
  {
    goto LABEL_15;
  }

  v30 = vcvtd_n_f64_s32(v17, 0x10uLL);
  v31 = vcvtd_n_f64_s32(v38, 0x10uLL);
  v33 = LOBYTE(v31);
LABEL_16:
  result.value.height = v31;
  result.value.width = v30;
  result.is_nil = v33;
  return result;
}

id HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter()
{
  HIDFixed.init(doubleValue:)();
  if ((v0 & 0x100000000) != 0 || (v1 = v0, HIDFixed.init(doubleValue:)(), (v2 & 0x100000000) != 0))
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBEAC0]);

    return [v10 init];
  }

  else
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A498);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2707ADD30;
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 32) = 0x746867696548;
    *(v4 + 40) = 0xE600000000000000;
    *(v4 + 64) = v1;
    *(v4 + 120) = v5;
    OUTLINED_FUNCTION_69();
    *(v6 + 88) = v8;
    *(v6 + 96) = v7;
    *(v6 + 104) = 0xE500000000000000;
    *(v6 + 152) = v8;
    *(v6 + 128) = v3;
    sub_27073FB54(0, &qword_28082A478);
    OUTLINED_FUNCTION_93();
    return sub_2707A8800();
  }
}

uint64_t HIDServiceProperties.surfaceDimensions.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = HIDServiceProperties.surfaceDimensions.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_270788D6C@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.scrollAccelerationSupport.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.scrollAccelerationSupport.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_75();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270788DE4;
}

uint64_t sub_270788E38@<X0>(_BYTE *a1@<X8>)
{
  result = HIDServiceProperties.pointerAccelerationSupport.getter();
  *a1 = result;
  return result;
}

uint64_t (*HIDServiceProperties.pointerAccelerationSupport.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_15_11(a1);
  OUTLINED_FUNCTION_2_29();
  v1 = HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_18_5(v1);
  return sub_270788EB0;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainCubic.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainLinear.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainParabolic.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.gainQuartic.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.index.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedCubicRoot.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedLinear.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedParabolicRoot.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t HIDServiceProperties.HIDAccelCurve.tangentSpeedQuarticRoot.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t sub_270789138(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(a1 + 56) + 16 * v12;
    if ((*(v13 + 8) & 1) == 0)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v28 = v14[1];
      v29 = *v14;
      v27 = *v13;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_27078E148(v15 + 1, 1);
        v2 = v30;
      }

      else
      {
      }

      sub_2707A8F60();
      sub_2707A8620();
      result = sub_2707A8FC0();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v17) >> 6;
        v21 = v28;
        while (++v19 != v23 || (v22 & 1) == 0)
        {
          v24 = v19 == v23;
          if (v19 == v23)
          {
            v19 = 0;
          }

          v22 |= v24;
          v25 = *(v16 + 8 * v19);
          if (v25 != -1)
          {
            v20 = __clz(__rbit64(~v25)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v28;
LABEL_23:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (*(v2 + 48) + 16 * v20);
      *v26 = v29;
      v26[1] = v21;
      *(*(v2 + 56) + 8 * v20) = v27;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_270789374(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v5[0] = a1;
  v5[1] = a2;
  v4[2] = v5;
  if (!sub_27074FFF4(sub_27078FBC8, v4, &unk_288076A50))
  {

    return 0;
  }

  return v2;
}

void *sub_270789428@<X0>(void *a1@<X8>)
{
  result = sub_2707893F8();
  *a1 = result;
  return result;
}

uint64_t sub_270789458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_270789374(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2707894A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270789404();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270789500(uint64_t a1)
{
  v2 = sub_27078EB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078953C(uint64_t a1)
{
  v2 = sub_27078EB48();

  return MEMORY[0x2821FE720](a1, v2);
}

void HIDServiceProperties.HIDAccelCurve.init(from:)()
{
  OUTLINED_FUNCTION_99();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4A0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_27078EB48();
  sub_2707A8FD0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_7_18();
    v7 = OUTLINED_FUNCTION_32_3();
    v42 = v8 & 1;
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_26_3(v9);
    v41 = v10 & 1;
    OUTLINED_FUNCTION_56_0();
    v34 = v11;
    v33 = OUTLINED_FUNCTION_32_3();
    v40 = v12 & 1;
    OUTLINED_FUNCTION_56_0();
    v32 = OUTLINED_FUNCTION_26_3(v13);
    v39 = v14 & 1;
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_71();
    v31 = OUTLINED_FUNCTION_32_3();
    v38 = v15 & 1;
    OUTLINED_FUNCTION_56_0();
    v30 = OUTLINED_FUNCTION_26_3(v16);
    v37 = v17 & 1;
    OUTLINED_FUNCTION_56_0();
    v29 = OUTLINED_FUNCTION_26_3(v18);
    v36 = v19 & 1;
    OUTLINED_FUNCTION_56_0();
    v28 = OUTLINED_FUNCTION_26_3(v20);
    v35 = v21 & 1;
    OUTLINED_FUNCTION_56_0();
    v27 = OUTLINED_FUNCTION_26_3(v22);
    v24 = v23;
    v25 = OUTLINED_FUNCTION_100();
    v26(v25);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v7;
    *(v4 + 8) = v42;
    *(v4 + 16) = v34;
    *(v4 + 24) = v41;
    *(v4 + 32) = v33;
    *(v4 + 40) = v40;
    *(v4 + 48) = v32;
    *(v4 + 56) = v39;
    *(v4 + 64) = v31;
    *(v4 + 72) = v38;
    *(v4 + 80) = v30;
    *(v4 + 88) = v37;
    *(v4 + 96) = v29;
    *(v4 + 104) = v36;
    *(v4 + 112) = v28;
    *(v4 + 120) = v35;
    *(v4 + 128) = v27;
    *(v4 + 136) = v24 & 1;
  }

  OUTLINED_FUNCTION_98();
}

void HIDServiceProperties.HIDAccelCurve.encode(to:)()
{
  OUTLINED_FUNCTION_99();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4B0);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_27078EB48();
  sub_2707A8FE0();
  OUTLINED_FUNCTION_7_18();
  v20 = 0xD000000000000011;
  v21 = v10;
  OUTLINED_FUNCTION_33_3();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v11);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v12);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v13);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_71();
    v20 = v14;
    v21 = v15;
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v16);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v17);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v18);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_23_5(v19);
  }

  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_98();
}

uint64_t static HIDServiceProperties.HIDAccelCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t HIDServiceProperties.HIDAccelCurve.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v1 = *v0;
    sub_2707A8F80();
    MEMORY[0x2743A8500](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v2 = v0[2];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v3 = v0[4];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v4 = v0[6];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v4);
  }

  if (*(v0 + 72) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v5 = v0[8];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v5);
  }

  if (*(v0 + 88) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v6 = v0[10];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v6);
  }

  if (*(v0 + 104) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v7 = v0[12];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v7);
  }

  if (*(v0 + 120) == 1)
  {
    sub_2707A8F80();
  }

  else
  {
    v8 = v0[14];
    sub_2707A8F80();
    MEMORY[0x2743A8500](v8);
  }

  if (*(v0 + 136) == 1)
  {
    return sub_2707A8F80();
  }

  v10 = v0[16];
  sub_2707A8F80();
  return MEMORY[0x2743A8500](v10);
}

uint64_t HIDServiceProperties.HIDAccelCurve.hashValue.getter()
{
  OUTLINED_FUNCTION_97();
  HIDServiceProperties.HIDAccelCurve.hash(into:)();
  return sub_2707A8FC0();
}

void sub_270789E78(void *a1@<X8>)
{
  HIDServiceProperties.HIDAccelCurve.init(from:)();
  if (!v1)
  {
    memcpy(a1, v3, 0x89uLL);
  }
}

uint64_t sub_270789EE4()
{
  sub_2707A8F60();
  HIDServiceProperties.HIDAccelCurve.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t sub_270789F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_27078FBE8();
  sub_2707A8FD0();
  if (!v1)
  {
    v10 = 0x7355656369766544;
    v11 = 0xEB00000000656761;
    v8 = sub_2707A8D70();
    v10 = 0x7355656369766544;
    v11 = 0xEF65676150656761;
    sub_2707A8D70();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_27078A0F4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078FBE8();
  sub_2707A8FE0();
  v11 = 0x7355656369766544;
  v12 = 0xEB00000000656761;
  sub_2707A8E20();
  if (!v3)
  {
    v11 = 0x7355656369766544;
    v12 = 0xEF65676150656761;
    sub_2707A8E20();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27078A28C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 32) = 0x7355656369766544;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = 0x7355656369766544;
  *(inited + 56) = 0xEF65676150656761;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_27074FFF4(sub_27078FBC8, v7, inited);
  swift_setDeallocating();
  sub_27078DA6C();
  if (!v5)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_27078A3CC(uint64_t a1, uint64_t a2)
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](a1);
  MEMORY[0x2743A8500](a2);
  return sub_2707A8FC0();
}

void *sub_27078A42C@<X0>(void *a1@<X8>)
{
  result = sub_27078A37C();
  *a1 = result;
  return result;
}

uint64_t sub_27078A454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27078A28C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_27078A484(uint64_t a1)
{
  v2 = sub_27078FBE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078A4C0(uint64_t a1)
{
  v2 = sub_27078FBE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27078A4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270789F24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_27078A554()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2707A8F60();
  MEMORY[0x2743A8500](v1);
  MEMORY[0x2743A8500](v2);
  return sub_2707A8FC0();
}

double HIDServiceProperties.HIDSurfaceDimensions.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4B8);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078EB9C();
  sub_2707A8FD0();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_116(v9);
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_116(v10);
  v12 = v11;
  (*(v4 + 8))(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4C8);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27078EB9C();
  sub_2707A8FE0();
  OUTLINED_FUNCTION_70();
  v14 = v10;
  v15 = v11;
  sub_2707A8E10();
  if (!v1)
  {
    OUTLINED_FUNCTION_69();
    v14 = v12;
    v15 = 0xE500000000000000;
    sub_2707A8E10();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_27078A908(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 32) = 0x746867696548;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6874646957;
  *(inited + 56) = 0xE500000000000000;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_27074FFF4(sub_27078FBC8, v7, inited);
  swift_setDeallocating();
  sub_27078DAB0();
  if (!v5)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_27078A9F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_27078AA2C@<X0>(void *a1@<X8>)
{
  result = sub_27078A9EC();
  *a1 = result;
  return result;
}

uint64_t sub_27078AA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27078A908(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_27078AA7C(uint64_t a1)
{
  v2 = sub_27078EB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27078AAB8(uint64_t a1)
{
  v2 = sub_27078EB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x2743A8540](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x2743A8540](*&v3);
}

uint64_t HIDServiceProperties.HIDSurfaceDimensions.hashValue.getter(double a1, double a2)
{
  OUTLINED_FUNCTION_97();
  HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(a1, a2);
  return sub_2707A8FC0();
}

void sub_27078ABA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = HIDServiceProperties.HIDSurfaceDimensions.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_27078AC00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2707A8F60();
  HIDServiceProperties.HIDSurfaceDimensions.hash(into:)(v1, v2);
  return sub_2707A8FC0();
}

void HIDServiceProperties.init(from:)()
{
  OUTLINED_FUNCTION_99();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v3, v4);
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v198 = v5;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2707779F8();
  sub_2707A8FD0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_87();
    *&v193 = v6;
    *(&v193 + 1) = v7;
    OUTLINED_FUNCTION_3_21();
    v8 = sub_2707A8D50();
    v199 = v5;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v197 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D8);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_123();
    sub_27078EDA4(&unk_28082A4E0);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    HIDServiceProperties.accelParametricCurves.setter(v195);
    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = 0x80000002707B4D20;
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v13;
    *(&v193 + 1) = 0x80000002707B4D20;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v5, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    strcpy(&v193, "Authenticated");
    HIWORD(v193) = -4864;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_2707A8760();
    }

    strcpy(&v193, "Authenticated");
    HIWORD(v193) = -4864;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v5, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    strcpy(&v193, "CapsLockDelay");
    HIWORD(v193) = -4864;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_2707A87C0();
    }

    strcpy(&v193, "CapsLockDelay");
    HIWORD(v193) = -4864;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v5, sel___swift_setObject_forKeyedSubscript_);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v17 + 2;
    *(&v193 + 1) = &unk_279E08000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v19 + 2;
    *(&v193 + 1) = &unk_279E08000;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_82(v5, sel___swift_setObject_forKeyedSubscript_);

    v20 = 0x7954656369766544;
    swift_unknownObjectRelease();
    strcpy(&v193, "DeviceTypeHint");
    HIBYTE(v193) = -18;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v21)
    {
      v22 = sub_2707A85C0();
    }

    else
    {
      v22 = 0;
    }

    strcpy(&v193, "DeviceTypeHint");
    HIBYTE(v193) = -18;
    [v5 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4F0);
    OUTLINED_FUNCTION_7_18();
    *&v193 = 0xD000000000000010;
    *(&v193 + 1) = v23;
    sub_27078EC44(&unk_28082A4F8);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    v24 = v195;
    if (v195)
    {
      v25 = v195[2];
      if (v25)
      {
        *&v193 = MEMORY[0x277D84F90];
        sub_27071AA28(0, v25, 0);
        v26 = v25;
        v27 = v193;
        v28 = *(v193 + 16);
        v29 = 4 * v28;
        v20 = (v24 + 5);
        do
        {
          v30 = *v20;
          v31 = *(v20 - 8);
          *&v193 = v27;
          v32 = v27[3];
          v33 = v28 + 1;
          if (v28 >= v32 >> 1)
          {
            v191 = v26;
            v192 = v28 + 1;
            v189 = v31;
            v190 = v30;
            sub_27071AA28((v32 > 1), v28 + 1, 1);
            v31 = v189;
            v30 = v190;
            v26 = v191;
            v33 = v192;
            v27 = v193;
          }

          v20 += 16;
          v27[2] = v33;
          v34 = v27 + v29;
          *(v34 + 16) = v30;
          *(v34 + 17) = v31;
          v29 += 4;
          v28 = v33;
          --v26;
        }

        while (v26);
        v22 = v27;
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      HIDServiceProperties.deviceUsagePairs.setter(v22);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480);
    OUTLINED_FUNCTION_8_19();
    *&v193 = v35 + 5;
    *(&v193 + 1) = v22;
    sub_27078EEB0(&unk_28082A508);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    if (v195)
    {
      sub_2707A84F0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v193 = v20 + 5;
    *(&v193 + 1) = v22;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v36 v37];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v38 = v20 - 2;
    *&v193 = v38;
    *(&v193 + 1) = v22;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v39)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v24 = 0;
    }

    *&v193 = v38;
    *(&v193 + 1) = v22;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v40 v41];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_39_1();
    *&v193 = v42 + 13;
    *(&v193 + 1) = 0x80000002707B4E30;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v44 + 13;
    *(&v193 + 1) = 0x80000002707B4E30;
    sub_2707A8EC0();
    v45 = OUTLINED_FUNCTION_49_2();
    [v45 v46];

    swift_unknownObjectRelease();
    *&v193 = 0x437972746E756F43;
    *(&v193 + 1) = 0xEB0000000065646FLL;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_2707A87C0();
    }

    *&v193 = 0x437972746E756F43;
    *(&v193 + 1) = 0xEB0000000065646FLL;
    sub_2707A8EC0();
    v49 = OUTLINED_FUNCTION_49_2();
    [v49 v50];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = 0xD000000000000010;
    *(&v193 + 1) = 0x437972746E756F43;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v51)
    {
      v52 = sub_2707A85C0();
    }

    else
    {
      v52 = 0;
    }

    *&v193 = 0xD000000000000010;
    *(&v193 + 1) = 0x437972746E756F43;
    [v199 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    strcpy(&v193, "StandardType");
    BYTE13(v193) = 0;
    HIWORD(v193) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v53)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_2707A87C0();
    }

    strcpy(&v193, "StandardType");
    BYTE13(v193) = 0;
    HIWORD(v193) = -5120;
    sub_2707A8EC0();
    v55 = OUTLINED_FUNCTION_49_2();
    [v55 v56];

    swift_unknownObjectRelease();
    strcpy(&v193, "Manufacturer");
    BYTE13(v193) = 0;
    HIWORD(v193) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v57)
    {
      v58 = sub_2707A85C0();
    }

    else
    {
      v58 = 0;
    }

    strcpy(&v193, "Manufacturer");
    BYTE13(v193) = 0;
    HIWORD(v193) = -5120;
    [v199 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v59;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v62 = OUTLINED_FUNCTION_49_2();
    [v62 v63];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = 0xD00000000000001ALL;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v64)
    {
      v65 = 0;
    }

    else
    {
      v65 = sub_2707A87C0();
    }

    *&v193 = 0xD00000000000001ALL;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v66 = OUTLINED_FUNCTION_49_2();
    [v66 v67];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v195 = 0xD00000000000001ELL;
    v196 = v58;
    sub_27078ECFC();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    OUTLINED_FUNCTION_130();
    if (!v11 & v68)
    {
      v69 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_129();
      v69 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v195 = (v70 + 10);
    v196 = v58;
    [v199 __swift_setObject_forKeyedSubscript_];
    v71 = OUTLINED_FUNCTION_129();
    sub_2707629B4(v71, v72);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v73 + 12;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v74)
    {
      v75 = 0;
    }

    else
    {
      v75 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000020;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v76 = OUTLINED_FUNCTION_49_2();
    [v76 v77];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v195 = 0xD00000000000001BLL;
    v196 = v58;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    OUTLINED_FUNCTION_130();
    if (!v11 & v68)
    {
      v78 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_129();
      v78 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v195 = (v79 + 7);
    v196 = v58;
    v80 = sub_2707A8EC0();
    [v199 __swift_setObject_forKeyedSubscript_];
    v81 = OUTLINED_FUNCTION_129();
    sub_2707629B4(v81, v82);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v83 + 6;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v84)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v78 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v193 = v80 + 6;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v85 v86];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = v80 + 1;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v87)
    {
      v88 = 0;
    }

    else
    {
      v88 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000015;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v89 = OUTLINED_FUNCTION_49_2();
    [v89 v90];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v91)
    {
      v92 = 0;
    }

    else
    {
      v92 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v93 = OUTLINED_FUNCTION_49_2();
    [v93 v94];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = v58;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v95)
    {
      v96 = 0;
    }

    else
    {
      v96 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = v58;
    sub_2707A8EC0();
    v97 = OUTLINED_FUNCTION_49_2();
    [v97 v98];

    swift_unknownObjectRelease();
    *&v193 = 0xD000000000000014;
    *(&v193 + 1) = 0x80000002707B4F70;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v99)
    {
      v100 = 0;
    }

    else
    {
      v100 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v101;
    *(&v193 + 1) = 0x80000002707B4F70;
    sub_2707A8EC0();
    v102 = OUTLINED_FUNCTION_49_2();
    [v102 v103];

    swift_unknownObjectRelease();
    strcpy(&v193, "PrimaryUsage");
    BYTE13(v193) = 0;
    HIWORD(v193) = -5120;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v104)
    {
      v105 = 0;
    }

    else
    {
      v105 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_126();
    *&v193 = v106;
    *(&v193 + 1) = 0xEC00000065676173;
    sub_2707A8EC0();
    v107 = OUTLINED_FUNCTION_49_2();
    [v107 v108];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = 0xD000000000000010;
    *(&v193 + 1) = 0x557972616D697250;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v109)
    {
      v110 = 0;
    }

    else
    {
      v110 = sub_2707A87C0();
    }

    *&v193 = 0xD000000000000010;
    *(&v193 + 1) = 0x557972616D697250;
    sub_2707A8EC0();
    v111 = OUTLINED_FUNCTION_49_2();
    [v111 v112];

    swift_unknownObjectRelease();
    *&v193 = 0x746375646F7250;
    *(&v193 + 1) = 0xE700000000000000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v113)
    {
      v114 = sub_2707A85C0();
    }

    else
    {
      v114 = 0;
    }

    *&v193 = 0x746375646F7250;
    *(&v193 + 1) = 0xE700000000000000;
    [v199 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    *&v193 = 0x49746375646F7250;
    *(&v193 + 1) = 0xE900000000000044;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v115)
    {
      v116 = 0;
    }

    else
    {
      v116 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_104();
    *&v193 = 0x49746375646F7250;
    *(&v193 + 1) = v117;
    sub_2707A8EC0();
    v118 = OUTLINED_FUNCTION_49_2();
    [v118 v119];

    swift_unknownObjectRelease();
    strcpy(&v193, "ReportInterval");
    HIBYTE(v193) = -18;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v120)
    {
      v121 = 0;
    }

    else
    {
      v121 = sub_2707A87C0();
    }

    strcpy(&v193, "ReportInterval");
    HIBYTE(v193) = -18;
    sub_2707A8EC0();
    v122 = OUTLINED_FUNCTION_49_2();
    [v122 v123];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    v195 = (v124 + 6);
    v196 = 0xEE006C6176726574;
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    v125 = *(&v193 + 1);
    v126 = v193;
    if (*(&v193 + 1) >> 60 == 15)
    {
      v127 = 0;
    }

    else
    {
      v127 = sub_2707A8310();
    }

    OUTLINED_FUNCTION_39_1();
    v195 = (v128 + 6);
    v196 = 0xEE006C6176726574;
    v129 = sub_2707A8EC0();
    [v199 __swift_setObject_forKeyedSubscript_];
    sub_2707629B4(v126, v125);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v130 + 5;
    *(&v193 + 1) = 0xEE006C6176726574;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v131)
    {
      sub_2707A85C0();
      OUTLINED_FUNCTION_140();
    }

    else
    {
      v126 = 0;
    }

    OUTLINED_FUNCTION_132();
    *&v193 = v129 + 5;
    *(&v193 + 1) = 0xEE006C6176726574;
    sub_2707A8EC0();
    OUTLINED_FUNCTION_78();
    [v132 v133];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_18();
    *&v193 = v129;
    *(&v193 + 1) = v134;
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    HIDServiceProperties.scrollAccelParametricCurves.setter(v195);
    OUTLINED_FUNCTION_8_19();
    v136 = v135 - 1;
    *&v193 = v135 - 1;
    *(&v193 + 1) = 0xEE006C6176726574;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v137)
    {
      v138 = 0;
    }

    else
    {
      v138 = sub_2707A87C0();
    }

    *&v193 = v136;
    *(&v193 + 1) = 0xEE006C6176726574;
    v139 = sub_2707A8EC0();
    v140 = OUTLINED_FUNCTION_49_2();
    [v140 v141];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = v136;
    *(&v193 + 1) = v139;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v142)
    {
      v143 = 0;
    }

    else
    {
      v143 = sub_2707A87C0();
    }

    *&v193 = v136;
    *(&v193 + 1) = v139;
    v144 = sub_2707A8EC0();
    v145 = OUTLINED_FUNCTION_49_2();
    [v145 v146];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    v148 = v147 - 3;
    *&v193 = v147 - 3;
    *(&v193 + 1) = v144;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v149)
    {
      v150 = 0;
    }

    else
    {
      v150 = sub_2707A87C0();
    }

    *&v193 = v148;
    *(&v193 + 1) = v144;
    v151 = sub_2707A8EC0();
    v152 = OUTLINED_FUNCTION_49_2();
    [v152 v153];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v154 + 4;
    *(&v193 + 1) = v151;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v155 = 0;
    }

    else
    {
      v155 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v156 + 4;
    *(&v193 + 1) = v151;
    v157 = sub_2707A8EC0();
    v158 = OUTLINED_FUNCTION_49_2();
    [v158 v159];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    v195 = v148;
    v196 = v157;
    sub_27078ED50();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_36_2();
    sub_2707A8D40();
    if (v194)
    {
      v160 = 0;
    }

    else
    {
      v160 = HIDServiceProperties.HIDSurfaceDimensions.dictionaryRepresentation.getter();
    }

    v195 = v148;
    v196 = v157;
    sub_2707A8EC0();
    v161 = OUTLINED_FUNCTION_49_2();
    [v161 v162];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_104();
    *&v193 = 0x726F70736E617254;
    *(&v193 + 1) = v163 + 48;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D10();
    if (v164)
    {
      v165 = sub_2707A85C0();
    }

    else
    {
      v165 = 0;
    }

    OUTLINED_FUNCTION_104();
    *&v193 = 0x726F70736E617254;
    *(&v193 + 1) = v166 + 48;
    v167 = sub_2707A8EC0();
    v168 = OUTLINED_FUNCTION_49_2();
    [v168 v169];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_19();
    *&v193 = v170 + 3;
    *(&v193 + 1) = v167;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v171)
    {
      v172 = 0;
    }

    else
    {
      v172 = sub_2707A87C0();
    }

    OUTLINED_FUNCTION_132();
    *&v193 = v148 + 3;
    *(&v193 + 1) = v167;
    v173 = sub_2707A8EC0();
    v174 = OUTLINED_FUNCTION_49_2();
    [v174 v175];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = v148 + 9;
    *(&v193 + 1) = v173;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v176)
    {
      v177 = 0;
    }

    else
    {
      v177 = sub_2707A87C0();
    }

    *&v193 = v148 + 9;
    *(&v193 + 1) = v173;
    v178 = sub_2707A8EC0();
    v179 = OUTLINED_FUNCTION_49_2();
    [v179 v180];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47_2();
    *&v193 = v148 + 3;
    *(&v193 + 1) = v178;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D20();
    OUTLINED_FUNCTION_6_18();
    if (v11)
    {
      v181 = 0;
    }

    else
    {
      v181 = sub_2707A8760();
    }

    OUTLINED_FUNCTION_39_1();
    *&v193 = v182 + 3;
    *(&v193 + 1) = v178;
    sub_2707A8EC0();
    v183 = OUTLINED_FUNCTION_49_2();
    [v183 v184];

    swift_unknownObjectRelease();
    *&v193 = 0x4449726F646E6556;
    *(&v193 + 1) = 0xE800000000000000;
    OUTLINED_FUNCTION_3_21();
    sub_2707A8D30();
    if (v185)
    {
      v186 = 0;
    }

    else
    {
      v186 = sub_2707A87C0();
    }

    *&v193 = 0x4449726F646E6556;
    *(&v193 + 1) = 0xE800000000000000;
    [v199 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v187 = OUTLINED_FUNCTION_67_0();
    v188(v187);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_98();
}

void HIDServiceProperties.encode(to:)()
{
  OUTLINED_FUNCTION_99();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A520);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v122 - v13;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2707779F8();
  sub_2707A8FE0();
  if (!v5 || (OUTLINED_FUNCTION_87(), *&v129 = v15, *(&v129 + 1) = v16, OUTLINED_FUNCTION_28_2(), sub_2707A8E50(), (v1 = v0) == 0))
  {
    OUTLINED_FUNCTION_41_2();
    v21 = HIDServiceProperties.subscript.getter(v17, v18, v19, v20);
    if (v21)
    {
      v29 = v21;
      v0 = v1;
      sub_270782C64(v21, v22, v23, v24, v25, v26, v27, v28, v122, v123);
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v131 = v31;
    strcpy(&v129, "HIDAccelCurves");
    HIBYTE(v129) = -18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4D8);
    sub_27078EDA4(&unk_28082A528);
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_37_0();
    sub_2707A8E00();
    if (v0)
    {
    }

    else
    {

      OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0xD000000000000014;
      *(&v129 + 1) = 0xEE00736576727543;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "Authenticated");
      HIWORD(v129) = -4864;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_85();
      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_7_18();
      *&v129 = 0xD000000000000017;
      *(&v129 + 1) = v32;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "CapsLockDelay");
      HIWORD(v129) = -4864;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0xD000000000000016;
      *(&v129 + 1) = 0x6B636F4C73706143;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "DeviceTypeHint");
      HIBYTE(v129) = -18;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v33 = 0xD000000000000010;
      v128 = 0x80000002707B4710;
      v35 = HIDServiceProperties.subscript.getter(0xD000000000000010, 0x80000002707B4710, v34, v3);
      v43 = MEMORY[0x277D84F90];
      if (v35)
      {
        v44 = v35;
        sub_270782A48(v35, v36, v37, v38, v39, v40, v41, v42, v122, v123.super.isa);
        v46 = v45;

        v43 = MEMORY[0x277D84F90];
        v47 = v46;
      }

      else
      {
        v47 = MEMORY[0x277D84F90];
      }

      v48 = *(v47 + 16);
      v127 = 0xD000000000000010;
      if (v48)
      {
        *&v129 = v43;
        v126 = v47;
        sub_27071AA48(0, v48, 0);
        v49 = v48;
        v50 = v129;
        v51 = *(v129 + 16);
        v52 = 16 * v51;
        v53 = (v126 + 34);
        do
        {
          isa = *(v53 - 1);
          v55 = *v53;
          *&v129 = v50;
          v56 = *(v50 + 24);
          v57 = v51 + 1;
          if (v51 >= v56 >> 1)
          {
            v124 = v49;
            v125 = v51 + 1;
            v122 = v55;
            v123.super.isa = isa;
            sub_27071AA48((v56 > 1), v51 + 1, 1);
            v55 = v122;
            isa = v123.super.isa;
            v49 = v124;
            v57 = v125;
            v50 = v129;
          }

          v53 += 2;
          *(v50 + 16) = v57;
          v58 = v50 + v52;
          *(v58 + 32) = v55;
          *(v58 + 40) = isa;
          v52 += 16;
          v51 = v57;
          --v49;
        }

        while (v49);

        v33 = v127;
      }

      else
      {

        v50 = MEMORY[0x277D84F90];
      }

      v131 = v50;
      *&v129 = v33;
      *(&v129 + 1) = v128;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A4F0);
      sub_27078EC44(&unk_28082A538);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_14_11();
      v131 = HIDServiceProperties.subscript.getter();
      *&v129 = 0xD000000000000019;
      *(&v129 + 1) = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A480);
      sub_27078EEB0(&unk_28082A548);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0xD000000000000012;
      *(&v129 + 1) = v60;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0xD000000000000021;
      *(&v129 + 1) = v60;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0x437972746E756F43;
      *(&v129 + 1) = 0xEB0000000065646FLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      v61 = v127;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v61;
      *(&v129 + 1) = 0x437972746E756F43;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "StandardType");
      BYTE13(v129) = 0;
      HIWORD(v129) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "Manufacturer");
      BYTE13(v129) = 0;
      HIWORD(v129) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_39_1();
      *&v129 = v62;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v64 = v63 + 6;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v64;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v66 = v65 + 10;
      OUTLINED_FUNCTION_14_11();
      *&v129 = HIDServiceProperties.subscript.getter();
      *(&v129 + 1) = v67;
      v131 = v66;
      v132 = 0x74636166756E614DLL;
      sub_27078EF1C();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v129, *(&v129 + 1));
      OUTLINED_FUNCTION_6_22();
      v69 = v68 + 12;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v69;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v71 = v70 + 7;
      OUTLINED_FUNCTION_14_11();
      *&v129 = HIDServiceProperties.subscript.getter();
      *(&v129 + 1) = v72;
      v131 = v71;
      v132 = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v129, *(&v129 + 1));
      OUTLINED_FUNCTION_6_22();
      v74 = v73 + 6;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v74;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_37_0();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_6_22();
      v76 = v75 + 1;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v76;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_39_1();
      *&v129 = v77;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_39_1();
      *&v129 = v78;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_7_19();
      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_39_1();
      *&v129 = v79;
      *(&v129 + 1) = 0x74636166756E614DLL;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "PrimaryUsage");
      BYTE13(v129) = 0;
      HIWORD(v129) = -5120;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      v80 = v127;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v80;
      *(&v129 + 1) = 0x557972616D697250;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0x746375646F7250;
      *(&v129 + 1) = 0xE700000000000000;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      HIDServiceProperties.subscript.getter();
      OUTLINED_FUNCTION_104();
      *&v129 = 0x49746375646F7250;
      *(&v129 + 1) = v81;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_42_1();
      HIDServiceProperties.subscript.getter();
      strcpy(&v129, "ReportInterval");
      HIBYTE(v129) = -18;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v83 = v82 + 6;
      OUTLINED_FUNCTION_14_11();
      *&v129 = HIDServiceProperties.subscript.getter();
      *(&v129 + 1) = v84;
      v131 = v83;
      v132 = 0x6E4974726F706552;
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();
      sub_2707629B4(v129, *(&v129 + 1));
      OUTLINED_FUNCTION_6_22();
      v86 = v85 + 5;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v86;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      v87 = OUTLINED_FUNCTION_7_19();
      v91 = HIDServiceProperties.subscript.getter(v87, v88, v89, v90);
      if (v91)
      {
        v99 = v91;
        sub_270782C64(v91, v92, v93, v94, v95, v96, v97, v98, v122, v123);
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      v131 = v101;
      OUTLINED_FUNCTION_39_1();
      *&v129 = v102;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_37_0();
      sub_2707A8E00();

      OUTLINED_FUNCTION_6_22();
      v104 = v103 - 1;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v104;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v104;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v106 = v105 - 3;
      OUTLINED_FUNCTION_14_11();
      HIDServiceProperties.subscript.getter();
      *&v129 = v106;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v108 = v107 + 4;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v108;
      *(&v129 + 1) = 0x6E4974726F706552;
      OUTLINED_FUNCTION_28_2();
      sub_2707A8DE0();
      OUTLINED_FUNCTION_43_1();
      v109 = OUTLINED_FUNCTION_14_11();
      v113 = HIDServiceProperties.subscript.getter(v109, v110, v111, v112);
      if (v113)
      {
        *(&v113 - 2) = HIDServiceProperties.HIDSurfaceDimensions.init(dictionaryRepresentation:)(v113);
      }

      else
      {
        v114 = 0;
        v115 = 1;
      }

      *&v129 = v113;
      *(&v129 + 1) = v114;
      v130 = v115 & 1;
      v131 = v106;
      v132 = 0x6E4974726F706552;
      sub_27078EF70();
      OUTLINED_FUNCTION_28_2();
      sub_2707A8E00();
      OUTLINED_FUNCTION_104();
      v117 = v116 + 48;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0x726F70736E617254;
      *(&v129 + 1) = v117;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DD0();

      OUTLINED_FUNCTION_6_22();
      v119 = v118 + 3;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v119;
      *(&v129 + 1) = v117;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      OUTLINED_FUNCTION_6_22();
      v121 = v120 + 9;
      OUTLINED_FUNCTION_41_2();
      HIDServiceProperties.subscript.getter();
      *&v129 = v121;
      *(&v129 + 1) = v117;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
      HIDServiceProperties.subscript.getter();
      *&v129 = 0x4449726F646E6556;
      *(&v129 + 1) = 0xE800000000000000;
      OUTLINED_FUNCTION_5_23();
      sub_2707A8DF0();
    }
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_98();
}

uint64_t sub_27078D214(uint64_t a1, void *a2)
{
  HIDServiceProperties.subscript.getter();
  if (v3)
  {
    sub_27073FB54(0, &qword_280829E48);
    v4 = 0xD000000000000022;
    v5 = 0x80000002707B56D0;
LABEL_10:
    sub_27077F25C(22, v4, v5);
    return swift_willThrow();
  }

  HIDServiceProperties.subscript.getter();
  if (v7)
  {
    sub_27073FB54(0, &qword_280829E48);
    v4 = 0xD00000000000001DLL;
    v5 = 0x80000002707B5700;
    goto LABEL_10;
  }

  v8 = HIDServiceProperties.subscript.getter(0xD000000000000010, 0x80000002707B4710, v6, a2);
  if (v8)
  {
    v16 = v8;
    sub_270782A48(v8, v9, v10, v11, v12, v13, v14, v15, v21, v22);
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = *(v18 + 16);

  if (!v19)
  {
    sub_27073FB54(0, &qword_280829E48);
    v4 = 0xD000000000000022;
    v5 = 0x80000002707B5720;
    goto LABEL_10;
  }

  return result;
}

uint64_t HIDServiceProperties.init(service:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v22 = ObjectType;
  v7 = v6(ObjectType, a2);
  v8 = static HIDServicePropertyKey.allCases.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(a2 + 48);
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v10(&v18, v13, v12, v22, a2);
      if (v19)
      {
        sub_270724188(&v18, &v20);
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        v14 = sub_2707A8E90();
        *&v18 = v13;
        *(&v18 + 1) = v12;
        [v17 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v20);
      }

      else
      {

        sub_27078FD04(&v18, &qword_280829D68);
      }

      v11 += 2;
      --v9;
    }

    while (v9);

    v3 = v2;
  }

  else
  {
  }

  v15 = v17;
  sub_27078D214(v7, v15);
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v7;
}

void HIDServiceProperties.init(usages:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  if (*(a1 + 16))
  {
    HIDServiceProperties.primaryUsagePair.setter();
    HIDServiceProperties.deviceUsagePairs.setter(a1);
  }

  else
  {

    sub_27073FB54(0, &qword_280829E48);
    sub_27077F25C(22, 0xD000000000000022, 0x80000002707B55B0);
    swift_willThrow();
  }
}

void sub_27078D6B8(void *a1@<X8>)
{
  HIDServiceProperties.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t static HIDServiceProperties.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    return 0;
  }

  sub_27073FB54(0, &qword_280829960);
  return sub_2707A8910() & 1;
}

uint64_t HIDServiceProperties.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_97();
  MEMORY[0x2743A8540](a1);
  sub_2707A8920();
  return sub_2707A8FC0();
}

uint64_t sub_27078D818()
{
  v1 = *v0;
  sub_2707A8F60();
  HIDServiceProperties.hash(into:)(v3, v1);
  return sub_2707A8FC0();
}

uint64_t sub_27078D86C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MEMORY[0x2743A7BE0]();
  MEMORY[0x2743A7BE0](10322146, 0xA300000000000000);
  return 2625692192;
}

unint64_t HIDServiceProperties.description.getter(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = OUTLINED_FUNCTION_28();
  v5 = HIDDeviceType.init(properties:)(v3, v4);
  v16 = HIDDeviceType.description.getter(v5);
  MEMORY[0x2743A7BE0](91, 0xE100000000000000);
  sub_270735074();
  v6 = sub_2707A8680();
  MEMORY[0x2743A7BE0](v6);

  MEMORY[0x2743A7BE0](93, 0xE100000000000000);
  OUTLINED_FUNCTION_86();
  HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_109();
  v9 = sub_27078D86C(v7, v8);
  v11 = v10;

  MEMORY[0x2743A7BE0](v9, v11);

  OUTLINED_FUNCTION_57_0();
  HIDServiceProperties.subscript.getter();
  OUTLINED_FUNCTION_109();
  sub_27078D86C(v12, v13);

  v14 = OUTLINED_FUNCTION_28();
  MEMORY[0x2743A7BE0](v14);

  return v16;
}

uint64_t sub_27078DA0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829978);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DA6C()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DAB0()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27078DAF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A608);
  v33 = a2;
  result = sub_2707A8CD0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2707961C0(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_270724188(v22, v34);
    }

    else
    {
      sub_2707374F8(v22, v34);
    }

    sub_2707A8F60();
    sub_2707A8620();
    result = sub_2707A8FC0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_270724188(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_27078DDA8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EventReportSenderID();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829908);
  v40 = a2;
  result = sub_2707A8CD0();
  v11 = v9;
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v36 = v3;
  v37 = v9;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v11 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      sub_2707961C0(0, (v34 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v11 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v38 + 72);
    v25 = *(v11 + 48) + v24 * v23;
    if (v40)
    {
      sub_270723128(v25, v8);
      v41 = *(*(v11 + 56) + 8 * v23);
    }

    else
    {
      sub_2707230C4(v25, v8);
      v41 = *(*(v11 + 56) + 8 * v23);
    }

    sub_2707A8F60();
    sub_2707A8410();
    sub_27078FC58(&qword_280829710);
    sub_2707A8540();
    MEMORY[0x2743A8540](*&v8[*(v39 + 20)]);
    result = sub_2707A8FC0();
    v26 = -1 << *(v12 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v11 = v37;
LABEL_24:
    *(v19 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_270723128(v8, *(v12 + 48) + v24 * v29);
    *(*(v12 + 56) + 8 * v29) = v41;
    ++*(v12 + 16);
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  v11 = v37;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v19 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_27078E148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28082A5F8);
  v34 = a2;
  result = sub_2707A8CD0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2707961C0(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_2707A8F60();
    sub_2707A8620();
    result = sub_2707A8FC0();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}