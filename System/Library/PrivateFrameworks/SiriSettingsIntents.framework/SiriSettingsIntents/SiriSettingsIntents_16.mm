uint64_t sub_268EC2FB0()
{
  v13 = MEMORY[0x277D55C70];
  v12 = *(v0 + 74);
  v9 = *(v0 + 73);
  *(v0 + 16) = v0;
  v18 = sub_268F9AEF4();
  v15 = v1;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v2;
  *v2 = sub_268F9AEF4();
  v11[1] = v3;
  v10 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = v9;
  v11[6] = sub_268F9AEF4();
  v11[7] = v4;
  v11[11] = v10;
  *(v11 + 64) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v0 + 48) = v16;
  v17 = (v13 + *v13);
  v5 = v13[1];
  v6 = swift_task_alloc();
  v14[7] = v6;
  *v6 = v14[2];
  v6[1] = sub_268EC31C0;
  v7 = v14[4];

  return v17(v18, v15, v16);
}

uint64_t sub_268EC31C0(uint64_t a1)
{
  v10 = *v2;
  v3 = *(*v2 + 56);
  v10[2] = *v2;
  v11 = v10 + 2;
  v10[8] = v1;

  if (v1)
  {
    v7 = *v11;

    return MEMORY[0x2822009F8](sub_268EC338C, 0);
  }

  else
  {
    v4 = v10[6];
    v8 = v10[5];

    v5 = *(*v11 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EC338C()
{
  v1 = v0[6];
  v7 = v0[5];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[8];

  return v3();
}

uint64_t sub_268EC3444()
{
  sub_268F9B734();
  *v0 = "dialog1";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "dialog2";
  *(v0 + 32) = 7;
  *(v0 + 40) = 2;
  *(v0 + 48) = "dialog3";
  *(v0 + 56) = 7;
  *(v0 + 64) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268EC36D8()
{
  v2 = qword_2802DDE80;
  if (!qword_2802DDE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC3824@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EC3444();
  *a2 = result;
  return result;
}

uint64_t sub_268EC385C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EC35C0();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EC3890(char a1, char a2)
{
  *(v3 + 32) = v2;
  *(v3 + 74) = a2 & 1;
  *(v3 + 73) = a1 & 1;
  *(v3 + 16) = v3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = a1 & 1;
  *(v3 + 80) = a2 & 1;
  *(v3 + 24) = v2;
  v4 = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_268EC3910, 0);
}

uint64_t sub_268EC3910()
{
  v14 = MEMORY[0x277D55C68];
  v13 = *(v0 + 74);
  v10 = *(v0 + 73);
  *(v0 + 16) = v0;
  v19 = sub_268F9AEF4();
  v16 = v1;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;
  v11 = MEMORY[0x277D839B0];
  v12[5] = MEMORY[0x277D839B0];
  *(v12 + 16) = v10;
  v12[6] = sub_268F9AEF4();
  v12[7] = v4;
  v12[11] = v11;
  *(v12 + 64) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  *(v0 + 48) = v17;
  v18 = (v14 + *v14);
  v5 = v14[1];
  v6 = swift_task_alloc();
  v15[7] = v6;
  v7 = sub_268EC36D8();
  *v6 = v15[2];
  v6[1] = sub_268EC31C0;
  v8 = v15[4];

  return v18(v19, v16, v17, &unk_287995510, v7);
}

uint64_t type metadata accessor for SettingIntentCATsSimple()
{
  v1 = qword_280FE43A8;
  if (!qword_280FE43A8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268EC3BAC()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268EC3C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268EC3C78(a1, a2, a3);
}

uint64_t sub_268EC3C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A9D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

uint64_t sub_268EC3E5C(char a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268EC3EB4(a1 & 1, a2);
}

uint64_t sub_268EC3EB4(int a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = sub_268F9AB24();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13);
  v8 = &v6 - v7;
  v16 = v9 & 1;
  v15 = v4;
  v17 = v2;
  (*(v11 + 16))(v3);
  v14 = sub_268F9A9E4();

  v17 = v14;
  (*(v11 + 8))(v10, v13);

  return v14;
}

uint64_t sub_268EC4010(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 22) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 233;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 23;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EC4178(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE9)
  {
    v5 = ((a3 + 22) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE9)
  {
    v4 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 22;
    }
  }

  return result;
}

uint64_t sub_268EC43D8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF2)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 13) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 242;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 14;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268EC4540(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF2)
  {
    v5 = ((a3 + 13) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF2)
  {
    v4 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

unint64_t sub_268EC48D0()
{
  v2 = qword_2802DDE88;
  if (!qword_2802DDE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4964()
{
  v2 = qword_2802DDE90;
  if (!qword_2802DDE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC49F8()
{
  v2 = qword_2802DDE98;
  if (!qword_2802DDE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4A8C()
{
  v2 = qword_2802DDEA0;
  if (!qword_2802DDEA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4B20()
{
  v2 = qword_2802DDEA8;
  if (!qword_2802DDEA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4BB4()
{
  v2 = qword_2802DDEB0;
  if (!qword_2802DDEB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4C48()
{
  v2 = qword_2802DDEB8;
  if (!qword_2802DDEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4CDC()
{
  v2 = qword_2802DDEC0;
  if (!qword_2802DDEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4D70()
{
  v2 = qword_2802DDEC8;
  if (!qword_2802DDEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4E04()
{
  v2 = qword_2802DDED0;
  if (!qword_2802DDED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4E98()
{
  v2 = qword_2802DDED8;
  if (!qword_2802DDED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4F2C()
{
  v2 = qword_2802DDEE0;
  if (!qword_2802DDEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC4FC0()
{
  v2 = qword_2802DDEE8;
  if (!qword_2802DDEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5054()
{
  v2 = qword_2802DDEF0;
  if (!qword_2802DDEF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC50E8()
{
  v2 = qword_2802DDEF8;
  if (!qword_2802DDEF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC517C()
{
  v2 = qword_2802DDF00;
  if (!qword_2802DDF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5210()
{
  v2 = qword_2802DDF08;
  if (!qword_2802DDF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC52A4()
{
  v2 = qword_2802DDF10;
  if (!qword_2802DDF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5338()
{
  v2 = qword_2802DDF18;
  if (!qword_2802DDF18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC53CC()
{
  v2 = qword_2802DDF20;
  if (!qword_2802DDF20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5460()
{
  v2 = qword_2802DDF28;
  if (!qword_2802DDF28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC54F4()
{
  v2 = qword_2802DDF30;
  if (!qword_2802DDF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5588()
{
  v2 = qword_2802DDF38;
  if (!qword_2802DDF38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC561C()
{
  v2 = qword_2802DDF40;
  if (!qword_2802DDF40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF40);
    return WitnessTable;
  }

  return v2;
}

id sub_268EC5698(uint64_t a1, uint64_t *a2)
{
  v22 = a1;
  v21 = a2;
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_268E42694(&v19);
  if (v19 == 65)
  {
    v11 = 0uLL;
  }

  else
  {
    *&v11 = BinarySettingIdentifier.rawValue.getter();
    *(&v11 + 1) = v2;
  }

  v18 = v11;
  if (*(&v11 + 1))
  {
    v20 = v18;
  }

  else
  {
    sub_268E4262C();
    if (v17 == 13)
    {
      v10 = 0uLL;
    }

    else
    {
      *&v10 = NumericSettingIdentifier.rawValue.getter();
      *(&v10 + 1) = v3;
    }

    v16 = v10;
    if (*(&v10 + 1))
    {
      v20 = v16;
    }

    else if (sub_268E491A0() == 2)
    {
      v20 = 0uLL;
    }

    else
    {
      *&v20 = sub_268E4577C();
      *(&v20 + 1) = v4;
    }
  }

  v5 = v20;
  memset(v15, 0, sizeof(v15));
  v7 = sub_268EC5980();
  v8 = sub_268F284EC(v5, *(&v5 + 1), v15, v7, 0);
  MEMORY[0x277D82BD8](v7);
  sub_268D28414(v15);

  v9 = [v14 initWithSettingMetadata:v8 searchQuery:0];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BE0](v9);
  v23 = v9;
  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v23);
  return v9;
}

id sub_268EC5980()
{
  v3 = sub_268E49208();
  v4 = v0;
  if (!v0)
  {
    return 0;
  }

  if (sub_268EC5AA0(v3, v0))
  {
    sub_268DA9760();
    return sub_268DA9564(v3, v4, 0, 0, 0, 0);
  }

  else
  {
    sub_268DA9760();
    return sub_268DA9564(0, 0, 0, 0, v3, v4);
  }
}

uint64_t sub_268EC5AA0(uint64_t a1, uint64_t a2)
{
  v5[4] = 0;
  v5[5] = a1;
  v5[6] = a2;
  v5[2] = a1;
  v5[3] = a2;
  v5[0] = sub_268F9AEF4();
  v5[1] = v2;
  sub_268EC5B58();
  sub_268EC5BD0();
  v4 = sub_268F9ADF4();
  sub_268CD9D30(v5);
  return v4 & 1;
}

unint64_t sub_268EC5B58()
{
  v2 = qword_2802DDF48;
  if (!qword_2802DDF48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC5BD0()
{
  v2 = qword_2802DDF50;
  if (!qword_2802DDF50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF50);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EC5C48()
{
  if (qword_280FE30E8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8040;
}

uint64_t sub_268EC5CA8()
{
  type metadata accessor for GetAnnounceNotificationsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8040 = result;
  return result;
}

uint64_t sub_268EC5D10()
{
  v1 = *sub_268EC5C48();

  return v1;
}

double sub_268EC5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBBC84();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268EC61D0, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268EC5F5C(void *a1, uint64_t a2, void (*a3)(id))
{
  v16 = [a1 settingMetadata];
  v17 = *(a2 + 16);

  v18 = sub_268D415B8();

  if (v18)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v3 = sub_268D4AA1C();
  v12 = sub_268E41A08(v16, 0, v3, v13, 0, 0);
  MEMORY[0x277D82BD8](v16);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v12);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v11);

  a3(v12);

  *&result = MEMORY[0x277D82BD8](v12).n128_u64[0];
  return result;
}

uint64_t sub_268EC6228()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268EC6540@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v22 = 0;
  v23 = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v16 = sub_268F9AEF4();
        v17 = v3;

        v22 = v16;
        v23 = v17;

        v20 = v17;
        break;
      case 2:
        v14 = sub_268F9AEF4();
        v15 = v4;

        v22 = v14;
        v23 = v15;

        v20 = v15;
        break;
      case 3:
        v12 = sub_268F9AEF4();
        v13 = v5;

        v22 = v12;
        v23 = v13;

        v20 = v13;
        break;
      default:
        v10 = sub_268F9AEF4();
        v11 = v6;

        v22 = v10;
        v23 = v11;

        v20 = v11;
        break;
    }
  }

  else
  {
    v18 = sub_268F9AEF4();
    v19 = v2;

    v22 = v18;
    v23 = v19;

    v20 = v19;
  }

  if (v20)
  {
    sub_268F9A9A4();
    v7 = sub_268F9A9C4();
    (*(*(v7 - 8) + 56))(a2, 0, 1);
  }

  else
  {
    v9 = sub_268F9A9C4();
    (*(*(v9 - 8) + 56))(a2, 1);
  }

  return sub_268CD9D30(&v22);
}

uint64_t sub_268EC68A8()
{
  sub_268F9B734();
  *v0 = "password";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "passwords";
  *(v0 + 32) = 9;
  *(v0 + 40) = 2;
  *(v0 + 48) = "privacy";
  *(v0 + 56) = 7;
  *(v0 + 64) = 2;
  *(v0 + 72) = "settings";
  *(v0 + 80) = 8;
  *(v0 + 88) = 2;
  *(v0 + 96) = "accessibility";
  *(v0 + 104) = 13;
  *(v0 + 112) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

unint64_t sub_268EC6B04()
{
  v2 = qword_2802DDF58;
  if (!qword_2802DDF58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC6C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268EC68A8();
  *a2 = result;
  return result;
}

uint64_t sub_268EC6C88@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268EC63FC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268EC6CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268EC6228();
  *a1 = result;
  return result;
}

uint64_t sub_268EC6D3C()
{
  sub_268EC6D94();
  sub_268EC6E10();
  sub_268EC6B04();
  return sub_268F9A4A4();
}

unint64_t sub_268EC6D94()
{
  v2 = qword_2802DDF60;
  if (!qword_2802DDF60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6E10()
{
  v2 = qword_2802DDF68;
  if (!qword_2802DDF68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6EB8()
{
  v2 = qword_2802DDF70;
  if (!qword_2802DDF70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6F4C()
{
  v2 = qword_2802DDF78;
  if (!qword_2802DDF78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC6FE0()
{
  v2 = qword_2802DDF80;
  if (!qword_2802DDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC7080()
{
  v2 = qword_2802DDF88;
  if (!qword_2802DDF88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EC70FC()
{
  type metadata accessor for SetReduceLoudSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1628 = result;
  return result;
}

uint64_t *sub_268EC7164()
{
  if (qword_2802DB7A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1628;
}

uint64_t sub_268EC71C4()
{
  v1 = *sub_268EC7164();

  return v1;
}

uint64_t sub_268EC71F4(uint64_t a1, void (*a2)(void))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268CD795C();
  v6 = sub_268CD42AC(7, 0);
  a2();
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268EC734C()
{
  type metadata accessor for SetVpnHandler();
  result = sub_268CDA260();
  qword_2802F1630 = result;
  return result;
}

uint64_t *sub_268EC73A8()
{
  if (qword_2802DB7A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1630;
}

uint64_t sub_268EC7408()
{
  v1 = *sub_268EC73A8();

  return v1;
}

uint64_t sub_268EC7438(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268DAB158();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268EC761C()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1638 = v2;
  return result;
}

uint64_t *sub_268EC765C()
{
  if (qword_2802DB7B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1638;
}

uint64_t sub_268EC76BC()
{
  v0 = sub_268EC765C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EC7734(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = v5;

  v5[12] = a3;
  sub_268CDE730(a1, v16);
  sub_268CDF978(v16, v5 + 2);
  sub_268CDE730(a2, v15);
  sub_268CDF978(v15, v5 + 7);
  sub_268CDE730(a4, v14);
  sub_268CDF978(v14, v5 + 13);
  sub_268CDE730(a5, v13);
  sub_268CDF978(v13, v5 + 18);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t sub_268EC7858@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_268F9B284();
  v2 = sub_268DC98C0();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  v3 = sub_268EC765C();
  MEMORY[0x277D82BE0](*v3);
  MEMORY[0x277D82BE0](a1);
  sub_268DA96FC();
  sub_268F99694();
  v4 = sub_268F996A4();
  return (*(*(v4 - 8) + 56))(a2, 0, 1);
}

uint64_t sub_268EC79C0(uint64_t a1, uint64_t a2)
{
  v3[34] = v2;
  v3[33] = a2;
  v3[32] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[31] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[36] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[38] = v7;
  v14 = *(v7 - 8);
  v3[39] = v14;
  v8 = *(v14 + 64) + 15;
  v3[40] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[42] = v10;
  v15 = *(v10 - 8);
  v3[43] = v15;
  v11 = *(v15 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;
  v12 = v3[27];

  return MEMORY[0x2822009F8](sub_268EC7BFC, 0);
}

uint64_t sub_268EC7BFC()
{
  v33 = v0[34];
  v0[27] = v0;
  sub_268F9B284();
  v1 = sub_268DC98C0();
  v32 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v32);
  sub_268CDE730(v33 + 104, (v0 + 2));
  v35 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
  v36 = (*(v34 + 16))(v35);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v36)
  {
    v27 = v31[33];
    v31[45] = *(v31[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v30 = sub_268F99B34();
    v31[46] = v30;
    v28 = sub_268F99B44();
    v31[47] = v28;
    v29 = sub_268F99B24();
    v31[48] = v29;
    v2 = swift_task_alloc();
    v31[49] = v2;
    *v2 = v31[27];
    v2[1] = sub_268EC829C;

    return sub_268E71398(v30, v28, v29);
  }

  else
  {
    v25 = v31[40];
    v20 = v31[37];
    v26 = v31[36];
    v19 = v31[33];
    v24 = *(v31[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v23 = sub_268F99B34();
    v22 = sub_268F99B44();
    v21 = sub_268F99B24();
    sub_268E6D858(v23, v22, v21, v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    sub_268D2DFAC(v26, (v31 + 30), v25);
    v13 = v31[40];
    v14 = v31[38];
    v11 = v31[35];
    v8 = v31[34];
    v10 = v31[32];
    v12 = v31[39];
    sub_268CDE730(v8 + 16, (v31 + 7));
    sub_268CDE730(v8 + 16, (v31 + 12));
    v9 = v31[16];
    __swift_project_boxed_opaque_existential_1(v31 + 12, v31[15]);
    sub_268F997C4();
    sub_268D34954();
    sub_268F9B734();
    v4 = sub_268F999A4();
    (*(*(v4 - 8) + 56))(v11, 1);
    v31[17] = 0;
    v31[18] = 0;
    v31[19] = 0;
    v31[20] = 0;
    v31[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v10[3] = sub_268F99C74();
    v10[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_268F998D4();

    sub_268D28414(v31 + 17);
    sub_268D34AC0(v11);

    __swift_destroy_boxed_opaque_existential_0(v31 + 12);
    __swift_destroy_boxed_opaque_existential_0(v31 + 7);
    (*(v12 + 8))(v13, v14);
    v5 = v31[44];
    v15 = v31[41];
    v16 = v31[40];
    v17 = v31[37];
    v18 = v31[35];

    v6 = *(v31[27] + 8);
    v7 = v31[27];

    return v6();
  }
}

uint64_t sub_268EC829C(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 392);
  *(v12 + 216) = *v2;
  v13 = (v12 + 216);
  *(v12 + 400) = a1;
  *(v12 + 408) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268EC8854;
  }

  else
  {
    v9 = *(v12 + 376);
    v10 = *(v12 + 368);
    v11 = *(v12 + 360);

    v5 = *v13;
    v6 = sub_268EC8450;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EC8450()
{
  v1 = v0[50];
  v9 = v0[44];
  v8 = v0[41];
  v10 = v0[34];
  v0[27] = v0;
  v0[31] = v1;
  sub_268F99804();
  sub_268D18250();

  sub_268F99B94();

  sub_268CDE730(v10 + 144, (v0 + 22));
  v12 = v0[25];
  v13 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v12);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v11[52] = v3;
  *v3 = v11[27];
  v3[1] = sub_268EC85AC;
  v4 = v11[50];
  v5 = v11[44];
  v6 = v11[32];

  return MEMORY[0x2821BB480](v6, v4, v5, v12, v13);
}

uint64_t sub_268EC85AC()
{
  v7 = *v1;
  v2 = *(*v1 + 416);
  *(v7 + 216) = *v1;
  v8 = (v7 + 216);
  *(v7 + 424) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268EC8980;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268EC8714;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268EC8714()
{
  v8 = v0[50];
  v6 = v0[44];
  v5 = v0[43];
  v7 = v0[42];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v5 + 8))(v6, v7);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[44];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[37];
  v12 = v0[35];

  v2 = *(v0[27] + 8);
  v3 = v0[27];

  return v2();
}

uint64_t sub_268EC8854()
{
  v1 = v0[48];
  v7 = v0[47];
  v8 = v0[46];
  v9 = v0[45];
  v0[27] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[51];
  v3 = v0[44];
  v10 = v0[41];
  v11 = v0[40];
  v12 = v0[37];
  v13 = v0[35];

  v4 = *(v0[27] + 8);
  v5 = v0[27];

  return v4();
}

uint64_t sub_268EC8980()
{
  v9 = v0[50];
  v7 = v0[44];
  v6 = v0[43];
  v8 = v0[42];
  v0[27] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[53];
  v2 = v0[44];
  v10 = v0[41];
  v11 = v0[40];
  v12 = v0[37];
  v13 = v0[35];

  v3 = *(v0[27] + 8);
  v4 = v0[27];

  return v3();
}

uint64_t sub_268EC8AC0(uint64_t a1, uint64_t a2)
{
  v3[34] = v2;
  v3[33] = a2;
  v3[32] = a1;
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[31] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[36] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[38] = v7;
  v14 = *(v7 - 8);
  v3[39] = v14;
  v8 = *(v14 + 64) + 15;
  v3[40] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[42] = v10;
  v15 = *(v10 - 8);
  v3[43] = v15;
  v11 = *(v15 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[28] = a2;
  v3[29] = v2;
  v12 = v3[27];

  return MEMORY[0x2822009F8](sub_268EC8CFC, 0);
}

uint64_t sub_268EC8CFC()
{
  v32 = v0[34];
  v0[27] = v0;
  sub_268F9B284();
  v1 = sub_268DC98C0();
  v31 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v31);
  sub_268CDE730(v32 + 104, (v0 + 2));
  v34 = v0[5];
  v33 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
  v35 = (*(v33 + 16))(v34);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v35)
  {
    v26 = v30[33];
    v30[45] = *(v30[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    v29 = sub_268F99B34();
    v30[46] = v29;
    v27 = sub_268F99B44();
    v30[47] = v27;
    v28 = sub_268F99B24();
    v30[48] = v28;
    v2 = swift_task_alloc();
    v30[49] = v2;
    *v2 = v30[27];
    v2[1] = sub_268EC829C;

    return sub_268E746C4(v29, v27, v28);
  }

  else
  {
    v24 = v30[40];
    v20 = v30[37];
    v25 = v30[36];
    v19 = v30[33];
    v23 = *(v30[34] + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDF90, &qword_268FA98F0);
    sub_268F99B34();
    v22 = sub_268F99B44();
    v21 = sub_268F99B24();
    sub_268E6F510(v22, v21, v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);

    sub_268D2DFAC(v25, (v30 + 30), v24);
    v13 = v30[40];
    v14 = v30[38];
    v11 = v30[35];
    v8 = v30[34];
    v10 = v30[32];
    v12 = v30[39];
    sub_268CDE730(v8 + 16, (v30 + 7));
    sub_268CDE730(v8 + 16, (v30 + 12));
    v9 = v30[16];
    __swift_project_boxed_opaque_existential_1(v30 + 12, v30[15]);
    sub_268F997C4();
    sub_268D34954();
    sub_268F9B734();
    v4 = sub_268F999A4();
    (*(*(v4 - 8) + 56))(v11, 1);
    v30[17] = 0;
    v30[18] = 0;
    v30[19] = 0;
    v30[20] = 0;
    v30[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v10[3] = sub_268F99C74();
    v10[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v10);
    sub_268F998D4();

    sub_268D28414(v30 + 17);
    sub_268D34AC0(v11);

    __swift_destroy_boxed_opaque_existential_0(v30 + 12);
    __swift_destroy_boxed_opaque_existential_0(v30 + 7);
    (*(v12 + 8))(v13, v14);
    v5 = v30[44];
    v15 = v30[41];
    v16 = v30[40];
    v17 = v30[37];
    v18 = v30[35];

    v6 = *(v30[27] + 8);
    v7 = v30[27];

    return v6();
  }
}

uint64_t sub_268EC939C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v3;
}

uint64_t sub_268EC9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v7, a4);
}

uint64_t sub_268EC9530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v7, a4);
}

uint64_t sub_268EC9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v7, a4);
}

uint64_t sub_268EC96D8(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EC79C0(a1, a2);
}

uint64_t sub_268EC9798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v7, a4);
}

uint64_t sub_268EC986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v7, a4);
}

uint64_t sub_268EC9940(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EC8AC0(a1, a2);
}

uint64_t sub_268EC9A18(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  v2 = sub_268EC9AC0();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268EC9AC0()
{
  v2 = qword_2802DDF98;
  if (!qword_2802DDF98)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EC9B40(uint64_t a1)
{
  result = sub_268EC9B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EC9B6C()
{
  v2 = qword_2802DDFA0;
  if (!qword_2802DDFA0)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268EC9C04()
{
  if (qword_280FE39C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80D0;
}

uint64_t sub_268EC9C64()
{
  type metadata accessor for GetReduceLoudSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80D0 = result;
  return result;
}

uint64_t sub_268EC9CCC()
{
  v1 = *sub_268EC9C04();

  return v1;
}

uint64_t sub_268EC9CFC(uint64_t a1, void (*a2)(void))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  v6 = sub_268E419BC(6);
  a2();
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268EC9E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  return sub_268ECA3C0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_268EC9F30()
{
  v2 = *(v0 + qword_2802DDFA8);

  return v2;
}

uint64_t sub_268EC9F64@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DDFB0;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268EC9FD0()
{
  v2 = *(v0 + qword_2802DDFB8);

  return v2;
}

uint64_t sub_268ECA004()
{
  v2 = *(v0 + qword_2802DDFC0);

  return v2;
}

uint64_t sub_268ECA060()
{
  v2 = *(v0 + qword_2802DDFD0);

  return v2;
}

uint64_t sub_268ECA094()
{
  v2 = *(v0 + qword_2802DDFD8);

  return v2;
}

uint64_t sub_268ECA0F0()
{
  v2 = *(v0 + qword_2802DDFE8);

  return v2;
}

uint64_t sub_268ECA124()
{
  v2 = *(v0 + qword_2802DDFF0);

  return v2;
}

uint64_t sub_268ECA180()
{
  v2 = *(v0 + qword_2802DE000);

  return v2;
}

uint64_t sub_268ECA1B4()
{
  v2 = *(v0 + qword_2802DE008);

  return v2;
}

uint64_t sub_268ECA1E8()
{
  v2 = *(v0 + qword_2802DE010);

  return v2;
}

uint64_t sub_268ECA21C()
{
  v2 = *(v0 + qword_2802DE018);

  return v2;
}

uint64_t sub_268ECA250()
{
  v2 = *(v0 + qword_2802DE020);

  return v2;
}

uint64_t sub_268ECA284()
{
  v2 = *(v0 + qword_2802DE028);

  return v2;
}

uint64_t sub_268ECA2E0()
{
  v2 = *(v0 + qword_2802DE038);

  return v2;
}

uint64_t sub_268ECA314()
{
  v5 = *(*v0 + qword_2802F1640);
  v4 = *(*v0 + qword_2802F1640 + 8);
  v2 = *(v0 + qword_2802DDFB8);

  v3 = sub_268F9AA34();

  return v3 & 1;
}

uint64_t sub_268ECA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v112 = a1;
  v121 = a2;
  v113 = a3;
  v114 = a4;
  v115 = a5;
  v116 = a6;
  v122 = a7;
  v117 = a8;
  v118 = a9;
  v119 = a10;
  v126 = a11;
  v127 = a12;
  v128 = a13;
  v120 = a14;
  v166 = 0;
  v164 = 0;
  v165 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v130 = *v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v110 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v111 = &v41 - v110;
  v123 = sub_268F9AB24();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v129 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v122);
  v131 = &v41 - v129;
  v168 = *(v130 + qword_2802F1640);
  v167 = *(v130 + qword_2802F1640 + 8);
  v164 = v17;
  v165 = v18;
  v162 = v19;
  v163 = v20;
  v161 = v21;
  v160 = v22;
  v159 = v23;
  v158 = v24;
  v157 = v25;
  v156 = v26;
  v155 = v126;
  v154 = v127;
  v153 = v128;
  v152 = v27;
  v166 = v14;
  v132 = v14;
  if (MEMORY[0x26D62DA00](v16))
  {
    v107 = sub_268F99874();
    v108 = sub_268F9B594();

    v109 = v108;
  }

  else
  {

    v109 = v122;
  }

  v28 = v123;
  v29 = v131;
  v30 = v124;
  v31 = v117;
  *(v132 + qword_2802DDFA8) = v109;
  v101 = v166;
  v99 = *(v30 + 16);
  v100 = v30 + 16;
  v99(v29, v31, v28);
  (*(v124 + 32))(v101 + qword_2802DDFB0, v131, v123);
  v103 = v166;
  sub_268F9AA44();
  v102 = v151;
  sub_268CDE730(v116, v151);
  *(v103 + qword_2802DDFB8) = sub_268F9AA14();
  sub_268F9AB14();
  sub_268CDF9B4();
  v106 = sub_268F9B8A4();
  v104 = *(v124 + 8);
  v105 = v124 + 8;
  v104(v131, v123);
  if (v106)
  {
    v72 = v166;
    v95 = 0;
    v71 = type metadata accessor for SetNumericSettingIntentCATs();
    v99(v131, v117, v123);
    v93 = sub_268F9A8C4();
    v70 = v144;
    sub_268CDE730(v116, v144);
    sub_268F9A894();
    *(v72 + qword_2802DDFD8) = sub_268F9A904();
    v75 = v166;
    v74 = type metadata accessor for SetBinarySettingIntentCATs();
    v99(v131, v117, v123);
    v73 = v143;
    sub_268CDE730(v116, v143);
    sub_268F9A894();
    *(v75 + qword_2802DDFC0) = sub_268F9A904();
    v78 = v166;
    v77 = type metadata accessor for SettingIntentCATs();
    v99(v131, v117, v123);
    v76 = v142;
    sub_268CDE730(v116, v142);
    sub_268F9A894();
    *(v78 + qword_2802DDFF0) = sub_268F9A904();
    v81 = v166;
    v80 = type metadata accessor for SetNumericSettingIntentCATPatternsExecutor();
    v99(v131, v117, v123);
    v79 = v140;
    sub_268CDE730(v116, v140);
    sub_268F9A894();
    v32 = sub_268F9A904();
    v141[3] = v80;
    v141[4] = &off_287998918;
    v141[0] = v32;
    sub_268CDF978(v141, v81 + qword_2802DDFE0);
    v84 = v166;
    v83 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor();
    v99(v131, v117, v123);
    v82 = v138;
    sub_268CDE730(v116, v138);
    sub_268F9A894();
    v33 = sub_268F9A904();
    v139[3] = v83;
    v139[4] = &off_28798CE80;
    v139[0] = v33;
    sub_268CDF978(v139, v84 + qword_2802DDFC8);
    v87 = v166;
    v86 = type metadata accessor for SettingIntentCATPatternsExecutor();
    v99(v131, v117, v123);
    v85 = v136;
    sub_268CDE730(v116, v136);
    sub_268F9A894();
    v34 = sub_268F9A904();
    v137[3] = v86;
    v137[4] = &off_287992048;
    v137[0] = v34;
    sub_268CDF978(v137, v87 + qword_2802DDFF8);
    v90 = v166;
    v89 = type metadata accessor for SetNumericSettingIntentCATsSimple();
    v99(v131, v117, v123);
    v88 = v135;
    sub_268CDE730(v116, v135);
    sub_268F9A894();
    *(v90 + qword_2802DDFE8) = sub_268F9A9F4();
    v94 = v166;
    v92 = type metadata accessor for SetBinarySettingIntentCATsSimple();
    v99(v131, v117, v123);
    v91 = v134;
    sub_268CDE730(v116, v134);
    sub_268F9A894();
    *(v94 + qword_2802DDFD0) = sub_268F9A9F4();
    v98 = v166;
    v97 = type metadata accessor for SettingIntentCATsSimple();
    v99(v131, v117, v123);
    v96 = v133;
    sub_268CDE730(v116, v133);
    sub_268F9A894();
    *(v98 + qword_2802DE000) = sub_268F9A9F4();
  }

  else
  {
    v57 = v166;
    v68 = 0;
    type metadata accessor for SetNumericSettingIntentCATs();
    sub_268CDFA34();
    *(v57 + qword_2802DDFD8) = sub_268F9A904();
    v58 = v166;
    type metadata accessor for SetBinarySettingIntentCATs();
    sub_268CDFA34();
    *(v58 + qword_2802DDFC0) = sub_268F9A904();
    v59 = v166;
    type metadata accessor for SettingIntentCATs();
    sub_268CDFA34();
    *(v59 + qword_2802DDFF0) = sub_268F9A904();
    v61 = v166;
    v60 = type metadata accessor for SetNumericSettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v35 = sub_268F9A904();
    v150[3] = v60;
    v150[4] = &off_287998918;
    v150[0] = v35;
    sub_268CDF978(v150, v61 + qword_2802DDFE0);
    v63 = v166;
    v62 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v36 = sub_268F9A904();
    v149[3] = v62;
    v149[4] = &off_28798CE80;
    v149[0] = v36;
    sub_268CDF978(v149, v63 + qword_2802DDFC8);
    v65 = v166;
    v64 = type metadata accessor for SettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v37 = sub_268F9A904();
    v148[3] = v64;
    v148[4] = &off_287992048;
    v148[0] = v37;
    sub_268CDF978(v148, v65 + qword_2802DDFF8);
    v66 = v166;
    type metadata accessor for SetNumericSettingIntentCATsSimple();
    sub_268CDFA34();
    *(v66 + qword_2802DDFE8) = sub_268F9A9F4();
    v67 = v166;
    type metadata accessor for SetBinarySettingIntentCATsSimple();
    sub_268CDFA34();
    *(v67 + qword_2802DDFD0) = sub_268F9A9F4();
    v69 = v166;
    type metadata accessor for SettingIntentCATsSimple();
    sub_268CDFA34();
    *(v69 + qword_2802DE000) = sub_268F9A9F4();
  }

  v42 = v166;

  *(v42 + qword_2802DE008) = v118;
  v43 = v166;

  *(v43 + qword_2802DE010) = v119;
  v44 = v166;

  *(v44 + qword_2802DE018) = v126;
  v45 = v166;

  *(v45 + qword_2802DE020) = v127;
  v46 = v166;

  v38 = v116;
  *(v46 + qword_2802DE028) = v128;
  v47 = v166;
  v48 = v147;
  sub_268CDE730(v38, v147);
  sub_268CDF978(v48, v47 + qword_2802DE030);
  v49 = v166;

  *(v49 + qword_2802DE038) = v120;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v52 = 0;
  v51 = sub_268F9B734();
  v50 = type metadata accessor for INIntentSlotValueType();
  sub_268CDFA4C();
  v53 = sub_268F9ADA4();
  v54 = v146;
  sub_268CDE730(v115, v146);
  v55 = v145;
  sub_268CDE730(v116, v145);
  v39 = sub_268F99BD4();
  (*(*(v39 - 8) + 56))(v111, 1);
  v56 = sub_268F99AA4();

  v166 = v56;

  v104(v117, v123);

  __swift_destroy_boxed_opaque_existential_0(v116);
  __swift_destroy_boxed_opaque_existential_0(v115);

  return v56;
}

uint64_t sub_268ECB1A8(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECB5EC(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

double sub_268ECB31C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *(*v4 + qword_2802F1640);
  v10 = *(*v4 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](a3);
  [a3 _intentResponseCode];
  MEMORY[0x277D82BD8](a3);
  type metadata accessor for INIntentResponseCode();
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    MEMORY[0x277D82BE0](a3);
    sub_268ECB5EC(a2, a1, a3, a4);
  }

  else
  {
    MEMORY[0x277D82BE0](a3);
    sub_268ECE950(a1, a3, a4);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_268ECB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  v6 = v5[2];
  return MEMORY[0x2822009F8](sub_268ECB544, 0);
}

uint64_t sub_268ECB544()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[7];
  v0[2] = v0;
  sub_268ECB5EC(v4, v3, v2, v5);
  v6 = *(v0[2] + 8);
  v7 = v0[2];

  return v6();
}

uint64_t sub_268ECB5EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v133 = a4;
  v142 = a1;
  v164 = a2;
  v165 = a3;
  v161 = "processIntentHandled: handling intent with SetNumericSettingIntentResponse:  %@";
  v159 = &dword_268CBE000;
  v135 = "SetNumericSettingIntentResponse response has invalid updated value %@";
  v136 = "SetNumericSettingIntentResponse response has invalid old value %@";
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v177 = 0;
  v175 = 0;
  v174 = 0;
  v172 = 0;
  v149 = *v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v138 = (*(*(v137 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v139 = (v55 - v138);
  v140 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55 - v138);
  v141 = (v55 - v140);
  v187 = v55 - v140;
  v143 = sub_268F9AB24();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v146 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142);
  v147 = v55 - v146;
  v148 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v150 = v55 - v148;
  v186 = v8;
  v185 = v9;
  v184 = v10;
  v183 = v4;
  v182[2] = *(v149 + qword_2802F1640);
  v182[1] = *(v149 + qword_2802F1640 + 8);
  v163 = *sub_268DC858C();
  MEMORY[0x277D82BE0](v163);
  v160 = sub_268F9B284();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v157 = sub_268F9B734();
  v155 = v11;
  MEMORY[0x277D82BE0](v165);
  v151 = v182;
  v182[0] = v165;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v153 = sub_268F9AE64();
  v154 = v12;
  v155[3] = MEMORY[0x277D837D0];
  v13 = sub_268CDD224();
  v14 = v153;
  v15 = v154;
  v16 = v155;
  v17 = v13;
  v18 = v157;
  v158 = v17;
  v155[4] = v17;
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  v162 = v18;
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v163);
  v166 = sub_268EE21E8(v164, v165);
  v167 = v19;
  v168 = v20;
  if (!v19)
  {
    sub_268EE278C();
    v55[1] = 1;
    v52 = swift_allocError();
    v53 = v133;
    *v54 = 4;
    *v53 = v52;
    return swift_storeEnumTagMultiPayload();
  }

  v130 = v166;
  v131 = v167;
  v132 = v168;
  v127 = v168;
  v128 = v167;
  v129 = v166;
  v179 = v166;
  v180 = v167;
  v181 = v168;
  MEMORY[0x277D82BE0](v165);
  if (v165)
  {
    v126 = v165;
    v125 = v165;
    v21 = [v165 oldValue];
    v169 = v21;
    if (v21)
    {
      v121 = &v169;
      v122 = v169;
      MEMORY[0x277D82BE0](v169);
      sub_268D35038(v121);
      *&v22 = MEMORY[0x277D82BD8](v125).n128_u64[0];
      v123 = [v122 value];
      MEMORY[0x277D82BD8](v122);
      v124 = v123;
      goto LABEL_8;
    }

    sub_268D35038(&v169);
    MEMORY[0x277D82BD8](v125);
  }

  v124 = 0;
LABEL_8:
  v120 = v124;
  if (!v124)
  {
    v60 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v60);
    v58 = sub_268F9B294();
    v57 = sub_268F9B734();
    v56 = v42;
    MEMORY[0x277D82BE0](v165);
    v178 = v165;
    v43 = sub_268F9AE64();
    v44 = v158;
    v45 = v56;
    v46 = v43;
    v47 = v57;
    v56[3] = MEMORY[0x277D837D0];
    v45[4] = v44;
    *v45 = v46;
    v45[1] = v48;
    sub_268CD0F7C();
    v59 = v47;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v60);
    sub_268EE278C();
    v61 = 1;
    v49 = swift_allocError();
    v50 = v133;
    *v51 = 3;
    *v50 = v49;
    swift_storeEnumTagMultiPayload();
  }

  v119 = v120;
  v118 = v120;
  v177 = v120;
  MEMORY[0x277D82BE0](v165);
  if (v165)
  {
    v117 = v165;
    v116 = v165;
    v23 = [v165 updatedValue];
    v170 = v23;
    if (v23)
    {
      v112 = &v170;
      v113 = v170;
      MEMORY[0x277D82BE0](v170);
      sub_268D35038(v112);
      *&v24 = MEMORY[0x277D82BD8](v116).n128_u64[0];
      v114 = [v113 value];
      MEMORY[0x277D82BD8](v113);
      v115 = v114;
      goto LABEL_15;
    }

    sub_268D35038(&v170);
    MEMORY[0x277D82BD8](v116);
  }

  v115 = 0;
LABEL_15:
  v111 = v115;
  if (v115)
  {
    v110 = v111;
    v25 = v150;
    v109 = v111;
    v175 = v111;
    v26 = sub_268DB98D4();
    v103 = *v26;
    v104 = v26[1];
    v105 = *(v26 + 16);
    v106 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v106);
    (*(v144 + 16))(v25, v134 + qword_2802DDFB0, v143);
    sub_268F9AB14();
    v102 = sub_268F9AB04();
    v101 = *(v144 + 8);
    v100 = v144 + 8;
    v101(v147, v143);
    v101(v150, v143);
    v108 = 1;
    sub_268DB9934(v103, v104, v105, v106, (v102 ^ 1) & 1);
    MEMORY[0x277D82BD8](v106);
    type metadata accessor for SettingsNumericSetting();

    MEMORY[0x277D82BE0](v118);
    v107 = SettingsNumericSetting.__allocating_init(settingId:value:)(v129, v128, v118);
    v174 = v107;
    sub_268EE278C();
    v27 = swift_allocError();
    v28 = v141;
    *v29 = 1;
    *v28 = v27;
    swift_storeEnumTagMultiPayload();
    if (sub_268EE3214(v118))
    {
      [v164 action];
      if (sub_268EE32A8())
      {
        v99 = *(v134 + qword_2802DDFD8);

        v98 = *(v134 + qword_2802DDFB8);

        sub_268E61560(v107, v127, v98);
      }

      else
      {
        v97 = *(v134 + qword_2802DDFD8);

        v92 = &qword_2802DE000;
        v91 = *(v134 + qword_2802DE020);

        v94 = sub_268DD1954();

        v93 = *(v134 + v92[4]);

        v95 = sub_268DD1B2C();

        v96 = *(v134 + qword_2802DDFB8);

        sub_268E607DC(v94 & 1, v95 & 1, v107, v127, v96);
      }
    }

    else
    {
      sub_268F72BC4(v164);
      v88 = v173;
      v172 = v173;
      v89 = *(v134 + qword_2802DE008);

      v171 = v88;
      v90 = sub_268E5787C(&v171);

      if (v90)
      {
        v87 = *(v134 + qword_2802DDFD8);

        v84 = *(v134 + qword_2802DE020);

        v85 = sub_268DD1B2C();

        v86 = *(v134 + qword_2802DDFB8);

        sub_268E5F9D0(v85 & 1, v107, v127, v86);
      }

      else
      {
        v83 = *(v134 + qword_2802DDFD8);

        v76 = &qword_2802DE000;
        v73 = *(v134 + qword_2802DE020);

        v78 = sub_268DD1954();

        v74 = *(v134 + v76[4]);

        v79 = sub_268DD1B2C();

        v82 = *(v134 + qword_2802DDFB8);

        v75 = *(v134 + v76[4]);

        v80 = sub_268DD17E4(v164);

        v77 = *(v134 + v76[4]);

        v81 = sub_268DD17E4(v164);

        sub_268E5F2B0(v78 & 1, v79 & 1, v107, v127, v82, v80, v81);
      }
    }

    sub_268D28630(v139, v141);
    v30 = sub_268DB98D4();
    v71 = *v30;
    v69 = v30[1];
    v70 = *(v30 + 16);
    v72 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v72);
    sub_268DB9B78(v71, v69, v70, v72);
    MEMORY[0x277D82BD8](v72);
    sub_268D28718(v141, v133);

    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v118);
  }

  else
  {
    v66 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v66);
    v64 = sub_268F9B294();
    v63 = sub_268F9B734();
    v62 = v32;
    MEMORY[0x277D82BE0](v165);
    v176 = v165;
    v33 = sub_268F9AE64();
    v34 = v158;
    v35 = v62;
    v36 = v33;
    v37 = v63;
    v62[3] = MEMORY[0x277D837D0];
    v35[4] = v34;
    *v35 = v36;
    v35[1] = v38;
    sub_268CD0F7C();
    v65 = v37;
    v67 = 2;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v66);
    sub_268EE278C();
    v68 = 1;
    v39 = swift_allocError();
    v40 = v133;
    *v41 = v67;
    *v40 = v39;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x277D82BD8](v118);
  }
}

unint64_t sub_268ECCA4C()
{
  v2 = qword_2802DE040;
  if (!qword_2802DE040)
  {
    type metadata accessor for INIntentResponseCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268ECCACC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v60 = a5;
  v59 = a4;
  v58 = a3;
  v80 = a2;
  v61 = a1;
  v70 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v82 = 0;
  v54 = 0;
  v68 = *v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = &v38[-v56];
  v62 = sub_268F9AB24();
  v63 = *(v62 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = &v38[-v67];
  MEMORY[0x28223BE20](v6);
  v69 = &v38[-v67];
  v92 = v7;
  v91 = v8;
  v90 = v9;
  v88 = v10;
  v89 = v11;
  v87 = v5;
  v86 = *(v68 + qword_2802F1640);
  v85 = *(qword_2802F1640 + v68 + 8);
  v79 = *sub_268DC858C();
  v12 = v79;
  v77 = sub_268F9B284();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v76 = sub_268F9B734();
  v73 = v13;
  v14 = v80;
  v84 = v80;
  v71 = sub_268D588E0();
  sub_268DCA900();
  v72 = sub_268F9AE74();
  v74 = v15;
  v73[3] = MEMORY[0x277D837D0];
  v16 = sub_268CDD224();
  v17 = v72;
  v18 = v73;
  v19 = v74;
  v20 = v16;
  v21 = v76;
  v73[4] = v20;
  *v18 = v17;
  v18[1] = v19;
  sub_268CD0F7C();
  v78 = v21;
  sub_268F9AC04();

  sub_268F72BC4(v80);
  v81 = v83;
  v82 = v83;
  if (v83 == 13 || (v52 = v81, v51 = v81, v81 != 7) && v51 != 8)
  {

    sub_268D284D4();
    v39 = 0;
    v34 = swift_allocError();
    v35 = v57;
    *v36 = v39;
    *v35 = v34;
    swift_storeEnumTagMultiPayload();
    v59(v57);
    sub_268D28378(v57);

    return v54;
  }

  v22 = v69;
  v23 = v54;
  v24 = sub_268DB98D4();
  v44 = *v24;
  v45 = v24[1];
  v46 = *(v24 + 16);
  v47 = *sub_268DC7BA8();
  v41 = v47;
  v25 = v47;
  (*(v64 + 16))(v22, v53 + qword_2802DDFB0, v62);
  sub_268F9AB14();
  v49 = sub_268F9AB04();
  v43 = *(v64 + 8);
  v42 = v64 + 8;
  v43(v66, v62);
  v43(v69, v62);

  v48 = v38;
  MEMORY[0x28223BE20](v44);
  v26 = v60;
  v27 = v49;
  *&v38[-32] = v28;
  *&v38[-24] = v26;
  *&v38[-16] = v29;
  sub_268DB944C(v30, v31, v32, v33, (v27 & 1) == 0, sub_268EE3368, &v38[-48], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v50 = v23;
  if (!v23)
  {

    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_268ECD188(void (*a1)(id *), uint64_t a2, void *a3)
{
  v12 = a1;
  v14 = a2;
  v9 = a3;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v8 = *a3;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v13 = (&v7 - v7);
  v18 = v3;
  v19 = v4;
  v17 = v5;
  v16 = *(v8 + qword_2802F1640);
  v15 = *(v8 + qword_2802F1640 + 8);

  v11 = *(v9 + qword_2802DDFD8);

  v10 = *(v9 + qword_2802DDFB8);

  sub_268E602E8(v10);

  v12(v13);
  sub_268D28378(v13);
}

id *sub_268ECD314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v47 = a1;
  v69 = a2;
  v46 = a3;
  v66 = "INSetNumericSettingIntent requires confirmation %@";
  v64 = &dword_268CBE000;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v71 = 0;
  v54 = *v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v45 = (v25 - v44);
  v78 = v25 - v44;
  v56 = 0;
  v48 = sub_268F9AB24();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = v25 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v55 = v25 - v53;
  v77 = v7;
  v76 = v8;
  v75 = v9;
  v74 = v4;
  v73[2] = *(v54 + qword_2802F1640);
  v73[1] = *(v54 + qword_2802F1640 + 8);
  v68 = *sub_268DC858C();
  MEMORY[0x277D82BE0](v68);
  v65 = sub_268F9B284();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v63 = sub_268F9B734();
  v61 = v10;
  MEMORY[0x277D82BE0](v69);
  v58 = v73;
  v73[0] = v69;
  v57 = sub_268D588E0();
  sub_268DCA900();
  v59 = sub_268F9AE74();
  v60 = v11;
  v61[3] = MEMORY[0x277D837D0];
  v12 = sub_268CDD224();
  v13 = v59;
  v14 = v60;
  v15 = v61;
  v16 = v12;
  v17 = v63;
  v61[4] = v16;
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  v67 = v17;
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v68);
  sub_268F72BC4(v69);
  v70 = v72;
  v71 = v72;
  if (v72 != 13 && ((v40 = v70, v39 = v70, v70 == 7) || v39 == 8))
  {
    v18 = v55;
    v19 = sub_268DB98D4();
    v29 = *v19;
    v30 = v19[1];
    v31 = *(v19 + 16);
    v32 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v32);
    (*(v49 + 16))(v18, v42 + qword_2802DDFB0, v48);
    sub_268F9AB14();
    v28 = sub_268F9AB04();
    v27 = *(v49 + 8);
    v26 = v49 + 8;
    v27(v52, v48);
    v27(v55, v48);
    sub_268DB9934(v29, v30, v31, v32, (v28 ^ 1) & 1);
    MEMORY[0x277D82BD8](v32);
    v34 = *(v42 + qword_2802DDFD8);

    v33 = *(v42 + qword_2802DDFB8);

    sub_268E602E8(v33);

    v20 = sub_268DB98D4();
    v37 = *v20;
    v35 = v20[1];
    v36 = *(v20 + 16);
    v38 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v38);
    sub_268DB9B78(v37, v35, v36, v38);
    MEMORY[0x277D82BD8](v38);
    sub_268D28A00(v45, v41);
    return sub_268D28378(v45);
  }

  else
  {
    sub_268D284D4();
    v25[1] = 1;
    v22 = swift_allocError();
    v23 = v41;
    *v24 = 0;
    *v23 = v22;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ECD98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a3;
  *(v5 + 64) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 136) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v5 + 88) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v8 = sub_268F9AB24();
  *(v5 + 104) = v8;
  v11 = *(v8 - 8);
  *(v5 + 112) = v11;
  v12 = *(v11 + 64);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  v9 = *(v5 + 16);

  return MEMORY[0x2822009F8](sub_268ECDB3C, 0);
}

uint64_t sub_268ECDB3C()
{
  v42 = *(v0 + 72);
  *(v0 + 16) = v0;
  v1 = sub_268DC858C();
  v41 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v40 = v2;
  MEMORY[0x277D82BE0](v42);
  *(v0 + 56) = v42;
  sub_268D588E0();
  sub_268DCA900();
  v38 = sub_268F9AE74();
  v39 = v3;
  v40[3] = MEMORY[0x277D837D0];
  v40[4] = sub_268CDD224();
  *v40 = v38;
  v40[1] = v39;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v41);
  sub_268F72BC4(v42);
  *(v0 + 136) = v43;
  if (v43 != 13 && (v43 == 7 || v43 == 8))
  {
    v4 = v37[16];
    v21 = v37[15];
    v22 = v37[13];
    v36 = v37[12];
    v29 = v37[10];
    v35 = v37[8];
    v20 = v37[14];
    v5 = sub_268DB98D4();
    v25 = *v5;
    v26 = v5[1];
    v27 = *(v5 + 16);
    v6 = sub_268DC7BA8();
    v28 = *v6;
    MEMORY[0x277D82BE0](*v6);
    (*(v20 + 16))(v4, v29 + qword_2802DDFB0, v22);
    sub_268F9AB14();
    v24 = sub_268F9AB04();
    v23 = *(v20 + 8);
    v23(v21, v22);
    v23(v4, v22);
    sub_268DB9934(v25, v26, v27, v28, (v24 ^ 1) & 1);
    MEMORY[0x277D82BD8](v28);
    v7 = *(v29 + qword_2802DDFD8);

    v30 = *(v29 + qword_2802DDFB8);

    sub_268E602E8(v30);

    v8 = sub_268DB98D4();
    v33 = *v8;
    v31 = v8[1];
    v32 = *(v8 + 16);
    v9 = sub_268DC7BA8();
    v34 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268DB9B78(v33, v31, v32, v34);
    MEMORY[0x277D82BD8](v34);
    sub_268D28A00(v36, v35);
    sub_268D28378(v36);
  }

  else
  {
    v19 = v37[11];
    v18 = v37[8];
    sub_268D284D4();
    v10 = swift_allocError();
    *v11 = 0;
    *v18 = v10;
    swift_storeEnumTagMultiPayload();
  }

  v12 = v37[16];
  v16 = v37[15];
  v17 = v37[12];

  v13 = *(v37[2] + 8);
  v14 = v37[2];

  return v13();
}

uint64_t sub_268ECE0B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = &v12 - v12;
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECE228(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

void *sub_268ECE228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v33 = a4;
  v38 = a1;
  v36 = a2;
  v37 = a3;
  v46 = v4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v43 = *v4;
  v51 = sub_268F9AB24();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v34 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v49 = &v22 - v34;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v22 - v34);
  v6 = &v22 - v35;
  v50 = &v22 - v35;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v40 = *(*(v45 - 8) + 64);
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v41 = (&v22 - v39);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v44 = (&v22 - v42);
  v69 = &v22 - v42;
  v68 = v8;
  v67 = v9;
  v66 = v10;
  v65 = v11;
  v64 = *(v43 + qword_2802F1640);
  v63 = *(v43 + qword_2802F1640 + 8);
  sub_268EE278C();
  v54 = 1;
  v12 = swift_allocError();
  v13 = v44;
  *v14 = 1;
  *v13 = v12;
  swift_storeEnumTagMultiPayload();
  v15 = sub_268DB98D4();
  v56 = *v15;
  v57 = v15[1];
  v58 = *(v15 + 16);
  v59 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v59);
  (*(v47 + 16))(v6, v46 + qword_2802DDFB0, v51);
  sub_268F9AB14();
  v16 = sub_268F9AB04();
  v17 = v46;
  v55 = v16;
  v53 = *(v47 + 8);
  v52 = v47 + 8;
  v53(v49, v51);
  v53(v50, v51);
  sub_268DB9934(v56, v57, v58, v59, (v55 ^ v54) & 1);
  MEMORY[0x277D82BD8](v59);
  v60 = *(v17 + qword_2802DE020);

  v61 = sub_268DD1A1C();

  if (v61)
  {
    v28 = *(v46 + qword_2802DE020);

    sub_268DD1AE0();

    v32 = *(v46 + qword_2802DDFC0);

    v29 = type metadata accessor for SettingsBinarySetting();
    v62 = 43;
    v18 = sub_268E7C600();
    v31 = SettingsBinarySetting.__allocating_init(settingId:value:)(v18, v19, 1);
    v30 = *(v46 + qword_2802DDFB8);

    sub_268F5FA58(v31, v30);
  }

  else
  {
    v27 = *(v46 + qword_2802DDFD8);

    v26 = *(v46 + qword_2802DDFB8);

    sub_268E61118(v26);
  }

  sub_268D28630(v41, v44);
  v20 = sub_268DB98D4();
  v24 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  v25 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v25);
  sub_268DB9B78(v24, v22, v23, v25);
  MEMORY[0x277D82BD8](v25);
  return sub_268D28718(v44, v33);
}

uint64_t sub_268ECE7DC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F1640);
  v20 = *(v13 + qword_2802F1640 + 8);

  sub_268ECE950(v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

uint64_t sub_268ECE950@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v27 = *(*v3 + qword_2802F1640);
  v26 = *(*v3 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v19 = [a2 code];
    MEMORY[0x277D82BD8](a2);
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  if (v21)
  {
    v10 = sub_268DC858C();
    v13 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v13);
    sub_268EE278C();
    v11 = swift_allocError();
    *v12 = 4;
    *a3 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }

  else if (v20 == 8)
  {
    v18 = *(v24 + qword_2802DDFF0);

    sub_268F537E4();
  }

  else if (v20 == 9)
  {
    return sub_268ECED90(a1, a2, a3);
  }

  else
  {
    v5 = sub_268DC858C();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v6;
    MEMORY[0x277D82BE0](a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v14 = sub_268F9AE64();
    v15 = v7;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v17);
    sub_268EE278C();
    v8 = swift_allocError();
    *v9 = 6;
    *a3 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ECED90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v109 = a3;
  v117 = a1;
  v127 = a2;
  v111 = "SetNumericSettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v112 = &dword_268CBE000;
  v113 = "SetNumericSettingIntentResponse contains error code 'other reason' but no details: %@";
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v125 = *v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v116 = (&v41 - v115);
  v138 = &v41 - v115;
  v118 = sub_268F9AB24();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v122 = *(v119 + 64);
  v121 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127);
  v123 = &v41 - v121;
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v126 = &v41 - v124;
  v137 = v5;
  v136 = v6;
  v135 = v3;
  v134[2] = *(v125 + qword_2802F1640);
  v134[1] = *(v125 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](v6);
  if (v127)
  {
    v108 = v127;
    v106 = v127;
    v107 = [v127 errorDetail];
    if (v107)
    {
      v105 = v107;
      v100 = v107;
      v101 = sub_268F9AE24();
      v102 = v7;
      MEMORY[0x277D82BD8](v100);
      v103 = v101;
      v104 = v102;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    v97 = v104;
    v96 = v103;
    MEMORY[0x277D82BD8](v106);
    v98 = v96;
    v99 = v97;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  v94 = v99;
  v95 = v98;
  if (v99)
  {
    v92 = v95;
    v93 = v94;
    v89 = v94;
    v88 = v95;
    v132 = v95;
    v133 = v94;

    v8 = sub_268E948B8();
    v90 = v131;
    v131[0] = v8;
    v131[1] = v9;
    v130[2] = v88;
    v130[3] = v89;
    v91 = MEMORY[0x26D62DB50](v8, v9, v88, v89);
    sub_268CD9D30(v90);
    if (v91)
    {
      v10 = v126;

      v11 = sub_268DB98D4();
      v78 = *v11;
      v79 = v11[1];
      v80 = *(v11 + 16);
      v81 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v81);
      (*(v119 + 16))(v10, v110 + qword_2802DDFB0, v118);
      sub_268F9AB14();
      v77 = sub_268F9AB04();
      v76 = *(v119 + 8);
      v75 = v119 + 8;
      v76(v123, v118);
      v76(v126, v118);
      sub_268DB9934(v78, v79, v80, v81, (v77 ^ 1) & 1);
      MEMORY[0x277D82BD8](v81);
      v83 = *(v110 + qword_2802DDFF0);

      v82 = *(v110 + qword_2802DDFB8);

      sub_268F548D0(v82);

      v12 = sub_268DB98D4();
      v86 = *v12;
      v84 = v12[1];
      v85 = *(v12 + 16);
      v87 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v87);
      sub_268DB9B78(v86, v84, v85, v87);
      MEMORY[0x277D82BD8](v87);
      sub_268D28A00(v116, v109);
      sub_268D28378(v116);
    }

    else
    {

      v14 = sub_268E948B8();
      v73 = v130;
      v130[0] = v14;
      v130[1] = v15;
      v129[1] = v88;
      v129[2] = v89;
      v74 = MEMORY[0x26D62DB50](v14, v15, v88, v89);
      sub_268CD9D30(v73);
      if (v74)
      {
        v16 = v126;

        v17 = sub_268DB9CB4();
        v69 = *v17;
        v70 = v17[1];
        v71 = *(v17 + 16);
        v72 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v72);
        (*(v119 + 16))(v16, v110 + qword_2802DDFB0, v118);
        sub_268F9AB14();
        v68 = sub_268F9AB04();
        v67 = *(v119 + 8);
        v66 = v119 + 8;
        v67(v123, v118);
        v67(v126, v118);
        sub_268DB9934(v69, v70, v71, v72, (v68 ^ 1) & 1);
        MEMORY[0x277D82BD8](v72);
        v128 = v116;
        v61 = *(v110 + qword_2802DDFF0);

        sub_268F57498(1, 0, 1);

        v18 = sub_268DB9CB4();
        v64 = *v18;
        v62 = v18[1];
        v63 = *(v18 + 16);
        v65 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v65);
        sub_268DB9B78(v64, v62, v63, v65);
        MEMORY[0x277D82BD8](v65);
        sub_268D28A00(v116, v109);
        sub_268D28378(v116);
      }

      else
      {

        v59 = *sub_268DC858C();
        MEMORY[0x277D82BE0](v59);
        v57 = sub_268F9B294();
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v56 = sub_268F9B734();
        v54 = v19;
        MEMORY[0x277D82BE0](v127);
        v51 = v129;
        v129[0] = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
        v52 = sub_268F9AE64();
        v53 = v20;
        v54[3] = MEMORY[0x277D837D0];
        v21 = sub_268CDD224();
        v22 = v52;
        v23 = v53;
        v24 = v54;
        v25 = v21;
        v26 = v56;
        v54[4] = v25;
        *v24 = v22;
        v24[1] = v23;
        sub_268CD0F7C();
        v58 = v26;
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v59);
        sub_268EE278C();
        v60 = 1;
        v27 = swift_allocError();
        v28 = v109;
        *v29 = 7;
        *v28 = v27;
        swift_storeEnumTagMultiPayload();
      }
    }
  }

  else
  {
    v49 = *sub_268DC858C();
    MEMORY[0x277D82BE0](v49);
    v47 = sub_268F9B294();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v46 = sub_268F9B734();
    v44 = v30;
    MEMORY[0x277D82BE0](v127);
    v41 = v134;
    v134[0] = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v42 = sub_268F9AE64();
    v43 = v31;
    v44[3] = MEMORY[0x277D837D0];
    v32 = sub_268CDD224();
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v32;
    v37 = v46;
    v44[4] = v36;
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    v48 = v37;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v49);
    sub_268EE278C();
    v50 = 1;
    v38 = swift_allocError();
    v39 = v109;
    *v40 = 5;
    *v39 = v38;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ECFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268ECFC20;

  return sub_268ECFDF8(a1, a2, a3);
}

uint64_t sub_268ECFC20(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 56);
  *(v8 + 16) = *v2;
  v9 = v8 + 16;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268ECFDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 392) = v3;
  *(v4 + 384) = a3;
  *(v4 + 376) = a2;
  *(v4 + 200) = v4;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 256) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 616) = 0;
  *(v4 + 296) = 0;
  *(v4 + 312) = 0;
  *(v4 + 328) = 0;
  *(v4 + 344) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 400) = v5;
  v8 = *(v5 - 8);
  *(v4 + 408) = v8;
  v9 = *(v8 + 64);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;
  *(v4 + 224) = a3;
  *(v4 + 232) = v3;
  v6 = *(v4 + 200);

  return MEMORY[0x2822009F8](sub_268ECFF94, 0);
}

uint64_t sub_268ECFF94()
{
  v116 = v0;
  v1 = v0[49];
  v110 = v0[48];
  v109 = v0[47];
  v0[25] = v0;
  v2 = sub_268DC858C();
  v108 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B284();
  v0[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v106 = v3;
  MEMORY[0x277D82BE0](v110);
  v0[30] = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v104 = sub_268F9AE64();
  v105 = v4;
  v106[3] = MEMORY[0x277D837D0];
  v107 = sub_268CDD224();
  v0[55] = v107;
  v106[4] = v107;
  *v106 = v104;
  v106[1] = v105;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v108);
  v111 = sub_268EE21E8(v109, v110);
  v112 = v5;
  v113 = v6;
  v0[56] = v5;
  v0[57] = v6;
  if (!v5)
  {
    sub_268EE278C();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();
    goto LABEL_34;
  }

  v102 = *(v103 + 384);
  *(v103 + 176) = v111;
  *(v103 + 184) = v5;
  *(v103 + 192) = v6;
  MEMORY[0x277D82BE0](v102);
  if (v102)
  {
    v101 = *(v103 + 384);
    *(v103 + 368) = [v101 oldValue];
    if (*(v103 + 368))
    {
      v98 = *(v103 + 368);
      MEMORY[0x277D82BE0](v98);
      sub_268D35038((v103 + 368));
      v99 = [v98 value];
      MEMORY[0x277D82BD8](v98);
      v100 = v99;
      goto LABEL_7;
    }

    sub_268D35038((v103 + 368));
    MEMORY[0x277D82BD8](v101);
  }

  v100 = 0;
LABEL_7:
  *(v103 + 464) = v100;
  if (!v100)
  {
    v35 = *(v103 + 384);
    v25 = sub_268DC858C();
    v37 = *v25;
    MEMORY[0x277D82BE0](*v25);
    sub_268F9B294();
    sub_268F9B734();
    v36 = v26;
    MEMORY[0x277D82BE0](v35);
    *(v103 + 248) = v35;
    v27 = sub_268F9AE64();
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = v107;
    *v36 = v27;
    v36[1] = v28;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268EE278C();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();

    goto LABEL_34;
  }

  v97 = *(v103 + 384);
  *(v103 + 256) = v100;
  MEMORY[0x277D82BE0](v97);
  if (!v97)
  {
    goto LABEL_29;
  }

  v96 = *(v103 + 384);
  *(v103 + 360) = [v96 updatedValue];
  if (!*(v103 + 360))
  {
    sub_268D35038((v103 + 360));
    MEMORY[0x277D82BD8](v96);
LABEL_29:
    v95 = 0;
    goto LABEL_13;
  }

  v93 = *(v103 + 360);
  MEMORY[0x277D82BE0](v93);
  sub_268D35038((v103 + 360));
  v94 = [v93 value];
  MEMORY[0x277D82BD8](v93);
  v95 = v94;
LABEL_13:
  *(v103 + 472) = v95;
  if (v95)
  {
    v7 = *(v103 + 424);
    v82 = *(v103 + 416);
    v83 = *(v103 + 400);
    v91 = *(v103 + 392);
    v92 = *(v103 + 376);
    v81 = *(v103 + 408);
    *(v103 + 272) = v95;
    v8 = sub_268DB98D4();
    v86 = *v8;
    v87 = v8[1];
    v88 = *(v8 + 16);
    v9 = sub_268DC7BA8();
    v89 = *v9;
    MEMORY[0x277D82BE0](*v9);
    (*(v81 + 16))(v7, v91 + qword_2802DDFB0, v83);
    sub_268F9AB14();
    v85 = sub_268F9AB04();
    v84 = *(v81 + 8);
    v84(v82, v83);
    v84(v7, v83);
    sub_268DB9934(v86, v87, v88, v89, (v85 ^ 1) & 1);
    MEMORY[0x277D82BD8](v89);
    type metadata accessor for SettingsNumericSetting();

    MEMORY[0x277D82BE0](v100);
    v90 = SettingsNumericSetting.__allocating_init(settingId:value:)(v111, v112, v100);
    *(v103 + 480) = v90;
    *(v103 + 280) = v90;
    sub_268D28C4C();
    *(v103 + 288) = sub_268CF0C44();
    sub_268F72BC4(v92);
    *(v103 + 616) = v114;
    if (sub_268EE3214(v100))
    {
      v10 = *(v103 + 392);
      [*(v103 + 376) action];
      if (sub_268EE32A8())
      {
        v76 = *(v103 + 392);
        sub_268CDE730(v76 + qword_2802DDFE0, v103 + 136);
        v78 = *(v103 + 160);
        v79 = *(v103 + 168);
        __swift_project_boxed_opaque_existential_1((v103 + 136), v78);

        v77 = swift_task_alloc();
        *(v103 + 488) = v77;
        v77[2] = v111;
        v77[3] = v112;
        v77[4] = v113;
        v77[5] = v90;
        v77[6] = v76;
        v80 = (*(v79 + 32) + **(v79 + 32));
        v11 = *(*(v79 + 32) + 4);
        v12 = swift_task_alloc();
        *(v103 + 496) = v12;
        *v12 = *(v103 + 200);
        v12[1] = sub_268ED15AC;

        return v80(sub_268EE4A40, v77, v78, v79);
      }

      else
      {
        v67 = *(v103 + 392);
        v69 = *(v103 + 384);
        v68 = *(v103 + 376);
        sub_268CDE730(v67 + qword_2802DDFE0, v103 + 96);
        v72 = *(v103 + 120);
        v73 = *(v103 + 128);
        __swift_project_boxed_opaque_existential_1((v103 + 96), v72);
        v65 = *(v67 + qword_2802DE020);

        v75 = sub_268DD1954();

        v66 = *(v67 + qword_2802DE020);

        v70 = sub_268DD1B2C();

        MEMORY[0x277D82BE0](v68);
        MEMORY[0x277D82BE0](v69);
        v71 = swift_task_alloc();
        *(v103 + 520) = v71;
        v71[2] = v90;
        v71[3] = v111;
        v71[4] = v112;
        v71[5] = v113;
        v71[6] = v67;
        v71[7] = v68;
        v71[8] = v69;
        v74 = (*(v73 + 24) + **(v73 + 24));
        v14 = *(*(v73 + 24) + 4);
        v15 = swift_task_alloc();
        *(v103 + 528) = v15;
        *v15 = *(v103 + 200);
        v15[1] = sub_268ED19AC;

        return v74(v75 & 1, v70 & 1, sub_268EE4A20, v71, v72, v73);
      }
    }

    else
    {
      v63 = *(*(v103 + 392) + qword_2802DE008);

      v115 = v114;
      v64 = sub_268E5787C(&v115);

      if (v64)
      {
        v56 = *(v103 + 392);
        v58 = *(v103 + 384);
        v57 = *(v103 + 376);
        sub_268CDE730(v56 + qword_2802DDFE0, v103 + 56);
        v60 = *(v103 + 80);
        v61 = *(v103 + 88);
        __swift_project_boxed_opaque_existential_1((v103 + 56), v60);

        MEMORY[0x277D82BE0](v57);
        MEMORY[0x277D82BE0](v58);
        v59 = swift_task_alloc();
        *(v103 + 552) = v59;
        v59[2] = v56;
        v59[3] = v111;
        v59[4] = v112;
        v59[5] = v113;
        v59[6] = v90;
        v59[7] = v57;
        v59[8] = v58;
        v62 = (*(v61 + 48) + **(v61 + 48));
        v16 = *(*(v61 + 48) + 4);
        v17 = swift_task_alloc();
        *(v103 + 560) = v17;
        *v17 = *(v103 + 200);
        v17[1] = sub_268ED1DCC;

        return v62(sub_268EE4A00, v59, v60, v61);
      }

      else
      {
        v45 = *(v103 + 392);
        v47 = *(v103 + 384);
        v46 = *(v103 + 376);
        sub_268CDE730(v45 + qword_2802DDFE0, v103 + 16);
        v52 = *(v103 + 40);
        v53 = *(v103 + 48);
        __swift_project_boxed_opaque_existential_1((v103 + 16), v52);
        v41 = *(v45 + qword_2802DE020);

        v55 = sub_268DD17E4(v46);

        v42 = *(v45 + qword_2802DE020);

        v48 = sub_268DD17E4(v46);

        v43 = *(v45 + qword_2802DE020);

        v49 = sub_268DD1954();

        v44 = *(v45 + qword_2802DE020);

        v50 = sub_268DD1B2C();

        MEMORY[0x277D82BE0](v46);
        MEMORY[0x277D82BE0](v47);
        v51 = swift_task_alloc();
        *(v103 + 584) = v51;
        v51[2] = v111;
        v51[3] = v112;
        v51[4] = v113;
        v51[5] = v90;
        v51[6] = v45;
        v51[7] = v46;
        v51[8] = v47;
        v54 = (*(v53 + 56) + **(v53 + 56));
        v18 = *(*(v53 + 56) + 4);
        v19 = swift_task_alloc();
        *(v103 + 592) = v19;
        *v19 = *(v103 + 200);
        v19[1] = sub_268ED21EC;

        return v54(v55, v48, v49 & 1, v50 & 1, sub_268EE49E0, v51, v52, v53);
      }
    }
  }

  v38 = *(v103 + 384);
  v20 = sub_268DC858C();
  v40 = *v20;
  MEMORY[0x277D82BE0](*v20);
  sub_268F9B294();
  sub_268F9B734();
  v39 = v21;
  MEMORY[0x277D82BE0](v38);
  *(v103 + 264) = v38;
  v22 = sub_268F9AE64();
  v39[3] = MEMORY[0x277D837D0];
  v39[4] = v107;
  *v39 = v22;
  v39[1] = v23;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v40);
  sub_268EE278C();
  swift_allocError();
  *v24 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v100);

LABEL_34:
  v31 = *(v103 + 424);
  v34 = *(v103 + 416);

  v32 = *(*(v103 + 200) + 8);
  v33 = *(v103 + 200);

  return v32();
}

uint64_t sub_268ED15AC(uint64_t a1)
{
  v14 = *v2;
  v4 = *(*v2 + 496);
  v14[25] = *v2;
  v15 = v14 + 25;
  v14[63] = a1;
  v14[64] = v1;

  if (v1)
  {
    v8 = *v15;
    v7 = sub_268ED260C;
  }

  else
  {
    v5 = v14[61];
    v12 = v14[60];
    v11 = v14[57];
    v10 = v14[56];
    v13 = v14[49];

    v6 = *v15;
    v7 = sub_268ED1770;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED1770()
{
  v1 = v0[63];
  v8 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v20 = v0[63];
  v13 = v0[60];
  v14 = v0[59];
  v15 = v0[58];
  v17 = v0[57];
  v16 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v5 = *(v0[25] + 8);
  v6 = v0[25];

  return v5(v20);
}

uint64_t sub_268ED19AC(uint64_t a1)
{
  v16 = *v2;
  v4 = *(*v2 + 528);
  v16[25] = *v2;
  v17 = v16 + 25;
  v16[67] = a1;
  v16[68] = v1;

  if (v1)
  {
    v8 = *v17;
    v7 = sub_268ED296C;
  }

  else
  {
    v5 = v16[65];
    v10 = v16[60];
    v12 = v16[57];
    v11 = v16[56];
    v13 = v16[49];
    v15 = v16[48];
    v14 = v16[47];

    v6 = *v17;
    v7 = sub_268ED1B90;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED1B90()
{
  v1 = v0[67];
  v8 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v20 = v0[67];
  v13 = v0[60];
  v14 = v0[59];
  v15 = v0[58];
  v17 = v0[57];
  v16 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v5 = *(v0[25] + 8);
  v6 = v0[25];

  return v5(v20);
}

uint64_t sub_268ED1DCC(uint64_t a1)
{
  v16 = *v2;
  v4 = *(*v2 + 560);
  v16[25] = *v2;
  v17 = v16 + 25;
  v16[71] = a1;
  v16[72] = v1;

  if (v1)
  {
    v8 = *v17;
    v7 = sub_268ED2CFC;
  }

  else
  {
    v5 = v16[69];
    v13 = v16[60];
    v12 = v16[57];
    v11 = v16[56];
    v10 = v16[49];
    v15 = v16[48];
    v14 = v16[47];

    v6 = *v17;
    v7 = sub_268ED1FB0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED1FB0()
{
  v1 = v0[71];
  v8 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v20 = v0[71];
  v13 = v0[60];
  v14 = v0[59];
  v15 = v0[58];
  v17 = v0[57];
  v16 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v5 = *(v0[25] + 8);
  v6 = v0[25];

  return v5(v20);
}

uint64_t sub_268ED21EC(uint64_t a1)
{
  v16 = *v2;
  v4 = *(*v2 + 592);
  v16[25] = *v2;
  v17 = v16 + 25;
  v16[75] = a1;
  v16[76] = v1;

  if (v1)
  {
    v8 = *v17;
    v7 = sub_268ED308C;
  }

  else
  {
    v5 = v16[73];
    v12 = v16[60];
    v11 = v16[57];
    v10 = v16[56];
    v13 = v16[49];
    v15 = v16[48];
    v14 = v16[47];

    v6 = *v17;
    v7 = sub_268ED23D0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED23D0()
{
  v1 = v0[75];
  v8 = v1;
  v0[25] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[36];
  v0[36] = v8;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v20 = v0[75];
  v13 = v0[60];
  v14 = v0[59];
  v15 = v0[58];
  v17 = v0[57];
  v16 = v0[56];
  v18 = v0[53];
  v19 = v0[52];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);

  v5 = *(v0[25] + 8);
  v6 = v0[25];

  return v5(v20);
}

uint64_t sub_268ED260C()
{
  v23 = v0[64];
  v1 = v0[61];
  v24 = v0[60];
  v25 = v0[59];
  v26 = v0[58];
  v28 = v0[57];
  v27 = v0[56];
  v15 = v0[55];
  v17 = v0[54];
  v14 = v0[49];
  v0[25] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v23;
  v0[43] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[44] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB9CB4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  v10 = v0[53];
  v29 = v0[52];

  v11 = *(v0[25] + 8);
  v12 = v0[25];

  return v11();
}

uint64_t sub_268ED296C()
{
  v25 = v0[68];
  v1 = v0[65];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v30 = v0[57];
  v29 = v0[56];
  v17 = v0[55];
  v19 = v0[54];
  v14 = v0[49];
  v16 = v0[48];
  v15 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v25;
  v0[41] = v25;
  v3 = sub_268DC858C();
  v20 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v18 = v4;
  v5 = v25;
  v0[42] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = v17;
  *v18 = v6;
  v18[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v20);
  v8 = sub_268DB9CB4();
  v23 = *v8;
  v21 = v8[1];
  v22 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v24 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v23, v21, v22, v24);
  MEMORY[0x277D82BD8](v24);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);

  v10 = v0[53];
  v31 = v0[52];

  v11 = *(v0[25] + 8);
  v12 = v0[25];

  return v11();
}

uint64_t sub_268ED2CFC()
{
  v25 = v0[72];
  v1 = v0[69];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v30 = v0[57];
  v29 = v0[56];
  v17 = v0[55];
  v19 = v0[54];
  v14 = v0[49];
  v16 = v0[48];
  v15 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v25;
  v0[39] = v25;
  v3 = sub_268DC858C();
  v20 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v18 = v4;
  v5 = v25;
  v0[40] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = v17;
  *v18 = v6;
  v18[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v20);
  v8 = sub_268DB9CB4();
  v23 = *v8;
  v21 = v8[1];
  v22 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v24 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v23, v21, v22, v24);
  MEMORY[0x277D82BD8](v24);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);

  v10 = v0[53];
  v31 = v0[52];

  v11 = *(v0[25] + 8);
  v12 = v0[25];

  return v11();
}

uint64_t sub_268ED308C()
{
  v25 = v0[76];
  v1 = v0[73];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v30 = v0[57];
  v29 = v0[56];
  v17 = v0[55];
  v19 = v0[54];
  v14 = v0[49];
  v16 = v0[48];
  v15 = v0[47];
  v0[25] = v0;

  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v25;
  v0[37] = v25;
  v3 = sub_268DC858C();
  v20 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v18 = v4;
  v5 = v25;
  v0[38] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = v17;
  *v18 = v6;
  v18[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v20);
  v8 = sub_268DB9CB4();
  v23 = *v8;
  v21 = v8[1];
  v22 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v24 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v23, v21, v22, v24);
  MEMORY[0x277D82BD8](v24);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[36]);

  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);

  v10 = v0[53];
  v31 = v0[52];

  v11 = *(v0[25] + 8);
  v12 = v0[25];

  return v11();
}

uint64_t sub_268ED341C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = *(*a6 + qword_2802F1640);
  v15 = *(*a6 + qword_2802F1640 + 8);

  v6 = *a1;
  *a1 = a4;

  v7 = a1[2];
  a1[2] = a5;

  v14 = *(a6 + qword_2802DDFB8);

  v8 = a1[1];
  a1[1] = v14;
}

void *sub_268ED3528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v32 = a1;
  v24 = a2;
  v21[1] = a3;
  v21[2] = a4;
  v25 = a5;
  v27 = a6;
  v29 = a7;
  v28 = a8;
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v23 = *a6;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v33 = v21 - v22;
  v44 = v8;
  v43 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v31 = 0;
  v39 = *(v23 + qword_2802F1640);
  v38 = *(v23 + qword_2802F1640 + 8);
  v37 = v13;
  v36 = v14;
  v35 = v15;

  v16 = v32[2];
  v32[2] = v24;

  v17 = *v32;
  *v32 = v25;

  v26 = *(v27 + qword_2802DDFB8);

  v18 = v32[1];
  v32[1] = v26;

  v30 = v34;
  sub_268CDE730(v27 + qword_2802DE030, v34);
  sub_268E084E0(v29, v28, v30, v33);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v19 = type metadata accessor for SetNumericSettingIntentNoNeedToChangeNumericValueToParameters();
  return sub_268D29FC8(v33, v32 + *(v19 + 36));
}

void *sub_268ED3740(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v36 = a1;
  v30 = a2;
  v20[1] = a3;
  v20[2] = a4;
  v27 = a5;
  v28 = a6;
  v32 = a7;
  v31 = a8;
  v47 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v22 = *a2;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = v20 - v21;
  v47 = v8;
  v46 = v9;
  v25 = 0;
  v45 = *(v22 + qword_2802F1640);
  v44 = *(v22 + qword_2802F1640 + 8);
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v40 = v13;
  v39 = v14;
  v38 = v15;
  v23 = *(v9 + qword_2802DE020);

  v24 = sub_268DD1B2C();

  v26 = v24 & 1;
  v34 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToSpokenOnlyParameters();
  *(v36 + *(v34 + 40)) = v26;

  v16 = *v36;
  *v36 = v27;

  v17 = v36[2];
  v36[2] = v28;

  v29 = *(v30 + qword_2802DDFB8);

  v18 = v36[1];
  v36[1] = v29;

  v33 = v37;
  sub_268CDE730(v30 + qword_2802DE030, v37);
  sub_268E084E0(v32, v31, v33, v35);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_268D29FC8(v35, v36 + *(v34 + 44));
}

void *sub_268ED39C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v32 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v24 = a4;
  v25 = a5;
  v27 = a6;
  v29 = a7;
  v28 = a8;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v23 = *a6;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v33 = v21 - v22;
  v44 = v8;
  v41 = v9;
  v42 = v10;
  v43 = v11;
  v31 = 0;
  v40 = *(v23 + qword_2802F1640);
  v39 = *(v23 + qword_2802F1640 + 8);
  v38 = v12;
  v37 = v13;
  v36 = v14;
  v35 = v15;

  v16 = *v32;
  *v32 = v24;

  v17 = v32[3];
  v32[3] = v25;

  v26 = *(v27 + qword_2802DDFB8);

  v18 = v32[1];
  v32[1] = v26;

  v30 = v34;
  sub_268CDE730(v27 + qword_2802DE030, v34);
  sub_268E084E0(v29, v28, v30, v33);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v19 = type metadata accessor for SetNumericSettingIntentChangedNumericValueToParameters();
  return sub_268D29FC8(v33, v32 + *(v19 + 44));
}

uint64_t sub_268ED3BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a2;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 216) = 0;
  *(v4 + 104) = 0;
  *(v4 + 120) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 144) = v5;
  v8 = *(v5 - 8);
  *(v4 + 152) = v8;
  v9 = *(v8 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  v6 = *(v4 + 56);

  return MEMORY[0x2822009F8](sub_268ED3D54, 0);
}

uint64_t sub_268ED3D54()
{
  v35 = *(v0 + 128);
  *(v0 + 56) = v0;
  v1 = sub_268DC858C();
  v34 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v33 = v2;
  MEMORY[0x277D82BE0](v35);
  *(v0 + 96) = v35;
  sub_268D588E0();
  sub_268DCA900();
  v31 = sub_268F9AE74();
  v32 = v3;
  v33[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  *(v0 + 184) = v4;
  v33[4] = v4;
  *v33 = v31;
  v33[1] = v32;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v34);
  sub_268F72BC4(v35);
  *(v0 + 216) = v36;
  if (v36 != 13 && (v36 == 7 || v36 == 8))
  {
    v5 = v30[21];
    v18 = v30[20];
    v19 = v30[18];
    v26 = v30[17];
    v17 = v30[19];
    v6 = sub_268DB98D4();
    v22 = *v6;
    v23 = v6[1];
    v24 = *(v6 + 16);
    v7 = sub_268DC7BA8();
    v25 = *v7;
    MEMORY[0x277D82BE0](*v7);
    (*(v17 + 16))(v5, v26 + qword_2802DDFB0, v19);
    sub_268F9AB14();
    v21 = sub_268F9AB04();
    v20 = *(v17 + 8);
    v20(v18, v19);
    v20(v5, v19);
    sub_268DB9934(v22, v23, v24, v25, (v21 ^ 1) & 1);
    MEMORY[0x277D82BD8](v25);
    sub_268CDE730(v26 + qword_2802DDFE0, (v30 + 2));
    v27 = v30[5];
    v28 = v30[6];
    __swift_project_boxed_opaque_existential_1(v30 + 2, v27);

    v29 = (*(v28 + 8) + **(v28 + 8));
    v8 = *(*(v28 + 8) + 4);
    v9 = swift_task_alloc();
    v30[24] = v9;
    *v9 = v30[7];
    v9[1] = sub_268ED4348;
    v10 = v30[17];

    return v29(sub_268EE4A58, v10, v27, v28);
  }

  else
  {
    sub_268D284D4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v13 = v30[21];
    v16 = v30[20];

    v14 = *(v30[7] + 8);
    v15 = v30[7];

    return v14();
  }
}

uint64_t sub_268ED4348(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 192);
  v10[7] = *v2;
  v11 = v10 + 7;
  v10[25] = a1;
  v10[26] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268ED4604;
  }

  else
  {
    v5 = v10[17];

    v6 = *v11;
    v7 = sub_268ED44CC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED44CC()
{
  v1 = v0[25];
  v12 = v0[21];
  v13 = v0[20];
  v0[7] = v0;
  v0[15] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v4 = *(*(v14 + 56) + 8);
  v5 = *(v14 + 56);
  v6 = *(v14 + 200);

  return v4(v6);
}

uint64_t sub_268ED4604()
{
  v22 = v0[26];
  v14 = v0[23];
  v16 = v0[22];
  v1 = v0[17];
  v0[7] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v22;
  v0[13] = v22;
  v3 = sub_268DC858C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v15 = v4;
  v5 = v22;
  v0[14] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = v14;
  *v15 = v6;
  v15[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v8 = sub_268DB9CB4();
  v20 = *v8;
  v18 = v8[1];
  v19 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v21 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v10 = v0[21];
  v23 = v0[20];

  v11 = *(v0[7] + 8);
  v12 = v0[7];

  return v11();
}

uint64_t sub_268ED48C4(uint64_t *a1, void *a2)
{
  v7 = *(*a2 + qword_2802F1640);
  v6 = *(*a2 + qword_2802F1640 + 8);
  v5 = *(a2 + qword_2802DDFB8);

  v2 = *a1;
  *a1 = v5;
}

uint64_t sub_268ED4968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = v3;
  *(v4 + 224) = a3;
  *(v4 + 216) = a2;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 352) = 0;
  *(v4 + 184) = 0;
  *(v4 + 200) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 240) = v5;
  v8 = *(v5 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  v6 = *(v4 + 112);

  return MEMORY[0x2822009F8](sub_268ED4AF4, 0);
}

uint64_t sub_268ED4AF4()
{
  v51 = v0[33];
  v50 = v0[32];
  v49 = v0[31];
  v52 = v0[30];
  v59 = v0[29];
  v0[14] = v0;
  sub_268D28C4C();
  v0[19] = sub_268CF0C44();
  v1 = sub_268DB98D4();
  v55 = *v1;
  v56 = v1[1];
  v57 = *(v1 + 16);
  v2 = sub_268DC7BA8();
  v58 = *v2;
  MEMORY[0x277D82BE0](*v2);
  (*(v49 + 16))(v51, v59 + qword_2802DDFB0, v52);
  sub_268F9AB14();
  v54 = sub_268F9AB04();
  v53 = *(v49 + 8);
  v53(v50, v52);
  v53(v51, v52);
  sub_268DB9934(v55, v56, v57, v58, (v54 ^ 1) & 1);
  MEMORY[0x277D82BD8](v58);
  v60 = *(v59 + qword_2802DE020);

  v61 = sub_268DD1A1C();

  if (v61)
  {
    v44 = *(v48 + 232);
    v43 = *(v44 + qword_2802DE020);

    sub_268DD1AE0();

    sub_268CDE730(v44 + qword_2802DDFC8, v48 + 56);
    v45 = *(v48 + 80);
    v46 = *(v48 + 88);
    __swift_project_boxed_opaque_existential_1((v48 + 56), v45);

    v47 = (*(v46 + 48) + **(v46 + 48));
    v3 = *(*(v46 + 48) + 4);
    v4 = swift_task_alloc();
    v5 = v45;
    v6 = v46;
    v7 = v47;
    v8 = v4;
    v9 = sub_268EE4A74;
    *(v48 + 272) = v8;
    *v8 = *(v48 + 112);
    v8[1] = sub_268ED5394;
    v10 = *(v48 + 232);

    return v7(v9, v10, v5, v6);
  }

  *(v48 + 160) = *(v48 + 216);
  v12 = sub_268D588E0();
  v41 = SettingIntent.settingIdentifier.getter(v12, &protocol witness table for INSetNumericSettingIntent);
  v42 = v13;
  *(v48 + 296) = v13;
  if (v13)
  {
    v14 = *(v48 + 216);
    *(v48 + 96) = v41;
    *(v48 + 104) = v13;
    v15 = [v14 numericValue];
    v40 = v15;
    if (v15)
    {
      v38 = [v15 value];
      MEMORY[0x277D82BD8](v40);
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    *(v48 + 304) = v39;
    if (v39)
    {
      v30 = *(v48 + 232);
      v33 = *(v48 + 224);
      v32 = *(v48 + 216);
      *(v48 + 168) = v39;
      type metadata accessor for SettingsNumericSetting();

      MEMORY[0x277D82BE0](v39);
      v31 = SettingsNumericSetting.__allocating_init(settingId:value:)(v41, v42, v39);
      *(v48 + 312) = v31;
      *(v48 + 176) = v31;
      sub_268F72BC4(v32);
      *(v48 + 352) = v62;
      sub_268CDE730(v30 + qword_2802DDFE0, v48 + 16);
      v35 = *(v48 + 40);
      v36 = *(v48 + 48);
      __swift_project_boxed_opaque_existential_1((v48 + 16), v35);

      MEMORY[0x277D82BE0](v32);
      MEMORY[0x277D82BE0](v33);
      v34 = swift_task_alloc();
      *(v48 + 320) = v34;
      v34[2] = v30;
      v34[3] = v31;
      v34[4] = v32;
      v34[5] = v33;
      v37 = (*(v36 + 16) + **(v36 + 16));
      v16 = *(*(v36 + 16) + 4);
      v17 = swift_task_alloc();
      v10 = v34;
      v5 = v35;
      v6 = v36;
      v7 = v37;
      v18 = v17;
      v9 = sub_268EE4A60;
      *(v48 + 328) = v18;
      *v18 = *(v48 + 112);
      v18[1] = sub_268ED568C;

      return v7(v9, v10, v5, v6);
    }
  }

  v27 = *(v48 + 264);
  v28 = *(v48 + 256);
  v19 = sub_268DB98D4();
  v25 = *v19;
  v23 = v19[1];
  v24 = *(v19 + 16);
  v20 = sub_268DC7BA8();
  v26 = *v20;
  MEMORY[0x277D82BE0](*v20);
  sub_268DB9B78(v25, v23, v24, v26);
  MEMORY[0x277D82BD8](v26);
  v29 = *(v48 + 152);
  MEMORY[0x277D82BE0](v29);
  MEMORY[0x277D82BD8](*(v48 + 152));

  v21 = *(*(v48 + 112) + 8);
  v22 = *(v48 + 112);

  return v21(v29);
}

uint64_t sub_268ED5394(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 272);
  v10[14] = *v2;
  v11 = v10 + 14;
  v10[35] = a1;
  v10[36] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268ED5A1C;
  }

  else
  {
    v5 = v10[29];

    v6 = *v11;
    v7 = sub_268ED5518;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED5518()
{
  v1 = v0[35];
  v0[14] = v0;
  v2 = v0[19];
  v0[19] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v12 = v0[33];
  v13 = v0[32];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  v14 = v0[19];
  MEMORY[0x277D82BE0](v14);
  MEMORY[0x277D82BD8](v0[19]);

  v5 = *(v0[14] + 8);
  v6 = v0[14];

  return v5(v14);
}

uint64_t sub_268ED568C(uint64_t a1)
{
  v14 = *v2;
  v4 = *(*v2 + 328);
  v14[14] = *v2;
  v15 = v14 + 14;
  v14[42] = a1;
  v14[43] = v1;

  if (v1)
  {
    v8 = *v15;
    v7 = sub_268ED5CFC;
  }

  else
  {
    v5 = v14[40];
    v11 = v14[39];
    v10 = v14[29];
    v13 = v14[28];
    v12 = v14[27];

    v6 = *v15;
    v7 = sub_268ED5850;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED5850()
{
  v1 = v0[42];
  v8 = v0[39];
  v9 = v0[38];
  v10 = v0[37];
  v0[14] = v0;
  v2 = v0[19];
  v0[19] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  MEMORY[0x277D82BD8](v9);

  v15 = v0[33];
  v16 = v0[32];
  v3 = sub_268DB98D4();
  v13 = *v3;
  v11 = v3[1];
  v12 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v14 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v13, v11, v12, v14);
  MEMORY[0x277D82BD8](v14);
  v17 = v0[19];
  MEMORY[0x277D82BE0](v17);
  MEMORY[0x277D82BD8](v0[19]);

  v5 = *(v0[14] + 8);
  v6 = v0[14];

  return v5(v17);
}

uint64_t sub_268ED5A1C()
{
  v21 = v0[36];
  v1 = v0[29];
  v0[14] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v21;
  v0[25] = v21;
  v3 = sub_268DC858C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[26] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[19]);
  v9 = v0[33];
  v22 = v0[32];

  v10 = *(v0[14] + 8);
  v11 = v0[14];

  return v10();
}

uint64_t sub_268ED5CFC()
{
  v27 = v0[43];
  v1 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v13 = v0[29];
  v15 = v0[28];
  v14 = v0[27];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  MEMORY[0x277D82BD8](v17);

  v2 = v27;
  v0[23] = v27;
  v3 = sub_268DC858C();
  v22 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v21 = v4;
  v5 = v27;
  v0[24] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v19 = sub_268F9AE64();
  v20 = v6;
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = sub_268CDD224();
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v22);
  v7 = sub_268DB9CB4();
  v25 = *v7;
  v23 = v7[1];
  v24 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v26 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v25, v23, v24, v26);
  MEMORY[0x277D82BD8](v26);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[19]);
  v9 = v0[33];
  v28 = v0[32];

  v10 = *(v0[14] + 8);
  v11 = v0[14];

  return v10();
}

uint64_t sub_268ED606C(uint64_t *a1, void *a2)
{
  v13 = *(*a2 + qword_2802F1640);
  v12 = *(*a2 + qword_2802F1640 + 8);
  type metadata accessor for SettingsBinarySetting();
  v2 = sub_268E7C600();
  v8 = SettingsBinarySetting.__allocating_init(settingId:value:)(v2, v3, 1);
  v4 = (a1 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters() + 24));
  v5 = *v4;
  *v4 = v8;

  v11 = *(a2 + qword_2802DDFB8);

  v6 = *a1;
  *a1 = v11;
}

void *sub_268ED617C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v24 = a1;
  v19 = a2;
  v18 = a3;
  v21 = a4;
  v20 = a5;
  v33 = 0;
  v32 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v16 = *a2;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v25 = &v14 - v15;
  v33 = v5;
  v32 = v6;
  v23 = 0;
  v31 = *(v16 + qword_2802F1640);
  v30 = *(v16 + qword_2802F1640 + 8);
  v29 = v7;
  v28 = v8;
  v27 = v9;
  v17 = *(v6 + qword_2802DDFB8);

  v10 = *(v24 + 8);
  *(v24 + 8) = v17;

  v11 = *(v24 + 16);
  *(v24 + 16) = v18;

  v22 = v26;
  sub_268CDE730(v19 + qword_2802DE030, v26);
  sub_268E084E0(v21, v20, v22, v25);
  __swift_destroy_boxed_opaque_existential_0(v22);
  v12 = type metadata accessor for SetNumericSettingIntentRetainingCurrentNumericValueParameters();
  return sub_268D29FC8(v25, (v24 + *(v12 + 28)));
}

uint64_t sub_268ED6344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;
  v5 = v4[7];
  return MEMORY[0x2822009F8](sub_268ED63B4, 0);
}

uint64_t sub_268ED63B4()
{
  v1 = *(v0 + 120);
  v31 = v1;
  *(v0 + 56) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v31)
  {
    v26 = v30[15];
    v27 = [v26 code];
    MEMORY[0x277D82BD8](v26);
    v28 = v27;
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  if (v29)
  {
    v13 = sub_268DC858C();
    v17 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v17);
    sub_268EE278C();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
LABEL_15:
    v15 = *(v30[7] + 8);
    v16 = v30[7];

    return v15();
  }

  v30[12] = v28;
  if (v28 != 8)
  {
    if (v28 == 9)
    {
      v2 = swift_task_alloc();
      v30[17] = v2;
      *v2 = v30[7];
      v2[1] = sub_268ED69F8;
      v3 = v30[16];
      v4 = v30[15];
      v5 = v30[14];

      return sub_268ED6EE0(v5, v4);
    }

    v18 = v30[15];
    v9 = sub_268DC858C();
    v22 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v10;
    MEMORY[0x277D82BE0](v18);
    v30[13] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v19 = sub_268F9AE64();
    v20 = v11;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v22);
    sub_268EE278C();
    swift_allocError();
    *v12 = 6;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_268CDE730(v30[16] + qword_2802DDFF8, (v30 + 2));
  v25 = v30[5];
  v23 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v25);
  v24 = (*(v23 + 40) + **(v23 + 40));
  v7 = *(*(v23 + 40) + 4);
  v8 = swift_task_alloc();
  v30[18] = v8;
  *v8 = v30[7];
  v8[1] = sub_268ED6C04;

  return v24(v25, v23);
}

uint64_t sub_268ED69F8(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 136);
  *(v8 + 56) = *v2;
  v9 = v8 + 56;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268ED6C04(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 144);
  v9[7] = *v2;
  v10 = v9 + 7;
  v9[19] = a1;
  v9[20] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268ED6E2C;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268ED6D74;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268ED6D74()
{
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[19];
  v2 = *(v0[7] + 8);
  v3 = v0[7];

  return v2(v1);
}

uint64_t sub_268ED6E2C()
{
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[20];
  v2 = *(v0[7] + 8);
  v3 = v0[7];

  return v2();
}

uint64_t sub_268ED6EE0(uint64_t a1, uint64_t a2)
{
  *(v3 + 376) = v2;
  *(v3 + 368) = a2;
  *(v3 + 360) = a1;
  *(v3 + 232) = v3;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 280) = 0;
  *(v3 + 296) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 520) = 0;
  *(v3 + 312) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 352) = 0;
  v4 = sub_268F9AB24();
  *(v3 + 384) = v4;
  v7 = *(v4 - 8);
  *(v3 + 392) = v7;
  v8 = *(v7 + 64);
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;
  *(v3 + 256) = v2;
  v5 = *(v3 + 232);

  return MEMORY[0x2822009F8](sub_268ED705C, 0);
}

uint64_t sub_268ED705C()
{
  v88 = v0;
  v1 = v0[51];
  v76 = v0[50];
  v75 = v0[49];
  v77 = v0[48];
  v74 = v0[47];
  v84 = v0[46];
  v0[29] = v0;
  v2 = sub_268DB9CB4();
  v80 = *v2;
  v81 = v2[1];
  v82 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v83 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v75 + 16))(v1, v74 + qword_2802DDFB0, v77);
  sub_268F9AB14();
  v79 = sub_268F9AB04();
  v78 = *(v75 + 8);
  v78(v76, v77);
  v78(v1, v77);
  sub_268DB9934(v80, v81, v82, v83, (v79 ^ 1) & 1);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BE0](v84);
  if (v84)
  {
    v71 = *(v73 + 368);
    v72 = [v71 errorDetail];
    if (v72)
    {
      v67 = sub_268F9AE24();
      v68 = v4;
      MEMORY[0x277D82BD8](v72);
      v69 = v67;
      v70 = v68;
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    MEMORY[0x277D82BD8](v71);
    v65 = v69;
    v66 = v70;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  *(v73 + 416) = v66;
  if (v66)
  {
    *(v73 + 136) = v65;
    *(v73 + 144) = v66;

    *(v73 + 152) = sub_268E948B8();
    *(v73 + 160) = v5;
    v64 = MEMORY[0x26D62DB50](*(v73 + 152), *(v73 + 160), v65, v66);
    sub_268CD9D30(v73 + 152);
    if (v64)
    {
      v57 = *(v73 + 376);
      v59 = *(v73 + 368);
      v58 = *(v73 + 360);

      sub_268CDE730(v57 + qword_2802DDFF8, v73 + 96);
      v61 = *(v73 + 120);
      v62 = *(v73 + 128);
      __swift_project_boxed_opaque_existential_1((v73 + 96), v61);

      MEMORY[0x277D82BE0](v58);
      MEMORY[0x277D82BE0](v59);
      v60 = swift_task_alloc();
      *(v73 + 424) = v60;
      v60[2] = v57;
      v60[3] = v58;
      v60[4] = v59;
      v63 = (*(v62 + 48) + **(v62 + 48));
      v6 = *(*(v62 + 48) + 4);
      v7 = swift_task_alloc();
      *(v73 + 432) = v7;
      *v7 = *(v73 + 232);
      v7[1] = sub_268ED7F4C;

      return v63(sub_268EE4A88, v60, v61, v62);
    }

    *(v73 + 168) = sub_268E948B8();
    *(v73 + 176) = v9;
    v56 = MEMORY[0x26D62DB50](*(v73 + 168), *(v73 + 176), v65, v66);
    sub_268CD9D30(v73 + 168);
    if (v56)
    {
      v52 = *(v73 + 376);
      v51 = *(v73 + 360);

      *(v73 + 304) = v51;
      v10 = sub_268D588E0();
      v54 = SettingIntent.settingIdentifier.getter(v10, &protocol witness table for INSetNumericSettingIntent);
      v55 = v11;
      *(v73 + 456) = v11;
      *(v73 + 200) = v54;
      *(v73 + 208) = v11;
      v53 = *(v52 + qword_2802DE038);

      *(v73 + 216) = v54;
      *(v73 + 224) = v55;
      if (*(v73 + 224))
      {
        v86 = *(v73 + 216);
      }

      else
      {
        v86._countAndFlagsBits = sub_268F9AEF4();
        v86._object = v12;
        if (*(v73 + 224))
        {
          sub_268CD9D30(v73 + 216);
        }
      }

      v45 = *(v73 + 376);
      NumericSettingIdentifier.init(rawValue:)(v86);
      v87 = v85;
      v50 = sub_268F3988C(&v87);

      *(v73 + 520) = v50;
      sub_268CDE730(v45 + qword_2802DDFF8, v73 + 56);
      v47 = *(v73 + 80);
      v48 = *(v73 + 88);
      __swift_project_boxed_opaque_existential_1((v73 + 56), v47);

      v46 = swift_task_alloc();
      *(v73 + 464) = v46;
      *(v46 + 16) = v54;
      *(v46 + 24) = v55;
      v49 = (*(v48 + 72) + **(v48 + 72));
      v13 = *(*(v48 + 72) + 4);
      v14 = swift_task_alloc();
      *(v73 + 472) = v14;
      *v14 = *(v73 + 232);
      v14[1] = sub_268ED825C;

      return v49(v50, sub_268EE4A7C, v46, v47, v48);
    }

    *(v73 + 184) = sub_268E948B8();
    *(v73 + 192) = v15;
    v44 = MEMORY[0x26D62DB50](*(v73 + 184), *(v73 + 192), v65, v66);
    sub_268CD9D30(v73 + 184);
    if (v44)
    {
      v40 = *(v73 + 376);

      sub_268CDE730(v40 + qword_2802DDFF8, v73 + 16);
      v43 = *(v73 + 40);
      v41 = *(v73 + 48);
      __swift_project_boxed_opaque_existential_1((v73 + 16), v43);
      v42 = (*(v41 + 104) + **(v41 + 104));
      v16 = *(*(v41 + 104) + 4);
      v17 = swift_task_alloc();
      *(v73 + 496) = v17;
      *v17 = *(v73 + 232);
      v17[1] = sub_268ED8564;

      return v42(v43, v41);
    }

    v35 = *(v73 + 368);

    v18 = sub_268DC858C();
    v39 = *v18;
    MEMORY[0x277D82BE0](*v18);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v38 = v19;
    MEMORY[0x277D82BE0](v35);
    *(v73 + 272) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v36 = sub_268F9AE64();
    v37 = v20;
    v38[3] = MEMORY[0x277D837D0];
    v38[4] = sub_268CDD224();
    *v38 = v36;
    v38[1] = v37;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v39);
    sub_268EE278C();
    swift_allocError();
    *v21 = 7;
    swift_willThrow();
  }

  else
  {
    v30 = *(v73 + 368);
    v22 = sub_268DC858C();
    v34 = *v22;
    MEMORY[0x277D82BE0](*v22);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v23;
    MEMORY[0x277D82BE0](v30);
    *(v73 + 264) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v31 = sub_268F9AE64();
    v32 = v24;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v34);
    sub_268EE278C();
    swift_allocError();
    *v25 = 5;
    swift_willThrow();
  }

  v26 = *(v73 + 408);
  v29 = *(v73 + 400);

  v27 = *(*(v73 + 232) + 8);
  v28 = *(v73 + 232);

  return v27();
}

uint64_t sub_268ED7F4C(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 432);
  v13[29] = *v2;
  v14 = v13 + 29;
  v13[55] = a1;
  v13[56] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268ED8830;
  }

  else
  {
    v5 = v13[53];
    v10 = v13[47];
    v12 = v13[46];
    v11 = v13[45];

    v6 = *v14;
    v7 = sub_268ED8100;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED8100()
{
  v1 = v0[55];
  v12 = v0[52];
  v0[29] = v0;
  v0[44] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v14 = v0[55];
  v4 = v0[51];
  v13 = v0[50];

  v5 = *(v0[29] + 8);
  v6 = v0[29];

  return v5(v14);
}

uint64_t sub_268ED825C(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 472);
  v11[29] = *v2;
  v12 = v11 + 29;
  v11[60] = a1;
  v11[61] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268ED8B48;
  }

  else
  {
    v5 = v11[58];
    v10 = v11[57];

    v6 = *v12;
    v7 = sub_268ED83F0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268ED83F0()
{
  v1 = v0[60];
  v12 = v0[57];
  v13 = v0[52];
  v0[29] = v0;
  v0[41] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v15 = v0[60];
  v4 = v0[51];
  v14 = v0[50];

  v5 = *(v0[29] + 8);
  v6 = v0[29];

  return v5(v15);
}

uint64_t sub_268ED8564(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 496);
  v9[29] = *v2;
  v10 = v9 + 29;
  v9[63] = a1;
  v9[64] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268ED8E40;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268ED86D4;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268ED86D4()
{
  v1 = v0[63];
  v12 = v0[52];
  v0[29] = v0;
  v0[37] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v14 = v0[63];
  v4 = v0[51];
  v13 = v0[50];

  v5 = *(v0[29] + 8);
  v6 = v0[29];

  return v5(v14);
}

uint64_t sub_268ED8830()
{
  v24 = v0[56];
  v1 = v0[53];
  v25 = v0[52];
  v13 = v0[47];
  v15 = v0[46];
  v14 = v0[45];
  v0[29] = v0;

  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v24;
  v0[42] = v24;
  v3 = sub_268DC858C();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v18 = v4;
  v5 = v24;
  v0[43] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v16 = sub_268F9AE64();
  v17 = v6;
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = sub_268CDD224();
  *v18 = v16;
  v18[1] = v17;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v19);
  v7 = sub_268DB9CB4();
  v22 = *v7;
  v20 = v7[1];
  v21 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v23 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v22, v20, v21, v23);
  MEMORY[0x277D82BD8](v23);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[51];
  v26 = v0[50];

  v10 = *(v0[29] + 8);
  v11 = v0[29];

  return v10();
}

uint64_t sub_268ED8B48()
{
  v22 = v0[61];
  v1 = v0[58];
  v13 = v0[57];
  v23 = v0[52];
  v0[29] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v2 = v22;
  v0[39] = v22;
  v3 = sub_268DC858C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[40] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[51];
  v24 = v0[50];

  v10 = *(v0[29] + 8);
  v11 = v0[29];

  return v10();
}

uint64_t sub_268ED8E40()
{
  v20 = v0[64];
  v21 = v0[52];
  v0[29] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v20;
  v0[35] = v20;
  v2 = sub_268DC858C();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;
  v4 = v20;
  v0[36] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v5;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  v6 = sub_268DB9CB4();
  v18 = *v6;
  v16 = v6[1];
  v17 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v19 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = v0[51];
  v22 = v0[50];

  v9 = *(v0[29] + 8);
  v10 = v0[29];

  return v9();
}

uint64_t sub_268ED9110(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v27 = a1;
  v29 = a3;
  v30 = a4;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v25 = *a2;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v26 = v16 - v24;
  v43 = v5;
  v42 = a2;
  v41 = *(v25 + qword_2802F1640);
  v40 = *(v25 + qword_2802F1640 + 8);
  v39 = v6;
  v38 = v7;
  v28 = *(a2 + qword_2802DDFB8);

  v8 = *v27;
  *v27 = v28;

  result = sub_268EE21E8(v29, v30);
  v31._countAndFlagsBits = result;
  v31._object = v10;
  v32 = v11;
  if (v10)
  {
    v22 = v31;
    v23 = v32;
    v17 = v32;
    v20 = v31;
    v36 = v31;
    v37 = v32;
    v18 = 0;
    v19 = type metadata accessor for SettingsNumericSetting();

    sub_268D34FD4();
    v12 = sub_268F9B314();
    v13 = SettingsNumericSetting.__allocating_init(settingId:value:)(v20._countAndFlagsBits, v20._object, v12);
    v14 = v27[1];
    v27[1] = v13;

    *(v27 + 16) = sub_268CDD6D4() & 1;

    NumericSettingIdentifier.init(rawValue:)(v20);
    v21 = v35;
    if (v35 != 13)
    {
      v16[3] = v21;
      v34 = v21;
      v33 = v21;
      sub_268E0AE44(&v33, v26);
      DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters();
      sub_268D29FC8(v26, v27 + *(DoesNotSupportNumericSettingParameters + 28));
    }
  }

  return result;
}

uint64_t sub_268ED93C4(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a1;
  v26 = a2;
  v32 = a3;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v29 = &v12 - v27;
  v30 = v27;
  MEMORY[0x28223BE20](v3);
  v31 = &v12 - v30;
  v40 = v4;
  v38 = v5;
  v39 = v6;

  if (v32)
  {
    v23 = v26;
    v24 = v32;
    v21._object = v32;
    v21._countAndFlagsBits = v26;
    v36 = v26;
    v37 = v32;

    NumericSettingIdentifier.init(rawValue:)(v21);
    v22 = v35;
    if (v35 != 13)
    {
      v20 = v22;
      v17 = v22;
      v34 = v22;
      v19 = 0;
      v15 = type metadata accessor for SettingsNumericSetting();

      sub_268D34FD4();
      v8 = sub_268F2B5E0(v19);
      v16 = SettingsNumericSetting.__allocating_init(settingId:value:)(v21._countAndFlagsBits, v21._object, v8);
      v18 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters();
      v9 = (v25 + v18[7]);
      v10 = *v9;
      *v9 = v16;

      v33 = v17;
      sub_268E0AE44(&v33, v31);
      sub_268D29FC8(v31, (v25 + v18[6]));
      sub_268D2A1F0((v25 + v18[6]), v29);
      v11 = sub_268F9A9C4();
      v14 = (*(*(v11 - 8) + 48))(v29, 1) == 1;
      v13 = v14;
      sub_268D28588(v29);
      *(v25 + v18[9]) = v13;
    }
  }

  return result;
}

uint64_t sub_268ED969C(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v16 = a4;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v11 = *v4;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = (&v10 - v10);
  v23 = v5;
  v22 = v6;
  v20 = v7;
  v21 = v8;
  v19 = v4;
  v18 = *(v11 + qword_2802F1640);
  v17 = *(v11 + qword_2802F1640 + 8);

  sub_268ED97FC(v12, v13, v15);
  v14(v15);
  sub_268D28378(v15);
}

uint64_t sub_268ED97FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v4 = *v3;
  v40 = a1;
  v39 = a2;
  v38 = v3;
  v37 = *(v4 + qword_2802F1640);
  v36 = *(v4 + qword_2802F1640 + 8);
  MEMORY[0x277D82BE0](a2);
  v28 = sub_268EE21E8(a1, a2);
  v30 = v5;
  v29 = v6;
  *&v7 = MEMORY[0x277D82BD8](a2).n128_u64[0];
  if (v30)
  {
    v33 = v28;
    v34 = v30;
    v35 = v29;
    v32 = [a2 oldValue];
    if (v32)
    {
      v21 = v32;
      MEMORY[0x277D82BE0](v32);
      sub_268D35038(&v32);
      v22 = [v21 value];
      MEMORY[0x277D82BD8](v21);
      v23 = v22;
    }

    else
    {
      sub_268D35038(&v32);
      v23 = 0;
    }

    if (v23)
    {
      type metadata accessor for SettingsNumericSetting();

      MEMORY[0x277D82BE0](v23);
      v31 = SettingsNumericSetting.__allocating_init(settingId:value:)(v28, v30, v23);
      v20 = *(v25 + qword_2802DDFD8);

      sub_268E60D64(v31, v29);

      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      v9 = sub_268DC858C();
      v19 = *v9;
      MEMORY[0x277D82BE0](*v9);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v18 = v10;
      MEMORY[0x277D82BE0](a2);
      sub_268CDA484();
      sub_268EE4A98();
      v16 = sub_268F9AE74();
      v17 = v11;
      v18[3] = MEMORY[0x277D837D0];
      v18[4] = sub_268CDD224();
      *v18 = v16;
      v18[1] = v17;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v19);
      sub_268EE278C();
      v12 = swift_allocError();
      *v13 = 3;
      *a3 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_268EE278C();
    v14 = swift_allocError();
    *v15 = 4;
    *a3 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268ED9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 960) = v4;
  *(v5 + 952) = a4;
  *(v5 + 944) = a3;
  *(v5 + 936) = a1;
  *(v5 + 824) = v5;
  *(v5 + 832) = 0;
  *(v5 + 840) = 0;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0;
  *(v5 + 752) = 0;
  *(v5 + 872) = 0;
  *(v5 + 888) = 0;
  *(v5 + 760) = 0;
  *(v5 + 768) = 0;
  *(v5 + 1056) = 0;
  *(v5 + 1060) = 0;
  *(v5 + 896) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = swift_task_alloc();
  *(v5 + 832) = a2;
  *(v5 + 840) = a3;
  *(v5 + 848) = a4;
  *(v5 + 856) = v4;
  v6 = *(v5 + 824);

  return MEMORY[0x2822009F8](sub_268ED9E2C, 0);
}

uint64_t sub_268ED9E2C()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v0[103] = v0;
  v45 = sub_268EE21E8(v3, v2);
  v0[123] = v45;
  v0[124] = v4;
  v0[125] = v5;
  if (!v4)
  {
    sub_268EE278C();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    goto LABEL_22;
  }

  v41 = v4;
  v42 = v5;
  v43 = v44[119];
  v44[92] = v45;
  v44[93] = v4;
  v44[94] = v5;
  MEMORY[0x277D82BE0](v43);
  if (v43)
  {
    v40 = v44[119];
    v44[116] = [v40 oldValue];
    if (v44[116])
    {
      v37 = v44[116];
      MEMORY[0x277D82BE0](v37);
      sub_268D35038(v44 + 116);
      v38 = [v37 value];
      MEMORY[0x277D82BD8](v37);
      v39 = v38;
      goto LABEL_7;
    }

    sub_268D35038(v44 + 116);
    MEMORY[0x277D82BD8](v40);
  }

  v39 = 0;
LABEL_7:
  v44[126] = v39;
  if (!v39)
  {
    v22 = v44[119];
    v13 = sub_268DC858C();
    v26 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v14;
    MEMORY[0x277D82BE0](v22);
    v44[108] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v23 = sub_268F9AE64();
    v24 = v15;
    v25[3] = MEMORY[0x277D837D0];
    v25[4] = sub_268CDD224();
    *v25 = v23;
    v25[1] = v24;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v26);
    sub_268EE278C();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    goto LABEL_22;
  }

  v36 = v44[119];
  v44[109] = v39;
  MEMORY[0x277D82BE0](v36);
  if (!v36)
  {
    goto LABEL_17;
  }

  v35 = v44[119];
  v44[115] = [v35 updatedValue];
  if (!v44[115])
  {
    sub_268D35038(v44 + 115);
    MEMORY[0x277D82BD8](v35);
LABEL_17:
    v34 = 0;
    goto LABEL_13;
  }

  v32 = v44[115];
  MEMORY[0x277D82BE0](v32);
  sub_268D35038(v44 + 115);
  v33 = [v32 value];
  MEMORY[0x277D82BD8](v32);
  v34 = v33;
LABEL_13:
  v44[127] = v34;
  if (v34)
  {
    v44[111] = v34;
    v6 = swift_task_alloc();
    v44[128] = v6;
    *v6 = v44[103];
    v6[1] = sub_268EDA790;
    v7 = v44[120];

    return sub_268EE3398(v45, v41, v42, v34);
  }

  v27 = v44[119];
  v9 = sub_268DC858C();
  v31 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v30 = v10;
  MEMORY[0x277D82BE0](v27);
  v44[110] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v28 = sub_268F9AE64();
  v29 = v11;
  v30[3] = MEMORY[0x277D837D0];
  v30[4] = sub_268CDD224();
  *v30 = v28;
  v30[1] = v29;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v31);
  sub_268EE278C();
  swift_allocError();
  *v12 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v39);

LABEL_22:
  v18 = v44[122];
  v21 = v44[121];

  v19 = *(v44[103] + 8);
  v20 = v44[103];

  return v19();
}

uint64_t sub_268EDA790(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 103;
  v5 = *(*v3 + 1024);
  v11[103] = *v3;
  v11[129] = v2;
  v11[130] = a1;
  v11[131] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_268EDB93C;
  }

  else
  {
    v6 = *v10;
    v7 = sub_268EDA908;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EDA908()
{
  v102 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v92 = *(v0 + 984);
  *(v0 + 824) = v0;
  *(v0 + 760) = v2;
  *(v0 + 768) = v1;

  NumericSettingIdentifier.init(rawValue:)(v92);
  if (v93 == 13)
  {
    v44 = *(v91 + 1048);
    v37 = *(v91 + 984);
    v45 = *(v91 + 1016);
    v46 = *(v91 + 1008);
    v47 = *(v91 + 1000);
    v38 = *(v91 + 992);
    v25 = sub_268DC858C();
    v43 = *v25;
    MEMORY[0x277D82BE0](*v25);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v42 = v26;

    *(v91 + 776) = v37;
    *(v91 + 784) = v38;
    v39 = MEMORY[0x277D837D0];
    v40 = sub_268F9AE84();
    v41 = v27;
    v42[3] = v39;
    v42[4] = sub_268CDD224();
    *v42 = v40;
    v42[1] = v41;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v43);
    sub_268EE278C();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();

    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);

    v29 = *(v91 + 976);
    v48 = *(v91 + 968);

    v30 = *(*(v91 + 824) + 8);
    v31 = *(v91 + 824);

    return v30();
  }

  else
  {
    *(v91 + 1056) = v93;
    v94[0] = v93;
    *(v91 + 1060) = sub_268E07EE4(v94);
    *(v91 + 1064) = v3;
    v4 = sub_268F9B734();
    *v5 = 1;
    v5[1] = 2;
    sub_268CD0F7C();
    *(v91 + 896) = v4;
    *(v91 + 904) = v4;
    *(v91 + 1057) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
    sub_268DB7A80();
    sub_268D91118();
    if (sub_268F9AFC4())
    {
      v87 = *(v91 + 976);
      v94[1] = v93;
      settingId._countAndFlagsBits = NumericSettingIdentifier.rawValue.getter();
      settingId._object = v6;
      v94[2] = v93;
      graphicIcon._countAndFlagsBits = sub_268EB0934();
      graphicIcon._object = v7;
      v96 = v93;
      sub_268EB0234(v87);
      v88 = sub_268F9A9C4();
      v89 = *(v88 - 8);
      v90 = *(v89 + 48);
      if (v90(v87, 1) == 1)
      {
        sub_268D28588(*(v91 + 976));
        v83 = 0;
        v84 = 0;
      }

      else
      {
        v80 = *(v91 + 976);
        v81 = sub_268F9A9B4();
        v82 = v8;
        (*(v89 + 8))(v80, v88);
        v83 = v81;
        v84 = v82;
      }

      *(v91 + 792) = v83;
      *(v91 + 800) = v84;
      if (*(v91 + 800))
      {
        v9 = *(v91 + 800);
        v95._countAndFlagsBits = *(v91 + 792);
        v95._object = v9;
      }

      else
      {
        v95._countAndFlagsBits = sub_268F9AEF4();
        v95._object = v10;
        if (*(v91 + 800))
        {
          sub_268CD9D30(v91 + 792);
        }
      }

      v11 = *(v91 + 968);
      v79 = v11;
      leftIconName = v95;
      v98 = v93;
      sub_268EB0474(v11);
      if ((v90)(v79, 1, v88) == 1)
      {
        sub_268D28588(*(v91 + 968));
        v76 = 0;
        v77 = 0;
      }

      else
      {
        v73 = *(v91 + 968);
        v74 = sub_268F9A9B4();
        v75 = v12;
        (*(v89 + 8))(v73, v88);
        v76 = v74;
        v77 = v75;
      }

      *(v91 + 808) = v76;
      *(v91 + 816) = v77;
      if (*(v91 + 816))
      {
        v13 = *(v91 + 816);
        v97._countAndFlagsBits = *(v91 + 808);
        v97._object = v13;
      }

      else
      {
        v97._countAndFlagsBits = sub_268F9AEF4();
        v97._object = v14;
        if (*(v91 + 816))
        {
          sub_268CD9D30(v91 + 808);
        }
      }

      v15 = *(v91 + 1048);
      v16 = *(v91 + 960);
      v71 = *(v91 + 944);
      v65 = *(v91 + 1016);
      v64 = *(v91 + 1008);
      rightIconName = v97;

      [v64 0x1FAD21978];
      oldValue = v17;
      [v65 0x1FAD21978];
      updatedValue = v18;
      sub_268F9B124();
      minValue = v19;
      sub_268F9B124();
      maxValue = v20;
      v99[0] = v93;
      step = sub_268EE3CFC(v99);
      v99[1] = v93;
      url.value._countAndFlagsBits = sub_268EB0030();
      url.value._object = v21;
      *(v91 + 912) = v71;
      v22 = sub_268D588E0();
      SettingIntent.deviceCategory.getter(v22, &protocol witness table for INSetNumericSettingIntent);
      if (v23)
      {
        v61 = 0;
        v62 = 1;
      }

      else
      {
        sub_268CD4334();
        v61 = v24;
        v62 = 0;
      }

      v100 = v61;
      v101 = v62 & 1;
      if (v62)
      {
        deviceCategoryInt = 0;
      }

      else
      {
        deviceCategoryInt = v100;
      }

      __dst = *(v91 + 936);
      v56 = *(v91 + 1016);
      v57 = *(v91 + 1008);
      v59 = *(v91 + 1000);
      v58 = *(v91 + 992);
      NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)((v91 + 160), settingId, graphicIcon, leftIconName, rightIconName, *(v91 + 1040), oldValue, updatedValue, minValue, maxValue, step, url, deviceCategoryInt);
      memcpy((v91 + 448), (v91 + 160), 0x90uLL);
      sub_268D34CD8((v91 + 448), (v91 + 592));
      memcpy((v91 + 304), (v91 + 448), 0x90uLL);
      nullsub_1(v91 + 304);
      memcpy(__dst, (v91 + 304), 0x90uLL);
      sub_268D34F58((v91 + 448));

      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
    }

    else
    {
      v50 = *(v91 + 1048);
      v49 = *(v91 + 936);
      v51 = *(v91 + 1016);
      v52 = *(v91 + 1008);
      v54 = *(v91 + 1000);
      v53 = *(v91 + 992);
      sub_268D34B74((v91 + 16));
      memcpy(v49, (v91 + 16), 0x90uLL);

      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
    }

    v33 = *(v91 + 976);
    v36 = *(v91 + 968);

    v34 = *(*(v91 + 824) + 8);
    v35 = *(v91 + 824);

    return v34();
  }
}

uint64_t sub_268EDB93C()
{
  v1 = v0[127];
  v7 = v0[126];
  v9 = v0[125];
  v8 = v0[124];
  v0[103] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[129];
  v3 = v0[122];
  v10 = v0[121];

  v4 = *(v0[103] + 8);
  v5 = v0[103];

  return v4();
}

uint64_t sub_268EDBA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = swift_task_alloc();
  *(v7 + 56) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268ECFC20;

  return sub_268EDBB60(a1, a2, a3);
}

uint64_t sub_268EDBB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = v3;
  *(v4 + 224) = a3;
  *(v4 + 216) = a2;
  *(v4 + 40) = v4;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 96) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 488) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 152) = 0;
  *(v4 + 168) = 0;
  *(v4 + 184) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 240) = v5;
  v8 = *(v5 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  v6 = *(v4 + 40);

  return MEMORY[0x2822009F8](sub_268EDBCFC, 0);
}

uint64_t sub_268EDBCFC()
{
  v97 = v0;
  v1 = v0[29];
  v91 = v0[28];
  v90 = v0[27];
  v0[5] = v0;
  v2 = sub_268DC858C();
  v89 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B284();
  v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v87 = v3;
  MEMORY[0x277D82BE0](v91);
  v0[10] = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
  v85 = sub_268F9AE64();
  v86 = v4;
  v87[3] = MEMORY[0x277D837D0];
  v88 = sub_268CDD224();
  v0[35] = v88;
  v87[4] = v88;
  *v87 = v85;
  v87[1] = v86;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v89);
  v92 = sub_268EE21E8(v90, v91);
  v93 = v5;
  v94 = v6;
  v0[36] = v5;
  v0[37] = v6;
  if (!v5)
  {
    sub_268EE278C();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
    goto LABEL_34;
  }

  v83 = *(v84 + 224);
  *(v84 + 16) = v92;
  *(v84 + 24) = v5;
  *(v84 + 32) = v6;
  MEMORY[0x277D82BE0](v83);
  if (v83)
  {
    v82 = *(v84 + 224);
    *(v84 + 208) = [v82 oldValue];
    if (*(v84 + 208))
    {
      v79 = *(v84 + 208);
      MEMORY[0x277D82BE0](v79);
      sub_268D35038((v84 + 208));
      v80 = [v79 value];
      MEMORY[0x277D82BD8](v79);
      v81 = v80;
      goto LABEL_7;
    }

    sub_268D35038((v84 + 208));
    MEMORY[0x277D82BD8](v82);
  }

  v81 = 0;
LABEL_7:
  *(v84 + 304) = v81;
  if (!v81)
  {
    v30 = *(v84 + 224);
    v20 = sub_268DC858C();
    v32 = *v20;
    MEMORY[0x277D82BE0](*v20);
    sub_268F9B294();
    sub_268F9B734();
    v31 = v21;
    MEMORY[0x277D82BE0](v30);
    *(v84 + 88) = v30;
    v22 = sub_268F9AE64();
    v31[3] = MEMORY[0x277D837D0];
    v31[4] = v88;
    *v31 = v22;
    v31[1] = v23;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v32);
    sub_268EE278C();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();

    goto LABEL_34;
  }

  v78 = *(v84 + 224);
  *(v84 + 96) = v81;
  MEMORY[0x277D82BE0](v78);
  if (!v78)
  {
    goto LABEL_29;
  }

  v77 = *(v84 + 224);
  *(v84 + 200) = [v77 updatedValue];
  if (!*(v84 + 200))
  {
    sub_268D35038((v84 + 200));
    MEMORY[0x277D82BD8](v77);
LABEL_29:
    v76 = 0;
    goto LABEL_13;
  }

  v74 = *(v84 + 200);
  MEMORY[0x277D82BE0](v74);
  sub_268D35038((v84 + 200));
  v75 = [v74 value];
  MEMORY[0x277D82BD8](v74);
  v76 = v75;
LABEL_13:
  *(v84 + 312) = v76;
  if (v76)
  {
    v66 = *(v84 + 264);
    v65 = *(v84 + 256);
    v67 = *(v84 + 240);
    v64 = *(v84 + 232);
    v61 = *(v84 + 216);
    v63 = *(v84 + 248);
    *(v84 + 112) = v76;
    type metadata accessor for SettingsNumericSetting();

    MEMORY[0x277D82BE0](v76);
    v62 = SettingsNumericSetting.__allocating_init(settingId:value:)(v92, v93, v76);
    *(v84 + 320) = v62;
    *(v84 + 120) = v62;
    sub_268F72BC4(v61);
    *(v84 + 488) = v95;
    v7 = sub_268DB98D4();
    v70 = *v7;
    v71 = v7[1];
    v72 = *(v7 + 16);
    v8 = sub_268DC7BA8();
    v73 = *v8;
    MEMORY[0x277D82BE0](*v8);
    (*(v63 + 16))(v66, v64 + qword_2802DDFB0, v67);
    sub_268F9AB14();
    v69 = sub_268F9AB04();
    v68 = *(v63 + 8);
    v68(v65, v67);
    v68(v66, v67);
    sub_268DB9934(v70, v71, v72, v73, (v69 ^ 1) & 1);
    MEMORY[0x277D82BD8](v73);
    if (sub_268EE3214(v81))
    {
      v9 = *(v84 + 232);
      [*(v84 + 216) action];
      if (sub_268EE32A8())
      {
        v59 = *(v84 + 232);
        *(v84 + 328) = *(v59 + qword_2802DDFE8);

        v60 = *(v59 + qword_2802DDFB8);
        *(v84 + 336) = v60;

        v10 = swift_task_alloc();
        *(v84 + 344) = v10;
        *v10 = *(v84 + 40);
        v10[1] = sub_268EDCEE4;

        return sub_268EAAD24(v62, v94, v60);
      }

      else
      {
        v55 = *(v84 + 232);
        *(v84 + 368) = *(v55 + qword_2802DDFE8);

        v53 = *(v55 + qword_2802DE020);

        v58 = sub_268DD1954();

        v54 = *(v55 + qword_2802DE020);

        v56 = sub_268DD1B2C();

        v57 = *(v55 + qword_2802DDFB8);
        *(v84 + 376) = v57;

        v12 = swift_task_alloc();
        *(v84 + 384) = v12;
        *v12 = *(v84 + 40);
        v12[1] = sub_268EDD2BC;

        return sub_268EA8044(v58 & 1, v56 & 1, v62, v94, v57);
      }
    }

    else
    {
      v51 = *(*(v84 + 232) + qword_2802DE008);

      v96 = v95;
      v52 = sub_268E5787C(&v96);

      if (v52)
      {
        v48 = *(v84 + 232);
        *(v84 + 408) = *(v48 + qword_2802DDFE8);

        v47 = *(v48 + qword_2802DE020);

        v50 = sub_268DD1B2C();

        v49 = *(v48 + qword_2802DDFB8);
        *(v84 + 416) = v49;

        v13 = swift_task_alloc();
        *(v84 + 424) = v13;
        *v13 = *(v84 + 40);
        v13[1] = sub_268EDD694;

        return sub_268EA51D8(v50 & 1, v62, v94, v49);
      }

      else
      {
        v39 = *(v84 + 232);
        v40 = *(v84 + 216);
        *(v84 + 448) = *(v39 + qword_2802DDFE8);

        v36 = *(v39 + qword_2802DE020);

        v46 = sub_268DD1954();

        v37 = *(v39 + qword_2802DE020);

        v42 = sub_268DD1B2C();

        v43 = *(v39 + qword_2802DDFB8);
        *(v84 + 456) = v43;

        v38 = *(v39 + qword_2802DE020);

        v44 = sub_268DD17E4(v40);

        v41 = *(v39 + qword_2802DE020);

        v45 = sub_268DD17E4(v40);

        v14 = swift_task_alloc();
        *(v84 + 464) = v14;
        *v14 = *(v84 + 40);
        v14[1] = sub_268EDDA6C;

        return sub_268EA3650(v46 & 1, v42 & 1, v62, v94, v43, v44, v45);
      }
    }
  }

  v33 = *(v84 + 224);
  v15 = sub_268DC858C();
  v35 = *v15;
  MEMORY[0x277D82BE0](*v15);
  sub_268F9B294();
  sub_268F9B734();
  v34 = v16;
  MEMORY[0x277D82BE0](v33);
  *(v84 + 104) = v33;
  v17 = sub_268F9AE64();
  v34[3] = MEMORY[0x277D837D0];
  v34[4] = v88;
  *v34 = v17;
  v34[1] = v18;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v35);
  sub_268EE278C();
  swift_allocError();
  *v19 = 2;
  swift_willThrow();
  MEMORY[0x277D82BD8](v81);

LABEL_34:
  v26 = *(v84 + 264);
  v29 = *(v84 + 256);

  v27 = *(*(v84 + 40) + 8);
  v28 = *(v84 + 40);

  return v27();
}

