uint64_t sub_1BAB66790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BAB667D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BAB66838(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BAB66894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BAB668F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1BAB66940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BAB669A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BAB669EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BAB66A78()
{
  type metadata accessor for ReplicatorMessage();
  if (v0 <= 0x3F)
  {
    sub_1BAB66B34(319, &qword_1EBC13708);
    if (v1 <= 0x3F)
    {
      sub_1BAB66B34(319, &unk_1EBC13710);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAB66B34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BABE799C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BAB66BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BAB66C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAB66C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAB66CD8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorMessage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorMessage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BAB66E2C()
{
  result = type metadata accessor for ReplicatorMessage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BAB66ED0()
{
  sub_1BAB66F58(319, &qword_1ED787C00, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BAB66F58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BABE799C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BAB67040(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BAB67088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationXPCServerParameters.GetRecords.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicationXPCServerParameters.GetRecords.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BAB67388()
{
  result = qword_1EBC13738;
  if (!qword_1EBC13738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13738);
  }

  return result;
}

unint64_t sub_1BAB673E0()
{
  result = qword_1EBC13740;
  if (!qword_1EBC13740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13740);
  }

  return result;
}

unint64_t sub_1BAB67438()
{
  result = qword_1EBC13748;
  if (!qword_1EBC13748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13748);
  }

  return result;
}

unint64_t sub_1BAB67490()
{
  result = qword_1EBC13750;
  if (!qword_1EBC13750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13750);
  }

  return result;
}

unint64_t sub_1BAB674E8()
{
  result = qword_1EBC13758;
  if (!qword_1EBC13758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13758);
  }

  return result;
}

unint64_t sub_1BAB67540()
{
  result = qword_1EBC13760;
  if (!qword_1EBC13760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13760);
  }

  return result;
}

unint64_t sub_1BAB67598()
{
  result = qword_1EBC13768;
  if (!qword_1EBC13768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13768);
  }

  return result;
}

unint64_t sub_1BAB675F0()
{
  result = qword_1EBC13770;
  if (!qword_1EBC13770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13770);
  }

  return result;
}

unint64_t sub_1BAB67648()
{
  result = qword_1EBC13778;
  if (!qword_1EBC13778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13778);
  }

  return result;
}

unint64_t sub_1BAB676A0()
{
  result = qword_1EBC13780;
  if (!qword_1EBC13780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13780);
  }

  return result;
}

unint64_t sub_1BAB676F8()
{
  result = qword_1EBC13788;
  if (!qword_1EBC13788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13788);
  }

  return result;
}

unint64_t sub_1BAB67750()
{
  result = qword_1EBC13790;
  if (!qword_1EBC13790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13790);
  }

  return result;
}

unint64_t sub_1BAB677A8()
{
  result = qword_1EBC13798;
  if (!qword_1EBC13798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13798);
  }

  return result;
}

unint64_t sub_1BAB67800()
{
  result = qword_1EBC137A0;
  if (!qword_1EBC137A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137A0);
  }

  return result;
}

unint64_t sub_1BAB67858()
{
  result = qword_1EBC137A8;
  if (!qword_1EBC137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137A8);
  }

  return result;
}

unint64_t sub_1BAB678B0()
{
  result = qword_1EBC137B0;
  if (!qword_1EBC137B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137B0);
  }

  return result;
}

unint64_t sub_1BAB67908()
{
  result = qword_1EBC137B8;
  if (!qword_1EBC137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137B8);
  }

  return result;
}

unint64_t sub_1BAB67960()
{
  result = qword_1EBC137C0;
  if (!qword_1EBC137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137C0);
  }

  return result;
}

unint64_t sub_1BAB679B8()
{
  result = qword_1EBC137C8;
  if (!qword_1EBC137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137C8);
  }

  return result;
}

unint64_t sub_1BAB67A10()
{
  result = qword_1EBC137D0;
  if (!qword_1EBC137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137D0);
  }

  return result;
}

unint64_t sub_1BAB67A68()
{
  result = qword_1EBC137D8;
  if (!qword_1EBC137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137D8);
  }

  return result;
}

unint64_t sub_1BAB67AC0()
{
  result = qword_1EBC137E0;
  if (!qword_1EBC137E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137E0);
  }

  return result;
}

unint64_t sub_1BAB67B18()
{
  result = qword_1EBC137E8;
  if (!qword_1EBC137E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137E8);
  }

  return result;
}

unint64_t sub_1BAB67B70()
{
  result = qword_1EBC124C0;
  if (!qword_1EBC124C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124C0);
  }

  return result;
}

unint64_t sub_1BAB67BC8()
{
  result = qword_1EBC124C8;
  if (!qword_1EBC124C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124C8);
  }

  return result;
}

unint64_t sub_1BAB67C20()
{
  result = qword_1EBC12320;
  if (!qword_1EBC12320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12320);
  }

  return result;
}

unint64_t sub_1BAB67C78()
{
  result = qword_1EBC12328;
  if (!qword_1EBC12328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12328);
  }

  return result;
}

unint64_t sub_1BAB67CD0()
{
  result = qword_1EBC124E0;
  if (!qword_1EBC124E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124E0);
  }

  return result;
}

unint64_t sub_1BAB67D28()
{
  result = qword_1EBC124E8;
  if (!qword_1EBC124E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124E8);
  }

  return result;
}

unint64_t sub_1BAB67D80()
{
  result = qword_1EBC122F0;
  if (!qword_1EBC122F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122F0);
  }

  return result;
}

unint64_t sub_1BAB67DD8()
{
  result = qword_1EBC122F8;
  if (!qword_1EBC122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122F8);
  }

  return result;
}

unint64_t sub_1BAB67E30()
{
  result = qword_1ED7877A0;
  if (!qword_1ED7877A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877A0);
  }

  return result;
}

unint64_t sub_1BAB67E88()
{
  result = qword_1ED7877A8;
  if (!qword_1ED7877A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877A8);
  }

  return result;
}

unint64_t sub_1BAB67EE0()
{
  result = qword_1EBC137F0;
  if (!qword_1EBC137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137F0);
  }

  return result;
}

unint64_t sub_1BAB67F38()
{
  result = qword_1EBC137F8;
  if (!qword_1EBC137F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC137F8);
  }

  return result;
}

unint64_t sub_1BAB67F90()
{
  result = qword_1ED787110;
  if (!qword_1ED787110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787110);
  }

  return result;
}

unint64_t sub_1BAB67FE8()
{
  result = qword_1ED787118;
  if (!qword_1ED787118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787118);
  }

  return result;
}

unint64_t sub_1BAB68040()
{
  result = qword_1ED7873B0;
  if (!qword_1ED7873B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873B0);
  }

  return result;
}

unint64_t sub_1BAB68098()
{
  result = qword_1ED7873B8;
  if (!qword_1ED7873B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873B8);
  }

  return result;
}

unint64_t sub_1BAB680F0()
{
  result = qword_1ED7877D0;
  if (!qword_1ED7877D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877D0);
  }

  return result;
}

unint64_t sub_1BAB68148()
{
  result = qword_1ED7877D8;
  if (!qword_1ED7877D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877D8);
  }

  return result;
}

unint64_t sub_1BAB681A0()
{
  result = qword_1ED787770;
  if (!qword_1ED787770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787770);
  }

  return result;
}

unint64_t sub_1BAB681F8()
{
  result = qword_1ED787778;
  if (!qword_1ED787778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787778);
  }

  return result;
}

unint64_t sub_1BAB68250()
{
  result = qword_1ED7870A0;
  if (!qword_1ED7870A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870A0);
  }

  return result;
}

unint64_t sub_1BAB682A8()
{
  result = qword_1ED7870A8;
  if (!qword_1ED7870A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870A8);
  }

  return result;
}

unint64_t sub_1BAB68300()
{
  result = qword_1ED787740;
  if (!qword_1ED787740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787740);
  }

  return result;
}

unint64_t sub_1BAB68358()
{
  result = qword_1ED787748;
  if (!qword_1ED787748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787748);
  }

  return result;
}

unint64_t sub_1BAB683B0()
{
  result = qword_1EBC13800;
  if (!qword_1EBC13800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13800);
  }

  return result;
}

unint64_t sub_1BAB68408()
{
  result = qword_1EBC13808;
  if (!qword_1EBC13808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13808);
  }

  return result;
}

unint64_t sub_1BAB68460()
{
  result = qword_1ED7876E0;
  if (!qword_1ED7876E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7876E0);
  }

  return result;
}

unint64_t sub_1BAB684B8()
{
  result = qword_1ED7876E8;
  if (!qword_1ED7876E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7876E8);
  }

  return result;
}

unint64_t sub_1BAB68510()
{
  result = qword_1EBC12490;
  if (!qword_1EBC12490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12490);
  }

  return result;
}

unint64_t sub_1BAB68568()
{
  result = qword_1EBC12498;
  if (!qword_1EBC12498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12498);
  }

  return result;
}

unint64_t sub_1BAB685C0()
{
  result = qword_1ED7870C0;
  if (!qword_1ED7870C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870C0);
  }

  return result;
}

unint64_t sub_1BAB68618()
{
  result = qword_1ED7870C8;
  if (!qword_1ED7870C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870C8);
  }

  return result;
}

unint64_t sub_1BAB68670()
{
  result = qword_1ED7870E0;
  if (!qword_1ED7870E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870E0);
  }

  return result;
}

unint64_t sub_1BAB686C8()
{
  result = qword_1ED7870E8;
  if (!qword_1ED7870E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870E8);
  }

  return result;
}

unint64_t sub_1BAB68720()
{
  result = qword_1ED787380;
  if (!qword_1ED787380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787380);
  }

  return result;
}

unint64_t sub_1BAB68778()
{
  result = qword_1ED787388;
  if (!qword_1ED787388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787388);
  }

  return result;
}

unint64_t sub_1BAB687D0()
{
  result = qword_1EBC13810;
  if (!qword_1EBC13810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13810);
  }

  return result;
}

unint64_t sub_1BAB68828()
{
  result = qword_1EBC13818;
  if (!qword_1EBC13818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13818);
  }

  return result;
}

unint64_t sub_1BAB68880()
{
  result = qword_1EBC122B0;
  if (!qword_1EBC122B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122B0);
  }

  return result;
}

unint64_t sub_1BAB688D8()
{
  result = qword_1EBC122B8;
  if (!qword_1EBC122B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122B8);
  }

  return result;
}

unint64_t sub_1BAB68930()
{
  result = qword_1EBC13820;
  if (!qword_1EBC13820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13820);
  }

  return result;
}

unint64_t sub_1BAB68988()
{
  result = qword_1EBC13828;
  if (!qword_1EBC13828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13828);
  }

  return result;
}

unint64_t sub_1BAB689E0()
{
  result = qword_1EBC13830;
  if (!qword_1EBC13830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13830);
  }

  return result;
}

unint64_t sub_1BAB68A38()
{
  result = qword_1EBC13838;
  if (!qword_1EBC13838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13838);
  }

  return result;
}

unint64_t sub_1BAB68A90()
{
  result = qword_1ED787710;
  if (!qword_1ED787710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787710);
  }

  return result;
}

unint64_t sub_1BAB68AE8()
{
  result = qword_1ED787718;
  if (!qword_1ED787718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787718);
  }

  return result;
}

uint64_t sub_1BAB68B3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x444964726F636572 && a2 == 0xE900000000000073 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446863746566 && a2 == 0xE900000000000061 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69466863746566 && a2 == 0xEA00000000007365 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BAB68CC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656972746572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

uint64_t sub_1BAB68DE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEB00000000734449;
  if (v4 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BABF6EB0 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x655264656C696166 && a2 == 0xEF73444964726F63)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

unint64_t sub_1BAB68F0C()
{
  result = qword_1EBC12508;
  if (!qword_1EBC12508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12508);
  }

  return result;
}

uint64_t ReplicatorDevice.isPaired.getter()
{
  v1 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReplicatorDevice(0);
  sub_1BAB6EE00(v0 + *(v4 + 48), v3, type metadata accessor for ReplicatorDevice.RelationshipState);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
  v6 = (*(*(v5 - 8) + 48))(v3, 4, v5);
  if ((v6 - 2) < 2)
  {
    return 1;
  }

  if (v6)
  {
    sub_1BAB6EE68(v3, type metadata accessor for ReplicatorDevice.RelationshipState);
    return 0;
  }

  else
  {
    v8 = sub_1BABE6CFC();
    (*(*(v8 - 8) + 8))(v3, v8);
    return 1;
  }
}

ReplicatorServices::ReplicatorDevice::DeviceType_optional __swiftcall ReplicatorDevice.DeviceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ReplicatorDevice.Screen.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void ReplicatorDevice.Screen.init(size:scale:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t ReplicatorDevice.Screen.init(size:scale:cornerRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t ReplicatorDevice.Screen.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFAFDC40](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1BFAFDC40](*&v6);
  if (v5 == 1)
  {
    sub_1BABE7FBC();
  }

  else
  {
    sub_1BABE7FBC();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1BFAFDC40](v7);
  }

  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  return MEMORY[0x1BFAFDC40](*&v8);
}

uint64_t sub_1BAB693E4()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x615272656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1BAB6943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB6FABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB69464(uint64_t a1)
{
  v2 = sub_1BAB6E35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB694A0(uint64_t a1)
{
  v2 = sub_1BAB6E35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorDevice.Screen.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13850);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB6E35C();
  sub_1BABE800C();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  type metadata accessor for CGSize(0);
  sub_1BAAD6F7C(&qword_1EBC13860, type metadata accessor for CGSize);
  sub_1BABE7E7C();
  if (!v2)
  {
    v12 = v14;
    v16 = v10;
    v15 = 1;
    sub_1BAB6E3B0();
    sub_1BABE7E7C();
    v16 = v12;
    LOBYTE(v17) = v11;
    v15 = 2;
    sub_1BABE7E3C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicatorDevice.Screen.hashValue.getter()
{
  sub_1BABE7F9C();
  ReplicatorDevice.Screen.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t ReplicatorDevice.Screen.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB6E35C();
  sub_1BABE7FFC();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v16 = 0;
    sub_1BAAD6F7C(&qword_1EBC13878, type metadata accessor for CGSize);
    sub_1BABE7DCC();
    v9 = v17;
    v10 = v18;
    v16 = 1;
    sub_1BAB6E404();
    sub_1BABE7DCC();
    v12 = v17;
    v16 = 2;
    sub_1BABE7D8C();
    (*(v6 + 8))(v8, v5);
    v13 = v17;
    v14 = v18;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB699E0()
{
  sub_1BABE7F9C();
  ReplicatorDevice.Screen.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB69A48()
{
  sub_1BABE7F9C();
  ReplicatorDevice.Screen.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB69ADC()
{
  v1 = *v0;
  v2 = 0x6375646F72746E69;
  v3 = 0x646572696170;
  v4 = 0x6E6974617267696DLL;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6972696170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAB69B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB6FBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB69BA4(uint64_t a1)
{
  v2 = sub_1BAB6E458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69BE0(uint64_t a1)
{
  v2 = sub_1BAB6E458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB69C28(uint64_t a1)
{
  v2 = sub_1BAB6E5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69C64(uint64_t a1)
{
  v2 = sub_1BAB6E5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB69CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB69D38(uint64_t a1)
{
  v2 = sub_1BAB6E500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69D74(uint64_t a1)
{
  v2 = sub_1BAB6E500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB69DB0(uint64_t a1)
{
  v2 = sub_1BAB6E554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69DEC(uint64_t a1)
{
  v2 = sub_1BAB6E554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB69E28(uint64_t a1)
{
  v2 = sub_1BAB6E5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69E64(uint64_t a1)
{
  v2 = sub_1BAB6E5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB69EA0(uint64_t a1)
{
  v2 = sub_1BAB6E4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB69EDC(uint64_t a1)
{
  v2 = sub_1BAB6E4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorDevice.RelationshipState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13888);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13890);
  v39 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v34 - v4;
  v5 = sub_1BABE6CFC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13898);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138A0);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138A8);
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138B0);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB6E458();
  sub_1BABE800C();
  sub_1BAB6EE00(v48, v18, type metadata accessor for ReplicatorDevice.RelationshipState);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
  v22 = (*(*(v21 - 8) + 48))(v18, 4, v21);
  if (v22 <= 1)
  {
    v27 = v43;
    v28 = v7;
    v30 = v45;
    v29 = v46;
    v31 = v47;
    if (!v22)
    {
      v32 = v44;
      (*(v44 + 32))(v28, v18, v45);
      v54 = 3;
      sub_1BAB6E500();
      sub_1BABE7DFC();
      sub_1BAAD6F7C(&qword_1EBC12220, MEMORY[0x1E69695A8]);
      sub_1BABE7E7C();
      (*(v39 + 8))(v29, v31);
      (*(v32 + 8))(v28, v30);
      return (*(v49 + 8))(v20, v50);
    }

    v51 = 0;
    sub_1BAB6E5FC();
    v23 = v50;
    sub_1BABE7DFC();
    (*(v27 + 8))(v15, v13);
  }

  else if (v22 == 2)
  {
    v52 = 1;
    sub_1BAB6E5A8();
    v23 = v50;
    sub_1BABE7DFC();
    (*(v34 + 8))(v12, v35);
  }

  else
  {
    v23 = v50;
    if (v22 == 3)
    {
      v53 = 2;
      sub_1BAB6E554();
      v24 = v36;
      sub_1BABE7DFC();
      v26 = v37;
      v25 = v38;
    }

    else
    {
      v55 = 4;
      sub_1BAB6E4AC();
      v24 = v40;
      sub_1BABE7DFC();
      v26 = v41;
      v25 = v42;
    }

    (*(v26 + 8))(v24, v25);
  }

  return (*(v49 + 8))(v20, v23);
}

uint64_t ReplicatorDevice.RelationshipState.hash(into:)()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB6EE00(v0, v7, type metadata accessor for ReplicatorDevice.RelationshipState);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
  v9 = (*(*(v8 - 8) + 48))(v7, 4, v8);
  if (v9 <= 1)
  {
    if (!v9)
    {
      (*(v2 + 32))(v4, v7, v1);
      MEMORY[0x1BFAFDC20](3);
      sub_1BAAD6F7C(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      sub_1BABE74BC();
      return (*(v2 + 8))(v4, v1);
    }

    v10 = 0;
  }

  else if (v9 == 2)
  {
    v10 = 1;
  }

  else if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 4;
  }

  return MEMORY[0x1BFAFDC20](v10);
}

uint64_t ReplicatorDevice.RelationshipState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138E8);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v47 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138F0);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC138F8);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v47 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13900);
  v52 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13908);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13910);
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1BAB6E458();
  v22 = v66;
  sub_1BABE7FFC();
  if (!v22)
  {
    v48 = v18;
    v49 = v20;
    v24 = v64;
    v23 = v65;
    v66 = sub_1BABE7DEC();
    v25 = v12;
    if (*(v66 + 16) != 1 || (v26 = *(v66 + 32), v26 == 5))
    {
      v31 = sub_1BABE7B4C();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13918);
      *v33 = v15;
      sub_1BABE7D3C();
      sub_1BABE7B3C();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v24 + 8))(v14, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v66 + 32) <= 1u)
      {
        v35 = v63;
        v36 = v24;
        if (*(v66 + 32))
        {
          v69 = 1;
          sub_1BAB6E5A8();
          v40 = v59;
          sub_1BABE7D2C();
          (*(v52 + 8))(v40, v23);
          (*(v36 + 8))(v14, v25);
          swift_unknownObjectRelease();
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          v46 = v49;
          (*(*(v43 - 8) + 56))(v49, 2, 4, v43);
        }

        else
        {
          v68 = 0;
          sub_1BAB6E5FC();
          sub_1BABE7D2C();
          (*(v51 + 8))(v11, v50);
          (*(v24 + 8))(v14, v25);
          swift_unknownObjectRelease();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          v46 = v49;
          (*(*(v42 - 8) + 56))(v49, 1, 4, v42);
        }
      }

      else
      {
        v27 = v24;
        if (v26 == 2)
        {
          v70 = 2;
          sub_1BAB6E554();
          v37 = v60;
          sub_1BABE7D2C();
          (*(v53 + 8))(v37, v54);
          (*(v24 + 8))(v14, v12);
          swift_unknownObjectRelease();
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          v46 = v49;
          (*(*(v38 - 8) + 56))(v49, 3, 4, v38);
        }

        else if (v26 == 3)
        {
          v71 = 3;
          sub_1BAB6E500();
          v28 = v61;
          sub_1BABE7D2C();
          sub_1BABE6CFC();
          sub_1BAAD6F7C(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
          v29 = v48;
          v30 = v56;
          sub_1BABE7DCC();
          (*(v58 + 8))(v28, v30);
          (*(v27 + 8))(v14, v25);
          swift_unknownObjectRelease();
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          (*(*(v44 - 8) + 56))(v29, 0, 4, v44);
          v45 = v29;
          v46 = v49;
          sub_1BAB6E650(v45, v49);
        }

        else
        {
          v72 = 4;
          sub_1BAB6E4AC();
          v39 = v62;
          sub_1BABE7D2C();
          (*(v55 + 8))(v39, v57);
          (*(v24 + 8))(v14, v12);
          swift_unknownObjectRelease();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          v46 = v49;
          (*(*(v41 - 8) + 56))(v49, 4, 4, v41);
        }

        v35 = v63;
      }

      sub_1BAB6E650(v46, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1BAB6B2B4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ReplicatorDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReplicatorDevice.id.setter(uint64_t a1)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicatorDevice.relationshipID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicatorDevice.relationshipID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicatorDevice.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorDevice(0) + 24));

  return v1;
}

uint64_t ReplicatorDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorDevice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ReplicatorDevice.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ReplicatorDevice(0) + 28));
  *a1 = result;
  return result;
}

