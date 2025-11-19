__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_22EE0E700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22EE0E748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE0E7D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 321))
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

uint64_t sub_22EE0E818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
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

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6ktrace12PlanSettingsV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6ktrace12PlanSettingsV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlanSettings.KPerfAction.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PlanSettings.KPerfAction.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t _s6ktrace12PlanSettingsV10KPerfTimerV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6ktrace12PlanSettingsV10KPerfTimerV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22EE0ECC0()
{
  result = qword_27DA99DB0[0];
  if (!qword_27DA99DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA99DB0);
  }

  return result;
}

unint64_t sub_22EE0ED18()
{
  result = qword_27DA99FC0[0];
  if (!qword_27DA99FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA99FC0);
  }

  return result;
}

unint64_t sub_22EE0ED70()
{
  result = qword_27DA9A1D0[0];
  if (!qword_27DA9A1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A1D0);
  }

  return result;
}

unint64_t sub_22EE0EDC8()
{
  result = qword_27DA9A3E0[0];
  if (!qword_27DA9A3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A3E0);
  }

  return result;
}

unint64_t sub_22EE0EE20()
{
  result = qword_27DA9A5F0;
  if (!qword_27DA9A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9A5F0);
  }

  return result;
}

unint64_t sub_22EE0EE78()
{
  result = qword_27DA9A800[0];
  if (!qword_27DA9A800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9A800);
  }

  return result;
}

unint64_t sub_22EE0EED0()
{
  result = qword_27DA9AA10[0];
  if (!qword_27DA9AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AA10);
  }

  return result;
}

unint64_t sub_22EE0EF28()
{
  result = qword_27DA9AC20[0];
  if (!qword_27DA9AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AC20);
  }

  return result;
}

unint64_t sub_22EE0EF80()
{
  result = qword_27DA9AD30;
  if (!qword_27DA9AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AD30);
  }

  return result;
}

unint64_t sub_22EE0EFD8()
{
  result = qword_27DA9AD38[0];
  if (!qword_27DA9AD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AD38);
  }

  return result;
}

unint64_t sub_22EE0F030()
{
  result = qword_27DA9ADC0;
  if (!qword_27DA9ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9ADC0);
  }

  return result;
}

unint64_t sub_22EE0F088()
{
  result = qword_27DA9ADC8[0];
  if (!qword_27DA9ADC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9ADC8);
  }

  return result;
}

unint64_t sub_22EE0F0E0()
{
  result = qword_27DA9AE50;
  if (!qword_27DA9AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AE50);
  }

  return result;
}

unint64_t sub_22EE0F138()
{
  result = qword_27DA9AE58[0];
  if (!qword_27DA9AE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AE58);
  }

  return result;
}

unint64_t sub_22EE0F190()
{
  result = qword_27DA9AEE0;
  if (!qword_27DA9AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AEE0);
  }

  return result;
}

unint64_t sub_22EE0F1E8()
{
  result = qword_27DA9AEE8[0];
  if (!qword_27DA9AEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9AEE8);
  }

  return result;
}

unint64_t sub_22EE0F240()
{
  result = qword_27DA9AF70;
  if (!qword_27DA9AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AF70);
  }

  return result;
}

unint64_t sub_22EE0F298()
{
  result = qword_27DA9AF78;
  if (!qword_27DA9AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9AF78);
  }

  return result;
}

unint64_t sub_22EE0F2F0()
{
  result = qword_27DA9B000;
  if (!qword_27DA9B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9B000);
  }

  return result;
}

unint64_t sub_22EE0F348()
{
  result = qword_27DA9B008[0];
  if (!qword_27DA9B008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9B008);
  }

  return result;
}

unint64_t sub_22EE0F3A0()
{
  result = qword_27DA9B090;
  if (!qword_27DA9B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9B090);
  }

  return result;
}

unint64_t sub_22EE0F3F8()
{
  result = qword_27DA9B098[0];
  if (!qword_27DA9B098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9B098);
  }

  return result;
}

unint64_t sub_22EE0F450()
{
  result = qword_27DA9B120;
  if (!qword_27DA9B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9B120);
  }

  return result;
}

unint64_t sub_22EE0F4A8()
{
  result = qword_27DA9B128[0];
  if (!qword_27DA9B128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9B128);
  }

  return result;
}

unint64_t sub_22EE0F4FC()
{
  result = qword_27DA955F0;
  if (!qword_27DA955F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955F0);
  }

  return result;
}

unint64_t sub_22EE0F550()
{
  result = qword_27DA955F8;
  if (!qword_27DA955F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA955F8);
  }

  return result;
}

double sub_22EE0F5A4(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_22EE0F5D8(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_22EE0F5FC()
{
  result = qword_27DA95680;
  if (!qword_27DA95680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95680);
  }

  return result;
}

unint64_t sub_22EE0F650()
{
  result = qword_27DA95688;
  if (!qword_27DA95688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95480, &qword_22EE41F38);
    sub_22EE0F6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95688);
  }

  return result;
}

unint64_t sub_22EE0F6D4()
{
  result = qword_27DA95690;
  if (!qword_27DA95690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95690);
  }

  return result;
}

unint64_t sub_22EE0F728()
{
  result = qword_27DA95698;
  if (!qword_27DA95698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95498, &qword_22EE41F40);
    sub_22EE0F7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95698);
  }

  return result;
}

unint64_t sub_22EE0F7AC()
{
  result = qword_27DA956A0;
  if (!qword_27DA956A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956A0);
  }

  return result;
}

unint64_t sub_22EE0F800()
{
  result = qword_27DA956A8;
  if (!qword_27DA956A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956A8);
  }

  return result;
}

unint64_t sub_22EE0F854()
{
  result = qword_27DA956B0;
  if (!qword_27DA956B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA954B8, &qword_22EE41F48);
    sub_22EE0F8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956B0);
  }

  return result;
}

unint64_t sub_22EE0F8D8()
{
  result = qword_27DA956B8;
  if (!qword_27DA956B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956B8);
  }

  return result;
}

unint64_t sub_22EE0F92C()
{
  result = qword_27DA956C0;
  if (!qword_27DA956C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956C0);
  }

  return result;
}

unint64_t sub_22EE0F980()
{
  result = qword_27DA956C8;
  if (!qword_27DA956C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA954D8, &qword_22EE41F50);
    sub_22EE0FA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956C8);
  }

  return result;
}

unint64_t sub_22EE0FA04()
{
  result = qword_27DA956D0;
  if (!qword_27DA956D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA956D0);
  }

  return result;
}

unint64_t sub_22EE0FA58()
{
  result = qword_27DA95700;
  if (!qword_27DA95700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95700);
  }

  return result;
}

uint64_t sub_22EE0FAAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA94FD8, qword_22EE400D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22EE0FB18()
{
  result = qword_27DA95728;
  if (!qword_27DA95728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95728);
  }

  return result;
}

unint64_t sub_22EE0FB6C()
{
  result = qword_27DA95748;
  if (!qword_27DA95748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95410, &qword_22EE41EF0);
    sub_22EE0FBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95748);
  }

  return result;
}

unint64_t sub_22EE0FBF0()
{
  result = qword_27DA95750;
  if (!qword_27DA95750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95750);
  }

  return result;
}

