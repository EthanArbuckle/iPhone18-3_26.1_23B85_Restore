uint64_t storeEnumTagSinglePayload for ServerError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264B0B960()
{
  result = qword_27FF8C780;
  if (!qword_27FF8C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C780);
  }

  return result;
}

unint64_t sub_264B0B9B8()
{
  result = qword_27FF8C788;
  if (!qword_27FF8C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C788);
  }

  return result;
}

unint64_t sub_264B0BA10()
{
  result = qword_27FF8C790;
  if (!qword_27FF8C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C790);
  }

  return result;
}

unint64_t sub_264B0BA68()
{
  result = qword_27FF8C798;
  if (!qword_27FF8C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C798);
  }

  return result;
}

unint64_t sub_264B0BAC0()
{
  result = qword_27FF8C7A0;
  if (!qword_27FF8C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7A0);
  }

  return result;
}

unint64_t sub_264B0BB18()
{
  result = qword_27FF8C7A8;
  if (!qword_27FF8C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7A8);
  }

  return result;
}

unint64_t sub_264B0BB70()
{
  result = qword_27FF8C7B0;
  if (!qword_27FF8C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7B0);
  }

  return result;
}

unint64_t sub_264B0BBC8()
{
  result = qword_27FF8C7B8;
  if (!qword_27FF8C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7B8);
  }

  return result;
}

unint64_t sub_264B0BC20()
{
  result = qword_27FF8C7C0;
  if (!qword_27FF8C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7C0);
  }

  return result;
}

unint64_t sub_264B0BC78()
{
  result = qword_27FF8C7C8;
  if (!qword_27FF8C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7C8);
  }

  return result;
}

unint64_t sub_264B0BCD0()
{
  result = qword_27FF8C7D0;
  if (!qword_27FF8C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7D0);
  }

  return result;
}

unint64_t sub_264B0BD28()
{
  result = qword_27FF8C7D8;
  if (!qword_27FF8C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7D8);
  }

  return result;
}

unint64_t sub_264B0BD80()
{
  result = qword_27FF8C7E0;
  if (!qword_27FF8C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7E0);
  }

  return result;
}

unint64_t sub_264B0BDD8()
{
  result = qword_27FF8C7E8;
  if (!qword_27FF8C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7E8);
  }

  return result;
}

unint64_t sub_264B0BE30()
{
  result = qword_27FF8C7F0;
  if (!qword_27FF8C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7F0);
  }

  return result;
}

unint64_t sub_264B0BE88()
{
  result = qword_27FF8C7F8;
  if (!qword_27FF8C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C7F8);
  }

  return result;
}

unint64_t sub_264B0BEE0()
{
  result = qword_27FF8C800;
  if (!qword_27FF8C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C800);
  }

  return result;
}

unint64_t sub_264B0BF38()
{
  result = qword_27FF8C808;
  if (!qword_27FF8C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C808);
  }

  return result;
}

unint64_t sub_264B0BF90()
{
  result = qword_27FF8C810;
  if (!qword_27FF8C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C810);
  }

  return result;
}

unint64_t sub_264B0BFE8()
{
  result = qword_27FF8C818;
  if (!qword_27FF8C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C818);
  }

  return result;
}

unint64_t sub_264B0C040()
{
  result = qword_27FF8C820;
  if (!qword_27FF8C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C820);
  }

  return result;
}

unint64_t sub_264B0C098()
{
  result = qword_27FF8C828;
  if (!qword_27FF8C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C828);
  }

  return result;
}

unint64_t sub_264B0C0F0()
{
  result = qword_27FF8C830;
  if (!qword_27FF8C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C830);
  }

  return result;
}

unint64_t sub_264B0C148()
{
  result = qword_27FF8C838;
  if (!qword_27FF8C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C838);
  }

  return result;
}

unint64_t sub_264B0C1A0()
{
  result = qword_27FF8C840;
  if (!qword_27FF8C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C840);
  }

  return result;
}

unint64_t sub_264B0C1F8()
{
  result = qword_27FF8C848;
  if (!qword_27FF8C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C848);
  }

  return result;
}

unint64_t sub_264B0C250()
{
  result = qword_27FF8C850;
  if (!qword_27FF8C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C850);
  }

  return result;
}

unint64_t sub_264B0C2A8()
{
  result = qword_27FF8C858;
  if (!qword_27FF8C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C858);
  }

  return result;
}

unint64_t sub_264B0C300()
{
  result = qword_27FF8C860;
  if (!qword_27FF8C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C860);
  }

  return result;
}

unint64_t sub_264B0C358()
{
  result = qword_27FF8C868;
  if (!qword_27FF8C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C868);
  }

  return result;
}

unint64_t sub_264B0C3B0()
{
  result = qword_27FF8C870;
  if (!qword_27FF8C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C870);
  }

  return result;
}

unint64_t sub_264B0C408()
{
  result = qword_27FF8C878;
  if (!qword_27FF8C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C878);
  }

  return result;
}

unint64_t sub_264B0C460()
{
  result = qword_27FF8C880;
  if (!qword_27FF8C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C880);
  }

  return result;
}

unint64_t sub_264B0C4B8()
{
  result = qword_27FF8C888;
  if (!qword_27FF8C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C888);
  }

  return result;
}

unint64_t sub_264B0C510()
{
  result = qword_27FF8C890;
  if (!qword_27FF8C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C890);
  }

  return result;
}

unint64_t sub_264B0C568()
{
  result = qword_27FF8C898;
  if (!qword_27FF8C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C898);
  }

  return result;
}

unint64_t sub_264B0C5C0()
{
  result = qword_27FF8C8A0;
  if (!qword_27FF8C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8A0);
  }

  return result;
}

unint64_t sub_264B0C618()
{
  result = qword_27FF8C8A8;
  if (!qword_27FF8C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8A8);
  }

  return result;
}

unint64_t sub_264B0C670()
{
  result = qword_27FF8C8B0;
  if (!qword_27FF8C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8B0);
  }

  return result;
}

unint64_t sub_264B0C6C8()
{
  result = qword_27FF8C8B8;
  if (!qword_27FF8C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8B8);
  }

  return result;
}

unint64_t sub_264B0C720()
{
  result = qword_27FF8C8C0;
  if (!qword_27FF8C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8C0);
  }

  return result;
}

unint64_t sub_264B0C778()
{
  result = qword_27FF8C8C8;
  if (!qword_27FF8C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8C8);
  }

  return result;
}

unint64_t sub_264B0C7D0()
{
  result = qword_27FF8C8D0;
  if (!qword_27FF8C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8D0);
  }

  return result;
}

unint64_t sub_264B0C828()
{
  result = qword_27FF8C8D8;
  if (!qword_27FF8C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8D8);
  }

  return result;
}

unint64_t sub_264B0C880()
{
  result = qword_27FF8C8E0;
  if (!qword_27FF8C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8E0);
  }

  return result;
}

unint64_t sub_264B0C8D8()
{
  result = qword_27FF8C8E8;
  if (!qword_27FF8C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8E8);
  }

  return result;
}

unint64_t sub_264B0C930()
{
  result = qword_27FF8C8F0;
  if (!qword_27FF8C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8F0);
  }

  return result;
}

unint64_t sub_264B0C988()
{
  result = qword_27FF8C8F8;
  if (!qword_27FF8C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C8F8);
  }

  return result;
}

unint64_t sub_264B0C9E0()
{
  result = qword_27FF8C900[0];
  if (!qword_27FF8C900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF8C900);
  }

  return result;
}

uint64_t sub_264B0CA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61640 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000264B61660 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61680 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000264B616A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000264B616C0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000264B616F0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B61720 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000264B61740 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B61760 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000264B61780 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B617A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B617C0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000264B617E0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B61800 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000264B61820 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000264B61850 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61870 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B61890 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B618B0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000264B618D0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B618F0 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        if (v7 != 5)
        {
          goto LABEL_52;
        }

        goto LABEL_31;
      }

      if (v7 == 6)
      {
        sub_264ACB170(*a2, *(a2 + 8), 6u);
        sub_264ACB170(v3, v2, 6u);
        v13 = sub_264B0EF58(v3, v6);
        sub_264AB62DC(v3, v2, 6u);
        sub_264AB62DC(v6, v5, 6u);
        return v13 & 1;
      }

      goto LABEL_52;
    }

    if (v4 == 7)
    {
      if (v7 == 7)
      {
        sub_264ACB170(*a2, *(a2 + 8), 7u);
        sub_264ACB170(v3, v2, 7u);
        sub_264AB62DC(v3, v2, 7u);
        v8 = v6;
        v9 = v5;
        v10 = 7;
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v4 == 8)
    {
      if (v7 == 8)
      {
        sub_264ACB170(*a2, *(a2 + 8), 8u);
        sub_264ACB170(v3, v2, 8u);
        sub_264AB62DC(v3, v2, 8u);
        v8 = v6;
        v9 = v5;
        v10 = 8;
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v3 <= 1)
    {
      if (!(v3 | v2))
      {
        if (v7 != 9 || v5 | v6)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (v7 != 9 || v6 != 1)
      {
        goto LABEL_52;
      }
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 9 || v6 != 4)
        {
          goto LABEL_52;
        }
      }

      else if (v7 != 9 || v6 != 3)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 9 || v6 != 2)
    {
      goto LABEL_52;
    }

    if (v5)
    {
      goto LABEL_52;
    }

LABEL_51:
    sub_264ACB170(*a2, *(a2 + 8), 9u);
    sub_264AB62DC(v3, v2, 9u);
    v8 = v6;
    v9 = v5;
    v10 = 9;
    goto LABEL_34;
  }

  if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_52;
      }
    }

    else if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 4)
    {
      goto LABEL_52;
    }

    goto LABEL_31;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      goto LABEL_31;
    }
  }

  else if (!*(a2 + 16))
  {
LABEL_31:
    sub_264ACB170(*a2, *(a2 + 8), v7);
    sub_264ACB170(v3, v2, v4);
    sub_264ACB170(v6, v5, v7);
    sub_264ACB170(v3, v2, v4);
    sub_264AB62DC(v3, v2, v4);
    sub_264AB62DC(v6, v5, v7);
    if (v3 != v6 || v2 != v5)
    {
      v12 = sub_264B41AA4();
      sub_264AB62DC(v6, v5, v7);
      sub_264AB62DC(v3, v2, v4);
      return v12 & 1;
    }

    sub_264AB62DC(v3, v2, v7);
    v8 = v3;
    v9 = v2;
    v10 = v4;
LABEL_34:
    sub_264AB62DC(v8, v9, v10);
    return 1;
  }

LABEL_52:
  sub_264ACB170(*a2, *(a2 + 8), v7);
  sub_264ACB170(v3, v2, v4);
  sub_264AB62DC(v3, v2, v4);
  sub_264AB62DC(v6, v5, v7);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit0aB7SessionC0abD5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_264B0D490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264B0D4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_264B0D51C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264B0D5A4()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  sub_264AF568C();
  return sub_264B40AB4();
}

uint64_t sub_264B0D600()
{
  v1 = v0;
  if (*(v0 + 24))
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 16);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = 0;
  if (qword_27FF88410 != -1)
  {
LABEL_9:
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE88);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2649C6000, v5, v6, "UHIDKitBackedControlEventConsumerVendor sessionID: %ld", v7, 0xCu);
    MEMORY[0x266749940](v7, -1, -1);
  }

LABEL_7:
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 40);
  v10 = *(v1 + 48);
  v12 = *(v1 + 32);
  v13 = type metadata accessor for UHIDKitBackedControlEventConsumer();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = v12;
  v17 = sub_264AB0974(v8, v9, v11, v10, v12);

  sub_264B0D83C();
  return v17;
}

uint64_t sub_264B0D788()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_264B0D7FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
}

uint64_t sub_264B0D810@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264B0D600();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_264B0D83C()
{
  result = qword_27FF8B5A8;
  if (!qword_27FF8B5A8)
  {
    type metadata accessor for UHIDKitBackedControlEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B5A8);
  }

  return result;
}

uint64_t sub_264B0D8A8()
{
  if (v0[7])
  {
    v1 = v0[7];

    sub_264B41304();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[7];

  v3 = v0[9];
  sub_2649CB67C(v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_264B0D954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  if (*(v2 + 56))
  {

    sub_264B41304();

    v10 = *(v2 + 56);
  }

  *(v2 + 56) = 0;

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  v11 = sub_264B41274();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v2 + 16, v20);
  sub_264B41244();

  v13 = sub_264B41234();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  sub_2649D2AAC(v20, (v14 + 4));
  v14[9] = a1;
  v14[10] = a2;
  v14[11] = v12;

  v16 = sub_2649F62D0(0, 0, v9, &unk_264B56D78, v14);
  sub_264A6E820(v9);
  v17 = *(v3 + 56);
  *(v3 + 56) = v16;
}

uint64_t sub_264B0DB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[5] = a5;
  v8 = sub_264B41844();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = sub_264B41244();
  v7[12] = sub_264B41234();

  return MEMORY[0x2822009F8](sub_264B0DC30, 0, 0);
}