uint64_t ReplicatorDevice.protocolVersion.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for ReplicatorDevice(0);
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t ReplicatorDevice.deviceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ReplicatorDevice(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ReplicatorDevice.deviceType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ReplicatorDevice(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

__n128 ReplicatorDevice.screen.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicatorDevice(0) + 36);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

__n128 ReplicatorDevice.screen.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = v1 + *(type metadata accessor for ReplicatorDevice(0) + 36);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  return result;
}

uint64_t ReplicatorDevice.zones.getter()
{
  type metadata accessor for ReplicatorDevice(0);
}

uint64_t ReplicatorDevice.zones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReplicatorDevice.messageTypes.getter()
{
  type metadata accessor for ReplicatorDevice(0);
}

uint64_t ReplicatorDevice.messageTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReplicatorDevice.relationshipState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReplicatorDevice(0) + 48);

  return sub_1BAB6E6B4(a1, v3);
}

uint64_t ReplicatorDevice.initialPairingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 52);
  v4 = sub_1BABE6C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicatorDevice.initialPairingDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorDevice(0) + 52);
  v4 = sub_1BABE6C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicatorDevice.isBlocked.setter(char a1)
{
  result = type metadata accessor for ReplicatorDevice(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ReplicatorDevice.marketingName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorDevice(0) + 60));

  return v1;
}

uint64_t ReplicatorDevice.marketingName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorDevice(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ReplicatorDevice.productType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorDevice(0) + 64));

  return v1;
}

uint64_t ReplicatorDevice.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorDevice(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ReplicatorDevice.personaID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorDevice(0) + 68));

  return v1;
}

uint64_t ReplicatorDevice.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorDevice(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ReplicatorDevice.init(id:relationshipID:name:protocolVersion:deviceType:screen:zones:messageTypes:relationshipState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *a5;
  v30 = a5[1];
  v31 = *a6;
  v33 = *(a7 + 33);
  v34 = *(a7 + 32);
  v16 = sub_1BABE6CFC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v28 = *(a7 + 16);
  v29 = *a7;
  v18(a9, a1, v16);
  v19 = type metadata accessor for ReplicatorDevice(0);
  v18(a9 + v19[5], a2, v16);
  sub_1BAB6EE00(a11, a9 + v19[12], type metadata accessor for ReplicatorDevice.RelationshipState);
  sub_1BABE6C6C();
  sub_1BAB6EE68(a11, type metadata accessor for ReplicatorDevice.RelationshipState);
  v20 = *(v17 + 8);
  v20(a2, v16);
  v20(a1, v16);
  v21 = a9 + v19[9];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 256;
  v22 = (a9 + v19[15]);
  v23 = (a9 + v19[16]);
  v24 = (a9 + v19[17]);
  v25 = (a9 + v19[6]);
  *v25 = a3;
  v25[1] = a4;
  v26 = (a9 + v19[7]);
  *v26 = v15;
  v26[1] = v30;
  *(a9 + v19[8]) = v31;
  result = v29;
  *v21 = v29;
  *(v21 + 16) = v28;
  *(v21 + 32) = v34;
  *(v21 + 33) = v33;
  *(a9 + v19[10]) = a8;
  *(a9 + v19[11]) = a10;
  *(a9 + v19[14]) = 0;
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  return result;
}

uint64_t ReplicatorDevice.init(id:relationshipID:name:protocolVersion:deviceType:screen:zones:messageTypes:relationshipState:initialPairingDate:isBlocked:marketingName:productType:personaID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v36 = a5[1];
  v37 = *a5;
  v40 = *(a7 + 32);
  v38 = *a6;
  v39 = *(a7 + 33);
  v21 = type metadata accessor for ReplicatorDevice(0);
  v22 = a9 + v21[9];
  *(v22 + 32) = 256;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = (a9 + v21[15]);
  v24 = (a9 + v21[16]);
  v25 = (a9 + v21[17]);
  v26 = sub_1BABE6CFC();
  v27 = *(*(v26 - 8) + 32);
  v33 = a7[1];
  v34 = *a7;
  v27(a9, a1, v26);
  v27(a9 + v21[5], a2, v26);
  v28 = (a9 + v21[6]);
  *v28 = a3;
  v28[1] = a4;
  v29 = (a9 + v21[7]);
  *v29 = v37;
  v29[1] = v36;
  *(a9 + v21[8]) = v38;
  *v22 = v34;
  *(v22 + 16) = v33;
  *(v22 + 32) = v40;
  *(v22 + 33) = v39;
  *(a9 + v21[10]) = a8;
  *(a9 + v21[11]) = a10;
  sub_1BAB6E650(a11, a9 + v21[12]);
  v30 = v21[13];
  v31 = sub_1BABE6C8C();
  result = (*(*(v31 - 8) + 32))(a9 + v30, a12, v31);
  *(a9 + v21[14]) = a13;
  *v23 = a14;
  v23[1] = a15;
  *v24 = a16;
  v24[1] = a17;
  *v25 = a18;
  v25[1] = a19;
  return result;
}

uint64_t ReplicatorDevice.init(id:relationshipID:name:protocolVersion:deviceType:screen:zones:messageTypes:relationshipState:initialPairingDate:isBlocked:marketingName:productType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v34 = a5[1];
  v35 = *a5;
  v36 = *a6;
  v38 = *(a7 + 33);
  v39 = *(a7 + 32);
  v19 = type metadata accessor for ReplicatorDevice(0);
  v20 = a9 + v19[9];
  *(v20 + 32) = 256;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = (a9 + v19[15]);
  v22 = (a9 + v19[16]);
  v23 = (a9 + v19[17]);
  v24 = sub_1BABE6CFC();
  v25 = *(*(v24 - 8) + 32);
  v31 = a7[1];
  v32 = *a7;
  v25(a9, a1, v24);
  v25(a9 + v19[5], a2, v24);
  v26 = (a9 + v19[6]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v19[7]);
  *v27 = v35;
  v27[1] = v34;
  *(a9 + v19[8]) = v36;
  *v20 = v32;
  *(v20 + 16) = v31;
  *(v20 + 32) = v39;
  *(v20 + 33) = v38;
  *(a9 + v19[10]) = a8;
  *(a9 + v19[11]) = a10;
  sub_1BAB6E650(a11, a9 + v19[12]);
  v28 = v19[13];
  v29 = sub_1BABE6C8C();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a12, v29);
  *(a9 + v19[14]) = a13;
  *v21 = a14;
  v21[1] = a15;
  *v22 = a16;
  v22[1] = a17;
  *v23 = 0;
  v23[1] = 0;
  return result;
}

unint64_t sub_1BAB6C56C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6974616C6572;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6C6F636F746F7270;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0x6E6565726373;
      break;
    case 6:
      result = 0x73656E6F7ALL;
      break;
    case 7:
      result = 0x546567617373656DLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656B636F6C427369;
      break;
    case 11:
      result = 0x6E6974656B72616DLL;
      break;
    case 12:
      result = 0x54746375646F7270;
      break;
    case 13:
      result = 0x49616E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BAB6C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB6FD90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB6C750(uint64_t a1)
{
  v2 = sub_1BAB6EA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB6C78C(uint64_t a1)
{
  v2 = sub_1BAB6EA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB6EA1C();
  sub_1BABE800C();
  LOBYTE(v15[0]) = 0;
  sub_1BABE6CFC();
  sub_1BAAD6F7C(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E7C();
  if (!v2)
  {
    v9 = type metadata accessor for ReplicatorDevice(0);
    LOBYTE(v15[0]) = 1;
    sub_1BABE7E7C();
    LOBYTE(v15[0]) = 2;
    sub_1BABE7E5C();
    v15[0] = *(v3 + v9[7]);
    v18 = 3;
    sub_1BAB2E164();
    sub_1BABE7E7C();
    LOBYTE(v15[0]) = *(v3 + v9[8]);
    v18 = 4;
    sub_1BAB6EA70();
    sub_1BABE7E7C();
    v10 = v3 + v9[9];
    v11 = *(v10 + 32);
    v12 = *(v10 + 33);
    v13 = *(v10 + 16);
    v15[0] = *v10;
    v15[1] = v13;
    v16 = v11;
    v17 = v12;
    v18 = 5;
    sub_1BAB6EAC4();
    sub_1BABE7E3C();
    *&v15[0] = *(v3 + v9[10]);
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13940);
    sub_1BAB6ECE0(&qword_1EBC13948, sub_1BAB6EB18);
    sub_1BABE7E7C();
    *&v15[0] = *(v3 + v9[11]);
    v18 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13958);
    sub_1BAB6EB6C(&qword_1EBC13960, sub_1BAB6EBE4);
    sub_1BABE7E7C();
    LOBYTE(v15[0]) = 8;
    type metadata accessor for ReplicatorDevice.RelationshipState(0);
    sub_1BAAD6F7C(&qword_1EBC13970, type metadata accessor for ReplicatorDevice.RelationshipState);
    sub_1BABE7E7C();
    LOBYTE(v15[0]) = 9;
    sub_1BABE6C8C();
    sub_1BAAD6F7C(&qword_1EBC13978, MEMORY[0x1E6969530]);
    sub_1BABE7E7C();
    LOBYTE(v15[0]) = 10;
    sub_1BABE7E6C();
    LOBYTE(v15[0]) = 11;
    sub_1BABE7E0C();
    LOBYTE(v15[0]) = 12;
    sub_1BABE7E0C();
    LOBYTE(v15[0]) = 13;
    sub_1BABE7E0C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ReplicatorDevice.hash(into:)(uint64_t a1)
{
  v3 = sub_1BABE6CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00]();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAAD6F7C(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE74BC();
  v9 = type metadata accessor for ReplicatorDevice(0);
  sub_1BABE74BC();
  sub_1BABE759C();
  v10 = (v1 + v9[7]);
  v11 = v10[1];
  MEMORY[0x1BFAFDC40](*v10);
  MEMORY[0x1BFAFDC40](v11);
  MEMORY[0x1BFAFDC20](*(v1 + v9[8]));
  v12 = v1 + v9[9];
  v13 = *(v12 + 16);
  v18[0] = *v12;
  v18[1] = v13;
  v19 = *(v12 + 32);
  sub_1BAB6DE1C();
  sub_1BAB6DEC0(a1, *(v1 + v9[10]));
  sub_1BAB6DEC0(a1, *(v1 + v9[11]));
  sub_1BAB6EE00(v1 + v9[12], v8, type metadata accessor for ReplicatorDevice.RelationshipState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
  v15 = (*(*(v14 - 8) + 48))(v8, 4, v14);
  if (v15 <= 1)
  {
    if (!v15)
    {
      (*(v4 + 32))(v6, v8, v3);
      MEMORY[0x1BFAFDC20](3);
      sub_1BABE74BC();
      (*(v4 + 8))(v6, v3);
      goto LABEL_11;
    }

    v16 = 0;
  }

  else if (v15 == 2)
  {
    v16 = 1;
  }

  else if (v15 == 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  MEMORY[0x1BFAFDC20](v16);
LABEL_11:
  sub_1BABE6C8C();
  sub_1BAAD6F7C(&qword_1EBC13980, MEMORY[0x1E6969530]);
  sub_1BABE74BC();
  sub_1BABE7FBC();
  if (*(v1 + v9[15] + 8))
  {
    sub_1BABE7FBC();
    sub_1BABE759C();
  }

  else
  {
    sub_1BABE7FBC();
  }

  if (*(v1 + v9[16] + 8))
  {
    sub_1BABE7FBC();
    sub_1BABE759C();
  }

  else
  {
    sub_1BABE7FBC();
  }

  if (!*(v1 + v9[17] + 8))
  {
    return sub_1BABE7FBC();
  }

  sub_1BABE7FBC();
  return sub_1BABE759C();
}

uint64_t sub_1BAB6D198(void (*a1)(_BYTE *))
{
  sub_1BABE7F9C();
  a1(v3);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1BABE6C8C();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE6CFC();
  v61 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13988);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v12 = &v52 - v11;
  v13 = type metadata accessor for ReplicatorDevice(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 36)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 16) = 256;
  v18 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1BAB6EA1C();
  v65 = v12;
  v19 = v66;
  sub_1BABE7FFC();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_4:
  }

  v66 = v13;
  v54 = v16;
  LOBYTE(v68) = 0;
  sub_1BAAD6F7C(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
  sub_1BABE7DCC();
  v21 = v6;
  v22 = *(v61 + 32);
  v23 = v54;
  v22(v54, v63, v21);
  LOBYTE(v68) = 1;
  sub_1BABE7DCC();
  v53 = 0;
  v24 = v66;
  v22(&v23[v66[5]], v9, v21);
  LOBYTE(v68) = 2;
  v25 = sub_1BABE7DAC();
  v26 = &v23[v24[6]];
  *v26 = v25;
  v26[1] = v27;
  v72 = 3;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  *&v23[v24[7]] = v68;
  v72 = 4;
  sub_1BAB6EC38();
  sub_1BABE7DCC();
  v23[v24[8]] = v68;
  v72 = 5;
  sub_1BAB6EC8C();
  sub_1BABE7D8C();
  v28 = v70;
  v29 = v71;
  v30 = v69;
  *v17 = v68;
  *(v17 + 1) = v30;
  v17[32] = v28;
  v17[33] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13940);
  v72 = 6;
  sub_1BAB6ECE0(&qword_1EBC139A0, sub_1BAB6ED58);
  sub_1BABE7DCC();
  *&v23[v24[10]] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13958);
  v72 = 7;
  sub_1BAB6EB6C(&qword_1EBC139B0, sub_1BAB6EDAC);
  sub_1BABE7DCC();
  *&v23[v24[11]] = v68;
  LOBYTE(v68) = 8;
  sub_1BAAD6F7C(&qword_1EBC139C0, type metadata accessor for ReplicatorDevice.RelationshipState);
  v33 = v57;
  sub_1BABE7DCC();
  sub_1BAB6E650(v33, &v23[v66[12]]);
  LOBYTE(v68) = 9;
  sub_1BAAD6F7C(&qword_1EBC139C8, MEMORY[0x1E6969530]);
  sub_1BABE7DCC();
  (*(v59 + 32))(&v54[v66[13]], v56, v60);
  LOBYTE(v68) = 10;
  v34 = sub_1BABE7DBC();
  v63 = 0;
  v54[v66[14]] = v34 & 1;
  LOBYTE(v68) = 11;
  v35 = v63;
  v36 = sub_1BABE7D4C();
  v63 = v35;
  if (v35 || (v39 = &v54[v66[15]], *v39 = v36, v39[1] = v37, LOBYTE(v68) = 12, v40 = v63, v41 = sub_1BABE7D4C(), v58 = v42, (v63 = v40) != 0))
  {
    (*(v62 + 8))(v65, v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v58 = 0;
    goto LABEL_12;
  }

  v43 = &v54[v66[16]];
  v44 = v58;
  *v43 = v41;
  v43[1] = v44;
  LOBYTE(v68) = 13;
  v45 = v63;
  v46 = sub_1BABE7D4C();
  v63 = v45;
  if (v45)
  {
    (*(v62 + 8))(v65, v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_12:
    LODWORD(v65) = 1;
    v38 = v54;
    v31 = *(v61 + 8);
    v31(v54, v21);
    if (!v53)
    {
      v31(&v38[v66[5]], v21);
    }

    v32 = v66;

    if (v65)
    {
      sub_1BAB6EE68(&v38[v32[12]], type metadata accessor for ReplicatorDevice.RelationshipState);
    }

    (*(v59 + 8))(&v38[v32[13]], v60);
    goto LABEL_4;
  }

  v48 = v46;
  v49 = v47;
  v50 = v54;
  v51 = &v54[v66[17]];
  (*(v62 + 8))(v65, v64);
  *v51 = v48;
  v51[1] = v49;
  sub_1BAB6EE00(v50, v55, type metadata accessor for ReplicatorDevice);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return sub_1BAB6EE68(v50, type metadata accessor for ReplicatorDevice);
}

uint64_t sub_1BAB6DD74(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1BABE7F9C();
  a3(v5);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB6DDD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BABE7F9C();
  a4(v6);
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB6DE1C()
{
  if (*(v0 + 33))
  {
    return sub_1BABE7FBC();
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v6 = *v0;
  v5 = v0[1];
  sub_1BABE7FBC();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1BFAFDC40](v7);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1BFAFDC40](v8);
  if (v4)
  {
    sub_1BABE7FBC();
  }

  else
  {
    sub_1BABE7FBC();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1BFAFDC40](v9);
  }

  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x1BFAFDC40](v10);
}