uint64_t StaticString.charPtr.getter(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE0FC90()
{
  result = sub_22EE3BF34();
  qword_27DA9C948 = result;
  return result;
}

uint64_t *sub_22EE0FCB0()
{
  if (qword_27DA9B1B0 != -1)
  {
    swift_once();
  }

  return &qword_27DA9C948;
}

uint64_t sub_22EE0FD00()
{
  result = sub_22EE3BF44();
  qword_27DA9C950 = result;
  return result;
}

uint64_t *sub_22EE0FD20()
{
  if (qword_27DA9B1B8 != -1)
  {
    swift_once();
  }

  return &qword_27DA9C950;
}

uint64_t sub_22EE0FD7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 114;
  v5 = 0xE200000000000000;
  v6 = 11127;
  v7 = 0xE100000000000000;
  v8 = 97;
  if (a1 != 4)
  {
    v8 = 11105;
    v7 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 11122;
  if (a1 != 1)
  {
    v10 = 119;
    v9 = 0xE100000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE200000000000000;
      if (v11 != 11127)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE100000000000000;
      if (v11 != 97)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 11105)
      {
LABEL_33:
        v14 = sub_22EE3CBA4();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE200000000000000;
      if (v11 != 11122)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE100000000000000;
      if (v11 != 119)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE100000000000000;
    if (v11 != 114)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_22EE0FEEC()
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EE0FFAC()
{
  *v0;
  *v0;
  *v0;
  sub_22EE3C1C4();
}

uint64_t sub_22EE1005C()
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EE10118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22EE13330();
  *a2 = result;
  return result;
}

void sub_22EE10148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 114;
  v5 = 0xE200000000000000;
  v6 = 11127;
  v7 = 0xE100000000000000;
  v8 = 97;
  if (v2 != 4)
  {
    v8 = 11105;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 11122;
  if (v2 != 1)
  {
    v10 = 119;
    v9 = 0xE100000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

FILE *sub_22EE101C0()
{
  v0 = sub_22EE3C184();

  v1 = sub_22EE3C184();

  v2 = fopen((v0 + 32), (v1 + 32));

  return v2;
}

FILE *sub_22EE102A4(FILE *a1)
{
  v1 = fileno(a1);
  v2 = dup(v1);
  if (v2 < 0)
  {
    return 0;
  }

  result = fdopen(v2, "a");
  if (!result)
  {
    __break(1u);
  }

  return result;
}

FILE *sub_22EE102E4(FILE *a1)
{
  v2 = fileno(a1);
  v3 = dup(v2);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    result = fopen("/dev/null", "a");
    if (!result)
    {
      return result;
    }

    v6 = fileno(result);
    v7 = fileno(a1);
    if ((dup2(v6, v7) & 0x80000000) == 0)
    {
      result = fdopen(v4, "a");
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t *sub_22EE10374(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_22EE1337C(a1, a2, a3, a4);
  (*(*(a2 - 1) + 8))(a1, a2);
  return v8;
}

char *sub_22EE10410@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EE10440(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_22EE3C5D4();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_22EE3C334();
  v70 = sub_22EE3C8F4();
  v65 = sub_22EE3C904();
  sub_22EE3C8D4();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_22EE3C324();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_22EE3C664();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_22EE3C8E4();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_22EE3C664();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_22EE3C8E4();
      sub_22EE3C664();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_22EE10B34()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        free(v5);
      }

      v4 += 8;
      --v2;
    }

    while (v2);

    v6 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

uint64_t **sub_22EE10BFC(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = *a4;
      if (!*a4)
      {
        break;
      }

      ++a4;
      *(a2 + 8 * v4) = v5;
      if (a3 - 1 == v4)
      {
        goto LABEL_12;
      }

      if (__OFADD__(++v4, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v4;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_22EE10C7C(void *a1@<X8>)
{
  v2 = **v1;
  if (v2)
  {
    ++*v1;
  }

  *a1 = v2;
}

uint64_t sub_22EE10C98()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32))
  {
    v3 = v0[2];
    v4 = v0[3];
    if (*(v0 + 32) == 1)
    {
      sub_22EE3C864();

      v10 = v2;
      v5 = 0x800000022EE49350;
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      sub_22EE3C864();

      v10 = v2;
      v6 = 0xD00000000000001FLL;
      v5 = 0x800000022EE49330;
    }

    MEMORY[0x2318F58F0](v6, v5);
    v7 = v3;
    v8 = v4;
  }

  else
  {
    sub_22EE3C864();

    v10 = v2;
    v7 = 0x206120746F6E203ALL;
    v8 = 0xEE007265626D756ELL;
  }

  MEMORY[0x2318F58F0](v7, v8);
  return v10;
}

unint64_t sub_22EE10DF0(uint64_t a1, unint64_t a2, char a3)
{
  v5 = 0x800000022EE49370;
  v6 = 115;
  if (a3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v47 = v6;
  v48 = v5;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_16:
    sub_22EE136BC();
    swift_allocError();
    *v34 = a1;
    *(v34 + 8) = a2;
    *(v34 + 16) = v47;
    *(v34 + 24) = v48;
    *(v34 + 32) = 1;

    return swift_willThrow();
  }

  v9 = 4 * v7;
  v10 = 15;
  while (1)
  {
    v11 = sub_22EE3C2F4();
    v13 = v12;
    if ((sub_22EE3C0A4() & 1) == 0 && (v11 != 46 || v13 != 0xE100000000000000))
    {
      break;
    }

LABEL_9:
    v10 = sub_22EE3C1E4();
    if (v9 == v10 >> 14)
    {
      goto LABEL_16;
    }
  }

  v14 = sub_22EE3CBA4();

  if (v14)
  {
    goto LABEL_9;
  }

  v15 = sub_22EE3C314();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = sub_22EDEC74C(v10, a1, a2);
  v45 = v23;
  v46 = v22;
  v25 = v24;
  v27 = v26;

  v28 = sub_22EE3C434();
  if (v29)
  {

    v30 = MEMORY[0x2318F5880](v15, v17, v19, v21);
    v32 = v31;

    sub_22EE136BC();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    return swift_willThrow();
  }

  v36 = *&v28;

  if ((a3 & 1) != 0 && (sub_22EE13710(v46, v45, v25, v27, 115, 0xE100000000000000) & 1) == 0)
  {
    v38 = MEMORY[0x2318F5880](v46, v45, v25, v27);
    v40 = v39;

    sub_22EE136BC();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    *(v41 + 16) = xmmword_22EE43660;
LABEL_32:
    *(v41 + 32) = 2;
    return swift_willThrow();
  }

  if (sub_22EE13788(29550, 0xE200000000000000, v46, v45, v25, v27))
  {

    if ((~*&v36 & 0x7FF0000000000000) != 0)
    {
      if (v36 > -1.0)
      {
        if (v36 < 1.84467441e19)
        {
          return v36;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (sub_22EE13788(7583170, 0xA300000000000000, v46, v45, v25, v27) & 1) != 0 || (sub_22EE13788(29557, 0xE200000000000000, v46, v45, v25, v27))
  {

    v37 = v36 * 1000.0;
    if (COERCE__INT64(fabs(v36 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    if (v37 <= -1.0)
    {
LABEL_48:
      __break(1u);
    }

    else if (v37 < 1.84467441e19)
    {
      return v37;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((sub_22EE13788(29549, 0xE200000000000000, v46, v45, v25, v27) & 1) == 0)
  {
LABEL_38:
    if (sub_22EE13788(115, 0xE100000000000000, v46, v45, v25, v27))
    {

      v37 = v36 * 1000000000.0;
      if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v37 <= -1.0)
      {
LABEL_53:
        __break(1u);
        return result;
      }

      if (v37 < 1.84467441e19)
      {
        return v37;
      }

      __break(1u);
    }

    v42 = MEMORY[0x2318F5880](v46, v45, v25, v27);
    v44 = v43;

    sub_22EE136BC();
    swift_allocError();
    *v41 = v42;
    *(v41 + 8) = v44;
    *(v41 + 16) = v47;
    *(v41 + 24) = v48;
    goto LABEL_32;
  }

  v37 = v36 * 1000000.0;
  if (COERCE__INT64(fabs(v36 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v37 <= -1.0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v37 >= 1.84467441e19)
  {
    __break(1u);
    goto LABEL_38;
  }

  return v37;
}

unint64_t sub_22EE11334(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_13:
    sub_22EE136BC();
    swift_allocError();
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = xmmword_22EE43670;
    *(v30 + 32) = 1;

    return swift_willThrow();
  }

  v5 = 4 * v4;
  v6 = 15;
  while (1)
  {
    v7 = sub_22EE3C2F4();
    v9 = v8;
    if ((sub_22EE3C0A4() & 1) == 0 && (v7 != 46 || v9 != 0xE100000000000000))
    {
      break;
    }

LABEL_6:
    v6 = sub_22EE3C1E4();
    if (v5 == v6 >> 14)
    {
      goto LABEL_13;
    }
  }

  v10 = sub_22EE3CBA4();

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = sub_22EE3C314();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = sub_22EDEC74C(v6, a1, a2);
  v20 = v19;
  v38 = v21;
  v23 = v22;

  v24 = sub_22EE3C434();
  if (v25)
  {

    v26 = MEMORY[0x2318F5880](v11, v13, v15, v17);
    v28 = v27;

    sub_22EE136BC();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    return swift_willThrow();
  }

  v32 = *&v24;

  if (sub_22EE13788(25197, 0xE200000000000000, v18, v20, v38, v23) & 1) != 0 || (sub_22EE13788(16973, 0xE200000000000000, v18, v20, v38, v23))
  {

    if ((~*&v32 & 0x7FF0000000000000) != 0)
    {
      if (v32 > -1.0)
      {
        if (v32 < 1.84467441e19)
        {
          return v32;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  if ((sub_22EE13788(25191, 0xE200000000000000, v18, v20, v38, v23) & 1) == 0 && (sub_22EE13788(16967, 0xE200000000000000, v18, v20, v38, v23) & 1) == 0)
  {
    v34 = MEMORY[0x2318F5880](v18, v20, v38, v23);
    v36 = v35;

    sub_22EE136BC();
    swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    *(v37 + 16) = xmmword_22EE43670;
    *(v37 + 32) = 2;
    return swift_willThrow();
  }

  v33 = v32 * 1024.0;
  if (COERCE__INT64(fabs(v32 * 1024.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v33 <= -1.0)
  {
LABEL_32:
    __break(1u);
  }

  else if (v33 < 1.84467441e19)
  {
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE116DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v30 = MEMORY[0x277D84F90];
    sub_22EE123D8(0, v4, 0);
    v7 = v30;
    v8 = (v3 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_22EDEBD94(a2, a3, v9, v10);
      v11 = sub_22EE3C284();

      v13 = *(v30 + 16);
      v12 = *(v30 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        a1 = sub_22EE123D8((v12 > 1), v13 + 1, 1);
      }

      *(v30 + 16) = v14;
      *(v30 + 8 * v13 + 32) = v11;
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (!v14)
    {
      v28 = MEMORY[0x277D84F90];

      return v28;
    }
  }

  v15 = *(v7 + 32);
  v16 = v14 - 1;
  if (v14 != 1)
  {
    if (v14 < 5)
    {
      v17 = 1;
      goto LABEL_14;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v18 = vdupq_n_s64(v15);
    v19 = (v7 + 56);
    v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v18;
    do
    {
      v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
      v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
      v19 += 2;
      v20 -= 4;
    }

    while (v20);
    v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
    v23 = vextq_s8(v22, v22, 8uLL).u64[0];
    v15 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
    if (v16 != (v16 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v24 = v14 - v17;
      v25 = (v7 + 8 * v17 + 32);
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (v15 <= v27)
        {
          v15 = v26;
        }

        --v24;
      }

      while (v24);
    }
  }

  MEMORY[0x28223BE20](a1);

  v28 = sub_22EE13480(v7, v3, sub_22EE137F4);

  return v28;
}

uint64_t sub_22EE1192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22EE3C6E4())
  {
    (*(v9 + 16))(v12, v5, a2);
    v13 = *(*(a5 + 8) + 8);
    sub_22EE3C464();
    v14 = *(*(a4 + 8) + 8);
    return sub_22EE3C484();
  }

  else
  {
    v16 = *(*(a4 + 8) + 8);

    return MEMORY[0x2821FC860](ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7, 0, a2, v16);
  }
}

uint64_t sub_22EE11A98(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  v6 = *(v40 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = &v37 - v8;
  v42 = *(a1 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = swift_checkMetadataState();
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  if (sub_22EE3C6D4())
  {
    v44 = 30768;
    v45 = 0xE200000000000000;
    v21 = sub_22ED80FA0();
    sub_22EE1192C(&v44, a1, MEMORY[0x277D837D0], a2, v21);
    swift_getAssociatedConformanceWitness();
    if (sub_22EE3C474())
    {
      (*(v43 + 8))(v20, v17);
    }

    else
    {
      v22 = AssociatedConformanceWitness;
      v23 = sub_22EE3C6C4();
      MEMORY[0x28223BE20](v23);
      *(&v37 - 4) = v17;
      *(&v37 - 3) = v22;
      *(&v37 - 2) = 16;
      v24 = *(swift_getAssociatedConformanceWitness() + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95778, &qword_22EE43680);
      sub_22EE3C344();
      (*(v37 + 8))(v16, v13);
      if ((v45 & 0x100) != 0)
      {
        v25 = sub_22EE13880();
        sub_22EE126C0(v20, 16, v17, MEMORY[0x277D83E88], v22, v25, &v46);
        (*(v43 + 8))(v20, v17);
        if ((v47 & 1) == 0)
        {
          return v46;
        }
      }

      else
      {
        v32 = v45;
        v33 = v44;
        (*(v43 + 8))(v20, v17);
        v46 = v33;
        if ((v32 & 1) == 0)
        {
          return v46;
        }
      }
    }

    return 0;
  }

  v26 = v42;
  (*(v42 + 16))(v11, v2, a1);
  if (sub_22EE3C474())
  {
    (*(v26 + 8))(v11, a1);
    return 0;
  }

  v27 = v38;
  v28 = sub_22EE3C6C4();
  MEMORY[0x28223BE20](v28);
  *(&v37 - 4) = a1;
  *(&v37 - 3) = a2;
  *(&v37 - 2) = 10;
  v29 = v41;
  v30 = *(swift_getAssociatedConformanceWitness() + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95778, &qword_22EE43680);
  sub_22EE3C344();
  (*(v40 + 8))(v27, v29);
  if ((v45 & 0x100) != 0)
  {
    v31 = sub_22EE13880();
    sub_22EE126C0(v11, 10, a1, MEMORY[0x277D83E88], a2, v31, &v46);
    (*(v26 + 8))(v11, a1);
    if ((v47 & 1) == 0)
    {
      return v46;
    }

    return 0;
  }

  v34 = v45;
  v35 = v44;
  (*(v26 + 8))(v11, a1);
  v46 = v35;
  if (v34)
  {
    return 0;
  }

  return v46;
}

uint64_t sub_22EE120D8()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = 8;
  v3[0] = 0;
  sysctlbyname("hw.memsize", v3, &v2, 0, 0);
  if ((v3[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v0 = *MEMORY[0x277D85DE8];
  return v3[0] >> 20;
}

uint64_t sub_22EE12174()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 4;
  sysctlbyname("hw.logicalcpu_max", &v3, &v2, 0, 0);
  result = v3;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE121E8(uint64_t result)
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

  result = sub_22EE122D4(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

char *sub_22EE122D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957C0, &qword_22EE43D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22EE123D8(char *a1, int64_t a2, char a3)
{
  result = sub_22EE123F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EE123F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957B0, &qword_22EE43A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t *sub_22EE124FC(uint64_t *result)
{
  v1 = *result;
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (*result)
  {
    v4 = (MEMORY[0x277D84F90] + 32);
    v5 = result + 1;
    while (1)
    {
      if (!v3)
      {
        v6 = v2[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95798, &qword_22EE43A10);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 25;
        }

        v12 = v11 >> 3;
        v9[2] = v8;
        v9[3] = 2 * (v11 >> 3);
        v13 = (v9 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v9 != v2 || v13 >= &v2[v14 + 4])
          {
            memmove(v9 + 4, v2 + 4, 8 * v14);
          }

          v2[2] = 0;
        }

        v4 = (v13 + 8 * v14);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v9;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v4++ = v1;
      v17 = *v5++;
      v1 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v16 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v16)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22EE1264C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (v7 == 43)
  {
    v8 = a2-- < 1;
    if (v8)
    {
      goto LABEL_15;
    }

    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

LABEL_12:
    v9 = 0;
    return sub_22EE128CC(result, a2, a3, v9, a4, a5, a6);
  }

  if (v7 != 45)
  {
    goto LABEL_12;
  }

  v8 = a2-- < 1;
  if (!v8)
  {
    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

    v9 = 1;
    return sub_22EE128CC(result, a2, a3, v9, a4, a5, a6);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22EE126C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a5 + 40);
  v16 = *(*(*(a5 + 8) + 8) + 8);
  result = sub_22EE3C304();
  v19 = result;
  v20 = v18;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v19 = sub_22EE12EBC();
    v25 = v24;

    v20 = v25;
    if ((v25 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        result = sub_22EE3C8C4();
      }

      v22 = *result;
      if (v22 == 43)
      {
        v23 = v21-- < 1;
        if (v23)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }
      }

      else if (v22 == 45)
      {
        v23 = v21-- < 1;
        if (!v23)
        {
          if (result)
          {
            ++result;
          }

          else
          {
            result = 0;
          }

          goto LABEL_20;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_24;
    }
  }

  else if ((v18 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v21 = HIBYTE(v20) & 0xF;
  v29[0] = v19;
  v29[1] = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v19 != 43)
  {
    if (v19 == 45)
    {
      if (v21)
      {
        --v21;
        result = v29 + 1;
LABEL_20:
        v26 = a7;
        v27 = a2;
        v28 = 1;
LABEL_25:
        sub_22EE128CC(result, v21, v27, v28, a4, a6, v26);
      }

      goto LABEL_28;
    }

    result = v29;
LABEL_24:
    v26 = a7;
    v27 = a2;
    v28 = 0;
    goto LABEL_25;
  }

  if (v21)
  {
    --v21;
    result = v29 + 1;
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22EE128CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a4;
  v66 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v61 = v53 - v14;
  v15 = *(a6 + 8);
  v16 = *(*(v15 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = *(*(a5 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v64 = v53 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v53 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = v53 - v29;
  if (!a2)
  {
    v52 = *(v28 + 56);

    return v52(a7, 1, 1, a5);
  }

  v67 = v28;
  v31 = a3 + 48;
  v32 = a3 + 55;
  v33 = a3 + 87;
  if (a3 <= 10)
  {
    v33 = 97;
  }

  v54 = v33;
  if (a3 <= 10)
  {
    v32 = 65;
  }

  v56 = v32;
  v71 = a3;
  if (a3 > 10)
  {
    v31 = 58;
  }

  v58 = v31;
  v34 = v30;
  sub_22ED80F1C();
  v65 = v34;
  v63 = v15;
  sub_22EE3C704();
  swift_getAssociatedConformanceWitness();
  sub_22EE3CBB4();
  sub_22EE3CB94();
  v36 = v66;
  if (!v66)
  {
    v41 = *(v67 + 8);
    v49 = v65;
LABEL_27:
    (v41)(v49, a5, v35);
    (*(v67 + 32))(a7, v27, a5);
    return (*(v67 + 56))(a7, 0, 1, a5);
  }

  v55 = a7;
  v35 = v67;
  v37 = (v67 + 8);
  v38 = (v67 + 32);
  v53[1] = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53[2] = a6;
  while (1)
  {
    v39 = *v36;
    if (v39 >= 0x30 && v39 < v58)
    {
      v66 = v36;
      v57 = a2;
      v68 = v39 - 48;
      sub_22EE13CC8();
      goto LABEL_19;
    }

    if (v39 >= 0x41 && v39 < v56)
    {
      v66 = v36;
      v57 = a2;
      v69 = v39 - 55;
      sub_22EE13CC8();
      goto LABEL_19;
    }

    if (v39 < 0x61 || v39 >= v54)
    {
      break;
    }

    v66 = v36;
    v57 = a2;
    v70 = v39 - 87;
    sub_22EE13CC8();
LABEL_19:
    sub_22EE3C704();
    v40 = v60;
    v59 = sub_22EE3C974();
    v41 = *v37;
    (*v37)(v27, a5);
    v42 = *v38;
    v43 = v38;
    (*v38)(v27, v40, a5);
    v44 = v61;
    v45 = v64;
    if (v62)
    {
      v46 = sub_22EE3C984();
    }

    else
    {
      v46 = sub_22EE3C964();
    }

    v47 = v46;
    v41(v45, a5);
    v41(v27, a5);
    v48 = v44;
    v38 = v43;
    v42(v27, v48, a5);
    if ((v59 | v47))
    {
      v41(v27, a5);
      v41(v65, a5);
      return (*(v67 + 56))(v55, 1, 1, a5);
    }

    v35 = v67;
    v36 = v66 + 1;
    a2 = v57 - 1;
    if (v57 == 1)
    {
      a7 = v55;
      v49 = v65;
      goto LABEL_27;
    }
  }

  v51 = *(v35 + 8);
  v51(v27, a5);
  v51(v65, a5);
  return (*(v67 + 56))(v55, 1, 1, a5);
}

uint64_t sub_22EE12EBC()
{
  v0 = sub_22EE3C314();
  v4 = sub_22EE12F3C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22EE12F3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22EE3C1B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22EE3C624();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22ED7E3C0(v9, 0);
  v12 = sub_22EE13094(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22EE3C1B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22EE3C8C4();
LABEL_4:

  return sub_22EE3C1B4();
}

unint64_t sub_22EE13094(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22EE132B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22EE3C274();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22EE3C8C4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22EE132B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22EE3C244();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22EE132B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22EE3C294();
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
    v5 = MEMORY[0x2318F5940](15, a1 >> 16);
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

uint64_t sub_22EE13330()
{
  v0 = sub_22EE3CA04();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t *sub_22EE1337C(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957B8, &unk_22EE43A20);
  v13 = sub_22EE10440(sub_22EE13D1C, v12, a2, v9, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v10);
  sub_22EE121E8(&unk_2843A3210);
  v5[2] = v13;
  return v5;
}

uint64_t sub_22EE13480(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v40 = MEMORY[0x277D84F90];
  result = sub_22EDD2DD4(0, v7, 0);
  v36 = v6;
  v37 = v5;
  v34 = a2;
  v35 = v7;
  v33 = a1;
  if (v7)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 40);
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *(v10 - 1);
      v13 = *v10;

      v14 = a3(v11, v12, v13);
      v39 = v15;

      v17 = *(v40 + 16);
      v16 = *(v40 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22EDD2DD4((v16 > 1), v17 + 1, 1);
      }

      *(v40 + 16) = v17 + 1;
      v18 = v40 + 16 * v17;
      --v6;
      *(v18 + 32) = v14;
      *(v18 + 40) = v39;
      --v5;
      v10 += 2;
      ++v9;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v20 = v36;
    v19 = v37;
    if (v37 <= v36)
    {
      return v40;
    }

    v21 = v35;
    v22 = (v34 + 16 * v35 + 40);
    while (v21 < v19)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_24;
      }

      if (v20 != v21)
      {
        if (v21 >= v20)
        {
          goto LABEL_25;
        }

        v24 = *(v33 + 32 + 8 * v21);
        v25 = *(v22 - 1);
        v26 = *v22;

        v27 = a3(v24, v25, v26);
        v29 = v28;

        v31 = *(v40 + 16);
        v30 = *(v40 + 24);
        if (v31 >= v30 >> 1)
        {
          result = sub_22EDD2DD4((v30 > 1), v31 + 1, 1);
        }

        ++v21;
        v22 += 2;
        *(v40 + 16) = v31 + 1;
        v32 = v40 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v20 = v36;
        v19 = v37;
        if (v23 != v37)
        {
          continue;
        }
      }

      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_22EE136BC()
{
  result = qword_27DA95768;
  if (!qword_27DA95768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95768);
  }

  return result;
}

uint64_t sub_22EE13710(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_22EE3CB74() & 1;
  }
}

uint64_t sub_22EE13788(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_22EE3CB74() & 1;
  }
}

uint64_t sub_22EE137F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v7, result))
  {
    v10 = sub_22EE3C2D4();
    MEMORY[0x2318F58F0](a2, a3);
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EE13880()
{
  result = qword_27DA95770;
  if (!qword_27DA95770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95770);
  }

  return result;
}

unsigned __int8 *sub_22EE138D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = sub_22EE13880();
  return sub_22EE1264C(a1, a2, v9, MEMORY[0x277D83E88], v10, a3);
}

unint64_t sub_22EE13954()
{
  result = qword_27DA95780;
  if (!qword_27DA95780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95780);
  }

  return result;
}

unint64_t sub_22EE139AC()
{
  result = qword_27DA95788;
  if (!qword_27DA95788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95788);
  }

  return result;
}

uint64_t _s6ktrace12StandardFileVwet_0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s6ktrace12StandardFileVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_22EE13AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_22EE13B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_22EE13BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_22EE13C3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_22EE13CC8()
{
  result = qword_27DA957A8;
  if (!qword_27DA957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA957A8);
  }

  return result;
}

uint64_t sub_22EE13D1C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957B8, &unk_22EE43A20);
  return sub_22EE3C6B4();
}

unint64_t sub_22EE13DF4(unint64_t result, unint64_t a2)
{
  v2 = result * HIDWORD(a2) / a2;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_22EE13EAC()
{
  v1 = v0;
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22EE3C8A4();
  v155 = *(v7 - 8);
  v156 = v7;
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v7);
  v154 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22EE3C8B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v152 - v16;
  v18 = type metadata accessor for KTraceRecordError();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22EE0DD2C(v1, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v98 = *v21;
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000012;
      v157[1] = 0x800000022EE49A20;
      LODWORD(v160) = v98;
      goto LABEL_36;
    case 2u:
      v83 = *v21;
      v82 = v21[1];
      v84 = *(v21 + 4);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0x20667265706BLL;
      v157[1] = 0xE600000000000000;
      MEMORY[0x2318F58F0](v83, v82);
      MEMORY[0x2318F58F0](0x3A64656C69616620, 0xE900000000000020);
      result = strerror(v84);
      if (result)
      {

        v55 = sub_22EE3C214();
        goto LABEL_53;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return result;
    case 3u:
      v23 = *v21;
      v24 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v90 = 0x800000022EE499F0;
      v91 = 0xD000000000000022;
      goto LABEL_46;
    case 4u:
    case 0x15u:
    case 0x17u:
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v157[0] = *v21;
      v157[1] = v22;
      MEMORY[0x2318F58F0](8250, 0xE200000000000000);
      goto LABEL_49;
    case 5u:
      v88 = *v21;
      v89 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v88;
      v157[1] = v89;
      v34 = "lans are unavailable";
      v35 = 0xD000000000000012;
      goto LABEL_57;
    case 6u:
      v116 = *v21;
      v117 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v116;
      v157[1] = v117;
      v101 = ": experimental plans are unavailable";
      goto LABEL_42;
    case 7u:
      v63 = *v21;
      v62 = v21[1];
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95588, &qword_22EE41FA0);
      v65 = v11;
      v66 = *(v11 + 32);
      v67 = v10;
      v66(v17, v21 + *(v64 + 48), v10);
      v68 = v15;
      (*(v65 + 16))(v15, v17, v10);
      v69 = (*(v65 + 88))(v15, v10);
      if (v69 == *MEMORY[0x277D84160])
      {
        (*(v65 + 96))(v15, v10);
        v70 = v63;
        v71 = *v68;
        v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957D8, &qword_22EE43A98) + 48);
        v153 = v17;
        v73 = v154;
        v74 = v155;
        v75 = v156;
        (*(v155 + 32))(v154, v68 + v72, v156);
        v157[0] = 0;
        v157[1] = 0xE000000000000000;
        sub_22EE3C864();
        MEMORY[0x2318F58F0](v70, v62);

        MEMORY[0x2318F58F0](0xD00000000000001BLL, 0x800000022EE49930);
        v76 = sub_22EE3CD24();
        MEMORY[0x2318F58F0](v76);

        MEMORY[0x2318F58F0](2112039, 0xE300000000000000);
        sub_22EE3C924();
        v77 = v157[0];
        (*(v74 + 8))(v73, v75);
        (*(v65 + 8))(v153, v67);
        return v77;
      }

      if (v69 != *MEMORY[0x277D84170])
      {
        if (v69 == *MEMORY[0x277D84158])
        {
          (*(v65 + 96))(v15, v10);
          v142 = v63;
          v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957E0, qword_22EE43AA0) + 48);
          sub_22EE15590(v68, v157);
          v160 = 0;
          v161 = 0xE000000000000000;
          sub_22EE3C864();

          v160 = v142;
          v161 = v62;
          MEMORY[0x2318F58F0](0xD00000000000001DLL, 0x800000022EE49950);
          __swift_project_boxed_opaque_existential_1(v157, v159);
          v144 = sub_22EE3CCF4();
          MEMORY[0x2318F58F0](v144);

          MEMORY[0x2318F58F0](39, 0xE100000000000000);
          v77 = v160;
          (*(v65 + 8))(v17, v10);
          __swift_destroy_boxed_opaque_existential_0(v157);
          (*(v155 + 8))(v68 + v143, v156);
        }

        else if (v69 == *MEMORY[0x277D84168])
        {
          (*(v65 + 96))(v15, v10);
          v145 = v63;
          v146 = v17;
          v147 = v154;
          v148 = v155;
          v149 = v156;
          (*(v155 + 32))(v154, v68, v156);
          v157[0] = 0;
          v157[1] = 0xE000000000000000;
          sub_22EE3C864();

          v157[0] = v145;
          v157[1] = v62;
          MEMORY[0x2318F58F0](0xD000000000000021, 0x800000022EE49970);
          v150 = sub_22EE155A8();
          MEMORY[0x2318F58F0](v150);

          v77 = v157[0];
          (*(v148 + 8))(v147, v149);
          (*(v65 + 8))(v146, v67);
        }

        else
        {
          v157[0] = 0;
          v157[1] = 0xE000000000000000;
          sub_22EE3C864();

          v157[0] = v63;
          v157[1] = v62;
          MEMORY[0x2318F58F0](0xD000000000000015, 0x800000022EE49910);
          v77 = v157[0];
          v151 = *(v65 + 8);
          v151(v17, v10);
          v151(v15, v10);
        }

        return v77;
      }

      (*(v65 + 96))(v15, v10);
      v138 = *v15;
      v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957D8, &qword_22EE43A98) + 48);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v63;
      v157[1] = v62;
      MEMORY[0x2318F58F0](0x76206E616C70203ALL, 0xEE00602065756C61);
      v140 = sub_22EE3CD24();
      MEMORY[0x2318F58F0](v140);

      MEMORY[0x2318F58F0](0x6F6620746F6E2027, 0xEB00000000646E75);
      v141 = v157[0];
      (*(v65 + 8))(v17, v67);
      (*(v155 + 8))(v15 + v139, v156);
      return v141;
    case 8u:
      v114 = *v21;
      v115 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v114;
      v157[1] = v115;
      v101 = ": existing file would be overwritten";
      goto LABEL_42;
    case 9u:
      v51 = *v21;
      v52 = v21[1];
      v54 = v21[2];
      v53 = v21[3];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](0x6020646C656966, 0xE700000000000000);
      MEMORY[0x2318F58F0](v51, v52);

      MEMORY[0x2318F58F0](0xD000000000000032, 0x800000022EE498A0);
      v55 = v54;
      goto LABEL_52;
    case 0xAu:
      v56 = *v21;
      v57 = v21[1];
      v58 = v21[2];
      v59 = v21[3];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[1] = 0xE700000000000000;
      MEMORY[0x2318F58F0](v56, v57);

      v60 = " 80 characters long, was ";
      v61 = 0xD000000000000023;
      goto LABEL_32;
    case 0xBu:
      v110 = *v21;
      v111 = v21[1];
      v112 = v21[2];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](v110, v111);

      MEMORY[0x2318F58F0](0xD000000000000039, 0x800000022EE49830);
      v160 = v112;
LABEL_36:
      v55 = sub_22EE3CB84();
      goto LABEL_53;
    case 0xCu:
      v43 = *v21;
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000025;
      v157[1] = 0x800000022EE49800;
      v160 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95510, &qword_22EE41F68);
      sub_22EE1552C();
      sub_22ED80FA0();
      v44 = sub_22EE3C364();
      v46 = v45;

      MEMORY[0x2318F58F0](v44, v46);

      return v157[0];
    case 0xDu:
      v86 = *v21;
      v87 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v86;
      v157[1] = v87;
      v34 = ": overlapping provider options";
      v35 = 0xD00000000000001BLL;
      goto LABEL_57;
    case 0xEu:
      v41 = *v21;
      v42 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](v41, v42);

      v34 = "' only supports ";
      v35 = 0xD000000000000036;
      goto LABEL_57;
    case 0xFu:
      v102 = *v21;
      v103 = v21[1];
      v104 = v21[2];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      BYTE5(v157[1]) = 0;
      HIWORD(v157[1]) = -5120;
      MEMORY[0x2318F58F0](v102, v103);

      MEMORY[0x2318F58F0](0xD000000000000010, 0x800000022EE49760);
      v160 = v104;
      v105 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v105);

      v35 = 0x73656972746E6520;
      v40 = 0xE800000000000000;
      goto LABEL_58;
    case 0x10u:
      v113 = *v21;
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000016;
      v157[1] = 0x800000022EE49740;
      result = strerror(v113);
      if (result)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    case 0x11u:
      v23 = *v21;
      v24 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      strcpy(v157, "plan requires ");
      HIBYTE(v157[1]) = -18;
      goto LABEL_49;
    case 0x12u:
      v106 = *v21;
      v107 = v21[1];
      v58 = v21[2];
      v59 = v21[3];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      BYTE1(v157[1]) = 0;
      WORD1(v157[1]) = 0;
      HIDWORD(v157[1]) = -402653184;
      MEMORY[0x2318F58F0](v106, v107);

      v60 = "' is experimental";
      v61 = 0xD000000000000021;
LABEL_32:
      MEMORY[0x2318F58F0](v61, v60 | 0x8000000000000000);
      v97 = v58;
      goto LABEL_33;
    case 0x13u:
      v108 = *v21;
      v109 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      BYTE1(v157[1]) = 0;
      WORD1(v157[1]) = 0;
      HIDWORD(v157[1]) = -402653184;
      MEMORY[0x2318F58F0](v108, v109);

      v34 = "additional unparsed arguments: ";
      v35 = 0xD000000000000011;
      goto LABEL_57;
    case 0x14u:
      v23 = *v21;
      v24 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v90 = 0x800000022EE496D0;
      v91 = 0xD00000000000001FLL;
LABEL_46:
      v157[0] = v91;
      v157[1] = v90;
LABEL_49:
      MEMORY[0x2318F58F0](v23, v24);

      return v157[0];
    case 0x16u:
      v122 = *v21;
      v123 = v21[1];
      v124 = *(v21 + 4);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](0xD000000000000032, 0x800000022EE49690);
      MEMORY[0x2318F58F0](v122, v123);

      MEMORY[0x2318F58F0](91, 0xE100000000000000);
      LODWORD(v160) = v124;
      v125 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v125);

      v35 = 10077;
      v40 = 0xE200000000000000;
      goto LABEL_58;
    case 0x18u:
      v80 = *v21;
      v81 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v80;
      v157[1] = v81;
      v34 = ": already providing";
      v35 = 0xD000000000000010;
      goto LABEL_57;
    case 0x19u:
      v78 = *v21;
      v79 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v78;
      v157[1] = v79;
      v34 = " files organized";
      v35 = 0xD000000000000013;
      goto LABEL_57;
    case 0x1Au:
      v136 = *v21;
      v137 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v136;
      v157[1] = v137;
      v34 = " bundle of provider";
      v35 = 0xD000000000000014;
      goto LABEL_57;
    case 0x1Bu:
      goto LABEL_7;
    case 0x1Cu:
      v55 = *v21;
      v53 = v21[1];
      strcpy(v157, "usage: ");
      v157[1] = 0xE700000000000000;
LABEL_52:
      v85 = v53;
      goto LABEL_53;
    case 0x1Du:
      v126 = *v21;
      v127 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v126;
      v157[1] = v127;
      v34 = "ithout an inclusion filter";
      v35 = 0xD00000000000002BLL;
      goto LABEL_57;
    case 0x1Eu:
      v118 = *v21;
      v119 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](v118, v119);

      v34 = "o existing directory";
      v35 = 0xD00000000000003ALL;
      goto LABEL_57;
    case 0x1Fu:
      v99 = *v21;
      v100 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v99;
      v157[1] = v100;
      v101 = ": cannot write to existing directory";
LABEL_42:
      v40 = (v101 - 32) | 0x8000000000000000;
      v35 = 0xD000000000000024;
      goto LABEL_58;
    case 0x20u:
      v120 = *v21;
      v121 = v21[1];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = v120;
      v157[1] = v121;
      v34 = "ured by plan for profiling";
      v35 = 0xD000000000000021;
      goto LABEL_57;
    case 0x21u:
      v47 = *v21;
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      v160 = v47;
      v48 = sub_22EE3CB84();
      v50 = v49;

      v157[0] = v48;
      v157[1] = v50;
      v35 = 0xD000000000000023;
      v40 = 0x800000022EE494D0;
      goto LABEL_58;
    case 0x22u:
      v36 = *v21;
      v37 = v21[1];
      v39 = v21[2];
      v38 = v21[3];
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000015;
      v157[1] = 0x800000022EE494B0;
      MEMORY[0x2318F58F0](v36, v37);
      MEMORY[0x2318F58F0](0x2D2D20726F6620, 0xE700000000000000);
      MEMORY[0x2318F58F0](v36, v37);

      MEMORY[0x2318F58F0](58, 0xE100000000000000);
      MEMORY[0x2318F58F0](v39, v38);

      v35 = 0x6E6F6974706F20;
      v40 = 0xE700000000000000;
      goto LABEL_58;
    case 0x23u:
      v29 = *v21;
      v28 = v21[1];
      v30 = *(v21 + 4);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      v160 = v157[0];
      v161 = v157[1];
      v157[0] = v29;
      v157[1] = v28;
      v158 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA957D0, &qword_22EE43A90);
      sub_22EE3C924();

      MEMORY[0x2318F58F0](0xD000000000000024, 0x800000022EE49480);
      return v160;
    case 0x24u:
      v31 = *v21;
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      v21 = v157;
      sub_22EE3C864();

      v157[0] = 0xD000000000000014;
      v157[1] = 0x800000022EE49460;
      if (strerror(v31))
      {
LABEL_39:
        v55 = sub_22EE3C214();
LABEL_53:
        MEMORY[0x2318F58F0](v55, v85);
      }

      else
      {
        __break(1u);
LABEL_7:
        v32 = *v21;
        v33 = v21[1];
        v157[0] = 0;
        v157[1] = 0xE000000000000000;
        sub_22EE3C864();

        v157[0] = v32;
        v157[1] = v33;
        v34 = " that cannot be merged";
        v35 = 0xD00000000000001ELL;
LABEL_57:
        v40 = v34 | 0x8000000000000000;
LABEL_58:
        MEMORY[0x2318F58F0](v35, v40);
      }

      return v157[0];
    case 0x25u:
      (*(v3 + 32))(v6, v21, v2);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000029;
      v157[1] = 0x800000022EE49430;
      v25 = sub_22EE3BC94();
      MEMORY[0x2318F58F0](v25);

      v26 = v157[0];
      (*(v3 + 8))(v6, v2);
      return v26;
    case 0x26u:
      v128 = *v21;
      v129 = *(v21 + 1);
      v130 = *(v21 + 2);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();
      LODWORD(v160) = v128;
      v131 = sub_22EE3CB84();
      v133 = v132;

      v157[0] = v131;
      v157[1] = v133;
      MEMORY[0x2318F58F0](0xD000000000000020, 0x800000022EE49400);
      LODWORD(v160) = v129;
      v134 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v134);

      MEMORY[0x2318F58F0](8236, 0xE200000000000000);
      LODWORD(v160) = v130;
      v135 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v135);

      v35 = 93;
      v40 = 0xE100000000000000;
      goto LABEL_58;
    case 0x27u:
      return 0xD00000000000003DLL;
    case 0x28u:
      return 0xD000000000000040;
    case 0x29u:
      return 0xD00000000000002ALL;
    default:
      v92 = *v21;
      v93 = v21[1];
      v94 = *(v21 + 16);
      v157[0] = 0;
      v157[1] = 0xE000000000000000;
      sub_22EE3C864();

      v157[0] = 0xD000000000000013;
      v157[1] = 0x800000022EE49A40;
      result = sub_22EDE950C(v92, v93, v94);
      if (!v95)
      {
        goto LABEL_69;
      }

      v96 = result;
      v59 = v95;
      sub_22EDEC734(v92, v93, v94);
      v97 = v96;
LABEL_33:
      MEMORY[0x2318F58F0](v97, v59);

      return v157[0];
  }
}

uint64_t type metadata accessor for KTraceRecordError()
{
  result = qword_27DA9B6C0;
  if (!qword_27DA9B6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22EE1552C()
{
  result = qword_27DA95518;
  if (!qword_27DA95518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95510, &qword_22EE41F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95518);
  }

  return result;
}

uint64_t sub_22EE15590(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22EE155A8()
{
  v0 = sub_22EE3C884();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = sub_22EE3BB94();

  v3 = sub_22EE3C5B4();
  if (!v3)
  {
    goto LABEL_8;
  }

  if (([v3 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v11 = 0uLL;
    *&v12 = 0;
    *(&v12 + 1) = 1;
    goto LABEL_9;
  }

  *&v9 = 0xD000000000000012;
  *(&v9 + 1) = 0x800000022EE49AA0;
  v4 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_14;
  }

  sub_22EE3C794();
  swift_unknownObjectRelease();
  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1) == 1)
  {
LABEL_9:
    v5 = &unk_27DA95810;
    v6 = &unk_22EE43B48;
    v7 = &v11;
LABEL_10:
    sub_22EDDBA48(v7, v5, v6);
    return sub_22EE3C894();
  }

LABEL_14:
  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    v5 = &qword_27DA95160;
    v6 = &unk_22EE43B50;
    v7 = v13;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return 0xD000000000000012;
  }

  return sub_22EE3C894();
}

void sub_22EE15754()
{
  sub_22EE15950(319, &qword_27DA957E8);
  if (v0 <= 0x3F)
  {
    sub_22EE15950(319, &qword_27DA957F0);
    if (v1 <= 0x3F)
    {
      sub_22EE158E8();
      if (v2 <= 0x3F)
      {
        sub_22EE15950(319, &qword_27DA95800);
        if (v3 <= 0x3F)
        {
          sub_22EE159A8();
          if (v4 <= 0x3F)
          {
            sub_22EE3BCB4();
            if (v5 <= 0x3F)
            {
              sub_22EE15A00();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22EE158E8()
{
  if (!qword_27DA957F8)
  {
    sub_22EE3C8B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA957F8);
    }
  }
}

void sub_22EE15950(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22EE159A8()
{
  if (!qword_27DA94C00)
  {
    v0 = sub_22EE3C454();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA94C00);
    }
  }
}

void sub_22EE15A00()
{
  if (!qword_27DA95808)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DA95808);
    }
  }
}

uint64_t sub_22EE15A60(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v46 = MEMORY[0x277D84F90];
    sub_22EE1B404(0, v3, 0);
    v5 = v46;
    v6 = (a1 + 40);
    while (1)
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      v45[0] = 58;
      v45[1] = 0xE100000000000000;
      v43 = v45;

      v10 = sub_22EDD1FA0(1, 1, sub_22EE1DF80, v42, v8, v7, v9);
      v11 = v10[2];
      if (!v11)
      {
        break;
      }

      v37 = v3;
      v40 = v2;
      v41 = v5;
      v12 = v10[4];
      v13 = v10[5];
      v14 = v10[6];
      v15 = v10[7];
      if (v11 == 1)
      {
        v16 = v10[7];

        v17 = sub_22EE3C644();
        v38 = v18;
        v39 = v17;
        v20 = v19;
        v22 = v21;
      }

      else
      {
        v38 = v10[9];
        v39 = v10[8];
        v20 = v10[10];
        v22 = v10[11];
      }

      v23 = MEMORY[0x2318F5880](v12, v13, v14, v15);
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EE3F500;
      v27 = MEMORY[0x2318F5880](v39, v38, v20, v22);
      v29 = v28;

      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = sub_22EE0B1C8(inited);
      swift_setDeallocating();
      sub_22EDE37CC(inited + 32);
      v2 = v40;
      v5 = v41;
      if (v40)
      {
        goto LABEL_15;
      }

      v46 = v41;
      v32 = *(v41 + 16);
      v31 = *(v41 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22EE1B404((v31 > 1), v32 + 1, 1);
        v5 = v46;
      }

      *(v5 + 16) = v32 + 1;
      v33 = (v5 + 24 * v32);
      v33[4] = v23;
      v33[5] = v25;
      v33[6] = v30;
      v6 += 2;
      v3 = v37 - 1;
      if (v37 == 1)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for KTraceRecordError();
    sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    *v35 = v8;
    *(v35 + 8) = v7;
    *(v35 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_15:
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95650, &unk_22EE43B80);
      v34 = sub_22EE3C9D4();
    }

    else
    {
      v34 = MEMORY[0x277D84F98];
    }

    v44[0] = v34;
    sub_22EE1AFE4(v5, 1, v44);
    result = v44[0];
    if (v2)
    {
    }
  }

  return result;
}

uint64_t sub_22EE15DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_22EE3CC74();

      sub_22EE3C1C4();
      v20 = sub_22EE3CCC4();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_22EE3CBA4() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE15FA0(const void *a1)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_plan;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x141uLL);
  memcpy((v1 + v3), a1, 0x141uLL);
  return sub_22ED80F70(__dst);
}

uint64_t sub_22EE16074@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_inProcessFile;
  swift_beginAccess();
  return sub_22EE1B424(v1 + v3, a1);
}

uint64_t sub_22EE160CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_inProcessFile;
  swift_beginAccess();
  sub_22EE1B494(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_22EE161C0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22EE16284(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_22EE16314(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = nullsub_1(a1);
  *(v4 + 24) = nullsub_1(a2);
  return v4;
}

uint64_t sub_22EE16380()
{
  v1 = OBJC_IVAR____TtC6ktrace9Recording_endReason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22EE163C4(int a1)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_endReason;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22EE16474()
{
  v1 = v0 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason;
  swift_beginAccess();
  v2 = *v1;
  sub_22EE1B504(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_22EE16544(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_endWaitGroup;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

__n128 sub_22EE165FC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing);
  swift_beginAccess();
  v4 = v3[7];
  v19 = v3[6];
  v20[0] = v4;
  *(v20 + 9) = *(v3 + 121);
  v5 = v3[3];
  v15 = v3[2];
  v16 = v5;
  v6 = v3[5];
  v17 = v3[4];
  v18 = v6;
  v7 = *(v3 + 1);
  v13 = *v3;
  v14 = v7;
  sub_22EE1B518(&v13, v12);
  v8 = v20[0];
  *(a1 + 96) = v19;
  *(a1 + 112) = v8;
  *(a1 + 121) = *(v20 + 9);
  v9 = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = v9;
  v10 = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v10;
  result = v14;
  *a1 = v13;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22EE166AC(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing);
  swift_beginAccess();
  v4 = v3[6];
  v14[0] = v3[7];
  *(v14 + 9) = *(v3 + 121);
  v5 = v3[3];
  v13[2] = v3[2];
  v13[3] = v5;
  v6 = v3[4];
  v13[5] = v3[5];
  v13[6] = v4;
  v13[4] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[3];
  v3[2] = a1[2];
  v3[3] = v9;
  v10 = a1[1];
  *v3 = *a1;
  v3[1] = v10;
  *(v3 + 121) = *(a1 + 121);
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  return sub_22EDF4ECC(v13);
}

uint64_t sub_22EE167BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_22EE16824(a1, a2, a3);
  return v9;
}

uint64_t sub_22EE16824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v335 = a2;
  v373 = *MEMORY[0x277D85DE8];
  v310 = sub_22EE3C8B4();
  v306 = *(v310 - 8);
  v6 = *(v306 + 64);
  v7 = MEMORY[0x28223BE20](v310);
  v308 = &v292[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v309 = &v292[-v9];
  v326 = type metadata accessor for RecordingOptions.Options(0);
  v10 = *(*(v326 - 1) + 64);
  MEMORY[0x28223BE20](v326);
  v12 = &v292[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22EE3C504();
  v322 = *(v13 - 8);
  v323 = v13;
  v14 = *(v322 + 8);
  MEMORY[0x28223BE20](v13);
  v321 = &v292[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v319 = sub_22EE3C4E4();
  v16 = *(*(v319 - 8) + 64);
  MEMORY[0x28223BE20](v319);
  v320 = &v292[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22EE3C014();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v318 = &v292[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22EE3BBC4();
  v315 = *(v21 - 8);
  v316 = v21;
  v22 = *(v315 + 64);
  MEMORY[0x28223BE20](v21);
  v314 = &v292[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  *&v317 = &v292[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v292[-v28];
  v30 = sub_22EE3BCB4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v311 = &v292[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v292[-v36];
  v38 = MEMORY[0x28223BE20](v35);
  v313 = &v292[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v325 = &v292[-v41];
  MEMORY[0x28223BE20](v40);
  v43 = &v292[-v42];
  v327 = v44;
  v328 = v31;
  v45 = *(v31 + 56);
  v333 = OBJC_IVAR____TtC6ktrace9Recording_inProcessFile;
  v312 = v45;
  (v45)(&v3[OBJC_IVAR____TtC6ktrace9Recording_inProcessFile], 1, 1);
  v46 = &v3[OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason];
  *v46 = 0;
  *(v46 + 1) = 0;
  v46[16] = -1;
  v47 = OBJC_IVAR____TtC6ktrace9Recording_endWaitGroup;
  *&v3[OBJC_IVAR____TtC6ktrace9Recording_endWaitGroup] = 0;
  v48 = &v3[OBJC_IVAR____TtC6ktrace9Recording_pendingExtension];
  v48->isa = 0xD000000000000014;
  v48[1].isa = 0x800000022EE49AC0;
  v334 = v48;
  if (!*a1)
  {
    goto LABEL_98;
  }

  v305 = v12;
  v324 = v37;
  v330 = v46;
  v331 = v47;
  v49 = sub_22EE3C214();
  v50 = &v3[OBJC_IVAR____TtC6ktrace9Recording_toolName];
  *v50 = v49;
  v50[1] = v51;
  v329 = v50;
  v336 = v3;
  *&v3[OBJC_IVAR____TtC6ktrace9Recording_recording] = a1;
  v52 = *(a1 + 24);
  if (!v52)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
  }

  v53 = nullsub_1(v52);
  v54 = *(a1 + 32);
  if (!v54)
  {
    goto LABEL_100;
  }

  v55 = v53;
  type metadata accessor for Reporter();
  v56 = nullsub_1(v54);
  v57 = v332;
  v58 = sub_22EDE8AD8(v55, v56, 0x6E6964726F636572, 0xE900000000000067, *(a1 + 48) & 1);
  v59 = v57;
  if (v57)
  {

    sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
    v60 = v336;
    sub_22EDDBA48(&v336[v333], &qword_27DA95150, qword_22EE44A90);
    v61 = v329[1];

    sub_22ED86600(*v330, *(v330 + 1), v330[16]);
    v62 = v331;
    goto LABEL_78;
  }

  v63 = v58;
  v301 = a1;
  v304 = a3;
  v332 = 0;
  v64 = v336;
  v296 = OBJC_IVAR____TtC6ktrace9Recording_reporter;
  *&v336[OBJC_IVAR____TtC6ktrace9Recording_reporter] = v58;
  v65 = type metadata accessor for RecordingOptions(0);
  v66 = &v64[OBJC_IVAR____TtC6ktrace9Recording_options];
  v297 = v335 + *(v65 + 20);
  sub_22EE1D8C0(v297, &v64[OBJC_IVAR____TtC6ktrace9Recording_options], type metadata accessor for RecordingOptions.Options);
  v67 = v326[5];
  v302 = v66;
  sub_22EE1B424(v66 + v67, v29);
  v68 = v327;
  v69 = v328;
  if ((*(v328 + 48))(v29, 1, v327) == 1)
  {
    __break(1u);
    goto LABEL_102;
  }

  v303 = v63;
  sub_22EE3BBB4();
  v70 = (v69 + 8);
  v307 = *(v69 + 8);
  v307(v29, v68);
  v71 = *(v69 + 16);
  v328 = v69 + 16;
  v295 = OBJC_IVAR____TtC6ktrace9Recording_finishedFile;
  v300 = v71;
  v71(&v64[OBJC_IVAR____TtC6ktrace9Recording_finishedFile], v43, v68);
  v72 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v73 = sub_22EE3BC14();
  *v368 = 0;
  v74 = [v72 URLForDirectory:99 inDomain:1 appropriateForURL:v73 create:1 error:v368];

  v75 = *v368;
  if (!v74)
  {
    v96 = *v368;
    v97 = sub_22EE3BBA4();

    swift_willThrow();
    type metadata accessor for KTraceRecordError();
    sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    v300(v98, v43, v68);
    v60 = v336;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v99 = v43;
    v100 = v307;
    v307(v99, v68);
    sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
    v101 = v68;
    v102 = v100;
    goto LABEL_75;
  }

  sub_22EE3BC74();
  v76 = v75;
  v298 = v74;

  v299 = v43;
  *v368 = sub_22EE3BC04();
  *&v368[8] = v77;
  v78 = v314;
  v79 = v315;
  v80 = v316;
  (*(v315 + 104))(v314, *MEMORY[0x277CC91D8], v316);
  v81 = sub_22ED80FA0();
  v82 = v70;
  v83 = v313;
  v294 = v81;
  sub_22EE3BCA4();
  (*(v79 + 8))(v78, v80);

  v84.isa = v334->isa;
  isa = v334[1].isa;

  v86 = v317;
  sub_22EE3BC54();

  v87 = v327;
  v88 = v307;
  v307(v83, v327);
  v89 = v325;
  v325 = v82;
  v88(v89, v87);
  v312(v86, 0, 1, v87);
  v90 = v333;
  v91 = v336;
  swift_beginAccess();
  sub_22EE1B494(v86, &v91[v90]);
  swift_endAccess();
  sub_22EE1DA64(0, &qword_27DA95818, 0x277D85C78);
  sub_22EE3C004();
  *v368 = MEMORY[0x277D84F90];
  sub_22EE1B620(&qword_27DA95820, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95828, &unk_22EE43B90);
  sub_22EE0D944(&qword_27DA95830, &qword_27DA95828, &unk_22EE43B90);
  sub_22EE3C7B4();
  (*(v322 + 13))(v321, *MEMORY[0x277D85260], v323);
  v92 = sub_22EE3C514();
  v316 = OBJC_IVAR____TtC6ktrace9Recording_waitQueue;
  *&v336[OBJC_IVAR____TtC6ktrace9Recording_waitQueue] = v92;
  v93 = v301;
  if (*(v301 + 16))
  {
    v323 = sub_22EE3C214();
    v95 = v94;
  }

  else
  {
    v323 = 0;
    v95 = 0;
  }

  v103 = v332;
  v104 = (*(v93 + 48) >> 1) & 1;
  v105 = (v302 + v326[32]);
  v107 = *v105;
  v106 = v105[1];
  v108 = v326[28];
  v109 = *(v302 + v108);

  v110 = v324;
  v111 = sub_22EE00518(v324, v107, v106, v109, v104, v323, v95);
  v112 = v103;
  if (v103)
  {

    v101 = v327;
    v102 = v307;
    v307(v299, v327);
    sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
    v60 = v336;
    v74 = v298;
    goto LABEL_75;
  }

  v332 = v105;
  v323 = v108;
  v293 = v111;

  v113 = OBJC_IVAR____TtC6ktrace9Recording_planPath;
  v60 = v336;
  v114 = v327;
  v115 = v300;
  v300(&v336[OBJC_IVAR____TtC6ktrace9Recording_planPath], v110, v327);
  v116 = v311;
  v115(v311, &v60[v113], v114);
  sub_22EDFC60C(v368);
  v102 = v307;
  v313 = v113;
  v117 = v114;
  v307(v116, v114);
  v118 = *&v368[264];
  v119 = &v60[OBJC_IVAR____TtC6ktrace9Recording_plan];
  memcpy(&v60[OBJC_IVAR____TtC6ktrace9Recording_plan], v368, 0x108uLL);
  *(v119 + 33) = v118;
  v120 = *&v368[288];
  *(v119 + 17) = *&v368[272];
  *(v119 + 18) = v120;
  *(v119 + 19) = *&v368[304];
  v119[320] = v368[320];
  v332 = 0;
  v314 = v119;
  if (v118)
  {
    v121 = *(v118 + 16);
    if (v121)
    {
      *&v339[0] = MEMORY[0x277D84F90];

      sub_22EDD2DD4(0, v121, 0);
      v122 = *&v339[0];
      v123 = (v118 + 40);
      do
      {
        v125 = *(v123 - 1);
        v124 = *v123;
        *&v339[0] = v122;
        v127 = *(v122 + 16);
        v126 = *(v122 + 24);

        if (v127 >= v126 >> 1)
        {
          sub_22EDD2DD4((v126 > 1), v127 + 1, 1);
          v122 = *&v339[0];
        }

        *(v122 + 16) = v127 + 1;
        v128 = v122 + 16 * v127;
        *(v128 + 32) = v125;
        *(v128 + 40) = v124;
        v123 += 4;
        --v121;
      }

      while (v121);
      v312 = v122;

      v60 = v336;
      v117 = v327;
      v112 = v332;
      v102 = v307;
      v119 = v314;
    }

    else
    {
      v312 = MEMORY[0x277D84F90];
      v60 = v336;
    }
  }

  else
  {
    v312 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v129 = *(v119 + 36);

  v131 = sub_22EE0B1C8(v130);

  v132 = *(v297 + v326[25]);
  v133 = *(v132 + 16);
  v134 = *(v131 + 16);
  v135 = v323;
  v310 = v132;
  if (v133 <= v134 >> 3)
  {
    *&v339[0] = v131;
    sub_22EE070F0(v132);
    v136 = *&v339[0];
  }

  else
  {
    v136 = sub_22EE0721C(v132, v131);
  }

  v137 = *(v312 + 2);
  v138 = *(v136 + 16);
  v139 = __OFADD__(v137, v138);
  v140 = v137 + v138;
  if (v139)
  {
    goto LABEL_97;
  }

  *&v339[0] = sub_22EDDA224(0, v140 & ~(v140 >> 63), 0, MEMORY[0x277D84F90]);

  sub_22EE1C464(v311);

  sub_22EDEA2C0(v141);
  v142 = *(v297 + v326[24]);

  sub_22EE1C464(v143);
  v144 = sub_22EE0B1C8(*&v339[0]);

  v338 = v144;
  v145 = (v144 + 56);
  v146 = 1 << *(v144 + 32);
  v147 = -1;
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  v148 = v147 & *(v144 + 56);
  v149 = (v146 + 63) >> 6;
  v322 = v144;

  v151 = v149;
  v152 = v148;
  v153 = 0;
  v101 = v117;
  v320 = v151;
  v321 = v145;
LABEL_30:
  if (v152)
  {
    v154 = v101;
    goto LABEL_36;
  }

  while (1)
  {
    v155 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      __break(1u);
LABEL_86:
      sub_22EDD1254(v150, 0);

LABEL_87:
      v246 = v302 + v326[15];
      if ((*(v246 + 8) & 1) == 0)
      {
        v247 = v101;
        v248 = *v246;
        if ((*v246 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_104;
        }

        swift_beginAccess();
        sub_22EDFB208(v248);
        if (v112)
        {
          swift_endAccess();

          sub_22EDD4074(v354, *(&v354 + 1));
          v101 = v247;
          v249 = v247;
          v102 = v307;
          v307(v324, v249);
          v102(v299, v101);
          sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
          v60 = v336;
          v74 = v298;
          goto LABEL_74;
        }

        swift_endAccess();
      }

      v250 = v305;
      sub_22EE1D8C0(v297, v305, type metadata accessor for RecordingOptions.Options);

      sub_22EDEED9C(v250, v60, v148, v293 & 1, &v340);
      nullsub_1(&v340);
      v371[10] = v350;
      v371[11] = v351;
      v371[12] = v352;
      v372 = v353;
      v371[6] = v346;
      v371[7] = v347;
      v371[8] = v348;
      v371[9] = v349;
      v371[2] = v342;
      v371[3] = v343;
      v371[4] = v344;
      v371[5] = v345;
      v371[0] = v340;
      v371[1] = v341;
      (*(*v304 + 192))(v371);
      v251 = ktrace_session_create();
      if (v251)
      {
        v252 = v251;

        sub_22EE1BF48(&v354, v252);
        v332 = v112;
        if (!v112)
        {
          v253 = v354;
          v254 = v336;
          *&v336[OBJC_IVAR____TtC6ktrace9Recording_subclassBitmap] = v354;
          *&v254[OBJC_IVAR____TtC6ktrace9Recording_session] = v252;
          sub_22EDD4020(v253, *(&v253 + 1));
          v255 = dispatch_semaphore_create(0);
          type metadata accessor for KernelDisableWaiter();
          v256 = v252;
          v326 = v252;
          *&v254[OBJC_IVAR____TtC6ktrace9Recording_kernelDisableWaiter] = sub_22EDEE67C();
          *&v254[OBJC_IVAR____TtC6ktrace9Recording_waitComplete] = v255;
          *&v254[OBJC_IVAR____TtC6ktrace9Recording_endReason] = 0;
          v257 = v255;
          sub_22EE20AE8(v369);
          v258 = &v254[OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing];
          v259 = v369[3];
          *(v258 + 2) = v369[2];
          *(v258 + 3) = v259;
          *(v258 + 121) = *(v370 + 9);
          v260 = v370[0];
          *(v258 + 6) = v369[6];
          *(v258 + 7) = v260;
          v261 = v369[5];
          *(v258 + 4) = v369[4];
          *(v258 + 5) = v261;
          v262 = v369[1];
          *v258 = v369[0];
          *(v258 + 1) = v262;
          v263 = OBJC_IVAR____TtC6ktrace9Recording_session;
          v264 = *&v254[OBJC_IVAR____TtC6ktrace9Recording_session];
          v265 = swift_allocObject();
          v265[2] = v256;
          v265[3] = v254;
          v266 = v304;
          v265[4] = v304;
          v265[5] = v257;
          *&v339[2] = sub_22EE1C998;
          *(&v339[2] + 1) = v265;
          *&v339[0] = MEMORY[0x277D85DD0];
          *(&v339[0] + 1) = 1107296256;
          *&v339[1] = sub_22ED842DC;
          *(&v339[1] + 1) = &block_descriptor_1;
          v267 = _Block_copy(v339);
          v334 = v257;

          ktrace_set_completion_handler(v264, v267);
          v268 = v267;
          v59 = v263;
          _Block_release(v268);
          v269 = *&v254[v263];
          v270 = swift_allocObject();
          v270[2] = v326;
          v270[3] = v266;
          v271 = v323;
          v270[4] = v254;
          v270[5] = v271;
          v272 = v301;
          v270[6] = v303;
          v270[7] = v272;
          *&v339[2] = sub_22EE1CCA0;
          *(&v339[2] + 1) = v270;
          *&v339[0] = MEMORY[0x277D85DD0];
          *(&v339[0] + 1) = 1107296256;
          *&v339[1] = sub_22EE18EE4;
          *(&v339[1] + 1) = &block_descriptor_7;
          v273 = _Block_copy(v339);

          ktrace_set_post_processing_handler(v269, v273);
          _Block_release(v273);
          type metadata accessor for CStringArray();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
          v274 = swift_allocObject();
          *(v274 + 16) = xmmword_22EE3F500;
          v275 = *&v254[OBJC_IVAR____TtC6ktrace9Recording_toolName + 8];
          *(v274 + 32) = *&v254[OBJC_IVAR____TtC6ktrace9Recording_toolName];
          *(v274 + 40) = v275;
          v276 = *v335;
          *&v339[0] = v274;

          sub_22EDEA2C0(v277);
          v278 = sub_22EE0D944(&qword_27DA95838, &qword_27DA94D48, &qword_22EE41F60);
          v63 = sub_22EE10374(v339, v322, v278, v294);
          swift_beginAccess();
          v64 = v63[2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63[2] = v64;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_95:
            v280 = v327;
            v281 = v336;
            ktrace_set_command_argv(*&v59[v336], v64 + 4);
            v63[2] = v64;
            v60 = v281;
            swift_endAccess();

            sub_22EDD4074(v354, *(&v354 + 1));

            v282 = v307;
            v307(v324, v280);
            v282(v299, v280);
            sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
            goto LABEL_79;
          }

LABEL_102:
          v64 = sub_22EE1C828(v64);
          v63[2] = v64;
          goto LABEL_95;
        }

LABEL_105:

        v283 = v336;
        v284 = v327;
        v285 = v307;
        v307(&v313[v336], v327);
        memcpy(v339, v314, 0x141uLL);
        sub_22ED80F70(v339);
        sub_22EDDBA48(&v283[v333], &qword_27DA95150, qword_22EE44A90);
        v285(&v283[v295], v284);
        v286 = v329[1];

        sub_22EE1B5C0(v302, type metadata accessor for RecordingOptions.Options);
        sub_22ED86600(*v330, *(v330 + 1), v330[16]);
        v287 = *&v283[v331];

        v288 = *&v283[v296];

        v289 = v334[1].isa;

        type metadata accessor for Recording();
        v290 = *(*v283 + 48);
        v291 = *(*v283 + 52);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v155 >= v151)
    {
      break;
    }

    v152 = *&v145[8 * v155];
    ++v153;
    if (v152)
    {
      v154 = v101;
      v153 = v155;
LABEL_36:
      v148 = v152;
      v156 = *(v322 + 6);
      v328 = v153;
      v157 = (v156 + ((v153 << 10) | (16 * __clz(__rbit64(v152)))));
      v158 = *v157;
      v159 = v157[1];
      v160 = v314;
      swift_beginAccess();
      v161 = *(v160 + 37);
      if (*(v161 + 16))
      {

        v162 = sub_22EDE1B04(v158, v159);
        if (v163)
        {
          v164 = (*(v161 + 56) + 200 * v162);
          v340 = *v164;
          v165 = v164[3];
          v166 = v164[4];
          v167 = v164[2];
          v341 = v164[1];
          v342 = v167;
          v343 = v165;
          v344 = v166;
          v168 = v164[5];
          v169 = v164[6];
          v170 = v164[8];
          v347 = v164[7];
          v348 = v170;
          v345 = v168;
          v346 = v169;
          v171 = v164[9];
          v172 = v164[10];
          v173 = v164[11];
          *&v352 = *(v164 + 24);
          v350 = v172;
          v351 = v173;
          v349 = v171;
          memmove(v339, v164, 0xC8uLL);
          nullsub_1(v339);
          sub_22EE0C808(&v340, &v354);
        }

        else
        {
          sub_22EE0F5D8(&v340);
          v339[10] = v350;
          v339[11] = v351;
          *&v339[12] = v352;
          v339[6] = v346;
          v339[7] = v347;
          v339[8] = v348;
          v339[9] = v349;
          v339[2] = v342;
          v339[3] = v343;
          v339[4] = v344;
          v339[5] = v345;
          v339[0] = v340;
          v339[1] = v341;
        }
      }

      else
      {
        sub_22EE0F5D8(&v340);
        v339[10] = v350;
        v339[11] = v351;
        *&v339[12] = v352;
        v339[6] = v346;
        v339[7] = v347;
        v339[8] = v348;
        v339[9] = v349;
        v339[2] = v342;
        v339[3] = v343;
        v339[4] = v344;
        v339[5] = v345;
        v339[0] = v340;
        v339[1] = v341;
      }

      v101 = v154;
      v152 = (v148 - 1) & v148;
      v350 = v339[10];
      v351 = v339[11];
      *&v352 = *&v339[12];
      v346 = v339[6];
      v347 = v339[7];
      v348 = v339[8];
      v349 = v339[9];
      v342 = v339[2];
      v343 = v339[3];
      v344 = v339[4];
      v345 = v339[5];
      v340 = v339[0];
      v341 = v339[1];
      v174 = sub_22EE0C894(&v340);
      v135 = v323;
      if (v174 == 1)
      {
        v364 = v339[10];
        v365 = v339[11];
        v366 = *&v339[12];
        v360 = v339[6];
        v361 = v339[7];
        v363 = v339[9];
        v362 = v339[8];
        v356 = v339[2];
        v357 = v339[3];
        v358 = v339[4];
        v359 = v339[5];
        v354 = v339[0];
        v355 = v339[1];
        sub_22EDDBA48(&v354, &qword_27DA95658, &qword_22EE435A0);
        swift_endAccess();

        goto LABEL_50;
      }

      v148 = *&v339[11];
      v364 = v339[10];
      v365 = v339[11];
      v366 = *&v339[12];
      v360 = v339[6];
      v361 = v339[7];
      v363 = v339[9];
      v362 = v339[8];
      v356 = v339[2];
      v357 = v339[3];
      v358 = v339[4];
      v359 = v339[5];
      v354 = v339[0];
      v355 = v339[1];

      swift_endAccess();
      sub_22EDDBA48(&v354, &qword_27DA95658, &qword_22EE435A0);

      if (v148)
      {
        v319 = v152;
        v175 = *(v148 + 16);
        if (v175)
        {
          v367[0] = MEMORY[0x277D84F90];
          sub_22EDD2DD4(0, v175, 0);
          v176 = v367[0];
          v318 = v148;
          v177 = (v148 + 40);
          do
          {
            v178 = *(v177 - 1);
            v148 = *v177;
            v367[0] = v176;
            v180 = *(v176 + 16);
            v179 = *(v176 + 24);

            if (v180 >= v179 >> 1)
            {
              sub_22EDD2DD4((v179 > 1), v180 + 1, 1);
              v176 = v367[0];
            }

            *(v176 + 16) = v180 + 1;
            v181 = v176 + 16 * v180;
            *(v181 + 32) = v178;
            *(v181 + 40) = v148;
            v177 += 4;
            --v175;
          }

          while (v175);

          v60 = v336;
          v101 = v327;
          v102 = v307;
          v135 = v323;
        }

        else
        {

          v176 = MEMORY[0x277D84F90];
        }

        sub_22EE1C928(v176);

        v112 = v332;
        v151 = v320;
        v145 = v321;
        v153 = v328;
        v152 = v319;
      }

      else
      {
LABEL_50:
        v151 = v320;
        v145 = v321;
        v153 = v328;
      }

      goto LABEL_30;
    }
  }

  v182 = *(v302 + v326[26]);
  v183 = *(v182 + 2);
  v184 = MEMORY[0x277D84F90];
  if (!v183)
  {
    goto LABEL_67;
  }

  v337 = MEMORY[0x277D84F90];

  v315 = v183;
  sub_22EE1B404(0, v183, 0);
  v185 = 0;
  v184 = v337;
  v186 = (v182 + 40);
  v317 = xmmword_22EE3F500;
  v318 = v182;
  while (1)
  {
    v187 = *(v182 + 2);
    v328 = v185;
    if (v185 >= v187)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v189 = *(v186 - 1);
    v188 = *v186;

    *&v354 = 58;
    *(&v354 + 1) = 0xE100000000000000;
    *&v341 = &v354;

    v191 = sub_22EDD1FA0(1, 1, sub_22EE1DD00, &v340, v189, v188, v190);
    v332 = v112;
    v192 = v191[2];
    if (!v192)
    {
      break;
    }

    v319 = v186;
    v322 = v184;
    v193 = v191[4];
    v194 = v191[5];
    v195 = v191[6];
    v196 = v191[7];
    if (v192 == 1)
    {
      v197 = v191[7];

      v198 = sub_22EE3C644();
      v320 = v199;
      v321 = v198;
      v201 = v200;
      v203 = v202;
    }

    else
    {
      v204 = v191[8];
      v320 = v191[9];
      v321 = v204;
      v201 = v191[10];
      v203 = v191[11];
    }

    v205 = MEMORY[0x2318F5880](v193, v194, v195, v196);
    v207 = v206;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
    inited = swift_initStackObject();
    *(inited + 16) = v317;
    v209 = MEMORY[0x2318F5880](v321, v320, v201, v203);
    v211 = v210;

    *(inited + 32) = v209;
    *(inited + 40) = v211;
    v212 = sub_22EE0B1C8(inited);
    swift_setDeallocating();
    sub_22EDE37CC(inited + 32);
    v112 = v332;
    v184 = v322;
    if (v332)
    {
      goto LABEL_66;
    }

    v337 = v184;
    v214 = *(v184 + 2);
    v213 = *(v184 + 3);
    if (v214 >= v213 >> 1)
    {
      sub_22EE1B404((v213 > 1), v214 + 1, 1);
      v184 = v337;
    }

    v185 = v328 + 1;
    *(v184 + 2) = v214 + 1;
    v215 = (v184 + 24 * v214);
    v215[4] = v205;
    v215[5] = v207;
    v215[6] = v212;
    v182 = v318;
    v186 = (v319 + 16);
    v60 = v336;
    v135 = v323;
    if (v315 == v185)
    {

      v101 = v327;
      v102 = v307;
LABEL_67:
      if (*(v184 + 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95650, &unk_22EE43B80);
        v217 = sub_22EE3C9D4();
      }

      else
      {
        v217 = MEMORY[0x277D84F98];
      }

      *&v339[0] = v217;
      sub_22EE1AFE4(v184, 1, v339);
      if (v112)
      {

        v102(v324, v101);
        v102(v299, v101);
        goto LABEL_72;
      }

      v367[0] = *&v339[0];
      v218 = v302;
      v219 = *(v302 + v135);
      v220 = v338;
      v221 = v314;
      swift_beginAccess();

      v231 = sub_22EDFCC60(v222, v310, v219, v367);
      v148 = v232;
      swift_endAccess();
      v328 = v220;

      v233 = *&v336[v296];
      *&v339[0] = 0;
      *(&v339[0] + 1) = 0xE000000000000000;

      sub_22EE3C864();

      *&v339[0] = 0xD00000000000001ALL;
      *(&v339[0] + 1) = 0x800000022EE49B10;
      v323 = v231;
      *&v340 = v231;
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
      v322 = v234;
      v235 = sub_22EE3C0B4();
      MEMORY[0x2318F58F0](v235);

      (*(*v233 + 224))(*&v339[0], *(&v339[0] + 1));

      v236 = *(v221 + 34);
      v237 = *(v221 + 35);
      *&v354 = v236;
      *(&v354 + 1) = v237;
      v238 = (v218 + v326[19]);
      v239 = v238[1];
      if (v239)
      {
        v240 = *v238;
        sub_22EDD4020(v236, v237);

        v241 = sub_22EDD1088(v240, v239);
        sub_22EDD1254(v241, 1);
      }

      else
      {
        sub_22EDD4020(v236, v237);
      }

      v101 = v327;
      v60 = v323;
      v242 = (v302 + v326[20]);
      v243 = v242[1];
      if (v243)
      {
        v244 = *v242;
        v245 = v242[1];

        v150 = sub_22EDD1088(v244, v243);
        goto LABEL_86;
      }

      goto LABEL_87;
    }
  }

  type metadata accessor for KTraceRecordError();
  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
  swift_allocError();
  *v216 = v189;
  *(v216 + 8) = v188;
  *(v216 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_66:

  v101 = v327;
  v102 = v307;
  v307(v324, v327);
  v102(v299, v101);

  v60 = v336;
LABEL_72:
  v74 = v298;
  sub_22EE1B5C0(v335, type metadata accessor for RecordingOptions);
LABEL_74:
  v102(&v313[v60], v101);
  memcpy(v368, &v60[OBJC_IVAR____TtC6ktrace9Recording_plan], sizeof(v368));
  sub_22ED80F70(v368);
LABEL_75:
  sub_22EDDBA48(&v60[v333], &qword_27DA95150, qword_22EE44A90);
  v102(&v60[OBJC_IVAR____TtC6ktrace9Recording_finishedFile], v101);
  v223 = v329[1];

  if (v74)
  {
  }

  sub_22EE1B5C0(&v60[OBJC_IVAR____TtC6ktrace9Recording_options], type metadata accessor for RecordingOptions.Options);
  sub_22ED86600(*v330, *(v330 + 1), v330[16]);
  v224 = *&v60[v331];

  v62 = OBJC_IVAR____TtC6ktrace9Recording_reporter;
LABEL_78:
  v225 = *&v60[v62];

  v226 = v334[1].isa;

  type metadata accessor for Recording();
  v227 = *(*v60 + 48);
  v228 = *(*v60 + 52);
  swift_deallocPartialClassInstance();
LABEL_79:
  v229 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t sub_22EE18D60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t sub_22EE18DB0()
{
  v7 = *MEMORY[0x277D85DE8];
  result = *(v0 + 40);
  if (result)
  {
    v2 = MEMORY[0x28223BE20](result);
    if ((v4 & 0x1000000000000000) == 0)
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v5 = *(v2 + 16);
        goto LABEL_7;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v5 = *(v2 + 16);
LABEL_7:
        v5();
LABEL_8:
        result = sub_22EE1B5C0(v0, type metadata accessor for ktrace_recording);
        goto LABEL_9;
      }
    }

    sub_22EE3C854();
    goto LABEL_8;
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE18EEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22EE18F44()
{
  v2 = v1;
  v45[41] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95840, &qword_22EE43BA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v7 = type metadata accessor for KTraceRecordError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE19554(v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22EDDBA48(v6, &qword_27DA95840, &qword_22EE43BA0);
    v13 = *(*(v0 + OBJC_IVAR____TtC6ktrace9Recording_recording) + 40);
    v14 = v0 + OBJC_IVAR____TtC6ktrace9Recording_options;
    v15 = type metadata accessor for RecordingOptions.Options(0);
    if (!v13)
    {
      _Block_release(0);
      goto LABEL_11;
    }

    v37 = v1;
    v16 = (v14 + v15[32]);
    v18 = *v16;
    v17 = v16[1];
    v19 = MEMORY[0x28223BE20](&v36);
    *(&v36 - 4) = 0;
    *(&v36 - 1) = v13;
    if ((v17 & 0x1000000000000000) == 0)
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        v45[0] = v18;
        v45[1] = v17 & 0xFFFFFFFFFFFFFFLL;
        LODWORD(v44[0]) = 0;
        v44[1] = v45;
        _Block_copy(v13);
        (v13)[2](v13, v44);
        goto LABEL_10;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {
        LODWORD(v45[0]) = 0;
        v45[1] = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
        _Block_copy(v13);
        (v13)[2](v13, v45);
LABEL_10:
        _Block_release(v13);
        v2 = v37;
        goto LABEL_11;
      }
    }

    v36 = v19;
    _Block_copy(v13);
    v35 = v37;
    sub_22EE3C854();
    v2 = v35;
    _Block_release(v13);
LABEL_11:
    if (*(v14 + v15[18]) != 1)
    {
      v21 = (*(*v0 + 240))(v45);
      *(v22 + 168) = 0;
      v20 = v21(v45, 0);
    }

    (*(*v0 + 224))(v45, v20);
    v23 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_session);
    v24 = *(v14 + v15[28]);
    sub_22EDFE088(v23, *(v0 + OBJC_IVAR____TtC6ktrace9Recording_reporter), v24);
    if (v2)
    {
      memcpy(v44, v45, 0x141uLL);
      result = sub_22ED80F70(v44);
      goto LABEL_15;
    }

    memcpy(v44, v45, 0x141uLL);
    result = sub_22ED80F70(v44);
    v26 = v14 + v15[21];
    if ((*(v26 + 8) & 1) == 0)
    {
      result = ktrace_set_buffer_size(v23, *v26);
    }

    v27 = (v14 + v15[30]);
    if ((v27[1] & 1) == 0)
    {
      v28 = *v27;
      ktrace_set_trailing_duration(v23);
    }

    if (*(v14 + v15[22]) == 1)
    {
      result = ktrace_set_collection_priority(v23, 63);
    }

    v29 = v14 + v15[23];
    if ((*(v29 + 4) & 1) == 0)
    {
      result = ktrace_set_collection_priority(v23, *v29);
    }

    v30 = (v14 + v15[10]);
    if (v30[1])
    {
      v31 = v14 + v15[11];
      if (*(v31 + 8))
      {
        goto LABEL_15;
      }

      if ((v24 & 1) == 0)
      {
        sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        v33 = 0x800000022EE49B30;
        v34 = 0xD00000000000001CLL;
LABEL_32:
        *v32 = v34;
        v32[1] = v33;
        swift_storeEnumTagMultiPayload();
        result = swift_willThrow();
        goto LABEL_15;
      }
    }

    else
    {
      if ((v24 & 1) == 0)
      {
        sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        v33 = 0x800000022EE49B50;
        v34 = 0xD000000000000013;
        goto LABEL_32;
      }

      v41 = *v30;
      v42 = 0u;
      v43 = 0u;
      v38 = -1;
      v39 = 0u;
      v40 = 0u;
      result = ktrace_end_on_event_match(v23, &v41, &v38);
      v31 = v14 + v15[11];
      if (*(v31 + 8))
      {
        goto LABEL_15;
      }
    }

    result = ktrace_end_on_event_count(v23, *v31);
    goto LABEL_15;
  }

  sub_22EE1D858(v6, v10, type metadata accessor for KTraceRecordError);
  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
  swift_allocError();
  sub_22EE1D8C0(v10, v11, type metadata accessor for KTraceRecordError);
  swift_willThrow();
  result = sub_22EE1B5C0(v10, type metadata accessor for KTraceRecordError);
LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE19554@<X0>(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 4;
  sysctlbyname("ktrace.state", &v14, &v13, 0, 0);
  if ((v14 | 2) == 2)
  {
    goto LABEL_2;
  }

  pid = 0;
  v11 = 4;
  sysctlbyname("ktrace.owning_pid", &pid, &v11, 0, 0);
  v4 = pid;
  if (pid < 1 || v4 == getpid())
  {
    goto LABEL_2;
  }

  v5 = sub_22EE3C404();
  *(v5 + 16) = 64;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  if (proc_name(pid, (v5 + 32), 0x40u) > 0)
  {
LABEL_13:
    v7 = sub_22EE1D27C(v5, v6);
    v9 = v8;

    v10 = pid;
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    type metadata accessor for KTraceRecordError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95840, &qword_22EE43BA0);
    goto LABEL_3;
  }

  if (MEMORY[0x2318F5610]() != 3)
  {
    if (*(sub_22EE3C184() + 16))
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (*(v5 + 16))
        {
LABEL_12:
          *(v5 + 32) = 63;
          goto LABEL_13;
        }

LABEL_16:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    v5 = sub_22EE1C83C(v5);
    if (*(v5 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_2:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95840, &qword_22EE43BA0);
LABEL_3:
  result = swift_storeEnumTagMultiPayload();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE19758()
{
  v2 = v1;
  v3 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v4 = v0 + OBJC_IVAR____TtC6ktrace9Recording_options;
  v5 = *(v4 + *(type metadata accessor for RecordingOptions.Options(0) + 24));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v35[0] = MEMORY[0x277D84F90];
    sub_22EE1B668(0, v6, 0);
    v7 = v35[0];
    v8 = (v5 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      sub_22EDED9A4(v10, v9, v36);

      v35[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22EE1B668((v11 > 1), v12 + 1, 1);
        v7 = v35[0];
      }

      *(v7 + 16) = v12 + 1;
      sub_22EE15590(v36, v7 + 40 * v12 + 32);
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  if (!*(v7 + 16))
  {

    goto LABEL_18;
  }

  v13 = *(v3 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
  v14 = sub_22ED80B20();
  v15 = sub_22ED808E4();
  v16 = *(*v13 + 216);
  v17 = *v13 + 216;
  v16(0xD000000000000018, 0x800000022EE49BA0, v14 & 1, v15 & 1);
  v18 = *(*(v3 + OBJC_IVAR____TtC6ktrace9Recording_recording) + 40);
  if (v18)
  {
    v36[0] = xmmword_22EE43B60;
    LODWORD(v35[0]) = 1;
    v35[1] = v36;
    _Block_copy(v18);
    (v18)[2](v18, v35);
    _Block_release(v18);
  }

  type metadata accessor for WaitGroup();
  v19 = *(v3 + OBJC_IVAR____TtC6ktrace9Recording_waitQueue);

  result = sub_22EDED528(v7, v19, v13);
  if (!v2)
  {
    v21 = sub_22ED8250C();
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 48);
        do
        {
          v24 = v17;
          v25 = v16;
          v26 = *(v23 - 2);
          v27 = *(v23 - 1);
          v28 = *v23;
          v23 += 24;
          sub_22ED82DFC(v26, v27, v28);
          v34 = sub_22ED82744(v26, v27, v28);
          v30 = v29;
          v31 = v27;
          v16 = v25;
          v17 = v24;
          sub_22ED83014(v26, v31, v28);
          LOBYTE(v26) = sub_22ED80B20();
          v32 = sub_22ED808E4();
          v16(v34, v30, v26 & 1, v32 & 1);

          --v22;
        }

        while (v22);

        goto LABEL_18;
      }
    }
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE19A84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    (*(**(a2 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 248))(0xD000000000000018, 0x800000022EE49F20);
    ktrace_abort(*(a2 + OBJC_IVAR____TtC6ktrace9Recording_session));
  }

  else if (v4)
  {
    if (v4 >= 2)
    {
      (*(**(a2 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 248))(0xD000000000000011, 0x800000022EE49F00);
    }
  }

  else
  {
    (*(**(a2 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 248))(0xD00000000000003ELL, 0x800000022EE49F40);
  }

  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_22EE19C00(void *a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_22EE3BB74();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22EE3BB54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22EE3BB84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a1 + 272);
  v51 = a1;
  result = v18(v15);
  if (result > 3)
  {
    if (result <= 5)
    {
      if (result != 4)
      {
        return 0;
      }

      v58 = 0;
      v59 = 0xE000000000000000;
      sub_22EE3C864();

      v24 = 0x800000022EE49FD0;
      v25 = 0xD00000000000001ELL;
      goto LABEL_17;
    }

    if (result == 6)
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_22EE3C864();

      v24 = 0x800000022EE49FA0;
      v25 = 0xD000000000000024;
LABEL_17:
      v58 = v25;
      v59 = v24;
      v26 = sub_22EE3BC94();
      MEMORY[0x2318F58F0](v26);

      return 1;
    }

    if (result == 7)
    {
      return 0;
    }

    return 0;
  }

  v47 = v17;
  v48 = v13;
  v20 = v49;
  if (result)
  {
    if (result == 1)
    {
      return 0;
    }

    if (result != 3)
    {
      return 0;
    }

    v21 = (*(*v50 + 272))(v54);
    if (v55)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    else
    {
      v56[0] = v54[3];
      v27 = v8;
      (*(v8 + 104))(v11, *MEMORY[0x277CC8DD8], v7);
      sub_22EE3BB64();
      v28 = v47;
      sub_22EE3B934();
      (*(v20 + 8))(v6, v3);
      (*(v27 + 8))(v11, v7);
      sub_22EE1DAAC();
      sub_22EE1B620(&qword_27DA95898, MEMORY[0x277CC8DF8]);
      sub_22EE1DB00();
      sub_22EE3C6F4();
      v21 = (*(v48 + 8))(v28, v12);
      v22 = v58;
      v23 = v59;
    }

    v29 = (*v51 + 344);
    v30 = *v29;
    (*v29)(v56, v21);
    v31 = sub_22EDF4ECC(v56);
    if (v57 & 1) != 0 || (v32 = v56[2], v30(&v58, v31), result = sub_22EDF4ECC(&v58), (v61))
    {
      v33 = 0;
      v34 = 0xE000000000000000;
LABEL_30:
      v52 = v22;
      v53 = v23;
      MEMORY[0x2318F58F0](v33, v34);

      MEMORY[0x2318F58F0](0x746120656C696620, 0xE900000000000020);
      v45 = sub_22EE3BC94();
      MEMORY[0x2318F58F0](v45);

      return 1;
    }

    if (v60 < v32)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    v35 = (v60 - v32) / 1000000000.0;
    if (v35 >= 1.0)
    {
      v40 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v40 setUnitsStyle_];
      [v40 setZeroFormattingBehavior_];
      [v40 setAllowedUnits_];
      v52 = 8236;
      v53 = 0xE200000000000000;
      result = [v40 stringFromTimeInterval_];
      if (!result)
      {
        goto LABEL_32;
      }

      v41 = result;
      v42 = sub_22EE3C124();
      v44 = v43;

      MEMORY[0x2318F58F0](v42, v44);
    }

    else
    {
      v52 = 8236;
      v53 = 0xE200000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
      v36 = swift_allocObject();
      v37 = MEMORY[0x277D839F8];
      *(v36 + 16) = xmmword_22EE3F500;
      v38 = MEMORY[0x277D83A80];
      *(v36 + 56) = v37;
      *(v36 + 64) = v38;
      *(v36 + 32) = v35;
      v39 = sub_22EE3C134();
      MEMORY[0x2318F58F0](v39);
    }

    v33 = v52;
    v34 = v53;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_22EE1A344()
{
  v1 = OBJC_IVAR____TtC6ktrace9Recording_planPath;
  v2 = sub_22EE3BCB4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC6ktrace9Recording_plan), 0x141uLL);
  sub_22ED80F70(__dst);
  sub_22EDDBA48(v0 + OBJC_IVAR____TtC6ktrace9Recording_inProcessFile, &qword_27DA95150, qword_22EE44A90);
  v3(v0 + OBJC_IVAR____TtC6ktrace9Recording_finishedFile, v2);
  v4 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_toolName + 8);

  sub_22EE1B5C0(v0 + OBJC_IVAR____TtC6ktrace9Recording_options, type metadata accessor for RecordingOptions.Options);
  sub_22EDD4074(*(v0 + OBJC_IVAR____TtC6ktrace9Recording_subclassBitmap), *(v0 + OBJC_IVAR____TtC6ktrace9Recording_subclassBitmap + 8));
  sub_22ED86600(*(v0 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason), *(v0 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason + 8), *(v0 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason + 16));

  v5 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kernelDisableWaiter);

  v6 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_endWaitGroup);

  v7 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_reporter);

  v8 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 112);
  v15[6] = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 96);
  v16[0] = v8;
  *(v16 + 9) = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 121);
  v9 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 48);
  v15[2] = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 32);
  v15[3] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 80);
  v15[4] = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 64);
  v15[5] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing + 16);
  v15[0] = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_kdebugPostprocessing);
  v15[1] = v11;
  sub_22EDF4ECC(v15);
  v12 = *(v0 + OBJC_IVAR____TtC6ktrace9Recording_pendingExtension + 8);

  return v0;
}

uint64_t sub_22EE1A524()
{
  sub_22EE1A344();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22EE1A57C()
{
  v0 = sub_22EE3BF14();
  __swift_allocate_value_buffer(v0, qword_27DA9C958);
  __swift_project_value_buffer(v0, qword_27DA9C958);
  return sub_22EE3BF04();
}

void sub_22EE1A5F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 40);
  if (v6)
  {
    v7 = MEMORY[0x28223BE20](v6);
    if ((a3 & 0x1000000000000000) == 0)
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v16 = a2;
        v17 = a3 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v7 + 16);
        goto LABEL_7;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        LODWORD(v16) = v8;
        v17 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v9 = *(v7 + 16);
LABEL_7:
        v9();
LABEL_8:
        sub_22EE1B5C0(v3, type metadata accessor for ktrace_recording);
        goto LABEL_9;
      }
    }

    sub_22EE3C854();
    goto LABEL_8;
  }

