uint64_t sub_2262F4FE8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7934F0, &qword_226353170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F52DC();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_226350B0C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_226350B0C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_226350B0C();
  v27 = v15;
  v35 = 3;
  v16 = sub_226350ACC();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_2262F5330(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_2262F5368(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

unint64_t sub_2262F52DC()
{
  result = qword_27D7934F8;
  if (!qword_27D7934F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934F8);
  }

  return result;
}

unint64_t sub_2262F5398()
{
  result = qword_27D793508;
  if (!qword_27D793508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793508);
  }

  return result;
}

unint64_t sub_2262F53EC()
{
  result = qword_27D793548;
  if (!qword_27D793548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793548);
  }

  return result;
}

unint64_t sub_2262F5440()
{
  result = qword_27D793550;
  if (!qword_27D793550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793550);
  }

  return result;
}

unint64_t sub_2262F5494()
{
  result = qword_27D793558;
  if (!qword_27D793558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793558);
  }

  return result;
}

unint64_t sub_2262F54E8()
{
  result = qword_27D793560;
  if (!qword_27D793560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793560);
  }

  return result;
}

unint64_t sub_2262F553C()
{
  result = qword_27D793568;
  if (!qword_27D793568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793568);
  }

  return result;
}

unint64_t sub_2262F5590()
{
  result = qword_27D793570;
  if (!qword_27D793570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793570);
  }

  return result;
}

unint64_t sub_2262F55E4()
{
  result = qword_27D793578;
  if (!qword_27D793578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793578);
  }

  return result;
}

unint64_t sub_2262F5638()
{
  result = qword_27D7935F0;
  if (!qword_27D7935F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7935E8, &qword_226353228);
    sub_2262F56BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7935F0);
  }

  return result;
}

unint64_t sub_2262F56BC()
{
  result = qword_27D7935F8;
  if (!qword_27D7935F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793140, &qword_226353220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7935F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkManager.Failure(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LinkManager.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Analytics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262F5A9C()
{
  result = qword_27D793600;
  if (!qword_27D793600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793600);
  }

  return result;
}

unint64_t sub_2262F5AF4()
{
  result = qword_27D793608;
  if (!qword_27D793608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793608);
  }

  return result;
}

unint64_t sub_2262F5B4C()
{
  result = qword_27D793610;
  if (!qword_27D793610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793610);
  }

  return result;
}

unint64_t sub_2262F5BA4()
{
  result = qword_27D793618;
  if (!qword_27D793618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793618);
  }

  return result;
}

unint64_t sub_2262F5BFC()
{
  result = qword_27D793620;
  if (!qword_27D793620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793620);
  }

  return result;
}

unint64_t sub_2262F5C54()
{
  result = qword_27D793628;
  if (!qword_27D793628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793628);
  }

  return result;
}

unint64_t sub_2262F5CAC()
{
  result = qword_27D793630;
  if (!qword_27D793630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793630);
  }

  return result;
}

unint64_t sub_2262F5D04()
{
  result = qword_27D793638;
  if (!qword_27D793638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793638);
  }

  return result;
}

unint64_t sub_2262F5D5C()
{
  result = qword_27D793640;
  if (!qword_27D793640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793640);
  }

  return result;
}

unint64_t sub_2262F5DB4()
{
  result = qword_27D793648;
  if (!qword_27D793648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793648);
  }

  return result;
}

unint64_t sub_2262F5E0C()
{
  result = qword_27D793650;
  if (!qword_27D793650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793650);
  }

  return result;
}

unint64_t sub_2262F5E64()
{
  result = qword_27D793658;
  if (!qword_27D793658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793658);
  }

  return result;
}

unint64_t sub_2262F5EBC()
{
  result = qword_27D793660;
  if (!qword_27D793660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793660);
  }

  return result;
}

unint64_t sub_2262F5F14()
{
  result = qword_27D793668;
  if (!qword_27D793668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793668);
  }

  return result;
}

unint64_t sub_2262F5F6C()
{
  result = qword_27D793670;
  if (!qword_27D793670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793670);
  }

  return result;
}

unint64_t sub_2262F5FC4()
{
  result = qword_27D793678;
  if (!qword_27D793678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793678);
  }

  return result;
}

unint64_t sub_2262F601C()
{
  result = qword_27D793680;
  if (!qword_27D793680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793680);
  }

  return result;
}

unint64_t sub_2262F6074()
{
  result = qword_27D793688;
  if (!qword_27D793688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793688);
  }

  return result;
}

unint64_t sub_2262F60CC()
{
  result = qword_27D793690;
  if (!qword_27D793690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793690);
  }

  return result;
}

unint64_t sub_2262F6124()
{
  result = qword_27D793698;
  if (!qword_27D793698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793698);
  }

  return result;
}

unint64_t sub_2262F617C()
{
  result = qword_27D7936A0;
  if (!qword_27D7936A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936A0);
  }

  return result;
}

unint64_t sub_2262F61D4()
{
  result = qword_27D7936A8;
  if (!qword_27D7936A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936A8);
  }

  return result;
}

unint64_t sub_2262F622C()
{
  result = qword_27D7936B0;
  if (!qword_27D7936B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936B0);
  }

  return result;
}

unint64_t sub_2262F6284()
{
  result = qword_27D7936B8;
  if (!qword_27D7936B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936B8);
  }

  return result;
}

unint64_t sub_2262F62DC()
{
  result = qword_27D7936C0;
  if (!qword_27D7936C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936C0);
  }

  return result;
}

unint64_t sub_2262F6334()
{
  result = qword_27D7936C8;
  if (!qword_27D7936C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936C8);
  }

  return result;
}

unint64_t sub_2262F638C()
{
  result = qword_27D7936D0;
  if (!qword_27D7936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936D0);
  }

  return result;
}

unint64_t sub_2262F63E4()
{
  result = qword_27D7936D8;
  if (!qword_27D7936D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936D8);
  }

  return result;
}

unint64_t sub_2262F643C()
{
  result = qword_27D7936E0;
  if (!qword_27D7936E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936E0);
  }

  return result;
}

unint64_t sub_2262F6494()
{
  result = qword_27D7936E8;
  if (!qword_27D7936E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936E8);
  }

  return result;
}

unint64_t sub_2262F64EC()
{
  result = qword_27D7936F0;
  if (!qword_27D7936F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936F0);
  }

  return result;
}

unint64_t sub_2262F6544()
{
  result = qword_27D7936F8;
  if (!qword_27D7936F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7936F8);
  }

  return result;
}

unint64_t sub_2262F659C()
{
  result = qword_27D793700;
  if (!qword_27D793700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793700);
  }

  return result;
}

unint64_t sub_2262F65F4()
{
  result = qword_27D793708;
  if (!qword_27D793708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793708);
  }

  return result;
}

unint64_t sub_2262F664C()
{
  result = qword_27D793710;
  if (!qword_27D793710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793710);
  }

  return result;
}

unint64_t sub_2262F66A4()
{
  result = qword_27D793718;
  if (!qword_27D793718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793718);
  }

  return result;
}

uint64_t sub_2262F66F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B74736575716572 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000226356B50 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7361655274697865 && a2 == 0xEA00000000006E6FLL || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xEE006C6562614C67 || (sub_226350C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4F6E6F6973736573 && a2 == 0xEE00656D6F637475 || (sub_226350C4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000226356BB0 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000226356BD0 == a2 || (sub_226350C4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65746E4970657473 && a2 == 0xED0000736C617672 || (sub_226350C4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646567676F6CLL && a2 == 0xE600000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_2262F6B70()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = v2;
  if (v2 == 1)
  {
    sub_2263501DC();
    v3 = sub_2263501CC();
    v4 = *(v1 + 112);
    *(v1 + 112) = v3;

    sub_2262FB3EC(v4);
  }

  sub_2262FB3FC(v2);
  return v3;
}

uint64_t sub_2262F6C00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2263501FC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22635015C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for VisualAction.Kind.SystemTool(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for VisualAction.Kind(0);
  v2[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262F6D78, v1, 0);
}

uint64_t sub_2262F6D78()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[2];
  v4 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v3 + *(v4 + 20), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = v0[12];
      sub_2262FAB0C();
      swift_allocError();
      *v19 = 3;
      swift_willThrow();
      sub_2262D90E8(v18, type metadata accessor for VisualAction.Kind);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v6 = v0[12];
      sub_2262FAB0C();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
      v8 = sub_22634FBEC();
      (*(*(v8 - 8) + 8))(v6, v8);
LABEL_12:
      v21 = v0[12];
      v23 = v0[9];
      v22 = v0[10];
      v24 = v0[6];

      v25 = v0[1];

      return v25();
    }

LABEL_11:
    sub_2262FAB0C();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2262D90E8(v0[12], type metadata accessor for VisualAction.Kind);
    goto LABEL_11;
  }

  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[2];
  sub_2262D902C(v0[12], v9);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  sub_2263501EC();
  v13 = *(MEMORY[0x277D727B8] + 4);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_2262F7028;
  v15 = v0[9];
  v16 = v0[6];
  v17 = v0[7];

  return MEMORY[0x2821DADD0](v15, v16, &unk_2263540C0, v12, v17);
}

uint64_t sub_2262F7028()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[3];
    v8 = sub_2262F727C;
  }

  else
  {
    v9 = v2[13];
    v11 = v2[8];
    v10 = v2[9];
    v12 = v2[7];
    v13 = v2[3];
    (*(v11 + 8))(v10, v12);

    v8 = sub_2262F71D0;
    v7 = v13;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2262F71D0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  sub_2262D90E8(v0[10], type metadata accessor for VisualAction.Kind.SystemTool);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2262F727C()
{
  v1 = v0[13];
  v2 = v0[10];

  sub_2262D90E8(v2, type metadata accessor for VisualAction.Kind.SystemTool);
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2262F7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937C8, &qword_2263540C8) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_2263500DC();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_2263500FC();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262F748C, 0, 0);
}

uint64_t sub_2262F748C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 80), *(v0 + 104));
  v4 = type metadata accessor for VisualAction(0);
  sub_2262F7B48(*(v3 + *(v4 + 24)));
  v5 = sub_22635019C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_2263500EC();
  v6 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = *(MEMORY[0x277D72518] + 4);
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_2262F7658;
  v10 = *(v0 + 144);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 56);

  return MEMORY[0x2821DAA58](v13, v10, v0 + 16, ObjectType, v11);
}