uint64_t sub_264B0DC30()
{
  v1 = v0[10];
  sub_264B41B14();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_264B0DCF0;
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];

  return sub_2649FE7A8(v5, v4, 0, 0, 1);
}

uint64_t sub_264B0DCF0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v16 = *v1;

  if (v0)
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];

    (*(v5 + 8))(v4, v6);
    v7 = sub_264B0DF14;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v11 = v2[11];
    v10 = v2[12];
    (*(v2[9] + 8))(v2[10], v2[8]);
    v12 = sub_264B411C4();
    v14 = v13;
    v7 = sub_264B0DE70;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_264B0DE70()
{
  v1 = v0[12];

  if ((sub_264B41314() & 1) == 0)
  {
    v2 = v0[7];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_264B0DF8C();
    }
  }

  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B0DF14()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B0E194, v4, v3);
}

uint64_t sub_264B0DF8C()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);

    sub_264B41304();

    v2 = *(v0 + 56);
  }

  *(v0 + 56) = 0;

  v4 = *(v0 + 64);
  if (v4)
  {
    v5 = *(v0 + 72);

    v4(v6);

    return sub_2649CB67C(v4);
  }

  return result;
}

uint64_t sub_264B0E040()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B0E078()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_264B0E0C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264B0DB54(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_264B0E198()
{
  v1 = v0;
  v2 = v0[2];

  sub_264B409E4();

  v3 = v1[3];

  sub_264B40994();

  v4 = v1[2];

  v5 = v1[3];

  v6 = v1[4];

  return swift_deallocClassInstance();
}

uint64_t sub_264B0E248()
{
  v1 = v0;
  v30 = sub_264B41594();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C380, &unk_264B56E00);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v35 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_264B40A14();
  *(v0 + 32) = 0;
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  [v15 setBatteryMonitoringEnabled_];

  v16 = *(v1 + 16);
  v17 = [v14 currentDevice];
  v18 = [v17 batteryState];

  v34 = (v18 & 0xFFFFFFFFFFFFFFFELL) == 2;
  sub_264B409F4();
  v19 = [v14 currentDevice];
  v20 = [objc_opt_self() defaultCenter];
  v21 = *MEMORY[0x277D76870];
  sub_264B415A4();

  *(swift_allocObject() + 16) = v19;
  sub_264AFB1E4();
  v22 = v19;
  v23 = v30;
  sub_264B40AF4();

  (*(v2 + 8))(v5, v23);
  sub_2649CB4C8(&qword_27FF8C390, &qword_27FF8C380, &unk_264B56E00);
  v24 = v31;
  v25 = sub_264B40AB4();

  (*(v32 + 8))(v10, v24);
  v33 = v25;
  v26 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB4C8(&qword_27FF8A640, &qword_27FF8A638, &unk_264B4BC10);
  sub_2649CB4C8(&qword_27FF8C398, &qword_27FF8C368, &unk_264B54500);
  v27 = sub_264B40B34();

  *(v1 + 24) = v27;
  return v1;
}

uint64_t sub_264B0E654()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C360, &unk_264B56DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  if (*(v0 + 32))
  {
    v6 = *(v0 + 32);
  }

  else
  {
    v10[1] = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C368, &unk_264B54500);
    sub_2649CB4C8(&qword_27FF8C370, &qword_27FF8C368, &unk_264B54500);
    v7 = v0;
    sub_264B40B44();
    sub_2649CB4C8(&qword_27FF8C378, &qword_27FF8C360, &unk_264B56DF0);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;
  }

  return v6;
}

void sub_264B0E834(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 batteryState];

  *a1 = (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

uint64_t sub_264B0E8A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B0E8E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E49656369766564;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEB00000000657355;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000264B58BE0;
  }

  else if (a1 == 3)
  {
    v4 = 0x6F68706F7263696DLL;
    v5 = 0xEF6573556E49656ELL;
  }

  else
  {
    v4 = 0x6E496172656D6163;
    v5 = 0xEB00000000657355;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6E49656369766564;
    v8 = 0xEB00000000657355;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD000000000000011;
    v6 = 0x8000000264B58BE0;
    v7 = 0x6F68706F7263696DLL;
    v8 = 0xEF6573556E49656ELL;
    if (a2 != 3)
    {
      v7 = 0x6E496172656D6163;
      v8 = 0xEB00000000657355;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_264B41AA4();
  }

  return v12 & 1;
}

uint64_t sub_264B0EAA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461727544;
    if (a1 != 2)
    {
      v13 = 0x646F43726F727245;
      v12 = 0xE900000000000065;
    }

    v14 = 0x6F436E6F73616552;
    if (a1)
    {
      v11 = 0xEA00000000006564;
    }

    else
    {
      v14 = 0x6E6F73616552;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6A624F726F727245;
    v4 = 0xEB00000000746365;
    v5 = 0x7461746E6569724FLL;
    v6 = 0xEB000000006E6F69;
    if (a1 != 7)
    {
      v5 = 0x795468636E75614CLL;
      v6 = 0xEA00000000006570;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x727453726F727245;
    v8 = 0xEB00000000676E69;
    if (a1 != 4)
    {
      v7 = 0x707954726F727245;
      v8 = 0xE900000000000065;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xEA00000000006564;
        if (v9 != 0x6F436E6F73616552)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x6E6F73616552)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x6E6F697461727544)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v18 = 0x646F43726F727245;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x6A624F726F727245;
        v16 = 7627621;
      }

      else
      {
        if (a2 != 7)
        {
          v17 = 0xEA00000000006570;
          if (v9 != 0x795468636E75614CLL)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        }

        v15 = 0x7461746E6569724FLL;
        v16 = 7237481;
      }

      goto LABEL_40;
    }

    if (a2 == 4)
    {
      v15 = 0x727453726F727245;
      v16 = 6778473;
LABEL_40:
      v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v18 = 0x707954726F727245;
  }

  v17 = 0xE900000000000065;
  if (v9 != v18)
  {
LABEL_51:
    v19 = sub_264B41AA4();
    goto LABEL_52;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v19 = 1;
LABEL_52:

  return v19 & 1;
}

uint64_t sub_264B0ED8C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x646570706F7473;
    }

    else
    {
      v2 = 0x64657472617473;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000264B58C30;
    v2 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000011;
    v3 = 0x8000000264B58C50;
  }

  else
  {
    v2 = 0x746169746F67656ELL;
    v3 = 0xEF617461446E6F69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 0x646570706F7473;
    }

    else
    {
      v5 = 0x64657472617473;
    }

    v4 = 0xE700000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0x8000000264B58C30;
    if (v2 != 0xD000000000000019)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x8000000264B58C50;
    if (v2 != 0xD000000000000011)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xEF617461446E6F69;
    if (v2 != 0x746169746F67656ELL)
    {
LABEL_26:
      v6 = sub_264B41AA4();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_264B0EF58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_264B41B84();
    v32 = v12;
    sub_264B41084();

    v17 = sub_264B41BB4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v22 = 0xD000000000000011;
        v23 = 0x8000000264B58BE0;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6F68706F7263696DLL;
        }

        else
        {
          v22 = 0x6E496172656D6163;
        }

        if (v21 == 3)
        {
          v23 = 0xEF6573556E49656ELL;
        }

        else
        {
          v23 = 0xEB00000000657355;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v24 = 0x6F68706F7263696DLL;
      if (v15 != 3)
      {
        v24 = 0x6E496172656D6163;
      }

      v25 = 0xEF6573556E49656ELL;
      if (v15 != 3)
      {
        v25 = 0xEB00000000657355;
      }

      if (v15 == 2)
      {
        v26 = 0xD000000000000011;
      }

      else
      {
        v26 = v24;
      }

      if (v15 == 2)
      {
        v27 = 0x8000000264B58BE0;
      }

      else
      {
        v27 = v25;
      }

      if (v22 == v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      v28 = sub_264B41AA4();

      if (v28)
      {
        goto LABEL_54;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19))
    {
      v22 = 0x6E49656369766564;
    }

    else
    {
      v22 = 0x6E776F6E6B6E75;
    }

    if (*(*(a2 + 48) + v19))
    {
      v23 = 0xEB00000000657355;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v27 = 0xE700000000000000;
      if (v22 == 0x6E776F6E6B6E75)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v27 = 0xEB00000000657355;
    if (v22 != 0x6E49656369766564)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v23 != v27)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264B0F340(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_264B41B84();
    MEMORY[0x266748E90](v13);
    result = sub_264B41BB4();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (v13 != *(*(a2 + 48) + v16))
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264B0F4B0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x64656B636F6C62;
    if (a1 != 2)
    {
      v7 = 0x726F467964616572;
    }

    if (a1)
    {
      v6 = 0x696C616974696E69;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD00000000000001DLL;
    v2 = 0x4973726F736E6573;
    if (a1 != 9)
    {
      v2 = 0x7845726576726573;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    v4 = 0x657669746361;
    if (a1 != 6)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_264B0F648(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA70, &qword_264B57098);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = &v62 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA78, &qword_264B570A0);
  v86 = *(v88 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v62 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA80, &qword_264B570A8);
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v62 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA88, &qword_264B570B0);
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v62 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA90, &qword_264B570B8);
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CA98, &qword_264B570C0);
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v62 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAA0, &qword_264B570C8);
  v72 = *(v73 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAA8, &qword_264B570D0);
  v75 = *(v76 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAB0, &qword_264B570D8);
  v80 = *(v81 - 8);
  v20 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAB8, &qword_264B570E0);
  v78 = *(v22 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAC0, &qword_264B570E8);
  v77 = *(v26 - 8);
  v27 = *(v77 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CAC8, &qword_264B570F0);
  v31 = *(v30 - 8);
  v99 = v30;
  v100 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v35 = *v1;
  v96 = v1[1];
  v97 = v35;
  v36 = v1[2];
  v37 = v1[3];
  v38 = v1[5];
  v93 = v1[4];
  v91 = v36;
  v92 = v38;
  v94 = v1[6];
  v95 = v37;
  v39 = *(v1 + 56);
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264B12380();
  v98 = v34;
  sub_264B41BD4();
  v41 = v39 >> 5;
  if (v39 >> 5 <= 2)
  {
    if (!v41)
    {
      v48 = v39 & 0x1F;
      LOBYTE(v101) = 1;
      sub_264B127C4();
      v42 = v98;
      v44 = v99;
      sub_264B419B4();
      v101 = v97;
      v102[0] = v96;
      v102[1] = v91;
      v102[2] = v95;
      v103[0] = v93;
      v103[1] = v92;
      v103[2] = v94;
      v104 = v48;
      sub_264A18A60();
      sub_264B41A24();
      (*(v78 + 8))(v25, v22);
      return (*(v100 + 8))(v42, v44);
    }

    v42 = v98;
    if (v41 == 1)
    {
      LOBYTE(v101) = 2;
      sub_264B12770();
      v43 = v79;
      v44 = v99;
      sub_264B419B4();
      v101 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38);
      v45 = v81;
      sub_264B41A24();
      v46 = &v105;
    }

    else
    {
      LOBYTE(v101) = 8;
      sub_264B12524();
      v43 = v82;
      v44 = v99;
      sub_264B419B4();
      LOBYTE(v101) = v97;
      v102[0] = v96;
      sub_264B1298C();
      v45 = v84;
      sub_264B41A24();
      v46 = &v106;
    }

    goto LABEL_11;
  }

  if (v41 == 3)
  {
    LOBYTE(v101) = 9;
    sub_264B1247C();
    v43 = v85;
    v42 = v98;
    v44 = v99;
    sub_264B419B4();
    v101 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
    sub_264B128C0(&qword_27FF8CAD8, sub_264B12938);
    v45 = v88;
    sub_264B41A24();
    v46 = &v107;
LABEL_11:
    v47 = *(v46 - 32);
    goto LABEL_12;
  }

  if (v41 == 4)
  {
    LOBYTE(v101) = 10;
    sub_264B123D4();
    v43 = v87;
    v42 = v98;
    v44 = v99;
    sub_264B419B4();
    v101 = v97;
    LOBYTE(v102[0]) = v96;
    sub_264B1286C();
    v45 = v90;
    sub_264B419C4();
    v47 = v89;
LABEL_12:
    (*(v47 + 8))(v43, v45);
    return (*(v100 + 8))(v42, v44);
  }

  v50 = v93 | v92 | v94;
  if (v91 | v96 | v97 | v95 | v50 || v39 != 160)
  {
    v53 = v91 | v96 | v95 | v50;
    if (v39 == 160 && v97 == 1 && !v53)
    {
      LOBYTE(v101) = 3;
      sub_264B1271C();
      v54 = v74;
      v52 = v98;
      v51 = v99;
      sub_264B419B4();
      v55 = *(v75 + 8);
      v56 = v54;
      v57 = &v104;
    }

    else
    {
      v52 = v98;
      if (v39 == 160 && v97 == 2 && !v53)
      {
        LOBYTE(v101) = 4;
        sub_264B126C8();
        v58 = v71;
        v51 = v99;
        sub_264B419B4();
        v55 = *(v72 + 8);
        v56 = v58;
        v57 = v103;
      }

      else if (v39 == 160 && v97 == 3 && !v53)
      {
        LOBYTE(v101) = 5;
        sub_264B12674();
        v59 = v68;
        v51 = v99;
        sub_264B419B4();
        v55 = *(v69 + 8);
        v56 = v59;
        v57 = v102;
      }

      else if (v39 == 160 && v97 == 4 && !v53)
      {
        LOBYTE(v101) = 6;
        sub_264B12620();
        v60 = v62;
        v51 = v99;
        sub_264B419B4();
        v55 = *(v63 + 8);
        v56 = v60;
        v57 = &v96;
      }

      else
      {
        LOBYTE(v101) = 7;
        sub_264B125CC();
        v61 = v65;
        v51 = v99;
        sub_264B419B4();
        v55 = *(v66 + 8);
        v56 = v61;
        v57 = &v99;
      }
    }

    v55(v56, *(v57 - 32));
  }

  else
  {
    LOBYTE(v101) = 0;
    sub_264B12818();
    v52 = v98;
    v51 = v99;
    sub_264B419B4();
    (*(v77 + 8))(v29, v26);
  }

  return (*(v100 + 8))(v52, v51);
}

