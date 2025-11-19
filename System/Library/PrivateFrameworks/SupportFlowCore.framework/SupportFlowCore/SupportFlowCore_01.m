char *OUTLINED_FUNCTION_18_1@<X0>(unint64_t a1@<X8>)
{

  return sub_232E414E4((a1 > 1), v1, 1);
}

SupportFlowCore::BundleIdentifier_optional __swiftcall BundleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BundleIdentifier.rawValue.getter()
{
  result = 0x6C7070612E6D6F63;
  switch(*v0)
  {
    case 1:
    case 3:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_232E42730()
{
  result = qword_27DDD9BB8;
  if (!qword_27DDD9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BB8);
  }

  return result;
}

unint64_t sub_232E427A8@<X0>(unint64_t *a1@<X8>)
{
  result = BundleIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t SupportFlowLookbackAnalyticsEvent.eventRepresentation()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B20, &qword_232E4E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E4E670;
  *(inited + 32) = 0x6E6F646E616261;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_232E4CF10();
  *(inited + 56) = 0x6F705F7972746E65;
  *(inited + 64) = 0xEB00000000746E69;
  v7 = sub_232E4CDD0();

  *(inited + 72) = v7;
  *(inited + 80) = 0x7961645F31;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_232E4CF10();
  *(inited + 104) = 0x72756F685F31;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = sub_232E4CF10();
  *(inited + 128) = 0x6B6565775F31;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_232E4CF10();
  sub_232E3ECD4();
  return sub_232E4CD90();
}

uint64_t sub_232E42ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F646E616261 && a2 == 0xE700000000000000;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
    if (v6 || (sub_232E4D1D0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796144656E6FLL && a2 == 0xE600000000000000;
      if (v7 || (sub_232E4D1D0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72756F48656E6FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_232E4D1D0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6B656557656E6FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_232E4D1D0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_232E42C90(char a1)
{
  result = 0x6E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x696F507972746E65;
      break;
    case 2:
      result = 0x796144656E6FLL;
      break;
    case 3:
      result = 0x72756F48656E6FLL;
      break;
    case 4:
      result = 0x6B656557656E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E42D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E42ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E42D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E42C88();
  *a1 = result;
  return result;
}

uint64_t sub_232E42D7C(uint64_t a1)
{
  v2 = sub_232E42FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E42DB8(uint64_t a1)
{
  v2 = sub_232E42FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportFlowLookbackAnalyticsEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BC0, &qword_232E4E688);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v17[2] = v1[2];
  v18 = v13;
  v14 = v1[3];
  v17[0] = v1[4];
  v17[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E42FDC();
  sub_232E4D250();
  v24 = 0;
  OUTLINED_FUNCTION_0_4();
  sub_232E4D170();
  if (!v2)
  {
    v23 = v18;
    v22 = 1;
    sub_232E43030();
    OUTLINED_FUNCTION_0_4();
    sub_232E4D190();
    v21 = 2;
    OUTLINED_FUNCTION_0_4();
    sub_232E4D170();
    v20 = 3;
    OUTLINED_FUNCTION_0_4();
    sub_232E4D170();
    v19 = 4;
    OUTLINED_FUNCTION_0_4();
    sub_232E4D170();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_232E42FDC()
{
  result = qword_27DDD9BC8;
  if (!qword_27DDD9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BC8);
  }

  return result;
}

unint64_t sub_232E43030()
{
  result = qword_27DDD9BD0;
  if (!qword_27DDD9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BD0);
  }

  return result;
}

uint64_t SupportFlowLookbackAnalyticsEvent.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BD8, &qword_232E4E690);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E42FDC();
  sub_232E4D240();
  if (!v2)
  {
    v28 = 0;
    v14 = OUTLINED_FUNCTION_1_5();
    v26 = 1;
    sub_232E432B0();
    sub_232E4D130();
    v15 = v27;
    v25 = 2;
    v21 = OUTLINED_FUNCTION_1_5();
    v22 = v15;
    v24 = 3;
    LOBYTE(v15) = OUTLINED_FUNCTION_1_5();
    v23 = 4;
    v17 = OUTLINED_FUNCTION_1_5();
    HIDWORD(v20) = v14 & 1;
    v18 = v15;
    LOBYTE(v15) = v21 & 1;
    v19 = v18 & 1;
    (*(v8 + 8))(v12, v5);
    *a2 = BYTE4(v20);
    a2[1] = v22;
    a2[2] = v15;
    a2[3] = v19;
    a2[4] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_232E432B0()
{
  result = qword_27DDD9BE0;
  if (!qword_27DDD9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BE0);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowLookbackAnalyticsEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for SupportFlowLookbackAnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowLookbackAnalyticsEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowLookbackAnalyticsEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E43550()
{
  result = qword_27DDD9BE8;
  if (!qword_27DDD9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BE8);
  }

  return result;
}

unint64_t sub_232E435A8()
{
  result = qword_27DDD9BF0;
  if (!qword_27DDD9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BF0);
  }

  return result;
}

unint64_t sub_232E43600()
{
  result = qword_27DDD9BF8;
  if (!qword_27DDD9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9BF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_232E4D110();
}

SupportFlowCore::ContactSupportWindow_optional __swiftcall ContactSupportWindow.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactSupportWindow.rawValue.getter()
{
  v1 = 0x44416E6968746977;
  if (*v0 != 1)
  {
    v1 = 0x57416E6968746977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x48416E6968746977;
  }
}

unint64_t sub_232E4375C()
{
  result = qword_27DDD9C00;
  if (!qword_27DDD9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C00);
  }

  return result;
}

uint64_t sub_232E437D4@<X0>(uint64_t *a1@<X8>)
{
  result = ContactSupportWindow.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactSupportWindow(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_232E43988()
{
  result = qword_27DDD9C08;
  if (!qword_27DDD9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C08);
  }

  return result;
}

void sub_232E439DC(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_232E4CDD0();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_232E4D000();
    swift_unknownObjectRelease();
    if (qword_27DDD9838 != -1)
    {
      swift_once();
    }

    v9 = sub_232E4CCE0();
    __swift_project_value_buffer(v9, qword_27DDD9C88);
    sub_232E32208(v21, v20);

    v10 = sub_232E4CCC0();
    v11 = sub_232E4CF60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_232E3161C(a1, a2, &v19);
      *(v12 + 12) = 2080;
      sub_232E32208(v20, v18);
      v14 = sub_232E4CE10();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v17 = sub_232E3161C(v14, v16, &v19);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_232E2C000, v10, v11, "Override %s with value %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238397C80](v13, -1, -1);
      MEMORY[0x238397C80](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    sub_232E441D8(v21, a3);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

uint64_t sub_232E43C38(uint64_t a1, unint64_t a2)
{
  sub_232E439DC(a1, a2, &v6);
  if (!v7)
  {
    goto LABEL_6;
  }

  sub_232E441E8(&v6, v5);
  sub_232E38748(0, &qword_27DDD9C10, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
    sub_232E38748(0, &qword_27DDD9C18, 0x277CCACA8);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
LABEL_6:
      v2 = 2;
      goto LABEL_7;
    }
  }

  v2 = [v4 BOOLValue];

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
LABEL_7:
  sub_232E44170(&v6);
  return v2;
}

id sub_232E43D28()
{
  result = [objc_opt_self() isInternalDevice];
  byte_28158FC78 = result;
  return result;
}

uint64_t sub_232E43D80()
{
  if (qword_28158FC70 != -1)
  {
    swift_once();
  }

  if (byte_28158FC78 == 1)
  {
    result = sub_232E43C38(0xD000000000000011, 0x8000000232E4F9B0);
  }

  else
  {
    result = 0;
  }

  byte_28158FC69 = result & 1;
  return result;
}

uint64_t sub_232E43E28(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t static Bool.disableMinimumLoadTime.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v1 = sub_232E43C38(0xD000000000000015, 0x8000000232E4F8B0);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t static Bool.overrideSuggestedSectionContent.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v1 = sub_232E43C38(0xD000000000000022, 0x8000000232E4F8D0);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t static Bool.simulateBadWiFiConnection.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    return OUTLINED_FUNCTION_1_6(28, 0x8000000232E4F900);
  }

  else
  {
    return 2;
  }
}

uint64_t static Bool.simulateConnectedVPN.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    return OUTLINED_FUNCTION_1_6(23, 0x8000000232E4F920);
  }

  else
  {
    return 2;
  }
}

uint64_t static Bool.simulateHasConfiguredVPN.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    return OUTLINED_FUNCTION_1_6(27, 0x8000000232E4F940);
  }

  else
  {
    return 2;
  }
}

uint64_t static Bool.simulateNoInternetConnectivity.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    return OUTLINED_FUNCTION_1_6(33, 0x8000000232E4F960);
  }

  else
  {
    return 2;
  }
}