uint64_t sub_2262F7658()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(v2 + 160) = v0;

  sub_2262D67D8(v2 + 16, &qword_27D7937D0, &qword_2263540D0);
  if (v0)
  {
    v4 = sub_2262F7820;
  }

  else
  {
    v4 = sub_2262F7784;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2262F7784()
{
  v1 = v0[15];
  v2 = v0[12];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2262F7820()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

unint64_t sub_2262F78BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937E8, &qword_2263540E8);
    v2 = sub_226350A9C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2262FB40C(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_2262B8FD8(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937F0, &unk_2263540F0);
        swift_dynamicCast();
        sub_2262B8FD8(&v25, v27);
        sub_2262B8FD8(v27, v28);
        sub_2262B8FD8(v28, &v26);
        result = sub_22633941C(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_2262B8FD8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2262B8FD8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2262F7B48(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937D8, &qword_2263540D8);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - v5;
  v49 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937E0, &qword_2263540E0);
    v6 = sub_226350A9C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = v49 + 64;
  v8 = 1 << *(v49 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v49 + 64);
  v11 = (v8 + 63) >> 6;
  v43 = v6 + 8;

  v13 = 0;
  v45 = v6;
  v44 = v7;
  while (v10)
  {
    v18 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v49 + 56);
    v22 = (*(v49 + 48) + 16 * v20);
    v24 = *v22;
    v50 = v22[1];
    v23 = v50;
    v25 = sub_22635027C();
    v26 = *(v25 - 8);
    v27 = v21 + *(v26 + 72) * v20;
    v28 = v48;
    v29 = v46;
    (*(v26 + 16))(&v46[*(v48 + 48)], v27, v25);
    *v29 = v24;
    v29[1] = v23;
    v30 = v29;
    v31 = v47;
    sub_2262FB300(v30, v47);
    v32 = *(v28 + 48);
    v33 = *v31;
    v34 = v31[1];
    v52 = v25;
    v53 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
    (*(v26 + 32))(boxed_opaque_existential_1, v31 + v32, v25);
    sub_2262FB3D4(&v51, v55);
    v36 = v33;
    sub_2262FB3D4(v55, v56);
    sub_2262FB3D4(v56, &v54);

    v37 = v33;
    v6 = v45;
    result = sub_22633941C(v37, v34);
    if (v38)
    {
      v14 = (v6[6] + 16 * result);
      v15 = v14[1];
      *v14 = v36;
      v14[1] = v34;
      v16 = result;

      v17 = (v6[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = sub_2262FB3D4(&v54, v17);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v43 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v39 = (v6[6] + 16 * result);
      *v39 = v36;
      v39[1] = v34;
      result = sub_2262FB3D4(&v54, v6[7] + 40 * result);
      v40 = v6[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_21;
      }

      v6[2] = v42;
    }

    v13 = v18;
    v7 = v44;
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v18);
    ++v13;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2262F7F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v161 = a2;
  v128 = a3;
  v4 = sub_22635004C();
  v155 = *(v4 - 8);
  v156 = v4;
  v5 = *(v155 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = v122 - v9;
  v127 = sub_2263500DC();
  v126 = *(v127 - 8);
  v10 = *(v126 + 64);
  v11 = MEMORY[0x28223BE20](v127);
  v125 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v129 = v122 - v13;
  v14 = sub_22635022C();
  v143 = *(v14 - 8);
  v144 = v14;
  v15 = *(v143 + 64);
  MEMORY[0x28223BE20](v14);
  v142 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2263502EC();
  v151 = *(v147 - 8);
  v17 = *(v151 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2263500AC();
  v136 = *(v145 - 8);
  v19 = *(v136 + 64);
  MEMORY[0x28223BE20](v145);
  v135 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22635005C();
  v140 = *(v141 - 8);
  v21 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v138 = (v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793728, &qword_226353FB0);
  v132 = *(v133 - 8);
  v23 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = v122 - v24;
  v149 = sub_22635014C();
  v152 = *(v149 - 8);
  v25 = *(v152 + 64);
  v26 = MEMORY[0x28223BE20](v149);
  v130 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v148 = v122 - v29;
  MEMORY[0x28223BE20](v28);
  v139 = v122 - v30;
  v31 = sub_22634EF3C();
  v32 = *(v31 - 8);
  v162 = v31;
  v163 = v32;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v137 = v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v159 = v122 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793730, &qword_226353FB8);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (v122 - v40);
  v42 = sub_22635031C();
  v157 = *(v42 - 8);
  KeyPath = v42;
  v43 = *(v157 + 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = v122 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793738, &qword_226353FC0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v164 = (v122 - v51);
  v52 = sub_2263502BC();
  v153 = *(v52 - 8);
  v154 = v52;
  v53 = *(v153 + 64);
  MEMORY[0x28223BE20](v52);
  v150 = v122 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2262F6B70();
  if (v55)
  {
    v56 = v55;
    sub_22635030C();
    swift_getKeyPath();
    v57 = swift_allocObject();
    v123 = a1;
    *(v57 + 16) = a1;
    *(v57 + 24) = v161;
    *v41 = v57;
    v58 = *(v38 + 104);
    v124 = *MEMORY[0x277D721C8];
    v58(v41);
    sub_2262FB1F4(&qword_27D793748, MEMORY[0x277D73330]);
    sub_2262FAE80(&qword_27D793750, &qword_27D793730, &qword_226353FB8);

    sub_22635021C();

    (*(v38 + 8))(v41, v37);
    v59 = KeyPath;
    v60 = *(v157 + 1);
    v60(v46, KeyPath);
    v61 = v159;
    sub_22634EF1C();
    v62 = v160;
    sub_2263501BC();
    if (v62)
    {

      (*(v163 + 8))(v61, v162);
      return (v60)(v48, v59);
    }

    else
    {
      v68 = v163 + 8;
      v69 = *(v163 + 8);
      v69(v61, v162);
      v60(v48, v59);
      v71 = v153;
      v70 = v154;
      if ((*(v153 + 48))(v164, 1, v154) == 1)
      {
        sub_2262D67D8(v164, &qword_27D793738, &qword_226353FC0);
        v72 = v134;
        sub_22634FFDC();
        v73 = sub_22635003C();
        v74 = sub_22635073C();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_2262B6000, v73, v74, "No container found for bundle id", v75, 2u);
          MEMORY[0x22AA7D570](v75, -1, -1);
        }

        (*(v155 + 8))(v72, v156);
        sub_2262FAB0C();
        swift_allocError();
        *v76 = 1;
        swift_willThrow();
      }

      else
      {
        v160 = v69;
        v163 = v68;
        v122[1] = v56;
        v77 = v150;
        (*(v71 + 32))(v150, v164, v70);
        v78 = v130;
        sub_22635013C();
        swift_getKeyPath();
        v79 = swift_allocBox();
        (*(v71 + 16))(v80, v77, v70);
        v81 = v131;
        *v131 = v79;
        v82 = v132;
        v83 = v133;
        (*(v132 + 104))(v81, v124, v133);
        v84 = sub_2262FB1F4(&qword_27D793760, MEMORY[0x277D724B8]);
        sub_2262FAE80(&qword_27D793770, &qword_27D793728, &qword_226353FB0);
        v159 = v84;
        sub_22635021C();

        (*(v82 + 8))(v81, v83);
        v164 = *(v152 + 8);
        v152 += 8;
        v164(v78, v149);
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793758, &qword_226354028);
        v85 = sub_22635007C();
        v86 = *(v85 - 8);
        v87 = *(v86 + 72);
        v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_226351C90;
        if (qword_27D792EA0 != -1)
        {
          swift_once();
        }

        v90 = __swift_project_value_buffer(v147, qword_27D793ED8);
        v91 = *(v151 + 16);
        v155 = v90;
        v151 += 16;
        v134 = v91;
        (v91)(v146);
        v156 = "ResultsInAppIntent";
        v157 = "onRegistrationRequest(_:)";
        v92 = v135;
        sub_22635032C();
        v93 = v136;
        v94 = *(v136 + 104);
        LODWORD(v132) = *MEMORY[0x277D72148];
        v95 = v145;
        v133 = v136 + 104;
        v131 = v94;
        (v94)(v92);
        sub_22635008C();
        (*(v93 + 8))(v92, v95);
        v96 = sub_2262FAB60(v89);
        swift_setDeallocating();
        (*(v86 + 8))(v89 + v88, v85);
        swift_deallocClassInstance();
        v97 = v138;
        *v138 = v96;
        v98 = v140;
        v99 = v141;
        (*(v140 + 104))(v97, *MEMORY[0x277D720A8], v141);
        sub_2262FB1F4(&qword_27D793768, MEMORY[0x277D720C0]);
        v100 = v139;
        v101 = v148;
        sub_22635021C();

        (*(v98 + 8))(v97, v99);
        v102 = v149;
        v164(v101, v149);
        v103 = v137;
        sub_22634EF1C();
        v105 = v143;
        v104 = v144;
        v106 = v142;
        (*(v143 + 104))(v142, *MEMORY[0x277D72858], v144);
        v107 = sub_2263501AC();
        v108 = *(v105 + 8);
        v159 = v107;
        v108(v106, v104);
        v160(v103, v162);
        v164(v100, v102);
        if (*(v159 + 2))
        {
          v109 = v126;
          v110 = *(v126 + 16);
          v111 = v125;
          v112 = v127;
          v110(v125, &v159[(*(v126 + 80) + 32) & ~*(v126 + 80)], v127);

          v113 = v129;
          (*(v109 + 32))(v129, v111, v112);
          v114 = type metadata accessor for VisualAction(0);
          v115 = v128;
          v116 = v128 + v114[5];
          v110(v116, v113, v112);
          v117 = *(type metadata accessor for VisualAction.Kind.SystemTool(0) + 20);
          (v134)(v146, v155, v147);

          sub_22635032C();
          (v131)(&v116[v117], v132, v145);
          type metadata accessor for VisualAction.Kind(0);
          swift_storeEnumTagMultiPayload();
          v118 = sub_2262FE430(MEMORY[0x277D84F90]);

          (*(v109 + 8))(v129, v112);
          result = (*(v153 + 8))(v150, v154);
          v119 = v161;
          *v115 = v123;
          v115[1] = v119;
          *(v115 + v114[6]) = v118;
          v120 = MEMORY[0x277D84F98];
          *(v115 + v114[7]) = MEMORY[0x277D84F98];
          *(v115 + v114[8]) = v120;
        }

        else
        {

          sub_2262FAB0C();
          swift_allocError();
          *v121 = 2;
          swift_willThrow();

          return (*(v153 + 8))(v150, v154);
        }
      }
    }
  }

  else
  {
    sub_22634FFDC();
    v64 = sub_22635003C();
    v65 = sub_22635073C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2262B6000, v64, v65, "No tool database", v66, 2u);
      MEMORY[0x22AA7D570](v66, -1, -1);
    }

    (*(v155 + 8))(v8, v156);
    sub_2262FAB0C();
    swift_allocError();
    *v67 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2262F91CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_2262F929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v168 = a6;
  v164 = a5;
  v190 = a3;
  v191 = a4;
  v205 = a2;
  v167 = a7;
  v8 = sub_22635004C();
  v198 = *(v8 - 8);
  v199 = v8;
  v9 = *(v198 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v176 = &v158 - v14;
  MEMORY[0x28223BE20](v13);
  v161 = &v158 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793720, &qword_226353FA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v163 = &v158 - v18;
  v189 = sub_22635028C();
  v185 = *(v189 - 8);
  v19 = *(v185 + 64);
  MEMORY[0x28223BE20](v189);
  v162 = (&v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_2263500DC();
  v166 = *(v170 - 8);
  v21 = *(v166 + 64);
  v22 = MEMORY[0x28223BE20](v170);
  v165 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v169 = &v158 - v24;
  v188 = sub_22635022C();
  v187 = *(v188 - 8);
  v25 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v186 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_22635017C();
  v183 = *(v184 - 8);
  v27 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v182 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793728, &qword_226353FB0);
  v178 = *(v179 - 8);
  v29 = *(v178 + 8);
  MEMORY[0x28223BE20](v179);
  v177 = (&v158 - v30);
  v174 = sub_22635005C();
  v173 = *(v174 - 8);
  v31 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = (&v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = sub_22635014C();
  v193 = *(v195 - 8);
  v33 = *(v193 + 64);
  v34 = MEMORY[0x28223BE20](v195);
  v171 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v175 = &v158 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v192 = &v158 - v39;
  MEMORY[0x28223BE20](v38);
  v181 = &v158 - v40;
  v204 = sub_22634EF3C();
  v206 = *(v204 - 8);
  v41 = *(v206 + 8);
  v42 = MEMORY[0x28223BE20](v204);
  v180 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  *&v202 = &v158 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793730, &qword_226353FB8);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = (&v158 - v48);
  v50 = sub_22635031C();
  KeyPath = *(v50 - 8);
  v201 = v50;
  v51 = *(KeyPath + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v158 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793738, &qword_226353FC0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v207 = &v158 - v59;
  v60 = sub_2263502BC();
  v196 = *(v60 - 8);
  v197 = v60;
  v61 = *(v196 + 64);
  MEMORY[0x28223BE20](v60);
  v194 = &v158 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2262F6B70();
  if (v63)
  {
    v64 = v63;
    sub_22635030C();
    swift_getKeyPath();
    v65 = swift_allocObject();
    v160 = a1;
    *(v65 + 16) = a1;
    *(v65 + 24) = v205;
    *v49 = v65;
    v66 = *(v46 + 104);
    v159 = *MEMORY[0x277D721C8];
    v66(v49);
    sub_2262FB1F4(&qword_27D793748, MEMORY[0x277D73330]);
    sub_2262FAE80(&qword_27D793750, &qword_27D793730, &qword_226353FB8);

    sub_22635021C();

    (*(v46 + 8))(v49, v45);
    v67 = v201;
    v68 = *(KeyPath + 8);
    v68(v54, v201);
    v69 = v202;
    sub_22634EF1C();
    v70 = v203;
    sub_2263501BC();
    if (v70)
    {

      (*(v206 + 1))(v69, v204);
      return (v68)(v56, v67);
    }

    else
    {
      v76 = (v206 + 8);
      v77 = *(v206 + 1);
      v77(v69, v204);
      v68(v56, v67);
      v78 = v196;
      v79 = v197;
      if ((*(v196 + 48))(v207, 1, v197) == 1)
      {
        sub_2262D67D8(v207, &qword_27D793738, &qword_226353FC0);
        v80 = v176;
        sub_22634FFDC();
        v81 = sub_22635003C();
        v82 = sub_22635073C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_2262B6000, v81, v82, "No container found for bundle id", v83, 2u);
          MEMORY[0x22AA7D570](v83, -1, -1);
        }

        (*(v198 + 8))(v80, v199);
        sub_2262FAB0C();
        swift_allocError();
        *v84 = 1;
        swift_willThrow();
      }

      else
      {
        v201 = v77;
        v206 = v76;
        (*(v78 + 32))(v194, v207, v79);
        v85 = v171;
        sub_22635013C();
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793758, &qword_226354028);
        v86 = sub_22635007C();
        v87 = *(v86 - 8);
        v88 = *(v87 + 72);
        v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v90 = swift_allocObject();
        v202 = xmmword_226351C90;
        *(v90 + 16) = xmmword_226351C90;
        (*(v87 + 104))(v90 + v89, *MEMORY[0x277D720D8], v86);
        v91 = sub_2262FAB60(v90);
        v158 = v64;
        v92 = v91;
        swift_setDeallocating();
        (*(v87 + 8))(v90 + v89, v86);
        swift_deallocClassInstance();
        v93 = v172;
        *v172 = v92;
        v94 = v173;
        v95 = v174;
        (*(v173 + 104))(v93, *MEMORY[0x277D720A8], v174);
        v207 = sub_2262FB1F4(&qword_27D793760, MEMORY[0x277D724B8]);
        sub_2262FB1F4(&qword_27D793768, MEMORY[0x277D720C0]);
        v96 = v175;
        sub_22635021C();

        (*(v94 + 8))(v93, v95);
        v97 = v193 + 8;
        v98 = *(v193 + 8);
        v98(v85, v195);
        v203 = v98;
        swift_getKeyPath();
        v99 = v197;
        v100 = swift_allocBox();
        (*(v196 + 16))(v101, v194, v99);
        v102 = v177;
        *v177 = v100;
        v103 = v178;
        v104 = v179;
        (*(v178 + 13))(v102, v159, v179);
        sub_2262FAE80(&qword_27D793770, &qword_27D793728, &qword_226353FB0);
        sub_22635021C();

        v103[1](v102, v104);
        v98(v96, v195);
        KeyPath = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793778, &qword_226354090);
        v105 = v185;
        v106 = *(v185 + 72);
        v107 = (*(v185 + 80) + 32) & ~*(v185 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = v202;
        v109 = swift_allocObject();
        v110 = v205;
        v109[2] = v160;
        v109[3] = v110;
        v111 = v191;
        v109[4] = v190;
        v109[5] = v111;
        *(v108 + v107) = v109;
        v112 = *(v105 + 104);
        LODWORD(v179) = *MEMORY[0x277D72D28];
        v113 = v189;
        v178 = v112;
        v112(v108 + v107);

        v114 = sub_2262FAED4(v108);
        swift_setDeallocating();
        (*(v105 + 8))(v108 + v107, v113);
        swift_deallocClassInstance();
        v115 = v182;
        MEMORY[0x22AA7C220](v114);

        sub_2262FB1F4(&qword_27D793780, MEMORY[0x277D724E8]);
        v116 = v181;
        v117 = v192;
        sub_22635021C();

        (*(v183 + 8))(v115, v184);
        v193 = v97;
        v203(v117, v195);
        v118 = v180;
        sub_22634EF1C();
        v119 = v187;
        v120 = v186;
        v121 = v188;
        (*(v187 + 104))(v186, *MEMORY[0x277D72858], v188);
        v122 = sub_2263501AC();
        v207 = v105 + 104;
        v123 = v122;
        (*(v119 + 8))(v120, v121);
        v201(v118, v204);
        v203(v116, v195);
        if (*(v123 + 16))
        {
          v124 = v166;
          v125 = v165;
          v126 = v170;
          (*(v166 + 16))(v165, v123 + ((*(v124 + 80) + 32) & ~*(v124 + 80)), v170);

          v127 = *(v124 + 32);
          v127(v169, v125, v126);
          v128 = sub_2262FE430(MEMORY[0x277D84F90]);
          if (v168)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793788, &qword_226354098);
            v129 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0) - 8);
            v130 = *(*v129 + 72);
            v131 = (*(*v129 + 80) + 32) & ~*(*v129 + 80);
            v132 = swift_allocObject();
            v206 = v127;
            v133 = v132;
            *(v132 + 16) = v202;
            v134 = (v132 + v131);
            v204 = v129[14];
            *v134 = 0x746567726174;
            *(v134 + 1) = 0xE600000000000000;
            sub_22635024C();
            v203 = swift_allocBox();
            *&v202 = v135;
            v136 = swift_allocObject();
            v137 = v160;
            v138 = v205;
            v136[2] = v160;
            v136[3] = v138;
            v139 = v189;
            v140 = v191;
            v136[4] = v190;
            v136[5] = v140;
            v141 = v162;
            *v162 = v136;
            (v178)(v141, v179, v139);
            v142 = sub_2263502CC();
            (*(*(v142 - 8) + 56))(v163, 1, 1, v142);

            sub_22635023C();
            v143 = v204;
            *&v134[v204] = v203;
            v144 = *MEMORY[0x277D729F8];
            v145 = sub_22635027C();
            (*(*(v145 - 8) + 104))(&v134[v143], v144, v145);
            v128 = sub_2262FE430(v133);
            swift_setDeallocating();
            sub_2262D67D8(v134, &qword_27D793790, &qword_2263540A0);
            v127 = v206;
            swift_deallocClassInstance();

            (*(v196 + 8))(v194, v197);
          }

          else
          {
            (*(v196 + 8))(v194, v197);

            v138 = v205;
            v137 = v160;
          }

          v151 = type metadata accessor for VisualAction(0);
          v152 = v167;
          v153 = v167 + v151[5];
          v127(v153, v169, v170);
          v154 = *(type metadata accessor for VisualAction.Kind.SystemTool(0) + 20);
          v155 = *MEMORY[0x277D72120];
          v156 = sub_2263500AC();
          (*(*(v156 - 8) + 104))(&v153[v154], v155, v156);
          type metadata accessor for VisualAction.Kind(0);
          swift_storeEnumTagMultiPayload();
          *v152 = v137;
          v152[1] = v138;
          *(v152 + v151[6]) = v128;
          v157 = MEMORY[0x277D84F98];
          *(v152 + v151[7]) = MEMORY[0x277D84F98];
          *(v152 + v151[8]) = v157;
        }

        else
        {

          v146 = v161;
          sub_22634FFDC();
          v147 = sub_22635003C();
          v148 = sub_22635073C();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 0;
            _os_log_impl(&dword_2262B6000, v147, v148, "No open actions found", v149, 2u);
            MEMORY[0x22AA7D570](v149, -1, -1);
          }

          (*(v198 + 8))(v146, v199);
          sub_2262FAB0C();
          swift_allocError();
          *v150 = 2;
          swift_willThrow();

          return (*(v196 + 8))(v194, v197);
        }
      }
    }
  }

  else
  {
    sub_22634FFDC();
    v72 = sub_22635003C();
    v73 = sub_22635073C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2262B6000, v72, v73, "No tool database", v74, 2u);
      MEMORY[0x22AA7D570](v74, -1, -1);
    }

    (*(v198 + 8))(v12, v199);
    sub_2262FAB0C();
    swift_allocError();
    *v75 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2262FA9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2262FAAB0()
{
  sub_2262FB3EC(*(v0 + 112));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_2262FAB0C()
{
  result = qword_27D793740;
  if (!qword_27D793740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793740);
  }

  return result;
}

