uint64_t static ConsumerReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  v2 = qword_280829AA0;
  v3 = *algn_280829AA8;
  *a1 = qword_280829AA0;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

unint64_t ConsumerReport.description.getter(uint64_t a1, unint64_t a2)
{
  sub_270706C38(a1, a2);
  for (i = 0; i < 4; ++i)
  {
    if ((_s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0() - 1301) > 0xFAEBu)
    {
      sub_270710EEC();
      v7 = sub_2707A8680();
      v8 = v5;
      MEMORY[0x2743A7BE0](32, 0xE100000000000000);
      MEMORY[0x2743A7BE0](v7, v8);
    }
  }

  sub_270708D74(a1, a2);

  MEMORY[0x2743A7BE0](41, 0xE100000000000000);

  return 0xD000000000000010;
}

uint64_t ConsumerReport.makeIterator()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  return sub_270706C38(a1, a2);
}

void ConsumerReport.Iterator.next()()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = v1 + 1;
    v3 = (16 * v1) | 8;
    v4 = (v1 - 0x800000000000000) >> 60;
    while (v4 >= 0xF)
    {
      v5 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
      *(v0 + 16) = v2;
      if ((v5 - 1301) < 0xFAECu)
      {
        ++v2;
        v3 += 16;
        if (v2 != 5)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t ConsumerReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270745D84@<X0>(uint64_t *a1@<X8>)
{
  result = ConsumerReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270745DD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  ConsumerReport.makeIterator()(v2, v3, a1);

  return sub_270708D74(v2, v3);
}

uint64_t ConsumerReport.update(with:)(unsigned __int16 a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 24;
  while (1)
  {
    v5 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    v6 = a1;
    v7 = (v5 - 1301) >= 0xFAECu && v5 == a1;
    v8 = !v7;
    if (v7)
    {
      break;
    }

    if (v5)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }

    if (v3)
    {
      v2 = v9;
    }

    v3 &= v5 != 0;
    v4 += 16;
    if (v4 == 72)
    {
      if ((v3 & 1) == 0)
      {
        _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcis_0();
      }

      v6 = 0;
      return v6 | (v8 << 16);
    }
  }

  return v6 | (v8 << 16);
}

uint64_t ConsumerReport.remove(_:)(unsigned __int16 a1)
{
  v2 = 24;
  while (1)
  {
    v3 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    v4 = a1;
    v5 = (v3 - 1301) >= 0xFAECu && v3 == a1;
    v6 = !v5;
    if (v5)
    {
      break;
    }

    v2 += 16;
    if (v2 == 72)
    {
      v4 = 0;
      return v4 | (v6 << 16);
    }
  }

  _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcis_0();
  return v4 | (v6 << 16);
}

uint64_t sub_270745FDC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = OUTLINED_FUNCTION_28();
  v4(v3);
  sub_270708D74(v2, v1);
  v5 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v5, v6);
}

uint64_t sub_2707460A0()
{
  OUTLINED_FUNCTION_28();
  sub_270763EB4();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_2707460F0()
{
  OUTLINED_FUNCTION_28();
  sub_27075ACA0();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_27074614C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t, unint64_t))
{
  v5 = *v4;
  v6 = v4[1];
  a4(*a1, a1[1], v5, v6);

  return sub_270708D74(v5, v6);
}

void sub_2707461D8()
{
  sub_27073F908();

  EventReportProtocol<>.init<A>(_:)();
}

uint64_t ConsumerReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270746334);
      }

      if (v4 >= 17)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270746344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ConsumerReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void ConsumerReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x27074643CLL);
      }

      if (v2 >= 17)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void (*ConsumerReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270746520);
      }

      if (v6 >= 17)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_270746530;
  }
}

void sub_270746530(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ConsumerReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 17)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_270746610(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x2707466F0);
      }

      if (v7 >= 17)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_270746700;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_270746700(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ConsumerReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 17)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t sub_2707467BC()
{
  result = qword_280829AB0;
  if (!qword_280829AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AB0);
  }

  return result;
}

unint64_t sub_270746814()
{
  result = qword_280829AB8;
  if (!qword_280829AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AB8);
  }

  return result;
}

unint64_t sub_27074686C()
{
  result = qword_280829AC0;
  if (!qword_280829AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t AppleVendorKeyboardUsage.init(rawValue:)(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 - 49 >= 0xFFFFFFD0 && a1 <= 0x21u && ((1 << a1) & 0x30003001ELL) != 0)
  {
    v2 = 0;
  }

  else
  {
    v1 = 0;
    v2 = 1;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_270746968@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AppleVendorKeyboardUsage.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t static AppleVendorKeyboardUsage.longPress.getter()
{
  if (qword_280829460 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  return byte_280829AC8;
}

uint64_t static AppleVendorKeyboardUsage.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829AD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707AC1C0;
  *(v0 + 32) = xmmword_2707AE2C0;
  *(v0 + 48) = 67;
  if (qword_280829460 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  *(v0 + 49) = byte_280829AC8;
  return v0;
}

unint64_t sub_270746AF4(uint64_t a1)
{
  result = sub_270746B1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270746B1C()
{
  result = qword_280829AD8;
  if (!qword_280829AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AD8);
  }

  return result;
}

unint64_t sub_270746B74()
{
  result = qword_280829AE0;
  if (!qword_280829AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AE0);
  }

  return result;
}

unint64_t sub_270746BCC()
{
  result = qword_280829AE8;
  if (!qword_280829AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AE8);
  }

  return result;
}

uint64_t sub_270746C30@<X0>(uint64_t *a1@<X8>)
{
  result = static AppleVendorKeyboardUsage.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t ConsumerUsage.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 - 1301 < 0xFFFFFAEC)
  {
    v1 = 0;
  }

  return v1 | ((a1 - 1301 < 0xFFFFFAEC) << 16);
}

unint64_t sub_270746CC8(uint64_t a1)
{
  result = sub_270746CF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270746CF0()
{
  result = qword_280829AF8;
  if (!qword_280829AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829AF8);
  }

  return result;
}

uint64_t sub_270746D44@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConsumerUsage.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_270746D88()
{
  result = qword_280829B00;
  if (!qword_280829B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B00);
  }

  return result;
}

uint64_t PointerGesture.__allocating_init(logger:useRemoteAcceleration:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  PointerGesture.init(logger:useRemoteAcceleration:)(a1, a2);
  return v4;
}

UniversalHID::PointerButtonMode __swiftcall PointerButtonMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_270746E9C@<X0>(Swift::Int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PointerButtonMode.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_270746ED8@<X0>(uint64_t *a1@<X8>)
{
  result = PointerButtonMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static PointerEvent.dispatch(report:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2707A9CF0;
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_4_13();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  v1 = OUTLINED_FUNCTION_2_11();
  *(v0 + 56) = &type metadata for PointerEvent;
  *(v0 + 64) = &protocol witness table for PointerEvent;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t PointerGesture.buttonMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMode;
  result = OUTLINED_FUNCTION_6_11();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PointerGesture.buttonMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMode;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t PointerGesture.buttonMask.getter()
{
  v1 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
  OUTLINED_FUNCTION_6_11();
  return *(v0 + v1);
}

uint64_t PointerGesture.init(logger:useRemoteAcceleration:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMode) = 2;
  *(v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask) = 0;
  *(v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_keyboardModifiers) = 0;
  sub_270747C30(a1, v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_logger);
  *(v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_useRemoteAcceleration) = a2;
  return v2;
}

unint64_t sub_270747158(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMode;
  OUTLINED_FUNCTION_6_11();
  if (!*(v1 + v3))
  {
    return a1 & 0xFFFFFFFFFFFFFFFCLL | (a1 >> 1) & 1;
  }

  if (*(v1 + v3) == 1)
  {
    return a1 & 0xFFFFFFFFFFFFFFFCLL | (a1 >> 1) & 1 | (2 * (a1 & 1));
  }

  return a1;
}

uint64_t PointerGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_20();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_0_20();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  v5 = OUTLINED_FUNCTION_2_11();
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_25;
      }

      v6 = v6;
LABEL_6:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      if (v6 >= 25)
      {
        OUTLINED_FUNCTION_0_20();
        v10 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        if (v10)
        {
          v28 = v10;
          v11 = sub_27070E734(&v28, v29);
          v13 = v12;
          sub_270706C38(v11, v12);
          v14 = mach_absolute_time();
          v15 = sub_270718460(v14, 16973568, 0, v11, v13, 0);
          IOHIDEventAppendEvent();

          sub_270708D74(v11, v13);
        }
      }

LABEL_10:
      OUTLINED_FUNCTION_0_20();
      v16 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      v17 = sub_270747158(v16);
      OUTLINED_FUNCTION_0_20();
      v18 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      OUTLINED_FUNCTION_0_20();
      if (!_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() && (OUTLINED_FUNCTION_0_20(), !_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0()) && (OUTLINED_FUNCTION_0_20(), v19 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_5_11(v19), v21 ^ v9 | v20) && (OUTLINED_FUNCTION_0_20(), v22 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_5_11(v22), v21 ^ v9 | v20) && (v23 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask, swift_beginAccess(), *(v2 + v23) == v17) && *(v2 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_keyboardModifiers) == v18)
      {
        v24 = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_0_20();
        v25 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        OUTLINED_FUNCTION_0_20();
        v26 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        OUTLINED_FUNCTION_0_20();
        if (_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0())
        {
          OUTLINED_FUNCTION_0_20();
          _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
          OUTLINED_FUNCTION_0_20();
          _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_20();
          _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
          OUTLINED_FUNCTION_4_13();
          OUTLINED_FUNCTION_0_20();
          _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        }

        v24 = sub_2707474BC(v5, v25, v26);
      }

      return v24;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    case 3uLL:
      goto LABEL_10;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_2707474BC(void *a1, unsigned __int8 a2, int a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v68 - v13;
  v71 = sub_270747158(a2);
  v69 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_keyboardModifiers;
  v15 = *(v3 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_keyboardModifiers);
  v16 = a3 & ~v15;
  v70 = a3;
  v17 = v15 & ~a3;
  v73 = v3;
  if (v16)
  {
    sub_270734E94(v3 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_logger, v14);
    v18 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
    {
      sub_270747CA0(v14);
    }

    else
    {
      v19 = sub_2707A8420();
      v20 = sub_2707A8820();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 16777472;
        *(v21 + 4) = v16;
        OUTLINED_FUNCTION_9_8(&dword_270703000, v22, v23, "modifiers down: %hhx");
        MEMORY[0x2743A9010](v21, -1, -1);
      }

      (*(*(v18 - 8) + 8))(v14, v18);
    }

    v3 = v73;
  }

  if (v17)
  {
    sub_270734E94(v3 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_logger, v11);
    v24 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v11, 1, v24) == 1)
    {
      sub_270747CA0(v11);
    }

    else
    {
      v25 = sub_2707A8420();
      v26 = sub_2707A8820();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 16777472;
        *(v27 + 4) = v17;
        OUTLINED_FUNCTION_9_8(&dword_270703000, v28, v29, "modifiers up: %hhx");
        MEMORY[0x2743A9010](v27, -1, -1);
      }

      (*(*(v24 - 8) + 8))(v11, v24);
    }
  }

  v72 = v17;
  v30 = KeyboardModifierMask.keyboardUsages()(v16);
  v31 = 0;
  v32 = v30 + 56;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v30 + 56);
  v36 = MEMORY[0x277D84F90];
  v37 = (v33 + 63) >> 6;
  if (v35)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v38 >= v37)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++v31;
    if (v35)
    {
      v31 = v38;
      do
      {
LABEL_21:
        mach_absolute_time();
        OUTLINED_FUNCTION_8_11();
        KeyboardEvent = IOHIDEventCreateKeyboardEvent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_17();
          v36 = v41;
        }

        v40 = *(v36 + 16);
        if (v40 >= *(v36 + 24) >> 1)
        {
          sub_270713DA0();
          v36 = v42;
        }

        v35 &= v35 - 1;
        v76 = &protocol witness table for KeyboardEvent;
        v75 = &type metadata for KeyboardEvent;
        v74 = KeyboardEvent;
        *(v36 + 16) = v40 + 1;
        OUTLINED_FUNCTION_3_7();
      }

      while (v35);
    }
  }

  v43 = KeyboardModifierMask.keyboardUsages()(v72);
  v44 = 0;
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v31 = v43 + 56;
  v47 = v46 & *(v43 + 56);
  v48 = (v45 + 63) >> 6;
  if (v47)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v49 >= v48)
    {

      v54 = OBJC_IVAR____TtC12UniversalHID14PointerGesture_buttonMask;
      v55 = v73;
      swift_beginAccess();
      v31 = *(v55 + v54);
      v56 = v71;
      v57 = v71 & ~v31;
      if (v57)
      {
        v58 = v71 & ~v31;
        do
        {
          if (v58)
          {
            if (HIDWORD(v57))
            {
              goto LABEL_58;
            }

            mach_absolute_time();
            ButtonEventWithPressure = IOHIDEventCreateButtonEventWithPressure();
            IOHIDEventSetIntegerValue();
            OUTLINED_FUNCTION_7_11();
          }

          v60 = v58 > 1;
          v58 >>= 1;
        }

        while (v60);
      }

      v61 = v31 & ~v56;
      if (v61)
      {
        do
        {
          if (v61)
          {
            mach_absolute_time();
            v62 = IOHIDEventCreateButtonEventWithPressure();
            OUTLINED_FUNCTION_7_11();
          }

          v60 = v61 > 1;
          v61 >>= 1;
        }

        while (v60);
      }

      if (*(v55 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_useRemoteAcceleration) == 1)
      {
        mach_absolute_time();
        RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
        OUTLINED_FUNCTION_7_11();
      }

      IOHIDEventSetIntegerValue();
      *(v55 + v54) = v56;
      *(v55 + v69) = v70;
      v31 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    v47 = *(v31 + 8 * v49);
    ++v44;
    if (v47)
    {
      v44 = v49;
      do
      {
LABEL_34:
        mach_absolute_time();
        OUTLINED_FUNCTION_8_11();
        v50 = IOHIDEventCreateKeyboardEvent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_17();
          v36 = v52;
        }

        v51 = *(v36 + 16);
        if (v51 >= *(v36 + 24) >> 1)
        {
          sub_270713DA0();
          v36 = v53;
        }

        v47 &= v47 - 1;
        v76 = &protocol witness table for KeyboardEvent;
        v75 = &type metadata for KeyboardEvent;
        v74 = v50;
        *(v36 + 16) = v51 + 1;
        OUTLINED_FUNCTION_3_7();
      }

      while (v47);
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  OUTLINED_FUNCTION_1_17();
  v36 = v66;
LABEL_53:
  v64 = *(v36 + 16);
  if (v64 >= *(v36 + 24) >> 1)
  {
    sub_270713DA0();
    v36 = v67;
  }

  v75 = &type metadata for PointerEvent;
  v76 = &protocol witness table for PointerEvent;
  v74 = v31;
  *(v36 + 16) = v64 + 1;
  OUTLINED_FUNCTION_3_7();
  return v36;
}