uint64_t sub_268EDCEE4(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 344);
  v13[5] = *v2;
  v14 = v13 + 5;
  v13[44] = a1;
  v13[45] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268EDDE44;
  }

  else
  {
    v5 = v13[42];
    v12 = v13[41];
    v11 = v13[40];
    v10 = v13[37];

    v6 = *v14;
    v7 = sub_268EDD098;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EDD098()
{
  v1 = v0[44];
  v7 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v7;
  v19 = v0[44];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v16 = v0[37];
  v15 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4(v19);
}

uint64_t sub_268EDD2BC(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 384);
  v13[5] = *v2;
  v14 = v13 + 5;
  v13[49] = a1;
  v13[50] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268EDE194;
  }

  else
  {
    v5 = v13[47];
    v12 = v13[46];
    v11 = v13[40];
    v10 = v13[37];

    v6 = *v14;
    v7 = sub_268EDD470;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EDD470()
{
  v1 = v0[49];
  v7 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v7;
  v19 = v0[49];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v16 = v0[37];
  v15 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4(v19);
}

uint64_t sub_268EDD694(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 424);
  v13[5] = *v2;
  v14 = v13 + 5;
  v13[54] = a1;
  v13[55] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268EDE4E4;
  }

  else
  {
    v5 = v13[52];
    v12 = v13[51];
    v11 = v13[40];
    v10 = v13[37];

    v6 = *v14;
    v7 = sub_268EDD848;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EDD848()
{
  v1 = v0[54];
  v7 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v7;
  v19 = v0[54];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v16 = v0[37];
  v15 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4(v19);
}

uint64_t sub_268EDDA6C(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 464);
  v13[5] = *v2;
  v14 = v13 + 5;
  v13[59] = a1;
  v13[60] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268EDE834;
  }

  else
  {
    v5 = v13[57];
    v12 = v13[56];
    v11 = v13[40];
    v10 = v13[37];

    v6 = *v14;
    v7 = sub_268EDDC20;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EDDC20()
{
  v1 = v0[59];
  v7 = v1;
  v0[5] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[16] = v7;
  v19 = v0[59];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v16 = v0[37];
  v15 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[16]);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v4 = *(v0[5] + 8);
  v5 = v0[5];

  return v4(v19);
}