uint64_t sub_1BAB6DEC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1BFAFDC20](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1BABE759C();
      sub_1BABE759C();
      MEMORY[0x1BFAFDC40](v6);
      MEMORY[0x1BFAFDC40](v7);

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s18ReplicatorServices0A6DeviceV17RelationshipStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13A90);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v20 - v11;
  v13 = *(v10 + 56);
  sub_1BAB6EE00(a1, &v20 - v11, type metadata accessor for ReplicatorDevice.RelationshipState);
  sub_1BAB6EE00(a2, &v12[v13], type metadata accessor for ReplicatorDevice.RelationshipState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v12, 4, v14);
  if (v16 <= 1)
  {
    if (!v16)
    {
      sub_1BAB6EE00(v12, v9, type metadata accessor for ReplicatorDevice.RelationshipState);
      if (!v15(&v12[v13], 4, v14))
      {
        (*(v5 + 32))(v7, &v12[v13], v4);
        v17 = sub_1BABE6CCC();
        v19 = *(v5 + 8);
        v19(v7, v4);
        v19(v9, v4);
        sub_1BAB6EE68(v12, type metadata accessor for ReplicatorDevice.RelationshipState);
        return v17 & 1;
      }

      (*(v5 + 8))(v9, v4);
      goto LABEL_12;
    }

    if (v15(&v12[v13], 4, v14) == 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1BAB7026C(v12);
    v17 = 0;
    return v17 & 1;
  }

  if (v16 == 2)
  {
    if (v15(&v12[v13], 4, v14) == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v16 != 3)
  {
    if (v15(&v12[v13], 4, v14) == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v15(&v12[v13], 4, v14) != 3)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1BAB6EE68(v12, type metadata accessor for ReplicatorDevice.RelationshipState);
  v17 = 1;
  return v17 & 1;
}

BOOL _s18ReplicatorServices0A6DeviceV6ScreenV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_1BAB6E35C()
{
  result = qword_1EBC13858;
  if (!qword_1EBC13858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13858);
  }

  return result;
}

unint64_t sub_1BAB6E3B0()
{
  result = qword_1EBC13868;
  if (!qword_1EBC13868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13868);
  }

  return result;
}

unint64_t sub_1BAB6E404()
{
  result = qword_1EBC13880;
  if (!qword_1EBC13880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13880);
  }

  return result;
}

unint64_t sub_1BAB6E458()
{
  result = qword_1EBC138B8;
  if (!qword_1EBC138B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138B8);
  }

  return result;
}

unint64_t sub_1BAB6E4AC()
{
  result = qword_1EBC138C0;
  if (!qword_1EBC138C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138C0);
  }

  return result;
}

unint64_t sub_1BAB6E500()
{
  result = qword_1EBC138C8;
  if (!qword_1EBC138C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138C8);
  }

  return result;
}

unint64_t sub_1BAB6E554()
{
  result = qword_1EBC138D0;
  if (!qword_1EBC138D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138D0);
  }

  return result;
}

unint64_t sub_1BAB6E5A8()
{
  result = qword_1EBC138D8;
  if (!qword_1EBC138D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138D8);
  }

  return result;
}

unint64_t sub_1BAB6E5FC()
{
  result = qword_1EBC138E0;
  if (!qword_1EBC138E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC138E0);
  }

  return result;
}

uint64_t sub_1BAB6E650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB6E6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s18ReplicatorServices0A6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BABE6CCC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReplicatorDevice(0);
  if ((sub_1BABE6CCC() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1BABE7EDC() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v12 != v15 || v11 != v14)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = a1 + v17;
  v19 = *(a1 + v17 + 33);
  v20 = a2 + v17;
  v21 = *(v20 + 33);
  if (v19)
  {
    goto LABEL_14;
  }

  if (*(v20 + 33))
  {
    return 0;
  }

  v27 = *v18 == *v20 && *(v18 + 8) == *(v20 + 8);
  if (!v27 || *(v18 + 16) != *(v20 + 16))
  {
    return 0;
  }

  v21 = *(v20 + 32);
  if (*(v18 + 32))
  {
LABEL_14:
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v20 + 32) & 1) != 0 || *(v18 + 24) != *(v20 + 24))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]) || (_s18ReplicatorServices0A6DeviceV17RelationshipStateO2eeoiySbAE_AEtFZ_0(a1 + v4[12], a2 + v4[12]) & 1) == 0 || (sub_1BABE6C4C() & 1) == 0 || *(a1 + v4[14]) != *(a2 + v4[14]))
  {
    return 0;
  }

  v22 = v4[15];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_1BABE7EDC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v30 = v4[16];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1BABE7EDC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = v4[17];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (!v37)
  {
    if (!v39)
    {
      goto LABEL_53;
    }

    return 0;
  }

  if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1BABE7EDC() & 1) == 0)
  {
    return 0;
  }

LABEL_53:

  v41 = sub_1BABB6270(v40);

  v43 = sub_1BABB6270(v42);

  v44 = sub_1BAB2359C(v41, v43);

  if ((v44 & 1) == 0)
  {
    return 0;
  }

  v46 = sub_1BABB62B8(v45);

  v48 = sub_1BABB62B8(v47);

  v49 = sub_1BAB2359C(v46, v48);

  return v49 & 1;
}

unint64_t sub_1BAB6EA1C()
{
  result = qword_1EBC13928;
  if (!qword_1EBC13928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13928);
  }

  return result;
}

unint64_t sub_1BAB6EA70()
{
  result = qword_1EBC13930;
  if (!qword_1EBC13930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13930);
  }

  return result;
}

unint64_t sub_1BAB6EAC4()
{
  result = qword_1EBC13938;
  if (!qword_1EBC13938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13938);
  }

  return result;
}

unint64_t sub_1BAB6EB18()
{
  result = qword_1EBC13950;
  if (!qword_1EBC13950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13950);
  }

  return result;
}

uint64_t sub_1BAB6EB6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13958);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAB6EBE4()
{
  result = qword_1EBC13968;
  if (!qword_1EBC13968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13968);
  }

  return result;
}

unint64_t sub_1BAB6EC38()
{
  result = qword_1EBC13990;
  if (!qword_1EBC13990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13990);
  }

  return result;
}

unint64_t sub_1BAB6EC8C()
{
  result = qword_1EBC13998;
  if (!qword_1EBC13998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13998);
  }

  return result;
}

uint64_t sub_1BAB6ECE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13940);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAB6ED58()
{
  result = qword_1EBC139A8;
  if (!qword_1EBC139A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139A8);
  }

  return result;
}

unint64_t sub_1BAB6EDAC()
{
  result = qword_1EBC139B8;
  if (!qword_1EBC139B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139B8);
  }

  return result;
}

uint64_t sub_1BAB6EE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB6EE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BAB6EECC()
{
  result = qword_1EBC139D0;
  if (!qword_1EBC139D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139D0);
  }

  return result;
}

unint64_t sub_1BAB6EF24()
{
  result = qword_1EBC139D8;
  if (!qword_1EBC139D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorDevice.DeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicatorDevice.DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BAB6F194(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAB6F1B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatorDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAB6F3E0()
{
  result = qword_1EBC139E8;
  if (!qword_1EBC139E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139E8);
  }

  return result;
}

unint64_t sub_1BAB6F438()
{
  result = qword_1EBC139F0;
  if (!qword_1EBC139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139F0);
  }

  return result;
}

unint64_t sub_1BAB6F490()
{
  result = qword_1EBC139F8;
  if (!qword_1EBC139F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC139F8);
  }

  return result;
}

unint64_t sub_1BAB6F4E8()
{
  result = qword_1EBC13A00;
  if (!qword_1EBC13A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A00);
  }

  return result;
}

unint64_t sub_1BAB6F540()
{
  result = qword_1EBC13A08;
  if (!qword_1EBC13A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A08);
  }

  return result;
}

unint64_t sub_1BAB6F598()
{
  result = qword_1EBC13A10;
  if (!qword_1EBC13A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A10);
  }

  return result;
}

unint64_t sub_1BAB6F5F0()
{
  result = qword_1EBC13A18;
  if (!qword_1EBC13A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A18);
  }

  return result;
}

unint64_t sub_1BAB6F648()
{
  result = qword_1EBC13A20;
  if (!qword_1EBC13A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A20);
  }

  return result;
}

unint64_t sub_1BAB6F6A0()
{
  result = qword_1EBC13A28;
  if (!qword_1EBC13A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A28);
  }

  return result;
}

unint64_t sub_1BAB6F6F8()
{
  result = qword_1EBC13A30;
  if (!qword_1EBC13A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A30);
  }

  return result;
}

unint64_t sub_1BAB6F750()
{
  result = qword_1EBC13A38;
  if (!qword_1EBC13A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A38);
  }

  return result;
}

unint64_t sub_1BAB6F7A8()
{
  result = qword_1EBC13A40;
  if (!qword_1EBC13A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A40);
  }

  return result;
}

unint64_t sub_1BAB6F800()
{
  result = qword_1EBC13A48;
  if (!qword_1EBC13A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A48);
  }

  return result;
}

unint64_t sub_1BAB6F858()
{
  result = qword_1EBC13A50;
  if (!qword_1EBC13A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A50);
  }

  return result;
}

unint64_t sub_1BAB6F8B0()
{
  result = qword_1EBC13A58;
  if (!qword_1EBC13A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A58);
  }

  return result;
}

unint64_t sub_1BAB6F908()
{
  result = qword_1EBC13A60;
  if (!qword_1EBC13A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A60);
  }

  return result;
}

unint64_t sub_1BAB6F960()
{
  result = qword_1EBC13A68;
  if (!qword_1EBC13A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A68);
  }

  return result;
}

unint64_t sub_1BAB6F9B8()
{
  result = qword_1EBC13A70;
  if (!qword_1EBC13A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A70);
  }

  return result;
}

unint64_t sub_1BAB6FA10()
{
  result = qword_1EBC13A78;
  if (!qword_1EBC13A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A78);
  }

  return result;
}

unint64_t sub_1BAB6FA68()
{
  result = qword_1EBC13A80;
  if (!qword_1EBC13A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A80);
  }

  return result;
}

uint64_t sub_1BAB6FABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

uint64_t sub_1BAB6FBD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6972696170 && a2 == 0xE700000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646572696170 && a2 == 0xE600000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6974617267696DLL && a2 == 0xE900000000000067 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

uint64_t sub_1BAB6FD90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00444970696873 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6565726373 && a2 == 0xE600000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEC00000073657079 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BABF6F00 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BABF6F20 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xED0000656D614E67 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x49616E6F73726570 && a2 == 0xE900000000000044)
  {

    return 13;
  }

  else
  {
    v6 = sub_1BABE7EDC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1BAB70218()
{
  result = qword_1EBC13A88;
  if (!qword_1EBC13A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13A88);
  }

  return result;
}

uint64_t sub_1BAB7026C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAB702DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ReplicatorControlClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ReplicatorControlClient.init()();
  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorControlClient.setEnabled(_:)(Swift::Bool a1)
{
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v2 = sub_1BABE72BC();
  __swift_project_value_buffer(v2, qword_1EBC25030);
  v3 = sub_1BABE729C();
  v4 = sub_1BABE790C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1BAACF000, v3, v4, "Setting replicator enabled to %{BOOL,public}d", v5, 8u);
    MEMORY[0x1BFAFE460](v5, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1BABE794C();
}

uint64_t ReplicatorControlClient.getAllowList()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
  sub_1BABE794C();
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorControlClient.setAllowList(idsIDs:)(Swift::OpaquePointer idsIDs)
{
  v1 = sub_1BABE794C();
  if (v8 == 1)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1BABE794C();
  }

  else
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1EBC25030);
    v3 = sub_1BABE729C();
    v4 = sub_1BABE78EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BAACF000, v3, v4, "Allow List is disabled. Cannot update allow list.", v5, 2u);
      MEMORY[0x1BFAFE460](v5, -1, -1);
    }

    v6 = sub_1BABE6D1C();
    sub_1BAAD1508(&qword_1EBC13AB8, MEMORY[0x1E69C7298]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C7290], v6);
    swift_willThrow();
  }
}

uint64_t ReplicatorControlClient.pushToken(for:)()
{
  result = sub_1BABE794C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BAB70928(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AD8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = *a2;
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___deviceUpdates;
  swift_beginAccess();
  sub_1BAAD7BA0(v6, v11 + v12, &unk_1EBC13AC8);
  return swift_endAccess();
}

uint64_t ReplicatorControlClient.deviceUpdates.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AD8);
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___deviceUpdates;
  swift_beginAccess();
  sub_1BAAD7BA0(v5, v1 + v8, &unk_1EBC13AC8);
  return swift_endAccess();
}

uint64_t sub_1BAB70C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void (*ReplicatorControlClient.deviceUpdates.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AC8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AD8);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  ReplicatorControlClient.deviceUpdates.getter(v10);
  return sub_1BAB70DD4;
}

uint64_t ReplicatorControlClient.pairedDeviceUpdates.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

uint64_t sub_1BAB70F0C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BAB711AC(sub_1BAB78418, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BAB711AC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ReplicatorDevice(0);
  v38 = *(v36 - 8);
  v11 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  sub_1BABE6CEC();
  v15 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v15 + 4);
  v16 = swift_allocObject();
  v35 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_pairedDeviceObservers;
  swift_beginAccess();
  v34 = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  sub_1BAAD35A8(sub_1BAAD7CBC, v16, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v17) = v41;
  swift_endAccess();
  os_unfair_lock_unlock(v15 + 4);

  v40 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  result = sub_1BABE794C();
  v20 = v42;
  v21 = *(v42 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v36;
    v25 = v38;
    v37 = *(v42 + 16);
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = *(v25 + 72);
      sub_1BAB77A28(v20 + v26 + v27 * v22, v14, type metadata accessor for ReplicatorDevice);
      sub_1BAB77A28(&v14[*(v24 + 48)], v10, type metadata accessor for ReplicatorDevice.RelationshipState);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
      v29 = (*(*(v28 - 8) + 48))(v10, 4, v28);
      if ((v29 - 2) >= 2)
      {
        if (v29)
        {
          sub_1BAB78310(v10, type metadata accessor for ReplicatorDevice.RelationshipState);
          goto LABEL_4;
        }

        v30 = sub_1BABE6CFC();
        (*(*(v30 - 8) + 8))(v10, v30);
      }

      if ((v14[*(v24 + 56)] & 1) == 0)
      {
        sub_1BAB77A90(v14, v39);
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v42 = v23;
        if ((v31 & 1) == 0)
        {
          sub_1BAAFAAE0(0, *(v23 + 16) + 1, 1);
          v24 = v36;
          v23 = v42;
        }

        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1BAAFAAE0(v32 > 1, v33 + 1, 1);
          v24 = v36;
          v23 = v42;
        }

        *(v23 + 16) = v33 + 1;
        result = sub_1BAB77A90(v39, v23 + v26 + v33 * v27);
        v21 = v37;
        v25 = v38;
        goto LABEL_5;
      }