uint64_t PointerGesture.__deallocating_deinit()
{
  sub_270747CA0(v0 + OBJC_IVAR____TtC12UniversalHID14PointerGesture_logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_270747C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270747CA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_270747D0C()
{
  result = qword_280829B18;
  if (!qword_280829B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PointerButtonMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PointerButtonMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x270747ECCLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PointerGesture()
{
  result = qword_280829B20;
  if (!qword_280829B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270747F58()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void OUTLINED_FUNCTION_1_17()
{

  sub_270713DA0();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return IOHIDEventCreateRelativePointerEvent();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_27070F8A8((v2 - 152), v0 + 40 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return IOHIDEventAppendEvent();
}

void OUTLINED_FUNCTION_9_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 5u);
}

uint64_t EventReportSenderID.init(deviceID:serviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2707A8410();
  OUTLINED_FUNCTION_6_9();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for EventReportSenderID();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for EventReportSenderID()
{
  result = qword_280829B60;
  if (!qword_280829B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventReportSenderID.deviceID.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2707A8410();
  OUTLINED_FUNCTION_6_9();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t EventReportSenderID.deviceID.setter()
{
  OUTLINED_FUNCTION_4_14();
  sub_2707A8410();
  OUTLINED_FUNCTION_6_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t EventReportSenderID.serviceID.setter()
{
  OUTLINED_FUNCTION_4_14();
  result = type metadata accessor for EventReportSenderID();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*EventReportSenderID.serviceID.modify())()
{
  OUTLINED_FUNCTION_4_14();
  type metadata accessor for EventReportSenderID();
  return nullsub_1;
}

BOOL static EventReportSenderID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2707A83D0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EventReportSenderID();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_2707483D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2707A8EA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xE900000000000044)
  {

    return 1;
  }

  else
  {
    v7 = sub_2707A8EA0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2707484A8(char a1)
{
  if (a1)
  {
    return 0x4965636976726573;
  }

  else
  {
    return 0x4449656369766564;
  }
}

uint64_t sub_2707484EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707483D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270748514(uint64_t a1)
{
  v2 = sub_270748728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270748550(uint64_t a1)
{
  v2 = sub_270748728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventReportSenderID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829B30);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270748728();
  sub_2707A8FE0();
  v13[15] = 0;
  sub_2707A8410();
  OUTLINED_FUNCTION_0_21();
  sub_270748DB4(v10, v11);
  sub_2707A8E30();
  if (!v1)
  {
    type metadata accessor for EventReportSenderID();
    v13[14] = 1;
    sub_2707A8E50();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_270748728()
{
  result = qword_280829B38;
  if (!qword_280829B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B38);
  }

  return result;
}

uint64_t EventReportSenderID.hash(into:)()
{
  OUTLINED_FUNCTION_4_14();
  sub_2707A8410();
  OUTLINED_FUNCTION_0_21();
  sub_270748DB4(v1, v2);
  sub_2707A8540();
  v3 = type metadata accessor for EventReportSenderID();
  return MEMORY[0x2743A8540](*(v0 + *(v3 + 20)));
}

uint64_t EventReportSenderID.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8410();
  OUTLINED_FUNCTION_0_21();
  sub_270748DB4(v1, v2);
  sub_2707A8540();
  v3 = type metadata accessor for EventReportSenderID();
  MEMORY[0x2743A8540](*(v0 + *(v3 + 20)));
  return sub_2707A8FC0();
}

uint64_t EventReportSenderID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v28 = v4;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829B48);
  OUTLINED_FUNCTION_0_1();
  v29 = v9;
  MEMORY[0x28223BE20](v10, v11);
  v12 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_6_9();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270748728();
  sub_2707A8FD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v16;
  v17 = v28;
  v33 = 0;
  OUTLINED_FUNCTION_0_21();
  sub_270748DB4(v18, v19);
  v20 = v30;
  sub_2707A8D80();
  v21 = v26;
  (*(v17 + 32))(v26, v8, v20);
  v32 = 1;
  v22 = sub_2707A8DA0();
  v23 = OUTLINED_FUNCTION_1_18();
  v24(v23);
  *(v21 + *(v12 + 20)) = v22;
  sub_2707230C4(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_27072318C(v21);
}

uint64_t sub_270748BA8()
{
  sub_2707A8F60();
  EventReportSenderID.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t EventReportSenderID.description.getter()
{
  sub_2707A83C0();
  v0 = sub_270748CAC(8);
  v1 = MEMORY[0x2743A7BA0](v0);

  MEMORY[0x2743A7BE0](58, 0xE100000000000000);
  type metadata accessor for EventReportSenderID();
  sub_270735074();
  v2 = sub_2707A8680();
  MEMORY[0x2743A7BE0](v2);

  return v1;
}

uint64_t sub_270748CAC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2707A8640();
    v1 = sub_2707A8690();

    return v1;
  }

  return result;
}

uint64_t sub_270748DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270748E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2707A8410();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_270748E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2707A8410();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_270748EBC()
{
  result = sub_2707A8410();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventReportSenderID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270748FFCLL);
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

unint64_t sub_270749038()
{
  result = qword_280829B70;
  if (!qword_280829B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B70);
  }

  return result;
}

unint64_t sub_270749090()
{
  result = qword_280829B78;
  if (!qword_280829B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B78);
  }

  return result;
}

unint64_t sub_2707490E8()
{
  result = qword_280829B80;
  if (!qword_280829B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B80);
  }

  return result;
}

uint64_t ScaleGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t static ScaleEvent.dispatch(report:platform:)(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = *a3;
  type metadata accessor for ScaleGesture();
  *(swift_initStackObject() + 16) = v5;
  return ScaleGesture.dispatch(report:)(a1, a2);
}

uint64_t ScaleGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_270710834();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  ScaleEvent = IOHIDEventCreateScaleEvent();
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
      v18 = ScaleEvent;
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

uint64_t HIDReport.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_11();
  v77 = v10;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v76 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v75 = &v56 - v16;
  v74 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  if (OUTLINED_FUNCTION_9_9() < 8)
  {
    goto LABEL_43;
  }

  swift_getAssociatedConformanceWitness();
  sub_2707A8EB0();
  v73 = a5;
  sub_2707A8E80();
  v20 = a3 >> 62;
  v21 = a2;
  v22 = a1 & 7;
  v23 = a3;
  if ((a1 & 7) == 0)
  {
LABEL_15:
    v38 = OUTLINED_FUNCTION_9_9();
    v66 = BYTE6(v23);
    v67 = a2 >> 32;
    v70 = v77 + 8;
    v64 = a2 >> 16;
    v65 = a2 >> 8;
    v62 = HIDWORD(a2);
    v63 = a2 >> 24;
    v60 = HIWORD(a2);
    v61 = a2 >> 40;
    v59 = HIBYTE(a2);
    v58 = v23 >> 8;
    v57 = v23 >> 16;
    v39 = v20;
    while (2)
    {
      v40 = __OFSUB__(v38, 8);
      v38 -= 8;
      if (v40)
      {
        goto LABEL_44;
      }

      v41 = 0;
      v42 = v21;
      switch(v39)
      {
        case 1uLL:
          goto LABEL_24;
        case 2uLL:
          v42 = *(a2 + 16);
LABEL_24:
          if ((v42 - 0x1000000000000000) >> 61 == 7)
          {
            v41 = 8 * v42;
LABEL_18:
            v43 = a1 + v38;
            if (!__OFADD__(a1, v38))
            {
              v40 = __OFADD__(v41, v43);
              v44 = v41 + v43;
              if (!v40)
              {
                v77 = v21;
                v45 = v44 >> 3;
                v71 = a1;
                v72 = a2;
                v68 = v23;
                v69 = v39;
                switch(v39)
                {
                  case 1uLL:
                    if (v45 < v77 || v45 >= v67)
                    {
                      goto LABEL_50;
                    }

                    v52 = sub_2707A81F0();
                    if (!v52)
                    {
                      goto LABEL_57;
                    }

                    v48 = v52;
                    v53 = sub_2707A8210();
                    v50 = v45 - v53;
                    if (!__OFSUB__(v45, v53))
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_54;
                  case 2uLL:
                    if (v45 < *(a2 + 16))
                    {
                      goto LABEL_51;
                    }

                    if (v45 >= *(a2 + 24))
                    {
                      goto LABEL_53;
                    }

                    v47 = sub_2707A81F0();
                    if (!v47)
                    {
                      goto LABEL_58;
                    }

                    v48 = v47;
                    v49 = sub_2707A8210();
                    v50 = v45 - v49;
                    if (__OFSUB__(v45, v49))
                    {
                      goto LABEL_55;
                    }

LABEL_39:
                    v46 = *(v48 + v50);
LABEL_40:
                    LOBYTE(v78) = v46;
                    sub_27074A898();
                    OUTLINED_FUNCTION_11_7();
                    sub_2707A8A10();
                    v78 = v38;
                    sub_270710EEC();
                    v54 = v75;
                    sub_2707A89A0();
                    v55 = *v70;
                    (*v70)(v45, a4);
                    sub_2707A89B0();
                    result = v55(v54, a4);
                    v23 = v68;
                    v39 = v69;
                    a1 = v71;
                    a2 = v72;
                    v21 = v77;
                    if (v38 <= 0)
                    {
                      return result;
                    }

                    continue;
                  case 3uLL:
                    goto LABEL_56;
                  default:
                    if (v45 >= v66)
                    {
                      goto LABEL_52;
                    }

                    LOBYTE(v78) = v77;
                    BYTE1(v78) = v65;
                    BYTE2(v78) = v64;
                    BYTE3(v78) = v63;
                    BYTE4(v78) = v62;
                    BYTE5(v78) = v61;
                    BYTE6(v78) = v60;
                    HIBYTE(v78) = v59;
                    v79 = v23;
                    v80 = v58;
                    v81 = v57;
                    v82 = BYTE3(v23);
                    v83 = BYTE4(v23);
                    v84 = BYTE5(v23);
                    v46 = *(&v78 + v45);
                    goto LABEL_40;
                }
              }

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
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          __break(1u);
          break;
        default:
          goto LABEL_18;
      }

      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = 8 - v22;
  result = OUTLINED_FUNCTION_9_9();
  v26 = 0;
  v27 = 255 << v22;
  LODWORD(v70) = a1 & 7;
  v69 = 0xFFuLL >> v24;
  v28 = (v77 + 8);
  do
  {
    if (v20 == 1 || v20 == 2)
    {
      OUTLINED_FUNCTION_2_12();
      if (!v30)
      {
        __break(1u);
        goto LABEL_15;
      }

      v31 = 8 * v29;
    }

    else
    {
      v31 = 0;
    }

    if (__OFADD__(a1, v26))
    {
      goto LABEL_47;
    }

    if (__OFADD__(v31, a1 + v26))
    {
      goto LABEL_48;
    }

    v66 = result;
    v67 = v20;
    v77 = v21;
    v71 = a1;
    v32 = sub_2707A82E0();
    LODWORD(v65) = v27;
    v33 = (v32 & v27) >> v70;
    v72 = a2;
    v34 = v24;
    LOBYTE(v78) = ((sub_2707A82E0() & v69) << v24) | v33;
    sub_27074A898();
    OUTLINED_FUNCTION_11_7();
    sub_2707A8A10();
    v78 = v26;
    sub_270710EEC();
    v35 = v75;
    sub_2707A89A0();
    v36 = *v28;
    (*v28)(v21, a4);
    sub_2707A89B0();
    v36(v35, a4);
    v37 = v26 + 8;
    if (__OFADD__(v26, 8))
    {
      goto LABEL_49;
    }

    v26 += 8;
    result = v66;
    a1 = v71;
    a2 = v72;
    v21 = v77;
    v24 = v34;
    v20 = v67;
    v27 = v65;
  }

  while (v37 < v66);
  return result;
}

uint64_t HIDReport.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v81[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_11();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  if (sub_2707A8C00() < 8)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v13 = OUTLINED_FUNCTION_8_12();
  v78 = v4;
  v79 = a2;
  v5 = *v4;
  v6 = v4[1];
  v14 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    v15 = 0;
    switch(v6 >> 62)
    {
      case 1uLL:
      case 2uLL:
        goto LABEL_87;
      default:
        goto LABEL_4;
    }
  }

  while (2)
  {
    v20 = __OFSUB__(v13, 8);
    v13 -= 8;
    if (v20)
    {
      goto LABEL_93;
    }

    v46 = v6 >> 62;
    v47 = 0;
    v14 = v5;
    switch(v6 >> 62)
    {
      case 1uLL:
      case 2uLL:
        OUTLINED_FUNCTION_2_12();
        if (v55)
        {
          v47 = 8 * v54;
LABEL_51:
          v48 = v79 + v13;
          if (!__OFADD__(v79, v13))
          {
            v20 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (!v20)
            {
              v75 = v49 >> 3;
              v81[0] = v13;
              sub_270710EEC();
              OUTLINED_FUNCTION_3_8();
              OUTLINED_FUNCTION_14_5();
              sub_2707A8990();
              OUTLINED_FUNCTION_15_7();
              v10 = sub_2707A89D0();
              v50 = OUTLINED_FUNCTION_12_5();
              v77 = v51;
              v51(v50);
              switch(v46)
              {
                case 1:
                  v74 = v10;
                  v10 = v5 >> 32;
                  if (v75 < v5 || v75 >= v10)
                  {
                    goto LABEL_102;
                  }

                  if (OUTLINED_FUNCTION_16_6())
                  {
                    goto LABEL_74;
                  }

                  if (sub_2707A81F0() && __OFSUB__(v5, OUTLINED_FUNCTION_7_12()))
                  {
                    goto LABEL_109;
                  }

                  sub_2707A8220();
                  OUTLINED_FUNCTION_33();
                  OUTLINED_FUNCTION_18();
                  OUTLINED_FUNCTION_4();
                  v10 = sub_2707A81D0();

                  v6 = v10;
LABEL_74:
                  OUTLINED_FUNCTION_4_15();
                  if (!sub_2707A81F0())
                  {
                    goto LABEL_121;
                  }

                  v59 = OUTLINED_FUNCTION_7_12();
                  if (__OFSUB__(v75, v59))
                  {
                    goto LABEL_104;
                  }

                  *(v46 + v75 - v59) = v74;
                  v6 |= 0x4000000000000000uLL;
                  goto LABEL_84;
                case 2:
                  v56 = v75;
                  if (v75 < *(v5 + 16))
                  {
                    goto LABEL_101;
                  }

                  if (v75 >= *(v5 + 24))
                  {
                    goto LABEL_103;
                  }

                  if (OUTLINED_FUNCTION_16_6())
                  {
                    goto LABEL_79;
                  }

                  v73 = v10;
                  v46 = *(v5 + 16);
                  v57 = *(v5 + 24);
                  if (sub_2707A81F0() && __OFSUB__(v46, sub_2707A8210()))
                  {
                    goto LABEL_110;
                  }

                  if (__OFSUB__(v57, v46))
                  {
                    goto LABEL_108;
                  }

                  sub_2707A8220();
                  OUTLINED_FUNCTION_33();
                  OUTLINED_FUNCTION_18();
                  OUTLINED_FUNCTION_4();
                  v60 = sub_2707A81D0();

                  v6 = v60;
                  v56 = v75;
                  v10 = v73;
LABEL_79:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v46 = *(v5 + 24);
                    v76 = *(v5 + 16);
                    sub_2707A82B0();
                    v61 = v10;
                    v62 = swift_allocObject();
                    *(v62 + 16) = v76;
                    *(v62 + 24) = v46;

                    v5 = v62;
                    v10 = v61;
                  }

                  OUTLINED_FUNCTION_4_15();
                  if (!sub_2707A81F0())
                  {
                    goto LABEL_122;
                  }

                  v63 = OUTLINED_FUNCTION_7_12();
                  if (__OFSUB__(v56, v63))
                  {
                    goto LABEL_105;
                  }

                  *(v46 + v56 - v63) = v10;
                  v6 |= 0x8000000000000000;
LABEL_84:
                  if (v13 <= 0)
                  {
                    goto LABEL_85;
                  }

                  continue;
                case 3:
                  goto LABEL_120;
                default:
                  OUTLINED_FUNCTION_0_22();
                  if (v75 >= v52)
                  {
                    goto LABEL_100;
                  }

                  *(v81 + v75) = v10;
                  OUTLINED_FUNCTION_5_12();
                  v6 = v70 & 0xF00000000000000 | v53;
                  v70 = v6;
                  goto LABEL_84;
              }
            }

            goto LABEL_95;
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        __break(1u);
LABEL_87:
        OUTLINED_FUNCTION_2_12();
        if (v55)
        {
LABEL_4:
          if (!__OFADD__(v79, 8 * v15))
          {
            sub_2707A82E0();
            v81[0] = v14;
            sub_270710EEC();
            OUTLINED_FUNCTION_3_8();
            OUTLINED_FUNCTION_14_5();
            sub_2707A89A0();
            OUTLINED_FUNCTION_15_7();
            sub_2707A89D0();
            v5 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v16 = OUTLINED_FUNCTION_12_5();
            v77 = v17;
            v17(v16);
            sub_2707A82F0();
            v6 = 0;
            switch(v78[1] >> 62)
            {
              case 1uLL:
              case 2uLL:
                goto LABEL_89;
              default:
                goto LABEL_6;
            }
          }

          goto LABEL_96;
        }

        __break(1u);
LABEL_89:
        OUTLINED_FUNCTION_2_12();
        if (!v55)
        {
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_126:
        v6 = 8 * v65;
LABEL_6:
        v18 = OUTLINED_FUNCTION_8_12();
        v19 = v79 + v18;
        if (__OFADD__(v79, v18))
        {
          goto LABEL_97;
        }

        v20 = __OFADD__(v6, v19);
        v21 = v6 + v19;
        if (v20)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v6 = v21 >> 3;
        v5 = v78;
        sub_2707A82E0();
        v22 = OUTLINED_FUNCTION_8_12();
        if (__OFSUB__(v22, v14))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          *v78 = v5;
          v78[1] = v6;
          __break(1u);
LABEL_121:
          OUTLINED_FUNCTION_10_6(xmmword_2707A9D20);
          __break(1u);
LABEL_122:
          OUTLINED_FUNCTION_10_6(xmmword_2707A9D20);
          __break(1u);
        }

        v81[0] = v22 - v14;
        OUTLINED_FUNCTION_3_8();
        OUTLINED_FUNCTION_14_5();
        sub_2707A8990();
        OUTLINED_FUNCTION_15_7();
        sub_2707A89D0();
        v23 = OUTLINED_FUNCTION_12_5();
        v77(v23);
        sub_2707A82F0();
        if (v13 >= 9)
        {
          v5 = *v78;
          v6 = v78[1];
          v25 = v13 - 8;
          v26 = -v14;
          v27 = v79;
          while (1)
          {
            v28 = v6 >> 62;
            v29 = 0;
            v13 = v5;
            switch(v6 >> 62)
            {
              case 1uLL:
                v37 = v5;
                goto LABEL_19;
              case 2uLL:
                v37 = *(v5 + 16);
LABEL_19:
                if ((v37 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_91;
                }

                v29 = 8 * v37;
LABEL_12:
                v30 = v27 + v25;
                if (__OFADD__(v27, v25))
                {
                  goto LABEL_106;
                }

                v20 = __OFADD__(v29, v30);
                v31 = v29 + v30;
                if (v20)
                {
                  goto LABEL_107;
                }

                break;
              default:
                goto LABEL_12;
            }

            v32 = v27;
            v71 = v26;
            v72 = v31 >> 3;
            v69 = v25;
            v81[0] = v26 + v25;
            OUTLINED_FUNCTION_3_8();
            OUTLINED_FUNCTION_14_5();
            sub_2707A8990();
            OUTLINED_FUNCTION_15_7();
            v33 = sub_2707A89D0();
            v34 = OUTLINED_FUNCTION_12_5();
            v77(v34);
            v14 = 0xF000000000000000;
            switch(v28)
            {
              case 1:
                v68 = v33;
                v14 = v5 >> 32;
                if (v72 < v5 || v72 >= v14)
                {
                  goto LABEL_112;
                }

                if (OUTLINED_FUNCTION_16_6())
                {
                  goto LABEL_36;
                }

                if (sub_2707A81F0() && __OFSUB__(v5, OUTLINED_FUNCTION_7_12()))
                {
                  goto LABEL_118;
                }

                v28 = v14 - v5;
                sub_2707A8220();
                OUTLINED_FUNCTION_33();
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_4();
                v40 = sub_2707A81D0();

                v6 = v40;
LABEL_36:
                OUTLINED_FUNCTION_4_15();
                if (!sub_2707A81F0())
                {
                  OUTLINED_FUNCTION_10_6(xmmword_2707A9D20);
                  __break(1u);
LABEL_124:
                  OUTLINED_FUNCTION_10_6(xmmword_2707A9D20);
                  __break(1u);
LABEL_125:
                  v65 = v78;
                  *v78 = v5;
                  v78[1] = v6;
                  __break(1u);
                  goto LABEL_126;
                }

                v41 = OUTLINED_FUNCTION_7_12();
                v27 = v79;
                if (__OFSUB__(v72, v41))
                {
                  goto LABEL_115;
                }

                *(v28 + v72 - v41) = v68;
                v6 |= 0x4000000000000000uLL;
                v26 = v71;
                v24 = MEMORY[0x277D83B88];
LABEL_47:
                v25 = v69 - 8;
                if ((v69 + 8) <= 0x10)
                {
LABEL_85:
                  *v78 = v5;
                  v78[1] = v6;
                  return (v77)(a1, a4, v24);
                }

                break;
              case 2:
                if (v72 < *(v5 + 16))
                {
                  goto LABEL_111;
                }

                if (v72 >= *(v5 + 24))
                {
                  goto LABEL_114;
                }

                v67 = v33;
                if (OUTLINED_FUNCTION_16_6())
                {
                  goto LABEL_41;
                }

                v28 = *(v5 + 16);
                v38 = *(v5 + 24);
                if (sub_2707A81F0() && __OFSUB__(v28, sub_2707A8210()))
                {
                  goto LABEL_119;
                }

                if (__OFSUB__(v38, v28))
                {
                  goto LABEL_117;
                }

                sub_2707A8220();
                OUTLINED_FUNCTION_33();
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_4();
                v42 = sub_2707A81D0();

                v6 = v42;
                v32 = v79;
                v14 = 0xF000000000000000;
LABEL_41:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v28 = *(v5 + 16);
                  v43 = *(v5 + 24);
                  sub_2707A82B0();
                  v44 = swift_allocObject();
                  *(v44 + 16) = v28;
                  *(v44 + 24) = v43;

                  v5 = v44;
                }

                v13 = v72;
                OUTLINED_FUNCTION_4_15();
                if (!sub_2707A81F0())
                {
                  goto LABEL_124;
                }

                v45 = OUTLINED_FUNCTION_7_12();
                if (__OFSUB__(v72, v45))
                {
                  goto LABEL_116;
                }

                *(v28 + v72 - v45) = v67;
                v6 |= 0x8000000000000000;
                v26 = v71;
                v24 = MEMORY[0x277D83B88];
LABEL_46:
                v27 = v32;
                goto LABEL_47;
              case 3:
                goto LABEL_125;
              default:
                OUTLINED_FUNCTION_0_22();
                if (v72 >= v35)
                {
                  goto LABEL_113;
                }

                *(v81 + v72) = v33;
                OUTLINED_FUNCTION_5_12();
                v6 = v66 & 0xF00000000000000 | v36;
                v66 = v6;
                v26 = v71;
                goto LABEL_46;
            }
          }
        }

        return (v77)(a1, a4, v24);
      default:
        goto LABEL_51;
    }
  }
}

void (*HIDReport.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2, uint64_t a3)
{
  v13 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  OUTLINED_FUNCTION_1_11();
  *(v14 + 48) = v15;
  v17 = *(v16 + 64);
  v13[7] = __swift_coroFrameAllocStub(v17);
  v18 = __swift_coroFrameAllocStub(v17);
  v13[8] = v18;
  HIDReport.subscript.getter(a2, *v6, v6[1], a4, v18);
  return sub_27074A7C4;
}

void sub_27074A7C4(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[7];
  v5 = (*a1)[8];
  if (a2)
  {
    v6 = v3[6];
    v7 = v3[2];
    v8 = *v3;
    (*(v6 + 16))((*a1)[7], v5, v7);
    HIDReport.subscript.setter(v4, v8, v9, v7);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    HIDReport.subscript.setter((*a1)[8], *v3, a3, v3[2]);
  }

  free(v5);
  free(v4);

  free(v3);
}

unint64_t sub_27074A898()
{
  result = qword_280829B88;
  if (!qword_280829B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829B88);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void OUTLINED_FUNCTION_0_22()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  *(v2 - 94) = BYTE2(v0);
  *(v2 - 93) = BYTE3(v0);
  *(v2 - 92) = BYTE4(v0);
  *(v2 - 91) = BYTE5(v0);
  *(v2 - 90) = BYTE6(v0);
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_2707A81C0();
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return sub_2707A8210();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_2707A8C00();
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return sub_2707A8C00();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t FluidTouchGestureReportProtocol.swipeMask.getter()
{
  OUTLINED_FUNCTION_5_13();
  v0();
  v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_46();
  sub_270708D74(v2, v3);
  return v1;
}

uint64_t sub_27074AB04()
{
  OUTLINED_FUNCTION_5_13();
  v0();
  OUTLINED_FUNCTION_6_12();
  v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_17_4();
  sub_270708D74(v2, v3);
  return v1;
}

double FluidTouchGestureReportProtocol.delta.getter()
{
  OUTLINED_FUNCTION_9_5();
  v0 = FluidTouchGestureReportProtocol.x.getter();
  OUTLINED_FUNCTION_3_1();
  FluidTouchGestureReportProtocol.y.getter();
  return v0;
}

double FluidTouchGestureReportProtocol.velocity.getter()
{
  OUTLINED_FUNCTION_9_5();
  v0 = FluidTouchGestureReportProtocol.velocityX.getter();
  OUTLINED_FUNCTION_3_1();
  FluidTouchGestureReportProtocol.velocityY.getter();
  return v0;
}

uint64_t FluidTouchGestureReportProtocol.phase.setter()
{
  FluidTouchGestureReportProtocol.flags.getter();

  return FluidTouchGestureReportProtocol.flags.setter();
}

uint64_t FluidTouchGestureReportProtocol.delta.setter()
{
  OUTLINED_FUNCTION_9_5();
  FluidTouchGestureReportProtocol.x.setter(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_1();

  return FluidTouchGestureReportProtocol.y.setter(v3, v4, v5);
}

uint64_t FluidTouchGestureReportProtocol.swipeMask.setter()
{
  OUTLINED_FUNCTION_11_8();
  v1 = v0(v12);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  v10 = OUTLINED_FUNCTION_13_7(v2, v3, v4, v5, v6, v7, v8, v9, v12[0]);
  return v1(v10);
}

uint64_t sub_27074AD4C()
{
  OUTLINED_FUNCTION_11_8();
  v1 = v0(v12);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  v10 = OUTLINED_FUNCTION_13_7(v2, v3, v4, v5, v6, v7, v8, v9, v12[0]);
  return v1(v10);
}

uint64_t FluidTouchGestureReportProtocol.velocity.setter()
{
  OUTLINED_FUNCTION_9_5();
  FluidTouchGestureReportProtocol.velocityX.setter();
  OUTLINED_FUNCTION_3_1();

  return FluidTouchGestureReportProtocol.velocityY.setter();
}

uint64_t sub_27074AE20()
{
  result = sub_27074AE44();
  qword_2808375A0 = result;
  *algn_2808375A8 = v1;
  return result;
}

uint64_t sub_27074AE44()
{
  v1 = sub_27070E504(&unk_288075260);
  v106 = v1;
  v127 = v0;
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
  sub_270706C38(v106, v127);
  v104 = v127;
  v105 = v106;
  sub_270708D74(v106, v127);
  v4 = sub_27070E504(&unk_288075288);
  v107 = v4;
  v128 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v107, v128);
  v102 = v128;
  v103 = v107;
  sub_270708D74(v107, v128);
  v7 = sub_27070E504(&unk_2880752B0);
  v108 = v7;
  v129 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v108, v129);
  v100 = v129;
  v101 = v108;
  sub_270708D74(v108, v129);
  v10 = sub_27070E504(&unk_2880752D8);
  v109 = v10;
  v130 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v109, v130);
  v98 = v130;
  v99 = v109;
  sub_270708D74(v109, v130);
  v13 = sub_27070E504(&unk_288075300);
  v110 = v13;
  v131 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v110, v131);
  v97 = v110;
  v96 = v131;
  sub_270708D74(v110, v131);
  v16 = sub_27070E504(&unk_288075328);
  v111 = v16;
  v132 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v111, v132);
  v94 = v132;
  v95 = v111;
  sub_270708D74(v111, v132);
  v19 = sub_27070E504(&unk_288075350);
  v112 = v19;
  v133 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v112, v133);
  v92 = v133;
  v93 = v112;
  sub_270708D74(v112, v133);
  v22 = sub_27070E504(&unk_288075378);
  v113 = v22;
  v134 = v21;
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

  sub_270766E38(v23, v23, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v113, v134);
  v90 = v134;
  v91 = v113;
  sub_270708D74(v113, v134);
  v25 = sub_27070E504(&unk_2880753A0);
  v114 = v25;
  v135 = v24;
  v26 = 0;
  switch(v24 >> 62)
  {
    case 1uLL:
      v26 = v25 >> 32;
      break;
    case 2uLL:
      v26 = *(v25 + 24);
      break;
    case 3uLL:
      break;
    default:
      v26 = BYTE6(v24);
      break;
  }

  sub_270766E38(v26, v26, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v114, v135);
  v88 = v114;
  v89 = v135;
  sub_270708D74(v114, v135);
  v28 = sub_27070E504(&unk_2880753C8);
  v115 = v28;
  v136 = v27;
  v29 = 0;
  switch(v27 >> 62)
  {
    case 1uLL:
      v29 = v28 >> 32;
      break;
    case 2uLL:
      v29 = *(v28 + 24);
      break;
    case 3uLL:
      break;
    default:
      v29 = BYTE6(v27);
      break;
  }

  sub_270766E38(v29, v29, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v115, v136);
  v86 = v136;
  v87 = v115;
  sub_270708D74(v115, v136);
  v31 = sub_27070E504(&unk_2880753F0);
  v116 = v31;
  v137 = v30;
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

  sub_270766E38(v32, v32, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v116, v137);
  v84 = v137;
  v85 = v116;
  sub_270708D74(v116, v137);
  v34 = sub_27070E504(&unk_288075418);
  v117 = v34;
  v138 = v33;
  v35 = 0;
  switch(v33 >> 62)
  {
    case 1uLL:
      v35 = v34 >> 32;
      break;
    case 2uLL:
      v35 = *(v34 + 24);
      break;
    case 3uLL:
      break;
    default:
      v35 = BYTE6(v33);
      break;
  }

  sub_270766E38(v35, v35, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v117, v138);
  v82 = v138;
  v83 = v117;
  sub_270708D74(v117, v138);
  v37 = sub_27070E504(&unk_288075440);
  v118 = v37;
  v139 = v36;
  v38 = 0;
  switch(v36 >> 62)
  {
    case 1uLL:
      v38 = v37 >> 32;
      break;
    case 2uLL:
      v38 = *(v37 + 24);
      break;
    case 3uLL:
      break;
    default:
      v38 = BYTE6(v36);
      break;
  }

  sub_270766E38(v38, v38, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v118, v139);
  v80 = v139;
  v81 = v118;
  sub_270708D74(v118, v139);
  v40 = sub_27070E504(&unk_288075468);
  v119 = v40;
  v140 = v39;
  v41 = 0;
  switch(v39 >> 62)
  {
    case 1uLL:
      v41 = v40 >> 32;
      break;
    case 2uLL:
      v41 = *(v40 + 24);
      break;
    case 3uLL:
      break;
    default:
      v41 = BYTE6(v39);
      break;
  }

  sub_270766E38(v41, v41, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v119, v140);
  v78 = v140;
  v79 = v119;
  sub_270708D74(v119, v140);
  v43 = sub_27070E504(&unk_288075490);
  v120 = v43;
  v141 = v42;
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

  sub_270766E38(v44, v44, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v120, v141);
  v76 = v141;
  v77 = v120;
  sub_270708D74(v120, v141);
  v46 = sub_27070E504(&unk_2880754B8);
  v121 = v46;
  v142 = v45;
  v47 = 0;
  switch(v45 >> 62)
  {
    case 1uLL:
      v47 = v46 >> 32;
      break;
    case 2uLL:
      v47 = *(v46 + 24);
      break;
    case 3uLL:
      break;
    default:
      v47 = BYTE6(v45);
      break;
  }

  sub_270766E38(v47, v47, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v121, v142);
  v74 = v142;
  v75 = v121;
  sub_270708D74(v121, v142);
  v49 = sub_27070E504(&unk_2880754E0);
  v122 = v49;
  v143 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v51 = v143;
  sub_270706C38(v122, v143);
  v73 = v122;
  sub_270708D74(v122, v143);
  v53 = sub_27070E504(&unk_288075508);
  v123 = v53;
  v144 = v52;
  v54 = 0;
  switch(v52 >> 62)
  {
    case 1uLL:
      v54 = v53 >> 32;
      break;
    case 2uLL:
      v54 = *(v53 + 24);
      break;
    case 3uLL:
      break;
    default:
      v54 = BYTE6(v52);
      break;
  }

  sub_270766E38(v54, v54, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v55 = v123;
  v56 = v144;
  sub_270706C38(v123, v144);
  sub_270708D74(v123, v144);
  v58 = sub_27070E504(&unk_288075530);
  v124 = v58;
  v145 = v57;
  v59 = 0;
  switch(v57 >> 62)
  {
    case 1uLL:
      v59 = v58 >> 32;
      break;
    case 2uLL:
      v59 = *(v58 + 24);
      break;
    case 3uLL:
      break;
    default:
      v59 = BYTE6(v57);
      break;
  }

  sub_270766E38(v59, v59, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v60 = v124;
  v61 = v145;
  sub_270706C38(v124, v145);
  sub_270708D74(v124, v145);
  v63 = sub_27070E504(&unk_288075558);
  v125 = v63;
  v146 = v62;
  v64 = 0;
  switch(v62 >> 62)
  {
    case 1uLL:
      v64 = v63 >> 32;
      break;
    case 2uLL:
      v64 = *(v63 + 24);
      break;
    case 3uLL:
      break;
    default:
      v64 = BYTE6(v62);
      break;
  }

  sub_270766E38(v64, v64, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v65 = v125;
  v66 = v146;
  sub_270706C38(v125, v146);
  sub_270708D74(v125, v146);
  v68 = sub_27070E504(&unk_288075580);
  v126 = v68;
  v147 = v67;
  v69 = 0;
  switch(v67 >> 62)
  {
    case 1uLL:
      v69 = v68 >> 32;
      break;
    case 2uLL:
      v69 = *(v68 + 24);
      break;
    case 3uLL:
      break;
    default:
      v69 = BYTE6(v67);
      break;
  }

  sub_270766E38(v69, v69, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v126, v147);
  sub_270708D74(v126, v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  v70 = swift_allocObject();
  *(v70 + 32) = v105;
  *(v70 + 40) = v104;
  *(v70 + 72) = v103;
  *(v70 + 80) = v102;
  *(v70 + 112) = v101;
  *(v70 + 120) = v100;
  *(v70 + 152) = v99;
  *(v70 + 160) = v98;
  *(v70 + 192) = v97;
  *(v70 + 200) = v96;
  *(v70 + 232) = v95;
  *(v70 + 240) = v94;
  *(v70 + 16) = xmmword_2707AE8F0;
  *(v70 + 272) = v93;
  *(v70 + 280) = v92;
  *(v70 + 56) = &type metadata for ReportSize;
  *(v70 + 64) = &protocol witness table for ReportSize;
  *(v70 + 312) = v91;
  *(v70 + 320) = v90;
  *(v70 + 352) = v88;
  *(v70 + 96) = &type metadata for ReportCount;
  *(v70 + 104) = &protocol witness table for ReportCount;
  *(v70 + 360) = v89;
  *(v70 + 136) = &type metadata for Input;
  *(v70 + 144) = &protocol witness table for Input;
  *(v70 + 176) = &type metadata for ReportSize;
  *(v70 + 184) = &protocol witness table for ReportSize;
  *(v70 + 216) = &type metadata for ReportCount;
  *(v70 + 224) = &protocol witness table for ReportCount;
  *(v70 + 256) = &type metadata for Input;
  *(v70 + 264) = &protocol witness table for Input;
  *(v70 + 296) = &type metadata for ReportSize;
  *(v70 + 304) = &protocol witness table for ReportSize;
  *(v70 + 336) = &type metadata for ReportCount;
  *(v70 + 344) = &protocol witness table for ReportCount;
  *(v70 + 376) = &type metadata for Input;
  *(v70 + 384) = &protocol witness table for Input;
  *(v70 + 416) = &type metadata for ReportSize;
  *(v70 + 424) = &protocol witness table for ReportSize;
  *(v70 + 392) = v87;
  *(v70 + 400) = v86;
  *(v70 + 456) = &type metadata for ReportCount;
  *(v70 + 464) = &protocol witness table for ReportCount;
  *(v70 + 432) = v85;
  *(v70 + 440) = v84;
  *(v70 + 496) = &type metadata for Input;
  *(v70 + 504) = &protocol witness table for Input;
  *(v70 + 472) = v83;
  *(v70 + 480) = v82;
  *(v70 + 536) = &type metadata for ReportSize;
  *(v70 + 544) = &protocol witness table for ReportSize;
  *(v70 + 512) = v81;
  *(v70 + 520) = v80;
  *(v70 + 576) = &type metadata for ReportCount;
  *(v70 + 584) = &protocol witness table for ReportCount;
  *(v70 + 552) = v79;
  *(v70 + 560) = v78;
  *(v70 + 616) = &type metadata for Input;
  *(v70 + 624) = &protocol witness table for Input;
  *(v70 + 592) = v77;
  *(v70 + 600) = v76;
  *(v70 + 656) = &type metadata for ReportSize;
  *(v70 + 664) = &protocol witness table for ReportSize;
  *(v70 + 632) = v75;
  *(v70 + 640) = v74;
  *(v70 + 696) = &type metadata for ReportCount;
  *(v70 + 704) = &protocol witness table for ReportCount;
  *(v70 + 672) = v73;
  *(v70 + 680) = v51;
  *(v70 + 736) = &type metadata for Input;
  *(v70 + 744) = &protocol witness table for Input;
  *(v70 + 712) = v55;
  *(v70 + 720) = v56;
  *(v70 + 776) = &type metadata for ReportSize;
  *(v70 + 784) = &protocol witness table for ReportSize;
  *(v70 + 752) = v60;
  *(v70 + 760) = v61;
  *(v70 + 816) = &type metadata for ReportCount;
  *(v70 + 824) = &protocol witness table for ReportCount;
  *(v70 + 792) = v65;
  *(v70 + 800) = v66;
  *(v70 + 856) = &type metadata for Input;
  *(v70 + 864) = &protocol witness table for Input;
  *(v70 + 832) = v126;
  *(v70 + 840) = v147;
  v71 = static HIDReportDescriptor.Builder.buildBlock(_:)(v70);
  swift_setDeallocating();
  sub_27078DA0C();
  return v71;
}

uint64_t sub_27074BE04()
{
  result = sub_27074BFFC(12);
  qword_280829B90 = result;
  *algn_280829B98 = v1;
  return result;
}

uint64_t sub_27074BE88()
{
  result = sub_27074BFFC(11);
  qword_280829BA0 = result;
  *algn_280829BA8 = v1;
  return result;
}

uint64_t DockSwipeReport.report.setter()
{
  OUTLINED_FUNCTION_9_5();
  result = sub_270708D74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t sub_27074BF64()
{
  OUTLINED_FUNCTION_9_5();
  result = sub_270708D74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t sub_27074BF98@<X0>(uint64_t *a1@<X8>)
{
  result = DockSwipeReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27074BFD4()
{
  result = sub_27074BFFC(13);
  qword_280829BB0 = result;
  *algn_280829BB8 = v1;
  return result;
}

uint64_t sub_27074BFFC(char a1)
{
  if (qword_280829468 != -1)
  {
    swift_once();
  }

  v2 = qword_2808375A0;
  v3 = *algn_2808375A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707ADD30;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = a1;
  *(inited + 96) = &type metadata for HIDReportDescriptor;
  *(inited + 104) = &protocol witness table for HIDReportDescriptor;
  *(inited + 72) = v2;
  *(inited + 80) = v3;
  v5 = OUTLINED_FUNCTION_17_4();
  sub_270706C38(v5, v6);
  v7 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v7;
}

unint64_t FluidTouchGestureReportProtocol.flags.getter()
{
  OUTLINED_FUNCTION_5_13();
  v0();
  v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_46();
  sub_270708D74(v2, v3);
  return v1;
}

unint64_t sub_27074C1A4@<X0>(_BYTE *a1@<X8>)
{
  result = FluidTouchGestureReportProtocol.flags.getter();
  *a1 = result;
  return result;
}

uint64_t FluidTouchGestureReportProtocol.flags.setter()
{
  OUTLINED_FUNCTION_11_8();
  v1 = v0(v12);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  v10 = OUTLINED_FUNCTION_13_7(v2, v3, v4, v5, v6, v7, v8, v9, v12[0]);
  return v1(v10);
}

uint64_t (*FluidTouchGestureReportProtocol.flags.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_1_19(a1, a2, a3);
  *(v3 + 24) = FluidTouchGestureReportProtocol.flags.getter();
  return sub_27074C2B8;
}

unint64_t sub_27074C2E0@<X0>(_BYTE *a1@<X8>)
{
  result = FluidTouchGestureReportProtocol.phase.getter();
  *a1 = result;
  return result;
}

uint64_t (*FluidTouchGestureReportProtocol.phase.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_1_19(a1, a2, a3);
  *(v3 + 24) = FluidTouchGestureReportProtocol.phase.getter();
  return sub_27074C388;
}

uint64_t sub_27074C3B0@<X0>(_DWORD *a1@<X8>)
{
  result = FluidTouchGestureReportProtocol.swipeMask.getter();
  *a1 = result;
  return result;
}

uint64_t (*FluidTouchGestureReportProtocol.swipeMask.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_1_19(a1, a2, a3);
  *(v3 + 24) = FluidTouchGestureReportProtocol.swipeMask.getter();
  return sub_27074C458;
}

uint64_t sub_27074C480@<X0>(_WORD *a1@<X8>)
{
  result = FluidTouchGestureReportProtocol.gestureMotion.getter();
  *a1 = result;
  return result;
}

uint64_t (*FluidTouchGestureReportProtocol.gestureMotion.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_1_19(a1, a2, a3);
  *(v3 + 24) = FluidTouchGestureReportProtocol.gestureMotion.getter();
  return sub_27074C528;
}

uint64_t sub_27074C550@<X0>(_WORD *a1@<X8>)
{
  result = FluidTouchGestureReportProtocol.flavor.getter();
  *a1 = result;
  return result;
}

uint64_t (*FluidTouchGestureReportProtocol.flavor.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_1_19(a1, a2, a3);
  *(v3 + 24) = FluidTouchGestureReportProtocol.flavor.getter();
  return sub_27074C5F8;
}

uint64_t FluidTouchGestureReportProtocol.progress.modify(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13(a1, a2, a3);
  *v3 = FluidTouchGestureReportProtocol.progress.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t FluidTouchGestureReportProtocol.velocityX.modify(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13(a1, a2, a3);
  *v3 = FluidTouchGestureReportProtocol.velocityX.getter();
  return OUTLINED_FUNCTION_20();
}

double sub_27074C7D0()
{
  OUTLINED_FUNCTION_5_13();
  v0();
  OUTLINED_FUNCTION_6_12();
  v1 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  v2 = OUTLINED_FUNCTION_17_4();
  sub_270708D74(v2, v3);
  return vcvtd_n_f64_s32(v1, 0x10uLL);
}

uint64_t sub_27074C890()
{
  OUTLINED_FUNCTION_21_4();
  HIDFixed.init(doubleValue:)();
  v2 = (*(*(v0 + 8) + 24))(v13, v1);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  v11 = OUTLINED_FUNCTION_13_7(v3, v4, v5, v6, v7, v8, v9, v10, v13[0]);
  return v2(v11);
}

uint64_t FluidTouchGestureReportProtocol.velocityY.modify(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13(a1, a2, a3);
  *v3 = FluidTouchGestureReportProtocol.velocityY.getter();
  return OUTLINED_FUNCTION_20();
}

uint64_t FluidTouchGestureReportProtocol.x.modify(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13(a1, a2, a3);
  *v3 = FluidTouchGestureReportProtocol.x.getter();
  return OUTLINED_FUNCTION_20();
}

double sub_27074CA64()
{
  OUTLINED_FUNCTION_5_13();
  v0();
  OUTLINED_FUNCTION_6_12();
  v1 = sub_270710834();
  v2 = OUTLINED_FUNCTION_17_4();
  sub_270708D74(v2, v3);
  return v1;
}

uint64_t sub_27074CB2C(uint64_t a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a3;
  }

  v4 = (*(*(a2 + 8) + 24))(v15, a1);
  sub_270713BE0(v3);
  v13 = OUTLINED_FUNCTION_13_7(v5, v6, v7, v8, v9, v10, v11, v12, v15[0]);
  return v4(v13);
}

uint64_t FluidTouchGestureReportProtocol.y.modify(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13(a1, a2, a3);
  *v3 = FluidTouchGestureReportProtocol.y.getter();
  return OUTLINED_FUNCTION_20();
}

void (*FluidTouchGestureReportProtocol.velocity.modify())(double **a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_4();
  v4 = __swift_coroFrameAllocStub(0x30uLL);
  *v3 = v4;
  *(v4 + 4) = v0;
  *(v4 + 5) = v1;
  *(v4 + 3) = v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = FluidTouchGestureReportProtocol.velocity.getter();
  *(v4 + 1) = v5;
  v4[2] = 0.0;
  return sub_27074CCD8;
}

void sub_27074CCF0(uint64_t a1@<X1>, uint64_t a2@<X2>, double (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *(a4 + 8) = v5;
  *(a4 + 16) = 0;
}

void (*FluidTouchGestureReportProtocol.delta.modify())(double **a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_4();
  v4 = __swift_coroFrameAllocStub(0x30uLL);
  *v3 = v4;
  *(v4 + 4) = v0;
  *(v4 + 5) = v1;
  *(v4 + 3) = v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = FluidTouchGestureReportProtocol.delta.getter();
  *(v4 + 1) = v5;
  v4[2] = 0.0;
  return sub_27074CDD8;
}

void sub_27074CDF0(double **a1, uint64_t a2, void (*a3)(void, void, double, double))
{
  v3 = *a1;
  a3(*(*a1 + 3), *(*a1 + 4), *v3, v3[1]);

  free(v3);
}

__n128 sub_27074CE44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_13(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  return a2;
}

uint64_t KeyboardGesture.dispatch(keyboardReport:localCapsLockState:)(unint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = a3;
  v162 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v123 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v123 - v19;
  v146 = MEMORY[0x277D84F90];
  v160 = a1;
  v161 = a2;
  v21 = *(v4 + 32);
  v22 = OUTLINED_FUNCTION_10_7();
  sub_270706C38(v22, v23);
  OUTLINED_FUNCTION_6_13();
  v24 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if (v21 == 1)
  {
    if (((((v24 & 1) == 0) ^ a3) & 1) == 0)
    {
      v26 = a3;
      sub_270734E94(v4 + qword_280829BC0, v20);
      v27 = sub_2707A8440();
      if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
      {
        v24 = sub_270747CA0(v20);
      }

      else
      {
        v31 = sub_2707A8420();
        v32 = sub_2707A8840();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 67109376;
          OUTLINED_FUNCTION_0_24(v33, v26 & 1);
          OUTLINED_FUNCTION_12_6(&dword_270703000, v34, v35, "Caps Lock resync: %{BOOL}d -> %{BOOL}d");
          MEMORY[0x2743A9010](v33, -1, -1);
        }

        OUTLINED_FUNCTION_5_0();
        v24 = (*(v36 + 8))(v20, v27);
      }
    }

    v147 = 57;
    MEMORY[0x28223BE20](v24, v25);
    OUTLINED_FUNCTION_7_13();
    if (OUTLINED_FUNCTION_13_8(v37, v38))
    {
      OUTLINED_FUNCTION_6_13();
      HIDReport.offset(for:)(v39);
      OUTLINED_FUNCTION_6_13();
      if ((sub_2707A82E0() & 2) != 0)
      {
        OUTLINED_FUNCTION_6_13();
        HIDReport.offset(for:)(v40);
        OUTLINED_FUNCTION_6_13();
        sub_2707A82E0();
        sub_2707A82F0();
      }
    }

    goto LABEL_86;
  }

  if ((((v24 & 1) == 0) ^ a3))
  {
    goto LABEL_86;
  }

  v147 = 57;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_7_13();
  if (OUTLINED_FUNCTION_13_8(v28, v29))
  {
    sub_270734E94(v4 + qword_280829BC0, v17);
    v30 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
    {
      sub_270747CA0(v17);
    }

    else
    {
      v84 = sub_2707A8420();
      v85 = sub_2707A8840();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = a3;
        v88 = v86;
        *v86 = 67109376;
        OUTLINED_FUNCTION_0_24(v86, v87 & 1);
        _os_log_impl(&dword_270703000, v84, v85, "Caps Lock pressed, toggle state: %{BOOL}d -> %{BOOL}d", v88, 0xEu);
        MEMORY[0x2743A9010](v88, -1, -1);
      }

      OUTLINED_FUNCTION_5_0();
      (*(v89 + 8))(v17, v30);
    }

    goto LABEL_86;
  }

  v126 = a3;
  v41 = OUTLINED_FUNCTION_10_7();
  sub_270706C38(v41, v42);
  v129 = 0;
  v145 = a1;
  v142 = BYTE6(a2);
  v143 = a1 >> 32;
  v139 = a1 >> 16;
  v140 = a1 >> 8;
  v138 = a1 >> 24;
  v137 = HIDWORD(a1);
  v136 = a1 >> 40;
  v135 = HIWORD(a1);
  v134 = HIBYTE(a1);
  v133 = a2 >> 8;
  v43 = 1;
  v44 = a2 >> 62;
  v131 = v13;
  v144 = v44;
  v130 = v4;
  do
  {
    while ((v43 - 256) <= 0xFFFFFFFFFFFFFF00)
    {
LABEL_39:
      v53 = v43++ <= 230;
      if (!v53)
      {
        goto LABEL_73;
      }
    }

    v45 = v43 + 8;
    v46 = 0;
    switch(v44)
    {
      case 1uLL:
        v46 = v145;
        break;
      case 2uLL:
        v46 = *(a1 + 16);
        break;
      default:
        break;
    }

    v47 = v46 + (v45 >> 3);
    if (__OFADD__(v46, v45 >> 3))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    switch(v44)
    {
      case 1uLL:
        v53 = v47 >= v145 && v47 < v143;
        if (!v53)
        {
          goto LABEL_93;
        }

        v54 = sub_2707A81F0();
        if (!v54)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          JUMPOUT(0x27074DBCCLL);
        }

        v50 = v54;
        v55 = sub_2707A8210();
        v52 = v47 - v55;
        if (!__OFSUB__(v47, v55))
        {
          goto LABEL_37;
        }

        goto LABEL_95;
      case 2uLL:
        if (v47 < *(a1 + 16))
        {
          goto LABEL_92;
        }

        if (v47 >= *(a1 + 24))
        {
          goto LABEL_94;
        }

        v49 = sub_2707A81F0();
        if (!v49)
        {
          goto LABEL_107;
        }

        v50 = v49;
        v51 = sub_2707A8210();
        v52 = v47 - v51;
        if (__OFSUB__(v47, v51))
        {
          goto LABEL_96;
        }

LABEL_37:
        v48 = *(v50 + v52);
        v44 = v144;
LABEL_38:
        if ((v48 & (1 << (v43 & 7))) == 0)
        {
          goto LABEL_39;
        }

        v125 = v8;
        v124 = v43 + 1;
        swift_beginAccess();
        v56 = *(v4 + 16);
        v57 = *(v4 + 24);
        v58 = OUTLINED_FUNCTION_65();
        sub_270706C38(v58, v59);
        v60 = OUTLINED_FUNCTION_65();
        sub_270706C38(v60, v61);
        v141 = v57 >> 62;
        v132 = v56;
        v128 = v56 >> 32;
        v62 = 1;
        v127 = BYTE6(v57);
        break;
      case 3uLL:
        __break(1u);
        goto LABEL_106;
      default:
        if (v47 >= v142)
        {
          goto LABEL_91;
        }

        v147 = v145;
        v148 = v140;
        v149 = v139;
        v150 = v138;
        v151 = v137;
        v152 = v136;
        v153 = v135;
        v154 = v134;
        LOBYTE(v155) = a2;
        HIBYTE(v155) = v133;
        v156 = BYTE2(a2);
        v157 = BYTE3(a2);
        v158 = BYTE4(a2);
        v159 = BYTE5(a2);
        v48 = *(&v147 + v47);
        goto LABEL_38;
    }

    do
    {
      while ((v62 - 256) > 0xFFFFFFFFFFFFFF00)
      {
        v63 = v62 + 8;
        v64 = 0;
        switch(v141)
        {
          case 1:
            v64 = v132;
            break;
          case 2:
            v64 = *(v56 + 16);
            break;
          default:
            break;
        }

        v65 = v64 + (v63 >> 3);
        if (__OFADD__(v64, v63 >> 3))
        {
          goto LABEL_90;
        }

        v66 = 1 << (v62 & 7);
        switch(v141)
        {
          case 1:
            if (v65 < v132 || v65 >= v128)
            {
              goto LABEL_99;
            }

            v4 = (1 << (v62 & 7));
            v73 = sub_2707A81F0();
            if (!v73)
            {
              goto LABEL_109;
            }

            v69 = v73;
            v74 = sub_2707A8210();
            v71 = v65 - v74;
            if (!__OFSUB__(v65, v74))
            {
              goto LABEL_63;
            }

            goto LABEL_101;
          case 2:
            if (v65 < *(v56 + 16))
            {
              goto LABEL_97;
            }

            if (v65 >= *(v56 + 24))
            {
              goto LABEL_100;
            }

            v4 = (1 << (v62 & 7));
            v68 = sub_2707A81F0();
            if (!v68)
            {
              goto LABEL_110;
            }

            v69 = v68;
            v70 = sub_2707A8210();
            v71 = v65 - v70;
            if (__OFSUB__(v65, v70))
            {
              goto LABEL_102;
            }

LABEL_63:
            v67 = *(v69 + v71);
            v13 = v131;
            v66 = v4;
            v4 = v130;
LABEL_64:
            if ((v67 & v66) == 0)
            {
              goto LABEL_69;
            }

            if (v62 == v43)
            {
              v115 = OUTLINED_FUNCTION_65();
              sub_270708D74(v115, v116);
              v117 = OUTLINED_FUNCTION_65();
              sub_270708D74(v117, v118);
              v119 = OUTLINED_FUNCTION_10_7();
              sub_270708D74(v119, v120);
              goto LABEL_86;
            }

            v53 = v62++ > 0xE6;
            if (v53)
            {
              goto LABEL_71;
            }

            break;
          case 3:
            goto LABEL_108;
          default:
            if (v65 >= v127)
            {
              goto LABEL_98;
            }

            v147 = v132;
            v148 = BYTE1(v56);
            v149 = BYTE2(v56);
            v150 = BYTE3(v56);
            v151 = BYTE4(v56);
            v152 = BYTE5(v56);
            v153 = BYTE6(v56);
            v154 = HIBYTE(v56);
            v155 = v57;
            v156 = BYTE2(v57);
            v157 = BYTE3(v57);
            v158 = BYTE4(v57);
            v159 = BYTE5(v57);
            v67 = *(&v147 + v65);
            goto LABEL_64;
        }
      }

LABEL_69:
      v75 = __OFADD__(v62++, 1);
      if (v75)
      {
        goto LABEL_89;
      }
    }

    while (v62 <= 231);
LABEL_71:
    v76 = OUTLINED_FUNCTION_65();
    sub_270708D74(v76, v77);
    v78 = OUTLINED_FUNCTION_65();
    sub_270708D74(v78, v79);
    v75 = __OFADD__(v129++, 1);
    if (v75)
    {
      __break(1u);
    }

    v53 = v43 < 231;
    v8 = v125;
    v44 = v144;
    v43 = v124;
  }

  while (v53);
LABEL_73:
  v80 = OUTLINED_FUNCTION_10_7();
  sub_270708D74(v80, v81);
  if (!v129)
  {
    goto LABEL_86;
  }

  v82 = v126;
  sub_270734E94(v4 + qword_280829BC0, v13);
  v83 = sub_2707A8440();
  if (__swift_getEnumTagSinglePayload(v13, 1, v83) == 1)
  {
    sub_270747CA0(v13);
  }

  else
  {
    v90 = sub_2707A8420();
    v91 = sub_2707A8840();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 67109376;
      OUTLINED_FUNCTION_0_24(v92, v82 & 1);
      OUTLINED_FUNCTION_12_6(&dword_270703000, v93, v94, "Caps Lock resync: %{BOOL}d -> %{BOOL}d");
      MEMORY[0x2743A9010](v92, -1, -1);
    }

    OUTLINED_FUNCTION_5_0();
    (*(v95 + 8))(v13, v83);
  }

  mach_absolute_time();
  OUTLINED_FUNCTION_5_14();
  IOHIDEventCreateKeyboardEvent();
  sub_270713DA0();
  v97 = v96;
  if (*(v96 + 16) >= *(v96 + 24) >> 1)
  {
LABEL_103:
    OUTLINED_FUNCTION_8_13();
    v97 = v121;
  }

  OUTLINED_FUNCTION_2_14();
  mach_absolute_time();
  OUTLINED_FUNCTION_5_14();
  IOHIDEventCreateKeyboardEvent();
  if (*(v97 + 16) >= *(v97 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_13();
    v97 = v122;
  }

  OUTLINED_FUNCTION_2_14();
  v146 = v97;
LABEL_86:
  v98 = v160;
  v99 = v161;
  swift_beginAccess();
  v100 = *(v4 + 16);
  v101 = *(v4 + 24);
  sub_270706C38(v100, v101);
  v102 = OUTLINED_FUNCTION_0_15();
  v104 = sub_27074E348(v102, v103, v100, v101);
  sub_270708D74(v100, v101);
  sub_27077ADF0(v104);
  v105 = v146;
  v106 = OUTLINED_FUNCTION_0_15();
  sub_27074F46C(v106, v107, v105);
  v108 = *(v4 + 16);
  v109 = *(v4 + 24);
  *(v4 + 16) = v98;
  *(v4 + 24) = v99;
  v110 = OUTLINED_FUNCTION_0_15();
  sub_270706C38(v110, v111);
  sub_270708D74(v108, v109);
  v112 = OUTLINED_FUNCTION_0_15();
  sub_270708D74(v112, v113);
  return v105;
}

uint64_t AppleVendorTopCaseGesture.__allocating_init()()
{
  OUTLINED_FUNCTION_1_20();
  swift_allocObject();
  return _s12UniversalHID25AppleVendorTopCaseGestureCACycfc_0();
}

uint64_t AppleVendorKeyboardGesture.__allocating_init()()
{
  OUTLINED_FUNCTION_1_20();
  swift_allocObject();
  return _s12UniversalHID26AppleVendorKeyboardGestureCACycfc_0();
}

uint64_t ConsumerGesture.__allocating_init()()
{
  OUTLINED_FUNCTION_1_20();
  swift_allocObject();
  return _s12UniversalHID15ConsumerGestureCACycfc_0();
}

uint64_t KeyboardGesture.__allocating_init(logger:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8[-v4];
  v9 = 0;
  sub_270734E94(a1, &v8[-v4]);
  swift_allocObject();
  v6 = KeyboardGesture.init(platform:logger:)(&v9, v5);
  sub_270747CA0(a1);
  return v6;
}

uint64_t _s12UniversalHID25AppleVendorTopCaseGestureCACycfc_0()
{
  v1 = v0;
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  v5 = qword_280829778;
  v6 = qword_280829780;
  sub_270706C38(qword_280829778, qword_280829780);
  v2 = HIDReportDescriptor.reportBitCount(for:)(4u);
  sub_270708D74(v5, v6);
  *(v1 + 16) = HIDReport.init(bitCount:id:)(v2, 4);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t _s12UniversalHID26AppleVendorKeyboardGestureCACycfc_0()
{
  v1 = v0;
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  v5 = qword_280829828;
  v6 = qword_280829830;
  sub_270706C38(qword_280829828, qword_280829830);
  v2 = HIDReportDescriptor.reportBitCount(for:)(3u);
  sub_270708D74(v5, v6);
  *(v1 + 16) = HIDReport.init(bitCount:id:)(v2, 3);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t _s12UniversalHID15ConsumerGestureCACycfc_0()
{
  v1 = v0;
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  v5 = qword_280829AA0;
  v6 = *algn_280829AA8;
  sub_270706C38(qword_280829AA0, *algn_280829AA8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(2u);
  sub_270708D74(v5, v6);
  *(v1 + 16) = HIDReport.init(bitCount:id:)(v2, 2);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_27074DF18()
{
  v1 = v0;
  if (qword_280829440 != -1)
  {
    swift_once();
  }

  v5 = qword_2808297D8;
  v6 = qword_2808297E0;
  sub_270706C38(qword_2808297D8, qword_2808297E0);
  v2 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v5, v6);
  *(v1 + 16) = HIDReport.init(bitCount:id:)(v2, 1);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t GenericKeyboardGesture.init()()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8 - v4;
  (*(*(v6 + 88) + 32))(v2);
  (*(v3 + 32))(v1 + *(*v1 + 96), v5, v2);
  return v1;
}

uint64_t GenericKeyboardGesture.deinit()
{
  OUTLINED_FUNCTION_5_0();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_27074E12C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_10();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_5_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_27074E1C0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_10();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_27074E288()
{
  sub_270708D74(*(v0 + 16), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_1_20();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t GenericKeyboardGesture.__allocating_init()()
{
  v0 = swift_allocObject();
  GenericKeyboardGesture.init()();
  return v0;
}

uint64_t GenericKeyboardGesture.__deallocating_deinit()
{
  GenericKeyboardGesture.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27074E348(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_270706C38(a1, a2);
  sub_270706C38(a3, a4);
  sub_27072BFC0();
  sub_270706C38(a3, a4);
  sub_270706C38(a3, a4);
  sub_27072C024();
  sub_270708D74(a3, a4);
  v8 = sub_27074E840(a3, a4);
  sub_270708D74(a3, a4);
  sub_270706C38(a1, a2);
  sub_270706C38(a3, a4);
  sub_27072BFC0();
  sub_270706C38(a1, a2);
  sub_270706C38(a1, a2);
  sub_27072C024();
  sub_270708D74(a1, a2);
  v9 = sub_27074E840(a1, a2);
  sub_270708D74(a1, a2);
  sub_27077AD38(v9);
  v10 = sub_27070EE9C(v8);

  return v10;
}

uint64_t sub_27074E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v37 = a7;
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v32 = a2;
  v27 = a1;
  v38 = a11;
  v31 = *v11;
  v13 = *(a3 - 8);
  v29 = a10;
  v14 = MEMORY[0x28223BE20](a1, a2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v27 - v18;
  v30 = *(v13 + 16);
  v30(v16);
  sub_2707A8A30();
  v28 = *(v31 + 80);
  v51 = v28;
  v52 = a3;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v56 = v37;
  v20 = v33;
  v57 = v33;
  v58 = a9;
  v59 = a10;
  v60 = v38;
  v31 = sub_27074EB74(sub_27074FF30, v50, a3, &type metadata for KeyboardEvent, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v21);
  v22 = *(v13 + 8);
  v22(v19, a3);
  (v30)(v16, v27, a3);
  sub_2707A8A30();
  v40 = v28;
  v41 = a3;
  v42 = v34;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v20;
  v47 = a9;
  v48 = v29;
  v49 = v38;
  v24 = sub_27074EB74(sub_27074FF4C, v39, a3, &type metadata for KeyboardEvent, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v23);
  v22(v19, a3);
  v61 = v31;
  sub_27077AD38(v24);
  v25 = sub_27070EE9C(v61);

  return v25;
}

uint64_t sub_27074E840(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v23 = MEMORY[0x277D84F90];
  sub_2707A8B80();
  sub_270706C38(a1, a2);
  v4 = 1;
  while (v4 <= 231)
  {
    while ((v4 - 256) <= 0xFFFFFFFFFFFFFF00)
    {
LABEL_26:
      if (++v4 == 232)
      {
        goto LABEL_29;
      }
    }

    v5 = v4 + 8;
    v6 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        v6 = a1;
        break;
      case 2uLL:
        v6 = *(a1 + 16);
        break;
      default:
        break;
    }

    v7 = v6 + (v5 >> 3);
    if (__OFADD__(v6, v5 >> 3))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
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
    }

    switch(a2 >> 62)
    {
      case 1uLL:
        if (v7 < a1 || v7 >= a1 >> 32)
        {
          goto LABEL_33;
        }

        v14 = sub_2707A81F0();
        if (!v14)
        {
          goto LABEL_38;
        }

        v10 = v14;
        v15 = sub_2707A8210();
        v12 = v7 - v15;
        if (!__OFSUB__(v7, v15))
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      case 2uLL:
        if (v7 < *(a1 + 16))
        {
          goto LABEL_31;
        }

        if (v7 >= *(a1 + 24))
        {
          goto LABEL_34;
        }

        v9 = sub_2707A81F0();
        if (!v9)
        {
          goto LABEL_39;
        }

        v10 = v9;
        v11 = sub_2707A8210();
        v12 = v7 - v11;
        if (__OFSUB__(v7, v11))
        {
          goto LABEL_36;
        }

LABEL_24:
        v8 = *(v10 + v12);
LABEL_25:
        if ((v8 & (1 << (v4 & 7))) == 0)
        {
          goto LABEL_26;
        }

        mach_absolute_time();
        OUTLINED_FUNCTION_5_14();
        IOHIDEventCreateKeyboardEvent();
        sub_2707A8B50();
        sub_2707A8B90();
        sub_2707A8BA0();
        sub_2707A8B60();
        ++v4;
        break;
      case 3uLL:
        goto LABEL_37;
      default:
        if (v7 >= BYTE6(a2))
        {
          goto LABEL_32;
        }

        v17 = a1;
        v18 = a2;
        v19 = BYTE2(a2);
        v20 = BYTE3(a2);
        v21 = BYTE4(a2);
        v22 = BYTE5(a2);
        v8 = *(&v17 + v7);
        goto LABEL_25;
    }
  }

LABEL_29:
  sub_270708D74(a1, a2);
  return v23;
}

uint64_t sub_27074EB74(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v9 = v8;
  v65 = a2;
  v66 = a4;
  v64 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v52 = a5;
  v53 = &v47 - v16;
  v50 = *(a5 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v62 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v60 = &v47 - v21;
  v22 = sub_2707A8930();
  v48 = *(v22 - 8);
  v49 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v47 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v61 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v58 = *(a3 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v57 = &v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a6;
  v67 = swift_getAssociatedTypeWitness();
  v54 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v38);
  v40 = &v47 - v39;
  v41 = sub_2707A86B0();
  v68 = sub_2707A8BC0();
  v63 = sub_2707A8BD0();
  sub_2707A8B70();
  (*(v58 + 16))(v57, v55, a3);
  v66 = v40;
  v58 = a3;
  result = sub_2707A86A0();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v59 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2707A8940();
      result = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v64(v30, v60);
      if (v9)
      {
        (*(v54 + 8))(v66, v67);

        (*(v50 + 32))(v51, v60, v52);
        return (*v43)(v30, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v43)(v30, AssociatedTypeWitness);
      sub_2707A8BB0();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v44 = (v59 + 32);
  v45 = (v59 + 8);
  v46 = v53;
  while (1)
  {
    sub_2707A8940();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v54 + 8))(v66, v67);
      (*(v48 + 8))(v26, v49);
      return v68;
    }

    (*v44)(v46, v26, AssociatedTypeWitness);
    v64(v46, v62);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v45)(v46, AssociatedTypeWitness);
    sub_2707A8BB0();
  }

  (*v45)(v46, AssociatedTypeWitness);
  (*(v54 + 8))(v66, v67);

  return (*(v50 + 32))(v51, v62, v52);
}

uint64_t sub_27074F1E0@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(AssociatedTypeWitness, a4);
  (*(a4 + 24))(AssociatedTypeWitness, a4);
  mach_absolute_time();
  result = IOHIDEventCreateKeyboardEvent();
  *a1 = result;
  return result;
}

uint64_t GenericKeyboardGesture<>.dispatch(report:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v11 = *(*v6 + 80);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v26 - v17;
  sub_27074E12C(&v26 - v17);
  v25 = a3;
  v19 = a3;
  v20 = v28;
  v21 = sub_27074E4D4(a1, v18, v11, a2, v19, v27, v28, a2, v25, a6, a6);
  v29 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829BC8);
  v23 = sub_27074FC5C();
  Sequence<>.addRemoteTimestamp<A>(from:)(a1, v22, v11, v23, v20);
  (*(v12 + 16))(v15, a1, v11);
  sub_27074E1C0(v15);
  (*(v12 + 8))(v18, v11);
  return v21;
}

uint64_t sub_27074F46C(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_12;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27074F530);
      }

      if (v4 >= 39)
      {
        v8 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();

        return sub_27074F6F8(v8, a3);
      }

      return result;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t KeyboardGesture.init(platform:logger:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 32) = *a1;
  sub_270734E94(a2, v2 + qword_280829BC0);
  v4 = sub_27074DF18();
  sub_270747CA0(a2);
  return v4;
}

uint64_t KeyboardGesture.deinit()
{
  sub_270708D74(*(v0 + 16), *(v0 + 24));
  sub_270747CA0(v0 + qword_280829BC0);
  return v0;
}

uint64_t KeyboardGesture.__deallocating_deinit()
{
  sub_270708D74(*(v0 + 16), *(v0 + 24));
  sub_270747CA0(v0 + qword_280829BC0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27074F6F8(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v8 = result;
    v3 = sub_27070E734(&v8, &v9);
    v5 = v4;
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        __swift_project_boxed_opaque_existential_1(v7, v7[3]);
        HIDEventProtocol.addRemoteTimestampChildEvent(_:)();
        v7 += 5;
        --v6;
      }

      while (v6);
    }

    return sub_270708D74(v3, v5);
  }

  return result;
}

uint64_t sub_27074F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2707A8EA0() & 1;
  }
}

uint64_t sub_27074F820(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_270706C38(a3, a4);
  v7 = 1;
  do
  {
    while (v7 < 0x100 && v7)
    {
      v8 = v7 + 8;
      v9 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          v9 = a3;
          break;
        case 2uLL:
          v9 = *(a3 + 16);
          break;
        default:
          break;
      }

      v10 = v9 + (v8 >> 3);
      if (__OFADD__(v9, v8 >> 3))
      {
        goto LABEL_38;
      }

      switch(a4 >> 62)
      {
        case 1uLL:
          v16 = v10 >= a3 && v10 < a3 >> 32;
          if (!v16)
          {
            goto LABEL_41;
          }

          v17 = sub_2707A81F0();
          if (!v17)
          {
            goto LABEL_46;
          }

          v13 = v17;
          v18 = sub_2707A8210();
          v15 = v10 - v18;
          if (!__OFSUB__(v10, v18))
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        case 2uLL:
          if (v10 < *(a3 + 16))
          {
            goto LABEL_39;
          }

          if (v10 >= *(a3 + 24))
          {
            goto LABEL_42;
          }

          v12 = sub_2707A81F0();
          if (!v12)
          {
            goto LABEL_47;
          }

          v13 = v12;
          v14 = sub_2707A8210();
          v15 = v10 - v14;
          if (__OFSUB__(v10, v14))
          {
            goto LABEL_44;
          }

LABEL_24:
          v11 = *(v13 + v15);
LABEL_25:
          if ((v11 & (1 << (v7 & 7))) == 0)
          {
            goto LABEL_31;
          }

          LOBYTE(v24) = v7;
          v19 = a1(&v24);
          if (v4)
          {
            sub_270708D74(a3, a4);
            return v21 & 1;
          }

          if (v19)
          {
            sub_270708D74(a3, a4);
            v21 = 1;
            return v21 & 1;
          }

          v16 = v7++ > 0xE6;
          if (v16)
          {
            goto LABEL_33;
          }

          break;
        case 3uLL:
          goto LABEL_45;
        default:
          if (v10 >= BYTE6(a4))
          {
            goto LABEL_40;
          }

          v24 = a3;
          v25 = a4;
          v26 = BYTE2(a4);
          v27 = BYTE3(a4);
          v28 = BYTE4(a4);
          v29 = BYTE5(a4);
          v11 = *(&v24 + v10);
          goto LABEL_25;
      }
    }

LABEL_31:
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }
  }

  while (v7 <= 231);
LABEL_33:
  sub_270708D74(a3, a4);
  v21 = 0;
  return v21 & 1;
}

BOOL sub_27074FB68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_27074FC5C()
{
  result = qword_280829BD0;
  if (!qword_280829BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829BD0);
  }

  return result;
}

uint64_t sub_27074FD70()
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

void sub_27074FE68()
{
  sub_27073E600();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_0_24@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(result + 4) = a2;
  *(result + 8) = 1024;
  *(result + 10) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  *(v6 - 152) = v3;
  *(v6 - 144) = v4;
  *(v6 - 176) = v1;
  *(v0 + 16) = v2;

  return sub_27070F8A8((v6 - 176), v0 + 40 * v5 + 32);
}

void OUTLINED_FUNCTION_8_13()
{

  sub_270713DA0();
}

void OUTLINED_FUNCTION_12_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{

  return sub_27074F820(v2, a2, v4, v3);
}

uint64_t sub_270750160@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
      }

      v6 = v6;