uint64_t sub_264B1038C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C990, &qword_264B57030);
  v98 = *(v95 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  v108 = &v75 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C998, &qword_264B57038);
  v96 = *(v97 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v103 = &v75 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9A0, &qword_264B57040);
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v107 = &v75 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9A8, &qword_264B57048);
  v91 = *(v92 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v102 = &v75 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9B0, &qword_264B57050);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v101 = &v75 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9B8, &qword_264B57058);
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v106 = &v75 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9C0, &qword_264B57060);
  v86 = *(v79 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v79);
  v100 = &v75 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9C8, &qword_264B57068);
  v83 = *(v82 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v105 = &v75 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9D0, &qword_264B57070);
  v84 = *(v85 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v99 = &v75 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9D8, &qword_264B57078);
  v80 = *(v81 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9E0, &qword_264B57080);
  v78 = *(v24 - 8);
  v25 = *(v78 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C9E8, &qword_264B57088);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_264B12380();
  v35 = v109;
  sub_264B41BC4();
  if (v35)
  {
    goto LABEL_12;
  }

  v77 = v27;
  v76 = v24;
  v37 = v105;
  v36 = v106;
  v109 = 0;
  v38 = v107;
  v39 = v108;
  v40 = sub_264B419A4();
  v41 = (2 * *(v40 + 16)) | 1;
  v115 = v40;
  v116 = v40 + 32;
  v117 = 0;
  v118 = v41;
  v42 = sub_2649E04F8();
  if (v42 != 11 && v117 == v118 >> 1)
  {
    if (v42 > 4u)
    {
      if (v42 <= 7u)
      {
        v43 = v104;
        if (v42 != 5)
        {
          v44 = v109;
          if (v42 == 6)
          {
            LOBYTE(v110) = 6;
            sub_264B12620();
            v45 = v101;
            sub_264B418F4();
            if (!v44)
            {
              (*(v89 + 8))(v45, v90);
              (*(v29 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v46 = 0uLL;
              v47 = -96;
              v48 = 4;
LABEL_39:
              v61 = 0uLL;
              v62 = 0uLL;
              goto LABEL_40;
            }
          }

          else
          {
            LOBYTE(v110) = 7;
            sub_264B125CC();
            v72 = v102;
            sub_264B418F4();
            if (!v44)
            {
              (*(v91 + 8))(v72, v92);
              (*(v29 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v46 = 0uLL;
              v47 = -96;
              v48 = 5;
              goto LABEL_39;
            }
          }

          goto LABEL_44;
        }

        LOBYTE(v110) = 5;
        sub_264B12674();
        v67 = v109;
        sub_264B418F4();
        if (!v67)
        {
          (*(v87 + 8))(v36, v88);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v46 = 0uLL;
          v47 = -96;
          v48 = 3;
          goto LABEL_34;
        }

        goto LABEL_44;
      }

      v57 = v104;
      if (v42 == 8)
      {
        LOBYTE(v110) = 8;
        sub_264B12524();
        v68 = v109;
        sub_264B418F4();
        if (v68)
        {
          goto LABEL_44;
        }

        sub_264B12578();
        v69 = v94;
        sub_264B41984();
        (*(v93 + 8))(v38, v69);
        (*(v29 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v48 = v110;
        *&v46 = v111;
        v47 = 64;
      }

      else
      {
        if (v42 == 9)
        {
          LOBYTE(v110) = 9;
          sub_264B1247C();
          v58 = v103;
          v59 = v109;
          sub_264B418F4();
          if (v59)
          {
            goto LABEL_44;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
          sub_264B128C0(&qword_27FF8CA10, sub_264B124D0);
          v60 = v97;
          sub_264B41984();
          (*(v96 + 8))(v58, v60);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v48 = v110;
          v47 = 96;
          goto LABEL_40;
        }

        LOBYTE(v110) = 10;
        sub_264B123D4();
        v73 = v109;
        sub_264B418F4();
        if (v73)
        {
          goto LABEL_44;
        }

        sub_264B12428();
        v74 = v95;
        sub_264B41924();
        (*(v98 + 8))(v39, v74);
        (*(v29 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v48 = v110;
        *&v46 = v111;
        v47 = 0x80;
      }

      v54 = v119;
      v43 = v57;
      goto LABEL_41;
    }

    if (v42 <= 1u)
    {
      v63 = v109;
      if (!v42)
      {
        LOBYTE(v110) = 0;
        sub_264B12818();
        v64 = v77;
        sub_264B418F4();
        if (!v63)
        {
          (*(v78 + 8))(v64, v76);
          (*(v29 + 8))(v32, v28);
          swift_unknownObjectRelease();
          v48 = 0;
          v46 = 0uLL;
          v47 = -96;
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      LOBYTE(v110) = 1;
      sub_264B127C4();
      sub_264B418F4();
      if (v63)
      {
        goto LABEL_44;
      }

      sub_264A18950();
      v71 = v81;
      sub_264B41984();
      (*(v80 + 8))(v23, v71);
      (*(v29 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v48 = v110;
      v46 = v111;
      v61 = v112;
      v62 = v113;
      v47 = v114 & 1;
    }

    else
    {
      v56 = v109;
      if (v42 != 2)
      {
        if (v42 == 3)
        {
          LOBYTE(v110) = 3;
          sub_264B1271C();
          sub_264B418F4();
          v43 = v104;
          if (!v56)
          {
            (*(v83 + 8))(v37, v82);
            (*(v29 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v46 = 0uLL;
            v47 = -96;
            v48 = 1;
LABEL_34:
            v61 = 0uLL;
            v62 = 0uLL;
            v54 = v119;
LABEL_41:
            *v43 = v48;
            *(v43 + 8) = v46;
            *(v43 + 24) = v61;
            *(v43 + 40) = v62;
            *(v43 + 56) = v47;
            return __swift_destroy_boxed_opaque_existential_0(v54);
          }
        }

        else
        {
          LOBYTE(v110) = 4;
          sub_264B126C8();
          v70 = v100;
          sub_264B418F4();
          v43 = v104;
          if (!v56)
          {
            (*(v86 + 8))(v70, v79);
            (*(v29 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v46 = 0uLL;
            v47 = -96;
            v48 = 2;
            goto LABEL_34;
          }
        }

LABEL_44:
        (*(v29 + 8))(v32, v28);
        goto LABEL_11;
      }

      LOBYTE(v110) = 2;
      sub_264B12770();
      v65 = v99;
      sub_264B418F4();
      if (v56)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
      sub_264A72DD8(&qword_27FF8A460, sub_264A72E50);
      v66 = v85;
      sub_264B41984();
      (*(v84 + 8))(v65, v66);
      (*(v29 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v48 = v110;
      v47 = 32;
    }

LABEL_40:
    v54 = v119;
    v43 = v104;
    goto LABEL_41;
  }

  v49 = sub_264B417A4();
  swift_allocError();
  v50 = v32;
  v52 = v51;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
  *v52 = &type metadata for ServerStatusEvent;
  sub_264B41904();
  sub_264B41794();
  (*(*(v49 - 8) + 104))(v52, *MEMORY[0x277D84160], v49);
  swift_willThrow();
  (*(v29 + 8))(v50, v28);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v54 = v119;
  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_264B11498(uint64_t a1)
{
  v2 = sub_264B12620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B114D4(uint64_t a1)
{
  v2 = sub_264B12620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11510(uint64_t a1)
{
  v2 = sub_264B12674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1154C(uint64_t a1)
{
  v2 = sub_264B12674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11588(uint64_t a1)
{
  v2 = sub_264B12770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B115C4(uint64_t a1)
{
  v2 = sub_264B12770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264B13630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264B1163C(uint64_t a1)
{
  v2 = sub_264B12380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11678(uint64_t a1)
{
  v2 = sub_264B12380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B116D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6556726576726573 && a2 == 0xED00006E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B11768(uint64_t a1)
{
  v2 = sub_264B127C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B117A4(uint64_t a1)
{
  v2 = sub_264B127C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B117E0(uint64_t a1)
{
  v2 = sub_264B1271C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1181C(uint64_t a1)
{
  v2 = sub_264B1271C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11858(uint64_t a1)
{
  v2 = sub_264B126C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11894(uint64_t a1)
{
  v2 = sub_264B126C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B118D0(uint64_t a1)
{
  v2 = sub_264B12524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B1190C(uint64_t a1)
{
  v2 = sub_264B12524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11948(uint64_t a1)
{
  v2 = sub_264B125CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11984(uint64_t a1)
{
  v2 = sub_264B125CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B119C0(uint64_t a1)
{
  v2 = sub_264B1247C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B119FC(uint64_t a1)
{
  v2 = sub_264B1247C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264B11AD0(uint64_t a1)
{
  v2 = sub_264B123D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11B0C(uint64_t a1)
{
  v2 = sub_264B123D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11B48(uint64_t a1)
{
  v2 = sub_264B12818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264B11B84(uint64_t a1)
{
  v2 = sub_264B12818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264B11BF4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v35[0] = *a1;
  v35[1] = v2;
  *v36 = a1[2];
  v3 = *v36;
  v4 = a2[1];
  v37 = *a2;
  *v38 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v38[16] = a2[2];
  *&v38[25] = *(a2 + 41);
  v7 = *(a1 + 41);
  *&v36[9] = v7;
  v39[0] = v35[0];
  v39[1] = v2;
  v40[0] = v3;
  *(v40 + 9) = v7;
  *&v41[9] = *(a2 + 41);
  v8 = a2[2];
  v40[3] = v5;
  *v41 = v8;
  v40[2] = v6;
  v10 = BYTE8(v35[0]);
  v9 = *&v35[0];
  v11 = HIBYTE(v7) >> 5;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        v18 = *v36 | *&v36[8] | (v7 >> 56);
        if (v2 | *(&v35[0] + 1) | *&v35[0] | *(&v2 + 1) | v18 || HIBYTE(v7) != 160)
        {
          v23 = v2 | *(&v35[0] + 1) | *(&v2 + 1) | v18;
          if (HIBYTE(v7) == 160 && *&v35[0] == 1 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 1)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 2 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 2)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 3 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 3)
            {
              goto LABEL_40;
            }
          }

          else if (HIBYTE(v7) == 160 && *&v35[0] == 4 && !v23)
          {
            if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 4)
            {
              goto LABEL_40;
            }
          }

          else if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160 || v37 != 5)
          {
            goto LABEL_40;
          }

          v21 = *(&v37 + 1);
          v26 = vorrq_s8(*&v38[8], *&v38[24]);
          v20 = *&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | *v38;
        }

        else
        {
          if ((v38[40] & 0xE0) != 0xA0 || v38[40] != 160)
          {
            goto LABEL_40;
          }

          v19 = vorrq_s8(*&v38[8], *&v38[24]);
          v20 = *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v38;
          v21 = *(&v37 + 1) | v37;
        }

        if (!(v20 | v21))
        {
          sub_264B12188(v39);
          v13 = 1;
          return v13 & 1;
        }

        goto LABEL_40;
      }

      if ((v38[40] & 0xE0) != 0x80)
      {
        sub_2649E124C(*&v35[0], BYTE8(v35[0]));
        goto LABEL_40;
      }

      v14 = v37;
      v15 = BYTE8(v37);
      if (BYTE8(v35[0]) <= 0xFBu)
      {
        *&v29[0] = *&v35[0];
        BYTE8(v29[0]) = BYTE8(v35[0]);
        if (BYTE8(v37) <= 0xFBu)
        {
          v27 = v37;
          v28 = BYTE8(v37);
          sub_264A525C8(&v37, &v32);
          sub_264A525C8(v35, &v32);
          sub_264A525C8(&v37, &v32);
          sub_264A525C8(v35, &v32);
          sub_2649E124C(v9, v10);
          v25 = _s16ScreenSharingKit11ServerErrorO2eeoiySbAC_ACtFZ_0(v29, &v27);
          sub_264B12188(v39);
          sub_2649E12A4(v27, v28);
          sub_2649E12A4(*&v29[0], BYTE8(v29[0]));
          sub_2649E1290(v9, v10);
          if (v25)
          {
            v13 = 1;
            return v13 & 1;
          }

          goto LABEL_41;
        }

        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_2649E124C(v9, v10);
        sub_264B12188(v39);
        sub_2649E12A4(v9, v10);
      }

      else
      {
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264A525C8(&v37, &v32);
        sub_264A525C8(v35, &v32);
        sub_264B12188(v39);
        if (v15 > 0xFBu)
        {
          sub_2649E1290(v9, v10);
          v13 = 1;
          return v13 & 1;
        }
      }

      sub_2649E1290(v9, v10);
      sub_2649E1290(v14, v15);
      goto LABEL_41;
    }

    if ((v38[40] & 0xE0) != 0x60)
    {
LABEL_18:

LABEL_40:
      sub_264A525C8(&v37, &v32);
      sub_264B12188(v39);
LABEL_41:
      v13 = 0;
      return v13 & 1;
    }

    v13 = sub_264B0F340(*&v35[0], v37);
    sub_264A525C8(&v37, &v32);
    v16 = &v32;
LABEL_16:
    sub_264A525C8(v35, v16);
    goto LABEL_17;
  }

  if (!v11)
  {
    if (v38[40] > 0x1Fu)
    {
      *&v34[9] = *(a1 + 41);
      v22 = a1[1];
      v32 = *a1;
      v33 = v22;
      *v34 = a1[2];
      v34[24] &= 0x1Fu;
      sub_264B121F0(&v32, v29);
      goto LABEL_40;
    }

    v32 = v35[0];
    v33 = v2;
    *v34 = *v36;
    *&v34[16] = v7 >> 56;
    v34[24] = HIBYTE(v7) & 0x1F;
    v29[0] = v37;
    v29[1] = *v38;
    v29[2] = *&v38[16];
    v30 = *&v38[32];
    v31 = v38[40];
    v13 = _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(&v32, v29);
    sub_264A525C8(&v37, &v27);
    v16 = &v27;
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    if ((v38[40] & 0xE0) == 0x20)
    {
      v12 = v37;
      sub_264A525C8(&v37, &v32);
      sub_264A525C8(v35, &v32);
      v13 = sub_264B0EF58(v9, v12);
LABEL_17:
      sub_264B12188(v39);
      return v13 & 1;
    }

    goto LABEL_18;
  }

  if ((v38[40] & 0xE0) != 0x40)
  {
    goto LABEL_40;
  }

  sub_264B12188(v39);
  v13 = v37 == LOBYTE(v35[0]) && *(&v35[0] + 1) == *(&v37 + 1);
  return v13 & 1;
}

uint64_t sub_264B12188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8C988, &unk_264B56E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264B121F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8D0, &qword_264B51990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B12260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 57))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 56) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264B122B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_264B12334(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 56) = *(result + 56) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = -96;
  }

  return result;
}

unint64_t sub_264B12380()
{
  result = qword_27FF8C9F0;
  if (!qword_27FF8C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C9F0);
  }

  return result;
}

unint64_t sub_264B123D4()
{
  result = qword_27FF8C9F8;
  if (!qword_27FF8C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8C9F8);
  }

  return result;
}

unint64_t sub_264B12428()
{
  result = qword_27FF8CA00;
  if (!qword_27FF8CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA00);
  }

  return result;
}

unint64_t sub_264B1247C()
{
  result = qword_27FF8CA08;
  if (!qword_27FF8CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA08);
  }

  return result;
}

unint64_t sub_264B124D0()
{
  result = qword_27FF8CA18;
  if (!qword_27FF8CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA18);
  }

  return result;
}

unint64_t sub_264B12524()
{
  result = qword_27FF8CA20;
  if (!qword_27FF8CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA20);
  }

  return result;
}

unint64_t sub_264B12578()
{
  result = qword_27FF8CA28;
  if (!qword_27FF8CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA28);
  }

  return result;
}

unint64_t sub_264B125CC()
{
  result = qword_27FF8CA30;
  if (!qword_27FF8CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA30);
  }

  return result;
}

unint64_t sub_264B12620()
{
  result = qword_27FF8CA38;
  if (!qword_27FF8CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA38);
  }

  return result;
}

unint64_t sub_264B12674()
{
  result = qword_27FF8CA40;
  if (!qword_27FF8CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA40);
  }

  return result;
}

unint64_t sub_264B126C8()
{
  result = qword_27FF8CA48;
  if (!qword_27FF8CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA48);
  }

  return result;
}

unint64_t sub_264B1271C()
{
  result = qword_27FF8CA50;
  if (!qword_27FF8CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA50);
  }

  return result;
}

unint64_t sub_264B12770()
{
  result = qword_27FF8CA58;
  if (!qword_27FF8CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA58);
  }

  return result;
}

unint64_t sub_264B127C4()
{
  result = qword_27FF8CA60;
  if (!qword_27FF8CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA60);
  }

  return result;
}

unint64_t sub_264B12818()
{
  result = qword_27FF8CA68;
  if (!qword_27FF8CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CA68);
  }

  return result;
}

unint64_t sub_264B1286C()
{
  result = qword_27FF8CAD0;
  if (!qword_27FF8CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAD0);
  }

  return result;
}

uint64_t sub_264B128C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89D80, &qword_264B45588);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264B12938()
{
  result = qword_27FF8CAE0;
  if (!qword_27FF8CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAE0);
  }

  return result;
}

unint64_t sub_264B1298C()
{
  result = qword_27FF8CAE8;
  if (!qword_27FF8CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerStatusEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ServerStatusEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_264B12BE4()
{
  result = qword_27FF8CAF0;
  if (!qword_27FF8CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAF0);
  }

  return result;
}

unint64_t sub_264B12C3C()
{
  result = qword_27FF8CAF8;
  if (!qword_27FF8CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CAF8);
  }

  return result;
}

unint64_t sub_264B12C94()
{
  result = qword_27FF8CB00;
  if (!qword_27FF8CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB00);
  }

  return result;
}

unint64_t sub_264B12CEC()
{
  result = qword_27FF8CB08;
  if (!qword_27FF8CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB08);
  }

  return result;
}

unint64_t sub_264B12D44()
{
  result = qword_27FF8CB10;
  if (!qword_27FF8CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB10);
  }

  return result;
}

unint64_t sub_264B12D9C()
{
  result = qword_27FF8CB18;
  if (!qword_27FF8CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB18);
  }

  return result;
}

unint64_t sub_264B12DF4()
{
  result = qword_27FF8CB20;
  if (!qword_27FF8CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB20);
  }

  return result;
}

unint64_t sub_264B12E4C()
{
  result = qword_27FF8CB28;
  if (!qword_27FF8CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB28);
  }

  return result;
}

unint64_t sub_264B12EA4()
{
  result = qword_27FF8CB30;
  if (!qword_27FF8CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB30);
  }

  return result;
}

unint64_t sub_264B12EFC()
{
  result = qword_27FF8CB38;
  if (!qword_27FF8CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB38);
  }

  return result;
}

unint64_t sub_264B12F54()
{
  result = qword_27FF8CB40;
  if (!qword_27FF8CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB40);
  }

  return result;
}

unint64_t sub_264B12FAC()
{
  result = qword_27FF8CB48;
  if (!qword_27FF8CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB48);
  }

  return result;
}

unint64_t sub_264B13004()
{
  result = qword_27FF8CB50;
  if (!qword_27FF8CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB50);
  }

  return result;
}