uint64_t static String.airPodsVersionOverride.getter()
{
  if (qword_28158FC60 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    return 0;
  }

  sub_232E439DC(0xD000000000000011, 0x8000000232E4F990, &v3);
  if (!v4)
  {
    sub_232E44170(&v3);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232E44170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9920, &qword_232E4DC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_232E441D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_232E441E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9920, &qword_232E4DC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, unint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_232E43C38(v3, a2);
}

uint64_t sub_232E4429C(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00697269532E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = a1;
  v5 = 0x6C7070612E6D6F63;
  v6 = 0xEE00697269532E65;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0xD000000000000015;
      v7 = "phone";
      goto LABEL_4;
    case 3:
      v6 = 0xEE00737069742E65;
      v5 = 0x6C7070612E6D6F63;
      break;
    default:
      v5 = 0xD000000000000015;
      v7 = "suggestedSetting";
LABEL_4:
      v6 = v7 | 0x8000000000000000;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0xD000000000000015;
      v8 = "phone";
      goto LABEL_9;
    case 3:
      v2 = 0xEE00737069742E65;
      break;
    default:
      v3 = 0xD000000000000015;
      v8 = "suggestedSetting";
LABEL_9:
      v2 = v8 | 0x8000000000000000;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_232E4D1D0();
  }

  return v10 & 1;
}

uint64_t sub_232E443E8()
{
  OUTLINED_FUNCTION_23_1();
  v3 = 1701869940;
  switch(v4)
  {
    case 1:
      v0 = 0xE500000000000000;
      v3 = 0x656C746974;
      break;
    case 2:
      v0 = 0xE300000000000000;
      v3 = 7107189;
      break;
    case 3:
      v3 = 0x6465726975716572;
      v0 = 0xEE006C616E676953;
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE500000000000000;
      v2 = 0x656C746974;
      break;
    case 2:
      v5 = 0xE300000000000000;
      v2 = 7107189;
      break;
    case 3:
      v2 = 0x6465726975716572;
      v5 = 0xEE006C616E676953;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_16_3();
  }

  return v7 & 1;
}

uint64_t sub_232E44518(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x656D75736572;
  }

  else
  {
    v2 = 0x6C65636E6163;
  }

  if (a2)
  {
    v3 = 0x656D75736572;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_232E4D1D0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_232E44590(unsigned __int8 a1, char a2)
{
  v2 = 7368801;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7368801;
  switch(v4)
  {
    case 1:
      v5 = 0x6574654461746164;
      v3 = 0xEC000000726F7463;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x72656C616964;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1769105779;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1936746868;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6574654461746164;
      v6 = 0xEC000000726F7463;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x72656C616964;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1769105779;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1936746868;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_3();
  }

  return v8 & 1;
}

uint64_t sub_232E44714()
{
  v0 = SupportFlowIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == SupportFlowIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_3();
  }

  return v5 & 1;
}

uint64_t sub_232E4479C()
{
  OUTLINED_FUNCTION_23_1();
  v3 = 1701869940;
  switch(v4)
  {
    case 1:
      v0 = 0xE700000000000000;
      v3 = 0x6E6F6973736573;
      break;
    case 2:
      v3 = 1885697139;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v3 = 0x7265727265666572;
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE700000000000000;
      v2 = 0x6E6F6973736573;
      break;
    case 2:
      v2 = 1885697139;
      break;
    case 3:
      v5 = 0xE800000000000000;
      v2 = 0x7265727265666572;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_16_3();
  }

  return v7 & 1;
}

uint64_t sub_232E448B4(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000072756FLL;
  v3 = 0x48416E6968746977;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x44416E6968746977;
    }

    else
    {
      v5 = 0x57416E6968746977;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000007961;
    }

    else
    {
      v6 = 0xEB000000006B6565;
    }
  }

  else
  {
    v5 = 0x48416E6968746977;
    v6 = 0xEB0000000072756FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x44416E6968746977;
    }

    else
    {
      v3 = 0x57416E6968746977;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000007961;
    }

    else
    {
      v2 = 0xEB000000006B6565;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232E4D1D0();
  }

  return v8 & 1;
}

uint64_t sub_232E449CC(char a1, char a2)
{
  v2 = 0x6E6F69746361;
  if (a1)
  {
    OUTLINED_FUNCTION_11_2();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x6E6F69746361;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_11_2();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_3();
  }

  return v18 & 1;
}

uint64_t SupportFlowSession.entryPoint.getter()
{
  OUTLINED_FUNCTION_24_0();
  result = type metadata accessor for SupportFlowSession();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t type metadata accessor for SupportFlowSession()
{
  result = qword_27DDD9C58;
  if (!qword_27DDD9C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SupportFlowSession.lastUpdated.getter()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(type metadata accessor for SupportFlowSession() + 28);
  v3 = sub_232E4C980();
  v4 = *(*(v3 - 8) + 16);

  return v4(v0, v1 + v2, v3);
}

uint64_t SupportFlowSession.sessionLogged.setter()
{
  OUTLINED_FUNCTION_17_2();
  result = type metadata accessor for SupportFlowSession();
  *(v1 + *(result + 32)) = v0;
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

uint64_t SupportFlowSession.abandon.setter()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_232E4C980();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  *(v1 + *(type metadata accessor for SupportFlowSession() + 36)) = v0;
  sub_232E4C970();
  v6 = OUTLINED_FUNCTION_7_2();
  return v7(v6);
}

uint64_t SupportFlowSession.abandon.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 36);
  return OUTLINED_FUNCTION_12_1();
}

uint64_t SupportFlowSession.connectsToAgent.setter()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_232E4C980();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  *(v1 + *(type metadata accessor for SupportFlowSession() + 40)) = v0;
  sub_232E4C970();
  v6 = OUTLINED_FUNCTION_7_2();
  return v7(v6);
}

uint64_t SupportFlowSession.connectsToAgent.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 40);
  return OUTLINED_FUNCTION_12_1();
}

uint64_t SupportFlowSession.currentStepId.getter()
{
  v1 = (v0 + *(type metadata accessor for SupportFlowSession() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_232E44F6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SupportFlowSession() + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_232E44FB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportFlowSession.currentStepId.setter(v1, v2);
}

uint64_t SupportFlowSession.currentStepId.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_232E4C980();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  v12 = type metadata accessor for SupportFlowSession();
  v13 = (v2 + *(v12 + 44));
  v14 = v13[1];

  *v13 = a1;
  v13[1] = a2;
  sub_232E4C970();
  return (*(v9 + 40))(v2 + *(v12 + 28), v3, v6);
}

uint64_t SupportFlowSession.currentStepId.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 44);
  return OUTLINED_FUNCTION_12_1();
}

uint64_t SupportFlowSession.featuredTopic.setter()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_232E4C980();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  *(v1 + *(type metadata accessor for SupportFlowSession() + 48)) = v0;
  sub_232E4C970();
  v6 = OUTLINED_FUNCTION_7_2();
  return v7(v6);
}