LABEL_6:
      if (v6 == 16)
      {
        sub_270750314();
        sub_2707A81B0();
        sub_2707A83E0();
        sub_270708D74(a1, a2);
        v10 = sub_2707A8410();
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v10);
      }

      else
      {
LABEL_8:
        sub_270708D74(a1, a2);
        v12 = sub_2707A8410();

        return __swift_storeEnumTagSinglePayload(a3, 1, 1, v12);
      }

    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_8;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

unint64_t sub_270750314()
{
  result = qword_280829C98;
  if (!qword_280829C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829C98);
  }

  return result;
}

uint64_t PointerEvent.init(time:point:buttonMask:oldButtonMask:flags:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!((a3 | a2) >> 32))
  {
    return IOHIDEventCreateRelativePointerEvent();
  }

  __break(1u);
  return result;
}

uint64_t PointerEvent.x.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.y.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.z.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.buttonMask.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.buttonClickCount.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.buttonNumber.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return OUTLINED_FUNCTION_20();
}

uint64_t PointerEvent.buttonPressure.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  IOHIDEventGetFloatValue();
  *v2 = v3;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27075067C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.x.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707506B0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.y.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_2707506E4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.z.getter();
  *v1 = v3;
  return result;
}

uint64_t sub_270750718(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.buttonMask.getter();
  *v1 = result;
  return result;
}

