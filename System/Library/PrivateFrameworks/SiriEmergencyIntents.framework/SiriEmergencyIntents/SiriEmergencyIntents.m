unint64_t NLConstants.asNamespace.getter()
{
  sub_266AEEC38();

  v0 = sub_266AEEB58();
  v2 = v1;

  MEMORY[0x26D5E9DD0](v0, v2);

  return 0xD000000000000012;
}

unint64_t NLConstants.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x636E656772656D65;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000012;
  if (a1 == 4)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (a1 == 1)
  {
    v4 = 0x636E656772656D65;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266ADBB00()
{
  *v0;
  *v0;
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266ADBC04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents11NLConstantsO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266ADBC34(uint64_t *a1@<X8>)
{
  v2 = 0x636E656772656D65;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x8000000266AF0520;
  v6 = 0xD000000000000015;
  v7 = 0x8000000266AF0540;
  v8 = 0xD000000000000012;
  if (v3 == 4)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0x8000000266AF0560;
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006272655679;
  v10 = 0xD000000000000012;
  if (v3 == 1)
  {
    v10 = 0x636E656772656D65;
  }

  else
  {
    v9 = 0x8000000266AF0500;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

uint64_t NLv4IdentifierNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000013;
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54746361746E6F63;
    v2 = 0x707954656E6F6870;
    if (a1 != 7)
    {
      v2 = 0x614E746E65746E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_266ADBE5C()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266ADE300();
  return sub_266AEED38();
}

uint64_t sub_266ADBEAC()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266ADE300();
  return sub_266AEED38();
}

uint64_t sub_266ADBEF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents23NLv4IdentifierNamespaceO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_266ADBF20@<X0>(uint64_t *a1@<X8>)
{
  result = NLv4IdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t NLv4EntityAttributeName.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6562616CLL;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x6F69746175746973;
}

uint64_t sub_266ADBFA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6F69746175746973;
    v3 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6F69746175746973;
    v7 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266AEECB8();
  }

  return v11 & 1;
}

uint64_t sub_266ADC098()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADC134()
{
  *v0;
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266ADC1BC()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADC254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents23NLv4EntityAttributeNameO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266ADC284(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6F69746175746973;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s20SiriEmergencyIntents11NLConstantsO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t _s20SiriEmergencyIntents23NLv4IdentifierNamespaceO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t _s20SiriEmergencyIntents23NLv4EntityAttributeNameO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266ADC3D0()
{
  result = qword_2800BD570;
  if (!qword_2800BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD570);
  }

  return result;
}

unint64_t sub_266ADC428()
{
  result = qword_2800BD578;
  if (!qword_2800BD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD578);
  }

  return result;
}

unint64_t sub_266ADC480()
{
  result = qword_2800BD580;
  if (!qword_2800BD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLConstants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLv4IdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLv4IdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLv4EntityAttributeName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NLv4EntityAttributeName(uint64_t result, unsigned int a2, unsigned int a3)
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

SiriEmergencyIntents::EmergencyCallIntent __swiftcall EmergencyCallIntent.init(emergencyOrganization:emergencySituation:isDirectCall:)(SiriEmergencyIntents::EmergencyOrganization_optional emergencyOrganization, SiriEmergencyIntents::EmergencySituation_optional emergencySituation, Swift::Bool isDirectCall)
{
  if (isDirectCall)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return (v3 & 0xFFFF0000 | (emergencySituation.value << 8) | emergencyOrganization.value);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyCallIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyCallIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

Swift::String __swiftcall EmergencyConfirmation.toPromptResponseOption()()
{
  v1 = v0;
  sub_266AEEC38();

  v2 = sub_266AEEB58();
  MEMORY[0x26D5E9DD0](v2);

  MEMORY[0x26D5E9DD0](0x2E65756C61562ELL, 0xE700000000000000);
  if (v1)
  {
    v3 = 28526;
  }

  else
  {
    v3 = 7562617;
  }

  if (v1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x26D5E9DD0](v3, v4);

  v5 = 0xD000000000000012;
  v6 = 0x8000000266AF1110;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t EmergencyConfirmation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

SiriEmergencyIntents::EmergencyConfirmation_optional __swiftcall EmergencyConfirmation.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_EmergencyConfirmation_no;
  }

  else
  {
    v2.value = SiriEmergencyIntents_EmergencyConfirmation_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266ADCBB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 28526;
  }

  else
  {
    v4 = 7562617;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 28526;
  }

  else
  {
    v6 = 7562617;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266AEECB8();
  }

  return v9 & 1;
}

unint64_t sub_266ADCC50()
{
  result = qword_2800BD588;
  if (!qword_2800BD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD588);
  }

  return result;
}

uint64_t sub_266ADCCA4()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADCD14()
{
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266ADCD70()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADCDDC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_266AEEC78();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_266ADCE3C(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 28526;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for EmergencyConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyConfirmation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t InstrumentationTask.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x65726953706F7453;
  }

  else
  {
    return 0x7269537472617453;
  }
}

SiriEmergencyIntents::InstrumentationTask_optional __swiftcall InstrumentationTask.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_InstrumentationTask_StopSiren;
  }

  else
  {
    v2.value = SiriEmergencyIntents_InstrumentationTask_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266ADD058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65726953706F7453;
  }

  else
  {
    v4 = 0x7269537472617453;
  }

  if (v3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v6 = 0x65726953706F7453;
  }

  else
  {
    v6 = 0x7269537472617453;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006ELL;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266AEECB8();
  }

  return v9 & 1;
}

unint64_t sub_266ADD10C()
{
  result = qword_2800BD590;
  if (!qword_2800BD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD590);
  }

  return result;
}