LABEL_9:
  if (qword_27DA9B6D0 != -1)
  {
    swift_once();
  }

  v10 = sub_22EE3BF14();
  __swift_project_value_buffer(v10, qword_27DA9C958);

  v11 = sub_22EE3BEF4();
  v12 = sub_22EE3C4B4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22ED7DF24(a2, a3, &v16);
    _os_log_impl(&dword_22ED7A000, v11, v12, "recording failed: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2318F8320](v14, -1, -1);
    MEMORY[0x2318F8320](v13, -1, -1);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EE1A850(void *a1, char a2, uint64_t *a3)
{
  result = (*(*a1 + 256))(7, a1[2], a1[3], a1[4], 0);
  if (a2)
  {
    v6 = a3[1];
    if (v6 >> 60 != 15)
    {
      v7 = *a3;
      sub_22EDD4020(v7, v6);
      sub_22EE3C864();

      aBlock = 0xD00000000000001BLL;
      v13 = 0x800000022EE49EC0;
      v18 = *sub_22EDEED90();
      v8 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v8);

      v9 = sub_22EE3C0F4();

      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = v6;
      v16 = sub_22EE1D928;
      v17 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_22EE1AD0C;
      v15 = &block_descriptor_56_0;
      v11 = _Block_copy(&aBlock);
      sub_22EDD4020(v7, v6);

      AnalyticsSendEventLazy();
      _Block_release(v11);

      return sub_22EE1D490(v7, v6);
    }
  }

  return result;
}