uint64_t sub_27075074C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.buttonClickCount.getter();
  *v1 = result;
  return result;
}

uint64_t sub_270750780(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.buttonNumber.getter();
  *v1 = result;
  return result;
}

uint64_t sub_2707507B4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1);
  result = PointerEvent.buttonPressure.getter();
  *v1 = v3;
  return result;
}

uint64_t (*KeyboardEvent.down.modify(void *a1, uint64_t a2))()
{
  *a1 = a2;
  IntegerValue = IOHIDEventGetIntegerValue();
  OUTLINED_FUNCTION_2_16(IntegerValue);
  return sub_2707508F8;
}

uint64_t (*KeyboardEvent.pressCount.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  *a1 = IOHIDEventGetIntegerValue();
  return sub_27075097C;
}

uint64_t (*KeyboardEvent.repeat.modify(void *a1, uint64_t a2))()
{
  *a1 = a2;
  IntegerValue = IOHIDEventGetIntegerValue();
  OUTLINED_FUNCTION_2_16(IntegerValue);
  return sub_270750A08;
}

uint64_t KeyboardEvent.usage.getter(void *a1)
{
  v1 = a1;
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();

  return IntegerValue | (v3 << 16);
}

void (*sub_270750A80(uint64_t a1))(id *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = j_j__objc_retain(v3);
  IntegerValue = IOHIDEventGetIntegerValue();

  *(a1 + 8) = IntegerValue != 0;
  return sub_270750AF0;
}