LABEL_4:
      result = sub_1BAB78310(v14, type metadata accessor for ReplicatorDevice);
LABEL_5:
      if (v21 == ++v22)
      {
        goto LABEL_17;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v35(v23);
}

uint64_t sub_1BAB71628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t ReplicatorControlClient.enabledStateUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___enabledStateUpdates;
  swift_beginAccess();
  sub_1BAAD2DAC(v1 + v13, v12, &qword_1EBC13AE8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1BAAD2E14(v12, &qword_1EBC13AE8);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  sub_1BABE780C();
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_1BAAD7BA0(v10, v1 + v13, &qword_1EBC13AE8);
  return swift_endAccess();
}

uint64_t sub_1BAB71984(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = *a2;
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___enabledStateUpdates;
  swift_beginAccess();
  sub_1BAAD7BA0(v6, v11 + v12, &qword_1EBC13AE8);
  return swift_endAccess();
}

uint64_t ReplicatorControlClient.enabledStateUpdates.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8);
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___enabledStateUpdates;
  swift_beginAccess();
  sub_1BAAD7BA0(v5, v1 + v8, &qword_1EBC13AE8);
  return swift_endAccess();
}

uint64_t sub_1BAB71C84(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C08);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v34 = sub_1BABE6CFC();
  v11 = *(v34 - 8);
  v33 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = *(v6 + 16);
  v16(v10, v38, v5);
  v16(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v10, v5);
  v19 = v15;
  sub_1BABE6CEC();
  v20 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v20 + 4);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1BAB77FB0;
  *(v21 + 24) = v18;
  v22 = OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock_enabledStateObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a2 + v22);
  *(a2 + v22) = 0x8000000000000000;
  sub_1BAAE6E94(sub_1BAB7802C, v21, v19, isUniquelyReferenced_nonNull_native);
  *(a2 + v22) = v40;
  swift_endAccess();
  os_unfair_lock_unlock(v20 + 4);

  v39 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  sub_1BABE794C();
  v24 = v35;
  v25 = v31;
  sub_1BABE77CC();

  (*(v36 + 8))(v24, v37);
  (*(v6 + 8))(v25, v5);
  v26 = v32;
  v27 = v34;
  (*(v11 + 16))(v32, v19, v34);
  v28 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  (*(v11 + 32))(v29 + v28, v26, v27);

  sub_1BABE77AC();
  return (*(v11 + 8))(v19, v27);
}

uint64_t sub_1BAB72144(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);
  sub_1BABE77CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB72240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB78084(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void (*ReplicatorControlClient.enabledStateUpdates.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  ReplicatorControlClient.enabledStateUpdates.getter(v10);
  return sub_1BAB723EC;
}

void sub_1BAB72408(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 56);
  v10 = *(*a1 + 64);
  v11 = *(*a1 + 48);
  if (a2)
  {
    (*(v7 + 16))(v6[7], v6[10], v6[8]);
    (*(v7 + 56))(v9, 0, 1, v10);
    v12 = *a3;
    swift_beginAccess();
    sub_1BAAD7BA0(v9, v11 + v12, a4);
    swift_endAccess();
    (*(v7 + 8))(v8, v10);
  }

  else
  {
    (*(v7 + 32))(v6[7], v6[10], v6[8]);
    (*(v7 + 56))(v9, 0, 1, v10);
    v13 = *a3;
    swift_beginAccess();
    sub_1BAAD7BA0(v9, v11 + v13, a4);
    swift_endAccess();
  }

  free(v8);
  free(v9);

  free(v6);
}

uint64_t ReplicatorControlClient.pairedDevices.getter()
{
  v1 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReplicatorDevice(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v27 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  result = sub_1BABE794C();
  v12 = v28;
  v26 = *(v28 + 16);
  if (v26)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    v25 = v4;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v16 = *(v5 + 72);
      sub_1BAB77A28(v12 + v15 + v16 * v13, v10, type metadata accessor for ReplicatorDevice);
      sub_1BAB77A28(&v10[*(v4 + 48)], v3, type metadata accessor for ReplicatorDevice.RelationshipState);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
      v18 = (*(*(v17 - 8) + 48))(v3, 4, v17);
      if ((v18 - 2) >= 2)
      {
        if (v18)
        {
          sub_1BAB78310(v3, type metadata accessor for ReplicatorDevice.RelationshipState);
          goto LABEL_4;
        }

        v19 = sub_1BABE6CFC();
        (*(*(v19 - 8) + 8))(v3, v19);
      }

      if ((v10[*(v4 + 56)] & 1) == 0)
      {
        sub_1BAB77A90(v10, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BAAFAAE0(0, *(v14 + 16) + 1, 1);
          v14 = v28;
        }

        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1BAAFAAE0(v21 > 1, v22 + 1, 1);
          v14 = v28;
        }

        *(v14 + 16) = v22 + 1;
        v8 = v24;
        result = sub_1BAB77A90(v24, v14 + v15 + v22 * v16);
        v4 = v25;
        goto LABEL_5;
      }

LABEL_4:
      result = sub_1BAB78310(v10, type metadata accessor for ReplicatorDevice);
LABEL_5:
      if (v26 == ++v13)
      {
        goto LABEL_17;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v14;
}

uint64_t ReplicatorControlClient.deinit()
{
  sub_1BAAD2E14(v0 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___deviceUpdates, &unk_1EBC13AC8);
  sub_1BAAD2E14(v0 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient____lazy_storage___enabledStateUpdates, &qword_1EBC13AE8);

  return v0;
}

uint64_t ReplicatorControlClient.__deallocating_deinit()
{
  ReplicatorControlClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BAB72B4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *))
{
  v6 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  swift_beginAccess();
  a4(0, 0, v8);
  return swift_endAccess();
}

uint64_t sub_1BAB72CE0()
{
  v0 = sub_1BABE794C();
  if (v8 == 1)
  {
    MEMORY[0x1EEE9AC00](v0);
    return sub_1BABE794C();
  }

  else
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1EBC25030);
    v3 = sub_1BABE729C();
    v4 = sub_1BABE78EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BAACF000, v3, v4, "Allow List is disabled. Cannot update allow list.", v5, 2u);
      MEMORY[0x1BFAFE460](v5, -1, -1);
    }

    v6 = sub_1BABE6D1C();
    sub_1BAAD1508(&qword_1EBC13AB8, MEMORY[0x1E69C7298]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C7290], v6);
    return swift_willThrow();
  }
}

uint64_t ReplicatorControlClient.pair(relationshipID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v11 = sub_1BABE72BC();
  __swift_project_value_buffer(v11, qword_1EBC25030);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_1BABE729C();
  v13 = sub_1BABE790C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v30 = v16;
    *v15 = 136446210;
    sub_1BAAD1508(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
    v18 = sub_1BABE7EAC();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_1BAAFA460(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1BAACF000, v12, v13, "Requesting pair with %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    a1 = v28;
    MEMORY[0x1BFAFE460](v22, -1, -1);
    v23 = v15;
    a3 = v27;
    MEMORY[0x1BFAFE460](v23, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v4;
  v24[3] = v25;
  v24[4] = a3;

  sub_1BAB734E8(a1, sub_1BAB77B7C, v24);
}

uint64_t sub_1BAB731EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BABE737C();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BABE73BC();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_calloutQueue);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_1BAB77F78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_89;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  v18 = a1;
  sub_1BABE739C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1BAAD1508(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_1BAB734E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue];
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v11, v10, v7);
  *(v13 + v12) = v3;
  v14 = (v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BAB77E34;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1BAB77ED0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BABE332C;
  aBlock[3] = &block_descriptor_77;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  dispatch_sync(v20, v16);
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAB737A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = a2;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v9 = sub_1BABE72BC();
  __swift_project_value_buffer(v9, qword_1EBC25030);
  v10 = *(v6 + 16);
  v26 = a1;
  v10(v8, a1, v5);
  v11 = sub_1BABE729C();
  v12 = sub_1BABE790C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v13 = 136446210;
    sub_1BAAD1508(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
    v14 = sub_1BABE7EAC();
    v24 = a3;
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_1BAAFA460(v14, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1BAACF000, v11, v12, v25, v13, 0xCu);
    v18 = v23;
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAFE460](v18, -1, -1);
    MEMORY[0x1BFAFE460](v13, -1, -1);
  }

  else
  {

    v19 = (*(v6 + 8))(v8, v5);
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v22 - 2) = v26;
  *(&v22 - 1) = v20;
  return sub_1BABE794C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorControlClient.retryStuckRelationships()()
{
  if (qword_1EBC12478 != -1)
  {
    swift_once();
  }

  v0 = sub_1BABE72BC();
  __swift_project_value_buffer(v0, qword_1EBC25030);
  v1 = sub_1BABE729C();
  v2 = sub_1BABE790C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BAACF000, v1, v2, "Requesting retry of stuck relationships", v3, 2u);
    MEMORY[0x1BFAFE460](v3, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1BABE794C();
}

uint64_t sub_1BAB73C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  return v1;
}

BOOL sub_1BAB73D78(void *a1, uint64_t *a2)
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

void *sub_1BAB73DA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1BAB73DD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1BAB73EAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BAB73EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BAB77DCC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BAB73F1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B70);
    sub_1BAAD1550(&qword_1ED787C20, &unk_1EBC12B70);
    v4 = sub_1BABE734C();
    *(v1 + v2) = v4;
  }

  return v4;
}

id sub_1BAB73FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Singleton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAB740E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29[1] = *MEMORY[0x1E69E9840];
  LocalDevice = type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice(0);
  MEMORY[0x1EEE9AC00](LocalDevice - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE73FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1BABE740C();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_1EBC12478 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1BABE72BC();
  __swift_project_value_buffer(v13, qword_1EBC25030);
  v14 = sub_1BABE729C();
  v15 = sub_1BABE790C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BAACF000, v14, v15, "Fetching local device", v16, 2u);
    MEMORY[0x1BFAFE460](v16, -1, -1);
  }

  v17 = sub_1BAAD5C54();
  if (v17)
  {
    v29[0] = 0;
    v18 = [v17 localDeviceAndReturnError_];
    v19 = v29[0];
    if (v18)
    {
      v20 = v18;
      sub_1BAB10E3C(v18, v6);
      v21 = v19;
      swift_unknownObjectRelease();

      return sub_1BAB77A90(v6, a1);
    }

    else
    {
      v28 = v29[0];
      sub_1BABE6ADC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = sub_1BABE729C();
    v24 = sub_1BABE78EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BAACF000, v23, v24, "Could not fetch local device because target could not be created", v25, 2u);
      MEMORY[0x1BFAFE460](v25, -1, -1);
    }

    v26 = sub_1BABE6D1C();
    sub_1BAAD1508(&qword_1EBC13AB8, MEMORY[0x1E69C7298]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69C7288], v26);
    return swift_willThrow();
  }
}