uint64_t ktrace_recording_create(const char *a1, int a2)
{
  v4 = swift_slowAlloc();
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  *v4 = strdup(a1);
  *(v4 + 48) = a2;
  return v4;
}

uint64_t ktrace_recording_create(_:_:)(const char *a1, int a2)
{
  v4 = swift_slowAlloc();
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  *v4 = strdup(a1);
  *(v4 + 48) = a2;
  return v4;
}

char *ktrace_recording_override_default_plan(uint64_t a1, const char *a2)
{
  free(*(a1 + 8));
  result = strdup(a2);
  *(a1 + 8) = result;
  return result;
}

char *ktrace_recording_override_default_plan(_:_:)(uint64_t a1, const char *a2)
{
  free(*(a1 + 8));
  result = strdup(a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t ktrace_recording_set_streams(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t ktrace_recording_set_streams(_:_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

char *ktrace_recording_override_plan_path(uint64_t a1, const char *a2)
{
  free(*(a1 + 16));
  result = strdup(a2);
  *(a1 + 16) = result;
  return result;
}

char *ktrace_recording_override_plan_path(_:_:)(uint64_t a1, const char *a2)
{
  free(*(a1 + 16));
  result = strdup(a2);
  *(a1 + 16) = result;
  return result;
}

void ktrace_recording_follow_notifications(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  _Block_release(v4);
  v5 = _Block_copy(v4);
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  _Block_copy(v5);
  _Block_release(v6);

  _Block_release(v3);
}

void ktrace_recording_follow_notifications(_:callback:)(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(v3);
  v4 = _Block_copy(v3);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  _Block_copy(v4);

  _Block_release(v5);
}

void ktrace_recording_destroy(_:)(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  free(*(a1 + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  JUMPOUT(0x2318F8320);
}

id sub_22EE1AD0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_22EE1DA64(0, &qword_27DA95880, 0x277D82BB8);
    v5 = sub_22EE3C054();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_22EE1ADA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958B0, &unk_22EE43D50);
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

void *sub_22EE1AE9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95848, &unk_22EE43BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958A8, &qword_22EE43D48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22EE1AFE4(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
LABEL_16:

    return;
  }

  v5 = 0;
  v6 = (a1 + 48);
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22EE3CBE4();
      __break(1u);
      goto LABEL_24;
    }

    v8 = *(v6 - 2);
    v7 = *(v6 - 1);
    v9 = *v6;
    v10 = *a3;

    v11 = sub_22EDE1B04(v8, v7);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_21;
    }

    v17 = v12;
    if (v10[3] >= v16)
    {
      break;
    }

    sub_22EE052A0(v16, a2 & 1);
    v18 = *a3;
    v11 = sub_22EDE1B04(v8, v7);
    if ((v17 & 1) != (v19 & 1))
    {
      goto LABEL_23;
    }

LABEL_10:
    v20 = *a3;
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v27 = (v20[6] + 16 * v11);
    *v27 = v8;
    v27[1] = v7;
    *(v20[7] + 8 * v11) = v9;
    v28 = v20[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v15)
    {
      goto LABEL_22;
    }

    v20[2] = v29;
LABEL_3:
    ++v5;
    v6 += 3;
    a2 = 1;
    if (v37 == v5)
    {
      goto LABEL_16;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v26 = v11;
  sub_22EE058D0();
  v11 = v26;
  v20 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = v11;
  v22 = *(v20[7] + 8 * v11);

  if (sub_22EE15DB8(v9, v22))
  {
    v23 = sub_22EDFDF84(v9, v22);

    v24 = v20[7];
    v25 = *(v24 + 8 * v21);
    *(v24 + 8 * v21) = v23;

    goto LABEL_3;
  }

  type metadata accessor for KTraceRecordError();
  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
  v30 = swift_allocError();
  v32 = v31;

  sub_22EE1B918(v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95510, &qword_22EE41F68);
  sub_22EE0D944(&qword_27DA95518, &qword_27DA95510, &qword_22EE41F68);
  sub_22ED80FA0();
  v33 = sub_22EE3C364();
  v35 = v34;

  *v32 = v33;
  v32[1] = v35;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  sub_22EE3C864();
  MEMORY[0x2318F58F0](0xD00000000000001BLL, 0x800000022EE4A0E0);
  sub_22EE3C924();
  MEMORY[0x2318F58F0](39, 0xE100000000000000);
  sub_22EE3C994();
  __break(1u);
}

void *sub_22EE1B404(void *a1, int64_t a2, char a3)
{
  result = sub_22EE1B688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22EE1B424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE1B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE1B504(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22ED82DFC(a1, a2, a3);
  }

  return a1;
}

uint64_t type metadata accessor for Recording()
{
  result = qword_27DA95BF8;
  if (!qword_27DA95BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EE1B5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EE1B620(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22EE1B668(void *a1, int64_t a2, char a3)
{
  result = sub_22EE1B7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EE1B688(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958B8, &qword_22EE43D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958C0, &unk_22EE43D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EE1B7D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95848, &unk_22EE43BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958A8, &qword_22EE43D48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EE1B918(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22EE1BB6C(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_22EE1BADC(v12, v6, a2, a1);

    MEMORY[0x2318F8320](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_22EE1BADC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22EE1BB6C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22EE1BB6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_22EE3CC74();

      sub_22EE3C1C4();
      v27 = sub_22EE3CCC4();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_22EE3CBA4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22EE08190(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_22EE3CC74();

      sub_22EE3C1C4();
      v41 = sub_22EE3CCC4();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_22EE3CBA4() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE1BF48(uint64_t *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v38 + 7) = 0;
      *&v38 = 0;
      v36 = nullsub_1;
      v37 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_22EE18D58;
      v35 = &block_descriptor_84;
      v21 = _Block_copy(&aBlock);
      v8 = ktrace_events_filter_bitmap(a2, &v38, v21);
      _Block_release(v21);
      goto LABEL_20;
    }

    v10 = *a1;

    sub_22EDD4074(v5, v4);
    *&v38 = v5;
    *(&v38 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22EE3F920;
    sub_22EDD4074(0, 0xC000000000000000);
    sub_22EE3BCC4();
    v11 = v38;
    v12 = *(v38 + 16);
    result = sub_22EE3BAA4();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v14 = result;
    v15 = sub_22EE3BAD4();
    v16 = v12 - v15;
    if (!__OFSUB__(v12, v15))
    {
      sub_22EE3BAC4();
      v36 = nullsub_1;
      v37 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_22EE18D58;
      v35 = &block_descriptor_75;
      v17 = _Block_copy(&aBlock);
      v8 = ktrace_events_filter_bitmap(a2, (v14 + v16), v17);
      _Block_release(v17);
      v18 = *(&v11 + 1) | 0x8000000000000000;
      *a1 = v11;
LABEL_19:
      a1[1] = v18;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
    sub_22EDD4074(v5, v4);
    *&v38 = v5;
    WORD4(v38) = v4;
    BYTE10(v38) = BYTE2(v4);
    BYTE11(v38) = BYTE3(v4);
    BYTE12(v38) = BYTE4(v4);
    BYTE13(v38) = BYTE5(v4);
    BYTE14(v38) = BYTE6(v4);
    v36 = nullsub_1;
    v37 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_22EE18D58;
    v35 = &block_descriptor_81;
    v7 = _Block_copy(&aBlock);
    v8 = ktrace_events_filter_bitmap(a2, &v38, v7);
    _Block_release(v7);
    v9 = DWORD2(v38) | ((WORD6(v38) | (BYTE14(v38) << 16)) << 32);
    *a1 = v38;
    a1[1] = v9;
LABEL_20:
    v30 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v19 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_22EDD4074(v5, v4);
  *a1 = xmmword_22EE3F920;
  sub_22EDD4074(0, 0xC000000000000000);
  v20 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v20 < v5)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_22EE3BAA4() && __OFSUB__(v5, sub_22EE3BAD4()))
    {
LABEL_25:
      __break(1u);
    }

    v22 = sub_22EE3BAE4();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_22EE3BA94();

    v19 = v25;
  }

  if (v20 < v5)
  {
    goto LABEL_22;
  }

  result = sub_22EE3BAA4();
  if (result)
  {
    v26 = result;
    v27 = sub_22EE3BAD4();
    v28 = v5 - v27;
    if (!__OFSUB__(v5, v27))
    {
      sub_22EE3BAC4();
      v36 = nullsub_1;
      v37 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_22EE18D58;
      v35 = &block_descriptor_78;
      v29 = _Block_copy(&aBlock);
      v8 = ktrace_events_filter_bitmap(a2, (v26 + v28), v29);
      _Block_release(v29);

      v18 = v19 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22EE1C464(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22EDDA224(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_22EDF3E34(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_22EDDA224((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_22ED97F20();
  *v1 = v4;
  return result;
}

void *sub_22EE1C720(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_22EE1AE9C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA958A8, &qword_22EE43D48);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22EE1C850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22EE1C928(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22EE026C4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22EE1C998()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v25 = v0[5];
  end_reason = ktrace_get_end_reason(v1);
  v5 = *(*v2 + 344);
  v6 = (v5)(v27);
  (*(*v2 + 224))(__src, v6);
  v7 = v2 + OBJC_IVAR____TtC6ktrace9Recording_options;
  v8 = sub_22EE207A4(__src, v2 + OBJC_IVAR____TtC6ktrace9Recording_options);
  v10 = v9;
  sub_22EDF4ECC(v27);
  memcpy(__dst, __src, 0x141uLL);
  v11 = sub_22ED80F70(__dst);
  if (v10)
  {
    (*(**(v2 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 232))(v8, v10);
  }

  v5(v28, v11);
  sub_22EDF4ECC(v28);
  ns_from_timestamp = ktrace_get_ns_from_timestamp(v1, v28[4]);
  v13 = (*(*v2 + 360))(__src);
  *(v14 + 40) = ns_from_timestamp;
  *(v14 + 48) = 0;
  v13(__src, 0);
  v15 = (*(*v2 + 280))(end_reason);
  v16 = (*(*v2 + 296))(v15);
  if (v18 != 0xFF)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    (v5)(__src);
    v22 = type metadata accessor for RecordingOptions.Options(0);
    v23 = sub_22EDF18CC(v19, v20, v21, __src, *(v7 + *(v22 + 44)), *(v7 + *(v22 + 44) + 8));
    (*(*v3 + 352))(v23);
  }

  ktrace_session_destroy(v1);
  return sub_22EE3C5A4();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22EE1CCA0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v42 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  kperf_reset();
  end_reason = ktrace_get_end_reason(v3);
  (*(*v4 + 256))(5, 0, 0, 0, 1);
  result = (*(**(v5 + OBJC_IVAR____TtC6ktrace9Recording_kernelDisableWaiter) + 128))(end_reason);
  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v39 = v7;
  v40 = v6;
  v41 = a1;
  ktrace_file = ktrace_get_ktrace_file(a1);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = 0;
  if (!ktrace_file)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v13;
  v48 = sub_22EE1DB54;
  v49 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v46 = sub_22EE18D60;
  v47 = &block_descriptor_65;
  v15 = _Block_copy(&aBlock);

  ktrace_file_iterate(ktrace_file, 0, v15);
  _Block_release(v15);
  swift_beginAccess();
  v16 = *(v11 + 16);
  v17 = *(*v5 + 360);
  v18 = v17(&aBlock);
  *(v19 + 112) = v16;
  *(v19 + 120) = 0;
  v18(&aBlock, 0);
  swift_beginAccess();
  v20 = *(v12 + 16);
  v21 = v17(&aBlock);
  *(v22 + 128) = v20;
  *(v22 + 136) = 0;
  v21(&aBlock, 0);
  swift_beginAccess();
  v23 = *(v13 + 16);
  v24 = v17(&aBlock);
  *(v25 + 96) = v23;
  *(v25 + 104) = 0;
  v24(&aBlock, 0);
  *&aBlock = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
  v26 = sub_22EE3C0B4();
  v28 = v27;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v29 = *(v42 + 16);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = 0x800000022EE4A0A0;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  MEMORY[0x2318F58F0](v30, v31);

  MEMORY[0x2318F58F0](v26, v28);

  v32 = aBlock;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_22EE3C864();

  *&aBlock = 0xD000000000000018;
  *(&aBlock + 1) = 0x800000022EE4A050;
  MEMORY[0x2318F58F0](v32, *(&v32 + 1));

  v33 = aBlock;
  v34 = sub_22ED80B20();
  v35 = sub_22ED808E4();
  (*(*v39 + 216))(v33, *(&v33 + 1), v34 & 1, v35 & 1);

  v36 = *(v40 + 40);
  if (v36)
  {
    aBlock = xmmword_22EE43B60;
    v43 = 5;
    p_aBlock = &aBlock;
    _Block_copy(v36);
    (v36)[2](v36, &v43);
    _Block_release(v36);
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v5;
  *(v37 + 24) = v41;
  v48 = sub_22EE1DC54;
  v49 = v37;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v46 = sub_22EE18D58;
  v47 = &block_descriptor_71;
  v38 = _Block_copy(&aBlock);

  ktrace_events_all(v41, v38);
  _Block_release(v38);
}

uint64_t sub_22EE1D27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_22EE1D2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_22EE1D2E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

void *sub_22EE1D2F8(uint64_t a1)
{
  v2 = v1;
  result = (*(*v1 + 224))(__src);
  if (a1)
  {
    v5 = sub_22EDFEDEC(a1);
    memcpy(__dst, __src, 0x141uLL);
    result = sub_22ED80F70(__dst);
    if ((v5 & 1) == 0)
    {
      return (*(**(v2 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 248))(0xD00000000000001DLL, 0x800000022EE4A030);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE1D3FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
    v9 = ktrace_chunk_size(a1);
    result = swift_beginAccess();
    v10 = *(v3 + 16);
    v7 = __CFADD__(v10, v9);
    v11 = v10 + v9;
    if (!v7)
    {
      *(v3 + 16) = v11;
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE1D490(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22EDD4074(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22EE1D4EC(uint64_t a1)
{
  v5 = a1;
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  return (*(v2 + 16))(v2, &v4);
}

void sub_22EE1D540()
{
  v0 = sub_22EE3BCB4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_22EE1D6CC();
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      v5 = type metadata accessor for RecordingOptions.Options(319);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22EE1D6CC()
{
  if (!qword_27DA94C30)
  {
    sub_22EE3BCB4();
    v0 = sub_22EE3C5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA94C30);
    }
  }
}

uint64_t sub_22EE1D748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_22EE1D7A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_22EE1D804()
{
  result = qword_27DA95878;
  if (!qword_27DA95878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95878);
  }

  return result;
}

uint64_t sub_22EE1D858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22EE1D8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22EE1D928()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = sub_22EE3BD14();
  *&v12 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v12];

  v6 = v12;
  if (v5)
  {
    sub_22EE3C794();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v8 = sub_22EE3BBA4();

    swift_willThrow();
    v12 = 0u;
    v13 = 0u;
  }

  v11[0] = v12;
  v11[1] = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95888, &unk_22EE43D38);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22EDDBA48(v11, &qword_27DA95160, &unk_22EE43B50);
    return 0;
  }
}

uint64_t sub_22EE1DA64(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_22EE1DAAC()
{
  result = qword_27DA95890;
  if (!qword_27DA95890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95890);
  }

  return result;
}

unint64_t sub_22EE1DB00()
{
  result = qword_27DA958A0;
  if (!qword_27DA958A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA958A0);
  }

  return result;
}

uint64_t sub_22EE1DB54(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  result = swift_beginAccess();
  v7 = *(v4 + 16);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v4 + 16) = v9;
  v10 = ktrace_chunk_size(a1);
  result = swift_beginAccess();
  v11 = *(v3 + 16);
  v8 = __CFADD__(v11, v10);
  v12 = v11 + v10;
  if (v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 16) = v12;
  v13 = ktrace_chunk_tag(a1);
  if (v13 != 7680 && v13 != 20982 && v13 != 7936)
  {
    return 1;
  }

  v14 = ktrace_chunk_size(a1);
  result = swift_beginAccess();
  v15 = *(v5 + 16);
  v8 = __CFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v8)
  {
    *(v5 + 16) = v16;
    return 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22EE1DC54(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      v3 = result;
      v4 = (*(**(v1 + 16) + 360))(v5);
      sub_22EE2068C(v3, v2);
      return v4(v5, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE1DD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_22EE1DD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_22EE1DF9C()
{
  v0 = sub_22EE20468(&unk_2843A3BE0);
  result = sub_22EDDBA48(&unk_2843A3C00, &qword_27DA95920, &qword_22EE43FD0);
  qword_27DA9C970 = v0;
  return result;
}

void sub_22EE1DFEC(__int128 *a1)
{
  v1 = a1[9];
  v108 = a1[8];
  v109 = v1;
  v110 = a1[10];
  v2 = *(a1 + 23);
  v111 = *(a1 + 22);
  v3 = a1[5];
  v104 = a1[4];
  v105 = v3;
  v4 = a1[7];
  v106 = a1[6];
  v107 = v4;
  v5 = a1[1];
  v100 = *a1;
  v101 = v5;
  v6 = a1[3];
  v102 = a1[2];
  v103 = v6;
  v7 = a1[19];
  v97 = a1[18];
  v98 = v7;
  v99 = *(a1 + 320);
  v8 = a1[15];
  v93 = a1[14];
  v94 = v8;
  v9 = a1[17];
  v95 = a1[16];
  v96 = v9;
  v10 = a1[13];
  v91 = a1[12];
  v92 = v10;
  v89 = 0;
  v90 = 0xE000000000000000;
  if (v2 && *(v2 + 16))
  {
    v11 = 2 * (*(v2 + 40) / 1000);
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0xD00000000000005ALL, 0x800000022EE4A350);
    *&v58[0] = v11;
    v12 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v12);

    MEMORY[0x2318F58F0](774337389, 0xE400000000000000);
    MEMORY[0x2318F58F0](0, 0xE000000000000000);
  }

  v75 = v108;
  v76 = v109;
  v77 = v110;
  v71 = v104;
  v72 = v105;
  v73 = v106;
  v74 = v107;
  v67 = v100;
  v68 = v101;
  v69 = v102;
  v70 = v103;
  v78 = v111;
  v79 = v2;
  v86 = v97;
  v87 = v98;
  v88 = v99;
  v82 = v93;
  v83 = v94;
  v84 = v95;
  v85 = v96;
  v80 = v91;
  v81 = v92;
  sub_22EDFBEBC();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v13 + 32;
    v48 = MEMORY[0x277D84F90];
    v51 = *(v13 + 16);
    v52 = v13;
    v50 = v13 + 32;
    while (v16 < *(v14 + 16))
    {
      v18 = v17 + 216 * v16;
      v19 = *(v18 + 16);
      v58[0] = *v18;
      v58[1] = v19;
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v22 = *(v18 + 80);
      v58[4] = *(v18 + 64);
      v58[5] = v22;
      v58[2] = v20;
      v58[3] = v21;
      v23 = *(v18 + 96);
      v24 = *(v18 + 112);
      v25 = *(v18 + 144);
      v61 = *(v18 + 128);
      v62 = v25;
      v59 = v23;
      v60 = v24;
      v26 = *(v18 + 160);
      v27 = *(v18 + 176);
      v28 = *(v18 + 192);
      v66 = *(v18 + 208);
      v64 = v27;
      v65 = v28;
      v63 = v26;
      v29 = *(&v59 + 1);
      v30 = *(&v61 + 1);
      ++v16;
      v55 = v58[0];
      sub_22EE20280(v58, &v56);
      if (v29 && v30 && (v31 = *(v30 + 16)) != 0)
      {
        v32 = 0;
        v33 = v30 + 32;
        v34 = v29 + 32;
        v53 = v16;
        v49 = *(v30 + 16);
        while (1)
        {
          v35 = (v33 + 24 * v32);
          v36 = *v35;
          if (*v35 < *(v29 + 16))
          {
            break;
          }

LABEL_14:
          if (++v32 == v31)
          {
            goto LABEL_6;
          }
        }

        if (v36 < 0)
        {
          goto LABEL_40;
        }

        v37 = *(v34 + 8 * v36);
        v38 = *(v37 + 16);
        v54 = v35[2];

        v39 = 0;
        while (1)
        {
          if (v38 == v39)
          {

            v15 = v51;
            v14 = v52;
            v16 = v53;
            v31 = v49;
            v17 = v50;
            v34 = v29 + 32;
            v33 = v30 + 32;
            goto LABEL_14;
          }

          if (v39 >= *(v37 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v41 = *(v37 + v39 + 32);
          v115 = v41;
          v114 = 0;
          sub_22EE0F550();
          sub_22EE3C374();
          sub_22EE3C374();
          if (v56 == v112 && v57 == v113)
          {
            break;
          }

          v42 = sub_22EE3CBA4();

          if (v42)
          {
            goto LABEL_27;
          }

          v115 = v41;
          v114 = 1;
          sub_22EE3C374();
          sub_22EE3C374();
          if (v56 == v112 && v57 == v113)
          {
            break;
          }

          v40 = sub_22EE3CBA4();

          ++v39;
          if (v40)
          {
            goto LABEL_27;
          }
        }

LABEL_27:

        sub_22EDDBA48(v58, &qword_27DA95668, &qword_22EE435B0);
        v15 = v51;
        v14 = v52;
        v16 = v53;
        v17 = v50;
        if (!*(&v55 + 1))
        {
          goto LABEL_7;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_22EDDA224(0, *(v48 + 2) + 1, 1, v48);
        }

        v44 = *(v48 + 2);
        v43 = *(v48 + 3);
        if (v44 >= v43 >> 1)
        {
          v48 = sub_22EDDA224((v43 > 1), v44 + 1, 1, v48);
        }

        *(v48 + 2) = v44 + 1;
        *&v48[16 * v44 + 32] = v55;
        if (v53 == v51)
        {
          goto LABEL_35;
        }
      }

      else
      {
LABEL_6:
        sub_22EDDBA48(v58, &qword_27DA95668, &qword_22EE435B0);
LABEL_7:
        if (v16 == v15)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
LABEL_35:

    if (*(v48 + 2))
    {
      *&v67 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      sub_22EDD3F74();
      v45 = sub_22EE3C0B4();
      v47 = v46;

      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](0xD00000000000003ALL, 0x800000022EE4A2C0);
      MEMORY[0x2318F58F0](v45, v47);

      MEMORY[0x2318F58F0](11815, 0xE200000000000000);
      MEMORY[0x2318F58F0](v67, *(&v67 + 1));
    }

    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0xD000000000000045, 0x800000022EE4A300);
    MEMORY[0x2318F58F0](v89, v90);
  }
}

void sub_22EE1E6D0(__int128 *a1@<X0>, void *a2@<X8>)
{
  sub_22EE1DFEC(a1);
  *a2 = v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for KdebugAdvice()
{
  result = qword_27DA9B9E8;
  if (!qword_27DA9B9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EE1E744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE1E7A8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22EE1F700(v2, 0);
  v4 = sub_22EE2017C(v119, (v3 + 4), v2, v1);

  sub_22ED97F20();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  *v119 = v3;
  v5 = 0;
  sub_22EE1F784(v119);
  if (*(*v119 + 16) < 3uLL)
  {
    goto LABEL_61;
  }

  v108 = *v119 + 32;
  v120 = 0;
  v121 = 0xE000000000000000;
  v105 = *v119;
  swift_retain_n();
  v6 = 0;
  v110 = MEMORY[0x277D84F90];
  v106 = v1;
  do
  {
    v7 = (v108 + 16 * v6);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = sub_22EDCFE4C(*v7);
    if (v10 != 150)
    {
      if (qword_27DA9B9E0 != -1)
      {
        v70 = v8;
        v71 = v10;
        swift_once();
        v10 = v71;
        v8 = v70;
      }

      v11 = qword_27DA9C970;
      if (*(qword_27DA9C970 + 16))
      {
        v12 = v10;
        v13 = sub_22EE1F4C8(v10);
        if (v14)
        {
          v15 = (*(v11 + 56) + 16 * v13);
          v5 = *v15;
          v16 = v15[1];
          v119[0] = v12;

          v17 = sub_22EE3C164();
          v19 = sub_22EDECBCC(v17, v18, v9, v1, *(v113 + 8));
          v21 = v20;

          *v119 = 8237;
          *&v119[8] = 0xE200000000000000;
          MEMORY[0x2318F58F0](v19, v21);

          MEMORY[0x2318F58F0](10, 0xE100000000000000);

          MEMORY[0x2318F58F0](*v119, *&v119[8]);

          memcpy(__dst, (v113 + 16), 0x141uLL);
          v107 = *(&__dst[7] + 1);
          v22 = *&__dst[7];
          v23 = __dst[8];
          memcpy(__src, (v113 + 16), 0x141uLL);
          sub_22ED80E90(__dst, v119);
          (v5)(v116, __src);

          memcpy(v119, __src, sizeof(v119));
          sub_22ED80F70(v119);
          __src[0] = v116[0];
          __src[1] = v116[1];

          MEMORY[0x2318F58F0](10, 0xE100000000000000);

          v24 = __src[0];
          v25 = __src[1];
LABEL_37:
          MEMORY[0x2318F58F0](v24, v25);
          goto LABEL_7;
        }
      }
    }

    v115 = v8;
    v111 = v9;
    v26 = *(v113 + 96);
    *&v119[64] = *(v113 + 80);
    *&v119[80] = v26;
    *&v119[96] = *(v113 + 112);
    v27 = *(v113 + 32);
    *v119 = *(v113 + 16);
    *&v119[16] = v27;
    v28 = *(v113 + 64);
    *&v119[32] = *(v113 + 48);
    *&v119[48] = v28;
    v30 = *(v113 + 128);
    v29 = *(v113 + 136);
    LOBYTE(v116[0]) = *(v113 + 144);
    v31 = *(v113 + 289);
    *&v119[257] = *(v113 + 273);
    *&v119[273] = v31;
    v32 = *(v113 + 321);
    *&v119[289] = *(v113 + 305);
    *&v119[305] = v32;
    v33 = *(v113 + 225);
    *&v119[193] = *(v113 + 209);
    *&v119[209] = v33;
    v34 = *(v113 + 257);
    *&v119[225] = *(v113 + 241);
    *&v119[241] = v34;
    v35 = *(v113 + 161);
    *&v119[129] = *(v113 + 145);
    *&v119[145] = v35;
    v36 = *(v113 + 193);
    *&v119[161] = *(v113 + 177);
    *&v119[177] = v36;
    v112 = v30;
    *&v119[112] = v30;
    v107 = v29;
    *&v119[120] = v29;
    v119[128] = v116[0];
    sub_22EDFBEBC();
    v38 = v37;
    v39 = *(v37 + 16);
    if (v39)
    {
      v40 = 0;
      v41 = v37 + 32;
      v42 = MEMORY[0x277D84F90];
      v109 = v37 + 32;
      do
      {
        v114 = v42;
        v43 = v41 + 216 * v40;
        v44 = v40;
        while (1)
        {
          if (v44 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v45 = *(v43 + 16);
          __dst[0] = *v43;
          __dst[1] = v45;
          v46 = *(v43 + 32);
          v47 = *(v43 + 48);
          v48 = *(v43 + 80);
          __dst[4] = *(v43 + 64);
          __dst[5] = v48;
          __dst[2] = v46;
          __dst[3] = v47;
          v49 = *(v43 + 96);
          v50 = *(v43 + 112);
          v51 = *(v43 + 144);
          __dst[8] = *(v43 + 128);
          __dst[9] = v51;
          __dst[6] = v49;
          __dst[7] = v50;
          v52 = *(v43 + 160);
          v53 = *(v43 + 176);
          v54 = *(v43 + 192);
          *&__dst[13] = *(v43 + 208);
          __dst[11] = v53;
          __dst[12] = v54;
          __dst[10] = v52;
          v55 = __dst[0];
          v40 = v44 + 1;
          v56 = *(&v54 + 1);
          v5 = *&__dst[13];
          sub_22EE20280(__dst, __src);
          if (sub_22EDD17AC(v115 | 0x10000, v56, v5))
          {
            break;
          }

          sub_22EDDBA48(__dst, &qword_27DA95668, &qword_22EE435B0);
          v43 += 216;
          ++v44;
          if (v39 == v40)
          {
            v42 = v114;
            goto LABEL_28;
          }
        }

        sub_22EDDBA48(__dst, &qword_27DA95668, &qword_22EE435B0);
        v42 = v114;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_22EDDA224(0, *(v114 + 2) + 1, 1, v114);
        }

        v5 = *(v42 + 2);
        v57 = *(v42 + 3);
        if (v5 >= v57 >> 1)
        {
          v42 = sub_22EDDA224((v57 > 1), v5 + 1, 1, v42);
        }

        *(v42 + 2) = v5 + 1;
        *&v42[16 * v5 + 32] = v55;
        v41 = v109;
      }

      while (v39 - 1 != v44);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

LABEL_28:

    if (*(v42 + 2))
    {
      v1 = v106;
      v58 = v115;
    }

    else
    {
      v59 = v110;
      v1 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22EE1F5FC(0, *(v110 + 2) + 1, 1, v110);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      v110 = v59;
      if (v61 >= v60 >> 1)
      {
        v110 = sub_22EE1F5FC((v60 > 1), v61 + 1, 1, v59);
      }

      *(v110 + 2) = v61 + 1;
      v62 = &v110[16 * v61];
      v58 = v115;
      *(v62 + 16) = v115;
      *(v62 + 5) = v111;
    }

    v22 = v112;
    v23 = v116[0];
    v63 = nullsub_1(v58);
    v64 = sub_22EDCFFA4(v63);
    *v119 = 8237;
    *&v119[8] = 0xE200000000000000;
    v66 = sub_22EDECBCC(v64, v65, v111, v1, *(v113 + 8));
    v5 = v67;

    MEMORY[0x2318F58F0](v66, v5);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);

    MEMORY[0x2318F58F0](*v119, *&v119[8]);

    if (*(v42 + 2))
    {
      *v119 = 0;
      *&v119[8] = 0xE000000000000000;
      sub_22EE3C864();

      *v119 = 0xD000000000000017;
      *&v119[8] = 0x800000022EE4A2A0;
      *&__dst[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      sub_22EDD3F74();
      v68 = sub_22EE3C0B4();
      v5 = v69;

      MEMORY[0x2318F58F0](v68, v5);

      MEMORY[0x2318F58F0](667175, 0xE300000000000000);

      v24 = *v119;
      v25 = *&v119[8];
      goto LABEL_37;
    }

LABEL_7:

    ++v6;
  }

  while (v6 != 3);

  v72 = *(v110 + 2);
  if (v72)
  {
    *v119 = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v72, 0);
    v73 = v110;
    v5 = 0;
    v74 = *v119;
    v75 = (v110 + 32);
    v76 = (v110 + 32);
    while (v5 < *(v73 + 2))
    {
      v77 = nullsub_1(*v76);
      v78 = sub_22EDCFFA4(v77);
      *v119 = v74;
      v81 = *(v74 + 16);
      v80 = *(v74 + 24);
      if (v81 >= v80 >> 1)
      {
        v83 = v78;
        v84 = v79;
        sub_22EDD2DD4((v80 > 1), v81 + 1, 1);
        v73 = v110;
        v79 = v84;
        v78 = v83;
        v74 = *v119;
      }

      ++v5;
      *(v74 + 16) = v81 + 1;
      v82 = v74 + 16 * v81;
      *(v82 + 32) = v78;
      *(v82 + 40) = v79;
      v76 += 8;
      if (v72 == v5)
      {
        *v119 = 0;
        *&v119[8] = 0xE000000000000000;
        sub_22EE3C864();

        *v119 = 8237;
        *&v119[8] = 0xE200000000000000;
        *&__dst[0] = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v85 = sub_22EE3C0B4();
        v5 = v86;

        MEMORY[0x2318F58F0](v85, v5);

        MEMORY[0x2318F58F0](0xD000000000000024, 0x800000022EE4A100);
        MEMORY[0x2318F58F0](*v119, *&v119[8]);

        if ((sub_22EE12154() & 1) == 0)
        {
          goto LABEL_52;
        }

        v87 = *(v110 + 2);
        v88 = MEMORY[0x277D84F90];
        if (!v87)
        {
LABEL_51:
          *v119 = 0;
          *&v119[8] = 0xE000000000000000;
          sub_22EE3C864();
          MEMORY[0x2318F58F0](0xD000000000000075, 0x800000022EE4A1C0);
          *&__dst[0] = v88;
          v98 = sub_22EE3C0B4();
          v5 = v99;

          MEMORY[0x2318F58F0](v98, v5);

          MEMORY[0x2318F58F0](0xD000000000000055, 0x800000022EE4A240);
          MEMORY[0x2318F58F0](*v119, *&v119[8]);

          goto LABEL_52;
        }

        *&__dst[0] = MEMORY[0x277D84F90];
        sub_22EDD2DD4(0, v87, 0);
        v89 = v110;
        v5 = 0;
        v88 = *&__dst[0];
        while (v5 < *(v89 + 2))
        {
          v90 = *v75;
          *v119 = 7876691;
          *&v119[8] = 0xE300000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
          v91 = swift_allocObject();
          *(v91 + 16) = xmmword_22EE3F500;
          *(v91 + 56) = MEMORY[0x277D84C58];
          *(v91 + 64) = MEMORY[0x277D84CB8];
          *(v91 + 32) = v90;
          v92 = sub_22EE3C134();
          MEMORY[0x2318F58F0](v92);

          v93 = *v119;
          v94 = *&v119[8];
          *&__dst[0] = v88;
          v96 = *(v88 + 16);
          v95 = *(v88 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_22EDD2DD4((v95 > 1), v96 + 1, 1);
            v88 = *&__dst[0];
          }

          ++v5;
          *(v88 + 16) = v96 + 1;
          v97 = v88 + 16 * v96;
          *(v97 + 32) = v93;
          *(v97 + 40) = v94;
          v75 += 8;
          v89 = v110;
          if (v87 == v5)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_60;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_52:
    v100 = v113 + *(type metadata accessor for KdebugAdvice() + 24);
    v101 = v100 + *(type metadata accessor for RecordingOptions.Options(0) + 84);
    if (*(v101 + 8))
    {
      if (v23)
      {
        goto LABEL_63;
      }

      v5 = v105;

      v102 = sub_22EDF5DE4(v107, v22);
    }

    else
    {
      v102 = *v101;

      v5 = v105;
    }

    *v119 = 0;
    *&v119[8] = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0xD00000000000006ALL, 0x800000022EE4A130);
    if (__OFADD__(v102, v102 / 4))
    {
      goto LABEL_62;
    }

    *&__dst[0] = v102 + v102 / 4;
    v103 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v103);

    MEMORY[0x2318F58F0](0xD00000000000001CLL, 0x800000022EE4A1A0);
    MEMORY[0x2318F58F0](*v119, *&v119[8]);

    return v120;
  }

  return result;
}