void sub_270750AF0(id *a1)
{
  v1 = j_j__objc_retain(*a1);
  IOHIDEventSetIntegerValue();
}

BOOL sub_270750B48@<W0>(_BYTE *a1@<X8>)
{
  result = KeyboardEvent.down.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270750B84@<X0>(uint64_t *a1@<X8>)
{
  result = KeyboardEvent.pressCount.getter();
  *a1 = result;
  return result;
}

BOOL sub_270750BBC@<W0>(_BYTE *a1@<X8>)
{
  result = KeyboardEvent.repeat.getter();
  *a1 = result;
  return result;
}

unint64_t HIDEventFlags.init(rawValue:)(unint64_t result)
{
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

uint64_t sub_270750CF8@<X0>(_DWORD *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_0();
  *a1 = result;
  return result;
}

uint64_t sub_270750D2C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_2707A7F2C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_270750D5C(unsigned int *a1)
{
  v3 = OUTLINED_FUNCTION_1_22(a1);
  result = sub_27075E0D0(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_270750D88(unsigned int *a1)
{
  v3 = OUTLINED_FUNCTION_1_22(a1);
  result = sub_27075E248(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_270750DBC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2707A7F50(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_270750DF0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2707A7F58(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_270750E3C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_2707A7F3C(*a1, *v2);
  *a2 = result;
  return result;
}

_DWORD *sub_270750E94@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_270750EBC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_2707A7F48();
  *a1 = result;
  return result;
}

uint64_t (*HIDEventFlags.momentum.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*v1 >> 6) & 0x18 | (*v1 >> 28) & 7;
  return sub_270750FB8;
}

uint64_t (*HIDEventFlags.phase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 12) = HIBYTE(v2) & 0x8F;
  return sub_270751024;
}

uint64_t HIDEventFlags.description.getter(int a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(&unk_288076940 + v2 + 32);
    if ((v5 & a1) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27071A68C();
      }

      v6 = *(v4 + 16);
      if (v6 >= *(v4 + 24) >> 1)
      {
        sub_27071A68C();
      }

      *(v4 + 16) = v6 + 1;
      *(v4 + 4 * v6 + 32) = v5;
    }

    v2 += 4;
  }

  while (v2 != 36);
  v7 = *(v4 + 16);
  if (v7)
  {
    sub_27071A63C();
    v8 = 32;
    v9 = v3;
    OUTLINED_FUNCTION_0_27();
    v17 = v16 & 0xFFFF0000FFFFLL | 0xEC00000064650000;
    do
    {
      v18 = *(v4 + v8);
      if (v18)
      {
        v26 = 0xE800000000000000;
        v24 = 0x6574756C6F736261;
      }

      else if ((v18 & 0x10000) != 0)
      {
        v24 = v10;
        v26 = 0xEB00000000646574;
      }

      else if ((v18 & 0x10) != 0)
      {
        v26 = 0xE700000000000000;
        v24 = v11;
      }

      else if ((v18 & 8) != 0)
      {
        v24 = v13;
        v26 = v12;
      }

      else if ((v18 & 2) != 0)
      {
        v24 = v14;
        v26 = 0xEA00000000006E6FLL;
      }

      else if (v18 >> 28)
      {
        v26 = 0xE600000000000000;
        v24 = v15;
      }

      else if ((v18 & 0x20) != 0)
      {
        v24 = 0x6C6F707265746E69;
        v26 = v17;
      }

      else if ((v18 & 4) != 0)
      {
        v26 = 0xEA00000000007374;
        v24 = 0x696E556C65786970;
      }

      else if ((v18 & 0x800000) != 0)
      {
        v26 = 0xE400000000000000;
        v24 = 1869768058;
      }

      else if (((v18 >> 6) & 0x18) != 0)
      {
        v19 = v10;
        v20 = v11;
        v21 = v12;
        v22 = v13;
        v23 = HIDScrollMomentum.description.getter((v18 >> 6) & 0x18);
        v17 = 0xEC00000064657461;
        v15 = 0x65726F6E6769;
        v14 = 0x697463656C6C6F63;
        v13 = v22;
        v12 = v21;
        v11 = v20;
        v10 = v19;
        v24 = v23;
        v26 = v25;
      }

      else
      {
        if (HIBYTE(v18))
        {
          v27 = HIDEventPhase.description.getter(HIBYTE(v18));
        }

        else
        {
          v27 = sub_2707A8E70();
        }

        v24 = v27;
        v26 = v28;
        OUTLINED_FUNCTION_0_27();
        v17 = v29 & 0xFFFF0000FFFFLL | 0xEC00000064650000;
      }

      v35 = v9;
      v30 = *(v9 + 16);
      if (v30 >= *(v9 + 24) >> 1)
      {
        v32 = v10;
        sub_27071A63C();
        v17 = 0xEC00000064657461;
        v15 = 0x65726F6E6769;
        v14 = 0x697463656C6C6F63;
        v13 = 0x724F7265746E6563;
        v12 = 0xEC0000006E696769;
        v11 = 0x6E69746C697562;
        v10 = v32;
        v9 = v35;
      }

      *(v9 + 16) = v30 + 1;
      v31 = v9 + 16 * v30;
      *(v31 + 32) = v24;
      *(v31 + 40) = v26;
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829630);
  sub_27071A810(&qword_280829638, &qword_280829630);
  v33 = sub_2707A8550();

  return v33;
}

unint64_t sub_2707514D0()
{
  result = qword_280829CA0;
  if (!qword_280829CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829CA0);
  }

  return result;
}

unint64_t sub_270751528()
{
  result = qword_280829CA8;
  if (!qword_280829CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829CA8);
  }

  return result;
}

unint64_t sub_2707515C4()
{
  result = qword_280829CC0;
  if (!qword_280829CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829CC0);
  }

  return result;
}