uint64_t sub_2262FAB60(uint64_t a1)
{
  v2 = sub_22635007C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937B0, &qword_2263540B0);
    v10 = sub_22635094C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2262FB1F4(&qword_27D7937B8, MEMORY[0x277D72108]);
      v18 = sub_22635040C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2262FB1F4(&qword_27D7937C0, MEMORY[0x277D72108]);
          v25 = sub_22635044C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2262FAE80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2262FAED4(uint64_t a1)
{
  v2 = sub_22635028C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793798, &qword_2263540A8);
    v10 = sub_22635094C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2262FB1F4(&qword_27D7937A0, MEMORY[0x277D72D58]);
      v18 = sub_22635040C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2262FB1F4(&qword_27D7937A8, MEMORY[0x277D72D58]);
          v25 = sub_22635044C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2262FB1F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2262FB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2262D641C;

  return sub_2262F7330(a1, a2, a3, v9, v8);
}

uint64_t sub_2262FB300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7937D8, &qword_2263540D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2262FB3D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2262FB3EC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2262FB3FC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2262FB40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2262FB47C()
{
  result = qword_27D7937F8;
  if (!qword_27D7937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7937F8);
  }

  return result;
}

uint64_t sub_2262FB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2262D66FC(a3, v27 - v11, &qword_27D7939E0, &qword_2263548B0);
  v13 = sub_22635064C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2262D67D8(v12, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2263505BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2263504DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2262FB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2262D66FC(a3, v27 - v11, &qword_27D7939E0, &qword_2263548B0);
  v13 = sub_22635064C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2262D67D8(v12, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2263505BC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2263504DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2262FBACC()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC26VisualActionPredictionCore24SystemToolActionExecutor_featureConfiguration;
  v5 = sub_22634FCDC();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for SystemToolActionExecutor()
{
  result = qword_28137FA10;
  if (!qword_28137FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262FBBB0()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2262FBC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_22635007C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_2263502EC();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = sub_2263500AC();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = type metadata accessor for VisualAction.Kind(0);
  v5[20] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262FBE0C, v4, 0);
}

uint64_t sub_2262FBE0C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[7];
  v4 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(v3 + *(v4 + 20), v2, type metadata accessor for VisualAction.Kind);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();
  sub_2262FE61C(v2, type metadata accessor for VisualAction.Kind);
  if (v1)
  {
    v5 = v0[6];
    v6 = *MEMORY[0x277D78AE8];
    v7 = sub_22634FB9C();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    v8 = MEMORY[0x277D78A40];
LABEL_10:
    v30 = *v8;
    v31 = sub_22634FAEC();
    (*(*(v31 - 8) + 104))(v5, v30, v31);
    v32 = v0[21];
    v33 = v0[19];
    v34 = v0[16];
    v35 = v0[13];

    v36 = v0[1];

    return v36();
  }

  v9 = v0[7];
  v0[2] = sub_2262DBE60();
  v0[3] = v10;
  if (qword_27D792EA0 != -1)
  {
    swift_once();
  }

  v12 = v0[18];
  v11 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v37 = v0[11];
  v19 = __swift_project_value_buffer(v16, qword_27D793ED8);
  (*(v15 + 16))(v14, v19, v16);
  sub_22635032C();
  (*(v12 + 104))(v11, *MEMORY[0x277D72148], v13);
  sub_22635008C();
  (*(v12 + 8))(v11, v13);
  v20 = sub_22635006C();
  v22 = v21;
  (*(v18 + 8))(v17, v37);
  v0[4] = v20;
  v0[5] = v22;
  sub_2262D61E0();
  LOBYTE(v20) = sub_22635087C();

  if ((v20 & 1) == 0)
  {
    v5 = v0[6];
    v8 = MEMORY[0x277D78A48];
    goto LABEL_10;
  }

  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_2262FC1A4;
  v24 = v0[9];
  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[8];
  v28 = v0[6];

  return sub_2262FC310(v28, v26, v27, v24);
}

uint64_t sub_2262FC1A4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v9 = *v0;

  v3 = v1[21];
  v4 = v1[19];
  v5 = v1[16];
  v6 = v1[13];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2262FC310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_22635004C();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_22635028C();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = type metadata accessor for VisualAction(0);
  v5[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v17 = *(v16 + 64) + 15;
  v5[23] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v20 = sub_22634F17C();
  v5[26] = v20;
  v21 = *(v20 - 8);
  v5[27] = v21;
  v22 = *(v21 + 64) + 15;
  v5[28] = swift_task_alloc();
  v23 = sub_22634FDDC();
  v5[29] = v23;
  v24 = *(v23 - 8);
  v5[30] = v24;
  v25 = *(v24 + 64) + 15;
  v5[31] = swift_task_alloc();
  v26 = sub_22634EEFC();
  v5[32] = v26;
  v27 = *(v26 - 8);
  v5[33] = v27;
  v5[34] = *(v27 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262FC69C, v4, 0);
}

uint64_t sub_2262FC69C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[10];
  v5 = *(v0[11] + 120);
  v0[37] = v5;
  v6 = sub_22634F9BC();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  (*(v2 + 104))(v1, *MEMORY[0x277D78CD0], v3);

  return MEMORY[0x2822009F8](sub_2262FC780, v5, 0);
}

uint64_t sub_2262FC780()
{
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[11];
  sub_2262E0528(v2, v0[36]);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262FC820, v5, 0);
}

uint64_t sub_2262FC820()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v64 = v0[21];
  v9 = v0[9];
  sub_22634F4EC();
  sub_22634F50C();
  v10 = *(v3 + 16);
  v0[38] = v10;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v1, v2);
  (*(v3 + 56))(v6, 0, 1, v2);
  sub_22634F16C();
  sub_22634F15C();
  swift_getOpaqueTypeConformance2();
  v11 = sub_22634ECEC();
  (*(v8 + 8))(v7, v64);
  v12 = [v11 value];

  sub_22635088C();
  swift_unknownObjectRelease();
  sub_2262FD8B0();
  if (swift_dynamicCast())
  {
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    v60 = v0[16];
    v62 = v0[19];
    v65 = v0[11];
    v16 = v0[8];
    v17 = v0[6];
    v0[40] = v17;
    sub_2262FDAD0(v16, v13, type metadata accessor for VisualAction);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793788, &qword_226354098);
    v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0) - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_226351C90;
    v22 = (v21 + v20);
    v23 = v18[14];
    *v22 = 0x6369746E616D6573;
    *(v22 + 1) = 0xEF746E65746E6F43;
    sub_22635026C();
    v24 = swift_allocBox();
    v25 = swift_allocObject();
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x8000000226356D80;
    v25[4] = 0xD000000000000032;
    v25[5] = 0x8000000226356DA0;
    *v15 = v25;
    (*(v14 + 104))(v15, *MEMORY[0x277D72D28], v60);
    v26 = v17;
    sub_22635025C();
    *&v22[v23] = v24;
    v27 = *MEMORY[0x277D72A38];
    v28 = sub_22635027C();
    (*(*(v28 - 8) + 104))(&v22[v23], v27, v28);
    v29 = sub_2262FE430(v21);
    swift_setDeallocating();
    sub_2262D67D8(v22, &qword_27D793790, &qword_2263540A0);
    swift_deallocClassInstance();
    v30 = *(v62 + 24);
    v31 = *(v13 + v30);

    *(v13 + v30) = v29;
    v32 = *(v65 + 112);
    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v33[1] = sub_2262FCEDC;
    v34 = v0[20];

    return sub_2262F6C00(v34);
  }

  else
  {
    v36 = v0[7];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v37 = *MEMORY[0x277D78AF8];
    v38 = sub_22634FB9C();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    v39 = *MEMORY[0x277D78A40];
    v40 = sub_22634FAEC();
    (*(*(v40 - 8) + 104))(v36, v39, v40);
    v42 = v0[38];
    v41 = v0[39];
    v44 = v0[35];
    v43 = v0[36];
    v45 = v0[33];
    v46 = v0[32];
    v54 = v0[34];
    v55 = v0[31];
    v56 = v0[28];
    v57 = v0[25];
    v58 = v0[24];
    v59 = v0[23];
    v61 = v0[20];
    v63 = v0[18];
    v47 = v0[15];
    v66 = v0[14];
    v48 = v0[11];
    v49 = sub_22635064C();
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
    v42(v44, v43, v46);
    v50 = sub_2262FD858();
    v51 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v52 = swift_allocObject();
    *(v52 + 2) = v48;
    *(v52 + 3) = v50;
    *(v52 + 4) = v48;
    (*(v45 + 32))(&v52[v51], v44, v46);
    swift_retain_n();
    sub_2262FB7D4(0, 0, v47, &unk_2263542C0, v52);

    (*(v45 + 8))(v43, v46);

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_2262FCEDC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_2262FD2A4;
  }

  else
  {
    v6 = sub_2262FD008;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2262FD008()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 160);
  v5 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v6 = *MEMORY[0x277D78A48];
  v7 = sub_22634FAEC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_2262FE61C(v4, type metadata accessor for VisualAction);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 256);
  v22 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v26 = *(v0 + 192);
  v27 = *(v0 + 184);
  v28 = *(v0 + 160);
  v29 = *(v0 + 144);
  v14 = *(v0 + 120);
  v30 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = sub_22635064C();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v9(v11, v10, v13);
  v17 = sub_2262FD858();
  v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v15;
  *(v19 + 3) = v17;
  *(v19 + 4) = v15;
  (*(v12 + 32))(&v19[v18], v11, v13);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v14, &unk_2263542D8, v19);

  (*(v12 + 8))(v10, v13);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2262FD2A4()
{
  v1 = v0[42];
  v2 = v0[14];
  sub_22635001C();
  v3 = v1;
  v4 = sub_22635003C();
  v5 = sub_22635073C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2262B6000, v4, v5, "Error executing action with ToolKit: %@", v7, 0xCu);
    sub_2262D67D8(v8, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v8, -1, -1);
    MEMORY[0x22AA7D570](v7, -1, -1);
  }

  v11 = v0[42];
  v12 = v0[40];
  v13 = v0[27];
  v14 = v0[28];
  v15 = v0[26];
  v47 = v0[20];
  v16 = v4;
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[7];

  (*(v17 + 8))(v18, v19);
  (*(v13 + 8))(v14, v15);
  v21 = *MEMORY[0x277D78AB8];
  v22 = sub_22634FB9C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = *MEMORY[0x277D78A40];
  v24 = sub_22634FAEC();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  sub_2262FE61C(v47, type metadata accessor for VisualAction);
  v26 = v0[38];
  v25 = v0[39];
  v28 = v0[35];
  v27 = v0[36];
  v29 = v0[33];
  v30 = v0[32];
  v39 = v0[34];
  v40 = v0[31];
  v41 = v0[28];
  v42 = v0[25];
  v43 = v0[24];
  v44 = v0[23];
  v45 = v0[20];
  v46 = v0[18];
  v31 = v0[15];
  v48 = v0[14];
  v32 = v0[11];
  v33 = sub_22635064C();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v26(v28, v27, v30);
  v34 = sub_2262FD858();
  v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v32;
  *(v36 + 3) = v34;
  *(v36 + 4) = v32;
  (*(v29 + 32))(&v36[v35], v28, v30);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v31, &unk_2263542C8, v36);

  (*(v29 + 8))(v27, v30);

  v37 = v0[1];

  return v37();
}

BOOL sub_2262FD6A4(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(a1 + *(v6 + 20), v5, type metadata accessor for VisualAction.Kind);
  v7 = swift_getEnumCaseMultiPayload() == 0;
  sub_2262FE61C(v5, type metadata accessor for VisualAction.Kind);
  return v7;
}

uint64_t sub_2262FD770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_2262FBC5C(a1, a2, a3, a4);
}

unint64_t sub_2262FD830(uint64_t a1)
{
  result = sub_2262FD858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2262FD858()
{
  result = qword_28137FA28;
  if (!qword_28137FA28)
  {
    type metadata accessor for SystemToolActionExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137FA28);
  }

  return result;
}

unint64_t sub_2262FD8B0()
{
  result = qword_27D793808;
  if (!qword_27D793808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D793808);
  }

  return result;
}

uint64_t sub_2262FD8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2262FD920, a4, 0);
}

uint64_t sub_2262FD920()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2262FD944, v1, 0);
}

uint64_t sub_2262FD944()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = sub_2262E0C04(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2262FD9B8, v2, 0);
}