unint64_t sub_264B1305C()
{
  result = qword_27FF8CB58;
  if (!qword_27FF8CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB58);
  }

  return result;
}

unint64_t sub_264B130B4()
{
  result = qword_27FF8CB60;
  if (!qword_27FF8CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB60);
  }

  return result;
}

unint64_t sub_264B1310C()
{
  result = qword_27FF8CB68;
  if (!qword_27FF8CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB68);
  }

  return result;
}

unint64_t sub_264B13164()
{
  result = qword_27FF8CB70;
  if (!qword_27FF8CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB70);
  }

  return result;
}

unint64_t sub_264B131BC()
{
  result = qword_27FF8CB78;
  if (!qword_27FF8CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB78);
  }

  return result;
}

unint64_t sub_264B13214()
{
  result = qword_27FF8CB80;
  if (!qword_27FF8CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB80);
  }

  return result;
}

unint64_t sub_264B1326C()
{
  result = qword_27FF8CB88;
  if (!qword_27FF8CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB88);
  }

  return result;
}

unint64_t sub_264B132C4()
{
  result = qword_27FF8CB90;
  if (!qword_27FF8CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB90);
  }

  return result;
}

unint64_t sub_264B1331C()
{
  result = qword_27FF8CB98;
  if (!qword_27FF8CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CB98);
  }

  return result;
}

unint64_t sub_264B13374()
{
  result = qword_27FF8CBA0;
  if (!qword_27FF8CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBA0);
  }

  return result;
}

unint64_t sub_264B133CC()
{
  result = qword_27FF8CBA8;
  if (!qword_27FF8CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBA8);
  }

  return result;
}

unint64_t sub_264B13424()
{
  result = qword_27FF8CBB0;
  if (!qword_27FF8CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBB0);
  }

  return result;
}

unint64_t sub_264B1347C()
{
  result = qword_27FF8CBB8;
  if (!qword_27FF8CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBB8);
  }

  return result;
}

unint64_t sub_264B134D4()
{
  result = qword_27FF8CBC0;
  if (!qword_27FF8CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBC0);
  }

  return result;
}

unint64_t sub_264B1352C()
{
  result = qword_27FF8CBC8;
  if (!qword_27FF8CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBC8);
  }

  return result;
}

unint64_t sub_264B13584()
{
  result = qword_27FF8CBD0;
  if (!qword_27FF8CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBD0);
  }

  return result;
}

unint64_t sub_264B135DC()
{
  result = qword_27FF8CBD8;
  if (!qword_27FF8CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBD8);
  }

  return result;
}

