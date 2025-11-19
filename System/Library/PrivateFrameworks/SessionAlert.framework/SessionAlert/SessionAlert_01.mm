uint64_t sub_265776A5C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265760088(a3, a4);
          return sub_265776288(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Alert(0);
  v6 = v5[5];
  if ((sub_265779BEC() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  if ((sub_265779BEC() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[7];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v10 == 1)
  {
    if (v9 == 0.0)
    {
      if (v12 != 0.0)
      {
        LOBYTE(v13) = 0;
      }

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == 0.0)
      {
        v13 = 0;
      }

      if (v13 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v9 != v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || (sub_265776A5C(*(a1 + v5[9]), *(a1 + v5[9] + 8), *(a2 + v5[9]), *(a2 + v5[9] + 8)) & 1) == 0)
  {
    return 0;
  }

  v14 = v5[10];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_265775238(v15, v16);
}

unint64_t sub_265776D04()
{
  result = qword_28001D850;
  if (!qword_28001D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D850);
  }

  return result;
}

unint64_t sub_265776D58()
{
  result = qword_28001D858;
  if (!qword_28001D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D858);
  }

  return result;
}

unint64_t sub_265776DAC()
{
  result = qword_28001D860;
  if (!qword_28001D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D860);
  }

  return result;
}

uint64_t sub_265776E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265776E60()
{
  result = qword_28001D888;
  if (!qword_28001D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D888);
  }

  return result;
}

unint64_t sub_265776EB4()
{
  result = qword_28001D890;
  if (!qword_28001D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D890);
  }

  return result;
}

uint64_t sub_265776F08(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28001D868, &qword_26577AE90);
    sub_265762188(a2, type metadata accessor for Alert.HistoryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265776FA8()
{
  result = qword_28001D8A8;
  if (!qword_28001D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8A8);
  }

  return result;
}

unint64_t sub_265777000()
{
  result = qword_28001D8B0;
  if (!qword_28001D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8B0);
  }

  return result;
}

unint64_t sub_265777058()
{
  result = qword_28001D8B8;
  if (!qword_28001D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8B8);
  }

  return result;
}

unint64_t sub_2657770B0()
{
  result = qword_2814478B0;
  if (!qword_2814478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814478B0);
  }

  return result;
}

void sub_265777104()
{
  sub_265779C1C();
  if (v0 <= 0x3F)
  {
    sub_2657771BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2657771BC()
{
  if (!qword_2814475C8)
  {
    type metadata accessor for Alert.HistoryItem(255);
    v0 = sub_265779E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814475C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Alert.AlertState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Alert.AlertState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_BYTE *sub_265777380(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t sub_2657773D4()
{
  result = sub_265779C1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alert.HistoryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alert.HistoryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2657777A4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_265777834(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265777918()
{
  result = qword_28001D8C0;
  if (!qword_28001D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8C0);
  }

  return result;
}

unint64_t sub_265777970()
{
  result = qword_28001D8C8;
  if (!qword_28001D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8C8);
  }

  return result;
}

unint64_t sub_2657779C8()
{
  result = qword_28001D8D0;
  if (!qword_28001D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8D0);
  }

  return result;
}

unint64_t sub_265777A20()
{
  result = qword_28001D8D8;
  if (!qword_28001D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8D8);
  }

  return result;
}

unint64_t sub_265777A78()
{
  result = qword_28001D8E0;
  if (!qword_28001D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8E0);
  }

  return result;
}

unint64_t sub_265777AD0()
{
  result = qword_28001D8E8;
  if (!qword_28001D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8E8);
  }

  return result;
}

unint64_t sub_265777B28()
{
  result = qword_28001D8F0;
  if (!qword_28001D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8F0);
  }

  return result;
}

unint64_t sub_265777B80()
{
  result = qword_28001D8F8;
  if (!qword_28001D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8F8);
  }

  return result;
}

unint64_t sub_265777BD8()
{
  result = qword_28001D900;
  if (!qword_28001D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D900);
  }

  return result;
}

unint64_t sub_265777C30()
{
  result = qword_28001D908;
  if (!qword_28001D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D908);
  }

  return result;
}

unint64_t sub_265777C88()
{
  result = qword_28001D910;
  if (!qword_28001D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D910);
  }

  return result;
}

unint64_t sub_265777CE0()
{
  result = qword_28001D918;
  if (!qword_28001D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D918);
  }

  return result;
}

unint64_t sub_265777D38()
{
  result = qword_28001D920;
  if (!qword_28001D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D920);
  }

  return result;
}

unint64_t sub_265777D90()
{
  result = qword_28001D928;
  if (!qword_28001D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D928);
  }

  return result;
}

unint64_t sub_265777DE8()
{
  result = qword_28001D930;
  if (!qword_28001D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D930);
  }

  return result;
}

unint64_t sub_265777E40()
{
  result = qword_28001D938;
  if (!qword_28001D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D938);
  }

  return result;
}

unint64_t sub_265777E98()
{
  result = qword_28001D940;
  if (!qword_28001D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D940);
  }

  return result;
}