uint64_t sub_2262FD9D8(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2262FDAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262FDB38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FDC30;

  return v7(a1);
}

uint64_t sub_2262FDC30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2262FDD28(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2262FDD88(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2262FDDFC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2262FDEF0;

  return v6(v2 + 32);
}

uint64_t sub_2262FDEF0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2262FE004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22633941C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FE100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22633941C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FE204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793838, &unk_226354350);
    v3 = sub_226350A9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2262D66FC(v4, v13, &qword_27D793130, qword_226352318);
      result = sub_226339494(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FE32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
    v3 = sub_226350A9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22633941C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FE430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793790, &qword_2263540A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793810, &qword_2263542E0);
    v8 = sub_226350A9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v10, v6, &qword_27D793790, &qword_2263540A0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22633941C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22635027C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FE61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2262FE67C(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262FE840(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262FF0E0;

  return sub_2262FDDFC(a1, v5);
}

uint64_t sub_2262FE8F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262D641C;

  return sub_2262FDDFC(a1, v5);
}

unint64_t sub_2262FE9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793818, &unk_226354300);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
    v8 = sub_226350A9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v10, v6, &qword_27D793818, &unk_226354300);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22633941C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for VisualAction(0);
      result = sub_2262FEB84(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FEB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262FEBE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262FF0E0;

  return sub_2262FDB38(a1, v5);
}

unint64_t sub_2262FECA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C70, &unk_226354340);
    v8 = sub_226350A9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v10, v6, &qword_27D793060, &qword_226351F10);
      result = sub_226339680(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22634F0EC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22634F10C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2262FEEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793820, &qword_226354328);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793828, &unk_226354330);
    v8 = sub_226350A9C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2262D66FC(v10, v6, &qword_27D793820, &qword_226354328);
      result = sub_2263394D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22634EEFC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22634FDDC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2262FF0FC(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_2262FF194()
{
  v1 = sub_22634F0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  v6 = *(sub_22634F06C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v28 = xmmword_226351C90;
  *(v9 + 16) = xmmword_226351C90;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13 + v12;
  v15 = v10[14];
  v16 = *MEMORY[0x277D78240];
  v17 = sub_22634F0CC();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  sub_22634EE5C();
  *(v14 + v15) = v18;
  v19 = *MEMORY[0x277D78280];
  v20 = sub_22634F10C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v14 + v15, v19, v20);
  (*(v21 + 56))(v14 + v15, 0, 1, v20);
  v22 = v29;
  sub_22634F05C();

  v23 = v30;
  sub_226303D5C(v22, v9, v24);

  if (!v23)
  {
    result = sub_226301FFC(v22);
    if (result >= 10001)
    {

      return sub_226304250(v26, v22, 0x2710, v27);
    }
  }

  return result;
}

uint64_t sub_2262FF4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v163 = a6;
  v170[1] = *MEMORY[0x277D85DE8];
  v160 = sub_22634EEFC();
  v14 = *(v160 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22634F14C();
  v162 = *(v158 - 8);
  v17 = *(v162 + 64);
  MEMORY[0x28223BE20](v158);
  v164 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22634F10C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = MEMORY[0x28223BE20](v22);
  v26 = *(a1 + 16);
  v161 = a2;
  if (v26 == *(a2 + 16) && v26 == *(a3 + 16) && v26 == *(a4 + 16) && v26 == *(a5 + 16) && v26 == *(v163 + 16) && v26 == *(a7 + 16))
  {
    v27 = MEMORY[0x277D84F90];
    v170[0] = MEMORY[0x277D84F90];
    if (v26)
    {
      v131 = (&v111 - v24);
      v132 = v25;
      v153 = v23;
      v126 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
      v125 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
      v124 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
      v123 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute;
      v114 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
      v113 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
      v129 = a1 + 32;
      v112 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
      v146 = v26;
      v28 = sub_22634EECC();
      v157 = 0;
      v128 = *(v28 - 8);
      v127 = a5 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
      v147 = (v20 + 104);
      v122 = a3 + 32;
      v130 = (v20 + 32);
      v29 = 0;
      v121 = a4 + 32;
      v120 = (v14 + 8);
      v119 = v162 + 32;
      v154 = *MEMORY[0x277D78288];
      v118 = *MEMORY[0x277D78280];
      v117 = a7 + 40;
      v116 = *MEMORY[0x277D78290];
      v115 = xmmword_226351C80;
      v143 = xmmword_226351C90;
      v156 = v7;
      while (1)
      {
        v30 = *(v129 + 8 * v29);
        if (v30)
        {
          v31 = *(v129 + 8 * v29);

          v32 = v30;
        }

        else
        {
          v32 = sub_22635059C();
          *(v32 + 16) = 512;
          bzero((v32 + 32), 0x800uLL);
        }

        v33 = *(v32 + 16);
        if (v33 >> 61)
        {
          __break(1u);
LABEL_41:
          __break(1u);
        }

        v34 = 4 * v33;
        v145 = v27;
        if (4 * v33)
        {
          if (v34 <= 14)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = 4 * v33;
            memmove(&__dst, (v32 + 32), 4 * v33);
            v144 = __dst;
            v40 = v111 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v111 = v40;
          }

          else
          {
            v35 = sub_22634ED8C();
            v36 = *(v35 + 48);
            v37 = *(v35 + 52);
            swift_allocObject();
            v38 = sub_22634ED7C();
            v39 = v38;
            if (v34 >= 0x7FFFFFFF)
            {
              sub_22634EE1C();
              v41 = swift_allocObject();
              *(v41 + 16) = 0;
              *(v41 + 24) = v34;
              v144 = v41;
              v40 = v39 | 0x8000000000000000;
            }

            else
            {
              v144 = v33 << 34;
              v40 = v38 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v144 = 0;
          v40 = 0xC000000000000000;
        }

        v152 = v40;

        v42 = sub_22634ED4C();
        v43 = *(v42 + 48);
        v44 = *(v42 + 52);
        swift_allocObject();
        sub_22634ED3C();
        if (v146 == v29)
        {
          goto LABEL_41;
        }

        v46 = *(v163 + v157 + 32);
        v45 = *(v163 + v157 + 40);
        v47 = *(v161 + v157 + 32);
        v48 = *(v161 + v157 + 40);
        v49 = v127 + *(v128 + 72) * v29;

        v141 = v49;
        sub_22634EE5C();
        *&__dst = v46;
        *(&__dst + 1) = v45;
        v167 = v47;
        v168 = v48;
        v169 = v50;
        sub_2262D60C8();
        v51 = v165;
        v142 = sub_22634ED2C();
        v165 = v51;
        if (v51)
        {
          break;
        }

        v139 = v52;
        v140 = v29;
        v138 = v30 == 0;

        v151 = v45;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793058, &qword_226351F08);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
        v150 = v53;
        v54 = *(v53 - 8);
        v155 = *(v54 + 72);
        v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v56 = swift_allocObject();
        v137 = v56;
        *(v56 + 16) = v115;
        v57 = v56 + v55;
        v58 = (v57 + *(v53 + 48));
        v59 = sub_22634F0EC();
        v60 = *(v59 - 8);
        v61 = *(v60 + 16);
        v133 = v60 + 16;
        v134 = v48;
        v62 = v156;
        v135 = v57;
        v149 = v59;
        (v61)(v57, v156 + v126, v59);
        v148 = v61;
        *v58 = v47;
        v58[1] = v48;
        v136 = v46;
        v63 = *v147;
        (*v147)(v58, v154, v153);
        v64 = v57 + v155;
        v65 = *(v150 + 48);
        (v61)(v57 + v155, v62 + v125, v59);

        sub_22634EE5C();
        *(v64 + v65) = v66;
        v67 = (v64 + v65);
        v68 = v153;
        v63(v67, v118, v153);
        v69 = v156;
        v70 = v135;
        v71 = 2 * v155;
        v72 = v150;
        v73 = (v135 + 2 * v155 + *(v150 + 48));
        v148();
        v74 = v151;
        *v73 = v136;
        v73[1] = v74;
        v63(v73, v154, v68);
        v75 = v70 + v71 + v155;
        v76 = *(v72 + 48);
        (v148)(v75, v69 + v123, v149);
        *(v75 + v76) = v138;
        v63((v75 + v76), v116, v68);

        v77 = sub_2262FECA0(v137);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v78 = *(v122 + v157 + 8);
        if (v78)
        {
          v79 = v131;
          *v131 = *(v122 + v157);
          v79[1] = v78;
          v63(v79, v154, v68);
          v80 = v132;
          (*v130)(v132, v79, v68);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v77;
          v82 = v156;
          sub_2262E3E68(v80, v156 + v114, isUniquelyReferenced_nonNull_native);
          v77 = __dst;
          v83 = v82;
        }

        else
        {
          v83 = v156;
        }

        v84 = *(v121 + v157 + 8);
        v85 = v140;
        if (v84)
        {
          v86 = v131;
          *v131 = *(v121 + v157);
          v86[1] = v84;
          v87 = v154;
          v88 = v153;
          v89 = v63;
          v63(v86, v154, v153);
          v90 = v132;
          (*v130)(v132, v86, v88);

          v91 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v77;
          sub_2262E3E68(v90, v83 + v113, v91);
          v77 = __dst;
        }

        else
        {
          v89 = v63;
          v87 = v154;
        }

        v92 = *(v117 + v157);
        if (v92)
        {
          v93 = v131;
          *v131 = *(v117 + v157 - 8);
          v93[1] = v92;
          v94 = v153;
          v89(v93, v87, v153);
          v95 = v132;
          (*v130)(v132, v93, v94);

          v96 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v77;
          sub_2262E3E68(v95, v83 + v112, v96);
          v77 = __dst;
        }

        v97 = v159;
        sub_22634EEEC();
        sub_22634EEDC();
        (*v120)(v97, v160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
        v98 = swift_allocObject();
        *(v98 + 16) = v143;
        v99 = v144;
        v100 = v152;
        *(v98 + 32) = v144;
        *(v98 + 40) = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793070, &qword_226351F20);
        v101 = swift_allocObject();
        *(v101 + 16) = v143;
        *(v101 + 32) = v77;
        sub_2262D6170(v99, v100);
        v102 = v142;
        v103 = v139;
        sub_2262D6170(v142, v139);
        v104 = v103;
        sub_22634F11C();
        v27 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2262DCF9C(0, v27[2] + 1, 1, v27);
        }

        v106 = v27[2];
        v105 = v27[3];
        if (v106 >= v105 >> 1)
        {
          v27 = sub_2262DCF9C(v105 > 1, v106 + 1, 1, v27);
        }

        v29 = v85 + 1;
        sub_2262D611C(v102, v104);
        sub_2262D611C(v99, v152);
        v27[2] = v106 + 1;
        (*(v162 + 32))(v27 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v106, v164, v158);
        v170[0] = v27;
        v7 = v156;
        v157 += 16;
        if (v146 == v29)
        {
          goto LABEL_38;
        }
      }

      sub_2262D611C(v144, v152);
    }

    else
    {
LABEL_38:
      sub_226305194(v7, v170);
    }
  }

  else
  {
    v107 = sub_22634EF4C();
    sub_22630C1DC(&qword_27D793880, MEMORY[0x277D781D0]);
    swift_allocError();
    *v108 = 0xD00000000000002ALL;
    v108[1] = 0x8000000226356F50;
    (*(*(v107 - 8) + 104))(v108, *MEMORY[0x277D781C8], v107);
    result = swift_willThrow();
  }

  v110 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226300388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7938B0, &qword_2263544E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22630C5A8();
  sub_226350D2C();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_226350BBC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  sub_226350BBC();
  v16 = v3[4];
  v17[13] = 2;
  sub_226350BDC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226300528()
{
  v1 = 0x6449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496E6F69746361;
  }
}

uint64_t sub_226300588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22630C234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2263005B0(uint64_t a1)
{
  v2 = sub_22630C5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2263005EC(uint64_t a1)
{
  v2 = sub_22630C5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_226300628@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22630C354(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_226300688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v67 = a4;
  v68 = a3;
  v70 = a2;
  v79 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v72 = *(v74 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v53 - v9;
  v10 = sub_22634F0BC();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22634F07C();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v77 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22634EE0C();
  v76 = *(v78 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v18;
  v19 = sub_22634F04C();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v19);
  v61 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22634F0FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly) = 0;
  v27 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793868, &qword_226354400);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v5 + v27) = v28;
  *(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_kMaxSize) = 10000;
  v29 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
  *v26 = 0;
  v26[1] = 0;
  v30 = *MEMORY[0x277D78268];
  v31 = *(v23 + 104);
  v31(v26, v30, v22);
  sub_22634F0DC();
  v58 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
  *v26 = 0;
  v26[1] = 0;
  v31(v26, v30, v22);
  sub_22634F0DC();
  v57 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
  *v26 = 0;
  v26[1] = 0;
  v31(v26, v30, v22);
  sub_22634F0DC();
  v56 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
  *v26 = 0;
  v26[1] = 0;
  v31(v26, v30, v22);
  sub_22634F0DC();
  v54 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  *v26 = 0;
  *(v26 + 8) = 1;
  v31(v26, *MEMORY[0x277D78260], v22);
  sub_22634F0DC();
  v32 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute;
  *v26 = 0;
  *(v26 + 8) = 0;
  v31(v26, *MEMORY[0x277D78270], v22);
  sub_22634F0DC();
  v33 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
  *v26 = 0;
  v26[1] = 0;
  v31(v26, v30, v22);
  sub_22634F0DC();
  (*(v76 + 16))(v18, v79, v78);
  (*(v59 + 104))(v77, *MEMORY[0x277D781F8], v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793870, &qword_226354408);
  v34 = sub_22634F0EC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_226354370;
  v39 = v38 + v37;
  v40 = *(v35 + 16);
  v40(v39, v5 + v29, v34);
  v40(v39 + v36, v5 + v58, v34);
  v40(v39 + 2 * v36, v5 + v57, v34);
  v40(v39 + 3 * v36, v5 + v56, v34);
  v40(v39 + 4 * v36, v5 + v54, v34);
  v40(v39 + 5 * v36, v5 + v32, v34);
  v40(v39 + 6 * v36, v5 + v33, v34);
  (*(v65 + 104))(v64, *MEMORY[0x277D78218], v66);
  v41 = v61;
  sub_22634F01C();
  (*(v62 + 32))(v5 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config, v41, v63);
  v42 = sub_22635064C();
  v43 = v69;
  (*(*(v42 - 8) + 56))(v69, 1, 1, v42);
  v45 = v71;
  v44 = v72;
  v47 = v74;
  v46 = v75;
  (*(v72 + 16))(v71, v75, v74);
  v48 = v44;
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v50 = (v73 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v48 + 32))(v51 + v49, v45, v47);
  *(v51 + v50) = v5;

  sub_2262FB4D4(0, 0, v43, &unk_226354418, v51);

  (*(v48 + 8))(v46, v47);
  (*(v76 + 8))(v79, v78);
  return v5;
}