uint64_t sub_268EDDE44()
{
  v23 = v0[45];
  v1 = v0[42];
  v14 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v28 = v0[37];
  v27 = v0[36];
  v15 = v0[35];
  v17 = v0[34];
  v0[5] = v0;

  v2 = v23;
  v0[23] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[24] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB98D4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  v10 = v0[33];
  v29 = v0[32];

  v11 = *(v0[5] + 8);
  v12 = v0[5];

  return v11();
}

uint64_t sub_268EDE194()
{
  v23 = v0[50];
  v1 = v0[47];
  v14 = v0[46];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v28 = v0[37];
  v27 = v0[36];
  v15 = v0[35];
  v17 = v0[34];
  v0[5] = v0;

  v2 = v23;
  v0[21] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[22] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB98D4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  v10 = v0[33];
  v29 = v0[32];

  v11 = *(v0[5] + 8);
  v12 = v0[5];

  return v11();
}

uint64_t sub_268EDE4E4()
{
  v23 = v0[55];
  v1 = v0[52];
  v14 = v0[51];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v28 = v0[37];
  v27 = v0[36];
  v15 = v0[35];
  v17 = v0[34];
  v0[5] = v0;

  v2 = v23;
  v0[19] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[20] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB98D4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  v10 = v0[33];
  v29 = v0[32];

  v11 = *(v0[5] + 8);
  v12 = v0[5];

  return v11();
}