unint64_t sub_265777EF0()
{
  result = qword_28001D948;
  if (!qword_28001D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D948);
  }

  return result;
}

unint64_t sub_265777F48()
{
  result = qword_28001D950;
  if (!qword_28001D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D950);
  }

  return result;
}

unint64_t sub_265777FA0()
{
  result = qword_28001D958;
  if (!qword_28001D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D958);
  }

  return result;
}

unint64_t sub_265777FF8()
{
  result = qword_28001D960;
  if (!qword_28001D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D960);
  }

  return result;
}

unint64_t sub_265778050()
{
  result = qword_28001D968;
  if (!qword_28001D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D968);
  }

  return result;
}

unint64_t sub_2657780A8()
{
  result = qword_28001D970;
  if (!qword_28001D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D970);
  }

  return result;
}

unint64_t sub_265778100()
{
  result = qword_28001D978;
  if (!qword_28001D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D978);
  }

  return result;
}

unint64_t sub_265778158()
{
  result = qword_28001D980;
  if (!qword_28001D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D980);
  }

  return result;
}

unint64_t sub_2657781B0()
{
  result = qword_28001D988;
  if (!qword_28001D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D988);
  }

  return result;
}

unint64_t sub_265778208()
{
  result = qword_28001D990;
  if (!qword_28001D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D990);
  }

  return result;
}

unint64_t sub_265778260()
{
  result = qword_28001D998;
  if (!qword_28001D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D998);
  }

  return result;
}

unint64_t sub_2657782B8()
{
  result = qword_28001D9A0;
  if (!qword_28001D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9A0);
  }

  return result;
}

unint64_t sub_265778310()
{
  result = qword_28001D9A8;
  if (!qword_28001D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9A8);
  }

  return result;
}

unint64_t sub_265778368()
{
  result = qword_28001D9B0;
  if (!qword_28001D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9B0);
  }

  return result;
}

unint64_t sub_2657783C0()
{
  result = qword_28001D9B8;
  if (!qword_28001D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9B8);
  }

  return result;
}

unint64_t sub_265778418()
{
  result = qword_28001D9C0;
  if (!qword_28001D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9C0);
  }

  return result;
}

unint64_t sub_265778470()
{
  result = qword_28001D9C8;
  if (!qword_28001D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9C8);
  }

  return result;
}

unint64_t sub_2657784C8()
{
  result = qword_28001D9D0;
  if (!qword_28001D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9D0);
  }

  return result;
}

unint64_t sub_265778520()
{
  result = qword_28001D9D8;
  if (!qword_28001D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9D8);
  }

  return result;
}

unint64_t sub_265778578()
{
  result = qword_28001D9E0;
  if (!qword_28001D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9E0);
  }

  return result;
}

unint64_t sub_2657785D0()
{
  result = qword_28001D9E8;
  if (!qword_28001D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D9E8);
  }

  return result;
}

uint64_t sub_265778624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E6964726F6F63 && a2 == 0xEC000000676E6974;
  if (v4 || (sub_26577A0BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_26577A0BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6579616C70736964 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_26577A0BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_265778744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746973736563656ELL && a2 == 0xE900000000000079;
  if (v4 || (sub_26577A0BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026577C440 == a2 || (sub_26577A0BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026577C460 == a2 || (sub_26577A0BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_26577A0BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26577A0BC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_265778904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26577A0BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_26577A0BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x447373696D736964 && a2 == 0xEB00000000657461 || (sub_26577A0BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4F7373696D736964 && a2 == 0xED00006E6F697470 || (sub_26577A0BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026577C480 == a2 || (sub_26577A0BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_26577A0BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26577A0BC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_265778BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_265767118(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_26576435C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2657796C8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_265779518(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t InMemoryAlertStore.update(alert:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  v7 = a1[1];
  sub_265763F98(a1, &v10 - v4);
  v8 = type metadata accessor for Alert(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);

  return sub_265763FFC(v5, v6, v7);
}

Swift::Void __swiftcall InMemoryAlertStore.remove(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - v5;
  v7 = type metadata accessor for Alert(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  sub_265763FFC(v6, countAndFlagsBits, object);
}

uint64_t sub_265778EA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265778EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265778F34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D9F8, qword_26577C1B0);
  v38 = a2;
  result = sub_265779FBC();
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26577A0DC();
      sub_265779E6C();
      result = sub_26577A10C();
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
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_2657791DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Alert(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D9F0, &qword_26577C1A8);
  v44 = a2;
  result = sub_265779FBC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_265764194(v31, v45);
      }

      else
      {
        sub_265763F98(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_26577A0DC();
      sub_265779E6C();
      result = sub_26577A10C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_265764194(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_265779518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265779F3C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26577A0DC();

      sub_265779E6C();
      v13 = sub_26577A10C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2657796C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D9F8, qword_26577C1B0);
  v2 = *v0;
  v3 = sub_265779FAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_265779838()
{
  v1 = v0;
  v2 = type metadata accessor for Alert(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D9F0, &qword_26577C1A8);
  v5 = *v0;
  v6 = sub_265779FAC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_265763F98(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_265764194(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_265779A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}