unint64_t sub_27075161C()
{
  result = qword_280829CC8;
  if (!qword_280829CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829CC8);
  }

  return result;
}

uint64_t sub_270751670(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_1_22(a1);
  result = HIDEventFlags.momentum.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2707516C0(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_1_22(a1);
  result = HIDEventFlags.phase.getter(v2);
  *v1 = result;
  return result;
}

uint64_t ScrollCollection.init()()
{
  if (qword_280829490 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  v1 = qword_280829CE0;

  return HIDReport.init(bitCount:id:)(v1, 0);
}

void ScrollCollection.phase.setter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_10_8(v0);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t sub_270751840()
{
  result = sub_270751864();
  qword_280829CD0 = result;
  *algn_280829CD8 = v1;
  return result;
}

uint64_t sub_270751864()
{
  v1 = sub_27070E504(&unk_2880740E0);
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
  v3 = sub_2707519E4();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288074108);
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

uint64_t sub_2707519E4()
{
  if (qword_280829498 != -1)
  {
    swift_once();
  }

  v0 = unk_280829CF0;
  v36 = qword_280829CE8;
  LOBYTE(v37) = 5;
  v1 = sub_27074110C(&v37, 0xFF00uLL);
  v34 = v2;
  v35 = v1;
  LOBYTE(v37) = 17;
  v3 = sub_27074110C(&v37, 0x102uLL);
  v32 = v4;
  v33 = v3;
  v6 = sub_27070E504(&unk_288074040);
  v37 = v6;
  v38 = v5;
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

  sub_270766E38(v7, v7, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v8 = v37;
  v9 = v38;
  sub_270706C38(v37, v38);
  sub_270708D74(v8, v9);
  LOBYTE(v37) = 7;
  v10 = sub_270740DC4(&v37, 255);
  v30 = v11;
  v31 = v10;
  v13 = sub_27070E504(&unk_288074068);
  v37 = v13;
  v38 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v15 = v37;
  v16 = v38;
  sub_270706C38(v37, v38);
  sub_270708D74(v15, v16);
  v18 = sub_27070E504(&unk_288074090);
  v37 = v18;
  v38 = v17;
  v19 = 0;
  switch(v17 >> 62)
  {
    case 1uLL:
      v19 = v18 >> 32;
      break;
    case 2uLL:
      v19 = *(v18 + 24);
      break;
    case 3uLL:
      break;
    default:
      v19 = BYTE6(v17);
      break;
  }

  sub_270766E38(v19, v19, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v21 = v37;
  v20 = v38;
  sub_270706C38(v37, v38);
  sub_270708D74(v21, v20);
  v23 = sub_27070E504(&unk_2880740B8);
  v37 = v23;
  v38 = v22;
  v24 = 0;
  switch(v22 >> 62)
  {
    case 1uLL:
      v24 = v23 >> 32;
      break;
    case 2uLL:
      v24 = *(v23 + 24);
      break;
    case 3uLL:
      break;
    default:
      v24 = BYTE6(v22);
      break;
  }

  sub_270766E38(v24, v24, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v25 = v37;
  v26 = v38;
  sub_270706C38(v37, v38);
  sub_270708D74(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AEF70;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 7;
  *(inited + 96) = &type metadata for HIDReportDescriptor;
  *(inited + 104) = &protocol witness table for HIDReportDescriptor;
  *(inited + 72) = v36;
  *(inited + 80) = v0;
  *(inited + 136) = &type metadata for UsagePage;
  *(inited + 144) = &protocol witness table for UsagePage;
  *(inited + 112) = v35;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for Usage;
  *(inited + 184) = &protocol witness table for Usage;
  *(inited + 152) = v33;
  *(inited + 160) = v32;
  *(inited + 216) = &type metadata for LogicalMinimum;
  *(inited + 224) = &protocol witness table for LogicalMinimum;
  *(inited + 192) = v8;
  *(inited + 200) = v9;
  *(inited + 256) = &type metadata for LogicalMaximum;
  *(inited + 264) = &protocol witness table for LogicalMaximum;
  *(inited + 232) = v31;
  *(inited + 240) = v30;
  *(inited + 296) = &type metadata for ReportSize;
  *(inited + 304) = &protocol witness table for ReportSize;
  *(inited + 272) = v15;
  *(inited + 280) = v16;
  *(inited + 336) = &type metadata for ReportCount;
  *(inited + 344) = &protocol witness table for ReportCount;
  *(inited + 312) = v21;
  *(inited + 320) = v20;
  *(inited + 376) = &type metadata for Input;
  *(inited + 384) = &protocol witness table for Input;
  *(inited + 352) = v25;
  *(inited + 360) = v26;
  sub_270706C38(v36, v0);
  v28 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v28;
}

uint64_t sub_270751EA4()
{
  if (qword_280829498 != -1)
  {
    swift_once();
  }

  v2 = qword_280829CE8;
  v3 = qword_280829CF0;
  sub_270706C38(qword_280829CE8, qword_280829CF0);
  v0 = HIDReportDescriptor.reportBitCount(for:)(0);
  result = sub_270708D74(v2, v3);
  qword_280829CE0 = v0;
  return result;
}

uint64_t static ScrollCollection.bitCount.getter()
{
  if (qword_280829490 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  return qword_280829CE0;
}

uint64_t sub_270751F6C()
{
  result = sub_270751F90();
  qword_280829CE8 = result;
  unk_280829CF0 = v1;
  return result;
}

uint64_t sub_270751F90()
{
  v1 = sub_27070E504(&unk_288073FF0);
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

  sub_270766E38(v2, v2, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_270752110();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288074018);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for LogicalCollection;
  *(inited + 64) = &protocol witness table for LogicalCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_270752110()
{
  v1 = sub_27070E504(&unk_288073DC0);
  v71 = v1;
  v85 = v0;
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
  sub_270706C38(v71, v85);
  v69 = v85;
  v70 = v71;
  sub_270708D74(v71, v85);
  v4 = sub_27070E504(&unk_288073DE8);
  v72 = v4;
  v86 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v72, v86);
  v67 = v86;
  v68 = v72;
  sub_270708D74(v72, v86);
  v7 = sub_27070E504(&unk_288073E10);
  v73 = v7;
  v87 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v87);
  v65 = v87;
  v66 = v73;
  sub_270708D74(v73, v87);
  v10 = sub_27070E504(&unk_288073E38);
  v74 = v10;
  v88 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v74, v88);
  v63 = v88;
  v64 = v74;
  sub_270708D74(v74, v88);
  v13 = sub_27070E504(&unk_288073E60);
  v75 = v13;
  v89 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 48);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v75, v89);
  v61 = v89;
  v62 = v75;
  sub_270708D74(v75, v89);
  v16 = sub_27070E504(&unk_288073E88);
  v76 = v16;
  v90 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 49);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v76, v90);
  v59 = v90;
  v60 = v76;
  sub_270708D74(v76, v90);
  v19 = sub_27070E504(&unk_288073EB0);
  v77 = v19;
  v91 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 129);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v77, v91);
  v57 = v91;
  v58 = v77;
  sub_270708D74(v77, v91);
  v22 = sub_27070E504(&unk_288073ED8);
  v78 = v22;
  v92 = v21;
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

  sub_270766E38(v23, v23, 127);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v78, v92);
  v55 = v92;
  v56 = v78;
  sub_270708D74(v78, v92);
  v25 = sub_27070E504(&unk_288073F00);
  v79 = v25;
  v93 = v24;
  v26 = 0;
  switch(v24 >> 62)
  {
    case 1uLL:
      v26 = v25 >> 32;
      break;
    case 2uLL:
      v26 = *(v25 + 24);
      break;
    case 3uLL:
      break;
    default:
      v26 = BYTE6(v24);
      break;
  }

  sub_270766E38(v26, v26, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v79, v93);
  v53 = v93;
  v54 = v79;
  sub_270708D74(v79, v93);
  v28 = sub_27070E504(&unk_288073F28);
  v80 = v28;
  v94 = v27;
  v29 = 0;
  switch(v27 >> 62)
  {
    case 1uLL:
      v29 = v28 >> 32;
      break;
    case 2uLL:
      v29 = *(v28 + 24);
      break;
    case 3uLL:
      break;
    default:
      v29 = BYTE6(v27);
      break;
  }

  sub_270766E38(v29, v29, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v30 = v94;
  sub_270706C38(v80, v94);
  v52 = v80;
  sub_270708D74(v80, v94);
  v32 = sub_27070E504(&unk_288073F50);
  v81 = v32;
  v95 = v31;
  v33 = 0;
  switch(v31 >> 62)
  {
    case 1uLL:
      v33 = v32 >> 32;
      break;
    case 2uLL:
      v33 = *(v32 + 24);
      break;
    case 3uLL:
      break;
    default:
      v33 = BYTE6(v31);
      break;
  }

  sub_270766E38(v33, v33, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v34 = v81;
  v35 = v95;
  sub_270706C38(v81, v95);
  sub_270708D74(v81, v95);
  v37 = sub_27070E504(&unk_288073F78);
  v82 = v37;
  v96 = v36;
  v38 = 0;
  switch(v36 >> 62)
  {
    case 1uLL:
      v38 = v37 >> 32;
      break;
    case 2uLL:
      v38 = *(v37 + 24);
      break;
    case 3uLL:
      break;
    default:
      v38 = BYTE6(v36);
      break;
  }

  sub_270766E38(v38, v38, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v39 = v82;
  v40 = v96;
  sub_270706C38(v82, v96);
  sub_270708D74(v82, v96);
  v42 = sub_27070E504(&unk_288073FA0);
  v83 = v42;
  v97 = v41;
  v43 = 0;
  switch(v41 >> 62)
  {
    case 1uLL:
      v43 = v42 >> 32;
      break;
    case 2uLL:
      v43 = *(v42 + 24);
      break;
    case 3uLL:
      break;
    default:
      v43 = BYTE6(v41);
      break;
  }

  sub_270766E38(v43, v43, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v83;
  v45 = v97;
  sub_270706C38(v83, v97);
  sub_270708D74(v83, v97);
  v47 = sub_27070E504(&unk_288073FC8);
  v84 = v47;
  v98 = v46;
  v48 = 0;
  switch(v46 >> 62)
  {
    case 1uLL:
      v48 = v47 >> 32;
      break;
    case 2uLL:
      v48 = *(v47 + 24);
      break;
    case 3uLL:
      break;
    default:
      v48 = BYTE6(v46);
      break;
  }

  sub_270766E38(v48, v48, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v84, v98);
  sub_270708D74(v84, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AB530;
  *(inited + 56) = &type metadata for ReportSize;
  *(inited + 64) = &protocol witness table for ReportSize;
  *(inited + 32) = v70;
  *(inited + 40) = v69;
  *(inited + 96) = &type metadata for ReportCount;
  *(inited + 104) = &protocol witness table for ReportCount;
  *(inited + 72) = v68;
  *(inited + 80) = v67;
  *(inited + 136) = &type metadata for Input;
  *(inited + 144) = &protocol witness table for Input;
  *(inited + 112) = v66;
  *(inited + 120) = v65;
  *(inited + 176) = &type metadata for UsagePage;
  *(inited + 184) = &protocol witness table for UsagePage;
  *(inited + 152) = v64;
  *(inited + 160) = v63;
  *(inited + 216) = &type metadata for Usage;
  *(inited + 224) = &protocol witness table for Usage;
  *(inited + 192) = v62;
  *(inited + 200) = v61;
  *(inited + 256) = &type metadata for Usage;
  *(inited + 264) = &protocol witness table for Usage;
  *(inited + 232) = v60;
  *(inited + 240) = v59;
  *(inited + 296) = &type metadata for LogicalMinimum;
  *(inited + 304) = &protocol witness table for LogicalMinimum;
  *(inited + 272) = v58;
  *(inited + 280) = v57;
  *(inited + 336) = &type metadata for LogicalMaximum;
  *(inited + 344) = &protocol witness table for LogicalMaximum;
  *(inited + 312) = v56;
  *(inited + 320) = v55;
  *(inited + 376) = &type metadata for ReportSize;
  *(inited + 384) = &protocol witness table for ReportSize;
  *(inited + 352) = v54;
  *(inited + 360) = v53;
  *(inited + 416) = &type metadata for ReportCount;
  *(inited + 424) = &protocol witness table for ReportCount;
  *(inited + 392) = v52;
  *(inited + 400) = v30;
  *(inited + 456) = &type metadata for Input;
  *(inited + 464) = &protocol witness table for Input;
  *(inited + 432) = v34;
  *(inited + 440) = v35;
  *(inited + 496) = &type metadata for ReportSize;
  *(inited + 504) = &protocol witness table for ReportSize;
  *(inited + 472) = v39;
  *(inited + 480) = v40;
  *(inited + 536) = &type metadata for ReportCount;
  *(inited + 544) = &protocol witness table for ReportCount;
  *(inited + 512) = v44;
  *(inited + 520) = v45;
  *(inited + 576) = &type metadata for Input;
  *(inited + 584) = &protocol witness table for Input;
  *(inited + 552) = v84;
  *(inited + 560) = v98;
  v50 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v50;
}

uint64_t ScrollReport.report.getter()
{
  OUTLINED_FUNCTION_18_1();
  sub_270706C38(v1, v2);
  return v0;
}

uint64_t ScrollReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270752C70@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_270752CD0@<X0>(_BYTE *a1@<X8>)
{
  result = ScrollCollection.flags.getter();
  *a1 = result;
  return result;
}

void (*ScrollCollection.flags.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270752D50;
}

unint64_t sub_270752DA4@<X0>(_BYTE *a1@<X8>)
{
  result = ScrollCollection.phase.getter();
  *a1 = result;
  return result;
}

void (*ScrollCollection.phase.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x8F;
  return sub_270752E20;
}

void sub_270752E20()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_10_8(v0);
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

unint64_t sub_270752E68@<X0>(_BYTE *a1@<X8>)
{
  result = ScrollCollection.momentum.getter();
  *a1 = result;
  return result;
}

void (*ScrollCollection.momentum.modify(void *a1))()
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270719980;
}

uint64_t sub_270752F10@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollCollection.x.getter();
  *a1 = result;
  return result;
}

uint64_t ScrollCollection.x.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27075300C@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollCollection.y.getter();
  *a1 = result;
  return result;
}

uint64_t ScrollCollection.y.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return OUTLINED_FUNCTION_20();
}