uint64_t sub_226301048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22634FD8C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C00, &qword_226354420) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793878, &qword_226354428);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263011A8, 0, 0);
}

uint64_t sub_2263011A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  sub_22635069C();
  *(v0 + 112) = *MEMORY[0x277D78C98];
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_226301280;
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_226301280()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22630137C, 0, 0);
}

uint64_t sub_22630137C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 48);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 48);
    (*(v3 + 32))(v8, v1, v2);
    v9 = (*(v3 + 88))(v8, v2);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9 == v7)
    {
      (*(v10 + 96))(*(v0 + 48), v12);
      v13 = *v11;
      *(v0 + 96) = *v11;
      v14 = swift_task_alloc();
      *(v0 + 104) = v14;
      *v14 = v0;
      v14[1] = sub_2263015C4;
      v15 = *(v0 + 24);

      return sub_226301780(v13);
    }

    else
    {
      (*(v10 + 8))(*(v0 + 48), v12);
      v16 = *(MEMORY[0x277D85798] + 4);
      v17 = swift_task_alloc();
      *(v0 + 88) = v17;
      *v17 = v0;
      v17[1] = sub_226301280;
      v18 = *(v0 + 80);
      v19 = *(v0 + 56);
      v20 = *(v0 + 64);

      return MEMORY[0x2822003E8](v19, 0, 0, v20);
    }
  }
}

uint64_t sub_2263015C4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2263016DC, 0, 0);
}

uint64_t sub_2263016DC()
{
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_226301280;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_226301780(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22635004C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226301840, 0, 0);
}

uint64_t sub_226301840()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v12 = v0[5] + 8;
    do
    {
      v4 = v0[3];
      v5 = *(v3 - 1);
      v6 = *v3;
      swift_bridgeObjectRetain_n();

      sub_22630474C(v7, v4, v5, v6, v8);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

id sub_226301ADC(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v56[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EE0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v15 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v47 = v3;
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v49 = v6;
    v50 = v12;
    v51 = v15;
    v52 = v8;
    v18 = v7;
    v19 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v20 = v54;
    v21 = sub_22634F03C();
    v23 = a1;
    if (v20)
    {
      v54 = *(v52 + 8);
      v54(v14, v7);
      v24 = sub_22634F02C();
      v26 = v25;
    }

    else
    {
      v24 = v21;
      v26 = v22;
      v54 = *(v52 + 8);
      v54(v14, v7);
    }

    v27 = v50;
    if (v24 == sub_22634F02C() && v26 == v28)
    {
    }

    else
    {
      v29 = sub_226350C4C();

      if ((v29 & 1) == 0)
      {
        v42 = sub_22630606C();
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v30 = objc_opt_self();
    v31 = [v30 defaultManager];
    sub_22634EDFC();
    v32 = sub_22635045C();

    v33 = [v31 fileExistsAtPath_];

    v34 = v49;
    if ((v33 & 1) == 0)
    {
      v50 = v19;
      v35 = [v30 defaultManager];
      v36 = sub_22634EDDC();
      v56[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v56];

      if ((v37 & 1) == 0)
      {
        v17 = v56[0];
        sub_22634EDAC();

        swift_willThrow();
        v54(v27, v18);
        goto LABEL_17;
      }

      v38 = v56[0];
      v19 = v50;
    }

    (*(v53 + 16))(v34, v23 + v19, v47);
    v39 = sub_22634EFFC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_22634EF9C();
    v54(v27, v18);
LABEL_14:
    v43 = *(v23 + v48);
    *(v23 + v48) = v42;
    swift_retain_n();

    v17 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v51 + 4);

    goto LABEL_18;
  }

  v16 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v17 = sub_22634EF8C();

  os_unfair_lock_unlock(v15 + 4);

LABEL_18:
  v44 = *MEMORY[0x277D85DE8];
  return v17;
}

id sub_226301FFC(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v49 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v50 = v11;
    v48 = v5;
    v51 = v14;
    v52 = v7;
    v17 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v18 = v54;
    v19 = sub_22634F03C();
    if (v18)
    {
      v54 = *(v52 + 8);
      v54(v13, v6);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v19;
      v23 = v20;
      v54 = *(v52 + 8);
      v54(v13, v6);
    }

    v24 = v17;
    v26 = v2;
    if (v21 == sub_22634F02C() && v23 == v25)
    {

      v27 = v50;
    }

    else
    {
      v28 = sub_226350C4C();

      v27 = v50;
      if ((v28 & 1) == 0)
      {
        v42 = sub_22630606C();
        v34 = v51;
        goto LABEL_14;
      }
    }

    v50 = v26;
    sub_22634F00C();
    v29 = objc_opt_self();
    v30 = v24;
    v31 = [v29 defaultManager];
    sub_22634EDFC();
    v32 = sub_22635045C();

    v33 = [v31 fileExistsAtPath_];

    v34 = v51;
    if ((v33 & 1) == 0)
    {
      v47 = v30;
      v35 = [v29 defaultManager];
      v36 = sub_22634EDDC();
      v55[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v55];

      v16 = v55[0];
      if ((v37 & 1) == 0)
      {
        v44 = v55[0];
        sub_22634EDAC();

        swift_willThrow();
        v54(v27, v6);
        goto LABEL_17;
      }

      v38 = v55[0];
      v30 = v47;
    }

    (*(v53 + 16))(v48, a1 + v30, v50);
    v39 = sub_22634EFFC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_22634EF9C();
    v54(v27, v6);
LABEL_14:
    v43 = *(a1 + v49);
    *(a1 + v49) = v42;
    swift_retain_n();

    v16 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v34 + 4);
    goto LABEL_18;
  }

  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v16 = sub_22634EF8C();

  os_unfair_lock_unlock(v14 + 4);
LABEL_18:
  v45 = *MEMORY[0x277D85DE8];
  return v16;
}

id sub_226302514(uint64_t a1, uint64_t *a2)
{
  v57 = a2;
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EE0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v15 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v50 = v3;
    v51 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v52 = v6;
    v53 = v12;
    v54 = v15;
    v55 = v8;
    v19 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v20 = v58;
    v21 = sub_22634F03C();
    if (v20)
    {
      v58 = *(v55 + 8);
      v58(v14, v7);
      v23 = sub_22634F02C();
      v25 = v24;
    }

    else
    {
      v23 = v21;
      v25 = v22;
      v58 = *(v55 + 8);
      v58(v14, v7);
    }

    v26 = v53;
    if (v23 == sub_22634F02C() && v25 == v27)
    {
    }

    else
    {
      v28 = sub_226350C4C();

      if ((v28 & 1) == 0)
      {
        v42 = sub_22630606C();
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_22634EDFC();
    v31 = sub_22635045C();

    v32 = [v30 fileExistsAtPath_];

    v33 = v7;
    v34 = v52;
    if ((v32 & 1) == 0)
    {
      v53 = v33;
      v49 = v19;
      v35 = [v29 defaultManager];
      v36 = sub_22634EDDC();
      v59[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v59];

      v18 = v59[0];
      if ((v37 & 1) == 0)
      {
        v46 = v59[0];
        sub_22634EDAC();

        swift_willThrow();
        v58(v26, v53);
        v43 = v54;
        goto LABEL_17;
      }

      v38 = v59[0];
      v19 = v49;
      v33 = v53;
    }

    (*(v56 + 16))(v34, a1 + v19, v50);
    v39 = sub_22634EFFC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_22634EF9C();
    v58(v26, v33);
LABEL_14:
    v43 = v54;
    v44 = *(a1 + v51);
    *(a1 + v51) = v42;
    swift_retain_n();

    v45 = *v57;

    v18 = sub_22634EF8C();

LABEL_17:
    os_unfair_lock_unlock(v43 + 4);
    goto LABEL_18;
  }

  v16 = *v57;
  v17 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v18 = sub_22634EF8C();

  os_unfair_lock_unlock(v15 + 4);
LABEL_18:
  v47 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_226302A38(uint64_t a1, size_t *a2, uint64_t a3)
{
  v60 = a3;
  v58 = a2;
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22634F04C();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EE0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v16 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v52 = v7;
    v53 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v51 = v4;
    v54 = v13;
    v55 = v16;
    v56 = v8;
    v20 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v21 = v59;
    v22 = sub_22634F03C();
    v24 = a1;
    if (v21)
    {
      v59 = *(v9 + 8);
      v59(v15, v56);
      v25 = sub_22634F02C();
      v27 = v26;
    }

    else
    {
      v25 = v22;
      v27 = v23;
      v59 = *(v9 + 8);
      v59(v15, v56);
    }

    v28 = v54;
    if (v25 == sub_22634F02C() && v27 == v29)
    {
    }

    else
    {
      v30 = sub_226350C4C();

      if ((v30 & 1) == 0)
      {
        v47 = sub_22630606C();
        v45 = v58;
        v43 = v47;
        v44 = v60;
        v35 = v55;
LABEL_15:
        v46 = *(v24 + v53);
        *(v24 + v53) = v43;
        swift_retain_n();

        sub_226307C9C(v45, v44, v62);

        os_unfair_lock_unlock(v35 + 4);

LABEL_16:
        result = v62[0];
        goto LABEL_19;
      }
    }

    sub_22634F00C();
    v31 = objc_opt_self();
    v32 = [v31 defaultManager];
    sub_22634EDFC();
    v33 = sub_22635045C();

    v34 = [v32 fileExistsAtPath_];

    v35 = v55;
    if ((v34 & 1) == 0)
    {
      v36 = [v31 defaultManager];
      v37 = sub_22634EDDC();
      v61 = 0;
      v38 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v61];

      if ((v38 & 1) == 0)
      {
        v48 = v61;
        sub_22634EDAC();

        swift_willThrow();
        v59(v28, v56);
        os_unfair_lock_unlock(v35 + 4);

        goto LABEL_19;
      }

      v39 = v61;
    }

    (*(v57 + 16))(v52, v24 + v20, v51);
    v40 = sub_22634EFFC();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_22634EF9C();
    v59(v28, v56);
    v44 = v60;
    v45 = v58;
    goto LABEL_15;
  }

  v17 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v18 = v59;
  sub_226307C9C(v58, v60, v62);

  os_unfair_lock_unlock(v16 + 4);

  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_19:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226302F60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v68 = a4;
  v71 = a3;
  v72 = a5;
  v73[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22634F04C();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22634EE0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v70 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v70 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v60 = v10;
    v61 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v59 = v7;
    v65 = v16;
    v66 = v12;
    v63 = a2;
    v64 = v11;
    v26 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v27 = v69;
    v28 = sub_22634F03C();
    v30 = a1;
    if (v27)
    {
      v62 = *(v66 + 8);
      v62(v18, v64);
      v31 = sub_22634F02C();
      v33 = v32;
    }

    else
    {
      v31 = v28;
      v33 = v29;
      v62 = *(v66 + 8);
      v62(v18, v64);
    }

    v69 = v26;
    if (v31 == sub_22634F02C() && v33 == v34)
    {
    }

    else
    {
      v35 = sub_226350C4C();

      if ((v35 & 1) == 0)
      {
        v49 = sub_22630606C();
        v50 = v71;
LABEL_16:
        v51 = *(v30 + v61);
        *(v30 + v61) = v49;
        swift_retain_n();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_226351C90;
        v53 = v63;
        *(v52 + 32) = v63;
        *(v52 + 40) = v50;
        v54 = v50;
        v55 = *v68;
        sub_2262D6170(v53, v54);

        a1 = sub_22634EFCC();

        os_unfair_lock_unlock(v70 + 4);
        sub_2262D611C(v53, v54);
        goto LABEL_20;
      }
    }

    v36 = v69;
    sub_22634F00C();
    v37 = objc_opt_self();
    v38 = [v37 defaultManager];
    sub_22634EDFC();
    v39 = sub_22635045C();

    v40 = [v38 fileExistsAtPath_];

    a1 = v64;
    v41 = v65;
    if ((v40 & 1) == 0)
    {
      v42 = [v37 defaultManager];
      v43 = sub_22634EDDC();
      v73[0] = 0;
      v44 = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:v73];

      if ((v44 & 1) == 0)
      {
        v56 = v73[0];
        sub_22634EDAC();

        swift_willThrow();
        v62(v41, a1);
        os_unfair_lock_unlock(v70 + 4);
        v24 = v63;
        v25 = v71;
        goto LABEL_19;
      }

      v45 = v73[0];
      v36 = v69;
    }

    (*(v67 + 16))(v60, v36 + v30, v59);
    v46 = sub_22634EFFC();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_22634EF9C();
    v62(v41, a1);
    v50 = v71;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_226351C90;
  v20 = v71;
  *(v19 + 32) = a2;
  *(v19 + 40) = v20;
  v21 = *v68;

  sub_2262D6170(a2, v20);

  v22 = v69;
  v23 = sub_22634EFCC();
  if (v22)
  {

    os_unfair_lock_unlock(v70 + 4);
    v24 = a2;
    v25 = v20;
LABEL_19:
    sub_2262D611C(v24, v25);
    goto LABEL_20;
  }

  a1 = v23;

  os_unfair_lock_unlock(v70 + 4);
  sub_2262D611C(a2, v20);
LABEL_20:
  v57 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2263035CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v76 = a3;
  v77[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634EE0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v75 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v75 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v67 = v5;
    v68 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v71 = v14;
    v72 = v10;
    v69 = v8;
    v70 = a2;
    v28 = v9;
    v29 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v30 = v74;
    v31 = sub_22634F03C();
    if (v30)
    {
      v74 = *(v72 + 8);
      v74(v16, v9);
      v33 = sub_22634F02C();
      v35 = v34;
    }

    else
    {
      v33 = v31;
      v35 = v32;
      v74 = *(v72 + 8);
      v74(v16, v28);
    }

    v36 = v71;
    if (v33 == sub_22634F02C() && v35 == v37)
    {
    }

    else
    {
      v38 = sub_226350C4C();

      if ((v38 & 1) == 0)
      {
        v63 = sub_22630606C();
        v52 = v70;
        v51 = v63;
LABEL_16:
        v53 = *(a1 + v68);
        *(a1 + v68) = v51;
        swift_retain_n();

        v54 = *v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
        v55 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
        v56 = *(*v55 + 72);
        v57 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_226351C90;
        v59 = v58 + v57;
        v60 = v55[14];
        v61 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
        v62 = sub_22634F0EC();
        (*(*(v62 - 8) + 16))(v59, v76 + v61, v62);
        *(v59 + v60) = 0;

        v22 = sub_22634EF6C();

        os_unfair_lock_unlock(v75 + 4);

        goto LABEL_22;
      }
    }

    v71 = v28;
    v39 = v29;
    sub_22634F00C();
    v40 = objc_opt_self();
    v41 = [v40 defaultManager];
    sub_22634EDFC();
    v42 = sub_22635045C();

    v43 = [v41 fileExistsAtPath_];

    v44 = v69;
    if ((v43 & 1) == 0)
    {
      v45 = [v40 defaultManager];
      v46 = sub_22634EDDC();
      v77[0] = 0;
      v22 = [v45 createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:v77];

      if ((v22 & 1) == 0)
      {
        v64 = v77[0];
        sub_22634EDAC();

        swift_willThrow();
        v74(v36, v71);
        os_unfair_lock_unlock(v75 + 4);
        goto LABEL_21;
      }

      v47 = v77[0];
      v39 = v29;
    }

    (*(v73 + 16))(v44, a1 + v39, v67);
    v48 = sub_22634EFFC();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_22634EF9C();
    v74(v36, v71);
    v52 = v70;
    goto LABEL_16;
  }

  v17 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226351C90;
  v22 = v21 + v20;
  v23 = v18[14];
  v24 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  v25 = sub_22634F0EC();
  (*(*(v25 - 8) + 16))(v22, v76 + v24, v25);
  *(v22 + v23) = 0;

  v26 = v74;
  v27 = sub_22634EF6C();
  if (v26)
  {

    os_unfair_lock_unlock(v75 + 4);
LABEL_21:

    goto LABEL_22;
  }

  v22 = v27;

  os_unfair_lock_unlock(v75 + 4);

LABEL_22:
  v65 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_226303D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v53 = a3;
  v56[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22634F04C();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EE0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v16 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v47 = v7;
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v46 = v4;
    v49 = v13;
    v50 = v16;
    v51 = v8;
    v19 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v20 = v54;
    v21 = sub_22634F03C();
    v23 = a1;
    if (v20)
    {
      v54 = *(v9 + 8);
      v54(v15, v51);
      v24 = sub_22634F02C();
      v26 = v25;
    }

    else
    {
      v24 = v21;
      v26 = v22;
      v54 = *(v9 + 8);
      v54(v15, v51);
    }

    v27 = v49;
    if (v24 == sub_22634F02C() && v26 == v28)
    {
    }

    else
    {
      v29 = sub_226350C4C();

      if ((v29 & 1) == 0)
      {
        v41 = sub_22630606C();
        v16 = v50;
LABEL_14:
        v42 = *(v23 + v48);
        *(v23 + v48) = v41;
        swift_retain_n();

        sub_22630761C(v41);

        goto LABEL_17;
      }
    }

    sub_22634F00C();
    v30 = objc_opt_self();
    v31 = [v30 defaultManager];
    sub_22634EDFC();
    v32 = sub_22635045C();

    v33 = [v31 fileExistsAtPath_];

    v16 = v50;
    if ((v33 & 1) == 0)
    {
      v34 = [v30 defaultManager];
      v35 = sub_22634EDDC();
      v56[0] = 0;
      v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v56];

      if ((v36 & 1) == 0)
      {
        v43 = v56[0];
        sub_22634EDAC();

        swift_willThrow();
        v54(v27, v51);
        goto LABEL_17;
      }

      v37 = v56[0];
    }

    (*(v52 + 16))(v47, v23 + v19, v46);
    v38 = sub_22634EFFC();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_22634EF9C();
    v54(v27, v51);
    goto LABEL_14;
  }

  v17 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_22630761C(v18);