uint64_t sub_264B13630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C616974696E69 && a2 == 0xEC000000676E697ALL || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xEE006B636F6C6E55 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F467964616572 && a2 == 0xED00006F65646956 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B61A10 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000264B61A30 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000264B61A50 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4973726F736E6573 && a2 == 0xEC0000006573556ELL || (sub_264B41AA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7845726576726573 && a2 == 0xED0000676E697469)
  {

    return 10;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_264B139C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (*(v5 + 48) == 1)
  {
    swift_beginAccess();
    v11 = *(v5 + 40);
    if (*(v11 + 16))
    {

      v12 = sub_264A20ACC(a3, a4);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
      }

      else
      {
        v14 = 0;
      }

      if (a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
      if (a5)
      {
LABEL_10:
        if (!v14)
        {
          sub_264B142E0(a3, a4);
          sub_264ACDF24(a1, a2);

          return;
        }

        v15 = qword_27FF88418;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_264B40964();
        __swift_project_value_buffer(v16, qword_27FF8AEA0);
        sub_2649DEF18(a1, a2);
        sub_2649DEF18(a1, a2);

        v17 = sub_264B40944();
        v18 = sub_264B41494();

        if (!os_log_type_enabled(v17, v18))
        {
          sub_2649DEF6C(a1, a2);
          sub_2649DEF6C(a1, a2);
LABEL_38:

          sub_264ACDF24(a1, a2);

          return;
        }

        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v19 = 136446722;
        type metadata accessor for ServerDragSurrogateManager();

        v20 = sub_264B41064();
        v22 = sub_2649CC004(v20, v21, &v33);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_2649CC004(a3, a4, &v33);
        *(v19 + 22) = 2050;
        v23 = a2 >> 62;
        if ((a2 >> 62) <= 1)
        {
          if (!v23)
          {
            sub_2649DEF6C(a1, a2);
            v24 = BYTE6(a2);
LABEL_37:
            *(v19 + 24) = v24;
            sub_2649DEF6C(a1, a2);
            _os_log_impl(&dword_2649C6000, v17, v18, "%{public}s: Received purportedly the FIRST message for drag identifier %{public}s (size %{public}ld bytes), but a session already exists for that identifier, so it can't be the first message", v19, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266749940](v32, -1, -1);
            MEMORY[0x266749940](v19, -1, -1);
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        if (v23 != 2)
        {
          sub_2649DEF6C(a1, a2);
          v24 = 0;
          goto LABEL_37;
        }

        a3 = *(a1 + 16);
        a4 = *(a1 + 24);
        sub_2649DEF6C(a1, a2);
        v24 = a4 - a3;
        if (!__OFSUB__(a4, a3))
        {
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    if (v14)
    {
      sub_264ACDF24(a1, a2);

      return;
    }

    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v25 = sub_264B40964();
    __swift_project_value_buffer(v25, qword_27FF8AEA0);
    sub_2649DEF18(a1, a2);
    sub_2649DEF18(a1, a2);

    v17 = sub_264B40944();
    v19 = sub_264B41494();

    if (!os_log_type_enabled(v17, v19))
    {
      sub_2649DEF6C(a1, a2);
      sub_2649DEF6C(a1, a2);
LABEL_43:

      return;
    }

    v14 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v14 = 136446722;
    type metadata accessor for ServerDragSurrogateManager();

    v26 = sub_264B41064();
    v28 = sub_2649CC004(v26, v27, &v33);

    *(v14 + 4) = v28;
    *(v14 + 12) = 2050;
    v24 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v24)
      {
        sub_2649DEF6C(a1, a2);
        LODWORD(v29) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_46:
          __break(1u);
          return;
        }

        v29 = v29;
      }

      else
      {
        sub_2649DEF6C(a1, a2);
        v29 = BYTE6(a2);
      }

LABEL_42:
      *(v14 + 14) = v29;
      sub_2649DEF6C(a1, a2);
      *(v14 + 22) = 2082;
      *(v14 + 24) = sub_2649CC004(a3, a4, &v33);
      _os_log_impl(&dword_2649C6000, v17, v19, "%{public}s: Dropping drag data of size %{public}ld bytes for drag identifier %{public}s because it's for a surrogate session that has already finished", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
      goto LABEL_43;
    }

LABEL_30:
    if (v24 == 2)
    {
      v31 = *(a1 + 16);
      v30 = *(a1 + 24);
      sub_2649DEF6C(a1, a2);
      v29 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        __break(1u);
LABEL_34:
        sub_2649DEF6C(a1, a2);
        LODWORD(v24) = HIDWORD(a1) - a1;
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v24 = v24;
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      sub_2649DEF6C(a1, a2);
      v29 = 0;
    }

    goto LABEL_42;
  }
}

void sub_264B13F74()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    if (qword_27FF88418 != -1)
    {
LABEL_22:
      swift_once();
    }

    v2 = sub_264B40964();
    v3 = __swift_project_value_buffer(v2, qword_27FF8AEA0);

    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v1;
      v29 = v7;
      *v6 = 136446210;
      type metadata accessor for ServerDragSurrogateManager();

      v8 = sub_264B41064();
      v10 = v3;
      v11 = sub_2649CC004(v8, v9, &v29);

      *(v6 + 4) = v11;
      v3 = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s: Invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v1 + 48) = 0;
    swift_beginAccess();
    v1 = *(v1 + 40);
    v12 = 1 << *(v1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
LABEL_15:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v1 + 56) + ((v16 << 9) | (8 * v19)));
      if ((*(v20 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) & 1) == 0)
      {
        *(v20 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) = 1;
        v21 = *(v20 + 16);

        if (sub_264B40544())
        {

          v22 = sub_264B40944();
          v23 = sub_264B414B4();

          if (os_log_type_enabled(v22, v23))
          {
            v27 = v3;
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v28 = v25;
            *v24 = 136446210;
            *(v24 + 4) = sub_2649CC004(*(v20 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v20 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v28);
            _os_log_impl(&dword_2649C6000, v22, v23, "Drag %{public}s: Canceling active surrogate drag controller", v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v25);
            MEMORY[0x266749940](v25, -1, -1);
            v26 = v24;
            v3 = v27;
            MEMORY[0x266749940](v26, -1, -1);
          }

          v17 = *(v20 + 16);
          sub_264B404C4();
        }
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v1 + 64 + 8 * v18);
      ++v16;
      if (v14)
      {
        v16 = v18;
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_264B142E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AEA0);

  v7 = sub_264B40944();
  v8 = sub_264B414B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2649CC004(a1, a2, &v30);
    _os_log_impl(&dword_2649C6000, v7, v8, "Drag %{public}s: Adding drag surrogate session", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = type metadata accessor for ServerDragSurrogateSession(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_264AD0378(a1, a2, v11, v12, v13);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  v20 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  v21 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking + 8);
  *v19 = sub_264B16090;
  v19[1] = v18;

  sub_2649CB67C(v20);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = (v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  v24 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  v25 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish + 8);
  *v23 = sub_264B160B0;
  v23[1] = v22;

  sub_2649CB67C(v24);

  swift_beginAccess();

  v26 = *(v3 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  sub_264A229B8(v17, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 40) = v29;
  swift_endAccess();
  if (*(v3 + 48) == 1)
  {
    sub_264B146B8();
    sub_264B149A8();
    sub_264B15030();
  }

  return v17;
}

uint64_t sub_264B145F8()
{
  sub_264B41244();
  sub_264B41704();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == 1)
    {
      sub_264B146B8();
      sub_264B149A8();
      sub_264B15030();
    }
  }

  return result;
}

uint64_t sub_264B146B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v0 + 40);

  v10 = 0;
  v34 = v0;
  v33 = v2;
  while (v6)
  {
LABEL_11:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v10 << 6);
    if (*(*(*(v2 + 56) + 8 * v15) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
    {
      v16 = (*(v2 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = qword_27FF88418;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_264B40964();
      __swift_project_value_buffer(v20, qword_27FF8AEA0);

      v21 = sub_264B40944();
      v22 = sub_264B414B4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_2649CC004(v18, v17, &v35);
        _os_log_impl(&dword_2649C6000, v21, v22, "Drag %{public}s: Removing drag surrogate session", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        v25 = v24;
        v2 = v33;
        MEMORY[0x266749940](v25, -1, -1);
        v26 = v23;
        v1 = v34;
        MEMORY[0x266749940](v26, -1, -1);
      }

      swift_beginAccess();
      v27 = *(v1 + 40);
      v28 = sub_264A20ACC(v18, v17);
      LOBYTE(v27) = v29;

      if (v27)
      {
        v30 = *(v1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v1 + 40);
        *(v1 + 40) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_264A23538();
        }

        v11 = *(*(v32 + 48) + 16 * v28 + 8);

        v12 = *(*(v32 + 56) + 8 * v28);

        sub_264A91DA4(v28, v32);
        *(v1 + 40) = v32;
      }

      swift_endAccess();
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
    }

    v6 = *(v3 + 8 * v13);
    ++v10;
    if (v6)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264B149A8()
{
  v57 = sub_264B40104();
  v55 = *(v57 - 8);
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_264B15234(*(v3 + 16), 0);
    v6 = sub_264B15D98(&v59, v5 + 4, v4, v3);
    swift_bridgeObjectRetain_n();
    sub_264A0E7A0();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v59 = v5;
  sub_264B15340(&v59);

  v8 = v59;
  LODWORD(v9) = v59 < 0 || (v59 & 0x4000000000000000) != 0;
  if (v9 == 1)
  {
    goto LABEL_59;
  }

  for (i = *(v59 + 16); i; i = sub_264B41884())
  {
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v13 = v8 + 32;
    v55 += 8;
    *&v7 = 136446210;
    v44 = v7;
    *&v7 = 136446466;
    v52 = v7;
    v48 = v8 + 32;
    v49 = i;
    v47 = v8;
    v46 = v9;
    v45 = v8 & 0xC000000000000001;
    while (v12)
    {
      v14 = MEMORY[0x266748A70](v11, v8);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_54;
      }

LABEL_16:
      v16 = v11 - 1;
      if (v11 >= 1)
      {
        if (v9)
        {
          if (v11 > sub_264B41884())
          {
            goto LABEL_11;
          }
        }

        else if (v11 > *(v8 + 16))
        {
          goto LABEL_11;
        }

        if (v12)
        {
          v17 = MEMORY[0x266748A70](v11 - 1, v8);
        }

        else
        {
          if (v16 >= *(v8 + 16))
          {
            goto LABEL_58;
          }

          v18 = *(v13 + 8 * v16);
        }

        v19 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking);

        if ((v19 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) != 1)
      {
        v51 = v15;
        v20 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData;
        if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) == 1)
        {

          v15 = v51;
        }

        else
        {
          if (qword_27FF88418 != -1)
          {
            swift_once();
          }

          v21 = sub_264B40964();
          v22 = __swift_project_value_buffer(v21, qword_27FF8AEA0);

          v23 = sub_264B40944();
          v24 = sub_264B414B4();

          v25 = os_log_type_enabled(v23, v24);
          v54 = v22;
          if (v25)
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v58[0] = v27;
            *v26 = v44;
            *(v26 + 4) = sub_2649CC004(*(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), v58);
            _os_log_impl(&dword_2649C6000, v23, v24, "Drag %{public}s: Starting to process received data", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x266749940](v27, -1, -1);
            MEMORY[0x266749940](v26, -1, -1);
          }

          *(v14 + v20) = 1;
          v28 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
          swift_beginAccess();
          v29 = *(v14 + v28);
          *(v14 + v28) = MEMORY[0x277D84F90];
          v30 = *(v29 + 16);
          if (v30)
          {
            v53 = v14 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier;
            v31 = *(v14 + 16);
            v50 = v29;
            v32 = (v29 + 40);
            do
            {
              v9 = *(v32 - 1);
              v34 = *v32;

              sub_2649DEF18(v9, v34);
              v35 = sub_264B40944();
              v8 = sub_264B414B4();

              if (os_log_type_enabled(v35, v8))
              {
                v36 = swift_slowAlloc();
                v37 = swift_slowAlloc();
                v58[0] = v37;
                *v36 = v52;
                *(v36 + 4) = sub_2649CC004(*v53, *(v53 + 8), v58);
                *(v36 + 12) = 2050;
                v38 = v34 >> 62;
                if ((v34 >> 62) > 1)
                {
                  if (v38 == 2)
                  {
                    v41 = *(v9 + 16);
                    v40 = *(v9 + 24);
                    v42 = __OFSUB__(v40, v41);
                    v39 = v40 - v41;
                    if (v42)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    v39 = 0;
                  }
                }

                else if (v38)
                {
                  LODWORD(v39) = HIDWORD(v9) - v9;
                  if (__OFSUB__(HIDWORD(v9), v9))
                  {
                    goto LABEL_57;
                  }

                  v39 = v39;
                }

                else
                {
                  v39 = BYTE6(v34);
                }

                *(v36 + 14) = v39;
                _os_log_impl(&dword_2649C6000, v35, v8, "Drag %{public}s: Surrogate session is processing received drag data of size %{public}ld bytes", v36, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v37);
                MEMORY[0x266749940](v37, -1, -1);
                MEMORY[0x266749940](v36, -1, -1);
              }

              else
              {
              }

              v32 += 2;
              v33 = v56;
              sub_264B404B4();
              sub_264B40484();
              sub_2649DEF6C(v9, v34);
              (*v55)(v33, v57);
              --v30;
            }

            while (v30);

            v8 = v47;
            LODWORD(v9) = v46;
            i = v49;
            v12 = v45;
          }

          else
          {

            i = v49;
          }

          v13 = v48;
          v15 = v51;
        }

        goto LABEL_12;
      }

LABEL_11:

LABEL_12:
      v11 = v15;
      if (v15 == i)
      {
      }
    }

    if (v11 >= *(v8 + 16))
    {
      goto LABEL_55;
    }

    v14 = *(v13 + 8 * v11);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_16;
    }

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
LABEL_59:
    ;
  }
}

void sub_264B15030()
{
  swift_beginAccess();
  v1 = *(*(v0 + 40) + 16);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEA0);

  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    type metadata accessor for ServerDragSurrogateManager();

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s: %{public}ld surrogate sessions still exist", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }
}

uint64_t sub_264B151C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