uint64_t SupportFlowSession.featuredTopic.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 48);
  return OUTLINED_FUNCTION_12_1();
}

uint64_t SupportFlowSession.lastScreen.setter(uint64_t a1)
{
  v3 = sub_232E4C980();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_7();
  v9 = type metadata accessor for SupportFlowSession();
  *(v1 + v9[13]) = a1;
  *(v1 + v9[9]) = 0;
  sub_232E4C970();
  v10 = v9[7];
  v11 = *(v6 + 40);
  v12 = OUTLINED_FUNCTION_6_2();
  v11(v12);
  sub_232E4C970();
  v13 = OUTLINED_FUNCTION_6_2();
  return (v11)(v13);
}

uint64_t SupportFlowSession.lastScreen.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 52);
  return OUTLINED_FUNCTION_12_1();
}

uint64_t SupportFlowSession.currentFlowId.getter()
{
  OUTLINED_FUNCTION_24_0();
  result = type metadata accessor for SupportFlowSession();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t SupportFlowSession.currentFlowId.setter(char *a1)
{
  v4 = sub_232E4C980();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  v10 = *a1;
  v11 = type metadata accessor for SupportFlowSession();
  *(v1 + *(v11 + 56)) = v10;
  sub_232E4C970();
  return (*(v7 + 40))(v1 + *(v11 + 28), v2, v4);
}

uint64_t SupportFlowSession.currentFlowId.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 56);
  return OUTLINED_FUNCTION_12_1();
}

void sub_232E45664(void **a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v2 = v7[3];
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    sub_232E4C970();
    (*(v5 + 40))(v6 + *(v4 + 28), v2, v3);
  }

  free(v2);

  free(v7);
}

uint64_t SupportFlowSession.hasPerformedSearch.setter()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_232E4C980();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  v8 = type metadata accessor for SupportFlowSession();
  *(v1 + v8[15]) = v0;
  *(v1 + v8[9]) = 0;
  sub_232E4C970();
  v9 = v8[7];
  v10 = *(v5 + 40);
  v11 = OUTLINED_FUNCTION_6_2();
  v10(v11);
  sub_232E4C970();
  v12 = OUTLINED_FUNCTION_6_2();
  return (v10)(v12);
}

uint64_t SupportFlowSession.hasPerformedSearch.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 60);
  return OUTLINED_FUNCTION_12_1();
}

void sub_232E45884(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v2 = v6[3];
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    *(v5 + *(v3 + 36)) = 0;
    sub_232E4C970();
    v7 = *(v3 + 28);
    v8 = *(v4 + 40);
    v9 = OUTLINED_FUNCTION_14_1();
    v8(v9);
    sub_232E4C970();
    v10 = OUTLINED_FUNCTION_14_1();
    v8(v10);
  }

  free(v2);

  free(v6);
}

uint64_t SupportFlowSession.warmHandoff.setter()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_232E4C980();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_7();
  v8 = type metadata accessor for SupportFlowSession();
  *(v1 + v8[16]) = v0;
  *(v1 + v8[10]) = 1;
  sub_232E4C970();
  v9 = v8[7];
  v10 = *(v5 + 40);
  v11 = OUTLINED_FUNCTION_6_2();
  v10(v11);
  sub_232E4C970();
  v12 = OUTLINED_FUNCTION_6_2();
  return (v10)(v12);
}

uint64_t SupportFlowSession.warmHandoff.modify()
{
  v1 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_5_3(v2);
  OUTLINED_FUNCTION_2_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_20_1(v6);
  *(v0 + 32) = v7;
  v8 = *(v7 + 64);
  return OUTLINED_FUNCTION_12_1();
}

void sub_232E45AC8(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v2 = v6[3];
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    *(v5 + *(v3 + 40)) = 1;
    sub_232E4C970();
    v7 = *(v3 + 28);
    v8 = *(v4 + 40);
    v9 = OUTLINED_FUNCTION_14_1();
    v8(v9);
    sub_232E4C970();
    v10 = OUTLINED_FUNCTION_14_1();
    v8(v10);
  }

  free(v2);

  free(v6);
}

uint64_t SupportFlowSession.init(sessionId:entryPoint:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_24_0();
  v8 = sub_232E4C980();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  v14 = *a3;
  v15 = type metadata accessor for SupportFlowSession();
  v16 = v15[7];
  sub_232E4C970();
  *(v3 + v15[8]) = 0;
  *(v3 + v15[9]) = 1;
  *(v3 + v15[10]) = 0;
  v17 = (v3 + v15[11]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v3 + v15[12]) = 0;
  *(v3 + v15[13]) = 0;
  *(v3 + v15[14]) = 12;
  *(v3 + v15[15]) = 0;
  *(v3 + v15[16]) = 0;
  *v3 = a1;
  v3[1] = a2;
  v18 = v3 + v15[5];
  sub_232E4C970();
  if (v14 == 6)
  {
    v19 = 5;
  }

  else
  {
    v19 = v14;
  }

  *(v3 + v15[6]) = v19;
  sub_232E4C970();
  return (*(v11 + 40))(v3 + v16, v4, v8);
}