LABEL_17:
  os_unfair_lock_unlock(v16 + 4);

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226304250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v62 = a2;
  v59 = a4;
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634EE0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v17 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v53 = v8;
    v54 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v52 = v5;
    v56 = v14;
    v57 = v17;
    v20 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v21 = v61;
    v22 = sub_22634F03C();
    v55 = v9;
    if (v21)
    {
      v61 = *(v10 + 8);
      v61(v16, v9);
      v24 = sub_22634F02C();
      v26 = v25;
    }

    else
    {
      v24 = v22;
      v26 = v23;
      v61 = *(v10 + 8);
      v61(v16, v9);
    }

    v27 = a1;
    v28 = sub_22634F02C();
    v30 = v56;
    if (v24 == v28 && v26 == v29)
    {
    }

    else
    {
      v31 = sub_226350C4C();

      if ((v31 & 1) == 0)
      {
        v47 = sub_22630606C();
        v45 = v60;
        v43 = v47;
        v44 = v62;
        v17 = v57;
LABEL_14:
        v46 = *(v27 + v54);
        *(v27 + v54) = v43;
        swift_retain_n();

        sub_226307850(v43, v44, v45);

        goto LABEL_17;
      }
    }

    sub_22634F00C();
    v32 = objc_opt_self();
    v33 = [v32 defaultManager];
    sub_22634EDFC();
    v34 = sub_22635045C();

    v35 = [v33 fileExistsAtPath_];

    v17 = v57;
    if ((v35 & 1) == 0)
    {
      v36 = [v32 defaultManager];
      v37 = sub_22634EDDC();
      v63[0] = 0;
      v38 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v63];

      if ((v38 & 1) == 0)
      {
        v48 = v63[0];
        sub_22634EDAC();

        swift_willThrow();
        v61(v30, v55);
        goto LABEL_17;
      }

      v39 = v63[0];
    }

    (*(v58 + 16))(v53, v27 + v20, v52);
    v40 = sub_22634EFFC();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_22634EF9C();
    v61(v30, v55);
    v44 = v62;
    v45 = v60;
    goto LABEL_14;
  }

  v18 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_226307850(v19, v62, v60);

LABEL_17:
  os_unfair_lock_unlock(v17 + 4);

  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22630474C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v65 = a2;
  v61 = a5;
  v66[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22634F04C();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22634EE0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v53 - v17;
  v64 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v64 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v55 = v10;
    v56 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v54 = v7;
    v57 = v16;
    v58 = a4;
    v59 = v11;
    v22 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v23 = v62;
    v24 = sub_22634F03C();
    if (v23)
    {
      v26 = *(v12 + 8);
      v26(v18, v59);
      v27 = sub_22634F02C();
      v29 = v28;
    }

    else
    {
      v27 = v24;
      v29 = v25;
      v26 = *(v12 + 8);
      v26(v18, v59);
    }

    if (v27 == sub_22634F02C() && v29 == v30)
    {
    }

    else
    {
      v31 = sub_226350C4C();

      if ((v31 & 1) == 0)
      {
        v51 = sub_22630606C();
        v37 = v63;
        v45 = v51;
        v46 = v65;
        v47 = v58;
LABEL_16:
        v48 = *(a1 + v56);
        *(a1 + v56) = v45;
        swift_retain_n();

        sub_2263072D0(v45, v46, v37, v47);

        os_unfair_lock_unlock(v64 + 4);
        goto LABEL_19;
      }
    }

    v53[1] = v12;
    v62 = v26;
    v32 = v57;
    sub_22634F00C();
    v33 = objc_opt_self();
    v34 = [v33 defaultManager];
    sub_22634EDFC();
    v35 = sub_22635045C();

    v36 = [v34 fileExistsAtPath_];

    v37 = v63;
    if ((v36 & 1) == 0)
    {
      v53[0] = v22;
      v38 = [v33 defaultManager];
      v39 = sub_22634EDDC();
      v66[0] = 0;
      v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v66];

      if ((v40 & 1) == 0)
      {
        v52 = v66[0];
        sub_22634EDAC();

        swift_willThrow();
        v62(v32, v59);
        os_unfair_lock_unlock(v64 + 4);

        goto LABEL_18;
      }

      v41 = v66[0];
      v22 = v53[0];
    }

    (*(v60 + 16))(v55, a1 + v22, v54);
    v42 = sub_22634EFFC();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_22634EF9C();
    v62(v32, v59);
    v46 = v65;
    v47 = v58;
    goto LABEL_16;
  }

  v19 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v21 = v62;
  sub_2263072D0(v20, v65, v63, a4);
  if (!v21)
  {

    os_unfair_lock_unlock(v64 + 4);
LABEL_19:

    goto LABEL_20;
  }

  os_unfair_lock_unlock(v64 + 4);

LABEL_18:

LABEL_20:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226304CC0(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v49 = v11;
    v47 = v5;
    v50 = v14;
    v51 = v7;
    v17 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v18 = v53;
    v19 = sub_22634F03C();
    if (v18)
    {
      v53 = *(v51 + 8);
      v53(v13, v6);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v19;
      v23 = v20;
      v53 = *(v51 + 8);
      v53(v13, v6);
    }

    v24 = v17;
    v26 = v2;
    if (v21 == sub_22634F02C() && v23 == v25)
    {

      v27 = v49;
    }

    else
    {
      v28 = sub_226350C4C();

      v27 = v49;
      if ((v28 & 1) == 0)
      {
        v41 = sub_22630606C();
        goto LABEL_14;
      }
    }

    v49 = v26;
    sub_22634F00C();
    v29 = objc_opt_self();
    v30 = v24;
    v31 = [v29 defaultManager];
    sub_22634EDFC();
    v32 = sub_22635045C();

    v33 = [v31 fileExistsAtPath_];

    if ((v33 & 1) == 0)
    {
      v46 = v30;
      v34 = [v29 defaultManager];
      v35 = sub_22634EDDC();
      v54[0] = 0;
      v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v54];

      if ((v36 & 1) == 0)
      {
        v44 = v54[0];
        sub_22634EDAC();

        swift_willThrow();
        v53(v27, v6);
        v42 = v50;
        goto LABEL_17;
      }

      v37 = v54[0];
      v30 = v46;
    }

    (*(v52 + 16))(v47, a1 + v30, v49);
    v38 = sub_22634EFFC();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_22634EF9C();
    v53(v27, v6);
LABEL_14:
    v42 = v50;
    v43 = *(a1 + v48);
    *(a1 + v48) = v41;
    swift_retain_n();

    sub_22634EFEC();

LABEL_17:
    v16 = v42 + 4;
    goto LABEL_18;
  }

  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_22634EFEC();

  v16 = v14 + 4;
LABEL_18:
  os_unfair_lock_unlock(v16);
  v45 = *MEMORY[0x277D85DE8];
}

void sub_226305194(uint64_t a1, uint64_t *a2)
{
  v58 = a2;
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22634F04C();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EE0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v15 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v51 = v3;
    v52 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v53 = v6;
    v54 = v12;
    v55 = v15;
    v56 = v8;
    v19 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v20 = v59;
    v21 = sub_22634F03C();
    if (v20)
    {
      v59 = *(v56 + 8);
      v59(v14, v7);
      v23 = sub_22634F02C();
      v25 = v24;
    }

    else
    {
      v23 = v21;
      v25 = v22;
      v59 = *(v56 + 8);
      v59(v14, v7);
    }

    v26 = v54;
    if (v23 == sub_22634F02C() && v25 == v27)
    {
    }

    else
    {
      v28 = sub_226350C4C();

      if ((v28 & 1) == 0)
      {
        v47 = sub_22630606C();
        v44 = v58;
        v42 = v47;
        v43 = v55;
        goto LABEL_14;
      }
    }

    sub_22634F00C();
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_22634EDFC();
    v31 = sub_22635045C();

    v32 = [v30 fileExistsAtPath_];

    v33 = v7;
    v34 = v53;
    if ((v32 & 1) == 0)
    {
      v54 = v33;
      v50 = v19;
      v35 = [v29 defaultManager];
      v36 = sub_22634EDDC();
      v60[0] = 0;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v60];

      if ((v37 & 1) == 0)
      {
        v48 = v60[0];
        sub_22634EDAC();

        swift_willThrow();
        v59(v26, v54);
        v43 = v55;
        goto LABEL_19;
      }

      v38 = v60[0];
      v19 = v50;
      v33 = v54;
    }

    (*(v57 + 16))(v34, a1 + v19, v51);
    v39 = sub_22634EFFC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_22634EF9C();
    v59(v26, v33);
    v43 = v55;
    v44 = v58;
LABEL_14:
    v45 = *(a1 + v52);
    *(a1 + v52) = v42;
    swift_retain_n();

    v46 = *v44;

    sub_22634EFBC();

LABEL_19:
    v18 = v43 + 4;
    goto LABEL_20;
  }

  v16 = *v58;
  v17 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_22634EFBC();

  v18 = v15 + 4;
LABEL_20:
  os_unfair_lock_unlock(v18);
  v49 = *MEMORY[0x277D85DE8];
}