uint64_t sub_268EDE834()
{
  v23 = v0[60];
  v1 = v0[57];
  v14 = v0[56];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v28 = v0[37];
  v27 = v0[36];
  v15 = v0[35];
  v17 = v0[34];
  v0[5] = v0;

  v2 = v23;
  v0[17] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v16 = v4;
  v5 = v23;
  v0[18] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = v15;
  *v16 = v6;
  v16[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v8 = sub_268DB98D4();
  v21 = *v8;
  v19 = v8[1];
  v20 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v22 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);

  v10 = v0[33];
  v29 = v0[32];

  v11 = *(v0[5] + 8);
  v12 = v0[5];

  return v11();
}

uint64_t sub_268EDEB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = v3;
  v4[10] = a3;
  v4[9] = a2;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[2];
  return MEMORY[0x2822009F8](sub_268EDEBF4, 0);
}

uint64_t sub_268EDEBF4()
{
  v1 = *(v0 + 80);
  v27 = v1;
  *(v0 + 16) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v27)
  {
    v22 = v26[10];
    v23 = [v22 code];
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  if (v25)
  {
    v12 = sub_268DC858C();
    v16 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v16);
    sub_268EE278C();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
LABEL_15:
    v14 = *(v26[2] + 8);
    v15 = v26[2];

    return v14();
  }

  v26[7] = v24;
  if (v24 != 8)
  {
    if (v24 == 9)
    {
      v2 = swift_task_alloc();
      v26[12] = v2;
      *v2 = v26[2];
      v2[1] = sub_268EDF194;
      v3 = v26[11];
      v4 = v26[10];
      v5 = v26[9];

      return sub_268EDF640(v5, v4);
    }

    v17 = v26[10];
    v8 = sub_268DC858C();
    v21 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v9;
    MEMORY[0x277D82BE0](v17);
    v26[8] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v18 = sub_268F9AE64();
    v19 = v10;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v21);
    sub_268EE278C();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
    goto LABEL_15;
  }

  v26[13] = *(v26[11] + qword_2802DE000);

  v7 = swift_task_alloc();
  v26[14] = v7;
  *v7 = v26[2];
  v7[1] = sub_268EDF3A0;

  return sub_268EB880C();
}