void *sub_264B15234(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_264B152BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD70, &qword_264B4DB90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_264B15340(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_264B16044(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_264B153BC(v6);
  return sub_264B417E4();
}

uint64_t sub_264B153BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264B41A54();
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
        type metadata accessor for ServerDragSurrogateSession(0);
        v6 = sub_264B41184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_264B15538(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_264B154C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_264B154C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v9 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264B15538(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_264B15D84(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_264B15AD4((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264B15D84(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_264B15CF8(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2649D7F24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2649D7F24((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_264B15AD4((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264B15D84(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_264B15CF8(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v27 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_264B15AD4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) < *(*v17 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) >= *(*v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_264B15CF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264B15D84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_264B15D98(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264B15EEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v19 = *v17;
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = v19;
      v11[1] = v18;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_264B16058()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B160D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_264B1612C()
{
  sub_2649CB5C0(v0 + 16, v22);
  v1 = v23;
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v21[3] = v8;
  v21[4] = &off_28765B720;
  v21[0] = v7;
  type metadata accessor for SpringBoardBackedSystemEventConsumer();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v19 = v8;
  v20 = &off_28765B720;
  *&v18 = v15;
  swift_defaultActor_initialize();
  sub_2649D2AAC(&v18, v9 + 112);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  sub_264B16330();
  return v9;
}

uint64_t sub_264B16304@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264B1612C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_264B16330()
{
  result = qword_27FF8CBE0;
  if (!qword_27FF8CBE0)
  {
    type metadata accessor for SpringBoardBackedSystemEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBE0);
  }

  return result;
}

uint64_t static ControlMessageSession.SessionError.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_16:
        if (v3 <= 4)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3 == 1)
      {
        goto LABEL_12;
      }
    }

    else if (!v3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v2 == 3)
  {
    goto LABEL_14;
  }

  if (v2 != 4)
  {
    goto LABEL_16;
  }

  if (v3 != 4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v4 = 1;
LABEL_15:
  sub_264A78FDC(*a1);
  sub_264A78FDC(v3);
  sub_264A78FEC(v2);
  sub_264A78FEC(v3);
  return v4;
}

uint64_t sub_264B16440(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

LABEL_16:
      if (v3 < 5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v2 == 3)
  {
    goto LABEL_14;
  }

  if (v2 != 4)
  {
    goto LABEL_16;
  }

  if (v3 != 4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v4 = 1;
LABEL_15:
  sub_264A78FDC(*a1);
  sub_264A78FDC(v3);
  sub_264A78FEC(v2);
  sub_264A78FEC(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit21ControlMessageSessionC0F5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264B16510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264B16568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

__n128 sub_264B165F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_264B40E64();
  sub_264B40C64();
  v7 = sub_264B40D94();
  *a3 = sub_264B16974;
  *(a3 + 8) = v6;
  *(a3 + 80) = v13;
  *(a3 + 96) = v14;
  *(a3 + 112) = v15;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  result = v12;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  *(a3 + 128) = v7;
  return result;
}

uint64_t sub_264B166D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40C24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v10[1] = a2;
  swift_getKeyPath();
  (*(v5 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B28, &qword_264B57EE0);
  sub_2649CB4C8(&qword_27FF8CBE8, &qword_27FF88B28, &qword_264B57EE0);
  sub_264A10B60();
  sub_2649E22F0();
  return sub_264B40E54();
}

uint64_t sub_264B168B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_264B40C14();
  v5 = v4;
  v7 = v6;
  type metadata accessor for Stroke();

  result = sub_264B40E24();
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v5;
  a2[3] = v7;
  return result;
}

uint64_t sub_264B1693C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264B1697C()
{
  v1 = sub_264B40C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264B16A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(sub_264B40C24() - 8) + 80);

  return sub_264B168B4(a1, a2);
}

unint64_t sub_264B16A88()
{
  result = qword_27FF8CBF0;
  if (!qword_27FF8CBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CBF8, &qword_264B57EE8);
    sub_264B16B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBF0);
  }

  return result;
}

unint64_t sub_264B16B14()
{
  result = qword_27FF8CC00;
  if (!qword_27FF8CC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CC08, &qword_264B57EF0);
    sub_264B16BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC00);
  }

  return result;
}

unint64_t sub_264B16BA0()
{
  result = qword_27FF8CC10;
  if (!qword_27FF8CC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CC18, &qword_264B57EF8);
    sub_2649CB4C8(&qword_27FF8CC20, &qword_27FF8CC28, &unk_264B57F00);
    sub_264A347C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC10);
  }

  return result;
}

Swift::UInt64 __swiftcall UIEvent.extractEventID()()
{
  [v0 timestamp];

  return sub_264B403F4();
}

uint64_t Stroke.__allocating_init(id:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
  sub_264B401A4();
  v6 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t Stroke.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_264B16E9C()
{
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
}

uint64_t sub_264B16F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  *a2 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
}

uint64_t sub_264B16FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40164();
}

uint64_t sub_264B170C8()
{
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  return *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke);
}

uint64_t sub_264B17170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  *a2 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke);
  return result;
}

uint64_t sub_264B17248(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
    sub_264B40164();
  }

  return result;
}

uint64_t Stroke.init(id:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
  sub_264B401A4();
  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_264B17410()
{
  v1 = v0;
  v2 = sub_264B40C44();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CGPathCreateMutable();
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v57 = v0;
  v9 = sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  v55 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points;
  v10 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
  if (!*(v10 + 16))
  {
    return Mutable;
  }

  v11 = type metadata accessor for IdentifiablePoint();
  v46 = *(v11 - 8);
  v12 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v47 = v11;
  v13 = (v10 + *(v11 + 20) + v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = *MEMORY[0x277CDFA88];
  v17 = v3[13];
  v51 = v3 + 13;
  v52 = v17;
  v17(v6, v16, v2);
  CGPoint.locationFromPointPercentage(in:layoutDirection:)(v6);
  v18 = v3[1];
  v53 = v3 + 1;
  v45 = v18;
  v18(v6, v2);
  v57 = 0x3FF0000000000000;
  v58 = 0;
  v59 = 0;
  v60 = 0x3FF0000000000000;
  v61 = 0;
  v62 = 0;
  sub_264B414D4();
  swift_getKeyPath();
  v56 = v1;
  v48 = v8;
  v54 = v9;
  v19 = v12;
  sub_264B40174();

  v44 = *(*(v1 + v55) + 16);
  if (v44 == 1)
  {
LABEL_8:
    swift_getKeyPath();
    v56 = v1;
    sub_264B40174();

    v37 = *(v1 + v55);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + v19 + *(v46 + 72) * (v38 - 1) + *(v47 + 20));
      v40 = *v39;
      v41 = v39[1];
      v52(v6, v16, v2);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v6);
      v45(v6, v2);
      sub_264B414E4();
    }

    return Mutable;
  }

  if (v44)
  {
    v21 = 1;
    v43 = Mutable;
    v42 = v12;
    while (1)
    {
      v22 = v16;
      v50 = v21;
      v23 = v21 - 1;
      swift_getKeyPath();
      v56 = v1;
      sub_264B40174();

      v24 = *(v1 + v55);
      if (v23 >= *(v24 + 16))
      {
        break;
      }

      v49 = *(v46 + 72);
      v25 = v24 + v19 + v49 * v23;
      v26 = v47;
      v27 = (v25 + *(v47 + 20));
      v28 = *v27;
      v29 = v27[1];
      v52(v6, v22, v2);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v6);
      v30 = v45;
      v45(v6, v2);
      swift_getKeyPath();
      v56 = v1;
      sub_264B40174();

      v31 = *(v1 + v55);
      if (v50 >= *(v31 + 16))
      {
        goto LABEL_12;
      }

      v32 = v50 + 1;
      v33 = v42;
      v34 = (v31 + v42 + v49 * v50 + *(v26 + 20));
      v35 = *v34;
      v36 = v34[1];
      v52(v6, v22, v2);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v6);
      v30(v6, v2);
      Mutable = v43;
      sub_264B414C4();
      v21 = v32;
      v16 = v22;
      v19 = v33;
      if (v44 == v32)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Stroke()
{
  result = qword_27FF8CC48;
  if (!qword_27FF8CC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264B17A40(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for IdentifiablePoint();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_264B400F4();
  v15 = &v14[*(v7 + 28)];
  *v15 = a1;
  v15[1] = a2;
  sub_2649D86F8(v14, v12);
  swift_getKeyPath();
  v23 = v3;
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke);
  sub_264B40174();

  v23 = v3;
  swift_getKeyPath();
  sub_264B40194();

  v16 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points;
  v17 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_2649D7C40(0, v17[2] + 1, 1, v17);
    *(v3 + v16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_2649D7C40(v19 > 1, v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  sub_2649D875C(v12, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20);
  *(v3 + v16) = v17;
  v23 = v3;
  swift_getKeyPath();
  sub_264B40184();

  return sub_2649D8910(v14);
}

uint64_t Stroke.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v5 = sub_264B401B4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t Stroke.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v5 = sub_264B401B4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264B17E58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v5 = sub_264B40104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_264B17F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264B17F6C()
{
  result = sub_264B40104();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_264B401B4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_264B18108()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = *(v0 + 24);
}

uint64_t sub_264B1814C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_264B181A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = type metadata accessor for AccessibilityBackedDrawEventConsumer();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  v8 = sub_264A5F37C(v3);
  result = sub_264B1820C();
  *a1 = v8;
  a1[1] = result;
  return result;
}

unint64_t sub_264B1820C()
{
  result = qword_27FF8A1B8;
  if (!qword_27FF8A1B8)
  {
    type metadata accessor for AccessibilityBackedDrawEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1B8);
  }

  return result;
}

uint64_t DemoModeUserDefaultsPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  DemoModeUserDefaultsPrimitives.init()();
  return v0;
}

uint64_t DemoModeUserDefaultsPrimitives.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000264B5A6C0;
  v2 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000264B5A720;
  *(inited + 96) = 0;
  *(inited + 120) = v2;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000264B5A700;
  *(inited + 168) = v2;
  *(inited + 144) = 0;
  v3 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  *(v0 + 16) = v3;
  return v0;
}

uint64_t sub_264B183A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_264B1846C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_264A20ACC(a1, a2);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t DemoModeUserDefaultsPrimitives.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DemoModeUserDefaultsPrimitives.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_264B18600(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t NetworkMonitorStatus.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264B1882C()
{
  result = qword_27FF8CC58;
  if (!qword_27FF8CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC58);
  }

  return result;
}

uint64_t dispatch thunk of ControlTransport.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2649CD850;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t SignpostConsumer.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v0;
}

uint64_t SignpostConsumer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

void __swiftcall MobileGestaltBackedLocalDeviceInformationPrimitives.init()(ScreenSharingKit::MobileGestaltBackedLocalDeviceInformationPrimitives *__return_ptr retstr)
{
  v2 = sub_264B41014();
  v3 = MGGetSInt32Answer();

  v4 = sub_264B41014();
  v5 = MGGetStringAnswer();

  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = sub_264B41044();
  v8 = v7;

  v9 = sub_264B41014();
  v10 = MGGetStringAnswer();

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = sub_264B41044();
  v13 = v12;

  v14 = sub_264B41014();
  v15 = MGGetStringAnswer();

  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = sub_264B41044();
  v18 = v17;

  if (v16 == 0x312C393163614D69 && v18 == 0xE800000000000000 || (sub_264B41AA4() & 1) != 0 || v16 == 0x322C393163614D69 && v18 == 0xE800000000000000)
  {

    v19 = 0;
  }

  else
  {
    v21 = sub_264B41AA4();

    v19 = v21 ^ 1;
  }

  v20 = 2 * (v3 == 1);
  if (v3 == 9)
  {
    v20 = ScreenSharingKit_Platform_mac;
  }

  retstr->platform = v20;
  retstr->osBuild._countAndFlagsBits = v6;
  retstr->osBuild._object = v8;
  retstr->userAssignedDeviceName._countAndFlagsBits = v11;
  retstr->userAssignedDeviceName._object = v13;
  retstr->isDeviceSupported = v19 & 1;
}

uint64_t MobileGestaltBackedLocalDeviceInformationPrimitives.osBuild.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MobileGestaltBackedLocalDeviceInformationPrimitives.userAssignedDeviceName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_264B18DE8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_264B18E20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264B18E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_264B18EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AnnotationServicesClient.__allocating_init(interruptionHandler:)(uint64_t a1, uint64_t a2)
{
  v13[3] = &type metadata for ConcreteAXUIClientProvider;
  v13[4] = &off_287657A80;
  v5 = objc_allocWithZone(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for ConcreteAXUIClientProvider);
  v12[3] = &type metadata for ConcreteAXUIClientProvider;
  v12[4] = &off_287657A80;
  v6 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_serviceName];
  *v6 = 0xD000000000000020;
  *(v6 + 1) = 0x8000000264B5CE30;
  v7 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_2649CB5C0(v12, &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClientProvider]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v9;
}

uint64_t sub_264B19024()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  *(v0 + 192) = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 16);
  v3 = *(v0 + 40);
  sub_2649D04D4(v0 + 16, &qword_27FF8CC80, &unk_264B58268);
  if (v3)
  {
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE28);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Annotation service already started", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    sub_2649E24BC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
LABEL_13:
    v22 = *(v0 + 8);

    return v22();
  }

  v9 = *(v0 + 184);
  v10 = type metadata accessor for ConcreteAXUIClient();
  v11 = [objc_allocWithZone(v10) init];
  *(v0 + 80) = v10;
  *(v0 + 88) = &off_28765D808;
  *(v0 + 56) = v11;
  v12 = *__swift_project_boxed_opaque_existential_1((v0 + 56), v10);
  sub_264AB0DC4(*(v9 + OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler), *(v9 + OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler + 8));
  v24 = *(*__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  *(v0 + 200) = v24;
  if (!v24)
  {
    sub_2649E24BC();
    v26 = swift_allocError();
    *v27 = 8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FF8AE28);
    v14 = v26;
    v15 = sub_264B40944();
    v16 = sub_264B41494();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = v26;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2649C6000, v15, v16, "Failed to start Annotation Service: %{public}@", v17, 0xCu);
      sub_2649D04D4(v18, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    sub_2649E24BC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  *(v0 + 224) = 0;
  v24;
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_264B19464;

  return sub_264AB130C((v0 + 224), 0);
}