uint64_t sub_266ADD160()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD1EC()
{
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266ADD264()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD2EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_266AEEC78();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_266ADD34C(uint64_t *a1@<X8>)
{
  v2 = 0x7269537472617453;
  if (*v1)
  {
    v2 = 0x65726953706F7453;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_266ADD3A8()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADD4BC()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t DirectInvocationURI.payloadKey.getter(unsigned __int8 a1)
{
  v2 = sub_266AEEAC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 5)
    {
      return 0xD000000000000012;
    }

    if (a1 == 3)
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    if (a1 == 1)
    {
      return 0x614E746E65746E69;
    }

    if (a1 == 2)
    {
      return 0x72506E6F74747562;
    }
  }

  v8 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_266AEEAB8();
  v10 = sub_266AEEBC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = 0xD000000000000034;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    if (a1)
    {
      if (a1 == 4)
      {
        v14 = "emergency.callEmergencyResource";
      }

      else
      {
        v11 = 0xD000000000000035;
        v14 = "emergency.startSiren";
      }
    }

    else
    {
      v14 = "StartSiren";
    }

    v15 = sub_266ADDBA0(v11, v14 | 0x8000000000000000, &v16);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_266ADA000, v9, v10, "Undefined payloadKey for this DirectInvocationURI: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5EA2D0](v13, -1, -1);
    MEMORY[0x26D5EA2D0](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

unint64_t DirectInvocationURI.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000034;
  v2 = 0xD00000000000003FLL;
  if (a1 == 4)
  {
    v3 = 0xD000000000000034;
  }

  else
  {
    v3 = 0xD000000000000035;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000032;
  if (a1 != 1)
  {
    v4 = 0xD000000000000035;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266ADD924()
{
  *v0;
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266ADD9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents19DirectInvocationURIO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266ADDA2C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000034;
  v3 = *v1;
  v4 = "StartSiren";
  v5 = "emergency.buttonPress";
  v6 = 0xD00000000000003FLL;
  v7 = "emergency.callEmergencyResource";
  if (v3 == 4)
  {
    v8 = 0xD000000000000034;
  }

  else
  {
    v8 = 0xD000000000000035;
  }

  if (v3 != 4)
  {
    v7 = "emergency.startSiren";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "Phone.StartAudioCall";
  v10 = 0xD000000000000032;
  if (v3 != 1)
  {
    v10 = 0xD000000000000035;
    v9 = "socialConversation";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t sub_266ADDAD0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_266ADDB44(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_266ADDBA0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_266ADDBA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266ADDC6C(v11, 0, 0, 1, a1, a2);
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
    sub_266ADE258(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266ADDC6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266ADDD78(a5, a6);
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
    result = sub_266AEEC58();
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

uint64_t sub_266ADDD78(uint64_t a1, unint64_t a2)
{
  v4 = sub_266ADDDC4(a1, a2);
  sub_266ADDEF4(&unk_287842B48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266ADDDC4(uint64_t a1, unint64_t a2)
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

  v6 = sub_266ADDFE0(v5, 0);
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

  result = sub_266AEEC58();
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
        v10 = sub_266AEEB98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266ADDFE0(v10, 0);
        result = sub_266AEEC28();
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

uint64_t sub_266ADDEF4(uint64_t result)
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

  result = sub_266ADE054(result, v12, 1, v3);
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

void *sub_266ADDFE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5A0, &qword_266AEF708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_266ADE054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5A0, &qword_266AEF708);
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

_BYTE **sub_266ADE148(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
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

uint64_t _s20SiriEmergencyIntents19DirectInvocationURIO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266ADE1F4()
{
  result = qword_2800BD598;
  if (!qword_2800BD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD598);
  }

  return result;
}

uint64_t sub_266ADE258(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_266ADE300()
{
  sub_266AEEB78();
}

uint64_t sub_266ADE474()
{
  sub_266AEEB78();
}

uint64_t sub_266ADE598()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADE6D0()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266ADE7E0()
{
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t EmergencyVerb.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819042147;
  v2 = 0x736972616D6D7573;
  if (a1 != 6)
  {
    v2 = 0x6978456B63656863;
  }

  v3 = 0x656C62616E65;
  if (a1 != 4)
  {
    v3 = 0x656C6261736964;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6E6F69746361;
  if (a1 != 2)
  {
    v4 = 0x627265566F6ELL;
  }

  if (a1)
  {
    v1 = 1684957542;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266ADE9E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents0B4VerbO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266ADEA10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1819042147;
  v5 = 0xE900000000000065;
  v6 = 0x736972616D6D7573;
  if (v2 != 6)
  {
    v6 = 0x6978456B63656863;
    v5 = 0xEE0065636E657473;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (v2 != 4)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6F69746361;
  if (v2 != 2)
  {
    v9 = 0x627265566F6ELL;
  }

  if (*v1)
  {
    v4 = 1684957542;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t _s20SiriEmergencyIntents0B4VerbO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t _s20SiriEmergencyIntents0B4VerbO4from07usoTaskD0ACSgSSSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 8;
  }

  if (a1 == 1819042147 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x627265566F6ELL && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x656C62616E65 && a2 == 0xE600000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x736972616D6D7573 && a2 == 0xE900000000000065 || (sub_266AEECB8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6978456B63656863 && a2 == 0xEE0065636E657473 || (sub_266AEECB8() & 1) != 0)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

unint64_t sub_266ADEDA8()
{
  result = qword_2800BD5A8;
  if (!qword_2800BD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EmergencyDialogAct.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for EmergencyDialogAct()
{
  result = qword_2800BD610;
  if (!qword_2800BD610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmergencyDialogAct.init(userParse:nlv4MigrationFeatureFlagIsEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B0, &qword_266AEF850);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B8, &qword_266AEF858);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5C0, &qword_266AEF860);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5C8, &qword_266AEF868);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5D0, &qword_266AEF870);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5D8, &qword_266AEF878);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - v26;
  v28 = sub_266AEE778();
  v56 = *(v28 - 8);
  v29 = *(v56 + 16);
  v62 = a3;
  v29(a3, a1, v28);
  v30 = swift_allocObject();
  v63 = a2 & 1;
  *(v30 + 16) = a2;
  sub_266AEEA58();
  v31 = sub_266AEEA68();
  (*(v24 + 8))(v27, v23);
  v31(&v65, a1);

  v32 = v65;
  v33 = type metadata accessor for EmergencyDialogAct();
  v34 = v62;
  *(v62 + v33[6]) = v32;
  *(swift_allocObject() + 16) = v63;
  sub_266AEEA58();
  v35 = sub_266AEEA68();
  (*(v19 + 8))(v22, v18);
  v35((v64 + 4), a1);

  *(v34 + v33[7]) = BYTE4(v64[0]);
  *(swift_allocObject() + 16) = v63;
  v36 = v49;
  sub_266AEEA58();
  v37 = v51;
  v38 = sub_266AEEA68();
  (*(v50 + 8))(v36, v37);
  v38((v64 + 3), a1);

  *(v34 + v33[8]) = BYTE3(v64[0]);
  v39 = v52;
  sub_266AEEA58();
  v40 = v54;
  v41 = sub_266AEEA68();
  (*(v53 + 8))(v39, v40);
  v41((v64 + 2), a1);

  *(v34 + v33[9]) = BYTE2(v64[0]);
  v42 = v55;
  sub_266AEEA58();
  v43 = v58;
  v44 = sub_266AEEA68();
  (*(v57 + 8))(v42, v43);
  v44((v64 + 1), a1);

  *(v34 + v33[5]) = BYTE1(v64[0]);
  *(swift_allocObject() + 16) = v63;
  v45 = v59;
  sub_266AEEA58();
  v46 = v61;
  v47 = sub_266AEEA68();
  (*(v60 + 8))(v45, v46);
  v47(v64, a1);

  LOBYTE(v47) = v64[0];
  result = (*(v56 + 8))(a1, v28);
  *(v34 + v33[10]) = v47;
  return result;
}

uint64_t sub_266ADF8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE778();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmergencyDialogAct.description.getter()
{
  BYTE8(v9) = 0;
  sub_266AEEC38();
  MEMORY[0x26D5E9DD0](0xD000000000000020, 0x8000000266AF1150);
  v1 = type metadata accessor for EmergencyDialogAct();
  v10 = *(v0 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
  v2 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v2);

  MEMORY[0x26D5E9DD0](0xD000000000000011, 0x8000000266AF1180);
  v11 = *(v0 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E8, &qword_266AEF888);
  v3 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v3);

  MEMORY[0x26D5E9DD0](0x69727474412D200ALL, 0xEE00203A65747562);
  v12 = *(v0 + v1[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5F0, &qword_266AEF890);
  v4 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v4);

  MEMORY[0x26D5E9DD0](0xD000000000000011, 0x8000000266AF11A0);
  v13 = *(v0 + v1[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5F8, &qword_266AEF898);
  v5 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v5);

  MEMORY[0x26D5E9DD0](0x3A627265562D200ALL, 0xE900000000000020);
  v14 = *(v0 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD600, &qword_266AEF8A0);
  v6 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v6);

  MEMORY[0x26D5E9DD0](0x72657665532D200ALL, 0xED0000203A797469);
  *&v9 = *(v0 + v1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD608, &qword_266AEF8A8);
  v7 = sub_266AEEBD8();
  MEMORY[0x26D5E9DD0](v7);

  MEMORY[0x26D5E9DD0](34, 0xE100000000000000);
  return *(&v9 + 1);
}

uint64_t sub_266ADFCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266AEE778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 32));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266ADFDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266AEE778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 2;
  }

  return result;
}

void sub_266ADFE78()
{
  sub_266AEE778();
  if (v0 <= 0x3F)
  {
    sub_266ADFFD4(319, &qword_2800BD620);
    if (v1 <= 0x3F)
    {
      sub_266ADFFD4(319, &qword_2800BD628);
      if (v2 <= 0x3F)
      {
        sub_266ADFFD4(319, &qword_2800BD630);
        if (v3 <= 0x3F)
        {
          sub_266ADFFD4(319, &qword_2800BD638);
          if (v4 <= 0x3F)
          {
            sub_266ADFFD4(319, &qword_2800BD640);
            if (v5 <= 0x3F)
            {
              sub_266ADFFD4(319, &qword_2800BD648);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_266ADFFD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_266AEEBE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_266AE0030@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v41 = a3;
  v6 = sub_266AEEAC8();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5B8, &qword_266AEF858);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  if (a2)
  {
    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v44)
    {
      sub_266AEE968();
      if (swift_dynamicCast())
      {
        sub_266AEE998();

        if (*v43)
        {
          v15 = sub_266AEE8B8();

          if (v15)
          {
            v40 = v6;
            v16 = sub_266AEE8A8();
            v39 = sub_266AEDD98(v16, &unk_287842F48);
            v18 = v17;

            if (v18)
            {
              v19 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v39, v18);
              LODWORD(v39) = v19;

              v6 = v40;
              if (v39 != 2)
              {
                goto LABEL_24;
              }
            }

            else
            {

              v6 = v40;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v43);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v44)
    {
      sub_266AEE988();
      if (swift_dynamicCast())
      {
        sub_266AEE8F8();

        if (*v43)
        {
          v21 = sub_266AEE8B8();

          if (v21)
          {
            v40 = v6;
            v22 = sub_266AEE8A8();
            v39 = sub_266AEDD98(v22, &unk_287842F70);
            v24 = v23;

            if (v24)
            {
              v19 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v39, v24);
              LODWORD(v39) = v19;

              v6 = v40;
              if (v39 != 2)
              {
LABEL_24:
                LOBYTE(v29) = v19 & 1;
LABEL_35:
                *v41 = v29;
                return result;
              }
            }

            else
            {

              v6 = v40;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v43);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v44)
    {
      sub_266AEE938();
      if (swift_dynamicCast())
      {
        sub_266AEE848();

        if (*v43)
        {
          v25 = sub_266AEE8B8();

          if (v25)
          {
            v40 = v6;
            v26 = sub_266AEE8A8();
            v39 = sub_266AEDD98(v26, &unk_287842F98);
            v28 = v27;

            if (v28)
            {
              v19 = _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(v39, v28);
              LODWORD(v39) = v19;

              v6 = v40;
              if (v39 != 2)
              {
                goto LABEL_24;
              }
            }

            else
            {

              v6 = v40;
            }
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v43);
    }
  }

  sub_266AEE778();
  sub_266AEEA58();
  v30 = sub_266AEEA68();
  (*(v11 + 8))(v14, v10);
  v30(v43, a1);
  if (v3)
  {
    MEMORY[0x26D5EA1E0](v3);
  }

  else
  {

    if (v43[0] <= 3u && !v43[0])
    {

      LOBYTE(v29) = 0;
      goto LABEL_35;
    }

    v31 = sub_266AEECB8();

    LOBYTE(v29) = 0;
    if (v31)
    {
      goto LABEL_35;
    }
  }

  if (Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287842FC0).value._object)
  {
    result = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0();
    if ((result - 10) <= 7u)
    {
      v29 = (0xF0u >> (result - 10)) & 1;
      goto LABEL_35;
    }
  }

  v32 = sub_266AEEAA8();
  swift_beginAccess();
  v33 = v42;
  (*(v42 + 16))(v9, v32, v6);
  v34 = sub_266AEEAB8();
  v35 = sub_266AEEBB8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266ADA000, v34, v35, "No EmergencyAttribute found in user parse", v36, 2u);
    MEMORY[0x26D5EA2D0](v36, -1, -1);
  }

  (*(v33 + 8))(v9, v6);
  v37 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D61DF8], v37);
  return swift_willThrow();
}

uint64_t sub_266AE07DC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_266AEEAC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserParse.usoTask.getter() && (v7 = sub_266AEEA48(), v9 = v8, , v10 = _s20SiriEmergencyIntents0B4VerbO4from07usoTaskD0ACSgSSSg_tFZ_0(v7, v9), result = , v10 != 8))
  {
    *a1 = v10;
  }

  else
  {
    v12 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v3 + 16))(v6, v12, v2);
    v13 = sub_266AEEAB8();
    v14 = sub_266AEEBB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266ADA000, v13, v14, "No EmergencyVerb found in user parse", v15, 2u);
      MEMORY[0x26D5EA2D0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v16 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D61DF8], v16);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_266AE0A18@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_30;
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v33)
  {
    sub_266AEE968();
    if (swift_dynamicCast())
    {
      sub_266AEE998();

      if (v32[0])
      {
        v31 = a2;
        v9 = sub_266AEE8A8();
        sub_266AEDD98(v9, &unk_287843090);
        v11 = v10;

        if (v11)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();

          a2 = v31;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v31;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v32);
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v33)
  {
    sub_266AEE988();
    if (swift_dynamicCast())
    {
      sub_266AEE8F8();

      if (v32[0])
      {
        v31 = a2;
        v13 = sub_266AEE8A8();
        sub_266AEDD98(v13, &unk_2878430B8);
        v15 = v14;

        if (v15)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();

          a2 = v31;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v31;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v32);
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (!v33)
  {
    sub_266AE2128(v32);
    goto LABEL_23;
  }

  sub_266AEEA08();
  if (swift_dynamicCast())
  {
    sub_266AEE8F8();

    if (v32[0])
    {
      v31 = a2;
      v16 = sub_266AEE8A8();
      sub_266AEDD98(v16, &unk_2878430E0);
      v18 = v17;

      if (!v18)
      {

        a2 = v31;
        goto LABEL_23;
      }

      v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();

      a2 = v31;
      if (v12 != 4)
      {
LABEL_28:
        result = v12;
LABEL_35:
        *a2 = result;
        return result;
      }
    }
  }

LABEL_23:
  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (v33)
  {
    sub_266AEE938();
    if (swift_dynamicCast())
    {
      sub_266AEE848();

      if (v32[0])
      {
        v31 = a2;
        v19 = sub_266AEE8A8();
        sub_266AEDD98(v19, &unk_287843108);
        v21 = v20;

        if (v21)
        {
          v12 = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();

          a2 = v31;
          if (v12 != 4)
          {
            goto LABEL_28;
          }
        }

        else
        {

          a2 = v31;
        }
      }
    }
  }

  else
  {
    sub_266AE2128(v32);
  }

LABEL_30:
  if (Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287843130).value._object)
  {
    result = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();
    if (result != 4)
    {
      goto LABEL_35;
    }
  }

  if (Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_287843158).value._object)
  {
    v23 = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0() - 10;
    if (v23 < 0xCu)
    {
      result = byte_266AEF932[v23];
      goto LABEL_35;
    }
  }

  v24 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v8, v24, v4);
  v25 = sub_266AEEAB8();
  v26 = sub_266AEEBB8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_266ADA000, v25, v26, "No EmergencyOrganization found in user parse", v27, 2u);
    MEMORY[0x26D5EA2D0](v27, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v28 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D61DF8], v28);
  return swift_willThrow();
}

uint64_t sub_266AE1038@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE9B8();
      if (swift_dynamicCast())
      {
        sub_266AEE8C8();

        if (v41[0])
        {
          v40 = a2;
          v9 = sub_266AEE8A8();
          v10 = sub_266AEDD98(v9, &unk_2878434E8);
          v12 = v11;

          if (v12)
          {
            v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v10, v12);

            a2 = v40;
            if (v13 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE9B8();
      if (swift_dynamicCast())
      {
        sub_266AEE8C8();

        if (v41[0])
        {
          v40 = a2;
          v15 = sub_266AEE8A8();
          v16 = sub_266AEDD98(v15, &unk_287843510);
          v18 = v17;

          if (v18)
          {
            v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v16, v18);

            a2 = v40;
            if (v13 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE948();
      if (swift_dynamicCast())
      {
        sub_266AEE9A8();

        if (v41[0])
        {
          v40 = a2;
          v19 = sub_266AEE8A8();
          v20 = sub_266AEDD98(v19, &unk_287843538);
          v22 = v21;

          if (v22)
          {
            v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v20, v22);

            a2 = v40;
            if (v13 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE978();
      if (swift_dynamicCast())
      {
        sub_266AEE9A8();

        if (v41[0])
        {
          v40 = a2;
          v23 = sub_266AEE8A8();
          v24 = sub_266AEDD98(v23, &unk_287843560);
          v26 = v25;

          if (v26)
          {
            v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v24, v26);

            a2 = v40;
            if (v13 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }

    Siri_Nlu_External_UserParse.usoTask.getter();
    sub_266AEE8D8();

    if (v42)
    {
      sub_266AEE958();
      if (swift_dynamicCast())
      {
        sub_266AEE848();

        if (v41[0])
        {
          v40 = a2;
          v27 = sub_266AEE8A8();
          v28 = sub_266AEDD98(v27, &unk_287843588);
          v30 = v29;

          if (v30)
          {
            v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v28, v30);

            a2 = v40;
            if (v13 != 35)
            {
              goto LABEL_46;
            }
          }

          else
          {

            a2 = v40;
          }
        }
      }
    }

    else
    {
      sub_266AE2128(v41);
    }
  }

  v31 = Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_2878435B0);
  if (v31.value._object)
  {
    v13 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v31.value._countAndFlagsBits, v31.value._object);

    if (v13 != 35)
    {
      goto LABEL_46;
    }
  }

  if (Siri_Nlu_External_UserParse.identifierValue(for:)(&unk_2878435D8).value._object)
  {
    v32 = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0();
    if (v32 != 23)
    {
      result = _s20SiriEmergencyIntents0B9SituationO14catiIntentNameACSgAA010CATIIntentG0O_tcfC_0(v32);
      if (result != 35)
      {
        v13 = result;
LABEL_46:
        *a2 = v13;
        return result;
      }
    }
  }

  v33 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v8, v33, v4);
  v34 = sub_266AEEAB8();
  v35 = sub_266AEEBB8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266ADA000, v34, v35, "No EmergencySituation found in parse", v36, 2u);
    MEMORY[0x26D5EA2D0](v36, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v37 = sub_266AEEA78();
  sub_266AE20D0();
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D61DF8], v37);
  return swift_willThrow();
}

uint64_t sub_266AE1808@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v1 = sub_266AEEAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_266AEE7C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_266AEE748();
  if (*(v16 + 16))
  {
    (*(v9 + 16))(v13, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    (*(v9 + 32))(v15, v13, v8);
    if (sub_266AEE788())
    {
      v17 = 0;
LABEL_10:
      result = (*(v9 + 8))(v15, v8);
      *v34 = v17;
      return result;
    }

    if (sub_266AEE798() & 1) != 0 || (sub_266AEE7A8())
    {
      v17 = 1;
      goto LABEL_10;
    }

    v25 = sub_266AEEAA8();
    swift_beginAccess();
    v26 = v2;
    v27 = v33;
    (*(v2 + 16))(v33, v25, v1);
    v28 = sub_266AEEAB8();
    v29 = sub_266AEEBB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_266ADA000, v28, v29, "No EmergencyConfirmation found in parse", v30, 2u);
      MEMORY[0x26D5EA2D0](v30, -1, -1);
    }

    (*(v26 + 8))(v27, v1);
    v31 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D61DF8], v31);
    swift_willThrow();
    return (*(v9 + 8))(v15, v8);
  }

  else
  {

    v18 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v2 + 16))(v7, v18, v1);
    v19 = sub_266AEEAB8();
    v20 = sub_266AEEBB8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266ADA000, v19, v20, "No EmergencyConfirmation found in parse (no userDialogAct)", v21, 2u);
      MEMORY[0x26D5EA2D0](v21, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    v22 = sub_266AEEA78();
    sub_266AE20D0();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D61DF8], v22);
    return swift_willThrow();
  }
}

uint64_t sub_266AE1CC8@<X0>(char a1@<W1>, char *a2@<X8>)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  if ((a1 & 1) == 0)
  {
    v16 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v9, v16, v4);
    v17 = sub_266AEEAB8();
    v18 = sub_266AEEBB8();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_14:

      (*(v5 + 8))(v9, v4);
      v22 = sub_266AEEA78();
      sub_266AE20D0();
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D61DF8], v22);
      return swift_willThrow();
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266ADA000, v17, v18, "nlv4MigrationFeatureFlagIsEnabled == false. No crisisSeverity found in parse.", v19, 2u);
LABEL_12:
    MEMORY[0x26D5EA2D0](v19, -1, -1);
    goto LABEL_14;
  }

  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();

  if (!v31[3])
  {
    sub_266AE2128(v31);
LABEL_10:
    v20 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v11, v20, v4);
    v17 = sub_266AEEAB8();
    v21 = sub_266AEEBB8();
    if (!os_log_type_enabled(v17, v21))
    {
      v9 = v11;
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266ADA000, v17, v21, "No crisisSeverity found in parse", v19, 2u);
    v9 = v11;
    goto LABEL_12;
  }

  sub_266AEE9B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_266AEE8C8();

  if (!v31[0])
  {
    goto LABEL_10;
  }

  v12 = sub_266AEE8A8();
  sub_266AEDD98(v12, &unk_287843600);
  v14 = v13;

  if (!v14)
  {
    v25 = sub_266AEE8A8();
    sub_266AEDD98(v25, &unk_287843628);
    v27 = v26;

    if (v27)
    {
      v15 = 1;
      goto LABEL_17;
    }

    v28 = sub_266AEE8A8();
    sub_266AEDD98(v28, &unk_287843650);
    v30 = v29;

    if (v30)
    {
      v15 = 0;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v15 = 2;
LABEL_17:

LABEL_18:

  *a2 = v15;
  return result;
}

unint64_t sub_266AE20D0()
{
  result = qword_2800BD650;
  if (!qword_2800BD650)
  {
    sub_266AEEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD650);
  }

  return result;
}