uint64_t sub_268EDF194(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 96);
  *(v8 + 16) = *v2;
  v9 = v8 + 16;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268EDF3A0(uint64_t a1)
{
  v9 = *v2;
  v3 = *(*v2 + 112);
  v9[2] = *v2;
  v10 = v9 + 2;
  v9[15] = v1;

  if (v1)
  {
    v7 = *v10;

    return MEMORY[0x2822009F8](sub_268EDF58C, 0);
  }

  else
  {
    v4 = v9[13];

    v5 = *(*v10 + 8);

    return v5(a1);
  }
}

uint64_t sub_268EDF58C()
{
  v1 = v0[13];
  v0[2] = v0;

  v2 = v0[15];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_268EDF640(uint64_t a1, uint64_t a2)
{
  *(v3 + 272) = v2;
  *(v3 + 264) = a2;
  *(v3 + 256) = a1;
  *(v3 + 128) = v3;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 176) = 0;
  *(v3 + 192) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 504) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 232) = 0;
  *(v3 + 248) = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v5 = sub_268F99BC4();
  *(v3 + 288) = v5;
  v10 = *(v5 - 8);
  *(v3 + 296) = v10;
  v6 = *(v10 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v7 = sub_268F9AB24();
  *(v3 + 312) = v7;
  v11 = *(v7 - 8);
  *(v3 + 320) = v11;
  v12 = *(v11 + 64);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  v8 = *(v3 + 128);

  return MEMORY[0x2822009F8](sub_268EDF864, 0);
}