uint64_t static SupportFlowSession.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232E4D1D0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v5 = type metadata accessor for SupportFlowSession();
  v6 = v5[5];
  if ((sub_232E4C950() & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((sub_232E44590(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = v5[7];
  if ((sub_232E4C950() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_8_2(v5[8]);
  if (!v4)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_8_2(v5[9]);
  if (!v4)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_8_2(v5[10]);
  if (!v4)
  {
    goto LABEL_29;
  }

  v8 = v5[11];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_232E4D1D0() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_8_2(v5[12]);
  if (!v4 || *(a1 + v5[13]) != *(a2 + v5[13]))
  {
    goto LABEL_29;
  }

  v13 = v5[14];
  v14 = *(a2 + v13);
  if (*(a1 + v13) == 12)
  {
    if (v14 != 12)
    {
      goto LABEL_29;
    }
  }

  else if (v14 == 12 || (sub_232E44714() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_8_2(v5[15]);
  if (v4)
  {
    v15 = *(a1 + v5[16]) ^ *(a2 + v5[16]) ^ 1;
    return v15 & 1;
  }

LABEL_29:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_232E45E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_232E4D1D0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_232E4D1D0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574;
        if (v8 || (sub_232E4D1D0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C6E6F6973736573 && a2 == 0xED0000646567676FLL;
          if (v9 || (sub_232E4D1D0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F646E616261 && a2 == 0xE700000000000000;
            if (v10 || (sub_232E4D1D0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x737463656E6E6F63 && a2 == 0xEF746E6567416F54;
              if (v11 || (sub_232E4D1D0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x53746E6572727563 && a2 == 0xED00006449706574;
                if (v12 || (sub_232E4D1D0() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6465727574616566 && a2 == 0xED00006369706F54;
                  if (v13 || (sub_232E4D1D0() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x657263537473616CLL && a2 == 0xEA00000000006E65;
                    if (v14 || (sub_232E4D1D0() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x46746E6572727563 && a2 == 0xED00006449776F6CLL;
                      if (v15 || (sub_232E4D1D0() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x8000000232E4F9D0 == a2;
                        if (v16 || (sub_232E4D1D0() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x646E61486D726177 && a2 == 0xEB0000000066666FLL)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_232E4D1D0();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_232E4626C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x696F507972746E65;
      break;
    case 3:
      result = 0x616470557473616CLL;
      break;
    case 4:
      result = 0x4C6E6F6973736573;
      break;
    case 5:
      result = 0x6E6F646E616261;
      break;
    case 6:
      result = 0x737463656E6E6F63;
      break;
    case 7:
      result = 0x53746E6572727563;
      break;
    case 8:
      result = 0x6465727574616566;
      break;
    case 9:
      result = 0x657263537473616CLL;
      break;
    case 10:
      result = 0x46746E6572727563;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x646E61486D726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E46430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E45E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E46458@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E46264();
  *a1 = result;
  return result;
}

uint64_t sub_232E46480(uint64_t a1)
{
  v2 = sub_232E46864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E464BC(uint64_t a1)
{
  v2 = sub_232E46864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportFlowSession.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9C20, &qword_232E4E980);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E46864();
  sub_232E4D250();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_9_3();
  sub_232E4D160();
  if (!v2)
  {
    v15 = type metadata accessor for SupportFlowSession();
    v16 = v15[5];
    sub_232E4C980();
    sub_232E46F4C(&qword_27DDD9C30);
    OUTLINED_FUNCTION_9_3();
    sub_232E4D190();
    v30 = *(v4 + v15[6]);
    sub_232E43030();
    OUTLINED_FUNCTION_4_3();
    sub_232E4D190();
    v17 = v15[7];
    OUTLINED_FUNCTION_9_3();
    sub_232E4D190();
    v18 = *(v4 + v15[8]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
    v19 = *(v4 + v15[9]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
    v20 = *(v4 + v15[10]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
    v21 = (v4 + v15[11]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_9_3();
    sub_232E4D160();
    v24 = *(v4 + v15[12]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
    v25 = *(v4 + v15[13]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D180();
    v29 = *(v4 + v15[14]);
    sub_232E468B8();
    OUTLINED_FUNCTION_4_3();
    sub_232E4D150();
    v26 = *(v4 + v15[15]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
    v27 = *(v4 + v15[16]);
    OUTLINED_FUNCTION_4_3();
    sub_232E4D170();
  }

  return (*(v9 + 8))(v3, v6);
}

unint64_t sub_232E46864()
{
  result = qword_27DDD9C28;
  if (!qword_27DDD9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C28);
  }

  return result;
}

unint64_t sub_232E468B8()
{
  result = qword_27DDD9C38;
  if (!qword_27DDD9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C38);
  }

  return result;
}

uint64_t SupportFlowSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v5 = sub_232E4C980();
  v6 = OUTLINED_FUNCTION_0(v5);
  v60 = v7;
  v61 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9C40, &qword_232E4E988);
  v16 = OUTLINED_FUNCTION_0(v15);
  v56 = v17;
  v57 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16_0();
  v20 = type metadata accessor for SupportFlowSession();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v24 = (v23 - v22);
  v63 = *(v25 + 28);
  sub_232E4C970();
  v58 = v20;
  v59 = a1;
  v26 = *(v20 + 56);
  v62 = v24;
  *(v24 + v26) = 12;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E46864();
  v55 = v3;
  sub_232E4D240();
  if (v2)
  {
    v30 = v60;
    v29 = v61;
    v31 = v62;
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    (*(v30 + 8))(v31 + v63, v29);
  }

  else
  {
    v52 = v26;
    v53 = v12;
    v78 = 0;
    OUTLINED_FUNCTION_26();
    v28 = sub_232E4D100();
    v32 = v62;
    *v62 = v28;
    v32[1] = v33;
    v77 = 1;
    sub_232E46F4C(&qword_27DDD9C48);
    v34 = v14;
    v35 = v61;
    OUTLINED_FUNCTION_22_1();
    v36 = v60;
    v37 = v58;
    (*(v60 + 32))(v32 + v58[5], v34, v35);
    v75 = 2;
    sub_232E432B0();
    sub_232E4D130();
    *(v32 + v37[6]) = v76;
    v74 = 3;
    v38 = v37;
    v39 = v53;
    OUTLINED_FUNCTION_22_1();
    (*(v36 + 40))(v32 + v63, v39, v35);
    v73 = 4;
    OUTLINED_FUNCTION_27();
    v40 = sub_232E4D110();
    OUTLINED_FUNCTION_28(v40, v38[8]);
    v72 = 5;
    OUTLINED_FUNCTION_27();
    v41 = sub_232E4D110();
    OUTLINED_FUNCTION_28(v41, v38[9]);
    v71 = 6;
    OUTLINED_FUNCTION_27();
    v42 = sub_232E4D110();
    OUTLINED_FUNCTION_28(v42, v38[10]);
    v70 = 7;
    OUTLINED_FUNCTION_27();
    v43 = sub_232E4D100();
    v44 = (v32 + v38[11]);
    *v44 = v43;
    v44[1] = v45;
    v69 = 8;
    v46 = sub_232E4D110();
    OUTLINED_FUNCTION_28(v46, v58[12]);
    v68 = 9;
    *(v62 + v58[13]) = sub_232E4D120();
    v66 = 10;
    sub_232E46F90();
    OUTLINED_FUNCTION_26();
    sub_232E4D0F0();
    *(v62 + v52) = v67;
    v65 = 11;
    OUTLINED_FUNCTION_26();
    *(v62 + v58[15]) = sub_232E4D110() & 1;
    v64 = 12;
    OUTLINED_FUNCTION_26();
    LOBYTE(v38) = sub_232E4D110();
    v47 = v58[16];
    (*(v56 + 8))(v55, v57);
    v48 = v38 & 1;
    v49 = v62;
    *(v62 + v47) = v48;
    sub_232E31BBC(v49, v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    return sub_232E31C78(v49);
  }
}

uint64_t sub_232E46F4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_232E4C980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232E46F90()
{
  result = qword_27DDD9C50;
  if (!qword_27DDD9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C50);
  }

  return result;
}

void sub_232E47040()
{
  sub_232E4C980();
  if (v0 <= 0x3F)
  {
    sub_232E47114();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232E47114()
{
  if (!qword_27DDD9C68)
  {
    v0 = sub_232E4CFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDD9C68);
    }
  }
}

uint64_t getEnumTagSinglePayload for SupportFlowSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        break;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E472CC()
{
  result = qword_27DDD9C70;
  if (!qword_27DDD9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C70);
  }

  return result;
}

unint64_t sub_232E47324()
{
  result = qword_27DDD9C78;
  if (!qword_27DDD9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C78);
  }

  return result;
}

unint64_t sub_232E4737C()
{
  result = qword_27DDD9C80;
  if (!qword_27DDD9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_5_3(void *a1)
{
  *v1 = a1;
  *a1 = v2;

  return sub_232E4C980();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for SupportFlowSession();
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_232E4D1D0();
}

void OUTLINED_FUNCTION_19_1()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[1];
  v4 = v0[2];
  v5 = *v0;
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{
  *(v1 + 24) = a1;

  return type metadata accessor for SupportFlowSession();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_232E4D130();
}

uint64_t sub_232E476AC()
{
  v0 = sub_232E4CCE0();
  __swift_allocate_value_buffer(v0, qword_27DDD9CA0);
  __swift_project_value_buffer(v0, qword_27DDD9CA0);
  return sub_232E4CCD0();
}

uint64_t sub_232E477F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232E4CCE0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_232E478AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_232E4CCE0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_232E4CCD0();
}

uint64_t Logger.init(flowId:)(char *a1)
{
  v2 = *a1;
  SupportFlowIdentifier.rawValue.getter();

  return sub_232E4CCD0();
}

uint64_t static Duration.hours<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v4 = *(*(a3 + 24) + 16);
  v21 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v22 = &v21 - v16;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_4(&unk_232E4EB48);
  OUTLINED_FUNCTION_2_6();
  sub_232E4CF40();
  v17 = *(v8 + 8);
  v17(v12, a2);
  OUTLINED_FUNCTION_3_4(&unk_232E4EB48);
  OUTLINED_FUNCTION_2_6();
  v18 = v22;
  sub_232E4CF40();
  v17(v12, a2);
  v17(v15, a2);
  v19 = sub_232E4D270();
  v17(v18, a2);
  return v19;
}

uint64_t static Duration.since(_:)()
{
  v0 = sub_232E4C980();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_232E4C970();
  sub_232E4C910();
  (*(v3 + 8))(v8, v0);
  return sub_232E4D260();
}

uint64_t sub_232E47CCC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v51 = a1;
  v4 = sub_232E4CA00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_232E4CA10();
  v14 = OUTLINED_FUNCTION_0(v13);
  v48 = v15;
  v49 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CD0, &unk_232E4EB50);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v46 - v23;
  v25 = sub_232E4C980();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v47 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v46 = &v46 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v46 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v46 - v38;
  sub_232E4C970();
  sub_232E4C9F0();
  result = (*(v7 + 104))(v12, *a2, v4);
  if (v51 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_232E4C9E0();
    (*(v7 + 8))(v12, v4);
    (*(v48 + 8))(v20, v49);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      (*(v28 + 8))(v39, v25);
      sub_232E48094(v24);
      v41 = 1;
      v42 = v50;
    }

    else
    {
      (*(v28 + 32))(v37, v24, v25);
      v43 = *(v28 + 16);
      v43(v46, v37, v25);
      v43(v47, v39, v25);
      v42 = v50;
      sub_232E4C790();
      v44 = *(v28 + 8);
      v44(v37, v25);
      v44(v39, v25);
      v41 = 0;
    }

    v45 = sub_232E4C7A0();
    return __swift_storeEnumTagSinglePayload(v42, v41, 1, v45);
  }

  return result;
}

uint64_t sub_232E48094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CD0, &unk_232E4EB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return MEMORY[0x2821FDEA0](v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return MEMORY[0x2821FE1E8](a1, 1792, v1, v2);
}

uint64_t sub_232E48140()
{
  sub_232E4CD60();
  v0 = sub_232E4CD50();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  result = sub_232E49F94(v0);
  if (!result)
  {

    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x238397570](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall DeviceEventCoordinator.hasRecentDeviceRestart()()
{
  v0 = sub_232E48244();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

void *sub_232E48244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  sub_232E47CC0(2, &v12 - v2);
  v4 = sub_232E48140();
  sub_232E48C04(v3);
  if (v4)
  {
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v5 = sub_232E4CCE0();
    __swift_project_value_buffer(v5, qword_28158FCB0);
    v6 = v4;
    v7 = sub_232E4CCC0();
    v8 = sub_232E4CF60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      [v6 timestamp];
      *(v9 + 4) = v10;
      _os_log_impl(&dword_232E2C000, v7, v8, "Recent restart device event found %f", v9, 0xCu);
      MEMORY[0x238397C80](v9, -1, -1);
    }
  }

  return v4;
}

Swift::Bool __swiftcall DeviceEventCoordinator.hasRecentMailError()()
{
  v0 = sub_232E48418();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

id sub_232E48418()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v56 - v3;
  if (qword_28158FC90 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    sub_232E47CC0(7, v4);
    sub_232E4CD60();
    v5 = sub_232E4CD50();
    sub_232E48C04(v4);
    if (!v5)
    {
      return 0;
    }

    if (qword_28158FC80 != -1)
    {
      swift_once();
    }

    sub_232E47CC0(7, v4);
    v6 = sub_232E4CD50();
    sub_232E48C04(v4);
    if (!v6)
    {
      break;
    }

    v4 = sub_232E497C0(v6);

    v7 = sub_232E497C0(v5);

    v8 = 0;
    v9 = v7 + 64;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 64);
    v13 = (v10 + 63) >> 6;
    v56 = v7;
    if (v12)
    {
      while (1)
      {
        v14 = v8;
LABEL_13:
        v15 = __clz(__rbit64(v12)) | (v14 << 6);
        v0 = *(*(v7 + 56) + 8 * v15);
        if (!*(v4 + 2))
        {
          break;
        }

        v16 = (*(v7 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];

        v19 = v0;
        v20 = sub_232E4A484(v17, v18);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          goto LABEL_40;
        }

        v23 = *(*(v4 + 7) + 8 * v20);
        v24 = sub_232E49714(v19);

        if (v24 == -1)
        {
          goto LABEL_40;
        }

        v12 &= v12 - 1;

        v8 = v14;
        v7 = v56;
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v41 = v0;
LABEL_40:

      if (qword_28158FCA8 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_55;
    }

LABEL_10:
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        return 0;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  if (sub_232E49F94(v5))
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x238397570](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_41:
        v42 = sub_232E4CCE0();
        __swift_project_value_buffer(v42, qword_28158FCB0);
        v25 = v0;
        v43 = sub_232E4CCC0();
        v44 = sub_232E4CF60();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v57 = v46;
          *v45 = 136315394;
          v47 = sub_232E49774(&selRef_contentIdentifier);
          if (v48)
          {
            v49 = v48;
          }

          else
          {
            v47 = 0;
            v49 = 0xE000000000000000;
          }

          v50 = sub_232E3161C(v47, v49, &v57);

          *(v45 + 4) = v50;
          *(v45 + 12) = 2080;
          v51 = sub_232E49774(&selRef_context);
          if (v52)
          {
            v53 = v52;
          }

          else
          {
            v51 = 0;
            v53 = 0xE000000000000000;
          }

          v54 = sub_232E3161C(v51, v53, &v57);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_232E2C000, v43, v44, "Recent mail error found. %s %s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x238397C80](v46, -1, -1);
          MEMORY[0x238397C80](v45, -1, -1);
        }

        return v25;
      }

      v26 = *(v5 + 32);
    }

    v25 = v26;
  }

  else
  {

    v25 = 0;
  }

  if (qword_28158FCA8 != -1)
  {
    swift_once();
  }

  v27 = sub_232E4CCE0();
  __swift_project_value_buffer(v27, qword_28158FCB0);
  v28 = v25;
  v29 = sub_232E4CCC0();
  v30 = sub_232E4CF60();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v57 = v32;
    *v31 = 136315394;
    if (v25 && (v33 = sub_232E49774(&selRef_contentIdentifier), v34))
    {
      v35 = v34;
    }

    else
    {

      v33 = 0;
      v35 = 0xE000000000000000;
    }

    v36 = sub_232E3161C(v33, v35, &v57);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    if (v25 && (v37 = sub_232E49774(&selRef_context), v38))
    {
      v39 = v38;
    }

    else
    {

      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = sub_232E3161C(v37, v39, &v57);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_232E2C000, v29, v30, "Recent mail error found. %s %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v32, -1, -1);
    MEMORY[0x238397C80](v31, -1, -1);
  }

  return v25;
}

Swift::Bool __swiftcall DeviceEventCoordinator.hasRecentNetworkSettingsReset()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  if (qword_27DDD9830 != -1)
  {
    swift_once();
  }

  sub_232E47CC0(2, v3);
  v4 = sub_232E48140();
  sub_232E48C04(v3);
  if (v4)
  {

    if (qword_28158FCA8 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    v5 = sub_232E4CCE0();
    __swift_project_value_buffer(v5, qword_28158FCB0);
    v6 = sub_232E4CCC0();
    v7 = sub_232E4CF60();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_232E2C000, v6, v7, "Recent reset network settings event found.", v8, 2u);
      OUTLINED_FUNCTION_15();
    }
  }

  return v4 != 0;
}

uint64_t sub_232E48C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int_optional __swiftcall DeviceEventCoordinator.recentSoftwareUpdateErrorCode()()
{
  v0 = sub_232E48FB0();
  if (v0)
  {
    v1 = sub_232E49774(&selRef_context);
    if (!v2)
    {
      goto LABEL_74;
    }

    v3 = v2;
    v4 = HIBYTE(v2) & 0xF;
    v5 = v1 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {

      goto LABEL_74;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v8 = sub_232E4AD9C(v1, v3, 10);
      v24 = v29;
LABEL_73:

      if ((v24 & 1) == 0)
      {
LABEL_75:
        if (qword_28158FCA8 != -1)
        {
          OUTLINED_FUNCTION_1_2();
        }

        v25 = sub_232E4CCE0();
        __swift_project_value_buffer(v25, qword_28158FCB0);
        v26 = sub_232E4CCC0();
        v27 = sub_232E4CF60();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = v8;
          _os_log_impl(&dword_232E2C000, v26, v27, "Recent Software Update error found with error code: %ld", v28, 0xCu);
          OUTLINED_FUNCTION_15();
        }

        goto LABEL_80;
      }

LABEL_74:
      v8 = -1;
      goto LABEL_75;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      if (v1 == 43)
      {
        if (v4)
        {
          if (v4 != 1)
          {
            OUTLINED_FUNCTION_4_4();
            while (1)
            {
              OUTLINED_FUNCTION_2_7();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_1_8();
              if (!v10)
              {
                break;
              }

              v8 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              OUTLINED_FUNCTION_3_5();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v1 != 45)
      {
        if (v4)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_7();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_1_8();
            if (!v10)
            {
              break;
            }

            v8 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            OUTLINED_FUNCTION_3_5();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          OUTLINED_FUNCTION_4_4();
          while (1)
          {
            OUTLINED_FUNCTION_2_7();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_1_8();
            if (!v10)
            {
              break;
            }

            v8 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            OUTLINED_FUNCTION_3_5();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v1 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v1 = sub_232E4D090();
      }

      v7 = *v1;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v8 = 0;
            if (v1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_2_7();
                if (!v10 & v9)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_1_8();
                if (!v10)
                {
                  goto LABEL_71;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_3_5();
                if (v10)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_86;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (v1)
          {
            while (1)
            {
              v20 = *v1 - 48;
              if (v20 > 9)
              {
                goto LABEL_71;
              }

              v21 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_71;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_71;
              }

              ++v1;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v8 = 0;
        v13 = 1;
        goto LABEL_72;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v8 = 0;
          if (v1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_2_7();
              if (!v10 & v9)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_1_8();
              if (!v10)
              {
                goto LABEL_71;
              }

              v8 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_3_5();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v13 = 0;
LABEL_72:
          v24 = v13;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v8 = 0;
LABEL_80:
  LOBYTE(v5) = v0 == 0;
  v1 = v8;
LABEL_88:
  result.is_nil = v5;
  result.value = v1;
  return result;
}

NSObject *sub_232E48FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - v2;
  if (qword_28158FC98 != -1)
  {
    swift_once();
  }

  sub_232E47CC0(7, v3);
  v4 = sub_232E48140();
  sub_232E48C04(v3);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = sub_232E49C60();
  if ((v6 & 1) != 0 || sub_232E49F68(v5, &unk_284831B10))
  {

LABEL_7:
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v7 = sub_232E4CCE0();
    __swift_project_value_buffer(v7, qword_28158FCB0);
    v4 = sub_232E4CCC0();
    v8 = sub_232E4CF60();
    if (os_log_type_enabled(v4, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_232E2C000, v4, v8, "No software update error event found.", v9, 2u);
      MEMORY[0x238397C80](v9, -1, -1);
    }

LABEL_11:

    return 0;
  }

  if (qword_28158FC88 != -1)
  {
    swift_once();
  }

  sub_232E47CC0(7, v3);
  v11 = sub_232E48140();
  sub_232E48C04(v3);
  if (v11)
  {
    v12 = sub_232E49714(v4);

    if (v12 != -1)
    {
      goto LABEL_11;
    }
  }

  if (qword_28158FCA8 != -1)
  {
    swift_once();
  }

  v13 = sub_232E4CCE0();
  __swift_project_value_buffer(v13, qword_28158FCB0);
  v14 = v4;
  v15 = sub_232E4CCC0();
  v16 = sub_232E4CF60();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315394;
    v19 = sub_232E49774(&selRef_contentIdentifier);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_232E3161C(v19, v21, &v28);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_232E49774(&selRef_context);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_232E3161C(v23, v25, &v28);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_232E2C000, v15, v16, "Software update error event found. %s %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v18, -1, -1);
    MEMORY[0x238397C80](v17, -1, -1);
  }

  return v4;
}

void *DeviceEventCoordinator.recentErrorFlowIdentifiers()()
{
  if (static Bool.overrideSuggestedSectionContent.getter())
  {
    return &unk_284831B58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CD8, &qword_232E4EB68);
  sub_232E4B324();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_232E4CD90();
  if (sub_232E48418())
  {
    OUTLINED_FUNCTION_9_4();
    v4 = OUTLINED_FUNCTION_5_4();
    sub_232E4A698(v4, 6);
    v3 = v27;
  }

  else
  {
    sub_232E4A4FC(6);
    if (v5)
    {
      OUTLINED_FUNCTION_9_4();
      v27 = v3;
      v6 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CE0, &unk_232E4EB70);
      OUTLINED_FUNCTION_6_3();
      v3 = v27;
      v7 = *(v27[7] + 8 * v0);
      OUTLINED_FUNCTION_7_3();
    }
  }

  if (sub_232E48FB0())
  {
    OUTLINED_FUNCTION_9_4();
    v8 = OUTLINED_FUNCTION_5_4();
    sub_232E4A698(v8, 10);
    v3 = v27;
  }

  else
  {
    sub_232E4A4FC(10);
    if (v9)
    {
      OUTLINED_FUNCTION_9_4();
      v27 = v3;
      v10 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CE0, &unk_232E4EB70);
      OUTLINED_FUNCTION_6_3();
      v3 = v27;
      v11 = *(v27[7] + 8 * v0);
      OUTLINED_FUNCTION_7_3();
    }
  }

  v27 = sub_232E4ACE0(v3);
  sub_232E4B804(&v27);
  v12 = v27;
  v13 = v27[2];
  if (v13)
  {
    v27 = v2;
    sub_232E416A0(0, v13, 0);
    v1 = v27;
    v14 = v27[2];
    v15 = 4;
    do
    {
      v16 = v12[v15];
      v27 = v1;
      v17 = v1[3];
      if (v14 >= v17 >> 1)
      {
        sub_232E416A0((v17 > 1), v14 + 1, 1);
        v1 = v27;
      }

      v1[2] = v14 + 1;
      *(v1 + v14 + 32) = v16;
      v15 += 2;
      ++v14;
      --v13;
    }

    while (v13);
  }

  else
  {

    v1 = MEMORY[0x277D84F90];
  }

  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v18 = sub_232E4CCE0();
  __swift_project_value_buffer(v18, qword_28158FCB0);

  v19 = sub_232E4CCC0();
  v20 = sub_232E4CF60();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    v23 = MEMORY[0x238397400](v1, &type metadata for SupportFlowIdentifier);
    v25 = sub_232E3161C(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_232E2C000, v19, v20, "Recent error flow identifiers: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  return v1;
}

uint64_t sub_232E49714(void *a1)
{
  [v1 timestamp];
  v4 = v3;
  [a1 timestamp];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v5 < v4;
  }
}

id sub_232E49774(SEL *a1)
{
  result = [v1 eventBody];
  if (result)
  {
    return sub_232E4C49C(result, a1);
  }

  return result;
}

uint64_t sub_232E497C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CD8, &qword_232E4EB68);
  v2 = sub_232E4CD90();
  v3 = sub_232E49F94(a1);
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  if (v3 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x238397570](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_232E49774(&selRef_context);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v8;
      v11 = v9;
      v12 = sub_232E49AE0();
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = v12;
      if (!v12[2])
      {
        break;
      }

      v14 = sub_232E4A484(0x49786F626C69616DLL, 0xE900000000000044);
      if ((v15 & 1) == 0)
      {
        break;
      }

      sub_232E32208(v13[7] + 32 * v14, &v36);

      if (swift_dynamicCast())
      {
        v36 = v34;
        v37 = v35;

        MEMORY[0x238397350](v10, v11);

        v17 = v36;
        v16 = v37;
        if (!v2[2] || (sub_232E4A484(v36, v37), (v18 & 1) == 0))
        {
          v7 = v7;
          swift_isUniquelyReferenced_nonNull_native();
          v36 = v2;
          v32 = v17;
          v33 = v16;
          v19 = sub_232E4A484(v17, v16);
          if (__OFADD__(v2[2], (v20 & 1) == 0))
          {
            __break(1u);
            goto LABEL_31;
          }

          v21 = v19;
          v22 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CF0, &qword_232E4EBB8);
          if (sub_232E4D0A0())
          {
            v23 = sub_232E4A484(v32, v33);
            if ((v22 & 1) != (v24 & 1))
            {
              goto LABEL_33;
            }

            v21 = v23;
          }

          v2 = v36;
          if (v22)
          {
            v25 = v36[7];
            v26 = *(v25 + 8 * v21);
            *(v25 + 8 * v21) = v7;

            v7 = v26;
          }

          else
          {
            v36[(v21 >> 6) + 8] |= 1 << v21;
            v27 = (v2[6] + 16 * v21);
            *v27 = v32;
            v27[1] = v33;
            *(v2[7] + 8 * v21) = v7;
            v28 = v2[2];
            v29 = __OFADD__(v28, 1);
            v30 = v28 + 1;
            if (v29)
            {
              goto LABEL_32;
            }

            v2[2] = v30;
          }

          goto LABEL_17;
        }
      }

LABEL_18:
      if (v4 == ++v5)
      {
        return v2;
      }
    }

LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_232E4D200();
  __break(1u);
  return result;
}

id sub_232E49AE0()
{
  v14[4] = *MEMORY[0x277D85DE8];
  result = [v0 eventBody];
  if (result)
  {
    v2 = sub_232E4C42C(result);
    if (v3 >> 60 != 15)
    {
      v4 = v2;
      v5 = v3;
      v6 = objc_opt_self();
      v7 = sub_232E4C8E0();
      v14[0] = 0;
      v8 = [v6 JSONObjectWithData:v7 options:0 error:v14];

      if (v8)
      {
        v9 = v14[0];
        sub_232E4D000();
        sub_232E32268(v4, v5);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CF8, &unk_232E4EBC0);
        if (swift_dynamicCast())
        {
          result = v13;
          goto LABEL_8;
        }
      }

      else
      {
        v10 = v14[0];
        v11 = sub_232E4C890();

        swift_willThrow();
        sub_232E32268(v4, v5);
      }
    }

    result = 0;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232E49C60()
{
  result = sub_232E49774(&selRef_context);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_232E4D090();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_62;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_62;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_62;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_62;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_63;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_62;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_62;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v3) = 0;
LABEL_63:
          v28 = v3;
          v25 = v3;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_232E4AD9C(result, v2, 10);
  v25 = v26;
LABEL_64:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

BOOL sub_232E49F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_232E49F94(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

size_t sub_232E49FB8(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_232E4A29C(v8, v7);
  v10 = *(sub_232E4C7E0() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_232E41368(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_232E4A0A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA8, &unk_232E4EBD0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_232E41380(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
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

void *sub_232E4A1A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CE8, &unk_232E4EBA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_232E41380(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
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

    memcpy(v10 + 4, a4 + 4, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_232E4A29C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B58, &qword_232E4E410);
  v4 = *(sub_232E4C7E0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232E4A398(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B90, &unk_232E4E540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_232E4A414(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98A8, &qword_232E4D980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_232E4A484(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_232E4D210();
  sub_232E4CE30();
  v6 = sub_232E4D230();

  return sub_232E4A898(a1, a2, v6);
}

unint64_t sub_232E4A4FC(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_232E39640();

  return sub_232E4A94C(a1, v4);
}

uint64_t sub_232E4A540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_232E4A484(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
  if ((sub_232E4D0A0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_232E4A484(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_232E4D200();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SupportFlowSession() - 8) + 72) * v11;

    return sub_232E38918(a1, v18);
  }

  else
  {
    sub_232E4A7BC(v11, a2, a3, a1, v16);
  }
}

void sub_232E4A698(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_232E4A4FC(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CE0, &unk_232E4EB70);
  if ((sub_232E4D0A0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_232E4A4FC(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_232E4D200();
    __break(1u);
    return;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    sub_232E4A854(v9, a2, a1, v14);
  }
}

uint64_t sub_232E4A7BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SupportFlowSession();
  result = sub_232E334D8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_232E4A854(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_232E4A898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_232E4D1D0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232E4A94C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x73646F50726961;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x8000000232E4EC90;
          break;
        case 2:
          v8 = 0x79726574746162;
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x8000000232E4ECB0;
          break;
        case 4:
          v8 = 0x64656C6261736964;
          v7 = 0xEF746E756F636341;
          break;
        case 5:
          v8 = 0x6150746F67726F66;
          v9 = 0x64726F777373;
          goto LABEL_14;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1818845549;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x736567617373656DLL;
          break;
        case 8:
          v8 = 0x6573616863727570;
          v7 = 0xE900000000000073;
          break;
        case 9:
          v8 = 0x65526E6565726373;
          v7 = 0xEC00000072696170;
          break;
        case 0xA:
          v8 = 0x6572617774666F73;
          v9 = 0x657461647055;
LABEL_14:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xB:
          v7 = 0xE400000000000000;
          v8 = 1768319351;
          break;
        default:
          break;
      }

      v10 = 0xE700000000000000;
      v11 = 0x73646F50726961;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000012;
          v10 = 0x8000000232E4EC90;
          break;
        case 2:
          v11 = 0x79726574746162;
          break;
        case 3:
          v11 = 0xD000000000000012;
          v10 = 0x8000000232E4ECB0;
          break;
        case 4:
          v11 = 0x64656C6261736964;
          v10 = 0xEF746E756F636341;
          break;
        case 5:
          v11 = 0x6150746F67726F66;
          v12 = 0x64726F777373;
          goto LABEL_27;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1818845549;
          break;
        case 7:
          v10 = 0xE800000000000000;
          v11 = 0x736567617373656DLL;
          break;
        case 8:
          v11 = 0x6573616863727570;
          v10 = 0xE900000000000073;
          break;
        case 9:
          v11 = 0x65526E6565726373;
          v10 = 0xEC00000072696170;
          break;
        case 10:
          v11 = 0x6572617774666F73;
          v12 = 0x657461647055;
LABEL_27:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 11:
          v10 = 0xE400000000000000;
          v11 = 1768319351;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_232E4D1D0();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

void *sub_232E4ACE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_232E4A398(*(a1 + 16), 0);
  v4 = sub_232E4C508(&v6, (v3 + 4), v1, a1);

  sub_232E4C664();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

unsigned __int8 *sub_232E4AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_232E4CEA0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_232E4B378(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_232E4D090();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_232E4B324()
{
  result = qword_28158FCD0;
  if (!qword_28158FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158FCD0);
  }

  return result;
}

uint64_t sub_232E4B378(uint64_t a1, unint64_t a2)
{
  v2 = sub_232E4B3E4(sub_232E4B3E0, 0, a1, a2);
  v6 = sub_232E4B418(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_232E4B3E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_232E4B418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_232E4CE20();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_232E4CFF0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_232E4A414(v9, 0);
  v12 = sub_232E4B578(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_232E4CE20();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_232E4D090();
LABEL_4:

  return sub_232E4CE20();
}

unint64_t sub_232E4B578(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_232E4B788(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_232E4CE80();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_232E4D090();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_232E4B788(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_232E4CE60();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_232E4B788(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_232E4CE90();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x238397380](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_232E4B804(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232E4C66C(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_232E4B91C(v4);
  *a1 = v2;
}

_BYTE *storeEnumTagSinglePayload for DeviceEventCoordinator(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_232E4B91C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_232E4D1A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B98, &qword_232E4EBA0);
        v6 = sub_232E4CF00();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_232E4BB00(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_232E4BA20(0, v2, 1, a1);
  }
}

void sub_232E4BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 16 * v4 + 8);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *(v10 - 8);
        v12 = v8;
        v13 = v11;
        v14 = sub_232E49714(v13);

        if (v14 != 1)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v10;
        v8 = *(v10 + 8);
        *v10 = *(v10 - 16);
        *(v10 - 8) = v8;
        *(v10 - 16) = v15;
        v10 -= 16;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 16;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_232E4BB00(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v102 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v86 = (v8 + 16);
      v87 = *(v8 + 16);
      while (v87 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v88 = v8;
        v89 = (v8 + 16 * v87);
        v90 = *v89;
        v91 = &v86[2 * v87];
        v8 = v91[1];
        sub_232E4C14C((*a3 + 16 * *v89), (*a3 + 16 * *v91), (*a3 + 16 * v8), v102);
        if (v5)
        {
          break;
        }

        if (v8 < v90)
        {
          goto LABEL_118;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_119;
        }

        *v89 = v90;
        v89[1] = v8;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_120;
        }

        v87 = *v86 - 1;
        memmove(v91, v91 + 2, 16 * v92);
        *v86 = v87;
        v8 = v88;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_232E4C318(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v94 = v8;
      v102 = v5;
      v10 = *a3 + 16 * v9;
      v11 = 16 * v9;
      v12 = *(v10 + 8);
      v5 = *(*a3 + 16 * v7 + 8);
      v8 = v12;
      v98 = sub_232E49714(v8);

      v13 = (v10 + 40);
      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        if (++v7 >= v6)
        {
          break;
        }

        v16 = *(v13 - 2);
        v5 = *v13;
        v8 = v16;
        v17 = sub_232E49714(v8);

        v13 += 2;
        v14 = v15 + 1;
        if ((v98 == 1) == (v17 != 1))
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
LABEL_9:
      if (v98 == 1)
      {
        v18 = v9;
        if (v7 < v9)
        {
          goto LABEL_124;
        }

        if (v9 >= v7)
        {
          v5 = v102;
          v8 = v94;
        }

        else
        {
          if (v6 >= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = v6;
          }

          v20 = 16 * v19;
          v21 = v7;
          v5 = v102;
          v8 = v94;
          do
          {
            if (v18 != --v21)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v23 = (v22 + v11);
              v24 = v22 + v20;
              v25 = *v23;
              v26 = *(v23 + 1);
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v18;
            v20 -= 16;
            v11 += 16;
          }

          while (v18 < v21);
        }
      }

      else
      {
        v5 = v102;
        v8 = v94;
      }
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_123;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_232E4A1A4(0, *(v8 + 16) + 1, 1, v8);
    }

    v42 = *(v8 + 16);
    v41 = *(v8 + 24);
    v43 = v42 + 1;
    v102 = v5;
    if (v42 >= v41 >> 1)
    {
      v8 = sub_232E4A1A4((v41 > 1), v42 + 1, 1, v8);
    }

    *(v8 + 16) = v43;
    v5 = (v8 + 32);
    v44 = (v8 + 32 + 16 * v42);
    *v44 = v9;
    v44[1] = v7;
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v42)
    {
      while (1)
      {
        v45 = v43 - 1;
        v46 = &v5[2 * v43 - 2];
        v47 = (v8 + 16 * v43);
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v48 = *(v8 + 32);
          v49 = *(v8 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_59:
          if (v51)
          {
            goto LABEL_109;
          }

          v63 = *v47;
          v62 = v47[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_112;
          }

          v67 = v46[1];
          v68 = v67 - *v46;
          if (__OFSUB__(v67, *v46))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v65, v68))
          {
            goto LABEL_117;
          }

          if (v65 + v68 >= v50)
          {
            if (v50 < v68)
            {
              v45 = v43 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v43 < 2)
        {
          goto LABEL_111;
        }

        v70 = *v47;
        v69 = v47[1];
        v58 = __OFSUB__(v69, v70);
        v65 = v69 - v70;
        v66 = v58;
LABEL_74:
        if (v66)
        {
          goto LABEL_114;
        }

        v72 = *v46;
        v71 = v46[1];
        v58 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v73 < v65)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v45 - 1 >= v43)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v77 = v8;
        v78 = &v5[2 * v45 - 2];
        v79 = *v78;
        v80 = v45;
        v8 = &v5[2 * v45];
        v81 = *(v8 + 8);
        sub_232E4C14C((*a3 + 16 * *v78), (*a3 + 16 * *v8), (*a3 + 16 * v81), v100);
        if (v102)
        {
          goto LABEL_102;
        }

        if (v81 < v79)
        {
          goto LABEL_104;
        }

        v82 = v7;
        v83 = v5;
        v5 = *(v77 + 16);
        if (v80 > v5)
        {
          goto LABEL_105;
        }

        *v78 = v79;
        v78[1] = v81;
        if (v80 >= v5)
        {
          goto LABEL_106;
        }

        v84 = v80;
        v43 = v5 - 1;
        memmove(v8, (v8 + 16), 16 * (v5 - v84 - 1));
        v8 = v77;
        *(v77 + 16) = v5 - 1;
        v85 = v5 > 2;
        v5 = v83;
        v7 = v82;
        if (!v85)
        {
          goto LABEL_88;
        }
      }

      v52 = &v5[2 * v43];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_107;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_108;
      }

      v59 = v47[1];
      v60 = v59 - *v47;
      if (__OFSUB__(v59, *v47))
      {
        goto LABEL_110;
      }

      v58 = __OFADD__(v50, v60);
      v61 = v50 + v60;
      if (v58)
      {
        goto LABEL_113;
      }

      if (v61 >= v55)
      {
        v75 = *v46;
        v74 = v46[1];
        v58 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v76)
        {
          v45 = v43 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v5 = v102;
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v28 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v7 == v28)
  {
    goto LABEL_39;
  }

  v95 = v8;
  v96 = v9;
  v102 = v5;
  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v31 = v9 - v7;
  v99 = v28;
LABEL_32:
  v32 = *(v29 + 16 * v7 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *(v34 - 8);
    v36 = v32;
    v37 = v35;
    v38 = sub_232E49714(v37);

    if (v38 != 1)
    {
LABEL_37:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 == v99)
      {
        v7 = v99;
        v5 = v102;
        v8 = v95;
        v9 = v96;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = *(v34 + 8);
    *v34 = *(v34 - 16);
    *(v34 - 8) = v32;
    *(v34 - 16) = v39;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_232E4C14C(id *a1, id *a2, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_232E41380(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v4[1];
      v13 = v6[1];
      v14 = v12;
      v15 = sub_232E49714(v14);

      if (v15 != 1)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_232E41380(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    v19 = *(v6 - 1);
    v20 = *(v10 - 1);
    v21 = v19;
    v22 = sub_232E49714(v21);

    if (v22 == 1)
    {
      v23 = v6 - 2;
      v17 = v5 + 2 == v6;
      v6 -= 2;
      if (!v17)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v24 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v24])
  {
    memmove(v6, v4, 16 * v24);
  }

  return 1;
}

char *sub_232E4C32C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9CE8, &unk_232E4EBA8);
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

uint64_t sub_232E4C42C(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_232E4C8F0();

  return v3;
}

uint64_t sub_232E4C49C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232E4CDE0();

  return v4;
}

void *sub_232E4C508(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = *(*(a4 + 48) + v16);
      v18 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = v17;
      *(v11 + 8) = v18;
      if (v14 == v10)
      {
        v19 = v18;
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 16;
      result = v18;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_232E4D0A0();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_232E4D0B0();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}