uint64_t sub_266AE2128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD658, &qword_266AEF928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t CATIIntentName.rawValue.getter(char a1)
{
  result = 0xD00000000000002FLL;
  switch(a1)
  {
    case 1:
    case 2:
    case 7:
      result = 0xD00000000000002BLL;
      break;
    case 3:
    case 9:
      result = 0xD00000000000002ELL;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000037;
      break;
    case 6:
      result = 0xD00000000000002ALL;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 10:
    case 13:
      result = 0xD00000000000006CLL;
      break;
    case 11:
      result = 0xD00000000000006FLL;
      break;
    case 12:
      result = 0xD000000000000068;
      break;
    case 14:
      result = 0xD00000000000004ALL;
      break;
    case 15:
    case 16:
      result = 0xD000000000000046;
      break;
    case 17:
      result = 0xD000000000000049;
      break;
    case 18:
    case 21:
      result = 0xD000000000000039;
      break;
    case 19:
      result = 0xD00000000000003CLL;
      break;
    case 20:
      result = 0xD000000000000035;
      break;
    case 22:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266AE23FC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CATIIntentName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == CATIIntentName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

uint64_t sub_266AE2484()
{
  v1 = *v0;
  sub_266AEED18();
  CATIIntentName.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE24E8()
{
  CATIIntentName.rawValue.getter(*v0);
  sub_266AEEB78();
}

uint64_t sub_266AE253C()
{
  v1 = *v0;
  sub_266AEED18();
  CATIIntentName.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE259C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_266AE25CC@<X0>(unint64_t *a1@<X8>)
{
  result = CATIIntentName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s20SiriEmergencyIntents14CATIIntentNameO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEECC8();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266AE2650()
{
  result = qword_2800BD660;
  if (!qword_2800BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATIIntentName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CATIIntentName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t CrisisSeverity.rawValue.getter(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  return result;
}

uint64_t sub_266AE2850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "crisisSituationHigh";
  v4 = 0xD000000000000015;
  if (v2 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "crisisSituationHigh";
  }

  else
  {
    v6 = "emergencySirenNoun";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "crisisSituationMedium";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "emergencySirenNoun";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "crisisSituationMedium";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266AEECB8();
  }

  return v11 & 1;
}

uint64_t sub_266AE2924()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE29BC()
{
  *v0;
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266AE2A40()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE2AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents14CrisisSeverityO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266AE2B04(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "crisisSituationHigh";
  v4 = 0xD000000000000015;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "emergencySirenNoun";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "crisisSituationMedium";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t _s20SiriEmergencyIntents14CrisisSeverityO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266AE2BAC()
{
  result = qword_2800BD668;
  if (!qword_2800BD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD668);
  }

  return result;
}

uint64_t GeneralEmergencyIntent.isLowRisk.getter(char a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD00000000000001ALL && 0x8000000266AF0F40 == v2)
  {
    goto LABEL_3;
  }

  v3 = sub_266AEECB8();

  if (v3)
  {
    return 1;
  }

  if (EmergencySituation.rawValue.getter(a1) == 1886152040 && v5 == 0xE400000000000000)
  {
LABEL_3:

    return 1;
  }

  v6 = sub_266AEECB8();

  return v6 & 1;
}

uint64_t GeneralEmergencyIntent.isHighRisk.getter(char a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD00000000000001BLL && 0x8000000266AF0F20 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

SiriEmergencyIntents::GeneralEmergencyIntent_optional __swiftcall GeneralEmergencyIntent.init(emergencySituation:)(SiriEmergencyIntents::EmergencySituation_optional emergencySituation)
{
  value = emergencySituation.value;
  v2 = emergencySituation.value;
  v3 = sub_266AEEAC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v2 != 35)
  {
    if (EmergencySituation.rawValue.getter(value) == 0xD00000000000001ALL && 0x8000000266AF0F40 == v16)
    {
      goto LABEL_7;
    }

    v17 = sub_266AEECB8();

    if (v17)
    {
      return value;
    }

    if (EmergencySituation.rawValue.getter(value) == 0xD00000000000001BLL && 0x8000000266AF0F20 == v19)
    {
      goto LABEL_7;
    }

    v20 = sub_266AEECB8();

    if (v20)
    {
      return value;
    }

    if (EmergencySituation.rawValue.getter(value) == 1886152040 && v21 == 0xE400000000000000)
    {
LABEL_7:

      return value;
    }

    v22 = sub_266AEECB8();

    if (v22)
    {
      return value;
    }
  }

  v8 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_266AEEAB8();
  v10 = sub_266AEEBC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v23[15] = value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
    v13 = sub_266AEEBD8();
    v15 = sub_266ADDBA0(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_266ADA000, v9, v10, "Failed to initialize GeneralEmergencyIntent. Unsupported emergencySituation: [%s]", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D5EA2D0](v12, -1, -1);
    MEMORY[0x26D5EA2D0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 35;
}

uint64_t getEnumTagSinglePayload for EmergencySituation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencySituation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SiriEmergencyIntents::EmergencyAttribute_optional __swiftcall EmergencyAttribute.init(catiIntentName:)(SiriEmergencyIntents::CATIIntentName catiIntentName)
{
  if (((catiIntentName - 10) & 0xF8) != 0)
  {
    return 2;
  }

  else
  {
    return (0x101010100000000uLL >> (8 * (catiIntentName - 10)));
  }
}

SiriEmergencyIntents::EmergencyAttribute_optional __swiftcall EmergencyAttribute.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_266AEEC78();

  if (v1 == 1)
  {
    v2.value = SiriEmergencyIntents_EmergencyAttribute_website;
  }

  else
  {
    v2.value = SiriEmergencyIntents_EmergencyAttribute_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t EmergencyAttribute.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x65746973626577;
  }

  else
  {
    return 0x756E20656E6F6870;
  }
}

uint64_t sub_266AE3274(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65746973626577;
  }

  else
  {
    v4 = 0x756E20656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEC0000007265626DLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x65746973626577;
  }

  else
  {
    v6 = 0x756E20656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEC0000007265626DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_266AEECB8();
  }

  return v9 & 1;
}

uint64_t sub_266AE3324()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE33B0()
{
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266AE3428()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE34B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_266AEEC78();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_266AE3510(uint64_t *a1@<X8>)
{
  v2 = 0x756E20656E6F6870;
  if (*v1)
  {
    v2 = 0x65746973626577;
  }

  v3 = 0xEC0000007265626DLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s20SiriEmergencyIntents0B9AttributeO4from15identifierValueACSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E20656E6F6870 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_266AEECB8() & 1) != 0 || a1 == 0x656E6F6870 && a2 == 0xE500000000000000 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {
    return 1;
  }

  v6 = sub_266AEECB8();
  v8 = a1 == 0x65676170626577 && a2 == 0xE700000000000000;
  result = 1;
  if ((v6 & 1) == 0 && !v8)
  {
    if (sub_266AEECB8())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_266AE3698()
{
  result = qword_2800BD670;
  if (!qword_2800BD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD670);
  }

  return result;
}

uint64_t sub_266AE36FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0xD000000000000012;
  v4 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x8000000266AF0580;
    if (a1 == 2)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v11 = 0x8000000266AF05A0;
    }

    v13 = 0x8000000266AF0540;
    v14 = 0xD000000000000015;
    if (a1)
    {
      v14 = 0xD000000000000012;
      v13 = 0x8000000266AF0500;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x707954656E6F6870;
    v6 = 0xE900000000000065;
    if (a1 != 7)
    {
      v5 = 0x614E746E65746E69;
      v6 = 0xEA0000000000656DLL;
    }

    if (a1 == 6)
    {
      v5 = 0x54746361746E6F63;
      v6 = 0xEB00000000657079;
    }

    v7 = 0x8000000266AF05C0;
    v8 = 0xD000000000000015;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v7 = 0x8000000266AF05E0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0x8000000266AF05A0;
        v3 = 0xD000000000000013;
        goto LABEL_46;
      }

      v16 = "emergencySirenNoun";
    }

    else
    {
      if (!a2)
      {
        v15 = "emergencyOrganization";
LABEL_39:
        v2 = (v15 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000015;
        goto LABEL_46;
      }

      v16 = "emergencySituation";
    }

LABEL_45:
    v2 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_46;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = "crisisSituationMedium";
      goto LABEL_39;
    }

    v16 = "crisisSituationLow";
    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v3 = 0x54746361746E6F63;
  }

  else if (a2 == 7)
  {
    v3 = 0x707954656E6F6870;
    v2 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x614E746E65746E69;
    v2 = 0xEA0000000000656DLL;
  }

LABEL_46:
  if (v9 == v3 && v10 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_266AEECB8();
  }

  return v17 & 1;
}

uint64_t sub_266AE3964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000034;
  v3 = "StartSiren";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000034;
  }

  else
  {
    v5 = 0xD000000000000035;
  }

  if (a1 == 4)
  {
    v6 = "emergency.callEmergencyResource";
  }

  else
  {
    v6 = "emergency.startSiren";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000003FLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "emergency.buttonPress";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000032;
  }

  else
  {
    v9 = 0xD000000000000035;
  }

  if (v4 == 1)
  {
    v10 = "Phone.StartAudioCall";
  }

  else
  {
    v10 = "socialConversation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000034;
    v10 = "StartSiren";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000003FLL;
      v3 = "emergency.buttonPress";
    }

    else if (a2 == 4)
    {
      v3 = "emergency.callEmergencyResource";
    }

    else
    {
      v2 = 0xD000000000000035;
      v3 = "emergency.startSiren";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000032;
      v3 = "Phone.StartAudioCall";
    }

    else
    {
      v2 = 0xD000000000000035;
      v3 = "socialConversation";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_266AEECB8();
  }

  return v12 & 1;
}

uint64_t sub_266AE3AC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819042147;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x736972616D6D7573;
  v6 = 0xE900000000000065;
  if (a1 != 6)
  {
    v5 = 0x6978456B63656863;
    v6 = 0xEE0065636E657473;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (a1 != 4)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6E6F69746361;
  if (a1 != 2)
  {
    v9 = 0x627265566F6ELL;
  }

  v10 = 1684957542;
  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v10 = 1819042147;
  }

  if (a1 > 1u)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x736972616D6D7573)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xEE0065636E657473;
        if (v11 != 0x6978456B63656863)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C62616E65)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x656C6261736964)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v13 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x6E6F69746361)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x627265566F6ELL;
    }

    else
    {
      v13 = 0xE400000000000000;
      if (a2)
      {
        if (v11 != 1684957542)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    if (v11 != v2)
    {
LABEL_43:
      v14 = sub_266AEECB8();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_266AE3D14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2 == 2)
    {
      v4 = "sexual assault crisis center";
    }

    else
    {
      v4 = "poison control center";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2)
    {
      v4 = "suicide prevention center";
    }

    else
    {
      v4 = "ncyConfirmation_webSearch";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2 == 2)
    {
      v6 = "sexual assault crisis center";
    }

    else
    {
      v6 = "poison control center";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2)
    {
      v6 = "suicide prevention center";
    }

    else
    {
      v6 = "ncyConfirmation_webSearch";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_266AEECB8();
  }

  return v7 & 1;
}

uint64_t sub_266AE3E24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x636E656772656D65;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x8000000266AF0540;
    if (a1 == 4)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (a1 != 4)
    {
      v9 = 0x8000000266AF0560;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x8000000266AF0520;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0xED00006272655679;
    if (a1 == 1)
    {
      v6 = 0x636E656772656D65;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 1)
    {
      v5 = 0x8000000266AF0500;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x636E656772656D65;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000079;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000015;
      }

      else
      {
        v11 = 0xD000000000000012;
      }

      if (a2 == 4)
      {
        v2 = 0x8000000266AF0540;
      }

      else
      {
        v2 = 0x8000000266AF0560;
      }

      if (v7 != v11)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v2 = 0x8000000266AF0520;
    v3 = 0xD000000000000015;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xED00006272655679;
      if (v7 != 0x636E656772656D65)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x8000000266AF0500;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_40;
  }

  if (v7 != v3)
  {
LABEL_43:
    v12 = sub_266AEECB8();
    goto LABEL_44;
  }

LABEL_40:
  if (v8 != v2)
  {
    goto LABEL_43;
  }

  v12 = 1;
LABEL_44:

  return v12 & 1;
}

SiriEmergencyIntents::EmergencyCSAMIntent_optional __swiftcall EmergencyCSAMIntent.init(emergencySituation:emergencyVerb:originalInput:)(SiriEmergencyIntents::EmergencySituation_optional emergencySituation, SiriEmergencyIntents::EmergencyVerb_optional emergencyVerb, Swift::String_optional originalInput)
{
  object = originalInput.value._object;
  countAndFlagsBits = originalInput.value._countAndFlagsBits;
  value = emergencySituation.value;
  v7 = sub_266AEEAC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((value - 6) > 3)
  {

    v14 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v8 + 16))(v12, v14, v7);
    v15 = sub_266AEEAB8();
    v16 = sub_266AEEBC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v25[15] = value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
      v19 = sub_266AEEBD8();
      v21 = sub_266ADDBA0(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_266ADA000, v15, v16, "Failed to initialize EmergencyCSAMIntent. Unsupported emergencySituation: [%s]", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D5EA2D0](v18, -1, -1);
      MEMORY[0x26D5EA2D0](v17, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    v13 = 0;
    countAndFlagsBits = 0;
    object = 1;
  }

  else
  {
    v13 = value | (emergencyVerb.value << 8);
  }

  v22 = v13;
  v23 = countAndFlagsBits;
  v24 = object;
  result.value.originalInput.value._object = v24;
  result.value.originalInput.value._countAndFlagsBits = v23;
  *&result.value.emergencySituation = v22;
  result.is_nil = v10;
  return result;
}