uint64_t ScrollCollection.accelX.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

void sub_2707531F0()
{
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v0);

  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t ScrollCollection.accelY.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_0_17(a1);
  *v1 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  return OUTLINED_FUNCTION_20();
}

void sub_27075327C()
{
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v0);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t ScrollCollection.init(scrollEvent:)(void *a1)
{
  if (qword_280829490 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  v9 = HIDReport.init(bitCount:id:)(qword_280829CE0, 0);
  IOHIDEventGetScrollMomentum();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  IOHIDEventGetPhase();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  ScrollCollection.delta.setter();
  v2 = sub_27075AF10(a1);
  if (v2)
  {
    v3 = v2;
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    HIDFixed.init(doubleValue:)();
    OUTLINED_FUNCTION_1_23(v4);
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
    HIDFixed.init(doubleValue:)();
    OUTLINED_FUNCTION_1_23(v5);
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  }

  else
  {
    HIDFixed.init(doubleValue:)();
    OUTLINED_FUNCTION_1_23(v6);
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
    HIDFixed.init(doubleValue:)();
    OUTLINED_FUNCTION_1_23(v7);
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  }

  return v9;
}

void ScrollCollection.delta.setter()
{
  OUTLINED_FUNCTION_14_7();
  if (!(v2 ^ v3 | v1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v0 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_17_5();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  OUTLINED_FUNCTION_14_7();
  if (!(v2 ^ v3 | v1))
  {
    goto LABEL_14;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_17_5();

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

void ScrollCollection.accelDelta.setter()
{
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v0);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v1);

  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t ScrollReport.scrollCollectionRange.getter()
{
  if (qword_280829490 != -1)
  {
    result = OUTLINED_FUNCTION_0_28();
  }

  if (((qword_280829CE0 >> 3) & 0x8000000000000000) == 0)
  {
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t ScrollReport.scrollCollection.getter()
{
  OUTLINED_FUNCTION_18_1();
  result = sub_270706C38(v2, v3);
  if (qword_280829490 != -1)
  {
    result = OUTLINED_FUNCTION_0_28();
  }

  if (qword_280829CE0 >> 3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_2707A82D0();
    v7 = v6;
    sub_270708D74(v1, v0);

    return sub_27070E5A4(v5, v7);
  }

  return result;
}

uint64_t sub_27075366C@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollReport.scrollCollection.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ScrollReport.scrollCollection.setter()
{
  v10 = *v0;
  v11 = *(v0 + 8);
  result = sub_270706C38(*v0, v11);
  if (qword_280829490 != -1)
  {
    result = OUTLINED_FUNCTION_0_28();
  }

  if (qword_280829CE0 >> 3 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_58();
    sub_270706C38(v2, v3);
    v4 = OUTLINED_FUNCTION_58();
    sub_27070F3C4(v4, v5);
    v6 = OUTLINED_FUNCTION_58();
    sub_270708D74(v6, v7);
    v8 = OUTLINED_FUNCTION_58();
    sub_270708D74(v8, v9);
    result = sub_270708D74(*v0, *(v0 + 8));
    *v0 = v10;
    *(v0 + 8) = v11;
  }

  return result;
}

uint64_t ScrollReport.scrollCollection.modify(uint64_t *a1)
{
  a1[2] = v1;
  v4 = *v1;
  v3 = v1[1];
  result = sub_270706C38(*v1, v3);
  if (qword_280829490 != -1)
  {
    result = OUTLINED_FUNCTION_0_28();
  }

  if (qword_280829CE0 >> 3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_2707A82D0();
    v8 = v7;
    sub_270708D74(v4, v3);
    *a1 = sub_27070E5A4(v6, v8);
    a1[1] = v9;
    return OUTLINED_FUNCTION_20();
  }

  return result;
}

uint64_t sub_27075385C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_28();
    sub_270706C38(v2, v3);
    OUTLINED_FUNCTION_28();
    ScrollReport.scrollCollection.setter();
    v4 = OUTLINED_FUNCTION_28();

    return sub_270708D74(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    return ScrollReport.scrollCollection.setter();
  }
}

uint64_t ScrollReport.init(scrollEvent:)(void *a1)
{
  if (qword_280829488 != -1)
  {
    swift_once();
  }

  v18 = qword_280829CD0;
  v19 = *algn_280829CD8;
  sub_270706C38(qword_280829CD0, *algn_280829CD8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(7u);
  sub_270708D74(v18, v19);
  v3 = HIDReport.init(bitCount:id:)(v2, 7);
  v4 = a1;
  ScrollCollection.init(scrollEvent:)(v4);
  v5 = OUTLINED_FUNCTION_46();
  result = sub_270706C38(v5, v6);
  if (qword_280829490 != -1)
  {
    result = OUTLINED_FUNCTION_0_28();
  }

  if (qword_280829CE0 >> 3 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_7();
    sub_270706C38(v8, v9);
    v10 = OUTLINED_FUNCTION_16_7();
    sub_27070F3C4(v10, v11);

    v12 = OUTLINED_FUNCTION_16_7();
    sub_270708D74(v12, v13);
    v14 = OUTLINED_FUNCTION_16_7();
    sub_270708D74(v14, v15);
    v16 = OUTLINED_FUNCTION_46();
    sub_270708D74(v16, v17);
    return v3;
  }

  return result;
}

double ScrollCollection.delta.getter()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_7();
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return v0;
}

uint64_t ScrollCollection.delta.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_11_9();
  v3 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_11_9();
  v4 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return OUTLINED_FUNCTION_20();
}

double ScrollCollection.accelDelta.getter()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_7();
  v0 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_12_7();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  return v0;
}

void sub_270753B7C(void *a1@<X0>, double (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  *a3 = a2(*a1, a1[1]);
  *(a3 + 8) = v4;
  *(a3 + 16) = 0;
}

uint64_t ScrollCollection.accelDelta.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_11_9();
  v3 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_11_9();
  v4 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  *a1 = v3;
  *(a1 + 8) = vcvtd_n_f64_s32(v4, 0x10uLL);
  *(a1 + 16) = 0;
  return OUTLINED_FUNCTION_20();
}

void sub_270753C54()
{
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v0);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
  HIDFixed.init(doubleValue:)();
  OUTLINED_FUNCTION_1_23(v1);
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
}

uint64_t ScrollReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270753D58);
      }

      if (v4 >= 21)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270753D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ScrollReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void ScrollReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x270753E60);
      }

      if (v2 >= 21)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

uint64_t ScrollReport.remoteTimestamp.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270753F40);
      }

      if (v6 >= 21)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return OUTLINED_FUNCTION_20();
  }
}

void sub_270753F50(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ScrollReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 21)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_270754030(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x270754110);
      }

      if (v7 >= 21)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_270754120;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_270754120(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    ScrollReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 21)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

uint64_t sub_27075439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  LOBYTE(a3) = (*(a3 + 80))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return a3 & 1;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_23(uint64_t result)
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

uint64_t AppleVendorTopCaseUsage.init(rawValue:)(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 - 6 < 0xFFFFFFFD)
  {
    v1 = 0;
  }

  return v1 | ((a1 - 6 < 0xFFFFFFFD) << 8);
}

uint64_t sub_27075456C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AppleVendorTopCaseUsage.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_2707545F4(uint64_t a1)
{
  result = sub_27075461C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27075461C()
{
  result = qword_280829CF8;
  if (!qword_280829CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829CF8);
  }

  return result;
}

unint64_t sub_270754674()
{
  result = qword_280829D00;
  if (!qword_280829D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829D00);
  }

  return result;
}

unint64_t sub_2707546CC()
{
  result = qword_280829D08;
  if (!qword_280829D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829D08);
  }

  return result;
}

unint64_t HIDGameControllerType.init(rawValue:)(unint64_t result)
{
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

uint64_t HIDGameControllerType.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_27075485C()
{
  sub_2707A8F60();
  HIDGameControllerType.hash(into:)();
  return sub_2707A8FC0();
}

unint64_t sub_2707548A4()
{
  result = qword_280829D18;
  if (!qword_280829D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829D18);
  }

  return result;
}

unint64_t sub_27075490C()
{
  result = qword_280829D28;
  if (!qword_280829D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829D28);
  }

  return result;
}

uint64_t sub_270754970@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0xF000000000000000;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 16 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 1) = v4;
      return sub_270706C38(v4, *(&v4 + 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t DigitizerGesture.__allocating_init(platform:useRemoteAcceleration:dispatchPointerEvents:)(char *a1, char a2, char a3)
{
  OUTLINED_FUNCTION_0_29();
  v6 = swift_allocObject();
  DigitizerGesture.init(platform:useRemoteAcceleration:dispatchPointerEvents:)(a1, a2, a3);
  return v6;
}

uint64_t sub_270754A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_27071437C(*(a1 + 16), 0);
  v4 = sub_270770428(&v6, v3 + 4, v1, a1);

  sub_27073F570();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_270756424(&v6);
  return v6;
}

uint64_t DigitizerGesture.emitFluidGestureEvents.setter()
{
  result = OUTLINED_FUNCTION_1_24();
  *(v1 + 19) = v0;
  return result;
}

uint64_t DigitizerGesture.enableFluidGestureEventsMode(_:)()
{
  OUTLINED_FUNCTION_1_24();
  *(v1 + 19) = v0;
  return MEMORY[0x277D84F90];
}

uint64_t DigitizerGesture.__allocating_init(platform:useRemoteAcceleration:)(char *a1, char a2)
{
  v3 = *a1 != 1;
  v6 = *a1;
  OUTLINED_FUNCTION_0_29();
  v4 = swift_allocObject();
  DigitizerGesture.init(platform:useRemoteAcceleration:dispatchPointerEvents:)(&v6, a2, v3);
  return v4;
}

uint64_t DigitizerGesture.init(platform:useRemoteAcceleration:dispatchPointerEvents:)(char *a1, char a2, char a3)
{
  v6 = *a1;
  *(v3 + 19) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  v7 = sub_2707A8520();
  v8 = mach_absolute_time();
  *(v3 + 48) = 0;
  *(v3 + 56) = v7;
  *(v3 + 64) = v8;
  *(v3 + 16) = v6;
  *(v3 + 17) = a2;
  *(v3 + 18) = a3;
  return v3;
}

uint64_t DigitizerGesture.dispatch(report:)(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 18) == 1)
  {
    v3 = sub_270754D3C(a1, a2);
  }

  else
  {
    v3 = sub_270754EB4(a1, a2);
  }

  v7 = v6;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;

  return v7;
}