uint64_t sub_268EDF864()
{
  v86 = v0;
  v1 = v0[42];
  v74 = v0[41];
  v73 = v0[40];
  v75 = v0[39];
  v72 = v0[34];
  v82 = v0[33];
  v0[16] = v0;
  v2 = sub_268DB9CB4();
  v78 = *v2;
  v79 = v2[1];
  v80 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v81 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v73 + 16))(v1, v72 + qword_2802DDFB0, v75);
  sub_268F9AB14();
  v77 = sub_268F9AB04();
  v76 = *(v73 + 8);
  v76(v74, v75);
  v76(v1, v75);
  sub_268DB9934(v78, v79, v80, v81, (v77 ^ 1) & 1);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BE0](v82);
  if (v82)
  {
    v69 = *(v71 + 264);
    v70 = [v69 errorDetail];
    if (v70)
    {
      v65 = sub_268F9AE24();
      v66 = v4;
      MEMORY[0x277D82BD8](v70);
      v67 = v65;
      v68 = v66;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    MEMORY[0x277D82BD8](v69);
    v63 = v67;
    v64 = v68;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  *(v71 + 344) = v64;
  if (v64)
  {
    v61 = *(v71 + 304);
    v60 = *(v71 + 280);
    *(v71 + 16) = v63;
    *(v71 + 24) = v64;
    sub_268F99824();
    sub_268D18250();

    sub_268F99B94();

    *(v71 + 32) = sub_268E948B8();
    *(v71 + 40) = v5;
    v62 = MEMORY[0x26D62DB50](*(v71 + 32), *(v71 + 40), v63, v64);
    sub_268CD9D30(v71 + 32);
    if (v62)
    {
      v57 = *(v71 + 272);

      *(v71 + 352) = *(v57 + qword_2802DE000);

      v59 = *(v57 + qword_2802DDFB8);
      *(v71 + 360) = v59;

      v58 = sub_268CDD6D4();
      v6 = swift_task_alloc();
      *(v71 + 368) = v6;
      *v6 = *(v71 + 128);
      v6[1] = sub_268EE06D0;

      return sub_268EBA484(v59, v58 & 1);
    }

    *(v71 + 48) = sub_268E948B8();
    *(v71 + 56) = v8;
    v56 = MEMORY[0x26D62DB50](*(v71 + 48), *(v71 + 56), v63, v64);
    sub_268CD9D30(v71 + 48);
    if (v56)
    {
      v52 = *(v71 + 272);
      v51 = *(v71 + 256);

      *(v71 + 200) = v51;
      v9 = sub_268D588E0();
      v54 = SettingIntent.settingIdentifier.getter(v9, &protocol witness table for INSetNumericSettingIntent);
      v55 = v10;
      *(v71 + 392) = v10;
      *(v71 + 80) = v54;
      *(v71 + 88) = v10;
      v53 = *(v52 + qword_2802DE038);

      *(v71 + 96) = v54;
      *(v71 + 104) = v55;
      if (*(v71 + 104))
      {
        v84 = *(v71 + 96);
      }

      else
      {
        v84._countAndFlagsBits = sub_268F9AEF4();
        v84._object = v11;
        if (*(v71 + 104))
        {
          sub_268CD9D30(v71 + 96);
        }
      }

      NumericSettingIdentifier.init(rawValue:)(v84);
      v85 = v83;
      v50 = sub_268F3988C(&v85);

      *(v71 + 504) = v50;

      if (v55)
      {
        v12 = *(v71 + 272);
        *(v71 + 112) = v54;
        *(v71 + 120) = v55;
        *(v71 + 400) = *(v12 + qword_2802DE000);

        type metadata accessor for SettingsNumericSetting();

        sub_268D34FD4();
        v13 = sub_268F2B5E0(0);
        v49 = SettingsNumericSetting.__allocating_init(settingId:value:)(v54, v55, v13);
        *(v71 + 408) = v49;
        v14 = swift_task_alloc();
        v15 = v49;
        *(v71 + 416) = v14;
        *v14 = *(v71 + 128);
        v14[1] = sub_268EE0A10;
        v16 = v50;
      }

      else
      {
        *(v71 + 440) = *(*(v71 + 272) + qword_2802DE000);

        v17 = swift_task_alloc();
        *(v71 + 448) = v17;
        *v17 = *(v71 + 128);
        v17[1] = sub_268EE0DBC;
        v16 = v50;
        v15 = 0;
      }

      return sub_268EC17FC(v16, v15);
    }

    *(v71 + 64) = sub_268E948B8();
    *(v71 + 72) = v18;
    v48 = MEMORY[0x26D62DB50](*(v71 + 64), *(v71 + 72), v63, v64);
    sub_268CD9D30(v71 + 64);
    if (v48)
    {
      v47 = *(v71 + 272);

      *(v71 + 472) = *(v47 + qword_2802DE000);

      v19 = swift_task_alloc();
      *(v71 + 480) = v19;
      *v19 = *(v71 + 128);
      v19[1] = sub_268EE113C;

      return sub_268EBB148();
    }

    v45 = *(v71 + 304);
    v46 = *(v71 + 288);
    v39 = *(v71 + 264);
    v44 = *(v71 + 296);

    v20 = sub_268DC858C();
    v43 = *v20;
    MEMORY[0x277D82BE0](*v20);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v42 = v21;
    MEMORY[0x277D82BE0](v39);
    *(v71 + 168) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v40 = sub_268F9AE64();
    v41 = v22;
    v42[3] = MEMORY[0x277D837D0];
    v42[4] = sub_268CDD224();
    *v42 = v40;
    v42[1] = v41;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v43);
    sub_268EE278C();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
    (*(v44 + 8))(v45, v46);
  }

  else
  {
    v34 = *(v71 + 264);
    v24 = sub_268DC858C();
    v38 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v37 = v25;
    MEMORY[0x277D82BE0](v34);
    *(v71 + 160) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE048, &unk_268FA9AF8);
    v35 = sub_268F9AE64();
    v36 = v26;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = sub_268CDD224();
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v38);
    sub_268EE278C();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();
  }

  v28 = *(v71 + 336);
  v31 = *(v71 + 328);
  v32 = *(v71 + 304);
  v33 = *(v71 + 280);

  v29 = *(*(v71 + 128) + 8);
  v30 = *(v71 + 128);

  return v29();
}