uint64_t sub_264B19464()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_264B196D8;
  }

  else
  {
    v3 = sub_264B19578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B19578()
{
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE28);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Client received Screen sharing start success callback", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

  sub_2649CB5C0(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_264B1B900(v0 + 96, v6 + v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264B196D8()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to start Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264B198A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CC80, &unk_264B58268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B19934()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_2649D2AAC((v0 + 56), v0 + 16);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    swift_beginAccess();
    sub_264B1B900(v0 + 96, v1 + v2);
    swift_endAccess();
    v3 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 192) = v3;
    if (v3)
    {
      *(v0 + 232) = 1;
      v3;
      v4 = swift_task_alloc();
      *(v0 + 200) = v4;
      *v4 = v0;
      v4[1] = sub_264B19CAC;

      return sub_264AB130C((v0 + 232), 0);
    }

    sub_2649E24BC();
    v7 = swift_allocError();
    *v8 = 8;
    swift_willThrow();
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE28);
    v10 = v7;
    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2649C6000, v11, v12, "Failed to stop Annotation Service: %{public}@", v13, 0xCu);
      sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_2649D04D4(v0 + 56, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264B19CAC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_264B19F78;
  }

  else
  {
    v3 = sub_264B19DC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B19DC0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_264B19E64;

  return sub_264AB0FB0();
}

uint64_t sub_264B19E64()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_264B1A268;
  }

  else
  {
    v3 = sub_264B1A148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B19F78()
{
  v1 = *(v0 + 208);
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to stop Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264B1A148()
{
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE28);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Client received Screen Sharing Service stop success callback", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264B1A268()
{
  v1 = v0[28];
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to stop Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v11 = v0[1];

  return v11();
}

uint64_t AnnotationServicesClient.sendTapEvent(_:_:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 432) = a1;
  *(v4 + 440) = v3;
  *(v4 + 416) = a2;
  *(v4 + 424) = a3;
  return MEMORY[0x2822009F8](sub_264B1A454, 0, 0);
}

uint64_t sub_264B1A454()
{
  v1 = *(v0 + 440);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 304);
  if (*(v0 + 328))
  {
    sub_2649D2AAC((v0 + 304), v0 + 264);
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    *(v0 + 448) = __swift_project_value_buffer(v3, qword_27FF8AE28);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 432);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_2649C6000, v4, v5, "Sending a tap, eventID = %llu", v7, 0xCu);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v0 + 432);
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);

    v11 = __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46DF0;
    *(v0 + 368) = 0xD000000000000012;
    *(v0 + 376) = 0x8000000264B59970;
    sub_264B416F4();
    v13 = MEMORY[0x277D85048];
    *(inited + 96) = MEMORY[0x277D85048];
    *(inited + 72) = v10;
    *(v0 + 384) = 0xD000000000000012;
    *(v0 + 392) = 0x8000000264B59990;
    sub_264B416F4();
    *(inited + 168) = v13;
    *(inited + 144) = v9;
    *(v0 + 400) = 0x656449746E657665;
    *(v0 + 408) = 0xEF7265696669746ELL;
    sub_264B416F4();
    *(inited + 240) = MEMORY[0x277D84D38];
    *(inited + 216) = v8;
    v14 = sub_264A240D0(inited);
    *(v0 + 456) = v14;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v15 = *(*v11 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 464) = v15;
    if (v15)
    {
      *(v0 + 488) = 2;
      v15;
      v16 = swift_task_alloc();
      *(v0 + 472) = v16;
      *v16 = v0;
      v16[1] = sub_264B1A968;

      return sub_264AB130C((v0 + 488), v14);
    }

    sub_2649E24BC();
    v19 = swift_allocError();
    *v20 = 8;
    swift_willThrow();
    v21 = *(v0 + 448);
    v22 = v19;
    v23 = sub_264B40944();
    v24 = sub_264B41494();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v19;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2649C6000, v23, v24, "Annotation Service failed to send tap gesture: %{public}@", v25, 0xCu);
      sub_2649D04D4(v26, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v26, -1, -1);
      MEMORY[0x266749940](v25, -1, -1);
    }

    swift_allocError();
    *v29 = 5;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  }

  else
  {
    sub_2649D04D4(v0 + 304, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_264B1A968()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  v4 = *(v2 + 456);

  if (v0)
  {
    v5 = sub_264B1AAF8;
  }

  else
  {
    v5 = sub_264B1AA8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B1AA8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1AAF8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Annotation Service failed to send tap gesture: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 5;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 544) = v5;
  *(v6 + 536) = a3;
  *(v6 + 528) = a5;
  *(v6 + 520) = a4;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  return MEMORY[0x2822009F8](sub_264B1ACB4, 0, 0);
}

uint64_t sub_264B1ACB4()
{
  v1 = *(v0 + 544);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 376);
  if (*(v0 + 400))
  {
    sub_2649D2AAC((v0 + 376), v0 + 336);
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    *(v0 + 552) = __swift_project_value_buffer(v3, qword_27FF8AE28);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 536);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_2649C6000, v4, v5, "Sending a drag, eventID = %llu", v7, 0xCu);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B54770;
    *(v0 + 440) = 0xD000000000000010;
    *(v0 + 448) = 0x8000000264B599B0;
    v14 = MEMORY[0x277D837D0];
    sub_264B416F4();
    *(inited + 96) = v14;
    *(inited + 72) = v12;
    *(inited + 80) = v11;
    *(v0 + 456) = 0xD000000000000012;
    *(v0 + 464) = 0x8000000264B59970;

    sub_264B416F4();
    v15 = MEMORY[0x277D85048];
    *(inited + 168) = MEMORY[0x277D85048];
    *(inited + 144) = v10;
    *(v0 + 472) = 0xD000000000000012;
    *(v0 + 480) = 0x8000000264B59990;
    sub_264B416F4();
    *(inited + 240) = v15;
    *(inited + 216) = v9;
    *(v0 + 488) = 0x656449746E657665;
    *(v0 + 496) = 0xEF7265696669746ELL;
    sub_264B416F4();
    *(inited + 312) = MEMORY[0x277D84D38];
    *(inited + 288) = v8;
    v16 = sub_264A240D0(inited);
    *(v0 + 560) = v16;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v17 = *(*__swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 568) = v17;
    if (v17)
    {
      *(v0 + 592) = 3;
      v17;
      v18 = swift_task_alloc();
      *(v0 + 576) = v18;
      *v18 = v0;
      v18[1] = sub_264B1B208;

      return sub_264AB130C((v0 + 592), v16);
    }

    sub_2649E24BC();
    v21 = swift_allocError();
    *v22 = 8;
    swift_willThrow();
    v23 = *(v0 + 552);
    v24 = v21;
    v25 = sub_264B40944();
    v26 = sub_264B41494();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_2649C6000, v25, v26, "Annotation Service failed to send drag gesture: %{public}@", v27, 0xCu);
      sub_2649D04D4(v28, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v28, -1, -1);
      MEMORY[0x266749940](v27, -1, -1);
    }

    swift_allocError();
    *v31 = 6;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  else
  {
    sub_2649D04D4(v0 + 376, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_264B1B208()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  v4 = *(v2 + 560);

  if (v0)
  {
    v5 = sub_264B1B398;
  }

  else
  {
    v5 = sub_264B1B32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264B1B32C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1B398()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Annotation Service failed to send drag gesture: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 6;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v11 = *(v0 + 8);

  return v11();
}

id AnnotationServicesClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnnotationServicesClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264B1B668()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return AnnotationServicesClient.startAnnotationService()();
}

uint64_t sub_264B1B6F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return AnnotationServicesClient.stopAnnotationService()();
}

uint64_t sub_264B1B788(uint64_t a1, double a2, double a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return AnnotationServicesClient.sendTapEvent(_:_:)(a1, a2, a3);
}

uint64_t sub_264B1B838(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2649E0EE4;

  return AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(a1, a2, a3, a4, a5);
}

uint64_t sub_264B1B900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CC80, &unk_264B58268);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackServer.invalidate(waitsForSession:)(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 121) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B1BA7C, 0, 0);
}

uint64_t sub_264B1BA7C()
{
  v1 = v0[5];
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription))
  {
    v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription);

    sub_264B40994();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription))
  {
    v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription);

    sub_264B40994();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle))
  {
    v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle))
  {
    v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle))
  {
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {
    v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle))
  {
    v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {
    v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle);

    sub_264B41304();

    v1 = v0[5];
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  swift_beginAccess();
  if (!(*(v11 + 48))(v1 + v13, 1, v12))
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    (*(v15 + 16))(v14, v1 + v13, v16);
    sub_264B412B4();
    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[5];
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v18 = swift_task_alloc();
  v0[9] = v18;
  *(v18 + 16) = v17;
  v19 = *(MEMORY[0x277D859B8] + 4);
  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_264B1BE04;

  return MEMORY[0x282200740]();
}

void sub_264B1BE04()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 40);
    swift_unownedRelease();
    swift_unownedRelease();

    MEMORY[0x2822009F8](sub_264B1BF5C, 0, 0);
  }
}

uint64_t sub_264B1BF5C()
{
  if (*(v0 + 121) == 1)
  {
    v1 = *(MEMORY[0x277D859E0] + 4);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_264B1C0A8;
    v3 = *(v0 + 40);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_264B41244();
    *(v0 + 112) = sub_264B41234();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B1C344, v5, v4);
  }
}

uint64_t sub_264B1C0A8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264B1C1A4, 0, 0);
}

uint64_t sub_264B1C1A4()
{
  sub_264B41244();
  *(v0 + 104) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B1C238, v2, v1);
}

void sub_264B1C238()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[5];

  sub_264B22330();
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_264B1C2E4, 0, 0);
  }
}

uint64_t sub_264B1C2E4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B1C344()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 0;

  sub_264B40A94();
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t PlaybackServer.targetedDisplayIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  v6 = v2 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(a1, a2, v7, v8);
  return swift_endAccess();
}

uint64_t PlaybackServer.changeInteractionState(_:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 64) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_264B1C58C, 0, 0);
}

uint64_t sub_264B1C58C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_264B41274();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_264B41244();

  v6 = sub_264B41234();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;
  v9 = sub_2649CD944(0, 0, v2, &unk_264B496B8, v7);
  *(v0 + 40) = v9;
  v10 = *(MEMORY[0x277D857C8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v11 = v0;
  v11[1] = sub_264B1C720;
  v13 = MEMORY[0x277D84950];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v12, v9, v14, v12, v13);
}

uint64_t sub_264B1C720()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_264B1C8A4;
  }

  else
  {
    v3 = sub_264B1C834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B1C834()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264B1C8A4()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_264B1C914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728);
  v3 = *(v2 - 8);
  v19[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC8, &qword_264B58730);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v9;
  v23 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v11 = a1;
  v19[1] = a1;
  v10(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = *(v3 + 32);
  v14(v13 + v12, v5, v2);
  v10(v5, v11, v2);
  v15 = swift_allocObject();
  v14(v15 + v12, v5, v2);
  sub_2649CB4C8(&qword_27FF8CED0, &qword_27FF8CEC8, &qword_264B58730);
  v17 = v20;
  v16 = v21;
  sub_264B40B04();

  (*(v22 + 8))(v17, v16);
  return sub_264B41294();
}

uint64_t sub_264B1CC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640);
  v3 = *(v2 - 8);
  v19[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE18, &qword_264B58648);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v9;
  v23 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v11 = a1;
  v19[1] = a1;
  v10(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = *(v3 + 32);
  v14(v13 + v12, v5, v2);
  v10(v5, v11, v2);
  v15 = swift_allocObject();
  v14(v15 + v12, v5, v2);
  sub_2649CB4C8(&qword_27FF8CE20, &qword_27FF8CE18, &qword_264B58648);
  v17 = v20;
  v16 = v21;
  sub_264B40B04();

  (*(v22 + 8))(v17, v16);
  return sub_264B41294();
}

uint64_t sub_264B1CFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670);
  v3 = *(v2 - 8);
  v19[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE38, &qword_264B58678);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v9;
  v23 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v11 = a1;
  v19[1] = a1;
  v10(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = *(v3 + 32);
  v14(v13 + v12, v5, v2);
  v10(v5, v11, v2);
  v15 = swift_allocObject();
  v14(v15 + v12, v5, v2);
  sub_2649CB4C8(&qword_27FF8CE40, &qword_27FF8CE38, &qword_264B58678);
  v17 = v20;
  v16 = v21;
  sub_264B40B04();

  (*(v22 + 8))(v17, v16);
  return sub_264B41294();
}