uint64_t sub_1BAB744D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  PushToken = type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken(0);
  MEMORY[0x1EEE9AC00](PushToken);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE6CFC();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = sub_1BAAD5C54();
  if (!v9)
  {
    v25 = sub_1BABE6D1C();
    sub_1BAAD1508(&qword_1EBC13AB8, MEMORY[0x1E69C7298]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69C7288], v25);
    swift_willThrow();
    return sub_1BAB78310(v7, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  }

  v10 = v9;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD1508(&qword_1EBC13028, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  v11 = sub_1BABE6A8C();
  if (!v2)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_1BABE6BDC();
    sub_1BAAD73E4(v13, v14);

    v31 = 0;
    v16 = [v10 pushTokenWithParameters:v15 error:&v31];

    v17 = v31;
    if (v16)
    {
      sub_1BABE6A7C();
      swift_allocObject();
      v18 = v17;
      sub_1BABE6A6C();
      v19 = sub_1BABE6BEC();
      v21 = v20;
      sub_1BAB231C8();
      sub_1BABE6A5C();
      sub_1BAAD73E4(v19, v21);

      v22 = v32;
      if (v32 >> 60 != 15)
      {
        v23 = v31;

        swift_unknownObjectRelease();
        result = sub_1BAB78310(v7, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
        *a2 = v23;
        a2[1] = v22;
        return result;
      }

      __break(1u);
      goto LABEL_10;
    }

    v27 = v31;
    sub_1BABE6ADC();

    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_1BAB78310(v7, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  }

LABEL_10:
  v28 = swift_unexpectedError();
  __break(1u);
  sub_1BAAD73E4(v28, v29);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB7489C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID(0);
  MEMORY[0x1EEE9AC00](PDRPairingID - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE6CFC();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = sub_1BAAD5C54();
  if (!v12)
  {
    v23 = sub_1BABE6D1C();
    sub_1BAAD1508(&qword_1EBC13AB8, MEMORY[0x1E69C7298]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69C7288], v23);
    swift_willThrow();
    return sub_1BAB78310(v10, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  }

  v13 = v12;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD1508(&unk_1EBC13BF0, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  v14 = sub_1BABE6A8C();
  if (!v2)
  {
    v16 = v14;
    v17 = v15;
    v18 = sub_1BABE6BDC();
    sub_1BAAD73E4(v16, v17);

    v26[0] = 0;
    v19 = [v13 pdrPairingIDWithParameters:v18 error:v26];

    v20 = v26[0];
    if (v19)
    {
      sub_1BAB11114(v19, v7);
      v21 = v20;

      swift_unknownObjectRelease();
      sub_1BAB78310(v10, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
      return sub_1BAB23414(v7, a2, &qword_1EBC12B60);
    }

    v25 = v26[0];
    sub_1BABE6ADC();

    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_1BAB78310(v10, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB74C1C(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *))
{
  v29 = a4;
  v27 = a3;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for ReplicatorControlXPCServerParameters.Pair(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  v26 = a1;
  v11(v10, a1, v5);
  v12 = sub_1BAAD5C54();
  v28 = v10;
  if (v12)
  {
    v25 = v12;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAAD1508(&unk_1EBC13BE0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
    v13 = sub_1BABE6A8C();
    v15 = v14;
    v16 = sub_1BABE6BDC();
    sub_1BAAD73E4(v13, v15);

    v11(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v5);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    (*(v6 + 32))(v18 + v17, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v19 = (v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    v20 = v29;
    *v19 = v27;
    v19[1] = v20;
    aBlock[4] = sub_1BAB77ED8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAB75498;
    aBlock[3] = &block_descriptor_83;
    v21 = _Block_copy(aBlock);

    [v25 pairWithParameters:v16 completion:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BAB15A08();
    v22 = swift_allocError();
    *v23 = 3;
    *(v23 + 8) = 0;

    v27(v22);
  }

  return sub_1BAB78310(v28, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
}

void sub_1BAB74FA4(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v42 = a3;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  if (a1)
  {
    v41 = a4;
    v14 = qword_1EBC12478;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_1BABE72BC();
    __swift_project_value_buffer(v16, qword_1EBC25030);
    (*(v8 + 16))(v11, a2, v7);
    v17 = v15;
    v18 = sub_1BABE729C();
    v19 = sub_1BABE790C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v20 = 136446466;
      sub_1BAAD1508(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
      v21 = sub_1BABE7EAC();
      v23 = v22;
      (*(v8 + 8))(v11, v7);
      v24 = sub_1BAAFA460(v21, v23, &v43);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v17;
      v25 = v39;
      *v39 = a1;
      v26 = v17;
      _os_log_impl(&dword_1BAACF000, v18, v19, "Failed to pair with %{public}s: %{public}@", v20, 0x16u);
      sub_1BAAD2E14(v25, &qword_1EBC12A00);
      MEMORY[0x1BFAFE460](v25, -1, -1);
      v27 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1BFAFE460](v27, -1, -1);
      MEMORY[0x1BFAFE460](v20, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v37 = v17;
    v42(a1);
  }

  else
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v28 = sub_1BABE72BC();
    __swift_project_value_buffer(v28, qword_1EBC25030);
    (*(v8 + 16))(v13, a2, v7);
    v29 = sub_1BABE729C();
    v30 = sub_1BABE790C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136446210;
      sub_1BAAD1508(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
      v33 = sub_1BABE7EAC();
      v35 = v34;
      (*(v8 + 8))(v13, v7);
      v36 = sub_1BAAFA460(v33, v35, &v43);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1BAACF000, v29, v30, "Paired with %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAFE460](v32, -1, -1);
      MEMORY[0x1BFAFE460](v31, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v42(0);
  }
}

void sub_1BAB75498(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1BAB75504(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ReplicatorControlXPCServerParameters.Unpair(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE6CFC();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  v7 = sub_1BAAD5C54();
  if (!v7)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0;

    swift_willThrow();
    return sub_1BAB78310(v5, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  }

  v8 = v7;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD1508(&qword_1EBC12FE8, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  v9 = sub_1BABE6A8C();
  if (!v1)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1BABE6BDC();
    sub_1BAAD73E4(v11, v12);

    v18[0] = 0;
    LOBYTE(v12) = [v8 unpairWithParameters:v13 error:v18];

    if (v12)
    {
      v14 = v18[0];
    }

    else
    {
      v16 = v18[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BAB78310(v5, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB75780(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE6CFC();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  v7 = sub_1BAAD5C54();
  if (!v7)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0;

    swift_willThrow();
    return sub_1BAB78310(v5, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  }

  v8 = v7;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD1508(&unk_1EBC13BD0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  v9 = sub_1BABE6A8C();
  if (!v1)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1BABE6BDC();
    sub_1BAAD73E4(v11, v12);

    v18[0] = 0;
    LOBYTE(v12) = [v8 unavailableWithParameters:v13 error:v18];

    if (v12)
    {
      v14 = v18[0];
    }

    else
    {
      v16 = v18[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BAB78310(v5, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB75A6C(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BAAD5C54();
  if (v4)
  {
    v5 = v4;
    v16[0] = a2;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB54F08();
    v6 = sub_1BABE6A8C();
    if (v2)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v8 = v6;
      v9 = v7;
      v10 = sub_1BABE6BDC();
      sub_1BAAD73E4(v8, v9);

      v16[0] = 0;
      v11 = [v5 setAllowListWithParameters:v10 error:v16];

      if (v11)
      {
        v12 = v16[0];
      }

      else
      {
        v15 = v16[0];
        sub_1BABE6ADC();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAB75C14(uint64_t a1, uint64_t a2, SEL *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAAD5C54();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BABE6CFC();
    (*(*(v11 - 8) + 16))(v8, a2, v11);
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAAD1508(&qword_1EBC13008, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
    v12 = sub_1BABE6A8C();
    if (v3)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v14 = v12;
      v15 = v13;
      v16 = sub_1BABE6BDC();
      sub_1BAAD73E4(v14, v15);

      v21[0] = 0;
      LOBYTE(v14) = [v10 *a3];

      if (v14)
      {
        v17 = v21[0];
      }

      else
      {
        v20 = v21[0];
        sub_1BABE6ADC();

        swift_willThrow();
      }

      swift_unknownObjectRelease();
      return sub_1BAB78310(v8, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAB75E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BAB75ED0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BAB75ED0()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = sub_1BAAD5C54();
  if (!v7)
  {
    if (qword_1EBC12478 == -1)
    {
LABEL_7:
      v16 = sub_1BABE72BC();
      __swift_project_value_buffer(v16, qword_1EBC25030);
      v17 = sub_1BABE729C();
      v18 = sub_1BABE78EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BAACF000, v17, v18, "Could not fetch allow list state because target could not be created", v19, 2u);
        MEMORY[0x1BFAFE460](v19, -1, -1);
      }

      goto LABEL_15;
    }

LABEL_18:
    swift_once();
    goto LABEL_7;
  }

  v34[0] = 0;
  v8 = [v7 isAllowListEnabledAndReturnError_];
  v9 = v34[0];
  if (!v8)
  {
    v20 = v34[0];
    v21 = sub_1BABE6ADC();

    swift_willThrow();
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v22 = sub_1BABE72BC();
    __swift_project_value_buffer(v22, qword_1EBC25030);
    v23 = v21;
    v24 = sub_1BABE729C();
    v25 = sub_1BABE78EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v33 = v21;
      v28 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C48);
      v29 = sub_1BABE755C();
      v31 = sub_1BAAFA460(v29, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1BAACF000, v24, v25, "Could not fetch allow list state: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAFE460](v27, -1, -1);
      MEMORY[0x1BFAFE460](v26, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

  v10 = v8;
  sub_1BABE6A7C();
  swift_allocObject();
  v11 = v9;
  sub_1BABE6A6C();
  v12 = sub_1BABE6BEC();
  v14 = v13;
  sub_1BAB23270();
  sub_1BABE6A5C();
  sub_1BAAD73E4(v12, v14);

  v15 = v34[0];
  if (LOBYTE(v34[0]) != 2)
  {
    swift_unknownObjectRelease();

    return v15 & 1;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB7634C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAB76388();
  *a1 = result;
  return result;
}

uint64_t sub_1BAB76388()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = sub_1BAAD5C54();
  if (!v7)
  {
    if (qword_1EBC12478 == -1)
    {
LABEL_7:
      v16 = sub_1BABE72BC();
      __swift_project_value_buffer(v16, qword_1EBC25030);
      v17 = sub_1BABE729C();
      v18 = sub_1BABE78EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BAACF000, v17, v18, "Could not fetch allow list because target could not be created", v19, 2u);
        MEMORY[0x1BFAFE460](v19, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_18:
    swift_once();
    goto LABEL_7;
  }

  v34[0] = 0;
  v8 = [v7 allowListAndReturnError_];
  v9 = v34[0];
  if (!v8)
  {
    v20 = v34[0];
    v21 = sub_1BABE6ADC();

    swift_willThrow();
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v22 = sub_1BABE72BC();
    __swift_project_value_buffer(v22, qword_1EBC25030);
    v23 = v21;
    v24 = sub_1BABE729C();
    v25 = sub_1BABE78EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v33 = v21;
      v28 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C48);
      v29 = sub_1BABE755C();
      v31 = sub_1BAAFA460(v29, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1BAACF000, v24, v25, "Could not fetch allow list: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAFE460](v27, -1, -1);
      MEMORY[0x1BFAFE460](v26, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v10 = v8;
  sub_1BABE6A7C();
  swift_allocObject();
  v11 = v9;
  sub_1BABE6A6C();
  v12 = sub_1BABE6BEC();
  v14 = v13;
  sub_1BAB2321C();
  sub_1BABE6A5C();
  sub_1BAAD73E4(v12, v14);

  v15 = v34[0];
  if (v34[0])
  {
    swift_unknownObjectRelease();

    return v15;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB76804()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BAAD5C54();
  if (v0)
  {
    v5[0] = 0;
    if ([v0 retryStuckRelationshipsAndReturnError_])
    {
      v1 = v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;

    return swift_willThrow();
  }
}

void sub_1BAB76900(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if ((*(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData) & 2) == 0)
  {
    sub_1BAB7695C();
    sub_1BAB76C58();
  }

  *a2 = *(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_isEnabled);
}

void sub_1BAB7695C()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  v7 = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_enabledStateToken;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_enabledStateToken) != -1)
  {
    return;
  }

  out_token = -1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BAB78370;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAB170D4;
  aBlock[3] = &block_descriptor_160;
  v9 = _Block_copy(aBlock);

  v10 = sub_1BABE756C();
  v11 = notify_register_dispatch((v10 + 32), &out_token, v6, v9);

  _Block_release(v9);
  if (v11)
  {
    v4 = v0;
    if (qword_1EBC12478 == -1)
    {
LABEL_5:
      v12 = sub_1BABE72BC();
      __swift_project_value_buffer(v12, qword_1EBC25030);
      v13 = sub_1BABE729C();
      v14 = sub_1BABE78EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1BAACF000, v13, v14, "Could not register for enabled state change notifications", v15, 2u);
        MEMORY[0x1BFAFE460](v15, -1, -1);
      }

      v0 = v4;
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

LABEL_8:
  *(v0 + v7) = out_token;
}

void sub_1BAB76C58()
{
  v1 = v0;
  v35[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BABE73FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = sub_1BABE740C();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v8 = sub_1BAAD5C54();
  if (v8)
  {
    v35[0] = 0;
    v9 = [v8 isEnabledAndReturnError_];
    v10 = v35[0];
    if (v9)
    {
      v11 = v9;
      sub_1BABE6A7C();
      swift_allocObject();
      v12 = v10;
      sub_1BABE6A6C();
      v13 = sub_1BABE6BEC();
      v15 = v14;
      sub_1BAB232C4();
      sub_1BABE6A5C();
      sub_1BAAD73E4(v13, v15);

      v16 = v35[0];
      if (LOBYTE(v35[0]) == 2)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
      }

      else
      {

        *(v1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_isEnabled) = v16 & 1;
        v17 = *(v1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData);
        if ((v17 & 2) == 0)
        {
          *(v1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_fetchedData) = v17 | 2;
        }

        LOBYTE(v35[0]) = v16 & 1;
        sub_1BABE732C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = v35[0];
      v23 = sub_1BABE6ADC();

      swift_willThrow();
      if (qword_1EBC12478 != -1)
      {
        swift_once();
      }

      v24 = sub_1BABE72BC();
      __swift_project_value_buffer(v24, qword_1EBC25030);
      v25 = v23;
      v26 = sub_1BABE729C();
      v27 = sub_1BABE78EC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        v34 = v23;
        v30 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C48);
        v31 = sub_1BABE755C();
        v33 = sub_1BAAFA460(v31, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1BAACF000, v26, v27, "Could not fetch enabled state: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1BFAFE460](v29, -1, -1);
        MEMORY[0x1BFAFE460](v28, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  if (qword_1EBC12478 != -1)
  {
    goto LABEL_18;
  }

LABEL_9:
  v18 = sub_1BABE72BC();
  __swift_project_value_buffer(v18, qword_1EBC25030);
  v19 = sub_1BABE729C();
  v20 = sub_1BABE78EC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BAACF000, v19, v20, "Could not fetch enabled state because target could not be created", v21, 2u);
    MEMORY[0x1BFAFE460](v21, -1, -1);
  }
}

uint64_t sub_1BAB77114(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, SEL *a5)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BAAD5C54();
  if (v9)
  {
    v10 = v9;
    LOBYTE(v22[0]) = a2 & 1;
    sub_1BABE6AAC();
    swift_allocObject();
    v11 = sub_1BABE6A9C();
    a3(v11, v12);
    v13 = sub_1BABE6A8C();
    if (v5)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v15 = v13;
      v16 = v14;
      v17 = sub_1BABE6BDC();
      sub_1BAAD73E4(v15, v16);

      v22[0] = 0;
      LOBYTE(v15) = [v10 *a5];

      if (v15)
      {
        v18 = v22[0];
      }

      else
      {
        v21 = v22[0];
        sub_1BABE6ADC();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

void sub_1BAB772E8()
{
  v0 = sub_1BABE737C();
  v31 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BABE73BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BABE736C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1BABE73EC();
  v33 = *(v35 - 8);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = v0;
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v15 = sub_1BABE72BC();
    __swift_project_value_buffer(v15, qword_1EBC25030);
    v16 = sub_1BABE729C();
    v17 = sub_1BABE790C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v6;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_1BAACF000, v16, v17, "Server says it has new devices", v18, 2u);
      v6 = v28;
      MEMORY[0x1BFAFE460](v19, -1, -1);
    }

    if (v14[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceFetchPending])
    {
    }

    else
    {
      v14[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceFetchPending] = 1;
      sub_1BABE73CC();
      *v8 = 100;
      v20 = v30;
      v21 = v32;
      (*(v30 + 104))(v8, *MEMORY[0x1E69E7F38], v32);
      sub_1BABE73DC();
      (*(v20 + 8))(v8, v21);
      v32 = v4;
      v33 = *(v33 + 8);
      (v33)(v11, v35);
      v30 = *&v14[OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue];
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_1BAB783A8;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD173C;
      aBlock[3] = &block_descriptor_170;
      v23 = _Block_copy(aBlock);
      v28 = v14;
      sub_1BABE739C();
      v36 = MEMORY[0x1E69E7CC0];
      sub_1BAAD1508(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
      v24 = v3;
      v25 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
      sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
      v26 = v29;
      sub_1BABE79FC();
      v27 = v34;
      MEMORY[0x1BFAFD5A0](v34, v6, v2, v23);
      _Block_release(v23);
      (*(v25 + 8))(v2, v26);
      (*(v32 + 8))(v6, v24);
      (v33)(v27, v35);
    }
  }
}

void sub_1BAB7789C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_1BAB7793C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BAB75ED0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BAB7797C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BAB76388();
  *a1 = result;
  return result;
}

uint64_t sub_1BAB77A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB77A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ReplicatorControlClient()
{
  result = qword_1EBC12528;
  if (!qword_1EBC12528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BAB77C70()
{
  result = qword_1EBC13B98;
  if (!qword_1EBC13B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13B98);
  }

  return result;
}

unint64_t sub_1BAB77CC8()
{
  result = qword_1EBC13BA0;
  if (!qword_1EBC13BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13BA0);
  }

  return result;
}

unint64_t sub_1BAB77D20()
{
  result = qword_1EBC13BA8;
  if (!qword_1EBC13BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13BA8);
  }

  return result;
}

unint64_t sub_1BAB77D78()
{
  result = qword_1EBC13BB0;
  if (!qword_1EBC13BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13BB0);
  }

  return result;
}

uint64_t sub_1BAB77DCC(uint64_t a1)
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

uint64_t sub_1BAB77E34()
{
  v1 = *(sub_1BABE6CFC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1BAB74C1C(v0 + v2, v4, v6, v7);
}

void sub_1BAB77ED8(void *a1)
{
  v3 = *(sub_1BABE6CFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1BAB74FA4(a1, v1 + v4, v6, v7);
}

uint64_t sub_1BAB77FB0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);

  return sub_1BAB72144(a1);
}

uint64_t objectdestroy_119Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_126Tm()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAB78250(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1BABE6CFC() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1BAB78310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BAB783A8()
{
  v1 = *(v0 + 16);
  sub_1BAAD4B70();
  *(v1 + OBJC_IVAR____TtC18ReplicatorServicesP33_D9C019F026B67C35EBD66B41D1820C119Singleton_queue_deviceFetchPending) = 0;
}

uint64_t sub_1BAB7844C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1BABE6CFC();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BAAFABF0(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1BAAFABF0(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1BAB7871C()
{
  type metadata accessor for MultipleDatabaseManager();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  *(v0 + 32) = v2;
  *(v0 + 40) = v2;
  off_1EBC121B0 = v0;
  return result;
}

void sub_1BAB7878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v77 = a4;
  v79 = a3;
  v75 = a2;
  v74 = a1;
  v89 = *MEMORY[0x1E69E9840];
  v68 = *v5;
  v62 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BABE6AFC();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BABE6BAC();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1BABE793C();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_calloutQueue;
  v73 = sub_1BAAD14BC();
  v80 = "UpdatingRecordData";
  sub_1BABE73AC();
  *&v88[0] = MEMORY[0x1E69E7CC0];
  v72 = sub_1BAB92D38(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  v13 = *MEMORY[0x1E69E8090];
  v14 = *(v86 + 104);
  v86 += 104;
  v70 = v10;
  v14(v10, v13, v85);
  v15 = sub_1BABE796C();
  v16 = v81;
  *(v81 + v84) = v15;
  v80 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_syncQueue;
  v69 = "hPersistence.callout";
  sub_1BABE73AC();
  *&v88[0] = MEMORY[0x1E69E7CC0];
  sub_1BABE79FC();
  v14(v70, v13, v85);
  v17 = v79;
  v18 = v80;
  *&v18[v16] = sub_1BABE796C();
  v19 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v20 = swift_allocObject();
  *(v16 + v19) = v20;
  v21 = v83;
  *(v16 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_recordObservers) = MEMORY[0x1E69E7CC8];
  *(v16 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) = 2;
  *(v20 + 16) = 0;
  v22 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL;
  v23 = v82;
  (*(v21 + 16))(v16 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL, v17);
  v24 = type metadata accessor for ReplicatorClientWithoutPersistence();
  swift_allocObject();
  v25 = v76;
  v26 = sub_1BABC4D30(v74, v75);
  v86 = v25;
  if (v25)
  {
    v27 = *(v21 + 8);
    v27(v17, v23);
    sub_1BAADAFD4(v77);
    v27(v16 + v22, v23);
LABEL_10:

    swift_deallocPartialClassInstance();
    return;
  }

  v28 = v66;
  v29 = v67;
  v30 = (v16 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v30[3] = v24;
  v30[4] = &off_1F38C2B50;
  v30[5] = &off_1F38C2B38;
  v30[6] = &off_1F38C2B10;
  v30[7] = &off_1F38C2AF8;
  v30[8] = &off_1F38C2AD8;
  v30[9] = &off_1F38C2AC0;
  v30[10] = &off_1F38C2AA0;
  v30[11] = &off_1F38C2A88;
  v30[12] = &off_1F38C2A40;
  v30[13] = &off_1F38C2A30;
  *v30 = v26;
  v31 = v26;
  v32 = objc_opt_self();

  v33 = [v32 defaultManager];
  v34 = sub_1BABE6B2C();
  *&v88[0] = 0;
  v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v88];

  v36 = *&v88[0];
  if (!v35)
  {
    v46 = *&v88[0];
    sub_1BABE6ADC();

    swift_willThrow();
    sub_1BAADAFD4(v77);

    v44 = *(v83 + 8);
    v45 = v82;
    v44(v17, v82);
    goto LABEL_9;
  }

  v85 = v31;
  *&v88[0] = 0xD000000000000014;
  *(&v88[0] + 1) = 0x80000001BABF5210;
  v37 = v63;
  (*(v29 + 104))(v28, *MEMORY[0x1E6968F68], v63);
  sub_1BAAFBFA8();
  v38 = v36;
  v39 = v64;
  sub_1BABE6B8C();
  (*(v29 + 8))(v28, v37);
  v40 = v77;
  if (qword_1EBC121A8 != -1)
  {
    swift_once();
  }

  v41 = v65;
  v42 = v86;
  sub_1BABB74F4(v40, v78, v65);
  v43 = v83;
  if (v42)
  {
    sub_1BAADAFD4(v40);

    v44 = *(v43 + 8);
    v45 = v82;
    v44(v17, v82);
    v44(v39, v45);
LABEL_9:
    v16 = v81;
    v44(v81 + v22, v45);
    __swift_destroy_boxed_opaque_existential_1(v16 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
    v18 = v80;
    goto LABEL_10;
  }

  v47 = *(v41 + *(v62 + 20));
  type metadata accessor for MetadataPersistentStore();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  v49 = v81;
  sub_1BAB92C54(v41, v81 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_database, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  type metadata accessor for RecordDataPersistentStore();
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v49 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_recordDataStore) = v50;
  *(v49 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_metadataStore) = v48;
  type metadata accessor for RunOncePersistentStore();
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  *(v49 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_runOnceStore) = v51;
  v52 = v85;
  v53 = *(v85 + 72);
  MEMORY[0x1EEE9AC00](v51);
  *(&v61 - 2) = sub_1BAB92D80;
  *(&v61 - 1) = v52;
  swift_retain_n();

  os_unfair_lock_lock(v53 + 4);
  sub_1BAB78084(v54);
  os_unfair_lock_unlock(v53 + 4);

  v87[0] = v88[0];
  v87[1] = v88[1];
  v87[2] = v88[2];
  v87[3] = v88[3];
  v87[4] = v88[4];
  v55 = v88[0];

  sub_1BAB21D34(v87);
  v56 = sub_1BAB914B8(v48, v55, *(&v55 + 1));

  *(v49 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata) = v56;
  v57 = v79;
  sub_1BAB8ED14(*(v49 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_recordDataStore), v79, &unk_1F38BC4C8);
  sub_1BAADAFD4(v77);

  v58 = *(v83 + 8);
  v59 = v57;
  v60 = v82;
  v58(v59, v82);
  sub_1BAB92CD8(v65, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  v58(v64, v60);
}

uint64_t sub_1BAB79438()
{
  v1 = v0;
  v2 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EBC121A8 != -1)
  {
    swift_once();
  }

  v5 = off_1EBC121B0;
  v6 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_database;
  v7 = sub_1BAB92C54(v1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_database, v4, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  v8 = *(v5 + 2);
  v9 = MEMORY[0x1EEE9AC00](v7);
  *&v15[-16] = v5;
  *&v15[-8] = v4;
  MEMORY[0x1EEE9AC00](v9);
  *&v15[-16] = sub_1BAB92CBC;
  *&v15[-8] = v10;
  os_unfair_lock_lock(v8 + 4);
  sub_1BAB7841C(v11);
  os_unfair_lock_unlock(v8 + 4);
  sub_1BAB92CD8(v4, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  v12 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL;
  v13 = sub_1BABE6BAC();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  sub_1BAB92CD8(v1 + v6, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);

  return v1;
}

uint64_t sub_1BAB79804()
{
  sub_1BAB79438();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ReplicatorClientWithPersistence()
{
  result = qword_1EBC12158;
  if (!qword_1EBC12158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAB798B0()
{
  result = sub_1BABE6BAC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BAB799BC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1BAB79A24()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1BAB79A90(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v4 = v3[3];
  v5 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 16))(a1, v4, v5);
}

uint64_t sub_1BAB79B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = (*v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v12 = v11[3];
  v13 = v11[10];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  return (*(v13 + 24))(a1, a2, a3, a4, v12, v13, a5);
}

uint64_t sub_1BAB79BB8()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_1BAB79C24()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 16))(v2);
}

uint64_t sub_1BAB79C90()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1BAB79CEC()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1BAB79D58()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 24) + 16))(v2);
}

uint64_t sub_1BAB79DC4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_1BAB79E2C(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v4 = v3[3];
  v5 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 16))(a1, v4, v5);
}

uint64_t sub_1BAB79EA8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BAB7A148(sub_1BAB92EF0, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BAB7A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BABE737C();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BABE73BC();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v13 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);
  v32 = v4;
  v33 = a3;
  v34 = a1;
  v35 = a2;
  v29 = sub_1BAB92BF4;
  v30 = &v31;

  os_unfair_lock_lock(v13 + 4);
  sub_1BAB7841C(v14);
  os_unfair_lock_unlock(v13 + 4);

  v15 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v16 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v15);
  v17 = (*(v16 + 64))(v15, v16);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v17;
  v20 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  v21 = sub_1BAB4C184(v19, v20);

  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  aBlock[4] = sub_1BAB92F0C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_73;
  v23 = _Block_copy(aBlock);

  sub_1BABE739C();
  v36 = v18;
  sub_1BAB92D38(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v12, v10, v23);
  _Block_release(v23);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v12, v27);
}

uint64_t sub_1BAB7A50C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BAB7A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  v18 = v25;
  sub_1BAB7A93C(v23, v24, sub_1BAB92A04, v17, v15);

  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v10 + 32))(v20 + v19, v13, v9);

  sub_1BABE77AC();
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1BAB7A838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  sub_1BABE77CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB7A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_1BABE737C();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BABE73BC();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;

  sub_1BABE6CEC();
  v19 = *(v6 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v19 + 4);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BAB92A3C;
  *(v20 + 24) = v18;
  v21 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_recordObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v6 + v21);
  *(v6 + v21) = 0x8000000000000000;
  sub_1BAAE7078(sub_1BAAD7CBC, v20, a5, isUniquelyReferenced_nonNull_native);
  *(v6 + v21) = v38;
  swift_endAccess();
  os_unfair_lock_unlock(v19 + 4);

  v23 = *(v6 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v24 = *(v6 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v23);
  v25 = (*(v24 + 64))(v23, v24);
  v26 = MEMORY[0x1E69E7CC0];
  v27 = v25;
  v28 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  v29 = sub_1BAB4C184(v27, v28);

  v30 = swift_allocObject();
  v30[2] = sub_1BAB92A3C;
  v30[3] = v18;
  v30[4] = v29;
  aBlock[4] = sub_1BAAD7DFC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_59_0;
  v31 = _Block_copy(aBlock);

  sub_1BABE739C();
  v38 = v26;
  sub_1BAB92D38(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v17, v14, v31);
  _Block_release(v31);

  (*(v36 + 8))(v14, v12);
  (*(v34 + 8))(v17, v35);
}

uint64_t sub_1BAB7ADB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void sub_1BAB7AE38()
{
  v1 = v0;
  v2._object = 0x80000001BABF72E0;
  v2._countAndFlagsBits = 0xD00000000000003ALL;
  v3 = RunOncePersistentStore.isComplete(_:)(v2);
  if (!v4)
  {
    if (v3)
    {
      MEMORY[0x1EEE9AC00](v3);
      sub_1BABE794C();
    }

    else
    {
      v5 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock;
      v6 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);
      v7 = MEMORY[0x1EEE9AC00](v3);
      MEMORY[0x1EEE9AC00](v7);

      os_unfair_lock_lock(v6 + 4);
      sub_1BAAF1130(&v13);
      os_unfair_lock_unlock(v6 + 4);
      v8 = v13;

      if (v8)
      {
        v10 = *(v1 + v5);
        v11 = MEMORY[0x1EEE9AC00](v9);
        MEMORY[0x1EEE9AC00](v11);

        os_unfair_lock_lock(v10 + 4);
        sub_1BAB7841C(v12);
        os_unfair_lock_unlock(v10 + 4);
      }
    }
  }
}

uint64_t sub_1BAB7B0C0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB7841C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BAB7B160(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v155 = a4;
  v164 = a3;
  v195 = a2;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v154 - v5;
  v185 = sub_1BABE6CFC();
  v194 = *(v185 - 8);
  v6 = MEMORY[0x1EEE9AC00](v185);
  v163 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v186 = &v154 - v8;
  v162 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v9 = MEMORY[0x1EEE9AC00](v162);
  v175 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v161 = &v154 - v11;
  v188 = type metadata accessor for ReplicatorRecord.ID(0);
  v158 = *(v188 - 8);
  v12 = MEMORY[0x1EEE9AC00](v188);
  v14 = (&v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v160 = (&v154 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v154 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v154 - v20;
  v22 = type metadata accessor for ReplicatorRecord(0);
  v193 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v154 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v154 - v29);
  v172 = a1;
  v31 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v32 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v31);
  v33 = v196;
  result = (*(v32 + 64))(v31, v32);
  v36 = v33;
  if (!v33)
  {
    v170 = v30;
    v159 = v28;
    v171 = v25;
    v187 = v21;
    v184 = v19;
    v154 = result;
    v201 = MEMORY[0x1E69E7CC8];
    v37 = v172;
    v167 = *(v195 + 16);
    if (v167)
    {
      v38 = 0;
      v157 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata;
      v183 = (v194 + 48);
      v168 = (v194 + 32);
      v173 = (v194 + 8);
      v166 = v195 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
      v165 = *(v193 + 72);
      v39 = MEMORY[0x1E69E7CD0];
      *&v35 = 136315138;
      v156 = v35;
      v40 = v164;
      v41 = v186;
      v42 = v171;
      v43 = v170;
      while (1)
      {
        v174 = v38;
        sub_1BAB92C54(v166 + v165 * v38, v43, type metadata accessor for ReplicatorRecord);
        v199 = v40;
        v45 = sub_1BAB7C92C(v43, &v199);
        if (v36)
        {
          break;
        }

        v189 = v39;
        if (v45)
        {
          v46 = v187;
          sub_1BAB92C54(v43, v187, type metadata accessor for ReplicatorRecord.ID);
          sub_1BABE7F9C();
          v47 = *v46;
          v195 = v46[1];
          v196 = v47;
          sub_1BABE759C();
          v48 = v46[2];
          v193 = v46[3];
          v194 = v48;
          sub_1BABE759C();
          v49 = v46[4];
          v190 = v46[5];
          v191 = v49;
          sub_1BABE759C();
          v182 = *(v188 + 28);
          v50 = v161;
          sub_1BAB92C54(v46 + v182, v161, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v51 = v185;
          v181 = *v183;
          if (v181(v50, 1, v185) == 1)
          {
            MEMORY[0x1BFAFDC20](0);
          }

          else
          {
            (*v168)(v41, v50, v51);
            MEMORY[0x1BFAFDC20](1);
            sub_1BAB92D38(&unk_1ED787C50, MEMORY[0x1E69695A8]);
            sub_1BABE74BC();
            (*v173)(v41, v51);
          }

          v63 = v175;
          v169 = 0;
          v64 = v188;
          v65 = (v46 + *(v188 + 32));
          v66 = v65[1];
          v177 = *v65;
          v176 = v66;
          sub_1BABE759C();
          v67 = sub_1BABE7FDC();
          v68 = v39 + 56;
          v69 = -1 << *(v39 + 32);
          v70 = v67 & ~v69;
          if ((*(v39 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
          {
            v71 = ~v69;
            v192 = *(v158 + 72);
            v72 = v184;
            v180 = ~v69;
            while (1)
            {
              sub_1BAB92C54(*(v39 + 48) + v192 * v70, v14, type metadata accessor for ReplicatorRecord.ID);
              v73 = *v14 == v196 && v14[1] == v195;
              if (!v73 && (sub_1BABE7EDC() & 1) == 0)
              {
                goto LABEL_21;
              }

              v74 = v14[2] == v194 && v14[3] == v193;
              if (!v74 && (sub_1BABE7EDC() & 1) == 0)
              {
                goto LABEL_21;
              }

              v75 = v14[4] == v191 && v14[5] == v190;
              if (!v75 && (sub_1BABE7EDC() & 1) == 0)
              {
                goto LABEL_21;
              }

              v76 = v68;
              v77 = v63;
              v78 = *(v179 + 48);
              v79 = v14 + *(v64 + 28);
              v80 = v178;
              sub_1BAB92C54(v79, v178, type metadata accessor for ReplicatorRecord.ID.Ownership);
              sub_1BAB92C54(v187 + v182, v80 + v78, type metadata accessor for ReplicatorRecord.ID.Ownership);
              v81 = v185;
              v82 = v181;
              if (v181(v80, 1, v185) == 1)
              {
                v83 = v82(v80 + v78, 1, v81);
                v63 = v77;
                if (v83 != 1)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                sub_1BAB92C54(v80, v77, type metadata accessor for ReplicatorRecord.ID.Ownership);
                if (v82(v80 + v78, 1, v81) == 1)
                {
                  (*v173)(v77, v81);
                  v63 = v77;
LABEL_19:
                  sub_1BAAD2E14(v80, &unk_1EBC12A28);
LABEL_20:
                  v39 = v189;
                  v64 = v188;
                  v41 = v186;
                  v72 = v184;
                  v68 = v76;
                  v71 = v180;
                  goto LABEL_21;
                }

                v84 = v163;
                (*v168)(v163, v80 + v78, v81);
                v85 = sub_1BABE6CCC();
                v86 = *v173;
                v87 = v84;
                v63 = v175;
                (*v173)(v87, v81);
                v86(v63, v81);
                if ((v85 & 1) == 0)
                {
                  sub_1BAB92CD8(v80, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  goto LABEL_20;
                }
              }

              sub_1BAB92CD8(v80, type metadata accessor for ReplicatorRecord.ID.Ownership);
              v64 = v188;
              v88 = (v14 + *(v188 + 32));
              v89 = *v88 == v177 && v88[1] == v176;
              v39 = v189;
              v41 = v186;
              v72 = v184;
              v68 = v76;
              v71 = v180;
              if (v89 || (sub_1BABE7EDC() & 1) != 0)
              {
                sub_1BAB92CD8(v14, type metadata accessor for ReplicatorRecord.ID);
                v91 = v187;
                goto LABEL_51;
              }

LABEL_21:
              sub_1BAB92CD8(v14, type metadata accessor for ReplicatorRecord.ID);
              v70 = (v70 + 1) & v71;
              if (((*(v68 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
              {
                goto LABEL_50;
              }
            }
          }

          v72 = v184;
LABEL_50:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v187;
          sub_1BAB92C54(v187, v72, type metadata accessor for ReplicatorRecord.ID);
          v199 = v39;
          sub_1BABB36E0(v72, v70, isUniquelyReferenced_nonNull_native);
          v39 = v199;
LABEL_51:
          sub_1BAB92CD8(v91, type metadata accessor for ReplicatorRecord.ID);
          v92 = v170;
          v93 = v160;
          sub_1BAB92C54(v170, v160, type metadata accessor for ReplicatorRecord.ID);
          v37 = v172;
          v94 = v157;
          swift_beginAccess();
          v95 = *(v37 + v94);
          if (*(v95 + 16) && (v96 = sub_1BABD5D18(v92), (v97 & 1) != 0))
          {
            v98 = *(*(v95 + 56) + 8 * v96);
          }

          else
          {
            v98 = 0;
          }

          v189 = v39;
          swift_endAccess();
          sub_1BAB30938(v98, v93);
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v99 = sub_1BABE72BC();
          __swift_project_value_buffer(v99, qword_1ED78BBA0);
          v100 = v92;
          v101 = v92;
          v102 = v159;
          sub_1BAB92C54(v100, v159, type metadata accessor for ReplicatorRecord);
          v103 = sub_1BABE729C();
          v104 = sub_1BABE78DC();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v197 = v106;
            *v105 = v156;
            v199 = 0;
            v200 = 0xE000000000000000;
            sub_1BABE7AEC();
            MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
            MEMORY[0x1BFAFD240](*(v102 + *(v64 + 32)), *(v102 + *(v64 + 32) + 8));
            MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
            MEMORY[0x1BFAFD240](v102[2], v102[3]);
            MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
            MEMORY[0x1BFAFD240](v102[4], v102[5]);
            MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
            sub_1BABE7BFC();
            v107 = v199;
            v108 = v200;
            sub_1BAB92CD8(v102, type metadata accessor for ReplicatorRecord);
            v109 = sub_1BAAFA460(v107, v108, &v197);

            *(v105 + 4) = v109;
            _os_log_impl(&dword_1BAACF000, v103, v104, "%s added to DB", v105, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v106);
            v110 = v106;
            v41 = v186;
            MEMORY[0x1BFAFE460](v110, -1, -1);
            MEMORY[0x1BFAFE460](v105, -1, -1);

            v43 = v170;
            v37 = v172;
            sub_1BAB92CD8(v170, type metadata accessor for ReplicatorRecord);
            v36 = v169;
            v39 = v189;
          }

          else
          {

            sub_1BAB92CD8(v102, type metadata accessor for ReplicatorRecord);
            sub_1BAB92CD8(v101, type metadata accessor for ReplicatorRecord);
            v36 = v169;
            v39 = v189;
            v43 = v101;
          }

          v40 = v164;
        }

        else
        {
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v52 = sub_1BABE72BC();
          __swift_project_value_buffer(v52, qword_1ED78BBA0);
          sub_1BAB92C54(v43, v42, type metadata accessor for ReplicatorRecord);
          v53 = v42;
          v54 = sub_1BABE729C();
          v55 = sub_1BABE78DC();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v197 = v57;
            *v56 = v156;
            v199 = 0;
            v200 = 0xE000000000000000;
            LODWORD(v196) = v55;
            sub_1BABE7AEC();
            MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
            MEMORY[0x1BFAFD240](*(v53 + *(v188 + 32)), *(v53 + *(v188 + 32) + 8));
            MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
            MEMORY[0x1BFAFD240](v53[2], v53[3]);
            MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
            MEMORY[0x1BFAFD240](v53[4], v53[5]);
            MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
            sub_1BABE7BFC();
            v58 = v199;
            v59 = v200;
            sub_1BAB92CD8(v53, type metadata accessor for ReplicatorRecord);
            v60 = sub_1BAAFA460(v58, v59, &v197);
            v36 = 0;
            v43 = v170;

            *(v56 + 4) = v60;
            _os_log_impl(&dword_1BAACF000, v54, v196, "%s not added to DB", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v57);
            v61 = v57;
            v41 = v186;
            MEMORY[0x1BFAFE460](v61, -1, -1);
            v62 = v56;
            v40 = v164;
            MEMORY[0x1BFAFE460](v62, -1, -1);

            v44 = v43;
            v37 = v172;
          }

          else
          {

            sub_1BAB92CD8(v53, type metadata accessor for ReplicatorRecord);
            v44 = v43;
          }

          sub_1BAB92CD8(v44, type metadata accessor for ReplicatorRecord);
          v39 = v189;
        }

        v38 = v174 + 1;
        v42 = v171;
        if (v174 + 1 == v167)
        {
          goto LABEL_63;
        }
      }

      sub_1BAB92CD8(v43, type metadata accessor for ReplicatorRecord);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CD0];
LABEL_63:
      v189 = v39;
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v111 = sub_1BABE72BC();
      __swift_project_value_buffer(v111, qword_1ED78BBA0);
      v112 = sub_1BABE729C();
      v113 = sub_1BABE78DC();
      v114 = os_log_type_enabled(v112, v113);
      v169 = v36;
      if (v114)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v199 = v116;
        *v115 = 136315138;
        sub_1BAB92D38(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);

        v117 = sub_1BABE782C();
        v118 = v37;
        v120 = v119;

        v121 = sub_1BAAFA460(v117, v120, &v199);
        v37 = v118;

        *(v115 + 4) = v121;
        _os_log_impl(&dword_1BAACF000, v112, v113, "changedIDs: %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x1BFAFE460](v116, -1, -1);
        MEMORY[0x1BFAFE460](v115, -1, -1);
      }

      v122 = sub_1BABE729C();
      v123 = sub_1BABE78DC();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v199 = v125;
        *v124 = 136315138;
        swift_beginAccess();
        sub_1BABE6F4C();
        sub_1BAB92D38(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);

        v126 = sub_1BABE745C();
        v128 = v127;

        v129 = sub_1BAAFA460(v126, v128, &v199);
        v37 = v172;

        *(v124 + 4) = v129;
        _os_log_impl(&dword_1BAACF000, v122, v123, "localMetadata: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v125);
        MEMORY[0x1BFAFE460](v125, -1, -1);
        MEMORY[0x1BFAFE460](v124, -1, -1);
      }

      v130 = sub_1BABE729C();
      v131 = sub_1BABE78DC();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v199 = v133;
        *v132 = 136315138;
        sub_1BAB92D38(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);
        v134 = sub_1BABE745C();
        v136 = v37;
        v137 = sub_1BAAFA460(v134, v135, &v199);

        *(v132 + 4) = v137;
        v37 = v136;
        _os_log_impl(&dword_1BAACF000, v130, v131, "daemonVersions: %s", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v133);
        MEMORY[0x1BFAFE460](v133, -1, -1);
        MEMORY[0x1BFAFE460](v132, -1, -1);
      }

      v138 = v189;
      v139 = v155;
      if (*(v37 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) == 2)
      {
        swift_beginAccess();
        v140 = v201;
        LOBYTE(v198) = v139 & 1;

        sub_1BAB7DDC8(v138, v140, v154, &v198);
        v142 = v141;

        v143 = sub_1BABE729C();
        v144 = sub_1BABE78DC();

        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v198 = v146;
          *v145 = 136315138;
          v147 = type metadata accessor for ReplicatorRecordChange();
          v148 = MEMORY[0x1BFAFD330](v142, v147);
          v150 = sub_1BAAFA460(v148, v149, &v198);

          *(v145 + 4) = v150;
          _os_log_impl(&dword_1BAACF000, v143, v144, "Synced changes: %s", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v146);
          MEMORY[0x1BFAFE460](v146, -1, -1);
          MEMORY[0x1BFAFE460](v145, -1, -1);
        }

        sub_1BAB7E440(v142);
      }

      else
      {

        v151 = sub_1BABE729C();
        v152 = sub_1BABE78DC();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&dword_1BAACF000, v151, v152, "Sync already scheduled", v153, 2u);
          MEMORY[0x1BFAFE460](v153, -1, -1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BAB7C92C(uint64_t *a1, uint64_t *a2)
{
  v142 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v145 = &v117 - v4;
  v146 = sub_1BABE728C();
  *&v137 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v151 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ReplicatorRecord.Value(0);
  v150 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v149 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E08);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v148 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v117 - v10;
  v154 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v154);
  v128 = (&v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v141 = &v117 - v13;
  v139 = sub_1BABE6CFC();
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v140 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1BABE6F1C();
  v132 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v117 - v19;
  v21 = sub_1BABE70CC();
  v136 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v117 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v117 - v28;
  v30 = *v142;
  v31 = v153;
  v32 = sub_1BAB7FD30();
  v33 = &v158;
  v135 = v31;
  if (v31)
  {
    return v33 & 1;
  }

  v129 = v24;
  v138 = v18;
  v142 = a1;
  v133 = v29;
  v131 = v20;
  v134 = v21;
  v153 = v32;
  v130 = v30;
  if (v30)
  {
    *v27 = v30;
    v34 = MEMORY[0x1E69C72D0];
  }

  else
  {
    v34 = MEMORY[0x1E69C72D8];
  }

  v35 = v132;
  v36 = v134;
  v37 = v133;
  v38 = v142;
  v39 = v154;
  v40 = v136;
  (*(v136 + 104))(v27, *v34, v134);
  (*(v40 + 32))(v37, v27, v36);
  if (*(v38 + *(v39 + 8)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C70);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BABE9F00;

    sub_1BABE6EEC();
    v155 = v42;
    sub_1BAB92D38(&unk_1EBC12210, MEMORY[0x1E69C72B0]);
  }

  else
  {
    v155 = MEMORY[0x1E69E7CC0];
    sub_1BAB92D38(&unk_1EBC12210, MEMORY[0x1E69C72B0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C68);
  sub_1BAAD1598(&qword_1EBC11D80, &qword_1EBC13C68);
  v41 = v131;
  sub_1BABE79FC();
  v44 = *v38;
  v43 = v38[1];
  v45 = v154;
  v46 = *(v143 + 16);
  v124 = v38 + *(v154 + 5);
  v143 += 16;
  v123 = v46;
  v46(v140);
  v47 = *(v136 + 16);
  v122 = v136 + 16;
  v121 = v47;
  v47(v129, v133, v134);
  v120 = v38 + *(v45 + 7);
  sub_1BAAD2DAC(v120, v141, &qword_1EBC132A0);
  v48 = *(v35 + 16);
  v127 = v15;
  v119 = v35 + 16;
  v118 = v48;
  v48(v138, v41, v15);
  sub_1BABE6F4C();
  swift_allocObject();

  v126 = v44;
  v125 = v43;
  v130 = sub_1BABE6ECC();
  v49 = (v152 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata);
  swift_beginAccess();
  v50 = *v49;
  if (!*(*v49 + 16) || (v51 = sub_1BABD5D18(v38), (v52 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v53 = *(*(v50 + 56) + 8 * v51);
  swift_endAccess();
  v155 = v53;
  v157 = v130;
  sub_1BAB92D38(&qword_1EBC12208, MEMORY[0x1E69C72C0]);

  if ((sub_1BABE74DC() & 1) == 0)
  {

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABF1250;
    *(inited + 32) = v130;

    MetadataPersistentStore.update(_:)(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v123(v140, v124, v139);
    v121(v129, v133, v134);
    sub_1BAAD2DAC(v120, v141, &qword_1EBC132A0);
    v118(v138, v131, v127);
    swift_allocObject();

    v65 = sub_1BABE6ECC();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v49;
    *v49 = 0x8000000000000000;
    v129 = v65;
    v67 = v65;
    v68 = v142;
    sub_1BAAE6ED4(v67, v142, isUniquelyReferenced_nonNull_native);
    *v49 = v157;
    swift_endAccess();
    v69 = *(v68 + *(v154 + 6));
    v70 = v69 + 64;
    v71 = 1 << *(v69 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v69 + 64);
    v142 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_recordDataStore;
    v138 = (v71 + 63) >> 6;
    v141 = 0x80000001BABF7320;
    v140 = (v137 + 8);
    v139 = v69;

    v74 = 0;
    *&v75 = 138543362;
    v137 = v75;
    v76 = v135;
    v77 = v150;
    v78 = v151;
    v79 = v149;
    v143 = v70;
    while (v73)
    {
      v80 = v74;
LABEL_30:
      v83 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      v84 = v83 | (v80 << 6);
      v85 = *(*(v139 + 48) + 8 * v84);
      sub_1BAB92C54(*(v139 + 56) + *(v77 + 72) * v84, v79, type metadata accessor for ReplicatorRecord.Value);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
      v87 = *(v86 + 48);
      v88 = v148;
      *v148 = v85;
      v89 = v88;
      sub_1BAB92E38(v79, v88 + v87, type metadata accessor for ReplicatorRecord.Value);
      (*(*(v86 - 8) + 56))(v89, 0, 1, v86);
LABEL_31:
      v90 = v89;
      v91 = v147;
      sub_1BAB23414(v90, v147, &qword_1EBC12E08);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
      if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
      {

        (*(v132 + 8))(v131, v127);
        (*(v136 + 8))(v133, v134);
        LOBYTE(v33) = 1;
        return v33 & 1;
      }

      v93 = (v91 + *(v92 + 48));
      v94 = v78;
      v96 = *v93;
      v95 = v93[1];
      sub_1BAAD2DAC(v93 + *(v144 + 20), v145, &unk_1EBC13D70);
      sub_1BAAE7824(v96, v95);
      sub_1BAB92CD8(v93, type metadata accessor for ReplicatorRecord.Value);
      v97 = sub_1BABE724C();
      v154 = &v117;
      v98 = v76;
      v99 = *(*(v142 + v152) + 16);
      MEMORY[0x1EEE9AC00](v97);
      *(&v117 - 2) = v153;
      *(&v117 - 1) = v94;
      type metadata accessor for Database.MutableStore();
      swift_allocObject();
      v100 = sub_1BAB97B68();
      v101 = *(v99 + 96);
      v102 = MEMORY[0x1EEE9AC00](v100);
      *(&v117 - 6) = v99;
      *(&v117 - 5) = 0xD000000000000012;
      *(&v117 - 4) = v141;
      *(&v117 - 3) = sub_1BAB922B4;
      *(&v117 - 2) = (&v117 - 4);
      *(&v117 - 1) = v102;
      MEMORY[0x1EEE9AC00](v102);
      *(&v117 - 2) = sub_1BAB922D0;
      *(&v117 - 1) = v103;
      os_unfair_lock_lock(v101 + 4);
      v104 = v98;
      sub_1BAB7841C(v105);
      v76 = v98;
      v106 = v101 + 4;
      if (v98)
      {
        os_unfair_lock_unlock(v106);
        sub_1BAB9739C();

        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v107 = sub_1BABE72BC();
        __swift_project_value_buffer(v107, qword_1EBC25018);
        v108 = v98;
        v109 = sub_1BABE729C();
        v110 = sub_1BABE78EC();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = v137;
          v113 = v104;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v111 + 4) = v114;
          *v112 = v114;
          _os_log_impl(&dword_1BAACF000, v109, v110, "Could not update record data: %{public}@", v111, 0xCu);
          sub_1BAAD2E14(v112, &qword_1EBC12A00);
          MEMORY[0x1BFAFE460](v112, -1, -1);
          MEMORY[0x1BFAFE460](v111, -1, -1);
        }

        else
        {
        }

        v76 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v106);
        sub_1BAB9739C();
      }

      v78 = v151;
      v70 = v143;
      (*v140)(v151, v146);
      v79 = v149;
      v77 = v150;
    }

    if (v138 <= v74 + 1)
    {
      v81 = v74 + 1;
    }

    else
    {
      v81 = v138;
    }

    v82 = v81 - 1;
    while (1)
    {
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v80 >= v138)
      {
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
        v89 = v148;
        (*(*(v115 - 8) + 56))(v148, 1, 1, v115);
        v73 = 0;
        v74 = v82;
        goto LABEL_31;
      }

      v73 = *(v70 + 8 * v80);
      ++v74;
      if (v73)
      {
        v74 = v80;
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  if (qword_1ED7876D0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v54 = sub_1BABE72BC();
  __swift_project_value_buffer(v54, qword_1ED78BBA0);
  v55 = v128;
  sub_1BAB92C54(v142, v128, type metadata accessor for ReplicatorRecord);
  v56 = sub_1BABE729C();
  v57 = sub_1BABE790C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v157 = v59;
    *v58 = 136446210;
    v155 = 0;
    v156 = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    v60 = type metadata accessor for ReplicatorRecord.ID(0);
    MEMORY[0x1BFAFD240](*(v55 + *(v60 + 32)), *(v55 + *(v60 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v55[2], v55[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v55[4], v55[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v61 = v155;
    v62 = v156;
    sub_1BAB92CD8(v55, type metadata accessor for ReplicatorRecord);
    v63 = sub_1BAAFA460(v61, v62, &v157);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_1BAACF000, v56, v57, "[%{public}s] No changes to added record", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1BFAFE460](v59, -1, -1);
    MEMORY[0x1BFAFE460](v58, -1, -1);
  }

  else
  {

    sub_1BAB92CD8(v55, type metadata accessor for ReplicatorRecord);
  }

  (*(v132 + 8))(v131, v127);
  (*(v136 + 8))(v133, v134);
  LOBYTE(v33) = 0;
  return v33 & 1;
}

void sub_1BAB7DDC8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v55 = a2;
  v56 = a3;
  v54 = *v4;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16))
  {
    v11 = *a4;
    v12 = *(v4 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_runOnceStore);
    v13._object = 0x80000001BABF72E0;
    v13._countAndFlagsBits = 0xD00000000000003ALL;
    v14 = RunOncePersistentStore.isComplete(_:)(v13);
    if (v15)
    {
      if (qword_1ED7876D0 != -1)
      {
LABEL_33:
        swift_once();
      }

      v16 = sub_1BABE72BC();
      __swift_project_value_buffer(v16, qword_1ED78BBA0);
      v17 = v15;
      v18 = sub_1BABE729C();
      v19 = sub_1BABE78EC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543362;
        v22 = v15;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1BAACF000, v18, v19, "Failed to fetch first cache sync state from database: %{public}@", v20, 0xCu);
        sub_1BAAD2E14(v21, &qword_1EBC12A00);
        MEMORY[0x1BFAFE460](v21, -1, -1);
        MEMORY[0x1BFAFE460](v20, -1, -1);
      }
    }

    else
    {
      v28 = v14;
      v51 = v11;
      v50[0] = "lock_localMetadata";
      v50[1] = v12;
      v29 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
      v30 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 64);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v29);
      v52 = (*(*(v30 + 16) + 8))(v29);
      v57[0] = MEMORY[0x1E69E7CC0];
      v31 = 1 << *(a1 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(a1 + 56);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      if (v33)
      {
        while (1)
        {
          v36 = v35;
LABEL_19:
          v37 = sub_1BAB92C54(*(a1 + 48) + *(v53 + 72) * (__clz(__rbit64(v33)) | (v36 << 6)), v10, type metadata accessor for ReplicatorRecord.ID);
          v38 = MEMORY[0x1BFAFDD00](v37);
          sub_1BAB8740C(v55, v10, v56, v5, v52, v57, v51, v28);
          v33 &= v33 - 1;
          sub_1BAB92CD8(v10, type metadata accessor for ReplicatorRecord.ID);
          objc_autoreleasePoolPop(v38);
          v35 = v36;
          if (!v33)
          {
            goto LABEL_16;
          }
        }
      }

      while (1)
      {
LABEL_16:
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v36 >= v34)
        {
          break;
        }

        v33 = *(a1 + 56 + 8 * v36);
        ++v35;
        if (v33)
        {
          goto LABEL_19;
        }
      }

      if (!v28)
      {
        if (qword_1ED7876D0 != -1)
        {
          swift_once();
        }

        v39 = sub_1BABE72BC();
        __swift_project_value_buffer(v39, qword_1ED78BBA0);
        v40 = sub_1BABE729C();
        v41 = sub_1BABE790C();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v50[0];
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1BAACF000, v40, v41, "First cache sync is complete", v44, 2u);
          MEMORY[0x1BFAFE460](v44, -1, -1);
        }

        v45._object = (v43 | 0x8000000000000000);
        v45._countAndFlagsBits = 0xD00000000000003ALL;
        RunOncePersistentStore.complete(_:)(v45);
      }

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v46 = sub_1BABE72BC();
      __swift_project_value_buffer(v46, qword_1ED78BBA0);
      v47 = sub_1BABE729C();
      v48 = sub_1BABE790C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134349056;
        swift_beginAccess();
        *(v49 + 4) = *(v57[0] + 16);
        _os_log_impl(&dword_1BAACF000, v47, v48, "Sync complete; found %{public}ld changes", v49, 0xCu);
        MEMORY[0x1BFAFE460](v49, -1, -1);
      }

      swift_beginAccess();
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BABE72BC();
    __swift_project_value_buffer(v24, qword_1ED78BBA0);
    v25 = sub_1BABE729C();
    v26 = sub_1BABE790C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BAACF000, v25, v26, "Sync abandoned; no changes detected", v27, 2u);
      MEMORY[0x1BFAFE460](v27, -1, -1);
    }
  }
}

uint64_t sub_1BAB7E440(uint64_t a1)
{
  v3 = sub_1BABE737C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE73BC();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v14[1] = *(v1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_calloutQueue);
    v15 = result;
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    aBlock[4] = sub_1BAB8F318;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAAD173C;
    aBlock[3] = &block_descriptor_15;
    v13 = _Block_copy(aBlock);

    sub_1BABE739C();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1BAB92D38(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v11, v6, v13);
    _Block_release(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v15);
  }

  return result;
}

uint64_t sub_1BAB7E710()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB7841C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BAB7E7C0()
{
  v1 = v0;
  v2._object = 0x80000001BABF72E0;
  v2._countAndFlagsBits = 0xD00000000000003ALL;
  v3 = RunOncePersistentStore.isComplete(_:)(v2);
  if (!v4)
  {
    if (v3)
    {
      MEMORY[0x1EEE9AC00](v3);
      sub_1BABE794C();
    }

    else
    {
      v5 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock;
      v6 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);
      v7 = MEMORY[0x1EEE9AC00](v3);
      MEMORY[0x1EEE9AC00](v7);

      os_unfair_lock_lock(v6 + 4);
      sub_1BAAF0E90(&v13);
      os_unfair_lock_unlock(v6 + 4);
      v8 = v13;

      if (v8)
      {
        v10 = *(v1 + v5);
        v11 = MEMORY[0x1EEE9AC00](v9);
        MEMORY[0x1EEE9AC00](v11);

        os_unfair_lock_lock(v10 + 4);
        sub_1BAB7841C(v12);
        os_unfair_lock_unlock(v10 + 4);
      }
    }
  }
}

uint64_t sub_1BAB7EA38(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB7841C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BAB7EAD4(uint64_t a1, uint64_t a2, int a3)
{
  v74 = a3;
  v106 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v93);
  v5 = &v73 - v4;
  v97 = sub_1BABE6CFC();
  v105 = *(v97 - 8);
  v6 = MEMORY[0x1EEE9AC00](v97);
  v81 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v73 - v8;
  v9 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - v12;
  v13 = type metadata accessor for ReplicatorRecord.ID(0);
  v104 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v73 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v73 - v23);
  v79 = a1;
  v25 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v26 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v25);
  v27 = v108;
  result = (*(v26 + 64))(v25, v26);
  v29 = v27;
  if (!v27)
  {
    v99 = v22;
    v76 = v24;
    v75 = v19;
    v73 = result;
    v98 = v13;
    v83 = *(v106 + 16);
    if (v83)
    {
      v30 = 0;
      v103 = *(v104 + 72);
      v96 = (v105 + 48);
      v84 = (v105 + 32);
      v86 = (v105 + 8);
      v82 = v106 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
      v100 = MEMORY[0x1E69E7CD0];
      v31 = v79;
      v32 = v93;
      v33 = v78;
      v34 = v98;
      v35 = v76;
      while (1)
      {
        v87 = v30;
        sub_1BAB92C54(v82 + v103 * v30, v35, type metadata accessor for ReplicatorRecord.ID);
        v40 = sub_1BAB7F5D0(v35);
        if (v29)
        {

          sub_1BAB92CD8(v35, type metadata accessor for ReplicatorRecord.ID);
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_6;
        }

        v80 = 0;
        v41 = v99;
        sub_1BAB92C54(v35, v99, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABE7F9C();
        v42 = v41[1];
        v108 = *v41;
        v106 = v42;
        sub_1BABE759C();
        v43 = v41[2];
        v104 = v41[3];
        v105 = v43;
        sub_1BABE759C();
        v44 = v41[4];
        v101 = v41[5];
        v102 = v44;
        sub_1BABE759C();
        v95 = *(v34 + 28);
        v45 = v41 + v95;
        v46 = v77;
        sub_1BAB92C54(v45, v77, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v47 = v97;
        v94 = *v96;
        if (v94(v46, 1, v97) == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          (*v84)(v33, v46, v47);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAB92D38(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          (*v86)(v33, v47);
        }

        v48 = v88;
        v34 = v98;
        v49 = (v99 + *(v98 + 32));
        v50 = v49[1];
        v90 = *v49;
        v89 = v50;
        sub_1BABE759C();
        v51 = sub_1BABE7FDC();
        v52 = v100;
        v53 = v100 + 56;
        v54 = -1 << *(v100 + 32);
        v55 = v51 & ~v54;
        if (((*(v100 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
        {
LABEL_4:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v99;
          v38 = v75;
          sub_1BAB92C54(v99, v75, type metadata accessor for ReplicatorRecord.ID);
          v107 = v52;
          v39 = isUniquelyReferenced_nonNull_native;
          v34 = v98;
          sub_1BABB36E0(v38, v55, v39);
          v100 = v107;
          goto LABEL_5;
        }

        v56 = ~v54;
        v92 = v100 + 56;
        v91 = ~v54;
        while (1)
        {
          sub_1BAB92C54(*(v52 + 48) + v55 * v103, v16, type metadata accessor for ReplicatorRecord.ID);
          v57 = *v16 == v108 && v16[1] == v106;
          if (!v57 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_17;
          }

          v58 = v16[2] == v105 && v16[3] == v104;
          if (!v58 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_17;
          }

          v59 = v16[4] == v102 && v16[5] == v101;
          if (!v59 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_17;
          }

          v60 = v48;
          v61 = *(v32 + 48);
          sub_1BAB92C54(v16 + *(v34 + 28), v5, type metadata accessor for ReplicatorRecord.ID.Ownership);
          sub_1BAB92C54(v99 + v95, &v5[v61], type metadata accessor for ReplicatorRecord.ID.Ownership);
          v62 = v97;
          v63 = v94;
          if (v94(v5, 1, v97) == 1)
          {
            v64 = v63(&v5[v61], 1, v62);
            v53 = v92;
            if (v64 == 1)
            {
              goto LABEL_38;
            }

            goto LABEL_15;
          }

          sub_1BAB92C54(v5, v48, type metadata accessor for ReplicatorRecord.ID.Ownership);
          if (v63(&v5[v61], 1, v62) != 1)
          {
            break;
          }

          (*v86)(v48, v62);
          v53 = v92;
LABEL_15:
          sub_1BAAD2E14(v5, &unk_1EBC12A28);
LABEL_16:
          v32 = v93;
          v34 = v98;
          v52 = v100;
          v48 = v60;
          v56 = v91;
LABEL_17:
          sub_1BAB92CD8(v16, type metadata accessor for ReplicatorRecord.ID);
          v55 = (v55 + 1) & v56;
          if (((*(v53 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v65 = v81;
        (*v84)(v81, &v5[v61], v62);
        v85 = sub_1BABE6CCC();
        v66 = *v86;
        v67 = v88;
        (*v86)(v65, v62);
        v60 = v67;
        v66(v67, v62);
        v53 = v92;
        if ((v85 & 1) == 0)
        {
          sub_1BAB92CD8(v5, type metadata accessor for ReplicatorRecord.ID.Ownership);
          goto LABEL_16;
        }

LABEL_38:
        sub_1BAB92CD8(v5, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v34 = v98;
        v68 = (v16 + *(v98 + 32));
        v69 = *v68 == v90 && v68[1] == v89;
        v32 = v93;
        v52 = v100;
        v48 = v60;
        v56 = v91;
        if (!v69 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_17;
        }

        sub_1BAB92CD8(v16, type metadata accessor for ReplicatorRecord.ID);
        v37 = v99;
LABEL_5:
        sub_1BAB92CD8(v37, type metadata accessor for ReplicatorRecord.ID);
        v31 = v79;
        v29 = v80;
        v33 = v78;
        v35 = v76;
LABEL_6:
        v30 = v87 + 1;
        sub_1BAB92CD8(v35, type metadata accessor for ReplicatorRecord.ID);
        if (v30 == v83)
        {
          goto LABEL_47;
        }
      }
    }

    v100 = MEMORY[0x1E69E7CD0];
    v31 = v79;
LABEL_47:
    if (*(v31 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) == 2)
    {
      v70 = sub_1BAAE84E0(MEMORY[0x1E69E7CC0]);
      LOBYTE(v107) = v74 & 1;
      sub_1BAB7DDC8(v100, v70, v73, &v107);
      v72 = v71;

      sub_1BAB7E440(v72);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAB7F5D0(uint64_t *a1)
{
  v62 = type metadata accessor for ReplicatorRecord.ID(0);
  v2 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v59 = (&v52 - v4);
  v5 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE721C();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  v17 = sub_1BABE6CFC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v61 = a1;
  v65 = v21;
  v66 = v22;
  v23 = v64;
  sub_1BABE6E2C();
  if (!v23)
  {
    v55 = v14;
    v56 = v11;
    v24 = v7;
    v53 = v16;
    v57 = v5;
    v25 = v60;
    v64 = 0;
    v54 = sub_1BABE6CAC();
    v58 = v26;
    v27 = v17;
    (*(v18 + 8))(v20, v17);
    v28 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata;
    v29 = v63;
    swift_beginAccess();
    v30 = v61;
    if (*(*(v29 + v28) + 16) && (sub_1BABD5D18(v61), (v31 & 1) != 0))
    {
      v60 = v28;
      swift_endAccess();
      sub_1BAB92C54(v30 + *(v62 + 28), v24, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v32 = 1;
      v33 = (*(v18 + 48))(v24, 1, v27);
      v34 = v55;
      if (v33 != 1)
      {
        (*(v18 + 32))(v55, v24, v27);
        v32 = 0;
      }

      LOBYTE(v5) = 1;
      (*(v18 + 56))(v34, v32, 1, v27);
      v35 = v53;
      sub_1BAB92E38(v34, v53, MEMORY[0x1E69C7330]);
      sub_1BABE71AC();
      sub_1BABE719C();
      sub_1BAB92C54(v35, v56, MEMORY[0x1E69C7330]);
      sub_1BABE723C();
      swift_allocObject();
      v36 = sub_1BABE71EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD0);
      v37 = v30;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BABF1250;
      *(inited + 32) = v36;

      MetadataPersistentStore.remove(recordIDs:)(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      RecordDataPersistentStore.remove(recordID:)();
      v39 = v37;
      v40 = v59;
      sub_1BAB92C54(v39, v59, type metadata accessor for ReplicatorRecord.ID);
      swift_beginAccess();
      sub_1BAB30938(0, v40);
      swift_endAccess();

      sub_1BAB92CD8(v35, MEMORY[0x1E69C7330]);
    }

    else
    {
      swift_endAccess();

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v41 = sub_1BABE72BC();
      __swift_project_value_buffer(v41, qword_1ED78BBA0);
      sub_1BAB92C54(v30, v25, type metadata accessor for ReplicatorRecord.ID);
      v42 = sub_1BABE729C();
      v43 = sub_1BABE790C();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v62;
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v67 = v47;
        *v46 = 136446210;
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        MEMORY[0x1BFAFD240](*(v25 + *(v45 + 32)), *(v25 + *(v45 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v25[2], v25[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v25[4], v25[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        sub_1BABE7BFC();
        v48 = v65;
        v49 = v66;
        sub_1BAB92CD8(v25, type metadata accessor for ReplicatorRecord.ID);
        v50 = sub_1BAAFA460(v48, v49, &v67);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1BAACF000, v42, v43, "[%{public}s] Record does not exist", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1BFAFE460](v47, -1, -1);
        MEMORY[0x1BFAFE460](v46, -1, -1);
      }

      else
      {

        sub_1BAB92CD8(v25, type metadata accessor for ReplicatorRecord.ID);
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

char *sub_1BAB7FD30()
{
  v2 = v0;
  v3 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE721C();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v15 = sub_1BABE6CFC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  v24[2] = *v2;
  v24[3] = v19;
  sub_1BABE6E2C();
  if (!v1)
  {
    v24[5] = 0;
    sub_1BABE6CAC();
    v24[1] = v20;
    (*(v16 + 8))(v18, v15);
    v21 = type metadata accessor for ReplicatorRecord.ID(0);
    sub_1BAB92C54(v2 + *(v21 + 28), v5, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v22 = 1;
    if ((*(v16 + 48))(v5, 1, v15) != 1)
    {
      (*(v16 + 32))(v12, v5, v15);
      v22 = 0;
    }

    (*(v16 + 56))(v12, v22, 1, v15);
    sub_1BAB92E38(v12, v14, MEMORY[0x1E69C7330]);
    sub_1BABE71AC();
    sub_1BABE719C();
    sub_1BAB92C54(v14, v9, MEMORY[0x1E69C7330]);
    sub_1BABE723C();
    swift_allocObject();
    v9 = sub_1BABE71EC();
    sub_1BAB92CD8(v14, MEMORY[0x1E69C7330]);
  }

  return v9;
}

uint64_t sub_1BAB80068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C80);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C88);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

uint64_t sub_1BAB80188(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = *v2;
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C88);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  return sub_1BABE780C();
}

uint64_t sub_1BAB80398()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_1BAB80404()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

void sub_1BAB80470()
{
  v2 = v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v8 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 48);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v7);
  (*(v8 + 24))(v7, v8);
  if (!v1)
  {
    v9 = sub_1BABE778C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = v3;
    sub_1BAB82EBC(0, 0, v6, &unk_1BABF13D0, v11);

    v13 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v17[-4] = v2;
    LOBYTE(v17[-3]) = 1;
    v17[-2] = v3;
    MEMORY[0x1EEE9AC00](v14);
    v17[-2] = sub_1BAB83C1C;
    v17[-1] = v15;

    os_unfair_lock_lock(v13 + 4);
    sub_1BAB78084(v16);
    os_unfair_lock_unlock(v13 + 4);
  }
}

uint64_t sub_1BAB806D0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_1BAB80738()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1BAB807C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
  v2 = v1[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(v2, v3);
}

uint64_t sub_1BAB80834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v15 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 72);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v14);
  result = (*(*(v15 + 16) + 8))(a1, a2, a3, a4, a5, a6, a7, v14, *(v15 + 16));
  if (v19)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1BAB80904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v14 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 56);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v13);
  return (*(*(v14 + 8) + 8))(a1, a2, a3, a4, a5, a6, a7, v13, *(v14 + 8));
}

uint64_t sub_1BAB80A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v15 = *(v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 88);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v14);
  result = (*(*(v15 + 16) + 8))(a1, a2, a3, a4, a5, a6, a7, v14, *(v15 + 16));
  if (v19)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1BAB80B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  result = a10();
  if (v10)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1BAB80B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v12 = *(v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 56);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v11);
  return (*(*(v12 + 16) + 8))(a1, a2, a3, a4, a5, v11);
}

uint64_t sub_1BAB80C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_recordObservers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_1BAAE7078(sub_1BAAD7CB8, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v9) = v12;
  return swift_endAccess();
}

uint64_t sub_1BAB80D0C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v48 - v5;
  v65 = sub_1BABE6CFC();
  v6 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v48 - v13;
  v14 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);
  v67 = sub_1BAB8F320;
  v68 = a1;

  os_unfair_lock_lock(v14 + 4);
  sub_1BAB8F380(&v69);
  os_unfair_lock_unlock(v14 + 4);
  v15 = v69;

  v17 = 0;
  v18 = *(v15 + 64);
  v48 = v15 + 64;
  v54 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v64 = (v4 + 56);
  v51 = v6 + 16;
  v60 = (v6 + 32);
  v63 = (v4 + 48);
  v53 = v6;
  v57 = (v6 + 8);
  v49 = v3;
  if ((v20 & v18) != 0)
  {
    while (1)
    {
      v23 = v17;
LABEL_12:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v23 << 6);
      v29 = v54;
      v30 = v53;
      v31 = v52;
      v32 = v65;
      (*(v53 + 16))(v52, *(v54 + 48) + *(v53 + 72) * v28, v65);
      v33 = *(v29 + 56);
      v34 = *(v3 + 48);
      v35 = *(v30 + 32);
      v66 = *(v33 + 16 * v28);
      v26 = v62;
      v35(v62, v31, v32);
      *&v26[v34] = v66;
      v36 = *v64;
      (*v64)(v26, 0, 1, v3);

      v25 = v23;
LABEL_13:
      v37 = *v63;
      v38 = 1;
      if ((*v63)(v26, 1, v3) != 1)
      {
        v55 = *(v3 + 48);
        v39 = *v60;
        *&v66 = v25;
        v40 = v62;
        (v39)(v50, v62, v65);
        v41 = swift_allocObject();
        v56 = v36;
        v42 = v41;
        v43 = *&v40[v55];
        v25 = v66;
        *(v41 + 16) = v43;
        v44 = &v61[*(v3 + 48)];
        v39();
        v38 = 0;
        *v44 = sub_1BAAD7B8C;
        v44[1] = v42;
        v36 = v56;
        v3 = v49;
      }

      v45 = v61;
      v36(v61, v38, 1, v3);
      v46 = v45;
      v47 = v59;
      sub_1BAB23414(v46, v59, &qword_1EBC13C00);
      if (v37(v47, 1, v3) == 1)
      {
      }

      (*(v47 + *(v3 + 48)))(v58);

      result = (*v57)(v47, v65);
      v17 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v17 + 1)
    {
      v24 = v17 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    v26 = v62;
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v36 = *v64;
        (*v64)(v62, 1, 1, v3);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v48 + 8 * v23);
      ++v17;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}