uint64_t sub_268EE06D0(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 368);
  v11[16] = *v2;
  v12 = v11 + 16;
  v11[47] = a1;
  v11[48] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268EE146C;
  }

  else
  {
    v5 = v11[45];
    v10 = v11[44];

    v6 = *v12;
    v7 = sub_268EE0864;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EE0864()
{
  v1 = v0[47];
  v16 = v0[43];
  v14 = v0[38];
  v13 = v0[37];
  v15 = v0[36];
  v0[16] = v0;
  v0[31] = v1;
  v2 = sub_268DB9CB4();
  v11 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v11, v9, v10, v12);
  v4 = MEMORY[0x277D82BD8](v12);
  (*(v13 + 8))(v14, v15, v4);

  v20 = v0[47];
  v5 = v0[42];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[35];

  v6 = *(v0[16] + 8);
  v7 = v0[16];

  return v6(v20);
}

uint64_t sub_268EE0A10(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 416);
  v11[16] = *v2;
  v12 = v11 + 16;
  v11[53] = a1;
  v11[54] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268EE17A4;
  }

  else
  {
    v5 = v11[51];
    v10 = v11[50];

    v6 = *v12;
    v7 = sub_268EE0BA4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EE0BA4()
{
  v1 = v0[53];
  v8 = v1;
  v9 = v0[49];
  v0[16] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[26] = v8;

  v22 = v0[53];
  v14 = v0[49];
  v18 = v0[43];
  v16 = v0[38];
  v15 = v0[37];
  v17 = v0[36];
  v2 = sub_268DB98D4();
  v12 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v13 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[26]);

  (*(v15 + 8))(v16, v17);

  v4 = v0[42];
  v19 = v0[41];
  v20 = v0[38];
  v21 = v0[35];

  v5 = *(v0[16] + 8);
  v6 = v0[16];

  return v5(v22);
}