void sub_226305698(uint64_t a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v50 = v5;
    v51 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v53 = v11;
    v54 = v14;
    v55 = v7;
    v16 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v17 = v57;
    v18 = sub_22634F03C();
    if (v17)
    {
      v52 = *(v55 + 8);
      v52(v13, v6);
      v20 = sub_22634F02C();
      v22 = v21;

      v57 = 0;
    }

    else
    {
      v20 = v18;
      v22 = v19;
      v57 = 0;
      v52 = *(v55 + 8);
      v52(v13, v6);
    }

    v23 = v56;
    v24 = v16;
    v25 = sub_22634F02C();
    v56 = v2;
    v27 = a1;
    if (v20 == v25 && v22 == v26)
    {

      v28 = v53;
    }

    else
    {
      v29 = sub_226350C4C();

      v28 = v53;
      if ((v29 & 1) == 0)
      {
        v46 = v57;
        v47 = sub_22630606C();
        if (!v46)
        {
          v42 = v47;
          v43 = v54;
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    v53 = v6;
    sub_22634F00C();
    v30 = objc_opt_self();
    v31 = v24;
    v32 = [v30 defaultManager];
    sub_22634EDFC();
    v33 = sub_22635045C();

    v34 = [v32 fileExistsAtPath_];

    if (v34)
    {
LABEL_13:
      (*(v23 + 16))(v50, a1 + v31, v56);
      v39 = sub_22634EFFC();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      v42 = sub_22634EF9C();
      v52(v28, v53);
      v43 = v54;
      v27 = a1;
LABEL_14:
      v44 = *(v27 + v51);
      *(v27 + v51) = v42;
      swift_retain_n();

      sub_22634EFDC();

      v45 = v43 + 4;
LABEL_19:
      os_unfair_lock_unlock(v45);
      goto LABEL_20;
    }

    v35 = [v30 defaultManager];
    v36 = sub_22634EDDC();
    v58[0] = 0;
    v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v58];

    if (v37)
    {
      v38 = v58[0];
      goto LABEL_13;
    }

    v48 = v58[0];
    sub_22634EDAC();

    swift_willThrow();
    v52(v28, v53);
LABEL_18:
    v45 = v54 + 4;
    goto LABEL_19;
  }

  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_22634EFDC();

  os_unfair_lock_unlock(v14 + 4);
LABEL_20:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_226305B74(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634F04C();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634EE0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v14 + 4);
  if (!*(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v48 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v49 = v11;
    v47 = v5;
    v50 = v14;
    v51 = v7;
    v16 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v17 = v53;
    v18 = sub_22634F03C();
    if (v17)
    {
      v53 = *(v51 + 8);
      v53(v13, v6);
      v20 = sub_22634F02C();
      v22 = v21;
    }

    else
    {
      v20 = v18;
      v22 = v19;
      v53 = *(v51 + 8);
      v53(v13, v6);
    }

    v23 = v16;
    v25 = v2;
    if (v20 == sub_22634F02C() && v22 == v24)
    {

      v26 = v49;
    }

    else
    {
      v27 = sub_226350C4C();

      v26 = v49;
      if ((v27 & 1) == 0)
      {
        v40 = sub_22630606C();
LABEL_14:
        v41 = v50;
        v42 = *(a1 + v48);
        *(a1 + v48) = v40;
        swift_retain_n();

        sub_2263091C0(v55);

        os_unfair_lock_unlock(v41 + 4);
        goto LABEL_17;
      }
    }

    v49 = v25;
    sub_22634F00C();
    v28 = objc_opt_self();
    v29 = v23;
    v30 = [v28 defaultManager];
    sub_22634EDFC();
    v31 = sub_22635045C();

    v32 = [v30 fileExistsAtPath_];

    if ((v32 & 1) == 0)
    {
      v46 = v29;
      v33 = [v28 defaultManager];
      v34 = sub_22634EDDC();
      v54 = 0;
      v35 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v54];

      if ((v35 & 1) == 0)
      {
        v43 = v54;
        sub_22634EDAC();

        swift_willThrow();
        v53(v26, v6);
        os_unfair_lock_unlock(v50 + 4);
        goto LABEL_17;
      }

      v36 = v54;
      v29 = v46;
    }

    (*(v52 + 16))(v47, a1 + v29, v49);
    v37 = sub_22634EFFC();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_22634EF9C();
    v53(v26, v6);
    goto LABEL_14;
  }

  v15 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  sub_2263091C0(v55);

  os_unfair_lock_unlock(v14 + 4);
LABEL_17:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22630606C()
{
  v2 = sub_22634F04C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  v8 = *(v3 + 16);
  v19 = v0;
  v8(v6, v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config, v2);
  v9 = sub_22634EFFC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_22634EF9C();
  v13 = sub_22634EF6C();
  if (v1)
  {
  }

  else
  {
    v18[0] = v7;
    v18[1] = v13;
    v14 = v19;
    sub_22634EF7C();
    v8(v6, v14 + v18[0], v2);
    v16 = *(v9 + 48);
    v17 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_22634EF9C();
    sub_22634EFBC();
  }

  return v12;
}

uint64_t sub_22630625C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return sub_22630BF88(result, (v2 + result));
        }

        else
        {
          v4 = sub_22634ED8C();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          sub_22634ED7C();
          if (v2 >= 0x7FFFFFFF)
          {
            sub_22634EE1C();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_226306330(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931B0, &unk_226354450);
  v3 = sub_22634F14C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226351C90;
  (*(v4 + 16))(v7 + v6, a2, v3);
  sub_22634EFBC();
}

unint64_t sub_226306440(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a8;
  v127 = a7;
  v149 = a5;
  v124 = a4;
  v133 = a3;
  v122 = a2;
  v120 = sub_22634F0AC();
  v119 = *(v120 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22634F0EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22634F06C();
  v21 = *(v20 - 8);
  v152 = v20;
  v153 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v123 = &v116 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v121 = &v116 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v116 - v29;
  if (!a1)
  {
    return sub_2262FE100(MEMORY[0x277D84F90]);
  }

  v117 = v28;
  v118 = a6;
  v154 = v14;
  v129 = v9;
  v125 = sub_22630625C(a1 + 32, *(a1 + 16));
  v126 = v31;
  v32 = *(v16 + 16);
  v150 = v16 + 16;
  v151 = v8;
  v146 = v32;
  v147 = v15;
  v32(v19, v8 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v15);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v142 = *(v35 + 80);
  v143 = v36;
  v145 = v33;
  v38 = swift_allocObject();
  v140 = xmmword_226351C90;
  *(v38 + 16) = xmmword_226351C90;
  v130 = v37;
  v39 = v38 + v37;
  v144 = v34;
  v40 = *(v34 + 48);
  v41 = *MEMORY[0x277D78238];
  v42 = sub_22634F0CC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 104);
  v141 = v41;
  v139 = v42;
  v138 = v44;
  v137 = v43 + 104;
  (v44)(v39, v41);
  *(v39 + v40) = 0;
  v45 = *MEMORY[0x277D78290];
  v46 = sub_22634F10C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 104);
  v136 = v47 + 104;
  v135 = v48;
  v48((v39 + v40), v45, v46);
  v134 = *(v47 + 56);
  v134(v39 + v40, 0, 1, v46);
  v148 = v19;
  sub_22634F05C();
  v49 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
  v51 = v49[2];
  v50 = v49[3];
  v52 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
LABEL_46:
    v49 = sub_2262DC96C(v50 > 1, v52, 1, v49);
  }

  v53 = v153;
  v54 = v133;
  v49[2] = v52;
  v56 = *(v53 + 4);
  v55 = v53 + 32;
  v132 = (v55[48] + 32) & ~v55[48];
  v131 = *(v55 + 5);
  v133 = v56;
  v56(v49 + v132 + v131 * v51, v30, v152);
  v158 = v49;
  v57 = MEMORY[0x277D78288];
  if (v54)
  {
    v146(v148, v151 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v147);
    v58 = v130;
    v59 = swift_allocObject();
    *(v59 + 16) = v140;
    v60 = (v59 + v58 + *(v144 + 48));
    v138();
    *v60 = v122;
    v60[1] = v54;
    v135(v60, *v57, v46);
    v134(v60, 0, 1, v46);

    v61 = v121;
    sub_22634F05C();
    v63 = v49[2];
    v62 = v49[3];
    if (v63 >= v62 >> 1)
    {
      v49 = sub_2262DC96C(v62 > 1, v63 + 1, 1, v49);
    }

    v49[2] = v63 + 1;
    v133(v49 + v132 + v63 * v131, v61, v152);
    v158 = v49;
  }

  v64 = v127;
  v65 = v149;
  v153 = v55;
  if (v149)
  {
    v146(v148, v151 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v147);
    v66 = v130;
    v67 = swift_allocObject();
    *(v67 + 16) = v140;
    v68 = (v67 + v66 + *(v144 + 48));
    v138();
    *v68 = v124;
    v68[1] = v65;
    v135(v68, *MEMORY[0x277D78288], v46);
    v134(v68, 0, 1, v46);

    v69 = v123;
    sub_22634F05C();
    v71 = v49[2];
    v70 = v49[3];
    if (v71 >= v70 >> 1)
    {
      v49 = sub_2262DC96C(v70 > 1, v71 + 1, 1, v49);
    }

    v49[2] = v71 + 1;
    v133(v49 + v132 + v71 * v131, v69, v152);
    v158 = v49;
  }

  v149 = v49;
  v72 = MEMORY[0x277D78288];
  if (v64)
  {
    v146(v148, v151 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v147);
    v73 = v130;
    v74 = swift_allocObject();
    *(v74 + 16) = v140;
    v75 = (v74 + v73 + *(v144 + 48));
    v138();
    *v75 = v118;
    v75[1] = v64;
    v135(v75, *v72, v46);
    v134(v75, 0, 1, v46);

    v76 = v117;
    sub_22634F05C();
    v78 = v149[2];
    v77 = v149[3];
    if (v78 >= v77 >> 1)
    {
      v149 = sub_2262DC96C(v77 > 1, v78 + 1, 1, v149);
    }

    v79 = v129;
    v80 = v126;
    v81 = v125;
    v82 = v128;
    v83 = v149;
    v149[2] = v78 + 1;
    v46 = v154;
    v133(v83 + v132 + v78 * v131, v76, v152);
    v158 = v83;
  }

  else
  {
    v79 = v129;
    v46 = v154;
    v80 = v126;
    v81 = v125;
    v82 = v128;
  }

  sub_2262D6170(v81, v80);
  v85 = sub_226302F60(v151, v81, v80, &v158, v82);
  v86 = v79;
  if (v79)
  {
    sub_2262D611C(v81, v80);
  }

  if (!*(v85 + 16))
  {
    sub_2262D611C(v81, v80);

    return MEMORY[0x277D84F98];
  }

  v87 = *(v85 + 32);

  v153 = *(v87 + 16);
  if (!v153)
  {
    v146 = MEMORY[0x277D84F98];
LABEL_44:
    sub_2262D611C(v125, v126);

    return v146;
  }

  v30 = 0;
  v52 = v119;
  v152 = v87 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
  v151 = v119 + 16;
  v49 = (v119 + 8);
  v146 = MEMORY[0x277D84F98];
  v51 = v120;
  while (1)
  {
    v50 = *(v87 + 16);
    if (v30 >= v50)
    {
      __break(1u);
      goto LABEL_46;
    }

    (*(v52 + 16))(v46, v152 + *(v52 + 72) * v30, v51);
    v88 = sub_22634F09C();
    if (v89 >> 60 == 15)
    {
      (*v49)(v46, v51);
      goto LABEL_23;
    }

    v90 = v88;
    v91 = v89;
    v92 = sub_22634ED1C();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    sub_22634ED0C();
    sub_22630BE08();
    sub_22634ECFC();
    if (v86)
    {

      sub_2262D66C4(v90, v91);
      v46 = v154;
      (*v49)(v154, v51);
      v86 = 0;
      goto LABEL_23;
    }

    v150 = v156;
    v147 = v155;
    v148 = v157;
    sub_22634F08C();
    if ((~v95 & 0x7FF0000000000000) == 0 && (v95 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v96 = v154;
      (*v49)(v154, v51);

      v97 = v90;
      v46 = v96;
      sub_2262D66C4(v97, v91);
      goto LABEL_23;
    }

    v129 = 0;
    sub_22634F08C();
    v99 = v98;
    v100 = v146;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = v100;
    v103 = sub_22633941C(v147, v150);
    v104 = *(v100 + 2);
    v105 = (v102 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      break;
    }

    v107 = v102;
    if (*(v100 + 3) >= v106)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22633A104();
      }
    }

    else
    {
      sub_226336994(v106, isUniquelyReferenced_nonNull_native);
      v108 = sub_22633941C(v147, v150);
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_49;
      }

      v103 = v108;
    }

    v110 = v155;
    v146 = v155;
    if (v107)
    {
      *(*(v155 + 56) + 8 * v103) = v99;
      sub_2262D66C4(v90, v91);

      v46 = v154;
      v51 = v120;
      (*v49)(v154, v120);
    }

    else
    {
      *(v155 + 8 * (v103 >> 6) + 64) |= 1 << v103;
      v111 = (v110[6] + 16 * v103);
      v112 = v150;
      *v111 = v147;
      v111[1] = v112;
      *(v110[7] + 8 * v103) = v99;
      sub_2262D66C4(v90, v91);

      v46 = v154;
      v51 = v120;
      (*v49)(v154, v120);
      v113 = v110[2];
      v114 = __OFADD__(v113, 1);
      v115 = v113 + 1;
      if (v114)
      {
        goto LABEL_48;
      }

      v110[2] = v115;
    }

    v86 = v129;
    v52 = v119;
LABEL_23:
    if (v153 == ++v30)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

uint64_t sub_2263072D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = sub_22634F0EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  v12 = *(sub_22634F06C() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v29 = xmmword_226351C90;
  *(v15 + 16) = xmmword_226351C90;
  (*(v8 + 16))(v11, a2 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v29;
  v20 = v19 + v18;
  v21 = (v19 + v18 + v16[14]);
  v22 = *MEMORY[0x277D78238];
  v23 = sub_22634F0CC();
  (*(*(v23 - 8) + 104))(v20, v22, v23);
  *v21 = a3;
  v21[1] = a4;
  v24 = *MEMORY[0x277D78288];
  v25 = sub_22634F10C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v21, v24, v25);
  (*(v26 + 56))(v21, 0, 1, v25);

  sub_22634F05C();
  v27 = v31;
  sub_22634EF5C();

  if (!v27)
  {
    sub_22634EFAC();
  }

  return result;
}

uint64_t sub_22630761C(uint64_t a1)
{
  v3 = sub_22634F14C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  result = sub_22634EF6C();
  if (!v1)
  {
    v25[2] = 0;
    v10 = *(result + 16);
    if (v10)
    {
      v29 = v7;
      v25[0] = a1;
      v31 = v8;
      v11 = result;
      sub_226316630(0, v10, 0);
      v12 = v31;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = *(v13 + 64);
      v25[1] = v11;
      v16 = v11 + ((v15 + 32) & ~v15);
      v27 = *(v13 + 56);
      v28 = v14;
      v26 = (v13 - 8);
      v30 = v13;
      do
      {
        v17 = v29;
        v28(v29, v16, v3);
        v18 = sub_22634F12C();
        v20 = v19;
        v21 = v3;
        (*v26)(v17, v3);
        v31 = v12;
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226316630((v22 > 1), v23 + 1, 1);
          v12 = v31;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        v16 += v27;
        --v10;
        v3 = v21;
      }

      while (v10);
    }

    sub_22634EFAC();
  }

  return result;
}

uint64_t sub_226307850(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v52 = a3;
  v5 = sub_22634F14C();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793890, &qword_226354440);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793898, &qword_226354448) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_226351C90;
  v13 = v12 + v11;
  v14 = v9[14];
  v15 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute;
  v16 = sub_22634F0EC();
  (*(*(v16 - 8) + 16))(v13, a2 + v15, v16);
  *(v13 + v14) = 1;
  v17 = MEMORY[0x277D84F90];
  v18 = v54;
  v19 = sub_22634EF6C();

  if (v18)
  {
    return result;
  }

  v49[2] = 0;
  v53 = v5;
  v54 = v8;
  v21 = v51;
  v25 = sub_2262FF0FC(v52 / 2, v19, MEMORY[0x277D782B0]);
  if ((v24 & 1) == 0)
  {
    goto LABEL_3;
  }

  v29 = v24;
  v30 = v23;
  v31 = v22;
  sub_226350C5C();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v29 >> 1, v30))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v33 != (v29 >> 1) - v30)
  {
LABEL_19:
    swift_unknownObjectRelease();
    v24 = v29;
    v23 = v30;
    v22 = v31;
LABEL_3:
    sub_226309820(v25, v22, v23, v24, &qword_27D7931B0, &unk_226354450, MEMORY[0x277D782B0]);
    v27 = v26;
    v28 = v54;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v28 = v54;
  if (!v27)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v34 = *(v27 + 16);
  if (v34)
  {
    v49[1] = a1;
    v55 = v17;
    sub_226316630(0, v34, 0);
    v35 = v55;
    v36 = v21 + 16;
    v37 = *(v21 + 16);
    v38 = *(v21 + 80);
    v49[0] = v27;
    v39 = v27 + ((v38 + 32) & ~v38);
    v51 = *(v36 + 56);
    v52 = v37;
    v50 = (v36 - 8);
    v40 = v53;
    do
    {
      v41 = v36;
      (v52)(v28, v39, v40);
      v42 = sub_22634F12C();
      v40 = v53;
      v43 = v42;
      v45 = v44;
      (*v50)(v28, v53);
      v55 = v35;
      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_226316630((v46 > 1), v47 + 1, 1);
        v40 = v53;
        v35 = v55;
      }

      *(v35 + 16) = v47 + 1;
      v48 = v35 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v39 += v51;
      --v34;
      v36 = v41;
      v28 = v54;
    }

    while (v34);
  }

  sub_22634EFAC();
}