uint64_t sub_264B1D334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF0, &qword_264B58600);
  v3 = *(v2 - 8);
  v21 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF8, &qword_264B58608);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = &v17 - v9;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  type metadata accessor for RTIMessage();
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v19 = a1;
  v10(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v18 + v11, v5, v2);
  v10(v5, a1, v2);
  v13 = swift_allocObject();
  v12(v13 + v11, v5, v2);
  sub_2649CB4C8(&qword_27FF8CE00, &qword_27FF8CDF8, &qword_264B58608);
  v14 = v22;
  v15 = v20;
  sub_264B40B04();

  (*(v23 + 8))(v15, v14);
  return sub_264B41294();
}

uint64_t sub_264B1D6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0);
  v3 = *(v2 - 8);
  v19[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC0, &qword_264B585B8);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v9;
  v23 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v11 = a1;
  v19[1] = a1;
  v10(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = *(v3 + 32);
  v14(v13 + v12, v5, v2);
  v10(v5, v11, v2);
  v15 = swift_allocObject();
  v14(v15 + v12, v5, v2);
  sub_2649CB4C8(&qword_27FF8CDD8, &qword_27FF8CDC0, &qword_264B585B8);
  v17 = v20;
  v16 = v21;
  sub_264B40B04();

  (*(v22 + 8))(v17, v16);
  return sub_264B41294();
}

uint64_t sub_264B1DA00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA0, &qword_264B586F8);
  v3 = *(v2 - 8);
  v21 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA8, &qword_264B58700);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = &v17 - v9;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  type metadata accessor for HIDMessage();
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v19 = a1;
  v10(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v18 + v11, v5, v2);
  v10(v5, a1, v2);
  v13 = swift_allocObject();
  v12(v13 + v11, v5, v2);
  sub_2649CB4C8(&qword_27FF8CEB0, &qword_27FF8CEA8, &qword_264B58700);
  v14 = v22;
  v15 = v20;
  sub_264B40B04();

  (*(v23 + 8))(v15, v14);
  return sub_264B41294();
}

uint64_t sub_264B1DD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0);
  v3 = *(v2 - 8);
  v19[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE70, &qword_264B586B8);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v9;
  v23 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0);
  sub_264B40AC4();

  v10 = *(v3 + 16);
  v11 = a1;
  v19[1] = a1;
  v10(v5, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = *(v3 + 32);
  v14(v13 + v12, v5, v2);
  v10(v5, v11, v2);
  v15 = swift_allocObject();
  v14(v15 + v12, v5, v2);
  sub_2649CB4C8(&qword_27FF8CE78, &qword_27FF8CE70, &qword_264B586B8);
  v17 = v20;
  v16 = v21;
  sub_264B40B04();

  (*(v22 + 8))(v17, v16);
  return sub_264B41294();
}

uint64_t sub_264B1E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = *(v7 + 4);
    v12 = *(v7 + 5);
    v13 = *(v7 + 12);
    v14 = *(v7 + 1);
    *a2 = *v7;
    *(a2 + 16) = v14;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v13 = 0;
    v9 = 0uLL;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v10 = xmmword_264B582F0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  return result;
}

uint64_t sub_264B1E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v9 = *v7;
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);
    v12 = v7[33];
    *(a2 + 32) = v7[32];
    *(a2 + 33) = v12;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v10 = 0;
    v11 = 0;
    *(a2 + 32) = 0;
    v9 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_264B1E2D8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = xmmword_264B58300;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_264B1E3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_264B3C650(v7, a2, type metadata accessor for RTIMessage);
    v8 = 0;
  }

  else
  {
    sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v8 = 1;
  }

  v9 = type metadata accessor for RTIMessage();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_264B1E4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HIDMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ControlMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v15, type metadata accessor for ControlMessage);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_264B3C650(v15, v9, type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = type metadata accessor for HIDReportMessage;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = type metadata accessor for HIDUpdateInputDevicesMessage;
    }

    sub_264B3C650(v9, v11, v17);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_264B3C650(v11, a2, type metadata accessor for HIDMessage);
    v18 = 0;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

  sub_264B3C518(v15, type metadata accessor for ControlMessage);
  v18 = 1;
  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_264B1E72C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = xmmword_264B58310;
    v10 = 0uLL;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_264B1E810(uint64_t a1)
{
  v2 = type metadata accessor for RTIMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE08, &qword_264B58610);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  sub_264B3C4B0(a1, v5, type metadata accessor for RTIMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF0, &qword_264B58600);
  sub_264B412A4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_264B1E968(uint64_t a1)
{
  v2 = type metadata accessor for HIDMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEB8, &qword_264B58708);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  sub_264B3C4B0(a1, v5, type metadata accessor for HIDMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA0, &qword_264B586F8);
  sub_264B412A4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t PlaybackServer.targetedDisplayIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_264B1EB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v6 = v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 24);

  v9(v2, v3, v7, v8);
  return swift_endAccess();
}

uint64_t (*PlaybackServer.targetedDisplayIdentifier.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264B1EC3C;
}

uint64_t sub_264B1EC3C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = v5 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    v11 = *(v10 + 24);

    v11(v6, v7, v9, v10);

    return swift_endAccess();
  }

  return result;
}

uint64_t PlaybackServer.interactionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_264B1ED90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_264B1EE18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B1EEB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CD98, &qword_264B584D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  sub_264B40A64();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PlaybackServer.isActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264B1F0B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264B1F130(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B1F1A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PlaybackServer.__allocating_init(session:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a1;
  v65 = a3;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v60 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v60);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_264AF0CF8();
  *(&v85 + 1) = 0;
  *&v86 = 0;
  *(&v82 + 1) = 0;
  *&v83 = 0;
  v18 = type metadata accessor for AccessibilityBackedDrawEventConsumerVendor();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *&v85 = v19;
  *(&v86 + 1) = v18;
  v87 = &off_281EE5BF8;
  v66 = v17;
  v61 = v17;
  v20 = type metadata accessor for UHIDBackedSystemEventConsumerVendor();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&v82 = v21;
  *(&v83 + 1) = v20;
  v84 = &off_281EE1908;
  if (v18)
  {
    sub_2649CB5C0(&v85, &v79);
    v20 = *(&v83 + 1);
  }

  else
  {
    v79 = v85;
    v80 = v86;
    v81 = v87;
  }

  v22 = type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 32) = v66;
  if (v20)
  {
    sub_2649CB5C0(&v82, &v76);
  }

  else
  {
    v76 = v82;
    v77 = v83;
    v78 = v84;
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v69[3] = v22;
  v69[4] = &off_287660300;
  v69[0] = v23;
  v24 = *(v4 + 48);
  v25 = *(v4 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v67 = 0;
  v68 = 1;
  sub_264B40A44();
  (*(v13 + 32))(v26 + v27, v16, v12);
  v28 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  LOBYTE(v67) = 0;
  sub_264B40A44();
  (*(v8 + 32))(v26 + v28, v11, v60);
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v29 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v35 - 8) + 56))(v26 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v37 - 8) + 56))(v26 + v36, 1, 1, v37);
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v64;
  v38 = v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(&v80 + 1))
  {
    sub_2649CB5C0(&v79, v38);
  }

  else
  {
    v39 = v80;
    *v38 = v79;
    *(v38 + 16) = v39;
    *(v38 + 32) = v81;
  }

  sub_2649CB5C0(v69, v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v40 = v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(&v77 + 1))
  {
    sub_2649CB5C0(&v76, v40);
  }

  else
  {
    v41 = v77;
    *v40 = v76;
    *(v40 + 16) = v41;
    *(v40 + 32) = v78;
  }

  v42 = v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(&v74 + 1))
  {
    sub_2649CB5C0(&v73, v42);
  }

  else
  {
    v43 = v74;
    *v42 = v73;
    *(v42 + 16) = v43;
    *(v42 + 32) = v75;
  }

  v44 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v44 = 0;
  v44[1] = 0;
  v45 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v45 = 0;
  v45[1] = 0;
  *(v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v66;
  v46 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v47 = 0;
  v47[1] = 0;
  v48 = v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(&v71 + 1))
  {
    sub_2649CB5C0(&v70, v48);
  }

  else
  {
    v49 = v71;
    *v48 = v70;
    *(v48 + 16) = v49;
    *(v48 + 32) = v72;
  }

  v50 = (v26 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  v51 = v65;
  *v50 = v62;
  v50[1] = v51;
  v52 = v61;

  v53 = v63;
  sub_264B41254();
  v54 = sub_264B41274();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = swift_allocObject();
  swift_weakInit();
  sub_264B41244();

  v56 = sub_264B41234();
  v57 = swift_allocObject();
  v58 = MEMORY[0x277D85700];
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v55;

  sub_264A10C20(0, 0, v53, &unk_264B49610, v57);

  if (*(&v71 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v70);
  }

  if (*(&v74 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v73);
  }

  if (*(&v77 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v76);
  }

  if (*(&v80 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  if (*(&v83 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v82);
  }

  if (*(&v86 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v85);
  }

  __swift_destroy_boxed_opaque_existential_0(v69);
  return v26;
}

uint64_t PlaybackServer.__allocating_init(session:telemetry:interruptionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a1;
  v66 = a4;
  v63 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v61 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v61);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  *(&v86 + 1) = 0;
  *&v87 = 0;
  *(&v83 + 1) = 0;
  *&v84 = 0;
  v19 = type metadata accessor for AccessibilityBackedDrawEventConsumerVendor();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *&v86 = v20;
  *(&v87 + 1) = v19;
  v88 = &off_281EE5BF8;
  v67 = a2;
  v62 = a2;
  v21 = type metadata accessor for UHIDBackedSystemEventConsumerVendor();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *&v83 = v22;
  *(&v84 + 1) = v21;
  v85 = &off_281EE1908;
  if (v19)
  {
    sub_2649CB5C0(&v86, &v80);
    v21 = *(&v84 + 1);
  }

  else
  {
    v80 = v86;
    v81 = v87;
    v82 = v88;
  }

  v23 = type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 32) = v67;
  if (v21)
  {
    sub_2649CB5C0(&v83, &v77);
  }

  else
  {
    v77 = v83;
    v78 = v84;
    v79 = v85;
  }

  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70[3] = v23;
  v70[4] = &off_287660300;
  v70[0] = v24;
  v25 = *(v5 + 48);
  v26 = *(v5 + 52);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v68 = 0;
  v69 = 1;
  sub_264B40A44();
  (*(v15 + 32))(v27 + v28, v18, v14);
  v29 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  LOBYTE(v68) = 0;
  sub_264B40A44();
  (*(v10 + 32))(v27 + v29, v13, v61);
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v30 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v36 - 8) + 56))(v27 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v38 - 8) + 56))(v27 + v37, 1, 1, v38);
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v65;
  v39 = v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(&v81 + 1))
  {
    sub_2649CB5C0(&v80, v39);
  }

  else
  {
    v40 = v81;
    *v39 = v80;
    *(v39 + 16) = v40;
    *(v39 + 32) = v82;
  }

  sub_2649CB5C0(v70, v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v41 = v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(&v78 + 1))
  {
    sub_2649CB5C0(&v77, v41);
  }

  else
  {
    v42 = v78;
    *v41 = v77;
    *(v41 + 16) = v42;
    *(v41 + 32) = v79;
  }

  v43 = v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(&v75 + 1))
  {
    sub_2649CB5C0(&v74, v43);
  }

  else
  {
    v44 = v75;
    *v43 = v74;
    *(v43 + 16) = v44;
    *(v43 + 32) = v76;
  }

  v45 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v46 = 0;
  v46[1] = 0;
  *(v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v67;
  v47 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v48 = 0;
  v48[1] = 0;
  v49 = v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(&v72 + 1))
  {
    sub_2649CB5C0(&v71, v49);
  }

  else
  {
    v50 = v72;
    *v49 = v71;
    *(v49 + 16) = v50;
    *(v49 + 32) = v73;
  }

  v51 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  v52 = v66;
  *v51 = v63;
  v51[1] = v52;
  v53 = v62;

  v54 = v64;
  sub_264B41254();
  v55 = sub_264B41274();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = swift_allocObject();
  swift_weakInit();
  sub_264B41244();

  v57 = sub_264B41234();
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D85700];
  v58[2] = v57;
  v58[3] = v59;
  v58[4] = v56;

  sub_264A10C20(0, 0, v54, &unk_264B58400, v58);

  if (*(&v72 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v71);
  }

  if (*(&v75 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v74);
  }

  if (*(&v78 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v77);
  }

  if (*(&v81 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v80);
  }

  if (*(&v84 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v83);
  }

  if (*(&v87 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v86);
  }

  __swift_destroy_boxed_opaque_existential_0(v70);
  return v27;
}