uint64_t sub_270754D3C(uint64_t a1, unint64_t a2)
{
  mach_absolute_time();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  v5 = sub_270754EB4(a1, a2);
  v7 = v5;
  v8 = *(v6 + 16);
  if (v8)
  {
    v16 = v5;
    v9 = v6 + 32;
    do
    {
      sub_27070F5BC(v9, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = RelativePointerEvent;
      v13 = HIDEventProtocol.bridgedValue.getter(v10, v11);
      IOHIDEventAppendEvent();

      __swift_destroy_boxed_opaque_existential_1(v17);
      v9 += 40;
      --v8;
    }

    while (v8);

    v7 = v16;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2707A9CF0;
  *(v14 + 56) = &type metadata for PointerEvent;
  *(v14 + 64) = &protocol witness table for PointerEvent;
  *(v14 + 32) = RelativePointerEvent;
  return v7;
}

uint64_t sub_270754EB4(uint64_t a1, unint64_t a2)
{
  v8 = v2;
  v79 = *MEMORY[0x277D85DE8];
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v8 + 64);

  sub_270706C38(a1, a2);
  v68 = a1;
  v14 = sub_2707559EC(v11, v12, v13, a1, a2);
  v16 = v15;
  v17 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];

  v18 = sub_270754A20(v16);

  v19 = *(v18 + 16);
  v72 = v16;
  if (v19)
  {
    v66 = a2;
    v67 = v8;
    v8 = 0;
    a2 = 0;
    a1 = 0;
    v20 = 0;
    v69 = v18 + 32;
    v21 = 0.0;
    v70 = v19 - 1;
    v71 = v18;
    v22 = 0.0;
    v23 = 0.0;
    while (v20 < v19)
    {
      v5 = 0.0;
      v73 = v20;
      if (*(v16 + 16) && (v24 = sub_27072203C(*(v69 + 8 * v20)), (v25 & 1) != 0))
      {
        v26 = *(v16 + 56) + 56 * v24;
        if (*v26 > 0xFFFFFFFFLL)
        {
          goto LABEL_59;
        }

        v27 = *(v26 + 8);
        if ((v27 | *v26) < 0)
        {
          goto LABEL_61;
        }

        if (v27 > 0xFFFFFFFFLL)
        {
          goto LABEL_60;
        }

        DigitizerEvent = *(v26 + 16);
        v7 = *(v26 + 24);
        v6 = *(v26 + 32);
        v5 = *(v26 + 40);
        v28 = *(v26 + 48);
        v29 = *(v26 + 49);
      }

      else
      {
        DigitizerEvent = 0;
        v29 = 0;
        v28 = 0;
        v6 = 0.0;
        v7 = 0.0;
      }

      DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
      if (v14)
      {
        IOHIDEventSetIntegerValue();
      }

      v18 = v14;
      ScrollEvent = DigitizerFingerEvent;
      MEMORY[0x2743A7C80]();
      if (*(v75 + 16) >= *(v75 + 24) >> 1)
      {
        sub_2707A8720();
      }

      v23 = v23 + v7;
      v22 = v22 + v6;
      v21 = v21 + v5;
      sub_2707A8740();

      a1 = DigitizerEvent | a1;
      v8 = v8 | v29;
      a2 = a2 | v28;
      if (v70 == v73)
      {
        v17 = v75;
        ScrollEvent = (a2 & 1);
        a2 = v66;
        v8 = v67;
        v18 = v71;
        goto LABEL_19;
      }

      v16 = v72;
      v19 = *(v71 + 16);
      v20 = v73 + 1;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_36:
    if (__OFADD__(ScrollEvent, qword_280829CE0 >> 3))
    {
      __break(1u);
    }

    else if (&ScrollEvent[qword_280829CE0 >> 3] >= ScrollEvent)
    {
      v46 = v14;
      v47 = sub_2707A82D0();
      v49 = v48;
      sub_270708D74(v16, a2);
      a2 = sub_27070E5A4(v47, v49);
      v51 = v50;
      if ((_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x8F) == 0)
      {
        sub_270708D74(a2, v51);

        return v46;
      }

      swift_beginAccess();
      v14 = v46;
      if (*(v8 + 19) == 1 && _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0())
      {

        v74 = v51;
        v52 = sub_270756018(v5, v6, v7);
        v53 = *(v52 + 16);
        if (v53)
        {
          v54 = v52 + 32;
          v55 = DigitizerEvent;
          do
          {
            sub_27070F5BC(v54, &v76);
            v56 = v77;
            v57 = v78;
            __swift_project_boxed_opaque_existential_1(&v76, v77);
            v58 = DigitizerEvent;
            v59 = HIDEventProtocol.bridgedValue.getter(v56, v57);
            IOHIDEventAppendEvent();

            __swift_destroy_boxed_opaque_existential_1(&v76);
            v54 += 40;
            --v53;
          }

          while (v53);

          v14 = v46;
        }

        else
        {

          v55 = DigitizerEvent;
        }

        sub_270708D74(a2, v74);

        return v14;
      }

      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      ScrollEvent = IOHIDEventCreateScrollEvent();
      if (*(v8 + 17) == 1)
      {
        v60 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
        v61 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();

        v62 = vcvtd_n_f64_s32(v61, 0x10uLL);
        v14 = v46;
        if (v60 != 0.0 || v62 != 0.0)
        {
          IOHIDEventGetEventFlags();
          v63 = IOHIDEventCreateScrollEvent();
          IOHIDEventAppendEvent();
        }
      }

      else
      {
      }

      _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      IOHIDEventSetPhase();
      if (*(v8 + 16) == 1)
      {
        IOHIDEventAppendEvent();

        sub_270708D74(a2, v51);
        return v14;
      }

      v8 = v51;
      v18 = *(a1 + 16);
      v16 = v18 + 1;
      if (v18 < *(a1 + 24) >> 1)
      {
LABEL_54:
        sub_270708D74(a2, v8);

        v77 = &type metadata for ScrollEvent;
        v78 = &protocol witness table for ScrollEvent;
        *&v76 = ScrollEvent;
        *(a1 + 16) = v16;
        sub_27070F8A8(&v76, a1 + 40 * v18 + 32);
        return v14;
      }

LABEL_68:
      sub_270713DA0();
      a1 = v65;
      goto LABEL_54;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  ScrollEvent = 0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
LABEL_19:

  v31 = *(v17 + 16);
  v16 = v68;
  if (v31)
  {
    v5 = v23 / v31;
    v6 = v22 / v31;
    v7 = v21 / v31;
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    if (v14)
    {
      IOHIDEventSetIntegerValue();
    }

    switch(a2 >> 62)
    {
      case 1uLL:
        LODWORD(v32) = HIDWORD(v68) - v68;
        if (__OFSUB__(HIDWORD(v68), v68))
        {
          goto LABEL_66;
        }

        v32 = v32;
        goto LABEL_28;
      case 2uLL:
        v34 = *(v68 + 16);
        v33 = *(v68 + 24);
        v35 = __OFSUB__(v33, v34);
        v32 = v33 - v34;
        if (v35)
        {
          goto LABEL_67;
        }

        goto LABEL_28;
      case 3uLL:
        goto LABEL_32;
      default:
        v32 = BYTE6(a2);
LABEL_28:
        if ((v32 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        if (v32 >= 53)
        {
          v36 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
          if (v36)
          {
            *&v76 = v36;
            v37 = v14;
            v38 = sub_27070E734(&v76, &v76 + 8);
            v40 = v39;
            sub_270706C38(v38, v39);
            v41 = mach_absolute_time();
            v42 = sub_270718460(v41, 16973568, 0, v38, v40, 0);
            IOHIDEventAppendEvent();

            v43 = v38;
            v14 = v37;
            v44 = v40;
            v16 = v68;
            sub_270708D74(v43, v44);
          }
        }

LABEL_32:
        v18 = *(v17 + 16);
        if (v18)
        {
          v45 = v17 + 32;
          do
          {
            v45 += 8;
            IOHIDEventAppendEvent();
            --v18;
          }

          while (v18);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
        a1 = swift_allocObject();
        *(a1 + 16) = xmmword_2707A9CF0;
        *(a1 + 56) = &type metadata for DigitizerEvent;
        *(a1 + 64) = &protocol witness table for DigitizerEvent;
        *(a1 + 32) = DigitizerEvent;
        sub_270706C38(v16, a2);
        DigitizerEvent = DigitizerEvent;
        ScrollEvent = DigitizerReport.contactRange(forIndex:)(5, v16, a2);
        if (qword_280829490 == -1)
        {
          goto LABEL_36;
        }

        goto LABEL_63;
    }
  }

  return v14;
}

uint64_t sub_27075577C()
{
  sub_2707A8B00();

  v1 = sub_2707A8E70();
  MEMORY[0x2743A7BE0](v1);

  MEMORY[0x2743A7BE0](0x7469746E65646920, 0xEA00000000003A79);
  v2 = sub_2707A8E70();
  MEMORY[0x2743A7BE0](v2);

  MEMORY[0x2743A7BE0](0x3A6863756F7420, 0xE700000000000000);
  if (*(v0 + 49))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743A7BE0](v3, v4);

  MEMORY[0x2743A7BE0](0x3A65676E617220, 0xE700000000000000);
  if (*(v0 + 48))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743A7BE0](v5, v6);

  MEMORY[0x2743A7BE0](0x283A6B73616D20, 0xE700000000000000);
  v7 = DigitizerEventMask.description.getter(*(v0 + 16));
  MEMORY[0x2743A7BE0](v7);

  MEMORY[0x2743A7BE0](41, 0xE100000000000000);
  return 0x3A7865646E69;
}

uint64_t sub_27075595C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270755774();
  *a1 = result;
  return result;
}

uint64_t sub_2707559EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2707A8520();
  mach_absolute_time();
  v10 = a1 + 1;
  do
  {
    v11 = v10;
    v10 = 1;
  }

  while (!v11);
  v85 = v9;
  v76 = v11;
  v90 = 0;
  v91 = 0;
  v89 = DigitizerReport.contacts.getter(a4, a5);
  v78 = a5;
  v79 = a2;
  for (i = a4; ; a4 = i)
  {
    sub_270754970(v87);
    v12 = v88;
    if (v88 >> 60 == 15)
    {
      break;
    }

    v13 = v87[0];
    if (__OFADD__(8 * v87[0], 320))
    {
      goto LABEL_66;
    }

    v14 = v87[1];
    if (sub_27075E50C(8 * v87[0] + 320, a4, a5))
    {
      v15 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    }

    else
    {
      v15 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x1F;
    }

    sub_270706C38(v14, v12);
    v16 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() & 0x1F;
    v17 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    v82 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
    v18 = HIDReport.subscript.getter(7, v14, v12);
    v19 = HIDReport.subscript.getter(6, v14, v12);
    v20 = HIDReport.subscript.getter(5, v14, v12);
    sub_270756E48(v13, v14, v12);
    v21 = *(a2 + 16);
    v22 = 0.0;
    if (v21)
    {
      v23 = sub_27072203C(v16);
      if (v24)
      {
        v25 = *(a2 + 56) + 56 * v23;
        v21 = *(v25 + 8);
        v22 = *(v25 + 24);
        v26 = *(v25 + 32);
        v27 = *(v25 + 40);
        v80 = *(v25 + 48);
        v28 = *(v25 + 49);
        goto LABEL_15;
      }

      v80 = 0;
      v28 = 0;
      v21 = 0;
    }

    else
    {
      v80 = 0;
      v28 = 0;
    }

    v26 = 0.0;
    v27 = 0.0;
LABEL_15:
    v29 = v17;
    v30 = v15;
    v31 = v29 / 65535.0;
    v32 = v18;
    v33 = v19;
    v34 = v20;
    v35 = v21 != v15;
    v36 = static HIDPoint.== infix(_:_:)(v29 / 65535.0, v82 / 65535.0, 0.0, v22, v26, v27);
    v37 = (32 * v35) | 4;
    if (v36)
    {
      v37 = 32 * v35;
    }

    v38 = v37 & 0xFFFFFFFE | (v32 ^ v80) & 1;
    v92[0] = v16;
    v92[1] = v30;
    if ((v33 ^ v28))
    {
      v38 |= 2u;
    }

    if (v34)
    {
      v38 |= 0x200u;
    }

    v93 = v38;
    v94 = v31;
    v95 = v82 / 65535.0;
    v96 = 0;
    v97 = v32;
    v98 = v33;
    v99 = v34;
    swift_isUniquelyReferenced_nonNull_native();
    v87[0] = v85;
    sub_270723300(v92, v16);
    sub_270756E48(v13, v14, v12);
    v85 = v87[0];
    a5 = v78;
    a2 = v79;
  }

  v40 = 0;
  v41 = a2 + 64;
  v42 = 1 << *(a2 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a2 + 64);
  v45 = (v42 + 63) >> 6;
  while (v44)
  {
    v46 = v85;
LABEL_32:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = v48 | (v40 << 6);
    v50 = *(*(v79 + 48) + 8 * v49);
    v51 = *(v79 + 56) + 56 * v49;
    v53 = *v51;
    v52 = *(v51 + 8);
    *&v39 = *(v51 + 40);
    v83 = *(v51 + 24);
    v84 = v39;
    v54 = *(v51 + 48);
    v55 = *(v51 + 49);
    if (*(v46 + 16))
    {
      sub_27072203C(v50);
      if (v56)
      {
        continue;
      }
    }

    if ((v55 | v54))
    {
      v57 = 0;
      v58 = v85;
      while (1)
      {
        v59 = 1;
        if (v57 == 2)
        {
          break;
        }

        while (1)
        {
          ++v57;
          if (v59)
          {
            break;
          }

          if (v57 == 2)
          {
            if (v54)
            {
              v60 = 5;
              v61 = 7;
            }

            else
            {
              v60 = 4;
              v61 = 6;
            }

            if (v55)
            {
              v60 = v61;
            }

            goto LABEL_55;
          }

          v59 = 0;
        }
      }

      if (v54)
      {
        if (v55)
        {
          v60 = 3;
        }

        else
        {
          v60 = 1;
        }
      }

      else if (v55)
      {
        v60 = 2;
      }

      else
      {
        v60 = 0;
      }

LABEL_55:
      v81 = v60;
      swift_isUniquelyReferenced_nonNull_native();
      v89 = v85;
      v62 = sub_27072203C(v50);
      v86 = v63;
      if (__OFADD__(*(v58 + 16), (v63 & 1) == 0))
      {
        goto LABEL_67;
      }

      v64 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829738);
      if (sub_2707A8C40())
      {
        v65 = sub_27072203C(v50);
        v67 = v86;
        if ((v86 & 1) != (v66 & 1))
        {
          goto LABEL_69;
        }

        v64 = v65;
        v39 = v83;
        v68 = v81;
      }

      else
      {
        v39 = v83;
        v68 = v81;
        v67 = v86;
      }

      v69 = v89;
      v85 = v89;
      if (v67)
      {
        v70 = *(v89 + 56) + 56 * v64;
        *v70 = v53;
        *(v70 + 8) = v52;
        *(v70 + 16) = v68;
        *(v70 + 24) = v39;
        *(&v39 + 1) = *(&v84 + 1);
        *(v70 + 40) = v84;
        *(v70 + 48) = 0;
        *(v70 + 50) = 0;
      }

      else
      {
        *(v89 + 8 * (v64 >> 6) + 64) |= 1 << v64;
        *(v69[6] + 8 * v64) = v50;
        v71 = v69[7] + 56 * v64;
        *v71 = v53;
        *(v71 + 8) = v52;
        *(v71 + 16) = v68;
        *(v71 + 24) = v39;
        *(&v39 + 1) = *(&v84 + 1);
        *(v71 + 40) = v84;
        *(v71 + 48) = 0;
        *(v71 + 50) = 0;
        v72 = v69[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_68;
        }

        v69[2] = v74;
      }
    }
  }

  v46 = v85;
  while (1)
  {
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v47 >= v45)
    {
      sub_270708D74(i, v78);

      return v76;
    }

    v44 = *(v41 + 8 * v47);
    ++v40;
    if (v44)
    {
      v40 = v47;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_2707A8EF0();
  __break(1u);
  return result;
}

uint64_t sub_270756018(double a1, double a2, double a3)
{
  v7 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((v7 & 0x8F) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  if (v7)
  {
    v3[3] = a1;
    v3[4] = a2;
    v9 = a1;
    v3[5] = a3;
  }

  else
  {
    v9 = v3[3];
  }

  static HIDPoint.- infix(_:_:)(a1, a2, a3, v9);
  FluidTouchGestureEvent = IOHIDEventCreateFluidTouchGestureEvent();
  IOHIDEventSetIntegerValue();
  if ((v8 & 0xC) != 0)
  {
    v3[3] = 0.0;
    v3[4] = 0.0;
    v3[5] = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528);
  result = swift_allocObject();
  *(result + 16) = xmmword_2707A9CF0;
  *(result + 56) = &type metadata for FluidTouchGestureEvent;
  *(result + 64) = &protocol witness table for FluidTouchGestureEvent;
  *(result + 32) = FluidTouchGestureEvent;
  return result;
}

uint64_t DigitizerGesture.description.getter()
{

  v0 = sub_2707A8510();

  return v0;
}

uint64_t DigitizerGesture.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_0_29();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2707562B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2707562F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_270756364(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 51))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2707563B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_270756424(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_270756E34();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_270756490(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_270756490(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2707A8E60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2707A8730();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2707565E0(v7, v8, a1, v4);
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
    return sub_270756584(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_270756584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2707565E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_270713F34(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_270713F34(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_270756BAC((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_270756A80(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_270756A80(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_270756D20(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_270756BAC((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_270756BAC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_27071A4C4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_27071A4C4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

char *sub_270756D34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808295A0);
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

uint64_t sub_270756E48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_270708D74(a2, a3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return swift_beginAccess();
}

uint64_t HIDEventProtocol.children.getter()
{
  OUTLINED_FUNCTION_31_2();
  v1 = v0();
  v2 = [v1 children];

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_27070F6B0();
  v3 = sub_2707A8710();

  v4 = sub_27070EE70(v3);

  return v4;
}

void sub_270756F3C()
{
  OUTLINED_FUNCTION_18_3();
  v2 = v1;
  OUTLINED_FUNCTION_51_1(v3);
  v4 = *(v0 + 352);
  v5 = v2;
  v6 = OUTLINED_FUNCTION_0_15();
  v4(v6);
  IOHIDEventAppendEvent();

  OUTLINED_FUNCTION_19_2();
}

uint64_t sub_270756FD8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  result = (*(v3 + 24))(v2, v3);
  if (result == 7)
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 352))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270757078(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  result = (*(v3 + 24))(v2, v3);
  if (result == 2)
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 352))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}