uint64_t sub_268EE0DBC(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 448);
  v10[16] = *v2;
  v11 = v10 + 16;
  v10[57] = a1;
  v10[58] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268EE1B20;
  }

  else
  {
    v5 = v10[55];

    v6 = *v11;
    v7 = sub_268EE0F40;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EE0F40()
{
  v1 = v0[57];
  v8 = v1;
  v0[16] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[26] = v8;
  v21 = v0[57];
  v13 = v0[49];
  v17 = v0[43];
  v15 = v0[38];
  v14 = v0[37];
  v16 = v0[36];
  v2 = sub_268DB98D4();
  v11 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v0[26]);

  (*(v14 + 8))(v15, v16);

  v4 = v0[42];
  v18 = v0[41];
  v19 = v0[38];
  v20 = v0[35];

  v5 = *(v0[16] + 8);
  v6 = v0[16];

  return v5(v21);
}

uint64_t sub_268EE113C(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 480);
  v10[16] = *v2;
  v11 = v10 + 16;
  v10[61] = a1;
  v10[62] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268EE1E80;
  }

  else
  {
    v5 = v10[59];

    v6 = *v11;
    v7 = sub_268EE12C0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EE12C0()
{
  v1 = v0[61];
  v16 = v0[43];
  v14 = v0[38];
  v13 = v0[37];
  v15 = v0[36];
  v0[16] = v0;
  v0[24] = v1;
  v2 = sub_268DB98D4();
  v11 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v11, v9, v10, v12);
  v4 = MEMORY[0x277D82BD8](v12);
  (*(v13 + 8))(v14, v15, v4);

  v20 = v0[61];
  v5 = v0[42];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[35];

  v6 = *(v0[16] + 8);
  v7 = v0[16];

  return v6(v20);
}

uint64_t sub_268EE146C()
{
  v22 = v0[48];
  v1 = v0[45];
  v13 = v0[44];
  v26 = v0[43];
  v24 = v0[38];
  v23 = v0[37];
  v25 = v0[36];
  v0[16] = v0;

  v2 = v22;
  v0[29] = v22;
  v3 = sub_268DC858C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[30] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v23 + 8))(v24, v25);

  v9 = v0[42];
  v27 = v0[41];
  v28 = v0[38];
  v29 = v0[35];

  v10 = *(v0[16] + 8);
  v11 = v0[16];

  return v10();
}

uint64_t sub_268EE17A4()
{
  v1 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v0[16] = v0;

  v23 = v0[54];
  v27 = v0[43];
  v25 = v0[38];
  v24 = v0[37];
  v26 = v0[36];
  v2 = v23;
  v0[27] = v23;
  v3 = sub_268DC858C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[28] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB98D4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v24 + 8))(v25, v26);

  v9 = v0[42];
  v28 = v0[41];
  v29 = v0[38];
  v30 = v0[35];

  v10 = *(v0[16] + 8);
  v11 = v0[16];

  return v10();
}

uint64_t sub_268EE1B20()
{
  v1 = v0[55];
  v13 = v0[49];
  v0[16] = v0;

  v22 = v0[58];
  v26 = v0[43];
  v24 = v0[38];
  v23 = v0[37];
  v25 = v0[36];
  v2 = v22;
  v0[27] = v22;
  v3 = sub_268DC858C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[28] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v23 + 8))(v24, v25);

  v9 = v0[42];
  v27 = v0[41];
  v28 = v0[38];
  v29 = v0[35];

  v10 = *(v0[16] + 8);
  v11 = v0[16];

  return v10();
}

uint64_t sub_268EE1E80()
{
  v21 = v0[62];
  v1 = v0[59];
  v25 = v0[43];
  v23 = v0[38];
  v22 = v0[37];
  v24 = v0[36];
  v0[16] = v0;

  v2 = v21;
  v0[22] = v21;
  v3 = sub_268DC858C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[23] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB98D4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  (*(v22 + 8))(v23, v24);

  v9 = v0[42];
  v26 = v0[41];
  v27 = v0[38];
  v28 = v0[35];

  v10 = *(v0[16] + 8);
  v11 = v0[16];

  return v10();
}

uint64_t sub_268EE21E8(void *a1, void *a2)
{
  v31 = *(*v2 + qword_2802F1640);
  v30 = *(*v2 + qword_2802F1640 + 8);
  v29 = [a1 settingMetadata];
  if (v29)
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v25 = [v29 settingId];
      sub_268F9AE24();
      v26 = sub_268F9AF14();

      *&v3 = MEMORY[0x277D82BD8](v25).n128_u64[0];
      if (v26)
      {
        v4 = sub_268DC858C();
        v23 = *v4;
        MEMORY[0x277D82BE0](*v4);
        sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v22 = v5;
        MEMORY[0x277D82BE0](v29);
        sub_268D291D4();
        sub_268D29238();
        v20 = sub_268F9AE74();
        v21 = v6;
        v22[3] = MEMORY[0x277D837D0];
        v22[4] = sub_268CDD224();
        *v22 = v20;
        v22[1] = v21;
        sub_268CD0F7C();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](a2);
        MEMORY[0x277D82BD8](v29);
        return 0;
      }

      else
      {
        v18 = [v29 settingId];
        sub_268F9AE24();
        sub_268EE2808(a1, a2);
        sub_268EE21D4();
        v19 = v7;
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](a2);
        MEMORY[0x277D82BD8](v29);
        return v19;
      }
    }

    else
    {
      v8 = sub_268DC858C();
      v17 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v29);
      return 0;
    }
  }

  else
  {
    v9 = sub_268DC858C();
    v16 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v10;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v13 = sub_268F9AE74();
    v14 = v11;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v16);
    return 0;
  }
}

unint64_t sub_268EE278C()
{
  v2 = qword_2802DE050;
  if (!qword_2802DE050)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE2808(void *a1, id a2)
{
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0.0;
  v61 = 0.0;
  v59 = 0.0;
  v3 = *v2;
  v67 = a1;
  v66 = a2;
  v65 = v2;
  v64[2] = *(v3 + qword_2802F1640);
  v64[1] = *(v3 + qword_2802F1640 + 8);
  v64[0] = [a2 oldValue];
  if (v64[0])
  {
    v54 = v64[0];
    MEMORY[0x277D82BE0](v64[0]);
    sub_268D35038(v64);
    v55 = [v54 value];
    *&v4 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    if (v55)
    {
      [v55 doubleValue];
      v51 = v5;
      MEMORY[0x277D82BD8](v55);
      v52 = v51;
      v53 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_268D35038(v64);
  }

  v52 = 0.0;
  v53 = 1;
LABEL_6:
  if (v53)
  {
    goto LABEL_60;
  }

  v63 = v52;
  v6 = [a2 updatedValue];
  v62 = v6;
  if (v6)
  {
    v49 = v62;
    MEMORY[0x277D82BE0](v62);
    sub_268D35038(&v62);
    v50 = [v49 value];
    *&v7 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    if (v50)
    {
      [v50 doubleValue];
      v46 = v8;
      MEMORY[0x277D82BD8](v50);
      v47 = v46;
      v48 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    sub_268D35038(&v62);
  }

  v47 = 0.0;
  v48 = 1;
LABEL_14:
  if (v48)
  {
    goto LABEL_60;
  }

  v61 = v47;
  v9 = [a2 minValue];
  v60 = v9;
  if (v9)
  {
    v44 = v60;
    MEMORY[0x277D82BE0](v60);
    sub_268D35038(&v60);
    v45 = [v44 value];
    *&v10 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    if (v45)
    {
      [v45 doubleValue];
      v41 = v11;
      MEMORY[0x277D82BD8](v45);
      v42 = v41;
      v43 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    sub_268D35038(&v60);
  }

  v42 = 0.0;
  v43 = 1;
LABEL_22:
  if (v43)
  {
    goto LABEL_60;
  }

  v59 = v42;
  v12 = [a2 maxValue];
  v58 = v12;
  if (v12)
  {
    v39 = v58;
    MEMORY[0x277D82BE0](v58);
    sub_268D35038(&v58);
    v40 = [v39 value];
    *&v13 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    if (v40)
    {
      [v40 doubleValue];
      v36 = v14;
      MEMORY[0x277D82BD8](v40);
      v37 = v36;
      v38 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    sub_268D35038(&v58);
  }

  v37 = 0.0;
  v38 = 1;
LABEL_30:
  if (v38)
  {
LABEL_60:
    v16 = sub_268DC858C();
    v19 = *v16;
    MEMORY[0x277D82BE0](*v16);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v19);
    type metadata accessor for SettingsNumericSettingAction();
    v23 = sub_268CDD6D4();
    v20 = sub_268CDD6D4();
    v21 = sub_268CDD6D4();
    v22 = sub_268CDD6D4();
    v17 = sub_268CDD6D4();
    return sub_268E91F5C(v23 & 1, v20 & 1, v21 & 1, v22 & 1, v17 & 1, HIDWORD(v22));
  }

  if (sub_268F72C88(a1, a2))
  {
    v34 = 1;
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = sub_268F72FB8(a1, a2);
  }

  type metadata accessor for SettingsNumericSettingAction();
  [a1 action];
  type metadata accessor for INSettingAction();
  sub_268DD25C8();
  v33 = (sub_268F9B754() & 1) != 0 && v42 < v47;
  v32 = v33 && v47 < v37;
  v31 = v47 <= v42 || v35;
  if (v37 > v47)
  {
    v30 = v34;
  }

  else
  {
    v30 = 1;
  }

  [a1 action];
  v29 = (sub_268F9B754() & 1) != 0 || v52 < v47;
  [a1 action];
  v28 = (sub_268F9B754() & 1) != 0 || v47 < v52;
  sub_268F9A874();
  v27 = [a1 numericValue];
  if (v27)
  {
    v25 = [v27 value];
    MEMORY[0x277D82BD8](v27);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v15 = sub_268E0D94C(v26);
  return sub_268E91F5C(v32, v31 & 1, v30 & 1, v29, v28, v15);
}

id sub_268EE3214(void *a1)
{
  v4 = *(*v1 + qword_2802F1640);
  v3 = *(*v1 + qword_2802F1640 + 8);
  return [a1 isEqualToNumber_];
}

uint64_t sub_268EE32A8()
{
  v3 = *(*v0 + qword_2802F1640);
  v2 = *(*v0 + qword_2802F1640 + 8);
  type metadata accessor for INSettingAction();
  sub_268DD25C8();
  return sub_268F9B754() & 1;
}

uint64_t sub_268EE3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[13] = a4;
  v5[12] = a2;
  v5[11] = a1;
  v5[7] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[8] = a4;
  v5[9] = v4;
  v6 = v5[7];
  return MEMORY[0x2822009F8](sub_268EE3414, 0);
}

uint64_t sub_268EE3414()
{
  v1 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v6 = v0[11];
  v0[7] = v0;
  v0[15] = *(v1 + qword_2802DE000);

  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](v5);
  v8 = SettingsNumericSetting.__allocating_init(settingId:value:)(v6, v4, v5);
  v0[16] = v8;
  v2 = swift_task_alloc();
  *(v7 + 136) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268EE3540;

  return sub_268EBEBC0(v8);
}

uint64_t sub_268EE3540(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 136);
  v11[7] = *v2;
  v12 = v11 + 7;
  v11[18] = a1;
  v11[19] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268EE39D8;
  }

  else
  {
    v5 = v11[16];
    v10 = v11[15];

    v6 = *v12;
    v7 = sub_268EE36D4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EE36D4()
{
  v22 = *(v0 + 144);
  *(v0 + 56) = v0;
  if (v22)
  {
    v21[10] = v22;
    v19 = sub_268E0739C(v22);
    v20 = v1;
    v2 = MEMORY[0x277D82BD8](v22);
    v3 = *(v21[7] + 8);
    v4 = v21[7];

    return v3(v19, v20, v2);
  }

  else
  {
    v13 = v21[12];
    v12 = v21[11];
    v6 = sub_268DC7B48();
    v18 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v7;

    v21[5] = v12;
    v21[6] = v13;
    v14 = MEMORY[0x277D837D0];
    v15 = sub_268F9AE84();
    v16 = v8;
    v17[3] = v14;
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v18);
    sub_268EE278C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v21[7] + 8);
    v11 = v21[7];

    return v10();
  }
}

uint64_t sub_268EE39D8()
{
  v18 = v0[19];
  v1 = v0[16];
  v17 = v0[15];
  v0[7] = v0;

  v10 = v16[12];
  v9 = v16[11];
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;

  v16[5] = v9;
  v16[6] = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_268F9AE84();
  v13 = v4;
  v14[3] = v11;
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268EE278C();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  v6 = *(v16[7] + 8);
  v7 = v16[7];

  return v6();
}

double sub_268EE3CFC(_BYTE *a1)
{
  v7 = *(*v1 + qword_2802F1640);
  v6 = *(*v1 + qword_2802F1640 + 8);
  if (*a1 != 2)
  {
    return 1.0;
  }

  v3 = *sub_268D35434();

  v4 = sub_268D39FC4();

  return v4;
}

void sub_268EE3DC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268EE3E3C(v3);
}

void sub_268EE3E3C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_2802F1640);
  v2 = *(*v1 + qword_2802F1640 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)", 76, "SiriSettingsIntents/SetNumericSettingTemplatingService.swift", 60, 2, "SiriSettingsIntents.SetNumericSettingTemplatingService", 54, 0x16uLL, a1, 7uLL);
  __break(1u);
}

void sub_268EE3F28()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268EE3FAC(v3);
}

void sub_268EE3FAC(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_2802F1640);
  v2 = *(*v1 + qword_2802F1640 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)", 101, "SiriSettingsIntents/SetNumericSettingTemplatingService.swift", 60, 2, "SiriSettingsIntents.SetNumericSettingTemplatingService", 54, 0x16uLL, a1, 7uLL);
  __break(1u);
}

uint64_t sub_268EE40A8()
{
  v18 = *(*v0 + qword_2802F1640);
  v17 = *(*v0 + qword_2802F1640 + 8);
  sub_268CD7930(&v0[qword_2802DDFA8]);
  v16 = qword_2802DDFB0;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(&v0[v16]);
  v2 = *&v0[qword_2802DDFB8];

  v3 = *&v0[qword_2802DDFC0];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_2802DDFC8]);
  v4 = *&v0[qword_2802DDFD0];

  v5 = *&v0[qword_2802DDFD8];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_2802DDFE0]);
  v6 = *&v0[qword_2802DDFE8];

  v7 = *&v0[qword_2802DDFF0];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_2802DDFF8]);
  v8 = *&v0[qword_2802DE000];

  v9 = *&v0[qword_2802DE008];

  v10 = *&v0[qword_2802DE010];

  v11 = *&v0[qword_2802DE018];

  v12 = *&v0[qword_2802DE020];

  v13 = *&v0[qword_2802DE028];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_2802DE030]);
  v14 = *&v0[qword_2802DE038];
}

uint64_t sub_268EE42A0()
{
  v19 = *(*v0 + qword_2802F1640);
  v18 = *(*v0 + qword_2802F1640 + 8);
  v17 = sub_268F99AB4();
  sub_268CD7930((v17 + qword_2802DDFA8));
  v16 = qword_2802DDFB0;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v17 + v16);
  v2 = *(v17 + qword_2802DDFB8);

  v3 = *(v17 + qword_2802DDFC0);

  __swift_destroy_boxed_opaque_existential_0((v17 + qword_2802DDFC8));
  v4 = *(v17 + qword_2802DDFD0);

  v5 = *(v17 + qword_2802DDFD8);

  __swift_destroy_boxed_opaque_existential_0((v17 + qword_2802DDFE0));
  v6 = *(v17 + qword_2802DDFE8);

  v7 = *(v17 + qword_2802DDFF0);

  __swift_destroy_boxed_opaque_existential_0((v17 + qword_2802DDFF8));
  v8 = *(v17 + qword_2802DE000);

  v9 = *(v17 + qword_2802DE008);

  v10 = *(v17 + qword_2802DE010);

  v11 = *(v17 + qword_2802DE018);

  v12 = *(v17 + qword_2802DE020);

  v13 = *(v17 + qword_2802DE028);

  __swift_destroy_boxed_opaque_existential_0((v17 + qword_2802DE030));
  v14 = *(v17 + qword_2802DE038);

  return v17;
}

uint64_t sub_268EE44D4()
{
  v6 = *(*v0 + qword_2802F1640);
  v5 = *(*v0 + qword_2802F1640 + 8);
  v1 = *sub_268EE42A0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  return swift_deallocClassInstance();
}

BOOL sub_268EE4580(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268EE4A98()
{
  v2 = qword_2802DE980;
  if (!qword_2802DE980)
  {
    sub_268CDA484();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EE4B18()
{
  v2 = qword_2802DE058[0];
  if (!qword_2802DE058[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DE058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE4B94()
{
  v2 = sub_268F9AB24();
  inited = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_268EE4D4C(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_268EE4DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}