uint64_t sub_226307C9C@<X0>(size_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v42 = a3;
  v43 = a2;
  v5 = sub_22634F0EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634F06C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v14 = *a1;

  v15 = sub_22634EF8C();

  if (!v3)
  {
    v40 = v11;
    v41 = v10;
    (*(v6 + 16))(v9, v43 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
    v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
    v18 = *(*v17 + 72);
    v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_226351C90;
    v21 = v20 + v19;
    v22 = (v20 + v19 + v17[14]);
    v23 = *MEMORY[0x277D78238];
    v24 = sub_22634F0CC();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    *v22 = sub_22634FFAC();
    v22[1] = v25;
    v26 = *MEMORY[0x277D78288];
    v27 = sub_22634F10C();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v22, v26, v27);
    (*(v28 + 56))(v22, 0, 1, v27);
    v29 = v45;
    sub_22634F05C();
    v30 = v44;
    v31 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_2262DC96C(0, v31[2] + 1, 1, v31);
      *v30 = v31;
    }

    v33 = v40;
    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v38 = sub_2262DC96C(v34 > 1, v35 + 1, 1, v31);
      v29 = v45;
      v31 = v38;
      *v30 = v38;
    }

    v31[2] = v35 + 1;
    (*(v33 + 32))(v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v35, v29);
    v36 = *v30;

    v37 = sub_22634EF8C();

    if (__OFSUB__(v15, v37))
    {
      __break(1u);
    }

    else
    {
      *v42 = v15 - v37;
    }
  }

  return result;
}

id sub_2263080C4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = sub_22634F0EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
  v9 = *(sub_22634F06C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v27 = xmmword_226351C90;
  *(v12 + 16) = xmmword_226351C90;
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
  v14 = *(*v13 + 72);
  v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  v17 = v16 + v15;
  v18 = (v16 + v15 + v13[14]);
  v19 = *MEMORY[0x277D78238];
  v20 = sub_22634F0CC();
  (*(*(v20 - 8) + 104))(v17, v19, v20);
  v21 = v29;
  *v18 = a1;
  v18[1] = v21;
  v22 = *MEMORY[0x277D78288];
  v23 = sub_22634F10C();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v18, v22, v23);
  (*(v24 + 56))(v18, 0, 1, v23);

  sub_22634F05C();

  v25 = sub_226301ADC(v28, v12);

  return v25;
}

uint64_t sub_2263083FC(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  sub_226305698(v1);
  v9 = sub_22635064C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = a1;

  sub_226308F24(0, 0, v8, &unk_2263543D0, v10);
}

uint64_t sub_2263086C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = sub_22634FF9C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263087EC, 0, 0);
}

uint64_t sub_2263087EC()
{
  sub_226305B74(*(v0 + 64));
  *(v0 + 128) = v1;
  v3 = *(v0 + 72);
  v4 = *(v1 + 32);
  *(v0 + 184) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v1 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  *(v0 + 136) = 0;
  v8 = v5 & v7;
  if (v8)
  {
    v9 = 0;
LABEL_12:
    *(v0 + 144) = v8;
    *(v0 + 152) = v9;
    v12 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    *(v0 + 160) = *v12;
    *(v0 + 168) = v12[1];

    return MEMORY[0x2822009F8](sub_226308990, v3, 0);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v1 + 8 * v10++ + 64);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_226308990()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_22633941C(v0[20], v0[21]), (v4 & 1) != 0))
  {
    v5 = v0[21];
    (*(v0[12] + 16))(v0[15], *(v2 + 56) + *(v0[12] + 72) * v3, v0[11]);
    swift_endAccess();

    v6 = v0[17];
  }

  else
  {
    v7 = v0[20];
    v8 = v0[21];
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[10];
    swift_endAccess();
    sub_226330584(v7, v8, v10);
    if (v9)
    {

      v12 = sub_226308B7C;
      goto LABEL_8;
    }

    v14 = v0[20];
    v13 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = v0[9];
    swift_beginAccess();
    (*(v18 + 16))(v17, v16, v19);
    v21 = *(v20 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v20 + 112);
    *(v20 + 112) = 0x8000000000000000;
    sub_2262E3608(v17, v14, v13, isUniquelyReferenced_nonNull_native);

    *(v20 + 112) = v24;
    swift_endAccess();
    (*(v18 + 32))(v15, v16, v19);
    v6 = 0;
  }

  v0[22] = v6;
  v12 = sub_226308D90;
LABEL_8:

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_226308B7C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  (*(*(v0 + 96) + 56))(v3, 1, 1, *(v0 + 88));
  sub_2262D67D8(v3, &unk_27D793BC0, &qword_2263525D8);

  sub_22630474C(v5, v4, v1, v2, v6);
  v7 = *(v0 + 168);

  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  *(v0 + 136) = 0;
  v14 = (v13 - 1) & v13;
  if (v14)
  {
    v9 = *(v0 + 128);
LABEL_11:
    *(v0 + 144) = v14;
    *(v0 + 152) = v12;
    v16 = *(v0 + 72);
    v17 = (*(v9 + 6) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
    *(v0 + 160) = *v17;
    *(v0 + 168) = v17[1];

    v9 = sub_226308990;
    v10 = v16;
    v11 = 0;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v9, v10, v11);
      }

      v9 = *(v0 + 128);
      if (v15 >= (((1 << *(v0 + 184)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v9 + v15 + 7);
      ++v12;
      if (v14)
      {
        v12 = v15;
        goto LABEL_11;
      }
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_226308D90()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 96) + 56))(v1, 0, 1, *(v0 + 88));
  v2 = sub_2262D67D8(v1, &unk_27D793BC0, &qword_2263525D8);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  *(v0 + 136) = *(v0 + 176);
  v7 = (v6 - 1) & v6;
  if (v7)
  {
    v2 = *(v0 + 128);
LABEL_7:
    *(v0 + 144) = v7;
    *(v0 + 152) = v5;
    v9 = *(v0 + 72);
    v10 = (*(v2 + 6) + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
    *(v0 + 160) = *v10;
    *(v0 + 168) = v10[1];

    v2 = sub_226308990;
    v3 = v9;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v2 = *(v0 + 128);
      if (v8 >= (((1 << *(v0 + 184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v2 + v8 + 7);
      ++v5;
      if (v7)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_226308F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_226309A84(a3, v24 - v10);
  v12 = sub_22635064C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2262D67D8(v11, &qword_27D7939E0, &qword_2263548B0);
  }

  else
  {
    sub_22635063C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2263505BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2263504DC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2262D67D8(a3, &qword_27D7939E0, &qword_2263548B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2263091C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22634F14C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22634EF6C();
  if (!v1)
  {
    v9 = *(result + 16);
    if (v9)
    {
      v28[1] = result;
      v29 = a1;
      v11 = *(v4 + 16);
      v10 = v4 + 16;
      v12 = result + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v32 = *(v10 + 56);
      v33 = v11;
      v36 = v10;
      v13 = (v10 - 8);
      v31 = MEMORY[0x277D84F90];
      v11(v7, v12, v3);
      while (1)
      {
        v14 = sub_22634F13C();
        if (v15 >> 60 == 15)
        {
          (*v13)(v7, v3);
        }

        else
        {
          v16 = v14;
          v17 = v15;
          v18 = sub_22634ED1C();
          v19 = *(v18 + 48);
          v20 = *(v18 + 52);
          swift_allocObject();
          sub_22634ED0C();
          sub_22630BE08();
          sub_22634ECFC();
          (*v13)(v7, v3);
          sub_2262D66C4(v16, v17);

          v21 = v35;
          v30 = v34;
          v22 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v31 : sub_2262DCFC4(0, *(v31 + 2) + 1, 1, v31);
          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            v22 = sub_2262DCFC4((v23 > 1), v24 + 1, 1, v22);
          }

          *(v22 + 2) = v24 + 1;
          v31 = v22;
          v25 = &v22[16 * v24];
          *(v25 + 4) = v30;
          *(v25 + 5) = v21;
        }

        v12 += v32;
        if (!--v9)
        {
          break;
        }

        v33(v7, v12, v3);
      }

      a1 = v29;
      v26 = v31;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v27 = sub_22630BD70(v26);

    *a1 = v27;
  }

  return result;
}

uint64_t sub_2263094D4()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
  v2 = sub_22634F04C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly);

  v4 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);

  v5 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
  v6 = sub_22634F0EC();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v6);
  v7(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v6);
  return v0;
}

uint64_t sub_226309650()
{
  sub_2263094D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VectorDatabase()
{
  result = qword_28137E988;
  if (!qword_28137E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263096FC()
{
  result = sub_22634F04C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22634F0EC();
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

void sub_226309820(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2263099C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2262D641C;

  return sub_2263086C0(a1, v4, v5, v7, v6);
}

uint64_t sub_226309A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226309AF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_226350CEC();
  sub_2263504EC();
  v9 = sub_226350D0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_226350C4C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22630A9F8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226309C44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22635040C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22630C1DC(&qword_28137FA40, MEMORY[0x277CC95F0]);
      v23 = sub_22635044C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22630AB78(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_226309F24(void *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_226350CEC();
  v7 = *a2;
  v6 = a2[1];
  sub_2263504EC();
  v8 = a2[2];
  v39 = a2[3];
  sub_2263504EC();
  v35 = a2;
  v37 = a2[4];
  sub_22635083C();
  v9 = sub_226350D0C();
  v10 = v4 + 56;
  v38 = v4;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v16 = (*(v38 + 48) + 40 * v12);
      v17 = v16[2];
      v18 = v16[3];
      v19 = v16[4];
      v20 = *v16 == v7 && v16[1] == v6;
      if (v20 || (v21 = v16[1], (sub_226350C4C() & 1) != 0))
      {
        v22 = v17 == v8 && v18 == v39;
        if (v22 || (sub_226350C4C() & 1) != 0)
        {
          sub_2262DA244();

          v14 = v19;
          v15 = sub_22635082C();

          if (v15)
          {
            break;
          }
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v28 = (*(v38 + 48) + 40 * v12);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    *a1 = *v28;
    a1[1] = v29;
    a1[2] = v30;
    a1[3] = v31;
    a1[4] = v32;

    v33 = v32;
    return 0;
  }

  else
  {
LABEL_16:
    v23 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v34;

    v25 = v37;
    sub_22630AE1C(v35, v12, isUniquelyReferenced_nonNull_native);
    *v34 = v40;
    v26 = *(v35 + 16);
    *a1 = *v35;
    *(a1 + 1) = v26;
    a1[4] = *(v35 + 32);
    return 1;
  }
}

uint64_t sub_22630A194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635093C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22630A3F4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22634EEFC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  result = sub_22635093C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22630A750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  result = sub_22635093C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = *(v6 + 40);
      sub_226350CEC();
      sub_2263504EC();
      sub_2263504EC();
      sub_22635083C();
      result = sub_226350D0C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 40 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22630A9F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22630A194(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22630B06C();
      goto LABEL_16;
    }

    sub_22630B584(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_226350CEC();
  sub_2263504EC();
  result = sub_226350D0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_226350C4C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_226350C7C();
  __break(1u);
  return result;
}

uint64_t sub_22630AB78(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22630A3F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22630B1C8();
      goto LABEL_12;
    }

    sub_22630B7BC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0]);
  v15 = sub_22635040C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22630C1DC(&qword_28137FA40, MEMORY[0x277CC95F0]);
      v23 = sub_22635044C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226350C7C();
  __break(1u);
  return result;
}

uint64_t sub_22630AE1C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_22630A750(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22630B400();
      goto LABEL_23;
    }

    sub_22630BAD8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_226350CEC();
  v10 = *v5;
  v11 = v5[1];
  sub_2263504EC();
  v12 = v5[3];
  v35 = v5[2];
  sub_2263504EC();
  v33 = v5[4];
  sub_22635083C();
  result = sub_226350D0C();
  v34 = v8;
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = v8 + 56;
    v15 = ~v13;
    do
    {
      v18 = (*(v34 + 48) + 40 * a2);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[4];
      v22 = *v18 == v10 && v18[1] == v11;
      if (v22 || (v23 = v18[1], result = sub_226350C4C(), (result & 1) != 0))
      {
        v24 = v19 == v35 && v20 == v12;
        if (v24 || (result = sub_226350C4C(), (result & 1) != 0))
        {
          sub_2262DA244();

          v16 = v21;
          v17 = sub_22635082C();

          if (v17)
          {
            goto LABEL_26;
          }
        }
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v25 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_26:
  result = sub_226350C7C();
  __break(1u);
  return result;
}

void *sub_22630B06C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  v2 = *v0;
  v3 = sub_22635092C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22630B1C8()
{
  v1 = v0;
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  v7 = *v0;
  v8 = sub_22635092C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

id sub_22630B400()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  v2 = *v0;
  v3 = sub_22635092C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        v23[4] = v22;

        result = v22;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_22630B584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635093C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_226350CEC();

      sub_2263504EC();
      result = sub_226350D0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22630B7BC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22634EEFC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793888, &qword_226354438);
  v10 = sub_22635093C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22630BAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793860, &unk_2263543F0);
  result = sub_22635093C();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = *(v6 + 40);
      sub_226350CEC();

      v38 = v20;
      v26 = v22;
      v27 = v24;
      sub_2263504EC();
      sub_2263504EC();
      sub_22635083C();
      result = sub_226350D0C();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 40 * v14);
      v11 = v37;
      *v15 = v38;
      v15[1] = v21;
      v15[2] = v26;
      v15[3] = v23;
      v15[4] = v27;
      ++*(v6 + 16);
      v3 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22630BD70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA7C7A0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_226309AF4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_22630BE08()
{
  result = qword_27D793850;
  if (!qword_27D793850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793850);
  }

  return result;
}

uint64_t sub_22630BE5C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_226301048(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22630BF88(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22630C040(uint64_t a1)
{
  v2 = sub_22634EEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_22630C1DC(&qword_28137FA50, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AA7C7A0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226309C44(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_22630C1DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22630C234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_226350C4C();

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

uint64_t sub_22630C354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7938A0, &qword_2263544E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22630C5A8();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = 0;
  v11 = sub_226350B0C();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = sub_226350B0C();
  v21 = v15;
  v24 = 2;
  sub_226350B2C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v22;
  *v22 = v23;
  v19[1] = v13;
  v20 = v21;
  v19[2] = v14;
  v19[3] = v20;
  v19[4] = v17;
  return result;
}