uint64_t EmergencyCSAMIntent.isCSAMContentReporting.getter(__int16 a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000011 && 0x8000000266AF0FB0 == v2)
  {
    goto LABEL_3;
  }

  v4 = sub_266AEECB8();

  if (v4)
  {
    return 1;
  }

  if (EmergencySituation.rawValue.getter(a1) == 0x7078655F6D617363 && v5 == 0xED0000746963696CLL)
  {
  }

  else
  {
    v6 = sub_266AEECB8();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (HIBYTE(a1) <= 3u)
  {
    if (HIBYTE(a1) <= 1u && !HIBYTE(a1))
    {
LABEL_3:

      return 1;
    }
  }

  else if (HIBYTE(a1) >= 8u)
  {
    return 0;
  }

  v7 = sub_266AEECB8();

  return v7 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMHelpBadActor.getter(char a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000266AF0F70 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMHelpVictim.getter(char a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000266AF0F90 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266AEECB8();
  }

  return v2 & 1;
}

uint64_t EmergencyCSAMIntent.isCSAMExplicit.getter(char a1)
{
  if (EmergencySituation.rawValue.getter(a1) == 0x7078655F6D617363 && v1 == 0xED0000746963696CLL)
  {

    return 1;
  }

  else
  {
    v3 = sub_266AEECB8();

    return v3 & 1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266AE45F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_266AE464C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyBasicIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for EmergencyBasicIntent(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EmergencyOrganizationInfo.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EmergencyOrganizationInfo.languageCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EmergencyOrganizationInfo.city.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t EmergencyOrganizationInfo.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EmergencyOrganizationInfo.phoneNumber.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t EmergencyOrganizationInfo.website.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t EmergencyOrganizationInfo.websearchQuery.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t EmergencyOrganizationInfo.emergencyOrganization.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

void __swiftcall EmergencyOrganizationInfo.init(countryCode:languageCode:city:name:phoneNumber:website:websearchQuery:emergencyOrganization:)(SiriEmergencyIntents::EmergencyOrganizationInfo *__return_ptr retstr, Swift::String countryCode, Swift::String languageCode, Swift::String city, Swift::String name, Swift::String phoneNumber, Swift::String website, Swift::String websearchQuery, Swift::String emergencyOrganization)
{
  retstr->countryCode = countryCode;
  retstr->languageCode = languageCode;
  retstr->city = city;
  retstr->name = name;
  retstr->phoneNumber = phoneNumber;
  retstr->website = website;
  retstr->websearchQuery = websearchQuery;
  retstr->emergencyOrganization = emergencyOrganization;
}

double EmergencyOrganizationInfo.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_266AE5A08(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_266AE4A48()
{
  v1 = *v0;
  sub_266AEED18();
  MEMORY[0x26D5E9F70](v1);
  return sub_266AEED38();
}

uint64_t sub_266AE4ABC()
{
  v1 = *v0;
  sub_266AEED18();
  MEMORY[0x26D5E9F70](v1);
  return sub_266AEED38();
}

unint64_t sub_266AE4B00()
{
  v1 = *v0;
  v2 = 0x437972746E756F63;
  v3 = 0x6372616573626577;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6D754E656E6F6870;
  if (v1 != 4)
  {
    v4 = 0x65746973626577;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 2037672291;
  if (v1 != 2)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = 0x65676175676E616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266AE4C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AE6304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266AE4C54(uint64_t a1)
{
  v2 = sub_266AE5FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AE4C90(uint64_t a1)
{
  v2 = sub_266AE5FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void static EmergencyOrganizationInfo.siren()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0x636E656772656D45;
  a1[7] = 0xEF6E657269532079;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
}

void static EmergencyOrganizationInfo.emergencyServices()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0xD000000000000012;
  a1[7] = 0x8000000266AF11C0;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
}

uint64_t EmergencyOrganizationInfo.websiteURL.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return sub_266AEE6C8();
}

uint64_t EmergencyOrganizationInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD678, &qword_266AEFD50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AE5FF8();
  sub_266AEED58();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  sub_266AEEC98();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v28[14] = 1;
  sub_266AEEC98();
  v15 = v3[4];
  v16 = v3[5];
  v28[13] = 2;
  sub_266AEEC98();
  v17 = v3[6];
  v18 = v3[7];
  v28[12] = 3;
  sub_266AEEC98();
  v19 = v3[8];
  v20 = v3[9];
  v28[11] = 4;
  sub_266AEEC98();
  v21 = v3[10];
  v22 = v3[11];
  v28[10] = 5;
  sub_266AEEC98();
  v23 = v3[12];
  v24 = v3[13];
  v28[9] = 6;
  sub_266AEEC98();
  v26 = v3[14];
  v27 = v3[15];
  v28[8] = 7;
  sub_266AEEC98();
  return (*(v6 + 8))(v9, v5);
}

double sub_266AE4F9C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_266AE5A08(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

BOOL EmergencyOrganizationInfo.hasNameAndNumber.getter()
{
  v1 = v0[7];
  if ((v1 & 0x2000000000000000) != 0)
  {
    if ((v1 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v0[6] & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

LABEL_3:
  v2 = v0[9];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v0[8] & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

BOOL EmergencyOrganizationInfo.hasNameAndWebsite.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = v0[7];
  if ((v5 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v0[6] & 0xFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

LABEL_3:
  v6 = v0[10];
  v7 = v0[11];
  sub_266AEE6C8();
  v8 = sub_266AEE6D8();
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8) != 1;
  sub_266AE604C(v4);
  return v9;
}

BOOL EmergencyOrganizationInfo.hasWebsearchQuery.getter()
{
  v1 = *(v0 + 104);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 96) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

void __swiftcall EmergencyOrganizationInfo.asWebsearchQueryOnly()(SiriEmergencyIntents::EmergencyOrganizationInfo *__return_ptr retstr)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  v4 = v1[6];
  v10 = v1[7];
  v11 = v4;
  v8 = v3;
  v9 = v12;
  sub_266AE60B4(&v13, v7);
  sub_266AE60B4(&v12, v7);
  sub_266AE60B4(&v11, v7);
  sub_266AE60B4(&v10, v7);
  v5 = v9;
  retstr->countryCode = v8;
  retstr->languageCode = v5;
  retstr->city._countAndFlagsBits = 0;
  retstr->city._object = 0xE000000000000000;
  retstr->name._countAndFlagsBits = 0;
  retstr->name._object = 0xE000000000000000;
  retstr->phoneNumber._countAndFlagsBits = 0;
  retstr->phoneNumber._object = 0xE000000000000000;
  retstr->website._countAndFlagsBits = 0;
  retstr->website._object = 0xE000000000000000;
  v6 = v1[7];
  retstr->websearchQuery = v1[6];
  retstr->emergencyOrganization = v6;
}

void *EmergencyOrganizationInfo.asRREntities()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD690, &qword_266AEFD60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v10 = sub_266AEEAF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v22 = sub_266AEE898();
  v68 = *(v22 - 8);
  v69 = v22;
  v23 = *(v68 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1[7];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v63 = v21;
  v64 = v19;
  v67 = v5;
  v62 = v9;
  v28 = v10;
  v29 = v1[9];
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v61 = v11;
    v31 = sub_266AEE9F8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = sub_266AEE9E8();

    sub_266AEE9D8();
    v35 = sub_266AEEA38();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_266AEEA28();
    sub_266AEEA18();

    sub_266AEE9C8();

    sub_266AEEB68();
    if (v38)
    {
    }

    v39 = v28;

    sub_266AEE868();
    sub_266AEE858();
    (*(v68 + 8))(v25, v69);
    if (MEMORY[0x26D5E9B30](v34))
    {
      v40 = sub_266AEEAD8();
      (*(*(v40 - 8) + 56))(v62, 1, 1, v40);

      v41 = v63;
      sub_266AEEAE8();
      (*(v61 + 16))(v64, v41, v28);
      v42 = sub_266AEE2EC(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_266AEE2EC(v43 > 1, v44 + 1, 1, v42);
      }

      v45 = v67;

      v11 = v61;
      (*(v61 + 8))(v63, v39);
      v42[2] = v44 + 1;
      (*(v11 + 32))(v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44, v64, v39);
      goto LABEL_17;
    }

    v42 = MEMORY[0x277D84F90];
    v11 = v61;
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v45 = v67;
LABEL_17:
  v47 = v1[10];
  v46 = v1[11];

  sub_266AEE6C8();
  v48 = sub_266AEE6D8();
  if ((*(*(v48 - 8) + 48))(v45, 1, v48) == 1)
  {

    sub_266AE604C(v45);
  }

  else
  {
    sub_266AE604C(v45);
    v49 = sub_266AEE928();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = sub_266AEE918();
    sub_266AEE908();
    sub_266AEEB68();
    if (v53)
    {
    }

    sub_266AEE868();
    sub_266AEE858();
    (*(v68 + 8))(v25, v69);
    if (MEMORY[0x26D5E9B30](v52))
    {
      v54 = sub_266AEEAD8();
      (*(*(v54 - 8) + 56))(v62, 1, 1, v54);

      v55 = v65;
      sub_266AEEAE8();
      v56 = v66;
      (*(v11 + 16))(v66, v55, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_266AEE2EC(0, v42[2] + 1, 1, v42);
      }

      v58 = v42[2];
      v57 = v42[3];
      if (v58 >= v57 >> 1)
      {
        v42 = sub_266AEE2EC(v57 > 1, v58 + 1, 1, v42);
      }

      (*(v11 + 8))(v55, v39);
      v42[2] = v58 + 1;
      (*(v11 + 32))(v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v58, v56, v39);
    }

    else
    {
    }
  }

  return v42;
}

uint64_t sub_266AE5A08@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD6B0, &unk_266AEFF70);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v51 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AE5FF8();
  sub_266AEED48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v65 = v5;
  LOBYTE(v74[0]) = 0;
  v10 = sub_266AEEC88();
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  LOBYTE(v74[0]) = 1;
  v15 = sub_266AEEC88();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v62 = v17;
  v63 = v13;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v64 = v18;
  LOBYTE(v74[0]) = 2;
  v19 = sub_266AEEC88();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v61 = v22;
  LOBYTE(v74[0]) = 3;
  v23 = sub_266AEEC88();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v58 = v25;
  v59 = v21;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  LOBYTE(v74[0]) = 4;
  v27 = sub_266AEEC88();
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v57 = v30;
  LOBYTE(v74[0]) = 5;
  v56 = 0;
  v31 = sub_266AEEC88();
  v53 = v29;
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v54 = v34;
  LOBYTE(v74[0]) = 6;
  v52 = sub_266AEEC88();
  v36 = 0xE000000000000000;
  v37 = v35;
  if (v35)
  {
    v36 = v35;
  }

  v55 = v36;
  LOBYTE(v74[0]) = 7;
  v38 = sub_266AEEC88();
  v60 = 0;
  v40 = v52;
  if (!v37)
  {
    v40 = 0;
  }

  v51 = v33;
  v52 = v40;
  if (v39)
  {
    v41 = v38;
  }

  else
  {
    v41 = 0;
  }

  v42 = 0xE000000000000000;
  if (v39)
  {
    v42 = v39;
  }

  v56 = v42;
  (*(v65 + 8))(v8, v75);
  *&v66 = v63;
  *(&v66 + 1) = v14;
  v75 = v14;
  v43 = v64;
  *&v67 = v62;
  *(&v67 + 1) = v64;
  v44 = v61;
  *&v68 = v59;
  *(&v68 + 1) = v61;
  *&v69 = v58;
  *(&v69 + 1) = v26;
  v45 = v57;
  *&v70 = v53;
  *(&v70 + 1) = v57;
  v46 = v55;
  *&v71 = v51;
  *(&v71 + 1) = v54;
  *&v72 = v52;
  *(&v72 + 1) = v55;
  *&v73 = v41;
  *(&v73 + 1) = v56;
  sub_266AE65B4(&v66, v74);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v74[0] = v63;
  v74[1] = v75;
  v74[2] = v62;
  v74[3] = v43;
  v74[4] = v59;
  v74[5] = v44;
  v74[6] = v58;
  v74[7] = v26;
  v74[8] = v53;
  v74[9] = v45;
  v74[10] = v51;
  v74[11] = v54;
  v74[12] = v52;
  v74[13] = v46;
  v74[14] = v41;
  v74[15] = v56;
  result = sub_266AE65EC(v74);
  v47 = v71;
  a2[4] = v70;
  a2[5] = v47;
  v48 = v73;
  a2[6] = v72;
  a2[7] = v48;
  v49 = v67;
  *a2 = v66;
  a2[1] = v49;
  v50 = v69;
  a2[2] = v68;
  a2[3] = v50;
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

unint64_t sub_266AE5FF8()
{
  result = qword_2800BD680;
  if (!qword_2800BD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD680);
  }

  return result;
}

uint64_t sub_266AE604C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD688, &qword_266AEFD58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_266AE6134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266AE617C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266AE6200()
{
  result = qword_2800BD698;
  if (!qword_2800BD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD698);
  }

  return result;
}

unint64_t sub_266AE6258()
{
  result = qword_2800BD6A0;
  if (!qword_2800BD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6A0);
  }

  return result;
}

unint64_t sub_266AE62B0()
{
  result = qword_2800BD6A8;
  if (!qword_2800BD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6A8);
  }

  return result;
}

uint64_t sub_266AE6304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_266AEECB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_266AEECB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_266AEECB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_266AEECB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6372616573626577 && a2 == 0xEE00797265755168 || (sub_266AEECB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000266AF0540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_266AEECB8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EmergencyInformationIntentResponseCode.hashValue.getter(unsigned __int8 a1)
{
  sub_266AEED18();
  MEMORY[0x26D5E9F70](a1);
  return sub_266AEED38();
}

uint64_t sub_266AE66E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD6B8, &qword_266AEFF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall EmergencyInformationIntentResponse.init(code:emergencyOrganizationInfo:)(SiriEmergencyIntents::EmergencyInformationIntentResponse *__return_ptr retstr, SiriEmergencyIntents::EmergencyInformationIntentResponseCode code, SiriEmergencyIntents::EmergencyOrganizationInfo_optional *emergencyOrganizationInfo)
{
  *&v3[39] = emergencyOrganizationInfo->value.city;
  *&v3[23] = emergencyOrganizationInfo->value.languageCode;
  *&v3[7] = emergencyOrganizationInfo->value.countryCode;
  *&v3[119] = emergencyOrganizationInfo->value.emergencyOrganization;
  *&v3[103] = emergencyOrganizationInfo->value.websearchQuery;
  *&v3[87] = emergencyOrganizationInfo->value.website;
  *&v3[71] = emergencyOrganizationInfo->value.phoneNumber;
  *&v3[55] = emergencyOrganizationInfo->value.name;
  retstr->code = code;
  retstr->emergencyOrganizationInfo.value.countryCode = *v3;
  retstr->emergencyOrganizationInfo.value.phoneNumber = *&v3[64];
  retstr->emergencyOrganizationInfo.value.name = *&v3[48];
  retstr->emergencyOrganizationInfo.value.city = *&v3[32];
  retstr->emergencyOrganizationInfo.value.languageCode = *&v3[16];
  *(&retstr->emergencyOrganizationInfo.value.emergencyOrganization._object + 7) = *&v3[127];
  retstr->emergencyOrganizationInfo.value.emergencyOrganization = *&v3[112];
  retstr->emergencyOrganizationInfo.value.websearchQuery = *&v3[96];
  retstr->emergencyOrganizationInfo.value.website = *&v3[80];
}

unint64_t sub_266AE67DC()
{
  result = qword_2800BD6C0;
  if (!qword_2800BD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyInformationIntent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyInformationIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriEmergencyIntents0B16OrganizationInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_266AE6998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t sub_266AE69F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

SiriEmergencyIntents::EmergencyOrganization_optional __swiftcall EmergencyOrganization.init(catiIntentName:)(SiriEmergencyIntents::CATIIntentName catiIntentName)
{
  if ((catiIntentName - 10) > 0xBu)
  {
    return 4;
  }

  else
  {
    return byte_266AF0238[(catiIntentName - 10)];
  }
}

unint64_t EmergencyOrganization.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000015;
  if (a1 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266AE6B24()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE6BD8()
{
  *v0;
  *v0;
  *v0;
  sub_266AEEB78();
}

uint64_t sub_266AE6C78()
{
  v1 = *v0;
  sub_266AEED18();
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AE6D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_266AE6D58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "ncyConfirmation_webSearch";
  v4 = "sexual assault crisis center";
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000019;
    v4 = "poison control center";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "suicide prevention center";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t _s20SiriEmergencyIntents0B12OrganizationO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEEC78();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266AE6E1C()
{
  result = qword_2800BD6C8;
  if (!qword_2800BD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyOrganization(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EmergencyOrganization(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t EmergencyOrganizationInfoProvider.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266AEE718();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmergencyOrganizationInfoProvider.locationProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EmergencyOrganizationInfoProvider() + 20);

  return sub_266AE70C8(v3, a1);
}

uint64_t type metadata accessor for EmergencyOrganizationInfoProvider()
{
  result = qword_2800BD6E8;
  if (!qword_2800BD6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266AE70C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t EmergencyOrganizationInfoProvider.resourceDecoder.getter()
{
  v1 = (v0 + *(type metadata accessor for EmergencyOrganizationInfoProvider() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_266AE7170(*v1);
  return v2;
}

uint64_t sub_266AE7170(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t EmergencyOrganizationInfoProvider.resourceDecoder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EmergencyOrganizationInfoProvider() + 24));
  v6 = v5[1];
  result = sub_266AE71C8(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_266AE71C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t EmergencyOrganizationInfoProvider.init(siriLocale:locationProvider:resourceDecoder:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for EmergencyOrganizationInfoProvider();
  v11 = (a5 + *(v10 + 24));
  v12 = sub_266AEE718();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = sub_266AE72CC(a2, a5 + *(v10 + 20));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_266AE72CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266AE72E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v57 - v12;
  v13 = sub_266AEE6D8();
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v60 = a1;
  v21 = sub_266AEEB08();
  v22 = sub_266AEEB08();
  v23 = [v20 pathForResource:v21 ofType:v22 inDirectory:0];

  if (v23)
  {
    v61 = v20;
    sub_266AEEB18();

    sub_266AEE6B8();

    v24 = sub_266AEE6E8();
    v36 = v35;
    v58 = v18;
    v37 = v24;
    v38 = sub_266AEE6A8();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_266AEE698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD730, &unk_266AF03E0);
    sub_266AEBB0C();
    sub_266AEE688();
    v57 = v37;
    v64 = v36;

    v43 = v65[1];
    v44 = sub_266AEEAA8();
    swift_beginAccess();
    v45 = v5;
    v46 = *(v5 + 16);
    v47 = v59;
    v48 = v4;
    v46(v59, v44, v4);

    v49 = sub_266AEEAB8();
    v50 = sub_266AEEBB8();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      v53 = v45;
      v54 = swift_slowAlloc();
      v65[0] = v54;
      *v52 = 136315138;
      *(v52 + 4) = sub_266ADDBA0(v60, a2, v65);
      _os_log_impl(&dword_266ADA000, v49, v50, "Successfully decoded plist for resourceName: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x26D5EA2D0](v54, -1, -1);
      MEMORY[0x26D5EA2D0](v52, -1, -1);

      (*(v53 + 8))(v47, v48);
    }

    else
    {

      (*(v45 + 8))(v47, v4);
    }

    v55 = v62;
    v56 = v58;

    sub_266AEBBE4(v57, v64);

    (*(v63 + 8))(v56, v55);
  }

  else
  {
    v25 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v11, v25, v4);

    v26 = v20;
    v27 = v4;
    v28 = sub_266AEEAB8();
    v29 = sub_266AEEBC8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v59 = v27;
      v31 = v30;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65[0] = v33;
      *v31 = 138412546;
      *(v31 + 4) = v26;
      *v32 = v26;
      *(v31 + 12) = 2080;
      v34 = v26;
      *(v31 + 14) = sub_266ADDBA0(v60, a2, v65);
      _os_log_impl(&dword_266ADA000, v28, v29, "Error getting path from bundle [%@] for resource file: %s.plist", v31, 0x16u);
      sub_266AEBA4C(v32);
      MEMORY[0x26D5EA2D0](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D5EA2D0](v33, -1, -1);
      MEMORY[0x26D5EA2D0](v31, -1, -1);

      (*(v5 + 8))(v11, v59);
    }

    else
    {

      (*(v5 + 8))(v11, v27);
    }

    sub_266AEB1A8();
    v43 = swift_allocError();
    *v41 = 0;
  }

  return v43;
}

uint64_t EmergencyOrganizationInfoProvider.getOrganizationInfo(situation:organization:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 2704) = v3;
  *(v4 + 146) = a3;
  *(v4 + 145) = a2;
  *(v4 + 2696) = a1;
  v5 = type metadata accessor for EmergencyOrganizationInfoProvider();
  *(v4 + 2712) = v5;
  v6 = *(v5 - 8);
  *(v4 + 2720) = v6;
  *(v4 + 2728) = *(v6 + 64);
  *(v4 + 2736) = swift_task_alloc();
  v7 = sub_266AEEAC8();
  *(v4 + 2744) = v7;
  v8 = *(v7 - 8);
  *(v4 + 2752) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 2760) = swift_task_alloc();
  *(v4 + 2768) = swift_task_alloc();
  *(v4 + 2776) = swift_task_alloc();
  *(v4 + 2784) = swift_task_alloc();
  *(v4 + 2792) = swift_task_alloc();
  *(v4 + 2800) = swift_task_alloc();
  *(v4 + 2808) = swift_task_alloc();
  *(v4 + 2816) = swift_task_alloc();
  *(v4 + 2824) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266AE7D58, 0, 0);
}

uint64_t sub_266AE7D58()
{
  v103 = v0;
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2752);
  v3 = *(v0 + 2744);
  v4 = sub_266AEEAA8();
  *(v0 + 2832) = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v0 + 2840) = v5;
  *(v0 + 2848) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_266AEEAB8();
  v7 = sub_266AEEBB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 145);
    v9 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v9 = 136315394;
    v97 = v5;
    v99 = v96;
    if (v8 == 35)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      v11 = EmergencySituation.rawValue.getter(*(v0 + 145));
      v10 = v16;
    }

    v17 = *(v0 + 146);
    v18 = sub_266ADDBA0(v11, v10, &v99);

    v19 = 0xE300000000000000;
    *(v9 + 4) = v18;
    *(v9 + 12) = 2080;
    v20 = 0x8000000266AF0E80;
    v21 = 0xD000000000000015;
    v22 = 0xD000000000000019;
    if (v17 == 3)
    {
      v19 = 0x8000000266AF0EA0;
    }

    else
    {
      v22 = 7104878;
    }

    if (v17 != 2)
    {
      v21 = v22;
      v20 = v19;
    }

    v23 = 0xD000000000000019;
    v24 = 0x8000000266AF0E40;
    if (v17)
    {
      v23 = 0xD00000000000001CLL;
      v24 = 0x8000000266AF0E60;
    }

    if (v17 <= 1)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v17 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v20;
    }

    v95 = *(v0 + 2824);
    v27 = *(v0 + 2752);
    v28 = *(v0 + 2744);
    v29 = sub_266ADDBA0(v25, v26, &v99);

    *(v9 + 14) = v29;
    _os_log_impl(&dword_266ADA000, v6, v7, "Fetching org info for situation: %s, organization: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v96, -1, -1);
    MEMORY[0x26D5EA2D0](v9, -1, -1);

    v15 = *(v27 + 8);
    v15(v95, v28);
    v5 = v97;
  }

  else
  {
    v12 = *(v0 + 2824);
    v13 = *(v0 + 2752);
    v14 = *(v0 + 2744);

    v15 = *(v13 + 8);
    v15(v12, v14);
  }

  *(v0 + 2856) = v15;
  v30.value = inferUsableSituation(situation:organization:)(*(v0 + 145), *(v0 + 146)).value;
  if (v30.value == SiriEmergencyIntents_EmergencySituation_unknownDefault)
  {
    v31 = v0 + 152;
    v32 = *(v0 + 2760);
    v33 = *(v0 + 2744);
    swift_beginAccess();
    v5(v32, v4, v33);
    v34 = sub_266AEEAB8();
    v35 = sub_266AEEBC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266ADA000, v34, v35, "Both EmergencySituation and EmergencyOrganization were nil while fetching Resource", v36, 2u);
      MEMORY[0x26D5EA2D0](v36, -1, -1);
    }

    v37 = *(v0 + 2760);
    v38 = *(v0 + 2752);
    v39 = *(v0 + 2744);

    v15(v37, v39);
    sub_266AEB1A8();
    v40 = swift_allocError();
    *v41 = 1;
    *(v0 + 152) = v40;
    goto LABEL_32;
  }

  value = v30.value;
  v43 = *(v0 + 2704);
  v44 = (v43 + *(*(v0 + 2712) + 24));
  v45 = *v44;
  v46 = v44[1];
  if (*v44)
  {
    v47 = sub_266AEBC3C;
    v48 = *v44;
    v49 = v44[1];
  }

  else
  {
    v50 = *(v0 + 2736);
    v51 = *(v0 + 2728);
    v52 = *(v0 + 2720);
    sub_266AEB208(v43, v50);
    v53 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v49 = swift_allocObject();
    sub_266AEB36C(v50, v49 + v53);
    v47 = sub_266AEB480;
    v48 = sub_266AEB3D0;
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v48;
  *(v54 + 24) = v49;
  if ((value & 0xFE) == 4)
  {
    v55 = 0x8000000266AF1210;
    sub_266AE7170(v45);
    v56 = 0xD00000000000001DLL;
  }

  else
  {
    *(v0 + 2672) = EmergencySituation.rawValue.getter(value);
    *(v0 + 2680) = v57;
    sub_266AE7170(v45);
    sub_266AEB484();
    v58 = sub_266AEEBF8();
    v60 = v59;

    *(v0 + 2656) = v58;
    *(v0 + 2664) = v60;
    *(v0 + 2640) = 32;
    *(v0 + 2648) = 0xE100000000000000;
    *(v0 + 2624) = 0;
    *(v0 + 2632) = 0xE000000000000000;
    v61 = sub_266AEEC18();
    v63 = v62;

    v99 = v61;
    v100 = v63;

    MEMORY[0x26D5E9DD0](0x617A696E6167724FLL, 0xED0000736E6F6974);

    v56 = v99;
    v55 = v100;
  }

  v99 = v56;
  v100 = v55;
  v47(&v101, &v99);

  v64 = v101;
  *(v0 + 2864) = v101;
  if (v102)
  {
    v31 = v0 + 288;
    *(v0 + 288) = v64;
LABEL_32:
    sub_266AEB1FC(v31);
    v65 = *(v31 + 112);
    *(v0 + 112) = *(v31 + 96);
    *(v0 + 128) = v65;
    *(v0 + 144) = *(v31 + 128);
    v66 = *(v31 + 48);
    *(v0 + 48) = *(v31 + 32);
    *(v0 + 64) = v66;
    v67 = *(v31 + 80);
    *(v0 + 80) = *(v31 + 64);
    *(v0 + 96) = v67;
    v68 = *(v31 + 16);
    *(v0 + 16) = *v31;
    *(v0 + 32) = v68;
    v69 = *(v0 + 2824);
    v70 = *(v0 + 2816);
    v71 = *(v0 + 2808);
    v72 = *(v0 + 2800);
    v73 = *(v0 + 2792);
    v74 = *(v0 + 2784);
    v75 = *(v0 + 2776);
    v76 = *(v0 + 2768);
    v77 = *(v0 + 2760);
    v78 = *(v0 + 2736);
    v79 = *(v0 + 2696);
    v80 = *(v0 + 48);
    v81 = *(v0 + 80);
    *(v79 + 48) = *(v0 + 64);
    *(v79 + 64) = v81;
    *(v79 + 16) = v68;
    *(v79 + 32) = v80;
    v82 = *(v0 + 112);
    v83 = *(v0 + 128);
    *(v79 + 128) = *(v0 + 144);
    *(v79 + 96) = v82;
    *(v79 + 112) = v83;
    *(v79 + 80) = v67;
    *v79 = *(v0 + 16);

    v84 = *(v0 + 8);

    return v84();
  }

  v86 = *(v0 + 2712);
  v87 = *(v0 + 2704);

  *(v0 + 2872) = sub_266AEE708();
  *(v0 + 2880) = v88;
  v89 = *(v86 + 20);
  *(v0 + 148) = v89;
  v90 = *(v87 + v89 + 24);
  v91 = *(v87 + v89 + 32);
  __swift_project_boxed_opaque_existential_1((v87 + v89), v90);
  v92 = *(v91 + 16);
  v98 = (v92 + *v92);
  v93 = v92[1];
  v94 = swift_task_alloc();
  *(v0 + 2888) = v94;
  *v94 = v0;
  v94[1] = sub_266AE8578;

  return v98(v90, v91);
}

uint64_t sub_266AE8578(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2888);
  v6 = *v2;
  *(v3 + 2896) = a1;
  *(v3 + 2904) = a2;

  return MEMORY[0x2822009F8](sub_266AE867C, 0, 0);
}

uint64_t sub_266AE867C()
{
  v275 = v0;
  v1 = *(v0 + 2904);
  v2 = *(v0 + 2880);
  v3 = *(v0 + 2848);
  v4 = *(v0 + 2840);
  v5 = *(v0 + 2832);
  v6 = *(v0 + 2816);
  v7 = *(v0 + 2744);
  swift_beginAccess();
  v4(v6, v5, v7);

  v8 = sub_266AEEAB8();
  v9 = sub_266AEEBB8();

  if (os_log_type_enabled(v8, v9))
  {
    v244 = *(v0 + 2896);
    v249 = *(v0 + 2904);
    v10 = *(v0 + 2880);
    v11 = *(v0 + 2872);
    v264 = *(v0 + 2816);
    v270 = *(v0 + 2856);
    v254 = *(v0 + 2752);
    v259 = *(v0 + 2744);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v274 = v13;
    *v12 = 136315394;
    if (v10)
    {
      v14 = v2;
    }

    else
    {
      v11 = 0x3E7974706D653CLL;
      v14 = 0xE700000000000000;
    }

    v15 = sub_266ADDBA0(v11, v14, &v274);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (v249)
    {
      v16 = v244;
    }

    else
    {
      v16 = 0x3E7974706D653CLL;
    }

    if (v249)
    {
      v17 = v1;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_266ADDBA0(v16, v17, &v274);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_266ADA000, v8, v9, "Looking for an organization matching siriLanguageCode: %s, physicalLocationCountryCode: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v13, -1, -1);
    MEMORY[0x26D5EA2D0](v12, -1, -1);

    result = v270(v264, v259);
  }

  else
  {
    v20 = *(v0 + 2856);
    v21 = *(v0 + 2816);
    v22 = *(v0 + 2752);
    v23 = *(v0 + 2744);

    result = v20(v21, v23);
  }

  v24 = *(v0 + 2864);
  v25 = *(v24 + 16);
  *(v0 + 2912) = v25;
  if (v25)
  {
    v26 = 0;
    v27 = (v0 + 1592);
    v28 = *(v0 + 2904);
    v29 = *(v0 + 2880);
    v30 = v24 + 32;
    v271 = MEMORY[0x277D84F90];
    do
    {
      v31 = (v30 + (v26 << 7));
      v32 = v26;
      while (1)
      {
        if (v32 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_107;
        }

        v33 = *v31;
        v34 = v31[1];
        v35 = v31[3];
        v27[2] = v31[2];
        v27[3] = v35;
        *v27 = v33;
        v27[1] = v34;
        v36 = v31[4];
        v37 = v31[5];
        v38 = v31[7];
        v27[6] = v31[6];
        v27[7] = v38;
        v27[4] = v36;
        v27[5] = v37;
        if (v29)
        {
          if (result = *(v0 + 1608), result == *(v0 + 2872)) && *(v0 + 2880) == *(v0 + 1616) || (result = sub_266AEECB8(), (result))
          {
            if (v28)
            {
              if (*(v0 + 1592) == *(v0 + 2896) && *(v0 + 2904) == *(v0 + 1600))
              {
                break;
              }

              result = sub_266AEECB8();
              if (result)
              {
                break;
              }
            }
          }
        }

        ++v32;
        v31 += 8;
        if (v25 == v32)
        {
          goto LABEL_34;
        }
      }

      sub_266AE65B4(v27, v0 + 1720);
      result = swift_isUniquelyReferenced_nonNull_native();
      v274 = v271;
      v242 = v0;
      if (result)
      {
        v39 = v271;
      }

      else
      {
        result = sub_266AEB4D8(0, *(v271 + 16) + 1, 1);
        v39 = v274;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_266AEB4D8((v40 > 1), v41 + 1, 1);
        v42 = v41 + 1;
        v39 = v274;
      }

      v26 = v32 + 1;
      *(v39 + 16) = v42;
      v271 = v39;
      v43 = (v39 + (v41 << 7));
      v44 = *v27;
      v45 = v27[1];
      v46 = v27[3];
      v43[4] = v27[2];
      v43[5] = v46;
      v43[2] = v44;
      v43[3] = v45;
      v47 = v27[4];
      v48 = v27[5];
      v49 = v27[7];
      v43[8] = v27[6];
      v43[9] = v49;
      v43[6] = v47;
      v43[7] = v48;
      v30 = v24 + 32;
      v0 = v242;
    }

    while (v25 - 1 != v32);
  }

  else
  {
    v271 = MEMORY[0x277D84F90];
  }

LABEL_34:
  *(v0 + 2920) = v271;
  *(v0 + 2688) = v271;
  v50 = *(v271 + 16);
  if (v50 > 1)
  {
    v51 = v0;
    v52 = *(v0 + 2848);
    v53 = v51[355];
    v54 = v51[354];
    v55 = v51[351];
    v56 = v51[343];
    swift_beginAccess();
    v53(v55, v54, v56);
    v57 = v51;
    v58 = sub_266AEEAB8();
    v59 = sub_266AEEBB8();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v57[357];
    v62 = v57[351];
    v63 = v57[344];
    v64 = v57[343];
    if (v60)
    {
      v265 = v57[351];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v274 = v66;
      *v65 = 136315138;
      v260 = v61;

      v68 = MEMORY[0x26D5E9DF0](v67, &type metadata for EmergencyOrganizationInfo);
      v70 = v69;

      v71 = sub_266ADDBA0(v68, v70, &v274);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_266ADA000, v58, v59, "Multiple orgs found: [%s]. Refining search by current city.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x26D5EA2D0](v66, -1, -1);
      MEMORY[0x26D5EA2D0](v65, -1, -1);

      v260(v265, v64);
    }

    else
    {

      v61(v62, v64);
    }

    v75 = (v57[338] + *(v57 + 37));
    v76 = v75[3];
    v77 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v78 = *(v77 + 24);
    v272 = (v78 + *v78);
    v79 = v78[1];
    v80 = swift_task_alloc();
    v57[366] = v80;
    *v80 = v57;
    v80[1] = sub_266AE9958;

    return v272(v76, v77);
  }

  v72 = *(v0 + 2904);
  v73 = *(v0 + 2880);
  if (v50)
  {
    v74 = *(v0 + 2864);

    sub_266AEB4F8(v74, 0);
LABEL_94:
    v166 = *(v0 + 2848);
    v167 = *(v0 + 2840);
    v168 = *(v0 + 2832);
    v169 = *(v0 + 2744);
    if (*(v271 + 16))
    {
      v170 = (v0 + 696);
      v171 = (v0 + 1848);
      v172 = *(v0 + 2776);
      v173 = *(v271 + 80);
      v175 = *(v271 + 32);
      v174 = *(v271 + 48);
      *(v0 + 1880) = *(v271 + 64);
      *(v0 + 1896) = v173;
      *(v0 + 1848) = v175;
      *(v0 + 1864) = v174;
      v176 = *(v271 + 144);
      v178 = *(v271 + 96);
      v177 = *(v271 + 112);
      *(v0 + 1944) = *(v271 + 128);
      *(v0 + 1960) = v176;
      *(v0 + 1912) = v178;
      *(v0 + 1928) = v177;
      swift_beginAccess();
      v167(v172, v168, v169);
      sub_266AE65B4(v0 + 1848, v0 + 2104);
      sub_266AE65B4(v0 + 1848, v0 + 2232);
      v179 = sub_266AEEAB8();
      v180 = sub_266AEEBB8();
      sub_266AE65EC(v0 + 1848);
      v181 = os_log_type_enabled(v179, v180);
      v182 = *(v0 + 2856);
      v183 = *(v0 + 2776);
      v184 = *(v0 + 2752);
      v185 = *(v0 + 2744);
      if (v181)
      {
        v269 = *(v0 + 2776);
        v258 = *(v0 + 2864);
        v186 = swift_slowAlloc();
        v253 = v182;
        v187 = swift_slowAlloc();
        v274 = v187;
        *v186 = 136315138;
        v188 = *(v0 + 1928);
        *(v0 + 2040) = *(v0 + 1912);
        *(v0 + 2056) = v188;
        v189 = *(v0 + 1960);
        *(v0 + 2072) = *(v0 + 1944);
        *(v0 + 2088) = v189;
        v190 = *(v0 + 1864);
        *(v0 + 1976) = *v171;
        *(v0 + 1992) = v190;
        v191 = *(v0 + 1896);
        *(v0 + 2008) = *(v0 + 1880);
        *(v0 + 2024) = v191;
        sub_266AE65B4(v0 + 1848, v0 + 1464);
        v192 = sub_266AEEB28();
        v248 = v185;
        v194 = sub_266ADDBA0(v192, v193, &v274);

        *(v186 + 4) = v194;
        _os_log_impl(&dword_266ADA000, v179, v180, "Found matching organization: %s", v186, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v187);
        MEMORY[0x26D5EA2D0](v187, -1, -1);
        MEMORY[0x26D5EA2D0](v186, -1, -1);

        sub_266AEB4F8(v258, 0);
        v253(v269, v248);
      }

      else
      {
        sub_266AEB4F8(*(v0 + 2864), 0);

        v182(v183, v185);
      }

      v203 = *(v0 + 1928);
      *(v0 + 760) = *(v0 + 1912);
      *(v0 + 776) = v203;
      v204 = *(v0 + 1960);
      *(v0 + 792) = *(v0 + 1944);
      *(v0 + 808) = v204;
      v205 = *(v0 + 1864);
      *v170 = *v171;
      *(v0 + 712) = v205;
      v206 = *(v0 + 1896);
      *(v0 + 728) = *(v0 + 1880);
      *(v0 + 744) = v206;
      nullsub_1(v0 + 696);
      v207 = *(v0 + 776);
      *(v0 + 624) = *(v0 + 760);
      *(v0 + 640) = v207;
      v208 = *(v0 + 808);
      *(v0 + 656) = *(v0 + 792);
      *(v0 + 672) = v208;
      v209 = *(v0 + 712);
      *(v0 + 560) = *v170;
      *(v0 + 576) = v209;
      v210 = *(v0 + 744);
      *(v0 + 592) = *(v0 + 728);
      *(v0 + 608) = v210;
      sub_266AEB504(v0 + 560);
      v211 = *(v0 + 672);
      *(v0 + 112) = *(v0 + 656);
      *(v0 + 128) = v211;
      *(v0 + 144) = *(v0 + 688);
      v212 = *(v0 + 608);
      *(v0 + 48) = *(v0 + 592);
      *(v0 + 64) = v212;
      v213 = *(v0 + 640);
      *(v0 + 80) = *(v0 + 624);
      *(v0 + 96) = v213;
      v215 = *(v0 + 560);
      v214 = *(v0 + 576);
    }

    else
    {
      v195 = (v0 + 424);
      v196 = *(v0 + 2768);
      v197 = *(v0 + 2832);
      swift_beginAccess();
      v167(v196, v168, v169);
      v198 = sub_266AEEAB8();
      v199 = sub_266AEEBB8();
      v200 = os_log_type_enabled(v198, v199);
      v201 = *(v0 + 2864);
      if (v200)
      {
        v202 = swift_slowAlloc();
        *v202 = 0;
        _os_log_impl(&dword_266ADA000, v198, v199, "No matching organization found", v202, 2u);
        MEMORY[0x26D5EA2D0](v202, -1, -1);

        sub_266AEB4F8(v201, 0);
      }

      else
      {
        sub_266AEB4F8(*(v0 + 2864), 0);
      }

      v216 = *(v0 + 2752) + 8;
      (*(v0 + 2856))(*(v0 + 2768), *(v0 + 2744));

      sub_266AEB50C((v0 + 1336));
      v217 = *(v0 + 1416);
      *(v0 + 488) = *(v0 + 1400);
      *(v0 + 504) = v217;
      v218 = *(v0 + 1448);
      *(v0 + 520) = *(v0 + 1432);
      *(v0 + 536) = v218;
      v219 = *(v0 + 1352);
      *v195 = *(v0 + 1336);
      *(v0 + 440) = v219;
      v220 = *(v0 + 1384);
      *(v0 + 456) = *(v0 + 1368);
      *(v0 + 472) = v220;
      sub_266AEB504(v0 + 424);
      v221 = *(v0 + 536);
      *(v0 + 112) = *(v0 + 520);
      *(v0 + 128) = v221;
      *(v0 + 144) = *(v0 + 552);
      v222 = *(v0 + 472);
      *(v0 + 48) = *(v0 + 456);
      *(v0 + 64) = v222;
      v223 = *(v0 + 504);
      *(v0 + 80) = *(v0 + 488);
      *(v0 + 96) = v223;
      v215 = *v195;
      v214 = *(v0 + 440);
    }

    *(v0 + 16) = v215;
    *(v0 + 32) = v214;
    v224 = *(v0 + 2824);
    v225 = *(v0 + 2816);
    v226 = *(v0 + 2808);
    v227 = *(v0 + 2800);
    v228 = *(v0 + 2792);
    v229 = *(v0 + 2784);
    v230 = *(v0 + 2776);
    v231 = *(v0 + 2768);
    v232 = *(v0 + 2760);
    v233 = *(v0 + 2736);
    v234 = *(v0 + 2696);
    v235 = *(v0 + 80);
    v237 = *(v0 + 32);
    v236 = *(v0 + 48);
    *(v234 + 48) = *(v0 + 64);
    *(v234 + 64) = v235;
    *(v234 + 16) = v237;
    *(v234 + 32) = v236;
    v239 = *(v0 + 112);
    v238 = *(v0 + 128);
    v240 = *(v0 + 96);
    *(v234 + 128) = *(v0 + 144);
    *(v234 + 96) = v239;
    *(v234 + 112) = v238;
    *(v234 + 80) = v240;
    *v234 = *(v0 + 16);

    v241 = *(v0 + 8);

    return v241();
  }

  v243 = v0;
  v81 = *(v0 + 2848);
  v82 = *(v243 + 2840);
  v83 = *(v243 + 2832);
  v84 = *(v243 + 2792);
  v85 = *(v243 + 2744);
  swift_beginAccess();
  v82(v84, v83, v85);
  v0 = v243;

  v86 = sub_266AEEAB8();
  v87 = sub_266AEEBB8();

  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v243 + 2904);
  if (v88)
  {
    v90 = *(v243 + 2880);
    v91 = *(v243 + 2872);
    v261 = *(v243 + 2792);
    v266 = *(v243 + 2856);
    v245 = *(v243 + 2896);
    v250 = *(v243 + 2752);
    v255 = *(v243 + 2744);
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v274 = v93;
    *v92 = 136315394;
    if (v90)
    {
      v94 = v90;
    }

    else
    {
      v91 = 0x3E7974706D653CLL;
      v94 = 0xE700000000000000;
    }

    v95 = sub_266ADDBA0(v91, v94, &v274);

    *(v92 + 4) = v95;
    *(v92 + 12) = 2080;
    if (v89)
    {
      v96 = v245;
    }

    else
    {
      v96 = 0x3E7974706D653CLL;
    }

    if (v89)
    {
      v97 = v89;
    }

    else
    {
      v97 = 0xE700000000000000;
    }

    v98 = sub_266ADDBA0(v96, v97, &v274);

    *(v92 + 14) = v98;
    _os_log_impl(&dword_266ADA000, v86, v87, "No orgs found matching siriLanguageCode: %s, physicalLocationCountryCode: %s.", v92, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v93, -1, -1);
    MEMORY[0x26D5EA2D0](v92, -1, -1);

    v266(v261, v255);
  }

  else
  {
    v99 = *(v243 + 2856);
    v100 = *(v243 + 2792);
    v101 = *(v243 + 2752);
    v102 = *(v243 + 2744);

    v99(v100, v102);
  }

  v103 = *(v243 + 2880);
  v104 = *(v243 + 2848);
  v105 = *(v243 + 2840);
  v106 = *(v243 + 2832);
  v107 = *(v243 + 2784);
  v108 = *(v243 + 2744);
  v109 = *(v243 + 2704);
  v110 = sub_266AEE6F8();
  v112 = v111;
  swift_beginAccess();
  v105(v107, v106, v108);

  v113 = sub_266AEEAB8();
  v114 = sub_266AEEBB8();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = *(v243 + 2880);
    v116 = *(v243 + 2872);
    v262 = *(v243 + 2784);
    v267 = *(v243 + 2856);
    v251 = *(v243 + 2752);
    v256 = *(v243 + 2744);
    v117 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v274 = v246;
    *v117 = 136315394;
    if (v115)
    {
      v118 = v115;
    }

    else
    {
      v116 = 0x3E7974706D653CLL;
      v118 = 0xE700000000000000;
    }

    v119 = sub_266ADDBA0(v116, v118, &v274);

    *(v117 + 4) = v119;
    *(v117 + 12) = 2080;
    if (v112)
    {
      v120 = v110;
    }

    else
    {
      v120 = 0x3E7974706D653CLL;
    }

    if (v112)
    {
      v121 = v112;
    }

    else
    {
      v121 = 0xE700000000000000;
    }

    v122 = sub_266ADDBA0(v120, v121, &v274);

    *(v117 + 14) = v122;
    _os_log_impl(&dword_266ADA000, v113, v114, "Falling back to locale search. Looking for an organization matching siriLanguageCode: %s, siriRegionCode: %s.", v117, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v246, -1, -1);
    MEMORY[0x26D5EA2D0](v117, -1, -1);

    result = v267(v262, v256);
  }

  else
  {
    v123 = *(v243 + 2856);
    v124 = *(v243 + 2784);
    v125 = *(v243 + 2752);
    v126 = *(v243 + 2744);

    result = v123(v124, v126);
  }

  v127 = MEMORY[0x277D84F90];
  if (!*(v243 + 2912))
  {
    v132 = MEMORY[0x277D84F90];
LABEL_87:
    v152 = *(v0 + 2880);
    sub_266AEB4F8(*(v0 + 2864), 0);

    swift_beginAccess();
    *(v0 + 2688) = v132;

    v153 = *(v132 + 16);
    if (v153)
    {
      v274 = v127;

      sub_266AEB4D8(0, v153, 0);
      v154 = 0;
      v155 = v274;
      v156 = *(v274 + 16);
      v247 = v156 << 7;
      v252 = v132;
      do
      {
        v157 = v132 + v154;
        v158 = *(v132 + v154 + 40);
        v159 = *(v132 + v154 + 56);
        v257 = *(v132 + v154 + 48);
        v263 = *(v132 + v154 + 32);
        v160 = *(v132 + v154 + 128);
        v161 = *(v132 + v154 + 136);
        v162 = *(v157 + 152);
        v268 = v160;
        v273 = *(v157 + 144);
        v274 = v155;
        v163 = v156 + 1;
        v164 = *(v155 + 24);

        if (v156 >= v164 >> 1)
        {
          sub_266AEB4D8((v164 > 1), v163, 1);
          v155 = v274;
        }

        *(v155 + 16) = v163;
        v165 = (v155 + v247 + v154);
        v165[4] = v263;
        v165[5] = v158;
        v165[6] = v257;
        v165[7] = v159;
        v165[8] = 0;
        v165[9] = 0xE000000000000000;
        v165[10] = 0;
        v165[11] = 0xE000000000000000;
        v165[12] = 0;
        v165[13] = 0xE000000000000000;
        v165[14] = 0;
        v165[15] = 0xE000000000000000;
        v165[16] = v268;
        v165[17] = v161;
        v154 += 128;
        ++v156;
        v165[18] = v273;
        v165[19] = v162;
        --v153;
        v132 = v252;
      }

      while (v153);
      v271 = v155;

      v0 = v243;
    }

    else
    {

      v271 = MEMORY[0x277D84F90];
    }

    goto LABEL_94;
  }

  v128 = 0;
  v129 = (v243 + 1208);
  v130 = *(v243 + 2880);
  v131 = *(v243 + 2864) + 32;
  v132 = MEMORY[0x277D84F90];
LABEL_69:
  v133 = (v131 + (v128++ << 7));
  while ((v128 - 1) < *(*(v0 + 2864) + 16))
  {
    v135 = *v133;
    v136 = v133[1];
    v137 = v133[3];
    *(v243 + 1240) = v133[2];
    *(v243 + 1256) = v137;
    *v129 = v135;
    *(v243 + 1224) = v136;
    v138 = v133[4];
    v139 = v133[5];
    v140 = v133[7];
    *(v243 + 1304) = v133[6];
    *(v243 + 1320) = v140;
    *(v243 + 1272) = v138;
    *(v243 + 1288) = v139;
    if (v130)
    {
      if (result = *(v0 + 1224), result == *(v0 + 2872)) && *(v0 + 2880) == *(v0 + 1232) || (result = sub_266AEECB8(), (result))
      {
        if (v112)
        {
          if (*(v0 + 1208) == v110 && v112 == *(v0 + 1216) || (result = sub_266AEECB8(), (result & 1) != 0))
          {
            sub_266AE65B4(v129, v0 + 1080);
            result = swift_isUniquelyReferenced_nonNull_native();
            v274 = v132;
            if ((result & 1) == 0)
            {
              result = sub_266AEB4D8(0, *(v132 + 16) + 1, 1);
              v132 = v274;
            }

            v142 = *(v132 + 16);
            v141 = *(v132 + 24);
            v143 = v132;
            if (v142 >= v141 >> 1)
            {
              result = sub_266AEB4D8((v141 > 1), v142 + 1, 1);
              v143 = v274;
            }

            v144 = *(v243 + 2912);
            *(v143 + 16) = v142 + 1;
            v145 = (v143 + (v142 << 7));
            v0 = v243;
            v146 = *v129;
            v147 = *(v243 + 1224);
            v148 = *(v243 + 1256);
            v145[4] = *(v243 + 1240);
            v145[5] = v148;
            v145[2] = v146;
            v145[3] = v147;
            v149 = *(v243 + 1272);
            v150 = *(v243 + 1288);
            v151 = *(v243 + 1320);
            v145[8] = *(v243 + 1304);
            v145[9] = v151;
            v145[6] = v149;
            v145[7] = v150;
            v132 = v143;
            if (v144 != v128)
            {
              goto LABEL_69;
            }

            goto LABEL_87;
          }
        }
      }
    }

    v133 += 8;
    if (v128++ == *(v0 + 2912))
    {
      goto LABEL_87;
    }
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_266AE9958(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2928);
  v6 = *v2;
  *(v3 + 2936) = a1;
  *(v3 + 2944) = a2;

  return MEMORY[0x2822009F8](sub_266AE9A5C, 0, 0);
}

uint64_t sub_266AE9A5C()
{
  v240 = v0;
  v1 = v0[368];
  v2 = v0[356];
  v3 = v0[355];
  v4 = v0[354];
  v5 = v0[350];
  v6 = v0[343];
  swift_beginAccess();
  v3(v5, v4, v6);

  v7 = sub_266AEEAB8();
  v8 = sub_266AEEBB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[368];
    v10 = v0[367];
    v232 = v0[350];
    v236 = v0[357];
    v11 = v0[344];
    v12 = v0[343];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v239 = v14;
    *v13 = 136315138;
    if (v9)
    {
      v15 = v1;
    }

    else
    {
      v10 = 0x3E7974706D653CLL;
      v15 = 0xE700000000000000;
    }

    v16 = sub_266ADDBA0(v10, v15, &v239);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_266ADA000, v7, v8, "Fetched current city: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D5EA2D0](v14, -1, -1);
    MEMORY[0x26D5EA2D0](v13, -1, -1);

    v236(v232, v12);
  }

  else
  {
    v17 = v0[357];
    v18 = v0[350];
    v19 = v0[344];
    v20 = v0[343];

    v17(v18, v20);
  }

  v21 = *(v0[365] + 16);

  v23 = v0;
  if (v21)
  {
    v24 = 0;
    v25 = (v0 + 119);
    v26 = v0[368];
    v27 = result + 32;
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = (v27 + (v24 << 7));
      v30 = v24;
      while (1)
      {
        if (v30 >= *(v23[365] + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        v31 = *v29;
        v32 = v29[1];
        v33 = v29[3];
        *(v23 + 123) = v29[2];
        *(v23 + 125) = v33;
        *v25 = v31;
        *(v23 + 121) = v32;
        v34 = v29[4];
        v35 = v29[5];
        v36 = v29[7];
        *(v23 + 131) = v29[6];
        *(v23 + 133) = v36;
        *(v23 + 127) = v34;
        *(v23 + 129) = v35;
        if (v26)
        {
          if (v23[123] == v23[367] && v23[368] == v23[124])
          {
            break;
          }

          result = sub_266AEECB8();
          if (result)
          {
            break;
          }
        }

        ++v30;
        v29 += 8;
        if (v21 == v30)
        {
          goto LABEL_23;
        }
      }

      sub_266AE65B4((v23 + 119), (v23 + 103));
      result = swift_isUniquelyReferenced_nonNull_native();
      v239 = v28;
      if ((result & 1) == 0)
      {
        result = sub_266AEB4D8(0, *(v28 + 16) + 1, 1);
        v28 = v239;
      }

      v37 = v28;
      v38 = *(v28 + 16);
      v39 = *(v37 + 24);
      if (v38 >= v39 >> 1)
      {
        result = sub_266AEB4D8((v39 > 1), v38 + 1, 1);
        v37 = v239;
      }

      v24 = v30 + 1;
      *(v37 + 16) = v38 + 1;
      v40 = (v37 + (v38 << 7));
      v41 = *v25;
      v42 = *(v23 + 121);
      v43 = *(v23 + 125);
      v40[4] = *(v23 + 123);
      v40[5] = v43;
      v40[2] = v41;
      v40[3] = v42;
      v44 = *(v23 + 127);
      v45 = *(v23 + 129);
      v46 = *(v23 + 133);
      v40[8] = *(v23 + 131);
      v40[9] = v46;
      v40[6] = v44;
      v40[7] = v45;
      v28 = v37;
    }

    while (v21 - 1 != v30);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v47 = v23[365];

  swift_beginAccess();
  v23[336] = v28;

  v48 = v23[363];
  v49 = v23[360];
  if (*(v28 + 16))
  {
    v50 = v23[358];
    v51 = v23[363];

    sub_266AEB4F8(v50, 0);
LABEL_75:
    v136 = *(v28 + 16);
    v137 = v28;
    v138 = v23[356];
    v139 = v23;
    v140 = v23[355];
    v141 = v139[354];
    v142 = v139[343];
    if (v136)
    {
      v143 = v139 + 87;
      v144 = v139 + 231;
      v145 = v139[347];
      v146 = v137[5];
      v148 = v137[2];
      v147 = v137[3];
      *(v139 + 235) = v137[4];
      *(v139 + 237) = v146;
      *(v139 + 231) = v148;
      *(v139 + 233) = v147;
      v149 = v137[9];
      v151 = v137[6];
      v150 = v137[7];
      *(v139 + 243) = v137[8];
      *(v139 + 245) = v149;
      *(v139 + 239) = v151;
      *(v139 + 241) = v150;
      swift_beginAccess();
      v140(v145, v141, v142);
      sub_266AE65B4((v139 + 231), (v139 + 263));
      sub_266AE65B4((v139 + 231), (v139 + 279));
      v152 = sub_266AEEAB8();
      v153 = sub_266AEEBB8();
      sub_266AE65EC((v139 + 231));
      v154 = os_log_type_enabled(v152, v153);
      v155 = v139[357];
      v156 = v139[347];
      v238 = v139[344];
      v157 = v139[343];
      v158 = v139;
      if (v154)
      {
        v227 = v139[358];
        v231 = v139[343];
        v159 = swift_slowAlloc();
        v223 = v155;
        v160 = swift_slowAlloc();
        v239 = v160;
        *v159 = 136315138;
        v161 = *(v139 + 241);
        *(v139 + 255) = *(v139 + 239);
        *(v139 + 257) = v161;
        v162 = *(v139 + 245);
        *(v139 + 259) = *(v139 + 243);
        *(v139 + 261) = v162;
        v163 = *(v139 + 233);
        *(v139 + 247) = *v144;
        *(v139 + 249) = v163;
        v164 = *(v139 + 237);
        *(v139 + 251) = *(v139 + 235);
        *(v139 + 253) = v164;
        sub_266AE65B4((v139 + 231), (v139 + 183));
        v165 = sub_266AEEB28();
        v167 = sub_266ADDBA0(v165, v166, &v239);

        *(v159 + 4) = v167;
        _os_log_impl(&dword_266ADA000, v152, v153, "Found matching organization: %s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v160);
        MEMORY[0x26D5EA2D0](v160, -1, -1);
        MEMORY[0x26D5EA2D0](v159, -1, -1);

        sub_266AEB4F8(v227, 0);
        v223(v156, v231);
      }

      else
      {
        sub_266AEB4F8(v139[358], 0);

        v155(v156, v157);
      }

      v177 = v144[5];
      v143[4] = v144[4];
      v143[5] = v177;
      v178 = v144[7];
      v143[6] = v144[6];
      v143[7] = v178;
      v179 = v144[1];
      *v143 = *v144;
      v143[1] = v179;
      v180 = v144[3];
      v143[2] = v144[2];
      v143[3] = v180;
      nullsub_1(v143);
      v181 = v143[5];
      *(v158 + 39) = v143[4];
      *(v158 + 40) = v181;
      v182 = v143[7];
      *(v158 + 41) = v143[6];
      *(v158 + 42) = v182;
      v183 = v143[1];
      *(v158 + 35) = *v143;
      *(v158 + 36) = v183;
      v184 = v143[3];
      *(v158 + 37) = v143[2];
      *(v158 + 38) = v184;
      sub_266AEB504((v158 + 70));
      v185 = *(v158 + 42);
      *(v158 + 7) = *(v158 + 41);
      *(v158 + 8) = v185;
      *(v158 + 144) = *(v158 + 688);
      v186 = *(v158 + 38);
      *(v158 + 3) = *(v158 + 37);
      *(v158 + 4) = v186;
      v187 = *(v158 + 40);
      *(v158 + 5) = *(v158 + 39);
      *(v158 + 6) = v187;
      v189 = *(v158 + 35);
      v188 = *(v158 + 36);
    }

    else
    {
      v168 = (v139 + 53);
      v169 = v139 + 167;
      v170 = v139[346];
      v171 = v139[354];
      swift_beginAccess();
      v140(v170, v141, v142);
      v172 = sub_266AEEAB8();
      v173 = sub_266AEEBB8();
      v174 = os_log_type_enabled(v172, v173);
      v175 = v139[358];
      v158 = v139;
      if (v174)
      {
        v176 = swift_slowAlloc();
        *v176 = 0;
        _os_log_impl(&dword_266ADA000, v172, v173, "No matching organization found", v176, 2u);
        MEMORY[0x26D5EA2D0](v176, -1, -1);

        sub_266AEB4F8(v175, 0);
      }

      else
      {
        sub_266AEB4F8(v139[358], 0);
      }

      v190 = v158[344] + 8;
      (v158[357])(v158[346], v158[343]);

      sub_266AEB50C(v169);
      v191 = v169[5];
      *(v168 + 64) = v169[4];
      *(v168 + 80) = v191;
      v192 = v169[7];
      *(v168 + 96) = v169[6];
      *(v168 + 112) = v192;
      v193 = v169[1];
      *v168 = *v169;
      *(v168 + 16) = v193;
      v194 = v169[3];
      *(v168 + 32) = v169[2];
      *(v168 + 48) = v194;
      sub_266AEB504(v168);
      v195 = *(v168 + 112);
      *(v158 + 7) = *(v168 + 96);
      *(v158 + 8) = v195;
      *(v158 + 144) = *(v168 + 128);
      v196 = *(v168 + 48);
      *(v158 + 3) = *(v168 + 32);
      *(v158 + 4) = v196;
      v197 = *(v168 + 80);
      *(v158 + 5) = *(v168 + 64);
      *(v158 + 6) = v197;
      v189 = *v168;
      v188 = *(v168 + 16);
    }

    *(v158 + 1) = v189;
    *(v158 + 2) = v188;
    v198 = v158[353];
    v199 = v158[352];
    v200 = v158[351];
    v201 = v158[350];
    v202 = v158[349];
    v203 = v158[348];
    v204 = v158[347];
    v205 = v158[346];
    v206 = v158[345];
    v207 = v158[342];
    v208 = v158[337];
    v209 = *(v158 + 5);
    v211 = *(v158 + 2);
    v210 = *(v158 + 3);
    *(v208 + 48) = *(v158 + 4);
    *(v208 + 64) = v209;
    *(v208 + 16) = v211;
    *(v208 + 32) = v210;
    v213 = *(v158 + 7);
    v212 = *(v158 + 8);
    v214 = *(v158 + 6);
    *(v208 + 128) = *(v158 + 144);
    *(v208 + 96) = v213;
    *(v208 + 112) = v212;
    *(v208 + 80) = v214;
    *v208 = *(v158 + 1);

    v215 = v158[1];

    return v215();
  }

  v52 = v23[356];
  v216 = v23;
  v53 = v23[355];
  v54 = v216[354];
  v55 = v216[349];
  v56 = v216[343];
  swift_beginAccess();
  v53(v55, v54, v56);
  v23 = v216;

  v57 = sub_266AEEAB8();
  v58 = sub_266AEEBB8();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v216[363];
  if (v59)
  {
    v61 = v216[360];
    v62 = v216[359];
    v228 = v216[349];
    v233 = v216[357];
    v217 = v216[362];
    v220 = v216[344];
    v224 = v216[343];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v239 = v64;
    *v63 = 136315394;
    if (v61)
    {
      v65 = v61;
    }

    else
    {
      v62 = 0x3E7974706D653CLL;
      v65 = 0xE700000000000000;
    }

    v66 = sub_266ADDBA0(v62, v65, &v239);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    if (v60)
    {
      v67 = v217;
    }

    else
    {
      v67 = 0x3E7974706D653CLL;
    }

    if (v60)
    {
      v68 = v60;
    }

    else
    {
      v68 = 0xE700000000000000;
    }

    v69 = sub_266ADDBA0(v67, v68, &v239);

    *(v63 + 14) = v69;
    _os_log_impl(&dword_266ADA000, v57, v58, "No orgs found matching siriLanguageCode: %s, physicalLocationCountryCode: %s.", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v64, -1, -1);
    MEMORY[0x26D5EA2D0](v63, -1, -1);

    v233(v228, v224);
  }

  else
  {
    v70 = v216[357];
    v71 = v216[349];
    v72 = v216[344];
    v73 = v216[343];

    v70(v71, v73);
  }

  v74 = v216[360];
  v75 = v216[356];
  v76 = v216[355];
  v77 = v216[354];
  v78 = v216[348];
  v79 = v216[343];
  v80 = v216[338];
  v81 = sub_266AEE6F8();
  v83 = v82;
  swift_beginAccess();
  v76(v78, v77, v79);

  v84 = sub_266AEEAB8();
  v85 = sub_266AEEBB8();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = v216[360];
    v87 = v216[359];
    v229 = v216[348];
    v234 = v216[357];
    v221 = v216[344];
    v225 = v216[343];
    v88 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v239 = v218;
    *v88 = 136315394;
    if (v86)
    {
      v89 = v86;
    }

    else
    {
      v87 = 0x3E7974706D653CLL;
      v89 = 0xE700000000000000;
    }

    v90 = sub_266ADDBA0(v87, v89, &v239);

    *(v88 + 4) = v90;
    *(v88 + 12) = 2080;
    if (v83)
    {
      v91 = v81;
    }

    else
    {
      v91 = 0x3E7974706D653CLL;
    }

    if (v83)
    {
      v92 = v83;
    }

    else
    {
      v92 = 0xE700000000000000;
    }

    v93 = sub_266ADDBA0(v91, v92, &v239);

    *(v88 + 14) = v93;
    _os_log_impl(&dword_266ADA000, v84, v85, "Falling back to locale search. Looking for an organization matching siriLanguageCode: %s, siriRegionCode: %s.", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5EA2D0](v218, -1, -1);
    MEMORY[0x26D5EA2D0](v88, -1, -1);

    result = v234(v229, v225);
  }

  else
  {
    v94 = v216[357];
    v95 = v216[348];
    v96 = v216[344];
    v97 = v216[343];

    result = v94(v95, v97);
  }

  v98 = MEMORY[0x277D84F90];
  if (!v216[364])
  {
LABEL_68:
    v123 = v216[360];
    sub_266AEB4F8(v216[358], 0);

    swift_beginAccess();
    v216[336] = v98;

    v124 = *(v98 + 16);
    if (v124)
    {
      v239 = MEMORY[0x277D84F90];

      sub_266AEB4D8(0, v124, 0);
      v125 = 0;
      v28 = v239;
      v126 = *(v239 + 16);
      v219 = v126 << 7;
      v222 = v98;
      do
      {
        v127 = v98 + v125;
        v128 = *(v98 + v125 + 40);
        v129 = *(v98 + v125 + 56);
        v226 = *(v98 + v125 + 48);
        v230 = *(v98 + v125 + 32);
        v130 = *(v98 + v125 + 128);
        v131 = *(v98 + v125 + 136);
        v132 = *(v127 + 152);
        v235 = v130;
        v237 = *(v127 + 144);
        v239 = v28;
        v133 = v126 + 1;
        v134 = *(v28 + 24);

        if (v126 >= v134 >> 1)
        {
          sub_266AEB4D8((v134 > 1), v133, 1);
          v28 = v239;
        }

        *(v28 + 16) = v133;
        v135 = (v28 + v219 + v125);
        v135[4] = v230;
        v135[5] = v128;
        v135[6] = v226;
        v135[7] = v129;
        v135[8] = 0;
        v135[9] = 0xE000000000000000;
        v135[10] = 0;
        v135[11] = 0xE000000000000000;
        v135[12] = 0;
        v135[13] = 0xE000000000000000;
        v135[14] = 0;
        v135[15] = 0xE000000000000000;
        v135[16] = v235;
        v135[17] = v131;
        v125 += 128;
        ++v126;
        v135[18] = v237;
        v135[19] = v132;
        --v124;
        v98 = v222;
      }

      while (v124);

      v23 = v216;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    goto LABEL_75;
  }

  v99 = 0;
  v100 = (v216 + 151);
  v101 = v216[360];
  v102 = v216[358] + 32;
LABEL_51:
  v103 = v102;
  v104 = (v102 + (v99++ << 7));
  while ((v99 - 1) < *(v216[358] + 16))
  {
    v106 = *v104;
    v107 = v104[1];
    v108 = v104[3];
    *(v216 + 155) = v104[2];
    *(v216 + 157) = v108;
    *v100 = v106;
    *(v216 + 153) = v107;
    v109 = v104[4];
    v110 = v104[5];
    v111 = v104[7];
    *(v216 + 163) = v104[6];
    *(v216 + 165) = v111;
    *(v216 + 159) = v109;
    *(v216 + 161) = v110;
    if (v101)
    {
      if (result = v216[153], result == v216[359]) && v216[360] == v216[154] || (result = sub_266AEECB8(), (result))
      {
        if (v83)
        {
          if (v216[151] == v81 && v83 == v216[152] || (result = sub_266AEECB8(), (result & 1) != 0))
          {
            sub_266AE65B4((v216 + 151), (v216 + 135));
            result = swift_isUniquelyReferenced_nonNull_native();
            v239 = v98;
            if ((result & 1) == 0)
            {
              result = sub_266AEB4D8(0, *(v98 + 16) + 1, 1);
              v98 = v239;
            }

            v113 = *(v98 + 16);
            v112 = *(v98 + 24);
            v114 = v98;
            if (v113 >= v112 >> 1)
            {
              result = sub_266AEB4D8((v112 > 1), v113 + 1, 1);
              v114 = v239;
            }

            v115 = v216[364];
            *(v114 + 16) = v113 + 1;
            v116 = (v114 + (v113 << 7));
            v117 = *v100;
            v118 = *(v216 + 153);
            v119 = *(v216 + 157);
            v116[4] = *(v216 + 155);
            v116[5] = v119;
            v116[2] = v117;
            v116[3] = v118;
            v120 = *(v216 + 159);
            v121 = *(v216 + 161);
            v122 = *(v216 + 165);
            v116[8] = *(v216 + 163);
            v116[9] = v122;
            v116[6] = v120;
            v116[7] = v121;
            v105 = v115 == v99;
            v98 = v114;
            v102 = v103;
            if (v105)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }
      }
    }

    v104 += 8;
    v105 = v99++ == v216[364];
    if (v105)
    {
      goto LABEL_68;
    }
  }

LABEL_88:
  __break(1u);
  return result;
}